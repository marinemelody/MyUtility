/*

  因为gameplay线程和ORM线程间有着更紧密的关系，如一些
  系统驱动的行为（定时存盘），所以设计上不让主线程知道有
  ORM线程，而将ORM线程的控制权交由gameplay线程所有；
  好处是对主线程隐藏了gameplay和ORM的状态同步细节，使
  得主线程的代码具备相当的通用性，符合UNIX设计哲学中的
  “一切东西都是filter”的设计理念；同时gameplay线程在
  退出时也可以有弹性的考虑，即它关闭掉ORM线程后，可以在
  自己的线程内直接同步数据进入数据库，降低编码复杂度

*/

#include "thread_gameplay.h"
#include "thread_orm.h"
#include "../data_represent/msg_selector.h"
#include "../gameplay/gameplay.h"
#include "../cache/cache_manager.h"
#include "../resource/resource_manager.h"
#include "../scope_guard.h"

static apr_thread_t * _t = NULL;
static apr_pool_t * _pool = NULL;
static volatile apr_status_t _service_flag = 0;
static dual_queue_t * _net_dq = NULL;
static dual_queue_t * _orm_dq = NULL;
cache_manager * cache_mgr = NULL;

typedef apr_status_t (*netmsg_callback_routine)(void *, void **, apr_pool_t *);
static netmsg_callback_routine _netmsg_routines[MSG_ID_REQ_MAX];
static void netmsg_callback_init()
{
    int i = MSG_ID_REQ_MIN;
    for ( ; i < MSG_ID_REQ_MAX; ++ i) {
        _netmsg_routines[i] = NULL;
    }

    // 初始化协议处理例程
    _netmsg_routines[MSG_ID_ACTORLOGIN_REQ] = actor_login_proc;
	_netmsg_routines[MSG_ID_ACTORNEW_REQ] = actor_new_proc;
    _netmsg_routines[MSG_ID_LOTTERYSTONE_REQ] = lottery_stone_proc;
    _netmsg_routines[MSG_ID_GMCOMMAND_REQ] = gm_proc;
	_netmsg_routines[MSG_ID_CARDSELL_REQ] = card_sell_proc;
	_netmsg_routines[MSG_ID_CARDCOMPOSE_REQ] = card_compose_proc;
	_netmsg_routines[MSG_ID_CARDEVOLUTION_REQ] = card_evolution_proc;
}

static void netmsg_proc(void * msg, void ** result_msg, apr_pool_t * pool)
{
    apr_int16_t msg_id = MSG_GETMSGID(msg);
    if ((msg_id > MSG_ID_REQ_MIN) && (msg_id < MSG_ID_REQ_MAX)) {
        netmsg_callback_routine fn = _netmsg_routines[msg_id];
        if (fn != NULL) {
            fn(msg, result_msg, pool);
        } else {
            fprintf(stderr, "net2game msg_id=%d callback routine not found!\n",
                msg_id);
        }
    } else {
        fprintf(stderr, "net2game invalid msg_id=%d, valid range is (%d, %d)\n",
            msg_id, MSG_ID_REQ_MIN, MSG_ID_REQ_MAX);
    }
}

static void cache_mgr_init()
{
    cache_mgr = new cache_manager(_pool);
}

static void cache_mgr_fini()
{
    delete cache_mgr;
    cache_mgr = NULL;
}

static apr_status_t gameplay_start(apr_pool_t * pool)
{
    netmsg_callback_init();

    cache_mgr_init();
    resmgr_init(_pool);

    // 加载db中的一些资源，比如id种子
    {
        scope_pool s(_pool);
        orm_load_init(s.subp);
        orm_load_get_ids(ids_ctx_get());
        orm_load_fini();
    }

    dual_queue_init(&game2orm, _pool);

    return APR_SUCCESS;
}

static apr_status_t gameplay_stop(apr_pool_t * pool)
{
    dual_queue_fini(&game2orm);

    // 存盘
    {
        scope_pool s(_pool);
        orm_save_init(s.subp);
        int count = cache_mgr->iterate_all(orm_save_actor_save);
        fprintf(stdout, "[GMP] %d actor(s) saved!\n", count);
        count = cache_mgr->iterate_all(orm_save_actor_free);
        fprintf(stdout, "[GMP] %d actor(s) free!\n", count);
        orm_save_idmgr_save(ids_ctx_get());
        orm_save_fini();
    }

    resmgr_fini();
    cache_mgr_fini();

    return APR_SUCCESS;
}

