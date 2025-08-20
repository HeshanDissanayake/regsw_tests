	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdhuff.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_make_d_derived_tbl         # -- Begin function jpeg_make_d_derived_tbl
	.p2align	2
	.type	jpeg_make_d_derived_tbl,@function
jpeg_make_d_derived_tbl:                # @jpeg_make_d_derived_tbl
# %bb.0:
	addi	sp, sp, -1408
	sd	ra, 1400(sp)                    # 8-byte Folded Spill
	sd	s0, 1392(sp)                    # 8-byte Folded Spill
	sd	s1, 1384(sp)                    # 8-byte Folded Spill
	sd	s2, 1376(sp)                    # 8-byte Folded Spill
	sd	s3, 1368(sp)                    # 8-byte Folded Spill
	sd	s4, 1360(sp)                    # 8-byte Folded Spill
	sd	s5, 1352(sp)                    # 8-byte Folded Spill
	sd	s6, 1344(sp)                    # 8-byte Folded Spill
	sd	s7, 1336(sp)                    # 8-byte Folded Spill
	sd	s8, 1328(sp)                    # 8-byte Folded Spill
	sd	s9, 1320(sp)                    # 8-byte Folded Spill
	sd	s10, 1312(sp)                   # 8-byte Folded Spill
	sd	s11, 1304(sp)                   # 8-byte Folded Spill
	li	a4, 4
	mv	s2, a3
	mv	s3, a2
	mv	s1, a1
	mv	s0, a0
	bgeu	a2, a4, .LBB0_57
# %bb.1:
	slli	a0, s3, 3
	li	a1, 232
	beqz	s1, .LBB0_58
.LBB0_2:
	add	a1, s0, a1
	add	a0, a1, a0
	ld	s5, 0(a0)
	beqz	s5, .LBB0_59
.LBB0_3:
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	ld	s3, 0(s2)
	beqz	s3, .LBB0_60
.LBB0_4:
	li	s6, 0
	sd	s5, 280(s3)
	li	s2, 1
	li	s1, 257
	li	s7, 8
	li	s8, 17
	addi	s9, sp, 1047
	j	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	addi	s2, s2, 1
	beq	s2, s8, .LBB0_10
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	add	a0, s5, s2
	lbu	s4, 0(a0)
	addw	s10, s6, s4
	blt	s10, s1, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s7, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	beqz	s4, .LBB0_5
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	add	a0, s9, s6
	mv	a1, s2
	mv	a2, s4
	call	memset
	mv	s6, s10
	j	.LBB0_5
.LBB0_10:
	addi	s2, sp, 1047
	add	a0, s2, s6
	sb	zero, 0(a0)
	lbu	s4, 1047(sp)
	beqz	s4, .LBB0_18
# %bb.11:
	li	s7, 0
	li	s8, 0
	addi	s9, sp, 1048
	addi	s10, sp, 16
	li	s11, 1
	li	s1, 8
	mv	a0, s4
	j	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=1
	add	a0, s2, s7
	lbu	a0, 0(a0)
	slli	s8, s8, 1
	addi	s4, s4, 1
	beqz	a0, .LBB0_18
.LBB0_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	bne	s4, a0, .LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	slli	a0, s7, 2
	add	a0, s10, a0
	add	a1, s9, s7
.LBB0_15:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	s8, 0(a0)
	lbu	a2, 0(a1)
	addi	s8, s8, 1
	addi	a0, a0, 4
	addiw	s7, s7, 1
	addi	a1, a1, 1
	beq	s4, a2, .LBB0_15
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=1
	slli	a0, s8, 32
	srli	a0, a0, 32
	sll	a1, s11, s4
	blt	a0, a1, .LBB0_12
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s1, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB0_12
.LBB0_18:
	li	a0, 0
	addi	a1, s3, 152
	addi	a2, s5, 1
	addi	a3, s3, 280
	addi	a4, sp, 16
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	j	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_20 Depth=1
	slli	a5, a0, 2
	add	a5, a4, a5
	lwu	a5, 0(a5)
	sub	a5, a0, a5
	sd	a5, 0(a1)
	lbu	a5, 0(a2)
	addw	a0, a0, a5
	slli	a5, a0, 2
	add	a5, a5, a4
	lwu	a5, -4(a5)
	sd	a5, -144(a1)
	addi	a1, a1, 8
	addi	a2, a2, 1
	beq	a1, a3, .LBB0_22
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	lbu	a5, 0(a2)
	bnez	a5, .LBB0_19
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	li	a5, -1
	sd	a5, -144(a1)
	addi	a1, a1, 8
	addi	a2, a2, 1
	bne	a1, a3, .LBB0_20
.LBB0_22:
	lui	a0, 256
	addiw	a0, a0, -1
	sd	a0, 136(s3)
	addi	s2, s3, 288
	li	a2, 1024
	mv	a0, s2
	li	a1, 0
	call	memset
	lbu	a1, 1(s5)
	addi	s4, s5, 17
	addi	a0, s3, 1312
	beqz	a1, .LBB0_27
# %bb.23:                               # %.preheader
	li	a1, 0
	addi	a2, s3, 1440
	li	a3, 1
	addi	a4, sp, 16
	li	a6, 1
.LBB0_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
	slli	a5, a1, 2
	add	a5, a4, a5
	lw	a7, 0(a5)
	mv	a5, a6
	slliw	t1, a7, 7
	add	a6, s4, a1
	add	a7, a0, t1
	slli	t0, t1, 2
	add	t0, s2, t0
	add	t1, a2, t1
