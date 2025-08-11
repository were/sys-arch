int vadd128(int *a, int *b, int *c) {
  for (int i = 0; i < 128; i++) {
    c[i] = a[i] + b[i];
  }
  return 0;
}

int vvadd128(int *__restrict a, int *__restrict b, int *__restrict c) {
  for (int i = 0; i < 128; i++) {
    c[i] = a[i] + b[i];
  }
  return 0;
}
