
#ifndef ID_MGR_H_
#define ID_MGR_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "../apr_inc.h"

typedef struct idmgr_ctx_t {
    card_id_t card_base_id;
    card_id_t monster_base_id;
} idmgr_ctx_t;

idmgr_ctx_t * ids_ctx_get();
card_id_t ids_alloc_card();
card_id_t ids_alloc_monster();

#ifdef __cplusplus
};
#endif

#endif // ID_MGR_H_
