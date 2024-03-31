#include "bmitem.h"
#include "bmunit.h"
#include "constants/classes.h"
#include "constants/items.h"

#include "AirSuperiority.h"
#include "microskillsys/battle.h"
#include "microskillsys/battle_simple.h"

bool hasAirSuperiority(struct Unit *unit) {
  return unit->pClassData->number == CLASS_FALCON_KNIGHT;
}

void applyAirSuperiority(struct PrebattleActors *pba, struct BasicPreBattleMods *mods) {
  // We define "non-mounted" as "neither on horseback nor flying". The quick
  // and dirty way to determine this is to check if the opponent is weak to
  // Horseslayer or Iron Bow, respectively.
  struct Unit *opponent = pba->opponent;

  if (!opponent) {
    return;
  }

  if (IsItemEffectiveAgainst(ITEM_BOW_IRON, opponent)) {
    mods->avoMod += 30;
    mods->hitMod += 30;
    mods->critMod += 15;
  }
}
