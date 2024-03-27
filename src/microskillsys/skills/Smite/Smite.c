#include "bmitem.h"
#include "bmunit.h"
#include "constants/characters.h"
#include "constants/items.h"

#include "microskillsys/battle.h"
#include "microskillsys/battle_simple.h"

bool hasSmite(struct Unit *unit) {
  return unit->pCharacterData->number == CHARACTER_LARACHEL;
}

void applySmite(struct PrebattleActors *pba, struct BasicPreBattleMods *mods) {
  switch (pba->unitWeapon) {
  case ITEM_ANIMA_THUNDER:
  case ITEM_ANIMA_BOLTING:
    mods->attackMod += 10;
    mods->critMod += 30;
    break;
  }
}
