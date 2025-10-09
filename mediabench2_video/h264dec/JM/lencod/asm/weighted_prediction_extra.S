	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"weighted_prediction.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function estimate_weighting_factor_P_slice
.LCPI0_0:
	.quad	0x4040000000000000              # double 32
.LCPI0_1:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	estimate_weighting_factor_P_slice
	.p2align	2
	.type	estimate_weighting_factor_P_slice,@function
estimate_weighting_factor_P_slice:      # @estimate_weighting_factor_P_slice
# %bb.0:
	lui	a1, %hi(img)
	ld	a3, %lo(img)(a1)
	lui	a1, 22
	addiw	a4, a1, 108
	add	a4, a3, a4
	lw	a2, 0(a4)
	li	a1, 2
	beqz	a2, .LBB0_4
# %bb.1:
	lui	a2, 8
	addiw	a2, a2, -1192
	add	a5, a3, a2
	lw	a2, 12(a3)
	ld	a5, 0(a5)
	li	a6, 528
	mul	a6, a2, a6
	add	a5, a5, a6
	lw	a5, 424(a5)
	beqz	a5, .LBB0_4
# %bb.2:
	andi	a2, a2, 1
	li	a1, 4
	beqz	a2, .LBB0_4
# %bb.3:
	li	a1, 6
.LBB0_4:
	addi	sp, sp, -1552
	li	a5, 0
	lui	a2, %hi(luma_log_weight_denom)
	li	a6, 5
	sw	a6, %lo(luma_log_weight_denom)(a2)
	lui	a2, %hi(chroma_log_weight_denom)
	sw	a6, %lo(chroma_log_weight_denom)(a2)
	lui	a2, %hi(wp_luma_round)
	li	a6, 16
	sw	a6, %lo(wp_luma_round)(a2)
	lui	a2, %hi(wp_chroma_round)
	sw	a6, %lo(wp_chroma_round)(a2)
	lui	a2, %hi(wp_weight)
	ld	a6, %lo(wp_weight)(a2)
	lui	a2, %hi(wp_offset)
	ld	a7, %lo(wp_offset)(a2)
	addi	t0, sp, 16
	addi	t1, sp, 792
	lui	a2, %hi(listXsize)
	addi	a2, a2, %lo(listXsize)
	li	t2, 32
	j	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	addi	a5, a5, 1
	addi	t0, t0, 384
	addi	t1, t1, 384
	beq	a5, a1, .LBB0_9
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	slli	t3, a5, 2
	add	t3, a2, t3
	lw	t4, 0(t3)
	blez	t4, .LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	slli	t5, a5, 3
	add	t4, a6, t5
	ld	t4, 0(t4)
	add	t5, a7, t5
	ld	t5, 0(t5)
	li	t6, 0
	mv	n1, t1
	mv	n2, t0
.LBB0_8:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n3, 0(t4)
	ld	n4, 0(t5)
	sw	zero, 0(n2)
	sw	zero, 4(n2)
	sw	zero, 8(n2)
	sw	t2, -8(n1)
	sw	t2, -4(n1)
	sw	t2, 0(n1)
	sw	t2, 0(n3)
	sw	zero, 0(n4)
	sw	t2, 4(n3)
	sw	zero, 4(n4)
	sw	t2, 8(n3)
	sw	zero, 8(n4)
	addi	t6, t6, 1
	lw	n3, 0(t3)
	addi	t5, t5, 8
	addi	t4, t4, 8
	addi	n2, n2, 12
	addi	n1, n1, 12
	blt	t6, n3, .LBB0_8
	j	.LBB0_5
.LBB0_9:
	lw	a5, 60(a3)
	fmv.d.x	fa5, zero
	fmv.d	fa4, fa5
	blez	a5, .LBB0_15
# %bb.10:
	lw	t0, 52(a3)
	fmv.d	fa4, fa5
	blez	t0, .LBB0_15
# %bb.11:
	lui	a6, %hi(imgY_org)
	ld	a6, %lo(imgY_org)(a6)
	li	a7, 0
	slli	t0, t0, 1
	fmv.d.x	fa4, zero
.LBB0_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	slli	t1, a7, 3
	add	t1, a6, t1
	ld	t1, 0(t1)
	add	t2, t1, t0
.LBB0_13:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	t3, 0(t1)
	fcvt.d.wu	fa3, t3
	addi	t1, t1, 2
	fadd.d	fa4, fa4, fa3
	bne	t1, t2, .LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	addi	a7, a7, 1
	bne	a7, a5, .LBB0_12
.LBB0_15:
	lui	a6, %hi(.LCPI0_0)
	fld	fa3, %lo(.LCPI0_0)(a6)
	li	a6, 0
	fmul.d	fa3, fa4, fa3
	slli	a7, a5, 2
	addiw	a7, a7, 32
	lui	t0, %hi(listX)
	addi	t0, t0, %lo(listX)
	lui	t1, %hi(wp_luma_round)
	lui	t2, %hi(luma_log_weight_denom)
	lui	n5, 2
	addiw	t3, n5, -1760
	lui	t4, %hi(.LCPI0_1)
	fld	fa2, %lo(.LCPI0_1)(t4)
	li	t4, 12
	li	t5, 384
	addi	t6, sp, 784
	li	n1, -192
	li	n2, 32
	addi	n3, sp, 16
	lui	n4, %hi(listX)
	addiw	n5, n5, -1744
	j	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	addi	a6, a6, 1
	beq	a6, a1, .LBB0_52
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #         Child Loop BB0_49 Depth 4
	slli	n6, a6, 2
	add	n6, a2, n6
	lw	n6, 0(n6)
	blez	n6, .LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	li	n7, 0
	lw	n12, 52(a3)
	slli	n8, a6, 3
	add	n8, t0, n8
	ld	n8, 0(n8)
	mulw	n9, n12, a5
	fcvt.d.w	fa1, n9
	lw	n10, %lo(wp_luma_round)(t1)
	lw	n11, %lo(luma_log_weight_denom)(t2)
	slli	n12, n12, 2
	addiw	n12, n12, 32
	slli	n13, n9, 32
	srli	n13, n13, 31
	slli	n14, n12, 32
	srli	n14, n14, 31
	mul	n16, a6, t5
	add	n15, t6, n16
	add	n16, n3, n16
	j	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_20 Depth=2
	addi	n7, n7, 1
	beq	n7, n6, .LBB0_16
.LBB0_20:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #         Child Loop BB0_49 Depth 4
	slli	n17, n7, 3
	add	n18, n8, n17
	ld	n21, 0(n18)
	add	n21, n21, t3
	ld	n20, 0(n21)
	mul	n18, n7, t4
	blez	n9, .LBB0_26
# %bb.21:                               # %.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	add	n19, n20, n13
	mv	n22, n20
	fmv.d	fa0, fa5
.LBB0_22:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	n23, 0(n22)
	fcvt.d.wu	ft0, n23
	addi	n22, n22, 2
	fadd.d	fa0, fa0, ft0
	bne	n22, n19, .LBB0_22
# %bb.23:                               #   in Loop: Header=BB0_20 Depth=2
	bnez	a0, .LBB0_27
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=2
	feq.d	n19, fa0, fa5
	bnez	n19, .LBB0_32
# %bb.25:                               #   in Loop: Header=BB0_20 Depth=2
	fdiv.d	fa0, fa3, fa0
	fadd.d	fa0, fa0, fa2
	fcvt.w.d	n19, fa0, rtz
	addiw	n22, n19, -128
	bltu	n22, n1, .LBB0_33
	j	.LBB0_34
.LBB0_26:                               #   in Loop: Header=BB0_20 Depth=2
	fmv.d	fa0, fa5
	beqz	a0, .LBB0_32
.LBB0_27:                               #   in Loop: Header=BB0_20 Depth=2
	fsub.d	fa0, fa4, fa0
	fdiv.d	fa0, fa0, fa1
	fadd.d	fa0, fa0, fa2
	fcvt.w.d	n19, fa0, rtz
	li	n22, 127
	blt	n19, n22, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_20 Depth=2
	li	n19, 127
.LBB0_29:                               #   in Loop: Header=BB0_20 Depth=2
	li	n22, -128
	blt	n22, n19, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_20 Depth=2
	li	n19, -128
.LBB0_31:                               #   in Loop: Header=BB0_20 Depth=2
	add	n22, n16, n18
	sw	n19, 0(n22)
	add	n22, n15, n18
	li	n19, 32
	j	.LBB0_35
.LBB0_32:                               #   in Loop: Header=BB0_20 Depth=2
	li	n19, 32
	addiw	n22, n19, -128
	bgeu	n22, n1, .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_20 Depth=2
	li	n19, 32
.LBB0_34:                               #   in Loop: Header=BB0_20 Depth=2
	add	n22, n15, n18
.LBB0_35:                               #   in Loop: Header=BB0_20 Depth=2
	sw	n19, 0(n22)
	ld	n21, 8(n21)
	add	n22, n15, n18
	sw	n2, 4(n22)
	sw	n2, 8(n22)
	blez	n9, .LBB0_42
# %bb.36:                               #   in Loop: Header=BB0_20 Depth=2
	add	n22, n16, n18
	lw	n22, 0(n22)
	add	n23, n21, n13
	j	.LBB0_39
.LBB0_37:                               #   in Loop: Header=BB0_39 Depth=3
	li	n24, 0
.LBB0_38:                               #   in Loop: Header=BB0_39 Depth=3
	sh	n24, 0(n21)
	addi	n21, n21, 2
	addi	n20, n20, 2
	beq	n21, n23, .LBB0_42
.LBB0_39:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	n24, 0(n20)
	mul	n24, n19, n24
	add	n24, n24, n10
	sraw	n24, n24, n11
	addw	n24, n24, n22
	bltz	n24, .LBB0_37
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=3
	lw	n25, 312(a4)
	blt	n24, n25, .LBB0_38
# %bb.41:                               #   in Loop: Header=BB0_39 Depth=3
	mv	n24, n25
	j	.LBB0_38
.LBB0_42:                               #   in Loop: Header=BB0_20 Depth=2
	blez	a7, .LBB0_19
# %bb.43:                               #   in Loop: Header=BB0_20 Depth=2
	blez	n12, .LBB0_19
# %bb.44:                               #   in Loop: Header=BB0_20 Depth=2
	ld	n20, %lo(listX)(n4)
	add	n17, n20, n17
	ld	n21, 0(n17)
	lw	n17, %lo(wp_luma_round)(t1)
	lw	n20, %lo(luma_log_weight_denom)(t2)
	add	n22, n16, n18
	add	n23, n21, n5
	ld	n18, 0(n23)
	lw	n21, 0(n22)
	ld	n22, 8(n23)
	li	n23, 0
	j	.LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_46 Depth=3
	addi	n23, n23, 1
	beq	n23, a7, .LBB0_19
.LBB0_46:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_49 Depth 4
	slli	n24, n23, 3
	add	n25, n18, n24
	add	n24, n22, n24
	ld	n24, 0(n24)
	ld	n25, 0(n25)
	add	n26, n24, n14
	j	.LBB0_49
.LBB0_47:                               #   in Loop: Header=BB0_49 Depth=4
	li	n27, 0
