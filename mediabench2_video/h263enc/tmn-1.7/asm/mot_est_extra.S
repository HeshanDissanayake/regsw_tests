	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"mot_est.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	MotionEstimation                # -- Begin function MotionEstimation
	.p2align	2
	.type	MotionEstimation,@function
MotionEstimation:                       # @MotionEstimation
# %bb.0:
	addi	sp, sp, -352
	sd	ra, 344(sp)                     # 8-byte Folded Spill
	sd	s0, 336(sp)                     # 8-byte Folded Spill
	sd	s1, 328(sp)                     # 8-byte Folded Spill
	sd	s2, 320(sp)                     # 8-byte Folded Spill
	sd	s3, 312(sp)                     # 8-byte Folded Spill
	sd	s4, 304(sp)                     # 8-byte Folded Spill
	sd	s5, 296(sp)                     # 8-byte Folded Spill
	sd	s6, 288(sp)                     # 8-byte Folded Spill
	sd	s7, 280(sp)                     # 8-byte Folded Spill
	sd	s8, 272(sp)                     # 8-byte Folded Spill
	sd	s9, 264(sp)                     # 8-byte Folded Spill
	sd	s10, 256(sp)                    # 8-byte Folded Spill
	sd	s11, 248(sp)                    # 8-byte Folded Spill
	lui	t0, %hi(long_vectors)
	lw	t0, %lo(long_vectors)(t0)
	sd	a7, 40(sp)                      # 8-byte Folded Spill
	mv	s1, a5
	mv	s0, a3
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	mv	s6, a0
	lui	a0, %hi(pels)
	beqz	t0, .LBB0_6
# %bb.1:
	li	a1, 14
	bge	a6, a1, .LBB0_8
# %bb.2:
	li	a1, -16
	bge	a1, a4, .LBB0_9
.LBB0_3:
	li	a2, 16
	bge	a4, a2, .LBB0_10
.LBB0_4:
	bge	a1, s1, .LBB0_11
.LBB0_5:
	bge	s1, a2, .LBB0_12
	j	.LBB0_13
.LBB0_6:
	li	a1, 15
	blt	a6, a1, .LBB0_13
# %bb.7:
	li	a6, 15
	j	.LBB0_13
.LBB0_8:
	li	a6, 14
	li	a1, -16
	blt	a1, a4, .LBB0_3
.LBB0_9:
	li	a4, -16
	li	a2, 16
	blt	a4, a2, .LBB0_4
.LBB0_10:
	li	a4, 16
	blt	a1, s1, .LBB0_5
.LBB0_11:
	li	s1, -16
	blt	s1, a2, .LBB0_13
.LBB0_12:
	li	s1, 16
.LBB0_13:
	lui	a1, %hi(mv_outside_frame)
	lw	a1, %lo(mv_outside_frame)(a1)
	lw	s9, %lo(pels)(a0)
	sd	a4, 32(sp)                      # 8-byte Folded Spill
	sd	a6, 24(sp)                      # 8-byte Folded Spill
	beqz	a1, .LBB0_17
# %bb.14:
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	add	a0, a4, a0
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	add	a1, s1, s0
	li	a0, 32
	beqz	t0, .LBB0_16
# %bb.15:
	li	a0, 64
.LBB0_16:
	addw	a0, a0, s9
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	subw	s3, a0, a6
	addw	s7, a0, a6
	subw	s4, a1, a6
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	addw	s8, a1, a6
	j	.LBB0_22
.LBB0_17:
	lui	a0, %hi(lines)
	lw	a2, %lo(lines)(a0)
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	add	a1, a4, a0
	subw	a0, a1, a6
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	addw	s7, a1, a6
	add	t0, s1, s0
	subw	a1, t0, a6
	addw	s8, t0, a6
	addiw	a5, s9, -16
	sgtz	a3, a0
	blt	s7, a5, .LBB0_19
# %bb.18:
	mv	s7, a5
.LBB0_19:
	negw	a3, a3
	sgtz	a5, a1
	addiw	a7, a2, -16
	negw	a2, a5
	blt	s8, a7, .LBB0_21
# %bb.20:
	mv	s8, a7
.LBB0_21:
	sd	t0, 48(sp)                      # 8-byte Folded Spill
	and	s3, a3, a0
	and	s4, a2, a1
	sd	s9, 80(sp)                      # 8-byte Folded Spill
.LBB0_22:
	ld	a0, 352(sp)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	subw	s10, s7, s3
	subw	s11, s8, s4
	li	a0, 256
	call	malloc
	mv	s5, a0
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	mulw	s0, s9, s0
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	add	s6, s6, a0
	add	s0, s6, s0
	li	a2, 16
	mv	a0, s5
	mv	a1, s0
	call	memcpy
	add	s0, s0, s9
	addi	a0, s5, 16
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 32
	add	s0, s0, s9
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 48
	add	s0, s0, s9
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 64
	add	s0, s0, s9
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 80
	add	s0, s0, s9
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 96
	add	s0, s0, s9
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 112
	add	s0, s0, s9
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 128
	add	s0, s0, s9
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 144
	add	s0, s0, s9
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 160
	add	s0, s0, s9
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 176
	add	s0, s0, s9
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 192
	add	s0, s0, s9
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 208
	add	s0, s0, s9
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 224
	add	s0, s0, s9
	li	a2, 16
	mv	a1, s0
	call	memcpy
	addi	a0, s5, 240
	add	a1, s0, s9
	li	a2, 16
	call	memcpy
	addiw	s9, s10, 16
	addiw	s11, s11, 16
	mul	a0, s9, s11
	call	malloc
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	beqz	s11, .LBB0_26
# %bb.23:
	beqz	s9, .LBB0_26
# %bb.24:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	subw	s0, a0, s9
	mulw	s11, s4, a0
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	add	a0, a0, s3
	add	s11, a0, s11
	slli	a0, s9, 32
	srli	s10, a0, 32
	subw	s2, s4, s8
	addi	s2, s2, -16
	ld	s6, 88(sp)                      # 8-byte Folded Reload
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	mv	a0, s6
	mv	a1, s11
	mv	a2, s10
	call	memcpy
	add	s11, s11, s10
	add	s6, s6, s10
	addiw	s2, s2, 1
	add	s11, s11, s0
	bnez	s2, .LBB0_25
