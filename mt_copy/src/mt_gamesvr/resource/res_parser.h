
#ifndef RES_PARSER_H_
#define RES_PARSER_H_

#include "../apr_inc.h"

typedef apr_status_t (*res_parser)(
	apr_size_t,
	char **,
	apr_hash_t *,
	apr_pool_t *);
typedef apr_status_t (*res_assembler)(
    apr_hash_t *,
    apr_pool_t *);
typedef apr_status_t (*res_checker)(
	void *,
	apr_size_t);

// 队长技能
typedef struct captskill_t {
	captskill_id_t id;
	apr_int32_t plus0;
	apr_int32_t plus1;
	apr_int32_t plus2;
	apr_int32_t plus3;
	apr_int32_t plus4;
} captskill_t;
apr_status_t captskill_parser(
	apr_size_t,
	char **,
	apr_hash_t *,
	apr_pool_t *);
apr_status_t captskill_checker(
	void *,
	apr_size_t);

// 卡牌进化
typedef struct card_evolution_t {
	card_id_t id;
	level_t level_required;
	int equip_set_required;
	int type_required;
	card_id_t card1_required[2];
	card_id_t card2_required[2];
	card_id_t card3_required[2];
	card_id_t card4_required[2];
	card_id_t card5_required[2];
	int gold_required;
	card_id_t id_evo;
	level_t level_evo;
	initskill_level_t initsk_level_evo;
} card_evolution_t;
apr_status_t card_evolution_parser(
	apr_size_t,
	char **,
	apr_hash_t *,
	apr_pool_t *);
apr_status_t card_evolution_checker(
	void *,
	apr_size_t);

// 卡牌合成
typedef struct card_compose_t {
	level_t level;
	apr_int32_t compose_exp[4];
} card_compose_t;
apr_status_t card_compose_parser(
	apr_size_t,
	char **,
	apr_hash_t *,
	apr_pool_t *);
apr_status_t card_compose_checker(
	void *,
	apr_size_t);

// 卡牌
typedef struct card_ptt_t {
	card_ptt_id_t id;
	apr_int32_t class_info;
	apr_int32_t leadership_cost;
	apr_int32_t levelup_exp_type;
	apr_int32_t level_max;
	apr_int32_t hp_base;
	apr_int32_t att_base;
	apr_int16_t compose_exp_base;
	apr_int16_t sell_gold_base;
} card_ptt_t;
apr_status_t card_ptt_parser(
	apr_size_t,
	char **,
	apr_hash_t *,
	apr_pool_t *);
apr_status_t card_ptt_checker(
	void *,
	apr_size_t);

// 装备

// 怪物

// 任务
typedef struct quest_ptt_t {
	quest_ptt_id_t id;
	quest_id_t pre_quest_id;
	apr_int32_t reward_type;
	apr_int32_t reward_param;
	apr_int32_t cond1_type;
	apr_int32_t cond1_param;
} quest_ptt_t;
apr_status_t quest_ptt_parser(
	apr_size_t,
	char **,
	apr_hash_t *,
	apr_pool_t *);
apr_status_t quest_ptt_checker(
	void *,
	apr_size_t);

// 玩家升级
typedef struct actor_levelup_t {
	level_t level;
	exp_value_t to_next_level;
	apr_int32_t stamina_max;
	apr_int32_t cards_max;
	apr_int32_t leadership_max;
	apr_int32_t friends_max;
	apr_int32_t stamina_reward;
} actor_levelup_t;
apr_status_t actor_levelup_parser(
	apr_size_t,
	char **,
	apr_hash_t *,
	apr_pool_t *);
apr_status_t actor_levelup_checker(
	void *,
	apr_size_t);

// 主动技能
typedef struct initskill_ptt_t {
	initskill_id_t id;
	apr_int32_t type;
	apr_int32_t level_max;
	apr_int32_t cast_cycle;
	apr_int32_t cast_round;
	apr_int32_t cast_target;
	apr_int32_t target_scope;
	apr_int32_t att_type;
	apr_int32_t base_fix_base;
	apr_int32_t levelup_fix_base;
	apr_int32_t levelup_prob;
	apr_int32_t effect_type;
	apr_int32_t effect_param;
} initskill_ptt_t;
apr_status_t initskill_parser(
	apr_size_t,
	char **,
	apr_hash_t *,
	apr_pool_t *);
apr_status_t initskill_checker(
	void *,
	apr_size_t);

// 活动
typedef struct event_duplicate_t {
	apr_int32_t id;
	apr_int32_t cycle_mode;
	apr_int32_t begin_time;
	apr_int32_t duration;
	apr_int32_t battle_node[3];
} event_duplicate_t;
apr_status_t event_duplicate_parser(
	apr_size_t,
	char **,
	apr_hash_t *,
	apr_pool_t *);
apr_status_t event_duplicate_checker(
	void *,
	apr_size_t);

// 符石抽奖
typedef struct lottery_stone_t {
    apr_int32_t group_id;
    card_ptt_id_t ptt_id;
    apr_int32_t ptt_prob;
} lottery_stone_t;
apr_status_t lottery_stone_parser(
    apr_size_t,
    char **,
    apr_hash_t *,
    apr_pool_t *);
apr_status_t lottery_stone_assembler(
    apr_hash_t *,
    apr_pool_t *);
apr_status_t lottery_stone_checker(
    void *,
    apr_size_t);

#endif // RES_PARSER_H_
