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
	li	n1, 9
	li	n2, 5
	li	n3, -1730
	addi	n4, t3, 1324
	addi	n5, a6, 1344
	j	.LBB0_5
.LBB0_1:                                #   in Loop: Header=BB0_5 Depth=1
	li	n7, 0
.LBB0_2:                                #   in Loop: Header=BB0_5 Depth=1
	lh	n8, -80(a2)
	lw	n9, 0(a1)
	mulw	n8, n9, n8
	lw	n9, 64(a1)
	lh	n10, 16(a2)
	lw	n11, 192(a1)
	slli	n7, n7, 48
	srai	n7, n7, 48
	mulw	n7, n9, n7
	mulw	n9, n11, n10
	lh	n10, 32(a2)
	lw	n11, 224(a1)
	mul	n7, n7, t1
	mul	n9, n9, a6
	add	n7, n9, n7
	mulw	n9, n11, n10
	lh	n10, 0(a2)
	lw	n11, 160(a1)
	lh	n12, -32(a2)
	lw	n13, 96(a1)
	slli	n8, n8, 14
	mulw	n10, n11, n10
	lw	n11, 32(a1)
	mulw	n12, n13, n12
	slli	n6, n6, 48
	srai	n6, n6, 48
	mulw	n6, n11, n6
	mul	n11, n9, n3
	mul	n13, n10, t2
	add	n11, n13, n11
	mul	n13, n12, a7
	add	n11, n11, n13
	mul	n13, n6, n4
	add	n11, n11, n13
	mul	n9, n9, a5
	mul	n10, n10, n5
	add	n9, n10, n9
	mul	n10, n12, t3
	add	n9, n9, n10
	mul	n6, n6, t0
	add	n6, n9, n6
	add	n9, n8, t5
	add	n9, n7, n9
	add	n10, n9, n6
	srli	n10, n10, 12
	sw	n10, 0(t6)
	sub	n6, n9, n6
	srli	n6, n6, 12
	sw	n6, 96(t6)
	add	n8, n8, t5
	sub	n6, n8, n7
	add	n7, n6, n11
	srli	n7, n7, 12
	sw	n7, 32(t6)
	sub	n6, n6, n11
	srli	n6, n6, 12
	li	n7, 64
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	add	n7, t6, n7
	sw	n6, 0(n7)
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	addi	a1, a1, 4
	addi	t6, t6, 4
	addiw	n1, n1, -1
	addi	a2, a2, 2
	bgeu	t4, n1, .LBB0_12
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	beq	n1, n2, .LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	lhu	n6, -64(a2)
	lhu	n7, -48(a2)
	or	n8, n6, n7
	slli	n8, n8, 48
	bnez	n8, .LBB0_2
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	lhu	n7, -32(a2)
	bnez	n7, .LBB0_1
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	lhu	n7, 0(a2)
	bnez	n7, .LBB0_1
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	lhu	n7, 16(a2)
	bnez	n7, .LBB0_1
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	lhu	n7, 32(a2)
	bnez	n7, .LBB0_1
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	lh	n6, -80(a2)
	lw	n7, 0(a1)
	mul	n6, n6, n7
	slli	n6, n6, 2
	sw	n6, 0(t6)
	sw	n6, 32(t6)
	sw	n6, 64(t6)
	li	n7, 96
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
	lui	n1, 64
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	ld	n2, 0(a3)
	lwu	n3, -24(a2)
	lwu	n4, -20(a2)
	add	n2, n2, a1
	bnez	n3, .LBB0_20
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	bnez	n4, .LBB0_20
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	lw	n4, -16(a2)
	bnez	n4, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	lw	n4, -8(a2)
	bnez	n4, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=1
	lw	n4, -4(a2)
	bnez	n4, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_13 Depth=1
	lw	n4, 0(a2)
	beqz	n4, .LBB0_22
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	li	n4, 0
.LBB0_20:                               #   in Loop: Header=BB0_13 Depth=1
	lw	n5, -28(a2)
	lwu	n6, -4(a2)
	slli	n5, n5, 14
	mul	n4, n4, t1
	mul	n6, n6, a6
	lwu	n7, 0(a2)
	add	n4, n6, n4
	lwu	n6, -8(a2)
	lwu	n8, -16(a2)
	mul	n9, n7, t4
	mul	n7, n7, a5
	mul	n10, n6, t6
	mul	n11, n8, t3
	mul	n12, n3, t0
	add	n7, n7, n12
	add	n10, n10, n11
	add	n7, n7, n10
	add	n10, n5, n1
	add	n10, n4, n10
	add	n11, n10, n7
	slli	n11, n11, 35
	srli	n11, n11, 54
	add	n11, a0, n11
	lbu	n11, 0(n11)
	mul	n6, n6, t2
	mul	n8, n8, a7
	mul	n3, n3, t5
	sb	n11, 0(n2)
	subw	n7, n10, n7
	slli	n7, n7, 35
	srli	n7, n7, 54
	add	n7, a0, n7
	lbu	n7, 0(n7)
	add	n3, n9, n3
	add	n6, n6, n8
	add	n3, n3, n6
	sb	n7, 3(n2)
	add	n5, n5, n1
	subw	n4, n5, n4
	add	n5, n4, n3
	slli	n5, n5, 35
	srli	n5, n5, 54
	add	n5, a0, n5
	lbu	n5, 0(n5)
	sb	n5, 1(n2)
	subw	n3, n4, n3
	slli	n3, n3, 35
	srli	n3, n3, 54
	add	n3, a0, n3
	lbu	n3, 0(n3)
	li	n4, 2
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=1
	add	n2, n2, n4
	sb	n3, 0(n2)
	addi	a3, a3, 8
	addi	a2, a2, 32
	bne	a3, a4, .LBB0_13
	j	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=1
	lw	n3, -28(a2)
	addi	n3, n3, 16
	slli	n3, n3, 49
	srli	n3, n3, 54
	add	n3, a0, n3
	lbu	n3, 0(n3)
	sb	n3, 0(n2)
	sb	n3, 1(n2)
	sb	n3, 2(n2)
	li	n4, 3
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
	lw	n1, 160(t1)
	mulw	t5, t6, t5
	slli	t3, t3, 15
	mul	t5, t5, a5
	mulw	t4, n1, t4
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
	lh	n1, 114(a2)
	lw	n2, 228(t1)
	mulw	t5, t6, t5
	lh	t6, 82(a2)
	lw	n3, 164(t1)
	mulw	n1, n2, n1
	slli	t5, t5, 15
	mul	n1, n1, a5
	mulw	t6, n3, t6
	mul	t6, t6, a1
	lw	n2, 100(t1)
	add	t6, t6, n1
	slli	t4, t4, 48
	srai	t4, t4, 48
	mulw	t4, n2, t4
	lw	n1, 36(t1)
	mul	t4, t4, a6
	slli	t3, t3, 48
	srai	t3, t3, 48
	mulw	t3, n1, t3
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
	or	n1, t5, t6
	slli	n1, n1, 48
	bnez	n1, .LBB1_14
