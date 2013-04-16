
#ifndef THREAD_GAMEPLAY_H_
#define THREAD_GAMEPLAY_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "../apr_inc.h"

void create_gameplay_thread(dual_queue_t *, apr_pool_t *);
void cancel_gameplay_thread();
void join_gameplay_thread();

#ifdef __cplusplus
};
#endif

#endif // THREAD_GAMEPLAY_H_