.LBB0_48:                               #   in Loop: Header=BB0_49 Depth=4
	sh	n27, 0(n24)
	addi	n24, n24, 2
	addi	n25, n25, 2
	beq	n24, n26, .LBB0_45
.LBB0_49:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lhu	n27, 0(n25)
	mul	n27, n19, n27
	add	n27, n27, n17
	sraw	n27, n27, n20
	addw	n27, n27, n21
	bltz	n27, .LBB0_47
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=4
	lw	n28, 312(a4)
	blt	n27, n28, .LBB0_48
# %bb.51:                               #   in Loop: Header=BB0_49 Depth=4
	mv	n27, n28
	j	.LBB0_48
.LBB0_52:
	lui	a0, %hi(wp_weight)
	ld	a0, %lo(wp_weight)(a0)
	lui	a3, %hi(wp_offset)
	ld	a3, %lo(wp_offset)(a3)
	li	a4, 0
	addi	a5, sp, 24
	addi	a6, sp, 788
	j	.LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_54 Depth=1
	addi	a4, a4, 1
	addi	a5, a5, 384
	addi	a6, a6, 384
	beq	a4, a1, .LBB0_57
.LBB0_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_56 Depth 2
	slli	a7, a4, 2
	add	a7, a2, a7
	lw	t0, 0(a7)
	blez	t0, .LBB0_53
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=1
	slli	t1, a4, 3
	add	t0, a0, t1
	ld	t0, 0(t0)
	add	t1, a3, t1
	ld	t1, 0(t1)
	li	t2, 0
	mv	t3, a6
	mv	t4, a5
.LBB0_56:                               #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t5, 0(t0)
	ld	t6, 0(t1)
	lw	n1, -4(t3)
	lw	n2, -8(t4)
	sw	n1, 0(t5)
	sw	n2, 0(t6)
	lw	n1, 0(t3)
	lw	n2, -4(t4)
	lw	n3, 4(t3)
	lw	n4, 0(t4)
	sw	n1, 4(t5)
	sw	n2, 4(t6)
	sw	n3, 8(t5)
	sw	n4, 8(t6)
	addi	t2, t2, 1
	lw	t5, 0(a7)
	addi	t0, t0, 8
	addi	t1, t1, 8
	addi	t4, t4, 12
	addi	t3, t3, 12
	blt	t2, t5, .LBB0_56
	j	.LBB0_53
.LBB0_57:
	addi	sp, sp, 1552
	ret
.Lfunc_end0:
	.size	estimate_weighting_factor_P_slice, .Lfunc_end0-estimate_weighting_factor_P_slice
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function estimate_weighting_factor_B_slice
.LCPI1_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	estimate_weighting_factor_B_slice
	.p2align	2
	.type	estimate_weighting_factor_B_slice,@function
estimate_weighting_factor_B_slice:      # @estimate_weighting_factor_B_slice
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
	sd	s8, 1952(sp)                    # 8-byte Folded Spill
	sd	s9, 1944(sp)                    # 8-byte Folded Spill
	sd	s10, 1936(sp)                   # 8-byte Folded Spill
	sd	s11, 1928(sp)                   # 8-byte Folded Spill
	fsd	fs0, 1920(sp)                   # 8-byte Folded Spill
	fsd	fs1, 1912(sp)                   # 8-byte Folded Spill
	fsd	fs2, 1904(sp)                   # 8-byte Folded Spill
	lui	a0, 19
	addiw	a0, a0, -1344
	sub	sp, sp, a0
	lui	a0, %hi(img)
	ld	s9, %lo(img)(a0)
	lui	a0, 22
	addiw	s4, a0, 108
	add	s4, s9, s4
	lw	a0, 0(s4)
	li	s11, 2
	beqz	a0, .LBB1_4
# %bb.1:
	lui	a0, 8
	addiw	a0, a0, -1192
	add	a1, s9, a0
	lw	a0, 12(s9)
	ld	a1, 0(a1)
	li	a2, 528
	mul	a2, a0, a2
	add	a1, a1, a2
	lw	a1, 424(a1)
	beqz	a1, .LBB1_4
# %bb.2:
	andi	a0, a0, 1
	li	s11, 4
	beqz	a0, .LBB1_4
# %bb.3:
	li	s11, 6
.LBB1_4:
	lui	a0, %hi(active_pps)
	ld	a0, %lo(active_pps)(a0)
	lw	a2, 196(a0)
	li	a1, 0
	addi	a2, a2, -2
	seqz	a2, a2
	lui	a3, %hi(luma_log_weight_denom)
	li	a4, 6
	subw	a4, a4, a2
	sw	a4, %lo(luma_log_weight_denom)(a3)
	lui	a3, %hi(chroma_log_weight_denom)
	sw	a4, %lo(chroma_log_weight_denom)(a3)
	xori	a2, a2, 5
	li	a3, 1
	sllw	a2, a3, a2
	lui	a5, %hi(wp_luma_round)
	sw	a2, %lo(wp_luma_round)(a5)
	lui	a5, %hi(wp_chroma_round)
	sw	a2, %lo(wp_chroma_round)(a5)
	sllw	s2, a3, a4
	lui	a2, %hi(wp_weight)
	ld	a2, %lo(wp_weight)(a2)
	lui	a3, %hi(wp_offset)
	ld	a3, %lo(wp_offset)(a3)
	lui	a4, 18
	addiw	a4, a4, 48
	add	a4, sp, a4
	lui	a5, 19
	addiw	a5, a5, -1736
	add	a5, sp, a5
	lui	s7, %hi(listXsize)
	addi	s7, s7, %lo(listXsize)
	j	.LBB1_6
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	addi	a1, a1, 1
	addi	a4, a4, 384
	addi	a5, a5, 384
	beq	a1, s11, .LBB1_9
.LBB1_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	slli	a6, a1, 2
	add	a6, s7, a6
	lw	a7, 0(a6)
	blez	a7, .LBB1_5
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	slli	t0, a1, 3
	add	a7, a2, t0
	ld	a7, 0(a7)
	add	t0, a3, t0
	ld	t0, 0(t0)
	li	t1, 0
	mv	t2, a5
	mv	t3, a4
.LBB1_8:                                #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t4, 0(a7)
	ld	t5, 0(t0)
	sw	zero, 0(t3)
	sw	zero, 4(t3)
	sw	zero, 8(t3)
	sw	s2, -8(t2)
	sw	s2, -4(t2)
	sw	s2, 0(t2)
	sw	s2, 0(t4)
	sw	zero, 0(t5)
	sw	s2, 4(t4)
	sw	zero, 4(t5)
	sw	s2, 8(t4)
	sw	zero, 8(t5)
	addi	t1, t1, 1
	lw	t4, 0(a6)
	addi	t0, t0, 8
	addi	a7, a7, 8
	addi	t3, t3, 12
	addi	t2, t2, 12
	blt	t1, t4, .LBB1_8
	j	.LBB1_5
.LBB1_9:
	lui	a1, %hi(listXsize)
	lw	a1, %lo(listXsize)(a1)
	blez	a1, .LBB1_37
# %bb.10:
	lw	t0, 4(s7)
	blez	t0, .LBB1_38
# %bb.11:
	li	a2, 0
	lui	a4, %hi(listX)
	lui	a3, %hi(enc_picture)
	ld	a5, %lo(enc_picture)(a3)
	addi	a3, a4, %lo(listX)
	ld	a3, 8(a3)
	ld	a4, %lo(listX)(a4)
	lw	a5, 4(a5)
	li	a6, 64
	sub	a7, a6, s2
	slli	t0, t0, 3
	add	t0, a3, t0
	addi	t1, sp, 48
	lui	t2, 3
	addiw	t3, t2, 4
	li	t4, -1
	lui	t5, 4
	li	t6, -193
	j	.LBB1_13
.LBB1_12:                               #   in Loop: Header=BB1_13 Depth=1
	addi	a2, a2, 1
	addi	t1, t1, 384
	beq	a2, a1, .LBB1_35
.LBB1_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
	slli	n1, a2, 3
	add	n1, a4, n1
	ld	n1, 0(n1)
	lw	n1, 4(n1)
	subw	n2, a5, n1
	li	n3, 127
	blt	n2, n3, .LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	li	n2, 127
.LBB1_15:                               #   in Loop: Header=BB1_13 Depth=1
	li	n3, -128
	blt	n3, n2, .LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_13 Depth=1
	li	n2, -128
.LBB1_17:                               #   in Loop: Header=BB1_13 Depth=1
	mv	n3, t1
	mv	n4, a3
	j	.LBB1_21
.LBB1_18:                               #   in Loop: Header=BB1_21 Depth=2
	add	n6, n3, t2
	sw	s2, 0(n6)
	mv	n7, s2
.LBB1_19:                               #   in Loop: Header=BB1_21 Depth=2
	mv	n6, s2
.LBB1_20:                               #   in Loop: Header=BB1_21 Depth=2
	sw	n7, 0(n3)
	sw	n6, 0(n5)
	sw	n7, 4(n3)
	sw	n6, 4(n5)
	sw	n7, 8(n3)
	addi	n4, n4, 8
	addi	n3, n3, 12
	beq	n4, t0, .LBB1_12
.LBB1_21:                               #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n5, 0(n4)
	lw	n6, 4(n5)
	add	n5, n3, t3
	beq	n6, n1, .LBB1_18
# %bb.22:                               #   in Loop: Header=BB1_21 Depth=2
	subw	n7, n6, n1
	li	n8, 127
	mv	n6, n7
	blt	n7, n8, .LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_21 Depth=2
	li	n6, 127
.LBB1_24:                               #   in Loop: Header=BB1_21 Depth=2
	li	n8, -128
	blt	n8, n6, .LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_21 Depth=2
	li	n6, -128
.LBB1_26:                               #   in Loop: Header=BB1_21 Depth=2
	slli	n8, n6, 56
	srli	n8, n8, 63
	add	n8, n6, n8
	slli	n8, n8, 56
	srai	n8, n8, 57
	bge	n7, t4, .LBB1_28
# %bb.27:                               #   in Loop: Header=BB1_21 Depth=2
	neg	n8, n8
.LBB1_28:                               #   in Loop: Header=BB1_21 Depth=2
	add	n8, n8, t5
	slli	n8, n8, 48
	srai	n7, n8, 48
	slli	n6, n6, 48
	srai	n6, n6, 48
	divw	n6, n7, n6
	slli	n6, n6, 48
	srai	n6, n6, 48
	mul	n6, n2, n6
	addi	n6, n6, 32
	sraiw	n6, n6, 6
	li	n7, 1023
	bge	n6, n7, .LBB1_32
# %bb.29:                               #   in Loop: Header=BB1_21 Depth=2
	li	n7, -1024
	bge	n7, n6, .LBB1_33
.LBB1_30:                               #   in Loop: Header=BB1_21 Depth=2
	srai	n6, n6, 2
	addi	n7, n6, -129
	bgeu	n7, t6, .LBB1_34
.LBB1_31:                               #   in Loop: Header=BB1_21 Depth=2
	sw	s2, -4(n5)
	mv	n7, a7
	j	.LBB1_19
