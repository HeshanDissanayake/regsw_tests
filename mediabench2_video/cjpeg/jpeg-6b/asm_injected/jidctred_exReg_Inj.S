	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jidctred.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_idct_4x4                   # -- Begin function jpeg_idct_4x4
	.p2align	2
	.type	jpeg_idct_4x4,@function
jpeg_idct_4x4:                          # @jpeg_idct_4x4
# %bb.0:
	addi	sp, sp, -128
	lui	a5, 1048575
	addiw	a5, a5, -80
	lui	a6, 1048574
	addiw	a6, a6, 1922
	lui	a7, 1048572
	addiw	a7, a7, -1415
	lui	t0, 5
	addiw	t0, t0, 515
	lui	t1, 4
	addiw	t1, t1, -1247
	lui	t2, 3
	addiw	t2, t2, -395
	lui	t3, 2
	addiw	t3, t3, -819
	li	t4, 1
	slli	t5, t4, 11
	mv	t6, sp
	ld	a0, 424(a0)
	ld	a1, 88(a1)
	addi	a2, a2, 80
	regsw_c	x9, 0x100(x18)		# 100100100100100000000
	li	x1, 9
	li	x2, 5
	li	x3, -1730
	addi	x4, t3, 1324
	addi	x5, a6, 1344
	j	.LBB0_5
.LBB0_1:                                #   in Loop: Header=BB0_5 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x7, 0
.LBB0_2:                                #   in Loop: Header=BB0_5 Depth=1
	regsw_c	x15, 0x126(x18)		# 100100111100100100110
	lh	x8, -80(a2)
	lw	x9, 0(a1)
	mulw	x8, x9, x8
	lw	x9, 64(a1)
	lh	x10, 16(a2)
	lw	x11, 192(a1)
	slli	x7, x7, 48
	regsw_c	x31, 0x136(x27)		# 110111111100100110110
	srai	x7, x7, 48
	mulw	x7, x9, x7
	mulw	x9, x11, x10
	lh	x10, 32(a2)
	lw	x11, 224(a1)
	mul	x7, x7, t1
	mul	x9, x9, a6
	regsw_c	x25, 0x126(x31)		# 111111100100100100110
	add	x7, x9, x7
	mulw	x9, x11, x10
	lh	x10, 0(a2)
	lw	x11, 160(a1)
	lh	x12, -32(a2)
	lw	x13, 96(a1)
	slli	x8, x8, 14
	regsw_c	x15, 0x5bf(x30)		# 111100111110110111111
	mulw	x10, x11, x10
	lw	x11, 32(a1)
	mulw	x12, x13, x12
	slli	x6, x6, 48
	srai	x6, x6, 48
	mulw	x6, x11, x6
	mul	x11, x9, x3
	regsw_c	x29, 0x7fe(x27)		# 110111110111111111110
	mul	x13, x10, t2
	add	x11, x13, x11
	mul	x13, x12, a7
	add	x11, x11, x13
	mul	x13, x6, x4
	add	x11, x11, x13
	mul	x9, x9, a5
	regsw_c	x29, 0x7be(x31)		# 111111110111110111110
	mul	x10, x10, x5
	add	x9, x10, x9
	mul	x10, x12, t3
	add	x9, x9, x10
	mul	x6, x6, t0
	add	x6, x9, x6
	add	x9, x8, t5
	regsw_c	x28, 0x3f1(x31)		# 111111110001111110001
	add	x9, x7, x9
	add	x10, x9, x6
	srli	x10, x10, 12
	sw	x10, 0(t6)
	sub	x6, x9, x6
	srli	x6, x6, 12
	sw	x6, 96(t6)
	regsw_c	x31, 0x47e(x27)		# 110111111110001111110
	add	x8, x8, t5
	sub	x6, x8, x7
	add	x7, x6, x11
	srli	x7, x7, 12
	sw	x7, 32(t6)
	sub	x6, x6, x11
	srli	x6, x6, 12
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x7, 64
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	regsw_c	x16, 0x0(x21)		# 101011000000000000000
	add	x7, t6, x7
	sw	x6, 0(x7)
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	addi	a1, a1, 4
	addi	t6, t6, 4
	regsw_c	x2, 0x0(x24)		# 110000001000000000000
	addiw	x1, x1, -1
	addi	a2, a2, 2
	bgeu	t4, x1, .LBB0_12
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	beq	x1, x2, .LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	regsw_c	x15, 0x480(x18)		# 100100111110010000000
	lhu	x6, -64(a2)
	lhu	x7, -48(a2)
	or	x8, x6, x7
	slli	x8, x8, 48
	bnez	x8, .LBB0_2
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x7, -32(a2)
	bnez	x7, .LBB0_1
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x7, 0(a2)
	bnez	x7, .LBB0_1
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x7, 16(a2)
	bnez	x7, .LBB0_1
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x7, 32(a2)
	bnez	x7, .LBB0_1
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	regsw_c	x15, 0x449(x18)		# 100100111110001001001
	lh	x6, -80(a2)
	lw	x7, 0(a1)
	mul	x6, x6, x7
	slli	x6, x6, 2
	sw	x6, 0(t6)
	sw	x6, 32(t6)
	sw	x6, 64(t6)
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x7, 96
	j	.LBB0_3
