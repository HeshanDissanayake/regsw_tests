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
	addi	sp, sp, -1696
	sd	ra, 1688(sp)                    # 8-byte Folded Spill
	sd	s0, 1680(sp)                    # 8-byte Folded Spill
	sd	s1, 1672(sp)                    # 8-byte Folded Spill
	sd	s2, 1664(sp)                    # 8-byte Folded Spill
	sd	s3, 1656(sp)                    # 8-byte Folded Spill
	sd	s4, 1648(sp)                    # 8-byte Folded Spill
	sd	s5, 1640(sp)                    # 8-byte Folded Spill
	sd	s6, 1632(sp)                    # 8-byte Folded Spill
	sd	s7, 1624(sp)                    # 8-byte Folded Spill
	sd	s8, 1616(sp)                    # 8-byte Folded Spill
	sd	s9, 1608(sp)                    # 8-byte Folded Spill
	sd	s10, 1600(sp)                   # 8-byte Folded Spill
	sd	s11, 1592(sp)                   # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	s0, %lo(img)(a1)
	lui	a1, 22
	addiw	a4, a1, 108
	add	a4, s0, a4
	lw	a1, 0(a4)
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	li	s3, 2
	beqz	a1, .LBB0_4
# %bb.1:
	lui	a0, 8
	addiw	a0, a0, -1192
	add	a0, s0, a0
	lw	a1, 12(s0)
	ld	a0, 0(a0)
	li	a2, 528
	mul	a2, a1, a2
	add	a0, a0, a2
	lw	a0, 424(a0)
	beqz	a0, .LBB0_4
# %bb.2:
	andi	a1, a1, 1
	li	s3, 4
	beqz	a1, .LBB0_4
# %bb.3:
	li	s3, 6
.LBB0_4:
	li	a1, 0
	lui	a0, %hi(luma_log_weight_denom)
	li	a2, 5
	sw	a2, %lo(luma_log_weight_denom)(a0)
	lui	a0, %hi(chroma_log_weight_denom)
	sw	a2, %lo(chroma_log_weight_denom)(a0)
	lui	a0, %hi(wp_luma_round)
	li	a2, 16
	sw	a2, %lo(wp_luma_round)(a0)
	lui	a0, %hi(wp_chroma_round)
	sw	a2, %lo(wp_chroma_round)(a0)
	lui	a0, %hi(wp_weight)
	ld	a2, %lo(wp_weight)(a0)
	lui	a0, %hi(wp_offset)
	ld	a3, %lo(wp_offset)(a0)
	addi	a5, sp, 56
	addi	a6, sp, 832
	lui	s4, %hi(listXsize)
	addi	s4, s4, %lo(listXsize)
	li	a7, 32
	j	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	addi	a1, a1, 1
	addi	a5, a5, 384
	addi	a6, a6, 384
	beq	a1, s3, .LBB0_9
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	slli	t0, a1, 2
	add	t0, s4, t0
	lw	a0, 0(t0)
	blez	a0, .LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	slli	a0, a1, 3
	add	t1, a2, a0
	ld	t1, 0(t1)
	add	a0, a3, a0
	ld	t2, 0(a0)
	li	t3, 0
	mv	t4, a6
	mv	t5, a5
.LBB0_8:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(t1)
	ld	t6, 0(t2)
	sw	zero, 0(t5)
	sw	zero, 4(t5)
	sw	zero, 8(t5)
	sw	a7, -8(t4)
	sw	a7, -4(t4)
	sw	a7, 0(t4)
	sw	a7, 0(a0)
	sw	zero, 0(t6)
	sw	a7, 4(a0)
	sw	zero, 4(t6)
	sw	a7, 8(a0)
	sw	zero, 8(t6)
	addi	t3, t3, 1
	lw	a0, 0(t0)
	addi	t2, t2, 8
	addi	t1, t1, 8
	addi	t5, t5, 12
	addi	t4, t4, 12
	blt	t3, a0, .LBB0_8
	j	.LBB0_5
.LBB0_9:
	lw	t0, 60(s0)
	fmv.d.x	fa5, zero
	fmv.d	fa4, fa5
	blez	t0, .LBB0_15
# %bb.10:
	lwu	a5, 52(s0)
	li	a1, 0
	lui	a0, %hi(imgY_org)
	ld	a2, %lo(imgY_org)(a0)
	sext.w	a3, a5
	slli	a5, a5, 1
	fmv.d.x	fa4, zero
	j	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	addi	a1, a1, 1
	beq	a1, t0, .LBB0_15
.LBB0_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	blez	a3, .LBB0_11
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	slli	a0, a1, 3
	add	a0, a2, a0
	ld	a6, 0(a0)
	add	a7, a6, a5
.LBB0_14:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a0, 0(a6)
	fcvt.d.wu	fa3, a0
	addi	a6, a6, 2
	fadd.d	fa4, fa4, fa3
	bne	a6, a7, .LBB0_14
	j	.LBB0_11
