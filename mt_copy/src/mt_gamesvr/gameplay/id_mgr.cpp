
#include "id_mgr.h"
#include "../computing_model/thread_orm.h"

idmgr_ctx_t ids_ctx;

idmgr_ctx_t * ids_ctx_get()
{
    return &ids_ctx;
}

card_id_t ids_alloc_card()
{
    return ++ ids_ctx.card_base_id;
}

card_id_t ids_alloc_monster()
{
    return ++ ids_ctx.monster_base_id;
}
