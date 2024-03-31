#ifndef MICROSKILLSYS_RECKLESS_H
#define MICROSKILLSYS_RECKLESS_H

#include "bmunit.h"
#include "microskillsys/battle_simple.h"

bool recklessMayApply(struct Unit *unit);
void applyReckless(struct PrebattleActors *pba, struct BasicPreBattleMods *mods);

#endif
