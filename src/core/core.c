#include "global.h"

#include "bmunit.h"

#include "data/skill_listing.h"
#include "microskillsys.h"

#define pushValue(dst, i, x)                                                           \
  if (x != 0) {                                                                        \
    dst[i] = x;                                                                        \
    i += 1;                                                                            \
  }

void listSkills(struct Unit *unit, u8 *dst) {}
