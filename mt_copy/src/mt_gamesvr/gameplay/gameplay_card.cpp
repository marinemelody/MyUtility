
#include "gameplay.h"
#include "../resource/resource_manager.h"
#include "../resource/res_parser.h"

// 卖卡
static void card_sell_proc_ack(
	cache_session_cb_data * cbdata,
	void ** result_msg)
{
	void * ack_msg = NULL;
	msghdr * ack_hdr = NULL;
	card_sell_ack * ack_body = NULL;
	card_sell_ctx * ctx = (card_sell_ctx *)cbdata->input;
	actor * obj = (actor *)cbdata->output;

	int net_id = ctx->net_id;
	card_sell_req * req_body = (card_sell_req *)ctx->data;

	int sell_count = 0;
	int sell_gold = 0;
	for (int i = 0; i < (int)req_body->count; ++ i) {
		card_t * c = actor_cards_get_card_by_id(
			obj, req_body->cards[i]);
		if (c != NULL) {
			++ sell_count;
			card_ptt_t * ptt = (card_ptt_t *)
				resmgr_find_int16(RES_ID_CARDS, c->ptt_id);
			sell_gold += ptt->sell_gold_base * c->level;
			actor_cards_del(obj, req_body->cards[i]);
		}
	}

	CTX_FREE(req_body);
	req_body = NULL;

	if (actor_gold_inc(obj, sell_gold)) {
		MSG_INIT_TYPE(ack_msg,
			card_sell_ack,
			ack_hdr,
			ack_body,
			MSG_ID_CARDSELL_ACK,
			net_id);
		ack_body->sell_count = sell_count;
		ack_body->gold = obj->gold;
	} else {
		default_err_ack * ack_body = NULL;
		MSG_INIT_TYPE(ack_msg,
			default_err_ack,
			ack_hdr,
			ack_body,
			MSG_ID_DEFAULTERROR_ACK,
			net_id);
		ack_body->reason = EC_MATHOPOVERFLOW;
	}

	*result_msg = ack_msg;
}

apr_status_t card_sell_proc(
	void * msg,
	void ** result_msg,
	apr_pool_t *)
{
	apr_status_t rv = 0;
	void * req_msg = msg;
	msghdr * req_hdr = NULL;
	card_sell_req * req_body = NULL;
	card_sell_ctx ctx;
	card_sell_req * dup_body = (card_sell_req *)
		CTX_ALLOC(sizeof(card_sell_req));
	MSG_LOCATE2(req_msg, card_sell_req, req_hdr, req_body);

	memcpy(dup_body, req_body, sizeof(card_sell_req));
	memset(&ctx, 0, sizeof(ctx));
	ctx.net_id = MSG_GETNETID(req_msg);
	ctx.data = (void *)dup_body;
	rv = cache_mgr->exec_task(req_body->uin,
		ORM_MSG_LOAD_ACTOR,
		card_sell_proc_ack,
		default_error_handler,
		&ctx,
		sizeof(ctx),
		result_msg);

	return rv;
}

// 卡牌合成
static int get_next_level_exp_need(level_t level, int type)
{
	card_compose_t * cc = (card_compose_t *)
		resmgr_find_int16(RES_ID_CARDLEVELUP, level);
	int next_level_exp_need = 0;
	
	if ((type >= 0) && (type < 4)) {
		return cc->compose_exp[type];
	} else {
		return 0x0fffffff;
	}
}