.LBB0_25:                               #   Parent Loop BB0_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	a3, 0(t0)
	lbu	t2, 0(a6)
	sb	t2, 0(a7)
	addi	a7, a7, 1
	addi	t0, t0, 4
	bne	a7, t1, .LBB0_25
# %bb.26:                               #   in Loop: Header=BB0_24 Depth=1
	lbu	a7, 1(s5)
	addiw	a6, a5, 1
	addi	a1, a1, 1
	bltu	a5, a7, .LBB0_24
.LBB0_27:
	lbu	a2, 2(s5)
	beqz	a2, .LBB0_32
# %bb.28:
	sext.w	a1, a1
	addi	a2, s3, 1376
	li	a6, 1
	addi	a3, sp, 16
	li	a4, 2
.LBB0_29:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
	slli	a5, a1, 2
	add	a5, a3, a5
	lw	a7, 0(a5)
	mv	a5, a6
	slliw	t1, a7, 6
	add	a6, s4, a1
	add	a7, a0, t1
	slli	t0, t1, 2
	add	t0, s2, t0
	add	t1, a2, t1
.LBB0_30:                               #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	a4, 0(t0)
	lbu	t2, 0(a6)
	sb	t2, 0(a7)
	addi	a7, a7, 1
	addi	t0, t0, 4
	bne	a7, t1, .LBB0_30
# %bb.31:                               #   in Loop: Header=BB0_29 Depth=1
	lbu	a7, 2(s5)
	addiw	a6, a5, 1
	addi	a1, a1, 1
	bltu	a5, a7, .LBB0_29
.LBB0_32:
	lbu	a2, 3(s5)
	beqz	a2, .LBB0_35
# %bb.33:
	li	a2, 0
	sext.w	a4, a1
	add	a3, a4, s5
	addi	a3, a3, 17
	slli	a4, a4, 2
	addi	a5, sp, 16
	add	a4, a5, a4
	li	a5, 3
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a4)
	slliw	a6, a6, 5
	slli	a7, a6, 2
	add	a7, s2, a7
	sw	a5, 0(a7)
	lbu	a7, 0(a3)
	add	t0, a0, a6
	sb	a7, 0(t0)
	addi	a7, a6, 1
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 2
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 3
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 4
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 5
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 6
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 7
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 8
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 9
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 10
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 11
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 12
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 13
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 14
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 15
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 16
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 17
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 18
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 19
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 20
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 21
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 22
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 23
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 24
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 25
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 26
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 27
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 28
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 29
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 30
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a6, a6, 31
	slli	a7, a6, 2
	add	a7, s2, a7
	sw	a5, 0(a7)
	lbu	a7, 0(a3)
	add	a6, a0, a6
	sb	a7, 0(a6)
	lbu	a6, 3(s5)
	addi	a1, a1, 1
	addi	a3, a3, 1
	addiw	a2, a2, 1
	addi	a4, a4, 4
	bltu	a2, a6, .LBB0_34
.LBB0_35:
	lbu	a2, 4(s5)
	beqz	a2, .LBB0_38
# %bb.36:
	li	a2, 0
	sext.w	a4, a1
	add	a3, a4, s5
	addi	a3, a3, 17
	slli	a4, a4, 2
	addi	a5, sp, 16
	add	a4, a5, a4
	li	a5, 4
.LBB0_37:                               # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a4)
	slliw	a6, a6, 4
	slli	a7, a6, 2
	add	a7, s2, a7
	sw	a5, 0(a7)
	lbu	a7, 0(a3)
	add	t0, a0, a6
	sb	a7, 0(t0)
	addi	a7, a6, 1
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 2
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 3
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 4
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 5
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 6
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 7
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 8
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 9
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 10
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 11
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 12
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 13
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 14
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a6, a6, 15
	slli	a7, a6, 2
	add	a7, s2, a7
	sw	a5, 0(a7)
	lbu	a7, 0(a3)
	add	a6, a0, a6
	sb	a7, 0(a6)
	lbu	a6, 4(s5)
	addi	a1, a1, 1
	addi	a3, a3, 1
	addiw	a2, a2, 1
	addi	a4, a4, 4
	bltu	a2, a6, .LBB0_37
.LBB0_38:
	lbu	a2, 5(s5)
	beqz	a2, .LBB0_41
# %bb.39:
	li	a2, 0
	sext.w	a4, a1
	add	a3, a4, s5
	addi	a3, a3, 17
	slli	a4, a4, 2
	addi	a5, sp, 16
	add	a4, a5, a4
	li	a5, 5
.LBB0_40:                               # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a4)
	slliw	a6, a6, 3
	slli	a7, a6, 2
	add	a7, s2, a7
	sw	a5, 0(a7)
	lbu	a7, 0(a3)
	add	t0, a0, a6
	sb	a7, 0(t0)
	addi	a7, a6, 1
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 2
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 3
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 4
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 5
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 6
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a6, a6, 7
	slli	a7, a6, 2
	add	a7, s2, a7
	sw	a5, 0(a7)
	lbu	a7, 0(a3)
	add	a6, a0, a6
	sb	a7, 0(a6)
	lbu	a6, 5(s5)
	addi	a1, a1, 1
	addi	a3, a3, 1
	addiw	a2, a2, 1
	addi	a4, a4, 4
	bltu	a2, a6, .LBB0_40
.LBB0_41:
	lbu	a2, 6(s5)
	beqz	a2, .LBB0_44
