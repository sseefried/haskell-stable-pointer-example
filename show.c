#include "HsFFI.h"


extern void showDFromHaskell(HsStablePtr dPtr);

void showDFromC(HsStablePtr dPtr) {
  showDFromHaskell(dPtr);
}