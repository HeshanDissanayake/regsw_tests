	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jchuff.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_make_c_derived_tbl         # -- Begin function jpeg_make_c_derived_tbl
	.p2align	2
	.type	jpeg_make_c_derived_tbl,@function
jpeg_make_c_derived_tbl:                # @jpeg_make_c_derived_tbl
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
	mv	s3, a3
	mv	s1, a2
	mv	s2, a1
	mv	s0, a0
	bgeu	a2, a4, .LBB0_25
# %bb.1:
	slli	a0, s1, 3
	li	a1, 160
	bnez	s2, .LBB0_26
.LBB0_2:
	add	a1, s0, a1
	add	a0, a1, a0
	ld	s5, 0(a0)
	beqz	s5, .LBB0_27
.LBB0_3:
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	ld	s1, 0(s3)
	beqz	s1, .LBB0_28
.LBB0_4:
	li	s6, 0
	li	s3, 1
	li	s2, 257
	li	s7, 8
	li	s8, 17
	addi	s9, sp, 1047
	j	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	addi	s3, s3, 1
	beq	s3, s8, .LBB0_10
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	add	a0, s5, s3
	lbu	s4, 0(a0)
	addw	s10, s6, s4
	blt	s10, s2, .LBB0_8
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
	mv	a1, s3
	mv	a2, s4
	call	memset
	mv	s6, s10
	j	.LBB0_5
.LBB0_10:
	addi	s3, sp, 1047
	add	a0, s3, s6
	sb	zero, 0(a0)
	lbu	s4, 1047(sp)
	beqz	s4, .LBB0_18
# %bb.11:
	li	s7, 0
	li	s8, 0
	addi	s9, sp, 1048
	addi	s10, sp, 16
	li	s11, 1
	li	s2, 8
	mv	a0, s4
	j	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=1
	add	a0, s3, s8
	lbu	a0, 0(a0)
	slli	s7, s7, 1
	addi	s4, s4, 1
	beqz	a0, .LBB0_18
.LBB0_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	bne	s4, a0, .LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	slli	a0, s8, 2
	add	a0, s10, a0
	add	a1, s9, s8
.LBB0_15:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	s7, 0(a0)
	lbu	a2, 0(a1)
	addi	s7, s7, 1
	addi	a0, a0, 4
	addiw	s8, s8, 1
	addi	a1, a1, 1
	beq	s4, a2, .LBB0_15
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=1
	slli	a0, s7, 32
	srli	a0, a0, 32
	sll	a1, s11, s4
	blt	a0, a1, .LBB0_12
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB0_12
.LBB0_18:
	addi	s3, s1, 1024
	li	a2, 256
	mv	a0, s3
	li	a1, 0
	call	memset
	blez	s6, .LBB0_33
# %bb.19:
	addi	s5, s5, 17
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	beqz	a0, .LBB0_29
# %bb.20:                               # %.preheader1
	addi	s2, sp, 1047
	add	s6, s2, s6
	addi	s4, sp, 16
	li	s7, 15
	li	s8, 8
	j	.LBB0_23
.LBB0_21:                               #   in Loop: Header=BB0_23 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s8, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_22:                               #   in Loop: Header=BB0_23 Depth=1
	lw	a0, 0(s4)
	slli	s10, s10, 2
	add	s10, s1, s10
	sw	a0, 0(s10)
	lbu	a0, 0(s2)
	sb	a0, 0(s9)
	addi	s2, s2, 1
	addi	s4, s4, 4
	addi	s5, s5, 1
	beq	s2, s6, .LBB0_33
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	lbu	s10, 0(s5)
	add	s9, s3, s10
	bltu	s7, s10, .LBB0_21
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=1
	lbu	a0, 0(s9)
	bnez	a0, .LBB0_21
	j	.LBB0_22
.LBB0_25:
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	li	a2, 50
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	slli	a0, s1, 3
	li	a1, 160
	beqz	s2, .LBB0_2
.LBB0_26:
	li	a1, 128
	add	a1, s0, a1
	add	a0, a1, a0
	ld	s5, 0(a0)
	bnez	s5, .LBB0_3
.LBB0_27:
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	li	a2, 50
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	ld	s1, 0(s3)
	bnez	s1, .LBB0_4
.LBB0_28:
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 1280
	mv	a0, s0
	jalr	a3
	mv	s1, a0
	sd	a0, 0(s3)
	j	.LBB0_4
.LBB0_29:                               # %.preheader
	addi	s2, sp, 1047
	add	s6, s2, s6
	addi	s4, sp, 16
	li	s7, 8
	j	.LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_31 Depth=1
	lw	a0, 0(s4)
	slli	s9, s9, 2
	add	s9, s1, s9
	sw	a0, 0(s9)
	lbu	a0, 0(s2)
	sb	a0, 0(s8)
	addi	s2, s2, 1
	addi	s4, s4, 4
	addi	s5, s5, 1
	beq	s2, s6, .LBB0_33
.LBB0_31:                               # =>This Inner Loop Header: Depth=1
	lbu	s9, 0(s5)
	add	s8, s3, s9
	lbu	a0, 0(s8)
	beqz	a0, .LBB0_30
# %bb.32:                               #   in Loop: Header=BB0_31 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s7, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB0_30
.LBB0_33:
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
.Lfunc_end0:
	.size	jpeg_make_c_derived_tbl, .Lfunc_end0-jpeg_make_c_derived_tbl
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_gen_optimal_table          # -- Begin function jpeg_gen_optimal_table
	.p2align	2
	.type	jpeg_gen_optimal_table,@function
jpeg_gen_optimal_table:                 # @jpeg_gen_optimal_table
# %bb.0:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)                    # 8-byte Folded Spill
	sd	s0, 2016(sp)                    # 8-byte Folded Spill
	sd	s1, 2008(sp)                    # 8-byte Folded Spill
	sd	s2, 2000(sp)                    # 8-byte Folded Spill
	sd	s3, 1992(sp)                    # 8-byte Folded Spill
	sd	s4, 1984(sp)                    # 8-byte Folded Spill
	sd	s5, 1976(sp)                    # 8-byte Folded Spill
	sd	s6, 1968(sp)                    # 8-byte Folded Spill
	sd	s7, 1960(sp)                    # 8-byte Folded Spill
	addi	sp, sp, -144
	mv	s2, a2
	mv	s0, a1
	mv	s1, a0
	addi	a0, sp, 2047
	addi	a0, a0, 17
	sd	zero, 0(a0)
	sd	zero, 8(a0)
	sd	zero, 16(a0)
	sd	zero, 24(a0)
	sb	zero, 32(a0)
	addi	a0, sp, 1036
	li	a2, 1028
	addi	s3, sp, 1036
	li	a1, 0
	call	memset
	addi	a0, sp, 8
	li	a1, 255
	li	a2, 1028
	addi	s4, sp, 8
	call	memset
	li	a4, 0
	addi	a0, s2, 2047
	li	a1, 1
	sd	a1, 1(a0)
	addi	a0, a0, 9
	li	a3, -1
	lui	a1, 244141
	addiw	a1, a1, -1536
	li	a2, 257
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_7 Depth 3
                                        #       Child Loop BB1_14 Depth 3
                                        #     Child Loop BB1_17 Depth 2
	mv	a5, a1
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_7 Depth 3
                                        #       Child Loop BB1_14 Depth 3
	slli	a6, a4, 3
	add	a6, s2, a6
	ld	a6, 0(a6)
	seqz	a7, a6
	slt	t0, a5, a6
	or	a7, a7, t0
	bnez	a7, .LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=2
	mv	a3, a4
	mv	a5, a6
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=2
	addi	a4, a4, 1
	bne	a4, a2, .LBB1_2
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=2
	li	a5, 0
	slli	a4, a3, 32
	srli	a6, a4, 32
	li	a4, -1
	mv	a7, s2
	mv	t0, a1
	j	.LBB1_7
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=3
	addiw	a5, a5, 1
	addi	a7, a7, 8
	addi	a6, a6, -1
	beq	a7, a0, .LBB1_11
.LBB1_7:                                #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t1, 0(a7)
	seqz	t2, t1
	slt	t3, t0, t1
	seqz	t4, a6
	or	t2, t2, t4
	or	t2, t2, t3
	beqz	t2, .LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=3
	bnez	t2, .LBB1_6
	j	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_7 Depth=3
	mv	a4, a5
	bnez	t2, .LBB1_6
