#include <stdio.h>
#include "bubble_sort.h"


// Function to perform Bubble Sort
void bubbleSort(int arr[], int n) {
    int i, j, temp;
    // int swapped;
    register int swapped asm("a2");

    for (i = 0; i < n - 1; i++) {
        swapped = 0;  // Track if any swaps happen

        for (j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                // Swap arr[j] and arr[j + 1]
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
                swapped = 1;
            }
        }

        // If no swaps happened in the inner loop, the array is already sorted
        if (!swapped) {
            break;
        }
    }
}

// Function to print an array
void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++) {
       
        #ifndef __riscv
            printf("%d ", arr[i]);
        #endif

    }
    __builtin_trap(); 

    #ifdef __riscv
        asm volatile ("lw n21, %0\n"::"m"(arr[0]): "x20");
        asm volatile ("lw x20, %0\n"::"m"(arr[1]): "x20");
        asm volatile ("lw x20, %0\n"::"m"(arr[2]): "x20");
        asm volatile ("lw x20, %0\n"::"m"(arr[3]): "x20");
        asm volatile ("lw x20, %0\n"::"m"(arr[4]): "x20");
        asm volatile ("lw x20, %0\n"::"m"(arr[5]): "x20");
        asm volatile ("lw x20, %0\n"::"m"(arr[6]): "x20");
        
    #endif


    #ifndef __riscv
        printf("\n");
    #endif

    

}