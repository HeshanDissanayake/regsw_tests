#include <inttypes.h>


int get_regsw_hits(){
    int hits;

    asm volatile ("csrr %0, 0x80b" : "=r"(hits));
    return hits;
}

int get_regsw_misses(){
    int misses;

    asm volatile ("csrr %0, 0x80c" : "=r"(misses));
    return misses;
}


void clear_regsw_cache(){
    int clear;

    asm volatile ("csrr %0, 0x80d" : "=r"(clear));
}

uint64_t get_cycles(){
    int cycles;
    asm volatile ("csrr %0, 0x814" : "=r"(cycles));
    return cycles;
}

void set_debug(int val){
    
    asm volatile ("csrw 0x808, %0" : : "r"(val));
}



uint64_t get_li(){
    int cycles;
    asm volatile ("csrr %0, 0x80f" : "=r"(cycles));
    return cycles;
}

uint64_t get_ld(){
    int cycles;
    asm volatile ("csrr %0, 0x811" : "=r"(cycles));
    return cycles;
}

uint64_t get_lw(){
    int cycles;
    asm volatile ("csrr %0, 0x810" : "=r"(cycles));
    return cycles;
}

uint64_t get_sd(){
    int cycles;
    asm volatile ("csrr %0, 0x813" : "=r"(cycles));
    return cycles;
}

uint64_t get_sw(){
    int cycles;
    asm volatile ("csrr %0, 0x812" : "=r"(cycles));
    return cycles;
}