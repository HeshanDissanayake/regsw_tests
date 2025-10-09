# Makefile for TMN simulation model by kol@nta.no

# This is free software. See the file COPYING for copying conditions.

SRCS =	main.c io.c Makefile dct.c coder.c quant.c mot_est.c pred.c snr.c \
        countbit.c putbits.c ratectrl.c sac.c README COPYING \
        TODO CHANGES putvlc.c
HDRS = 	sim.h macros.h config.h \
        sactbls.h indices.h putvlc.h vlc.h
OBJS =	main.o io.o dct.o coder.o quant.o mot_est.o pred.o  snr.o \
        countbit.o putbits.o ratectrl.o sac.o putvlc.o

# Use -DPRINTMV if you want to print MVs to stdout while coding. 
# Use -DPRINTQ to print the quantizer used during coding (only useful with
#   buffer regulation)

# Use -DFASTIDCT for a fast single precision IDCT. 
# (default is double precision)

# Use -DOFFLINE_RATE_CONTROL for the rate control optimized
# for offline encoding.

ifeq ($(REGSW), true)
	REGSW_COMPILER=/home/heshds/working_dir/regsw_tests/scripts/regsw_compile_linux.sh
	regsw_mode = _regsw
else
	REGSW_COMPILER=/home/heshds/working_dir/regsw_tests/scripts/normal_compile_linux.sh
	regsw_mode = 
endif

# Compiler
export RISCV_CC = /opt/dev/riscv_linux_rv64g_regsw/bin/riscv64-unknown-linux-gnu-gcc
# Compiler flags
export RISCV_CFLAGS = --sysroot=/home/heshds/working_dir/cva6-sdk/buildroot/output/host/riscv64-buildroot-linux-gnu/sysroot



# The defines above can also be defined in sim.h
CC = $(RISCV_CC)
CFLAGS =  -g -O $(RISCV_CFLAGS)
#CFLAGS =  -g -Wall -ansi -pedantic 

# If you want to compile with -Wall -pedantic -ansi on a Sun, use 
# -DBROKEN_SUN_HEADERS to avoid a lot of compiler warnings


PROGRAM = tmn$(regsw_mode)

all: $(PROGRAM)

$(PROGRAM):	$(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(PROGRAM)  -lm
	make copy-to-build

PARENT := $(notdir $(CURDIR))
copy-to-build:
	mkdir -p $(PARENT)-build
	cp  tmn$(regsw_mode) $(PARENT)-build/tmn$(regsw_mode)


%.o: %.c
	$(REGSW_COMPILER) $< -o $@



main.o:		main.c sim.h config.h
io.o:		io.c sim.h
coder.o:	coder.c sim.h
dct.o:		dct.c sim.h 
quant.o:	quant.c sim.h 
pred.o:		pred.c sim.h
mot_est.o:	mot_est.c sim.h config.h
snr.o:		snr.c sim.h config.h
putbits.o:	putbits.c sim.h
putvlc.o:	putvlc.c vlc.h sim.h
countbit.o:	countbit.c sim.h sactbls.h indices.h putvlc.h
ratectrl.o:	ratectrl.c sim.h config.h
sac.o:          sac.c sactbls.h sim.h


clean:		
	rm -f *.o *~ tmn$(regsw_mode)

clean-all:
	rm -f *.o *% core tmndec $(PARENT)-build/*

tar:		$(SRCS) $(HDRS) 
		tar cvf TMN.tar $(SRCS) $(HDRS) 
		gzip TMN.tar
		mv TMN.tar.gz TMN.tgz

