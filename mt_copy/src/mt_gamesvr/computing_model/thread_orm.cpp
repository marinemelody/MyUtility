/*

  对gameplay线程掩盖数据库的具体细节

*/

#include "thread_orm.h"
#include "../gameplay/actor.h"
#include "../cache/cache_manager.h"
#include "apr_dbd.h"
#include "../scope_guard.h"

//#define DATA_NON_PERSISTANCE

typedef struct orm_msg {
    apr_int16_t msg_id;
    sid_t sid;
	uin_t uin;
	int result;
    void * data;
    size_t data_len;
} orm_msg;

// 正常游戏服务时ORM线程使用的数据和函数
dual_queue_t game2orm = {NULL, NULL};
static apr_pool_t * _orm_pool = NULL;
static apr_thread_t * _t = NULL;
static const apr_dbd_driver_t * _driver = NULL;
static apr_dbd_t * _handle = NULL;

apr_status_t post_msg_to_orm(
	sid_t sid,
    apr_int16_t msg_id,
	uin_t uin,
	char * buf,
	size_t buf_len)
{
    orm_msg * msg = (orm_msg *)malloc(sizeof(orm_msg));
    msg->sid = sid;
    msg->msg_id = msg_id;
	msg->uin = uin;
	msg->result = EC_SUCCESS;
    msg->data = buf;
    msg->data_len = buf_len;
    return apr_queue_push(game2orm.sd, msg);
}

apr_status_t poll_msg_from_orm(
	sid_t * sid,
    apr_int16_t * msg_id,
	uin_t * uin,
	int * result,
	char ** buf,
	size_t * buf_len)
{
    apr_status_t rv = 0;
    orm_msg * msg = NULL;

    rv = apr_queue_trypop(game2orm.rv, (void **)&msg);
    switch (rv) {
    case APR_EAGAIN:
        break;
    case APR_SUCCESS:
        if (msg != NULL) {
            *sid = msg->sid;
            *msg_id = msg->msg_id;
			*uin = msg->uin;
			*result = msg->result;
            *buf = (char *)msg->data;
            *buf_len = msg->data_len;
            free(msg);
            msg = NULL;
        }
        break;
    default:
        break;
    }

    return rv;
}

static void orm_database_init(apr_pool_t * p)
{
	apr_pool_t * pool = p;
	apr_status_t rv;
	char * sql = NULL;
	int nrows = 0;

	rv = apr_dbd_init(pool);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "Failed to init apr_dbd!\n");
		return ;
	}

	rv = apr_dbd_get_driver(pool, "sqlite3", &_driver);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "Failed to fetch sqlite3 driver!\n");
		return ;
	}

	rv = apr_dbd_open(_driver, pool, "mt_gamesvr.db", &_handle);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "Failed to open sqlite3 database!\n");
		return ;
	}

	if (_handle == NULL) {
		fprintf(stderr, "Failed to get handle!\n");
		return ;
	}

#ifdef DATA_NON_PERSISTANCE
	sql = "DROP TABLE mt_actor";
	rv = apr_dbd_query(_driver, _handle, &nrows, sql);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "Failed to exec SQL statement!\n");
	}

	sql = "CREATE TABLE mt_actor ("
		"uin unsigned integer no null primary key,"
		"name varchar(40) not null,"
		"exp integer,"
		"stamina integer,"
		"stone integer,"
		"gold integer,"
		"cards blob"
		")";
	rv = apr_dbd_query(_driver, _handle, &nrows, sql);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "Failed to exec SQL statement!\n");
		return ;
	}
	fprintf(stdout, "exec SQL success:\n\t%s\n", sql);
	fprintf(stdout, "%d row(s) effected\n", nrows);

	sql = "INSERT INTO mt_actor VALUES(1, 'main_tank', 0, 120, 15000, 2100000, ?)";
	rv = apr_dbd_query(_driver, _handle, &nrows, sql);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "Failed to exec SQL statement: %s\n",
			apr_dbd_error(_driver, _handle, rv));
		return ;
	}
	fprintf(stdout, "exec SQL success:\n\t%s\n", sql);
	fprintf(stdout, "%d row(s) effected\n", nrows);
