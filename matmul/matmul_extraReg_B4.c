#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "matmul.h"

#define BLOCK_SIZE 4    // Define the block size for tiling
#define BASEREG_B 32    // Define the base register for B matrix
#define BASEREG_C 48    // Define the base register for C matrix

static inline void compute(){
    __asm__ volatile(
        "mul x16, x28, x20\n"
        "mul x17, x28, x21\n"
        "mul x18, x28, x22\n"
        "mul x19, x28, x23\n"
        "add x29, x29, x16\n"
        "add x29, x29, x17\n"
        "add x29, x29, x18\n"
        "add x29, x29, x19\n" :::"x16", "x17", "x18", "x19","x20", "x21", "x22", "x23");
   
}


static inline void set_pointer_P1(int target){
    
    __asm__ volatile ("regsw_c x1, %0(x28)\n"::"i"(target));

}


static inline void set_pointer_P2(int target){
    
    __asm__ volatile ("regsw_c x1, %0(x29)\n"::"i"(target));

}



static inline void load_A_B(int *A_row, int *B_row){

   
};

static inline void multiply_block_4x4_V2(int *A_row0, int *A_row1, int *A_row2,int *A_row3,  int *B_row0, int *B_row1, int *B_row2, int *B_row3){
                 

      set_pointer_P1(BASEREG_B);
      __asm__ volatile (
        //load A[row_0]
        //set B pointer -> 0
        

        "lw x20,  0(%0)\n"  // A[0][0]
        "lw x21,  4(%0)\n"  // A[0][1]
        "lw x22,  8(%0)\n"  // A[0][2]
        "lw x23, 12(%0)\n"  // A[0][3]
         
        //load B[row_0]
        "lw x28,  0(%1)\n"  // B[0][0]
        "lw x28, 4(%1)\n"  // B[0][1]
        "lw x28, 8(%1)\n"  // B[0][2]
        "lw x28, 12(%1)\n"  // B[0][3]
   
        ::"r"(A_row0), "r"(B_row0):"x20", "x21", "x22", "x23");
      
      
      //set B pointer -> 0 | C pointer -> 0
      set_pointer_P2(BASEREG_C);
      set_pointer_P1(BASEREG_B);

      // Compute +=c[0]..
      compute();


    __asm__ volatile (
        //load B[row_1]
        "lw x28,  0(%0)\n"  // B[0][0]
        "lw x28,  4(%0)\n"  // B[0][1]
        "lw x28,  8(%0)\n"  // B[0][2]
        "lw x28, 12(%0)\n"  // B[0][3]
        //set B pointer -> 0 | C pointer -> 0
        "regsw_c x1, 48(x29)\n"
        "regsw_c x1, %1(x28)\n"

        ::"r"(B_row1), "i"(BASEREG_B+4) :);
        
        // Compute += c[0]..
        compute();

     __asm__ volatile (
        //load B[row_1]
        "lw x28,  0(%0)\n"  // B[0][0]
        "lw x28,  4(%0)\n"  // B[0][1]
        "lw x28,  8(%0)\n"  // B[0][2]
        "lw x28, 12(%0)\n"  // B[0][3]
        //set B pointer -> 0 | C pointer -> 0
        "regsw_c x1, 48(x29)\n"
        "regsw_c x1, %1(x28)\n"

        ::"r"(B_row2), "i"(BASEREG_B+8) :);
        
        // Compute += c[0]..
        compute();

     __asm__ volatile (
        //load B[row_1]
        "lw x28,  0(%0)\n"  // B[0][0]
        "lw x28,  4(%0)\n"  // B[0][1]
        "lw x28,  8(%0)\n"  // B[0][2]
        "lw x28, 12(%0)\n"  // B[0][3]
        //set B pointer -> 0 | C pointer -> 0
        "regsw_c x1, 48(x29)\n"
        "regsw_c x1, %1(x28)\n"

        ::"r"(B_row3), "i"(BASEREG_B+12):);
        
        // Compute += c[0]...
        compute();


//--------- B is now fully loaded ----------------

//--------- A[1]*B = C[1]-------------------------
    set_pointer_P1(BASEREG_B);

    __asm__ volatile (
        //load A[row_1]
        //set B pointer -> 0
        

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
   set_pointer_P1(BASEREG_B);

    __asm__ volatile (
        //load A[row_2]
        //set B pointer -> 0
        

        "lw x20,  0(%0)\n"  // A[1][0]
        "lw x21,  4(%0)\n"  // A[1][1]
        "lw x22,  8(%0)\n"  // A[1][2]
        "lw x23, 12(%0)\n"  // A[1][3]
         
        "regsw_c x1, 56(x29)\n"
         
        // C pointer -> 48 + 8

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
    set_pointer_P1(BASEREG_B);

    __asm__ volatile (
        //load A[row_3]
        //set B pointer -> 0
        

        "lw x20,  0(%0)\n"  // A[1][0]
        "lw x21,  4(%0)\n"  // A[1][1]
        "lw x22,  8(%0)\n"  // A[1][2]
        "lw x23, 12(%0)\n"  // A[1][3]
         
         
        // C pointer -> 48 + 12
        "regsw_c x1, 60(x29)\n"

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
              "regsw_c x1, 48(x29)\n"      
              "add x29, x0, x0\n"      
              "add x29, x0, x0\n"      
              "add x29, x0, x0\n"      
              "add x29, x0, x0\n"      

              "add x29, x0, x0\n"      
              "add x29, x0, x0\n"      
              "add x29, x0, x0\n"      
              "add x29, x0, x0\n"      

              "add x29, x0, x0\n"      
              "add x29, x0, x0\n"      
              "add x29, x0, x0\n"      
              "add x29, x0, x0\n"      

              "add x29, x0, x0\n"      
              "add x29, x0, x0\n"      
              "add x29, x0, x0\n"      
              "add x29, x0, x0\n"      
            ::); 
            
            for (int bk = 0; bk < SIZE; bk += BLOCK_SIZE) {
               
               multiply_block_4x4_V2(&A[bi][bk], &A[bi+1][bk], &A[bi+2][bk], &A[bi+3][bk],\
                                     &B[bj][bk], &B[bj+1][bk], &B[bj+2][bk], &B[bj+3][bk]);
            }

            __asm__ volatile (
            "regsw_c x1, 48(x29)\n"  
             // Store accumulated C matrix back to memory
            "sw x29, 0(%0)\n"  
            "sw x29, 4(%0)\n"  
            "sw x29, 8(%0)\n"  
            "sw x29, 12(%0)\n"  

            "sw x29, 0(%1)\n"  
            "sw x29, 4(%1)\n"  
            "sw x29, 8(%1)\n"  
            "sw x29, 12(%1)\n"  

            "sw x29, 0(%2)\n"  
            "sw x29, 4(%2)\n"  
            "sw x29, 8(%2)\n"  
            "sw x29, 12(%2)\n"  

            "sw x29, 0(%3)\n"  
            "sw x29, 4(%3)\n"  
            "sw x29, 8(%3)\n"  
            "sw x29, 12(%3)\n"  

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