static void * APR_THREAD_FUNC _gameplay_func(apr_thread_t * thrd, void * data)
{
    apr_status_t rv = 0;
    apr_int16_t idle_count = 0;
    void * msg = NULL;
    void * result_msg = NULL;
    char * buf = NULL;
    size_t buf_len = 0;
    sid_t sid = 0;
    apr_int16_t msg_id = 0;
	uin_t uin = 0;
	int result = EC_SUCCESS;
    _net_dq = (dual_queue_t *)data;

    fprintf(stdout, "[GMP] thread start, dual_queue is %p\n", _net_dq);

    gameplay_start(_pool);

    // 创建ORM线程
    create_orm_thread(&game2orm, _pool);

    // 正常服务循环
    while (!_service_flag) {
        msg = NULL;
        rv = apr_queue_trypop(_net_dq->sd, &msg);
        switch (rv) {
        case APR_EAGAIN:
            ++ idle_count;
            break;
        case APR_SUCCESS:
            fprintf(stdout, "[GMP] recv a msg data = %p\n", msg);
            if (msg != NULL) {
                result_msg = NULL;
                netmsg_proc(msg, &result_msg, _pool);
                if (result_msg != NULL) {
                    apr_queue_push(_net_dq->rv, result_msg);
                }
				MSG_FREE(msg);
                msg = NULL;
            }
            break;
        default:
            break;
        }

        buf = NULL;
        buf_len = 0;
		result = EC_SUCCESS;
		uin = 0;
        sid = 0;
        rv = poll_msg_from_orm(&sid, &msg_id, &uin, &result, &buf, &buf_len);
        if (rv == 0) {
            cache_mgr->exec_task_deferred(sid, uin, result, buf, buf_len, &result_msg);
            if (result_msg != NULL) {
                apr_queue_push(_net_dq->rv, result_msg);
            }
        } else {
            ++ idle_count;
        }

        if (idle_count >= 10) {
            apr_sleep(1 * 1000);
            idle_count = 0;
        }
    }

    // 通知ORM线程退出
    cancel_orm_thread();

    // 等待ORM线程回信令包，不再响应网络线程的请求
	idle_count = 0;
    while (1) {
        buf = NULL;
        buf_len = 0;
		result = EC_SUCCESS;
		uin = 0;
        sid = 0;
        msg_id = 0;
        rv = poll_msg_from_orm(&sid, &msg_id, &uin, &result, &buf, &buf_len);
        if (rv == APR_SUCCESS) {
            if (msg_id == ORM_MSG_STOP_ACK) {
                break;
            }
            cache_mgr->exec_task_deferred(sid, uin, result, buf, buf_len, &result_msg);
            if (result_msg != NULL) {
                apr_queue_push(_net_dq->rv, result_msg);
            }
        } else {
            ++ idle_count;
        }

		if (idle_count >= 10) {
			apr_sleep(1 * 1000);
			idle_count = 0;
		}
    }

    // 等待ORM线程退出
    join_orm_thread();

    gameplay_stop(_pool);

    rv = 0;
    fprintf(stdout, "[GMP] thread end with %d!\n", rv);
    apr_thread_exit(thrd, rv);
    return NULL;
}

void create_gameplay_thread(dual_queue_t * dq, apr_pool_t * pool)
{
    apr_status_t rv = 0;
    rv = apr_pool_create(&_pool, pool);
    fprintf(stdout, "[MAN] create gameplay thread, dual_queue is %p\n", dq);
    rv = apr_thread_create(&_t, NULL, _gameplay_func, dq, _pool);
}

void cancel_gameplay_thread()
{
    if (_service_flag == 0) {
        _service_flag = 1;
    } else {
        fprintf(stderr, "[MAN] can't cancel gameplay thread again!\n");
    }
}

void join_gameplay_thread()
{
    apr_status_t rv = 0;
    apr_thread_join(&rv, _t);
    fprintf(stdout, "[MAN] join gameplay thread with rv=%d!\n", rv);
    apr_pool_clear(_pool);
    apr_pool_destroy(_pool);
    _pool = NULL;
}
