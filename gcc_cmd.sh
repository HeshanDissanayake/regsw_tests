#!/bin/bash

# Check if an input file is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_file.c>"
    exit 1
fi

# Get the input file name
INPUT_FILE="$1"

# Extract the base name without extension
BASE_NAME="$(basename "$INPUT_FILE" .c)"

# Define the output file name
ASM_FILE="${BASE_NAME}.s"
ELF_FILE="${BASE_NAME}.o"

# Run the compilation command
/opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc \
    matmul_normal.c \
    -O3 \
    -c \
    -static \
    -ffixed-x28 -ffixed-x29 \
    -march=rv64g_zba_zbb_zbs_zbc \
    -mabi=lp64d \
    -o matmul_normal.o

/opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc \
    matmul_extraReg.c \
    -c \
    -static \
    -ffixed-x28 -ffixed-x29 \
    -march=rv64g_zba_zbb_zbs_zbc \
    -mabi=lp64d \
    -o matmul_extraReg.o



# Run the compilation command
/opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc \
    "$INPUT_FILE" matmul_normal.o matmul_extraReg.o\
    -I/home/heshds/working_dir/cva6/verif/sim/../env/corev-dv/user_extension \
    -static \
    -mcmodel=medany \
    -fvisibility=hidden \
    -nostdlib \
    -nostartfiles \
    -ffixed-x28 -ffixed-x29 \
    -g \
    /home/heshds/working_dir/regsw_tests/common/syscalls.c \
    /home/heshds/working_dir/regsw_tests/common/crt.S \
    -I/home/heshds/working_dir/regsw_tests/env \
    -lgcc \
    -T /home/heshds/working_dir/regsw_tests/common/test.ld \
    -o "$ELF_FILE" \
    -march=rv64g_zba_zbb_zbs_zbc \
    -mabi=lp64d