.LBB0_12:
	addi	a0, a0, 128
	slli	a1, a4, 32
	srli	a1, a1, 32
	addi	a2, sp, 28
	addi	a4, a3, 32
	li	t4, -1730
	addi	t5, t3, 1324
	addi	t6, a6, 1344
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	lui	x1, 64
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	regsw_c	x9, 0x480(x18)		# 100100100110010000000
	ld	x2, 0(a3)
	lwu	x3, -24(a2)
	lwu	x4, -20(a2)
	add	x2, x2, a1
	bnez	x3, .LBB0_20
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x4, .LBB0_20
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lw	x4, -16(a2)
	bnez	x4, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lw	x4, -8(a2)
	bnez	x4, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lw	x4, -4(a2)
	bnez	x4, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_13 Depth=1
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lw	x4, 0(a2)
	beqz	x4, .LBB0_22
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x4, 0
.LBB0_20:                               #   in Loop: Header=BB0_13 Depth=1
	regsw_c	x13, 0x5a7(x18)		# 100100110110110100111
	lw	x5, -28(a2)
	lwu	x6, -4(a2)
	slli	x5, x5, 14
	mul	x4, x4, t1
	mul	x6, x6, a6
	lwu	x7, 0(a2)
	add	x4, x6, x4
	regsw_c	x13, 0x5b6(x18)		# 100100110110110110110
	lwu	x6, -8(a2)
	lwu	x8, -16(a2)
	mul	x9, x7, t4
	mul	x7, x7, a5
	mul	x10, x6, t6
	mul	x11, x8, t3
	mul	x12, x3, t0
	regsw_c	x31, 0x7fe(x31)		# 111111111111111111110
	add	x7, x7, x12
	add	x10, x10, x11
	add	x7, x7, x10
	add	x10, x5, x1
	add	x10, x4, x10
	add	x11, x10, x7
	slli	x11, x11, 35
	regsw_c	x29, 0x5b3(x26)		# 110101110110110110011
	srli	x11, x11, 54
	add	x11, a0, x11
	lbu	x11, 0(x11)
	mul	x6, x6, t2
	mul	x8, x8, a7
	mul	x3, x3, t5
	sb	x11, 0(x2)
	regsw_c	x13, 0x3bf(x31)		# 111110110101110111111
	subw	x7, x10, x7
	slli	x7, x7, 35
	srli	x7, x7, 54
	add	x7, a0, x7
	lbu	x7, 0(x7)
	add	x3, x9, x3
	add	x6, x6, x8
	regsw_c	x31, 0x7f6(x29)		# 111011111111111110110
	add	x3, x3, x6
	sb	x7, 3(x2)
	add	x5, x5, x1
	subw	x4, x5, x4
	add	x5, x4, x3
	slli	x5, x5, 35
	srli	x5, x5, 54
	regsw_c	x7, 0x7b5(x23)		# 101110011111110110101
	add	x5, a0, x5
	lbu	x5, 0(x5)
	sb	x5, 1(x2)
	subw	x3, x4, x3
	slli	x3, x3, 35
	srli	x3, x3, 54
	add	x3, a0, x3
	regsw_c	x0, 0x0(x26)		# 110100000000000000000
	lbu	x3, 0(x3)
	li	x4, 2
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=1
	regsw_c	x16, 0x0(x29)		# 111011000000000000000
	add	x2, x2, x4
	sb	x3, 0(x2)
	addi	a3, a3, 8
	addi	a2, a2, 32
	bne	a3, a4, .LBB0_13
	j	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=1
	regsw_c	x13, 0x573(x19)		# 100110110110101110011
	lw	x3, -28(a2)
	addi	x3, x3, 16
	slli	x3, x3, 49
	srli	x3, x3, 54
	add	x3, a0, x3
	lbu	x3, 0(x3)
	sb	x3, 0(x2)
	regsw_c	x24, 0x0(x13)		# 011011100000000000000
	sb	x3, 1(x2)
	sb	x3, 2(x2)
	li	x4, 3
	j	.LBB0_21
