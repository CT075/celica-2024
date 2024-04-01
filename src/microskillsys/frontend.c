#include "bmbattle.h"
#include "bmitem.h"
#include "bmunit.h"
#include "constants/characters.h"
#include "constants/classes.h"
#include "constants/items.h"

#include "microskillsys/battle.h"
#include "microskillsys/frontend.h"

#include "microskillsys/battle_simple.h"
#include "microskillsys/battleunit_calc.h"
#include "microskillsys/skills.h"

#define NUM_CALC_SKILLS (sizeof(calcSkills) / sizeof(struct CalcModSkillSpec))

const struct CalcModSkillSpec calcSkills[] = { { hasShootDown, applyShootDown } };

#define NUM_PRE_BATTLE_SPECS                                                           \
  (sizeof(simpleSkills) / sizeof(struct SimplePreBattleSkillSpec))

// CR cam: generate this
const struct SimplePreBattleSkillSpec simpleSkills[] = {
  { hasSmite, applySmite },
  { recklessMayApply, applyReckless },
  { hasTrample, applyTrample },
  { hasAirSuperiority, applyAirSuperiority }
};

#define NUM_PROC_SKILLS (sizeof(procSkills) / sizeof(struct ProcSkillSpec))

// CR cam: Maybe it'd be better to split into attacker/defender instead of
// using the enum?
const struct ProcSkillSpec procSkills[] = {
  {
      Attacker,
      hasPierce,
      PierceProcRate,
      applyPierce,
  },
  {
      Defender,
      hasGreatShield,
      GreatShieldProcRate,
      applyGreatShield,
  },
};

void populateRoundOrder(struct BattleUnit *initiator, struct BattleUnit *target) {
  defaultPopulateRoundOrder(initiator, target);
}

void populateRoundResult(
    struct BattleUnit *attacker, struct BattleUnit *defender, struct RoundResult *out
) {
  defaultPopulateRoundResult(attacker, defender, out);

  for (int i = 0; i < NUM_PROC_SKILLS; i += 1) {
    struct BattleUnit *bu = attacker;
    struct ProcSkillSpec skill = procSkills[i];
    switch (skill.side) {
    case Attacker:
      bu = attacker;
      break;
    case Defender:
      bu = defender;
      break;
    }
    if (skill.canProc(&bu->unit)) {
      int rate = skill.procRate(bu);
      if (BattleRoll1RN(rate, FALSE)) {
        skill.apply(attacker, defender, out);
      }
    }
  }

  // Cheat L'Arachel's hitrate against the hidden sniper to ensure the fastclear
  if (UNIT_CHAR_ID(&attacker->unit) == CHARACTER_LARACHEL &&
      UNIT_CHAR_ID(&defender->unit) == 0x8F) {
    out->didAttackHit = true;
  }
}

void populateBaseStats(struct BattleUnit *bu, struct BattleUnit *opponent) {
  struct BattleStatGetters getters;

  defaultPopulateBattleStatGetters(&getters);

  for (int i = 0; i < NUM_CALC_SKILLS; i += 1) {
    struct CalcModSkillSpec skill = calcSkills[i];
    if (skill.applies(&bu->unit)) {
      skill.apply(&getters);
    }
  }

  getters.computeAttack(bu, opponent);
  getters.computeDefense(opponent, bu);
  getters.computeSpeed(bu);
  getters.computeHit(bu);
  getters.computeAvoid(bu);
  getters.computeCrit(bu);
  getters.computeDodge(bu);
  getters.computeSupportBonuses(bu, opponent);
  getters.computeWeaponRankBonuses(bu);
  getters.computeStatusBonuses(bu);
}

void populateCombatBonuses(
    struct BattleUnit *bu, struct BattleUnit *opponent, struct InCombatBonuses *mods
) {
  if (hasNihil(&opponent->unit)) {
    return;
  }

  struct PrebattleActors pba = { .unit = &bu->unit,
                                 .unitWeapon = bu->weapon,
                                 .opponent = &opponent->unit,
                                 .opponentWeapon = opponent->weapon };

  for (int i = 0; i < NUM_PRE_BATTLE_SPECS; i += 1) {
    struct SimplePreBattleSkillSpec skill = simpleSkills[i];
    if (skill.applies(&bu->unit)) {
      skill.apply(&pba, mods);
    }
  }
}

// CR cam: Is there some better way to express this?
void ComputeBattleUnitEffectiveHitRate(
    struct BattleUnit *attacker, struct BattleUnit *defender
) {
  if (hasNoGuard(&attacker->unit) || hasNoGuard(&defender->unit)) {
    attacker->battleEffectiveHitRate = 100;
  }
  else {
    attacker->battleEffectiveHitRate =
        attacker->battleHitRate - defender->battleAvoidRate;
  }

  if (attacker->battleEffectiveHitRate > 100) {
    attacker->battleEffectiveHitRate = 100;
  }

  if (attacker->battleEffectiveHitRate < 0) {
    attacker->battleEffectiveHitRate = 0;
  }
}
