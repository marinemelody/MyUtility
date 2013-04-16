
#ifndef CACHE_MANAGER_H_
#define CACHE_MANAGER_H_

/*

  cache系统源于高速存储器的成本远高于低速存储器

  如果是32位应用程序，那么只能访问3G多一点的内存空间，对于
  玩家的数据而言，全量装载必然带来O(N)的空间复杂度，假定玩
  家数据是16K，仅此一项10W的用户将消耗1.5G的内存空间

  如果是64位应用程序，cache系统依然有意义，其意义在于提高
  CPU L1/L2 缓存的命中率，提升系统整体性能

  cache系统的复杂性来源于两方面：
  1 偶发复杂性，这来源于服务器的运算模型，具体体现出来就是
  异步操作来装载和写入对象，这又源于低速操作与高速操作解耦
  导致的数据分散化，需要建立一个框架来将分散的数据集中起来，
  同时不将数据的同步机制、同步源等细节扩散到上层开发中
  2 根本复杂性，这来源于玩家行为与系统行为之间的矛盾，如果
  在一个异步存盘会话中玩家请求写入数据，则可能会破坏之前会
  话的完整性，故而可以在玩家对象上建立会话互斥机制或队列来
  规避

  cache系统的淘汰机制可以使用LRU算法，其他的考量维度可以
  纳入cache系统的内存占用率

*/

#include "../apr_inc.h"

// cache_session: cache系统中的异步复杂性都封装在此
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

// cache_obj: cache系统中的数据对象，要保证同步机制与数据语义的分离
typedef struct cache_obj {
    uin_t uin;
    apr_time_t last_access_time;
    void * obj_ptr;
    size_t obj_size;
} cache_obj;

// cache_manager: cache系统的核心，维护数据表和会话表
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
    // 执行中的session
    apr_hash_t * session_table;

    // 对象的cache
    apr_hash_t * obj_table;

    // sid base
    apr_uint32_t sid_base;

    // uin base，这个数据需要被持久化
    apr_uint32_t oid_base;

    // 最后次接收的sid
    apr_uint32_t sid_last;
};

#endif // CACHE_MANAGER_H_
