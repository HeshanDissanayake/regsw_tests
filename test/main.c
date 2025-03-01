int main(){

    int flag = 22;
      __asm__ volatile (                                   
    "mv x31, %0\n"
    :
    : "r"(flag)
    : "x31"
    );
    
    return 0;
}