.LBB1_10:                               #   in Loop: Header=BB1_7 Depth=3
	mv	t0, t1
	j	.LBB1_6
.LBB1_11:                               #   in Loop: Header=BB1_2 Depth=2
	bltz	a4, .LBB1_19
# %bb.12:                               #   in Loop: Header=BB1_2 Depth=2
	slli	a5, a4, 3
	add	a6, s2, a5
	ld	a5, 0(a6)
	sext.w	a3, a3
	slli	a7, a3, 3
	add	a7, s2, a7
	ld	t0, 0(a7)
	add	t0, t0, a5
	slli	a3, a3, 2
	add	t1, s3, a3
	lw	t2, 0(t1)
	add	a3, s4, a3
	lw	a5, 0(a3)
	sd	t0, 0(a7)
	sd	zero, 0(a6)
	addi	t2, t2, 1
	sw	t2, 0(t1)
	bltz	a5, .LBB1_15
# %bb.13:                               # %.preheader5
                                        #   in Loop: Header=BB1_2 Depth=2
	slli	a5, a5, 32
	srli	a5, a5, 32
.LBB1_14:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli	a3, a5, 2
	add	a5, s3, a3
	lw	a6, 0(a5)
	add	a3, s4, a3
	lw	a7, 0(a3)
	addi	a6, a6, 1
	sw	a6, 0(a5)
	slli	a5, a7, 32
	srli	a5, a5, 32
	bgez	a7, .LBB1_14
.LBB1_15:                               #   in Loop: Header=BB1_2 Depth=2
	sw	a4, 0(a3)
	slli	a4, a4, 2
	add	a3, s3, a4
	lw	a5, 0(a3)
	add	a4, s4, a4
	lw	a6, 0(a4)
	li	a4, 0
	addi	a5, a5, 1
	sw	a5, 0(a3)
	li	a3, -1
	mv	a5, a1
	bltz	a6, .LBB1_2
# %bb.16:                               # %.preheader3
                                        #   in Loop: Header=BB1_1 Depth=1
	slli	a4, a6, 32
	srli	a4, a4, 32
.LBB1_17:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a4, a4, 2
	add	a5, s3, a4
	lw	a6, 0(a5)
	add	a4, s4, a4
	lw	a7, 0(a4)
	addi	a6, a6, 1
	sw	a6, 0(a5)
	slli	a4, a7, 32
	srli	a4, a4, 32
	bgez	a7, .LBB1_17
# %bb.18:                               #   in Loop: Header=BB1_1 Depth=1
	li	a4, 0
	j	.LBB1_1
.LBB1_19:                               # %.preheader2
	addi	s2, sp, 1036
	addi	s3, sp, 2047
	addi	s3, s3, 17
	li	s4, 33
	li	s5, 39
	addi	s6, sp, 2047
	addi	s6, s6, 17
	j	.LBB1_22
.LBB1_20:                               #   in Loop: Header=BB1_22 Depth=1
	add	s7, s6, s7
	lbu	a0, 0(s7)
	addi	a0, a0, 1
	sb	a0, 0(s7)
.LBB1_21:                               #   in Loop: Header=BB1_22 Depth=1
	addi	s2, s2, 4
	beq	s2, s3, .LBB1_25
.LBB1_22:                               # =>This Inner Loop Header: Depth=1
	lw	s7, 0(s2)
	beqz	s7, .LBB1_21
# %bb.23:                               #   in Loop: Header=BB1_22 Depth=1
	blt	s7, s4, .LBB1_20
# %bb.24:                               #   in Loop: Header=BB1_22 Depth=1
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	sw	s5, 40(a0)
	mv	a0, s1
	jalr	a1
	j	.LBB1_20
.LBB1_25:                               # %.preheader1
	li	a0, -1
	slli	a0, a0, 32
	li	a5, 32
	addi	a1, sp, 2047
	addi	a1, a1, 48
	li	a2, 1
	slli	a2, a2, 37
	addi	a3, sp, 2047
	addi	a3, a3, 17
	li	a4, 17
	j	.LBB1_27
.LBB1_26:                               #   in Loop: Header=BB1_27 Depth=1
	add	a2, a2, a0
	addi	a1, a1, -1
	bgeu	a4, a6, .LBB1_32
.LBB1_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_29 Depth 2
                                        #       Child Loop BB1_30 Depth 3
	mv	a6, a5
	add	a7, a3, a5
	lbu	t1, 0(a7)
	addi	a5, a5, -1
	beqz	t1, .LBB1_26
# %bb.28:                               #   in Loop: Header=BB1_27 Depth=1
	add	t0, a3, a5
.LBB1_29:                               #   Parent Loop BB1_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_30 Depth 3
	mv	t2, a1
	mv	t3, a2
.LBB1_30:                               #   Parent Loop BB1_27 Depth=1
                                        #     Parent Loop BB1_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	t4, -1(t2)
	addi	t2, t2, -1
	add	t3, t3, a0
	beqz	t4, .LBB1_30
# %bb.31:                               #   in Loop: Header=BB1_29 Depth=2
	lbu	t4, 0(t0)
	addi	t1, t1, -2
	sb	t1, 0(a7)
	addi	t4, t4, 1
	sb	t4, 0(t0)
	srai	t3, t3, 32
	add	t3, a3, t3
	lbu	t1, 0(t3)
	addi	t1, t1, 2
	sb	t1, 0(t3)
	lbu	t1, 0(t2)
	addi	t1, t1, -1
	sb	t1, 0(t2)
	lbu	t1, 0(a7)
	bnez	t1, .LBB1_29
	j	.LBB1_26
.LBB1_32:                               # %.preheader
	addi	a0, sp, 2047
	addi	a0, a0, 34
.LBB1_33:                               # =>This Inner Loop Header: Depth=1
	lbu	a1, -1(a0)
	addi	a0, a0, -1
	beqz	a1, .LBB1_33
# %bb.34:
	addi	a1, a1, -1
	sb	a1, 0(a0)
	addi	a1, sp, 2047
	addi	a1, a1, 17
	li	a2, 17
	mv	a0, s0
	call	memcpy
	li	a0, 0
	addi	a1, s0, 17
	li	a2, 1
	li	a3, 256
	li	a4, 33
	j	.LBB1_36
.LBB1_35:                               #   in Loop: Header=BB1_36 Depth=1
	addiw	a2, a2, 1
	beq	a2, a4, .LBB1_40
.LBB1_36:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_38 Depth 2
	li	a5, 0
	addi	a6, sp, 1036
	j	.LBB1_38
.LBB1_37:                               #   in Loop: Header=BB1_38 Depth=2
	addi	a5, a5, 1
	addi	a6, a6, 4
	beq	a5, a3, .LBB1_35
.LBB1_38:                               #   Parent Loop BB1_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a7, 0(a6)
	bne	a7, a2, .LBB1_37
# %bb.39:                               #   in Loop: Header=BB1_38 Depth=2
	add	a7, a1, a0
	sb	a5, 0(a7)
	addiw	a0, a0, 1
	j	.LBB1_37
.LBB1_40:
	sw	zero, 276(s0)
	addi	sp, sp, 144
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	ld	s1, 2008(sp)                    # 8-byte Folded Reload
	ld	s2, 2000(sp)                    # 8-byte Folded Reload
	ld	s3, 1992(sp)                    # 8-byte Folded Reload
	ld	s4, 1984(sp)                    # 8-byte Folded Reload
	ld	s5, 1976(sp)                    # 8-byte Folded Reload
	ld	s6, 1968(sp)                    # 8-byte Folded Reload
	ld	s7, 1960(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 2032
	ret
.Lfunc_end1:
	.size	jpeg_gen_optimal_table, .Lfunc_end1-jpeg_gen_optimal_table
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_huff_encoder              # -- Begin function jinit_huff_encoder
	.p2align	2
	.type	jinit_huff_encoder,@function
jinit_huff_encoder:                     # @jinit_huff_encoder
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 192
	mv	a0, s0
	jalr	a3
	sd	a0, 496(s0)
	lui	a3, %hi(start_pass_huff)
	addi	a3, a3, %lo(start_pass_huff)
	addi	a1, a0, 64
	li	a2, 128
	sd	a3, 0(a0)
	mv	a0, a1
	li	a1, 0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	memset
.Lfunc_end2:
	.size	jinit_huff_encoder, .Lfunc_end2-jinit_huff_encoder
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_huff
	.type	start_pass_huff,@function
start_pass_huff:                        # @start_pass_huff
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
	mv	s0, a0
	ld	s2, 496(a0)
	beqz	a1, .LBB3_12
# %bb.1:
	lui	a0, %hi(encode_mcu_gather)
	addi	a0, a0, %lo(encode_mcu_gather)
	sd	a0, 8(s2)
	lui	a0, %hi(finish_pass_gather)
	addi	a0, a0, %lo(finish_pass_gather)
	sd	a0, 16(s2)
	lw	a0, 324(s0)
	blez	a0, .LBB3_15
# %bb.2:
	li	s3, 0
	addi	s4, s0, 328
	addi	s5, s2, 128
	addi	s6, s2, 160
	addi	s7, s2, 36
	li	s8, 4
	li	s9, 50
	lui	a0, 1
	addiw	s1, a0, -2040
	j	.LBB3_4
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	li	a1, 0
	mv	a2, s1
	call	memset
	sw	zero, 0(s7)
	lw	a0, 324(s0)
	addi	s3, s3, 1
	addi	s7, s7, 4
	addi	s4, s4, 8
	bge	s3, a0, .LBB3_15
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s4)
	lw	s11, 20(a0)
	lw	s10, 24(a0)
	bgeu	s11, s8, .LBB3_9
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	bgeu	s10, s8, .LBB3_10
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	slli	s11, s11, 3
	add	s11, s5, s11
	ld	a0, 0(s11)
	beqz	a0, .LBB3_11
