#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "matmul.h"
#include "reg_pointer_B8.c"


#define BLOCK_SIZE 8

#define BASEREG_A 16
#define BASEREG_C 48


// Function to multiply two matrices with memory operation tracking
void multiplyMatrices_extraReg_V8(int A[SIZE][SIZE], int B[SIZE][SIZE], int C[SIZE][SIZE]) {
    enable_pointers();
    int NUM_SIZE = SIZE / BLOCK_SIZE;  // Number of blocks
    
    int temp = 0;

    for(int Cj=0; Cj<NUM_SIZE; Cj++){


        for (int i = 0; i < SIZE; i++) {

            // init_P2_8();

            for (int b = 0; b < NUM_SIZE; b++) {
                
            //    set_pointer_P2_8();                
            //    fetch_P1_16_compute(A[i]+b*BLOCK_SIZE, B[Cj*BLOCK_SIZE]);
               fetch_P1_8(A[i]+b*BLOCK_SIZE);
                

               for (int j = Cj*BLOCK_SIZE ; j < (Cj+1)*BLOCK_SIZE; j++) {  
                    set_pointer_P1_8();
                    __asm__ volatile (                                   
                        "add %0, x0, x0\n"  
                       
                        : "+r"(temp)                       
                        );
                    
                    int* B_ptr = B[j] + (b * BLOCK_SIZE);
                    
                        int mul_result_1;
                        int mul_result_2;
                        int mul_result_3;
                        int mul_result_4;
                        
                        // C_reg_block[j - Cj*BLOCK_SIZE] += A_reg_block[k]* B[b * BLOCK_SIZE + k][j];
                        __asm__ volatile (                                   
                        "lw %5, 0(%9)\n"
                        "lw %6, 4(%9)\n"
                        "lw %7, 8(%9)\n"
                        "lw %8, 12(%9)\n"

                        "mulw %5, x28, %5\n"
                        "addw %0, %0, %5\n"  

                        "mulw %6, x28, %6\n"
                        "addw %0, %0, %6\n"  

                        "mulw %7, x28, %7\n"
                        "addw %0, %0, %7\n"  

                        "mulw %8, x28, %8\n"
                        "addw %0, %0, %8\n"  

                        "lw %5, 16(%9)\n"
                        "lw %6, 20(%9)\n"
                        "lw %7, 24(%9)\n"
                        "lw %8, 28(%9)\n"

                        "mulw %5, x28, %5\n"
                        "addw %0, %0, %5\n"  

                        "mulw %6, x28, %6\n"
                        "addw %0, %0, %6\n"  

                        "mulw %7, x28, %7\n"
                        "addw %0, %0, %7\n"  

                        "mulw %8, x28, %8\n"
                        "addw %0, %0, %8\n"       
                     
                       
                        :"+r"(temp)
                        :"i"(0),  "i"(0), "i"(0), "i"(0),  "r"(mul_result_1), "r"(mul_result_2) , "r"(mul_result_3), "r"(mul_result_4), "r"(B_ptr)
                        : 
                        );
                        
                    //     if((j-Cj*BLOCK_SIZE) == 0){
                    //         mul_result_1 = 0;
                    //     }else if((j-Cj*BLOCK_SIZE) == 1){
                    //         mul_result_1 = mul_result_1 + 1;
                    //     }else if((j-Cj*BLOCK_SIZE) == 2){
                    //         mul_result_1 = mul_result_1 + 2;
                    //     }else if((j-Cj*BLOCK_SIZE) == 3){
                    //         mul_result_1 = mul_result_1 + 3;
                    //     }else if((j-Cj*BLOCK_SIZE) == 4){
                    //         mul_result_1 = mul_result_1 + 4;
                    //     }else if((j-Cj*BLOCK_SIZE) == 5){
                    //         mul_result_1 = mul_result_1 + 5;
                    //     }else if((j-Cj*BLOCK_SIZE) == 6){
                    //         mul_result_1 = mul_result_1 + 6;
                    //     }else if((j-Cj*BLOCK_SIZE) == 7){
                    //         mul_result_1 = mul_result_1 + 7;
                    //     }

                    // __asm__ volatile ("add x29, %0, x29\n"::"r"(temp):);
                    C[i][j] += temp;
                    

                }
            }
            // save_P2_8(C[i]+Cj*BLOCK_SIZE);
        }
           
    }
    disable_pointers();
    
}