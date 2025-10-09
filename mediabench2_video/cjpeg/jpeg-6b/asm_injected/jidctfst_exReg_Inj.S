	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jidctfst.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_idct_ifast                 # -- Begin function jpeg_idct_ifast
	.p2align	2
	.type	jpeg_idct_ifast,@function
jpeg_idct_ifast:                        # @jpeg_idct_ifast
# %bb.0:
	addi	sp, sp, -256
	li	a5, 1
	slli	a5, a5, 40
	addi	a5, a5, -669
	mv	a6, sp
	ld	a0, 424(a0)
	ld	a1, 88(a1)
	addi	a2, a2, 64
	addi	a7, sp, 32
	li	t0, 362
	li	t1, 473
	li	t2, 277
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lhu	t3, -48(a2)
	lhu	t4, -32(a2)
	or	t5, t3, t4
	slli	t5, t5, 48
	bnez	t5, .LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t4, -16(a2)
	bnez	t4, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t4, 0(a2)
	bnez	t4, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t4, 16(a2)
	bnez	t4, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t4, 32(a2)
	bnez	t4, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t4, 48(a2)
	beqz	t4, .LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	li	t4, 0
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	lh	t5, -64(a2)
	lw	t6, 0(a1)
	mul	t5, t6, t5
	slli	t4, t4, 48
	lw	t6, 64(a1)
	regsw_c	x9, 0x3(x18)		# 100100100100000000011
	lh	x1, 0(a2)
	lw	x2, 128(a1)
	lh	x3, 32(a2)
	lw	x4, 192(a1)
	srai	t4, t4, 48
	mul	t4, t6, t4
	mul	t6, x2, x1
	regsw_c	x0, 0x440(x30)		# 111100000010001000000
	mul	x1, x4, x3
	add	x2, t6, t5
	subw	t5, t5, t6
	add	t6, x1, t4
	subw	t4, t4, x1
	mul	t4, t4, t0
	srli	t4, t4, 8
	subw	t4, t4, t6
	regsw_c	x8, 0x0(x21)		# 101010100000000000000
	add	x1, t6, x2
	subw	t6, x2, t6
	add	x2, t4, t5
	subw	t5, t5, t4
	slli	t3, t3, 48
	srai	t3, t3, 48
	lw	t4, 32(a1)
	regsw_c	x9, 0x120(x18)		# 100100100100100100000
	lh	x3, -16(a2)
	lw	x4, 96(a1)
	lh	x5, 16(a2)
	lw	x6, 160(a1)
	lh	x7, 48(a2)
	lw	x8, 224(a1)
	mul	t3, t4, t3
	regsw_c	x31, 0x4b1(x15)		# 011111111110010110001
	mul	t4, x4, x3
	mul	x3, x6, x5
	mul	x4, x8, x7
	add	x5, x3, t4
	subw	t4, x3, t4
	add	x3, x4, t3
	subw	t3, t3, x4
	regsw_c	x29, 0x536(x31)		# 111111110110100110110
	add	x4, x3, x5
	subw	x3, x3, x5
	mul	x3, x3, t0
	srli	x3, x3, 8
	addw	x5, t3, t4
	mul	x5, x5, t1
	srli	x5, x5, 8
	mul	t3, t3, t2
	srli	t3, t3, 8
	regsw_c	x0, 0x272(x4)		# 001000000001001110010
	subw	t3, t3, x5
	mul	t4, t4, a5
	srli	t4, t4, 8
	subw	t4, t4, x4
	add	t4, t4, x5
	subw	x3, x3, t4
	add	t3, x3, t3
	regsw_c	x30, 0x34a(x28)		# 111001111001101001010
	add	x5, x4, x1
	sw	x5, 0(a6)
	subw	x1, x1, x4
	sw	x1, 224(a6)
	add	x1, t4, x2
	sw	x1, 32(a6)
	subw	t4, x2, t4
	sw	t4, 192(a6)
	regsw_c	x2, 0x0(x8)		# 010000001000000000000
	add	t4, x3, t5
	sw	t4, 64(a6)
	subw	t4, t5, x3
	sw	t4, 160(a6)
	add	t4, t3, t6
	sw	t4, 128(a6)
	subw	t3, t6, t3
	li	t4, 96
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	add	t4, a6, t4
	sw	t3, 0(t4)
	addi	a6, a6, 4
	addi	a1, a1, 4
	addi	a2, a2, 2
	bne	a6, a7, .LBB0_1
	j	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	lh	t3, -64(a2)
	lw	t4, 0(a1)
	mul	t3, t4, t3
	sw	t3, 0(a6)
	sw	t3, 32(a6)
	sw	t3, 64(a6)
	sw	t3, 96(a6)
	sw	t3, 128(a6)
	sw	t3, 160(a6)
	sw	t3, 192(a6)
	li	t4, 224
	j	.LBB0_9