# %bb.42:
	li	a2, 0
	sext.w	a4, a1
	add	a3, a4, s5
	addi	a3, a3, 17
	slli	a4, a4, 2
	addi	a5, sp, 16
	add	a4, a5, a4
	li	a5, 6
.LBB0_43:                               # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a4)
	slliw	a6, a6, 2
	slli	a7, a6, 2
	add	a7, s2, a7
	sw	a5, 0(a7)
	lbu	a7, 0(a3)
	add	t0, a0, a6
	sb	a7, 0(t0)
	addi	a7, a6, 1
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a7, a6, 2
	slli	t0, a7, 2
	add	t0, s2, t0
	sw	a5, 0(t0)
	lbu	t0, 0(a3)
	add	a7, a0, a7
	sb	t0, 0(a7)
	addi	a6, a6, 3
	slli	a7, a6, 2
	add	a7, s2, a7
	sw	a5, 0(a7)
	lbu	a7, 0(a3)
	add	a6, a0, a6
	sb	a7, 0(a6)
	lbu	a6, 6(s5)
	addi	a1, a1, 1
	addi	a3, a3, 1
	addiw	a2, a2, 1
	addi	a4, a4, 4
	bltu	a2, a6, .LBB0_43
.LBB0_44:
	lbu	a2, 7(s5)
	beqz	a2, .LBB0_47
# %bb.45:
	li	a2, 0
	sext.w	a4, a1
	add	a3, a4, s5
	addi	a3, a3, 17
	slli	a4, a4, 2
	addi	a5, sp, 16
	add	a4, a5, a4
	li	a5, 7
.LBB0_46:                               # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a4)
	slliw	a6, a6, 1
	slli	a7, a6, 2
	add	a7, s2, a7
	sw	a5, 0(a7)
	lbu	a7, 0(a3)
	add	t0, a0, a6
	sb	a7, 0(t0)
	addi	a6, a6, 1
	slli	a7, a6, 2
	add	a7, s2, a7
	sw	a5, 0(a7)
	lbu	a7, 0(a3)
	add	a6, a0, a6
	sb	a7, 0(a6)
	lbu	a6, 7(s5)
	addi	a1, a1, 1
	addi	a3, a3, 1
	addiw	a2, a2, 1
	addi	a4, a4, 4
	bltu	a2, a6, .LBB0_46
.LBB0_47:
	lbu	a2, 8(s5)
	beqz	a2, .LBB0_50
# %bb.48:
	li	a2, 0
	sext.w	a3, a1
	add	a1, a3, s5
	addi	a1, a1, 17
	slli	a3, a3, 2
	addi	a4, sp, 16
	add	a3, a4, a3
	li	a4, 8
.LBB0_49:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a3)
	slli	a6, a5, 2
	add	a6, s2, a6
	sw	a4, 0(a6)
	lbu	a6, 0(a1)
	add	a5, a0, a5
	sb	a6, 0(a5)
	lbu	a5, 8(s5)
	addi	a1, a1, 1
	addiw	a2, a2, 1
	addi	a3, a3, 4
	bltu	a2, a5, .LBB0_49
.LBB0_50:
	beqz	s1, .LBB0_56
# %bb.51:
	blez	s6, .LBB0_56
# %bb.52:
	add	s1, s5, s6
	addi	s1, s1, 17
	li	s2, 16
	li	s3, 8
	j	.LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_54 Depth=1
	addi	s4, s4, 1
	beq	s4, s1, .LBB0_56