.LBB0_23:
	addi	sp, sp, 128
	ret
.Lfunc_end0:
	.size	jpeg_idct_4x4, .Lfunc_end0-jpeg_idct_4x4
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_idct_2x2                   # -- Begin function jpeg_idct_2x2
	.p2align	2
	.type	jpeg_idct_2x2,@function
jpeg_idct_2x2:                          # @jpeg_idct_2x2
# %bb.0:
	lui	a5, 1048575
	addiw	a5, a5, -1810
	lui	a6, 1048573
	addiw	a6, a6, 1862
	lui	a7, 7
	lhu	t0, 16(a2)
	lhu	t2, 48(a2)
	addiw	a7, a7, 1020
	lui	t3, 2
	ld	t1, 88(a1)
	or	a1, t0, t2
	slli	t4, a1, 48
	addiw	a1, t3, -1225
	bnez	t4, .LBB1_4
# %bb.1:
	lhu	t2, 80(a2)
	bnez	t2, .LBB1_3
# %bb.2:
	lhu	t2, 112(a2)
	beqz	t2, .LBB1_37
.LBB1_3:
	li	t2, 0
.LBB1_4:
	lh	t3, 0(a2)
	lw	t4, 0(t1)
	lh	t5, 112(a2)
	lw	t6, 224(t1)
	mulw	t3, t4, t3
	lh	t4, 80(a2)
	regsw_c	x0, 0x80(x16)		# 100000000000010000000
	lw	x1, 160(t1)
	mulw	t5, t6, t5
	slli	t3, t3, 15
	mul	t5, t5, a5
	mulw	t4, x1, t4
	mul	t4, t4, a1
	lw	t6, 96(t1)
	add	t4, t4, t5
	slli	t2, t2, 48
	srai	t2, t2, 48
	mulw	t2, t6, t2
	lw	t5, 32(t1)
	mul	t2, t2, a6
	slli	t0, t0, 48
	srai	t0, t0, 48
	mulw	t0, t5, t0
	mul	t0, t0, a7
	add	t0, t2, t0
	add	t0, t4, t0
	lui	t2, 1
	or	t3, t3, t2
	add	t2, t3, t0
	srli	t2, t2, 13
	sub	t0, t3, t0
	srli	t0, t0, 13
.LBB1_5:
	lhu	t3, 18(a2)
	lhu	t4, 50(a2)
	or	t5, t3, t4
	slli	t5, t5, 48
	bnez	t5, .LBB1_9
# %bb.6:
	lhu	t4, 82(a2)
	bnez	t4, .LBB1_8
# %bb.7:
	lhu	t4, 114(a2)
	beqz	t4, .LBB1_38
.LBB1_8:
	li	t4, 0
