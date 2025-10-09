#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdint.h>
#include "matrices.h"
#include "matmul.h"
#include "/home/heshds/working_dir/regsw_tests/common/regsw_perf.h"



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
    // __asm__ volatile ("csrr %0, mcycle" : "=r"(cycles));
    cycles = get_cycles();

    return cycles;
}
    


void init_C(){
     for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            C1[i][j]=0;
        }
    }
}


void print_inst_counts(){
    uint64_t lw = get_lw();
    uint64_t li = get_li();
    uint64_t ld = get_ld();

    uint64_t sw = get_sw();
    uint64_t sd = get_sd();
    printf(" lw, %lu\n ld, %lu\n li, %lu\n sw, %lu\n sd, %lu\n ", lw, ld, li, sw, sd);

}

int main(int argc, char *argv[]) {    

    // set_regsw_enable(0);
    
    printf("Matrix Size: %d x %d\n", SIZE, SIZE);

    
    int size = SIZE;
    init_C();
    
    clear_regsw_cache();
    uint64_t c1_b4 = read_cycle();  
    multiplyMatrices_B4(A, B, C1);
    uint64_t c2_b4 = read_cycle();  
    uint64_t cycles_b4 = c2_b4 - c1_b4; //2539136
    printf("\nCycles B4, %lu\n", cycles_b4);
    print_inst_counts();

    // Calculate the sum of the result matrix
    uint64_t result_sum_B4 = 0;
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            result_sum_B4 += C1[i][j];
        }
    }
    
    clear_regsw_cache();
    uint64_t c1_b2 = read_cycle();  
    multiplyMatrices_B2(A, B, C1);
    uint64_t c2_b2 = read_cycle();  
    uint64_t cycles_b2 = c2_b2 - c1_b2; //2539136
    printf("\nCycles B2, %lu\n", cycles_b2);
    print_inst_counts();

     // Calculate the sum of the result matrix
    uint64_t result_sum_B2 = 0;
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            result_sum_B2 += C1[i][j];
        }
    }

   
    clear_regsw_cache();
    uint64_t c1_extraReg_16 = read_cycle();  
    multiplyMatrices_extraReg_V16(A, B, C1);
    uint64_t c2_extraReg_16 = read_cycle();  
    uint64_t cycles_extraReg_16 = c2_extraReg_16 - c1_extraReg_16; 
    printf("\nCycles extraReg_16, %lu\n", cycles_extraReg_16);
    print_inst_counts();

     // Calculate the sum of the result matrix
    uint64_t result_sum_extraReg_16 = 0;
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            result_sum_extraReg_16 += C1[i][j];
        }
    }


    init_C();
    clear_regsw_cache();
    uint64_t c1_b4x2 = read_cycle();  
    multiplyMatrices_B4x2(A, B, C1);
    uint64_t c2_b4x2 = read_cycle();  
    uint64_t cycles_b4x2 = c2_b4x2 - c1_b4x2; //2539136
    printf("\nCycles B4x2, %lu\n", cycles_b4x2);
    print_inst_counts();

     // Calculate the sum of the result matrix
    uint64_t result_sum_B4x2 = 0;
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            result_sum_B4x2 += C1[i][j];
        }
    }


    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            C1[i][j]=0;
        }
    }

    clear_regsw_cache();
    uint64_t c1_extraReg_8 = read_cycle();  
    multiplyMatrices_extraReg_V8(A, B, C1);
    uint64_t c2_extraReg_8 = read_cycle();  
    uint64_t cycles_extraReg_8 = c2_extraReg_8 - c1_extraReg_8; 
    printf("\nCycles extraReg_8, %lu\n", cycles_extraReg_8);
    print_inst_counts();


     // Calculate the sum of the result matrix
    uint64_t result_sum_extraReg_8 = 0;
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            result_sum_extraReg_8 += C1[i][j];
        }
    }

    clear_regsw_cache();
    uint64_t c1_norm = read_cycle();  
    multiplyMatrices_normal(A, BT, C1);
    uint64_t c2_norm = read_cycle();  
    uint64_t cycles_norm = c2_norm - c1_norm; //2539136
    printf("\nCycles normal, %lu\n", cycles_norm);
    print_inst_counts();


     // Calculate the sum of the result matrix
    uint64_t result_sum_norm = 0;
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            result_sum_norm += C1[i][j];
        }
    }

    __builtin_trap(); 
    
   


    return 0;
}

