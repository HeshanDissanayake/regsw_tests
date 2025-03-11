


# Run the compilation command
/opt/dev/cva6_riscv_regsw/bin/riscv-none-elf-gcc \
     main.c bubble_sort.c\
    -I/home/heshds/working_dir/cva6/verif/sim/../env/corev-dv/user_extension \
    -static \
    -mcmodel=medany \
    -fvisibility=hidden \
    -nostdlib \
    -nostartfiles \
    -g \
    /home/heshds/working_dir/regsw_tests/common/syscalls.c \
    /home/heshds/working_dir/regsw_tests/common/crt.S \
    -I/home/heshds/working_dir/regsw_tests/env \
    -lgcc \
    -T /home/heshds/working_dir/regsw_tests/common/test.ld \
    -o bubble.o \
    -march=rv64g_zba_zbb_zbs_zbc \
    -mabi=lp64d



