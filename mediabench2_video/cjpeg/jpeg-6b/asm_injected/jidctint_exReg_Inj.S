	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jidctint.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_idct_islow                 # -- Begin function jpeg_idct_islow
	.p2align	2
	.type	jpeg_idct_islow,@function
jpeg_idct_islow:                        # @jpeg_idct_islow
# %bb.0:
	addi	sp, sp, -256
	lui	a5, 1048575
	addiw	a5, a5, 900
	lui	a6, 1048574
	addiw	a6, a6, 819
	lui	a7, 1048572
	addiw	a7, a7, 315
	lui	t0, 1048571
	addiw	t0, t0, -515
	lui	t1, 6
	addiw	t1, t1, 596
	lui	t2, 4
	addiw	t2, t2, 435
	lui	t3, 3
	addiw	t3, t3, 11
	lui	t5, 2
	addiw	t4, t5, 1441
	addiw	t5, t5, -1922
	lui	t6, 1
	addiw	t6, t6, -1650
	regsw_c	x0, 0x124(x16)		# 100000000000100100100
	mv	x1, sp
	ld	a0, 424(a0)
	ld	a1, 88(a1)
	addi	a2, a2, 64
	addi	x2, sp, 32
	addi	x3, t6, 1987
	addi	x4, a7, 932
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x15, 0x480(x18)		# 100100111110010000000
	lhu	x5, -48(a2)
	lhu	x6, -32(a2)
	or	x7, x5, x6
	slli	x7, x7, 48
	bnez	x7, .LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x6, -16(a2)
	bnez	x6, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x6, 0(a2)
	bnez	x6, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x6, 16(a2)
	bnez	x6, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x6, 32(a2)
	bnez	x6, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x6, 48(a2)
	beqz	x6, .LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x6, 0
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	regsw_c	x9, 0x5bf(x18)		# 100100100110110111111
	lw	x7, 64(a1)
	lh	x8, 32(a2)
	lw	x9, 192(a1)
	slli	x6, x6, 48
	srai	x6, x6, 48
	mulw	x6, x7, x6
	mulw	x7, x9, x8
	regsw_c	x31, 0x724(x31)		# 111111111111100100100
	add	x8, x7, x6
	mul	x8, x8, x3
	mul	x7, x7, x4
	add	x7, x8, x7
	lh	x9, -64(a2)
	lw	x10, 0(a1)
	lh	x11, 0(a2)
	regsw_c	x15, 0x7fe(x19)		# 100110111111111111110
	lw	x12, 128(a1)
	mul	x6, x6, t5
	add	x6, x8, x6
	mulw	x8, x10, x9
	mulw	x9, x12, x11
	add	x10, x9, x8
	slli	x10, x10, 13
	regsw_c	x15, 0x7fc(x31)		# 111110111111111111100
	sub	x8, x8, x9
	slli	x8, x8, 13
	add	x9, x10, x6
	sub	x6, x10, x6
	add	x10, x8, x7
	sub	x7, x8, x7
	lh	x8, 48(a2)
	regsw_c	x9, 0x13f(x18)		# 100100100100100111111
	lw	x11, 224(a1)
	lh	x12, 16(a2)
	lw	x13, 160(a1)
	lh	x14, -16(a2)
	lw	x15, 96(a1)
	mulw	x8, x11, x8
	mulw	x11, x13, x12
	regsw_c	x29, 0x5ff(x19)		# 100111110110111111111
	lw	x12, 32(a1)
	mulw	x13, x15, x14
	slli	x5, x5, 48
	srai	x5, x5, 48
	mulw	x5, x12, x5
	add	x12, x5, x8
	add	x14, x13, x11
	regsw_c	x31, 0x5b6(x31)		# 111111111110110110110
	add	x15, x13, x8
	add	x16, x5, x11
	add	x17, x16, x15
	mul	x17, x17, t4
	mul	x8, x8, t6
	mul	x11, x11, t2
	mul	x13, x13, t1
	regsw_c	x13, 0x5bf(x27)		# 110110110110110111111
	mul	x5, x5, t3
	mul	x12, x12, a6
	mul	x14, x14, t0
	mul	x15, x15, a7
	mul	x16, x16, a5
	add	x15, x17, x15
	add	x16, x17, x16
	regsw_c	x31, 0x7ff(x31)		# 111111111111111111111
	add	x8, x12, x8
	add	x8, x8, x15
	add	x11, x14, x11
	add	x11, x11, x16
	add	x13, x14, x13
	add	x13, x13, x15
	add	x5, x12, x5
	regsw_c	x15, 0x4fe(x31)		# 111110111110011111110
	add	x5, x5, x16
	addi	x9, x9, 1024
	add	x12, x9, x5
	srli	x12, x12, 11
	sw	x12, 0(x1)
	sub	x5, x9, x5
	srli	x5, x5, 11
	regsw_c	x15, 0x4fe(x15)		# 011110111110011111110
	sw	x5, 224(x1)
	addi	x5, x10, 1024
	add	x9, x5, x13
	srli	x9, x9, 11
	sw	x9, 32(x1)
	sub	x5, x5, x13
	srli	x5, x5, 11
	regsw_c	x15, 0x4fe(x15)		# 011110111110011111110
	sw	x5, 192(x1)
	addi	x5, x7, 1024
	add	x7, x5, x11
	srli	x7, x7, 11
	sw	x7, 64(x1)
	sub	x5, x5, x11
	srli	x5, x5, 11
	regsw_c	x15, 0x4fe(x15)		# 011110111110011111110
	sw	x5, 160(x1)
	addi	x5, x6, 1024
	add	x6, x5, x8
	srli	x6, x6, 11
	sw	x6, 96(x1)
	sub	x5, x5, x8
	srli	x5, x5, 11
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x6, 128
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	regsw_c	x28, 0x18(x29)		# 111011110000000011000
	add	x6, x1, x6
	sw	x5, 0(x6)
	addi	x1, x1, 4
	addi	a1, a1, 4
	addi	a2, a2, 2
	bne	x1, x2, .LBB0_1
	j	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	regsw_c	x15, 0x4db(x18)		# 100100111110011011011
	lh	x5, -64(a2)
	lw	x6, 0(a1)
	mul	x5, x5, x6
	slli	x5, x5, 2
	sw	x5, 0(x1)
	sw	x5, 32(x1)
	sw	x5, 64(x1)
	regsw_c	x22, 0x700(x13)		# 011011011011100000000
	sw	x5, 96(x1)
	sw	x5, 128(x1)
	sw	x5, 160(x1)
	sw	x5, 192(x1)
	li	x6, 224
	j	.LBB0_9