.LBB3_7:                                #   in Loop: Header=BB3_4 Depth=1
	li	a1, 0
	mv	a2, s1
	call	memset
	slli	s10, s10, 3
	add	s10, s6, s10
	ld	a0, 0(s10)
	bnez	a0, .LBB3_3
# %bb.8:                                #   in Loop: Header=BB3_4 Depth=1
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a3
	sd	a0, 0(s10)
	j	.LBB3_3
.LBB3_9:                                #   in Loop: Header=BB3_4 Depth=1
	ld	a0, 0(s0)
	sw	s11, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s9, 40(a0)
	mv	a0, s0
	jalr	a1
	bltu	s10, s8, .LBB3_6
.LBB3_10:                               #   in Loop: Header=BB3_4 Depth=1
	ld	a0, 0(s0)
	sw	s10, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s9, 40(a0)
	mv	a0, s0
	jalr	a1
	slli	s11, s11, 3
	add	s11, s5, s11
	ld	a0, 0(s11)
	bnez	a0, .LBB3_7
.LBB3_11:                               #   in Loop: Header=BB3_4 Depth=1
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a3
	sd	a0, 0(s11)
	j	.LBB3_7
.LBB3_12:
	lui	a0, %hi(encode_mcu_huff)
	addi	a0, a0, %lo(encode_mcu_huff)
	sd	a0, 8(s2)
	lui	a0, %hi(finish_pass_huff)
	addi	a0, a0, %lo(finish_pass_huff)
	sd	a0, 16(s2)
	lw	a0, 324(s0)
	blez	a0, .LBB3_15
# %bb.13:
	li	s3, 0
	addi	s4, s0, 328
	addi	s5, s2, 64
	addi	s6, s2, 96
	addi	s7, s2, 36
.LBB3_14:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s4)
	lw	a2, 20(a0)
	lw	s1, 24(a0)
	slli	a3, a2, 3
	add	a3, s5, a3
	li	a1, 1
	mv	a0, s0
	call	jpeg_make_c_derived_tbl
	slli	a3, s1, 3
	add	a3, s6, a3
	mv	a0, s0
	li	a1, 0
	mv	a2, s1
	call	jpeg_make_c_derived_tbl
	sw	zero, 0(s7)
	lw	a0, 324(s0)
	addi	s3, s3, 1
	addi	s7, s7, 4
	addi	s4, s4, 8
	blt	s3, a0, .LBB3_14
.LBB3_15:
	lw	a0, 280(s0)
	sd	zero, 24(s2)
	sw	zero, 32(s2)
	sw	a0, 56(s2)
	sw	zero, 60(s2)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	ld	s11, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end3:
	.size	start_pass_huff, .Lfunc_end3-start_pass_huff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function encode_mcu_gather
	.type	encode_mcu_gather,@function
encode_mcu_gather:                      # @encode_mcu_gather
# %bb.0:
	addi	sp, sp, -176
	sd	ra, 168(sp)                     # 8-byte Folded Spill
	sd	s0, 160(sp)                     # 8-byte Folded Spill
	sd	s1, 152(sp)                     # 8-byte Folded Spill
	sd	s2, 144(sp)                     # 8-byte Folded Spill
	sd	s3, 136(sp)                     # 8-byte Folded Spill
	sd	s4, 128(sp)                     # 8-byte Folded Spill
	sd	s5, 120(sp)                     # 8-byte Folded Spill
	sd	s6, 112(sp)                     # 8-byte Folded Spill
	sd	s7, 104(sp)                     # 8-byte Folded Spill
	sd	s8, 96(sp)                      # 8-byte Folded Spill
	sd	s9, 88(sp)                      # 8-byte Folded Spill
	sd	s10, 80(sp)                     # 8-byte Folded Spill
	sd	s11, 72(sp)                     # 8-byte Folded Spill
	mv	s0, a0
	lw	a2, 280(a0)
	ld	a0, 496(a0)
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	beqz	a2, .LBB4_7
# %bb.1:
	lw	a1, 56(a0)
	bnez	a1, .LBB4_6
# %bb.2:
	lw	a3, 324(s0)
	mv	a1, a2
	blez	a3, .LBB4_6
# %bb.3:
	li	a1, 0
	addi	a2, a0, 36
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a2)
	lw	a3, 324(s0)
	addi	a1, a1, 1
	addi	a2, a2, 4
	blt	a1, a3, .LBB4_4
# %bb.5:
	lw	a1, 280(s0)
.LBB4_6:
	addi	a1, a1, -1
	sw	a1, 56(a0)
.LBB4_7:
	lw	a1, 368(s0)
	blez	a1, .LBB4_29
# %bb.8:
	li	s2, 0
	addi	a1, s0, 372
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	addi	a1, s0, 328
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	addi	a1, a0, 36
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	addi	a1, a0, 128
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	addi	a0, a0, 160
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	s8, %hi(jpeg_natural_order)
	addi	s8, s8, %lo(jpeg_natural_order)
	li	s9, 64
	li	s10, 16
	lui	s11, 524288
	addi	s11, s11, -16
	li	s1, 3
	j	.LBB4_10
.LBB4_9:                                #   in Loop: Header=BB4_10 Depth=1
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	ld	a0, 0(a0)
	lh	a0, 0(a0)
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	sw	a0, 0(a1)
	lw	a0, 368(s0)
	addi	s2, s2, 1
	bge	s2, a0, .LBB4_29
.LBB4_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
                                        #     Child Loop BB4_18 Depth 2
                                        #       Child Loop BB4_23 Depth 3
	slli	a0, s2, 2
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	lw	a0, 0(a0)
	slli	a1, a0, 3
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	slli	a2, s2, 3
	ld	a3, 48(sp)                      # 8-byte Folded Reload
	add	a4, a3, a2
	ld	s7, 0(a4)
	slli	a0, a0, 2
	lw	a2, 20(a1)
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	add	a5, a3, a0
	lw	a0, 0(a5)
	lw	a1, 24(a1)
	slli	a2, a2, 3
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	ld	s5, 0(a2)
	slli	a1, a1, 3
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	add	a2, a2, a1
	lh	a1, 0(s7)
	ld	s4, 0(a2)
	sd	a4, 64(sp)                      # 8-byte Folded Spill
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	bne	a1, a0, .LBB4_12
# %bb.11:                               #   in Loop: Header=BB4_10 Depth=1
	li	s3, 0
	j	.LBB4_16
.LBB4_12:                               #   in Loop: Header=BB4_10 Depth=1
	sub	a1, a1, a0
	sraiw	a0, a1, 31
	xor	a1, a1, a0
	subw	a1, a1, a0
	li	a0, -1
.LBB4_13:                               #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srliw	a1, a1, 1
	addiw	a0, a0, 1
	bnez	a1, .LBB4_13
# %bb.14:                               #   in Loop: Header=BB4_10 Depth=1
	addiw	s3, a0, 1
	li	a1, 11
	bltu	a0, a1, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_10 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 6
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB4_16:                               #   in Loop: Header=BB4_10 Depth=1
	slli	s3, s3, 3
	add	s3, s5, s3
	ld	a0, 0(s3)
	li	a1, 0
	addi	a0, a0, 1
	sd	a0, 0(s3)
	li	s5, 1
	j	.LBB4_18
