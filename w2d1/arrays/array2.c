#include <stdio.h>
#include <stdlib.h>

int a[100];

int main() {
  int b = rand() % 100;
  // local stack arrays can be variable size
  // because of dynamic stack allocation
  int c[b];
  printf("Size of a: %d\n", ((int)sizeof(c)));
  printf("b: %d\n", b);
  return 0;
}
