#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "matmul.h"

#define BLOCK_SIZE 4    // Define the block size for tiling
#define BASEREG_B 32    // Define the base register for B matrix
#define BASEREG_C 64    // Define the base register for C matrix
#define STRINGIFY(x) #x
#define PRAGMA_UNROLL(x) _Pragma(STRINGIFY(GCC unroll x))

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



static inline void load_A(int *A_row){
   __asm__ volatile (
        //load A[row_0]
        //set B pointer -> 0
        
        "lw x20,  0(%0)\n"  // A[0][0]
        "lw x21,  4(%0)\n"  // A[0][1]
        "lw x22,  8(%0)\n"  // A[0][2]
        "lw x23, 12(%0)\n"  // A[0][3]
   
        ::"r"(A_row):);

};


static inline void load_B(int *B_row){
   __asm__ volatile (
       
        //load B[row_0]
        "lw x28,  0(%0)\n"  // B[0][0]
        "lw x28,  4(%0)\n"  // B[0][1]
        "lw x28,  8(%0)\n"  // B[0][2]
        "lw x28, 12(%0)\n"  // B[0][3]
   
        ::"r"(B_row):);

};



static inline void multiply_block_4x4_B2(int A[SIZE][SIZE], int B[SIZE][SIZE] , int bi, int bj, int bk){
                 

      load_A(&A[bi][bk]);
      
      set_pointer_P1(BASEREG_B);
      
      PRAGMA_UNROLL(BLOCK_SIZE)
      for(int i = 0; i < BLOCK_SIZE; i++){
         load_B(&B[bj+i][bk]);

         //set B pointer -> 0 | C pointer -> 0
         set_pointer_P1(BASEREG_B + i*BLOCK_SIZE);
         set_pointer_P2(BASEREG_C);
         // Compute +=c[0]..
         compute();
      }

      // set_pointer_P1(BASEREG_B + 16); / no need of this
      
      PRAGMA_UNROLL(BLOCK_SIZE)
      for(int i = 0; i < BLOCK_SIZE; i++){
         load_B(&B[bj+(SIZE/2)+i][bk]);
         
         //set B pointer -> 0 | C pointer -> 0
         set_pointer_P1(BASEREG_B+ 16 + i*BLOCK_SIZE);
         set_pointer_P2(BASEREG_C+ 16);
         // Compute +=c[0]..
         compute();
      }


//--------- B is now fully loaded ----------------


      set_pointer_P1(BASEREG_B);

      PRAGMA_UNROLL(BLOCK_SIZE)
      for  (int i = 1; i<BLOCK_SIZE; i++){
         
         load_A(&A[bi+i][bk]);
         set_pointer_P1(BASEREG_B);

         PRAGMA_UNROLL(BLOCK_SIZE)
         for  (int j = 0; j<BLOCK_SIZE; j++){
            // C pointer -> 48 + 4
            set_pointer_P2(BASEREG_C+ i*BLOCK_SIZE );
            // Compute +=c[1]..
            compute();
         }

         // set_pointer_P1(BASEREG_B +16); // no need of this

         PRAGMA_UNROLL(BLOCK_SIZE)
         for  (int j = 0; j<BLOCK_SIZE; j++){
            // C pointer -> 48 + 4
            set_pointer_P2(BASEREG_C +16+ i*BLOCK_SIZE );
            // Compute +=c[1]..
            compute();
         }
      }

  
}


static inline void init_C(){
   set_pointer_P2(BASEREG_C+0);
   __asm__ volatile (
              
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

   set_pointer_P2(BASEREG_C+16);
   __asm__ volatile (
              
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
}

void multiplyMatrices_B4x2(int A[SIZE][SIZE], int B[SIZE][SIZE], int C[SIZE][SIZE]) {
     __asm__ volatile (
        "nop\n"
        "nop\n"
        "nop\n"
        "regsw_c x0, 123(x0)\n":::);

    // Iterate over matrix blocks
    for (int bi = 0; bi < SIZE; bi += BLOCK_SIZE) {
        for (int bj = 0; bj < SIZE/2; bj += BLOCK_SIZE) {
            
            init_C();
            
            for (int bk = 0; bk < SIZE; bk += BLOCK_SIZE) {
               
               multiply_block_4x4_B2(A,B, bi, bj, bk);
               
               
            }

            set_pointer_P2(BASEREG_C);
            __asm__ volatile (
            
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

            set_pointer_P2(BASEREG_C+ 16);
            __asm__ volatile (
            
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
            : "r"(C[bi] + bj+SIZE/2), "r"(C[bi+1] + bj+SIZE/2), "r"(C[bi+2] + bj+SIZE/2), "r"(C[bi+3] + bj+SIZE/2) // Input operands: C matrix pointer
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

