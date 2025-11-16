#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define N (1 << 10)

int a[N];

int main() {
  for (int i = 0; i < N; i++) {
    a[i] = rand() % 100;
  }
  int sum = 0;
  int tid = fork();
  if (tid == 0) {
    // accumulate the first half
    for (int i = 0; i < N / 2; i++) {
      sum += a[i];
    }
    printf("tid %d: first half sum = %d\n", tid, sum);
    exit(sum);
  } else {
    // accumulate the second half
    for (int i = N / 2; i < N; i++) {
      sum += a[i];
    }
  }
  int status;
  wait(&status);
  printf("tid %d: sum = %d\n", tid, sum);
  printf("tid %d: status = %d\n", tid, WEXITSTATUS(status));
  return 0;
}
