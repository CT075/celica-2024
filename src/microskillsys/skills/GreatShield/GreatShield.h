#ifndef MICROSKILLSYS_GREATSHIELD_H
#define MICROSKILLSYS_GREATSHIELD_H

bool hasGreatShield(struct Unit *unit);
int GreatShieldProcRate(struct BattleUnit *bu);
void applyGreatShield(
    struct BattleUnit *attacker, struct BattleUnit *defender, struct RoundResult *result
);

#endif
