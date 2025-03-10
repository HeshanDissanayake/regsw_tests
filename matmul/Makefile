# Compiler
RISCV_GCC := /opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc
SIZE ?= 512

# Input source files
MAIN_SRC := main.c
OBJ_FILES := matmul_normal.o matmul_extraReg_V8.o matmul_extraReg_V16.o matmul_extraReg_B2.o matmul_extraReg_B4.o matmul_extraReg_B4x2.o 

# Compiler flags for each source file
CFLAGS_NORMAL     := -O3 -c -D SIZE=$(SIZE) -static -ffixed-x28 -ffixed-x29 -march=rv64g_zba_zbb_zbs_zbc -mabi=lp64d
CFLAGS_EXTRA_V8   := -O3 -c -D SIZE=$(SIZE) -static -fPIC -ffixed-x21 -ffixed-x22 -ffixed-x23 -ffixed-x24 -ffixed-x25 -ffixed-x26 -ffixed-x28 -ffixed-x29 -ffixed-x30 -ffixed-x31 -march=rv64g_zba_zbb_zbs_zbc -mabi=lp64d
CFLAGS_EXTRA_V16  := -O3 -c -D SIZE=$(SIZE) -static -fPIC -ffixed-x28 -ffixed-x29 -march=rv64g_zba_zbb_zbs_zbc -mabi=lp64d
CFLAGS_EXTRA_B4   := -O3 -c -D SIZE=$(SIZE) -static  -ffixed-x31 \
										  -ffixed-x12 \
										  -ffixed-x13 \
										  -ffixed-x14 \
										  -ffixed-x15 \
										  -ffixed-x16 \
										  -ffixed-x17 -ffixed-x18 -ffixed-x19 \
										  -ffixed-x20 \
										  -ffixed-x21 \
										  -ffixed-x22 \
										  -ffixed-x23 \
										  -ffixed-x24 \
										  -ffixed-x25 \
										  -ffixed-x26 \
										  -ffixed-x28 \
										  -ffixed-x29 \
										  -march=rv64g_zba_zbb_zbs_zbc -mabi=lp64d

CFLAGS_EXTRA_B4x2  := -D SIZE=$(SIZE) -O3 -funroll-all-loops -c -static 	  -ffixed-x16 \
										  -ffixed-x17 \
										  -ffixed-x18 \
										  -ffixed-x19 \
										  -ffixed-x20 \
										  -ffixed-x21 \
										  -ffixed-x22 \
										  -ffixed-x23 \
										  -ffixed-x28 \
										  -ffixed-x29 \
										  -march=rv64g_zba_zbb_zbs_zbc -mabi=lp64d

# Linker flags
LDFLAGS := -I/home/heshds/working_dir/cva6/verif/sim/../env/corev-dv/user_extension \
           -static \
		   -D SIZE=$(SIZE) \
           -mcmodel=medany \
           -fvisibility=hidden \
           -nostdlib \
           -nostartfiles \
           -ffixed-x28 -ffixed-x29 \
           -g \
           -I/home/heshds/working_dir/regsw_tests/env \
           -lgcc \
           -T /home/heshds/working_dir/regsw_tests/common/test.ld \
           -march=rv64g_zba_zbb_zbs_zbc \
           -mabi=lp64d

# Additional source files for linking
LINK_SOURCES := /home/heshds/working_dir/regsw_tests/common/syscalls.c \
                /home/heshds/working_dir/regsw_tests/common/crt.S

# Generate matrices.h before compilation

# Output binary name
OUTPUT := main.elf


# Default target
all: clean matgen $(OUTPUT)

matgen:
	./matgen A B C1 $(SIZE) cons
	@if [ ! -f matrices.h ]; then echo "Error: matrices.h not generated!"; exit 1; fi


# Compile object files
matmul_normal.o: matmul_normal.c
	$(RISCV_GCC) $(CFLAGS_NORMAL) -o $@ $<

matmul_extraReg_B2.o: matmul_extraReg_B2.c
	$(RISCV_GCC) $(CFLAGS_NORMAL) -o $@ $<

matmul_extraReg_B4.o: matmul_extraReg_B4.c
	$(RISCV_GCC) $(CFLAGS_EXTRA_B4) -o $@ $<

matmul_extraReg_B4x2.o: matmul_extraReg_B4x2.c
	$(RISCV_GCC) $(CFLAGS_EXTRA_B4x2) -o $@ $<



matmul_extraReg_V8.o: matmul_extraReg_V8.c
	$(RISCV_GCC) $(CFLAGS_EXTRA_V8) -o $@ $<

matmul_extraReg_V16.o: matmul_extraReg_V16.c
	$(RISCV_GCC) $(CFLAGS_EXTRA_V16) -o $@ $<

# Link all objects with the main file
$(OUTPUT): $(MAIN_SRC) $(OBJ_FILES)
	$(RISCV_GCC) $(MAIN_SRC) $(OBJ_FILES) $(LDFLAGS) $(LINK_SOURCES) -o $(OUTPUT)

# Clean up generated files
clean:
	rm -f $(OBJ_FILES) $(OUTPUT)

.PHONY: clean all matgen
