
#include <stdio.h>

#include "apr_general.h"
#include "apr_pools.h"
#include "apr_network_io.h"
#include "apr_errno.h"

#include "../msg_defined/msg_defined.h"

#define UIN     1

int client_send_and_recv(int, char **);

int actor_login_req_and_ack(apr_socket_t *, int, char **, apr_pool_t *);
int actor_new_req_and_ack(apr_socket_t *, int, char **, apr_pool_t *);
int stone_lottery_req_and_ack(apr_socket_t *, int, char **, apr_pool_t *);
int gm_command_req_and_ack(apr_socket_t *, int, char **, apr_pool_t *);
int card_sell_req_and_ack(apr_socket_t *, int, char **, apr_pool_t *);
int card_compose_req_and_ack(apr_socket_t *, int, char **, apr_pool_t *);
int card_evolution_req_and_ack(apr_socket_t *, int, char **, apr_pool_t *);


int main(int argc, char ** argv)
{
	return client_send_and_recv(argc, argv);
}

int client_send_and_recv(int argc, char ** argv)
{
    apr_status_t rv = 0;
    apr_socket_t * cd = NULL;
	apr_sockaddr_t * sa = NULL;
    apr_pool_t * subp = NULL;
	char * host = "127.0.0.1";
	char buf[120] = {0};
    int task = 0;

    if (argc < 2)
        return -1;

    task = atoi(argv[1]);

	apr_initialize();
	atexit(apr_terminate);

    apr_pool_create(&subp, NULL);

	rv = apr_sockaddr_info_get(&sa, host, APR_INET, 7000, 0, subp);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "apr_sockaddr_info_get()->%d/%s\n", 
			rv,
			apr_strerror(rv, buf, sizeof buf));
		return -1;
	}

    rv = apr_socket_create(&cd, sa->family, SOCK_STREAM,
                           APR_PROTO_TCP, subp);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "apr_socket_create()->%d/%s\n", 
			rv,
			apr_strerror(rv, buf, sizeof buf));
		return -1;
	}

    rv = apr_socket_connect(cd, sa);
    if (rv != APR_SUCCESS) {
        apr_socket_close(cd);
		fprintf(stderr, "apr_socket_connect()->%d/%s\n",
			rv,
			apr_strerror(rv, buf, sizeof buf));
		return -1;
    }

	fprintf(stdout, "connecting server successfully!\n");

    switch (task) {
    case 1:
        rv = actor_login_req_and_ack(cd, argc, argv, subp);
        break;
    case 2:
        rv = actor_new_req_and_ack(cd, argc, argv, subp);
        break;
    case 3:
        rv = stone_lottery_req_and_ack(cd, argc, argv, subp);
        break;
	case 4:
		rv = gm_command_req_and_ack(cd, argc, argv, subp);
		break;
	case 5:
		rv = card_sell_req_and_ack(cd, argc, argv, subp);
		break;
	case 6:
		rv = card_compose_req_and_ack(cd, argc, argv, subp);
		break;
	case 7:
		rv = card_evolution_req_and_ack(cd, argc, argv, subp);
		break;
    default:
        fprintf(stderr, "Unknown task=%d\n", task);
        break;
    }

	fprintf(stdout, "disconnect from server!\n");

    apr_socket_close(cd);

    apr_pool_destroy(subp);

	return rv;
}

