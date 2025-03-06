#include <stdio.h>
#include "matmul.h"

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "matmul.h"

#define BLOCK_SIZE 4    // Define the block size for tiling

void static inline multiply_block_4x4(int *A_row0,  int *A_row1,int *A_row2, int *A_row3, int *B_row0, int *B_row1,int *B_row2, int *B_row3) { 
        __asm__ volatile (
        //set A pointer
        "regsw_c x1, 32(x28)\n"
        //set B pointer
        "regsw_c x1, 48(x29)\n"

        // Load A matrix (4 rows × 4 columns)
        "lw x28,  0(%0)\n"  // A[0][0]
        "lw x28,  4(%0)\n"  // A[0][1]
        "lw x28,  8(%0)\n"  // A[0][2]
        "lw x28, 12(%0)\n"  // A[0][3]

        "lw x28,  0(%1)\n"  // A[1][0]
        "lw x28,  4(%1)\n"  // A[1][1]
        "lw x28,  8(%1)\n"  // A[1][2]
        "lw x28, 12(%1)\n"  // A[1][3]

        "lw x28,  0(%2)\n"  // A[2][0]
        "lw x28,  4(%2)\n"  // A[2][1]
        "lw x28,  8(%2)\n"  // A[2][2]
        "lw x28, 12(%2)\n"  // A[2][3]

        "lw x28,  0(%3)\n"  // A[3][0]
        "lw x28,  4(%3)\n"  // A[3][1]
        "lw x28,  8(%3)\n"  // A[3][2]
        "lw x28, 12(%3)\n"  // A[3][3]

        // Load B matrix (4 rows × 4 columns)
        "lw x29,  0(%4)\n"  // B[0][0]
        "lw x29,  4(%4)\n"  // B[1][0]
        "lw x29,  8(%4)\n"  // B[2][0]
        "lw x29, 12(%4)\n"  // B[3][0]

        "lw x29, 0(%5)\n"   // B[0][1]
        "lw x29, 4(%5)\n"   // B[1][1]
        "lw x29, 8(%5)\n"   // B[2][1]
        "lw x29, 12(%5)\n"   // B[3][1]

        "lw x29, 0(%6)\n"   // B[0][2]
        "lw x29, 4(%6)\n"   // B[1][2]
        "lw x29, 8(%6)\n"   // B[2][2]
        "lw x29, 12(%6)\n"   // B[3][2]

        "lw x29, 0(%7)\n"   //B[0][3]
        "lw x29, 4(%7)\n"   // B[1][3]
        "lw x29, 8(%7)\n"   // B[2][3]
        "lw x29, 12(%7)\n"   //B[3][3]

        
         //set A pointer
        "regsw_c x1, 32(x28)\n"
        //set B pointer
        "regsw_c x1, 48(x29)\n"

        // C[0][0] - x31
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x31, x31, t0\n"
        "add x31, x31, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x31, x31, t0\n"
        "add x31, x31, t1\n"

        //set A pointer
        "regsw_c x1, 32(x28)\n"

        // C[0][1] - x12
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x12, x12, t0\n"
        "add x12, x12, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x12, x12, t0\n"
        "add x12, x12, t1\n"

         //set A pointer
        "regsw_c x1, 32(x28)\n"

        // C[0][2] - x13
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x13, x13, t0\n"
        "add x13, x13, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x13, x13, t0\n"
        "add x13, x13, t1\n"

        //set A pointer
        "regsw_c x1, 32(x28)\n"

        // C[0][3] - x14
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x14, x14, t0\n"
        "add x14, x14, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x14, x14, t0\n"
        "add x14, x14, t1\n"


         //set A pointer
        "regsw_c x1, 36(x28)\n"
        //set B pointer
        "regsw_c x1, 48(x29)\n"

        // C[1][0] - x15
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x15, x15, t0\n"
        "add x15, x15, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x15, x15, t0\n"
        "add x15, x15, t1\n"

         //set A pointer
        "regsw_c x1, 36(x28)\n"

        // C[1][1] - x16
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x16, x16, t0\n"
        "add x16, x16, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x16, x16, t0\n"
        "add x16, x16, t1\n"

        //set A pointer
        "regsw_c x1, 36(x28)\n"

        // C[1][2] - x17
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x17, x17, t0\n"
        "add x17, x17, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x17, x17, t0\n"
        "add x17, x17, t1\n"

         //set A pointer
        "regsw_c x1, 36(x28)\n"

        // C[1][3] - x18
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x18, x18, t0\n"
        "add x18, x18, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x18, x18, t0\n"
        "add x18, x18, t1\n"

         //set A pointer
        "regsw_c x1, 40(x28)\n"
        //set B pointer
        "regsw_c x1, 48(x29)\n"

        // C[2][0] - x19
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x19, x19, t0\n"
        "add x19, x19, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x19, x19, t0\n"
        "add x19, x19, t1\n"

         //set A pointer
        "regsw_c x1, 40(x28)\n"

        // C[2][1] - x20
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x20, x20, t0\n"
        "add x20, x20, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x20, x20, t0\n"
        "add x20, x20, t1\n"

        //set A pointer
        "regsw_c x1, 40(x28)\n"

        // C[2][2] - x21
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x21, x21, t0\n"
        "add x21, x21, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x21, x21, t0\n"
        "add x21, x21, t1\n"

        //set A pointer
        "regsw_c x1, 40(x28)\n"

        // C[2][3] - x22
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x22, x22, t0\n"
        "add x22, x22, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x22, x22, t0\n"
        "add x22, x22, t1\n"

          //set A pointer
        "regsw_c x1, 44(x28)\n"
        //set B pointer
        "regsw_c x1, 48(x29)\n"

        // C[3][0] - x23
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x23, x23, t0\n"
        "add x23, x23, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x23, x23, t0\n"
        "add x23, x23, t1\n"

        // set A pointer
        "regsw_c x1, 44(x28)\n"

        // C[3][1] - x24
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x24, x24, t0\n"
        "add x24, x24, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x24, x24, t0\n"
        "add x24, x24, t1\n"

        // set A pointer
        "regsw_c x1, 44(x28)\n"

        // C[3][2] - x25
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x25, x25, t0\n"
        "add x25, x25, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x25, x25, t0\n"
        "add x25, x25, t1\n"

        // set A pointer
        "regsw_c x1, 44(x28)\n"

        // C[3][3] - x26
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x26, x26, t0\n"
        "add x26, x26, t1\n"
        "mul t0, x28, x29\n"
        "mul t1, x28, x29\n"
        "add x26, x26, t0\n"
        "add x26, x26, t1\n"
      
        : 
        : "r"(A_row0), "r"(A_row1), "r"(A_row2), "r"(A_row3), "r"(B_row0), "r"(B_row1), "r"(B_row2), "r"(B_row3)
        : "x31", "x12", "x13", "x14", "x15", "x16", "x17", "x18", "x19","x20", "x21", "x22", "x23", "x24", "x25", "x26", "t0", "t1"
        );

                           
}