#endif
}

static void orm_database_fini()
{
	apr_dbd_close(_driver, _handle);
	_handle = NULL;
	_driver = NULL;
}

static void gamemsg_proc(orm_msg * msg, orm_msg ** result_msg);

static void * APR_THREAD_FUNC _orm_func(apr_thread_t * thrd, void * data)
{
    apr_status_t rv = 0;
    orm_msg * msg = NULL;
    orm_msg * result_msg = NULL;
    sid_t sid = 0;
    apr_int16_t idle_count = 0;
    apr_byte_t exit_flag = 0;

	fprintf(stdout, "[ORM] thread start, dual_queue is %p\n", &game2orm);
    fprintf(stdout, "[ORM] actor size = %d\n", sizeof(actor));
    fprintf(stdout, "[ORM] card_blob_t blob size = %d\n", sizeof(card_blob_t));

	orm_database_init(_orm_pool);

    while (1) {
        msg = NULL;
        rv = apr_queue_trypop(game2orm.sd, (void **)&msg);
        switch (rv) {
        case APR_EAGAIN:
            ++ idle_count;
            break;
        case APR_SUCCESS:
            if (msg != NULL) {
                if (msg->msg_id == ORM_MSG_STOP_REQ) {
                    exit_flag = 1;
                }
                result_msg = NULL;
                gamemsg_proc(msg, &result_msg);
                if (result_msg != NULL) {
                    apr_queue_push(game2orm.rv, result_msg);
                }
                MSG_FREE(msg);
                msg = NULL;
            }
            break;
        default:
            break;
        }

        if (exit_flag) {
            break;
        }

        if (idle_count >= 10) {
            apr_sleep(1 * 1000);
            idle_count = 0;
        }
    }

	orm_database_fini();

    rv = 0;
    fprintf(stdout, "[ORM] thread exit with %d!\n", rv);
    apr_thread_exit(thrd, rv);
    return NULL;
}

void create_orm_thread(dual_queue_t * dq, apr_pool_t * pool)
{
    apr_status_t rv = 0;
	rv = apr_pool_create(&_orm_pool, pool);
	fprintf(stdout, "[GMP] create ORM thread, dual_queue is %p\n", dq);
    rv = apr_thread_create(&_t, NULL, _orm_func, dq, _orm_pool);
}

void cancel_orm_thread()
{
    orm_msg * msg = (orm_msg *)malloc(sizeof(orm_msg));
    msg->sid = -1;
    msg->msg_id = ORM_MSG_STOP_REQ;
	msg->uin = 0;
    msg->data = NULL;
    msg->data_len = 0;
    apr_queue_push(game2orm.sd, msg);
}

void join_orm_thread()
{
    apr_status_t rv = 0;
    apr_thread_join(&rv, _t);
    fprintf(stdout, "[GMP] join ORM thread with rv=%d!\n", rv);

    apr_pool_clear(_orm_pool);
    apr_pool_destroy(_orm_pool);
    _orm_pool = NULL;
}

void deal_orm_stop(orm_msg * msg, orm_msg ** result_msg)
{
    orm_msg * ack_msg = (orm_msg *)malloc(sizeof(orm_msg));
    ack_msg->sid = -1;
    ack_msg->msg_id = ORM_MSG_STOP_ACK;
	ack_msg->uin = 0;
    ack_msg->data = NULL;
    ack_msg->data_len = 0;
    *result_msg = ack_msg;
}

