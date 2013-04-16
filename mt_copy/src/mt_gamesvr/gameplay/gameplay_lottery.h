
#ifndef GAMEPLAY_LOTTERY_H_
#define GAMEPLAY_LOTTERY_H_

#include "gameplay.h"

typedef struct lottery_group_prob {
    apr_uint32_t count;
    card_ptt_id_t * ptt_array;
    apr_uint32_t * prob_array;
    apr_uint32_t prob_sum;
} lottery_group_prob;

extern apr_hash_t * lottery_stone_prob_hash;

apr_status_t lottery_stone_roll(
	apr_int32_t,
	card_ptt_id_t *);

#endif // GAMEPLAY_LOTTERY_H_
