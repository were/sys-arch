#include <assert.h>
#include <stdint.h>
#include <stdio.h>

int a[100];
int b[200][100];

uint8_t c[101];

uint64_t d[5];

int main() {
  // array size
  printf("%d\n", (int)sizeof(a));
  printf("%d\n", (int)sizeof(b));
  // array access
  // expected: (5 * 100 + 5 - 0)
  printf("%d\n", (int)(&b[5][5] - (int *)b));
  // array is aligned by its scalar element
  assert((uint64_t)(d) % 8 == 0);
  return 0;
}
