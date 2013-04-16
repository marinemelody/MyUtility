
#include "../data_represent/msg_selector.h"
#include "gameplay.h"

// 主角登录
static void actor_login_proc_ack(
    cache_session_cb_data * cbdata,
    void ** result_msg)
{
    void * ack_msg = NULL;
    msghdr * ack_hdr = NULL;
    actor_login_ack * ack_body = NULL;
    int net_id = *(int *)cbdata->input;
    actor * obj = (actor *)cbdata->output;
	size_t card_count = actor_cards_get_count(obj);
	size_t body_size = sizeof(actor_login_ack) +
		card_count * sizeof(card_t);

    MSG_INIT_SIZE(ack_msg,
        actor_login_ack,
		body_size,
        ack_hdr,
        ack_body,
        MSG_ID_ACTORLOGIN_ACK,
        net_id);

    // actor runtime data 初始化
	obj->level = obj->exp / 10 + 1;
	obj->leadership = obj->level * 10;
	obj->gearscore = obj->level * 100;

    ack_body->uin = obj->uin;
    ack_body->level = obj->level;
    ack_body->exp = obj->exp;
    ack_body->gold = obj->gold;
    ack_body->stone = obj->stone;
    ack_body->stamina = obj->stamina;
    ack_body->leadership = obj->leadership;
	strcpy_s(ack_body->name, sizeof(ack_body->name), obj->name);
    ack_body->card_num = card_count;
	char * ptr = (char *)(&ack_body->card_num + 1);
	for (size_t i = 0; i < card_count; ++ i) {
		card_t & card = ((card_t *)ptr)[i];
		const card_t * c = actor_cards_get_card_by_pos(obj, i);
		if (c == NULL) {
			continue;
		} else {
			card.id = c->id;
			card.ptt_id = c->ptt_id;
			card.level = c->level;
			card.exp = c->exp;
			card.cap_sk = c->cap_sk;
			card.sk_lvl = c->sk_lvl;
		}
	}

    *result_msg = ack_msg;
}

apr_status_t actor_login_proc(
    void * msg,
    void ** result_msg,
    apr_pool_t *)
{
    apr_status_t rv = 0;
	void * req_msg = msg;
    msghdr * req_hdr = NULL;
    actor_login_req * req_body = NULL;

	MSG_LOCATE2(req_msg, actor_login_req, req_hdr, req_body);
    fprintf(stdout, "[GMP] HDR net_id=%x, msg_id=%d, body_len=%d\n",
		MSG_GETNETID(req_msg),
		MSG_GETMSGID(req_msg),
		MSG_GETBODYLEN(req_msg));
    fprintf(stdout, "[GMP] BODY uin=%d\n", req_body->uin);

    int net_id = MSG_GETNETID(req_msg);
    rv = cache_mgr->exec_task(
        req_body->uin,
        ORM_MSG_LOAD_ACTOR,
        actor_login_proc_ack,
        default_error_handler,
		&net_id,
        sizeof(net_id),
        result_msg);

    return rv;
}

// 新建角色
static void actor_new_proc_ack(
    cache_session_cb_data * cbdata,
    void ** result_msg)
{
    actor_login_proc_ack(cbdata, result_msg);
}

apr_status_t actor_new_proc(
    void * msg,
    void ** result_msg,
    apr_pool_t *)
{
    apr_status_t rv = 0;
    void * req_msg = msg;
    msghdr * req_hdr = NULL;
    actor_new_req * req_body = NULL;
    new_actor_ctx ctx;

    MSG_LOCATE2(req_msg, actor_new_req, req_hdr, req_body);
    fprintf(stdout, "[GMP] HDR net_id=%x, msg_id=%d, body_len=%d\n",
        MSG_GETNETID(req_msg),
        MSG_GETMSGID(req_msg),
        MSG_GETBODYLEN(req_msg));
    fprintf(stdout, "[GMP] New Actor: name=[%s], hero=%d, uin=%d\n",
        req_body->name,
		req_body->hero,
        req_body->uin);

    if (req_body->hero >= ACTOR_START_HERO_MAX) {
        req_body->hero = ACTOR_START_HERO_MT;
    }

    memset(&ctx, 0, sizeof(ctx));
    ctx.net_id = MSG_GETNETID(req_msg);
	ctx.hero = req_body->hero;
    strcpy_s(ctx.name, sizeof(ctx.name), req_body->name);
    rv = cache_mgr->exec_task(req_body->uin,
        ORM_MSG_NEW_ACTOR,
        actor_new_proc_ack,
        default_error_handler,
        &ctx,
        sizeof(ctx),
        result_msg);

    return rv;
}
