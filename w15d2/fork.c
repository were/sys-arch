#include <stdio.h>
#include <unistd.h>

int main() {
  int tid = fork();

  printf("Fork returned: %d\n", tid);
  return 0;
}
