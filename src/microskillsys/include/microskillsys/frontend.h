#ifndef MICROSKILLSYS_FRONTEND_H
#define MICROSKILLSYS_FRONTEND_H

// Compute the battle round order
void populateRoundOrder(struct BattleUnit *initiator, struct BattleUnit *target);

// Compute any mods on the combatant stats
void populatePreBattleMods(
    struct BattleUnit *unit, struct BattleUnit *opponent, struct BasicPreBattleMods *out
);

// Compute any mods on the final battle results
void populateRoundResult(
    struct BattleUnit *attacker, struct BattleUnit *defender, struct RoundResult *out
);

#endif
