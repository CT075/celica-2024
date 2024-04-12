#include "global.h"

#include "bmbattle.h"
#include "bmunit.h"

#define BadGuy 0x80

void UnitAutolevelCore(struct Unit *unit, u8 classId, int levelCount) {
  if (levelCount) {
    unit->maxHP += GetAutoleveledStatIncrease(unit->pClassData->growthHP, levelCount);
    unit->pow += GetAutoleveledStatIncrease(unit->pClassData->growthPow, levelCount);
    unit->skl += GetAutoleveledStatIncrease(unit->pClassData->growthSkl, levelCount);
    unit->spd += GetAutoleveledStatIncrease(unit->pClassData->growthSpd, levelCount);
    unit->def += GetAutoleveledStatIncrease(unit->pClassData->growthDef, levelCount);
    unit->res += GetAutoleveledStatIncrease(unit->pClassData->growthRes, levelCount);
    unit->lck += GetAutoleveledStatIncrease(unit->pClassData->growthLck, levelCount);
  }

  if (UNIT_CHAR_ID(unit) == BadGuy) {
    unit->lck = 0;
    unit->maxHP += 5;
    unit->pow += 2;
    unit->skl += 2;
    unit->spd += 2;
    unit->def += 2;
    unit->res += 2;
  }
}
