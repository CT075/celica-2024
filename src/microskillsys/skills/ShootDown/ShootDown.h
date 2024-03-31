#ifndef MICROSKILLSYS_SHOOT_DOWN_H
#define MICROSKILLSYS_SHOOT_DOWN_H

#include "bmunit.h"

bool hasShootDown(struct Unit *unit);
void applyShootDown(struct PrebattleActors *pba, struct BasicPreBattleMods *mods);

#endif