static void card_compose_proc_ack(
	cache_session_cb_data * cbdata,
	void ** result_msg)
{
	void * ack_msg = NULL;
	msghdr * ack_hdr = NULL;
	card_compose_ctx * ctx = (card_compose_ctx *)cbdata->input;
	actor * obj = (actor *)cbdata->output;
	int net_id = ctx->net_id;
	card_compose_req * req_body = (card_compose_req *)ctx->data;
	int reason = EC_SUCCESS;
	
	card_t * main_card = actor_cards_get_card_by_id(obj, req_body->main_card);
	if (main_card == NULL) {
		reason = EC_CARDNOTFOUND;
		goto COMPOSE_FAULT;
	}

	card_ptt_t * main_ptt = (card_ptt_t *)
		resmgr_find_int16(RES_ID_CARDS, main_card->ptt_id);
	if (main_ptt == NULL) {
		reason = EC_CARDPTTNOTFOUND;
		goto COMPOSE_FAULT;
	}

	int compose_exp = 0;
	bool material_card_not_exist = false;
	for (int i = 0; i < req_body->material_count; ++ i) {
		card_id_t c_id = req_body->material_card[i];
		card_t * material_card = actor_cards_get_card_by_id(obj, c_id);
		if (material_card == NULL) {
			material_card_not_exist = true;
			reason = EC_CARDNOTFOUND;
			break;
		} else {
			card_ptt_t * material_ptt = (card_ptt_t *)
				resmgr_find_int16(RES_ID_CARDS, material_card->ptt_id);
			if (material_ptt == NULL) {
				material_card_not_exist = true;
				reason = EC_CARDPTTNOTFOUND;
				break;
			}
			int card_exp = material_ptt->compose_exp_base * material_card->level;
			if (material_card->level >= material_ptt->level_max) {
				card_exp *= 2;
			}
			compose_exp += card_exp;
		}
	}
	if (material_card_not_exist) {
		goto COMPOSE_FAULT;
	}

	int new_exp = compose_exp + main_card->exp;
	level_t new_level = main_card->level;
	int exp_type = main_ptt->levelup_exp_type;
	int next_level_exp_need = get_next_level_exp_need(new_level, exp_type);
	while ((new_exp >= next_level_exp_need)
		&& (new_level < main_ptt->level_max)) {
		new_exp -= next_level_exp_need;
		++ new_level;
		next_level_exp_need = get_next_level_exp_need(new_level, exp_type);
	}
	
	main_card->level = new_level;
	if (new_level == main_ptt->level_max) {
		new_exp = 0;
	}
	main_card->exp = new_exp;

	card_compose_ack * ack_body = NULL;
	MSG_INIT_TYPE(ack_msg,
		card_compose_ack,
		ack_hdr,
		ack_body,
		MSG_ID_CARDCOMPOSE_ACK,
		net_id);
	ack_body->main_card = *main_card;

	// 删除卡要放在最后，这是个坑!
	for (int i = 0; i < req_body->material_count; ++ i) {
		actor_cards_del(obj, req_body->material_card[i]);
	}

	CTX_FREE(req_body);
	*result_msg = ack_msg;
	return ;

COMPOSE_FAULT:
	{
		default_err_ack * ack_body = NULL;
		MSG_INIT_TYPE(ack_msg,
			default_err_ack,
			ack_hdr,
			ack_body,
			MSG_ID_DEFAULTERROR_ACK,
			net_id);
		ack_body->reason = reason;
	}
	CTX_FREE(req_body);
	*result_msg = ack_msg;
}

apr_status_t card_compose_proc(
	void * msg,
	void ** result_msg,
	apr_pool_t *)
{
	apr_status_t rv = 0;
	void * req_msg = msg;
	msghdr * req_hdr = NULL;
	card_compose_req * req_body = NULL;
	card_compose_ctx ctx;
	card_compose_req * dup_body = (card_compose_req *)
		CTX_ALLOC(sizeof(card_compose_req));
	MSG_LOCATE2(req_msg, card_compose_req, req_hdr, req_body);

	memcpy(dup_body, req_body, sizeof(card_compose_req));
	memset(&ctx, 0, sizeof(ctx));
	ctx.net_id = MSG_GETNETID(req_msg);
	ctx.data = (void *)dup_body;
	rv = cache_mgr->exec_task(req_body->uin,
		ORM_MSG_LOAD_ACTOR,
		card_compose_proc_ack,
		default_error_handler,
		&ctx,
		sizeof(ctx),
		result_msg);

	return rv;
}