.LBB1_32:                               #   in Loop: Header=BB1_21 Depth=2
	li	n6, 1023
	li	n7, -1024
	blt	n7, n6, .LBB1_30
.LBB1_33:                               #   in Loop: Header=BB1_21 Depth=2
	li	n6, -1024
	srai	n6, n6, 2
	addi	n7, n6, -129
	bltu	n7, t6, .LBB1_31
.LBB1_34:                               #   in Loop: Header=BB1_21 Depth=2
	sw	n6, -4(n5)
	sub	n7, a6, n6
	j	.LBB1_20
.LBB1_35:
	lw	a2, 196(a0)
	li	a0, 2
	bne	a2, a0, .LBB1_46
# %bb.36:
	bgtz	a1, .LBB1_39
	j	.LBB1_81
.LBB1_37:
	lw	a2, 196(a0)
	li	a0, 2
	bne	a2, a0, .LBB1_46
	j	.LBB1_81
.LBB1_38:
	lw	a2, 196(a0)
	li	a0, 2
	bne	a2, a0, .LBB1_46
.LBB1_39:
	lw	a6, 4(s7)
	blez	a6, .LBB1_81
# %bb.40:                               # %.preheader4
	li	a0, 0
	lui	a2, %hi(wbp_weight)
	ld	a2, %lo(wbp_weight)(a2)
	addi	a3, sp, 48
	lui	a4, 3
	addiw	a4, a4, 4
	lui	a5, %hi(listXsize)
	j	.LBB1_42
.LBB1_41:                               #   in Loop: Header=BB1_42 Depth=1
	addi	a0, a0, 1
	addi	a3, a3, 384
	bge	a0, a1, .LBB1_81
.LBB1_42:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_44 Depth 2
	blez	a6, .LBB1_41
# %bb.43:                               #   in Loop: Header=BB1_42 Depth=1
	ld	a1, 8(a2)
	ld	a6, 0(a2)
	slli	a7, a0, 3
	add	a1, a1, a7
	ld	a1, 0(a1)
	add	a6, a6, a7
	ld	a7, 0(a6)
	li	t0, 0
	mv	t1, a3
.LBB1_44:                               #   Parent Loop BB1_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(a1)
	ld	t2, 0(a7)
	add	t3, t1, a4
	lw	t4, -4(t3)
	lw	t5, 0(t1)
	sw	t4, 0(a6)
	sw	t5, 0(t2)
	lw	t4, 0(t3)
	lw	t5, 4(t1)
	lw	t3, 4(t3)
	lw	t6, 8(t1)
	sw	t4, 4(a6)
	sw	t5, 4(t2)
	sw	t3, 8(a6)
	sw	t6, 8(t2)
	lw	a6, 4(s7)
	addi	t0, t0, 1
	addi	a1, a1, 8
	addi	a7, a7, 8
	addi	t1, t1, 12
	blt	t0, a6, .LBB1_44
# %bb.45:                               #   in Loop: Header=BB1_42 Depth=1
	lw	a1, %lo(listXsize)(a5)
	j	.LBB1_41
.LBB1_46:
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	lw	a0, 60(s9)
	fmv.d.x	fs0, zero
	fmv.d	fa5, fs0
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	blez	a0, .LBB1_52
# %bb.47:
	lw	a2, 52(s9)
	fmv.d	fa5, fs0
	blez	a2, .LBB1_52
# %bb.48:
	lui	a0, %hi(imgY_org)
	ld	a0, %lo(imgY_org)(a0)
	li	a1, 0
	slli	a2, a2, 1
	fmv.d.x	fa5, zero
.LBB1_49:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_50 Depth 2
	slli	a3, a1, 3
	add	a3, a0, a3
	ld	a3, 0(a3)
	add	a4, a3, a2
.LBB1_50:                               #   Parent Loop BB1_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a5, 0(a3)
	fcvt.d.wu	fa4, a5
	addi	a3, a3, 2
	fadd.d	fa5, fa5, fa4
	bne	a3, a4, .LBB1_50
# %bb.51:                               #   in Loop: Header=BB1_49 Depth=1
	addi	a1, a1, 1
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	bne	a1, a3, .LBB1_49
.LBB1_52:
	li	n1, 0
	fcvt.d.wu	fa4, s2
	fmul.d	fs1, fa5, fa4
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 2
	addiw	s8, a0, 32
	lui	n2, %hi(wp_luma_round)
	lui	n3, %hi(luma_log_weight_denom)
	li	n4, 12
	lui	a0, 2
	lui	a1, %hi(.LCPI1_0)
	fld	fs2, %lo(.LCPI1_0)(a1)
	addiw	s10, a0, -1760
	j	.LBB1_54
.LBB1_53:                               #   in Loop: Header=BB1_54 Depth=1
	addi	n1, n1, 1
	lui	s7, %hi(listXsize)
	addi	s7, s7, %lo(listXsize)
	beq	n1, s11, .LBB1_86
.LBB1_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_57 Depth 2
                                        #       Child Loop BB1_59 Depth 3
                                        #       Child Loop BB1_68 Depth 3
                                        #       Child Loop BB1_75 Depth 3
                                        #         Child Loop BB1_78 Depth 4
	slli	a0, n1, 2
	add	a0, s7, a0
	lw	s6, 0(a0)
	blez	s6, .LBB1_53
# %bb.55:                               #   in Loop: Header=BB1_54 Depth=1
	li	a0, 384
	mul	a1, n1, a0
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	lui	a0, 18
	addiw	a0, a0, 48
	add	a0, sp, a0
	add	a0, a0, a1
	lw	a1, 52(s9)
	slli	a2, n1, 3
	lui	a3, %hi(listX)
	addi	a3, a3, %lo(listX)
	add	a2, a3, a2
	ld	s1, 0(a2)
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	mulw	s0, a1, a2
	lw	s5, %lo(wp_luma_round)(n2)
	lw	s3, %lo(luma_log_weight_denom)(n3)
	slli	a1, a1, 2
	addiw	s7, a1, 32
	mul	a2, s6, n4
	li	a1, 0
	sd	n1, 40(sp)                      # 8-byte Folded Spill
	call	memset
	li	n5, -192
	li	n4, 12
	lui	n3, %hi(luma_log_weight_denom)
	lui	n2, %hi(wp_luma_round)
	ld	n1, 40(sp)                      # 8-byte Folded Reload
	li	a0, 0
	slli	a1, s0, 32
	srli	a1, a1, 31
	slli	a2, s7, 32
	srli	a2, a2, 31
	lui	a3, 19
	addiw	a3, a3, -1744
	add	a3, sp, a3
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	add	a3, a3, a4
	j	.LBB1_57
.LBB1_56:                               #   in Loop: Header=BB1_57 Depth=2
	addi	a0, a0, 1
	beq	a0, s6, .LBB1_53
.LBB1_57:                               #   Parent Loop BB1_54 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_59 Depth 3
                                        #       Child Loop BB1_68 Depth 3
                                        #       Child Loop BB1_75 Depth 3
                                        #         Child Loop BB1_78 Depth 4
	slli	a4, a0, 3
	add	a4, s1, a4
	ld	a4, 0(a4)
	add	a5, a4, s10
	ld	a7, 0(a5)
	ld	t0, 8(a5)
	ld	a4, 16(a5)
	ld	a5, 24(a5)
	mv	t1, s2
	blez	s0, .LBB1_62
# %bb.58:                               # %.preheader18
                                        #   in Loop: Header=BB1_57 Depth=2
	add	a6, a7, a1
	mv	t1, a7
	fmv.d	fa5, fs0
.LBB1_59:                               #   Parent Loop BB1_54 Depth=1
                                        #     Parent Loop BB1_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	t2, 0(t1)
	fcvt.d.wu	fa4, t2
	addi	t1, t1, 2
	fadd.d	fa5, fa5, fa4
	bne	t1, a6, .LBB1_59
# %bb.60:                               #   in Loop: Header=BB1_57 Depth=2
	feq.d	a6, fa5, fs0
	mv	t1, s2
	bnez	a6, .LBB1_62
# %bb.61:                               #   in Loop: Header=BB1_57 Depth=2
	fdiv.d	fa5, fs1, fa5
	fadd.d	fa5, fa5, fs2
	fcvt.w.d	t1, fa5, rtz
.LBB1_62:                               #   in Loop: Header=BB1_57 Depth=2
	addiw	t2, t1, -128
	mv	a6, s2
	bltu	t2, n5, .LBB1_64
# %bb.63:                               #   in Loop: Header=BB1_57 Depth=2
	mv	a6, t1
.LBB1_64:                               #   in Loop: Header=BB1_57 Depth=2
	mul	t1, a0, n4
	add	t1, a3, t1
	sw	a6, 0(t1)
	sw	s2, 4(t1)
	sw	s2, 8(t1)
	blez	s0, .LBB1_71
# %bb.65:                               # %.preheader16
                                        #   in Loop: Header=BB1_57 Depth=2
	add	t1, t0, a1
	j	.LBB1_68
.LBB1_66:                               #   in Loop: Header=BB1_68 Depth=3
	li	t2, 0
.LBB1_67:                               #   in Loop: Header=BB1_68 Depth=3
	sh	t2, 0(t0)
	addi	t0, t0, 2
	addi	a7, a7, 2
	beq	t0, t1, .LBB1_71
.LBB1_68:                               #   Parent Loop BB1_54 Depth=1
                                        #     Parent Loop BB1_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	t2, 0(a7)
	mul	t2, a6, t2
	add	t2, t2, s5
	sraw	t2, t2, s3
	bltz	t2, .LBB1_66
# %bb.69:                               #   in Loop: Header=BB1_68 Depth=3
	lw	t3, 312(s4)
	blt	t2, t3, .LBB1_67
# %bb.70:                               #   in Loop: Header=BB1_68 Depth=3
	mv	t2, t3
	j	.LBB1_67
.LBB1_71:                               #   in Loop: Header=BB1_57 Depth=2
	blez	s8, .LBB1_56
# %bb.72:                               #   in Loop: Header=BB1_57 Depth=2
	blez	s7, .LBB1_56
# %bb.73:                               # %.preheader14
                                        #   in Loop: Header=BB1_57 Depth=2
	lw	a7, %lo(wp_luma_round)(n2)
	lw	t0, %lo(luma_log_weight_denom)(n3)
	li	t1, 0
	j	.LBB1_75
.LBB1_74:                               #   in Loop: Header=BB1_75 Depth=3
	addi	t1, t1, 1
	beq	t1, s8, .LBB1_56
.LBB1_75:                               #   Parent Loop BB1_54 Depth=1
                                        #     Parent Loop BB1_57 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_78 Depth 4
	slli	t2, t1, 3
	add	t3, a4, t2
	add	t2, a5, t2
	ld	t2, 0(t2)
	ld	t3, 0(t3)
	add	t4, t2, a2
	j	.LBB1_78
.LBB1_76:                               #   in Loop: Header=BB1_78 Depth=4
	li	t5, 0
.LBB1_77:                               #   in Loop: Header=BB1_78 Depth=4
	sh	t5, 0(t2)
	addi	t2, t2, 2
	addi	t3, t3, 2
	beq	t2, t4, .LBB1_74
