#ifndef MICROSKILLSYS_SHOOT_DOWN_H
#define MICROSKILLSYS_SHOOT_DOWN_H

#include "bmunit.h"
#include "microskillsys/battleunit_calc.h"

bool hasShootDown(struct Unit *unit);
void applyShootDown(struct BattleStatGetters *getters);

#endif