.LBB4_17:                               #   in Loop: Header=BB4_18 Depth=2
	slli	s6, s6, 4
	addw	a0, s3, s6
	slli	a0, a0, 3
	add	a0, s4, a0
	ld	a2, 0(a0)
	li	a1, 0
	addi	s5, s5, 1
	addi	a2, a2, 1
	sd	a2, 0(a0)
	beq	s5, s9, .LBB4_9
.LBB4_18:                               #   Parent Loop BB4_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_23 Depth 3
	slli	a0, s5, 2
	add	a0, s8, a0
	lw	a0, 0(a0)
	slli	a0, a0, 1
	add	a0, s7, a0
	lhu	a0, 0(a0)
	mv	s6, a1
	beqz	a0, .LBB4_26
# %bb.19:                               #   in Loop: Header=BB4_18 Depth=2
	blt	s6, s10, .LBB4_21
# %bb.20:                               #   in Loop: Header=BB4_18 Depth=2
	ld	a1, 1920(s4)
	addiw	a2, s6, -31
	sltu	a3, s6, a2
	addi	a3, a3, -1
	and	a2, a3, a2
	addi	a2, a2, 15
	srliw	a3, a2, 4
	add	a1, a3, a1
	addi	a1, a1, 1
	and	a2, a2, s11
	subw	s6, s6, a2
	addi	s6, s6, -16
	sd	a1, 1920(s4)
.LBB4_21:                               #   in Loop: Header=BB4_18 Depth=2
	slli	a1, a0, 48
	srai	a1, a1, 63
	xor	a0, a0, a1
	sub	a0, a0, a1
	slli	a0, a0, 48
	srli	a0, a0, 48
	li	s3, 1
	bgeu	s3, a0, .LBB4_17
# %bb.22:                               #   in Loop: Header=BB4_18 Depth=2
	li	a1, 0
.LBB4_23:                               #   Parent Loop BB4_10 Depth=1
                                        #     Parent Loop BB4_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a2, a0
	srliw	a0, a0, 1
	addiw	a1, a1, 1
	bltu	s1, a2, .LBB4_23
# %bb.24:                               #   in Loop: Header=BB4_18 Depth=2
	addi	s3, a1, 1
	li	a0, 10
	bltu	a1, a0, .LBB4_17
# %bb.25:                               #   in Loop: Header=BB4_18 Depth=2
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 6
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB4_17
.LBB4_26:                               #   in Loop: Header=BB4_18 Depth=2
	addi	s5, s5, 1
	addiw	a1, s6, 1
	bne	s5, s9, .LBB4_18
# %bb.27:                               #   in Loop: Header=BB4_10 Depth=1
	bltz	s6, .LBB4_9
# %bb.28:                               #   in Loop: Header=BB4_10 Depth=1
	ld	a0, 0(s4)
	addi	a0, a0, 1
	sd	a0, 0(s4)
	j	.LBB4_9
.LBB4_29:
	li	a0, 1
	ld	ra, 168(sp)                     # 8-byte Folded Reload
	ld	s0, 160(sp)                     # 8-byte Folded Reload
	ld	s1, 152(sp)                     # 8-byte Folded Reload
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	ld	s4, 128(sp)                     # 8-byte Folded Reload
	ld	s5, 120(sp)                     # 8-byte Folded Reload
	ld	s6, 112(sp)                     # 8-byte Folded Reload
	ld	s7, 104(sp)                     # 8-byte Folded Reload
	ld	s8, 96(sp)                      # 8-byte Folded Reload
	ld	s9, 88(sp)                      # 8-byte Folded Reload
	ld	s10, 80(sp)                     # 8-byte Folded Reload
	ld	s11, 72(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 176
	ret
.Lfunc_end4:
	.size	encode_mcu_gather, .Lfunc_end4-encode_mcu_gather
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_pass_gather
	.type	finish_pass_gather,@function
finish_pass_gather:                     # @finish_pass_gather
# %bb.0:
	addi	sp, sp, -144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	sd	s6, 80(sp)                      # 8-byte Folded Spill
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 48(sp)                     # 8-byte Folded Spill
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 496(a0)
	lw	a1, 324(s0)
	sd	zero, 24(sp)
	sd	zero, 32(sp)
	sd	zero, 8(sp)
	sd	zero, 16(sp)
	blez	a1, .LBB5_11
# %bb.1:
	li	s1, 0
	addi	s2, s0, 328
	addi	a1, s0, 128
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	addi	s4, a0, 128
	addi	s5, s0, 160
	addi	s6, a0, 160
	addi	s7, sp, 24
	li	s8, 1
	addi	s9, sp, 8
	j	.LBB5_4
.LBB5_2:                                #   in Loop: Header=BB5_4 Depth=1
	add	s10, s6, s10
	ld	a2, 0(s10)
	mv	a0, s0
	call	jpeg_gen_optimal_table
	sw	s8, 0(s11)
.LBB5_3:                                #   in Loop: Header=BB5_4 Depth=1
	lw	a0, 324(s0)
	addi	s1, s1, 1
	addi	s2, s2, 8
	bge	s1, a0, .LBB5_11
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s2)
	lw	s3, 20(a0)
	slli	s11, s3, 2
	add	s11, s7, s11
	lw	a1, 0(s11)
	lw	s10, 24(a0)
	beqz	a1, .LBB5_6
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	slli	s11, s10, 2
	add	s11, s9, s11
	lw	a0, 0(s11)
	bnez	a0, .LBB5_3
	j	.LBB5_9
.LBB5_6:                                #   in Loop: Header=BB5_4 Depth=1
	slli	s3, s3, 3
	ld	s8, 0(sp)                       # 8-byte Folded Reload
	add	s8, s8, s3
	ld	a1, 0(s8)
	bnez	a1, .LBB5_8
# %bb.7:                                #   in Loop: Header=BB5_4 Depth=1
	mv	a0, s0
	call	jpeg_alloc_huff_table
	mv	a1, a0
	sd	a0, 0(s8)
.LBB5_8:                                #   in Loop: Header=BB5_4 Depth=1
	add	s3, s4, s3
	ld	a2, 0(s3)
	mv	a0, s0
	call	jpeg_gen_optimal_table
	li	s8, 1
	sw	s8, 0(s11)
	slli	s11, s10, 2
	add	s11, s9, s11
	lw	a0, 0(s11)
	bnez	a0, .LBB5_3
.LBB5_9:                                #   in Loop: Header=BB5_4 Depth=1
	slli	s10, s10, 3
	add	s3, s5, s10
	ld	a1, 0(s3)
	bnez	a1, .LBB5_2
# %bb.10:                               #   in Loop: Header=BB5_4 Depth=1
	mv	a0, s0
	call	jpeg_alloc_huff_table
	mv	a1, a0
	sd	a0, 0(s3)
	j	.LBB5_2
.LBB5_11:
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	ld	s10, 48(sp)                     # 8-byte Folded Reload
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.Lfunc_end5:
	.size	finish_pass_gather, .Lfunc_end5-finish_pass_gather
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function encode_mcu_huff
	.type	encode_mcu_huff,@function
encode_mcu_huff:                        # @encode_mcu_huff
# %bb.0:
	addi	sp, sp, -272
	sd	ra, 264(sp)                     # 8-byte Folded Spill
	sd	s0, 256(sp)                     # 8-byte Folded Spill
	sd	s1, 248(sp)                     # 8-byte Folded Spill
	sd	s2, 240(sp)                     # 8-byte Folded Spill
	sd	s3, 232(sp)                     # 8-byte Folded Spill
	sd	s4, 224(sp)                     # 8-byte Folded Spill
	sd	s5, 216(sp)                     # 8-byte Folded Spill
	sd	s6, 208(sp)                     # 8-byte Folded Spill
	sd	s7, 200(sp)                     # 8-byte Folded Spill
	sd	s8, 192(sp)                     # 8-byte Folded Spill
	sd	s9, 184(sp)                     # 8-byte Folded Spill
	sd	s10, 176(sp)                    # 8-byte Folded Spill
	sd	s11, 168(sp)                    # 8-byte Folded Spill
	mv	s7, a0
	ld	s5, 496(a0)
	ld	a2, 40(a0)
	ld	a3, 48(s5)
	ld	a0, 0(a2)
	ld	s6, 8(a2)
	sd	a3, 152(sp)
	ld	a2, 40(s5)
	sd	a2, 144(sp)
	ld	a2, 32(s5)
	mv	s8, a1
	sd	a2, 136(sp)
	ld	a1, 24(s5)
	lw	a2, 280(s7)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
	sd	a1, 128(sp)
	sd	s7, 160(sp)
	beqz	a2, .LBB6_2