# %bb.11:
	lhu	t6, 86(a2)
	bnez	t6, .LBB1_13
# %bb.12:
	lhu	t6, 118(a2)
	beqz	t6, .LBB1_39
.LBB1_13:
	li	t6, 0
.LBB1_14:
	lh	n1, 6(a2)
	lw	n2, 12(t1)
	lh	n3, 118(a2)
	lw	n4, 236(t1)
	mulw	n1, n2, n1
	lh	n2, 86(a2)
	lw	n5, 172(t1)
	mulw	n3, n4, n3
	slli	n1, n1, 15
	mul	n3, n3, a5
	mulw	n2, n5, n2
	mul	n2, n2, a1
	lw	n4, 108(t1)
	add	n2, n2, n3
	slli	t6, t6, 48
	srai	t6, t6, 48
	mulw	t6, n4, t6
	lw	n3, 44(t1)
	mul	t6, t6, a6
	slli	t5, t5, 48
	srai	t5, t5, 48
	mulw	t5, n3, t5
	mul	t5, t5, a7
	add	t5, t6, t5
	add	t5, n2, t5
	lui	t6, 1
	or	n1, n1, t6
	add	t6, n1, t5
	srli	t6, t6, 13
	sub	t5, n1, t5
	srli	t5, t5, 13