.LBB1_78:                               #   Parent Loop BB1_54 Depth=1
                                        #     Parent Loop BB1_57 Depth=2
                                        #       Parent Loop BB1_75 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lhu	t5, 0(t3)
	mul	t5, a6, t5
	add	t5, t5, a7
	sraw	t5, t5, t0
	bltz	t5, .LBB1_76
# %bb.79:                               #   in Loop: Header=BB1_78 Depth=4
	lw	t6, 312(s4)
	blt	t5, t6, .LBB1_77
# %bb.80:                               #   in Loop: Header=BB1_78 Depth=4
	mv	t5, t6
	j	.LBB1_77
.LBB1_81:
	lui	a0, %hi(wp_weight)
	ld	a0, %lo(wp_weight)(a0)
	lui	a1, %hi(wp_offset)
	ld	a1, %lo(wp_offset)(a1)
	li	a2, 0
	j	.LBB1_83
.LBB1_82:                               #   in Loop: Header=BB1_83 Depth=1
	addi	a2, a2, 1
	beq	a2, s11, .LBB1_92
.LBB1_83:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_85 Depth 2
	slli	a3, a2, 2
	add	a3, s7, a3
	lw	a4, 0(a3)
	blez	a4, .LBB1_82
# %bb.84:                               #   in Loop: Header=BB1_83 Depth=1
	slli	a5, a2, 3
	add	a4, a0, a5
	ld	a4, 0(a4)
	add	a5, a1, a5
	ld	a5, 0(a5)
	li	a6, 0
.LBB1_85:                               #   Parent Loop BB1_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a4)
	ld	t0, 0(a5)
	sw	s2, 0(a7)
	sw	s2, 4(a7)
	sw	s2, 8(a7)
	sw	zero, 0(t0)
	sw	zero, 4(t0)
	sw	zero, 8(t0)
	lw	a7, 0(a3)
	addi	a6, a6, 1
	addi	a5, a5, 8
	addi	a4, a4, 8
	blt	a6, a7, .LBB1_85
	j	.LBB1_82
.LBB1_86:
	lui	a0, %hi(wp_weight)
	ld	a0, %lo(wp_weight)(a0)
	lui	a1, %hi(wp_offset)
	ld	a1, %lo(wp_offset)(a1)
	li	a2, 1
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	bne	a3, a2, .LBB1_98
# %bb.87:                               # %.preheader9
	li	a2, 0
	lui	a3, 18
	addiw	a3, a3, 56
	add	a3, sp, a3
	lui	a4, 19
	addiw	a4, a4, -1740
	add	a4, sp, a4
	j	.LBB1_89
.LBB1_88:                               #   in Loop: Header=BB1_89 Depth=1
	addi	a2, a2, 1
	addi	a3, a3, 384
	addi	a4, a4, 384
	beq	a2, s11, .LBB1_103
.LBB1_89:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_91 Depth 2
	slli	a5, a2, 2
	add	a5, s7, a5
	lw	a6, 0(a5)
	blez	a6, .LBB1_88
# %bb.90:                               #   in Loop: Header=BB1_89 Depth=1
	slli	a7, a2, 3
	add	a6, a0, a7
	ld	a6, 0(a6)
	add	a7, a1, a7
	ld	a7, 0(a7)
	li	t0, 0
	mv	t1, a4
	mv	t2, a3
.LBB1_91:                               #   Parent Loop BB1_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t3, 0(a6)
	ld	t4, 0(a7)
	lw	t5, -4(t1)
	lw	t6, -8(t2)
	sw	t5, 0(t3)
	sw	t6, 0(t4)
	lw	t5, 0(t1)
	lw	t6, -4(t2)
	lw	n1, 4(t1)
	lw	n2, 0(t2)
	sw	t5, 4(t3)
	sw	t6, 4(t4)
	sw	n1, 8(t3)
	sw	n2, 8(t4)
	addi	t0, t0, 1
	lw	t3, 0(a5)
	addi	a6, a6, 8
	addi	a7, a7, 8
	addi	t2, t2, 12
	addi	t1, t1, 12
	blt	t0, t3, .LBB1_91
	j	.LBB1_88
.LBB1_92:
	lui	s0, %hi(listXsize)
	lw	a0, %lo(listXsize)(s0)
	blez	a0, .LBB1_95
# %bb.93:                               # %.preheader1
	li	s1, 0
	li	s2, 0
	lui	s3, %hi(listX)
	lui	a0, 2
	addiw	s4, a0, -1760
	lui	s5, %hi(img)
	addiw	s6, a0, -1744
.LBB1_94:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(listX)(s3)
	add	a0, a0, s1
	ld	a0, 0(a0)
	ld	a1, %lo(img)(s5)
	add	a2, a0, s4
	lw	a3, 60(a1)
	lw	a4, 52(a1)
	ld	a0, 8(a2)
	ld	a1, 0(a2)
	mulw	a2, a4, a3
	slli	a2, a2, 1
	call	memcpy
	ld	a0, %lo(listX)(s3)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a0, a0, s6
	ld	a1, %lo(img)(s5)
	ld	a2, 8(a0)
	ld	a3, 0(a0)
	lw	a4, 60(a1)
	ld	a0, 0(a2)
	lw	a2, 52(a1)
	ld	a1, 0(a3)
	slli	a4, a4, 4
	addi	a3, a4, 128
	addi	a2, a2, 8
	mulw	a2, a3, a2
	slli	a2, a2, 1
	call	memcpy
	lw	a0, %lo(listXsize)(s0)
	addi	s2, s2, 1
	addi	s1, s1, 8
	blt	s2, a0, .LBB1_94
.LBB1_95:
	lw	a0, 4(s7)
	blez	a0, .LBB1_111
# %bb.96:                               # %.preheader
	li	s0, 0
	li	s1, 0
	lui	s2, %hi(listX+8)
	lui	a0, 2
	addiw	s3, a0, -1760
	lui	s4, %hi(img)
	addiw	s5, a0, -1744
.LBB1_97:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(listX+8)(s2)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a1, %lo(img)(s4)
	add	a2, a0, s3
	lw	a3, 60(a1)
	lw	a4, 52(a1)
	ld	a0, 8(a2)
	ld	a1, 0(a2)
	mulw	a2, a4, a3
	slli	a2, a2, 1
	call	memcpy
	ld	a0, %lo(listX+8)(s2)
	add	a0, a0, s0
	ld	a0, 0(a0)
	add	a0, a0, s5
	ld	a1, %lo(img)(s4)
	ld	a2, 8(a0)
	ld	a3, 0(a0)
	lw	a4, 60(a1)
	ld	a0, 0(a2)
	lw	a2, 52(a1)
	ld	a1, 0(a3)
	slli	a4, a4, 4
	addi	a3, a4, 128
	addi	a2, a2, 8
	mulw	a2, a3, a2
	slli	a2, a2, 1
	call	memcpy
	lw	a0, 4(s7)
	addi	s1, s1, 1
	addi	s0, s0, 8
	blt	s1, a0, .LBB1_97
	j	.LBB1_111
.LBB1_98:                               # %.preheader12
	li	a2, 0
	j	.LBB1_100
.LBB1_99:                               #   in Loop: Header=BB1_100 Depth=1
	addi	a2, a2, 1
	beq	a2, s11, .LBB1_103
.LBB1_100:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_102 Depth 2
	slli	a3, a2, 2
	add	a3, s7, a3
	lw	a4, 0(a3)
	blez	a4, .LBB1_99
# %bb.101:                              #   in Loop: Header=BB1_100 Depth=1
	slli	a5, a2, 3
	add	a4, a0, a5
	ld	a4, 0(a4)
	add	a5, a1, a5
	ld	a5, 0(a5)
	li	a6, 0
.LBB1_102:                              #   Parent Loop BB1_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a4)
	ld	t0, 0(a5)
	sw	s2, 0(a7)
	sw	s2, 4(a7)
	sw	s2, 8(a7)
	sw	zero, 0(t0)
	sw	zero, 4(t0)
	sw	zero, 8(t0)
	lw	a7, 0(a3)
	addi	a6, a6, 1
	addi	a5, a5, 8
	addi	a4, a4, 8
	blt	a6, a7, .LBB1_102
	j	.LBB1_99
.LBB1_103:
	lui	a0, %hi(listXsize)
	lw	a4, %lo(listXsize)(a0)
	blez	a4, .LBB1_111
# %bb.104:
	lw	a5, 4(s7)
	blez	a5, .LBB1_111
# %bb.105:                              # %.preheader6
	lui	a0, %hi(wp_weight)
	ld	a0, %lo(wp_weight)(a0)
	lui	a1, %hi(wbp_weight)
	ld	a1, %lo(wbp_weight)(a1)
	li	a2, 0
	lui	a3, %hi(listXsize)
	j	.LBB1_107
.LBB1_106:                              #   in Loop: Header=BB1_107 Depth=1
	addi	a2, a2, 1
	bge	a2, a4, .LBB1_111
.LBB1_107:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_109 Depth 2
	blez	a5, .LBB1_106
# %bb.108:                              #   in Loop: Header=BB1_107 Depth=1
	ld	a4, 0(a0)
	slli	a5, a2, 3
	ld	a6, 0(a1)
	add	a4, a4, a5
	ld	a4, 0(a4)
	ld	t0, 8(a1)
	add	a6, a6, a5
	ld	a6, 0(a6)
	ld	a7, 8(a0)
	add	a5, t0, a5
	ld	t0, 0(a5)
	li	t1, 0
.LBB1_109:                              #   Parent Loop BB1_107 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a5, 0(a6)
	lw	t2, 0(a4)
	ld	t3, 0(a7)
	ld	t4, 0(t0)
	sw	t2, 0(a5)
	lw	t2, 0(t3)
	sw	t2, 0(t4)
	lw	t2, 4(a4)
	sw	t2, 4(a5)
	lw	t2, 4(t3)
	sw	t2, 4(t4)
	lw	t2, 8(a4)
	sw	t2, 8(a5)
	lw	a5, 8(t3)
	sw	a5, 8(t4)
	lw	a5, 4(s7)
	addi	t1, t1, 1
	addi	t0, t0, 8
	addi	a7, a7, 8
	addi	a6, a6, 8
	blt	t1, a5, .LBB1_109
# %bb.110:                              #   in Loop: Header=BB1_107 Depth=1
	lw	a4, %lo(listXsize)(a3)
	j	.LBB1_106
