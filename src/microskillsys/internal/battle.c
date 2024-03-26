#include "global.h"

#include "bmbattle.h"
#include "bmitem.h"
#include "bmunit.h"
#include "constants/items.h"

#include "microskillsys/battle.h"
#include "ram_structures.h"

void clearRoundOrder(void) {
  for (int i = 0; i < MAX_BATTLE_ROUNDS; i += 1) {
    gBattleRoundOrder[i].turn = BattleOver;
  }
}

// CR cam: hook out
void setFollowup(
    struct BattleUnit *initiator, struct BattleUnit *target, struct BattleRound *out
) {
  if (target->battleSpeed > 250) {
    out->turn = BattleOver;
    return;
  }

  if (ABS(initiator->battleSpeed - target->battleSpeed) <
      BATTLE_FOLLOWUP_SPEED_THRESHOLD) {
    out->turn = BattleOver;
    return;
  }

  struct BattleUnit *lastRoundAttacker;

  if (initiator->battleSpeed > target->battleSpeed) {
    lastRoundAttacker = initiator;
    out->turn = InitiatorTurn;
  }
  else {
    lastRoundAttacker = target;
    out->turn = TargetTurn;
  }

  if (GetItemWeaponEffect(lastRoundAttacker->weaponBefore) == WPN_EFFECT_HPHALVE) {
    out->turn = BattleOver;
    return;
  }

  if (GetItemIndex(lastRoundAttacker->weapon) == ITEM_MONSTER_STONE) {
    out->turn = BattleOver;
    return;
  }

  out->count = 1 << BattleCheckBraveEffect(lastRoundAttacker);
}

void populateRoundOrder(struct BattleUnit *initiator, struct BattleUnit *target) {
  gBattleRoundOrder[0].turn = InitiatorTurn;
  gBattleRoundOrder[0].count = 1 << BattleCheckBraveEffect(initiator);
  gBattleRoundOrder[1].turn = TargetTurn;
  gBattleRoundOrder[1].count = 1 << BattleCheckBraveEffect(target);
  setFollowup(initiator, target, &gBattleRoundOrder[2]);
}

void runBattleRounds(
    struct BattleUnit *initiator, struct BattleUnit *target, u16 attrs
) {
  for (int i = 0; i < MAX_BATTLE_ROUNDS; i += 1) {
    gBattleHitIterator->attributes |= attrs;
    switch (gBattleRoundOrder[i].turn) {
    case InitiatorTurn:
      for (int j = 0; j < gBattleRoundOrder[i].count; j += 1) {
        if (BattleGenerateHit(initiator, target)) {
          return;
        }
      }
      break;
    case TargetTurn:
      for (int j = 0; j < gBattleRoundOrder[i].count; j += 1) {
        if (BattleGenerateHit(target, initiator)) {
          return;
        }
      }
      break;
    case BattleOver:
      return;
    }
  }
}

void BattleUnwind(void) {
  ClearBattleHits();

  struct BattleUnit *initiator = &gBattleActor;
  struct BattleUnit *target = &gBattleTarget;

  populateRoundOrder(initiator, target);

  u16 attrs = gBattleHitIterator->attributes;

  gBattleHitIterator->info |= BATTLE_HIT_INFO_BEGIN;

  runBattleRounds(initiator, target, attrs);

  gBattleHitIterator->info |= BATTLE_HIT_INFO_END;
}

void populateVanillaPreBattleMods(
    struct BattleUnit *bu, struct BattleUnit *opponent, struct BasicPreBattleMods *out
) {
  if (IsUnitEffectiveAgainst(&bu->unit, &opponent->unit) == TRUE) {
    out->weaponMultiplier = 3;
  }

  if (IsItemEffectiveAgainst(bu->weapon, &opponent->unit) == TRUE) {
    switch (GetItemIndex(bu->weapon)) {

    case ITEM_SWORD_AUDHULMA:
    case ITEM_LANCE_VIDOFNIR:
    case ITEM_AXE_GARM:
    case ITEM_BOW_NIDHOGG:
    case ITEM_ANIMA_EXCALIBUR:
    case ITEM_LIGHT_IVALDI:
    case ITEM_SWORD_SIEGLINDE:
    case ITEM_LANCE_SIEGMUND:
      out->weaponMultiplier = 2;
      break;

    default:
      out->weaponMultiplier = 3;
      break;
    }
  }
}

