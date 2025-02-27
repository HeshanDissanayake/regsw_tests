#!/bin/bash

# Loop over SIZE from 64 to 512 (powers of 2)
for SIZE in 64 128 256 512; do
    # Loop over BLOCK_SIZE from 2 to 128 (powers of 2)
    for BLOCK_SIZE in 2 4 8 16 32 64 128; do
        echo "Running: matmul_modified_result_cache.o $SIZE $BLOCK_SIZE"
        ./matmul_modified_result_cache.o $SIZE $BLOCK_SIZE
    done
done
