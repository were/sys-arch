struct ArrayWrapper {
  int payload[100];
  int size;
};

int sum(struct ArrayWrapper a) {
  int res = 0;
  for (int i = 0; i < a.size; i++) {
    res += a.payload[i];
  }
  return res;
}
