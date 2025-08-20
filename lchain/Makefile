SYSROOT = --sysroot=/home/heshds/working_dir/cva6-sdk/buildroot/output/host/riscv64-buildroot-linux-gnu/sysroot

export RISCV_CC = /opt/dev/riscv_linux_rv64g_regsw/bin/riscv64-unknown-linux-gnu-gcc
export RISCV_CFLAGS = -c $(SYSROOT) 

REGSW_COMPILER = ../../scripts/compile_linux.sh

SRC = lchain.c
OBJ = build/lchain.o  
ELF = build/lchain.elf build/lchain_regsw.elf

ifeq ($(REGSW),true)
	EXEC = build/lchain_regsw.elf
	REGSW_COMPILER = ../../scripts/regsw_compile_linux.sh
else
	EXEC = build/lchain_normal.elf
	REGSW_COMPILER = ../../scripts/normal_compile_linux.sh
endif


all: increment clean $(EXEC)

$(EXEC): $(OBJ)
	$(RISCV_CC) -Wall -Wextra -Werror -Wstrict-prototypes -Wmissing-prototypes -Wformat -O3 $(SYSROOT) -o $(EXEC) $(OBJ)

build/lchain.o: lchain.c | build_dir
	$(REGSW_COMPILER) lchain.c -o build/lchain.o

build_dir:
	mkdir -p build

# this updates a build counter that we can use to see whether the linux image has the latest changes
increment:
	@num=$$(cat build_number 2>/dev/null || echo 0); \
	new_num=$$((num + 1)); \
	echo $$new_num > build_number; \
	
	echo "Updated counter: $$new_num"

clean:
	rm -f $(OBJ) 

.PHONY: all clean build_dir increment


# ./home/sha/build/sha.elf