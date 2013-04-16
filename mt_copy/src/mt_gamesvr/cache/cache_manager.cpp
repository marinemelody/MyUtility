
#include "cache_manager.h"
#include "../computing_model/thread_orm.h"

cache_manager::cache_manager(apr_pool_t * pool)
    : session_table(NULL), obj_table(NULL),
    sid_base(0), oid_base(0), sid_last(0)
{
    session_table = apr_hash_make(pool);
    obj_table = apr_hash_make(pool);
}

cache_manager::~cache_manager()
{
    apr_hash_clear(session_table);
    session_table = NULL;
    apr_hash_clear(obj_table);
    obj_table = NULL;
}

apr_status_t cache_manager::exec_task(
    uin_t uin,
    int task_type,
	cache_session_op_finished op,
	cache_session_default_errhandler err,
    void * user_data, size_t user_data_len,
	void ** result_msg)
{
    apr_status_t rv = 0;
    cache_session * session = NULL;
    cache_obj * c_obj = NULL;
    size_t input_len = MIN(user_data_len, CACHE_SESSION_DATA_MAXSIZE);

    if (op == NULL) {
        return -1;
    }

    c_obj = (cache_obj *)apr_hash_get(obj_table, &uin, sizeof(uin));
    if (c_obj != NULL) {
        cache_session_cb_data cbdata;
        memset(&cbdata, 0, sizeof(cbdata));

        memcpy(cbdata.input, user_data, input_len);
        cbdata.input_len = input_len;
        cbdata.output = c_obj->obj_ptr;
        cbdata.output_len = c_obj->obj_size;
        op(&cbdata, result_msg);

        c_obj->last_access_time = apr_time_now();

        rv = 0;
    } else {
        // ���ݲ��㣬��Ҫ�����첽�Ự
        session = (cache_session *)malloc(sizeof(cache_session));
        session->uin = uin;
        session->sid = ++ sid_base;
        session->op = op;
        session->err = err;

        cache_session_cb_data & cbdata = session->data;
        memset(&cbdata, 0, sizeof(cbdata));
        memcpy(cbdata.input, user_data, input_len);
        cbdata.input_len = input_len;
        cbdata.output = NULL;
        cbdata.output_len = 0;

        // ������ORM�߳�ͨ�ŵĶ����У��ȴ�ORM�̴߳���
        sid_t sid = session->sid;
        apr_hash_set(session_table, &sid, sizeof(sid), session);
        ::post_msg_to_orm(sid, task_type, uin, (char *)session, sizeof(*session));

        rv = 1;
    }

    return rv;
}

apr_status_t cache_manager::exec_task_deferred(
    sid_t sid,
	uin_t uin,
	int result,
	void * buf,
	size_t buf_len,
	void ** result_msg)
{
    apr_status_t rv = 0;
	cache_session * session = NULL;

    if (sid <= sid_last) {
        fprintf(stderr, "Fault: sid_last=%d, session sid=%d dropped!!!\n",
            sid_last, sid);
        return -1;
    } else {
        sid_last = sid;
    }

	// �Ự�������ļ�������
	session = (cache_session *)apr_hash_get(session_table, &sid, sizeof(sid));
	if (session == NULL) {
		fprintf(stderr, "sid=%d session not found in cache_mgr session table!\n", sid);
		return -1;
	}
	if (uin != session->uin) {
		fprintf(stderr, "session->uin=%d are diff with uin=%d\n", session->uin, uin);
		return -1;
	}
	apr_hash_set(session_table, &sid, sizeof(sid), NULL);

	// ����װ�ؽ���ļ�飬��������ֱ�ӵ���ͨ�ô�������
	cache_session_cb_data & cbdata = session->data;
	if (result != EC_SUCCESS) {
		session->err(&cbdata, result, result_msg);
		free(session);
		return 0;
	}

	// ��������û�д���
    cache_obj * c_obj = (cache_obj *)apr_hash_get(obj_table, &uin, sizeof(uin));
    if (c_obj != NULL) {
        // һ���첽������Ҫ�����ݾ�Ȼ�Ѿ�������
        // ˵��������첽��������ǰ�Ѿ�������������ͬ�����첽����
        // �����ȷŹ�����������첽��������ʱӦ�þܾ�������ʱ������
        // ����Ὣ��Щ������һ���Ự���У�һ��ֻ��ִ��һ��
        fprintf(stderr, "uin=%d already exist when async-operation callback!\n", uin);
    } else {
        // ��obj��hash���м���
        c_obj = (cache_obj *)malloc(sizeof(cache_obj));
        c_obj->uin = uin;
        c_obj->obj_ptr = buf;
        c_obj->obj_size = buf_len;
        c_obj->last_access_time = apr_time_now();
        apr_hash_set(obj_table, &uin, sizeof(uin), c_obj);
    }

    // �������㹻��ִ�лص�����
    cbdata.output = c_obj->obj_ptr;
    cbdata.output_len = c_obj->obj_size;
	session->op(&cbdata, result_msg);

	// �ͷŻỰ
	free(session);
    return 0;
}

int cache_manager::iterate_all(cache_iterator_op fn)
{
	apr_status_t rv = 0;
	apr_hash_index_t * hi = NULL;
	cache_obj * c_obj = NULL;
	int i = 0;

	for (hi = apr_hash_first(NULL, obj_table);
		hi != NULL;
		hi = apr_hash_next(hi)) {
		apr_hash_this(hi, NULL, NULL, (void **)&c_obj);

		rv = fn(c_obj->obj_ptr, c_obj->obj_size);
		if (rv == APR_SUCCESS)
			++ i;
	}

	return i;
}

apr_status_t cache_manager::flush(uin_t uin,
    cache_session_op_finished op,
    void * user_data,
    size_t user_data_len)
{
    apr_status_t rv = 0;

    return rv;
}











