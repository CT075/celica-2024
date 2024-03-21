#ifndef MICROSKILLSYS_BATTLE_H
#define MICROSKILLSYS_BATTLE_H

#define MAX_BATTLE_ROUNDS 8

enum BattlePosition {
  InitiatorTurn = 1,
  TargetTurn = 2,
  BattleOver = 0,
};

struct BattleRound {
  enum BattlePosition turn : 4;
  u32 count : 4;
};

void clearRoundOrder();
void populateRoundOrder();

#endif
