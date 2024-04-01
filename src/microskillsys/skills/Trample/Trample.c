#include "bmitem.h"
#include "bmunit.h"
#include "constants/classes.h"
#include "constants/items.h"

#include "Trample.h"
#include "microskillsys/battle.h"
#include "microskillsys/battle_simple.h"

bool hasTrample(struct Unit *unit) {
  return unit->pClassData->number == CLASS_GREAT_KNIGHT;
}

void applyTrample(struct PrebattleActors *pba, struct InCombatBonuses *mods) {
  // We define "non-mounted" as "neither on horseback nor flying". The quick
  // and dirty way to determine this is to check if the opponent is weak to
  // Horseslayer or Iron Bow, respectively.
  struct Unit *opponent = pba->opponent;

  if (!opponent) {
    return;
  }

  if (IsItemEffectiveAgainst(ITEM_BOW_IRON, opponent)) {
    return;
  }

  if (IsItemEffectiveAgainst(ITEM_LANCE_HORSESLAYER, opponent)) {
    return;
  }

  if (gBattleStats.range != 1) {
    return;
  }

  mods->attackMod += 5;
}