.LBB1_111:
	lui	a0, 19
	addiw	a0, a0, -1344
	add	sp, sp, a0
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	ld	s1, 2008(sp)                    # 8-byte Folded Reload
	ld	s2, 2000(sp)                    # 8-byte Folded Reload
	ld	s3, 1992(sp)                    # 8-byte Folded Reload
	ld	s4, 1984(sp)                    # 8-byte Folded Reload
	ld	s5, 1976(sp)                    # 8-byte Folded Reload
	ld	s6, 1968(sp)                    # 8-byte Folded Reload
	ld	s7, 1960(sp)                    # 8-byte Folded Reload
	ld	s8, 1952(sp)                    # 8-byte Folded Reload
	ld	s9, 1944(sp)                    # 8-byte Folded Reload
	ld	s10, 1936(sp)                   # 8-byte Folded Reload
	ld	s11, 1928(sp)                   # 8-byte Folded Reload
	fld	fs0, 1920(sp)                   # 8-byte Folded Reload
	fld	fs1, 1912(sp)                   # 8-byte Folded Reload
	fld	fs2, 1904(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 2032
	ret
.Lfunc_end1:
	.size	estimate_weighting_factor_B_slice, .Lfunc_end1-estimate_weighting_factor_B_slice
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function test_wp_P_slice
.LCPI2_0:
	.quad	0x4040000000000000              # double 32
.LCPI2_1:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	test_wp_P_slice
	.p2align	2
	.type	test_wp_P_slice,@function
test_wp_P_slice:                        # @test_wp_P_slice
# %bb.0:
	lui	a1, %hi(img)
	ld	a3, %lo(img)(a1)
	lui	a1, 22
	add	a1, a3, a1
	lw	a2, 108(a1)
	li	a1, 2
	beqz	a2, .LBB2_4
# %bb.1:
	lui	a2, 8
	addiw	a2, a2, -1192
	add	a4, a3, a2
	lw	a2, 12(a3)
	ld	a4, 0(a4)
	li	a5, 528
	mul	a5, a2, a5
	add	a4, a4, a5
	lw	a4, 424(a4)
	beqz	a4, .LBB2_4
# %bb.2:
	andi	a2, a2, 1
	li	a1, 4
	beqz	a2, .LBB2_4
# %bb.3:
	li	a1, 6
.LBB2_4:
	addi	sp, sp, -1552
	li	a4, 0
	lui	a2, %hi(luma_log_weight_denom)
	li	a5, 5
	sw	a5, %lo(luma_log_weight_denom)(a2)
	lui	a2, %hi(chroma_log_weight_denom)
	sw	a5, %lo(chroma_log_weight_denom)(a2)
	lui	a2, %hi(wp_luma_round)
	li	a5, 16
	sw	a5, %lo(wp_luma_round)(a2)
	lui	a2, %hi(wp_chroma_round)
	sw	a5, %lo(wp_chroma_round)(a2)
	lui	a2, %hi(wp_weight)
	ld	a5, %lo(wp_weight)(a2)
	lui	a2, %hi(wp_offset)
	ld	a6, %lo(wp_offset)(a2)
	addi	a7, sp, 16
	addi	t0, sp, 792
	lui	a2, %hi(listXsize)
	addi	a2, a2, %lo(listXsize)
	li	t1, 32
	j	.LBB2_6
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=1
	addi	a4, a4, 1
	addi	t0, t0, 384
	addi	a7, a7, 384
	beq	a4, a1, .LBB2_9
.LBB2_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	slli	t2, a4, 2
	add	t2, a2, t2
	lw	t3, 0(t2)
	blez	t3, .LBB2_5
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	slli	t4, a4, 3
	add	t3, a5, t4
	ld	t3, 0(t3)
	add	t4, a6, t4
	ld	t4, 0(t4)
	li	t5, 0
	mv	t6, a7
	mv	n1, t0
.LBB2_8:                                #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n2, 0(t3)
	ld	n3, 0(t4)
	sw	zero, 0(t6)
	sw	zero, 4(t6)
	sw	zero, 8(t6)
	sw	t1, -8(n1)
	sw	t1, 0(n2)
	sw	zero, 0(n3)
	sw	t1, -4(n1)
	sw	t1, 4(n2)
	sw	zero, 4(n3)
	sw	t1, 0(n1)
	sw	t1, 8(n2)
	sw	zero, 8(n3)
	addi	t5, t5, 1
	lw	n2, 0(t2)
	addi	n1, n1, 12
	addi	t4, t4, 8
	addi	t3, t3, 8
	addi	t6, t6, 12
	blt	t5, n2, .LBB2_8
	j	.LBB2_5
.LBB2_9:
	lw	a4, 60(a3)
	fmv.d.x	fa5, zero
	blez	a4, .LBB2_15
# %bb.10:
	lw	a7, 52(a3)
	blez	a7, .LBB2_15
# %bb.11:
	lui	a5, %hi(imgY_org)
	ld	a5, %lo(imgY_org)(a5)
	li	a6, 0
	slli	a7, a7, 1
	fmv.d.x	fa5, zero
.LBB2_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	slli	t0, a6, 3
	add	t0, a5, t0
	ld	t0, 0(t0)
	add	t1, t0, a7
.LBB2_13:                               #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	t2, 0(t0)
	fcvt.d.wu	fa4, t2
	addi	t0, t0, 2
	fadd.d	fa5, fa5, fa4
	bne	t0, t1, .LBB2_13
# %bb.14:                               #   in Loop: Header=BB2_12 Depth=1
	addi	a6, a6, 1
	bne	a6, a4, .LBB2_12
.LBB2_15:
	beqz	a0, .LBB2_28
# %bb.16:                               # %.preheader16
	li	a0, 0
	lui	a5, %hi(listX)
	addi	a5, a5, %lo(listX)
	lui	a6, 2
	fmv.d.x	fa4, zero
	lui	a7, %hi(.LCPI2_1)
	fld	fa3, %lo(.LCPI2_1)(a7)
	li	a7, 12
	li	t0, 384
	addi	t1, sp, 16
	addi	t2, sp, 784
	li	t3, 32
	j	.LBB2_18
.LBB2_17:                               #   in Loop: Header=BB2_18 Depth=1
	addi	a0, a0, 1
	beq	a0, a1, .LBB2_42
.LBB2_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_21 Depth 2
                                        #       Child Loop BB2_23 Depth 3
	slli	t4, a0, 2
	add	t4, a2, t4
	lw	t4, 0(t4)
	blez	t4, .LBB2_17
# %bb.19:                               #   in Loop: Header=BB2_18 Depth=1
	li	t5, 0
	lw	n1, 52(a3)
	slli	t6, a0, 3
	add	t6, a5, t6
	ld	t6, 0(t6)
	mulw	n1, n1, a4
	fcvt.d.w	fa2, n1
	slli	n2, n1, 32
	srli	n2, n2, 31
	mul	n4, a0, t0
	add	n3, t1, n4
	add	n4, t2, n4
	j	.LBB2_21
.LBB2_20:                               #   in Loop: Header=BB2_21 Depth=2
	mul	n6, t5, a7
	add	n7, n3, n6
	sw	n5, 0(n7)
	add	n6, n4, n6
	sw	t3, 0(n6)
	sw	t3, 4(n6)
	addi	t5, t5, 1
	sw	t3, 8(n6)
	beq	t5, t4, .LBB2_17
.LBB2_21:                               #   Parent Loop BB2_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_23 Depth 3
	fmv.d	fa1, fa4
	blez	n1, .LBB2_24
# %bb.22:                               # %.preheader13
                                        #   in Loop: Header=BB2_21 Depth=2
	slli	n5, t5, 3
	add	n5, t6, n5
	ld	n5, 0(n5)
	add	n5, n5, a6
	ld	n5, -1760(n5)
	add	n6, n5, n2
	fmv.d	fa1, fa4
.LBB2_23:                               #   Parent Loop BB2_18 Depth=1
                                        #     Parent Loop BB2_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	n7, 0(n5)
	fcvt.d.wu	fa0, n7
	addi	n5, n5, 2
	fadd.d	fa1, fa1, fa0
	bne	n5, n6, .LBB2_23
.LBB2_24:                               #   in Loop: Header=BB2_21 Depth=2
	fsub.d	fa1, fa5, fa1
	fdiv.d	fa1, fa1, fa2
	fadd.d	fa1, fa1, fa3
	fcvt.w.d	n5, fa1, rtz
	li	n6, 127
	blt	n5, n6, .LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_21 Depth=2
	li	n5, 127
.LBB2_26:                               #   in Loop: Header=BB2_21 Depth=2
	li	n6, -128
	blt	n6, n5, .LBB2_20
# %bb.27:                               #   in Loop: Header=BB2_21 Depth=2
	li	n5, -128
	j	.LBB2_20
.LBB2_28:                               # %.preheader11
	lui	a0, %hi(.LCPI2_0)
	fld	fa4, %lo(.LCPI2_0)(a0)
	li	a0, 0
	fmul.d	fa5, fa5, fa4
	addi	a5, sp, 792
	lui	a6, %hi(listX)
	addi	a6, a6, %lo(listX)
	lui	a7, 2
	fmv.d.x	fa4, zero
	lui	t0, %hi(.LCPI2_1)
	fld	fa3, %lo(.LCPI2_1)(t0)
	li	t0, 12
	li	t1, 384
	addi	t2, sp, 784
	li	t3, -192
	li	t4, 32
	j	.LBB2_30
.LBB2_29:                               #   in Loop: Header=BB2_30 Depth=1
	addi	a0, a0, 1
	addi	a5, a5, 384
	beq	a0, a1, .LBB2_42
.LBB2_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_41 Depth 2
                                        #     Child Loop BB2_34 Depth 2
                                        #       Child Loop BB2_35 Depth 3
	slli	t5, a0, 2
	add	t5, a2, t5
	lw	t5, 0(t5)
	blez	t5, .LBB2_29
# %bb.31:                               #   in Loop: Header=BB2_30 Depth=1
	lw	t6, 52(a3)
	mulw	n2, t6, a4
	blez	n2, .LBB2_40
# %bb.32:                               #   in Loop: Header=BB2_30 Depth=1
	li	t6, 0
	slli	n1, a0, 3
	add	n1, a6, n1
	ld	n1, 0(n1)
	slli	n2, n2, 1
	mul	n3, a0, t1
	add	n3, t2, n3
	j	.LBB2_34
.LBB2_33:                               #   in Loop: Header=BB2_34 Depth=2
	mul	n6, t6, t0
	add	n6, n3, n6
	sw	n5, 0(n6)
	sw	n4, 4(n6)
	addi	t6, t6, 1
	sw	n4, 8(n6)
	beq	t6, t5, .LBB2_29
.LBB2_34:                               #   Parent Loop BB2_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_35 Depth 3
	slli	n4, t6, 3
	add	n4, n1, n4
	ld	n4, 0(n4)
	add	n4, n4, a7
	ld	n4, -1760(n4)
	add	n5, n4, n2
	fmv.d	fa2, fa4
.LBB2_35:                               #   Parent Loop BB2_30 Depth=1
                                        #     Parent Loop BB2_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	n6, 0(n4)
	fcvt.d.wu	fa1, n6
	addi	n4, n4, 2
	fadd.d	fa2, fa2, fa1
	bne	n4, n5, .LBB2_35
# %bb.36:                               #   in Loop: Header=BB2_34 Depth=2
	feq.d	n6, fa2, fa4
	li	n4, 32
	li	n5, 32
	bnez	n6, .LBB2_38
# %bb.37:                               #   in Loop: Header=BB2_34 Depth=2
	fdiv.d	fa2, fa5, fa2
	fadd.d	fa2, fa2, fa3
	fcvt.w.d	n5, fa2, rtz
.LBB2_38:                               #   in Loop: Header=BB2_34 Depth=2
	addiw	n6, n5, -128
	bgeu	n6, t3, .LBB2_33
# %bb.39:                               #   in Loop: Header=BB2_34 Depth=2
	li	n5, 32
	j	.LBB2_33
.LBB2_40:                               # %.preheader9
                                        #   in Loop: Header=BB2_30 Depth=1
	mul	t5, t5, t0
	add	t5, a5, t5
	mv	t6, a5
.LBB2_41:                               #   Parent Loop BB2_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	t4, -8(t6)
	sw	t4, -4(t6)
	sw	t4, 0(t6)
	addi	t6, t6, 12
	bne	t6, t5, .LBB2_41
	j	.LBB2_29
.LBB2_42:
	li	a3, 0
	lui	a0, %hi(input)
	ld	a4, %lo(input)(a0)
	lui	a0, %hi(active_sps)
	ld	a5, %lo(active_sps)(a0)
	addi	a6, sp, 788
	addi	a7, sp, 24
	li	t0, 32
	li	t1, 66
	li	t2, 2
.LBB2_43:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_63 Depth 2
                                        #     Child Loop BB2_47 Depth 2
                                        #     Child Loop BB2_55 Depth 2
	slli	a0, a3, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	blez	a0, .LBB2_70
# %bb.44:                               #   in Loop: Header=BB2_43 Depth=1
	lw	t4, 1928(a4)
	slli	a0, a0, 32
	srli	t3, a0, 32
	beqz	t4, .LBB2_54
# %bb.45:                               #   in Loop: Header=BB2_43 Depth=1
	lw	a0, 4(a5)
	bne	a0, t1, .LBB2_62
# %bb.46:                               # %.preheader
                                        #   in Loop: Header=BB2_43 Depth=1
	mv	t4, a7
	mv	t5, a6
.LBB2_47:                               #   Parent Loop BB2_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t6, -4(t5)
	li	a0, 1
	bne	t6, t0, .LBB2_72
# %bb.48:                               #   in Loop: Header=BB2_47 Depth=2
	lw	t6, -8(t4)
	bnez	t6, .LBB2_72
# %bb.49:                               #   in Loop: Header=BB2_47 Depth=2
	lw	t6, 0(t5)
	bne	t6, t0, .LBB2_72
# %bb.50:                               #   in Loop: Header=BB2_47 Depth=2
	lw	t6, -4(t4)
	bnez	t6, .LBB2_72
# %bb.51:                               #   in Loop: Header=BB2_47 Depth=2
	lw	t6, 4(t5)
	bne	t6, t0, .LBB2_72
# %bb.52:                               #   in Loop: Header=BB2_47 Depth=2
	lw	t6, 0(t4)
	bnez	t6, .LBB2_72
# %bb.53:                               #   in Loop: Header=BB2_47 Depth=2
	addi	t3, t3, -1
	addi	t5, t5, 12
	addi	t4, t4, 12
	bnez	t3, .LBB2_47
	j	.LBB2_70
.LBB2_54:                               #   in Loop: Header=BB2_43 Depth=1
	mv	t4, a7
	mv	t5, a6
.LBB2_55:                               #   Parent Loop BB2_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t6, -4(t5)
	li	a0, 1
	bne	t6, t0, .LBB2_72
# %bb.56:                               #   in Loop: Header=BB2_55 Depth=2
	lw	t6, -8(t4)
	bnez	t6, .LBB2_72
# %bb.57:                               #   in Loop: Header=BB2_55 Depth=2
	lw	t6, 0(t5)
	bne	t6, t0, .LBB2_72
# %bb.58:                               #   in Loop: Header=BB2_55 Depth=2
	lw	t6, -4(t4)
	bnez	t6, .LBB2_72
# %bb.59:                               #   in Loop: Header=BB2_55 Depth=2
	lw	t6, 4(t5)
	bne	t6, t0, .LBB2_72
# %bb.60:                               #   in Loop: Header=BB2_55 Depth=2
	lw	t6, 0(t4)
	bnez	t6, .LBB2_72
# %bb.61:                               #   in Loop: Header=BB2_55 Depth=2
	addi	t3, t3, -1
	addi	t5, t5, 12
	addi	t4, t4, 12
	bnez	t3, .LBB2_55
	j	.LBB2_70
.LBB2_62:                               #   in Loop: Header=BB2_43 Depth=1
	mv	t4, a7
	mv	t5, a6
.LBB2_63:                               #   Parent Loop BB2_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t6, -4(t5)
	li	a0, 1
	bne	t6, t0, .LBB2_72
# %bb.64:                               #   in Loop: Header=BB2_63 Depth=2
	lw	t6, -8(t4)
	sraiw	n1, t6, 31
	xor	t6, t6, n1
	subw	t6, t6, n1
	bltu	t2, t6, .LBB2_72
# %bb.65:                               #   in Loop: Header=BB2_63 Depth=2
	lw	t6, 0(t5)
	bne	t6, t0, .LBB2_72
# %bb.66:                               #   in Loop: Header=BB2_63 Depth=2
	lw	t6, -4(t4)
	sraiw	n1, t6, 31
	xor	t6, t6, n1
	subw	t6, t6, n1
	bltu	t2, t6, .LBB2_72
# %bb.67:                               #   in Loop: Header=BB2_63 Depth=2
	lw	t6, 4(t5)
	bne	t6, t0, .LBB2_72
# %bb.68:                               #   in Loop: Header=BB2_63 Depth=2
	lw	t6, 0(t4)
	sraiw	n1, t6, 31
	xor	t6, t6, n1
	subw	t6, t6, n1
	bltu	t2, t6, .LBB2_72
# %bb.69:                               #   in Loop: Header=BB2_63 Depth=2
	addi	t3, t3, -1
	addi	t5, t5, 12
	addi	t4, t4, 12
	bnez	t3, .LBB2_63
.LBB2_70:                               #   in Loop: Header=BB2_43 Depth=1
	addi	a3, a3, 1
	addi	a6, a6, 384
	addi	a7, a7, 384
	bne	a3, a1, .LBB2_43
# %bb.71:
	li	a0, 0
.LBB2_72:
	addi	sp, sp, 1552
	ret
.Lfunc_end2:
	.size	test_wp_P_slice, .Lfunc_end2-test_wp_P_slice
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function test_wp_B_slice
.LCPI3_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	test_wp_B_slice
	.p2align	2
	.type	test_wp_B_slice,@function
test_wp_B_slice:                        # @test_wp_B_slice
# %bb.0:
	lui	a1, %hi(img)
	ld	n8, %lo(img)(a1)
	lui	a1, 22
	add	a1, n8, a1
	lw	a1, 108(a1)
	mv	n6, a0
	li	n5, 2
	beqz	a1, .LBB3_4
# %bb.1:
	lui	a0, 8
	addiw	a0, a0, -1192
	add	a1, n8, a0
	lw	a0, 12(n8)
	ld	a1, 0(a1)
	li	a2, 528
	mul	a2, a0, a2
	add	a1, a1, a2
	lw	a1, 424(a1)
	beqz	a1, .LBB3_4
# %bb.2:
	andi	a0, a0, 1
	li	n5, 4
	beqz	a0, .LBB3_4
# %bb.3:
	li	n5, 6
.LBB3_4:
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
	sd	s8, 1952(sp)                    # 8-byte Folded Spill
	sd	s9, 1944(sp)                    # 8-byte Folded Spill
	sd	s10, 1936(sp)                   # 8-byte Folded Spill
	sd	s11, 1928(sp)                   # 8-byte Folded Spill
	fsd	fs0, 1920(sp)                   # 8-byte Folded Spill
	fsd	fs1, 1912(sp)                   # 8-byte Folded Spill
	fsd	fs2, 1904(sp)                   # 8-byte Folded Spill
	lui	a0, 19
	addiw	a0, a0, -1344
	sub	sp, sp, a0
	li	a0, 0
	addi	a1, n6, -1
	seqz	a1, a1
	lui	a2, %hi(luma_log_weight_denom)
	li	a3, 6
	subw	a3, a3, a1
	sw	a3, %lo(luma_log_weight_denom)(a2)
	lui	a2, %hi(chroma_log_weight_denom)
	sw	a3, %lo(chroma_log_weight_denom)(a2)
	xori	a1, a1, 5
	li	a2, 1
	sllw	a1, a2, a1
	lui	a4, %hi(wp_luma_round)
	sw	a1, %lo(wp_luma_round)(a4)
	lui	a4, %hi(wp_chroma_round)
	sw	a1, %lo(wp_chroma_round)(a4)
	sllw	s3, a2, a3
	lui	a1, %hi(wp_weight)
	ld	a1, %lo(wp_weight)(a1)
	lui	a2, %hi(wp_offset)
	ld	a2, %lo(wp_offset)(a2)
	lui	a3, 18
	addiw	a3, a3, 48
	add	a3, sp, a3
	lui	a4, 19
	addiw	a4, a4, -1736
	add	a4, sp, a4
	lui	n7, %hi(listXsize)
	addi	n7, n7, %lo(listXsize)
	j	.LBB3_6
.LBB3_5:                                #   in Loop: Header=BB3_6 Depth=1
	addi	a0, a0, 1
	addi	a3, a3, 384
	addi	a4, a4, 384
	beq	a0, n5, .LBB3_9
.LBB3_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
	slli	a5, a0, 2
	add	a5, n7, a5
	lw	a6, 0(a5)
	blez	a6, .LBB3_5
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=1
	slli	a7, a0, 3
	add	a6, a1, a7
	ld	a6, 0(a6)
	add	a7, a2, a7
	ld	a7, 0(a7)
	li	t0, 0
	mv	t1, a4
	mv	t2, a3
.LBB3_8:                                #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t3, 0(a6)
	ld	t4, 0(a7)
	sw	zero, 0(t2)
	sw	zero, 4(t2)
	sw	zero, 8(t2)
	sw	s3, -8(t1)
	sw	s3, -4(t1)
	sw	s3, 0(t1)
	sw	s3, 0(t3)
	sw	zero, 0(t4)
	sw	s3, 4(t3)
	sw	zero, 4(t4)
	sw	s3, 8(t3)
	sw	zero, 8(t4)
	addi	t0, t0, 1
	lw	t3, 0(a5)
	addi	a7, a7, 8
	addi	a6, a6, 8
	addi	t2, t2, 12
	addi	t1, t1, 12
	blt	t0, t3, .LBB3_8
	j	.LBB3_5
.LBB3_9:
	lui	a0, %hi(listXsize)
	lw	a0, %lo(listXsize)(a0)
	blez	a0, .LBB3_35
# %bb.10:
	lw	a5, 4(n7)
	blez	a5, .LBB3_36
# %bb.11:
	li	a1, 0
	lui	a3, %hi(listX)
	lui	a2, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a2)
	addi	a2, a3, %lo(listX)
	ld	a2, 8(a2)
	ld	a3, %lo(listX)(a3)
	lw	a4, 4(a4)
	slli	a5, a5, 3
	add	a5, a2, a5
	addi	a6, sp, 48
	lui	a7, 3
	addiw	a7, a7, 4
	li	t0, -1
	lui	t1, 4
	li	t2, -193
	li	t3, 64
	j	.LBB3_13
