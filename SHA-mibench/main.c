/* NIST Secure Hash Algorithm */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include "sha.h"

int main()
{
   
    SHA_INFO sha_info;

	const char *input_string = "The output of asdasdthis sdasdasSHA algorithm  ";  // Example input

	sha_stream(&sha_info, input_string);
	sha_print(&sha_info);

#ifdef __riscv

	#pragma GCC unroll 5
	for(int i=0; i<5; i++){
		asm volatile (
			"ld x20, %0\n"
		::"m"(sha_info.digest[0]): "x20");
	}
#endif
    
    
    return(0);
}