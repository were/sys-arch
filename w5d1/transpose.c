// clang main.c -o main -O2

#include <sys/time.h>

#include <stdio.h>
#include <stdlib.h>

struct timeval begin_roi() {
  struct timeval begin;
  gettimeofday(&begin, NULL);
  return begin;
}

void end_roi(struct timeval begin) {
  struct timeval end;
  gettimeofday(&end, NULL);
  long seconds = end.tv_sec - begin.tv_sec;
  long micros = end.tv_usec - begin.tv_usec;
  long elapsed = seconds * 1000000 + micros;
  printf("Elapsed time: %ld us\n", elapsed);
}

void transpose(int *a, int *b, int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      b[j * n + i] = a[i * n + j];
    }
  }
}

#define N 2048
int a[N * N], b[N * N], c[N * N];

int main() {
  for (int i = 0; i < N * N; i++) {
    a[i] = rand() % 100;
    b[i] = rand() % 100;
    c[i] = 0;
  }

  {
    transpose(a, b, N / 2);
    struct timeval begin = begin_roi();
    transpose(a, b, N / 2);
    end_roi(begin);
  }

  {
    transpose(a, b, N / 2 + 1);
    struct timeval begin = begin_roi();
    transpose(a, b, N / 2 + 1);
    end_roi(begin);
  }

  {
    transpose(a, b, N / 2 - 1);
    struct timeval begin = begin_roi();
    transpose(a, b, N / 2 - 1);
    end_roi(begin);
  }

  return 0;
}