.LBB0_15:
	sd	s0, 24(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(.LCPI0_0)
	fld	fa3, %lo(.LCPI0_0)(a0)
	li	a2, 0
	fmul.d	fa3, fa4, fa3
	sd	t0, 16(sp)                      # 8-byte Folded Spill
	slli	a0, t0, 2
	addiw	a7, a0, 32
	lui	t3, 2
	addiw	a0, t3, -1760
	lui	a1, %hi(.LCPI0_1)
	fld	fa2, %lo(.LCPI0_1)(a1)
	li	s2, 32
	sd	s3, 32(sp)                      # 8-byte Folded Spill
	j	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	addi	a2, a2, 1
	ld	s3, 32(sp)                      # 8-byte Folded Reload
	lui	s4, %hi(listXsize)
	addi	s4, s4, %lo(listXsize)
	beq	a2, s3, .LBB0_52
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #         Child Loop BB0_49 Depth 4
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	slli	a1, a2, 2
	add	a1, s4, a1
	lw	s5, 0(a1)
	blez	s5, .LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	li	s6, 0
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	lw	a1, 52(a1)
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	slli	a2, a3, 3
	lui	a5, %hi(listX)
	addi	a5, a5, %lo(listX)
	add	a2, a5, a2
	ld	s7, 0(a2)
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	mulw	s8, a1, a2
	fcvt.d.w	fa1, s8
	lui	a2, %hi(wp_luma_round)
	lw	s9, %lo(wp_luma_round)(a2)
	lui	a2, %hi(luma_log_weight_denom)
	lw	s10, %lo(luma_log_weight_denom)(a2)
	slli	a1, a1, 2
	addiw	s11, a1, 32
	slli	a1, s8, 32
	srli	ra, a1, 31
	slli	a1, s11, 32
	srli	a6, a1, 31
	li	a1, 384
	mul	s3, a3, a1
	addi	s0, sp, 824
	add	s0, s0, s3
	addi	a1, sp, 56
	add	s3, a1, s3
	j	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_20 Depth=2
	addi	s6, s6, 1
	beq	s6, s5, .LBB0_16
.LBB0_20:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #         Child Loop BB0_49 Depth 4
	slli	t6, s6, 3
	add	a1, s7, t6
	ld	t4, 0(a1)
	add	t4, t4, a0
	ld	a5, 0(t4)
	li	a1, 12
	mul	a2, s6, a1
	blez	s8, .LBB0_26
# %bb.21:                               # %.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	add	a3, a5, ra
	mv	t0, a5
	fmv.d	fa0, fa5
.LBB0_22:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	a1, 0(t0)
	fcvt.d.wu	ft0, a1
	addi	t0, t0, 2
	fadd.d	fa0, fa0, ft0
	bne	t0, a3, .LBB0_22
# %bb.23:                               #   in Loop: Header=BB0_20 Depth=2
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	bnez	a1, .LBB0_27
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=2
	feq.d	a1, fa0, fa5
	bnez	a1, .LBB0_32
# %bb.25:                               #   in Loop: Header=BB0_20 Depth=2
	fdiv.d	fa0, fa3, fa0
	fadd.d	fa0, fa0, fa2
	fcvt.w.d	a3, fa0, rtz
	addiw	a1, a3, -128
	li	t0, -192
	bltu	a1, t0, .LBB0_33
	j	.LBB0_34
.LBB0_26:                               #   in Loop: Header=BB0_20 Depth=2
	fmv.d	fa0, fa5
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	beqz	a1, .LBB0_32
.LBB0_27:                               #   in Loop: Header=BB0_20 Depth=2
	fsub.d	fa0, fa4, fa0
	fdiv.d	fa0, fa0, fa1
	fadd.d	fa0, fa0, fa2
	fcvt.w.d	a3, fa0, rtz
	li	a1, 127
	blt	a3, a1, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_20 Depth=2
	li	a3, 127
.LBB0_29:                               #   in Loop: Header=BB0_20 Depth=2
	li	a1, -128
	blt	a1, a3, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_20 Depth=2
	li	a3, -128
.LBB0_31:                               #   in Loop: Header=BB0_20 Depth=2
	add	a1, s3, a2
	sw	a3, 0(a1)
	add	a1, s0, a2
	li	a3, 32
	j	.LBB0_35
.LBB0_32:                               #   in Loop: Header=BB0_20 Depth=2
	li	a3, 32
	addiw	a1, a3, -128
	li	t0, -192
	bgeu	a1, t0, .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_20 Depth=2
	li	a3, 32
.LBB0_34:                               #   in Loop: Header=BB0_20 Depth=2
	add	a1, s0, a2
.LBB0_35:                               #   in Loop: Header=BB0_20 Depth=2
	sw	a3, 0(a1)
	ld	t4, 8(t4)
	add	a1, s0, a2
	sw	s2, 4(a1)
	sw	s2, 8(a1)
	blez	s8, .LBB0_42
# %bb.36:                               #   in Loop: Header=BB0_20 Depth=2
	add	a1, s3, a2
	lw	s1, 0(a1)
	add	t1, t4, ra
	j	.LBB0_39
.LBB0_37:                               #   in Loop: Header=BB0_39 Depth=3
	li	t0, 0
.LBB0_38:                               #   in Loop: Header=BB0_39 Depth=3
	sh	t0, 0(t4)
	addi	t4, t4, 2
	addi	a5, a5, 2
	beq	t4, t1, .LBB0_42
.LBB0_39:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	a1, 0(a5)
	mul	a1, a3, a1
	add	a1, a1, s9
	sraw	a1, a1, s10
	addw	t0, a1, s1
	bltz	t0, .LBB0_37
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=3
	lw	t2, 312(a4)
	blt	t0, t2, .LBB0_38
# %bb.41:                               #   in Loop: Header=BB0_39 Depth=3
	mv	t0, t2
	j	.LBB0_38
.LBB0_42:                               #   in Loop: Header=BB0_20 Depth=2
	blez	a7, .LBB0_19
# %bb.43:                               #   in Loop: Header=BB0_20 Depth=2
	lui	a1, %hi(listX)
	ld	a1, %lo(listX)(a1)
	lui	a5, %hi(wp_luma_round)
	lw	a5, %lo(wp_luma_round)(a5)
	lui	t0, %hi(luma_log_weight_denom)
	lw	t4, %lo(luma_log_weight_denom)(t0)
	li	s1, 0
	add	t6, a1, t6
	add	a2, s3, a2
	j	.LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_45 Depth=3
	addi	s1, s1, 1
	beq	s1, a7, .LBB0_19
.LBB0_45:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_49 Depth 4
	blez	s11, .LBB0_44
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=3
	ld	a1, 0(t6)
	addiw	t0, t3, -1744
	add	a1, a1, t0
	ld	t0, 0(a1)
	ld	a1, 8(a1)
	slli	t1, s1, 3
	add	t0, t0, t1
	ld	s4, 0(t0)
	add	a1, a1, t1
	ld	t1, 0(a1)
	lw	t2, 0(a2)
	add	t0, t1, a6
	j	.LBB0_49
.LBB0_47:                               #   in Loop: Header=BB0_49 Depth=4
	li	t5, 0
.LBB0_48:                               #   in Loop: Header=BB0_49 Depth=4
	sh	t5, 0(t1)
	addi	t1, t1, 2
	addi	s4, s4, 2
	beq	t1, t0, .LBB0_44
.LBB0_49:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_45 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lhu	a1, 0(s4)
	mul	a1, a3, a1
	add	a1, a1, a5
	sraw	a1, a1, t4
	addw	t5, a1, t2
	bltz	t5, .LBB0_47
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=4
	lw	a1, 312(a4)
	blt	t5, a1, .LBB0_48
# %bb.51:                               #   in Loop: Header=BB0_49 Depth=4
	mv	t5, a1
	j	.LBB0_48
.LBB0_52:
	lui	a0, %hi(wp_weight)
	ld	a0, %lo(wp_weight)(a0)
	lui	a1, %hi(wp_offset)
	ld	a1, %lo(wp_offset)(a1)
	li	a2, 0
	addi	a3, sp, 64
	addi	a4, sp, 828
	j	.LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_54 Depth=1
	addi	a2, a2, 1
	addi	a3, a3, 384
	addi	a4, a4, 384
	beq	a2, s3, .LBB0_57
.LBB0_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_56 Depth 2
	slli	a5, a2, 2
	add	a5, s4, a5
	lw	a6, 0(a5)
	blez	a6, .LBB0_53
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=1
	slli	a7, a2, 3
	add	a6, a0, a7
	ld	a6, 0(a6)
	add	a7, a1, a7
	ld	a7, 0(a7)
	li	t0, 0
	mv	t1, a4
	mv	t2, a3
.LBB0_56:                               #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t3, 0(a6)
	ld	t4, 0(a7)
	lw	t5, -4(t1)
	lw	t6, -8(t2)
	sw	t5, 0(t3)
	sw	t6, 0(t4)
	lw	t5, 0(t1)
	lw	t6, -4(t2)
	lw	s0, 4(t1)
	lw	s1, 0(t2)
	sw	t5, 4(t3)
	sw	t6, 4(t4)
	sw	s0, 8(t3)
	sw	s1, 8(t4)
	addi	t0, t0, 1
	lw	t3, 0(a5)
	addi	a6, a6, 8
	addi	a7, a7, 8
	addi	t2, t2, 12
	addi	t1, t1, 12
	blt	t0, t3, .LBB0_56
	j	.LBB0_53
.LBB0_57:
	ld	ra, 1688(sp)                    # 8-byte Folded Reload
	ld	s0, 1680(sp)                    # 8-byte Folded Reload
	ld	s1, 1672(sp)                    # 8-byte Folded Reload
	ld	s2, 1664(sp)                    # 8-byte Folded Reload
	ld	s3, 1656(sp)                    # 8-byte Folded Reload
	ld	s4, 1648(sp)                    # 8-byte Folded Reload
	ld	s5, 1640(sp)                    # 8-byte Folded Reload
	ld	s6, 1632(sp)                    # 8-byte Folded Reload
	ld	s7, 1624(sp)                    # 8-byte Folded Reload
	ld	s8, 1616(sp)                    # 8-byte Folded Reload
	ld	s9, 1608(sp)                    # 8-byte Folded Reload
	ld	s10, 1600(sp)                   # 8-byte Folded Reload
	ld	s11, 1592(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1696
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
	ld	s11, %lo(img)(a0)
	lui	a0, 22
	addiw	s4, a0, 108
	add	s4, s11, s4
	lw	a0, 0(s4)
	li	ra, 2
	beqz	a0, .LBB1_4
# %bb.1:
	lui	a0, 8
	addiw	a0, a0, -1192
	add	a1, s11, a0
	lw	a0, 12(s11)
	ld	a1, 0(a1)
	li	a2, 528
	mul	a2, a0, a2
	add	a1, a1, a2
	lw	a1, 424(a1)
	beqz	a1, .LBB1_4
# %bb.2:
	andi	a0, a0, 1
	li	ra, 4
	beqz	a0, .LBB1_4
# %bb.3:
	li	ra, 6
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
	lui	s8, %hi(listXsize)
	addi	s8, s8, %lo(listXsize)
	j	.LBB1_6
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	addi	a1, a1, 1
	addi	a4, a4, 384
	addi	a5, a5, 384
	beq	a1, ra, .LBB1_9
.LBB1_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	slli	a6, a1, 2
	add	a6, s8, a6
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
	blez	a1, .LBB1_41
# %bb.10:
	lwu	a7, 4(s8)
	li	a2, 0
	sext.w	a3, a7
	lui	a5, %hi(listX)
	addi	a4, a5, %lo(listX)
	ld	a4, 8(a4)
	ld	a5, %lo(listX)(a5)
	lui	a6, %hi(enc_picture)
	ld	a6, %lo(enc_picture)(a6)
	slli	a7, a7, 3
	add	a7, a4, a7
	addi	t0, sp, 48
	lui	t1, 3
	addiw	t1, t1, 4
	li	t2, -1
	lui	t3, 4
	li	t4, -193
	li	t5, 64
	j	.LBB1_12
.LBB1_11:                               #   in Loop: Header=BB1_12 Depth=1
	addi	a2, a2, 1
	addi	t0, t0, 384
	beq	a2, a1, .LBB1_33
.LBB1_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	blez	a3, .LBB1_11
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=1
	slli	t6, a2, 3
	add	t6, a5, t6
	ld	t6, 0(t6)
	lw	t6, 4(t6)
	lw	s0, 4(a6)
	subw	s0, s0, t6
	li	s1, 127
	blt	s0, s1, .LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_12 Depth=1
	li	s0, 127
.LBB1_15:                               #   in Loop: Header=BB1_12 Depth=1
	li	s1, -128
	blt	s1, s0, .LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_12 Depth=1
	li	s0, -128
.LBB1_17:                               #   in Loop: Header=BB1_12 Depth=1
	mv	s1, t0
	mv	s3, a4
	j	.LBB1_19
.LBB1_18:                               #   in Loop: Header=BB1_19 Depth=2
	add	s5, s1, t1
	sw	s2, -4(s5)
	sw	s2, 0(s1)
	sw	s2, 0(s5)
	sw	s2, 4(s1)
	sw	s2, 4(s5)
	sw	s2, 8(s1)
	addi	s3, s3, 8
	addi	s1, s1, 12
	beq	s3, a7, .LBB1_11
.LBB1_19:                               #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s5, 0(s3)
	lw	s5, 4(s5)
	beq	s5, t6, .LBB1_18
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=2
	subw	s6, s5, t6
	li	s7, 127
	mv	s5, s6
	blt	s6, s7, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_19 Depth=2
	li	s5, 127
.LBB1_22:                               #   in Loop: Header=BB1_19 Depth=2
	li	s7, -128
	blt	s7, s5, .LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_19 Depth=2
	li	s5, -128
.LBB1_24:                               #   in Loop: Header=BB1_19 Depth=2
	slli	s7, s5, 56
	srli	s7, s7, 63
	add	s7, s5, s7
	slli	s7, s7, 56
	srai	s7, s7, 57
	bge	s6, t2, .LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_19 Depth=2
	neg	s7, s7
.LBB1_26:                               #   in Loop: Header=BB1_19 Depth=2
	add	s7, s7, t3
	slli	s7, s7, 48
	srai	s6, s7, 48
	slli	s5, s5, 48
	srai	s5, s5, 48
	divw	s5, s6, s5
	slli	s5, s5, 48
	srai	s5, s5, 48
	mul	s5, s0, s5
	addi	s5, s5, 32
	sraiw	s5, s5, 6
	li	s6, 1023
	bge	s5, s6, .LBB1_31
# %bb.27:                               #   in Loop: Header=BB1_19 Depth=2
	li	s6, -1024
	bge	s6, s5, .LBB1_32
.LBB1_28:                               #   in Loop: Header=BB1_19 Depth=2
	srai	s6, s5, 2
	addi	s7, s6, -129
	mv	s5, s2
	bltu	s7, t4, .LBB1_30
.LBB1_29:                               #   in Loop: Header=BB1_19 Depth=2
	mv	s5, s6
.LBB1_30:                               #   in Loop: Header=BB1_19 Depth=2
	add	s7, s1, t1
	sw	s5, -4(s7)
	sub	s6, t5, s5
	sw	s6, 0(s1)
	sw	s5, 0(s7)
	sw	s6, 4(s1)
	sw	s5, 4(s7)
	sw	s6, 8(s1)
	addi	s3, s3, 8
	addi	s1, s1, 12
	bne	s3, a7, .LBB1_19
	j	.LBB1_11
.LBB1_31:                               #   in Loop: Header=BB1_19 Depth=2
	li	s5, 1023
	li	s6, -1024
	blt	s6, s5, .LBB1_28
.LBB1_32:                               #   in Loop: Header=BB1_19 Depth=2
	li	s5, -1024
	srai	s6, s5, 2
	addi	s7, s6, -129
	mv	s5, s2
	bgeu	s7, t4, .LBB1_29
	j	.LBB1_30
.LBB1_33:
	lw	a2, 196(a0)
	li	a0, 2
	bne	a2, a0, .LBB1_47
# %bb.34:
	blez	a1, .LBB1_42
# %bb.35:
	li	a0, 0
	lui	a2, %hi(wbp_weight)
	ld	a2, %lo(wbp_weight)(a2)
	lw	a7, 4(s8)
	addi	a3, sp, 48
	lui	a4, 3
	addiw	a4, a4, 4
	lui	a5, %hi(listXsize)
	j	.LBB1_37
.LBB1_36:                               #   in Loop: Header=BB1_37 Depth=1
	addi	a0, a0, 1
	addi	a3, a3, 384
	bge	a0, a1, .LBB1_42
.LBB1_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_39 Depth 2
	blez	a7, .LBB1_36
# %bb.38:                               #   in Loop: Header=BB1_37 Depth=1
	ld	a1, 8(a2)
	ld	a6, 0(a2)
	slli	a7, a0, 3
	add	a1, a1, a7
	ld	a1, 0(a1)
	add	a6, a6, a7
	ld	a6, 0(a6)
	li	t0, 0
	mv	t1, a3
.LBB1_39:                               #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a1)
	ld	t2, 0(a6)
	add	t3, t1, a4
	lw	t4, -4(t3)
	lw	t5, 0(t1)
	sw	t4, 0(a7)
	sw	t5, 0(t2)
	lw	t4, 0(t3)
	lw	t5, 4(t1)
	lw	t3, 4(t3)
	lw	t6, 8(t1)
	sw	t4, 4(a7)
	sw	t5, 4(t2)
	sw	t3, 8(a7)
	sw	t6, 8(t2)
	lw	a7, 4(s8)
	addi	t0, t0, 1
	addi	a1, a1, 8
	addi	a6, a6, 8
	addi	t1, t1, 12
	blt	t0, a7, .LBB1_39
# %bb.40:                               #   in Loop: Header=BB1_37 Depth=1
	lw	a1, %lo(listXsize)(a5)
	j	.LBB1_36
.LBB1_41:
	lw	a2, 196(a0)
	li	a0, 2
	bne	a2, a0, .LBB1_47
.LBB1_42:
	lui	a0, %hi(wp_weight)
	ld	a0, %lo(wp_weight)(a0)
	lui	a1, %hi(wp_offset)
	ld	a1, %lo(wp_offset)(a1)
	li	a2, 0
	j	.LBB1_44
.LBB1_43:                               #   in Loop: Header=BB1_44 Depth=1
	addi	a2, a2, 1
	beq	a2, ra, .LBB1_53
.LBB1_44:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_46 Depth 2
	slli	a3, a2, 2
	add	a3, s8, a3
	lw	a4, 0(a3)
	blez	a4, .LBB1_43
# %bb.45:                               #   in Loop: Header=BB1_44 Depth=1
	slli	a5, a2, 3
	add	a4, a0, a5
	ld	a4, 0(a4)
	add	a5, a1, a5
	ld	a5, 0(a5)
	li	a6, 0
.LBB1_46:                               #   Parent Loop BB1_44 Depth=1
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
	blt	a6, a7, .LBB1_46
	j	.LBB1_43
.LBB1_47:
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	lw	s9, 60(s11)
	fmv.d.x	fs0, zero
	fmv.d	fa5, fs0
	blez	s9, .LBB1_59
# %bb.48:
	lwu	a3, 52(s11)
	li	a0, 0
	lui	a1, %hi(imgY_org)
	ld	a1, %lo(imgY_org)(a1)
	sext.w	a2, a3
	slli	a3, a3, 1
	fmv.d.x	fa5, zero
	j	.LBB1_50
.LBB1_49:                               #   in Loop: Header=BB1_50 Depth=1
	addi	a0, a0, 1
	beq	a0, s9, .LBB1_59
.LBB1_50:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_52 Depth 2
	blez	a2, .LBB1_49
# %bb.51:                               #   in Loop: Header=BB1_50 Depth=1
	slli	a4, a0, 3
	add	a4, a1, a4
	ld	a4, 0(a4)
	add	a5, a4, a3
.LBB1_52:                               #   Parent Loop BB1_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a6, 0(a4)
	fcvt.d.wu	fa4, a6
	addi	a4, a4, 2
	fadd.d	fa5, fa5, fa4
	bne	a4, a5, .LBB1_52
	j	.LBB1_49
.LBB1_53:
	lui	s0, %hi(listXsize)
	lw	a0, %lo(listXsize)(s0)
	blez	a0, .LBB1_56
# %bb.54:                               # %.preheader1
	li	s1, 0
	li	s2, 0
	lui	s3, %hi(listX)
	lui	a0, 2
	addiw	s4, a0, -1760
	lui	s5, %hi(img)
	addiw	s6, a0, -1744
.LBB1_55:                               # =>This Inner Loop Header: Depth=1
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
	blt	s2, a0, .LBB1_55
.LBB1_56:
	lw	a0, 4(s8)
	blez	a0, .LBB1_106
# %bb.57:                               # %.preheader
	li	s0, 0
	li	s1, 0
	lui	s2, %hi(listX+8)
	lui	a0, 2
	addiw	s3, a0, -1760
	lui	s4, %hi(img)
	addiw	s5, a0, -1744
.LBB1_58:                               # =>This Inner Loop Header: Depth=1
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
	lw	a0, 4(s8)
	addi	s1, s1, 1
	addi	s0, s0, 8
	blt	s1, a0, .LBB1_58
	j	.LBB1_106
.LBB1_59:
	li	a2, 0
	fcvt.d.wu	fa4, s2
	fmul.d	fs1, fa5, fa4
	slli	a0, s9, 2
	addiw	s8, a0, 32
	lui	a0, 2
	lui	a1, %hi(.LCPI1_0)
	fld	fs2, %lo(.LCPI1_0)(a1)
	addiw	s10, a0, -1760
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	j	.LBB1_61
.LBB1_60:                               #   in Loop: Header=BB1_61 Depth=1
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	addi	a2, a2, 1
	beq	a2, ra, .LBB1_88
.LBB1_61:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_64 Depth 2
                                        #       Child Loop BB1_66 Depth 3
                                        #       Child Loop BB1_75 Depth 3
                                        #       Child Loop BB1_81 Depth 3
                                        #         Child Loop BB1_85 Depth 4
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	slli	a0, a2, 2
	lui	a1, %hi(listXsize)
	addi	a1, a1, %lo(listXsize)
	add	a0, a1, a0
	lw	s6, 0(a0)
	blez	s6, .LBB1_60
# %bb.62:                               #   in Loop: Header=BB1_61 Depth=1
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	li	a0, 384
	mul	a1, a2, a0
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	lui	a0, 18
	addiw	a0, a0, 48
	add	a0, sp, a0
	add	a0, a0, a1
	lw	a1, 52(s11)
	slli	a2, a2, 3
	lui	a3, %hi(listX)
	addi	a3, a3, %lo(listX)
	add	a2, a3, a2
	ld	s1, 0(a2)
	mulw	s0, a1, s9
	lui	a2, %hi(wp_luma_round)
	lw	s5, %lo(wp_luma_round)(a2)
	lui	a2, %hi(luma_log_weight_denom)
	lw	s3, %lo(luma_log_weight_denom)(a2)
	slli	a1, a1, 2
	addiw	s7, a1, 32
	li	a1, 12
	mul	a2, s6, a1
	li	a1, 0
	mv	s9, s11
	mv	s11, ra
	call	memset
	mv	ra, s11
	mv	s11, s9
	ld	s9, 24(sp)                      # 8-byte Folded Reload
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
	j	.LBB1_64
.LBB1_63:                               #   in Loop: Header=BB1_64 Depth=2
	addi	a0, a0, 1
	beq	a0, s6, .LBB1_60
.LBB1_64:                               #   Parent Loop BB1_61 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_66 Depth 3
                                        #       Child Loop BB1_75 Depth 3
                                        #       Child Loop BB1_81 Depth 3
                                        #         Child Loop BB1_85 Depth 4
	slli	a4, a0, 3
	add	a4, s1, a4
	ld	a4, 0(a4)
	add	a5, a4, s10
	ld	a7, 0(a5)
	ld	t0, 8(a5)
	ld	a4, 16(a5)
	ld	a5, 24(a5)
	mv	t1, s2
	blez	s0, .LBB1_69
# %bb.65:                               # %.preheader16
                                        #   in Loop: Header=BB1_64 Depth=2
	add	a6, a7, a1
	mv	t1, a7
	fmv.d	fa5, fs0
.LBB1_66:                               #   Parent Loop BB1_61 Depth=1
                                        #     Parent Loop BB1_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	t2, 0(t1)
	fcvt.d.wu	fa4, t2
	addi	t1, t1, 2
	fadd.d	fa5, fa5, fa4
	bne	t1, a6, .LBB1_66
# %bb.67:                               #   in Loop: Header=BB1_64 Depth=2
	feq.d	a6, fa5, fs0
	mv	t1, s2
	bnez	a6, .LBB1_69
# %bb.68:                               #   in Loop: Header=BB1_64 Depth=2
	fdiv.d	fa5, fs1, fa5
	fadd.d	fa5, fa5, fs2
	fcvt.w.d	t1, fa5, rtz
.LBB1_69:                               #   in Loop: Header=BB1_64 Depth=2
	addiw	t2, t1, -128
	mv	a6, s2
	li	t3, -192
	bltu	t2, t3, .LBB1_71
# %bb.70:                               #   in Loop: Header=BB1_64 Depth=2
	mv	a6, t1
.LBB1_71:                               #   in Loop: Header=BB1_64 Depth=2
	li	t1, 12
	mul	t1, a0, t1
	add	t1, a3, t1
	sw	a6, 0(t1)
	sw	s2, 4(t1)
	sw	s2, 8(t1)
	blez	s0, .LBB1_78
# %bb.72:                               # %.preheader14
                                        #   in Loop: Header=BB1_64 Depth=2
	add	t1, t0, a1
	j	.LBB1_75
.LBB1_73:                               #   in Loop: Header=BB1_75 Depth=3
	li	t2, 0
.LBB1_74:                               #   in Loop: Header=BB1_75 Depth=3
	sh	t2, 0(t0)
	addi	t0, t0, 2
	addi	a7, a7, 2
	beq	t0, t1, .LBB1_78
.LBB1_75:                               #   Parent Loop BB1_61 Depth=1
                                        #     Parent Loop BB1_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	t2, 0(a7)
	mul	t2, a6, t2
	add	t2, t2, s5
	sraw	t2, t2, s3
	bltz	t2, .LBB1_73
# %bb.76:                               #   in Loop: Header=BB1_75 Depth=3
	lw	t3, 312(s4)
	blt	t2, t3, .LBB1_74
# %bb.77:                               #   in Loop: Header=BB1_75 Depth=3
	mv	t2, t3
	j	.LBB1_74
.LBB1_78:                               #   in Loop: Header=BB1_64 Depth=2
	blez	s8, .LBB1_63
# %bb.79:                               #   in Loop: Header=BB1_64 Depth=2
	lui	a7, %hi(wp_luma_round)
	lw	a7, %lo(wp_luma_round)(a7)
	lui	t0, %hi(luma_log_weight_denom)
	lw	t0, %lo(luma_log_weight_denom)(t0)
	li	t1, 0
	j	.LBB1_81
.LBB1_80:                               #   in Loop: Header=BB1_81 Depth=3
	addi	t1, t1, 1
	beq	t1, s8, .LBB1_63
.LBB1_81:                               #   Parent Loop BB1_61 Depth=1
                                        #     Parent Loop BB1_64 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_85 Depth 4
	blez	s7, .LBB1_80
# %bb.82:                               #   in Loop: Header=BB1_81 Depth=3
	slli	t2, t1, 3
	add	t3, a4, t2
	add	t2, a5, t2
	ld	t2, 0(t2)
	ld	t3, 0(t3)
	add	t4, t2, a2
	j	.LBB1_85
.LBB1_83:                               #   in Loop: Header=BB1_85 Depth=4
	li	t5, 0
.LBB1_84:                               #   in Loop: Header=BB1_85 Depth=4
	sh	t5, 0(t2)
	addi	t2, t2, 2
	addi	t3, t3, 2
	beq	t2, t4, .LBB1_80
.LBB1_85:                               #   Parent Loop BB1_61 Depth=1
                                        #     Parent Loop BB1_64 Depth=2
                                        #       Parent Loop BB1_81 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lhu	t5, 0(t3)
	mul	t5, a6, t5
	add	t5, t5, a7
	sraw	t5, t5, t0
	bltz	t5, .LBB1_83
# %bb.86:                               #   in Loop: Header=BB1_85 Depth=4
	lw	t6, 312(s4)
	blt	t5, t6, .LBB1_84
# %bb.87:                               #   in Loop: Header=BB1_85 Depth=4
	mv	t5, t6
	j	.LBB1_84
.LBB1_88:
	lui	a0, %hi(wp_weight)
	ld	a0, %lo(wp_weight)(a0)
	lui	a1, %hi(wp_offset)
	ld	a1, %lo(wp_offset)(a1)
	li	a2, 1
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	bne	a3, a2, .LBB1_94
# %bb.89:                               # %.preheader7
	li	a2, 0
	lui	a3, 18
	addiw	a3, a3, 56
	add	a3, sp, a3
	lui	a4, 19
	addiw	a4, a4, -1740
	add	a4, sp, a4
	lui	s3, %hi(listXsize)
	addi	s3, s3, %lo(listXsize)
	j	.LBB1_91
.LBB1_90:                               #   in Loop: Header=BB1_91 Depth=1
	addi	a2, a2, 1
	addi	a3, a3, 384
	addi	a4, a4, 384
	beq	a2, ra, .LBB1_99
.LBB1_91:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_93 Depth 2
	slli	a5, a2, 2
	add	a5, s3, a5
	lw	a6, 0(a5)
	blez	a6, .LBB1_90
# %bb.92:                               #   in Loop: Header=BB1_91 Depth=1
	slli	a7, a2, 3
	add	a6, a0, a7
	ld	a6, 0(a6)
	add	a7, a1, a7
	ld	a7, 0(a7)
	li	t0, 0
	mv	t1, a4
	mv	t2, a3
.LBB1_93:                               #   Parent Loop BB1_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t3, 0(a6)
	ld	t4, 0(a7)
	lw	t5, -4(t1)
	lw	t6, -8(t2)
	sw	t5, 0(t3)
	sw	t6, 0(t4)
	lw	t5, 0(t1)
	lw	t6, -4(t2)
	lw	s0, 4(t1)
	lw	s1, 0(t2)
	sw	t5, 4(t3)
	sw	t6, 4(t4)
	sw	s0, 8(t3)
	sw	s1, 8(t4)
	addi	t0, t0, 1
	lw	t3, 0(a5)
	addi	a6, a6, 8
	addi	a7, a7, 8
	addi	t2, t2, 12
	addi	t1, t1, 12
	blt	t0, t3, .LBB1_93
	j	.LBB1_90
.LBB1_94:                               # %.preheader10
	li	a2, 0
	lui	s3, %hi(listXsize)
	addi	s3, s3, %lo(listXsize)
	j	.LBB1_96
.LBB1_95:                               #   in Loop: Header=BB1_96 Depth=1
	addi	a2, a2, 1
	beq	a2, ra, .LBB1_99
.LBB1_96:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_98 Depth 2
	slli	a3, a2, 2
	add	a3, s3, a3
	lw	a4, 0(a3)
	blez	a4, .LBB1_95
# %bb.97:                               #   in Loop: Header=BB1_96 Depth=1
	slli	a5, a2, 3
	add	a4, a0, a5
	ld	a4, 0(a4)
	add	a5, a1, a5
	ld	a5, 0(a5)
	li	a6, 0
.LBB1_98:                               #   Parent Loop BB1_96 Depth=1
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
	blt	a6, a7, .LBB1_98
	j	.LBB1_95
.LBB1_99:
	lui	a0, %hi(listXsize)
	lw	a4, %lo(listXsize)(a0)
	blez	a4, .LBB1_106
# %bb.100:
	lui	a1, %hi(wp_weight)
	ld	a1, %lo(wp_weight)(a1)
	lui	a2, %hi(wbp_weight)
	ld	a2, %lo(wbp_weight)(a2)
	lw	t0, 4(s3)
	li	a3, 0
	j	.LBB1_102
.LBB1_101:                              #   in Loop: Header=BB1_102 Depth=1
	addi	a3, a3, 1
	bge	a3, a4, .LBB1_106
.LBB1_102:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_104 Depth 2
	blez	t0, .LBB1_101
# %bb.103:                              #   in Loop: Header=BB1_102 Depth=1
	ld	a4, 0(a1)
	slli	a7, a3, 3
	ld	a5, 0(a2)
	add	a4, a4, a7
	ld	a4, 0(a4)
	ld	t0, 8(a2)
	add	a5, a5, a7
	ld	a5, 0(a5)
	ld	a6, 8(a1)
	add	a7, t0, a7
	ld	a7, 0(a7)
	li	t1, 0
.LBB1_104:                              #   Parent Loop BB1_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a5)
	lw	t2, 0(a4)
	ld	t3, 0(a6)
	ld	t4, 0(a7)
	sw	t2, 0(t0)
	lw	t2, 0(t3)
	sw	t2, 0(t4)
	lw	t2, 4(a4)
	sw	t2, 4(t0)
	lw	t2, 4(t3)
	sw	t2, 4(t4)
	lw	t2, 8(a4)
	sw	t2, 8(t0)
	lw	t0, 8(t3)
	sw	t0, 8(t4)
	lw	t0, 4(s3)
	addi	t1, t1, 1
	addi	a7, a7, 8
	addi	a6, a6, 8
	addi	a5, a5, 8
	blt	t1, t0, .LBB1_104
# %bb.105:                              #   in Loop: Header=BB1_102 Depth=1
	lw	a4, %lo(listXsize)(a0)
	j	.LBB1_101
.LBB1_106:
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
	addi	sp, sp, -1632
	sd	s0, 1624(sp)                    # 8-byte Folded Spill
	sd	s1, 1616(sp)                    # 8-byte Folded Spill
	sd	s2, 1608(sp)                    # 8-byte Folded Spill
	sd	s3, 1600(sp)                    # 8-byte Folded Spill
	sd	s4, 1592(sp)                    # 8-byte Folded Spill
	sd	s5, 1584(sp)                    # 8-byte Folded Spill
	sd	s6, 1576(sp)                    # 8-byte Folded Spill
	sd	s7, 1568(sp)                    # 8-byte Folded Spill
	sd	s8, 1560(sp)                    # 8-byte Folded Spill
	sd	s9, 1552(sp)                    # 8-byte Folded Spill
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
	mv	s0, t0
.LBB2_8:                                #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s1, 0(t3)
	ld	s2, 0(t4)
	sw	zero, 0(t6)
	sw	zero, 4(t6)
	sw	zero, 8(t6)
	sw	t1, -8(s0)
	sw	t1, 0(s1)
	sw	zero, 0(s2)
	sw	t1, -4(s0)
	sw	t1, 4(s1)
	sw	zero, 4(s2)
	sw	t1, 0(s0)
	sw	t1, 8(s1)
	sw	zero, 8(s2)
	addi	t5, t5, 1
	lw	s1, 0(t2)
	addi	s0, s0, 12
	addi	t4, t4, 8
	addi	t3, t3, 8
	addi	t6, t6, 12
	blt	t5, s1, .LBB2_8
	j	.LBB2_5
.LBB2_9:
	lw	a4, 60(a3)
	fmv.d.x	fa5, zero
	fmv.d	fa4, fa5
	blez	a4, .LBB2_15
# %bb.10:
	lwu	t0, 52(a3)
	li	a5, 0
	lui	a6, %hi(imgY_org)
	ld	a6, %lo(imgY_org)(a6)
	sext.w	a7, t0
	slli	t0, t0, 1
	fmv.d.x	fa4, zero
	j	.LBB2_12
.LBB2_11:                               #   in Loop: Header=BB2_12 Depth=1
	addi	a5, a5, 1
	beq	a5, a4, .LBB2_15
.LBB2_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
	blez	a7, .LBB2_11
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=1
	slli	t1, a5, 3
	add	t1, a6, t1
	ld	t1, 0(t1)
	add	t2, t1, t0
.LBB2_14:                               #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	t3, 0(t1)
	fcvt.d.wu	fa3, t3
	addi	t1, t1, 2
	fadd.d	fa4, fa4, fa3
	bne	t1, t2, .LBB2_14
	j	.LBB2_11
.LBB2_15:
	lui	a5, %hi(.LCPI2_0)
	fld	fa3, %lo(.LCPI2_0)(a5)
	li	a5, 0
	fmul.d	fa3, fa4, fa3
	lui	a6, %hi(listX)
	addi	a6, a6, %lo(listX)
	lui	a7, 2
	lui	t0, %hi(.LCPI2_1)
	fld	fa2, %lo(.LCPI2_1)(t0)
	li	t0, 12
	li	t1, 384
	addi	t2, sp, 784
	li	t3, -192
	li	t4, 32
	addi	t5, sp, 16
	j	.LBB2_17
.LBB2_16:                               #   in Loop: Header=BB2_17 Depth=1
	addi	a5, a5, 1
	beq	a5, a1, .LBB2_35
.LBB2_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_21 Depth 2
                                        #       Child Loop BB2_23 Depth 3
	slli	t6, a5, 2
	add	t6, a2, t6
	lw	t6, 0(t6)
	blez	t6, .LBB2_16
# %bb.18:                               #   in Loop: Header=BB2_17 Depth=1
	li	s0, 0
	lw	s2, 52(a3)
	slli	s1, a5, 3
	add	s1, a6, s1
	ld	s1, 0(s1)
	mulw	s2, s2, a4
	fcvt.d.w	fa1, s2
	slli	s3, s2, 32
	srli	s3, s3, 31
	mul	s5, a5, t1
	add	s4, t2, s5
	add	s5, t5, s5
	j	.LBB2_21
.LBB2_19:                               #   in Loop: Header=BB2_21 Depth=2
	add	s8, s5, s6
	sw	s7, 0(s8)
	add	s7, s4, s6
	sw	t4, 0(s7)
.LBB2_20:                               #   in Loop: Header=BB2_21 Depth=2
	add	s6, s4, s6
	sw	t4, 4(s6)
	addi	s0, s0, 1
	sw	t4, 8(s6)
	beq	s0, t6, .LBB2_16
.LBB2_21:                               #   Parent Loop BB2_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_23 Depth 3
	mul	s6, s0, t0
	blez	s2, .LBB2_27
# %bb.22:                               # %.preheader
                                        #   in Loop: Header=BB2_21 Depth=2
	slli	s7, s0, 3
	add	s7, s1, s7
	ld	s7, 0(s7)
	add	s7, s7, a7
	ld	s7, -1760(s7)
	add	s8, s7, s3
	fmv.d	fa0, fa5
.LBB2_23:                               #   Parent Loop BB2_17 Depth=1
                                        #     Parent Loop BB2_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	s9, 0(s7)
	fcvt.d.wu	ft0, s9
	addi	s7, s7, 2
	fadd.d	fa0, fa0, ft0
	bne	s7, s8, .LBB2_23
# %bb.24:                               #   in Loop: Header=BB2_21 Depth=2
	bnez	a0, .LBB2_28
# %bb.25:                               #   in Loop: Header=BB2_21 Depth=2
	feq.d	s7, fa0, fa5
	bnez	s7, .LBB2_32
# %bb.26:                               #   in Loop: Header=BB2_21 Depth=2
	fdiv.d	fa0, fa3, fa0
	fadd.d	fa0, fa0, fa2
	fcvt.w.d	s7, fa0, rtz
	addiw	s8, s7, -128
	bltu	s8, t3, .LBB2_33
	j	.LBB2_34
.LBB2_27:                               #   in Loop: Header=BB2_21 Depth=2
	fmv.d	fa0, fa5
	beqz	a0, .LBB2_32
.LBB2_28:                               #   in Loop: Header=BB2_21 Depth=2
	fsub.d	fa0, fa4, fa0
	fdiv.d	fa0, fa0, fa1
	fadd.d	fa0, fa0, fa2
	fcvt.w.d	s7, fa0, rtz
	li	s8, 127
	blt	s7, s8, .LBB2_30
# %bb.29:                               #   in Loop: Header=BB2_21 Depth=2
	li	s7, 127
.LBB2_30:                               #   in Loop: Header=BB2_21 Depth=2
	li	s8, -128
	blt	s8, s7, .LBB2_19
# %bb.31:                               #   in Loop: Header=BB2_21 Depth=2
	li	s7, -128
	j	.LBB2_19
.LBB2_32:                               #   in Loop: Header=BB2_21 Depth=2
	li	s7, 32
	addiw	s8, s7, -128
	bgeu	s8, t3, .LBB2_34
.LBB2_33:                               #   in Loop: Header=BB2_21 Depth=2
	li	s7, 32
.LBB2_34:                               #   in Loop: Header=BB2_21 Depth=2
	add	s8, s4, s6
	sw	s7, 0(s8)
	j	.LBB2_20
.LBB2_35:
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
.LBB2_36:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_38 Depth 2
	slli	a0, a3, 2
	add	a0, a2, a0
	lw	t3, 0(a0)
	blez	t3, .LBB2_56
# %bb.37:                               #   in Loop: Header=BB2_36 Depth=1
	lw	t4, 1928(a4)
	mv	t5, a7
	mv	t6, a6
.LBB2_38:                               #   Parent Loop BB2_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	t4, .LBB2_40
# %bb.39:                               #   in Loop: Header=BB2_38 Depth=2
	lw	a0, 4(a5)
	bne	a0, t1, .LBB2_43
.LBB2_40:                               #   in Loop: Header=BB2_38 Depth=2
	lw	s0, -4(t6)
	li	a0, 1
	bne	s0, t0, .LBB2_58
# %bb.41:                               #   in Loop: Header=BB2_38 Depth=2
	lw	s0, -8(t5)
	bnez	s0, .LBB2_58
# %bb.42:                               #   in Loop: Header=BB2_38 Depth=2
	bnez	t4, .LBB2_45
	j	.LBB2_46
.LBB2_43:                               #   in Loop: Header=BB2_38 Depth=2
	lw	s0, -4(t6)
	li	a0, 1
	bne	s0, t0, .LBB2_58
# %bb.44:                               #   in Loop: Header=BB2_38 Depth=2
	lw	s0, -8(t5)
	sraiw	s1, s0, 31
	xor	s0, s0, s1
	subw	s0, s0, s1
	bltu	t2, s0, .LBB2_58
.LBB2_45:                               #   in Loop: Header=BB2_38 Depth=2
	lw	a0, 4(a5)
	bne	a0, t1, .LBB2_49
.LBB2_46:                               #   in Loop: Header=BB2_38 Depth=2
	lw	s0, 0(t6)
	li	a0, 1
	bne	s0, t0, .LBB2_58
# %bb.47:                               #   in Loop: Header=BB2_38 Depth=2
	lw	s0, -4(t5)
	bnez	s0, .LBB2_58
# %bb.48:                               #   in Loop: Header=BB2_38 Depth=2
	bnez	t4, .LBB2_51
	j	.LBB2_52
.LBB2_49:                               #   in Loop: Header=BB2_38 Depth=2
	lw	s0, 0(t6)
	li	a0, 1
	bne	s0, t0, .LBB2_58
# %bb.50:                               #   in Loop: Header=BB2_38 Depth=2
	lw	s0, -4(t5)
	sraiw	s1, s0, 31
	xor	s0, s0, s1
	subw	s0, s0, s1
	bltu	t2, s0, .LBB2_58
.LBB2_51:                               #   in Loop: Header=BB2_38 Depth=2
	lw	a0, 4(a5)
	bne	a0, t1, .LBB2_53
.LBB2_52:                               #   in Loop: Header=BB2_38 Depth=2
	lw	a0, 0(t5)
	snez	s0, a0
	lw	s1, 4(t6)
	li	a0, 1
	beq	s1, t0, .LBB2_54
	j	.LBB2_58
.LBB2_53:                               #   in Loop: Header=BB2_38 Depth=2
	lw	a0, 0(t5)
	sraiw	s0, a0, 31
	xor	a0, a0, s0
	subw	a0, a0, s0
	sltiu	a0, a0, 3
	xori	s0, a0, 1
	lw	s1, 4(t6)
	li	a0, 1
	bne	s1, t0, .LBB2_58
.LBB2_54:                               #   in Loop: Header=BB2_38 Depth=2
	bnez	s0, .LBB2_58
# %bb.55:                               #   in Loop: Header=BB2_38 Depth=2
	addi	t6, t6, 12
	addi	t3, t3, -1
	addi	t5, t5, 12
	bnez	t3, .LBB2_38
.LBB2_56:                               #   in Loop: Header=BB2_36 Depth=1
	addi	a3, a3, 1
	addi	a6, a6, 384
	addi	a7, a7, 384
	bne	a3, a1, .LBB2_36
# %bb.57:
	li	a0, 0
.LBB2_58:
	ld	s0, 1624(sp)                    # 8-byte Folded Reload
	ld	s1, 1616(sp)                    # 8-byte Folded Reload
	ld	s2, 1608(sp)                    # 8-byte Folded Reload
	ld	s3, 1600(sp)                    # 8-byte Folded Reload
	ld	s4, 1592(sp)                    # 8-byte Folded Reload
	ld	s5, 1584(sp)                    # 8-byte Folded Reload
	ld	s6, 1576(sp)                    # 8-byte Folded Reload
	ld	s7, 1568(sp)                    # 8-byte Folded Reload
	ld	s8, 1560(sp)                    # 8-byte Folded Reload
	ld	s9, 1552(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 1632
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
	lui	a1, 19
	addiw	a1, a1, -1360
	sub	sp, sp, a1
	lui	a1, %hi(img)
	ld	ra, %lo(img)(a1)
	lui	a1, 22
	add	a1, ra, a1
	lw	a1, 108(a1)
	mv	s9, a0
	li	s1, 2
	beqz	a1, .LBB3_4
# %bb.1:
	lui	a0, 8
	addiw	a0, a0, -1192
	add	a1, ra, a0
	lw	a0, 12(ra)
	ld	a1, 0(a1)
	li	a2, 528
	mul	a2, a0, a2
	add	a1, a1, a2
	lw	a1, 424(a1)
	beqz	a1, .LBB3_4
# %bb.2:
	andi	a0, a0, 1
	li	s1, 4
	beqz	a0, .LBB3_4
# %bb.3:
	li	s1, 6
.LBB3_4:
	li	a0, 0
	addi	a1, s9, -1
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
	sllw	s2, a2, a3
	lui	a1, %hi(wp_weight)
	ld	a1, %lo(wp_weight)(a1)
	lui	a2, %hi(wp_offset)
	ld	a2, %lo(wp_offset)(a2)
	lui	a3, 18
	addiw	a3, a3, 32
	add	a3, sp, a3
	lui	a4, 19
	addiw	a4, a4, -1752
	add	a4, sp, a4
	lui	s3, %hi(listXsize)
	addi	s3, s3, %lo(listXsize)
	j	.LBB3_6
.LBB3_5:                                #   in Loop: Header=BB3_6 Depth=1
	addi	a0, a0, 1
	addi	a3, a3, 384
	addi	a4, a4, 384
	beq	a0, s1, .LBB3_9
.LBB3_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
	slli	a5, a0, 2
	add	a5, s3, a5
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
	sw	s2, -8(t1)
	sw	s2, -4(t1)
	sw	s2, 0(t1)
	sw	s2, 0(t3)
	sw	zero, 0(t4)
	sw	s2, 4(t3)
	sw	zero, 4(t4)
	sw	s2, 8(t3)
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
	blez	a0, .LBB3_41
# %bb.10:
	lwu	a6, 4(s3)
	li	a1, 0
	sext.w	a2, a6
	lui	a4, %hi(listX)
	addi	a3, a4, %lo(listX)
	ld	a3, 8(a3)
	ld	a4, %lo(listX)(a4)
	lui	a5, %hi(enc_picture)
	ld	a5, %lo(enc_picture)(a5)
	slli	a6, a6, 3
	add	a6, a3, a6
	addi	a7, sp, 32
	lui	t0, 3
	addiw	t0, t0, 4
	li	t1, -1
	lui	t2, 4
	li	t3, -193
	li	t4, 64
	j	.LBB3_12
.LBB3_11:                               #   in Loop: Header=BB3_12 Depth=1
	addi	a1, a1, 1
	addi	a7, a7, 384
	beq	a1, a0, .LBB3_33
.LBB3_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_19 Depth 2
	blez	a2, .LBB3_11
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=1
	slli	t5, a1, 3
	add	t5, a4, t5
	ld	t5, 0(t5)
	lw	t5, 4(t5)
	lw	t6, 4(a5)
	subw	t6, t6, t5
	li	s0, 127
	blt	t6, s0, .LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_12 Depth=1
	li	t6, 127
.LBB3_15:                               #   in Loop: Header=BB3_12 Depth=1
	li	s0, -128
	blt	s0, t6, .LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_12 Depth=1
	li	t6, -128
.LBB3_17:                               #   in Loop: Header=BB3_12 Depth=1
	mv	s5, a7
	mv	s0, a3
	j	.LBB3_19
.LBB3_18:                               #   in Loop: Header=BB3_19 Depth=2
	sw	s2, -4(s4)
	sw	s2, 0(s5)
	sw	s2, 0(s4)
	sw	s2, 4(s5)
	sw	s2, 4(s4)
	sw	s2, 8(s5)
	addi	s0, s0, 8
	addi	s5, s5, 12
	beq	s0, a6, .LBB3_11
.LBB3_19:                               #   Parent Loop BB3_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s4, 0(s0)
	lw	s6, 4(s4)
	add	s4, s5, t0
	beq	s6, t5, .LBB3_18
# %bb.20:                               #   in Loop: Header=BB3_19 Depth=2
	subw	s7, s6, t5
	li	s8, 127
	mv	s6, s7
	blt	s7, s8, .LBB3_22
# %bb.21:                               #   in Loop: Header=BB3_19 Depth=2
	li	s6, 127
.LBB3_22:                               #   in Loop: Header=BB3_19 Depth=2
	li	s8, -128
	blt	s8, s6, .LBB3_24
# %bb.23:                               #   in Loop: Header=BB3_19 Depth=2
	li	s6, -128
.LBB3_24:                               #   in Loop: Header=BB3_19 Depth=2
	slli	s8, s6, 56
	srli	s8, s8, 63
	add	s8, s6, s8
	slli	s8, s8, 56
	srai	s8, s8, 57
	bge	s7, t1, .LBB3_26
# %bb.25:                               #   in Loop: Header=BB3_19 Depth=2
	neg	s8, s8
.LBB3_26:                               #   in Loop: Header=BB3_19 Depth=2
	add	s8, s8, t2
	slli	s8, s8, 48
	srai	s7, s8, 48
	slli	s6, s6, 48
	srai	s6, s6, 48
	divw	s6, s7, s6
	slli	s6, s6, 48
	srai	s6, s6, 48
	mul	s6, t6, s6
	addi	s6, s6, 32
	sraiw	s6, s6, 6
	li	s7, 1023
	bge	s6, s7, .LBB3_31
# %bb.27:                               #   in Loop: Header=BB3_19 Depth=2
	li	s7, -1024
	bge	s7, s6, .LBB3_32
.LBB3_28:                               #   in Loop: Header=BB3_19 Depth=2
	srai	s6, s6, 2
	addi	s7, s6, -129
	bgeu	s7, t3, .LBB3_30
.LBB3_29:                               #   in Loop: Header=BB3_19 Depth=2
	li	s6, 32
.LBB3_30:                               #   in Loop: Header=BB3_19 Depth=2
	sw	s6, -4(s4)
	sub	s7, t4, s6
	sw	s7, 0(s5)
	sw	s6, 0(s4)
	sw	s7, 4(s5)
	sw	s6, 4(s4)
	sw	s7, 8(s5)
	addi	s0, s0, 8
	addi	s5, s5, 12
	bne	s0, a6, .LBB3_19
	j	.LBB3_11
.LBB3_31:                               #   in Loop: Header=BB3_19 Depth=2
	li	s6, 1023
	li	s7, -1024
	blt	s7, s6, .LBB3_28
.LBB3_32:                               #   in Loop: Header=BB3_19 Depth=2
	li	s6, -1024
	srai	s6, s6, 2
	addi	s7, s6, -129
	bltu	s7, t3, .LBB3_29
	j	.LBB3_30
.LBB3_33:
	li	a1, 1
	bne	s9, a1, .LBB3_47
# %bb.34:
	blez	a0, .LBB3_42
# %bb.35:
	li	a1, 0
	lui	a2, %hi(wbp_weight)
	ld	a2, %lo(wbp_weight)(a2)
	lw	a7, 4(s3)
	addi	a3, sp, 32
	lui	a4, 3
	addiw	a4, a4, 4
	lui	a5, %hi(listXsize)
	j	.LBB3_37
.LBB3_36:                               #   in Loop: Header=BB3_37 Depth=1
	addi	a1, a1, 1
	addi	a3, a3, 384
	bge	a1, a0, .LBB3_42
.LBB3_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_39 Depth 2
	blez	a7, .LBB3_36
# %bb.38:                               #   in Loop: Header=BB3_37 Depth=1
	ld	a0, 8(a2)
	ld	a6, 0(a2)
	slli	a7, a1, 3
	add	a0, a0, a7
	ld	a0, 0(a0)
	add	a6, a6, a7
	ld	a6, 0(a6)
	li	t0, 0
	mv	t1, a3
.LBB3_39:                               #   Parent Loop BB3_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a0)
	ld	t2, 0(a6)
	add	t3, t1, a4
	lw	t4, -4(t3)
	lw	t5, 0(t1)
	sw	t4, 0(a7)
	sw	t5, 0(t2)
	lw	t4, 0(t3)
	lw	t5, 4(t1)
	lw	t3, 4(t3)
	lw	t6, 8(t1)
	sw	t4, 4(a7)
	sw	t5, 4(t2)
	sw	t3, 8(a7)
	sw	t6, 8(t2)
	lw	a7, 4(s3)
	addi	t0, t0, 1
	addi	a0, a0, 8
	addi	a6, a6, 8
	addi	t1, t1, 12
	blt	t0, a7, .LBB3_39
# %bb.40:                               #   in Loop: Header=BB3_37 Depth=1
	lw	a0, %lo(listXsize)(a5)
	j	.LBB3_36
.LBB3_41:
	li	a0, 1
	bne	s9, a0, .LBB3_47
.LBB3_42:
	lui	a0, %hi(wp_weight)
	ld	a0, %lo(wp_weight)(a0)
	lui	a1, %hi(wp_offset)
	ld	a1, %lo(wp_offset)(a1)
	li	a2, 0
	j	.LBB3_44
.LBB3_43:                               #   in Loop: Header=BB3_44 Depth=1
	addi	a2, a2, 1
	beq	a2, s1, .LBB3_83
.LBB3_44:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_46 Depth 2
	slli	a3, a2, 2
	add	a3, s3, a3
	lw	a4, 0(a3)
	blez	a4, .LBB3_43
# %bb.45:                               #   in Loop: Header=BB3_44 Depth=1
	slli	a5, a2, 3
	add	a4, a0, a5
	ld	a4, 0(a4)
	add	a5, a1, a5
	ld	a5, 0(a5)
	li	a6, 0
.LBB3_46:                               #   Parent Loop BB3_44 Depth=1
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
	blt	a6, a7, .LBB3_46
	j	.LBB3_43
.LBB3_47:
	lw	a7, 60(ra)
	fmv.d.x	fs0, zero
	fmv.d	fa5, fs0
	blez	a7, .LBB3_53
# %bb.48:
	lwu	a3, 52(ra)
	li	a0, 0
	lui	a1, %hi(imgY_org)
	ld	a1, %lo(imgY_org)(a1)
	sext.w	a2, a3
	slli	a3, a3, 1
	fmv.d.x	fa5, zero
	j	.LBB3_50
.LBB3_49:                               #   in Loop: Header=BB3_50 Depth=1
	addi	a0, a0, 1
	beq	a0, a7, .LBB3_53
.LBB3_50:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_52 Depth 2
	blez	a2, .LBB3_49
# %bb.51:                               #   in Loop: Header=BB3_50 Depth=1
	slli	a4, a0, 3
	add	a4, a1, a4
	ld	a4, 0(a4)
	add	a5, a4, a3
.LBB3_52:                               #   Parent Loop BB3_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a6, 0(a4)
	fcvt.d.wu	fa4, a6
	addi	a4, a4, 2
	fadd.d	fa5, fa5, fa4
	bne	a4, a5, .LBB3_52
	j	.LBB3_49
.LBB3_53:
	sd	s9, 8(sp)                       # 8-byte Folded Spill
	li	s6, 0
	fcvt.d.wu	fa4, s2
	fmul.d	fs1, fa5, fa4
	li	s10, 12
	lui	a0, %hi(.LCPI3_0)
	fld	fs2, %lo(.LCPI3_0)(a0)
	lui	s11, 2
	li	s0, -192
	j	.LBB3_55
.LBB3_54:                               #   in Loop: Header=BB3_55 Depth=1
	addi	s6, s6, 1
	beq	s6, s1, .LBB3_65
.LBB3_55:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_58 Depth 2
                                        #       Child Loop BB3_60 Depth 3
	slli	a0, s6, 2
	add	a0, s3, a0
	lw	s7, 0(a0)
	blez	s7, .LBB3_54
# %bb.56:                               #   in Loop: Header=BB3_55 Depth=1
	li	a0, 384
	mul	a3, s6, a0
	sd	a3, 16(sp)                      # 8-byte Folded Spill
	slli	a0, s6, 3
	lw	a1, 52(ra)
	lui	a2, %hi(listX)
	addi	a2, a2, %lo(listX)
	add	a0, a2, a0
	ld	s8, 0(a0)
	lui	a0, 18
	addiw	a0, a0, 32
	add	a0, sp, a0
	add	a0, a0, a3
	mulw	s9, a1, a7
	mul	a2, s7, s10
	li	a1, 0
	mv	s5, s1
	mv	s1, ra
	mv	s4, s3
	mv	s3, a7
	call	memset
	mv	a7, s3
	mv	s3, s4
	mv	ra, s1
	mv	s1, s5
	li	a0, 0
	slli	a1, s9, 32
	srli	a1, a1, 31
	lui	a2, 19
	addiw	a2, a2, -1760
	add	a2, sp, a2
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	add	a2, a2, a3
	j	.LBB3_58
.LBB3_57:                               #   in Loop: Header=BB3_58 Depth=2
	mul	a3, a0, s10
	add	a3, a2, a3
	sw	a4, 0(a3)
	sw	s2, 4(a3)
	addi	a0, a0, 1
	sw	s2, 8(a3)
	beq	a0, s7, .LBB3_54
.LBB3_58:                               #   Parent Loop BB3_55 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_60 Depth 3
	mv	a3, s2
	blez	s9, .LBB3_63
# %bb.59:                               # %.preheader12
                                        #   in Loop: Header=BB3_58 Depth=2
	slli	a3, a0, 3
	add	a3, s8, a3
	ld	a3, 0(a3)
	add	a3, a3, s11
	ld	a3, -1760(a3)
	add	a4, a3, a1
	fmv.d	fa5, fs0
.LBB3_60:                               #   Parent Loop BB3_55 Depth=1
                                        #     Parent Loop BB3_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	a5, 0(a3)
	fcvt.d.wu	fa4, a5
	addi	a3, a3, 2
	fadd.d	fa5, fa5, fa4
	bne	a3, a4, .LBB3_60
# %bb.61:                               #   in Loop: Header=BB3_58 Depth=2
	feq.d	a4, fa5, fs0
	mv	a3, s2
	bnez	a4, .LBB3_63
# %bb.62:                               #   in Loop: Header=BB3_58 Depth=2
	fdiv.d	fa5, fs1, fa5
	fadd.d	fa5, fa5, fs2
	fcvt.w.d	a3, fa5, rtz
.LBB3_63:                               #   in Loop: Header=BB3_58 Depth=2
	addiw	a5, a3, -128
	mv	a4, s2
	bltu	a5, s0, .LBB3_57
# %bb.64:                               #   in Loop: Header=BB3_58 Depth=2
	mv	a4, a3
	j	.LBB3_57
.LBB3_65:
	lui	a0, %hi(wp_weight)
	ld	a0, %lo(wp_weight)(a0)
	lui	a1, %hi(wp_offset)
	ld	a1, %lo(wp_offset)(a1)
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	beqz	s9, .LBB3_71
# %bb.66:                               # %.preheader10
	li	a2, 0
	j	.LBB3_68
.LBB3_67:                               #   in Loop: Header=BB3_68 Depth=1
	addi	a2, a2, 1
	beq	a2, s1, .LBB3_76
.LBB3_68:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_70 Depth 2
	slli	a3, a2, 2
	add	a3, s3, a3
	lw	a4, 0(a3)
	blez	a4, .LBB3_67
# %bb.69:                               #   in Loop: Header=BB3_68 Depth=1
	slli	a5, a2, 3
	add	a4, a0, a5
	ld	a4, 0(a4)
	add	a5, a1, a5
	ld	a5, 0(a5)
	li	a6, 0
.LBB3_70:                               #   Parent Loop BB3_68 Depth=1
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
	blt	a6, a7, .LBB3_70
	j	.LBB3_67
.LBB3_71:                               # %.preheader
	li	a2, 0
	lui	a3, 18
	addiw	a3, a3, 40
	add	a3, sp, a3
	lui	a4, 19
	addiw	a4, a4, -1756
	add	a4, sp, a4
	j	.LBB3_73
.LBB3_72:                               #   in Loop: Header=BB3_73 Depth=1
	addi	a2, a2, 1
	addi	a3, a3, 384
	addi	a4, a4, 384
	beq	a2, s1, .LBB3_76
.LBB3_73:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_75 Depth 2
	slli	a5, a2, 2
	add	a5, s3, a5
	lw	a6, 0(a5)
	blez	a6, .LBB3_72
# %bb.74:                               #   in Loop: Header=BB3_73 Depth=1
	slli	a7, a2, 3
	add	a6, a0, a7
	ld	a6, 0(a6)
	add	a7, a1, a7
	ld	a7, 0(a7)
	li	t0, 0
	mv	t1, a4
	mv	t2, a3
.LBB3_75:                               #   Parent Loop BB3_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t3, 0(a6)
	ld	t4, 0(a7)
	lw	t5, -4(t1)
	lw	t6, -8(t2)
	sw	t5, 0(t3)
	sw	t6, 0(t4)
	lw	t5, 0(t1)
	lw	t6, -4(t2)
	lw	s0, 4(t1)
	lw	s4, 0(t2)
	sw	t5, 4(t3)
	sw	t6, 4(t4)
	sw	s0, 8(t3)
	sw	s4, 8(t4)
	addi	t0, t0, 1
	lw	t3, 0(a5)
	addi	a6, a6, 8
	addi	a7, a7, 8
	addi	t2, t2, 12
	addi	t1, t1, 12
	blt	t0, t3, .LBB3_75
	j	.LBB3_72
.LBB3_76:
	lui	a0, %hi(listXsize)
	lw	a4, %lo(listXsize)(a0)
	blez	a4, .LBB3_83
# %bb.77:
	lui	a1, %hi(wp_weight)
	ld	a1, %lo(wp_weight)(a1)
	lui	a2, %hi(wbp_weight)
	ld	a2, %lo(wbp_weight)(a2)
	lw	t0, 4(s3)
	li	a3, 0
	j	.LBB3_79
.LBB3_78:                               #   in Loop: Header=BB3_79 Depth=1
	addi	a3, a3, 1
	bge	a3, a4, .LBB3_83
.LBB3_79:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_81 Depth 2
	blez	t0, .LBB3_78
# %bb.80:                               #   in Loop: Header=BB3_79 Depth=1
	ld	a4, 0(a1)
	slli	a7, a3, 3
	ld	a5, 0(a2)
	add	a4, a4, a7
	ld	a4, 0(a4)
	ld	t0, 8(a2)
	add	a5, a5, a7
	ld	a5, 0(a5)
	ld	a6, 8(a1)
	add	a7, t0, a7
	ld	a7, 0(a7)
	li	t1, 0
.LBB3_81:                               #   Parent Loop BB3_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a5)
	lw	t2, 0(a4)
	ld	t3, 0(a6)
	ld	t4, 0(a7)
	sw	t2, 0(t0)
	lw	t2, 0(t3)
	sw	t2, 0(t4)
	lw	t2, 4(a4)
	sw	t2, 4(t0)
	lw	t2, 4(t3)
	sw	t2, 4(t4)
	lw	t2, 8(a4)
	sw	t2, 8(t0)
	lw	t0, 8(t3)
	sw	t0, 8(t4)
	lw	t0, 4(s3)
	addi	t1, t1, 1
	addi	a7, a7, 8
	addi	a6, a6, 8
	addi	a5, a5, 8
	blt	t1, t0, .LBB3_81
# %bb.82:                               #   in Loop: Header=BB3_79 Depth=1
	lw	a4, %lo(listXsize)(a0)
	j	.LBB3_78
.LBB3_83:
	beqz	s9, .LBB3_86
.LBB3_84:
	li	a0, 0
.LBB3_85:
	lui	a1, 19
	addiw	a1, a1, -1360
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
.LBB3_86:
	lui	a0, %hi(input)
	ld	a1, %lo(input)(a0)
	lw	a0, 44(a1)
	lui	a3, %hi(listXsize)
	lw	a2, %lo(listXsize)(a3)
	mv	a4, a0
	bge	a0, a2, .LBB3_99
# %bb.87:
	addi	a3, a3, %lo(listXsize)
	bnez	a0, .LBB3_100
.LBB3_88:
	lw	a3, 4(a3)
	lw	a1, 48(a1)
	sw	a2, 24(sp)
	bge	a0, a3, .LBB3_101
.LBB3_89:
	beqz	a1, .LBB3_91
.LBB3_90:
	mv	a3, a0
.LBB3_91:
	lui	a0, %hi(wp_weight)
	ld	a1, %lo(wp_weight)(a0)
	li	a2, 0
	sw	a3, 28(sp)
	addi	a3, sp, 24
.LBB3_92:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_94 Depth 2
	slli	a0, a2, 2
	add	a0, a3, a0
	lw	a4, 0(a0)
	blez	a4, .LBB3_98
# %bb.93:                               #   in Loop: Header=BB3_92 Depth=1
	slli	a0, a2, 3
	add	a0, a1, a0
	ld	a5, 0(a0)
.LBB3_94:                               #   Parent Loop BB3_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(a5)
	lw	a7, 0(a6)
	li	a0, 1
	bne	a7, s2, .LBB3_85
# %bb.95:                               #   in Loop: Header=BB3_94 Depth=2
	lw	a7, 4(a6)
	bne	a7, s2, .LBB3_85
# %bb.96:                               #   in Loop: Header=BB3_94 Depth=2
	lw	a6, 8(a6)
	bne	a6, s2, .LBB3_85
# %bb.97:                               #   in Loop: Header=BB3_94 Depth=2
	addi	a4, a4, -1
	addi	a5, a5, 8
	bnez	a4, .LBB3_94
.LBB3_98:                               #   in Loop: Header=BB3_92 Depth=1
	addi	a2, a2, 1
	bne	a2, s1, .LBB3_92
	j	.LBB3_84
.LBB3_99:
	mv	a4, a2
	addi	a3, a3, %lo(listXsize)
	beqz	a0, .LBB3_88
.LBB3_100:
	lw	a3, 4(a3)
	lw	a1, 48(a1)
	sw	a4, 24(sp)
	blt	a0, a3, .LBB3_89
.LBB3_101:
	mv	a0, a3
	bnez	a1, .LBB3_90
	j	.LBB3_91
.Lfunc_end3:
	.size	test_wp_B_slice, .Lfunc_end3-test_wp_B_slice
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
