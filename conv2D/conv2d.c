#include <stdio.h>
#include <stdint.h>
#include "config.h"
#include "conv.h"



extern int input[N][N];
extern int kernel[K][K];

static inline void set_pointer_P1(int target){
    
    __asm__ volatile ("regsw_c x1, 32(x28)\n"::);

}

void load_kernel(){
   int weight;
   set_pointer_P1(28);
   for (int ki = 0; ki < K; ki++) {
        for (int kj = 0; kj < K; kj++) {
            weight = kernel[ki][kj];
            __asm__ volatile ("ld x28, %0\n"::"m"(weight));
        }
    }
}


void conv2d_normal(int output[N - K + 1][N - K + 1]) {
    for (int i = 0; i <= N - K; i++) {
        for (int j = 0; j <= N - K; j++) {
            int sum = 0;
            for (int ki = 0; ki < K; ki++) {
                for (int kj = 0; kj < K; kj++) {
                    sum += input[i + ki][j + kj] * kernel[ki][kj];
                }
            }
            output[i][j] = sum;
        }
    }
}

void conv2d_regsw(int output[N - K + 1][N - K + 1]) {
    load_kernel();
    for (int i = 0; i <= N - K; i++) {
        for (int j = 0; j <= N - K; j++) {
            int sum = 0;
            for (int ki = 0; ki < K; ki++) {
                for (int kj = 0; kj < K; kj++) {
                    int in = input[i + ki][j + kj];
                    __asm__ volatile ("add %0, x28, %1\n":"=r"(sum):"r"(in));
                }
            }
            output[i][j] = sum;
        }
    }
}



