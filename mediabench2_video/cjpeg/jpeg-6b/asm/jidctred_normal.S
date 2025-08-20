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
	addi	sp, sp, -224
	sd	s0, 216(sp)                     # 8-byte Folded Spill
	sd	s1, 208(sp)                     # 8-byte Folded Spill
	sd	s2, 200(sp)                     # 8-byte Folded Spill
	sd	s3, 192(sp)                     # 8-byte Folded Spill
	sd	s4, 184(sp)                     # 8-byte Folded Spill
	sd	s5, 176(sp)                     # 8-byte Folded Spill
	sd	s6, 168(sp)                     # 8-byte Folded Spill
	sd	s7, 160(sp)                     # 8-byte Folded Spill
	sd	s8, 152(sp)                     # 8-byte Folded Spill
	sd	s9, 144(sp)                     # 8-byte Folded Spill
	sd	s10, 136(sp)                    # 8-byte Folded Spill
	sd	s11, 128(sp)                    # 8-byte Folded Spill
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
	li	s0, 9
	li	s1, 5
	li	s2, -1730
	j	.LBB0_5
.LBB0_1:                                #   in Loop: Header=BB0_5 Depth=1
	li	s4, 0
.LBB0_2:                                #   in Loop: Header=BB0_5 Depth=1
	lh	s5, -80(a2)
	lw	s6, 0(a1)
	mulw	s5, s6, s5
	lw	s6, 64(a1)
	lh	s7, 16(a2)
	lw	s8, 192(a1)
	slli	s4, s4, 48
	srai	s4, s4, 48
	mulw	s4, s6, s4
	mulw	s6, s8, s7
	lh	s7, 32(a2)
	lw	s8, 224(a1)
	mul	s4, s4, t1
	mul	s6, s6, a6
	add	s4, s6, s4
	mulw	s6, s8, s7
	lh	s7, 0(a2)
	lw	s8, 160(a1)
	lh	s9, -32(a2)
	lw	s10, 96(a1)
	slli	s5, s5, 14
	mulw	s7, s8, s7
	lw	s8, 32(a1)
	mulw	s9, s10, s9
	slli	s3, s3, 48
	srai	s3, s3, 48
	mulw	s3, s8, s3
	mul	s8, s6, s2
	mul	s10, s7, t2
	add	s8, s10, s8
	mul	s10, s9, a7
	add	s8, s8, s10
	addi	s10, t3, 1324
	mul	s10, s3, s10
	add	s8, s8, s10
	mul	s6, s6, a5
	addi	s10, a6, 1344
	mul	s7, s7, s10
	add	s6, s7, s6
	mul	s7, s9, t3
	add	s6, s6, s7
	mul	s3, s3, t0
	add	s3, s6, s3
	add	s6, s5, t5
	add	s6, s4, s6
	add	s7, s6, s3
	srli	s7, s7, 12
	sw	s7, 0(t6)
	sub	s3, s6, s3
	srli	s3, s3, 12
	sw	s3, 96(t6)
	add	s5, s5, t5
	sub	s3, s5, s4
	add	s4, s3, s8
	srli	s4, s4, 12
	sw	s4, 32(t6)
	sub	s3, s3, s8
	srli	s3, s3, 12
	li	s4, 64
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	add	s4, t6, s4
	sw	s3, 0(s4)
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	addi	a1, a1, 4
	addi	t6, t6, 4
	addiw	s0, s0, -1
	addi	a2, a2, 2
	bgeu	t4, s0, .LBB0_12
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	beq	s0, s1, .LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	lhu	s3, -64(a2)
	lhu	s4, -48(a2)
	or	s5, s3, s4
	slli	s5, s5, 48
	bnez	s5, .LBB0_2
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	lhu	s4, -32(a2)
	bnez	s4, .LBB0_1
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	lhu	s4, 0(a2)
	bnez	s4, .LBB0_1
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	lhu	s4, 16(a2)
	bnez	s4, .LBB0_1
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	lhu	s4, 32(a2)
	bnez	s4, .LBB0_1
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	lh	s3, -80(a2)
	lw	s4, 0(a1)
	mul	s3, s3, s4
	slli	s3, s3, 2
	sw	s3, 0(t6)
	sw	s3, 32(t6)
	sw	s3, 64(t6)
	li	s4, 96
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
	lui	s0, 64
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	ld	s1, 0(a3)
	lwu	s2, -24(a2)
	lwu	s3, -20(a2)
	add	s1, s1, a1
	bnez	s2, .LBB0_20
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	bnez	s3, .LBB0_20
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	lw	s3, -16(a2)
	bnez	s3, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	lw	s3, -8(a2)
	bnez	s3, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=1
	lw	s3, -4(a2)
	bnez	s3, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_13 Depth=1
	lw	s3, 0(a2)
	beqz	s3, .LBB0_22
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	li	s3, 0
.LBB0_20:                               #   in Loop: Header=BB0_13 Depth=1
	lw	s4, -28(a2)
	lwu	s5, -4(a2)
	slli	s4, s4, 14
	mul	s3, s3, t1
	mul	s5, s5, a6
	lwu	s6, 0(a2)
	add	s3, s5, s3
	lwu	s5, -8(a2)
	lwu	s7, -16(a2)
	mul	s8, s6, t4
	mul	s6, s6, a5
	mul	s9, s5, t6
	mul	s10, s7, t3
	mul	s11, s2, t0
	add	s6, s6, s11
	add	s9, s9, s10
	add	s6, s6, s9
	add	s9, s4, s0
	add	s9, s3, s9
	add	s10, s9, s6
	slli	s10, s10, 35
	srli	s10, s10, 54
	add	s10, a0, s10
	lbu	s10, 0(s10)
	mul	s5, s5, t2
	mul	s7, s7, a7
	mul	s2, s2, t5
	sb	s10, 0(s1)
	subw	s6, s9, s6
	slli	s6, s6, 35
	srli	s6, s6, 54
	add	s6, a0, s6
	lbu	s6, 0(s6)
	add	s2, s8, s2
	add	s5, s5, s7
	add	s2, s2, s5
	sb	s6, 3(s1)
	add	s4, s4, s0
	subw	s3, s4, s3
	add	s4, s3, s2
	slli	s4, s4, 35
	srli	s4, s4, 54
	add	s4, a0, s4
	lbu	s4, 0(s4)
	sb	s4, 1(s1)
	subw	s2, s3, s2
	slli	s2, s2, 35
	srli	s2, s2, 54
	add	s2, a0, s2
	lbu	s2, 0(s2)
	li	s3, 2
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=1
	add	s1, s1, s3
	sb	s2, 0(s1)
	addi	a3, a3, 8
	addi	a2, a2, 32
	bne	a3, a4, .LBB0_13
	j	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=1
	lw	s2, -28(a2)
	addi	s2, s2, 16
	slli	s2, s2, 49
	srli	s2, s2, 54
	add	s2, a0, s2
	lbu	s2, 0(s2)
	sb	s2, 0(s1)
	sb	s2, 1(s1)
	sb	s2, 2(s1)
	li	s3, 3
	j	.LBB0_21