int actor_login_req_and_ack(apr_socket_t * cd, int argc, char ** argv,
	apr_pool_t * pool)
{
	apr_status_t rv = 0;
	apr_interval_time_t tv = 2 * 1000 * 1000; // 超时2秒
	char msg[4 * 1024] = {0};
	char buf[120] = {0};
	apr_size_t len = 0;
	msghdr * h = NULL;
	default_err_ack * e = NULL;
	actor_login_req * r = NULL;
	actor_login_ack * a = NULL;
	int i = 0;
	char * ptr = NULL;
	card_t * c = NULL;
	
	// 设置socket行为超时
	apr_socket_timeout_set(cd, tv);

	// 发包
	MSG_LOCATE2(msg, actor_login_req, h, r);
	MSG_SETBODYLEN(msg, actor_login_req);
	MSG_SETNETID(msg, 0);
	MSG_SETMSGID(msg, MSG_ID_ACTORLOGIN_REQ);
	r->uin = UIN;

	len = MSG_GETTOTALLEN_PTR(msg);
	rv = apr_socket_send(cd, (const char *)h, &len);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "apr_socket_send()->%d/%s\n",
			rv,
			apr_strerror(rv, buf, sizeof buf));
		return -1;
	}

	// 收包
	msg[0] = 0;
	len = sizeof(msg);
	rv = apr_socket_recv(cd, msg, &len);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "apr_socket_recv()->%d/%s\n", 
			rv,
			apr_strerror(rv, buf, sizeof buf));
		return -1;
	}

	MSG_LOCATE1(msg, h);
	if (MSG_GETMSGID(h) == MSG_ID_DEFAULTERROR_ACK) {
		MSG_LOCATE2(msg, default_err_ack, h, e);
		fprintf(stderr, "error msg: reason=%d\n", e->reason);
		return 0;
	}

	if (len >= MSG_GETTOTALLEN_TYPE(actor_login_ack)) {
		MSG_LOCATE2(msg, actor_login_ack, h, a);
        fprintf(stdout, "\nactor:\n");
		fprintf(stdout, "\tname=%s\n", a->name);
		fprintf(stdout, "\tlevel=%d\n", a->level);
        fprintf(stdout, "\texp=%d\n", a->exp);
        fprintf(stdout, "\tstone=%d\n", a->stone);
        fprintf(stdout, "\tgold=%d\n", a->gold);
        fprintf(stdout, "\tstamina=%d\n", a->stamina);
        fprintf(stdout, "\tleadership=%d\n", a->leadership);
        fprintf(stdout, "\tcard_num=%d\n", a->card_num);
		ptr = (char *)(&a->card_num + 1);
		for (i = 0; i < a->card_num; ++ i) {
			c = &((card_t *)ptr)[i];
			fprintf(stdout, "\t\tcard_id=%d, ptt_id=%d\n", c->id, c->ptt_id);
			fprintf(stdout, "\t\tlevel=%d, exp=%d\n", c->level, c->exp);
		}
        fprintf(stdout, "\n");
	}

	return 0;
}

int actor_new_req_and_ack(
    apr_socket_t * cd,
    int nargc,
    char ** argv,
    apr_pool_t * pool)
{
    apr_status_t rv = 0;
    apr_interval_time_t tv = 6 * 1000 * 1000; // 超时6秒
    char msg[8 * 1024] = {0};
    char buf[120] = {0};
    apr_size_t len = 0;
    msghdr * h = NULL;
    default_err_ack * e = NULL;
    actor_new_req * r = NULL;
    actor_login_ack * a = NULL;
	int i = 0;
	char * ptr = NULL;
	card_t * c = NULL;

    // 设置socket行为超时
    apr_socket_timeout_set(cd, tv);

    // 发包
    MSG_LOCATE2(msg, actor_new_req, h, r);
    MSG_SETBODYLEN(msg, actor_new_req);
    MSG_SETNETID(msg, 0);
    MSG_SETMSGID(msg, MSG_ID_ACTORNEW_REQ);
    r->uin = UIN;
    r->hero = ACTOR_START_HERO_SM;
    if (nargc >= 3) {
        strcpy_s(r->name, sizeof(r->name), argv[2]);
    } else {
        strcpy_s(r->name, sizeof(r->name), "goodguy");
    }

    len = MSG_GETTOTALLEN_PTR(msg);
    rv = apr_socket_send(cd, (const char *)h, &len);
    if (rv != APR_SUCCESS) {
        fprintf(stderr, "apr_socket_send()->%d/%s\n",
            rv,
            apr_strerror(rv, buf, sizeof buf));
        return -1;
    }

    // 收包
    msg[0] = 0;
    len = sizeof(msg);
    rv = apr_socket_recv(cd, msg, &len);
    if (rv != APR_SUCCESS) {
        fprintf(stderr, "apr_socket_recv()->%d/%s\n", 
            rv,
            apr_strerror(rv, buf, sizeof buf));
        return -1;
    }

    MSG_LOCATE1(msg, h);
    if (MSG_GETMSGID(h) == MSG_ID_DEFAULTERROR_ACK) {
        MSG_LOCATE2(msg, default_err_ack, h, e);
        fprintf(stderr, "error msg: reason=%d\n", e->reason);
        return 0;
    }

    if (len >= MSG_GETTOTALLEN_TYPE(actor_login_ack)) {
        MSG_LOCATE2(msg, actor_login_ack, h, a);
        fprintf(stdout, "\nactor:\n");
        fprintf(stdout, "\tuin=%d\n", a->uin);
        fprintf(stdout, "\tname=%s\n", a->name);
        fprintf(stdout, "\tlevel=%d\n", a->level);
        fprintf(stdout, "\texp=%d\n", a->exp);
        fprintf(stdout, "\tstone=%d\n", a->stone);
        fprintf(stdout, "\tgold=%d\n", a->gold);
        fprintf(stdout, "\tstamina=%d\n", a->stamina);
        fprintf(stdout, "\tleadership=%d\n", a->leadership);
        fprintf(stdout, "\tcard_num=%d\n", a->card_num);
		ptr = (char *)(&a->card_num + 1);
		for (i = 0; i < a->card_num; ++ i) {
			c = &((card_t *)ptr)[i];
			fprintf(stdout, "\t\tcard_id=%d, ptt_id=%d\n", c->id, c->ptt_id);
			fprintf(stdout, "\t\tlevel=%d, exp=%d\n", c->level, c->exp);
		}
        fprintf(stdout, "\n");
    }

    return 0;
}

