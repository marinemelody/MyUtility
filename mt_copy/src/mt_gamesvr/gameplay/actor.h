
#ifndef ACTOR_H_
#define ACTOR_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "../apr_inc.h"

#define ACTOR_CARDS_MAXCOUNT		(200)

// 卡牌属性增加请依次在尾部添加，好做db兼容
typedef struct card_blob_t {
    size_t blob_size;
    size_t card_size;
	size_t card_count;
	card_t array_[ACTOR_CARDS_MAXCOUNT];
} card_blob_t;

typedef struct actor {
    uin_t uin;
	char name[ACTOR_NAME_MAXSIZE];
    int exp;
    int level;
    int stamina;
    int stone;
    int gold;
    int leadership;
    int gearscore;

	card_blob_t cards;
} actor;

bool actor_cards_is_full(actor *);
bool actor_cards_can_add(actor *, size_t);
bool actor_cards_add(actor *, card_id_t, card_ptt_id_t);
bool actor_cards_del(actor *, card_id_t);
size_t actor_cards_get_count(actor *);
card_t * actor_cards_get_card_by_pos(actor *, size_t);
card_t * actor_cards_get_card_by_id(actor *, card_id_t);

bool actor_stone_can_lottery(actor *, size_t);
bool actor_stone_inc(actor *, int);

int actor_gold_get(actor *);
bool actor_gold_inc(actor *, int);

#ifdef __cplusplus
};
#endif

#endif // ACTOR_H_
