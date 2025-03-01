// #include "matrices.h"
// #include "reg_pointer.c"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "matrices.h"
#include "reg_pointer_hard.c"

int main(){

    enable_pointers();
    
    fetch_P1_16(A[0]);
    fetch_P2_16(A[0]);

    set_pointer_P2();
    
    __asm__ volatile (  
    
    "add x20, x0, x0\n"
    
    "add x20, x28, x29\n"
    "add x20, x28, x29\n"
    "add x20, x28, x29\n"
    "add x20, x28, x29\n"

    "add x20, x28, x29\n"
    "add x20, x28, x29\n"
    "add x20, x28, x29\n"
    "add x20, x28, x29\n"
    
    "add x20, x28, x29\n"
    "add x20, x28, x29\n"
    "add x20, x28, x29\n"
    "add x20, x28, x29\n"
    
    "add x20, x28, x29\n"
    "add x20, x28, x29\n"
    "add x20, x28, x29\n"
    "add x20, x28, x29\n"
    
    
   

    :
    : 
    :
);

// __asm__ volatile (  
    
//     "csrr x30, mcycle\n"   // Read current cycle count into x30
//     "lw x29, 0(%0)\n"
//     "csrr x31, mcycle\n"   // Read cycle count again into x31
//     "sub x31, x31, x30\n"  // Compute difference (final - initial)
//     :
//     : "r"(A[0])
//     : "x30", "x31", "x28"  // Clobber list: tell compiler these registers are modified
// );

disable_pointers();
    return 0;
}



