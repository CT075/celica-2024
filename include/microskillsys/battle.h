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

struct BasicPreBattleMods {
  // Multiplier applied to the weapon (includes effectiveness)
  u8 weaponMultiplier;
  // Flat damage applied to final attack
  u8 attackMod;
  // Flat damage applied to final defense
  u8 defMod;
  u8 speedMod;
  u8 hitMod;
  u8 avoMod;
  u8 critMod;
  u8 dodgeMod;
  u8 supportBonusMultiplier;
};

void clearRoundOrder();
void populateRoundOrder();

#endif
