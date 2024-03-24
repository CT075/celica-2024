#include "global.h"

#include "bmbattle.h"
#include "bmitem.h"
#include "bmunit.h"
#include "constants/items.h"

#include "microskillsys/battle.h"
#include "ram_structures.h"

// void ComputeBattleUnitStats(struct BattleUnit *attacker, struct BattleUnit *defender)
// {}

void clearRoundOrder(void) {
  for (int i = 0; i < MAX_BATTLE_ROUNDS; i += 1) {
    gBattleRoundOrder[i].turn = BattleOver;
  }
}

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

  struct BattleUnit *attacker;

  if (initiator->battleSpeed > target->battleSpeed) {
    attacker = initiator;
    out->turn = InitiatorTurn;
  }
  else {
    attacker = target;
    out->turn = TargetTurn;
  }

  if (GetItemWeaponEffect(attacker->weaponBefore) == WPN_EFFECT_HPHALVE) {
    out->turn = BattleOver;
    return;
  }

  if (GetItemIndex(attacker->weapon) == ITEM_MONSTER_STONE) {
    out->turn = BattleOver;
    return;
  }

  out->count = 1 << BattleCheckBraveEffect(attacker);
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

// This is the original `ComputeBattleUnitAttack` from decomp. We hook out of
// the original, but need to preserve this version so it can be called as a
// fallthrough from other skills.
void originalComputeBattleUnitAttack(
    struct BattleUnit *attacker, struct BattleUnit *defender
) {
  short attack;

  attacker->battleAttack = GetItemMight(attacker->weapon) + attacker->wTriangleDmgBonus;
  attack = attacker->battleAttack;

  if (IsUnitEffectiveAgainst(&attacker->unit, &defender->unit) == TRUE) {
    attack = attacker->battleAttack * 3;
  }

  if (IsItemEffectiveAgainst(attacker->weapon, &defender->unit) == TRUE) {
    attack = attacker->battleAttack;

    switch (GetItemIndex(attacker->weapon)) {

    case ITEM_SWORD_AUDHULMA:
    case ITEM_LANCE_VIDOFNIR:
    case ITEM_AXE_GARM:
    case ITEM_BOW_NIDHOGG:
    case ITEM_ANIMA_EXCALIBUR:
    case ITEM_LIGHT_IVALDI:
    case ITEM_SWORD_SIEGLINDE:
    case ITEM_LANCE_SIEGMUND:
      attack *= 2;
      break;

    default:
      attack *= 3;
      break;

    } // switch (GetItemIndex(attacker->weapon))
  }

  attacker->battleAttack = attack;
  attacker->battleAttack += attacker->unit.pow;

  if (GetItemIndex(attacker->weapon) == ITEM_MONSTER_STONE)
    attacker->battleAttack = 0;
}

void ComputeBattleUnitAttack(struct BattleUnit *attacker, struct BattleUnit *defender) {
  originalComputeBattleUnitAttack(attacker, defender);
}
