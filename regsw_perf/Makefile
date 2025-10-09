EXEC = ./build/perf
CC = /opt/dev/riscv_linux_rv64g_regsw/bin/riscv64-unknown-linux-gnu-gcc

RISCV_CFLAGS = --sysroot=/home/heshds/working_dir/cva6-sdk/buildroot/output/host/riscv64-buildroot-linux-gnu/sysroot

$(EXEC):perf.c
	$(CC) $(RISCV_CFLAGS) $< -o $(EXEC)

clean:
	rm build/*