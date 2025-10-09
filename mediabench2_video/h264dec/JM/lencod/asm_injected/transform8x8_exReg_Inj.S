	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"transform8x8.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Mode_Decision_for_new_Intra8x8Macroblock
.LCPI0_0:
	.quad	0x3fdffe5c91d14e3c              # double 0.49990000000000001
.LCPI0_1:
	.quad	0x4018000000000000              # double 6
	.text
	.globl	Mode_Decision_for_new_Intra8x8Macroblock
	.p2align	2
	.type	Mode_Decision_for_new_Intra8x8Macroblock,@function
Mode_Decision_for_new_Intra8x8Macroblock: # @Mode_Decision_for_new_Intra8x8Macroblock
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	fsd	fs0, 8(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(.LCPI0_0)
	fld	fa5, %lo(.LCPI0_0)(a1)
	lui	a1, %hi(.LCPI0_1)
	fld	fa4, %lo(.LCPI0_1)(a1)
	mv	s0, a0
	fmv.d	fs0, fa0
	fmadd.d	fa5, fa0, fa4, fa5
	fcvt.w.d	a0, fa5, rdn
	sw	a0, 0(s0)
	addi	a1, sp, 4
	li	a0, 0
	call	Mode_Decision_for_new_8x8IntraBlocks
	lw	a1, 4(sp)
	lw	a2, 0(s0)
	snez	s1, a0
	add	a1, a2, a1
	sw	a1, 0(s0)
	li	a0, 1
	addi	a1, sp, 4
	fmv.d	fa0, fs0
	call	Mode_Decision_for_new_8x8IntraBlocks
	lw	a1, 4(sp)
	lw	a2, 0(s0)
	snez	a0, a0
	slli	a0, a0, 1
	or	s1, a0, s1
	add	a1, a2, a1
	sw	a1, 0(s0)
	li	a0, 2
	addi	a1, sp, 4
	fmv.d	fa0, fs0
	call	Mode_Decision_for_new_8x8IntraBlocks
	lw	a1, 4(sp)
	lw	a2, 0(s0)
	snez	a0, a0
	slli	s2, a0, 2
	add	a1, a2, a1
	sw	a1, 0(s0)
	li	a0, 3
	addi	a1, sp, 4
	fmv.d	fa0, fs0
	call	Mode_Decision_for_new_8x8IntraBlocks
	snez	a0, a0
	lw	a1, 4(sp)
	lw	a2, 0(s0)
	slli	a0, a0, 3
	or	a0, a0, s2
	or	a0, a0, s1
	add	a1, a2, a1
	sw	a1, 0(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	fld	fs0, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	Mode_Decision_for_new_Intra8x8Macroblock, .Lfunc_end0-Mode_Decision_for_new_Intra8x8Macroblock
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Mode_Decision_for_new_8x8IntraBlocks
.LCPI1_0:
	.quad	0x4010000000000000              # double 4
.LCPI1_1:
	.quad	0x46293e5939a08cea              # double 1.0E+30
	.text
	.globl	Mode_Decision_for_new_8x8IntraBlocks
	.p2align	2
	.type	Mode_Decision_for_new_8x8IntraBlocks,@function
Mode_Decision_for_new_8x8IntraBlocks:   # @Mode_Decision_for_new_8x8IntraBlocks
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
	addi	sp, sp, -2016
	sd	a1, 760(sp)                     # 8-byte Folded Spill
	fmv.d	fs0, fa0
	mv	a3, a0
	lui	s8, %hi(img)
	ld	a0, %lo(img)(s8)
	andi	s0, a3, 1
	slli	a1, s0, 3
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	slliw	a4, a3, 2
	lw	s6, 152(a0)
	lw	s7, 156(a0)
	lw	s1, 168(a0)
	lw	s5, 172(a0)
	lui	a1, %hi(imgY_org)
	lui	a2, 8
	add	a2, a0, a2
	lw	a0, 12(a0)
	ld	a2, -1192(a2)
	ld	s3, %lo(imgY_org)(a1)
	li	a1, 528
	mul	a1, a0, a1
	add	a1, a2, a1
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	lw	s4, 416(a1)
	sd	a4, 96(sp)                      # 8-byte Folded Spill
	andi	s2, a4, -8
	slli	s10, s0, 1
	sd	a3, 952(sp)                     # 8-byte Folded Spill
	andi	s11, a3, -2
	li	a3, -1
	addi	a5, sp, 1572
	mv	a1, s10
	mv	a2, s11
	li	a4, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s8)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 1548
	mv	a1, s10
	mv	a2, s11
	li	a3, 0
	call	getLuma4x4Neighbour
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 220(a0)
	beqz	a0, .LBB1_7
# %bb.1:
	lw	a0, 1548(sp)
	beqz	a0, .LBB1_3
# %bb.2:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a1, 1552(sp)
	ld	a0, -920(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
.LBB1_3:
	lw	a1, 1572(sp)
	sw	a0, 1548(sp)
	beqz	a1, .LBB1_5
# %bb.4:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a1, 1576(sp)
	ld	a0, -920(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	j	.LBB1_6
.LBB1_5:
	li	a0, 0
.LBB1_6:
	sw	a0, 1572(sp)
.LBB1_7:
	lw	a1, 1548(sp)
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	addw	a0, s6, a4
	sd	a0, 784(sp)                     # 8-byte Folded Spill
	addw	s9, s7, s2
	li	a0, 255
	li	a2, 255
	sd	a2, 960(sp)                     # 8-byte Folded Spill
	ld	a5, 760(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB1_11
# %bb.8:
	li	a2, 2
	li	a1, 104
	ld	a3, 952(sp)                     # 8-byte Folded Reload
	bltu	a3, a2, .LBB1_10
# %bb.9:
	li	a1, 112
.LBB1_10:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	add	a1, a2, a1
	lw	a2, 1568(sp)
	ld	a1, 0(a1)
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lw	a2, 1564(sp)
	add	a1, a1, a2
	lbu	a1, 0(a1)
	sd	a1, 960(sp)                     # 8-byte Folded Spill
.LBB1_11:
	lw	a3, 1572(sp)
	ld	a1, 784(sp)                     # 8-byte Folded Reload
	sraiw	a1, a1, 31
	sraiw	a2, s9, 31
	beqz	a3, .LBB1_15
# %bb.12:
	li	a0, 104
	beqz	s0, .LBB1_14
# %bb.13:
	li	a0, 112
.LBB1_14:
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	add	a0, a3, a0
	lw	a3, 1592(sp)
	ld	a0, 0(a0)
	slli	a3, a3, 3
	add	a0, a0, a3
	ld	a0, 0(a0)
	lw	a3, 1588(sp)
	add	a0, a0, a3
	lbu	a0, 0(a0)
.LBB1_15:
	srliw	a1, a1, 30
	srliw	s6, a2, 30
	addw	a4, s1, a4
	sd	a4, 968(sp)                     # 8-byte Folded Spill
	addw	s8, s5, s2
	lui	a2, 3
	addiw	a3, a2, 312
	sd	a3, 64(sp)                      # 8-byte Folded Spill
	addiw	s7, a2, -1736
	lui	a3, 2
	ld	a2, 960(sp)                     # 8-byte Folded Reload
	bltu	a2, a0, .LBB1_17
# %bb.16:
	sd	a0, 960(sp)                     # 8-byte Folded Spill
.LBB1_17:
	ld	s5, 784(sp)                     # 8-byte Folded Reload
	add	s1, s5, a1
	add	s6, s9, s6
	addiw	a0, a3, 312
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	lui	a0, 524288
	addi	a0, a0, -1
	sw	a0, 0(a5)
	addi	a2, sp, 1604
	addi	a3, sp, 1600
	addi	a4, sp, 1596
	mv	a0, s5
	mv	a1, s9
	call	intrapred_luma8x8
	lw	a0, 1600(sp)
	sd	a0, 768(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(.LCPI1_0)
	fld	fa5, %lo(.LCPI1_0)(a0)
	lw	a0, 1604(sp)
	lw	a1, 1596(sp)
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	fmul.d	fa5, fs0, fa5
	ld	t5, 968(sp)                     # 8-byte Folded Reload
	addi	a7, t5, 1
	addi	t0, t5, 2
	addi	t1, t5, 3
	addi	t2, t5, 4
	addi	t3, t5, 5
	addi	t4, t5, 6
	addi	t5, t5, 7
	addi	a1, s5, 2
	addi	a2, s5, 3
	addi	a3, s5, 4
	addi	a4, s5, 5
	addi	a5, s5, 6
	addi	a6, s5, 7
	slli	s8, s8, 3
	sd	s8, 736(sp)                     # 8-byte Folded Spill
	add	s3, s3, s8
	ld	t6, 96(sp)                      # 8-byte Folded Reload
	ori	t6, t6, 7
	slli	s4, s4, 9
	regsw_c	x25, 0x271(x16)		# 100001100101001110001
	slli	x3, s2, 5
	add	s4, s4, x3
	slli	x1, s0, 4
	or	x2, s4, x1
	sd	x2, 72(sp)                      # 8-byte Folded Spill
	add	x2, x2, s7
	sd	x2, 776(sp)                     # 8-byte Folded Spill
	slli	s7, s9, 3
	regsw_c	x24, 0x3cc(x7)		# 001111100001111001100
	sd	x3, 32(sp)                      # 8-byte Folded Spill
	or	x2, x3, x1
	ld	x1, 64(sp)                      # 8-byte Folded Reload
	sd	x2, 16(sp)                      # 8-byte Folded Spill
	add	x1, x2, x1
	sd	x1, 144(sp)                     # 8-byte Folded Spill
	slli	x1, s2, 6
	slli	s0, s0, 5
	regsw_c	x9, 0x400(x7)		# 001110100110000000000
	sd	x1, 24(sp)                      # 8-byte Folded Spill
	or	x2, x1, s0
	lui	x1, 5
	addiw	x1, x1, -1208
	blt	s2, t6, .LBB1_19
# %bb.18:
	mv	t6, s2
