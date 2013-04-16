/*

  ����������ģ��ѡ�����������̣߳�������I/O���̡߳��߼������̡߳�
  ORM�����̣߳������ִ���ģ�͵�ѡ�����������ɣ�

  ���ƣ�
    1 �����˺�ʱ��ͬ����������Ӷ��������������ϵͳ�������ʣ��罫
      ����I/O���ڴ���������̲��������˷���ʹ��DB������������һ��
      �ڴ����
    2 ��Ч���ö�CPU��Դ��ͬʱ����˶���Ĳ��л�����Ϸ����Ķ���
      �л��ǵ��͵ġ���ϸ��ɱ�֡�����󳬳�����������ͷ���bug����
      ��
    
  ���ƣ�
    1 ������Ȼ�����˵��ٲ����͸��ٲ������������һ������ͬʱ������
      �ٲ����͸��ٲ���������뽫�������ʵ��Ϊ�첽�ķ�ʽ�����ģ��
      ��ø����ޱȣ���Ϊ���ָ����ɴ���ģ�͵�ѡ��������ʶ�����ż��
      �����ԣ�����ż������������������ĵ㣺�첽�����ĵ���Ч�Լ��
      ���첽������ʱ����������ԣ���Ч�Կ�����ż����������Ҫ���߼�
      �����½���һ����ܣ�������������֤��������Ч�Ժͳ�ʱ������
      ���ԣ����߼������д��Ա�����ע���������ӵĵ�

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
