#include "bmitem.h"
#include "bmunit.h"
#include "constants/classes.h"
#include "constants/items.h"

#include "microskillsys/battle.h"

bool hasShootDown(struct Unit *unit) {
  return unit->pClassData->number == CLASS_SNIPER;
}

void applyShootDown(
    struct Unit *unit, struct Unit *opponent, struct BasicPreBattleMods *mods
) {
  mods->effectivenessMultiplier = 5;

  // We cheat here and assume that, if an iron bow is effective against the
  // opponent, it's a flier
  if (IsItemEffectiveAgainst(ITEM_BOW_IRON, opponent)) {
    mods->hitMod += 20;
  }
}
