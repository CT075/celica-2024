// THIS FILE IS GENERATED
//
// To change this file, see `bin/ram_alloc.py` and `data/ram_structures.csv`.

#ifndef RAM_STRUCTURES_H
#define RAM_STRUCTURES_H

#include "global.h"
#include "constants.h"
#include "microskillsys/constants.h"
#include "microskillsys/battle.h"

#define sizeof_round(ty) ((sizeof(ty) + sizeof(int)-1) & ~(sizeof(int)-1))

#define G_BATTLE_ROUND_ORDER_ADDR (FREE_RAM_START + 0)
#define gBattleRoundOrder ((struct BattleRound *)(G_BATTLE_ROUND_ORDER_ADDR))
#define G_SKILL_TEXT_ID_BUFFER_ADDR (G_BATTLE_ROUND_ORDER_ADDR + sizeof_round(struct BattleRound[MAX_BATTLE_ROUNDS]))
#define gSkillTextIdBuffer (( short *)(G_SKILL_TEXT_ID_BUFFER_ADDR))
#define ALLOC_END (G_SKILL_TEXT_ID_BUFFER_ADDR + sizeof_round(short[MAX_SKILLS_POSSIBLE])) // for verifying that ram does not overrun

#endif // RAM_STRUCTURES_H