.LBB0_11:
	addi	a0, a0, 128
	slli	a1, a4, 32
	srli	a1, a1, 32
	addi	a2, sp, 16
	addi	a4, a3, 64
	li	a6, 362
	li	a7, 473
	slli	a7, a7, 32
	li	t0, 277
	slli	t0, t0, 32
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	lw	t2, -12(a2)
	lw	t3, -8(a2)
	ld	t1, 0(a3)
	or	t4, t2, t3
	add	t1, t1, a1
	bnez	t4, .LBB0_19
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	lw	t3, -4(a2)
	bnez	t3, .LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	lw	t3, 0(a2)
	bnez	t3, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	lw	t3, 4(a2)
	bnez	t3, .LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=1
	lw	t3, 8(a2)
	bnez	t3, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=1
	lw	t3, 12(a2)
	beqz	t3, .LBB0_21
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=1
	li	t3, 0
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=1
	lw	t4, -16(a2)
	lw	t5, 0(a2)
	lw	t6, 8(a2)
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	add	x1, t5, t4
	subw	t4, t4, t5
	add	t5, t6, t3
	subw	t3, t3, t6
	slli	t3, t3, 32
	srli	t3, t3, 32
	mul	t3, t3, a6
	srli	t3, t3, 8
	subw	t3, t3, t5
	lw	t6, 4(a2)
	regsw_c	x11, 0x1b7(x18)		# 100100101100110110111
	lw	x2, -4(a2)
	lw	x3, 12(a2)
	add	x4, t5, x1
	add	x5, t3, t4
	add	x6, x2, t6
	add	x7, x3, t2
	add	x8, x7, x6
	regsw_c	x13, 0x381(x31)		# 111110110101110000001
	add	x9, x8, x4
	slli	x9, x9, 49
	srli	x9, x9, 54
	add	x9, a0, x9
	lbu	x9, 0(x9)
	subw	t4, t4, t3
	subw	t3, t6, x2
	regsw_c	x16, 0x1(x4)		# 001001000000000000001
	subw	t2, t2, x3
	sb	x9, 0(t1)
	slli	t6, t3, 32
	srli	t6, t6, 32
	mul	t6, t6, a5
	srli	t6, t6, 8
	subw	t6, t6, x8
	regsw_c	x1, 0x5ae(x28)		# 111000000110110101110
	subw	x2, x4, x8
	add	t3, t2, t3
	slli	t3, t3, 32
	slli	x2, x2, 49
	srli	x2, x2, 54
	add	x2, a0, x2
	lbu	x2, 0(x2)
	mulhu	t3, t3, a7
	srli	t3, t3, 8
	add	t6, t6, t3
	regsw_c	x29, 0x577(x6)		# 001101110110101110111
	sb	x2, 7(t1)
	add	x2, t6, x5
	slli	x2, x2, 49
	srli	x2, x2, 54
	add	x2, a0, x2
	lbu	x2, 0(x2)
	subw	x3, x7, x6
	regsw_c	x3, 0x5b5(x27)		# 110110001110110110101
	slli	x3, x3, 32
	srli	x3, x3, 32
	sb	x2, 1(t1)
	subw	x2, x5, t6
	slli	x2, x2, 49
	srli	x2, x2, 54
	add	x2, a0, x2
	regsw_c	x12, 0x466(x27)		# 110110110010001100110
	lbu	x2, 0(x2)
	mul	x3, x3, a6
	srli	x3, x3, 8
	subw	t6, x3, t6
	sb	x2, 6(t1)
	add	x2, t6, t4
	slli	x2, x2, 49
	regsw_c	x28, 0x401(x26)		# 110101110010000000001
	srli	x2, x2, 54
	add	x2, a0, x2
	lbu	x2, 0(x2)
	subw	t5, x1, t5
	slli	t2, t2, 32
	mulhu	t2, t2, t0
	sb	x2, 2(t1)
	subw	t4, t4, t6
	slli	t4, t4, 49
	srli	t4, t4, 54
	add	t4, a0, t4
	lbu	t4, 0(t4)
	srli	t2, t2, 8
	subw	t2, t2, t3
	add	t2, t6, t2
	sb	t4, 5(t1)
	add	t3, t2, t5
	slli	t3, t3, 49
	srli	t3, t3, 54
	add	t3, a0, t3
	lbu	t3, 0(t3)
	sb	t3, 4(t1)
	subw	t2, t5, t2
	slli	t2, t2, 49
	srli	t2, t2, 54
	add	t2, a0, t2
	lbu	t2, 0(t2)
	li	t3, 3
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=1
	add	t1, t1, t3
	sb	t2, 0(t1)
	addi	a3, a3, 8
	addi	a2, a2, 32
	bne	a3, a4, .LBB0_12
	j	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=1
	lwu	t2, -16(a2)
	slli	t2, t2, 49
	srli	t2, t2, 54
	add	t2, a0, t2
	lbu	t2, 0(t2)
	sb	t2, 0(t1)
	sb	t2, 1(t1)
	sb	t2, 2(t1)
	sb	t2, 3(t1)
	sb	t2, 4(t1)
	sb	t2, 5(t1)
	sb	t2, 6(t1)
	li	t3, 7
	j	.LBB0_20
.LBB0_22:
	addi	sp, sp, 256
	ret
.Lfunc_end0:
	.size	jpeg_idct_ifast, .Lfunc_end0-jpeg_idct_ifast
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