# %bb.1:
	lw	a1, 56(s5)
	beqz	a1, .LBB6_95
.LBB6_2:
	lw	a0, 368(s7)
	blez	a0, .LBB6_90
# %bb.3:
	li	a2, 0
	addi	a3, s7, 372
	addi	a4, s7, 328
	addi	a5, sp, 140
	addi	a6, s5, 64
	addi	a7, s5, 96
	lui	s9, 4080
	li	s4, 15
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	a3, 56(sp)                      # 8-byte Folded Spill
	sd	a4, 48(sp)                      # 8-byte Folded Spill
	sd	a6, 40(sp)                      # 8-byte Folded Spill
	sd	a7, 32(sp)                      # 8-byte Folded Spill
.LBB6_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #     Child Loop BB6_63 Depth 2
                                        #     Child Loop BB6_71 Depth 2
                                        #     Child Loop BB6_17 Depth 2
                                        #       Child Loop BB6_18 Depth 3
                                        #       Child Loop BB6_39 Depth 3
                                        #         Child Loop BB6_44 Depth 4
                                        #       Child Loop BB6_23 Depth 3
                                        #       Child Loop BB6_31 Depth 3
                                        #       Child Loop BB6_55 Depth 3
                                        #     Child Loop BB6_83 Depth 2
	slli	a0, a2, 2
	add	a0, a3, a0
	lw	a0, 0(a0)
	slli	a1, a0, 3
	add	a1, a4, a1
	ld	a1, 0(a1)
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	slli	a2, a2, 3
	add	a2, s8, a2
	sd	a2, 88(sp)                      # 8-byte Folded Spill
	ld	s10, 0(a2)
	slli	a0, a0, 2
	lw	a2, 20(a1)
	add	a0, a5, a0
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	lw	a0, 0(a0)
	lw	a1, 24(a1)
	slli	a2, a2, 3
	add	a2, a6, a2
	ld	s0, 0(a2)
	slli	a1, a1, 3
	lh	a2, 0(s10)
	add	a1, a7, a1
	ld	a1, 0(a1)
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	subw	s1, a2, a0
	sraiw	s2, s1, 31
	bne	a2, a0, .LBB6_6
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=1
	li	s11, 0
	j	.LBB6_10
.LBB6_6:                                #   in Loop: Header=BB6_4 Depth=1
	xor	a0, s1, s2
	subw	a1, a0, s2
	li	a0, -1
.LBB6_7:                                #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srliw	a1, a1, 1
	addiw	a0, a0, 1
	bnez	a1, .LBB6_7
# %bb.8:                                #   in Loop: Header=BB6_4 Depth=1
	addiw	s11, a0, 1
	li	a1, 11
	bltu	a0, a1, .LBB6_10
# %bb.9:                                #   in Loop: Header=BB6_4 Depth=1
	ld	a0, 160(sp)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 6
	sw	a3, 40(a1)
	jalr	a2
.LBB6_10:                               #   in Loop: Header=BB6_4 Depth=1
	slli	a0, s11, 2
	add	a0, s0, a0
	lwu	s8, 0(a0)
	add	s0, s0, s11
	lbu	s0, 1024(s0)
	lw	s7, 136(sp)
	bnez	s0, .LBB6_12
# %bb.11:                               #   in Loop: Header=BB6_4 Depth=1
	ld	a0, 160(sp)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 40
	sw	a3, 40(a1)
	jalr	a2
.LBB6_12:                               #   in Loop: Header=BB6_4 Depth=1
	li	a0, -1
	sll	a0, a0, s0
	not	a0, a0
	and	a0, a0, s8
	ld	a1, 128(sp)
	addw	s8, s7, s0
	li	a2, 24
	subw	a2, a2, s8
	sll	a0, a0, a2
	or	s7, a1, a0
	li	a0, 8
	bge	s8, a0, .LBB6_63
.LBB6_13:                               #   in Loop: Header=BB6_4 Depth=1
	sd	s7, 128(sp)
	sw	s8, 136(sp)
	beqz	s11, .LBB6_16
# %bb.14:                               #   in Loop: Header=BB6_4 Depth=1
	add	s1, s2, s1
	li	a0, -1
	sll	a0, a0, s11
	not	a0, a0
	and	a0, s1, a0
	slli	a0, a0, 32
	srli	a0, a0, 32
	addw	s8, s8, s11
	li	a1, 24
	subw	a1, a1, s8
	sll	a0, a0, a1
	or	s7, a0, s7
	li	a0, 8
	bge	s8, a0, .LBB6_71
.LBB6_15:                               #   in Loop: Header=BB6_4 Depth=1
	sd	s7, 128(sp)
	sw	s8, 136(sp)
.LBB6_16:                               #   in Loop: Header=BB6_4 Depth=1
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 1024
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	li	a0, 1
	li	a2, -65
.LBB6_17:                               #   Parent Loop BB6_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_18 Depth 3
                                        #       Child Loop BB6_39 Depth 3
                                        #         Child Loop BB6_44 Depth 4
                                        #       Child Loop BB6_23 Depth 3
                                        #       Child Loop BB6_31 Depth 3
                                        #       Child Loop BB6_55 Depth 3
	li	s11, 0
	not	s1, a0
	slli	a0, a0, 2
	lui	a1, %hi(jpeg_natural_order)
	addi	a1, a1, %lo(jpeg_natural_order)
	add	a0, a1, a0
.LBB6_18:                               #   Parent Loop BB6_4 Depth=1
                                        #     Parent Loop BB6_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a1, 0(a0)
	slli	a1, a1, 1
	add	a1, s10, a1
	lhu	s2, 0(a1)
	bnez	s2, .LBB6_20
# %bb.19:                               #   in Loop: Header=BB6_18 Depth=3
	addiw	s11, s11, 1
	addi	s1, s1, -1
	addi	a0, a0, 4
	bne	s1, a2, .LBB6_18
	j	.LBB6_77
.LBB6_20:                               #   in Loop: Header=BB6_17 Depth=2
	sd	s5, 16(sp)                      # 8-byte Folded Spill
	li	a0, 16
	bgeu	s11, a0, .LBB6_39
.LBB6_21:                               #   in Loop: Header=BB6_17 Depth=2
	slli	s2, s2, 48
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	srai	s2, s2, 48
	sraiw	a0, s2, 31
	xor	a1, s2, a0
	subw	a0, a1, a0
	li	s0, 1
	bgeu	s0, a0, .LBB6_26
# %bb.22:                               # %.preheader8
                                        #   in Loop: Header=BB6_17 Depth=2
	li	a1, 0
	li	a3, 3
.LBB6_23:                               #   Parent Loop BB6_4 Depth=1
                                        #     Parent Loop BB6_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a2, a0
	srliw	a0, a0, 1
	addiw	a1, a1, 1
	bltu	a3, a2, .LBB6_23
# %bb.24:                               #   in Loop: Header=BB6_17 Depth=2
	addi	s0, a1, 1
	li	a0, 10
	bltu	a1, a0, .LBB6_26
# %bb.25:                               #   in Loop: Header=BB6_17 Depth=2
	ld	a0, 160(sp)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 6
	sw	a3, 40(a1)
	jalr	a2
.LBB6_26:                               #   in Loop: Header=BB6_17 Depth=2
	slli	s11, s11, 4
	addw	a0, s0, s11
	slli	a1, a0, 2
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	add	a0, a2, a0
	lbu	s5, 0(a0)
	lwu	s3, 0(a1)
	bnez	s5, .LBB6_28
# %bb.27:                               #   in Loop: Header=BB6_17 Depth=2
	ld	a0, 160(sp)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 40
	sw	a3, 40(a1)
	jalr	a2
.LBB6_28:                               #   in Loop: Header=BB6_17 Depth=2
	li	a0, -1
	sll	a0, a0, s5
	not	a0, a0
	and	a1, a0, s3
	addw	a0, s8, s5
	li	a2, 24
	subw	a2, a2, a0
	sll	a1, a1, a2
	or	s7, s7, a1
	li	a1, 8
	blt	a0, a1, .LBB6_50