.LBB1_9:
	lh	t5, 2(a2)
	lw	t6, 4(t1)
	regsw_c	x0, 0x138(x18)		# 100100000000100111000
	lh	x1, 114(a2)
	lw	x2, 228(t1)
	mulw	t5, t6, t5
	lh	t6, 82(a2)
	lw	x3, 164(t1)
	mulw	x1, x2, x1
	slli	t5, t5, 15
	regsw_c	x1, 0x40(x25)		# 110010000100001000000
	mul	x1, x1, a5
	mulw	t6, x3, t6
	mul	t6, t6, a1
	lw	x2, 100(t1)
	add	t6, t6, x1
	slli	t4, t4, 48
	srai	t4, t4, 48
	regsw_c	x0, 0x10(x10)		# 010100000000000010000
	mulw	t4, x2, t4
	lw	x1, 36(t1)
	mul	t4, t4, a6
	slli	t3, t3, 48
	srai	t3, t3, 48
	mulw	t3, x1, t3
	mul	t3, t3, a7
	add	t3, t4, t3
	add	t3, t6, t3
	lui	t4, 1
	or	t5, t5, t4
	add	t4, t5, t3
	srli	t4, t4, 13
	sub	t3, t5, t3
	srli	t3, t3, 13
.LBB1_10:
	lhu	t5, 22(a2)
	lhu	t6, 54(a2)
	regsw_c	x4, 0x0(x19)		# 100110010000000000000
	or	x1, t5, t6
	slli	x1, x1, 48
	bnez	x1, .LBB1_14
# %bb.11:
	lhu	t6, 86(a2)
	bnez	t6, .LBB1_13
# %bb.12:
	lhu	t6, 118(a2)
	beqz	t6, .LBB1_39
.LBB1_13:
	li	t6, 0
.LBB1_14:
	regsw_c	x9, 0x1e4(x18)		# 100100100100111100100
	lh	x1, 6(a2)
	lw	x2, 12(t1)
	lh	x3, 118(a2)
	lw	x4, 236(t1)
	mulw	x1, x2, x1
	lh	x2, 86(a2)
	lw	x5, 172(t1)
	regsw_c	x13, 0x7a7(x31)		# 111110110111110100111
	mulw	x3, x4, x3
	slli	x1, x1, 15
	mul	x3, x3, a5
	mulw	x2, x5, x2
	mul	x2, x2, a1
	lw	x4, 108(t1)
	add	x2, x2, x3
	slli	t6, t6, 48
	srai	t6, t6, 48
	regsw_c	x0, 0x10(x10)		# 010100000000000010000
	mulw	t6, x4, t6
	lw	x3, 44(t1)
	mul	t6, t6, a6
	slli	t5, t5, 48
	srai	t5, t5, 48
	mulw	t5, x3, t5
	mul	t5, t5, a7
	add	t5, t6, t5
	regsw_c	x12, 0x410(x8)		# 010000110010000010000
	add	t5, x2, t5
	lui	t6, 1
	or	x1, x1, t6
	add	t6, x1, t5
	srli	t6, t6, 13
	sub	t5, x1, t5
	srli	t5, t5, 13
.LBB1_15:
	regsw_c	x15, 0x480(x18)		# 100100111110010000000
	lhu	x1, 26(a2)
	lhu	x2, 58(a2)
	or	x3, x1, x2
	slli	x3, x3, 48
	bnez	x3, .LBB1_19
# %bb.16:
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x2, 90(a2)
	bnez	x2, .LBB1_18
# %bb.17:
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x2, 122(a2)
	beqz	x2, .LBB1_40