int stone_lottery_req_and_ack(apr_socket_t * cd,
    int argc, char ** argv, apr_pool_t * pool)
{
    apr_status_t rv = 0;
    apr_interval_time_t tv = 2 * 1000 * 1000; // 超时2秒
    char msg[4 * 1024] = {0};
    char buf[120] = {0};
    apr_size_t len = 0;
    msghdr * h = NULL;
    default_err_ack * e = NULL;
    lottery_stone_req * r = NULL;
    lottery_stone_ack * a = NULL;

    // 设置socket行为超时
    apr_socket_timeout_set(cd, tv);

    // 发包
    MSG_LOCATE2(msg, lottery_stone_req, h, r);
    MSG_SETBODYLEN(msg, lottery_stone_req);
    MSG_SETNETID(msg, 0);
    MSG_SETMSGID(msg, MSG_ID_LOTTERYSTONE_REQ);
    r->uin = UIN;

    len = MSG_GETTOTALLEN_PTR(msg);
    rv = apr_socket_send(cd, (const char *)h, &len);
    if (rv != APR_SUCCESS) {
        fprintf(stderr, "apr_socket_send()->%d/%s\n",
            rv,
            apr_strerror(rv, buf, sizeof buf));
        return -1;
    }

    // 收包
    msg[0] = 0;
    len = sizeof(msg);
    rv = apr_socket_recv(cd, msg, &len);
    if (rv != APR_SUCCESS) {
        fprintf(stderr, "apr_socket_recv()->%d/%s\n", 
            rv,
            apr_strerror(rv, buf, sizeof buf));
        return -1;
    }

    MSG_LOCATE1(msg, h);
    if (MSG_GETMSGID(h) == MSG_ID_DEFAULTERROR_ACK) {
        MSG_LOCATE2(msg, default_err_ack, h, e);
        fprintf(stderr, "error msg: reason=%d\n", e->reason);
        return 0;
    }

    if (len >= MSG_GETTOTALLEN_TYPE(lottery_stone_ack)) {
        MSG_LOCATE2(msg, lottery_stone_ack, h, a);
        fprintf(stdout, "\nactor:\n");
        fprintf(stdout, "\tnew_card_id=%d\n", a->new_card_id);
        fprintf(stdout, "\tnew_card_ptt_id=%d\n", a->new_card_ptt_id);
        fprintf(stdout, "\n");
    }

    return 0;
}

