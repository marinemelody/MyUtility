
#ifndef GAMEPLAY_H_
#define GAMEPLAY_H_

#include "../apr_inc.h"
#include "../cache/cache_manager.h"
#include "actor.h"

#ifdef __cplusplus
extern "C" {
#endif

// 缺省错误处理函数
void default_error_handler(void *, int, void **);

// GM指令
apr_status_t gm_proc(void *, void **, apr_pool_t *);

// 游戏逻辑处理函数
apr_status_t actor_login_proc(void *, void **, apr_pool_t *);
apr_status_t actor_new_proc(void *, void **, apr_pool_t *);

apr_status_t lottery_stone_proc(void *, void **, apr_pool_t *);
apr_status_t lottery_friend_proc(void *, void **, apr_pool_t *);

apr_status_t card_sell_proc(void *, void **, apr_pool_t *);
apr_status_t card_compose_proc(void *, void **, apr_pool_t *);
apr_status_t card_evolution_proc(void *, void **, apr_pool_t *);

#ifdef __cplusplus
}
#endif

extern cache_manager * cache_mgr;

#endif // GAMEPLAY_H_
