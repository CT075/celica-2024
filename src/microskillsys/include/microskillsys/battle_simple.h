#ifndef MICROSKILLSYS_BATTLE_SIMPLE_H
#define MICROSKILLSYS_BATTLE_SIMPLE_H

#include "microskillsys/battle.h"

struct PrebattleActors {
  // We do not pass the full [BattleUnit]s, because they aren't fully populated
  // yet.
  struct Unit *unit;
  u16 unitWeapon;
  struct Unit *opponent;
  u16 opponentWeapon;
};

struct SimplePreBattleSkillSpec {
  bool (*conditionMet)(struct Unit *unit);
  void (*apply)(struct PrebattleActors *input, struct BasicPreBattleMods *mods);
};

#endif