.LBB3_12:                               #   in Loop: Header=BB3_13 Depth=1
	addi	a1, a1, 1
	addi	a6, a6, 384
	beq	a1, a0, .LBB3_33
.LBB3_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_20 Depth 2
	slli	t4, a1, 3
	add	t4, a3, t4
	ld	t4, 0(t4)
	lw	t4, 4(t4)
	subw	t5, a4, t4
	li	t6, 127
	blt	t5, t6, .LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	li	t5, 127
.LBB3_15:                               #   in Loop: Header=BB3_13 Depth=1
	li	t6, -128
	blt	t6, t5, .LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_13 Depth=1
	li	t5, -128
.LBB3_17:                               #   in Loop: Header=BB3_13 Depth=1
	mv	t6, a6
	mv	n1, a2
	j	.LBB3_20
.LBB3_18:                               #   in Loop: Header=BB3_20 Depth=2
	sub	n3, t3, n2
.LBB3_19:                               #   in Loop: Header=BB3_20 Depth=2
	add	n4, t6, a7
	sw	n2, -4(n4)
	sw	n3, 0(t6)
	sw	n2, 0(n4)
	sw	n3, 4(t6)
	sw	n2, 4(n4)
	sw	n3, 8(t6)
	addi	n1, n1, 8
	addi	t6, t6, 12
	beq	n1, a5, .LBB3_12
