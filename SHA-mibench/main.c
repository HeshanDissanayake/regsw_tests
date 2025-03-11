/* NIST Secure Hash Algorithm */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include "sha.h"

int main()
{
   
    SHA_INFO sha_info;

	const char *input_string = "The output ";  // Example input

	sha_stream(&sha_info, input_string);

	// sha_print(&sha_info);
    return(0);
}