#include "bmbattle.h"
#include "bmitem.h"
#include "bmunit.h"
#include "constants/classes.h"
#include "constants/items.h"

#include "microskillsys/battle.h"

// CR cam: How to handle individual skill headers?
bool hasShootDown(struct Unit *unit);
void applyShootDown(
    struct Unit *unit, struct Unit *opponent, struct BasicPreBattleMods *mods
);

struct SimplePreBattleSkillSpec {
  bool (*conditionMet)(struct Unit *unit);
  void (*apply)(
      struct Unit *unit, struct Unit *opponent, struct BasicPreBattleMods *mods
  );
};

// CR cam: generate this
const struct SimplePreBattleSkillSpec simpleSkills[] = {
  // ShootDown
  { hasShootDown, applyShootDown }
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

  for (int i = 0; i < NUM_PRE_BATTLE_SPECS; i += 1) {
    if (simpleSkills[i].conditionMet(&bu->unit)) {
      simpleSkills[i].apply(&bu->unit, &opponent->unit, &mods);
    }
  }

  computeBattleUnitStatsBasic(bu, opponent, &mods);
}