.LBB0_54:                               # =>This Inner Loop Header: Depth=1
	lbu	a0, 0(s4)
	bltu	a0, s2, .LBB0_53
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s3, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB0_53
.LBB0_56:
	ld	ra, 1400(sp)                    # 8-byte Folded Reload
	ld	s0, 1392(sp)                    # 8-byte Folded Reload
	ld	s1, 1384(sp)                    # 8-byte Folded Reload
	ld	s2, 1376(sp)                    # 8-byte Folded Reload
	ld	s3, 1368(sp)                    # 8-byte Folded Reload
	ld	s4, 1360(sp)                    # 8-byte Folded Reload
	ld	s5, 1352(sp)                    # 8-byte Folded Reload
	ld	s6, 1344(sp)                    # 8-byte Folded Reload
	ld	s7, 1336(sp)                    # 8-byte Folded Reload
	ld	s8, 1328(sp)                    # 8-byte Folded Reload
	ld	s9, 1320(sp)                    # 8-byte Folded Reload
	ld	s10, 1312(sp)                   # 8-byte Folded Reload
	ld	s11, 1304(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1408
	ret
.LBB0_57:
	ld	a0, 0(s0)
	sw	s3, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	li	a2, 50
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	slli	a0, s3, 3
	li	a1, 232
	bnez	s1, .LBB0_2
.LBB0_58:
	li	a1, 264
	add	a1, s0, a1
	add	a0, a1, a0
	ld	s5, 0(a0)
	bnez	s5, .LBB0_3
.LBB0_59:
	ld	a0, 0(s0)
	sw	s3, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	li	a2, 50
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	ld	s3, 0(s2)
	bnez	s3, .LBB0_4
.LBB0_60:
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 1568
	mv	a0, s0
	jalr	a3
	mv	s3, a0
	sd	a0, 0(s2)
	j	.LBB0_4
.Lfunc_end0:
	.size	jpeg_make_d_derived_tbl, .Lfunc_end0-jpeg_make_d_derived_tbl
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_fill_bit_buffer            # -- Begin function jpeg_fill_bit_buffer
	.p2align	2
	.type	jpeg_fill_bit_buffer,@function
jpeg_fill_bit_buffer:                   # @jpeg_fill_bit_buffer
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
	sd	s8, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s2, 32(a0)
	ld	a0, 0(a0)
	lw	a4, 540(s2)
	ld	s4, 8(s0)
	mv	s3, a3
	mv	s1, a1
	beqz	a4, .LBB1_5
# %bb.1:
	mv	s5, a2
	mv	s6, a0
	bge	a2, s3, .LBB1_20
.LBB1_2:
	ld	a0, 592(s2)
	lw	a0, 16(a0)
	bnez	a0, .LBB1_4
# %bb.3:
	ld	a0, 0(s2)
	ld	a2, 8(a0)
	li	a1, 117
	sw	a1, 40(a0)
	li	a1, -1
	mv	a0, s2
	jalr	a2
	ld	a0, 592(s2)
	li	a1, 1
	sw	a1, 16(a0)
.LBB1_4:
	li	a2, 25
	subw	a0, a2, s5
	sll	s1, s1, a0
	j	.LBB1_21
.LBB1_5:
	li	a1, 24
	blt	a1, a2, .LBB1_18
# %bb.6:
	li	s7, 255
	li	s8, 17
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
	mv	s5, a2
	beqz	s4, .LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	lbu	a1, 0(a0)
	addi	s4, s4, -1
	addi	s6, a0, 1
	bne	a1, s7, .LBB1_17
	j	.LBB1_12
.LBB1_9:                                #   in Loop: Header=BB1_7 Depth=1
	ld	a0, 40(s2)
	ld	a1, 24(a0)
	mv	a0, s2
	jalr	a1
	beqz	a0, .LBB1_22
# %bb.10:                               #   in Loop: Header=BB1_7 Depth=1
	ld	a1, 40(s2)
	ld	a0, 0(a1)
	ld	s4, 8(a1)
	lbu	a1, 0(a0)
	addi	s4, s4, -1
	addi	s6, a0, 1
	bne	a1, s7, .LBB1_17
	j	.LBB1_12
.LBB1_11:                               #   in Loop: Header=BB1_12 Depth=2
	lbu	a0, 0(s6)
	addi	s4, s4, -1
	addi	s6, s6, 1
	bne	a0, s7, .LBB1_15
.LBB1_12:                               #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	s4, .LBB1_11
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=2
	ld	a0, 40(s2)
	ld	a1, 24(a0)
	mv	a0, s2
	jalr	a1
	beqz	a0, .LBB1_22
# %bb.14:                               #   in Loop: Header=BB1_12 Depth=2
	ld	a0, 40(s2)
	ld	s6, 0(a0)
	ld	s4, 8(a0)
	j	.LBB1_11
.LBB1_15:                               #   in Loop: Header=BB1_7 Depth=1
	bnez	a0, .LBB1_19
# %bb.16:                               # %.loopexit1
                                        #   in Loop: Header=BB1_7 Depth=1
	li	a1, 255
.LBB1_17:                               #   in Loop: Header=BB1_7 Depth=1
	slli	s1, s1, 8
	or	s1, a1, s1
	addiw	a2, s5, 8
	mv	a0, s6
	blt	s5, s8, .LBB1_7
	j	.LBB1_21
.LBB1_18:
	mv	s6, a0
	j	.LBB1_21
.LBB1_19:
	sw	a0, 540(s2)
	blt	s5, s3, .LBB1_2
.LBB1_20:
	mv	a2, s5
.LBB1_21:
	sd	s6, 0(s0)
	sd	s4, 8(s0)
	sd	s1, 16(s0)
	sw	a2, 24(s0)
	li	a0, 1
.LBB1_22:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	ld	s8, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end1:
	.size	jpeg_fill_bit_buffer, .Lfunc_end1-jpeg_fill_bit_buffer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_huff_decode                # -- Begin function jpeg_huff_decode
	.p2align	2
	.type	jpeg_huff_decode,@function
jpeg_huff_decode:                       # @jpeg_huff_decode
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a4
	mv	s0, a3
	mv	s2, a0
	bge	a2, a4, .LBB2_3
# %bb.1:
	mv	a0, s2
	mv	a3, s1
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB2_13
# %bb.2:
	ld	a1, 16(s2)
	lw	a2, 24(s2)
.LBB2_3:
	subw	a2, a2, s1
	sra	a0, a1, a2
	li	a3, -1
	slli	a4, s1, 3
	add	a4, s0, a4
	ld	a4, 0(a4)
	sllw	a3, a3, s1
	not	a3, a3
	and	s3, a0, a3
	bge	a4, s3, .LBB2_9
# %bb.4:
	slli	a0, s1, 3
	add	a0, a0, s0
	addi	s5, a0, 8
	mv	s4, s1
	j	.LBB2_6
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=1
	slli	s3, s3, 1
	addiw	a2, a2, -1
	srl	a0, a1, a2
	andi	a0, a0, 1
	ld	a3, 0(s5)
	or	s3, a0, s3
	addi	s4, s4, 1
	addiw	s1, s1, 1
	addi	s5, s5, 8
	bge	a3, s3, .LBB2_10
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	bgtz	a2, .LBB2_5
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	li	a3, 1
	mv	a0, s2
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB2_13
# %bb.8:                                #   in Loop: Header=BB2_6 Depth=1
	ld	a1, 16(s2)
	lw	a2, 24(s2)
	j	.LBB2_5
.LBB2_9:
	mv	s4, s1
.LBB2_10:
	sd	a1, 16(s2)
	li	a0, 17
	sw	a2, 24(s2)
	blt	s1, a0, .LBB2_12
# %bb.11:
	ld	a0, 32(s2)
	ld	a1, 0(a0)
	ld	a2, 8(a1)
	li	a3, 118
	sw	a3, 40(a1)
	li	a1, -1
	jalr	a2
	li	a0, 0
	j	.LBB2_14
.LBB2_12:
	slli	s4, s4, 3
	add	s4, s0, s4
	ld	a0, 144(s4)
	ld	a1, 280(s0)
	addw	a0, a0, s3
	add	a0, a1, a0
	lbu	a0, 17(a0)
	j	.LBB2_14
.LBB2_13:
	li	a0, -1
.LBB2_14:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end2:
	.size	jpeg_huff_decode, .Lfunc_end2-jpeg_huff_decode
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_huff_decoder              # -- Begin function jinit_huff_decoder
	.p2align	2
	.type	jinit_huff_decoder,@function
jinit_huff_decoder:                     # @jinit_huff_decoder
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 368
	mv	a0, s0
	jalr	a3
	sd	a0, 592(s0)
	lui	a1, %hi(start_pass_huff_decoder)
	addi	a1, a1, %lo(start_pass_huff_decoder)
	sd	a1, 0(a0)
	lui	a1, %hi(decode_mcu)
	addi	a1, a1, %lo(decode_mcu)
	sd	a1, 8(a0)
	sd	zero, 120(a0)
	sd	zero, 112(a0)
	sd	zero, 104(a0)
	sd	zero, 96(a0)
	sd	zero, 88(a0)
	sd	zero, 80(a0)
	sd	zero, 72(a0)
	sd	zero, 64(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	jinit_huff_decoder, .Lfunc_end3-jinit_huff_decoder
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_huff_decoder
	.type	start_pass_huff_decoder,@function
start_pass_huff_decoder:                # @start_pass_huff_decoder
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
	sd	s8, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 524(a0)
	ld	s2, 592(s0)
	bnez	a0, .LBB4_4
# %bb.1:
	lw	a0, 528(s0)
	li	a1, 63
	bne	a0, a1, .LBB4_4
# %bb.2:
	lw	a0, 532(s0)
	bnez	a0, .LBB4_4
# %bb.3:
	lw	a0, 536(s0)
	beqz	a0, .LBB4_5
.LBB4_4:
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 122
	sw	a1, 40(a0)
	li	a1, -1
	mv	a0, s0
	jalr	a2
.LBB4_5:
	lw	a0, 432(s0)
	addi	s3, s0, 440
	addi	s4, s2, 64
	addi	s5, s2, 96
	blez	a0, .LBB4_8
# %bb.6:
	li	s6, 0
	addi	s7, s2, 40
	mv	s8, s3
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s8)
	lw	a2, 20(a0)
	lw	s1, 24(a0)
	slli	a3, a2, 3
	add	a3, s4, a3
	li	a1, 1
	mv	a0, s0
	call	jpeg_make_d_derived_tbl
	slli	a3, s1, 3
	add	a3, s5, a3
	mv	a0, s0
	li	a1, 0
	mv	a2, s1
	call	jpeg_make_d_derived_tbl
	sw	zero, 0(s7)
	lw	a0, 432(s0)
	addi	s6, s6, 1
	addi	s7, s7, 4
	addi	s8, s8, 8
	blt	s6, a0, .LBB4_7
.LBB4_8:
	lw	a0, 480(s0)
	blez	a0, .LBB4_14
# %bb.9:
	li	a0, 0
	addi	a1, s0, 484
	addi	a2, s2, 128
	li	a3, 1
	mv	a4, s2
	j	.LBB4_12
.LBB4_10:                               #   in Loop: Header=BB4_12 Depth=1
	li	a5, 0
	sw	zero, 328(a4)
	li	a6, 288
.LBB4_11:                               #   in Loop: Header=BB4_12 Depth=1
	add	a6, a4, a6
	sw	a5, 0(a6)
	lw	a5, 480(s0)
	addi	a0, a0, 1
	addi	a4, a4, 4
	addi	a1, a1, 4
	addi	a2, a2, 8
	bge	a0, a5, .LBB4_14
.LBB4_12:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a1)
	slli	a5, a5, 3
	add	a5, s3, a5
	ld	a5, 0(a5)
	lw	a6, 20(a5)
	slli	a6, a6, 3
	add	a6, s4, a6
	ld	a6, 0(a6)
	lw	a7, 24(a5)
	sd	a6, 0(a2)
	slli	a7, a7, 3
	add	a7, s5, a7
	ld	a6, 0(a7)
	lw	a7, 48(a5)
	sd	a6, 80(a2)
	beqz	a7, .LBB4_10
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=1
	sw	a3, 288(a4)
	lw	a5, 36(a5)
	slti	a5, a5, 2
	xori	a5, a5, 1
	li	a6, 328
	j	.LBB4_11
