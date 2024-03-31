#include "bmitem.h"
#include "bmunit.h"
#include "constants/classes.h"
#include "constants/items.h"

#include "microskillsys/battle.h"
#include "microskillsys/battle_simple.h"

bool hasGreatShield(struct Unit *unit) { return UNIT_CLASS_ID(unit) == CLASS_GENERAL; }

int GreatShieldProcRate(struct BattleUnit *bu) { return bu->unit.level; }

void applyGreatShield(
    struct BattleUnit *attacker, struct BattleUnit *defender, struct RoundResult *result
) {
  result->didDefenderProcSkill = true;
  result->finalDamage = 0;
}
