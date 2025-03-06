#include <stdio.h>
#include <stdlib.h>
#include <time.h>


static inline void enable_pointers() {
    //enable pointers
    __asm__ volatile (
        "nop\n"
        "nop\n"
        "nop\n"
        "regsw_c x0, 123(x0)\n":::);
}

static inline void disable_pointers() {
    //enable pointers
    __asm__ volatile (
        "nop\n"
        "nop\n"
        "nop\n"
        "regsw_c x0, 124(x0)\n":::);
}


static inline void load_mem_location(int *src){
    __asm__ volatile ("mv t0, %0\n":: "r"(src): "t0");
}


static inline void set_pointer_P1_8(){
    
    __asm__ volatile (
        "regsw_c x1, 32(x28)\n":::);

}

static inline void set_pointer_P2_8(){
    
    __asm__ volatile (
        "nop\n"
        "nop\n"
        "nop\n"
        "regsw_c x1, 14(x29)\n":::);

}

static inline void fetch_P1_8_compute(int *A, int *B) {
        
    
    //set a pointer to the base register
    set_pointer_P1_8();
    set_pointer_P2_8();
    
    int multresult1;
    int multresult2;
    int multresult3;
    int multresult4;
    int sum = 0;
    
    __asm__ volatile (                                   
    "lw x28, 0(%0)\n"     //A[]
    "lw %2, 0(%1)\n"      //B[]
    "mul %2, x28, %2\n"   //multresult1 = A[] * B[]
    "add %6, %2, %6\n"     //sum += multresult1

    "lw x28, 4(%0)\n"     //A[]
    "lw %3, 4(%1)\n"      //multresult2 = B[]
    "mul %3, x28, %3\n"   //multresult2 = A[] * B[]
    "add %6, %3, %6\n"     //sum += multresult2

    "lw x28, 8(%0)\n"     //A[]
    "lw %4, 8(%1)\n"      //multresult2 = B[]
    "mul %4, x28, %4\n"   //multresult2 = A[] * B[]
    "add %6, %4, %6\n"     //sum += multresult2

    "lw x28, 12(%0)\n"     //A[]
    "lw %5, 12(%1)\n"      //multresult2 = B[]
    "mul %5, x28, %5\n"   //multresult2 = A[] * B[]
    "add %6, %5, %6\n"     //sum += multresult2

    "lw x28, 16(%0)\n"     //A[]
    "lw %2, 16(%1)\n"      //B[]
    "mul %2, x28, %2\n"   //multresult1 = A[] * B[]
    "add %6, %2, %6\n"     //sum += multresult1

    "lw x28, 20(%0)\n"     //A[]
    "lw %3, 20(%1)\n"      //multresult2 = B[]
    "mul %3, x28, %3\n"   //multresult2 = A[] * B[]
    "add %6, %3, %6\n"     //sum += multresult2

    "lw x28, 24(%0)\n"     //A[]
    "lw %4, 24(%1)\n"      //multresult2 "nop\n"
        "nop\n"
        "nop\n"
    "lw x28, 28(%0)\n"     //A[]
    "lw %5, 28(%1)\n"      //multresult2 = B[]
    "mul %5, x28, %5\n"   //multresult2 = A[] * B[]
    "add %6, %5, %6\n"     //sum += multresult2

    "lw x28, 32(%0)\n"     //A[]
    "lw %2, 32(%1)\n"      //B[]
    "mul %2, x28, %2\n"   //multresult1 = A[] * B[]
    "add %6, %2, %6\n"     //sum += multresult1

    "lw x28, 36(%0)\n"     //A[]
    "lw %3, 36(%1)\n"      //multresult2 = B[]
    "mul %3, x28, %3\n"   //multresult2 = A[] * B[]
    "add %6, %3, %6\n"     //sum += multresult2

    "lw x28, 40(%0)\n"     //A[]
    "lw %4, 40(%1)\n"      //multresult2 = B[]
    "mul %4, x28, %4\n"   //multresult2 = A[] * B[]
    "add %6, %4, %6\n"     //sum += multresult2

    "lw x28, 44(%0)\n"     //A[]
    "lw %5, 44(%1)\n"      //multresult2 = B[]
    "mul %5, x28, %5\n"   //multresult2 = A[] * B[]
    "add %6, %5, %6\n"     //sum += multresult2

    "lw x28, 48(%0)\n"     //A[]
    "lw %2, 48(%1)\n"      //B[]
    "mul %2, x28, %2\n"   //multresult1 = A[] * B[]
    "add %6, %2, %6\n"     //sum += multresult1

    "lw x28, 52(%0)\n"     //A[]
    "lw %3, 52(%1)\n"      //multresult2 = B[]
    "mul %3, x28, %3\n"   //multresult2 = A[] * B[]
    "add %6, %3, %6\n"     //sum += multresult2

    "lw x28, 56(%0)\n"     //A[]
    "lw %4, 56(%1)\n"      //multresult2 = B[]
    "mul %4, x28, %4\n"   //multresult2 = A[] * B[]
    "add %6, %4, %6\n"     //sum += multresult2

    "lw x28, 60(%0)\n"     //A[]
    "lw %5, 60(%1)\n"      //multresult2 = B[]
    "mul %5, x28, %5\n"   //multresult2 = A[] * B[]
    "add %6, %5, %6\n"     //sum += multresult2

    "mv x29, %6\n"           
    :
    :"r"(A), "r"(B), "r"(multresult1), "r"(multresult2), "r"(multresult3), "r"(multresult4), "r"(sum)
    : 
    );
}

