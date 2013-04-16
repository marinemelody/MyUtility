
#ifndef APR_INC_H_
#define APR_INC_H_

#include "apr_general.h"
#include "apr_pools.h"
#include "apr_thread_proc.h"
#include "apr_queue.h"
#include "apr_hash.h"
#include "apr_strings.h"

#include "data_represent/msg_selector.h"

enum {
    ORM_MSG_START = 0,
    ORM_MSG_LOAD_ACTOR = 1,
    ORM_MSG_SAVE_ACTOR = 2,
    ORM_MSG_LOAD_ACTOR_ADV = 3,
    ORM_MSG_NEW_ACTOR = 4,
    ORM_MSG_STOP_REQ = 5,
    ORM_MSG_STOP_ACK = 6,
};

typedef struct dual_queue_t {
    apr_queue_t * sd;
    apr_queue_t * rv;
} dual_queue_t;

#define MIN(a, b)       ((a <= b) ? a : b)

void dual_queue_init(dual_queue_t *, apr_pool_t *);
void dual_queue_fini(dual_queue_t *);

typedef struct new_actor_ctx {
    int net_id;
	unsigned int hero;
    char name[ACTOR_NAME_MAXSIZE];
} new_actor_ctx;

typedef struct gm_op_givecard {
    uin_t uin;
    card_ptt_id_t ptt_id;
} gm_op_givecard;

typedef struct gm_op_givestone {
    uin_t uin;
    int stone;
} gm_op_givestone;

typedef struct gm_op_givegold {
    uin_t uin;
    int gold;
} gm_op_givegold;

typedef struct gm_op_ctx {
	int net_id;
	union {
        gm_op_givecard givecard;
        gm_op_givestone givestone;
        gm_op_givegold givegold;
	};
} gm_op_ctx;

typedef struct card_sell_ctx {
	int net_id;
	void * data;
} card_sell_ctx;

typedef struct card_compose_ctx {
	int net_id;
	void * data;
} card_compose_ctx;

typedef struct card_evolution_ctx {
	int net_id;
	void * data;
} card_evolution_ctx;

#define STONE_LOTTERY_COST      (280)

#define CTX_ALLOC(s)			malloc(s)
#define CTX_FREE(p)				free(p)

#endif // APR_INC_H_
