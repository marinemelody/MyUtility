
#include "res_parser.h"
#include "../gameplay/gameplay_lottery.h"

// 队长技能
apr_status_t captskill_parser(
	apr_size_t nargs,
	char ** argv,
	apr_hash_t * res_subhash,
	apr_pool_t * res_pool)
{
	captskill_t * s =
		(captskill_t *)apr_palloc(res_pool, sizeof(captskill_t));
	s->id = (captskill_id_t)apr_atoi64(argv[0]);
	s->plus0 = (apr_int32_t)apr_atoi64(argv[5]);
	s->plus1 = (apr_int32_t)apr_atoi64(argv[6]);
	s->plus2 = (apr_int32_t)apr_atoi64(argv[7]);
	s->plus3 = (apr_int32_t)apr_atoi64(argv[8]);
	s->plus4 = (apr_int32_t)apr_atoi64(argv[9]);

	captskill_id_t key = s->id;
	if (apr_hash_get(res_subhash, &key, sizeof(key)) == NULL) {
		apr_hash_set(res_subhash, &key, sizeof(key), s);
	} else {
		fprintf(stderr,
			"[RES] FAULT: duplicate key = %d\n",
			key);
	}
	return APR_SUCCESS;
}

apr_status_t captskill_checker(void *, apr_size_t)
{
	return APR_SUCCESS;
}

// 卡牌进化
apr_status_t card_evolution_parser(
	apr_size_t nargs,
	char ** argv,
	apr_hash_t * res_subhash,
	apr_pool_t * res_pool)
{
	card_evolution_t * ce = (card_evolution_t *)
		apr_palloc(res_pool, sizeof(card_evolution_t));
	ce->id = (card_id_t)apr_atoi64(argv[0]);
	ce->equip_set_required = (int)apr_atoi64(argv[1]);
	ce->id_evo = (card_id_t)apr_atoi64(argv[2]);
	ce->level_required = (level_t)apr_atoi64(argv[3]);
	ce->type_required = (int)apr_atoi64(argv[4]);
	ce->card1_required[0] = CARD_INVALID_ID;
	ce->card1_required[1] = CARD_INVALID_ID;
	ce->card2_required[0] = CARD_INVALID_ID;
	ce->card2_required[1] = CARD_INVALID_ID;
	ce->card3_required[0] = CARD_INVALID_ID;
	ce->card3_required[1] = CARD_INVALID_ID;
	ce->card4_required[0] = CARD_INVALID_ID;
	ce->card4_required[1] = CARD_INVALID_ID;
	ce->card5_required[0] = CARD_INVALID_ID;
	ce->card5_required[1] = CARD_INVALID_ID;
	ce->level_evo = (level_t)apr_atoi64(argv[10]);
	ce->initsk_level_evo = (initskill_level_t)apr_atoi64(argv[11]);
	ce->gold_required = (int)apr_atoi64(argv[13]);
	
	card_id_t key = ce->id;
	if (apr_hash_get(res_subhash, &key, sizeof(key)) == NULL) {
		apr_hash_set(res_subhash, &key, sizeof(key), ce);
	} else {
		fprintf(stderr,
			"[RES] FAULT: duplicate key = %d\n",
			key);
	}

	return APR_SUCCESS;
}

apr_status_t card_evolution_checker(
	void *,
	apr_size_t)
{

	return APR_SUCCESS;
}

// 卡牌合成
apr_status_t card_compose_parser(
	apr_size_t nargs,
	char ** argv,
	apr_hash_t * res_subhash,
	apr_pool_t * res_pool)
{
	card_compose_t * clu = (card_compose_t *)
		apr_palloc(res_pool, sizeof(card_compose_t));
	clu->level = (level_t)apr_atoi64(argv[0]);
	clu->compose_exp[0] = (apr_int32_t)apr_atoi64(argv[1]);
	clu->compose_exp[1] = (apr_int32_t)apr_atoi64(argv[2]);
	clu->compose_exp[2] = (apr_int32_t)apr_atoi64(argv[3]);
	clu->compose_exp[3] = (apr_int32_t)apr_atoi64(argv[4]);

	level_t key = clu->level;
	if (apr_hash_get(res_subhash, &key, sizeof(key)) == NULL) {
		apr_hash_set(res_subhash, &key, sizeof(key), clu);
	} else {
		fprintf(stderr,
			"[RES] FAULT: duplicate key = %d\n",
			key);
	}
	return APR_SUCCESS;
}

