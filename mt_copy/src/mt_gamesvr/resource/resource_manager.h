
#ifndef RESOURCE_MANAGER_H_
#define RESOURCE_MANAGER_H_

#include "../apr_inc.h"

typedef enum {
	RES_ID_CAPTAINSKILL = 0,
	RES_ID_CARDEVOLUTION = 1,
	RES_ID_CARDLEVELUP = 2,
	RES_ID_CARDS = 3,
	RES_ID_DUPLICATEBUFF = 4,
	RES_ID_EQUIPMENT = 5,
	RES_ID_EVENTDUPLICATE = 6,
	RES_ID_INITIATIVESKILL = 7,
	RES_ID_INVITEPRIZE = 8,
	RES_ID_MILITARYRANKID = 9,
	RES_ID_MONSTER = 10,
	RES_ID_PASSIVESKILL = 11,
	RES_ID_PLAYERLEVELUP = 12,
	RES_ID_PRORESURGECOST = 13,
	RES_ID_QUEST = 14,
	RES_ID_RESURGECOST = 15,
	RES_ID_SUIT = 16,
	RES_ID_TEAMPOINT = 17,
	RES_ID_LOTTERY_STONE = 18,
	RES_ID_LOTTERY_FRIEND = 19,
	RES_ID_MAX = 20,
} res_id_t;

apr_status_t resmgr_init(apr_pool_t *);
apr_status_t resmgr_fini();

void * resmgr_find_int32(res_id_t, apr_int32_t);
void * resmgr_find_int16(res_id_t, apr_int16_t);

#endif // RESOURCE_MANAGER_H_
