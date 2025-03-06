#include <stdio.h>
#include "matmul.h"

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "matmul.h"

#define BLOCK_SIZE 2    // Define the block size for tiling



void static inline  multiply_block_2x2(int *A_row0, int *A_row1, int *B_row0, int *B_row1) { 
         asm volatile (
        // Load A matrix (two separate rows)
        "lw x12, 0(%0)\n"  // A[0][0]
        "lw x13, 4(%0)\n"  // A[0][1]
        "lw x14, 0(%1)\n"  // A[1][0]
        "lw x15, 4(%1)\n"  // A[1][1]

        
        // Load B matrix (two separate rows)
        "lw x16, 0(%2)\n"  // B[0][0]
        "lw x18, 4(%2)\n"  // B[1][0]
        "lw x17, 0(%3)\n"  // B[0][1]
        "lw x19, 4(%3)\n"  // B[1][1]
        

        // Compute and accumulate C[0][0] = C[0][0] + A[0][0] * B[0][0] + A[0][1] * B[1][0]
        "mul t0, x12, x16\n"  // A[0][0] * B[0][0]
        "mul t1, x13, x18\n"  // A[0][1] * B[1][0]
        "add x20, x20, t0\n"  // C[0][0] += A[0][0] * B[0][0]
        "add x20, x20, t1\n"  // C[0][0] += A[0][1] * B[1][0]

        // Compute and accumulate C[0][1] = C[0][1] + A[0][0] * B[0][1] + A[0][1] * B[1][1]
        "mul t0, x12, x17\n"  // A[0][0] * B[0][1]
        "mul t1, x13, x19\n"  // A[0][1] * B[1][1]
        "add x21, x21, t0\n"  // C[0][1] += A[0][0] * B[0][1]
        "add x21, x21, t1\n"  // C[0][1] += A[0][1] * B[1][1]

        // Compute and accumulate C[1][0] = C[1][0] + A[1][0] * B[0][0] + A[1][1] * B[1][0]
        "mul t0, x14, x16\n"  // A[1][0] * B[0][0]
        "mul t1, x15, x18\n"  // A[1][1] * B[1][0]
        "add x22, x22, t0\n"  // C[1][0] += A[1][0] * B[0][0]
        "add x22, x22, t1\n"  // C[1][0] += A[1][1] * B[1][0]

        // Compute and accumulate C[1][1] = C[1][1] + A[1][0] * B[0][1] + A[1][1] * B[1][1]
        "mul t0, x14, x17\n"  // A[1][0] * B[0][1]
        "mul t1, x15, x19\n"  // A[1][1] * B[1][1]
        "add x23, x23, t0\n"  // C[1][1] += A[1][0] * B[0][1]
        "add x23, x23, t1\n"  // C[1][1] += A[1][1] * B[1][1]

        : 
        : "r"(A_row0), "r"(A_row1), "r"(B_row0), "r"(B_row1)
        : "x12", "x13", "x14", "x15", "x16", "x17", "x18", "x19",
          "x20", "x21", "x22", "x23", "t0", "t1"
    );
}

void multiplyMatrices_B2(int A[SIZE][SIZE], int B[SIZE][SIZE], int C[SIZE][SIZE]) {
    
    // Iterate over matrix blocks
    for (int bi = 0; bi < SIZE; bi += BLOCK_SIZE) {
        for (int bj = 0; bj < SIZE; bj += BLOCK_SIZE) {
            
            __asm__ volatile (
             // Store accumulated C matrix back to memory
            "mv x20, x0\n"  // C[0][0]
            "mv x21, x0\n"  // C[0][1]
            "mv x22, x0\n"  // C[1][0]
            "mv x23, x0\n" // C[1][1]
            :
            : "r"(C[bi] + bj) // Input operands: C matrix pointer
            :
            ); 
            for (int bk = 0; bk < SIZE; bk += BLOCK_SIZE) {
               
                multiply_block_2x2(&A[bi][bk],&A[bi+1][bk], &B[bj][bk], &B[bj+1][bk]);
            }

            __asm__ volatile (
             // Store accumulated C matrix back to memory
            "sw x20, 0(%0)\n"  // C[0][0]
            "sw x21, 4(%0)\n"  // C[0][1]
            "sw x22, 0(%1)\n"  // C[1][0]
            "sw x23, 4(%1)\n" // C[1][1]
            :
            : "r"(C[bi] + bj), "r"(C[bi+1] + bj) // Input operands: C matrix pointer
            : 
            );

        }
    }
}

