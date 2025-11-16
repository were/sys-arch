#include <iostream>

struct Singleton {
  int counter;
  Singleton() : counter(0) {}
  Singleton &operator=(Singleton &) = delete;
};

Singleton *getInstance() {
  static Singleton *instance = new Singleton();
  return instance;
}

int main() {
  getInstance()->counter++;
  std::cout << "Counter: " << getInstance()->counter << std::endl;
  getInstance()->counter++;
  std::cout << "Counter: " << getInstance()->counter << std::endl;
  return 0;
}