apr_status_t card_compose_checker(
	void *,
	apr_size_t)
{
	return 0;
}

// 卡牌
apr_status_t card_ptt_parser(
	apr_size_t nargs,
	char ** argv,
	apr_hash_t * res_subhash,
	apr_pool_t * res_pool)
{
	card_ptt_t * ptt = (card_ptt_t *)
		apr_palloc(res_pool, sizeof(card_ptt_t));
	ptt->id = (card_ptt_id_t)apr_atoi64(argv[0]);
	ptt->class_info = (apr_int32_t)apr_atoi64(argv[7]);
	ptt->leadership_cost = (apr_int32_t)apr_atoi64(argv[12]);
	ptt->levelup_exp_type = (apr_int32_t)apr_atoi64(argv[13]);
	ptt->level_max = (apr_int32_t)apr_atoi64(argv[14]);
	ptt->hp_base = (apr_int32_t)apr_atoi64(argv[15]);
	ptt->att_base = (apr_int32_t)apr_atoi64(argv[18]);
	ptt->compose_exp_base = (apr_int32_t)apr_atoi64(argv[24]);
	ptt->sell_gold_base = (apr_int16_t)apr_atoi64(argv[25]);

	card_ptt_id_t key = ptt->id;
	if (apr_hash_get(res_subhash, &key, sizeof(key)) == NULL) {
		apr_hash_set(res_subhash, &key, sizeof(key), ptt);
	} else {
		fprintf(stderr,
			"[RES] FAULT: duplicate key = %d\n",
			key);
	}
	return APR_SUCCESS;
}

apr_status_t card_ptt_checker(
	void *,
	apr_size_t)
{
	return APR_SUCCESS;
}

// 任务
apr_status_t quest_ptt_parser(
	apr_size_t nargs,
	char ** argv,
	apr_hash_t * res_subhash,
	apr_pool_t * res_pool)
{
	quest_ptt_t * ptt = (quest_ptt_t *)
		apr_palloc(res_pool, sizeof(quest_ptt_t));
	ptt->id = (quest_ptt_id_t)apr_atoi64(argv[0]);
	ptt->pre_quest_id = (apr_int32_t)apr_atoi64(argv[5]);
	ptt->reward_type = (apr_int32_t)apr_atoi64(argv[6]);
	ptt->reward_param = (apr_int32_t)apr_atoi64(argv[7]);
	ptt->cond1_type = (apr_int32_t)apr_atoi64(argv[8]);
	ptt->cond1_param = (apr_int32_t)apr_atoi64(argv[9]);

	quest_ptt_id_t key = ptt->id;
	if (apr_hash_get(res_subhash, &key, sizeof(key)) == NULL) {
		apr_hash_set(res_subhash, &key, sizeof(key), ptt);
	} else {
		fprintf(stderr,
			"[RES] FAULT: duplicate key = %d\n",
			key);
	}
	return APR_SUCCESS;
}

apr_status_t quest_ptt_checker(
	void *,
	apr_size_t)
{
	return APR_SUCCESS;
}

