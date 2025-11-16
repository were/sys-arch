#include <stdio.h>
#include <unistd.h>

int x = 100;

int main() {
  if (fork() == 0) {
    x = 200;
    printf("child exit\n");
  } else {
    sleep(5);
    printf("x = %d\n", x);
  }
  return 0;
}
