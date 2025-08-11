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

void mm_naive(int *a, int *b, int *c, int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      c[i * n + j] = 0;
      for (int k = 0; k < n; k++) {
        c[i * n + j] += a[i * n + k] * b[k * n + j];
      }
    }
  }
}

void mm_better(int *a, int *b, int *c, int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      c[i * n + j] = 0;
    }
    for (int k = 0; k < n; k++) {
      for (int j = 0; j < n; j++) {
        c[i * n + j] += a[i * n + k] * b[k * n + j];
      }
    }
  }
}

#define N 512
int a[N * N], b[N * N], c[N * N];

int main() {
  for (int i = 0; i < N * N; i++) {
    a[i] = rand() % 100;
    b[i] = rand() % 100;
    c[i] = 0;
  }

  {
    mm_naive(a, b, c, N);
    struct timeval begin = begin_roi();
    mm_naive(a, b, c, N);
    end_roi(begin);
  }

  {
    mm_better(a, b, c, N);
    struct timeval begin = begin_roi();
    mm_better(a, b, c, N);
    end_roi(begin);
  }

  return 0;
}
