#include <stdio.h>
#include "bubble_sort.h"

// Driver Code
int arr[] = {64, 34, 25, 12, 22, 11, 90};
int main() {
    int n = sizeof(arr) / sizeof(arr[0]);

   

    bubbleSort(arr, n);

    
    printArray(arr, n);

    return 0;
}
