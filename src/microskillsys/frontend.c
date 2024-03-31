#include "bmbattle.h"
#include "bmitem.h"
#include "bmunit.h"
#include "constants/characters.h"
#include "constants/classes.h"
#include "constants/items.h"

#include "microskillsys/battle.h"
#include "microskillsys/frontend.h"

#include "microskillsys/battle_simple.h"
#include "microskillsys/skills.h"

#define NUM_PRE_BATTLE_SPECS                                                           \
  (sizeof(simpleSkills) / sizeof(struct SimplePreBattleSkillSpec))

// CR cam: generate this
const struct SimplePreBattleSkillSpec simpleSkills[] = {
  { hasShootDown, applyShootDown },
  { hasSmite, applySmite },
  { recklessMayApply, applyReckless },
};

#define NUM_PROC_SKILLS (sizeof(procSkills) / sizeof(struct ProcSkillSpec))

const struct ProcSkillSpec procSkills[] = {
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
    struct BattleUnit *bu;
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

void populatePreBattleMods(
    struct BattleUnit *bu, struct BattleUnit *opponent, struct BasicPreBattleMods *mods
) {
  vanillaPopulatePreBattleMods(bu, opponent, mods);

  if (hasNihil(&opponent->unit)) {
    defaultBattleUnitStats(bu, opponent);
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

  computeBattleUnitStatsBasic(bu, opponent, mods);
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

  if (attacker->battleEffectiveHitRate > 100)
    attacker->battleEffectiveHitRate = 100;

  if (attacker->battleEffectiveHitRate < 0)
    attacker->battleEffectiveHitRate = 0;
}
