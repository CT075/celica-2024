// THIS FILE IS GENERATED
//
// To change this file, see `bin/ram_alloc.py` and `data/ram_structures.csv`.

#ifndef RAM_STRUCTURES_H
#define RAM_STRUCTURES_H

#include "global.h"
#include "constants.h"

#define sizeof_round(ty) ((sizeof(ty) + sizeof(int)-1) & ~(sizeof(int)-1))

#define G_BATTLE_ROUND_ORDER_ADDR (FREE_RAM_START + 0)
#define gBattleRoundOrder ((struct BattleRound *)(G_BATTLE_ROUND_ORDER_ADDR))

#endif // RAM_STRUCTURES_H

