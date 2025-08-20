#!/bin/bash

INJECTOR_PATH="/home/heshds/working_dir/regws-instruction-injection"

# Extract the file name without the directory path
filename=$(basename "$1")

# Remove the file extension
basename=$(echo "$filename" | cut -d '.' -f 1)

clang --sysroot=/opt/dev/riscv_linux_rv64g/sysroot/usr/ --gcc-toolchain=/opt/dev/riscv_linux_rv64g -O3 -S  -emit-llvm --target=riscv64 -march=rv64g $1 -o llvm/${basename}.ll

llc -O3 --march=riscv64 -mcpu=generic-rv64 -mattr=+d  llvm/${basename}.ll -o assembly/${basename}_normal.S
/home/heshds/llvm-project/output_modified_llvm/bin/llc -O3 --march=riscv64 -mcpu=generic-rv64 -mattr=+d -code-model=medium  llvm/${basename}.ll -o assembly/${basename}_exReg.S

python3 "$INJECTOR_PATH/inject.py" assembly/${basename}_exReg.S "$INJECTOR_PATH/encoding.json" assembly/${basename}_exReg_Inj.S

# /opt/dev/riscv_linux_rv64g/bin/riscv64-unknown-linux-gnu-gcc -static assembly/${basename}_normal.S -o exec/${basename}_norm.o
# /opt/dev/riscv_linux_rv64g/bin/riscv64-unknown-linux-gnu-gcc -static assembly/${basename}_exReg_Inj.S -o exec/${basename}_extra.o

# /opt/dev/riscv_linux_rv64g/bin/riscv64-unknown-linux-gnu-objdump -d -S -M no-aliases exec/${basename}_extra.o > objdump_extra
# /opt/dev/riscv_linux_rv64g/bin/riscv64-unknown-linux-gnu-objdump -d -S -M no-aliases exec/${basename}_norm.o > objdump_norm