static inline void compute(){
    __asm__ volatile(
        "mul a5, x28, x20\n"
        "mul a6, x28, x21\n"
        "mul a7, x28, x22\n"
        "mul a8, x28, x23\n"
        "add x29, x29, a5\n"
        "add x29, x29, a6\n"
        "add x29, x29, a7\n"
        "add x29, x29, a8\n" :::);
}

static inline void multiply_block_4x4_V2((int *A_row0,  int *B_row0,)){
     __asm__ volatile (
        //load A[row_0]
        //set B pointer -> 0
        "regsw_c x1, 32(x28)\n"

        "lw x20,  0(%0)\n"  // A[0][0]
        "lw x21,  4(%0)\n"  // A[0][1]
        "lw x22,  8(%0)\n"  // A[0][2]
        "lw x23, 12(%0)\n"  // A[0][3]
         
        //load B[row_0]
        "lw x28,  0(%1)\n"  // B[0][0]
        "lw x28,  4(%1)\n"  // B[0][1]
        "lw x28,  8(%1)\n"  // B[0][2]
        "lw x28, 12(%1)\n"  // B[0][3]
       
        //set B pointer -> 0 | C pointer -> 0
        "regsw_c x1, 32(x28)\n"
        "regsw_c x1, 48(x29)\n"

        ::"r"(A_row), "r"(B_row0) :);

        // Compute +=c[0]..
        compute();

    __asm__ volatile (
        //load B[row_1]
        "lw x28,  0(%0)\n"  // B[0][0]
        "lw x28,  4(%0)\n"  // B[0][1]
        "lw x28,  8(%0)\n"  // B[0][2]
        "lw x28, 12(%0)\n"  // B[0][3]
        //set B pointer -> 0 | C pointer -> 0
        "regsw_c x1, 36(x28)\n"
        "regsw_c x1, 48(x29)\n"

        ::"r"(A_row0), "r"(B_row1) :);
        
        // Compute += c[0]..
        compute();

     __asm__ volatile (
        //load B[row_1]
        "lw x28,  0(%0)\n"  // B[0][0]
        "lw x28,  4(%0)\n"  // B[0][1]
        "lw x28,  8(%0)\n"  // B[0][2]
        "lw x28, 12(%0)\n"  // B[0][3]
        //set B pointer -> 0 | C pointer -> 0
        "regsw_c x1, 40(x28)\n"
        "regsw_c x1, 48(x29)\n"

        ::"r"(A_row0), "r"(B_row2) :);
        
        // Compute += c[0]..
        compute();

     __asm__ volatile (
        //load B[row_1]
        "lw x28,  0(%0)\n"  // B[0][0]
        "lw x28,  4(%0)\n"  // B[0][1]
        "lw x28,  8(%0)\n"  // B[0][2]
        "lw x28, 12(%0)\n"  // B[0][3]
        //set B pointer -> 0 | C pointer -> 0
        "regsw_c x1, 44(x28)\n"
        "regsw_c x1, 48(x29)\n"

        ::"r"(A_row0), "r"(B_row3) :);
        
        // Compute += c[0]...
        compute();


//--------- B is now fully loaded ----------------

//--------- A[1]*B = C[1]-------------------------
    __asm__ volatile (
        //load A[row_1]
        //set B pointer -> 0
        "regsw_c x1, 32(x28)\n"

        "lw x20,  0(%0)\n"  // A[1][0]
        "lw x21,  4(%0)\n"  // A[1][1]
        "lw x22,  8(%0)\n"  // A[1][2]
        "lw x23, 12(%0)\n"  // A[1][3]
         
         
        // C pointer -> 48 + 4
        "regsw_c x1, 52(x29)\n"

        ::"r"(A_row1) :);

        // Compute +=c[1]..
        compute();

     __asm__ volatile (     
        // C pointer -> 48 + 4
        "regsw_c x1, 52(x29)\n"
        :::);
        // Compute += c[1]..
        compute();

     __asm__ volatile (
        // C pointer -> 48 + 4
        "regsw_c x1, 52(x29)\n"
        :::);
        // Compute += c[1]..
        compute();

     __asm__ volatile (
       // C pointer -> 48 + 4
        "regsw_c x1, 52(x29)\n"
        :::);
        // Compute += c[1]...
        compute();


//--------- A[2]*B = C[2]-------------------------
    __asm__ volatile (
        //load A[row_2]
        //set B pointer -> 0
        "regsw_c x1, 32(x28)\n"

        "lw x20,  0(%0)\n"  // A[1][0]
        "lw x21,  4(%0)\n"  // A[1][1]
        "lw x22,  8(%0)\n"  // A[1][2]
        "lw x23, 12(%0)\n"  // A[1][3]
         
         
        // C pointer -> 48 + 8
        "regsw_c x1, 56(x29)\n"

        ::"r"(A_row2) :);

        // Compute +=c[2]..
        compute();

     __asm__ volatile (     
        // C pointer -> 48 + 8
        "regsw_c x1, 56(x29)\n"
        :::);
        // Compute += c[2]..
        compute();

     __asm__ volatile (
        // C pointer -> 48 + 8
        "regsw_c x1, 56(x29)\n"
        :::);
        // Compute += c[2]..
        compute();

     __asm__ volatile (
       // C pointer -> 48 + 8
        "regsw_c x1, 56(x29)\n"
        :::);
        // Compute += c[2]...
        compute();

//--------- A[3]*B = C[3]-------------------------
    __asm__ volatile (
        //load A[row_3]
        //set B pointer -> 0
        "regsw_c x1, 32(x28)\n"

        "lw x20,  0(%0)\n"  // A[1][0]
        "lw x21,  4(%0)\n"  // A[1][1]
        "lw x22,  8(%0)\n"  // A[1][2]
        "lw x23, 12(%0)\n"  // A[1][3]
         
         
        // C pointer -> 48 + 12
        "regsw_c x1, 56(x29)\n"

        ::"r"(A_row3) :);

        // Compute +=c[3]..
        compute();

     __asm__ volatile (     
        // C pointer -> 48 + 12
        "regsw_c x1, 60(x29)\n"
        :::);
        // Compute += c[3]..
        compute();

     __asm__ volatile (
        // C pointer -> 48 + 12
        "regsw_c x1, 60(x29)\n"
        :::);
        // Compute += c[3]..
        compute();

     __asm__ volatile (
       // C pointer -> 48 + 12
        "regsw_c x1, 60(x29)\n"
        :::);
        // Compute += c[3]...
        compute();
}