.LBB0_26:
	lui	s10, 524288
	addiw	s10, s10, -1
	sw	s10, 228(sp)
	sw	zero, 120(sp)
	sw	zero, 116(sp)
	sw	s10, 232(sp)
	sw	zero, 132(sp)
	sw	zero, 136(sp)
	sw	zero, 140(sp)
	sw	zero, 144(sp)
	sw	s10, 236(sp)
	sw	zero, 156(sp)
	sw	zero, 160(sp)
	sw	zero, 164(sp)
	sw	zero, 168(sp)
	sw	s10, 240(sp)
	sw	zero, 180(sp)
	sw	zero, 184(sp)
	sw	zero, 188(sp)
	sw	zero, 192(sp)
	sw	s10, 244(sp)
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	subw	a0, s0, s3
	sw	zero, 216(sp)
	sw	zero, 212(sp)
	sw	zero, 208(sp)
	sw	zero, 204(sp)
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	bltz	a0, .LBB0_31
# %bb.27:
	subw	a1, s2, s4
	bltz	a1, .LBB0_31
# %bb.28:
	blt	s7, s0, .LBB0_31
# %bb.29:
	blt	s8, s2, .LBB0_31
# %bb.30:
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	add	a0, a2, a0
	mulw	a1, s9, a1
	add	a0, a0, a1
	lui	a3, 524288
	addiw	a3, a3, -1
	mv	a1, s5
	mv	a2, s9
	call	SAD_Macroblock
	addiw	s10, a0, -100
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	sw	s10, 0(a0)
	j	.LBB0_32
.LBB0_31:
	li	a0, 256
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	call	malloc
	mv	s11, a0
	ld	s10, 80(sp)                     # 8-byte Folded Reload
	mulw	s6, s10, s2
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	add	a0, a0, s0
	add	s6, a0, s6
	li	a2, 16
	mv	a0, s11
	mv	a1, s6
	call	memcpy
	add	s6, s6, s10
	addi	a0, s11, 16
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 32
	add	s6, s6, s10
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 48
	add	s6, s6, s10
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 64
	add	s6, s6, s10
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 80
	add	s6, s6, s10
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 96
	add	s6, s6, s10
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 112
	add	s6, s6, s10
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 128
	add	s6, s6, s10
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 144
	add	s6, s6, s10
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 160
	add	s6, s6, s10
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 176
	add	s6, s6, s10
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 192
	add	s6, s6, s10
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 208
	add	s6, s6, s10
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 224
	add	s6, s6, s10
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s11, 240
	add	a1, s6, s10
	li	a2, 16
	call	memcpy
	li	a2, 16
	mv	a0, s11
	mv	a1, s5
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	call	SAD_Macroblock
	addiw	s10, a0, -100
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	sw	s10, 0(a0)
	mv	a0, s11
	call	free
.LBB0_32:
	ld	s6, 56(sp)                      # 8-byte Folded Reload
	ld	s11, 32(sp)                     # 8-byte Folded Reload
	or	a0, s11, s1
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB0_34
# %bb.33:
	subw	a0, s6, s3
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	subw	a1, a2, s4
	mulw	a1, s9, a1
	add	a0, a0, a1
	lui	a3, 524288
	addiw	a3, a3, -1
	mv	a1, s5
	mv	a2, s9
	call	SAD_Macroblock
	mv	s10, a0
	sw	s1, 112(sp)
	ld	n18, 24(sp)                     # 8-byte Folded Reload
	bgtz	n18, .LBB0_35
	j	.LBB0_56
.LBB0_34:
	li	s11, 0
	li	s1, 0
	sw	zero, 112(sp)
	ld	n18, 24(sp)                     # 8-byte Folded Reload
	blez	n18, .LBB0_56
.LBB0_35:                               # %.preheader
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	sub	a0, a0, s3
	addi	a0, a0, 7
	li	a5, 1
	li	a1, 8
	li	a2, 6
	ld	n19, 48(sp)                     # 8-byte Folded Reload
	j	.LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_37 Depth=1
	addiw	a5, a3, 1
	addiw	a1, a1, 8
	beq	a3, n18, .LBB0_55
.LBB0_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_45 Depth 3
	li	a4, 0
	mv	a3, a5
	subw	a5, s6, a5
	subw	a6, n19, a3
	slliw	a7, a3, 1
	slliw	t0, a3, 2
	mulw	t1, a3, a2
	j	.LBB0_40
.LBB0_38:                               #   in Loop: Header=BB0_40 Depth=2
	addiw	a5, a5, 1
.LBB0_39:                               #   in Loop: Header=BB0_40 Depth=2
	addiw	a4, a4, 1
	beq	a4, a1, .LBB0_36
.LBB0_40:                               #   Parent Loop BB0_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_45 Depth 3
	blt	a5, s3, .LBB0_49
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=2
	blt	s7, a5, .LBB0_49
# %bb.42:                               #   in Loop: Header=BB0_40 Depth=2
	blt	a6, s4, .LBB0_49
# %bb.43:                               #   in Loop: Header=BB0_40 Depth=2
	blt	s8, a6, .LBB0_49
# %bb.44:                               #   in Loop: Header=BB0_40 Depth=2
	li	t2, 0
	subw	t3, a6, s4
	mulw	t5, t3, s9
	add	t3, a0, a5
	add	t5, t3, t5
	li	t3, -17
	mv	t4, s5
