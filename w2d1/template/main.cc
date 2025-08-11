#include <iostream>

#include "decl.h"

int main() {
  Vector<int> a;
  a.push_back(1);
  a.push_back(2);
  a.push_back(3);

  for (int i = 0; i < a.n; ++i) {
    if (i > 0) {
      std::cout << " ";
    }
    std::cout << a.a[i];
  }
  std::cout << std::endl;

  return 0;
}
