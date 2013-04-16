
#ifndef CACHE_MANAGER_H_
#define CACHE_MANAGER_H_

/*

  cacheϵͳԴ�ڸ��ٴ洢���ĳɱ�Զ���ڵ��ٴ洢��

  �����32λӦ�ó�����ôֻ�ܷ���3G��һ����ڴ�ռ䣬����
  ��ҵ����ݶ��ԣ�ȫ��װ�ر�Ȼ����O(N)�Ŀռ临�Ӷȣ��ٶ���
  ��������16K������һ��10W���û�������1.5G���ڴ�ռ�

  �����64λӦ�ó���cacheϵͳ��Ȼ�����壬�������������
  CPU L1/L2 ����������ʣ�����ϵͳ��������

  cacheϵͳ�ĸ�������Դ�������棺
  1 ż�������ԣ�����Դ�ڷ�����������ģ�ͣ��������ֳ�������
  �첽������װ�غ�д���������Դ�ڵ��ٲ�������ٲ�������
  ���µ����ݷ�ɢ������Ҫ����һ�����������ɢ�����ݼ���������
  ͬʱ�������ݵ�ͬ�����ơ�ͬ��Դ��ϸ����ɢ���ϲ㿪����
  2 ���������ԣ�����Դ�������Ϊ��ϵͳ��Ϊ֮���ì�ܣ����
  ��һ���첽���̻Ự���������д�����ݣ�����ܻ��ƻ�֮ǰ��
  ���������ԣ��ʶ���������Ҷ����Ͻ����Ự������ƻ������
  ���

  cacheϵͳ����̭���ƿ���ʹ��LRU�㷨�������Ŀ���ά�ȿ���
  ����cacheϵͳ���ڴ�ռ����

*/

#include "../apr_inc.h"

// cache_session: cacheϵͳ�е��첽�����Զ���װ�ڴ�
#define CACHE_SESSION_DATA_MAXSIZE      (64)
typedef struct cache_session_cb_data {
    char input[CACHE_SESSION_DATA_MAXSIZE];
    size_t input_len;
    void * output;
    size_t output_len;
} cache_session_cb_data;

typedef void (*cache_session_op_finished)(
    cache_session_cb_data *, void **);

typedef void (*cache_session_default_errhandler)(
	void *, int, void **);

typedef apr_status_t (*cache_iterator_op)(
	void *, size_t);

typedef struct cache_session {
    sid_t sid;
	uin_t uin;
	cache_session_op_finished op;
	cache_session_default_errhandler err;
    cache_session_cb_data data;
} cache_session;

// cache_obj: cacheϵͳ�е����ݶ���Ҫ��֤ͬ����������������ķ���
typedef struct cache_obj {
    uin_t uin;
    apr_time_t last_access_time;
    void * obj_ptr;
    size_t obj_size;
} cache_obj;

// cache_manager: cacheϵͳ�ĺ��ģ�ά�����ݱ�ͻỰ��
class cache_manager {
public:
    cache_manager(apr_pool_t *);
    ~cache_manager();

    virtual apr_status_t exec_task(
        uin_t,
        int,
        cache_session_op_finished,
		cache_session_default_errhandler,
        void *,
        size_t,
        void **);

    virtual apr_status_t exec_task_deferred(
        sid_t,
		uin_t,
		int,
        void *,
        size_t,
        void **);

	virtual int iterate_all(cache_iterator_op);

protected:
    virtual apr_status_t flush(uin_t,
        cache_session_op_finished, void *, size_t);

private:
    // ִ���е�session
    apr_hash_t * session_table;

    // �����cache
    apr_hash_t * obj_table;

    // sid base
    apr_uint32_t sid_base;

    // uin base�����������Ҫ���־û�
    apr_uint32_t oid_base;

    // ���ν��յ�sid
    apr_uint32_t sid_last;
};

#endif // CACHE_MANAGER_H_
