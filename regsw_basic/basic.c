#include <stdint.h>
#include <stdio.h>
#include <unistd.h>


int main() {

    for(int i =0 ;i<1; i++){

      asm volatile ("add n20, n3, n4" ::);
      asm volatile ("li n6, 0" ::);
      asm volatile ("li n7, 6" ::);
      asm volatile ("add n7, n7, n7" ::);
      asm volatile ("add n7, n7, n7" ::);
      asm volatile ("add n7, n7, n7" ::);
      asm volatile ("add n7, n7, n7" ::);
      asm volatile ("add n7, n7, n7" ::);
      asm volatile ("add n7, n7, n7" ::);
    
      int result;
      asm volatile ("add %0, n7, n7" :"=r"(result):);
      printf("result %d\n", result);

    }
    return 0;

}