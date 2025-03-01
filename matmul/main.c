#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdint.h>
#include "matrices.h"
#include "matmul.h"



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

static inline uint64_t read_cycle() {
    uint64_t cycles;
    __asm__ volatile ("csrr %0, mcycle" : "=r"(cycles));
    return cycles;
}


int main(int argc, char *argv[]) {    


    uint64_t c1_extraReg = read_cycle();  
    multiplyMatrices_extraReg(A, B, C2);
    uint64_t c2_extraReg = read_cycle();  
    uint64_t cycles_extraReg = c2_extraReg - c1_extraReg; //2539136


    uint64_t c1_norm = read_cycle();  
    multiplyMatrices_normal(A, BT, C1);
    uint64_t c2_norm = read_cycle();  
    uint64_t cycles_norm = c2_norm - c1_norm; //2539136



    
    // Calculate the sum of the result matrix
    uint64_t result_sum_norm = 0;
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            result_sum_norm += C1[i][j];
        }
    }

   

    
    // Calculate the sum of the result matrix
    uint64_t result_sum_extraReg = 0;
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            result_sum_extraReg += C2[i][j];
        }
    }

    __builtin_trap(); 
    
   


    return 0;
}

