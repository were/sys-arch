#include <iostream>

struct A {
  int a;
  A(int x) : a(x) {}

  void operator*(const A &rhs) const {
    std::cout << this->a << " * " << rhs.a << std::endl;
  }
};

void operator+(const A &lhs, const A &rhs) {
  std::cout << lhs.a << " + " << rhs.a << std::endl;
}

int main() {
  A a(5);
  A b(10);
  a + b;
  // An interesting case of ambiguity.
  // The parser regards this as declaring a pointer of type a.
  // But actually, I am doing an overloaded multiplication of A.
  a *b;
  return 0;
}
