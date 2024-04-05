#include "global.h"

#include "constants/characters.h"
#include "efxbattle.h"
#include "ekrbattle.h"
#include "soundwrapper.h"

void EkrPlayMainBGM(void) {
  int ret, songid, songid2, pid, staff_type;
  struct BattleUnit *bul, *bur, **pbul, **pbur;

  pbul = &gpEkrBattleUnitLeft;
  pbur = &gpEkrBattleUnitRight;

  bul = *pbul;
  bur = *pbur;

  if (gBmSt.gameStateBits & BM_FLAG_5) {
    gEkrMainBgmPlaying = 0;
    return;
  }

  gEkrMainBgmPlaying = 1;

  songid = gBanimFactionPal[gEkrInitialHitSide] != 1 ? 0x39 : 0x19;

  ret = false;
  if (EkrCheckWeaponSieglindeSiegmund(bur->weaponBefore) == true) {
    ret = true;
  }

  if (!EkrCheckAttackRound(1)) {
    ret = false;
  }

  if (gBanimValid[POS_L] == false) {
    ret = false;
  }

  pid = UNIT_CHAR_ID(&bul->unit);
  if (pid == CHARACTER_LYON) {
    ret = false;
  }

  if (pid == CHARACTER_LYON_FINAL) {
    ret = false;
  }

  if (ret == true) {
    EfxOverrideBgm(0x1F, 0x100);
    return;
  }

  songid2 = GetBanimBossBGM(&bul->unit);

  if (UNIT_FACTION(GetUnitFromCharId(UNIT_CHAR_ID(&bul->unit))) == FACTION_BLUE) {
    songid2 = -1;
  }

  if (gBanimValid[POS_L] == false) {
    songid2 = -1;
  }

  if (songid2 != -1) {
    EfxOverrideBgm(songid2, 0x100);
    return;
  }

  if (EfxCheckRetaliation(POS_L) == true) {
    staff_type = EfxCheckStaffType(gBattleActor.weaponBefore);
  }
  else if (EfxCheckRetaliation(POS_R) == true) {
    staff_type = EfxCheckStaffType(gBattleTarget.weaponBefore);
  }
  else {
    staff_type = 0;
  }

  switch (staff_type) {
  case 2:
    songid = 0x22;
    break;

  case 1:
    songid = 0x21;
    break;

  default:
    break;
  }

  if (songid != -1) {
    EfxOverrideBgm(songid, 0x100);
    return;
  }
  gEkrMainBgmPlaying = false;
}

void EkrRestoreBGM(void) {
  if (CheckBanimHensei() == true || gBmSt.gameStateBits & BM_FLAG_5 ||
      gEkrMainBgmPlaying == false) {
    return;
  }

  RestoreBgm();
}
