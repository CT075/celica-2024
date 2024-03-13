#include "global.h"

#include "bmbattle.h"
#include "bmreliance.h"
#include "hardware.h"
#include "icon.h"
#include "statscreen.h"

#include "constants.h"

#define gUiTmScratchA ((u16 *)UI_SCRATCH_A_ADDR)

inline void displaySkills(void) {
  // CR cam: Change to draw stat icons
  for (int i = 0; i < MAX_SKILLS_POSSIBLE; i++) {
    int idx = i + 1;
    int icon = 0x79 * idx;

    DrawIcon(
        gUiTmScratchA + TILEMAP_INDEX(2 * idx, 14), icon,
        TILEREF(0, STATSCREEN_BGPAL_EXTICONS)
    );
  }
}

void DisplayBwl(void) { displaySkills(); }

void redirectSkill(struct HelpBoxProc *proc) {}

void populateSkill(struct HelpBoxProc *proc) {}

struct HelpBoxInfo sHelpInfo_Skill0;
struct HelpBoxInfo sHelpInfo_Skill1;
struct HelpBoxInfo sHelpInfo_Skill2;
struct HelpBoxInfo sHelpInfo_Skill3;
struct HelpBoxInfo sHelpInfo_Skill4;

struct HelpBoxInfo sHelpInfo_Skill0 = {
  &sHelpInfo_Ss0Res, NULL,           NULL, &sHelpInfo_Skill1, 0x6C, 0x80, 0,
  &redirectSkill,    &populateSkill,
};

struct HelpBoxInfo sHelpInfo_Skill1 = {
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

struct HelpBoxInfo sHelpInfo_Skill2 = {
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

struct HelpBoxInfo sHelpInfo_Skill3 = {
  &sHelpInfo_Ss0Res,
  NULL,
  &sHelpInfo_Skill2,
  &sHelpInfo_Skill4,
  0x8C,
  0x80,
  3,
  &redirectSkill,
  &populateSkill,
};

struct HelpBoxInfo sHelpInfo_Skill4 = {
  &sHelpInfo_Ss0Res, NULL,           &sHelpInfo_Skill3, NULL, 0x8C, 0x80, 4,
  &redirectSkill,    &populateSkill,
};
