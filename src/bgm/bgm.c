#include "global.h"

#include "agb_sram.h"
#include "bm.h"
#include "constants/characters.h"
#include "efxbattle.h"
#include "ekrbattle.h"
#include "event.h"
#include "soundwrapper.h"
#include "types.h"

#include "eventinfo.h"

#include "ram_structures.h"

void savePersistentBgm(void *target, unsigned size) {
  WriteAndVerifySramFast((void *)gPersistentBgm, target, size);
}

void loadPersistentBgm(void *source, unsigned size) {
  ReadSramFast(source, (void *)gPersistentBgm, size);
}

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
    *gPersistentBgm = -1;
    gEkrMainBgmPlaying = false;
    return;
  }

  gEkrMainBgmPlaying = true;

  struct BattleSong bs = selectBattleSong();
  int songid = bs.songid;

  if (songid == -1) {
    *gPersistentBgm = -1;
    gEkrMainBgmPlaying = false;
    return;
  }

  if (*gPersistentBgm == songid) {
    return;
  }

  if (bs.persist) {
    *gPersistentBgm = songid;
  }
  else {
    *gPersistentBgm = -1;
  }

  EfxOverrideBgm(songid, 0x100);
}

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
      gEkrMainBgmPlaying == false ||
      (*gPersistentBgm != -1 && !*gRestoreFromDeathQuote)) {
    MakeBgmOverridePersist();
    return;
  }

  RestoreBgm();

  if (*gRestoreFromDeathQuote) {
    *gRestoreFromDeathQuote = 0;
  }
}

void DisplayDefeatTalkForPid(u8 pid) {
  struct DefeatTalkEnt *ent = GetDefeatTalkEntry(pid);

  if (ent) {
    if ((ent->route == 1) && (ent->flag == 0x65)) {
      StartBgm(0x3e, NULL);
      gPlaySt.config.disableBgm = 1;
    }
    else {
      if (UNIT_FACTION(GetUnitFromCharId(pid)) == FACTION_BLUE) {
        if (*gPersistentBgm) {
          MakeBgmOverridePersist();
          *gRestoreFromDeathQuote = 1;
        }
        StartBgm(0x3f, NULL);
      }
    }
    if (ent->msg != 0) {
      CallBattleQuoteEventInBattle(ent->msg);
    }
    else {
      if (ent->event) {
        EventEngine_CreateBattle((u16 *)ent->event);
      }
    }

    SetPidDefeatedFlag(pid, ent->flag);
  }

  return;
}
