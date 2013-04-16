
#include "actor.h"
#include "safe_math_op.h"

static bool actor_cards_find(actor * obj, card_id_t c_id, size_t & pos)
{
    card_blob_t & c_blob = obj->cards;
    size_t count = c_blob.card_count;
    for (size_t i = 0; i < count; ++ i) {
        card_t & card = c_blob.array_[i];
        if (card.id == c_id) {
            pos = i;
            return true;
        }
    }
    pos = 0;
    return false;
}

static bool actor_cards_del(actor * obj, size_t pos)
{
    card_blob_t & c_blob = obj->cards;
    size_t & count = c_blob.card_count;
    if (pos >= count) {
        return false;
    } else if (pos == (count - 1)) {
        -- count;
    } else {
        card_t & del_card = c_blob.array_[pos];
        card_t & swp_card = c_blob.array_[count - 1];
        memcpy(&del_card, &swp_card, sizeof(card_t));
        -- count;
    }
    return true;
}

bool actor_cards_is_full(actor * obj)
{
    return !actor_cards_can_add(obj, 0);
}

bool actor_cards_can_add(actor * obj, size_t count)
{
    card_blob_t & c_blob = obj->cards;
    size_t new_count = c_blob.card_count + count;
    return (new_count <= ACTOR_CARDS_MAXCOUNT) ? true : false;
}

bool actor_cards_add(actor * obj, card_id_t c_id, card_ptt_id_t c_ptt_id)
{
    if (actor_cards_can_add(obj, 1)) {
        card_blob_t & c_blob = obj->cards;
        size_t & card_count = c_blob.card_count;
        card_t & card = c_blob.array_[card_count ++];

        memset(&card, 0, sizeof(card));
        card.id = c_id;
        card.ptt_id = c_ptt_id;
		card.level = 1;
        card.exp = 0;
        card.sk_lvl = 1;
        card.cap_sk = 0;
        return true;
    } else {
        return false;
    }
}

bool actor_cards_del(actor * obj, card_id_t c_id)
{
    size_t pos = 0;
    bool is_found = actor_cards_find(obj, c_id, pos);
    if (is_found) {
        return actor_cards_del(obj, pos);
    } else {
        return false;
    }
}

size_t actor_cards_get_count(actor * obj)
{
	return obj->cards.card_count;
}

card_t * actor_cards_get_card_by_pos(actor * obj, size_t pos)
{
	if (pos >= obj->cards.card_count) {
		return NULL;
	} else {
		return & obj->cards.array_[pos];
	}
}

card_t * actor_cards_get_card_by_id(actor * obj, card_id_t c_id)
{
	size_t pos = 0;
	if (actor_cards_find(obj, c_id, pos)) {
		return &obj->cards.array_[pos];
	} else {
		return NULL;
	}
}

bool actor_stone_can_lottery(actor * obj, size_t count)
{
    int lottery_cost = count * STONE_LOTTERY_COST;    
    return (obj->stone >= lottery_cost) ? true : false;
}

bool actor_stone_inc(actor * obj, int stone)
{
	int sum = 0;
    if (try_sum<int>(obj->stone, stone, sum)) {
        obj->stone += stone;
        return true;
    } else {
        return false;
    }
}

bool actor_gold_inc(actor * obj, int gold)
{
	int sum = 0;
    if (try_sum<int>(obj->gold, gold, sum)) {
        obj->gold += gold;
        return true;
    } else {
        return false;
    }
}