int gm_command_req_and_ack(apr_socket_t * cd,
	int argc, char ** argv, apr_pool_t * pool)
{
	apr_status_t rv = 0;
	apr_interval_time_t tv = 2 * 1000 * 1000; // 超时2秒
	char msg[4 * 1024] = {0};
	char buf[120] = {0};
	apr_size_t len = 0;
	msghdr * h = NULL;
	default_err_ack * e = NULL;
	gmcommand_req * r = NULL;
	gmcommand_ack * a = NULL;

	// 设置socket行为超时
	apr_socket_timeout_set(cd, tv);

	// 发包
	MSG_LOCATE2(msg, gmcommand_req, h, r);
	MSG_SETBODYLEN(msg, gmcommand_req);
	MSG_SETNETID(msg, 0);
	MSG_SETMSGID(msg, MSG_ID_GMCOMMAND_REQ);
	sprintf(r->text, "givecard %d 309", UIN); // 南瓜309 MT 0
    //sprintf(r->text, "givestone %d 500", UIN);

	len = MSG_GETTOTALLEN_PTR(msg);
	rv = apr_socket_send(cd, (const char *)h, &len);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "apr_socket_send()->%d/%s\n",
			rv,
			apr_strerror(rv, buf, sizeof buf));
		return -1;
	}

	// 收包
	msg[0] = 0;
	len = sizeof(msg);
	rv = apr_socket_recv(cd, msg, &len);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "apr_socket_recv()->%d/%s\n",
			rv,
			apr_strerror(rv, buf, sizeof buf));
		return -1;
	}

	MSG_LOCATE1(msg, h);
	if (MSG_GETMSGID(h) == MSG_ID_DEFAULTERROR_ACK) {
		MSG_LOCATE2(msg, default_err_ack, h, e);
		fprintf(stderr, "error msg: reason=%d\n", e->reason);
		return 0;
	}

	if (len >= MSG_GETTOTALLEN_TYPE(gmcommand_ack)) {
		MSG_LOCATE2(msg, gmcommand_ack, h, a);
		fprintf(stdout, "\nactor:\n");
		fprintf(stdout, "\tresult=%d\n", a->result);
		fprintf(stdout, "\n");
	}

	return 0;
}

int card_sell_req_and_ack(apr_socket_t * cd,
	int argc, char ** argv, apr_pool_t * pool)
{
	apr_status_t rv = 0;
	apr_interval_time_t tv = 2 * 1000 * 1000; // 超时2秒
	char msg[4 * 1024] = {0};
	char buf[120] = {0};
	apr_size_t len = 0;
	msghdr * h = NULL;
	default_err_ack * e = NULL;
	card_sell_req * r = NULL;
	card_sell_ack * a = NULL;

	// 设置socket行为超时
	apr_socket_timeout_set(cd, tv);

	// 发包
	MSG_LOCATE2(msg, card_sell_req, h, r);
	MSG_SETBODYLEN(msg, card_sell_req);
	MSG_SETNETID(msg, 0);
	MSG_SETMSGID(msg, MSG_ID_CARDSELL_REQ);
	r->uin = UIN;
	r->count = 1;
	r->cards[0] = 1402;

	len = MSG_GETTOTALLEN_PTR(msg);
	rv = apr_socket_send(cd, (const char *)h, &len);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "apr_socket_send()->%d/%s\n",
			rv,
			apr_strerror(rv, buf, sizeof buf));
		return -1;
	}

	// 收包
	msg[0] = 0;
	len = sizeof(msg);
	rv = apr_socket_recv(cd, msg, &len);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "apr_socket_recv()->%d/%s\n",
			rv,
			apr_strerror(rv, buf, sizeof buf));
		return -1;
	}

	MSG_LOCATE1(msg, h);
	if (MSG_GETMSGID(h) == MSG_ID_DEFAULTERROR_ACK) {
		MSG_LOCATE2(msg, default_err_ack, h, e);
		fprintf(stderr, "error msg: reason=%d\n", e->reason);
		return 0;
	}

	if (len >= MSG_GETTOTALLEN_TYPE(card_sell_ack)) {
		MSG_LOCATE2(msg, card_sell_ack, h, a);
		fprintf(stdout, "\nsell card:\n");
		fprintf(stdout, "\tcount=%d\n", a->sell_count);
		fprintf(stdout, "\tgold=%d\n", a->gold);
		fprintf(stdout, "\n");
	}

	return 0;
}