.LBB0_45:                               #   Parent Loop BB0_37 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addiw	t3, t3, 1
	beqz	t3, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=3
	lbu	t6, -7(t5)
	lbu	n1, 0(t4)
	lbu	n2, -6(t5)
	lbu	n3, 1(t4)
	lbu	n4, -5(t5)
	lbu	n5, -4(t5)
	lbu	n6, -3(t5)
	lbu	n7, -2(t5)
	lbu	n8, -1(t5)
	lbu	n9, 0(t5)
	lbu	n10, 1(t5)
	lbu	n11, 2(t5)
	lbu	n12, 3(t5)
	lbu	n13, 4(t5)
	lbu	n14, 5(t5)
	lbu	n15, 6(t5)
	lbu	n16, 7(t5)
	lbu	n17, 8(t5)
	add	t5, t5, s9
	sub	t6, t6, n1
	sub	n1, n2, n3
	lbu	n2, 2(t4)
	sraiw	n3, n1, 31
	xor	n1, n1, n3
	subw	n1, n1, n3
	sub	n2, n4, n2
	lbu	n3, 3(t4)
	sraiw	n4, n2, 31
	xor	n2, n2, n4
	subw	n2, n2, n4
	sub	n3, n5, n3
	lbu	n4, 4(t4)
	sraiw	n5, n3, 31
	xor	n3, n3, n5
	subw	n3, n3, n5
	sub	n4, n6, n4
	lbu	n5, 5(t4)
	sraiw	n6, n4, 31
	xor	n4, n4, n6
	subw	n4, n4, n6
	sub	n5, n7, n5
	lbu	n6, 6(t4)
	sraiw	n7, n5, 31
	xor	n5, n5, n7
	subw	n5, n5, n7
	sub	n6, n8, n6
	lbu	n7, 7(t4)
	sraiw	n8, n6, 31
	xor	n6, n6, n8
	subw	n6, n6, n8
	sub	n7, n9, n7
	lbu	n8, 8(t4)
	sraiw	n9, n7, 31
	xor	n7, n7, n9
	subw	n7, n7, n9
	sub	n8, n10, n8
	lbu	n9, 9(t4)
	sraiw	n10, n8, 31
	xor	n8, n8, n10
	subw	n8, n8, n10
	sub	n9, n11, n9
	lbu	n10, 10(t4)
	sraiw	n11, n9, 31
	xor	n9, n9, n11
	subw	n9, n9, n11
	sub	n10, n12, n10
	lbu	n11, 11(t4)
	sraiw	n12, n10, 31
	xor	n10, n10, n12
	subw	n10, n10, n12
	sub	n11, n13, n11
	lbu	n12, 12(t4)
	sraiw	n13, n11, 31
	xor	n11, n11, n13
	subw	n11, n11, n13
	sub	n12, n14, n12
	lbu	n13, 13(t4)
	sraiw	n14, n12, 31
	xor	n12, n12, n14
	subw	n12, n12, n14
	sub	n13, n15, n13
	lbu	n14, 14(t4)
	sraiw	n15, n13, 31
	xor	n13, n13, n15
	subw	n13, n13, n15
	sub	n14, n16, n14
	sraiw	n15, n14, 31
	xor	n14, n14, n15
	lbu	n16, 15(t4)
	subw	n14, n14, n15
	sraiw	n15, t6, 31
	xor	t6, t6, n15
	sub	n16, n17, n16
	sraiw	n17, n16, 31
	xor	n16, n16, n17
	subw	n16, n16, n17
	subw	t2, n15, t2
	subw	t2, t6, t2
	add	t2, t2, n1
	add	n2, n2, n3
	add	t2, t2, n2
	add	n4, n4, n5
	add	n4, n4, n6
	add	t2, t2, n4
	add	n7, n7, n8
	add	n7, n7, n9
	add	n7, n7, n10
	add	t2, t2, n7
	add	n11, n11, n12
	add	n11, n11, n13
	add	n11, n11, n14
	add	n11, n11, n16
	addw	t2, t2, n11
	addi	t4, t4, 16
	bge	s10, t2, .LBB0_45
	j	.LBB0_49
.LBB0_47:                               #   in Loop: Header=BB0_40 Depth=2
	bge	t2, s10, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_40 Depth=2
	subw	s11, a5, s0
	subw	s1, a6, s2
	mv	s10, t2
.LBB0_49:                               #   in Loop: Header=BB0_40 Depth=2
	bltu	a4, a7, .LBB0_38
# %bb.50:                               #   in Loop: Header=BB0_40 Depth=2
	bgeu	a4, t0, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_40 Depth=2
	addiw	a6, a6, 1
	j	.LBB0_39
.LBB0_52:                               #   in Loop: Header=BB0_40 Depth=2
	bgeu	a4, t1, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_40 Depth=2
	addiw	a5, a5, -1
	j	.LBB0_39
.LBB0_54:                               #   in Loop: Header=BB0_40 Depth=2
	addiw	a6, a6, -1
	j	.LBB0_39
.LBB0_55:
	sw	s1, 112(sp)
.LBB0_56:
	lui	a0, %hi(advanced)
	lw	a0, %lo(advanced)(a0)
	sw	s10, 228(sp)
	sw	s11, 108(sp)
	beqz	a0, .LBB0_70
# %bb.57:
	lui	a0, %hi(long_vectors)
	lw	a2, %lo(long_vectors)(a0)
	mv	a0, s11
	mv	a1, s1
	bnez	a2, .LBB0_63
# %bb.58:
	li	a2, 15
	mv	a0, s11
	bge	s11, a2, .LBB0_74
# %bb.59:
	mv	a1, s1
	bge	s1, a2, .LBB0_75
.LBB0_60:
	li	a2, -15
	bge	a2, a0, .LBB0_76
.LBB0_61:
	blt	a2, a1, .LBB0_63
.LBB0_62:
	li	a1, -15
