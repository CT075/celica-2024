// CR cam: asasdgfasdfasdfasdfasdfa

#include "global.h"

#include "bm.h"
#include "constants/characters.h"
#include "efxbattle.h"
#include "ekrbattle.h"
#include "event.h"
#include "soundwrapper.h"
#include "types.h"

#include "eventinfo.h"

int selectBattleSong() {
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
    return 0x22;

  case 1:
    return 0x21;
  }

  if (UNIT_CHAR_ID(&bul->unit) == CHARACTER_LYON) {
    return 0x1D;
  }

  int songid;
  bool playerphase = gBanimFactionPal[gEkrInitialHitSide] != 1;

  if (playerphase) {
    songid = UNIT_CHAR_ID(&bur->unit) == CHARACTER_COLM ? 0x2F : 0x39;
  }
  else {
    songid = 0x1A;
  }

  return songid;
}

void EkrPlayMainBGM(void) {
  if (gBmSt.gameStateBits & BM_FLAG_5) {
    gEkrMainBgmPlaying = false;
    return;
  }

  gEkrMainBgmPlaying = true;

  int songid = selectBattleSong();

  if (songid == -1) {
    gEkrMainBgmPlaying = false;
    return;
  }

  EfxOverrideBgm(songid, 0x100);
}

/*
void EfxOverrideBgm(int songid, int volume) {
  if (gBmSt.gameStateBits & BM_FLAG_5)
    return;

  if (GetCurrentBgmSong() == songid) {
    return;
  }

  Sound_SetSEVolume(volume);
  OverrideBgm(songid);
}

void EkrRestoreBGM(void) {
  if (CheckBanimHensei() == true || gBmSt.gameStateBits & BM_FLAG_5 ||
      gEkrMainBgmPlaying == false || GetCurrentBgmSong() == GetCurrentMapMusicIndex()) {
    MakeBgmOverridePersist();
    return;
  }

  RestoreBgm();
}

void StartMapSongBgm(void) {
  int songid = GetCurrentMapMusicIndex();
  int currentSong = GetCurrentBgmSong();
  if (currentSong != songid) {
    StartBgm(songid, 0);
  }
}
*/