.LBB1_18:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x2, 0
.LBB1_19:
	regsw_c	x9, 0x1e4(x18)		# 100100100100111100100
	lh	x3, 10(a2)
	lw	x4, 20(t1)
	lh	x5, 122(a2)
	lw	x6, 244(t1)
	mulw	x3, x4, x3
	lh	x4, 90(a2)
	lw	x7, 180(t1)
	regsw_c	x13, 0x7a7(x31)		# 111110110111110100111
	mulw	x5, x6, x5
	slli	x3, x3, 15
	mul	x5, x5, a5
	mulw	x4, x7, x4
	mul	x4, x4, a1
	lw	x6, 116(t1)
	add	x4, x4, x5
	regsw_c	x15, 0x1b6(x27)		# 110110111100110110110
	slli	x2, x2, 48
	srai	x2, x2, 48
	mulw	x2, x6, x2
	lw	x5, 52(t1)
	mul	x2, x2, a6
	slli	x1, x1, 48
	srai	x1, x1, 48
	regsw_c	x15, 0x73f(x31)		# 111110111111100111111
	mulw	x1, x5, x1
	mul	x1, x1, a7
	add	x1, x2, x1
	add	x1, x4, x1
	lui	x2, 1
	or	x3, x3, x2
	add	x2, x3, x1
	regsw_c	x28, 0x0(x27)		# 110111110000000000000
	srli	x2, x2, 13
	sub	x1, x3, x1
	srli	x1, x1, 13
.LBB1_20:
	regsw_c	x1, 0x790(x18)		# 100100000111110010000
	lhu	x3, 30(a2)
	lhu	x4, 62(a2)
	ld	a0, 424(a0)
	or	x5, x3, x4
	slli	x5, x5, 48
	bnez	x5, .LBB1_24
# %bb.21:
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x4, 94(a2)
	bnez	x4, .LBB1_23
# %bb.22:
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x4, 126(a2)
	beqz	x4, .LBB1_41
.LBB1_23:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x4, 0
.LBB1_24:
	regsw_c	x9, 0x1c4(x18)		# 100100100100111000100
	lh	x5, 14(a2)
	lw	x6, 28(t1)
	lh	x7, 126(a2)
	lw	x8, 252(t1)
	mulw	x5, x6, x5
	lh	a2, 94(a2)
	lw	x6, 188(t1)
	regsw_c	x12, 0x421(x31)		# 111110110010000100001
	mulw	x7, x8, x7
	slli	x5, x5, 15
	mul	x7, x7, a5
	mulw	a2, x6, a2
	mul	a2, a2, a1
	lw	x6, 124(t1)
	add	a2, a2, x7
	regsw_c	x14, 0x1b6(x27)		# 110110111000110110110
	slli	x4, x4, 48
	srai	x4, x4, 48
	mulw	x4, x6, x4
	lw	t1, 60(t1)
	mul	x4, x4, a6
	slli	x3, x3, 48
	srai	x3, x3, 48
	regsw_c	x4, 0x14(x4)		# 001000010000000010100
	mulw	t1, t1, x3
	mul	t1, t1, a7
	add	t1, x4, t1
	add	a2, a2, t1
	lui	t1, 1
	or	t1, x5, t1
	add	x3, t1, a2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	srli	x3, x3, 13
	sub	a2, t1, a2
	srli	a2, a2, 13
.LBB1_25:
	addi	a0, a0, 128
	ld	t1, 0(a3)
	slli	a4, a4, 32
	srli	a4, a4, 32
	regsw_c	x4, 0x0(x16)		# 100000010000000000000
	sext.w	x4, t4
	add	t1, t1, a4
	bnez	x4, .LBB1_30
# %bb.26:
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	sext.w	x4, t6
	bnez	x4, .LBB1_30
# %bb.27:
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	sext.w	x4, x2
	bnez	x4, .LBB1_30
# %bb.28:
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	sext.w	x4, x3
	bnez	x4, .LBB1_30
# %bb.29:
	addi	t2, t2, 16
	slli	t2, t2, 49
	srli	t2, t2, 54
	add	t2, a0, t2
	lbu	t2, 0(t2)
	sb	t2, 0(t1)
	j	.LBB1_31
