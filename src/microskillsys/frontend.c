#include "bmbattle.h"
#include "bmitem.h"
#include "bmunit.h"
#include "constants/items.h"

#include "microskillsys/battle.h"

// TODO: How to handle individual skill headers?

bool hasNihil(struct BattleUnit *opponent) { return false; }

void ComputeBattleUnitStats(struct BattleUnit *unit, struct BattleUnit *opponent) {
  if (hasNihil(opponent)) {
    defaultBattleUnitStats(unit, opponent);
    return;
  }
}
