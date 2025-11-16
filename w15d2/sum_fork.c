#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define N (1 << 20)

int a[N];

int main() {
  for (int i = 0; i < N; i++) {
    a[i] = rand() % 100;
  }
  long long sum = 0;
  int tid = fork();
  printf("%d %s(%d forked)\n", getpid(), tid ? "parent" : "child", tid);
  if (tid) {
    // accumulate the first half
    for (int i = 0; i < N / 2; i++) {
      sum += a[i];
    }
  } else {
    // accumulate the second half
    for (int i = N / 2; i < N; i++) {
      sum += a[i];
    }
  }
  printf("tid %d: sum = %lld\n", tid, sum);
  return 0;
}
