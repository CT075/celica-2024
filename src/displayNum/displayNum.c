#include "global.h"

#include "bmlib.h"
#include "event.h"
#include "scene.h"

#define sTalkState ((struct TalkState *)(0x0859133c))

void runDisplayNum() {
  sTalkState->userNumber = gEventSlots[3];
  NumberToStringAscii(sTalkState->userNumber, sTalkState->userNumberString);
  sTalkState->str--;
  sTalkState->strBackup = sTalkState->str;
  sTalkState->str = sTalkState->userNumberString;
}
