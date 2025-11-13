int sum(int *a, int n) {
  int total = 0;
  for (int i = 0; i < n; i++) {
    total += a[i];
  }
  return total;
}
