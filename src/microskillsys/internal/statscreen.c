#include "global.h"

#include "bmbattle.h"
#include "bmreliance.h"
#include "hardware.h"
#include "icon.h"
#include "statscreen.h"

#include "constants.h"
#include "microskillsys/constants.h"
#include "microskillsys/frontend.h"

#define gUiTmScratchA ((u16 *)UI_SCRATCH_A_ADDR)

inline void displaySkills(void) {
  struct Unit *unit = gStatScreen.unit;
  int icons[MAX_SKILLS_POSSIBLE];

  populateSkillIconList(unit, icons);

  for (int i = 0; i < MAX_SKILLS_POSSIBLE; i++) {
    int idx = i + 1;

    DrawIcon(
        gUiTmScratchA + TILEMAP_INDEX(2 * idx, 14), icons[i],
        TILEREF(0, STATSCREEN_BGPAL_EXTICONS)
    );
  }
}

void DisplayBwl(void) {
  initSkillDisplay(gStatScreen.unit);
  displaySkills();
}

void redirectSkill(struct HelpBoxProc *proc) {
  struct Unit *unit = gStatScreen.unit;

  if (getNthSkillText(unit, 0) == -1) {
    proc->info = &sHelpInfo_Ss0Res;
  }

  if (getNthSkillText(unit, proc->info->mid) == -1) {
    TryRelocateHbLeft(proc);
  }
}

void populateSkill(struct HelpBoxProc *proc) {
  struct Unit *unit = gStatScreen.unit;

  proc->mid = getNthSkillText(unit, proc->info->mid);
}

const struct HelpBoxInfo sHelpInfo_Skill0;
const struct HelpBoxInfo sHelpInfo_Skill1;
const struct HelpBoxInfo sHelpInfo_Skill2;
const struct HelpBoxInfo sHelpInfo_Skill3;
const struct HelpBoxInfo sHelpInfo_Skill4;

const struct HelpBoxInfo sHelpInfo_Skill0 = {
  &sHelpInfo_Ss0Res, NULL,           NULL, &sHelpInfo_Skill1, 0x6C, 0x80, 0,
  &redirectSkill,    &populateSkill,
};

const struct HelpBoxInfo sHelpInfo_Skill1 = {
  &sHelpInfo_Ss0Res,
  NULL,
  &sHelpInfo_Skill0,
  &sHelpInfo_Skill2,
  0x7C,
  0x80,
  1,
  &redirectSkill,
  &populateSkill,
};

const struct HelpBoxInfo sHelpInfo_Skill2 = {
  &sHelpInfo_Ss0Res,
  NULL,
  &sHelpInfo_Skill1,
  &sHelpInfo_Skill3,
  0x8C,
  0x80,
  2,
  &redirectSkill,
  &populateSkill,
};

const struct HelpBoxInfo sHelpInfo_Skill3 = {
  &sHelpInfo_Ss0Res,
  NULL,
  &sHelpInfo_Skill2,
  &sHelpInfo_Skill4,
  0x9C,
  0x80,
  3,
  &redirectSkill,
  &populateSkill,
};

const struct HelpBoxInfo sHelpInfo_Skill4 = {
  &sHelpInfo_Ss0Res, NULL,           &sHelpInfo_Skill3, NULL, 0xAC, 0x80, 4,
  &redirectSkill,    &populateSkill,
};
