#include "global.h"

#include "functions.h"
#include "gamecontrol.h"
#include "hardware.h"
#include "opanim.h"
#include "proc.h"
#include "rng.h"
#include "soundwrapper.h"
#include "types.h"

void Title_IDLE(struct TitleScreenProc *proc) {
  proc->timer_idle++;
  proc->timer += 1;
  proc->timer &= 0x3f;

  if (gKeyStatusPtr->newKeys & (A_BUTTON | START_BUTTON)) {
    PlaySoundEffect(0x6D);
    SetNextGameActionId(GAME_ACTION_EVENT_RETURN);
    InitRN(GetGameClock());
    Proc_Break(proc);
  }
}
