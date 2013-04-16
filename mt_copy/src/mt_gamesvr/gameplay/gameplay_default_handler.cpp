
#include "../data_represent/msg_selector.h"
#include "gameplay.h"

// È±Ê¡´íÎó´¦Àí
void default_error_handler(
	void * data,
	int reason,
	void ** result_msg)
{
	void * ack_msg = NULL;
	msghdr * ack_hdr = NULL;
	default_err_ack * ack_body = NULL;
	cache_session_cb_data * cbdata = (cache_session_cb_data *)data;
	int net_id = *(int *)cbdata->input;

	MSG_ALLOCTYPE(ack_msg, default_err_ack);
	MSG_LOCATE2(ack_msg, default_err_ack, ack_hdr, ack_body);
	MSG_SETBODYLEN(ack_msg, default_err_ack);
	MSG_SETMSGID(ack_msg, MSG_ID_DEFAULTERROR_ACK);
	MSG_SETNETID(ack_msg, net_id);

	ack_body->reason = reason;

	*result_msg = ack_msg;
}