.LBB0_63:
	addw	s0, a0, s0
	add	s2, a1, s2
	li	a0, 256
	call	malloc
	mv	s8, a0
	ld	s3, 80(sp)                      # 8-byte Folded Reload
	mulw	s6, s2, s3
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	add	s0, a0, s0
	add	s6, s0, s6
	li	a2, 16
	mv	a0, s8
	mv	a1, s6
	call	memcpy
	add	s6, s6, s3
	addi	a0, s8, 16
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 32
	add	s6, s6, s3
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 48
	add	s6, s6, s3
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 64
	add	s6, s6, s3
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 80
	add	s6, s6, s3
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 96
	add	s6, s6, s3
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 112
	add	s6, s6, s3
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 128
	add	s6, s6, s3
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 144
	add	s6, s6, s3
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 160
	add	s6, s6, s3
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 176
	add	s6, s6, s3
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 192
	add	s6, s6, s3
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 208
	add	s6, s6, s3
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 224
	add	s6, s6, s3
	li	a2, 16
	mv	a1, s6
	call	memcpy
	addi	a0, s8, 240
	add	a1, s6, s3
	li	a2, 16
	call	memcpy
	li	a0, 0
	addi	a1, sp, 228
	li	a2, 24
	addi	a3, sp, 108
	li	a4, 4
	lui	a5, 524288
	addi	a5, a5, -1
	j	.LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_66 Depth=1
	mv	a7, a5
.LBB0_65:                               #   in Loop: Header=BB0_66 Depth=1
	sw	a7, 0(a6)
	mul	a6, a0, a2
	add	a6, a3, a6
	sw	s11, 0(a6)
	sw	s1, 4(a6)
	beq	a0, a4, .LBB0_69
.LBB0_66:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_67 Depth 2
	li	a7, 0
	slli	a6, a0, 3
	andi	t2, a6, 8
	add	t0, s8, t2
	slli	a6, a0, 6
	andi	t3, a6, 128
	add	t0, t0, t3
	addi	a0, a0, 1
	slli	a6, a0, 2
	add	a6, a1, a6
	lw	t1, 0(a6)
	add	t2, s5, t2
	add	t2, t2, t3
	li	t3, -9
.LBB0_67:                               #   Parent Loop BB0_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	t3, t3, 1
	beqz	t3, .LBB0_65
# %bb.68:                               #   in Loop: Header=BB0_67 Depth=2
	lbu	t4, 0(t0)
	lbu	t5, 0(t2)
	lbu	t6, 1(t0)
	lbu	n1, 1(t2)
	sub	t4, t4, t5
	sub	t5, t6, n1
	lbu	t6, 2(t0)
	lbu	n1, 2(t2)
	sraiw	n2, t5, 31
	xor	t5, t5, n2
	subw	t5, t5, n2
	sub	t6, t6, n1
	lbu	n1, 3(t0)
	lbu	n2, 3(t2)
	sraiw	n3, t6, 31
	xor	t6, t6, n3
	subw	t6, t6, n3
	sub	n1, n1, n2
	lbu	n2, 4(t0)
	lbu	n3, 4(t2)
	sraiw	n4, n1, 31
	xor	n1, n1, n4
	subw	n1, n1, n4
	sub	n2, n2, n3
	lbu	n3, 5(t0)
	lbu	n4, 5(t2)
	sraiw	n5, n2, 31
	xor	n2, n2, n5
	subw	n2, n2, n5
	sub	n3, n3, n4
	lbu	n4, 6(t0)
	lbu	n5, 6(t2)
	sraiw	n6, n3, 31
	xor	n3, n3, n6
	subw	n3, n3, n6
	sub	n4, n4, n5
	sraiw	n5, n4, 31
	xor	n4, n4, n5
	lbu	n6, 7(t0)
	lbu	n7, 7(t2)
	subw	n4, n4, n5
	sraiw	n5, t4, 31
	xor	t4, t4, n5
	sub	n6, n6, n7
	sraiw	n7, n6, 31
	xor	n6, n6, n7
	subw	n6, n6, n7
	subw	a7, n5, a7
	subw	a7, t4, a7
	add	a7, a7, t5
	add	t6, t6, n1
	add	a7, a7, t6
	add	n2, n2, n3
	add	n2, n2, n4
	add	a7, a7, n2
	addw	a7, a7, n6
	addi	t0, t0, 16
	addi	t2, t2, 16
	bge	t1, a7, .LBB0_67
	j	.LBB0_64
.LBB0_69:
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	slli	a0, a1, 1
	srli	a0, a0, 60
	add	a0, a1, a0
	sraiw	a0, a0, 4
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	slli	a1, a2, 1
	srli	a1, a1, 60
	addw	a1, a2, a1
	srli	a1, a1, 4
	li	a2, 720
	mul	a1, a1, a2
	slli	a0, a0, 3
	lw	a2, 108(sp)
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	add	a1, a1, a3
	add	a0, a1, a0
	ld	a1, 728(a0)
	lw	a3, 112(sp)
	lw	a4, 228(sp)
	sw	a2, 0(a1)
	sw	a3, 4(a1)
	sw	a4, 16(a1)
	lw	a1, 132(sp)
	lui	a2, 13
	add	a2, a0, a2
	ld	a2, 40(a2)
	lw	a3, 136(sp)
	lw	a4, 232(sp)
	lw	a5, 156(sp)
	lui	a6, 26
	add	a6, a0, a6
	ld	a6, -648(a6)
	sw	a1, 0(a2)
	sw	a3, 4(a2)
	sw	a4, 16(a2)
	sw	a5, 0(a6)
	lw	a1, 160(sp)
	lw	a2, 236(sp)
	lw	a3, 180(sp)
	lui	a4, 39
	add	a4, a0, a4
	ld	a4, -1336(a4)
	lw	a5, 184(sp)
	sw	a1, 4(a6)
	sw	a2, 16(a6)
	sw	a3, 0(a4)
	sw	a5, 4(a4)
	lw	a1, 240(sp)
	lw	a2, 204(sp)
	lui	a3, 52
	add	a0, a0, a3
	ld	a0, -2024(a0)
	lw	a3, 208(sp)
	lw	s10, 244(sp)
	sw	a1, 16(a4)
	sw	a2, 0(a0)
	sw	a3, 4(a0)
	j	.LBB0_71
.LBB0_70:
	slli	a0, s0, 1
	srli	a0, a0, 60
	add	a0, s0, a0
	sraiw	a0, a0, 4
	slli	a1, s2, 1
	srli	a1, a1, 60
	addw	a1, s2, a1
	srli	a1, a1, 4
	li	a2, 720
	mul	a1, a1, a2
	slli	a0, a0, 3
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	add	a1, a1, a2
	add	a0, a1, a0
	ld	a0, 728(a0)
	li	s8, 0
	sw	s11, 0(a0)
	sw	s1, 4(a0)
