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

#define returnBattleOver                                                               \
  {                                                                                    \
    out->turn = BattleOver;                                                            \
    return;                                                                            \
  }

void setFollowup(
    struct BattleUnit *initiator, struct BattleUnit *target, struct BattleRound *out
) {
  if (target->battleSpeed > 250) {
    returnBattleOver;
  }

  if (ABS(initiator->battleSpeed - target->battleSpeed) <
      BATTLE_FOLLOWUP_SPEED_THRESHOLD) {
    returnBattleOver;
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
    returnBattleOver;
  }

  if (GetItemIndex(attacker->weapon) == ITEM_MONSTER_STONE) {
    returnBattleOver;
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
