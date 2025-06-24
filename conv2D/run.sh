#!/bin/bash

# Arrays of image and kernel sizes
Ns=(132) #64 128 256 512 1024)
Ks=(3) #5 6 7 8 9)


rm gdb_output.txt

for N in "${Ns[@]}"; do
  for K in "${Ks[@]}"; do
    if [ "$K" -le "$N" ]; then
     
      ./gen_data "$N" "$K"
      make compile  
      /opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gdb  -batch -x ../debug.gdb main.o

     
    else
      echo "Skipping: K=$K is larger than N=$N"
    fi
  done
done