.LBB0_71:
	sw	s10, 16(a0)
	mv	a0, s5
	call	free
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	call	free
	lui	a0, %hi(advanced)
	lw	a0, %lo(advanced)(a0)
	beqz	a0, .LBB0_73
# %bb.72:
	mv	a0, s8
	ld	ra, 344(sp)                     # 8-byte Folded Reload
	ld	s0, 336(sp)                     # 8-byte Folded Reload
	ld	s1, 328(sp)                     # 8-byte Folded Reload
	ld	s2, 320(sp)                     # 8-byte Folded Reload
	ld	s3, 312(sp)                     # 8-byte Folded Reload
	ld	s4, 304(sp)                     # 8-byte Folded Reload
	ld	s5, 296(sp)                     # 8-byte Folded Reload
	ld	s6, 288(sp)                     # 8-byte Folded Reload
	ld	s7, 280(sp)                     # 8-byte Folded Reload
	ld	s8, 272(sp)                     # 8-byte Folded Reload
	ld	s9, 264(sp)                     # 8-byte Folded Reload
	ld	s10, 256(sp)                    # 8-byte Folded Reload
	ld	s11, 248(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 352
	tail	free
.LBB0_73:
	ld	ra, 344(sp)                     # 8-byte Folded Reload
	ld	s0, 336(sp)                     # 8-byte Folded Reload
	ld	s1, 328(sp)                     # 8-byte Folded Reload
	ld	s2, 320(sp)                     # 8-byte Folded Reload
	ld	s3, 312(sp)                     # 8-byte Folded Reload
	ld	s4, 304(sp)                     # 8-byte Folded Reload
	ld	s5, 296(sp)                     # 8-byte Folded Reload
	ld	s6, 288(sp)                     # 8-byte Folded Reload
	ld	s7, 280(sp)                     # 8-byte Folded Reload
	ld	s8, 272(sp)                     # 8-byte Folded Reload
	ld	s9, 264(sp)                     # 8-byte Folded Reload
	ld	s10, 256(sp)                    # 8-byte Folded Reload
	ld	s11, 248(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 352
	ret
.LBB0_74:
	li	a0, 15
	mv	a1, s1
	blt	s1, a2, .LBB0_60
.LBB0_75:
	li	a1, 15
	li	a2, -15
	blt	a2, a0, .LBB0_61
.LBB0_76:
	li	a0, -15
	bge	a2, a1, .LBB0_62
	j	.LBB0_63
.Lfunc_end0:
	.size	MotionEstimation, .Lfunc_end0-MotionEstimation
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	LoadArea                        # -- Begin function LoadArea
	.p2align	2
	.type	LoadArea,@function
LoadArea:                               # @LoadArea
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	mv	s3, a5
	mv	s0, a4
	mv	s2, a3
	mv	s5, a2
	mv	s4, a1
	mv	s6, a0
	mul	a0, a4, a3
	call	malloc
	mv	s1, a0
	beqz	s0, .LBB1_4
# %bb.1:
	beqz	s2, .LBB1_4
# %bb.2:
	subw	s7, s3, s2
	mulw	s3, s3, s5
	add	s4, s6, s4
	add	s3, s4, s3
	slli	s2, s2, 32
	srli	s2, s2, 32
	mv	s4, s1
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	addiw	s0, s0, -1
	mv	a0, s4
	mv	a1, s3
	mv	a2, s2
	call	memcpy
	add	s3, s3, s2
	add	s4, s4, s2
	add	s3, s3, s7
	bnez	s0, .LBB1_3
.LBB1_4:
	mv	a0, s1
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end1:
	.size	LoadArea, .Lfunc_end1-LoadArea
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SAD_Macroblock                  # -- Begin function SAD_Macroblock
	.p2align	2
	.type	SAD_Macroblock,@function
SAD_Macroblock:                         # @SAD_Macroblock
# %bb.0:
	mv	a4, a0
	li	a0, 0
	addi	a6, a4, 7
	li	a4, -17
	lui	a5, 524288
	addiw	a5, a5, -1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	addiw	a4, a4, 1
	beqz	a4, .LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	lbu	a7, -7(a6)
	lbu	t0, 0(a1)
	lbu	t1, -6(a6)
	lbu	t2, 1(a1)
	lbu	t3, -5(a6)
	lbu	t4, -4(a6)
	lbu	t5, -3(a6)
	lbu	t6, -2(a6)
	lbu	n1, -1(a6)
	lbu	n2, 0(a6)
	lbu	n3, 1(a6)
	lbu	n4, 2(a6)
	lbu	n5, 3(a6)
	lbu	n6, 4(a6)
	lbu	n7, 5(a6)
	lbu	n8, 6(a6)
	lbu	n9, 7(a6)
	lbu	n10, 8(a6)
	add	a6, a6, a2
	sub	a7, a7, t0
	sub	t0, t1, t2
	lbu	t1, 2(a1)
	sraiw	t2, t0, 31
	xor	t0, t0, t2
	subw	t0, t0, t2
	sub	t1, t3, t1
	lbu	t2, 3(a1)
	sraiw	t3, t1, 31
	xor	t1, t1, t3
	subw	t1, t1, t3
	sub	t2, t4, t2
	lbu	t3, 4(a1)
	sraiw	t4, t2, 31
	xor	t2, t2, t4
	subw	t2, t2, t4
	sub	t5, t5, t3
	lbu	t3, 5(a1)
	sraiw	t4, t5, 31
	xor	t5, t5, t4
	subw	t5, t5, t4
	sub	t6, t6, t3
	lbu	t3, 6(a1)
	sraiw	t4, t6, 31
	xor	t6, t6, t4
	subw	t6, t6, t4
	sub	t3, n1, t3
	lbu	t4, 7(a1)
	sraiw	n1, t3, 31
	xor	t3, t3, n1
	subw	t3, t3, n1
	sub	t4, n2, t4
	lbu	n1, 8(a1)
	sraiw	n2, t4, 31
	xor	t4, t4, n2
	subw	t4, t4, n2
	sub	n1, n3, n1
	lbu	n2, 9(a1)
	sraiw	n3, n1, 31
	xor	n1, n1, n3
	subw	n1, n1, n3
	sub	n2, n4, n2
	lbu	n3, 10(a1)
	sraiw	n4, n2, 31
	xor	n2, n2, n4
	subw	n2, n2, n4
	sub	n3, n5, n3
	lbu	n4, 11(a1)
	sraiw	n5, n3, 31
	xor	n3, n3, n5
	subw	n3, n3, n5
	sub	n4, n6, n4
	lbu	n5, 12(a1)
	sraiw	n6, n4, 31
	xor	n4, n4, n6
	subw	n4, n4, n6
	sub	n5, n7, n5
	lbu	n6, 13(a1)
	sraiw	n7, n5, 31
	xor	n5, n5, n7
	subw	n5, n5, n7
	sub	n6, n8, n6
	lbu	n7, 14(a1)
	sraiw	n8, n6, 31
	xor	n6, n6, n8
	subw	n6, n6, n8
	sub	n7, n9, n7
	sraiw	n8, n7, 31
	xor	n7, n7, n8
	lbu	n9, 15(a1)
	subw	n7, n7, n8
	sraiw	n8, a7, 31
	xor	a7, a7, n8
	sub	n9, n10, n9
	sraiw	n10, n9, 31
	xor	n9, n9, n10
	subw	n9, n9, n10
	subw	a0, n8, a0
	subw	a0, a7, a0
	add	a0, a0, t0
	add	t1, t1, t2
	add	a0, a0, t1
	add	t5, t5, t6
	add	t3, t5, t3
	add	a0, a0, t3
	add	t4, t4, n1
	add	t4, t4, n2
	add	t4, t4, n3
	add	a0, a0, t4
	add	n4, n4, n5
	add	n4, n4, n6
	add	n4, n4, n7
	add	n4, n4, n9
	addw	a0, a0, n4
	addi	a1, a1, 16
	bge	a3, a0, .LBB2_1
# %bb.3:
	mv	a0, a5
.LBB2_4:
	ret
.Lfunc_end2:
	.size	SAD_Macroblock, .Lfunc_end2-SAD_Macroblock
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SAD_Block                       # -- Begin function SAD_Block
	.p2align	2
	.type	SAD_Block,@function
SAD_Block:                              # @SAD_Block
# %bb.0:
	mv	a4, a0
	li	a0, 0
	addi	a6, a4, 3
	li	a4, -9
	lui	a5, 524288
	addiw	a5, a5, -1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	addiw	a4, a4, 1
	beqz	a4, .LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	lbu	a7, -3(a6)
	lbu	t0, 0(a1)
	lbu	t1, -2(a6)
	lbu	t2, 1(a1)
	lbu	t3, -1(a6)
	lbu	t4, 0(a6)
	lbu	t5, 1(a6)
	lbu	t6, 2(a6)
	lbu	n1, 3(a6)
	lbu	n2, 4(a6)
	add	a6, a6, a2
	sub	a7, a7, t0
	sub	t0, t1, t2
	lbu	t1, 2(a1)
	sraiw	t2, t0, 31
	xor	t0, t0, t2
	subw	t0, t0, t2
	sub	t1, t3, t1
	lbu	t2, 3(a1)
	sraiw	t3, t1, 31
	xor	t1, t1, t3
	subw	t1, t1, t3
	sub	t2, t4, t2
	lbu	t3, 4(a1)
	sraiw	t4, t2, 31
	xor	t2, t2, t4
	subw	t2, t2, t4
	sub	t5, t5, t3
	lbu	t3, 5(a1)
	sraiw	t4, t5, 31
	xor	t5, t5, t4
	subw	t5, t5, t4
	sub	t6, t6, t3
	lbu	t3, 6(a1)
	sraiw	t4, t6, 31
	xor	t6, t6, t4
	subw	t6, t6, t4
	sub	t3, n1, t3
	sraiw	t4, t3, 31
	xor	t3, t3, t4
	lbu	n1, 7(a1)
	subw	t3, t3, t4
	sraiw	t4, a7, 31
	xor	a7, a7, t4
	sub	n1, n2, n1
	sraiw	n2, n1, 31
	xor	n1, n1, n2
	subw	n1, n1, n2
	subw	t4, t4, a0
	subw	a0, a7, t4
	add	a0, a0, t0
	add	t1, t1, t2
	add	a0, a0, t1
	add	t5, t5, t6
	add	t3, t5, t3
	add	a0, a0, t3
	addw	a0, a0, n1
	addi	a1, a1, 16
	bge	a3, a0, .LBB3_1
# %bb.3:
	mv	a0, a5
.LBB3_4:
	ret
.Lfunc_end3:
	.size	SAD_Block, .Lfunc_end3-SAD_Block
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SAD_MB_Bidir                    # -- Begin function SAD_MB_Bidir
	.p2align	2
	.type	SAD_MB_Bidir,@function
SAD_MB_Bidir:                           # @SAD_MB_Bidir
# %bb.0:
	mv	a5, a0
	li	a0, 0
	addi	a7, a1, 7
	addi	a6, a2, 7
	addi	a5, a5, 7
	li	a1, -17
	lui	a2, 524288
	addiw	a2, a2, -1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	addiw	a1, a1, 1
	beqz	a1, .LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	lbu	t0, -7(a7)
	lbu	t1, -7(a6)
	lbu	t2, -6(a7)
	lbu	t3, -5(a7)
	lbu	t4, -4(a7)
	lbu	t5, -3(a7)
	lbu	t6, -2(a7)
	lbu	n1, -1(a7)
	lbu	n2, 0(a7)
	lbu	n3, 1(a7)
	lbu	n6, 2(a7)
	lbu	n7, 3(a7)
	lbu	n9, 4(a7)
	lbu	n4, 5(a7)
	lbu	n8, 6(a7)
	lbu	n5, 7(a7)
	lbu	n10, 8(a7)
	add	a7, a7, a3
	lbu	n11, -7(a5)
	add	t0, t1, t0
	lbu	t1, -6(a6)
	srli	t0, t0, 1
	lbu	n12, -6(a5)
	sub	t0, n11, t0
	add	t1, t1, t2
	srli	t1, t1, 1
	sub	t1, n12, t1
	sraiw	t2, t1, 31
	lbu	n11, -5(a6)
	xor	t1, t1, t2
	lbu	n12, -5(a5)
	subw	t1, t1, t2
	add	t3, n11, t3
	srli	t3, t3, 1
	sub	t2, n12, t3
	sraiw	t3, t2, 31
	lbu	n11, -4(a6)
	xor	t2, t2, t3
	lbu	n12, -4(a5)
	subw	t2, t2, t3
	add	t4, n11, t4
	srli	t4, t4, 1
	sub	t3, n12, t4
	sraiw	t4, t3, 31
	lbu	n11, -3(a6)
	xor	t3, t3, t4
	lbu	n12, -3(a5)
	subw	t3, t3, t4
	add	t5, n11, t5
	srli	t5, t5, 1
	sub	t4, n12, t5
	sraiw	t5, t4, 31
	lbu	n11, -2(a6)
	xor	t4, t4, t5
	lbu	n12, -2(a5)
	subw	t4, t4, t5
	add	t6, n11, t6
	srli	t6, t6, 1
	sub	t5, n12, t6
	sraiw	t6, t5, 31
	lbu	n11, -1(a6)
	xor	t5, t5, t6
	lbu	n12, -1(a5)
	subw	t5, t5, t6
	add	n1, n11, n1
	srli	t6, n1, 1
	sub	t6, n12, t6
	sraiw	n1, t6, 31
	lbu	n11, 0(a6)
	xor	t6, t6, n1
	lbu	n12, 0(a5)
	subw	t6, t6, n1
	add	n2, n11, n2
	srli	n1, n2, 1
	sub	n1, n12, n1
	sraiw	n2, n1, 31
	lbu	n11, 1(a6)
	xor	n1, n1, n2
	lbu	n12, 1(a5)
	subw	n1, n1, n2
	add	n3, n11, n3
	srli	n2, n3, 1
	sub	n2, n12, n2
	sraiw	n3, n2, 31
	lbu	n11, 2(a6)
	xor	n2, n2, n3
	lbu	n12, 2(a5)
	subw	n2, n2, n3
	add	n6, n11, n6
	srli	n3, n6, 1
	sub	n3, n12, n3
	sraiw	n6, n3, 31
	lbu	n11, 3(a6)
	xor	n3, n3, n6
	lbu	n12, 3(a5)
	subw	n3, n3, n6
	add	n7, n11, n7
	srli	n6, n7, 1
	sub	n6, n12, n6
	sraiw	n7, n6, 31
	lbu	n11, 4(a6)
	xor	n6, n6, n7
	lbu	n12, 4(a5)
	subw	n6, n6, n7
	add	n9, n11, n9
	srli	n7, n9, 1
	sub	n7, n12, n7
	sraiw	n9, n7, 31
	xor	n7, n7, n9
	subw	n7, n7, n9
	lbu	n9, 5(a5)
	lbu	n11, 5(a6)
	lbu	n12, 6(a6)
	lbu	n13, 7(a6)
	lbu	n14, 8(a6)
	add	a6, a6, a3
	add	n4, n11, n4
	srli	n4, n4, 1
	sub	n4, n9, n4
	sraiw	n9, n4, 31
	xor	n4, n4, n9
	subw	n4, n4, n9
	lbu	n9, 6(a5)
	add	n8, n12, n8
	lbu	n11, 7(a5)
	lbu	n12, 8(a5)
	add	a5, a5, a3
	srli	n8, n8, 1
	sub	n8, n9, n8
	sraiw	n9, n8, 31
	xor	n8, n8, n9
	subw	n8, n8, n9
	sraiw	n9, t0, 31
	xor	t0, t0, n9
	add	n5, n13, n5
	srli	n5, n5, 1
	sub	n5, n11, n5
	sraiw	n11, n5, 31
	xor	n5, n5, n11
	subw	n5, n5, n11
	add	n10, n14, n10
	srli	n10, n10, 1
	sub	n10, n12, n10
	sraiw	n11, n10, 31
	xor	n10, n10, n11
	subw	n10, n10, n11
	subw	a0, n9, a0
	subw	a0, t0, a0
	add	a0, a0, t1
	add	t2, t2, t3
	add	a0, a0, t2
	add	t4, t4, t5
	add	t4, t4, t6
	add	a0, a0, t4
	add	n1, n1, n2
	add	n1, n1, n3
	add	n1, n1, n6
	add	a0, a0, n1
	add	n4, n7, n4
	add	n4, n4, n8
	add	n4, n4, n5
	add	n4, n4, n10
	addw	a0, a0, n4
	bge	a4, a0, .LBB4_1
# %bb.3:
	mv	a0, a2
.LBB4_4:
	ret
.Lfunc_end4:
	.size	SAD_MB_Bidir, .Lfunc_end4-SAD_MB_Bidir
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SAD_MB_integer                  # -- Begin function SAD_MB_integer
	.p2align	2
	.type	SAD_MB_integer,@function
SAD_MB_integer:                         # @SAD_MB_integer
# %bb.0:
	mv	a4, a0
	li	a0, 0
	addi	a6, a4, 32
	slli	a2, a2, 2
	li	a4, -17
	lui	a5, 524288
	addiw	a5, a5, -1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	addiw	a4, a4, 1
	beqz	a4, .LBB5_4
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	lw	a7, -32(a6)
	lw	t0, 0(a1)
	lw	t1, -28(a6)
	lw	t2, 4(a1)
	lw	t3, -24(a6)
	lw	t4, -20(a6)
	lw	t5, -16(a6)
	lw	t6, -12(a6)
	lw	n1, -8(a6)
	lw	n2, -4(a6)
	lw	n3, 0(a6)
	lw	n4, 4(a6)
	lw	n5, 8(a6)
	lw	n6, 12(a6)
	lw	n7, 16(a6)
	lw	n8, 20(a6)
	lw	n9, 24(a6)
	lw	n10, 28(a6)
	add	a6, a6, a2
	sub	a7, a7, t0
	sub	t0, t1, t2
	lw	t1, 8(a1)
	sraiw	t2, t0, 31
	xor	t0, t0, t2
	subw	t0, t0, t2
	sub	t1, t3, t1
	lw	t2, 12(a1)
	sraiw	t3, t1, 31
	xor	t1, t1, t3
	subw	t1, t1, t3
	sub	t2, t4, t2
	lw	t3, 16(a1)
	sraiw	t4, t2, 31
	xor	t2, t2, t4
	subw	t2, t2, t4
	sub	t5, t5, t3
	lw	t3, 20(a1)
	sraiw	t4, t5, 31
	xor	t5, t5, t4
	subw	t5, t5, t4
	sub	t6, t6, t3
	lw	t3, 24(a1)
	sraiw	t4, t6, 31
	xor	t6, t6, t4
	subw	t6, t6, t4
	sub	t3, n1, t3
	lw	t4, 28(a1)
	sraiw	n1, t3, 31
	xor	t3, t3, n1
	subw	t3, t3, n1
	sub	t4, n2, t4
	lw	n1, 32(a1)
	sraiw	n2, t4, 31
	xor	t4, t4, n2
	subw	t4, t4, n2
	sub	n1, n3, n1
	lw	n2, 36(a1)
	sraiw	n3, n1, 31
	xor	n1, n1, n3
	subw	n1, n1, n3
	sub	n2, n4, n2
	lw	n3, 40(a1)
	sraiw	n4, n2, 31
	xor	n2, n2, n4
	subw	n2, n2, n4
	sub	n3, n5, n3
	lw	n4, 44(a1)
	sraiw	n5, n3, 31
	xor	n3, n3, n5
	subw	n3, n3, n5
	sub	n4, n6, n4
	lw	n5, 48(a1)
	sraiw	n6, n4, 31
	xor	n4, n4, n6
	subw	n4, n4, n6
	sub	n5, n7, n5
	lw	n6, 52(a1)
	sraiw	n7, n5, 31
	xor	n5, n5, n7
	subw	n5, n5, n7
	sub	n6, n8, n6
	lw	n7, 56(a1)
	sraiw	n8, n6, 31
	xor	n6, n6, n8
	subw	n6, n6, n8
	sub	n7, n9, n7
	sraiw	n8, n7, 31
	xor	n7, n7, n8
	lw	n9, 60(a1)
	subw	n7, n7, n8
	sraiw	n8, a7, 31
	xor	a7, a7, n8
	sub	n9, n10, n9
	sraiw	n10, n9, 31
	xor	n9, n9, n10
	subw	n9, n9, n10
	subw	a0, n8, a0
	subw	a0, a7, a0
	add	a0, a0, t0
	add	t1, t1, t2
	add	a0, a0, t1
	add	t5, t5, t6
	add	t3, t5, t3
	add	a0, a0, t3
	add	t4, t4, n1
	add	t4, t4, n2
	add	t4, t4, n3
	add	a0, a0, t4
	add	n4, n4, n5
	add	n4, n4, n6
	add	n4, n4, n7
	add	n4, n4, n9
	addw	a0, a0, n4
	addi	a1, a1, 64
	bge	a3, a0, .LBB5_1
# %bb.3:
	mv	a0, a5
.LBB5_4:
	ret
.Lfunc_end5:
	.size	SAD_MB_integer, .Lfunc_end5-SAD_MB_integer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FindMB                          # -- Begin function FindMB
	.p2align	2
	.type	FindMB,@function
FindMB:                                 # @FindMB
# %bb.0:
	add	a0, a2, a0
	addi	a2, a0, 1
	addi	a4, a0, 2
	addi	a5, a0, 3
	addi	a6, a0, 4
	addi	a7, a0, 5
	addi	t0, a0, 6
	addi	t1, a0, 7
	addi	t2, a0, 8
	addi	t3, a0, 9
	addi	t4, a0, 10
	addi	t5, a0, 11
	addi	t6, a0, 12
	addi	n1, a0, 13
	addi	n2, a0, 14
	addi	n3, a0, 15
	addi	a3, a3, 32
	addi	n4, a1, 16
	lui	n5, %hi(pels)
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, a0, n6
	lbu	n6, 0(n6)
	sw	n6, -32(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, a2, n6
	lbu	n6, 0(n6)
	sw	n6, -28(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, a4, n6
	lbu	n6, 0(n6)
	sw	n6, -24(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, a5, n6
	lbu	n6, 0(n6)
	sw	n6, -20(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, a6, n6
	lbu	n6, 0(n6)
	sw	n6, -16(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, a7, n6
	lbu	n6, 0(n6)
	sw	n6, -12(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, t0, n6
	lbu	n6, 0(n6)
	sw	n6, -8(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, t1, n6
	lbu	n6, 0(n6)
	sw	n6, -4(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, t2, n6
	lbu	n6, 0(n6)
	sw	n6, 0(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, t3, n6
	lbu	n6, 0(n6)
	sw	n6, 4(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, t4, n6
	lbu	n6, 0(n6)
	sw	n6, 8(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, t5, n6
	lbu	n6, 0(n6)
	sw	n6, 12(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, t6, n6
	lbu	n6, 0(n6)
	sw	n6, 16(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, n1, n6
	lbu	n6, 0(n6)
	sw	n6, 20(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, n2, n6
	lbu	n6, 0(n6)
	sw	n6, 24(a3)
	lw	n6, %lo(pels)(n5)
	mul	n6, a1, n6
	add	n6, n3, n6
	lbu	n6, 0(n6)
	sw	n6, 28(a3)
	addi	a1, a1, 1
	addi	a3, a3, 64
	bne	a1, n4, .LBB6_1
# %bb.2:
	ret
.Lfunc_end6:
	.size	FindMB, .Lfunc_end6-FindMB
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