.LBB1_30:
	slli	t2, t2, 15
	regsw_c	x0, 0x90(x27)		# 110110000000010010000
	mul	x3, x3, a5
	mul	x2, x2, a1
	mul	t6, t6, a6
	mul	t4, t4, a7
	add	t4, x3, t4
	add	t6, x2, t6
	add	t4, t4, t6
	lui	t6, 128
	add	t2, t2, t6
	add	t6, t2, t4
	slli	t6, t6, 34
	srli	t6, t6, 54
	add	t6, a0, t6
	lbu	t6, 0(t6)
	sb	t6, 0(t1)
	subw	t2, t2, t4
	slli	t2, t2, 34
	srli	t2, t2, 54
	add	t2, a0, t2
	lbu	t2, 0(t2)
.LBB1_31:
	sb	t2, 1(t1)
	ld	a3, 8(a3)
	sext.w	t1, t3
	add	a4, a3, a4
	bnez	t1, .LBB1_36
# %bb.32:
	sext.w	a3, t5
	bnez	a3, .LBB1_36
# %bb.33:
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	sext.w	a3, x1
	bnez	a3, .LBB1_36
# %bb.34:
	sext.w	a3, a2
	bnez	a3, .LBB1_36
# %bb.35:
	addi	t0, t0, 16
	slli	t0, t0, 49
	srli	a1, t0, 54
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sb	a0, 0(a4)
	sb	a0, 1(a4)
	ret
.LBB1_36:
	slli	t0, t0, 15
	mul	a2, a2, a5
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mul	a1, x1, a1
	mul	a3, t5, a6
	mul	a5, t3, a7
	add	a2, a2, a5
	add	a1, a1, a3
	add	a1, a2, a1
	lui	a2, 128
	add	a2, t0, a2
	add	a3, a2, a1
	slli	a3, a3, 34
	srli	a3, a3, 54
	add	a3, a0, a3
	lbu	a3, 0(a3)
	sb	a3, 0(a4)
	subw	a2, a2, a1
	slli	a2, a2, 34
	srli	a2, a2, 54
	add	a0, a0, a2
	lbu	a0, 0(a0)
	sb	a0, 1(a4)
	ret
.LBB1_37:
	lh	t0, 0(a2)
	lw	t2, 0(t1)
	mul	t0, t0, t2
	slli	t0, t0, 2
	mv	t2, t0
	j	.LBB1_5
.LBB1_38:
	lh	t3, 2(a2)
	lw	t4, 4(t1)
	mul	t3, t3, t4
	slli	t3, t3, 2
	mv	t4, t3
	j	.LBB1_10
.LBB1_39:
	lh	t5, 6(a2)
	lw	t6, 12(t1)
	mul	t5, t5, t6
	slli	t5, t5, 2
	mv	t6, t5
	j	.LBB1_15
.LBB1_40:
	regsw_c	x15, 0x580(x18)		# 100100111110110000000
	lh	x1, 10(a2)
	lw	x2, 20(t1)
	mul	x1, x1, x2
	slli	x1, x1, 2
	mv	x2, x1
	j	.LBB1_20
.LBB1_41:
	lh	a2, 14(a2)
	lw	t1, 28(t1)
	mul	a2, a2, t1
	slli	a2, a2, 2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x3, a2
	j	.LBB1_25
.Lfunc_end1:
	.size	jpeg_idct_2x2, .Lfunc_end1-jpeg_idct_2x2
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_idct_1x1                   # -- Begin function jpeg_idct_1x1
	.p2align	2
	.type	jpeg_idct_1x1,@function
jpeg_idct_1x1:                          # @jpeg_idct_1x1
# %bb.0:
	ld	a1, 88(a1)
	lh	a2, 0(a2)
	lw	a1, 0(a1)
	ld	a0, 424(a0)
	mul	a1, a1, a2
	addi	a1, a1, 4
	slli	a1, a1, 51
	srli	a1, a1, 54
	add	a0, a0, a1
	ld	a1, 0(a3)
	lbu	a0, 128(a0)
	slli	a4, a4, 32
	srli	a4, a4, 32
	add	a1, a1, a4
	sb	a0, 0(a1)
	ret
.Lfunc_end2:
	.size	jpeg_idct_1x1, .Lfunc_end2-jpeg_idct_1x1
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
