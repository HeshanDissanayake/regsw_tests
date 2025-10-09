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
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	mv	x1, t1
	mv	x2, t0
.LBB0_8:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x492(x18)		# 100100010010010010010
	ld	x3, 0(t4)
	ld	x4, 0(t5)
	sw	zero, 0(x2)
	sw	zero, 4(x2)
	sw	zero, 8(x2)
	sw	t2, -8(x1)
	sw	t2, -4(x1)
	regsw_c	x4, 0x492(x9)		# 010010010010010010010
	sw	t2, 0(x1)
	sw	t2, 0(x3)
	sw	zero, 0(x4)
	sw	t2, 4(x3)
	sw	zero, 4(x4)
	sw	t2, 8(x3)
	sw	zero, 8(x4)
	addi	t6, t6, 1
	regsw_c	x1, 0x588(x16)		# 100000000110110001000
	lw	x3, 0(t3)
	addi	t5, t5, 8
	addi	t4, t4, 8
	addi	x2, x2, 12
	addi	x1, x1, 12
	blt	t6, x3, .LBB0_8
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
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lui	x5, 2
	addiw	t3, x5, -1760
	lui	t4, %hi(.LCPI0_1)
	fld	fa2, %lo(.LCPI0_1)(t4)
	li	t4, 12
	li	t5, 384
	addi	t6, sp, 784
	regsw_c	x9, 0x180(x18)		# 100100100100110000000
	li	x1, -192
	li	x2, 32
	addi	x3, sp, 16
	lui	x4, %hi(listX)
	addiw	x5, x5, -1744
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
	regsw_c	x28, 0x200(x18)		# 100101110001000000000
	slli	x6, a6, 2
	add	x6, a2, x6
	lw	x6, 0(x6)
	blez	x6, .LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	regsw_c	x9, 0x3b2(x18)		# 100100100101110110010
	li	x7, 0
	lw	x12, 52(a3)
	slli	x8, a6, 3
	add	x8, t0, x8
	ld	x8, 0(x8)
	mulw	x9, x12, a5
	fcvt.d.w	fa1, x9
	regsw_c	x13, 0x5b6(x18)		# 100100110110110110110
	lw	x10, %lo(wp_luma_round)(t1)
	lw	x11, %lo(luma_log_weight_denom)(t2)
	slli	x12, x12, 2
	addiw	x12, x12, 32
	slli	x13, x9, 32
	srli	x13, x13, 31
	slli	x14, x12, 32
	regsw_c	x11, 0x600(x26)		# 110100101111000000000
	srli	x14, x14, 31
	mul	x16, a6, t5
	add	x15, t6, x16
	add	x16, x3, x16
	j	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_20 Depth=2
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	addi	x7, x7, 1
	beq	x7, x6, .LBB0_16
.LBB0_20:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #         Child Loop BB0_49 Depth 4
	regsw_c	x29, 0x5b1(x27)		# 110111110110110110001
	slli	x17, x7, 3
	add	x18, x8, x17
	ld	x21, 0(x18)
	add	x21, x21, t3
	ld	x20, 0(x21)
	mul	x18, x7, t4
	blez	x9, .LBB0_26
# %bb.21:                               # %.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	regsw_c	x0, 0x0(x31)		# 111110000000000000000
	add	x19, x20, x13
	mv	x22, x20
	fmv.d	fa0, fa5
.LBB0_22:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x12, 0xc0(x25)		# 110010110000011000000
	lhu	x23, 0(x22)
	fcvt.d.wu	ft0, x23
	addi	x22, x22, 2
	fadd.d	fa0, fa0, ft0
	bne	x22, x19, .LBB0_22
# %bb.23:                               #   in Loop: Header=BB0_20 Depth=2
	bnez	a0, .LBB0_27