void deal_orm_load_actor(orm_msg * msg, orm_msg ** result_msg, apr_pool_t * subp)
{
    orm_msg * ack_msg = (orm_msg *)malloc(sizeof(orm_msg));
    ack_msg->sid = msg->sid;
    ack_msg->msg_id = msg->msg_id;
	ack_msg->uin = msg->uin;
	ack_msg->result = EC_SUCCESS;
	ack_msg->data = NULL;
	ack_msg->data_len = 0;

    size_t obj_len = sizeof(actor);
    actor * obj = (actor *)malloc(obj_len);
	uin_t uin = msg->uin;

	apr_status_t rv = 0;
	char sql[1024] = {0};
	apr_dbd_results_t * res = NULL;
	apr_dbd_row_t * row = NULL;

	sprintf(sql, "SELECT name, exp, stamina, stone, gold, cards"
		" FROM mt_actor WHERE uin=%d", uin);
	rv = apr_dbd_select(_driver, subp, _handle, &res, sql, 0);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "[ORM] failed to exec SQL statement: %s\n",
			apr_dbd_error(_driver, _handle, rv));
		goto SERVER_BUSY;
	}

	rv = apr_dbd_num_tuples(_driver, res);
	if (rv < 1) {
		fprintf(stderr, "[ORM] failed to select uin=%d from mt_actor, not exist!\n", uin);
		goto ACTOR_NOT_FOUND;
	}

	apr_dbd_num_cols(_driver, res);
	apr_dbd_get_row(_driver, subp, res, &row, 1);

	obj->uin = uin;
	strcpy_s(obj->name, sizeof(obj->name), apr_dbd_get_entry(_driver, row, 0));
	obj->exp = atoi(apr_dbd_get_entry(_driver, row, 1));
	obj->stamina = atoi(apr_dbd_get_entry(_driver, row, 2));
	obj->stone = atoi(apr_dbd_get_entry(_driver, row, 3));
	obj->gold = atoi(apr_dbd_get_entry(_driver, row, 4));
    
    card_blob_t * db_blob = (card_blob_t *)apr_dbd_get_entry(_driver, row, 5);
    size_t db_blob_size = db_blob->blob_size;
    size_t db_card_size = db_blob->card_size;
    size_t db_card_count = db_blob->card_count;
    if (db_card_count > ACTOR_CARDS_MAXCOUNT)
        db_card_count = ACTOR_CARDS_MAXCOUNT;

    card_blob_t & mem_blob = obj->cards;
    size_t mem_card_size = sizeof(card_t);

    // 数据库中的blob可能跟内存中的数据结构尺寸不一样，要做兼容处理
    // 不兼容的数据被假定放在尾端，且只存在内存结构大于db结构的情况
    if (mem_card_size > db_card_size) {
        // 要做兼容处理，只拷贝前若干个字节!!!
        mem_blob.blob_size = sizeof(card_blob_t);
        mem_blob.card_size = sizeof(card_t);
        mem_blob.card_count = db_card_count;
        for (int i = 0; i < (int)db_card_count; ++ i) {
            card_t & mem_card = mem_blob.array_[i];
            card_t * db_card = (card_t *)
                ((char *)db_blob->array_ + i * db_card_size);
            memcpy(&mem_card, db_card, db_card_size);

            // 这里把新增的字段自己做初始化!!!

        }
    } else if (mem_card_size == db_card_size) {
        // 无需做兼容处理
        memcpy(&mem_blob, db_blob, sizeof(mem_blob));
    } else {
        // 我们使用一个旧版的应用程序，访问一个新版的db，或
        // db中的数据存在问题，程序继续运行将带来不可预料的
        // 风险或错误，直接退出吧!!!
        //
        // 后续可以优化为在程序启动时就做一下db整体兼容测试
        //
        fprintf(stderr, "[ORM] db compatibility fault!!! "
            " uin=%d, db_card_size=%d, mem_card_size=%d,",
            uin, db_card_size, mem_card_size);
        exit(-1);
    }

    ack_msg->data = obj;
    ack_msg->data_len = obj_len;
	ack_msg->result = EC_SUCCESS;

    *result_msg = ack_msg;
	return ;

