RISCV_GCC := /opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc
RUN_REGSW = ../run.sh

# Linker flags
LDFLAGS := -I/home/heshds/working_dir/cva6/verif/sim/../env/corev-dv/user_extension \
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

compile:
	$(RISCV_GCC)  $(LDFLAGS) -DNORMAL=0  -O2 -c conv2d.c data.c 
	$(RISCV_GCC)  $(LDFLAGS) $(LINK_SOURCES) -DNORMAL=0 -static  main.c conv2d.o data.c -o main.o 


run-spike:
	/home/heshds/working_dir/cva6-sdk/install64/bin/spike /home/heshds/working_dir/riscv-pk_linux/build/pk main.o