.LBB1_15:
	lhu	n1, 26(a2)
	lhu	n2, 58(a2)
	or	n3, n1, n2
	slli	n3, n3, 48
	bnez	n3, .LBB1_19
# %bb.16:
	lhu	n2, 90(a2)
	bnez	n2, .LBB1_18
# %bb.17:
	lhu	n2, 122(a2)
	beqz	n2, .LBB1_40
.LBB1_18:
	li	n2, 0
.LBB1_19:
	lh	n3, 10(a2)
	lw	n4, 20(t1)
	lh	n5, 122(a2)
	lw	n6, 244(t1)
	mulw	n3, n4, n3
	lh	n4, 90(a2)
	lw	n7, 180(t1)
	mulw	n5, n6, n5
	slli	n3, n3, 15
	mul	n5, n5, a5
	mulw	n4, n7, n4
	mul	n4, n4, a1
	lw	n6, 116(t1)
	add	n4, n4, n5
	slli	n2, n2, 48
	srai	n2, n2, 48
	mulw	n2, n6, n2
	lw	n5, 52(t1)
	mul	n2, n2, a6
	slli	n1, n1, 48
	srai	n1, n1, 48
	mulw	n1, n5, n1
	mul	n1, n1, a7
	add	n1, n2, n1
	add	n1, n4, n1
	lui	n2, 1
	or	n3, n3, n2
	add	n2, n3, n1
	srli	n2, n2, 13
	sub	n1, n3, n1
	srli	n1, n1, 13
.LBB1_20:
	lhu	n3, 30(a2)
	lhu	n4, 62(a2)
	ld	a0, 424(a0)
	or	n5, n3, n4
	slli	n5, n5, 48
	bnez	n5, .LBB1_24
# %bb.21:
	lhu	n4, 94(a2)
	bnez	n4, .LBB1_23
# %bb.22:
	lhu	n4, 126(a2)
	beqz	n4, .LBB1_41
.LBB1_23:
	li	n4, 0
.LBB1_24:
	lh	n5, 14(a2)
	lw	n6, 28(t1)
	lh	n7, 126(a2)
	lw	n8, 252(t1)
	mulw	n5, n6, n5
	lh	a2, 94(a2)
	lw	n6, 188(t1)
	mulw	n7, n8, n7
	slli	n5, n5, 15
	mul	n7, n7, a5
	mulw	a2, n6, a2
	mul	a2, a2, a1
	lw	n6, 124(t1)
	add	a2, a2, n7
	slli	n4, n4, 48
	srai	n4, n4, 48
	mulw	n4, n6, n4
	lw	t1, 60(t1)
	mul	n4, n4, a6
	slli	n3, n3, 48
	srai	n3, n3, 48
	mulw	t1, t1, n3
	mul	t1, t1, a7
	add	t1, n4, t1
	add	a2, a2, t1
	lui	t1, 1
	or	t1, n5, t1
	add	n3, t1, a2
	srli	n3, n3, 13
	sub	a2, t1, a2
	srli	a2, a2, 13
.LBB1_25:
	addi	a0, a0, 128
	ld	t1, 0(a3)
	slli	a4, a4, 32
	srli	a4, a4, 32
	sext.w	n4, t4
	add	t1, t1, a4
	bnez	n4, .LBB1_30
# %bb.26:
	sext.w	n4, t6
	bnez	n4, .LBB1_30
# %bb.27:
	sext.w	n4, n2
	bnez	n4, .LBB1_30
# %bb.28:
	sext.w	n4, n3
	bnez	n4, .LBB1_30
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
	mul	n3, n3, a5
	mul	n2, n2, a1
	mul	t6, t6, a6
	mul	t4, t4, a7
	add	t4, n3, t4
	add	t6, n2, t6
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
	sext.w	a3, n1
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
	mul	a1, n1, a1
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
	lh	n1, 10(a2)
	lw	n2, 20(t1)
	mul	n1, n1, n2
	slli	n1, n1, 2
	mv	n2, n1
	j	.LBB1_20
.LBB1_41:
	lh	a2, 14(a2)
	lw	t1, 28(t1)
	mul	a2, a2, t1
	slli	a2, a2, 2
	mv	n3, a2
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
