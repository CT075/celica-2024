#include "global.h"

#include "bmbattle.h"
#include "constants/characters.h"

int GetBattleAnimPreconfType(void) {
  if (UNIT_CHAR_ID(&gBattleActor.unit) == CHARACTER_LYON ||
      UNIT_CHAR_ID(&gBattleTarget.unit) == CHARACTER_LYON) {
    return PLAY_ANIMCONF_ON;
  }

  // If not solo anim, return global type
  if (gPlaySt.config.animationType != PLAY_ANIMCONF_SOLO_ANIM)
    return gPlaySt.config.animationType;

  // If both units are players, use actor solo anim type
  if (UNIT_FACTION(&gBattleActor.unit) == FACTION_BLUE)
    if (UNIT_FACTION(&gBattleTarget.unit) == FACTION_BLUE)
      return GetSoloAnimPreconfType(&gBattleActor.unit);

  // If neither are players, return 1
  if (UNIT_FACTION(&gBattleActor.unit) != FACTION_BLUE)
    if (UNIT_FACTION(&gBattleTarget.unit) != FACTION_BLUE)
      return PLAY_ANIMCONF_OFF;

  // Return solo anim type for the one that is a player unit
  if (UNIT_FACTION(&gBattleActor.unit) == FACTION_BLUE)
    return GetSoloAnimPreconfType(&gBattleActor.unit);
  else
    return GetSoloAnimPreconfType(&gBattleTarget.unit);
}
