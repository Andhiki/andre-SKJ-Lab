#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
  pid_t p;
  printf("Starting the fork\n");
  p = fork();

  // Block code for the child process
  if (p == 0) {
    printf("I am a child process: %d\n", getpid());
    printf("My parent id is %d\n", getppid());
  }

  // Block of code for the parent process
  else {
    printf("I am parent process: %d\n", getpid());
    printf("My child id is %d\n", p);
    sleep(15);
  }
}