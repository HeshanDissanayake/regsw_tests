RISCV_GCC := /opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc
RUN_REGSW = ../run.sh

MODE = regsw

SRC = main.c
OBJ = main.o obj/sha.o

ifeq ($(MODE), regsw)
  EXEC = sha_exec_regsw.o
else
  EXEC = sha_exec_normal.o
endif

# CFLAGS = 
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
	$(RISCV_GCC) $(LDFLAGS) $(LINK_SOURCES) -DNOPRINT=1 -o $(EXEC) $(OBJ)

main.o: main.c
	$(RISCV_GCC) $(LDFLAGS)  -c main.c -o main.o

obj/sha.o: sha.c
	# $(RUN_REGSW) sha.c $(MODE)
	$(RISCV_GCC)  $(LDFLAGS) -DMODE=\"$(MODE)\" -O3 -c -static sha.c -o obj/sha.o


clean:
	rm -f $(OBJ) $(EXEC)

.PHONY: all clean