int card_compose_req_and_ack(apr_socket_t * cd,
	int argc, char ** argv, apr_pool_t * pool)
{
	apr_status_t rv = 0;
	apr_interval_time_t tv = 2 * 1000 * 1000; // 超时2秒
	char msg[4 * 1024] = {0};
	char buf[120] = {0};
	apr_size_t len = 0;
	msghdr * h = NULL;
	default_err_ack * e = NULL;
	card_compose_req * r = NULL;
	card_compose_ack * a = NULL;
	card_t * c = NULL;

	// 设置socket行为超时
	apr_socket_timeout_set(cd, tv);

	// 发包
	MSG_LOCATE2(msg, card_compose_req, h, r);
	MSG_SETBODYLEN(msg, card_compose_req);
	MSG_SETNETID(msg, 0);
	MSG_SETMSGID(msg, MSG_ID_CARDCOMPOSE_REQ);
	r->uin = UIN;
	r->main_card = 818;
	r->material_count = 2;
	r->material_card[0] = 920;
	r->material_card[1] = 921;

	len = MSG_GETTOTALLEN_PTR(msg);
	rv = apr_socket_send(cd, (const char *)h, &len);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "apr_socket_send()->%d/%s\n",
			rv,
			apr_strerror(rv, buf, sizeof buf));
		return -1;
	}

	// 收包
	msg[0] = 0;
	len = sizeof(msg);
	rv = apr_socket_recv(cd, msg, &len);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "apr_socket_recv()->%d/%s\n",
			rv,
			apr_strerror(rv, buf, sizeof buf));
		return -1;
	}

	MSG_LOCATE1(msg, h);
	if (MSG_GETMSGID(h) == MSG_ID_DEFAULTERROR_ACK) {
		MSG_LOCATE2(msg, default_err_ack, h, e);
		fprintf(stderr, "error msg: reason=%d\n", e->reason);
		return 0;
	}

	if (len >= MSG_GETTOTALLEN_TYPE(card_compose_ack)) {
		MSG_LOCATE2(msg, card_compose_ack, h, a);
		c = &a->main_card;
		fprintf(stdout, "\nnew card:\n");
		fprintf(stdout, "\tcard_id=%d\n", c->id);
		fprintf(stdout, "\tptt_id=%d\n", c->ptt_id);
		fprintf(stdout, "\tlevel=%d\n", c->level);
		fprintf(stdout, "\texp=%d\n", c->exp);
		fprintf(stdout, "\n");
	}

	return 0;
}

int card_evolution_req_and_ack(apr_socket_t * cd,
	int argc, char ** argv, apr_pool_t * pool)
{
	apr_status_t rv = 0;
	apr_interval_time_t tv = 2 * 1000 * 1000; // 超时2秒
	char msg[4 * 1024] = {0};
	char buf[120] = {0};
	apr_size_t len = 0;
	msghdr * h = NULL;
	default_err_ack * e = NULL;
	card_evolution_req * r = NULL;
	card_evolution_ack * a = NULL;
	card_t * c = NULL;

	// 设置socket行为超时
	apr_socket_timeout_set(cd, tv);

	// 发包
	MSG_LOCATE2(msg, card_evolution_req, h, r);
	MSG_SETBODYLEN(msg, card_evolution_req);
	MSG_SETNETID(msg, 0);
	MSG_SETMSGID(msg, MSG_ID_CARDEVOLUTION_REQ);
	r->uin = UIN;
	r->main_card = 405;
	r->material_count = 0;

	len = MSG_GETTOTALLEN_PTR(msg);
	rv = apr_socket_send(cd, (const char *)h, &len);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "apr_socket_send()->%d/%s\n",
			rv,
			apr_strerror(rv, buf, sizeof buf));
		return -1;
	}

	// 收包
	msg[0] = 0;
	len = sizeof(msg);
	rv = apr_socket_recv(cd, msg, &len);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "apr_socket_recv()->%d/%s\n",
			rv,
			apr_strerror(rv, buf, sizeof buf));
		return -1;
	}

	MSG_LOCATE1(msg, h);
	if (MSG_GETMSGID(h) == MSG_ID_DEFAULTERROR_ACK) {
		MSG_LOCATE2(msg, default_err_ack, h, e);
		fprintf(stderr, "error msg: reason=%d\n", e->reason);
		return 0;
	}

	if (len >= MSG_GETTOTALLEN_TYPE(card_evolution_ack)) {
		MSG_LOCATE2(msg, card_evolution_ack, h, a);
		c = &a->main_card;
		fprintf(stdout, "\nnew card:\n");
		fprintf(stdout, "\tcard_id=%d\n", c->id);
		fprintf(stdout, "\tptt_id=%d\n", c->ptt_id);
		fprintf(stdout, "\tlevel=%d\n", c->level);
		fprintf(stdout, "\texp=%d\n", c->exp);
		fprintf(stdout, "\n");
	}

	return 0;
}
