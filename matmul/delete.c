#define ADDI_INST(N) __asm__ volatile ("regsw_c x" #N " 32(x0)\n")


int main(){
    for(int i = 0; i < 8; i++){
        __asm__ volatile (                                   
        "sw x28, %0(t0)\n"                
        :
        :"i"(i )
        : 
        );
    }
    

    return 0;
}