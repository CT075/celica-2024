#include "global.h"

#include "bmshop.h"
#include "eventinfo.h"
#include "proc.h"

#define VisitedSecretShopId 131

void StartSecretShopScreen(struct Unit *unit, u16 *shopItems, ProcPtr parent) {
  SetPermanentFlag(VisitedSecretShopId);
  StartShopScreen(unit, shopItems, SHOP_TYPE_SECRET_SHOP, parent);
  return;
}

void StartSecretShopScreenOrphaned(struct Unit *unit, u16 *shopItems) {
  SetPermanentFlag(VisitedSecretShopId);
  StartShopScreen(unit, shopItems, SHOP_TYPE_SECRET_SHOP, NULL);
  return;
}
