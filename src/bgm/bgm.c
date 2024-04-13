#include "global.h"

#include "constants/characters.h"
#include "efxbattle.h"
#include "ekrbattle.h"
#include "soundwrapper.h"
#include "types.h"

#include "ram_structures.h"

struct BattleSong {
  int songid : 31;
  bool persist : 1;
};

struct BattleSong selectBattleSong() {
  struct BattleUnit *bul = gpEkrBattleUnitLeft;
  struct BattleUnit *bur = gpEkrBattleUnitRight;
  int staff_type;

  if (EfxCheckRetaliation(POS_L)) {
    staff_type = EfxCheckStaffType(gBattleActor.weaponBefore);
  }
  else if (EfxCheckRetaliation(POS_R)) {
    staff_type = EfxCheckStaffType(gBattleTarget.weaponBefore);
  }
  else {
    staff_type = 0;
  }

  switch (staff_type) {
  case 2:
    return (struct BattleSong){ .songid = 0x22, .persist = false };

  case 1:
    return (struct BattleSong){ .songid = 0x21, .persist = false };
  }

  if (UNIT_CHAR_ID(&bul->unit) == CHARACTER_LYON) {
    return (struct BattleSong){ .songid = 0x1D, .persist = true };
  }

  int songid;
  bool playerphase = gBanimFactionPal[gEkrInitialHitSide] != 1;

  if (playerphase) {
    songid = UNIT_CHAR_ID(&bur->unit) == CHARACTER_COLM ? 0x2F : 0x39;
  }
  else {
    songid = 0x1A;
  }

  return (struct BattleSong){ .songid = songid, .persist = false };
}

void EkrPlayMainBGM(void) {
  if (gBmSt.gameStateBits & BM_FLAG_5) {
    gEkrMainBgmPlaying = false;
    return;
  }

  gEkrMainBgmPlaying = true;

  struct BattleSong bs = selectBattleSong();
  int songid = bs.songid;

  if (songid == -1) {
    gEkrMainBgmPlaying = false;
    return;
  }

  if (*gPersistentBgm == songid) {
    return;
  }

  *gPersistentBgm = songid * bs.persist;

  EfxOverrideBgm(songid, 0x100);
}

void EkrRestoreBGM(void) {
  if (CheckBanimHensei() == true || gBmSt.gameStateBits & BM_FLAG_5 ||
      gEkrMainBgmPlaying == false) {
    return;
  }

  RestoreBgm();
}