# %bb.29:                               # %.preheader5
                                        #   in Loop: Header=BB6_17 Depth=2
	ld	s5, 16(sp)                      # 8-byte Folded Reload
	j	.LBB6_31
.LBB6_30:                               #   in Loop: Header=BB6_31 Depth=3
	slli	s7, s7, 8
	addiw	a0, s8, -8
	bge	s4, s8, .LBB6_51
.LBB6_31:                               #   Parent Loop BB6_4 Depth=1
                                        #     Parent Loop BB6_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, 112(sp)
	srli	a2, s7, 16
	addi	a3, a1, 1
	sd	a3, 112(sp)
	sb	a2, 0(a1)
	ld	s6, 120(sp)
	mv	s8, a0
	addi	s6, s6, -1
	sd	s6, 120(sp)
	beqz	s6, .LBB6_33
# %bb.32:                               #   in Loop: Header=BB6_31 Depth=3
	and	a0, s7, s9
	bne	a0, s9, .LBB6_30
	j	.LBB6_35
.LBB6_33:                               #   in Loop: Header=BB6_31 Depth=3
	ld	a0, 160(sp)
	ld	s3, 40(a0)
	ld	a1, 24(s3)
	jalr	a1
	beqz	a0, .LBB6_94
# %bb.34:                               #   in Loop: Header=BB6_31 Depth=3
	ld	a0, 0(s3)
	ld	s6, 8(s3)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
	and	a0, s7, s9
	bne	a0, s9, .LBB6_30
.LBB6_35:                               #   in Loop: Header=BB6_31 Depth=3
	ld	a0, 112(sp)
	addi	a1, a0, 1
	sd	a1, 112(sp)
	sb	zero, 0(a0)
	ld	s6, 120(sp)
	addi	s6, s6, -1
	sd	s6, 120(sp)
	bnez	s6, .LBB6_30
# %bb.36:                               #   in Loop: Header=BB6_31 Depth=3
	ld	a0, 160(sp)
	ld	s3, 40(a0)
	ld	a1, 24(s3)
	jalr	a1
	beqz	a0, .LBB6_94
# %bb.37:                               #   in Loop: Header=BB6_31 Depth=3
	ld	a0, 0(s3)
	ld	s6, 8(s3)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
	j	.LBB6_30
.LBB6_38:                               #   in Loop: Header=BB6_39 Depth=3
	sd	s7, 128(sp)
	sw	s8, 136(sp)
	addiw	s11, s0, -16
	li	a0, 31
	bge	a0, s0, .LBB6_21
.LBB6_39:                               #   Parent Loop BB6_4 Depth=1
                                        #     Parent Loop BB6_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_44 Depth 4
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	lbu	s5, 1264(a0)
	lwu	s3, 960(a0)
	mv	s0, s11
	bnez	s5, .LBB6_41
# %bb.40:                               #   in Loop: Header=BB6_39 Depth=3
	ld	a0, 160(sp)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 40
	sw	a3, 40(a1)
	jalr	a2
.LBB6_41:                               #   in Loop: Header=BB6_39 Depth=3
	li	a0, -1
	sll	a0, a0, s5
	not	a0, a0
	and	a0, a0, s3
	addw	s8, s8, s5
	li	a1, 24
	subw	a1, a1, s8
	sll	a0, a0, a1
	or	s7, s7, a0
	li	a0, 8
	bge	s8, a0, .LBB6_44
	j	.LBB6_38
.LBB6_42:                               #   in Loop: Header=BB6_44 Depth=4
	ld	a0, 0(s3)
	ld	s6, 8(s3)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
.LBB6_43:                               #   in Loop: Header=BB6_44 Depth=4
	slli	s7, s7, 8
	addiw	s8, s11, -8
	bgeu	s4, s11, .LBB6_38
.LBB6_44:                               #   Parent Loop BB6_4 Depth=1
                                        #     Parent Loop BB6_17 Depth=2
                                        #       Parent Loop BB6_39 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld	a0, 112(sp)
	srli	a1, s7, 16
	addi	a2, a0, 1
	sd	a2, 112(sp)
	sb	a1, 0(a0)
	ld	s6, 120(sp)
	mv	s11, s8
	addi	s6, s6, -1
	sd	s6, 120(sp)
	beqz	s6, .LBB6_46
# %bb.45:                               #   in Loop: Header=BB6_44 Depth=4
	and	a0, s7, s9
	bne	a0, s9, .LBB6_43
	j	.LBB6_48
.LBB6_46:                               #   in Loop: Header=BB6_44 Depth=4
	ld	a0, 160(sp)
	ld	s3, 40(a0)
	ld	a1, 24(s3)
	jalr	a1
	beqz	a0, .LBB6_94
# %bb.47:                               #   in Loop: Header=BB6_44 Depth=4
	ld	a0, 0(s3)
	ld	s6, 8(s3)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
	and	a0, s7, s9
	bne	a0, s9, .LBB6_43
.LBB6_48:                               #   in Loop: Header=BB6_44 Depth=4
	ld	a0, 112(sp)
	addi	a1, a0, 1
	sd	a1, 112(sp)
	sb	zero, 0(a0)
	ld	s6, 120(sp)
	addi	s6, s6, -1
	sd	s6, 120(sp)
	bnez	s6, .LBB6_43
# %bb.49:                               #   in Loop: Header=BB6_44 Depth=4
	ld	a0, 160(sp)
	ld	s3, 40(a0)
	ld	a1, 24(s3)
	jalr	a1
	bnez	a0, .LBB6_42
	j	.LBB6_94
.LBB6_50:                               #   in Loop: Header=BB6_17 Depth=2
	ld	s5, 16(sp)                      # 8-byte Folded Reload
.LBB6_51:                               #   in Loop: Header=BB6_17 Depth=2
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	srai	a1, a1, 63
	add	a1, a1, s2
	li	a2, -1
	sll	a2, a2, s0
	not	a2, a2
	and	a1, a1, a2
	slli	a1, a1, 32
	srli	a1, a1, 32
	addw	s8, a0, s0
	li	a0, 24
	subw	a0, a0, s8
	sll	a0, a1, a0
	or	s7, a0, s7
	li	a0, 8
	bge	s8, a0, .LBB6_55
.LBB6_52:                               #   in Loop: Header=BB6_17 Depth=2
	sd	s7, 128(sp)
	sw	s8, 136(sp)
	neg	a0, s1
	li	a2, -65
	li	a1, -64
	bne	s1, a1, .LBB6_17
	j	.LBB6_81
.LBB6_53:                               #   in Loop: Header=BB6_55 Depth=3
	ld	a0, 0(s2)
	ld	s6, 8(s2)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
.LBB6_54:                               #   in Loop: Header=BB6_55 Depth=3
	slli	s7, s7, 8
	addiw	s8, s0, -8
	bge	s4, s0, .LBB6_52
.LBB6_55:                               #   Parent Loop BB6_4 Depth=1
                                        #     Parent Loop BB6_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 112(sp)
	srli	a1, s7, 16
	addi	a2, a0, 1
	sd	a2, 112(sp)
	sb	a1, 0(a0)
	ld	s6, 120(sp)
	mv	s0, s8
	addi	s6, s6, -1
	sd	s6, 120(sp)
	beqz	s6, .LBB6_57
# %bb.56:                               #   in Loop: Header=BB6_55 Depth=3
	and	a0, s7, s9
	bne	a0, s9, .LBB6_54
	j	.LBB6_59
.LBB6_57:                               #   in Loop: Header=BB6_55 Depth=3
	ld	a0, 160(sp)
	ld	s2, 40(a0)
	ld	a1, 24(s2)
	jalr	a1
	beqz	a0, .LBB6_94
# %bb.58:                               #   in Loop: Header=BB6_55 Depth=3
	ld	a0, 0(s2)
	ld	s6, 8(s2)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
	and	a0, s7, s9
	bne	a0, s9, .LBB6_54
.LBB6_59:                               #   in Loop: Header=BB6_55 Depth=3
	ld	a0, 112(sp)
	addi	a1, a0, 1
	sd	a1, 112(sp)
	sb	zero, 0(a0)
	ld	s6, 120(sp)
	addi	s6, s6, -1
	sd	s6, 120(sp)
	bnez	s6, .LBB6_54
# %bb.60:                               #   in Loop: Header=BB6_55 Depth=3
	ld	a0, 160(sp)
	ld	s2, 40(a0)
	ld	a1, 24(s2)
	jalr	a1
	bnez	a0, .LBB6_53
	j	.LBB6_94
