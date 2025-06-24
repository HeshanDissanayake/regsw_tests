
#include <stdio.h>
#include <stdint.h>
#include "config.h"
#include "conv.h"



static inline uint64_t read_cycle() {
    uint64_t cycles;
    __asm__ volatile ("csrr %0, mcycle" : "=r"(cycles));
    return cycles;
}

int main() {
    int output[N - K + 1][N - K + 1];

    uint64_t start, end, c_normal, c_regsw;
    
    start = read_cycle();  
    conv2d_normal(output);
    end = read_cycle();  
    c_normal = end - start;


    start = read_cycle();  
    conv2d_regsw(output);
    end = read_cycle();
    c_regsw = end - start;  

    __builtin_trap(); 

    return 0;
}