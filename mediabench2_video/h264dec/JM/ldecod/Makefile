###
###     Makefile for H.26L encoder
###
###             generated for UNIX/LINUX environments
###             by H. Schwarz
###


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

#
# GNU gcc
#

# CC =  $(shell which gcc)
CC = $(RISCV_CC)


NAME=   ldecod

### include debug information: 1=yes, 0=no
#DBG= 0

DEPEND= dependencies

BINDIR= ../bin
INCDIR= ./
SRCDIR= ./
OBJDIR= obj


LIBS=   -lm
FLAGS=  -ffloat-store -Wall -I$(INCDIR) -I$(ADDINCDIR) -D __USE_LARGEFILE64 -D _FILE_OFFSET_BITS=64  $(RISCV_CFLAGS)

ifdef DBG
SUFFIX= .dbg
FLAGS+= -g
else
SUFFIX=
FLAGS+= -O2
endif

OBJSUF= .o$(SUFFIX)

SRC=    $(wildcard $(SRCDIR)/*.c) 
ADDSRC= $(wildcard $(ADDSRCDIR)/*.c)
OBJ=    $(SRC:$(SRCDIR)/%.c=$(OBJDIR)/%.o$(SUFFIX)) $(ADDSRC:$(ADDSRCDIR)/%.c=$(OBJDIR)/%.o$(SUFFIX)) 
BIN=    $(BINDIR)/$(NAME)$(SUFFIX)


default: depend bin tags

dependencies:
	@echo "" >dependencies

clean:
	@echo remove all objects
	@rm -f $(OBJDIR)/*


bin:$(OBJ)
	$(CC) -std=gnu89 -o $(BIN) $(OBJ) $(LIBS)
	
%.o: %.c
	$(REGSW_COMPILER) $< -o $@





include $(DEPEND)