.LBB0_23:
	ld	s0, 216(sp)                     # 8-byte Folded Reload
	ld	s1, 208(sp)                     # 8-byte Folded Reload
	ld	s2, 200(sp)                     # 8-byte Folded Reload
	ld	s3, 192(sp)                     # 8-byte Folded Reload
	ld	s4, 184(sp)                     # 8-byte Folded Reload
	ld	s5, 176(sp)                     # 8-byte Folded Reload
	ld	s6, 168(sp)                     # 8-byte Folded Reload
	ld	s7, 160(sp)                     # 8-byte Folded Reload
	ld	s8, 152(sp)                     # 8-byte Folded Reload
	ld	s9, 144(sp)                     # 8-byte Folded Reload
	ld	s10, 136(sp)                    # 8-byte Folded Reload
	ld	s11, 128(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 224
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
	addi	sp, sp, -64
	sd	s0, 56(sp)                      # 8-byte Folded Spill
	sd	s1, 48(sp)                      # 8-byte Folded Spill
	sd	s2, 40(sp)                      # 8-byte Folded Spill
	sd	s3, 32(sp)                      # 8-byte Folded Spill
	sd	s4, 24(sp)                      # 8-byte Folded Spill
	sd	s5, 16(sp)                      # 8-byte Folded Spill
	sd	s6, 8(sp)                       # 8-byte Folded Spill
	sd	s7, 0(sp)                       # 8-byte Folded Spill
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
	beqz	t2, .LBB1_38
.LBB1_3:
	li	t2, 0
.LBB1_4:
	lh	t3, 0(a2)
	lw	t4, 0(t1)
	lh	t5, 112(a2)
	lw	t6, 224(t1)
	mulw	t3, t4, t3
	lh	t4, 80(a2)
	lw	s0, 160(t1)
	mulw	t5, t6, t5
	slli	t3, t3, 15
	mul	t5, t5, a5
	mulw	t4, s0, t4
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
	beqz	t4, .LBB1_39
.LBB1_8:
	li	t4, 0
.LBB1_9:
	lh	t5, 2(a2)
	lw	t6, 4(t1)
	lh	s0, 114(a2)
	lw	s1, 228(t1)
	mulw	t5, t6, t5
	lh	t6, 82(a2)
	lw	s2, 164(t1)
	mulw	s0, s1, s0
	slli	t5, t5, 15
	mul	s0, s0, a5
	mulw	t6, s2, t6
	mul	t6, t6, a1
	lw	s1, 100(t1)
	add	t6, t6, s0
	slli	t4, t4, 48
	srai	t4, t4, 48
	mulw	t4, s1, t4
	lw	s0, 36(t1)
	mul	t4, t4, a6
	slli	t3, t3, 48
	srai	t3, t3, 48
	mulw	t3, s0, t3
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
	or	s0, t5, t6
	slli	s0, s0, 48
	bnez	s0, .LBB1_14
# %bb.11:
	lhu	t6, 86(a2)
	bnez	t6, .LBB1_13
# %bb.12:
	lhu	t6, 118(a2)
	beqz	t6, .LBB1_40
.LBB1_13:
	li	t6, 0
.LBB1_14:
	lh	s0, 6(a2)
	lw	s1, 12(t1)
	lh	s2, 118(a2)
	lw	s3, 236(t1)
	mulw	s0, s1, s0
	lh	s1, 86(a2)
	lw	s4, 172(t1)
	mulw	s2, s3, s2
	slli	s0, s0, 15
	mul	s2, s2, a5
	mulw	s1, s4, s1
	mul	s1, s1, a1
	lw	s3, 108(t1)
	add	s1, s1, s2
	slli	t6, t6, 48
	srai	t6, t6, 48
	mulw	t6, s3, t6
	lw	s2, 44(t1)
	mul	t6, t6, a6
	slli	t5, t5, 48
	srai	t5, t5, 48
	mulw	t5, s2, t5
	mul	t5, t5, a7
	add	t5, t6, t5
	add	t5, s1, t5
	lui	t6, 1
	or	s0, s0, t6
	add	t6, s0, t5
	srli	t6, t6, 13
	sub	t5, s0, t5
	srli	t5, t5, 13
.LBB1_15:
	lhu	s0, 26(a2)
	lhu	s1, 58(a2)
	or	s2, s0, s1
	slli	s2, s2, 48
	bnez	s2, .LBB1_19
# %bb.16:
	lhu	s1, 90(a2)
	bnez	s1, .LBB1_18
# %bb.17:
	lhu	s1, 122(a2)
	beqz	s1, .LBB1_41
.LBB1_18:
	li	s1, 0
.LBB1_19:
	lh	s2, 10(a2)
	lw	s3, 20(t1)
	lh	s4, 122(a2)
	lw	s5, 244(t1)
	mulw	s2, s3, s2
	lh	s3, 90(a2)
	lw	s6, 180(t1)
	mulw	s4, s5, s4
	slli	s2, s2, 15
	mul	s4, s4, a5
	mulw	s3, s6, s3
	mul	s3, s3, a1
	lw	s5, 116(t1)
	add	s3, s3, s4
	slli	s1, s1, 48
	srai	s1, s1, 48
	mulw	s1, s5, s1
	lw	s4, 52(t1)
	mul	s1, s1, a6
	slli	s0, s0, 48
	srai	s0, s0, 48
	mulw	s0, s4, s0
	mul	s0, s0, a7
	add	s0, s1, s0
	add	s0, s3, s0
	lui	s1, 1
	or	s2, s2, s1
	add	s1, s2, s0
	srli	s1, s1, 13
	sub	s0, s2, s0
	srli	s0, s0, 13
.LBB1_20:
	lhu	s2, 30(a2)
	lhu	s3, 62(a2)
	ld	a0, 424(a0)
	or	s4, s2, s3
	slli	s4, s4, 48
	bnez	s4, .LBB1_24
# %bb.21:
	lhu	s3, 94(a2)
	bnez	s3, .LBB1_23
# %bb.22:
	lhu	s3, 126(a2)
	beqz	s3, .LBB1_42
.LBB1_23:
	li	s3, 0
.LBB1_24:
	lh	s4, 14(a2)
	lw	s5, 28(t1)
	lh	s6, 126(a2)
	lw	s7, 252(t1)
	mulw	s4, s5, s4
	lh	a2, 94(a2)
	lw	s5, 188(t1)
	mulw	s6, s7, s6
	slli	s4, s4, 15
	mul	s6, s6, a5
	mulw	a2, s5, a2
	mul	a2, a2, a1
	lw	s5, 124(t1)
	add	a2, a2, s6
	slli	s3, s3, 48
	srai	s3, s3, 48
	mulw	s3, s5, s3
	lw	t1, 60(t1)
	mul	s3, s3, a6
	slli	s2, s2, 48
	srai	s2, s2, 48
	mulw	t1, t1, s2
	mul	t1, t1, a7
	add	t1, s3, t1
	add	a2, a2, t1
	lui	t1, 1
	or	t1, s4, t1
	add	s2, t1, a2
	srli	s2, s2, 13
	sub	a2, t1, a2
	srli	a2, a2, 13
.LBB1_25:
	addi	a0, a0, 128
	ld	t1, 0(a3)
	slli	a4, a4, 32
	srli	a4, a4, 32
	sext.w	s3, t4
	add	t1, t1, a4
	bnez	s3, .LBB1_30
# %bb.26:
	sext.w	s3, t6
	bnez	s3, .LBB1_30
# %bb.27:
	sext.w	s3, s1
	bnez	s3, .LBB1_30
# %bb.28:
	sext.w	s3, s2
	bnez	s3, .LBB1_30
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
	mul	s2, s2, a5
	mul	s1, s1, a1
	mul	t6, t6, a6
	mul	t4, t4, a7
	add	t4, s2, t4
	add	t6, s1, t6
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
	sext.w	a3, s0
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
	j	.LBB1_37
.LBB1_36:
	slli	t0, t0, 15
	mul	a2, a2, a5
	mul	a1, s0, a1
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
.LBB1_37:
	sb	a0, 1(a4)
	ld	s0, 56(sp)                      # 8-byte Folded Reload
	ld	s1, 48(sp)                      # 8-byte Folded Reload
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	ld	s3, 32(sp)                      # 8-byte Folded Reload
	ld	s4, 24(sp)                      # 8-byte Folded Reload
	ld	s5, 16(sp)                      # 8-byte Folded Reload
	ld	s6, 8(sp)                       # 8-byte Folded Reload
	ld	s7, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB1_38:
	lh	t0, 0(a2)
	lw	t2, 0(t1)
	mul	t0, t0, t2
	slli	t0, t0, 2
	mv	t2, t0
	j	.LBB1_5
.LBB1_39:
	lh	t3, 2(a2)
	lw	t4, 4(t1)
	mul	t3, t3, t4
	slli	t3, t3, 2
	mv	t4, t3
	j	.LBB1_10
.LBB1_40:
	lh	t5, 6(a2)
	lw	t6, 12(t1)
	mul	t5, t5, t6
	slli	t5, t5, 2
	mv	t6, t5
	j	.LBB1_15
.LBB1_41:
	lh	s0, 10(a2)
	lw	s1, 20(t1)
	mul	s0, s0, s1
	slli	s0, s0, 2
	mv	s1, s0
	j	.LBB1_20
.LBB1_42:
	lh	a2, 14(a2)
	lw	t1, 28(t1)
	mul	a2, a2, t1
	slli	a2, a2, 2
	mv	s2, a2
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
