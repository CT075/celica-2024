#include "global.h"

#include "efxbattle.h"
#include "ekrbattle.h"
#include "soundwrapper.h"

void EkrRestoreBGM(void) {
  if (CheckBanimHensei() == true || gBmSt.gameStateBits & BM_FLAG_5 ||
      gEkrMainBgmPlaying == false) {
    return;
  }

  RestoreBgm();
}
