// A simple demostration of using make.
// You can also use this to see the differences between
// dynamic and static linking.

#include <stdio.h>

int a[10];

int main() {
  int sum = 0;
  for (int i = 0; i < 10; ++i) {
    sum += a[i];
  }
  return sum;
}
