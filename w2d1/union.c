
#include <stdio.h>

union Union {
  char *ptr;
  char ch;
};

union RI {
  float f;
  int i;
};

int main() {
  // Understanding union in C
  printf("%d\n", (int)sizeof(union Union));
  // Understanding unions reinterpretation in C
  union RI r;
  r.f = 1.0;
  printf("float: %f\n", r.f);
  printf("int: %d\n", r.i);
  printf("int: %d\n", (int)r.f);
  printf("int: %d\n", *(int *)&r.f);
  return 0;
}