.LBB4_14:
	lw	a0, 368(s0)
	sw	zero, 32(s2)
	sd	zero, 24(s2)
	sw	zero, 16(s2)
	sw	a0, 56(s2)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	ld	s8, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end4:
	.size	start_pass_huff_decoder, .Lfunc_end4-start_pass_huff_decoder
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function decode_mcu
	.type	decode_mcu,@function
decode_mcu:                             # @decode_mcu
# %bb.0:
	addi	sp, sp, -208
	sd	ra, 200(sp)                     # 8-byte Folded Spill
	sd	s0, 192(sp)                     # 8-byte Folded Spill
	sd	s1, 184(sp)                     # 8-byte Folded Spill
	sd	s2, 176(sp)                     # 8-byte Folded Spill
	sd	s3, 168(sp)                     # 8-byte Folded Spill
	sd	s4, 160(sp)                     # 8-byte Folded Spill
	sd	s5, 152(sp)                     # 8-byte Folded Spill
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	sd	s7, 136(sp)                     # 8-byte Folded Spill
	sd	s8, 128(sp)                     # 8-byte Folded Spill
	sd	s9, 120(sp)                     # 8-byte Folded Spill
	sd	s10, 112(sp)                    # 8-byte Folded Spill
	sd	s11, 104(sp)                    # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 368(a0)
	ld	s4, 592(s0)
	mv	s1, a1
	beqz	a0, .LBB5_2