.LBB0_11:
	addi	a0, a0, 128
	slli	a1, a4, 32
	srli	a1, a1, 32
	addi	a2, sp, 16
	addi	a4, a3, 64
	regsw_c	x8, 0x0(x18)		# 100100100000000000000
	addi	x1, t6, 1987
	addi	x2, a7, 932
	lui	x3, 32
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	regsw_c	x9, 0x480(x18)		# 100100100110010000000
	ld	x4, 0(a3)
	lwu	x5, -12(a2)
	lwu	x6, -8(a2)
	add	x4, x4, a1
	bnez	x5, .LBB0_20
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x6, .LBB0_20
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lw	x6, -4(a2)
	bnez	x6, .LBB0_19
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lw	x6, 0(a2)
	bnez	x6, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lw	x6, 4(a2)
	bnez	x6, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lw	x6, 8(a2)
	bnez	x6, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_12 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lw	x6, 12(a2)
	beqz	x6, .LBB0_22
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x6, 0
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=1
	regsw_c	x25, 0x1f7(x19)		# 100111100100111110111
	lwu	x7, 8(a2)
	add	x8, x7, x6
	lw	x9, -16(a2)
	lw	x10, 0(a2)
	mul	x8, x8, x1
	mul	x6, x6, t5
	add	x6, x8, x6
	regsw_c	x9, 0x1bf(x30)		# 111100100100110111111
	add	x11, x10, x9
	lwu	x12, 12(a2)
	lwu	x13, -4(a2)
	lwu	x14, 4(a2)
	slli	x11, x11, 13
	add	x15, x12, x5
	add	x16, x13, x12
	regsw_c	x29, 0x5b7(x31)		# 111111110110110110111
	add	x17, x14, x5
	add	x18, x16, x17
	mul	x18, x18, t4
	mul	x5, x5, t3
	mul	x15, x15, a6
	mul	x17, x17, a5
	add	x17, x18, x17
	regsw_c	x31, 0x7f6(x31)		# 111111111111111110110
	add	x5, x15, x5
	add	x5, x5, x17
	add	x19, x11, x3
	add	x19, x19, x6
	add	x20, x19, x5
	slli	x20, x20, 36
	srli	x20, x20, 54
	regsw_c	x15, 0x7de(x23)		# 101110111111111011110
	add	x20, a0, x20
	lbu	x20, 0(x20)
	mul	x7, x7, x2
	add	x7, x8, x7
	subw	x8, x9, x10
	sb	x20, 0(x4)
	slli	x8, x8, 13
	regsw_c	x29, 0x5b6(x31)		# 111111110110110110110
	subw	x5, x19, x5
	add	x9, x13, x14
	mul	x10, x13, t1
	mul	x9, x9, t0
	mul	x13, x16, a7
	slli	x5, x5, 36
	srli	x5, x5, 54
	regsw_c	x15, 0x7df(x23)		# 101110111111111011111
	add	x5, a0, x5
	lbu	x5, 0(x5)
	add	x13, x18, x13
	add	x10, x9, x10
	add	x10, x10, x13
	sb	x5, 7(x4)
	add	x5, x8, x3
	regsw_c	x29, 0x573(x31)		# 111111110110101110011
	add	x5, x5, x7
	add	x16, x5, x10
	slli	x16, x16, 36
	srli	x16, x16, 54
	add	x16, a0, x16
	lbu	x16, 0(x16)
	sb	x16, 1(x4)
	regsw_c	x13, 0x3b7(x31)		# 111110110101110110111
	subw	x5, x5, x10
	slli	x5, x5, 36
	srli	x5, x5, 54
	add	x5, a0, x5
	lbu	x5, 0(x5)
	mul	x10, x14, t2
	add	x9, x9, x10
	regsw_c	x31, 0x7f6(x29)		# 111011111111111110110
	add	x9, x9, x17
	sb	x5, 6(x4)
	add	x8, x8, x3
	subw	x5, x8, x7
	add	x7, x5, x9
	slli	x7, x7, 36
	srli	x7, x7, 54
	regsw_c	x7, 0x7b5(x23)		# 101110011111110110101
	add	x7, a0, x7
	lbu	x7, 0(x7)
	sb	x7, 2(x4)
	subw	x5, x5, x9
	slli	x5, x5, 36
	srli	x5, x5, 54
	add	x5, a0, x5
	regsw_c	x15, 0x6ff(x27)		# 110110111111011111111
	lbu	x5, 0(x5)
	mul	x7, x12, t6
	add	x7, x15, x7
	add	x7, x7, x13
	sb	x5, 5(x4)
	add	x11, x11, x3
	subw	x5, x11, x6
	regsw_c	x13, 0x39f(x31)		# 111110110101110011111
	add	x6, x5, x7
	slli	x6, x6, 36
	srli	x6, x6, 54
	add	x6, a0, x6
	lbu	x6, 0(x6)
	sb	x6, 3(x4)
	subw	x5, x5, x7
	regsw_c	x11, 0x500(x27)		# 110110101110100000000
	slli	x5, x5, 36
	srli	x5, x5, 54
	add	x5, a0, x5
	lbu	x5, 0(x5)
	li	x6, 4
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=1
	regsw_c	x16, 0x0(x29)		# 111011000000000000000
	add	x4, x4, x6
	sb	x5, 0(x4)
	addi	a3, a3, 8
	addi	a2, a2, 32
	bne	a3, a4, .LBB0_12
	j	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=1
	regsw_c	x13, 0x573(x19)		# 100110110110101110011
	lw	x5, -16(a2)
	addi	x5, x5, 16
	slli	x5, x5, 49
	srli	x5, x5, 54
	add	x5, a0, x5
	lbu	x5, 0(x5)
	sb	x5, 0(x4)
	regsw_c	x22, 0x6dc(x13)		# 011011011011011011100
	sb	x5, 1(x4)
	sb	x5, 2(x4)
	sb	x5, 3(x4)
	sb	x5, 4(x4)
	sb	x5, 5(x4)
	sb	x5, 6(x4)
	li	x6, 7
	j	.LBB0_21
.LBB0_23:
	addi	sp, sp, 256
	ret
.Lfunc_end0:
	.size	jpeg_idct_islow, .Lfunc_end0-jpeg_idct_islow
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
