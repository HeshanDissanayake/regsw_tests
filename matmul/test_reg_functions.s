	.file	"test_reg_functions.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.hidden	main
	.type	main, @function
main:
.LFB28:
	.cfi_startproc
#APP
# 12 "reg_pointer.c" 1
	regsw_c x0, 123(x0)

# 0 "" 2
#NO_APP
	lla	a5,.LANCHOR0
#APP
# 16 "reg_pointer.c" 1
	mv t0, a5

# 0 "" 2
# 24 "reg_pointer.c" 1
	regsw_c x1, 32(x28)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 0(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 4(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 8(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 12(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 16(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 20(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 24(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 28(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 32(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 36(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 40(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 44(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 48(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 52(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 56(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 60(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 64(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 68(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 72(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 76(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 80(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 84(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 88(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 92(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 96(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 100(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 104(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 108(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 112(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 116(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 120(t0)

# 0 "" 2
# 39 "reg_pointer.c" 1
	lw x28, 124(t0)

# 0 "" 2
# 24 "reg_pointer.c" 1
	regsw_c x1, 32(x28)

# 0 "" 2
# 13 "test_reg_functions.c" 1
	addi x28, x28, 2

# 0 "" 2
# 13 "test_reg_functions.c" 1
	addi x28, x28, 2

# 0 "" 2
# 13 "test_reg_functions.c" 1
	addi x28, x28, 2

# 0 "" 2
# 13 "test_reg_functions.c" 1
	addi x28, x28, 2

# 0 "" 2
# 13 "test_reg_functions.c" 1
	addi x28, x28, 2

# 0 "" 2
# 13 "test_reg_functions.c" 1
	addi x28, x28, 2

# 0 "" 2
# 13 "test_reg_functions.c" 1
	addi x28, x28, 2

# 0 "" 2
# 13 "test_reg_functions.c" 1
	addi x28, x28, 2

# 0 "" 2
#NO_APP
	li	a0,0
	ret
	.cfi_endproc
.LFE28:
	.size	main, .-main
	.hidden	C
	.globl	C
	.hidden	B
	.globl	B
	.hidden	A
	.globl	A
	.data
	.align	3
	.set	.LANCHOR0,. + 0
	.type	A, @object
	.size	A, 256
A:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	26
	.word	27
	.word	28
	.word	29
	.word	30
	.word	31
	.word	32
	.word	33
	.word	34
	.word	35
	.word	36
	.word	37
	.word	38
	.word	39
	.word	40
	.word	41
	.word	42
	.word	43
	.word	44
	.word	45
	.word	46
	.word	47
	.word	48
	.word	49
	.word	50
	.word	51
	.word	52
	.word	53
	.word	54
	.word	55
	.word	56
	.word	57
	.word	58
	.word	59
	.word	60
	.word	61
	.word	62
	.word	63
	.word	64
	.type	C, @object
	.size	C, 256
C:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	26
	.word	27
	.word	28
	.word	29
	.word	30
	.word	31
	.word	32
	.word	33
	.word	34
	.word	35
	.word	36
	.word	37
	.word	38
	.word	39
	.word	40
	.word	41
	.word	42
	.word	43
	.word	44
	.word	45
	.word	46
	.word	47
	.word	48
	.word	49
	.word	50
	.word	51
	.word	52
	.word	53
	.word	54
	.word	55
	.word	56
	.word	57
	.word	58
	.word	59
	.word	60
	.word	61
	.word	62
	.word	63
	.word	64
	.type	B, @object
	.size	B, 256
B:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	26
	.word	27
	.word	28
	.word	29
	.word	30
	.word	31
	.word	32
	.word	33
	.word	34
	.word	35
	.word	36
	.word	37
	.word	38
	.word	39
	.word	40
	.word	41
	.word	42
	.word	43
	.word	44
	.word	45
	.word	46
	.word	47
	.word	48
	.word	49
	.word	50
	.word	51
	.word	52
	.word	53
	.word	54
	.word	55
	.word	56
	.word	57
	.word	58
	.word	59
	.word	60
	.word	61
	.word	62
	.word	63
	.word	64
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