ACTOR_NOT_FOUND:
	ack_msg->result = EC_ACTORNOTFOUND;
	free(obj);
	*result_msg = ack_msg;
	return ;

SERVER_BUSY:
	ack_msg->result = EC_SERVERBUSY;
	free(obj);
	*result_msg = ack_msg;
	return ;
}

void deal_orm_new_actor(orm_msg * msg, orm_msg ** result_msg)
{
	apr_status_t rv = 0;
    cache_session * session = (cache_session *)msg->data;
    cache_session_cb_data & cbdata = session->data;
    new_actor_ctx * ctx = (new_actor_ctx *)cbdata.input;
    scope_pool s(_orm_pool);
	orm_msg * ack_msg = NULL;

	// 检查是否已经存在此uin的角色记录
	deal_orm_load_actor(msg, result_msg, s.subp);

	ack_msg = *result_msg;
	if (ack_msg->result != EC_ACTORNOTFOUND) {
		return ;
	}

	free(ack_msg);
	ack_msg = NULL;

	ack_msg = (orm_msg *)malloc(sizeof(orm_msg));
	ack_msg->sid = msg->sid;
	ack_msg->uin = msg->uin;
	ack_msg->result = EC_SUCCESS;
	ack_msg->msg_id = msg->msg_id;
	ack_msg->data = NULL;
	ack_msg->data_len = 0;

	actor * obj = (actor *)malloc(sizeof(actor));
	obj->uin = msg->uin;
	strcpy_s(obj->name, sizeof(obj->name), ctx->name);
	obj->exp = 0;
	obj->gold = 8000000;
	obj->stone = 20000;
	obj->stamina = 120;

	card_blob_t & cards = obj->cards;
    cards.blob_size = sizeof(card_blob_t);
    cards.card_size = sizeof(card_t);
	cards.card_count = 0;
	for (int i = 0; i < ACTOR_CARDS_MAXCOUNT; ++ i) {
		card_t & card = cards.array_[i];
		memset(&card, 0, sizeof(card));
	}

	int nrows = 0;
    char * sql = "INSERT INTO mt_actor "
        " (uin, name, exp, stamina, stone, gold, cards) "
        " VALUES (%d, %s, %d, %d, %d, %d, %pDb) ";

	apr_dbd_prepared_t * stmt = NULL;
	rv = apr_dbd_prepare(_driver, s.subp, _handle, sql, NULL, &stmt);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "Failed to prepare SQL statement: %s\n",
			apr_dbd_error(_driver, _handle, rv));
		goto INSERT_FAULT;
	}

    const void * args[10] = {
        &obj->uin,
        obj->name,
        &obj->exp,
        &obj->stamina,
        &obj->stone,
        &obj->gold,
        &cards,
        &cards.blob_size,
        NULL,
        NULL};
	rv = apr_dbd_pbquery(_driver, s.subp, _handle, &nrows, stmt, args);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "Failed to pbquery SQL statement: %s\n",
			apr_dbd_error(_driver, _handle, rv));
		goto INSERT_FAULT;
	}

	ack_msg->data = obj;
	ack_msg->data_len = sizeof(actor);
	*result_msg = ack_msg;
	return ;

INSERT_FAULT:
	ack_msg->result = EC_SERVERBUSY;
	*result_msg = ack_msg;
	free(obj);
}

void gamemsg_proc(orm_msg * msg, orm_msg ** result_msg)
{
    apr_int16_t msg_id = msg->msg_id;
    switch (msg_id) {
    case ORM_MSG_STOP_REQ:
        deal_orm_stop(msg, result_msg);
        break;
    case ORM_MSG_LOAD_ACTOR: {
            scope_pool s(_orm_pool);
            deal_orm_load_actor(msg, result_msg, s.subp);
        }
        break;
    case ORM_MSG_NEW_ACTOR:
        deal_orm_new_actor(msg, result_msg);
        break;
    default:
        break;
    }
}

