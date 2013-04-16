
#include "../apr_inc.h"
#include "../data_represent/msg_selector.h"
#include "../scope_guard.h"
#include "gameplay.h"
#include "id_mgr.h"

static void gm_givecard_ack(
	cache_session_cb_data * cbdata,
	void ** result_msg)
{
	void * ack_msg = NULL;
	msghdr * ack_hdr = NULL;
	gm_op_ctx * ctx = (gm_op_ctx *)cbdata->input;
	actor * obj = (actor *)cbdata->output;

	if (actor_cards_can_add(obj, 1)) {
		actor_cards_add(
			obj,
			ids_alloc_card(),
			ctx->givecard.ptt_id);

		gmcommand_ack * ack_body = NULL;
		MSG_INIT_TYPE(
			ack_msg,
			gmcommand_ack,
			ack_hdr,
			ack_body,
			MSG_ID_GMCOMMAND_ACK,
			ctx->net_id);
		ack_body->result = 0;
	} else {
		default_err_ack * ack_body = NULL;
		MSG_INIT_TYPE(ack_msg,
			default_err_ack,
			ack_hdr,
			ack_body,
			MSG_ID_DEFAULTERROR_ACK,
			ctx->net_id);
		ack_body->reason = EC_ACTORCARDBAGFULL;
	}

	*result_msg = ack_msg;
}

static void gm_givestone_ack(
    cache_session_cb_data * cbdata,
    void ** result_msg)
{
    void * ack_msg = NULL;
    msghdr * ack_hdr = NULL;
    gm_op_ctx * ctx = (gm_op_ctx *)cbdata->input;
    actor * obj = (actor *)cbdata->output;

    bool ok = actor_stone_inc(obj, ctx->givestone.stone);

    gmcommand_ack * ack_body = NULL;
    MSG_INIT_TYPE(
        ack_msg,
        gmcommand_ack,
        ack_hdr,
        ack_body,
        MSG_ID_GMCOMMAND_ACK,
        ctx->net_id);
    ack_body->result = ok ? 0 : EC_MATHOPOVERFLOW;

    *result_msg = ack_msg;
}

static void gm_givegold_ack(
    cache_session_cb_data * cbdata,
    void ** result_msg)
{
    void * ack_msg = NULL;
    msghdr * ack_hdr = NULL;
    gm_op_ctx * ctx = (gm_op_ctx *)cbdata->input;
    actor * obj = (actor *)cbdata->output;

    bool ok = actor_gold_inc(obj, ctx->givegold.gold);

    gmcommand_ack * ack_body = NULL;
    MSG_INIT_TYPE(
        ack_msg,
        gmcommand_ack,
        ack_hdr,
        ack_body,
        MSG_ID_GMCOMMAND_ACK,
        ctx->net_id);
    ack_body->result = ok ? 0 : EC_MATHOPOVERFLOW;

    *result_msg = ack_msg;
}

apr_status_t gm_proc(
	void * msg,
	void ** result_msg,
	apr_pool_t * pool)
{
	apr_status_t rv = 0;
	void * req_msg = msg;
	msghdr * req_hdr = NULL;
	gmcommand_req * req_body = NULL;

	MSG_LOCATE2(req_msg, gmcommand_req, req_hdr, req_body);
	fprintf(stdout, "[GMP] HDR net_id=%x, msg_id=%d, body_len=%d\n",
		MSG_GETNETID(req_msg),
		MSG_GETMSGID(req_msg),
		MSG_GETBODYLEN(req_msg));
	fprintf(stdout, "[GMP] BODY text=%s\n", req_body->text);

	int i = 0;
	int result = 0;
	char ** tok = NULL;

	scope_pool sp(pool);
	apr_tokenize_to_argv(req_body->text, &tok, sp.subp);
	char ** tmp = tok;
	while (*tmp ++ != NULL) {
		++ i;
	}
	fprintf(stdout, "[GMP] gm command has %d part(s)\n", i);

	if (i < 1) {
		result = 2;
	} else {
		if (stricmp(tok[0], "givecard") == 0) {
			uin_t uin = 0;
			card_ptt_id_t ptt_id = 0;
			if (i < 3) {
				result = 2;
			} else {
				uin = (uin_t)apr_atoi64(tok[1]);
				ptt_id = (card_ptt_id_t)apr_atoi64(tok[2]);

				gm_op_ctx ctx;
				ctx.net_id = MSG_GETNETID(req_msg);
				ctx.givecard.uin = uin;
				ctx.givecard.ptt_id = ptt_id;
				cache_mgr->exec_task(uin,
					ORM_MSG_LOAD_ACTOR,
					gm_givecard_ack,
					default_error_handler,
					&ctx,
					sizeof(ctx),
					result_msg);
				return 0;
			}
		} else if (stricmp(tok[0], "givestone") == 0) {
            uin_t uin = 0;
            int stone = 0;
            if (i < 3) {
                result = 2;
            } else {
                uin = (uin_t)apr_atoi64(tok[1]);
                stone = (int)apr_atoi64(tok[2]);

                gm_op_ctx ctx;
                ctx.net_id = MSG_GETNETID(req_msg);
                ctx.givestone.uin = uin;
                ctx.givestone.stone = stone;
                cache_mgr->exec_task(uin,
                    ORM_MSG_LOAD_ACTOR,
                    gm_givestone_ack,
                    default_error_handler,
                    &ctx,
                    sizeof(ctx),
                    result_msg);
                return 0;
            }
		} else if (stricmp(tok[0], "givegold") == 0) {
            uin_t uin = 0;
            int gold = 0;
            if (i < 3) {
                result = 2;
            } else {
                uin = (uin_t)apr_atoi64(tok[1]);
                gold = (int)apr_atoi64(tok[2]);

                gm_op_ctx ctx;
                ctx.net_id = MSG_GETNETID(req_msg);
                ctx.givegold.uin = uin;
                ctx.givegold.gold = gold;
                cache_mgr->exec_task(uin,
                    ORM_MSG_LOAD_ACTOR,
                    gm_givegold_ack,
                    default_error_handler,
                    &ctx,
                    sizeof(ctx),
                    result_msg);
                return 0;
            }
		} else {
			fprintf(stdout, "[GMP] unknown %s token\n",
				tok[0]);
			result = 2;
		}
	}

	void * ack_msg = NULL;
	msghdr * ack_hdr = NULL;
	gmcommand_ack * ack_body = NULL;

	MSG_INIT_TYPE(
		ack_msg,
		gmcommand_ack,
		ack_hdr,
		ack_body,
		MSG_ID_GMCOMMAND_ACK,
		MSG_GETNETID(req_msg));

	ack_body->result = result;
	*result_msg = ack_msg;
    return 0;
}
