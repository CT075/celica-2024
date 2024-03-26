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
};

void clearRoundOrder();
void populateRoundOrder();

void populateVanillaPreBattleMods(
    struct BattleUnit *unit, struct BattleUnit *opponent, struct BasicPreBattleMods *out
);
void computeBattleUnitAttackBasic(
    struct BattleUnit *unit, struct BattleUnit *opponent,
    struct BasicPreBattleMods *mods
);
void computeBattleUnitDefenseBasic(
    struct BattleUnit *unit, struct BattleUnit *opponent,
    struct BasicPreBattleMods *mods
);
void computeBattleUnitSpeedBasic(
    struct BattleUnit *bu, struct BasicPreBattleMods *mods
);
void computeBattleUnitHitRateBasic(
    struct BattleUnit *bu, struct BasicPreBattleMods *mods
);
void computeBattleUnitAvoidRateBasic(
    struct BattleUnit *bu, struct BasicPreBattleMods *mods
);
void computeBattleUnitCritRateBasic(
    struct BattleUnit *bu, struct BasicPreBattleMods *mods
);
void computeBattleUnitDodgeRateBasic(
    struct BattleUnit *bu, struct BasicPreBattleMods *mods
);
void computeBattleUnitStatsBasic(
    struct BattleUnit *unit, struct BattleUnit *opponent,
    struct BasicPreBattleMods *mods
);
void defaultBattleUnitStats(struct BattleUnit *unit, struct BattleUnit *opponent);

#endif