.LBB6_61:                               #   in Loop: Header=BB6_63 Depth=2
	ld	a0, 0(s3)
	ld	s6, 8(s3)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
.LBB6_62:                               #   in Loop: Header=BB6_63 Depth=2
	slli	s7, s7, 8
	addiw	s8, s0, -8
	bge	s4, s0, .LBB6_13
.LBB6_63:                               #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 112(sp)
	srli	a1, s7, 16
	addi	a2, a0, 1
	sd	a2, 112(sp)
	sb	a1, 0(a0)
	ld	s6, 120(sp)
	mv	s0, s8
	addi	s6, s6, -1
	sd	s6, 120(sp)
	beqz	s6, .LBB6_65
# %bb.64:                               #   in Loop: Header=BB6_63 Depth=2
	and	a0, s7, s9
	bne	a0, s9, .LBB6_62
	j	.LBB6_67
.LBB6_65:                               #   in Loop: Header=BB6_63 Depth=2
	ld	a0, 160(sp)
	ld	s3, 40(a0)
	ld	a1, 24(s3)
	jalr	a1
	beqz	a0, .LBB6_94
# %bb.66:                               #   in Loop: Header=BB6_63 Depth=2
	ld	a0, 0(s3)
	ld	s6, 8(s3)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
	and	a0, s7, s9
	bne	a0, s9, .LBB6_62
.LBB6_67:                               #   in Loop: Header=BB6_63 Depth=2
	ld	a0, 112(sp)
	addi	a1, a0, 1
	sd	a1, 112(sp)
	sb	zero, 0(a0)
	ld	s6, 120(sp)
	addi	s6, s6, -1
	sd	s6, 120(sp)
	bnez	s6, .LBB6_62
# %bb.68:                               #   in Loop: Header=BB6_63 Depth=2
	ld	a0, 160(sp)
	ld	s3, 40(a0)
	ld	a1, 24(s3)
	jalr	a1
	bnez	a0, .LBB6_61
	j	.LBB6_94
.LBB6_69:                               #   in Loop: Header=BB6_71 Depth=2
	ld	a0, 0(s1)
	ld	s6, 8(s1)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
.LBB6_70:                               #   in Loop: Header=BB6_71 Depth=2
	slli	s7, s7, 8
	addiw	s8, s0, -8
	bge	s4, s0, .LBB6_15
.LBB6_71:                               #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 112(sp)
	srli	a1, s7, 16
	addi	a2, a0, 1
	sd	a2, 112(sp)
	sb	a1, 0(a0)
	ld	s6, 120(sp)
	mv	s0, s8
	addi	s6, s6, -1
	sd	s6, 120(sp)
	beqz	s6, .LBB6_73
# %bb.72:                               #   in Loop: Header=BB6_71 Depth=2
	and	a0, s7, s9
	bne	a0, s9, .LBB6_70
	j	.LBB6_75
.LBB6_73:                               #   in Loop: Header=BB6_71 Depth=2
	ld	a0, 160(sp)
	ld	s1, 40(a0)
	ld	a1, 24(s1)
	jalr	a1
	beqz	a0, .LBB6_94
# %bb.74:                               #   in Loop: Header=BB6_71 Depth=2
	ld	a0, 0(s1)
	ld	s6, 8(s1)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
	and	a0, s7, s9
	bne	a0, s9, .LBB6_70
.LBB6_75:                               #   in Loop: Header=BB6_71 Depth=2
	ld	a0, 112(sp)
	addi	a1, a0, 1
	sd	a1, 112(sp)
	sb	zero, 0(a0)
	ld	s6, 120(sp)
	addi	s6, s6, -1
	sd	s6, 120(sp)
	bnez	s6, .LBB6_70
# %bb.76:                               #   in Loop: Header=BB6_71 Depth=2
	ld	a0, 160(sp)
	ld	s1, 40(a0)
	ld	a1, 24(s1)
	jalr	a1
	bnez	a0, .LBB6_69
	j	.LBB6_94
.LBB6_77:                               #   in Loop: Header=BB6_4 Depth=1
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	lbu	s0, 1024(a0)
	lwu	s1, 0(a0)
	bnez	s0, .LBB6_79
# %bb.78:                               #   in Loop: Header=BB6_4 Depth=1
	ld	a0, 160(sp)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 40
	sw	a3, 40(a1)
	jalr	a2
.LBB6_79:                               #   in Loop: Header=BB6_4 Depth=1
	li	a0, -1
	sll	a0, a0, s0
	not	a0, a0
	and	s1, a0, s1
	addw	a0, s8, s0
	li	a1, 24
	subw	a1, a1, a0
	sll	a1, s1, a1
	or	s0, s7, a1
	li	a1, 8
	bge	a0, a1, .LBB6_83
.LBB6_80:                               #   in Loop: Header=BB6_4 Depth=1
	sd	s0, 128(sp)
	sw	a0, 136(sp)
.LBB6_81:                               #   in Loop: Header=BB6_4 Depth=1
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	ld	a0, 0(a0)
	lh	a0, 0(a0)
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	lw	a1, 368(s7)
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	addi	a2, a2, 1
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	sw	a0, 0(a3)
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	addi	a5, sp, 140
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	ld	a7, 32(sp)                      # 8-byte Folded Reload
	blt	a2, a1, .LBB6_4
	j	.LBB6_90
.LBB6_82:                               #   in Loop: Header=BB6_83 Depth=2
	slli	s0, s0, 8
	addiw	a0, s1, -8
	bge	s4, s1, .LBB6_80
.LBB6_83:                               #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, 112(sp)
	srli	a2, s0, 16
	addi	a3, a1, 1
	sd	a3, 112(sp)
	sb	a2, 0(a1)
	ld	s6, 120(sp)
	mv	s1, a0
	addi	s6, s6, -1
	sd	s6, 120(sp)
	beqz	s6, .LBB6_85
# %bb.84:                               #   in Loop: Header=BB6_83 Depth=2
	and	a0, s0, s9
	bne	a0, s9, .LBB6_82
	j	.LBB6_87
.LBB6_85:                               #   in Loop: Header=BB6_83 Depth=2
	ld	a0, 160(sp)
	ld	s2, 40(a0)
	ld	a1, 24(s2)
	jalr	a1
	beqz	a0, .LBB6_94
# %bb.86:                               #   in Loop: Header=BB6_83 Depth=2
	ld	a0, 0(s2)
	ld	s6, 8(s2)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
	and	a0, s0, s9
	bne	a0, s9, .LBB6_82
.LBB6_87:                               #   in Loop: Header=BB6_83 Depth=2
	ld	a0, 112(sp)
	addi	a1, a0, 1
	sd	a1, 112(sp)
	sb	zero, 0(a0)
	ld	s6, 120(sp)
	addi	s6, s6, -1
	sd	s6, 120(sp)
	bnez	s6, .LBB6_82
# %bb.88:                               #   in Loop: Header=BB6_83 Depth=2
	ld	a0, 160(sp)
	ld	s2, 40(a0)
	ld	a1, 24(s2)
	jalr	a1
	beqz	a0, .LBB6_94
# %bb.89:                               #   in Loop: Header=BB6_83 Depth=2
	ld	a0, 0(s2)
	ld	s6, 8(s2)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
	j	.LBB6_82
.LBB6_90:
	ld	a0, 112(sp)
	ld	a1, 40(s7)
	addi	a2, sp, 128
	sd	a0, 0(a1)
	sd	s6, 8(a1)
	ld	a0, 24(a2)
	ld	a1, 16(a2)
	ld	a3, 8(a2)
	ld	a2, 0(a2)
	sd	a0, 48(s5)
	sd	a1, 40(s5)
	sd	a3, 32(s5)
	sd	a2, 24(s5)
	lw	a1, 280(s7)
	li	a0, 1
	beqz	a1, .LBB6_94
# %bb.91:
	lw	a2, 56(s5)
	bnez	a2, .LBB6_93
# %bb.92:
	lw	a2, 60(s5)
	addi	a2, a2, 1
	andi	a2, a2, 7
	sw	a2, 60(s5)
	mv	a2, a1
.LBB6_93:
	addi	a2, a2, -1
	sw	a2, 56(s5)
