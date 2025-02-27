#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "reg.c"
#include "matrices.h"

#define SIZE 32
#define BLOCK_SIZE 8

#define BASEREG_C 18
#define BASEREG_A 22

// Function to print a matrix
void printMatrix(int matrix[SIZE][SIZE]) {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            printf("%2d ", matrix[i][j]);
        }
        printf("\n");
    }
}

// Function to multiply two matrices with memory operation tracking
void multiplyMatrices(int A[SIZE][SIZE], int B[SIZE][SIZE], int result[SIZE][SIZE]) {
    int NUM_SIZE = SIZE / BLOCK_SIZE;  // Number of blocks
    // printMatrix(C);

    for(int Cj=0; Cj<NUM_SIZE; Cj++){

        for (int i = 0; i < SIZE; i++) {

            init_regs(0, BLOCK_SIZE, 18, 4);// initialize matrix C

            for (int b = 0; b < NUM_SIZE; b++) {
            
                // Creating a temporary block array to store data from A
                // Copy the block from A into reg_block
                
                // fetchBlock_row(A_reg_block, A, i, b*BLOCK_SIZE, BLOCK_SIZE);
                fetch(A[i]+b*BLOCK_SIZE, BLOCK_SIZE, 22, 4);
                __asm__ volatile (                                   
                "lw t0, 0(%0)\n"
                "mul t1, x22, t0\n"
                "add x18, x18, t1\n"  
                
                "lw t0, 4(%0)\n"
                "mul t1, x23, t0\n"
                "add x18, x18, t1\n"                

                "lw t0, 8(%0)\n"
                "mul t1, x24, t0\n"
                "add x18, x18, t1\n"  

                "lw t0, 12(%0)\n"
                "mul t1, x25, t0\n"
                "add x18, x18, t1\n"  
                :
                :"r"(B[Cj*BLOCK_SIZE] + (b * BLOCK_SIZE))
                :"t0", "t1", "x18", "x22", "x23", "x24", "x25"
                );

                __asm__ volatile (                                   
                "lw t0, 0(%0)\n"
                "mul t1, x22, t0\n"
                "add x19, x19, t1\n"  
                
                "lw t0, 4(%0)\n"
                "mul t1, x23, t0\n"
                "add x19, x19, t1\n"                

                "lw t0, 8(%0)\n"
                "mul t1, x24, t0\n"
                "add x19, x19, t1\n"  

                "lw t0, 12(%0)\n"
                "mul t1, x25, t0\n"
                "add x19, x19, t1\n"  
                :
                :"r"(B[Cj*BLOCK_SIZE+1]+(b * BLOCK_SIZE))
                : "t0", "t1", "x19", "x22", "x23", "x24", "x25"
                );

                __asm__ volatile (                                   
                "lw t0, 0(%0)\n"
                "mul t1, x22, t0\n"
                "add x20, x20, t1\n"  
                
                "lw t0, 4(%0)\n"
                "mul t1, x23, t0\n"
                "add x20, x20, t1\n"                

                "lw t0, 8(%0)\n"
                "mul t1, x24, t0\n"
                "add x20, x20, t1\n"  

                "lw t0, 12(%0)\n"
                "mul t1, x25, t0\n"
                "add x20, x20, t1\n"  
                :
                :"r"(B[Cj*BLOCK_SIZE+2]+(b * BLOCK_SIZE))
                : "t0", "t1", "x20", "x22", "x23", "x24", "x25"
                );

                __asm__ volatile (                                   
                "lw t0, 0(%0)\n"
                "mul t1, x22, t0\n"
                "add x21, x21, t1\n"  
                
                "lw t0, 4(%0)\n"
                "mul t1, x23, t0\n"
                "add x21, x21, t1\n"                

                "lw t0, 8(%0)\n"
                "mul t1, x24, t0\n"
                "add x21, x21, t1\n"  

                "lw t0, 12(%0)\n"
                "mul t1, x25, t0\n"
                "add x21, x21, t1\n"  
                :
                :"r"(B[Cj*BLOCK_SIZE+3]+(b * BLOCK_SIZE))
                : "t0", "t1", "x21", "x22", "x23", "x24", "x25"
                );
            }
        // saveBlock_row(C_reg_block, result, i, Cj*BLOCK_SIZE, BLOCK_SIZE);
        save(C[i]+Cj*BLOCK_SIZE, BLOCK_SIZE, BASEREG_C, 4);
        // printMatrix(C);
        // printf("\n");
        }
           
    }

    
}


int main(int argc, char *argv[]) {

    int flag = 11;
      __asm__ volatile (                                   
    "mv x31, %0\n"
    :
    : "r"(flag)
    : "x31"
    );
  
    multiplyMatrices(A, B, C);

    flag = 22;
      __asm__ volatile (                                   
    "mv x31, %0\n"
    :
    : "r"(flag)
    : "x31"
    );

    // Calculate the sum of the result matrix
    int result_sum = 0;
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            result_sum += C[i][j];
            // printf("%d \n", C[i][j]);
        }
    }

    
    __asm__ volatile (                                   
    "mv x31, %0\n"
    :
    : "r"(result_sum)
    : "x31"
    );
    
    printf("sum %d", result_sum);

    return 0;
}
