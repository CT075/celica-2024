#include "global.h"

#include "bmbattle.h"
#include "bmunit.h"

#include "microskillsys/battle.h"
#include "ram_structures.h"

// void ComputeBattleUnitStats(struct BattleUnit *attacker, struct BattleUnit *defender)
// {}

void clearRoundOrder(void) {
  for (int i = 0; i < MAX_BATTLE_ROUNDS; i += 1) {
    gBattleRoundOrder[i].turn = BattleOver;
  }
}

void populateRoundOrder(struct BattleUnit *initiator, struct BattleUnit *target) {
  gBattleRoundOrder[0].turn = InitiatorTurn;
  gBattleRoundOrder[0].count = 1 << BattleCheckBraveEffect(initiator);
}

void BattleUnwind(void) {
  ClearBattleHits();

  struct BattleUnit *initiator = &gBattleActor;
  struct BattleUnit *target = &gBattleTarget;

  populateRoundOrder(initiator, target);

  gBattleHitIterator->info |= BATTLE_HIT_INFO_BEGIN;

  for (int i = 0; i < MAX_BATTLE_ROUNDS; i += 1) {
    switch (gBattleRoundOrder[i].turn) {
    case InitiatorTurn:
      break;
    case TargetTurn:
      break;
    case BattleOver:
      break;
    }
  }
}
