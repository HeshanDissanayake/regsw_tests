#include "matmul.h"


// Function to multiply two matrices with memory operation tracking

void multiplyMatrices_normal(int A[SIZE][SIZE], int B[SIZE][SIZE], int result[SIZE][SIZE]) {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            result[i][j] = 0;
            int temp = 0;
    
            
            #pragma GCC unroll 64
            for (int k = 0; k < SIZE; k++) {
                // load_count_normal += 2;  // Reading A[i][k] and B[k][j]                
                temp += A[i][k] * B[k][j];
                // __asm__ volatile ("nop");
            }
            result[i][j] = temp;
        }
    }
}