void computeBattleUnitAttackBasic(
    struct BattleUnit *bu, struct BattleUnit *opponent, struct BasicPreBattleMods *mods
) {
  bu->battleAttack = GetItemMight(bu->weapon) + bu->wTriangleDmgBonus;
  bu->battleAttack *= mods->weaponMultiplier;
  bu->battleAttack += bu->unit.pow;
  bu->battleAttack += mods->defMod;

  if (GetItemIndex(bu->weapon) == ITEM_MONSTER_STONE) {
    bu->battleAttack = 0;
  }
}

void computeBattleUnitDefenseBasic(
    struct BattleUnit *bu, struct BattleUnit *opponent, struct BasicPreBattleMods *mods
) {
  if (GetItemAttributes(opponent->weapon) & IA_MAGICDAMAGE) {
    bu->battleDefense = bu->terrainResistance + bu->unit.res;
  }
  else if (GetItemAttributes(opponent->weapon) & IA_MAGIC) {
    bu->battleDefense = bu->terrainResistance + bu->unit.res;
  }
  else {
    bu->battleDefense = bu->terrainDefense + bu->unit.def;
  }

  bu->battleDefense += mods->defMod;
}

void computeBattleUnitSpeedBasic(
    struct BattleUnit *bu, struct BasicPreBattleMods *mods
) {
  int effWt = GetItemWeight(bu->weaponBefore);

  effWt -= bu->unit.conBonus;

  if (effWt < 0) {
    effWt = 0;
  }

  bu->battleSpeed = bu->unit.spd - effWt + mods->speedMod;

  if (bu->battleSpeed < 0) {
    bu->battleSpeed = 0;
  }
}

void computeBattleUnitHitRateBasic(
    struct BattleUnit *bu, struct BasicPreBattleMods *mods
) {
  ComputeBattleUnitHitRate(bu);
  bu->battleHitRate += mods->hitMod;
}

void computeBattleUnitAvoidRateBasic(
    struct BattleUnit *bu, struct BasicPreBattleMods *mods
) {
  bu->battleAvoidRate =
      (bu->battleSpeed * 2) + bu->terrainAvoid + bu->unit.lck + mods->avoMod;

  if (bu->battleAvoidRate < 0) {
    bu->battleAvoidRate = 0;
  }
}

void computeBattleUnitCritRateBasic(
    struct BattleUnit *bu, struct BasicPreBattleMods *mods
) {
  ComputeBattleUnitCritRate(bu);
  bu->battleCritRate += mods->critMod;
}

void computeBattleUnitDodgeRateBasic(
    struct BattleUnit *bu, struct BasicPreBattleMods *mods
) {
  ComputeBattleUnitDodgeRate(bu);
  bu->battleDodgeRate += mods->dodgeMod;
}

void computeBattleUnitStatsBasic(
    struct BattleUnit *unit, struct BattleUnit *opponent,
    struct BasicPreBattleMods *mods
) {
  computeBattleUnitDefenseBasic(opponent, unit, mods);
  computeBattleUnitAttackBasic(unit, opponent, mods);
  computeBattleUnitSpeedBasic(unit, mods);
  computeBattleUnitHitRateBasic(unit, mods);
  computeBattleUnitAvoidRateBasic(unit, mods);
  computeBattleUnitCritRateBasic(unit, mods);
  computeBattleUnitDodgeRateBasic(unit, mods);
  ComputeBattleUnitSupportBonuses(unit, opponent);
  ComputeBattleUnitWeaponRankBonuses(unit);
  ComputeBattleUnitStatusBonuses(unit);
}

void defaultBattleUnitStats(struct BattleUnit *unit, struct BattleUnit *opponent) {
  struct BasicPreBattleMods mods;
  populateVanillaPreBattleMods(unit, opponent, &mods);
  computeBattleUnitStatsBasic(unit, opponent, &mods);
}
