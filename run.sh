#!/bin/bash

INJECTOR_PATH="/home/heshds/working_dir/regws-instruction-injection"
OPTIMIZATION_LEVEL="-O0"
# O1 = gcc -fauto-inc-dec -fbranch-count-reg -fcprop-registers -fmerge-constants mycode.c -o myprogram



# Check if an argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <file_path>"
  exit 1
fi

# Extract the file name without the directory path
filename=$(basename "$1")

# Remove the file extension
basename=$(echo "$filename" | cut -d '.' -f 1)

# List of folders to check/create
FOLDERS=(
  "asm"
  "asm_injected"
  "LLVM"
  "obj"
)

# Loop through each folder and check if it exists
for FOLDER in "${FOLDERS[@]}"; do
  if [ ! -d "$FOLDER" ]; then
    echo "Folder not found. Creating: $FOLDER"
    mkdir -p "$FOLDER"
  else
    echo "Folder already exists: $FOLDER"
  fi
done


if [ "$2" == "regsw" ]; then
  echo "Regsw mode"
  /home/heshds/working_dir/llvm-project/output-regsw/bin/clang   -I/home/heshds/working_dir/regsw_tests/common/syscalls.c  --sysroot=/opt/dev/cva6_riscv_regsw/riscv-none-elf/ --gcc-toolchain=/opt/dev/cva6_riscv_regsw/ -O3 -funroll-loops -S  -emit-llvm --target=riscv64  -march=rv64g  $1 -o LLVM/${basename}.ll
  /home/heshds/working_dir/llvm-project/output-regsw/bin/llc  -O3 -disable-spill-fusing -disable-post-ra -enable-ipra  --march=riscv64  -mattr=+d -relocation-model=pic LLVM/${basename}.ll -o asm/${basename}_extra.S
  python3 "$INJECTOR_PATH/inject.py" asm/${basename}_extra.S "$INJECTOR_PATH/encoding.json" asm_injected/${basename}_exReg_Inj.S
  /opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc -O3 -c  -nostdlib -nostartfiles -march=rv64g_zba_zbb_zbs_zbc -mabi=lp64d asm_injected/${basename}_exReg_Inj.S -o obj/${basename}_extra.o

else
  echo "Normal mode"
  /home/heshds/working_dir/llvm-project/output-normal/bin/clang   -I/home/heshds/working_dir/regsw_tests/common/syscalls.c  --sysroot=/opt/dev/cva6_riscv_regsw/riscv-none-elf/ --gcc-toolchain=/opt/dev/cva6_riscv_regsw/ -O3 -funroll-loops -S  -emit-llvm --target=riscv64  -march=rv64g  $1 -o LLVM/${basename}.ll
  /home/heshds/working_dir/llvm-project/output-normal/bin/llc  -O3 -disable-spill-fusing -disable-post-ra -enable-ipra  --march=riscv64  -mattr=+d -relocation-model=pic LLVM/${basename}.ll -o asm/${basename}_normal.S
  /opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc -O3 -c  -nostdlib -nostartfiles -march=rv64g_zba_zbb_zbs_zbc -mabi=lp64d asm/${basename}_normal.S -o obj/${basename}_extra.o
fi

# /home/heshds/working_dir/llvm-project/output-regsw/bin/clang -I/home/heshds/working_dir/regsw_tests/common/syscalls.c  --sysroot=/opt/dev/cva6_riscv_regsw/riscv-none-elf/ --gcc-toolchain=/opt/dev/cva6_riscv_regsw/ -O3 -funroll-loops -S  -emit-llvm --target=riscv64   -mcpu=generic-rv64  $1 -o LLVM/${basename}_extra.ll

# /home/heshds/working_dir/llvm-project/delete/llvm-project/output/bin/clang -I/home/heshds/working_dir/regsw_tests/common/syscalls.c  --sysroot=/opt/dev/cva6_riscv_regsw/riscv-none-elf/ --gcc-toolchain=/opt/dev/cva6_riscv_regsw/ -O3 -S  -emit-llvm --target=riscv64  -mcpu=generic-rv64 $1 -o LLVM/${basename}_normal.ll

 
# /home/heshds/working_dir/llvm-project/delete/llvm-project/output/bin/llc -O3  --march=riscv64 -mcpu=generic-rv64 -mattr=+d -relocation-model=pic LLVM/${basename}_normal.ll -o asm/${basename}_normal.S



# /opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc  -c -nostdlib -nostartfiles -march=rv64g_zba_zbb_zbs_zbc -mabi=lp64d asm/${basename}_normal.S -o regsw_obj/${basename}_extra.o




# /opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc -static -c -O3  -nostdlib -nostartfiles -march=rv64g_zba_zbb_zbs_zbc -mabi=lp64d asm/${basename}_normal.S -o regsw_obj/${basename}_normal.o


