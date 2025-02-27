#include "matrices.h"
#include "reg_pointer.c"

int main(){
    enable_pointers();
    fetch(P1_REG, A[0],32, 32, 4);
    


   set_basereg(P1_REG, INCR_MODE, 32);

    for(int i = 0; i < 8; i++){
        __asm__ volatile (                                   
        "addi x28, x28, 2\n"                
        :
        :
        : 
        );
    }
    // fetch_P1(A[0], 8, 40, 4);
    // save_P1(A[0], 8, 32, 4);
    // fetch(A[1], 6, 18, 4);




    return 0;
}