#include "bmitem.h"
#include "bmunit.h"
#include "constants/classes.h"
#include "constants/items.h"

#include "ShootDown.h"
#include "microskillsys/battle.h"
#include "microskillsys/battle_simple.h"

bool hasShootDown(struct Unit *unit) {
  return unit->pClassData->number == CLASS_SNIPER;
}

void applyShootDown(struct PrebattleActors *pba, struct BasicPreBattleMods *mods) {
  mods->effectivenessMultiplier = 5;

  struct Unit *opponent = pba->opponent;

  // We cheat here and assume that, if an iron bow is effective against the
  // opponent, it's a flier. We do not check effectiveness directly, because
  // some bows may be effective against more than just fliers.
  if (IsItemEffectiveAgainst(ITEM_BOW_IRON, opponent)) {
    mods->hitMod += 20;
  }
}

const struct SimplePreBattleSkillSpec shootDownSpec = { hasShootDown, applyShootDown };
