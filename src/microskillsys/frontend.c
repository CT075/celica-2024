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
  { hasShootDown, applyShootDown }, { hasSmite, applySmite }
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
    if (simpleSkills[i].conditionMet(&bu->unit)) {
      simpleSkills[i].apply(&pba, mods);
    }
  }

  computeBattleUnitStatsBasic(bu, opponent, mods);
}
