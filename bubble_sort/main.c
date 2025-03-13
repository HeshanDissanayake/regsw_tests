#include <stdio.h>
#include "bubble_sort.h"

// Driver Code
int arr[] = {64, 34, 25, 12, 22, 11, 90};
int main() {
    int n = sizeof(arr) / sizeof(arr[0]);

   

    bubbleSort(arr, n);


     #ifdef __riscv
        
        asm volatile ("lw x20, %0\n"::"m"(arr[1]): "x20");
        asm volatile ("lw x20, %0\n"::"m"(arr[2]): "x20");
        asm volatile ("lw x20, %0\n"::"m"(arr[3]): "x20");
        asm volatile ("lw x20, %0\n"::"m"(arr[4]): "x20");
        asm volatile ("lw x20, %0\n"::"m"(arr[5]): "x20");
        asm volatile ("lw x20, %0\n"::"m"(arr[6]): "x20");
        
    #endif
    __builtin_trap(); 
    
    printArray(arr, n);

    return 0;
}
