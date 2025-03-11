RISCV_GCC := /opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc
RUN_REGSW = ../run.sh

SHA_CFLAGS = -O2  

SRC = main.c
OBJ = main.o regsw_obj/bubble_sort_extra.o
EXEC = bubble.o

# Linker flags
LDFLAGS := -I/home/heshds/working_dir/cva6/verif/sim/../env/corev-dv/user_extension \
           -static \
           -mcmodel=medany \
           -fvisibility=hidden \
           -nostdlib \
           -nostartfiles \
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
	$(RISCV_GCC) $(LDFLAGS) -c main.c -o main.o

regsw_obj/bubble_sort_extra.o: bubble_sort.c
	$(RUN_REGSW) bubble_sort.c  # <== Fixed indentation (TAB used here)

clean:
	rm -f $(OBJ) $(EXEC)

.PHONY: all clean
