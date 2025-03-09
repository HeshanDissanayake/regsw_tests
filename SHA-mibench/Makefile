RISCV_GCC := /opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc
RUN_REGSW = ../run.sh

CFLAGS = -Wall -Wextra -O2 -static
SHA_CFLAGS = -O2 

SRC = main.c
OBJ = main.o regsw_obj/sha_extra.o
EXEC = main.elf

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

all: clean $(EXEC)

$(EXEC): $(OBJ)
	$(RISCV_GCC) $(LDFLAGS) $(LINK_SOURCES) -o $(EXEC) $(OBJ)

main.o: main.c
	$(RISCV_GCC) $(LDFLAGS) $(LINK_SOURCES) -c main.c -o main.o

regsw_obj/sha_extra.o: sha.c
	 $(RUN_REGSW) sha.c
	#$(RISCV_GCC) $(SHA_CFLAGS) -c -static sha.c -o regsw_obj/sha_extra.o

clean:
	rm -f $(OBJ) $(EXEC)

.PHONY: all clean
