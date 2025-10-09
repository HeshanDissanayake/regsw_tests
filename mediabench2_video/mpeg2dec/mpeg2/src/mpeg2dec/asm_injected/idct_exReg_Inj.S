	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"idct.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Fast_IDCT                       # -- Begin function Fast_IDCT
	.p2align	2
	.type	Fast_IDCT,@function
Fast_IDCT:                              # @Fast_IDCT
# %bb.0:
	lui	a1, 1048575
	addiw	a1, a1, 79
	lui	a2, 1
	addiw	a2, a2, -1820
	addi	a3, a0, 8
	addi	a4, a0, 136
	li	a5, 565
	addi	a6, a1, 611
	addi	a7, a2, 132
	li	t0, -799
	li	t1, 1108
	addi	t2, a1, 233
	li	t3, 1568
	li	t4, 181
	j	.LBB0_3
.LBB0_1:                                #   in Loop: Header=BB0_3 Depth=1
	regsw_c	x13, 0x5f6(x27)		# 110110110110111110110
	slli	x6, x6, 48
	srai	x6, x6, 48
	slli	x6, x6, 11
	addi	x6, x6, 128
	add	x7, x3, x4
	mul	x7, x7, a5
	mul	x4, x4, a2
	regsw_c	x15, 0x7b7(x31)		# 111110111111110110111
	add	x4, x7, x4
	mul	x3, x3, a6
	add	x3, x7, x3
	add	x7, x5, x2
	mul	x7, x7, a7
	mul	x2, x2, t0
	add	x2, x7, x2
	regsw_c	x31, 0x730(x27)		# 110111111111100110000
	mul	x5, x5, a1
	add	x5, x7, x5
	add	x7, x6, x1
	subw	x1, x6, x1
	add	x6, t5, t6
	mul	x6, x6, t1
	mul	t6, t6, t2
	regsw_c	x5, 0x7ff(x8)		# 010000010111111111111
	add	t6, x6, t6
	mul	t5, t5, t3
	add	t5, x6, t5
	add	x6, x2, x4
	subw	x2, x4, x2
	add	x4, x5, x3
	subw	x3, x3, x5
	regsw_c	x13, 0x4c0(x27)		# 110110110110011000000
	add	x5, x7, t5
	subw	x7, x7, t5
	add	x8, x1, t6
	subw	x9, x1, t6
	add	t5, x2, x3
	mul	t5, t5, t4
	addi	t5, t5, 128
	regsw_c	x16, 0x118(x17)		# 100011000000100011000
	sraiw	x10, t5, 8
	subw	t5, x2, x3
	mul	t5, t5, t4
	addi	t5, t5, 128
	sraiw	x3, t5, 8
	add	t5, x5, x6
	srliw	t5, t5, 8
	regsw_c	x15, 0x5f7(x12)		# 011000111110111110111
	add	t6, x10, x8
	srliw	t6, t6, 8
	add	x1, x3, x9
	srliw	x1, x1, 8
	add	x2, x7, x4
	srliw	x2, x2, 8
	subw	x4, x7, x4
	regsw_c	x29, 0x78f(x27)		# 110111110111110001111
	srliw	x4, x4, 8
	subw	x3, x9, x3
	srliw	x3, x3, 8
	subw	x7, x8, x10
	srli	x7, x7, 8
	sh	x7, 4(a3)
	subw	x5, x5, x6
	regsw_c	x16, 0x0(x24)		# 110001000000000000000
	srli	x5, x5, 8
	sh	x5, 6(a3)
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	regsw_c	x18, 0x200(x4)		# 001001001001000000000
	sh	x3, 2(a3)
	sh	x4, 0(a3)
	sh	x2, -2(a3)
	sh	x1, -4(a3)
	sh	t6, -6(a3)
	sh	t5, -8(a3)
	addi	a3, a3, 16
	beq	a3, a4, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x1, 0x524(x16)		# 100000000110100100100
	lh	x1, 0(a3)
	lh	t6, 4(a3)
	lh	t5, -4(a3)
	slliw	x1, x1, 11
	lh	x4, -6(a3)
	lh	x3, 6(a3)
	or	x5, t6, t5
	regsw_c	x31, 0x1e7(x19)		# 100111111100111100111
	lh	x2, 2(a3)
	or	x7, x1, x5
	or	x6, x4, x3
	lh	x5, -2(a3)
	or	x8, x6, x2
	lhu	x6, -8(a3)
	or	x7, x7, x8
	regsw_c	x0, 0x0(x29)		# 111010000000000000000
	or	x7, x7, x5
	bnez	x7, .LBB0_1
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	regsw_c	x19, 0x5b2(x24)		# 110001001110110110010
	slli	x3, x6, 3
	sh	x3, 6(a3)
	sh	x3, 4(a3)
	mv	x4, x3
	mv	x2, x3
	mv	x1, x3
	mv	t6, x3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	t5, x3
	j	.LBB0_2
