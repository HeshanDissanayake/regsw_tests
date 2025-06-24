


# Run the compilation command
/opt/dev/riscv_linux_rv64g/bin/riscv64-unknown-linux-gnu-gcc \
     main.c sha.c\
     -static \
	-mcmodel=medany \
	-std=gnu99 \
	-O2 \
	-ffast-math \
	-fno-common \
	-fno-builtin-printf \
	-fno-tree-loop-distribute-patterns \
	-march=rv64g -Wa,-march=rv64g \
	-lm \
	-lgcc \
	-Wno-incompatible-pointer-types \
	-ffixed-x28 -ffixed-x29 \
     -o sha \
   



