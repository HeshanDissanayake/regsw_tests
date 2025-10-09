
#include <stdio.h>
#include <stdint.h>
#include "config.h"
#include "conv.h"



static inline uint64_t read_cycle() {
    uint64_t cycles;
    asm volatile ("csrr %0, 0x814" : "=r"(cycles));
    return cycles;
}

int main() {
    int output[N - K + 1][N - K + 1];

    uint64_t start, end, c_normal, c_regsw;
    printf("N, K: %d, %d\n", N, K);
    start = read_cycle();  
    conv2d_normal(output);
    end = read_cycle();  
    c_normal = end - start;
    printf("Normal conv2d cycles: %lu\n", c_normal);

    start = read_cycle();  
    conv2d_regsw(output);
    end = read_cycle();
    c_regsw = end - start;  
    printf("Regsw conv2d cycles: %lu\n", c_regsw);

    __builtin_trap(); 

    return 0;
}