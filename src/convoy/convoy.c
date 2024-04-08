#include "global.h"

#include "uimenu.h"

#include "bmcontainer.h"
#include "bmmenu.h"
#include "bmunit.h"
#include "constants/characters.h"
#include "constants/classes.h"
#include "muctrl.h"
#include "proc.h"

#include "eventcall.h"

bool8 HasConvoyAccess() { return true; }

u8 SupplyUsability(const struct MenuItemDef *def, int number) {
  if (!HasConvoyAccess()) {
    return MENU_NOTSHOWN;
  }

  if (gActiveUnit->pClassData->number == CLASS_PHANTOM) {
    return MENU_NOTSHOWN;
  }

  int id = gActiveUnit->pCharacterData->number;

  if (id == CHARACTER_EIRIKA || id == CHARACTER_EPHRAIM) {
    return MENU_ENABLED;
  }

  return MENU_NOTSHOWN;
}
