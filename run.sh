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


clang --sysroot=/opt/dev/riscv_linux_rv64g/sysroot/usr/ --gcc-toolchain=/opt/dev/riscv_linux_rv64g -O3 -S  -emit-llvm --target=riscv64 -march=rv64g $1 -o LLVM/${basename}.ll

llc -O3 --march=riscv64 -mcpu=generic-rv64 -mattr=+d -relocation-model=pic LLVM/${basename}.ll -o asm/${basename}_normal.S
/home/heshds/llvm-project/output_modified_llvm/bin/llc -O3 --march=riscv64 -mcpu=generic-rv64 -mattr=+d -relocation-model=pic LLVM/${basename}.ll -o asm/${basename}_exReg.S

python3 "$INJECTOR_PATH/inject.py" asm/${basename}_exReg.S "$INJECTOR_PATH/encoding.json" asm_injected/${basename}_exReg_Inj.S
#python3 "$INJECTOR_PATH/inject.py" ${basename}_exReg_manual.S "$INJECTOR_PATH/encoding.json" ${basename}_exReg_manual_Inj.S

/opt/dev/riscv_linux_rv64g/bin/riscv64-unknown-linux-gnu-gcc -static -c asm/${basename}_normal.S -o regsw_obj/${basename}_normal.o
/opt/dev/riscv_linux_rv64g/bin/riscv64-unknown-linux-gnu-gcc -static -c asm_injected/${basename}_exReg_Inj.S -o regsw_obj/${basename}_extra.o
#/opt/dev/riscv_linux_rv64g/bin/riscv64-unknown-linux-gnu-gcc -static ${basename}_exReg_manual_Inj.S -o ${basename}_extra_manual.o


# /home/heshds/working_dir/riscv-isa-sim/build/spike  /home/heshds/riscv-pk_64/build/pk