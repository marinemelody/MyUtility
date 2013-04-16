/*

  服务器处理模型选择了三个单线程，即网络I/O单线程、逻辑处理单线程、
  ORM处理单线程，对这种处理模型的选择有如下理由：

  优势：
    1 分离了耗时不同的运算操作从而有助于提高整个系统的吞吐率，如将
      网络I/O、内存操作、磁盘操作都做了分离使得DB操作不会拖累一个
      内存操作
    2 有效利用多CPU资源的同时规避了对象的并行化，游戏领域的对象并
      行化是典型的“脑细胞杀手”，大大超出了人理解代码和分析bug的能
      力
    
  劣势：
    1 分离虽然解耦了低速操作和高速操作，但如果有一个过程同时包含低
      速操作和高速操作，则必须将这个过程实现为异步的方式，编程模型
      变得复杂无比，因为这种复杂由处理模型的选择而来，故而属于偶发
      复杂性；这种偶发复杂性有两个具体的点：异步上下文的有效性检查
      和异步操作超时处理的完整性；有效对抗这种偶发复杂性需要在逻辑
      代码下建立一个框架，让这个框架来保证上下文有效性和超时处理完
      整性，让逻辑代码编写人员无需关注这两个复杂的点

*/

#include "thread_main_network.h"
#include "thread_gameplay.h"

static const int _port = 7000;
static apr_pool_t * _pool = NULL;

static void signal_cb(evutil_socket_t sig, short events, void * user_data)
{
    struct event_base * base = (struct event_base *)user_data;
    struct timeval delay = {2, 0};

    fprintf(stdout, "[MAN] caught an interrupt signal, exiting cleanly in two seconds.\n");
    event_base_loopexit(base, &delay);
}

int main(int argc, char **argv)
{
	struct event_base * base = NULL;
	struct evconnlistener * listener = NULL;
	struct event * signal_event = NULL;
	struct sockaddr_in sin;
    struct event * timer_event = NULL;
    struct timeval timer_tv = {0, 20 * 1000};

    apr_initialize();
    atexit(apr_terminate);

	base = event_base_new();
	if (base == NULL) {
		fprintf(stderr, "[MAN] could not initialize libevent!\n");
		return 1;
	}

	memset(&sin, 0, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_port = htons(_port);

	listener = evconnlistener_new_bind(base, listener_cb, (void *)base,
	    LEV_OPT_REUSEABLE | LEV_OPT_CLOSE_ON_FREE, -1,
	    (struct sockaddr *)&sin,
	    sizeof(sin));
	if (listener == NULL) {
		fprintf(stderr, "[MAN] could not create a listener!\n");
		return 1;
	}

	signal_event = evsignal_new(base, SIGINT, signal_cb, (void *)base);
	if ((signal_event == NULL) || (event_add(signal_event, NULL) < 0)) {
		fprintf(stderr, "[MAN] could not create/add a signal event!\n");
		return 1;
	}

    timer_event = event_new(base, -1, EV_PERSIST, timer_cb, (void *)timer_event);
    if ((timer_event == NULL) || (event_add(timer_event, &timer_tv) < 0)) {
        fprintf(stderr, "[MAN] could not create/add a timer event!\n");
        return 1;
    }

    apr_pool_create(&_pool, NULL);

    dual_queue_init(&net2game, _pool);
    conn_hashtable_init(_pool);

    create_gameplay_thread(&net2game, _pool);

    event_base_dispatch(base);

    cancel_gameplay_thread();

    join_gameplay_thread();

    conn_hashtable_fini();
    dual_queue_fini(&net2game);

    apr_pool_clear(_pool);
    apr_pool_destroy(_pool);
    _pool = NULL;

    event_free(timer_event);
	event_free(signal_event);
    evconnlistener_free(listener);
	event_base_free(base);

	fprintf(stdout, "[MAN] done!\n");
	return 0;
}