// 卡牌进化
static void card_evolution_proc_ack(
	cache_session_cb_data * cbdata,
	void ** result_msg)
{
	void * ack_msg = NULL;
	msghdr * ack_hdr = NULL;
	card_evolution_ctx * ctx = (card_evolution_ctx *)cbdata->input;
	actor * obj = (actor *)cbdata->output;
	int net_id = ctx->net_id;
	card_evolution_req * req_body = (card_evolution_req *)ctx->data;
	int reason = EC_SUCCESS;

	card_t * main_card = actor_cards_get_card_by_id(obj, req_body->main_card);
	if (main_card == NULL) {
		reason = EC_CARDNOTFOUND;
		goto EVOLUTION_FAULT;
	}

	card_evolution_t * main_evo = (card_evolution_t *)
		resmgr_find_int32(RES_ID_CARDEVOLUTION, main_card->ptt_id);
	if (main_evo == NULL) {
		reason = EC_CARDEVONOTFOUND;
		goto EVOLUTION_FAULT;
	}

	card_ptt_t * main_ptt_evo = (card_ptt_t *)
		resmgr_find_int16(RES_ID_CARDS, main_evo->id_evo);
	if (main_ptt_evo == NULL) {
		reason = EC_CARDPTTNOTFOUND;
		goto EVOLUTION_FAULT;
	}

	if (obj->gold < main_evo->gold_required) {
		reason = EC_GOLDNOTENOUGH;
		goto EVOLUTION_FAULT;
	}

	if (main_card->level < main_evo->level_required) {
		reason = EC_CARDLEVELNOTENOUGH;
		goto EVOLUTION_FAULT;
	}

	if (!actor_gold_inc(obj, -main_evo->gold_required)) {
		reason = EC_MATHOPOVERFLOW;
		goto EVOLUTION_FAULT;
	}

	main_card->ptt_id = main_evo->id_evo;
	main_card->level = main_evo->level_evo;
	main_card->sk_lvl = main_evo->initsk_level_evo;
	main_card->exp = 0;

	card_evolution_ack * ack_body = NULL;
	MSG_INIT_TYPE(ack_msg,
		card_evolution_ack,
		ack_hdr,
		ack_body,
		MSG_ID_CARDEVOLUTION_ACK,
		net_id);
	ack_body->main_card = *main_card;

	CTX_FREE(req_body);
	*result_msg = ack_msg;
	return ;

EVOLUTION_FAULT:
	{
		default_err_ack * ack_body = NULL;
		MSG_INIT_TYPE(ack_msg,
			default_err_ack,
			ack_hdr,
			ack_body,
			MSG_ID_DEFAULTERROR_ACK,
			net_id);
		ack_body->reason = reason;
	}
	CTX_FREE(req_body);
	*result_msg = ack_msg;
}

apr_status_t card_evolution_proc(
	void * msg,
	void ** result_msg,
	apr_pool_t *)
{
	apr_status_t rv = 0;
	void * req_msg = msg;
	msghdr * req_hdr = NULL;
	card_evolution_req * req_body = NULL;
	card_evolution_ctx ctx;
	card_evolution_req * dup_body = (card_evolution_req *)
		CTX_ALLOC(sizeof(card_evolution_req));
	MSG_LOCATE2(req_msg, card_evolution_req, req_hdr, req_body);

	memcpy(dup_body, req_body, sizeof(card_evolution_req));
	memset(&ctx, 0, sizeof(ctx));
	ctx.net_id = MSG_GETNETID(req_msg);
	ctx.data = (void *)dup_body;
	rv = cache_mgr->exec_task(req_body->uin,
		ORM_MSG_LOAD_ACTOR,
		card_evolution_proc_ack,
		default_error_handler,
		&ctx,
		sizeof(ctx),
		result_msg);

	return rv;
}