// 玩家升级
apr_status_t actor_levelup_parser(
	apr_size_t nargs,
	char ** argv,
	apr_hash_t * res_subhash,
	apr_pool_t * res_pool)
{
	actor_levelup_t * lu = (actor_levelup_t *)
		apr_palloc(res_pool, sizeof(actor_levelup_t));
	lu->level = (level_t)apr_atoi64(argv[0]);
	lu->to_next_level = (apr_int32_t)apr_atoi64(argv[1]);
	lu->stamina_max = (apr_int32_t)apr_atoi64(argv[2]);
	lu->cards_max = (apr_int32_t)apr_atoi64(argv[3]);
	lu->leadership_max = (apr_int32_t)apr_atoi64(argv[4]);
	lu->friends_max = (apr_int32_t)apr_atoi64(argv[5]);
	lu->stamina_reward = (apr_int32_t)apr_atoi64(argv[6]);

	level_t key = lu->level;
	if (apr_hash_get(res_subhash, &key, sizeof(key)) == NULL) {
		apr_hash_set(res_subhash, &key, sizeof(key), lu);
	} else {
		fprintf(stderr,
			"[RES] FAULT: duplicate key = %d\n",
			key);
	}
	return APR_SUCCESS;
}

apr_status_t actor_levelup_checker(
	void *,
	apr_size_t)
{
	return APR_SUCCESS;
}

// 主动技能
apr_status_t initskill_parser(
	apr_size_t nargs,
	char ** argv,
	apr_hash_t * res_subhash,
	apr_pool_t * res_pool)
{
	initskill_ptt_t * ptt = (initskill_ptt_t *)
		apr_palloc(res_pool, sizeof(initskill_ptt_t));
	ptt->id = (initskill_id_t)apr_atoi64(argv[0]);
	ptt->type = (apr_int32_t)apr_atoi64(argv[1]);
	ptt->level_max = (apr_int32_t)apr_atoi64(argv[5]);
	ptt->cast_cycle = (apr_int32_t)apr_atoi64(argv[6]);
	ptt->cast_round = (apr_int32_t)apr_atoi64(argv[7]);
	ptt->cast_target = (apr_int32_t)apr_atoi64(argv[8]);
	ptt->target_scope = (apr_int32_t)apr_atoi64(argv[9]);
	ptt->att_type = (apr_int32_t)apr_atoi64(argv[10]);
	ptt->base_fix_base = (apr_int32_t)apr_atoi64(argv[11]);
	ptt->levelup_fix_base = (apr_int32_t)apr_atoi64(argv[12]);
	ptt->levelup_prob = (apr_int32_t)apr_atoi64(argv[13]);
	ptt->effect_type = (apr_int32_t)apr_atoi64(argv[14]);
	ptt->effect_param = (apr_int32_t)apr_atoi64(argv[15]);

	initskill_id_t key = ptt->id;
	if (apr_hash_get(res_subhash, &key, sizeof(key)) == NULL) {
		apr_hash_set(res_subhash, &key, sizeof(key), ptt);
	} else {
		fprintf(stderr,
			"[RES] FAULT: duplicate key = %d\n",
			key);
	}
	return APR_SUCCESS;
}

apr_status_t initskill_checker(
	void *,
	apr_size_t)
{
	return APR_SUCCESS;
}

// 活动
apr_status_t event_duplicate_parser(
	apr_size_t nargs,
	char ** argv,
	apr_hash_t * res_subhash,
	apr_pool_t * res_pool)
{
	event_duplicate_t * ed = (event_duplicate_t *)
		apr_palloc(res_pool, sizeof(event_duplicate_t));
	ed->id = (apr_int32_t)apr_atoi64(argv[0]);
	ed->cycle_mode = (apr_int32_t)apr_atoi64(argv[2]);
	ed->begin_time = 0;
	ed->duration = (apr_int32_t)apr_atoi64(argv[4]);
	ed->battle_node[0] = 0;
	ed->battle_node[1] = 0;
	ed->battle_node[2] = 0;

	apr_int32_t key = ed->id;
	if (apr_hash_get(res_subhash, &key, sizeof(key)) == NULL) {
		apr_hash_set(res_subhash, &key, sizeof(key), ed);
	} else {
		fprintf(stderr,
			"[RES] FAULT: duplicate key = %d\n",
			key);
	}
	return APR_SUCCESS;
}

