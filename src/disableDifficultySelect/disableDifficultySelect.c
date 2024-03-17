#include "global.h"

#include "savemenu.h"

void SetDifficultySelectNormal(struct Proc *_);

const struct ProcCmd ProcScr_FakeDifficultySelect[] = {
  PROC_CALL(SetDifficultySelectNormal),
  PROC_SLEEP(10),
  PROC_CALL(nullsub_64),
  PROC_END,
};

void SetDifficultySelectNormal(struct Proc *_) { savemenu_SetDifficultyChoice(1, 0); }