.LBB0_5:
	lui	a3, %hi(iclp)
	ld	a3, %lo(iclp)(a3)
	addi	a4, a0, 64
	addi	a0, a0, 80
	lui	a5, 2
	li	a6, 565
	addi	a7, a1, 611
	addi	t0, a2, 132
	li	t1, -799
	li	t2, 1108
	addi	t3, a1, 233
	li	t4, 1568
	li	t5, 181
	j	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	regsw_c	x15, 0x5b7(x27)		# 110110111110110110111
	slli	x7, x7, 8
	add	x7, x7, a5
	add	x8, x5, x6
	mul	x8, x8, a6
	addi	x8, x8, 4
	mul	x6, x6, a2
	add	x6, x8, x6
	regsw_c	x15, 0x5f6(x27)		# 110110111110111110110
	srai	x6, x6, 3
	mul	x5, x5, a7
	add	x5, x8, x5
	srai	x5, x5, 3
	add	x8, x4, x3
	mul	x8, x8, t0
	ori	x8, x8, 4
	regsw_c	x29, 0x5f7(x27)		# 110111110110111110111
	mul	x3, x3, t1
	add	x3, x8, x3
	srai	x3, x3, 3
	mul	x4, x4, a1
	add	x4, x8, x4
	srai	x4, x4, 3
	add	x8, x7, x2
	regsw_c	x29, 0x5be(x30)		# 111101110110110111110
	subw	x2, x7, x2
	add	x7, t6, x1
	mul	x7, x7, t2
	addi	x7, x7, 4
	mul	x1, x1, t3
	add	x1, x7, x1
	srai	x1, x1, 3
	mul	t6, t6, t4
	regsw_c	x15, 0x7f7(x8)		# 010000111111111110111
	add	t6, x7, t6
	srai	t6, t6, 3
	add	x7, x3, x6
	subw	x3, x6, x3
	subw	x6, x5, x4
	add	x9, x8, t6
	add	x10, x2, x1
	regsw_c	x31, 0x7b5(x31)		# 111111111111110110101
	subw	x1, x2, x1
	add	x2, x3, x6
	subw	x3, x3, x6
	add	x6, x9, x7
	sraiw	x6, x6, 14
	slli	x6, x6, 1
	add	x6, a3, x6
	regsw_c	x13, 0x47e(x27)		# 110110110110001111110
	lh	x6, 0(x6)
	mul	x2, x2, t5
	addi	x2, x2, 128
	sraiw	x2, x2, 8
	sh	x6, -64(a4)
	add	x6, x10, x2
	sraiw	x6, x6, 14
	regsw_c	x29, 0x5b1(x26)		# 110101110110110110001
	slli	x6, x6, 1
	add	x6, a3, x6
	lh	x6, 0(x6)
	mul	x3, x3, t5
	addi	x3, x3, 128
	sraiw	x3, x3, 8
	sh	x6, -48(a4)
	regsw_c	x13, 0x3ba(x31)		# 111110110101110111010
	add	x6, x1, x3
	sraiw	x6, x6, 14
	slli	x6, x6, 1
	add	x6, a3, x6
	lh	x6, 0(x6)
	add	x4, x4, x5
	subw	t6, x8, t6
	regsw_c	x29, 0x571(x6)		# 001101110110101110001
	sh	x6, -32(a4)
	add	x5, t6, x4
	sraiw	x5, x5, 14
	slli	x5, x5, 1
	add	x5, a3, x5
	lh	x5, 0(x5)
	sh	x5, -16(a4)
	regsw_c	x0, 0x3(x4)		# 001000000000000000011
	subw	t6, t6, x4
	sraiw	t6, t6, 14
	slli	t6, t6, 1
	add	t6, a3, t6
	lh	t6, 0(t6)
	sh	t6, 0(a4)
	subw	t6, x1, x3
	sraiw	t6, t6, 14
	slli	t6, t6, 1
	add	t6, a3, t6
	lh	t6, 0(t6)
	sh	t6, 16(a4)
	regsw_c	x0, 0x3(x12)		# 011000000000000000011
	subw	t6, x10, x2
	sraiw	t6, t6, 14
	slli	t6, t6, 1
	add	t6, a3, t6
	lh	t6, 0(t6)
	sh	t6, 32(a4)
	subw	t6, x9, x7
	sraiw	t6, t6, 14
	slli	t6, t6, 1
	add	t6, a3, t6
	lh	t6, 0(t6)
	sh	t6, 48(a4)
	addi	a4, a4, 2
	beq	a4, a0, .LBB0_9
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x1, 0x526(x18)		# 100100000110100100110
	lh	x2, 0(a4)
	lh	x1, 32(a4)
	lh	t6, -32(a4)
	slliw	x2, x2, 8
	lh	x6, -48(a4)
	lh	x5, 48(a4)
	or	x4, x1, t6
	regsw_c	x31, 0x1e7(x19)		# 100111111100111100111
	lh	x3, 16(a4)
	or	x8, x2, x4
	or	x7, x6, x5
	lh	x4, -16(a4)
	or	x9, x7, x3
	lh	x7, -64(a4)
	or	x8, x8, x9
	regsw_c	x0, 0x0(x29)		# 111010000000000000000
	or	x8, x8, x4
	bnez	x8, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	addi	t6, x7, 32
	srai	t6, t6, 6
	slli	t6, t6, 1
	add	t6, a3, t6
	lh	t6, 0(t6)
	sh	t6, 48(a4)
	sh	t6, 32(a4)
	sh	t6, 16(a4)
	sh	t6, 0(a4)
	sh	t6, -16(a4)
	sh	t6, -32(a4)
	sh	t6, -48(a4)
	sh	t6, -64(a4)
	addi	a4, a4, 2
	bne	a4, a0, .LBB0_7
