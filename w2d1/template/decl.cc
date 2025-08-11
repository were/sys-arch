#include <cstring>

#include "decl.h"

template <typename T> Vector<T>::Vector() : a(nullptr), n(0), buffer_size(0) {}

template <typename T> void Vector<T>::push_back(const T &x) {
  if (this->n + 1 >= this->buffer_size) {
    auto new_a = new T[this->buffer_size * 2];
    memcpy(new_a, this->a, this->n * sizeof(T));
    delete[] this->a;
    this->a = new_a;
  }
  this->a[this->n] = x;
  this->n++;
}
