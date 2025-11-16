#include <pthread.h>
#include <stdio.h>

int x = 100;

void *thread_func(void *arg) {
  x = 200;
  printf("thread exit\n");
  return NULL;
}

int main() {
  printf("before: x = %d\n", x);
  pthread_t thread;
  pthread_create(&thread, /*attr*/ NULL, thread_func, /*arg*/ NULL);
  pthread_join(thread, /*retval*/ NULL);
  printf("after: x = %d\n", x);
  return 0;
}