void multiplyMatrices_B4(int A[SIZE][SIZE], int B[SIZE][SIZE], int C[SIZE][SIZE]) {
     __asm__ volatile (
        "nop\n"
        "nop\n"
        "nop\n"
        "regsw_c x0, 123(x0)\n":::);

    // Iterate over matrix blocks
    for (int bi = 0; bi < SIZE; bi += BLOCK_SIZE) {
        for (int bj = 0; bj < SIZE; bj += BLOCK_SIZE) {
            
            __asm__ volatile (
                    "mv x31, x0\n"  
                    "mv x12, x0\n"  
                    "mv x13, x0\n"  
                    "mv x14, x0\n"  
                    
                    "mv x15, x0\n"  
                    "mv x16, x0\n"  
                    "mv x17, x0\n"  
                    "mv x18, x0\n"  
                    
                    "mv x19, x0\n"  
                    "mv x20, x0\n"  
                    "mv x21, x0\n"  
                    "mv x22, x0\n"  
                    
                    "mv x23, x0\n"  
                    "mv x24, x0\n"  
                    "mv x25, x0\n"  
                    "mv x26, x0\n"  
                    
            :
            : "r"(C[bi] + bj) // Input operands: C matrix pointer
            :
            ); 
            
            for (int bk = 0; bk < SIZE; bk += BLOCK_SIZE) {
               
                multiply_block_4x4(&A[bi][bk], &A[bi+1][bk], &A[bi+2][bk], &A[bi+3][bk], &B[bj][bk], &B[bj+1][bk], &B[bj+2][bk], &B[bj+3][bk]);
            }

            __asm__ volatile (
             // Store accumulated C matrix back to memory
            "sw x31, 0(%0)\n"  
            "sw x12, 4(%0)\n"  
            "sw x13, 8(%0)\n"  
            "sw x14, 12(%0)\n"  

            "sw x15, 0(%1)\n"  
            "sw x16, 4(%1)\n"  
            "sw x17, 8(%1)\n"  
            "sw x18, 12(%1)\n"  

            "sw x19, 0(%2)\n"  
            "sw x20, 4(%2)\n"  
            "sw x21, 8(%2)\n"  
            "sw x22, 12(%2)\n"  

            "sw x23, 0(%3)\n"  
            "sw x24, 4(%3)\n"  
            "sw x25, 8(%3)\n"  
            "sw x26, 12(%3)\n"  

            :
            : "r"(C[bi] + bj), "r"(C[bi+1] + bj), "r"(C[bi+2] + bj), "r"(C[bi+3] + bj) // Input operands: C matrix pointer
            : 
            );

        }
    }
     __asm__ volatile (
        "nop\n"
        "nop\n"
        "nop\n"
        "regsw_c x0, 124(x0)\n":::);
}