.LBB0_9:
	ret
.Lfunc_end0:
	.size	Fast_IDCT, .Lfunc_end0-Fast_IDCT
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Initialize_Fast_IDCT            # -- Begin function Initialize_Fast_IDCT
	.p2align	2
	.type	Initialize_Fast_IDCT,@function
Initialize_Fast_IDCT:                   # @Initialize_Fast_IDCT
# %bb.0:
	lui	a0, %hi(iclip)
	addi	a0, a0, %lo(iclip)
	addi	a1, a0, 1024
	lui	a2, %hi(iclp)
	sd	a1, %lo(iclp)(a2)
	li	a1, -512
	addi	a2, a0, 2047
	addi	a2, a2, 1
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	sh	a3, 0(a0)
	addi	a0, a0, 2
	addiw	a1, a1, 1
	beq	a0, a2, .LBB1_6
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	li	a4, 255
	mv	a3, a1
	bge	a1, a4, .LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	li	a4, -256
	blt	a4, a3, .LBB1_1
	j	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	li	a3, 255
	li	a4, -256
	blt	a4, a3, .LBB1_1
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	li	a3, -256
	j	.LBB1_1
.LBB1_6:
	ret
.Lfunc_end1:
	.size	Initialize_Fast_IDCT, .Lfunc_end1-Initialize_Fast_IDCT
                                        # -- End function
	.option	pop
	.type	iclip,@object                   # @iclip
	.local	iclip
	.comm	iclip,2048,2
	.type	iclp,@object                    # @iclp
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
iclp:
	.quad	0
	.size	iclp, 8

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
