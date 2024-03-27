#include "bmbattle.h"
#include "bmitem.h"
#include "bmunit.h"
#include "constants/classes.h"
#include "constants/items.h"

#include "microskillsys/battle.h"
#include "microskillsys/battle_simple.h"

// CR cam: collect these from skill folders
bool hasShootDown(struct Unit *unit);
void applyShootDown(struct PrebattleActors *pba, struct BasicPreBattleMods *mods);
bool hasSmite(struct Unit *unit);
void applySmite(struct PrebattleActors *pba, struct BasicPreBattleMods *mods);

// CR cam: generate this
const struct SimplePreBattleSkillSpec simpleSkills[] = {
  { hasShootDown, applyShootDown }, { hasSmite, applySmite }
};

#define NUM_PRE_BATTLE_SPECS                                                           \
  (sizeof(simpleSkills) / sizeof(struct SimplePreBattleSkillSpec))

bool hasNihil(struct Unit *unit) { return false; }

void ComputeBattleUnitStats(struct BattleUnit *bu, struct BattleUnit *opponent) {
  if (hasNihil(&opponent->unit)) {
    defaultBattleUnitStats(bu, opponent);
    return;
  }

  struct BasicPreBattleMods mods;
  populateVanillaPreBattleMods(bu, opponent, &mods);

  struct PrebattleActors pba = { .unit = &bu->unit,
                                 .unitWeapon = bu->weapon,
                                 .opponent = &opponent->unit,
                                 .opponentWeapon = opponent->weapon };

  for (int i = 0; i < NUM_PRE_BATTLE_SPECS; i += 1) {
    if (simpleSkills[i].conditionMet(&bu->unit)) {
      simpleSkills[i].apply(&pba, &mods);
    }
  }

  computeBattleUnitStatsBasic(bu, opponent, &mods);
}