.LBB3_20:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n2, 0(n1)
	lw	n4, 4(n2)
	mv	n2, s3
	mv	n3, s3
	beq	n4, t4, .LBB3_19
# %bb.21:                               #   in Loop: Header=BB3_20 Depth=2
	subw	n3, n4, t4
	li	n4, 127
	mv	n2, n3
	blt	n3, n4, .LBB3_23
# %bb.22:                               #   in Loop: Header=BB3_20 Depth=2
	li	n2, 127
.LBB3_23:                               #   in Loop: Header=BB3_20 Depth=2
	li	n4, -128
	blt	n4, n2, .LBB3_25
# %bb.24:                               #   in Loop: Header=BB3_20 Depth=2
	li	n2, -128
.LBB3_25:                               #   in Loop: Header=BB3_20 Depth=2
	slli	n4, n2, 56
	srli	n4, n4, 63
	add	n4, n2, n4
	slli	n4, n4, 56
	srai	n4, n4, 57
	bge	n3, t0, .LBB3_27
# %bb.26:                               #   in Loop: Header=BB3_20 Depth=2
	neg	n4, n4
.LBB3_27:                               #   in Loop: Header=BB3_20 Depth=2
	add	n4, n4, t1
	slli	n4, n4, 48
	srai	n3, n4, 48
	slli	n2, n2, 48
	srai	n2, n2, 48
	divw	n2, n3, n2
	slli	n2, n2, 48
	srai	n2, n2, 48
	mul	n2, t5, n2
	addi	n2, n2, 32
	sraiw	n2, n2, 6
	li	n3, 1023
	bge	n2, n3, .LBB3_30
# %bb.28:                               #   in Loop: Header=BB3_20 Depth=2
	li	n3, -1024
	bge	n3, n2, .LBB3_31
.LBB3_29:                               #   in Loop: Header=BB3_20 Depth=2
	srai	n2, n2, 2
	addi	n3, n2, -129
	bgeu	n3, t2, .LBB3_18
	j	.LBB3_32
.LBB3_30:                               #   in Loop: Header=BB3_20 Depth=2
	li	n2, 1023
	li	n3, -1024
	blt	n3, n2, .LBB3_29
.LBB3_31:                               #   in Loop: Header=BB3_20 Depth=2
	li	n2, -1024
	srai	n2, n2, 2
	addi	n3, n2, -129
	bgeu	n3, t2, .LBB3_18
.LBB3_32:                               #   in Loop: Header=BB3_20 Depth=2
	li	n2, 32
	j	.LBB3_18
.LBB3_33:
	li	a1, 1
	bne	n6, a1, .LBB3_44
# %bb.34:
	bgtz	a0, .LBB3_37
	j	.LBB3_64
.LBB3_35:
	li	a0, 1
	bne	n6, a0, .LBB3_44
	j	.LBB3_64
.LBB3_36:
	li	a1, 1
	bne	n6, a1, .LBB3_44
.LBB3_37:
	lw	a6, 4(n7)
	blez	a6, .LBB3_64
# %bb.38:                               # %.preheader
	li	a1, 0
	lui	a2, %hi(wbp_weight)
	ld	a2, %lo(wbp_weight)(a2)
	addi	a3, sp, 48
	lui	a4, 3
	addiw	a4, a4, 4
	lui	a5, %hi(listXsize)
	j	.LBB3_40
.LBB3_39:                               #   in Loop: Header=BB3_40 Depth=1
	addi	a1, a1, 1
	addi	a3, a3, 384
	bge	a1, a0, .LBB3_64
.LBB3_40:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_42 Depth 2
	blez	a6, .LBB3_39
# %bb.41:                               #   in Loop: Header=BB3_40 Depth=1
	ld	a0, 8(a2)
	ld	a6, 0(a2)
	slli	a7, a1, 3
	add	a0, a0, a7
	ld	a0, 0(a0)
	add	a6, a6, a7
	ld	a7, 0(a6)
	li	t0, 0
	mv	t1, a3
.LBB3_42:                               #   Parent Loop BB3_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(a0)
	ld	t2, 0(a7)
	add	t3, t1, a4
	lw	t4, -4(t3)
	lw	t5, 0(t1)
	sw	t4, 0(a6)
	sw	t5, 0(t2)
	lw	t4, 0(t3)
	lw	t5, 4(t1)
	lw	t3, 4(t3)
	lw	t6, 8(t1)
	sw	t4, 4(a6)
	sw	t5, 4(t2)
	sw	t3, 8(a6)
	sw	t6, 8(t2)
	lw	a6, 4(n7)
	addi	t0, t0, 1
	addi	a0, a0, 8
	addi	a7, a7, 8
	addi	t1, t1, 12
	blt	t0, a6, .LBB3_42
# %bb.43:                               #   in Loop: Header=BB3_40 Depth=1
	lw	a0, %lo(listXsize)(a5)
	j	.LBB3_39
.LBB3_44:
	sd	n6, 16(sp)                      # 8-byte Folded Spill
	lw	a0, 60(n8)
	fmv.d.x	fs0, zero
	fmv.d	fa5, fs0
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	blez	a0, .LBB3_50
# %bb.45:
	lw	a2, 52(n8)
	fmv.d	fa5, fs0
	blez	a2, .LBB3_50
# %bb.46:
	lui	a0, %hi(imgY_org)
	ld	a0, %lo(imgY_org)(a0)
	li	a1, 0
	slli	a2, a2, 1
	fmv.d.x	fa5, zero
.LBB3_47:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_48 Depth 2
	slli	a3, a1, 3
	add	a3, a0, a3
	ld	a3, 0(a3)
	add	a4, a3, a2
.LBB3_48:                               #   Parent Loop BB3_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a5, 0(a3)
	fcvt.d.wu	fa4, a5
	addi	a3, a3, 2
	fadd.d	fa5, fa5, fa4
	bne	a3, a4, .LBB3_48
# %bb.49:                               #   in Loop: Header=BB3_47 Depth=1
	addi	a1, a1, 1
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	bne	a1, a3, .LBB3_47
.LBB3_50:
	li	s7, 0
	fcvt.d.wu	fa4, s3
	fmul.d	fs1, fa5, fa4
	lui	a0, 19
	addiw	a0, a0, -1736
	add	s8, sp, a0
	li	s0, 12
	lui	a0, %hi(.LCPI3_0)
	fld	fs2, %lo(.LCPI3_0)(a0)
	lui	s5, 2
	li	s9, -192
	sd	n5, 24(sp)                      # 8-byte Folded Spill
	j	.LBB3_52
.LBB3_51:                               #   in Loop: Header=BB3_52 Depth=1
	addi	s7, s7, 1
	addi	s8, s8, 384
	beq	s7, n5, .LBB3_69
.LBB3_52:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_63 Depth 2
                                        #     Child Loop BB3_56 Depth 2
                                        #       Child Loop BB3_57 Depth 3
	slli	a0, s7, 2
	add	a0, n7, a0
	lw	s10, 0(a0)
	blez	s10, .LBB3_51
# %bb.53:                               #   in Loop: Header=BB3_52 Depth=1
	li	a0, 384
	mul	s2, s7, a0
	slli	a0, s7, 3
	mv	s4, n8
	lw	a1, 52(n8)
	lui	a2, %hi(listX)
	addi	a2, a2, %lo(listX)
	add	a0, a2, a0
	ld	s11, 0(a0)
	lui	a0, 18
	addiw	a0, a0, 48
	add	a0, sp, a0
	add	a0, a0, s2
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	mulw	s6, a1, a2
	mul	s1, s10, s0
	li	a1, 0
	mv	a2, s1
	call	memset
	blez	s6, .LBB3_62
# %bb.54:                               #   in Loop: Header=BB3_52 Depth=1
	li	a0, 0
	slli	a1, s6, 1
	lui	a2, 19
	addiw	a2, a2, -1744
	add	a2, sp, a2
	add	a2, a2, s2
	ld	n5, 24(sp)                      # 8-byte Folded Reload
	lui	n7, %hi(listXsize)
	addi	n7, n7, %lo(listXsize)
	mv	n8, s4
	j	.LBB3_56
.LBB3_55:                               #   in Loop: Header=BB3_56 Depth=2
	mul	a3, a0, s0
	add	a3, a2, a3
	sw	a4, 0(a3)
	sw	s3, 4(a3)
	addi	a0, a0, 1
	sw	s3, 8(a3)
	beq	a0, s10, .LBB3_51
.LBB3_56:                               #   Parent Loop BB3_52 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_57 Depth 3
	slli	a3, a0, 3
	add	a3, s11, a3
	ld	a3, 0(a3)
	add	a3, a3, s5
	ld	a3, -1760(a3)
	add	a4, a3, a1
	fmv.d	fa5, fs0
.LBB3_57:                               #   Parent Loop BB3_52 Depth=1
                                        #     Parent Loop BB3_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	a5, 0(a3)
	fcvt.d.wu	fa4, a5
	addi	a3, a3, 2
	fadd.d	fa5, fa5, fa4
	bne	a3, a4, .LBB3_57
# %bb.58:                               #   in Loop: Header=BB3_56 Depth=2
	feq.d	a4, fa5, fs0
	mv	a3, s3
	bnez	a4, .LBB3_60
# %bb.59:                               #   in Loop: Header=BB3_56 Depth=2
	fdiv.d	fa5, fs1, fa5
	fadd.d	fa5, fa5, fs2
	fcvt.w.d	a3, fa5, rtz
.LBB3_60:                               #   in Loop: Header=BB3_56 Depth=2
	addiw	a5, a3, -128
	mv	a4, s3
	bltu	a5, s9, .LBB3_55
# %bb.61:                               #   in Loop: Header=BB3_56 Depth=2
	mv	a4, a3
	j	.LBB3_55
