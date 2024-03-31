#ifndef MICROSKILLSYS_AIR_SUPERIORITY
#define MICROSKILLSYS_AIR_SUPERIORITY

#include "bmunit.h"
#include "microskillsys/battle_simple.h"

bool hasAirSuperiority(struct Unit *);
void applyAirSuperiority(struct PrebattleActors *pba, struct BasicPreBattleMods *mods);

#endif
