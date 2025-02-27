#include <stdio.h>
#include <stdlib.h>
#include <time.h>


static inline void fetch(int *src, int len, int base_reg, int data_len) {
    __asm__ volatile (                                   
        "mv t0, %0\n"
        :
        : "r"(src)
        : "t0"
    );

    for(int i = 0; i < len; i++){
        __asm__ volatile (                                   
        "lw x%0, %1(t0)\n"                
        :
        : "i"(base_reg + i), "i"(i * data_len)
        : 
        );
    }
}

static inline void save(int *dest, int len, int base_reg, int data_len) {
    __asm__ volatile (                                   
        "mv t0, %0\n"
        :
        : "r"(dest)
        : "t0"
    );

    for(int i = 0; i < len; i++){
        __asm__ volatile (                                   
        "sw x%0, %1(t0)\n"                
        :
        : "i"(base_reg + i), "i"(i * data_len)
        : "t0"
        );
    }
}

static inline void init_regs(int val, int len, int base_reg, int data_len) {
    for(int i = 0; i < len; i++){
        __asm__ volatile (                                   
        "add x%0, x0, %1\n"                
        :
        : "i"(base_reg + i), "i"(val)
        : 
        );
    }
}