apr_status_t event_duplicate_checker(
	void *,
	apr_size_t)
{
	return APR_SUCCESS;
}

// 符石抽奖
apr_status_t lottery_stone_parser(
    apr_size_t nargs,
    char ** argv,
    apr_hash_t * res_subhash,
    apr_pool_t * res_pool)
{
    lottery_stone_t * ls = (lottery_stone_t *)
        apr_palloc(res_pool, sizeof(lottery_stone_t));
    ls->group_id = (apr_int32_t)apr_atoi64(argv[0]);
    ls->ptt_id = (card_ptt_id_t)apr_atoi64(argv[1]);
    ls->ptt_prob = (apr_int32_t)apr_atoi64(argv[2]);

    apr_int32_t key = ls->group_id;
    apr_hash_t * group_hash = (apr_hash_t *)
        apr_hash_get(res_subhash, &key, sizeof(key));
    if (group_hash == NULL) {
        group_hash = apr_hash_make(res_pool);
        apr_hash_set(res_subhash,
            &key,
            sizeof(key),
            group_hash);
    }
    apr_hash_set(group_hash,
        &ls->ptt_id,
        sizeof(ls->ptt_id),
        ls);

    return APR_SUCCESS;
}

static apr_status_t lottery_stone_group_assembler(
    apr_int32_t group_id,
    apr_hash_t * group_hash,
    apr_hash_t * prob_hash,
    apr_pool_t * res_pool)
{
    unsigned int count = apr_hash_count(group_hash);
    if (count == 0) {
        return -1;
    }

    // 圆桌理论，数据构建
    lottery_group_prob * gp = (lottery_group_prob *)
        apr_palloc(res_pool, sizeof(lottery_group_prob));

    gp->count = count;
    gp->ptt_array = (card_ptt_id_t *)
        apr_palloc(res_pool, count * sizeof(card_ptt_id_t));
    gp->prob_array = (apr_uint32_t *)
        apr_palloc(res_pool, count * sizeof(apr_uint32_t));
    gp->prob_sum = 0;
    
    int i = 0;
    lottery_stone_t * ls = NULL;
    apr_hash_index_t * hi = NULL;
    for (hi = apr_hash_first(NULL, group_hash);
        hi != NULL;
        hi = apr_hash_next(hi)) {
        apr_hash_this(hi, NULL, NULL, (void **)&ls);
        gp->ptt_array[i] = ls->ptt_id;
        gp->prob_array[i] = ls->ptt_prob;
        gp->prob_sum += ls->ptt_prob;
        ++ i;
    }

    apr_hash_set(prob_hash, &group_id, sizeof(group_id), gp);
    
    return APR_SUCCESS;
}

apr_status_t lottery_stone_assembler(
    apr_hash_t * res_subhash,
    apr_pool_t * res_pool)
{
    apr_status_t rv = 0;
    apr_hash_index_t * hi = NULL;
    apr_hash_t * group_hash = NULL;
    apr_int32_t * group_id = NULL;
    apr_ssize_t group_id_len = 0;

    lottery_stone_prob_hash = apr_hash_make(res_pool);

    // 遍历整个哈希表，为每个抽奖组建立快速ROLL值表
    for (hi = apr_hash_first(NULL, res_subhash);
        hi != NULL;
        hi = apr_hash_next(hi)) {
        group_hash = NULL;
        apr_hash_this(hi, 
            (const void **)&group_id,
            &group_id_len,
            (void **)&group_hash);
        if (group_hash != NULL) {
            lottery_stone_group_assembler(
                *group_id,
                group_hash,
                lottery_stone_prob_hash,
                res_pool);
        }
    }

    return APR_SUCCESS;
}

apr_status_t lottery_stone_checker(
    void *,
    apr_size_t)
{
    return APR_SUCCESS;
}
