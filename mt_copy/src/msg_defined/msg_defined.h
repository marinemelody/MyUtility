
#ifndef MSG_DEFINED_H_
#define MSG_DEFINED_H_

typedef unsigned int sid_t;
typedef unsigned int uin_t;
typedef int card_id_t;
typedef short card_ptt_id_t;
typedef short quest_ptt_id_t;
typedef short quest_id_t;
typedef short level_t;
typedef short initskill_id_t;
typedef unsigned int exp_value_t;
typedef short captskill_id_t;
typedef unsigned char initskill_level_t;

#define MSG_REQ_BODY_MAX_SIZE		(512)
#define MSG_ACK_BODY_MAX_SIZE		(1 * 1024)

enum MSG_ID {
	MSG_ID_REQ_MIN = 0,
	MSG_ID_ACTORLOGIN_REQ = 1,
	MSG_ID_ACTORNEW_REQ = 2,
    MSG_ID_LOTTERYSTONE_REQ = 3,
    MSG_ID_GMCOMMAND_REQ = 4,
	MSG_ID_CARDSELL_REQ = 5,
	MSG_ID_CARDCOMPOSE_REQ = 6,
	MSG_ID_CARDEVOLUTION_REQ = 7,

	MSG_ID_REQ_MAX = 200,
	MSG_ID_DEFAULTERROR_ACK,
	MSG_ID_ACTORLOGIN_ACK,
	MSG_ID_LOTTERYSTONE_ACK,
    MSG_ID_GMCOMMAND_ACK,
	MSG_ID_CARDSELL_ACK,
	MSG_ID_CARDCOMPOSE_ACK,
	MSG_ID_CARDEVOLUTION_ACK,
};

enum ERROR_CODE {
	EC_SUCCESS = 0,
	EC_SERVERBUSY = 1,
	EC_ACTORNOTFOUND = 2,
    EC_STONENOTENOUGH = 3,
	EC_ACTORCARDBAGFULL = 4,
    EC_MATHOPOVERFLOW = 5,
	EC_LOTTERYGROUPNOTEXIST = 6,
	EC_CARDNOTFOUND = 7,
	EC_CARDPTTNOTFOUND = 8,
	EC_CARDEVONOTFOUND = 9,
	EC_GOLDNOTENOUGH = 10,
	EC_CARDLEVELNOTENOUGH = 11,
};

#define ACTOR_NAME_MAXSIZE		(32)
#define GMCOMMAND_MAXSIZE       (260)
#define SELLCARD_MAXSIZE        (50)

#pragma pack(push)
#pragma pack(1)

#define CARD_INVALID_ID			(int(-1))

typedef struct card_t {
	card_id_t id;
	card_ptt_id_t ptt_id;
	level_t level;
	exp_value_t exp;
	captskill_id_t cap_sk;
	initskill_level_t sk_lvl;
} card_t;

typedef struct msghdr {
	unsigned short body_len;
	unsigned short msg_id;
	int net_id;
} msghdr;

typedef struct default_err_ack {
	int reason;
} default_err_ack;

typedef struct actor_login_req {
	uin_t uin;
} actor_login_req;

typedef struct actor_login_ack {
    uin_t uin;
	int level;
    int exp;
    int stamina;
    int leadership;
    int gold;
    int stone;
	char name[ACTOR_NAME_MAXSIZE];
	int card_num;
} actor_login_ack;

enum {
    ACTOR_START_HERO_MT = 0,
    ACTOR_START_HERO_SM = 1,
    ACTOR_START_HERO_XD = 2,
    ACTOR_START_HERO_MAX = 3,
};

typedef struct actor_new_req {
	uin_t uin;
    unsigned int hero;
	char name[ACTOR_NAME_MAXSIZE];
} actor_new_req;

typedef struct lottery_stone_req {
    uin_t uin;
} lottery_stone_req;

typedef struct lottery_stone_ack {
    card_id_t new_card_id;
    card_ptt_id_t new_card_ptt_id;
} lottery_stone_ack;

typedef struct gmcommand_req {
    char text[GMCOMMAND_MAXSIZE];
} gmcommand_req;

typedef struct gmcommand_ack {
	int result;
} gmcommand_ack;

typedef struct card_sell_req {
	uin_t uin;
    size_t count;
    card_id_t cards[SELLCARD_MAXSIZE];
} card_sell_req;

typedef struct card_sell_ack {
	int sell_count;
    int gold;
} card_sell_ack;

typedef struct card_compose_req {
	uin_t uin;
	card_id_t main_card;
	int material_count;
	card_id_t material_card[6];
} card_compose_req;

typedef struct card_compose_ack {
	card_t main_card;
} card_compose_ack;

typedef struct card_evolution_req {
	uin_t uin;
	card_id_t main_card;
	int material_count;
	card_id_t material_card[5];
} card_evolution_req;

typedef struct card_evolution_ack {
	card_t main_card;
} card_evolution_ack;

#pragma pack(pop)

#define MSG_GETHDRLEN()			(sizeof(msghdr))

#define MSG_SETBODYLEN(p, t)	(((msghdr *)p)->body_len = htons(sizeof(t)))
#define MSG_SETBODYLEN2(p,t,s)	(((msghdr *)p)->body_len = htons(s))
#define MSG_GETBODYLEN(p)		(ntohs(((msghdr *)p)->body_len))

#define MSG_GETTOTALLEN_PTR(p)	(MSG_GETHDRLEN() + MSG_GETBODYLEN(p))
#define MSG_GETTOTALLEN_TYPE(t)	(MSG_GETHDRLEN() + sizeof(t))

#define MSG_SETMSGID(p, i)		(((msghdr *)p)->msg_id = htons(i))
#define MSG_GETMSGID(p)			(ntohs(((msghdr *)p)->msg_id))

#define MSG_SETNETID(p, i)		(((msghdr *)p)->net_id = i)
#define MSG_GETNETID(p)			(((msghdr *)p)->net_id)

#define MSG_LOCATE1(p, h)		{h = (msghdr *)p;}
#define MSG_LOCATE2(p, t, h, b)	{MSG_LOCATE1(p, h); b = (t *)((char *)p + MSG_GETHDRLEN());}

#define MSG_ALLOCTYPE(p, t)		(p = malloc(MSG_GETHDRLEN() + sizeof(t)))
#define MSG_ALLOCSIZE(p, s)		(p = malloc(s))
#define MSG_FREE(p)				(free(p))

#define MSG_INIT_TYPE(msg, type, hdr, body, msg_id, net_id) \
{\
    MSG_ALLOCTYPE(msg, type);\
    MSG_LOCATE2(msg, type, hdr, body);\
    MSG_SETBODYLEN(msg, type);\
    MSG_SETMSGID(msg, msg_id);\
    MSG_SETNETID(msg, net_id);\
}

#define MSG_INIT_SIZE(msg, type, size, hdr, body, msg_id, net_id) \
{\
	MSG_ALLOCSIZE(msg, size + MSG_GETHDRLEN());\
	MSG_LOCATE2(msg, type, hdr, body);\
	MSG_SETBODYLEN2(msg, type, size);\
	MSG_SETMSGID(msg, msg_id);\
	MSG_SETNETID(msg, net_id);\
}

#endif // MSG_DEFINED_H_
