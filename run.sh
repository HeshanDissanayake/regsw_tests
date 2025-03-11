#!/bin/bash

INJECTOR_PATH="/home/heshds/working_dir/regws-instruction-injection"


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
  "regsw_obj"
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


/home/heshds/working_dir/llvm-project/output-regsw/bin/clang -ffixed-x12 -ffixed-x13 -ffixed-x14 -ffixed-x15 -ffixed-x16 -ffixed-x17 -ffixed-x18 -ffixed-x19  -ffixed-x21 -ffixed-x22 -ffixed-x23 -ffixed-x24 -ffixed-x25 -ffixed-x26 -ffixed-x27 -ffixed-x28 -ffixed-x29 -ffixed-x30 -ffixed-x31  --sysroot=/opt/dev/cva6_riscv_regsw/riscv-none-elf/ --gcc-toolchain=/opt/dev/cva6_riscv_regsw/ -O3 -S  -emit-llvm --target=riscv64  -march=rv64g  $1 -o LLVM/${basename}.ll

/home/heshds/working_dir/llvm-project/output-regsw/bin/llc -O3  --march=riscv64 -mcpu=generic-rv64 -mattr=+d -relocation-model=pic LLVM/${basename}.ll -o asm/${basename}_exReg.S

python3 "$INJECTOR_PATH/inject.py" asm/${basename}_exReg.S "$INJECTOR_PATH/encoding.json" asm_injected/${basename}_exReg_Inj.S

/opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc -static -c -O3  -nostdlib -nostartfiles -march=rv64g_zba_zbb_zbs_zbc -mabi=lp64d asm_injected/${basename}_exReg_Inj.S -o regsw_obj/${basename}_extra.o


