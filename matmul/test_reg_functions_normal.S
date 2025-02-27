	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_f2p2_d2p2_zicsr2p0"
	.file	"test_reg_functions.c"
	.option	push
	.option	arch, +a, +m
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
.Lmain$local:
	.type	.Lmain$local,@function
# %bb.0:
	#APP
	sw	zero, 123(zero)

	#NO_APP
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(.LA$local)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	#APP
	mv	t0, a0

	#NO_APP
	#APP
	sw	ra, 32(t3)

	#NO_APP
	#APP
	lw	t3, 0(t0)

	#NO_APP
	#APP
	lw	t3, 4(t0)

	#NO_APP
	#APP
	lw	t3, 8(t0)

	#NO_APP
	#APP
	lw	t3, 12(t0)

	#NO_APP
	#APP
	lw	t3, 16(t0)

	#NO_APP
	#APP
	lw	t3, 20(t0)

	#NO_APP
	#APP
	lw	t3, 24(t0)

	#NO_APP
	#APP
	lw	t3, 28(t0)

	#NO_APP
	#APP
	sw	ra, 32(t3)

	#NO_APP
	#APP
	addi	t3, t3, 1

	#NO_APP
	#APP
	addi	t3, t3, 1

	#NO_APP
	#APP
	addi	t3, t3, 1

	#NO_APP
	#APP
	addi	t3, t3, 1

	#NO_APP
	#APP
	addi	t3, t3, 1

	#NO_APP
	#APP
	addi	t3, t3, 1

	#NO_APP
	#APP
	addi	t3, t3, 1

	#NO_APP
	#APP
	addi	t3, t3, 1

	#NO_APP
	#APP
	mv	t0, a0

	#NO_APP
	#APP
	sw	ra, 32(t3)

	#NO_APP
	#APP
	sw	t3, 0(t0)

	#NO_APP
	#APP
	sw	t3, 4(t0)

	#NO_APP
	#APP
	sw	t3, 8(t0)

	#NO_APP
	#APP
	sw	t3, 12(t0)

	#NO_APP
	#APP
	sw	t3, 16(t0)

	#NO_APP
	#APP
	sw	t3, 20(t0)

	#NO_APP
	#APP
	mv	t0, a0

	#NO_APP
	#APP
	sw	ra, 32(t3)

	#NO_APP
	#APP
	lw	t3, 0(t0)

	#NO_APP
	#APP
	lw	t3, 4(t0)

	#NO_APP
	#APP
	lw	t3, 8(t0)

	#NO_APP
	#APP
	lw	t3, 12(t0)

	#NO_APP
	#APP
	lw	t3, 16(t0)

	#NO_APP
	#APP
	lw	t3, 20(t0)

	#NO_APP
	li	a0, 0
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.size	.Lmain$local, .Lfunc_end0-main
                                        # -- End function
	.option	pop
	.type	A,@object                       # @A
	.data
	.globl	A
	.p2align	2, 0x0
A:
.LA$local:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
	.word	39                              # 0x27
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	45                              # 0x2d
	.word	46                              # 0x2e
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	54                              # 0x36
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	62                              # 0x3e
	.word	63                              # 0x3f
	.word	64                              # 0x40
	.size	A, 256

	.type	B,@object                       # @B
	.globl	B
	.p2align	2, 0x0
B:
.LB$local:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
	.word	39                              # 0x27
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	45                              # 0x2d
	.word	46                              # 0x2e
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	54                              # 0x36
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	62                              # 0x3e
	.word	63                              # 0x3f
	.word	64                              # 0x40
	.size	B, 256

	.type	C,@object                       # @C
	.globl	C
	.p2align	2, 0x0
C:
.LC$local:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
	.word	39                              # 0x27
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	45                              # 0x2d
	.word	46                              # 0x2e
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	54                              # 0x36
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	62                              # 0x3e
	.word	63                              # 0x3f
	.word	64                              # 0x40
	.size	C, 256

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
