#include <assert.h>
#include <errno.h>
#include <pthread.h>
#include <semaphore.h>
#include <stdio.h>
#include <stdlib.h>

volatile int cnt;
sem_t mutex;

void *increase_cnt(void *arg) {
  int n = *((int *)arg);
  for (int i = 0; i < n; i++) {
    sem_wait(&mutex);
    ++cnt;
    sem_post(&mutex);
  }
  return NULL;
}

int main(int argc, char *argv[]) {
  assert(argc == 2);
  int n = atoi(argv[1]);
  // NOTE: This is ALREADY deprecated in MacOS, but still works fine in Linux...
  int x = sem_init(&mutex, 0, 1);
  if (x != 0) {
    printf("sem_init failed %d %d\n", x, errno);
    exit(1);
  }
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