.LBB6_94:
	ld	ra, 264(sp)                     # 8-byte Folded Reload
	ld	s0, 256(sp)                     # 8-byte Folded Reload
	ld	s1, 248(sp)                     # 8-byte Folded Reload
	ld	s2, 240(sp)                     # 8-byte Folded Reload
	ld	s3, 232(sp)                     # 8-byte Folded Reload
	ld	s4, 224(sp)                     # 8-byte Folded Reload
	ld	s5, 216(sp)                     # 8-byte Folded Reload
	ld	s6, 208(sp)                     # 8-byte Folded Reload
	ld	s7, 200(sp)                     # 8-byte Folded Reload
	ld	s8, 192(sp)                     # 8-byte Folded Reload
	ld	s9, 184(sp)                     # 8-byte Folded Reload
	ld	s10, 176(sp)                    # 8-byte Folded Reload
	ld	s11, 168(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 272
	ret
.LBB6_95:
	lw	s2, 136(sp)
	lw	s1, 60(s5)
	blez	s2, .LBB6_106
# %bb.96:
	mv	s6, s5
	li	a0, 17
	ld	a1, 128(sp)
	subw	a0, a0, s2
	li	a2, 127
	sll	s0, a2, a0
	or	s0, a1, s0
	addi	s2, s2, 15
	lui	s4, 4080
	li	s5, 15
	j	.LBB6_99
.LBB6_97:                               #   in Loop: Header=BB6_99 Depth=1
	ld	a0, 0(s3)
	ld	a1, 8(s3)
	sd	a0, 112(sp)
	sd	a1, 120(sp)
.LBB6_98:                               #   in Loop: Header=BB6_99 Depth=1
	addiw	s2, s2, -8
	slli	s0, s0, 8
	bge	s5, s2, .LBB6_105
.LBB6_99:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 112(sp)
	srli	a1, s0, 16
	addi	a2, a0, 1
	sd	a2, 112(sp)
	sb	a1, 0(a0)
	ld	a0, 120(sp)
	addi	a0, a0, -1
	sd	a0, 120(sp)
	beqz	a0, .LBB6_101
# %bb.100:                              #   in Loop: Header=BB6_99 Depth=1
	and	a0, s0, s4
	bne	a0, s4, .LBB6_98
	j	.LBB6_103
.LBB6_101:                              #   in Loop: Header=BB6_99 Depth=1
	ld	a0, 160(sp)
	ld	s3, 40(a0)
	ld	a1, 24(s3)
	jalr	a1
	beqz	a0, .LBB6_94
# %bb.102:                              #   in Loop: Header=BB6_99 Depth=1
	ld	a0, 0(s3)
	ld	a1, 8(s3)
	sd	a0, 112(sp)
	sd	a1, 120(sp)
	and	a0, s0, s4
	bne	a0, s4, .LBB6_98
.LBB6_103:                              #   in Loop: Header=BB6_99 Depth=1
	ld	a0, 112(sp)
	addi	a1, a0, 1
	sd	a1, 112(sp)
	sb	zero, 0(a0)
	ld	a0, 120(sp)
	addi	a0, a0, -1
	sd	a0, 120(sp)
	bnez	a0, .LBB6_98
# %bb.104:                              #   in Loop: Header=BB6_99 Depth=1
	ld	a0, 160(sp)
	ld	s3, 40(a0)
	ld	a1, 24(s3)
	jalr	a1
	bnez	a0, .LBB6_97
	j	.LBB6_94
.LBB6_105:
	ld	a0, 112(sp)
	mv	s5, s6
.LBB6_106:
	sd	zero, 128(sp)
	sw	zero, 136(sp)
	addi	a1, a0, 1
	sd	a1, 112(sp)
	li	a1, -1
	sb	a1, 0(a0)
	ld	a0, 120(sp)
	addi	a0, a0, -1
	sd	a0, 120(sp)
	beqz	a0, .LBB6_108
# %bb.107:
	ld	a0, 112(sp)
	j	.LBB6_110
.LBB6_108:
	ld	a0, 160(sp)
	ld	s0, 40(a0)
	ld	a1, 24(s0)
	jalr	a1
	beqz	a0, .LBB6_94
# %bb.109:
	ld	a1, 8(s0)
	ld	a0, 0(s0)
	sd	a1, 120(sp)
.LBB6_110:
	addi	a1, s1, -48
	addi	a2, a0, 1
	sd	a2, 112(sp)
	sb	a1, 0(a0)
	ld	s6, 120(sp)
	ld	s2, 160(sp)
	addi	s6, s6, -1
	sd	s6, 120(sp)
	bnez	s6, .LBB6_113
# %bb.111:
	ld	s0, 40(s2)
	ld	a1, 24(s0)
	mv	a0, s2
	jalr	a1
	beqz	a0, .LBB6_94
# %bb.112:
	ld	a0, 0(s0)
	ld	s6, 8(s0)
	sd	a0, 112(sp)
	sd	s6, 120(sp)
.LBB6_113:
	lw	a0, 324(s2)
	blez	a0, .LBB6_2
# %bb.114:
	li	a0, 0
	addi	a1, sp, 140
.LBB6_115:                              # =>This Inner Loop Header: Depth=1
	sw	zero, 0(a1)
	lw	a2, 324(s2)
	addi	a0, a0, 1
	addi	a1, a1, 4
	blt	a0, a2, .LBB6_115
	j	.LBB6_2
.Lfunc_end6:
	.size	encode_mcu_huff, .Lfunc_end6-encode_mcu_huff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_pass_huff
	.type	finish_pass_huff,@function
finish_pass_huff:                       # @finish_pass_huff
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 40(a0)
	ld	s1, 496(s0)
	ld	a1, 0(a0)
	ld	a0, 8(a0)
	lw	a2, 52(s1)
	ld	s2, 24(s1)
	lwu	a3, 40(s1)
	lw	s3, 32(s1)
	sw	a2, 16(sp)
	lwu	a2, 36(s1)
	slli	a3, a3, 32
	lwu	a4, 48(s1)
	lwu	a5, 44(s1)
	or	a2, a3, a2
	sd	a2, 0(sp)
	slli	a4, a4, 32
	or	a4, a4, a5
	sd	a4, 8(sp)
	blez	s3, .LBB7_11
# %bb.1:
	li	a2, 17
	subw	a2, a2, s3
	li	a3, 127
	sll	a2, a3, a2
	or	s4, a2, s2
	addi	s5, s3, 15
	lui	s6, 4080
	li	s7, 15
	j	.LBB7_4
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	mv	a1, s8
.LBB7_3:                                #   in Loop: Header=BB7_4 Depth=1
	addiw	s5, s5, -8
	slli	s4, s4, 8
	bge	s7, s5, .LBB7_11
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	srli	a2, s4, 16
	addi	s8, a1, 1
	addi	a0, a0, -1
	sb	a2, 0(a1)
	beqz	a0, .LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	mv	a1, s8
	and	a2, s4, s6
	bne	a2, s6, .LBB7_3
	j	.LBB7_8
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=1
	ld	s9, 40(s0)
	ld	a1, 24(s9)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB7_12
# %bb.7:                                #   in Loop: Header=BB7_4 Depth=1
	ld	a1, 0(s9)
	ld	a0, 8(s9)
	and	a2, s4, s6
	bne	a2, s6, .LBB7_3
.LBB7_8:                                #   in Loop: Header=BB7_4 Depth=1
	addi	s8, a1, 1
	addi	a0, a0, -1
	sb	zero, 0(a1)
	bnez	a0, .LBB7_2
# %bb.9:                                #   in Loop: Header=BB7_4 Depth=1
	ld	s9, 40(s0)
	ld	a1, 24(s9)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB7_12
# %bb.10:                               #   in Loop: Header=BB7_4 Depth=1
	ld	a1, 0(s9)
	ld	a0, 8(s9)
	j	.LBB7_3
.LBB7_11:
	li	s2, 0
	li	s3, 0
	j	.LBB7_13
.LBB7_12:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	li	a0, 0
	mv	a1, s8
.LBB7_13:
	ld	a2, 40(s0)
	sd	a1, 0(a2)
	lw	a1, 0(sp)
	sd	a0, 8(a2)
	sd	s2, 24(s1)
	sw	s3, 32(s1)
	sw	a1, 36(s1)
	lw	a0, 4(sp)
	lw	a1, 8(sp)
	lw	a2, 12(sp)
	lw	a3, 16(sp)
	sw	a0, 40(s1)
	sw	a1, 44(s1)
	sw	a2, 48(s1)
	sw	a3, 52(s1)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end7:
	.size	finish_pass_huff, .Lfunc_end7-finish_pass_huff
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
