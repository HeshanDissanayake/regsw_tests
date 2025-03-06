#!/bin/bash

OUTPUT_FILE="results.txt"
SIZES=32
# ($(seq 16 8 256) 512)

echo "SIZE,RESULT" > $OUTPUT_FILE  # Header for CSV output
rm gdb_output.txt

for SIZE in "${SIZES[@]}"; do
    echo "Running for SIZE=$SIZE"
    
    # Compile with new SIZE
    make clean
    make SIZE=$SIZE
    
    # Run with gdb
   echo -e "--------------------------\n--------------------------\n" >> gdb_output.txt

    /opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gdb  -batch -x ../debug.gdb ./main.elf
    
   
done
cp gdb_output.txt $OUTPUT_FILE

echo "Experiment completed. Results saved in $OUTPUT_FILE"