# %bb.1:
	lw	a0, 56(s4)
	beqz	a0, .LBB5_59
.LBB5_2:
	lw	a0, 16(s4)
	beqz	a0, .LBB5_5
.LBB5_3:
	lw	a0, 56(s4)
	addi	a0, a0, -1
	sw	a0, 56(s4)
	li	a0, 1
.LBB5_4:
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s6, 144(sp)                     # 8-byte Folded Reload
	ld	s7, 136(sp)                     # 8-byte Folded Reload
	ld	s8, 128(sp)                     # 8-byte Folded Reload
	ld	s9, 120(sp)                     # 8-byte Folded Reload
	ld	s10, 112(sp)                    # 8-byte Folded Reload
	ld	s11, 104(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 208
	ret
.LBB5_5:
	ld	a0, 40(s0)
	sd	s0, 96(sp)
	lwu	a1, 44(s4)
	lwu	a2, 40(s4)
	ld	a3, 0(a0)
	ld	a4, 8(a0)
	slli	a1, a1, 32
	or	a2, a1, a2
	lwu	a5, 52(s4)
	lwu	a6, 48(s4)
	ld	a1, 24(s4)
	sd	a2, 48(sp)
	slli	a5, a5, 32
	or	a5, a5, a6
	lw	a6, 480(s0)
	lw	a2, 32(s4)
	sd	a3, 64(sp)
	sd	a4, 72(sp)
	sd	a5, 56(sp)
	blez	a6, .LBB5_58
# %bb.6:
	li	s5, 0
	addi	s6, s4, 128
	addi	s7, s4, 208
	addi	s8, s4, 288
	addi	a0, s0, 484
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	addi	a0, s4, 328
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	li	s11, 7
	li	s10, 63
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	sd	s8, 0(sp)                       # 8-byte Folded Spill
.LBB5_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_26 Depth 2
                                        #     Child Loop BB5_43 Depth 2
	slli	a0, s5, 3
	add	a3, s1, a0
	ld	s9, 0(a3)
	add	a3, s6, a0
	ld	s3, 0(a3)
	add	a0, s7, a0
	ld	s2, 0(a0)
	blt	s11, a2, .LBB5_11
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=1
	addi	a0, sp, 64
	li	a3, 0
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB5_4
# %bb.9:                                #   in Loop: Header=BB5_7 Depth=1
	lw	a2, 88(sp)
	ld	a1, 80(sp)
	blt	s11, a2, .LBB5_11
# %bb.10:                               #   in Loop: Header=BB5_7 Depth=1
	addi	a0, sp, 64
	li	a4, 1
	j	.LBB5_15
.LBB5_11:                               #   in Loop: Header=BB5_7 Depth=1
	addi	a0, a2, -8
	sra	a0, a1, a0
	andi	a0, a0, 255
	slli	a3, a0, 2
	add	a3, s3, a3
	lw	a3, 288(a3)
	beqz	a3, .LBB5_14
# %bb.12:                               #   in Loop: Header=BB5_7 Depth=1
	add	a0, s3, a0
	lbu	s3, 1312(a0)
	subw	a2, a2, a3
	bnez	s3, .LBB5_17
.LBB5_13:                               #   in Loop: Header=BB5_7 Depth=1
	li	a0, 0
	j	.LBB5_22
.LBB5_14:                               #   in Loop: Header=BB5_7 Depth=1
	addi	a0, sp, 64
	li	a4, 9
.LBB5_15:                               #   in Loop: Header=BB5_7 Depth=1
	mv	a3, s3
	call	jpeg_huff_decode
	mv	s3, a0
	bltz	a0, .LBB5_65
# %bb.16:                               #   in Loop: Header=BB5_7 Depth=1
	ld	a1, 80(sp)
	lw	a2, 88(sp)
	beqz	s3, .LBB5_13
.LBB5_17:                               #   in Loop: Header=BB5_7 Depth=1
	bge	a2, s3, .LBB5_20
# %bb.18:                               #   in Loop: Header=BB5_7 Depth=1
	addi	a0, sp, 64
	mv	a3, s3
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB5_4
# %bb.19:                               #   in Loop: Header=BB5_7 Depth=1
	ld	a1, 80(sp)
	lw	a2, 88(sp)
.LBB5_20:                               #   in Loop: Header=BB5_7 Depth=1
	subw	a2, a2, s3
	sra	a0, a1, a2
	slli	a3, s3, 2
	lui	a4, %hi(extend_test)
	addi	a4, a4, %lo(extend_test)
	add	a4, a4, a3
	lw	a4, 0(a4)
	li	a5, -1
	sllw	a5, a5, s3
	not	a5, a5
	and	a0, a0, a5
	bge	a0, a4, .LBB5_22
# %bb.21:                               #   in Loop: Header=BB5_7 Depth=1
	lui	a4, %hi(extend_offset)
	addi	a4, a4, %lo(extend_offset)
	add	a3, a4, a3
	lw	a3, 0(a3)
	add	a0, a3, a0
.LBB5_22:                               #   in Loop: Header=BB5_7 Depth=1
	slli	a3, s5, 2
	add	a4, s8, a3
	lw	a4, 0(a4)
	beqz	a4, .LBB5_24
# %bb.23:                               #   in Loop: Header=BB5_7 Depth=1
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	add	a4, a4, a3
	lw	a4, 0(a4)
	slli	a4, a4, 2
	addi	a5, sp, 48
	add	a4, a5, a4
	lw	a5, 0(a4)
	add	a0, a5, a0
	sw	a0, 0(a4)
	sh	a0, 0(s9)
.LBB5_24:                               #   in Loop: Header=BB5_7 Depth=1
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	add	a3, a0, a3
	lw	a0, 0(a3)
	addi	s8, s2, 288
	addi	s6, s2, 1312
	li	s7, 1
	bnez	a0, .LBB5_26
	j	.LBB5_43
.LBB5_25:                               #   in Loop: Header=BB5_26 Depth=2
	addw	a0, s1, s7
	slli	a4, a0, 2
	lui	a5, %hi(jpeg_natural_order)
	addi	a5, a5, %lo(jpeg_natural_order)
	add	a4, a5, a4
	lw	a4, 0(a4)
	slli	a4, a4, 1
	add	a4, s9, a4
	sh	a3, 0(a4)
	addi	s7, a0, 1
	bge	a0, s10, .LBB5_56
.LBB5_26:                               #   Parent Loop BB5_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	s11, a2, .LBB5_30
# %bb.27:                               #   in Loop: Header=BB5_26 Depth=2
	addi	a0, sp, 64
	li	a3, 0
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB5_4
# %bb.28:                               #   in Loop: Header=BB5_26 Depth=2
	lw	a2, 88(sp)
	ld	a1, 80(sp)
	blt	s11, a2, .LBB5_30
# %bb.29:                               #   in Loop: Header=BB5_26 Depth=2
	addi	a0, sp, 64
	li	a4, 1
	mv	a3, s2
	call	jpeg_huff_decode
	bgez	a0, .LBB5_35
	j	.LBB5_65
.LBB5_30:                               #   in Loop: Header=BB5_26 Depth=2
	addi	a0, a2, -8
	sra	a0, a1, a0
	andi	a0, a0, 255
	slli	a3, a0, 2
	add	a3, s8, a3
	lw	a3, 0(a3)
	beqz	a3, .LBB5_34
# %bb.31:                               #   in Loop: Header=BB5_26 Depth=2
	add	a0, s6, a0
	lbu	a0, 0(a0)
	subw	a2, a2, a3
	andi	s3, a0, 15
	srliw	s1, a0, 4
	bnez	s3, .LBB5_36
.LBB5_32:                               #   in Loop: Header=BB5_26 Depth=2
	li	a0, 15
	bne	s1, a0, .LBB5_56
# %bb.33:                               #   in Loop: Header=BB5_26 Depth=2
	addiw	a0, s7, 15
	addi	s7, a0, 1
	blt	a0, s10, .LBB5_26
	j	.LBB5_56
.LBB5_34:                               #   in Loop: Header=BB5_26 Depth=2
	addi	a0, sp, 64
	li	a4, 9
	mv	a3, s2
	call	jpeg_huff_decode
	bltz	a0, .LBB5_65
.LBB5_35:                               #   in Loop: Header=BB5_26 Depth=2
	ld	a1, 80(sp)
	lw	a2, 88(sp)
	andi	s3, a0, 15
	srliw	s1, a0, 4
	beqz	s3, .LBB5_32
.LBB5_36:                               #   in Loop: Header=BB5_26 Depth=2
	bge	a2, s3, .LBB5_39
# %bb.37:                               #   in Loop: Header=BB5_26 Depth=2
	addi	a0, sp, 64
	mv	a3, s3
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB5_4
# %bb.38:                               #   in Loop: Header=BB5_26 Depth=2
	ld	a1, 80(sp)
	lw	a2, 88(sp)
.LBB5_39:                               #   in Loop: Header=BB5_26 Depth=2
	subw	a2, a2, s3
	sra	a3, a1, a2
	slli	a0, s3, 2
	lui	a4, %hi(extend_test)
	addi	a4, a4, %lo(extend_test)
	add	a4, a4, a0
	lw	a4, 0(a4)
	li	a5, -1
	sllw	a5, a5, s3
	not	a5, a5
	and	a3, a3, a5
	bge	a3, a4, .LBB5_25
# %bb.40:                               #   in Loop: Header=BB5_26 Depth=2
	lui	a4, %hi(extend_offset)
	addi	a4, a4, %lo(extend_offset)
	add	a0, a4, a0
	lw	a0, 0(a0)
	add	a3, a0, a3
	j	.LBB5_25
.LBB5_41:                               #   in Loop: Header=BB5_43 Depth=2
	subw	a2, a2, s3
.LBB5_42:                               #   in Loop: Header=BB5_43 Depth=2
	add	s1, s7, s1
	addiw	s7, s1, 1
	li	a0, 64
	bge	s7, a0, .LBB5_56
.LBB5_43:                               #   Parent Loop BB5_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	s11, a2, .LBB5_47
# %bb.44:                               #   in Loop: Header=BB5_43 Depth=2
	addi	a0, sp, 64
	li	a3, 0
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB5_4
# %bb.45:                               #   in Loop: Header=BB5_43 Depth=2
	lw	a2, 88(sp)
	ld	a1, 80(sp)
	blt	s11, a2, .LBB5_47
# %bb.46:                               #   in Loop: Header=BB5_43 Depth=2
	addi	a0, sp, 64
	li	a4, 1
	j	.LBB5_51
.LBB5_47:                               #   in Loop: Header=BB5_43 Depth=2
	addi	a0, a2, -8
	sra	a0, a1, a0
	andi	a0, a0, 255
	slli	a3, a0, 2
	add	a3, s8, a3
	lw	a3, 0(a3)
	beqz	a3, .LBB5_50
# %bb.48:                               #   in Loop: Header=BB5_43 Depth=2
	add	a0, s6, a0
	lbu	a0, 0(a0)
	subw	a2, a2, a3
	andi	s3, a0, 15
	srliw	s1, a0, 4
	bnez	s3, .LBB5_53
.LBB5_49:                               #   in Loop: Header=BB5_43 Depth=2
	li	a0, 15
	beq	s1, a0, .LBB5_42
	j	.LBB5_56
.LBB5_50:                               #   in Loop: Header=BB5_43 Depth=2
	addi	a0, sp, 64
	li	a4, 9
.LBB5_51:                               #   in Loop: Header=BB5_43 Depth=2
	mv	a3, s2
	call	jpeg_huff_decode
	bltz	a0, .LBB5_65
# %bb.52:                               #   in Loop: Header=BB5_43 Depth=2
	ld	a1, 80(sp)
	lw	a2, 88(sp)
	andi	s3, a0, 15
	srliw	s1, a0, 4
	beqz	s3, .LBB5_49
.LBB5_53:                               #   in Loop: Header=BB5_43 Depth=2
	bge	a2, s3, .LBB5_41
# %bb.54:                               #   in Loop: Header=BB5_43 Depth=2
	addi	a0, sp, 64
	mv	a3, s3
	call	jpeg_fill_bit_buffer
	beqz	a0, .LBB5_4
# %bb.55:                               #   in Loop: Header=BB5_43 Depth=2
	ld	a1, 80(sp)
	lw	a2, 88(sp)
	j	.LBB5_41
.LBB5_56:                               #   in Loop: Header=BB5_7 Depth=1
	lw	a0, 480(s0)
	addi	s5, s5, 1
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	ld	s8, 0(sp)                       # 8-byte Folded Reload
	blt	s5, a0, .LBB5_7
# %bb.57:
	ld	a3, 64(sp)
	ld	a0, 40(s0)
	ld	a4, 72(sp)
.LBB5_58:
	sd	a3, 0(a0)
	sd	a4, 8(a0)
	sd	a1, 24(s4)
	sw	a2, 32(s4)
	lw	a0, 48(sp)
	lw	a1, 52(sp)
	lw	a2, 56(sp)
	lw	a3, 60(sp)
	sw	a0, 40(s4)
	sw	a1, 44(s4)
	sw	a2, 48(s4)
	sw	a3, 52(s4)
	j	.LBB5_3
.LBB5_59:
	lw	a0, 32(s4)
	ld	a1, 584(s0)
	slli	a2, a0, 1
	srli	a2, a2, 61
	lw	a3, 36(a1)
	add	a0, a0, a2
	sraiw	a0, a0, 3
	ld	a2, 16(a1)
	add	a0, a3, a0
	sw	a0, 36(a1)
	sw	zero, 32(s4)
	mv	a0, s0
	jalr	a2
	beqz	a0, .LBB5_4
# %bb.60:
	lw	a0, 432(s0)
	blez	a0, .LBB5_63
# %bb.61:
	li	a0, 0
	addi	a1, s4, 40
.LBB5_62:                               # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a2, 432(s0)
	addi	a0, a0, 1
	addi	a1, a1, 4
	blt	a0, a2, .LBB5_62
.LBB5_63:
	lw	a0, 368(s0)
	lw	a1, 540(s0)
	sw	a0, 56(s4)
	bnez	a1, .LBB5_2
# %bb.64:
	sw	zero, 16(s4)
	j	.LBB5_2
.LBB5_65:
	li	a0, 0
	j	.LBB5_4
.Lfunc_end5:
	.size	decode_mcu, .Lfunc_end5-decode_mcu
                                        # -- End function
	.option	pop
	.type	extend_test,@object             # @extend_test
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
extend_test:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	64                              # 0x40
	.word	128                             # 0x80
	.word	256                             # 0x100
	.word	512                             # 0x200
	.word	1024                            # 0x400
	.word	2048                            # 0x800
	.word	4096                            # 0x1000
	.word	8192                            # 0x2000
	.word	16384                           # 0x4000
	.size	extend_test, 64

	.type	extend_offset,@object           # @extend_offset
	.p2align	2, 0x0
extend_offset:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967293                      # 0xfffffffd
	.word	4294967289                      # 0xfffffff9
	.word	4294967281                      # 0xfffffff1
	.word	4294967265                      # 0xffffffe1
	.word	4294967233                      # 0xffffffc1
	.word	4294967169                      # 0xffffff81
	.word	4294967041                      # 0xffffff01
	.word	4294966785                      # 0xfffffe01
	.word	4294966273                      # 0xfffffc01
	.word	4294965249                      # 0xfffff801
	.word	4294963201                      # 0xfffff001
	.word	4294959105                      # 0xffffe001
	.word	4294950913                      # 0xffffc001
	.word	4294934529                      # 0xffff8001
	.size	extend_offset, 64

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
