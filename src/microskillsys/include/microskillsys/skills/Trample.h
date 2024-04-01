#ifndef MICROSKILLSYS_TRAMPLE
#define MICROSKILLSYS_TRAMPLE

#include "bmunit.h"
#include "microskillsys/battle_simple.h"

bool hasTrample(struct Unit *);
void applyTrample(struct PrebattleActors *pba, struct InCombatBonuses *mods);

#endif