static inline void fetch_P1_8(int *src) {
    
    load_mem_location(src);
    
    __asm__ volatile ("mv t0, %0\n":: "r"(src): "t0");

    //set a pointer to the base register
    set_pointer_P1_8();
    
    
    __asm__ volatile (                                   
    "lw x28, 0(t0)\n"
    "lw x28, 4(t0)\n"
    "lw x28, 8(t0)\n"
    "lw x28, 12(t0)\n"
    "lw x28, 16(t0)\n"
    "lw x28, 20(t0)\n"
    "lw x28, 24(t0)\n"
    "lw x28, 28(t0)\n"
    :
    :"r"(src)
    : 
    );
}

static inline void fetch_P2_8(int *src) {
    
    load_mem_location(src);
    
    //set a pointer to the base register
    set_pointer_P2_8();

   
    __asm__ volatile (                                   
    "lw x29, 0(t0)\n"
    "lw x29, 4(t0)\n"
    "lw x29, 8(t0)\n"
    "lw x29, 12(t0)\n"
    "lw x29, 16(t0)\n"
    "lw x29, 20(t0)\n"
    "lw x29, 24(t0)\n"
    "lw x29, 28(t0)\n"            
    :
    :
    : 
    );
}





static inline void save_P1_8(int *src) {
    load_mem_location(src);

    //set a pointer to the base register

    set_pointer_P1_8();

   
    __asm__ volatile (                                   
        "sw x28, 0(t0)\n"
        "sw x28, 4(t0)\n"
        "sw x28, 8(t0)\n"
        "sw x28, 12(t0)\n"
        "sw x28, 16(t0)\n"
        "sw x28, 20(t0)\n"
        "sw x28, 24(t0)\n"
        "sw x28, 28(t0)\n"
                  
    :
    :
    : 
    );
   
}

static inline void save_P2_8(int *src) {
    load_mem_location(src);

    //set a pointer to the base register

    set_pointer_P2_8();

   
    __asm__ volatile (                                   
        "sw x29, 0(t0)\n"
        "sw x29, 4(t0)\n"
        "sw x29, 8(t0)\n"
        "sw x29, 12(t0)\n"
        "sw x29, 16(t0)\n"
        "sw x29, 20(t0)\n"
        "sw x29, 24(t0)\n"
        "sw x29, 28(t0)\n"
                   
    :
    :
    : 
    );
   
}

static inline void init_P2_8() {
    set_pointer_P2_8();   

    __asm__ volatile (                                   
    "addi x29, x0, 0\n"
    "addi x29, x0, 0\n"
    "addi x29, x0, 0\n"
    "addi x29, x0, 0\n"
    "addi x29, x0, 0\n"
    "addi x29, x0, 0\n"
    "addi x29, x0, 0\n"
    "addi x29, x0, 0\n"
    
    :::);
}