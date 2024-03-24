#include <stdio.h>
#include <string.h>

#include "ram_structures.h"

#define FREE_RAM_LEN 0x2028
#define FREE_RAM_END (FREE_RAM_START + FREE_RAM_LEN)

int main(int argc, char *argv[]) {
  if (ALLOC_END > FREE_RAM_END) {
    fprintf(stderr, "RAM allocation overrun: ALLOC_END = %08x > %08x", ALLOC_END);
    return 1;
  }

  return 0;
}