// 服务器启动阶段的数据和函数
static apr_pool_t * _load_pool = NULL;
static const apr_dbd_driver_t * _load_driver = NULL;
static apr_dbd_t * _load_handle = NULL;

apr_status_t orm_load_init(apr_pool_t * subp)
{
    apr_pool_t * pool = subp;
    apr_status_t rv = 0;
    char * sql = NULL;
    int nrows = 0;

    rv = apr_dbd_init(pool);
    if (rv != APR_SUCCESS) {
        fprintf(stderr, "Load stage failed to init apr_dbd!\n");
        return -1;
    }

    rv = apr_dbd_get_driver(pool, "sqlite3", &_load_driver);
    if (rv != APR_SUCCESS) {
        fprintf(stderr, "Load stage failed to fetch sqlite3 driver!\n");
        return -1;
    }

    rv = apr_dbd_open(_load_driver, pool, "mt_gamesvr.db", &_load_handle);
    if (rv != APR_SUCCESS) {
        fprintf(stderr, "Load stage failed to open sqlite3 database!\n");
        return -1;
    }

    if (_load_handle == NULL) {
        fprintf(stderr, "Load stage failed to get handle!\n");
        return -1;
    }

    _load_pool = pool;
    return rv;
}

apr_status_t orm_load_get_ids(idmgr_ctx_t * ids_ctx)
{
    apr_status_t rv = 0;
    apr_dbd_results_t * res = NULL;
    apr_dbd_row_t * row = NULL;
    card_id_t card_base_id = 0;
    int row_effected = 0;

    char * sql = "SELECT card_base_id FROM id_mgr "
        " ORDER BY card_base_id DESC LIMIT 0,1";
    rv = apr_dbd_select(_load_driver, _load_pool, _load_handle, &res, sql, 0);
    if (rv != APR_SUCCESS) {
        fprintf(stderr, "Failed to exec SQL statement: %s\n",
            apr_dbd_error(_load_driver, _load_handle, rv));
        goto SERVER_BUSY;
    }

    rv = apr_dbd_num_tuples(_load_driver, res);
    if (rv < 1) {
        fprintf(stdout,
            "[GMP] card_id_base not found from table id_mgr, "
            "try to add one!\n");

        card_base_id = 1;
        sql = "INSERT INTO id_mgr (card_base_id) VALUES (1)";
        rv = apr_dbd_query(_load_driver, _load_handle, &row_effected, sql);
        if (rv != APR_SUCCESS) {
            fprintf(stderr, "Failed to exec SQL statement: %s\n",
                apr_dbd_error(_load_driver, _load_handle, rv));
            goto SERVER_BUSY;
        }
    } else {
        apr_dbd_num_cols(_load_driver, res);
        apr_dbd_get_row(_load_driver, _load_pool, res, &row, 1);

        card_base_id = (card_id_t)apr_atoi64(
            apr_dbd_get_entry(_load_driver, row, 0));
    }

    card_base_id += 100;            // 浪费一点点

    fprintf(stdout, "[GMP] load card_base_id=%d\n", card_base_id);
    ids_ctx->card_base_id = card_base_id;
    ids_ctx->monster_base_id = 1;   // 怪物卡不存盘的
    return APR_SUCCESS;

SERVER_BUSY:
    return -1;
}

void orm_load_fini()
{
    apr_dbd_close(_load_driver, _load_handle);
    _load_handle = NULL;
    _load_driver = NULL;
}

// 服务器存盘阶段的数据和函数
static apr_pool_t * _save_pool = NULL;
static const apr_dbd_driver_t * _save_driver = NULL;
static apr_dbd_t * _save_handle = NULL;

