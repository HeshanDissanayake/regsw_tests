#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define P1_REG 28
#define P2_REG 29

#define INCR_MODE 1

static inline void enable_pointers() {
    //enable pointers
    __asm__ volatile ("regsw_c x0, 123(x0)\n":::);
}

static inline void load_mem_location(int *src){
    __asm__ volatile ("mv t0, %0\n":: "r"(src): "t0");
}




static inline void set_pointer(int pointer_reg, int mode, int base_reg){
    
    __asm__ volatile ("regsw_c x%0, %1(x%2)\n":: "i"(mode), "i"(base_reg), "i"(pointer_reg):);

}



static inline void fetch(int pointer_reg, int *src, int len, int base_reg, int data_len) {
    
    load_mem_location(src);
    
    //set a pointer to the base register
    set_pointer(pointer_reg, INCR_MODE, base_reg);

    
    #pragma GCC unroll 64
    for(int i = 0; i < len; i++){
        __asm__ volatile (                                   
        "lw x%0, %1(t0)\n"                
        :
        :"i"(pointer_reg), "i"(i * data_len)
        : 
        );
    }
}

static inline void fetch_with_compute(int pointer_reg, int *src, int len, int base_reg, int data_len) {
    
    load_mem_location(src);
    //set a pointer to the base register
    set_pointer(pointer_reg, INCR_MODE, base_reg);

    
    #pragma GCC unroll 64
    for(int i = 0; i < len; i++){
        __asm__ volatile (                                   
        "lw x%0, %1(t0)\n"                
        :
        :"i"(pointer_reg), "i"(i * data_len)
        : 
        );
    }
}

static inline void save(int pointer_reg, int *src, int len, int base_reg, int data_len) {
    load_mem_location(src);

    //set a pointer to the base register

    set_pointer(pointer_reg, INCR_MODE, base_reg);

    #pragma GCC unroll 64
    for(int i = 0; i < len; i++){
        __asm__ volatile (                                   
        "sw x%0, %1(t0)\n"                
        :
        :"i"(pointer_reg), "i"(i * data_len)
        : 
        );
    }
}

static inline void init_regs(int pointer_reg, int len, int base_reg, int data_len) {
    set_pointer(pointer_reg, INCR_MODE, base_reg);

    #pragma GCC unroll 64
    for(int i = 0; i < len; i++){
        __asm__ volatile (                                   
        "addi x%0, x0, 0\n"::"i"(pointer_reg):);
    }
}