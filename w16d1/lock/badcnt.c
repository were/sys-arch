#include <assert.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

volatile int cnt;

void *increase_cnt(void *arg) {
  int n = *((int *)arg);
  for (int i = 0; i < n; i++) {
    ++cnt;
  }
  return NULL;
}

int main(int argc, char *argv[]) {
  assert(argc == 2);
  int n = atoi(argv[1]);
  pthread_t p1, p2;
  pthread_create(&p1, NULL, increase_cnt, &n);
  pthread_create(&p2, NULL, increase_cnt, &n);
  pthread_join(p1, NULL);
  pthread_join(p2, NULL);
  int value = 0;
  if (cnt != n * 2) {
    printf("cnt = %d, expected %d\n", cnt, n * 2);
    value = 1;
  } else {
    printf("cnt = %d, as expected\n", cnt);
    value = 0;
  }
  return value;
}