apr_status_t orm_save_init(apr_pool_t * subp)
{
	apr_pool_t * pool = subp;
	apr_status_t rv = 0;
	char * sql = NULL;
	int nrows = 0;

	rv = apr_dbd_init(pool);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "Save stage failed to init apr_dbd!\n");
		return -1;
	}

	rv = apr_dbd_get_driver(pool, "sqlite3", &_save_driver);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "Save stage failed to fetch sqlite3 driver!\n");
		return -1;
	}

	rv = apr_dbd_open(_save_driver, pool, "mt_gamesvr.db", &_save_handle);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "Save stage failed to open sqlite3 database!\n");
		return -1;
	}

	if (_save_handle == NULL) {
		fprintf(stderr, "Save stage failed to get handle!\n");
		return -1;
	}

	_save_pool = pool;

	return rv;
}

apr_status_t orm_save_actor_save(void * buf, size_t buf_len)
{
	apr_status_t rv = 0;
    scope_pool s(_save_pool);
	actor * obj = (actor *)buf;
	int nrows = 0;

	if (buf_len != sizeof(actor)) {
		return -1;
	}

    char * sql = "UPDATE mt_actor SET exp=%d, stamina=%d,"
        " stone=%d, gold=%d, cards=%pDb WHERE uin=%d";
    
    apr_dbd_prepared_t * stmt = NULL;
    rv = apr_dbd_prepare(_save_driver, s.subp, _save_handle, sql, NULL, &stmt);
    if (rv != APR_SUCCESS) {
        fprintf(stderr, "Failed to prepare SQL statement: %s\n",
            apr_dbd_error(_save_driver, _save_handle, rv));
        goto SERVER_BUSY;
    }

    card_blob_t & cards = obj->cards;
    cards.blob_size = sizeof(card_blob_t);
    cards.card_size = sizeof(card_t);
    const void * args[9] = {
        &obj->exp,
        &obj->stamina,
        &obj->stone,
        &obj->gold,
        &cards,
        &cards.blob_size,
        NULL,
        NULL,
        &obj->uin};
    rv = apr_dbd_pbquery(_save_driver, s.subp, _save_handle, &nrows,
        stmt, args);
    if (rv != APR_SUCCESS) {
        fprintf(stderr, "Failed to pbquery SQL statement: %s\n",
            apr_dbd_error(_save_driver, _save_handle, rv));
        goto UPDATE_FAULT;
    }
    return rv;

SERVER_BUSY:
UPDATE_FAULT:
    return -1;
}

apr_status_t orm_save_actor_free(void * buf, size_t buf_len)
{
	actor * obj = (actor *)buf;
	if (buf_len != sizeof(actor)) {
		return -1;
	}
	free(obj);
	return APR_SUCCESS;
}

apr_status_t orm_save_idmgr_save(idmgr_ctx_t * ids_ctx)
{
    apr_status_t rv = 0;
    char sql[1024] = {0};
    int row_effected = 0;

    if (ids_ctx == NULL) {
        fprintf(stderr, "ids_ctx == NULL\n");
        return -1;
    }
    if (ids_ctx->card_base_id <= 0) {
        fprintf(stderr, "[GMP] card_base_id = %d, fault!\n",
            ids_ctx->card_base_id);
        return -1;
    }

    card_id_t card_base_id = ids_ctx->card_base_id + 1;
    sprintf(sql, "INSERT INTO id_mgr (card_base_id) VALUES "
        " (%d)", card_base_id);
    rv = apr_dbd_query(_save_driver, _save_handle, &row_effected, sql);
    if (rv != APR_SUCCESS) {
        fprintf(stderr, "Failed to exec SQL statement: %s\n",
            apr_dbd_error(_load_driver, _load_handle, rv));
        return -1;
    } else {
        fprintf(stdout, "[GMP] save card_base_id=%d\n", card_base_id);
        return APR_SUCCESS;
    }
}

void orm_save_fini()
{
	apr_dbd_close(_save_driver, _save_handle);
	_save_handle = NULL;
	_save_driver = NULL;
}