.LBB3_62:                               # %.preheader15
                                        #   in Loop: Header=BB3_52 Depth=1
	add	s1, s8, s1
	mv	a0, s8
	ld	n5, 24(sp)                      # 8-byte Folded Reload
	lui	n7, %hi(listXsize)
	addi	n7, n7, %lo(listXsize)
	mv	n8, s4
.LBB3_63:                               #   Parent Loop BB3_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	s3, -8(a0)
	sw	s3, -4(a0)
	sw	s3, 0(a0)
	addi	a0, a0, 12
	bne	a0, s1, .LBB3_63
	j	.LBB3_51
.LBB3_64:
	lui	a0, %hi(wp_weight)
	ld	a0, %lo(wp_weight)(a0)
	lui	a1, %hi(wp_offset)
	ld	a1, %lo(wp_offset)(a1)
	li	a2, 0
	j	.LBB3_66
.LBB3_65:                               #   in Loop: Header=BB3_66 Depth=1
	addi	a2, a2, 1
	beq	a2, n5, .LBB3_88
.LBB3_66:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_68 Depth 2
	slli	a3, a2, 2
	add	a3, n7, a3
	lw	a4, 0(a3)
	blez	a4, .LBB3_65
# %bb.67:                               #   in Loop: Header=BB3_66 Depth=1
	slli	a5, a2, 3
	add	a4, a0, a5
	ld	a4, 0(a4)
	add	a5, a1, a5
	ld	a5, 0(a5)
	li	a6, 0
.LBB3_68:                               #   Parent Loop BB3_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a4)
	ld	t0, 0(a5)
	sw	s3, 0(a7)
	sw	s3, 4(a7)
	sw	s3, 8(a7)
	sw	zero, 0(t0)
	sw	zero, 4(t0)
	sw	zero, 8(t0)
	lw	a7, 0(a3)
	addi	a6, a6, 1
	addi	a5, a5, 8
	addi	a4, a4, 8
	blt	a6, a7, .LBB3_68
	j	.LBB3_65
.LBB3_69:
	lui	a0, %hi(wp_weight)
	ld	a0, %lo(wp_weight)(a0)
	lui	a1, %hi(wp_offset)
	ld	a1, %lo(wp_offset)(a1)
	ld	n6, 16(sp)                      # 8-byte Folded Reload
	beqz	n6, .LBB3_75
# %bb.70:                               # %.preheader12
	li	a2, 0
	j	.LBB3_72
.LBB3_71:                               #   in Loop: Header=BB3_72 Depth=1
	addi	a2, a2, 1
	beq	a2, n5, .LBB3_80
.LBB3_72:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_74 Depth 2
	slli	a3, a2, 2
	add	a3, n7, a3
	lw	a4, 0(a3)
	blez	a4, .LBB3_71
# %bb.73:                               #   in Loop: Header=BB3_72 Depth=1
	slli	a5, a2, 3
	add	a4, a0, a5
	ld	a4, 0(a4)
	add	a5, a1, a5
	ld	a5, 0(a5)
	li	a6, 0
.LBB3_74:                               #   Parent Loop BB3_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a4)
	ld	t0, 0(a5)
	sw	s3, 0(a7)
	sw	s3, 4(a7)
	sw	s3, 8(a7)
	sw	zero, 0(t0)
	sw	zero, 4(t0)
	sw	zero, 8(t0)
	lw	a7, 0(a3)
	addi	a6, a6, 1
	addi	a5, a5, 8
	addi	a4, a4, 8
	blt	a6, a7, .LBB3_74
	j	.LBB3_71
.LBB3_75:                               # %.preheader9
	li	a2, 0
	lui	a3, 18
	addiw	a3, a3, 56
	add	a3, sp, a3
	lui	a4, 19
	addiw	a4, a4, -1740
	add	a4, sp, a4
	j	.LBB3_77
.LBB3_76:                               #   in Loop: Header=BB3_77 Depth=1
	addi	a2, a2, 1
	addi	a3, a3, 384
	addi	a4, a4, 384
	beq	a2, n5, .LBB3_80
.LBB3_77:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_79 Depth 2
	slli	a5, a2, 2
	add	a5, n7, a5
	lw	a6, 0(a5)
	blez	a6, .LBB3_76
# %bb.78:                               #   in Loop: Header=BB3_77 Depth=1
	slli	a7, a2, 3
	add	a6, a0, a7
	ld	a6, 0(a6)
	add	a7, a1, a7
	ld	a7, 0(a7)
	li	t0, 0
	mv	t1, a4
	mv	t2, a3
.LBB3_79:                               #   Parent Loop BB3_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t3, 0(a6)
	ld	t4, 0(a7)
	lw	t5, -4(t1)
	lw	t6, -8(t2)
	sw	t5, 0(t3)
	sw	t6, 0(t4)
	lw	t5, 0(t1)
	lw	t6, -4(t2)
	sw	t5, 4(t3)
	sw	t6, 4(t4)
	lw	t5, 4(t1)
	lw	t6, 0(t2)
	sw	t5, 8(t3)
	sw	t6, 8(t4)
	addi	t0, t0, 1
	lw	t3, 0(a5)
	addi	a6, a6, 8
	addi	a7, a7, 8
	addi	t2, t2, 12
	addi	t1, t1, 12
	blt	t0, t3, .LBB3_79
	j	.LBB3_76
.LBB3_80:
	lui	a0, %hi(listXsize)
	lw	a4, %lo(listXsize)(a0)
	blez	a4, .LBB3_88
# %bb.81:
	lw	a5, 4(n7)
	blez	a5, .LBB3_88
# %bb.82:                               # %.preheader6
	lui	a0, %hi(wp_weight)
	ld	a0, %lo(wp_weight)(a0)
	lui	a1, %hi(wbp_weight)
	ld	a1, %lo(wbp_weight)(a1)
	li	a2, 0
	lui	a3, %hi(listXsize)
	j	.LBB3_84
.LBB3_83:                               #   in Loop: Header=BB3_84 Depth=1
	addi	a2, a2, 1
	bge	a2, a4, .LBB3_88
.LBB3_84:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_86 Depth 2
	blez	a5, .LBB3_83
# %bb.85:                               #   in Loop: Header=BB3_84 Depth=1
	ld	a4, 0(a0)
	slli	a5, a2, 3
	ld	a6, 0(a1)
	add	a4, a4, a5
	ld	a4, 0(a4)
	ld	t0, 8(a1)
	add	a6, a6, a5
	ld	a6, 0(a6)
	ld	a7, 8(a0)
	add	a5, t0, a5
	ld	t0, 0(a5)
	li	t1, 0
.LBB3_86:                               #   Parent Loop BB3_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a5, 0(a6)
	lw	t2, 0(a4)
	ld	t3, 0(a7)
	ld	t4, 0(t0)
	sw	t2, 0(a5)
	lw	t2, 0(t3)
	sw	t2, 0(t4)
	lw	t2, 4(a4)
	sw	t2, 4(a5)
	lw	t2, 4(t3)
	sw	t2, 4(t4)
	lw	t2, 8(a4)
	sw	t2, 8(a5)
	lw	a5, 8(t3)
	sw	a5, 8(t4)
	lw	a5, 4(n7)
	addi	t1, t1, 1
	addi	t0, t0, 8
	addi	a7, a7, 8
	addi	a6, a6, 8
	blt	t1, a5, .LBB3_86
# %bb.87:                               #   in Loop: Header=BB3_84 Depth=1
	lw	a4, %lo(listXsize)(a3)
	j	.LBB3_83
.LBB3_88:
	beqz	n6, .LBB3_91
.LBB3_89:
	li	a0, 0
.LBB3_90:
	lui	a1, 19
	addiw	a1, a1, -1344
	add	sp, sp, a1
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	ld	s1, 2008(sp)                    # 8-byte Folded Reload
	ld	s2, 2000(sp)                    # 8-byte Folded Reload
	ld	s3, 1992(sp)                    # 8-byte Folded Reload
	ld	s4, 1984(sp)                    # 8-byte Folded Reload
	ld	s5, 1976(sp)                    # 8-byte Folded Reload
	ld	s6, 1968(sp)                    # 8-byte Folded Reload
	ld	s7, 1960(sp)                    # 8-byte Folded Reload
	ld	s8, 1952(sp)                    # 8-byte Folded Reload
	ld	s9, 1944(sp)                    # 8-byte Folded Reload
	ld	s10, 1936(sp)                   # 8-byte Folded Reload
	ld	s11, 1928(sp)                   # 8-byte Folded Reload
	fld	fs0, 1920(sp)                   # 8-byte Folded Reload
	fld	fs1, 1912(sp)                   # 8-byte Folded Reload
	fld	fs2, 1904(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 2032
	ret
.LBB3_91:
	lui	a0, %hi(input)
	ld	a1, %lo(input)(a0)
	lw	a0, 44(a1)
	lui	a3, %hi(listXsize)
	lw	a2, %lo(listXsize)(a3)
	mv	a4, a0
	bge	a0, a2, .LBB3_104
# %bb.92:
	addi	a3, a3, %lo(listXsize)
	bnez	a0, .LBB3_105
.LBB3_93:
	lw	a3, 4(a3)
	lw	a1, 48(a1)
	sw	a2, 40(sp)
	bge	a0, a3, .LBB3_106
.LBB3_94:
	beqz	a1, .LBB3_96
.LBB3_95:
	mv	a3, a0
.LBB3_96:
	lui	a0, %hi(wp_weight)
	ld	a1, %lo(wp_weight)(a0)
	li	a2, 0
	sw	a3, 44(sp)
	addi	a3, sp, 40
.LBB3_97:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_99 Depth 2
	slli	a0, a2, 2
	add	a0, a3, a0
	lw	a4, 0(a0)
	blez	a4, .LBB3_103
# %bb.98:                               #   in Loop: Header=BB3_97 Depth=1
	slli	a0, a2, 3
	add	a0, a1, a0
	ld	a5, 0(a0)
.LBB3_99:                               #   Parent Loop BB3_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(a5)
	lw	a7, 0(a6)
	li	a0, 1
	bne	a7, s3, .LBB3_90
# %bb.100:                              #   in Loop: Header=BB3_99 Depth=2
	lw	a7, 4(a6)
	bne	a7, s3, .LBB3_90
# %bb.101:                              #   in Loop: Header=BB3_99 Depth=2
	lw	a6, 8(a6)
	bne	a6, s3, .LBB3_90
# %bb.102:                              #   in Loop: Header=BB3_99 Depth=2
	addi	a4, a4, -1
	addi	a5, a5, 8
	bnez	a4, .LBB3_99
.LBB3_103:                              #   in Loop: Header=BB3_97 Depth=1
	addi	a2, a2, 1
	bne	a2, n5, .LBB3_97
	j	.LBB3_89
.LBB3_104:
	mv	a4, a2
	addi	a3, a3, %lo(listXsize)
	beqz	a0, .LBB3_93
.LBB3_105:
	lw	a3, 4(a3)
	lw	a1, 48(a1)
	sw	a4, 40(sp)
	blt	a0, a3, .LBB3_94
.LBB3_106:
	mv	a0, a3
	bnez	a1, .LBB3_95
	j	.LBB3_96
.Lfunc_end3:
	.size	test_wp_B_slice, .Lfunc_end3-test_wp_B_slice
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
