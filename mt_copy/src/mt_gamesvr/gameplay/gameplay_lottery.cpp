
#include "gameplay_lottery.h"
#include "id_mgr.h"

// ≥ÈΩ±∏≈¬ ±Ì
apr_hash_t * lottery_stone_prob_hash = NULL;

apr_status_t lottery_stone_roll(
	apr_int32_t group_id,
	card_ptt_id_t * ptt_id)
{
	lottery_group_prob * gp = NULL;

	gp = (lottery_group_prob *)apr_hash_get(
		lottery_stone_prob_hash,
		&group_id,
		sizeof(group_id));
	if (gp == NULL) {
		fprintf(stderr, "[GMP] invalid group_id=%d\n",
			group_id);
		*ptt_id = 0;
		return -1;
	}

	apr_uint32_t i = 0;
	apr_int32_t roll_point = rand() % gp->prob_sum;
	for (i = 0; i < gp->count; ++ i) {
		roll_point -= gp->prob_array[i];
		if (roll_point <= 0) {
			break;
		}
	}

	if (i < gp->count) {
		*ptt_id = gp->ptt_array[i];
		return 0;
	} else {
		*ptt_id = 0;
		return -1;
	}
}

// ∑˚ Ø≥ÈΩ±
static void stone_lottery_proc_ack(
    cache_session_cb_data * cbdata,
    void ** result_msg)
{
    void * ack_msg = NULL;
    msghdr * ack_hdr = NULL;
    actor * obj = NULL;
    int net_id = 0;

    net_id = *(int *)cbdata->input;
    obj = (actor *)cbdata->output;

    if (actor_cards_can_add(obj, 1)
        && actor_stone_can_lottery(obj, 1)) {
        card_id_t c_id = ids_alloc_card();
        card_ptt_id_t c_ptt_id = 0;
		if (lottery_stone_roll(1, &c_ptt_id) == APR_SUCCESS) {
			actor_cards_add(obj, c_id, c_ptt_id);
			actor_stone_inc(obj, -STONE_LOTTERY_COST);

			lottery_stone_ack * ack_body = NULL;
			MSG_INIT_TYPE(ack_msg,
				lottery_stone_ack,
				ack_hdr,
				ack_body,
				MSG_ID_LOTTERYSTONE_ACK,
				net_id);
			ack_body->new_card_id = c_id;
			ack_body->new_card_ptt_id = c_ptt_id;
		} else {
			default_err_ack * ack_body = NULL;
			MSG_INIT_TYPE(ack_msg,
				default_err_ack,
				ack_hdr,
				ack_body,
				MSG_ID_DEFAULTERROR_ACK,
				net_id);
			ack_body->reason = EC_LOTTERYGROUPNOTEXIST;
		}
    } else {
        default_err_ack * ack_body = NULL;
        MSG_INIT_TYPE(ack_msg,
            default_err_ack,
            ack_hdr,
            ack_body,
            MSG_ID_DEFAULTERROR_ACK,
            net_id);
        ack_body->reason = EC_STONENOTENOUGH;
    }

    *result_msg = ack_msg;
}

apr_status_t lottery_stone_proc(
    void * msg,
    void ** result_msg,
    apr_pool_t *)
{
    apr_status_t rv = 0;
    void * req_msg = msg;
    msghdr * req_hdr = NULL;
    lottery_stone_req * req_body = NULL;

    MSG_LOCATE2(req_msg, lottery_stone_req, req_hdr, req_body);
    fprintf(stdout, "[GMP] HDR net_id=%x, msg_id=%d, body_len=%d\n",
        MSG_GETNETID(req_msg),
        MSG_GETMSGID(req_msg),
        MSG_GETBODYLEN(req_msg));
    fprintf(stdout, "[GMP] BODY uin=%d\n", req_body->uin);

    int net_id = MSG_GETNETID(req_msg);
    rv = cache_mgr->exec_task(
        req_body->uin,
        ORM_MSG_LOAD_ACTOR,
        stone_lottery_proc_ack,
        default_error_handler,
        &net_id,
        sizeof(net_id),
        result_msg);

    return rv;
}

// ”—«È÷µ≥ÈΩ±
apr_status_t lottery_friend_proc(
    void * msg,
    void ** result_msg,
    apr_pool_t *)
{
    return 0;
}
