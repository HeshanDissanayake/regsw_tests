#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "reg_pointer.c"
#include "matrices.h"

#define SIZE 32
#define BLOCK_SIZE 16

#define BASEREG_A 32
#define BASEREG_C 48


// Function to multiply two matrices with memory operation tracking
void multiplyMatrices(int A[SIZE][SIZE], int B[SIZE][SIZE], int result[SIZE][SIZE]) {
    enable_pointers();
    int NUM_SIZE = SIZE / BLOCK_SIZE;  // Number of blocks
    int temp = 0;

    for(int Cj=0; Cj<NUM_SIZE; Cj++){

        for (int i = 0; i < SIZE; i++) {

           init_regs(P2_REG, BLOCK_SIZE, BASEREG_C, 4);// initialize matrix C block

            for (int b = 0; b < NUM_SIZE; b++) {
                
               fetch(P1_REG, A[i]+b*BLOCK_SIZE, BLOCK_SIZE, BASEREG_A, 4);
               set_pointer(P2_REG, INCR_MODE, BASEREG_C);
                
               for (int j = Cj*BLOCK_SIZE; j < (Cj+1)*BLOCK_SIZE; j++) {  
                    set_pointer(P1_REG, INCR_MODE, BASEREG_A);
                    __asm__ volatile (                                   
                        "add %0, x0, x0\n"  
                       
                        :
                        : "r"(temp)
                        : 
                        );
                    
                    int* B_ptr = B[j] + (b * BLOCK_SIZE);
                    // temp = 1;

                    #pragma GCC unroll 16
                    for (int k = 0; k < BLOCK_SIZE; k += 4) {
                        int mul_result_1;
                        int mul_result_2;
                        int mul_result_3;
                        int mul_result_4;
                        
                        // C_reg_block[j - Cj*BLOCK_SIZE] += A_reg_block[k]* B[b * BLOCK_SIZE + k][j];
                        __asm__ volatile (                                   
                        "lw %5, %1(%0)\n"
                        "lw %6, %2(%0)\n"
                        "lw %7, %3(%0)\n"
                        "lw %8, %4(%0)\n"

                        "mulw %5, x28, %5\n"
                        "addw %9, %9, %5\n"  

                        "mulw %6, x28, %6\n"
                        "addw %9, %9, %6\n"  

                        "mulw %7, x28, %7\n"
                        "addw %9, %9, %7\n"  

                        "mulw %8, x28, %8\n"
                        "addw %9, %9, %8\n"                         
                       
                        :
                        :"r"(B_ptr), "i"(k*4),  "i"((k+1)*4), "i"((k+2)*4), "i"((k+3)*4),  "r"(mul_result_1), "r"(mul_result_2) , "r"(mul_result_3), "r"(mul_result_4), "r"(temp)
                        : 
                        );
                    }

                    __asm__ volatile (                                   
                        "add x29, %0, x29\n"
                        :
                        :"r"(temp)
                        :
                    );
                    

                }
            }
        
            save(P2_REG,C[i]+Cj*BLOCK_SIZE, BLOCK_SIZE, BASEREG_C, 4);
        }
           
    }
    enable_pointers();
    
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
