#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "matrices.h"

#define SIZE 32

#define RISCV


int load_count_normal = 0;
int store_count_normal = 0;

int load_count_acc = 0;
int store_count_acc = 0;




// Function to multiply two matrices with memory operation tracking
void multiplyMatrices(int A[SIZE][SIZE], int B[SIZE][SIZE], int result[SIZE][SIZE]) {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            result[i][j] = 0;
            int temp = 0;
    
            // store_count_normal++;  // Writing initial 0 value
            #pragma GCC unroll 32
            for (int k = 0; k < SIZE; k++) {
                // load_count_normal += 2;  // Reading A[i][k] and B[k][j]                
                temp += A[i][k] * B[k][j];
            }
            result[i][j] = temp;
        }
    }
}

void transpose(int matrix[SIZE][SIZE], int transposed[SIZE][SIZE]) {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            transposed[j][i] = matrix[i][j];
        }
    }
}

// Function to print a matrix
void printMatrix(int matrix[SIZE][SIZE]) {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            printf("%2d ", matrix[i][j]);
        }
        printf("\n");
    }
}

int main(int argc, char *argv[]) {
    
    int flag = 11;
    

    #ifdef RISCV
      __asm__ volatile (                                   
    "mv x31, %0\n"
    :
    : "r"(flag)
    : "x31"
    );
    #endif

    multiplyMatrices(A, BT, C);

    flag = 22;
    #ifdef RISCV  
    __asm__ volatile (                                   
    "mv x31, %0\n"
    :
    : "r"(flag)
    : "x31"
    );
    #endif

    // Calculate the sum of the result matrix
    int result_sum = 0;
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            result_sum += C[i][j];
        }
    }

    #ifdef RISCV
     __asm__ volatile (                                   
    "mv x31, %0\n"
    :
    : "r"(result_sum)
    : "x31"
    );
    #endif
    
    // printMatrix(BT);
    // printf("\n");
    printMatrix(C);

    printf("\nSum of Resultant Matrix: %d\n", result_sum);

    // Print memory operation counts
    printf("\nTotal Loads: %d\n", load_count_normal);
    printf("Total Stores: %d\n", store_count_normal);

    return 0;
}
