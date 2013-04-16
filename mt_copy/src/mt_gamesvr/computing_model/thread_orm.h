
#ifndef THREAD_ORM_H_
#define THREAD_ORM_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "../apr_inc.h"
#include "../gameplay/actor.h"
#include "../gameplay/id_mgr.h"

extern dual_queue_t game2orm;

void create_orm_thread(dual_queue_t *, apr_pool_t *);
void cancel_orm_thread();
void join_orm_thread();

apr_status_t post_msg_to_orm(sid_t, apr_int16_t,
	uin_t, char *, size_t);
apr_status_t poll_msg_from_orm(sid_t *, apr_int16_t *,
	uin_t *, int *, char **, size_t *);

apr_status_t orm_load_init(apr_pool_t *);
apr_status_t orm_load_get_ids(idmgr_ctx_t *);
void orm_load_fini();

apr_status_t orm_save_init(apr_pool_t *);
apr_status_t orm_save_actor_save(void *, size_t);
apr_status_t orm_save_actor_free(void *, size_t);
apr_status_t orm_save_idmgr_save(idmgr_ctx_t *);
void orm_save_fini();

#ifdef __cplusplus
};
#endif

#endif // THREAD_ORM_H_
