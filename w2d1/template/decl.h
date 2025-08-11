template <typename T> struct Vector {
  T *a;
  int n;
  int buffer_size;

  Vector();

  void push_back(const T &);
};
