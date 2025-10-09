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
	addi	sp, sp, -1936
	lui	s6, %hi(img)
	ld	a2, %lo(img)(s6)
	sd	a1, 760(sp)                     # 8-byte Folded Spill
	fmv.d	fs0, fa0
	mv	s11, a0
	andi	s0, a0, 1
	lw	s4, 152(a2)
	lw	s5, 156(a2)
	lw	s2, 168(a2)
	lw	s1, 172(a2)
	lui	a1, %hi(imgY_org)
	lui	a0, 8
	add	a3, a2, a0
	lw	a0, 12(a2)
	ld	a2, -1192(a3)
	ld	a1, %lo(imgY_org)(a1)
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	li	a1, 528
	mul	a1, a0, a1
	add	a1, a2, a1
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	lw	s3, 416(a1)
	slliw	a1, s11, 2
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	slli	s8, s0, 1
	andi	s7, s11, -2
	li	a3, -1
	addi	a5, sp, 1492
	mv	a1, s8
	mv	a2, s7
	li	a4, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s6)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 1468
	sd	s8, 880(sp)                     # 8-byte Folded Spill
	mv	a1, s8
	mv	a2, s7
	li	a3, 0
	call	getLuma4x4Neighbour
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 220(a0)
	beqz	a0, .LBB1_7
# %bb.1:
	lw	a0, 1468(sp)
	beqz	a0, .LBB1_3
# %bb.2:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a1, 1472(sp)
	ld	a0, -920(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
.LBB1_3:
	lw	a1, 1492(sp)
	sw	a0, 1468(sp)
	beqz	a1, .LBB1_5
# %bb.4:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a1, 1496(sp)
	ld	a0, -920(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	j	.LBB1_6
.LBB1_5:
	li	a0, 0
.LBB1_6:
	sw	a0, 1492(sp)
.LBB1_7:
	lw	a1, 1468(sp)
	slli	a3, s0, 3
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	andi	s6, a0, -8
	li	a0, 255
	li	a2, 255
	sd	a2, 864(sp)                     # 8-byte Folded Spill
	beqz	a1, .LBB1_11
# %bb.8:
	li	a2, 2
	li	a1, 104
	bltu	s11, a2, .LBB1_10
# %bb.9:
	li	a1, 112
.LBB1_10:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	add	a1, a2, a1
	lw	a2, 1488(sp)
	ld	a1, 0(a1)
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lw	a2, 1484(sp)
	add	a1, a1, a2
	lbu	a1, 0(a1)
	sd	a1, 864(sp)                     # 8-byte Folded Spill
.LBB1_11:
	sd	s7, 888(sp)                     # 8-byte Folded Spill
	lw	a1, 1492(sp)
	addw	s8, s4, a3
	addw	s9, s5, s6
	beqz	a1, .LBB1_15
# %bb.12:
	li	a0, 104
	beqz	s0, .LBB1_14
# %bb.13:
	li	a0, 112
.LBB1_14:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	a0, a1, a0
	lw	a1, 1512(sp)
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	lw	a1, 1508(sp)
	add	a0, a0, a1
	lbu	a0, 0(a0)
.LBB1_15:
	sd	a3, 80(sp)                      # 8-byte Folded Spill
	sraiw	a1, s8, 31
	sraiw	a2, s9, 31
	addw	a3, s1, s6
	sd	a3, 808(sp)                     # 8-byte Folded Spill
	lui	s4, 3
	ld	a3, 864(sp)                     # 8-byte Folded Reload
	bltu	a3, a0, .LBB1_17
# %bb.16:
	sd	a0, 864(sp)                     # 8-byte Folded Spill
.LBB1_17:
	srliw	s5, a1, 30
	srliw	s7, a2, 30
	lui	s1, 2
	addiw	a0, s4, 312
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	lui	a0, 524288
	addi	a0, a0, -1
	ld	a1, 760(sp)                     # 8-byte Folded Reload
	sw	a0, 0(a1)
	addi	a2, sp, 1524
	addi	a3, sp, 1520
	addi	a4, sp, 1516
	mv	a0, s8
	mv	a1, s9
	call	intrapred_luma8x8
	lui	a0, %hi(.LCPI1_0)
	fld	fa5, %lo(.LCPI1_0)(a0)
	addiw	t6, s8, 7
	ld	a0, 808(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 3
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	ori	a0, a0, 7
	slli	a1, s3, 9
	slli	a2, s6, 5
	sd	a2, 88(sp)                      # 8-byte Folded Spill
	add	a1, a1, a2
	slli	s3, s0, 4
	blt	s8, t6, .LBB1_19
# %bb.18:
	mv	t6, s8
.LBB1_19:
	add	t3, s8, s5
	add	t4, s9, s7
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	addw	t1, s2, a2
	addiw	t2, s4, -1736
	addiw	a2, s1, 312
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	fmul.d	fa5, fs0, fa5
	or	t5, a1, s3
	lw	a1, 1520(sp)
	sd	a1, 768(sp)                     # 8-byte Folded Spill
	lw	a1, 1524(sp)
	lw	a2, 1516(sp)
	sd	a2, 184(sp)                     # 8-byte Folded Spill
	addi	a2, s8, 1
	addi	a3, s8, 2
	addi	a4, s8, 3
	addi	a5, s8, 4
	addi	a6, s8, 5
	addi	a7, s8, 6
	addi	t0, s8, 7
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s4, 56(sp)                      # 8-byte Folded Reload
	add	s2, s2, s4
	sd	s2, 800(sp)                     # 8-byte Folded Spill
	slli	t6, t6, 1
	ld	s2, 88(sp)                      # 8-byte Folded Reload
	or	s3, s2, s3
	ld	s2, 72(sp)                      # 8-byte Folded Reload
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	add	s2, s3, s2
	sd	s2, 192(sp)                     # 8-byte Folded Spill
	slli	s3, s6, 6
	slli	s2, s0, 5
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	or	s0, s3, s2
	lui	s3, 5
	addiw	s3, s3, -1208
	blt	s6, a0, .LBB1_21
# %bb.20:
	mv	a0, s6
.LBB1_21:
	sd	zero, 776(sp)                   # 8-byte Folded Spill
	sd	zero, 720(sp)                   # 8-byte Folded Spill
	sraiw	t3, t3, 2
	sd	t3, 32(sp)                      # 8-byte Folded Spill
	sraiw	t3, t4, 2
	sd	t3, 24(sp)                      # 8-byte Folded Spill
	addiw	t3, s11, 4
	sd	t3, 904(sp)                     # 8-byte Folded Spill
	addiw	t3, s11, 8
	sd	t3, 896(sp)                     # 8-byte Folded Spill
	fcvt.w.d	t3, fa5, rdn
	sd	t3, 736(sp)                     # 8-byte Folded Spill
	add	t2, t5, t2
	sd	t2, 840(sp)                     # 8-byte Folded Spill
	ld	t2, 48(sp)                      # 8-byte Folded Reload
	add	t5, t5, t2
	sd	t5, 832(sp)                     # 8-byte Folded Spill
	slli	s4, t1, 1
	slli	t1, s8, 1
	sd	t1, 936(sp)                     # 8-byte Folded Spill
	addi	t6, t6, 2
	sd	t6, 744(sp)                     # 8-byte Folded Spill
	ld	t1, 192(sp)                     # 8-byte Folded Reload
	addi	t1, t1, 256
	slli	a0, a0, 6
	or	a0, a0, s2
	mv	s2, t1
	add	t1, s0, s3
	sd	t1, 112(sp)                     # 8-byte Folded Spill
	addi	t1, sp, 2047
	addi	t1, t1, 505
	add	t1, t1, s0
	sd	t1, 104(sp)                     # 8-byte Folded Spill
	add	a0, a0, s3
	addi	a0, a0, 64
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(.LCPI1_1)
	fld	fs2, %lo(.LCPI1_1)(a0)
	addiw	s3, s1, -840
	addiw	ra, s1, -826
	li	s1, 0
	slli	a2, a2, 1
	sd	a2, 176(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 1
	sd	a3, 168(sp)                     # 8-byte Folded Spill
	slli	a4, a4, 1
	sd	a4, 160(sp)                     # 8-byte Folded Spill
	slli	a5, a5, 1
	sd	a5, 152(sp)                     # 8-byte Folded Spill
	slli	a6, a6, 1
	sd	a6, 144(sp)                     # 8-byte Folded Spill
	slli	a7, a7, 1
	sd	a7, 136(sp)                     # 8-byte Folded Spill
	slli	t0, t0, 1
	sd	t0, 128(sp)                     # 8-byte Folded Spill
	snez	a0, a1
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	ld	a0, 800(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 64
	sd	a0, 728(sp)                     # 8-byte Folded Spill
	lui	s0, %hi(img)
	lui	a0, 22
	addiw	a0, a0, 460
	sd	a0, 792(sp)                     # 8-byte Folded Spill
	lui	a0, 3
	addiw	a0, a0, 824
	sd	a0, 928(sp)                     # 8-byte Folded Spill
	lui	t2, %hi(resTrans_B)
	addi	t2, t2, %lo(resTrans_B)
	lui	t3, %hi(resTrans_R)
	addi	t3, t3, %lo(resTrans_R)
	li	s10, 9
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
                                        # implicit-def: $x10
                                        # kill: killed $x10
	sd	s4, 920(sp)                     # 8-byte Folded Spill
	sd	s9, 912(sp)                     # 8-byte Folded Spill
	sd	s8, 752(sp)                     # 8-byte Folded Spill
	sd	s11, 856(sp)                    # 8-byte Folded Spill
	sd	s2, 784(sp)                     # 8-byte Folded Spill
	j	.LBB1_24
.LBB1_22:                               #   in Loop: Header=BB1_24 Depth=1
	mv	ra, s5
	lui	s0, %hi(img)
.LBB1_23:                               #   in Loop: Header=BB1_24 Depth=1
	addi	s1, s1, 1
	addi	s3, s3, 128
	addi	ra, ra, 128
	lui	t2, %hi(resTrans_B)
	addi	t2, t2, %lo(resTrans_B)
	lui	t3, %hi(resTrans_R)
	addi	t3, t3, %lo(resTrans_R)
	bne	s1, s10, .LBB1_24
	j	.LBB1_73
.LBB1_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
                                        #       Child Loop BB1_31 Depth 3
                                        #     Child Loop BB1_34 Depth 2
                                        #     Child Loop BB1_37 Depth 2
                                        #       Child Loop BB1_39 Depth 3
                                        #     Child Loop BB1_46 Depth 2
                                        #       Child Loop BB1_47 Depth 3
                                        #     Child Loop BB1_51 Depth 2
                                        #     Child Loop BB1_53 Depth 2
                                        #     Child Loop BB1_55 Depth 2
                                        #       Child Loop BB1_56 Depth 3
                                        #     Child Loop BB1_66 Depth 2
                                        #     Child Loop BB1_70 Depth 2
                                        #     Child Loop BB1_60 Depth 2
	li	s6, 2
	beq	s1, s6, .LBB1_27
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=1
	snez	a0, s1
	andi	a1, s1, 11
	addi	a1, a1, -3
	snez	a1, a1
	and	a0, a0, a1
	beqz	a0, .LBB1_26
	j	.LBB1_63
.LBB1_26:                               #   in Loop: Header=BB1_24 Depth=1
	mv	s6, s1
	ld	a0, 768(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB1_27
	j	.LBB1_63
.LBB1_27:                               #   in Loop: Header=BB1_24 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a2, 1089(a1)
	ld	a1, %lo(img)(s0)
	bnez	a2, .LBB1_28
	j	.LBB1_59
.LBB1_28:                               #   in Loop: Header=BB1_24 Depth=1
	ld	a0, 792(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lw	a0, 0(a0)
	sext.w	a2, s6
	bnez	a0, .LBB1_29
	j	.LBB1_65
.LBB1_29:                               #   in Loop: Header=BB1_24 Depth=1
	sd	s6, 824(sp)                     # 8-byte Folded Spill
	sd	s1, 848(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(imgUV_org)
	ld	a6, %lo(imgUV_org)(a0)
	li	a3, 0
	ld	s10, 928(sp)                    # 8-byte Folded Reload
	add	a0, a1, s10
	ld	a4, 0(a6)
	lui	a5, %hi(imgY_org)
	ld	a5, %lo(imgY_org)(a5)
	ld	a6, 8(a6)
	sd	s3, 872(sp)                     # 8-byte Folded Spill
	add	a7, a1, s3
	ld	t0, 840(sp)                     # 8-byte Folded Reload
	add	t0, a1, t0
	ld	t1, 832(sp)                     # 8-byte Folded Reload
	add	a1, a1, t1
	mv	t1, t3
	lui	t3, %hi(resTrans_G)
	addi	t3, t3, %lo(resTrans_G)
	ld	s9, 808(sp)                     # 8-byte Folded Reload
.LBB1_30:                               #   Parent Loop BB1_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_31 Depth 3
	add	t4, a3, s9
	slli	t4, t4, 3
	add	t5, a4, t4
	add	t6, a5, t4
	add	t4, a6, t4
	ld	s0, 0(t4)
	ld	t6, 0(t6)
	ld	s1, 0(t5)
	li	t4, 0
	ld	s2, 920(sp)                     # 8-byte Folded Reload
	add	t5, s0, s2
	add	t6, t6, s2
	add	s0, s1, s2
	mv	s1, t1
	mv	s2, t2
	mv	s3, t3
	li	s11, 16
.LBB1_31:                               #   Parent Loop BB1_24 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	s4, s0, t4
	lhu	s4, 0(s4)
	add	s5, a1, t4
	lhu	s5, 0(s5)
	sub	s4, s4, s5
	add	s5, t6, t4
	add	s6, t5, t4
	lhu	s6, 0(s6)
	add	s7, t0, t4
	lhu	s7, 0(s7)
	lhu	s5, 0(s5)
	add	s8, a7, t4
	lhu	s8, 0(s8)
	sub	s6, s6, s7
	sub	s6, s6, s4
	sw	s6, 0(s1)
	srli	s6, s6, 1
	add	s4, s6, s4
	subw	s5, s5, s8
	subw	s5, s5, s4
	sw	s5, 0(s2)
	sraiw	s5, s5, 1
	add	s4, s5, s4
	sw	s4, 0(s3)
	addi	t4, t4, 2
	addi	s3, s3, 4
	addi	s2, s2, 4
	addi	s1, s1, 4
	bne	t4, s11, .LBB1_31
# %bb.32:                               #   in Loop: Header=BB1_30 Depth=2
	addi	a3, a3, 1
	addi	t3, t3, 64
	addi	t2, t2, 64
	addi	t1, t1, 64
	addi	a7, a7, 16
	addi	t0, t0, 32
	addi	a1, a1, 32
	li	t4, 8
	bne	a3, t4, .LBB1_30
# %bb.33:                               #   in Loop: Header=BB1_24 Depth=1
	sd	ra, 816(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(resTrans_G)
	lw	a3, %lo(resTrans_G)(a1)
	addi	a1, a1, %lo(resTrans_G)
	sw	a3, 0(a0)
	lw	a3, 4(a1)
	sw	a3, 4(a0)
	lw	a3, 8(a1)
	sw	a3, 8(a0)
	lw	a3, 12(a1)
	sw	a3, 12(a0)
	lw	a3, 16(a1)
	sw	a3, 16(a0)
	lw	a3, 20(a1)
	sw	a3, 20(a0)
	lw	a3, 24(a1)
	sw	a3, 24(a0)
	lw	a3, 28(a1)
	sw	a3, 28(a0)
	lw	a3, 64(a1)
	sw	a3, 64(a0)
	lw	a3, 68(a1)
	sw	a3, 68(a0)
	lw	a3, 72(a1)
	sw	a3, 72(a0)
	lw	a3, 76(a1)
	sw	a3, 76(a0)
	lw	a3, 80(a1)
	sw	a3, 80(a0)
	lw	a3, 84(a1)
	sw	a3, 84(a0)
	lw	a3, 88(a1)
	sw	a3, 88(a0)
	lw	a3, 92(a1)
	sw	a3, 92(a0)
	lw	a3, 128(a1)
	sw	a3, 128(a0)
	lw	a3, 132(a1)
	sw	a3, 132(a0)
	lw	a3, 136(a1)
	sw	a3, 136(a0)
	lw	a3, 140(a1)
	sw	a3, 140(a0)
	lw	a3, 144(a1)
	sw	a3, 144(a0)
	lw	a3, 148(a1)
	sw	a3, 148(a0)
	lw	a3, 152(a1)
	sw	a3, 152(a0)
	lw	a3, 156(a1)
	sw	a3, 156(a0)
	lw	a3, 192(a1)
	sw	a3, 192(a0)
	lw	a3, 196(a1)
	sw	a3, 196(a0)
	lw	a3, 200(a1)
	sw	a3, 200(a0)
	lw	a3, 204(a1)
	sw	a3, 204(a0)
	lw	a3, 208(a1)
	sw	a3, 208(a0)
	lw	a3, 212(a1)
	sw	a3, 212(a0)
	lw	a3, 216(a1)
	sw	a3, 216(a0)
	lw	a3, 220(a1)
	sw	a3, 220(a0)
	lw	a3, 256(a1)
	sw	a3, 256(a0)
	lw	a3, 260(a1)
	sw	a3, 260(a0)
	lw	a3, 264(a1)
	sw	a3, 264(a0)
	lw	a3, 268(a1)
	sw	a3, 268(a0)
	lw	a3, 272(a1)
	sw	a3, 272(a0)
	lw	a3, 276(a1)
	sw	a3, 276(a0)
	lw	a3, 280(a1)
	sw	a3, 280(a0)
	lw	a3, 284(a1)
	sw	a3, 284(a0)
	lw	a3, 320(a1)
	sw	a3, 320(a0)
	lw	a3, 324(a1)
	sw	a3, 324(a0)
	lw	a3, 328(a1)
	sw	a3, 328(a0)
	lw	a3, 332(a1)
	sw	a3, 332(a0)
	lw	a3, 336(a1)
	sw	a3, 336(a0)
	lw	a3, 340(a1)
	sw	a3, 340(a0)
	lw	a3, 344(a1)
	sw	a3, 344(a0)
	lw	a3, 348(a1)
	sw	a3, 348(a0)
	lw	a3, 384(a1)
	sw	a3, 384(a0)
	lw	a3, 388(a1)
	sw	a3, 388(a0)
	lw	a3, 392(a1)
	sw	a3, 392(a0)
	lw	a3, 396(a1)
	sw	a3, 396(a0)
	lw	a3, 400(a1)
	sw	a3, 400(a0)
	lw	a3, 404(a1)
	sw	a3, 404(a0)
	lw	a3, 408(a1)
	sw	a3, 408(a0)
	lw	a3, 412(a1)
	sw	a3, 412(a0)
	lw	a3, 448(a1)
	sw	a3, 448(a0)
	lw	a3, 452(a1)
	sw	a3, 452(a0)
	lw	a3, 456(a1)
	sw	a3, 456(a0)
	lw	a3, 460(a1)
	sw	a3, 460(a0)
	lw	a3, 464(a1)
	sw	a3, 464(a0)
	lw	a3, 468(a1)
	sw	a3, 468(a0)
	lw	a3, 472(a1)
	sw	a3, 472(a0)
	lw	a1, 476(a1)
	sw	a1, 476(a0)
	addi	a0, sp, 2047
	addi	a0, a0, 1785
	ld	a1, 856(sp)                     # 8-byte Folded Reload
	fmv.d	fa0, fs0
	ld	a3, 864(sp)                     # 8-byte Folded Reload
	call	RDCost_for_8x8IntraBlocks
	fmv.d	fs1, fa0
	call	reset_coding_state_cs_cm
	lui	a4, %hi(img)
	ld	a1, %lo(img)(a4)
	add	a1, a1, s10
	lw	a0, 0(a1)
	lui	a3, %hi(rec_resG)
	sw	a0, %lo(rec_resG)(a3)
	lw	a2, 4(a1)
	addi	a0, a3, %lo(rec_resG)
	sw	a2, 4(a0)
	lw	a2, 8(a1)
	sw	a2, 8(a0)
	lw	a2, 12(a1)
	sw	a2, 12(a0)
	lw	a2, 16(a1)
	sw	a2, 16(a0)
	lw	a2, 20(a1)
	sw	a2, 20(a0)
	lw	a2, 24(a1)
	sw	a2, 24(a0)
	lw	a2, 28(a1)
	sw	a2, 28(a0)
	lw	a2, 64(a1)
	sw	a2, 64(a0)
	lw	a2, 68(a1)
	sw	a2, 68(a0)
	lw	a2, 72(a1)
	sw	a2, 72(a0)
	lw	a2, 76(a1)
	sw	a2, 76(a0)
	lw	a2, 80(a1)
	sw	a2, 80(a0)
	lw	a2, 84(a1)
	sw	a2, 84(a0)
	lw	a2, 88(a1)
	sw	a2, 88(a0)
	lw	a2, 92(a1)
	sw	a2, 92(a0)
	lw	a2, 128(a1)
	sw	a2, 128(a0)
	lw	a2, 132(a1)
	sw	a2, 132(a0)
	lw	a2, 136(a1)
	sw	a2, 136(a0)
	lw	a2, 140(a1)
	sw	a2, 140(a0)
	lw	a2, 144(a1)
	sw	a2, 144(a0)
	lw	a2, 148(a1)
	sw	a2, 148(a0)
	lw	a2, 152(a1)
	sw	a2, 152(a0)
	lw	a2, 156(a1)
	sw	a2, 156(a0)
	lw	a2, 192(a1)
	sw	a2, 192(a0)
	lw	a2, 196(a1)
	sw	a2, 196(a0)
	lw	a2, 200(a1)
	sw	a2, 200(a0)
	lw	a2, 204(a1)
	sw	a2, 204(a0)
	lw	a2, 208(a1)
	sw	a2, 208(a0)
	lw	a2, 212(a1)
	sw	a2, 212(a0)
	lw	a2, 216(a1)
	sw	a2, 216(a0)
	lw	a2, 220(a1)
	sw	a2, 220(a0)
	lw	a2, 256(a1)
	sw	a2, 256(a0)
	lw	a2, 260(a1)
	sw	a2, 260(a0)
	lw	a2, 264(a1)
	sw	a2, 264(a0)
	lw	a2, 268(a1)
	sw	a2, 268(a0)
	lw	a2, 272(a1)
	sw	a2, 272(a0)
	lw	a2, 276(a1)
	sw	a2, 276(a0)
	lw	a2, 280(a1)
	sw	a2, 280(a0)
	lw	a2, 284(a1)
	sw	a2, 284(a0)
	lw	a2, 320(a1)
	sw	a2, 320(a0)
	lw	a2, 324(a1)
	sw	a2, 324(a0)
	lw	a2, 328(a1)
	sw	a2, 328(a0)
	lw	a2, 332(a1)
	sw	a2, 332(a0)
	lw	a2, 336(a1)
	sw	a2, 336(a0)
	lw	a2, 340(a1)
	sw	a2, 340(a0)
	lw	a2, 344(a1)
	sw	a2, 344(a0)
	lw	a2, 348(a1)
	sw	a2, 348(a0)
	lw	a2, 384(a1)
	sw	a2, 384(a0)
	lw	a2, 388(a1)
	sw	a2, 388(a0)
	lw	a2, 392(a1)
	sw	a2, 392(a0)
	lw	a2, 396(a1)
	sw	a2, 396(a0)
	lw	a2, 400(a1)
	sw	a2, 400(a0)
	lw	a2, 404(a1)
	sw	a2, 404(a0)
	lw	a2, 408(a1)
	sw	a2, 408(a0)
	lw	a2, 412(a1)
	sw	a2, 412(a0)
	lw	a2, 448(a1)
	sw	a2, 448(a0)
	lw	a2, 452(a1)
	sw	a2, 452(a0)
	lw	a2, 456(a1)
	sw	a2, 456(a0)
	lw	a2, 460(a1)
	sw	a2, 460(a0)
	lw	a2, 464(a1)
	sw	a2, 464(a0)
	lw	a2, 468(a1)
	sw	a2, 468(a0)
	lw	a2, 472(a1)
	sw	a2, 472(a0)
	lw	a2, 476(a1)
	ld	a1, %lo(img)(a4)
	li	s2, 0
	li	s7, 0
	li	s10, 0
	sw	a2, 476(a0)
	fcvt.w.d	s11, fs1, rtz
.LBB1_34:                               #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	s11, 944(sp)                    # 8-byte Folded Spill
	slli	a0, s7, 6
	andi	s5, a0, 256
	lui	a3, %hi(resTrans_B)
	addi	a3, a3, %lo(resTrans_B)
	add	a0, a3, s5
	slli	s1, s2, 2
	andi	s1, s1, 16
	add	a2, a0, s1
	lw	a2, 0(a2)
	ld	a4, 928(sp)                     # 8-byte Folded Reload
	add	a1, a1, a4
	mv	s11, a4
	sw	a2, 0(a1)
	addi	s8, s1, 4
	add	a2, a0, s8
	lw	a2, 0(a2)
	sw	a2, 4(a1)
	addi	s9, s1, 8
	add	a2, a0, s9
	lw	a2, 0(a2)
	sw	a2, 8(a1)
	addi	s3, s1, 12
	add	a0, a0, s3
	lw	a0, 0(a0)
	sw	a0, 12(a1)
	addi	s0, s5, 64
	add	a0, a3, s0
	add	a2, a0, s1
	lw	a2, 0(a2)
	sw	a2, 64(a1)
	add	a2, a0, s8
	lw	a2, 0(a2)
	sw	a2, 68(a1)
	add	a2, a0, s9
	lw	a2, 0(a2)
	sw	a2, 72(a1)
	add	a0, a0, s3
	lw	a0, 0(a0)
	sw	a0, 76(a1)
	addi	s6, s5, 128
	add	a0, a3, s6
	add	a2, a0, s1
	lw	a2, 0(a2)
	sw	a2, 128(a1)
	add	a2, a0, s8
	lw	a2, 0(a2)
	sw	a2, 132(a1)
	add	a2, a0, s9
	lw	a2, 0(a2)
	sw	a2, 136(a1)
	add	a0, a0, s3
	lw	a0, 0(a0)
	sw	a0, 140(a1)
	addi	s4, s5, 192
	add	a0, a3, s4
	add	a2, a0, s1
	lw	a2, 0(a2)
	sw	a2, 192(a1)
	add	a2, a0, s8
	lw	a2, 0(a2)
	sw	a2, 196(a1)
	add	a2, a0, s9
	lw	a2, 0(a2)
	sw	a2, 200(a1)
	add	a0, a0, s3
	lw	a0, 0(a0)
	sw	a0, 204(a1)
	ld	a0, 904(sp)                     # 8-byte Folded Reload
	mv	a1, s10
	li	a2, 0
	call	RDCost_for_4x4Blocks_Chroma
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	a1, a1, s11
	lw	a2, 0(a1)
	lui	t0, %hi(resTrans_R)
	addi	t0, t0, %lo(resTrans_R)
	add	a3, t0, s5
	add	a4, a3, s1
	lw	a4, 0(a4)
	lui	a7, %hi(rec_resB)
	addi	a7, a7, %lo(rec_resB)
	add	a5, a7, s5
	add	a6, a5, s1
	sw	a2, 0(a6)
	sw	a4, 0(a1)
	lw	a2, 4(a1)
	add	a4, a3, s8
	lw	a4, 0(a4)
	add	a6, a5, s8
	sw	a2, 0(a6)
	sw	a4, 4(a1)
	lw	a2, 8(a1)
	add	a4, a3, s9
	lw	a4, 0(a4)
	add	a6, a5, s9
	sw	a2, 0(a6)
	sw	a4, 8(a1)
	lw	a2, 12(a1)
	add	a3, a3, s3
	lw	a3, 0(a3)
	add	a5, a5, s3
	sw	a2, 0(a5)
	sw	a3, 12(a1)
	lw	a2, 64(a1)
	add	a3, t0, s0
	add	a4, a3, s1
	lw	a4, 0(a4)
	add	a5, a7, s0
	add	a6, a5, s1
	sw	a2, 0(a6)
	sw	a4, 64(a1)
	lw	a2, 68(a1)
	add	a4, a3, s8
	lw	a4, 0(a4)
	add	a6, a5, s8
	sw	a2, 0(a6)
	sw	a4, 68(a1)
	lw	a2, 72(a1)
	add	a4, a3, s9
	lw	a4, 0(a4)
	add	a6, a5, s9
	sw	a2, 0(a6)
	sw	a4, 72(a1)
	lw	a2, 76(a1)
	add	a3, a3, s3
	lw	a3, 0(a3)
	add	a5, a5, s3
	sw	a2, 0(a5)
	sw	a3, 76(a1)
	lw	a2, 128(a1)
	add	a3, t0, s6
	add	a4, a3, s1
	lw	a4, 0(a4)
	add	a5, a7, s6
	add	a6, a5, s1
	sw	a2, 0(a6)
	sw	a4, 128(a1)
	lw	a2, 132(a1)
	add	a4, a3, s8
	lw	a4, 0(a4)
	add	a6, a5, s8
	sw	a2, 0(a6)
	sw	a4, 132(a1)
	lw	a2, 136(a1)
	add	a4, a3, s9
	lw	a4, 0(a4)
	add	a6, a5, s9
	sw	a2, 0(a6)
	sw	a4, 136(a1)
	lw	a2, 140(a1)
	add	a3, a3, s3
	lw	a3, 0(a3)
	add	a5, a5, s3
	sw	a2, 0(a5)
	sw	a3, 140(a1)
	lw	a2, 192(a1)
	add	a3, t0, s4
	add	a4, a3, s1
	lw	a4, 0(a4)
	add	a5, a7, s4
	add	a6, a5, s1
	sw	a2, 0(a6)
	sw	a4, 192(a1)
	lw	a2, 196(a1)
	add	a4, a3, s8
	lw	a4, 0(a4)
	add	a6, a5, s8
	sw	a2, 0(a6)
	sw	a4, 196(a1)
	lw	a2, 200(a1)
	add	a4, a3, s9
	lw	a4, 0(a4)
	add	a6, a5, s9
	sw	a2, 0(a6)
	sw	a4, 200(a1)
	lw	a2, 204(a1)
	add	a3, a3, s3
	lw	a3, 0(a3)
	mv	s11, a0
	add	a5, a5, s3
	sw	a2, 0(a5)
	sw	a3, 204(a1)
	li	a2, 1
	ld	a0, 896(sp)                     # 8-byte Folded Reload
	mv	a1, s10
	call	RDCost_for_4x4Blocks_Chroma
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	ld	a2, 928(sp)                     # 8-byte Folded Reload
	add	a2, a1, a2
	lw	a3, 0(a2)
	lui	a5, %hi(rec_resR)
	addi	a5, a5, %lo(rec_resR)
	add	s5, a5, s5
	add	a4, s5, s1
	sw	a3, 0(a4)
	lw	a3, 4(a2)
	add	a4, s5, s8
	sw	a3, 0(a4)
	lw	a3, 8(a2)
	add	a4, s5, s9
	sw	a3, 0(a4)
	lw	a3, 12(a2)
	add	s5, s5, s3
	sw	a3, 0(s5)
	lw	a3, 64(a2)
	add	s0, a5, s0
	add	a4, s0, s1
	sw	a3, 0(a4)
	lw	a3, 68(a2)
	add	a4, s0, s8
	sw	a3, 0(a4)
	lw	a3, 72(a2)
	add	a4, s0, s9
	sw	a3, 0(a4)
	lw	a3, 76(a2)
	add	s0, s0, s3
	sw	a3, 0(s0)
	lw	a3, 128(a2)
	add	s6, a5, s6
	add	a4, s6, s1
	sw	a3, 0(a4)
	lw	a3, 132(a2)
	add	a4, s6, s8
	sw	a3, 0(a4)
	lw	a3, 136(a2)
	add	a4, s6, s9
	sw	a3, 0(a4)
	lw	a3, 140(a2)
	add	s6, s6, s3
	sw	a3, 0(s6)
	lw	a3, 192(a2)
	add	s4, a5, s4
	add	s1, s4, s1
	sw	a3, 0(s1)
	lw	a3, 196(a2)
	add	s8, s4, s8
	sw	a3, 0(s8)
	lw	a3, 200(a2)
	add	s9, s4, s9
	sw	a3, 0(s9)
	lw	a2, 204(a2)
	add	s3, s4, s3
	sw	a2, 0(s3)
	ld	a2, 944(sp)                     # 8-byte Folded Reload
	add	s11, s11, a2
	add	s11, s11, a0
	addiw	s10, s10, 1
	addi	s7, s7, 2
	addi	s2, s2, 4
	li	a0, 4
	bne	s10, a0, .LBB1_34
# %bb.35:                               #   in Loop: Header=BB1_24 Depth=1
	sd	s11, 944(sp)                    # 8-byte Folded Spill
	call	reset_coding_state_cs_cm
	lui	a0, %hi(img)
	ld	t3, %lo(img)(a0)
	li	a6, 0
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 22
	addiw	a5, a1, -928
	add	a5, t3, a5
	lui	a1, 2
	addiw	a1, a1, -1768
	add	a3, a0, a1
	ld	a0, 40(a3)
	lui	a1, 3
	addiw	a1, a1, 1848
	add	a1, t3, a1
	lw	a7, 1352(a5)
	ld	a2, 0(a0)
	lw	t0, 1348(a5)
	ld	a3, 0(a3)
	ld	a4, 8(a0)
	ld	t1, 872(sp)                     # 8-byte Folded Reload
	add	t1, t3, t1
	ld	t2, 840(sp)                     # 8-byte Folded Reload
	add	t2, t3, t2
	ld	t4, 832(sp)                     # 8-byte Folded Reload
	add	t3, t3, t4
	lui	t4, %hi(rec_resG)
	addi	t4, t4, %lo(rec_resG)
	lui	t5, %hi(rec_resB)
	addi	t5, t5, %lo(rec_resB)
	lui	t6, %hi(rec_resR)
	addi	t6, t6, %lo(rec_resR)
	j	.LBB1_37
.LBB1_36:                               #   in Loop: Header=BB1_37 Depth=2
	addi	a6, a6, 1
	addi	t1, t1, 16
	addi	t2, t2, 32
	addi	t3, t3, 32
	addi	t6, t6, 64
	addi	t5, t5, 64
	addi	t4, t4, 64
	li	s0, 8
	beq	a6, s0, .LBB1_45
.LBB1_37:                               #   Parent Loop BB1_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_39 Depth 3
	ld	s0, 912(sp)                     # 8-byte Folded Reload
	add	s0, a6, s0
	slli	s0, s0, 3
	add	s1, a2, s0
	add	s2, a3, s0
	add	s0, a4, s0
	ld	s3, 0(s0)
	ld	s2, 0(s2)
	ld	s4, 0(s1)
	li	s0, 0
	ld	s5, 936(sp)                     # 8-byte Folded Reload
	add	s1, s3, s5
	add	s2, s2, s5
	add	s3, s4, s5
	mv	s4, t4
	mv	s5, t5
	mv	s6, t6
	j	.LBB1_39
.LBB1_38:                               #   in Loop: Header=BB1_39 Depth=3
	add	s8, s1, s0
	sh	s7, 0(s8)
	addi	s0, s0, 2
	addi	s6, s6, 4
	addi	s5, s5, 4
	addi	s4, s4, 4
	li	s7, 16
	beq	s0, s7, .LBB1_36
.LBB1_39:                               #   Parent Loop BB1_24 Depth=1
                                        #     Parent Loop BB1_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	s9, 0(s5)
	lw	s8, 0(s4)
	srai	s10, s9, 1
	lw	s7, 0(s6)
	add	s11, t3, s0
	lhu	s11, 0(s11)
	subw	s10, s8, s10
	srli	s8, s7, 1
	subw	s8, s10, s8
	addw	s11, s8, s11
	sgtz	ra, s11
	neg	ra, ra
	and	ra, ra, s11
	mv	s11, a7
	blt	a7, ra, .LBB1_41
# %bb.40:                               #   in Loop: Header=BB1_39 Depth=3
	mv	s11, ra
.LBB1_41:                               #   in Loop: Header=BB1_39 Depth=3
	add	ra, s3, s0
	sh	s11, 0(ra)
	add	s11, t1, s0
	lhu	s11, 0(s11)
	add	s9, s10, s9
	addw	s9, s9, s11
	sgtz	s10, s9
	neg	s10, s10
	and	s10, s10, s9
	mv	s9, t0
	blt	t0, s10, .LBB1_43
# %bb.42:                               #   in Loop: Header=BB1_39 Depth=3
	mv	s9, s10
.LBB1_43:                               #   in Loop: Header=BB1_39 Depth=3
	add	s10, s2, s0
	sh	s9, 0(s10)
	add	s9, t2, s0
	lhu	s9, 0(s9)
	add	s7, s8, s7
	addw	s7, s7, s9
	sgtz	s8, s7
	neg	s8, s8
	and	s8, s8, s7
	mv	s7, a7
	blt	a7, s8, .LBB1_38
# %bb.44:                               #   in Loop: Header=BB1_39 Depth=3
	mv	s7, s8
	j	.LBB1_38
.LBB1_45:                               #   in Loop: Header=BB1_24 Depth=1
	lui	a6, %hi(imgUV_org)
	ld	t0, %lo(imgUV_org)(a6)
	ld	a5, 0(a5)
	lui	a6, %hi(imgY_org)
	ld	a6, %lo(imgY_org)(a6)
	ld	a7, 0(t0)
	ld	t0, 8(t0)
	li	t1, 0
	li	t2, 0
	ld	s9, 912(sp)                     # 8-byte Folded Reload
	ld	s11, 856(sp)                    # 8-byte Folded Reload
	ld	ra, 744(sp)                     # 8-byte Folded Reload
	li	s10, 9
.LBB1_46:                               #   Parent Loop BB1_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_47 Depth 3
	add	t3, t1, s9
	slli	t3, t3, 3
	add	t4, a6, t3
	ld	s1, 0(t4)
	add	t4, a3, t3
	ld	s0, 0(t4)
	add	t4, a7, t3
	add	t5, a2, t3
	add	t6, t0, t3
	add	t3, a4, t3
	ld	s2, 0(t3)
	ld	t6, 0(t6)
	ld	t5, 0(t5)
	ld	s3, 0(t4)
	ld	s4, 936(sp)                     # 8-byte Folded Reload
	add	t3, s2, s4
	add	t4, t6, s4
	add	t5, t5, s4
	add	t6, s3, s4
	add	s0, s0, s4
	add	s1, s1, s4
	add	s2, s2, ra
.LBB1_47:                               #   Parent Loop BB1_24 Depth=1
                                        #     Parent Loop BB1_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lhu	s3, 0(s1)
	lhu	s4, 0(s0)
	lhu	s5, 0(t6)
	lhu	s6, 0(t5)
	lhu	s7, 0(t4)
	lhu	s8, 0(t3)
	sub	s3, s3, s4
	sub	s4, s5, s6
	sub	s5, s7, s8
	slli	s3, s3, 2
	add	s3, a5, s3
	lw	s3, 0(s3)
	slli	s4, s4, 2
	add	s4, a5, s4
	lw	s4, 0(s4)
	slli	s5, s5, 2
	add	s5, a5, s5
	lw	s5, 0(s5)
	add	t2, t2, s3
	add	s4, s4, s5
	add	t2, t2, s4
	addi	t3, t3, 2
	addi	t4, t4, 2
	addi	t5, t5, 2
	addi	t6, t6, 2
	addi	s0, s0, 2
	addi	s1, s1, 2
	bne	t3, s2, .LBB1_47
# %bb.48:                               #   in Loop: Header=BB1_46 Depth=2
	addi	t1, t1, 1
	li	t3, 8
	bne	t1, t3, .LBB1_46
# %bb.49:                               #   in Loop: Header=BB1_24 Depth=1
	fcvt.d.l	fa5, t2
	ld	a2, 944(sp)                     # 8-byte Folded Reload
	fcvt.d.w	fa4, a2
	fmadd.d	fa5, fs0, fa4, fa5
	flt.d	a2, fa5, fs2
	ld	s8, 752(sp)                     # 8-byte Folded Reload
	lui	s5, %hi(dc_level_temp)
	addi	s5, s5, %lo(dc_level_temp)
	lui	s6, %hi(dc_level)
	addi	s6, s6, %lo(dc_level)
	lui	s7, %hi(cbp_chroma_block)
	addi	s7, s7, %lo(cbp_chroma_block)
	ld	s4, 920(sp)                     # 8-byte Folded Reload
	ld	s1, 848(sp)                     # 8-byte Folded Reload
	ld	s2, 784(sp)                     # 8-byte Folded Reload
	ld	s3, 872(sp)                     # 8-byte Folded Reload
	ld	ra, 816(sp)                     # 8-byte Folded Reload
	lui	s0, %hi(img)
	beqz	a2, .LBB1_23
# %bb.50:                               #   in Loop: Header=BB1_24 Depth=1
	ld	a2, 0(a1)
	lui	a1, %hi(cofAC8x8)
	ld	a1, %lo(cofAC8x8)(a1)
	slli	a3, s11, 3
	add	a2, a2, a3
	ld	t2, 0(a2)
	add	a1, a1, a3
	ld	t3, 0(a1)
	ld	a1, 0(t2)
	ld	a3, 0(t3)
	ld	a4, 8(t2)
	ld	a5, 8(t3)
	ld	t0, 0(a1)
	ld	t1, 0(a3)
	ld	t4, 0(a4)
	ld	t5, 0(a5)
	ld	a6, 16(t2)
	ld	a7, 16(t3)
	ld	t3, 24(t3)
	ld	t2, 24(t2)
	ld	t6, 0(a6)
	ld	s0, 0(a7)
	ld	s1, 0(t3)
	ld	s2, 0(t2)
	addi	s3, s1, 260
.LBB1_51:                               #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	s4, 0(t0)
	sw	s4, 0(t1)
	lw	s4, 0(t4)
	sw	s4, 0(t5)
	lw	s4, 0(t6)
	sw	s4, 0(s0)
	lw	s4, 0(s2)
	sw	s4, 0(s1)
	addi	s1, s1, 4
	addi	s2, s2, 4
	addi	s0, s0, 4
	addi	t6, t6, 4
	addi	t5, t5, 4
	addi	t4, t4, 4
	addi	t1, t1, 4
	addi	t0, t0, 4
	bne	s1, s3, .LBB1_51
# %bb.52:                               #   in Loop: Header=BB1_24 Depth=1
	ld	a1, 8(a1)
	ld	a3, 8(a3)
	ld	a4, 8(a4)
	ld	a5, 8(a5)
	ld	a6, 8(a6)
	ld	a7, 8(a7)
	ld	t0, 8(t3)
	ld	t1, 8(t2)
	addi	t2, t0, 260
.LBB1_53:                               #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t3, 0(a1)
	sw	t3, 0(a3)
	lw	t3, 0(a4)
	sw	t3, 0(a5)
	lw	t3, 0(a6)
	sw	t3, 0(a7)
	lw	t3, 0(t1)
	sw	t3, 0(t0)
	addi	t0, t0, 4
	addi	t1, t1, 4
	addi	a7, a7, 4
	addi	a6, a6, 4
	addi	a5, a5, 4
	addi	a4, a4, 4
	addi	a3, a3, 4
	addi	a1, a1, 4
	bne	t0, t2, .LBB1_53
# %bb.54:                               #   in Loop: Header=BB1_24 Depth=1
	ld	a1, 32(a2)
	ld	a2, 64(a2)
	li	a3, 0
.LBB1_55:                               #   Parent Loop BB1_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_56 Depth 3
	slli	a5, a3, 3
	add	a4, a1, a5
	ld	a6, 0(a4)
	ld	a7, 0(a6)
	lw	t0, 0(a7)
	li	a4, 144
	mul	a4, a3, a4
	lui	t1, %hi(cofAC8x8_chroma)
	addi	t1, t1, %lo(cofAC8x8_chroma)
	add	a4, t1, a4
	sw	t0, 0(a4)
	lw	t0, 4(a7)
	sw	t0, 4(a4)
	lw	t0, 8(a7)
	sw	t0, 8(a4)
	lw	t0, 12(a7)
	sw	t0, 12(a4)
	lw	t0, 16(a7)
	sw	t0, 16(a4)
	lw	t0, 20(a7)
	sw	t0, 20(a4)
	lw	t0, 24(a7)
	sw	t0, 24(a4)
	lw	t0, 28(a7)
	sw	t0, 28(a4)
	lw	t0, 32(a7)
	sw	t0, 32(a4)
	lw	t0, 36(a7)
	sw	t0, 36(a4)
	lw	t0, 40(a7)
	sw	t0, 40(a4)
	lw	t0, 44(a7)
	sw	t0, 44(a4)
	lw	t0, 48(a7)
	sw	t0, 48(a4)
	lw	t0, 52(a7)
	sw	t0, 52(a4)
	lw	t0, 56(a7)
	sw	t0, 56(a4)
	lw	t0, 60(a7)
	sw	t0, 60(a4)
	lw	t0, 64(a7)
	sw	t0, 64(a4)
	lw	a7, 68(a7)
	ld	a6, 8(a6)
	sw	a7, 68(a4)
	lw	a7, 0(a6)
	sw	a7, 72(a4)
	lw	a7, 4(a6)
	sw	a7, 76(a4)
	lw	a7, 8(a6)
	sw	a7, 80(a4)
	lw	a7, 12(a6)
	sw	a7, 84(a4)
	lw	a7, 16(a6)
	sw	a7, 88(a4)
	lw	a7, 20(a6)
	sw	a7, 92(a4)
	lw	a7, 24(a6)
	sw	a7, 96(a4)
	lw	a7, 28(a6)
	sw	a7, 100(a4)
	lw	a7, 32(a6)
	sw	a7, 104(a4)
	lw	a7, 36(a6)
	sw	a7, 108(a4)
	lw	a7, 40(a6)
	sw	a7, 112(a4)
	lw	a7, 44(a6)
	sw	a7, 116(a4)
	lw	a7, 48(a6)
	sw	a7, 120(a4)
	lw	a7, 52(a6)
	sw	a7, 124(a4)
	lw	a7, 56(a6)
	sw	a7, 128(a4)
	lw	a7, 60(a6)
	sw	a7, 132(a4)
	lw	a7, 64(a6)
	add	a5, a2, a5
	ld	a5, 0(a5)
	sw	a7, 136(a4)
	lw	a6, 68(a6)
	ld	a7, 0(a5)
	sw	a6, 140(a4)
	lw	a6, 0(a7)
	sw	a6, 576(a4)
	lw	a6, 4(a7)
	sw	a6, 580(a4)
	lw	a6, 8(a7)
	sw	a6, 584(a4)
	lw	a6, 12(a7)
	sw	a6, 588(a4)
	lw	a6, 16(a7)
	sw	a6, 592(a4)
	lw	a6, 20(a7)
	sw	a6, 596(a4)
	lw	a6, 24(a7)
	sw	a6, 600(a4)
	lw	a6, 28(a7)
	sw	a6, 604(a4)
	lw	a6, 32(a7)
	sw	a6, 608(a4)
	lw	a6, 36(a7)
	sw	a6, 612(a4)
	lw	a6, 40(a7)
	sw	a6, 616(a4)
	lw	a6, 44(a7)
	sw	a6, 620(a4)
	lw	a6, 48(a7)
	sw	a6, 624(a4)
	lw	a6, 52(a7)
	sw	a6, 628(a4)
	lw	a6, 56(a7)
	sw	a6, 632(a4)
	lw	a6, 60(a7)
	sw	a6, 636(a4)
	lw	a6, 64(a7)
	sw	a6, 640(a4)
	lw	a6, 68(a7)
	ld	a5, 8(a5)
	sw	a6, 644(a4)
	lw	a6, 0(a5)
	sw	a6, 648(a4)
	lw	a6, 4(a5)
	sw	a6, 652(a4)
	lw	a6, 8(a5)
	sw	a6, 656(a4)
	lw	a6, 12(a5)
	sw	a6, 660(a4)
	lw	a6, 16(a5)
	sw	a6, 664(a4)
	lw	a6, 20(a5)
	sw	a6, 668(a4)
	lw	a6, 24(a5)
	sw	a6, 672(a4)
	lw	a6, 28(a5)
	sw	a6, 676(a4)
	lw	a6, 32(a5)
	sw	a6, 680(a4)
	lw	a6, 36(a5)
	sw	a6, 684(a4)
	lw	a6, 40(a5)
	sw	a6, 688(a4)
	lw	a6, 44(a5)
	sw	a6, 692(a4)
	lw	a6, 48(a5)
	sw	a6, 696(a4)
	lw	a6, 52(a5)
	sw	a6, 700(a4)
	lw	a6, 56(a5)
	sw	a6, 704(a4)
	lw	a6, 60(a5)
	sw	a6, 708(a4)
	lw	a6, 64(a5)
	li	s0, 0
	sw	a6, 712(a4)
	lw	a5, 68(a5)
	andi	a6, a3, 1
	srliw	a7, a3, 1
	slli	t0, a6, 2
	sw	a5, 716(a4)
	slli	a4, a7, 2
	ld	a5, 880(sp)                     # 8-byte Folded Reload
	or	a6, a6, a5
	ld	a5, 888(sp)                     # 8-byte Folded Reload
	or	a7, a7, a5
	addw	a4, a4, s9
	mv	s10, s8
	addw	a5, t0, s8
	addiw	t0, a5, 1
	addiw	t2, a5, 2
	addiw	t3, a5, 3
	addiw	t4, a4, 1
	addiw	t5, a4, 2
	addiw	t6, a4, 3
	li	t1, 1
	slli	a6, a6, 4
	slli	a7, a7, 2
	slli	t0, t0, 1
	slli	t2, t2, 1
	slli	t3, t3, 1
	slli	t4, t4, 3
	slli	t5, t5, 3
	slli	t6, t6, 3
	lui	s11, %hi(cbp_chroma_block_temp)
	addi	s11, s11, %lo(cbp_chroma_block_temp)
	addi	s8, sp, 956
.LBB1_56:                               #   Parent Loop BB1_24 Depth=1
                                        #     Parent Loop BB1_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli	s2, s0, 6
	add	s1, s5, s2
	add	s3, a6, a7
	add	s1, s1, s3
	lw	s1, 0(s1)
	add	s3, s6, s2
	add	s4, a6, a7
	add	s3, s3, s4
	sw	s1, 0(s3)
	add	s1, s11, s2
	add	s3, a6, a7
	add	s1, s1, s3
	lw	s3, 0(s1)
	slli	s1, s0, 3
	add	s1, a0, s1
	ld	s1, 0(s1)
	add	s2, s7, s2
	add	s4, a6, a7
	slli	s5, a4, 3
	add	s5, s1, s5
	ld	s5, 0(s5)
	add	s2, s2, s4
	sw	s3, 0(s2)
	slli	s2, a5, 1
	add	s3, s5, s2
	lhu	s3, 0(s3)
	slli	s0, s0, 8
	add	s0, s8, s0
	slli	s4, a3, 6
	add	s0, s0, s4
	sw	s3, 0(s0)
	add	s3, s5, t0
	lhu	s3, 0(s3)
	add	s4, s5, t2
	add	s6, s1, t4
	ld	s6, 0(s6)
	lhu	s4, 0(s4)
	add	s5, s5, t3
	lhu	s5, 0(s5)
	add	s7, s6, s2
	lhu	s7, 0(s7)
	sw	s3, 4(s0)
	sw	s4, 8(s0)
	sw	s5, 12(s0)
	sw	s7, 16(s0)
	add	s3, s6, t0
	lhu	s3, 0(s3)
	add	s4, s6, t2
	add	s5, s1, t5
	ld	s5, 0(s5)
	lhu	s4, 0(s4)
	add	s6, s6, t3
	lhu	s6, 0(s6)
	add	s7, s5, s2
	lhu	s7, 0(s7)
	sw	s3, 20(s0)
	sw	s4, 24(s0)
	sw	s6, 28(s0)
	lui	s6, %hi(dc_level)
	addi	s6, s6, %lo(dc_level)
	sw	s7, 32(s0)
	lui	s7, %hi(cbp_chroma_block)
	addi	s7, s7, %lo(cbp_chroma_block)
	add	s3, s5, t0
	lhu	s3, 0(s3)
	add	s4, s5, t2
	lhu	s4, 0(s4)
	add	s5, s5, t3
	lhu	s5, 0(s5)
	add	s1, s1, t6
	ld	s1, 0(s1)
	sw	s3, 36(s0)
	sw	s4, 40(s0)
	sw	s5, 44(s0)
	lui	s5, %hi(dc_level_temp)
	addi	s5, s5, %lo(dc_level_temp)
	add	s2, s1, s2
	lhu	s2, 0(s2)
	add	s3, s1, t0
	lhu	s3, 0(s3)
	add	s4, s1, t2
	lhu	s4, 0(s4)
	add	s1, s1, t3
	lhu	s1, 0(s1)
	sw	s2, 48(s0)
	sw	s3, 52(s0)
	sw	s4, 56(s0)
	sw	s1, 60(s0)
	andi	s1, t1, 1
	li	s0, 1
	li	t1, 0
	bnez	s1, .LBB1_56
# %bb.57:                               #   in Loop: Header=BB1_55 Depth=2
	addi	a3, a3, 1
	li	a4, 4
	mv	s8, s10
	bne	a3, a4, .LBB1_55
# %bb.58:                               #   in Loop: Header=BB1_24 Depth=1
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	add	a0, a0, a1
	ld	a0, -1768(a0)
	slli	a1, s9, 3
	add	a0, a0, a1
	ld	a1, 0(a0)
	ld	a4, 936(sp)                     # 8-byte Folded Reload
	add	a2, a1, a4
	lhu	a2, 0(a2)
	sd	a2, 264(sp)                     # 8-byte Folded Spill
	ld	a5, 176(sp)                     # 8-byte Folded Reload
	add	a2, a1, a5
	lhu	a2, 0(a2)
	sd	a2, 256(sp)                     # 8-byte Folded Spill
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	add	a2, a1, a6
	lhu	a2, 0(a2)
	sd	a2, 248(sp)                     # 8-byte Folded Spill
	ld	a7, 160(sp)                     # 8-byte Folded Reload
	add	a2, a1, a7
	lhu	a2, 0(a2)
	sd	a2, 240(sp)                     # 8-byte Folded Spill
	ld	t0, 152(sp)                     # 8-byte Folded Reload
	add	a2, a1, t0
	lhu	a2, 0(a2)
	sd	a2, 232(sp)                     # 8-byte Folded Spill
	ld	t1, 144(sp)                     # 8-byte Folded Reload
	add	a2, a1, t1
	lhu	a2, 0(a2)
	sd	a2, 224(sp)                     # 8-byte Folded Spill
	ld	t2, 136(sp)                     # 8-byte Folded Reload
	add	a2, a1, t2
	ld	a3, 8(a0)
	lhu	a2, 0(a2)
	sd	a2, 216(sp)                     # 8-byte Folded Spill
	ld	t3, 128(sp)                     # 8-byte Folded Reload
	add	a1, a1, t3
	lhu	a1, 0(a1)
	sd	a1, 208(sp)                     # 8-byte Folded Spill
	add	a1, a3, a4
	lhu	a1, 0(a1)
	sd	a1, 328(sp)                     # 8-byte Folded Spill
	add	a1, a3, a5
	lhu	a1, 0(a1)
	sd	a1, 320(sp)                     # 8-byte Folded Spill
	add	a1, a3, a6
	lhu	a1, 0(a1)
	sd	a1, 312(sp)                     # 8-byte Folded Spill
	add	a1, a3, a7
	lhu	a1, 0(a1)
	sd	a1, 304(sp)                     # 8-byte Folded Spill
	add	a1, a3, t0
	lhu	a1, 0(a1)
	sd	a1, 296(sp)                     # 8-byte Folded Spill
	add	a1, a3, t1
	lhu	a1, 0(a1)
	sd	a1, 288(sp)                     # 8-byte Folded Spill
	add	a1, a3, t2
	ld	a2, 16(a0)
	lhu	a1, 0(a1)
	sd	a1, 280(sp)                     # 8-byte Folded Spill
	add	a3, a3, t3
	lhu	a1, 0(a3)
	sd	a1, 272(sp)                     # 8-byte Folded Spill
	add	a1, a2, a4
	lhu	a1, 0(a1)
	sd	a1, 392(sp)                     # 8-byte Folded Spill
	add	a1, a2, a5
	lhu	a1, 0(a1)
	sd	a1, 384(sp)                     # 8-byte Folded Spill
	add	a1, a2, a6
	lhu	a1, 0(a1)
	sd	a1, 376(sp)                     # 8-byte Folded Spill
	add	a1, a2, a7
	lhu	a1, 0(a1)
	sd	a1, 368(sp)                     # 8-byte Folded Spill
	add	a1, a2, t0
	lhu	a1, 0(a1)
	sd	a1, 360(sp)                     # 8-byte Folded Spill
	add	a1, a2, t1
	lhu	a1, 0(a1)
	sd	a1, 352(sp)                     # 8-byte Folded Spill
	add	a1, a2, t2
	ld	a3, 24(a0)
	lhu	a1, 0(a1)
	sd	a1, 344(sp)                     # 8-byte Folded Spill
	add	a2, a2, t3
	lhu	a1, 0(a2)
	sd	a1, 336(sp)                     # 8-byte Folded Spill
	add	a1, a3, a4
	lhu	a1, 0(a1)
	sd	a1, 456(sp)                     # 8-byte Folded Spill
	add	a1, a3, a5
	lhu	a1, 0(a1)
	sd	a1, 448(sp)                     # 8-byte Folded Spill
	add	a1, a3, a6
	lhu	a1, 0(a1)
	sd	a1, 440(sp)                     # 8-byte Folded Spill
	add	a1, a3, a7
	lhu	a1, 0(a1)
	sd	a1, 432(sp)                     # 8-byte Folded Spill
	add	a1, a3, t0
	lhu	a1, 0(a1)
	sd	a1, 424(sp)                     # 8-byte Folded Spill
	add	a1, a3, t1
	lhu	a1, 0(a1)
	sd	a1, 416(sp)                     # 8-byte Folded Spill
	add	a1, a3, t2
	ld	a2, 32(a0)
	lhu	a1, 0(a1)
	sd	a1, 408(sp)                     # 8-byte Folded Spill
	add	a3, a3, t3
	lhu	a1, 0(a3)
	sd	a1, 400(sp)                     # 8-byte Folded Spill
	add	a1, a2, a4
	lhu	a1, 0(a1)
	sd	a1, 520(sp)                     # 8-byte Folded Spill
	add	a1, a2, a5
	lhu	a1, 0(a1)
	sd	a1, 512(sp)                     # 8-byte Folded Spill
	add	a1, a2, a6
	lhu	a1, 0(a1)
	sd	a1, 504(sp)                     # 8-byte Folded Spill
	add	a1, a2, a7
	lhu	a1, 0(a1)
	sd	a1, 496(sp)                     # 8-byte Folded Spill
	add	a1, a2, t0
	lhu	a1, 0(a1)
	sd	a1, 488(sp)                     # 8-byte Folded Spill
	add	a1, a2, t1
	lhu	a1, 0(a1)
	sd	a1, 480(sp)                     # 8-byte Folded Spill
	add	a1, a2, t2
	ld	a3, 40(a0)
	lhu	a1, 0(a1)
	sd	a1, 472(sp)                     # 8-byte Folded Spill
	add	a2, a2, t3
	lhu	a1, 0(a2)
	sd	a1, 464(sp)                     # 8-byte Folded Spill
	add	a1, a3, a4
	lhu	a1, 0(a1)
	sd	a1, 600(sp)                     # 8-byte Folded Spill
	add	a1, a3, a5
	lhu	a1, 0(a1)
	sd	a1, 592(sp)                     # 8-byte Folded Spill
	add	a1, a3, a6
	lhu	a1, 0(a1)
	sd	a1, 584(sp)                     # 8-byte Folded Spill
	add	a1, a3, a7
	lhu	a1, 0(a1)
	sd	a1, 576(sp)                     # 8-byte Folded Spill
	add	a1, a3, t0
	lhu	a1, 0(a1)
	sd	a1, 560(sp)                     # 8-byte Folded Spill
	add	a1, a3, t1
	lhu	a1, 0(a1)
	sd	a1, 544(sp)                     # 8-byte Folded Spill
	add	a1, a3, t2
	ld	a2, 48(a0)
	lhu	a1, 0(a1)
	sd	a1, 536(sp)                     # 8-byte Folded Spill
	add	a3, a3, t3
	lhu	a1, 0(a3)
	sd	a1, 528(sp)                     # 8-byte Folded Spill
	add	a1, a2, a4
	lhu	a1, 0(a1)
	sd	a1, 648(sp)                     # 8-byte Folded Spill
	add	a1, a2, a5
	lhu	a1, 0(a1)
	sd	a1, 640(sp)                     # 8-byte Folded Spill
	add	a1, a2, a6
	lhu	a1, 0(a1)
	sd	a1, 632(sp)                     # 8-byte Folded Spill
	add	a1, a2, a7
	lhu	a1, 0(a1)
	sd	a1, 624(sp)                     # 8-byte Folded Spill
	add	a1, a2, t0
	lhu	a1, 0(a1)
	sd	a1, 616(sp)                     # 8-byte Folded Spill
	add	a1, a2, t1
	lhu	a1, 0(a1)
	sd	a1, 608(sp)                     # 8-byte Folded Spill
	ld	a0, 56(a0)
	add	a1, a2, t2
	lhu	a1, 0(a1)
	sd	a1, 568(sp)                     # 8-byte Folded Spill
	add	a2, a2, t3
	lhu	a1, 0(a2)
	sd	a1, 552(sp)                     # 8-byte Folded Spill
	add	a1, a0, a4
	lhu	a1, 0(a1)
	sd	a1, 712(sp)                     # 8-byte Folded Spill
	add	a1, a0, a5
	lhu	a1, 0(a1)
	sd	a1, 704(sp)                     # 8-byte Folded Spill
	add	a1, a0, a6
	lhu	a1, 0(a1)
	sd	a1, 696(sp)                     # 8-byte Folded Spill
	add	a1, a0, a7
	lhu	a1, 0(a1)
	sd	a1, 688(sp)                     # 8-byte Folded Spill
	add	a1, a0, t0
	lhu	a1, 0(a1)
	sd	a1, 680(sp)                     # 8-byte Folded Spill
	add	a1, a0, t1
	lhu	a1, 0(a1)
	sd	a1, 672(sp)                     # 8-byte Folded Spill
	add	a1, a0, t2
	lhu	a1, 0(a1)
	sd	a1, 664(sp)                     # 8-byte Folded Spill
	add	a0, a0, t3
	lhu	a0, 0(a0)
	sd	a0, 656(sp)                     # 8-byte Folded Spill
	addi	a0, sp, 2047
	addi	a0, a0, 1785
	lw	a0, 0(a0)
	sd	a0, 720(sp)                     # 8-byte Folded Spill
	fmv.d	fs2, fa5
	ld	a0, 824(sp)                     # 8-byte Folded Reload
	sd	a0, 776(sp)                     # 8-byte Folded Spill
	ld	s4, 920(sp)                     # 8-byte Folded Reload
	ld	s1, 848(sp)                     # 8-byte Folded Reload
	ld	s2, 784(sp)                     # 8-byte Folded Reload
	ld	s3, 872(sp)                     # 8-byte Folded Reload
	lui	s0, %hi(img)
	li	s10, 9
	ld	s11, 856(sp)                    # 8-byte Folded Reload
	j	.LBB1_23
.LBB1_59:                               #   in Loop: Header=BB1_24 Depth=1
	mv	s5, ra
	add	a1, a1, ra
	addi	a2, sp, 2047
	addi	a2, a2, 1545
	ld	a3, 800(sp)                     # 8-byte Folded Reload
	ld	t2, 728(sp)                     # 8-byte Folded Reload
.LBB1_60:                               #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a4, 0(a3)
	add	a4, a4, s4
	lhu	a5, 0(a4)
	lhu	a6, -14(a1)
	lhu	a7, 2(a4)
	lhu	t0, -12(a1)
	subw	a5, a5, a6
	sw	a5, -16(a2)
	subw	a5, a7, t0
	lhu	a6, 4(a4)
	lhu	a7, -10(a1)
	lhu	t0, 6(a4)
	lhu	t1, -8(a1)
	sw	a5, -12(a2)
	subw	a5, a6, a7
	sw	a5, -8(a2)
	subw	a5, t0, t1
	lhu	a6, 8(a4)
	lhu	a7, -6(a1)
	lhu	t0, 10(a4)
	lhu	t1, -4(a1)
	sw	a5, -4(a2)
	subw	a5, a6, a7
	sw	a5, 0(a2)
	subw	a5, t0, t1
	lhu	a6, 12(a4)
	lhu	a7, -2(a1)
	lhu	a4, 14(a4)
	lhu	t0, 0(a1)
	sw	a5, 4(a2)
	subw	a5, a6, a7
	sw	a5, 8(a2)
	subw	a4, a4, t0
	sw	a4, 12(a2)
	addi	a3, a3, 8
	addi	a1, a1, 16
	addi	a2, a2, 32
	bne	a3, t2, .LBB1_60
# %bb.61:                               #   in Loop: Header=BB1_24 Depth=1
	ld	a1, 864(sp)                     # 8-byte Folded Reload
	xor	a2, s1, a1
	lw	a1, 24(a0)
	seqz	a0, a2
	addi	a0, a0, -1
	ld	s0, 736(sp)                     # 8-byte Folded Reload
	and	s0, a0, s0
	addi	a0, sp, 2047
	addi	a0, a0, 1529
	call	SATD8X8
	ld	a2, 760(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a2)
	addw	a0, a0, s0
	blt	a0, a1, .LBB1_62
	j	.LBB1_22
.LBB1_62:                               #   in Loop: Header=BB1_24 Depth=1
	sw	a0, 0(a2)
	sd	s6, 776(sp)                     # 8-byte Folded Spill
	j	.LBB1_22
.LBB1_63:                               #   in Loop: Header=BB1_24 Depth=1
	addi	a0, s1, -1
	seqz	a0, a0
	addi	a1, s1, -8
	seqz	a1, a1
	or	a0, a0, a1
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	mv	s6, s1
	and	a0, a0, a1
	beqz	a0, .LBB1_64
	j	.LBB1_27
.LBB1_64:                               #   in Loop: Header=BB1_24 Depth=1
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB1_108
	j	.LBB1_23
.LBB1_108:                              #   in Loop: Header=BB1_24 Depth=1
	j	.LBB1_27
.LBB1_65:                               # %.preheader5
                                        #   in Loop: Header=BB1_24 Depth=1
	mv	s5, ra
	lui	a0, 3
	addiw	a0, a0, 852
	ld	a3, 800(sp)                     # 8-byte Folded Reload
	mv	a4, s3
	ld	a5, 192(sp)                     # 8-byte Folded Reload
.LBB1_66:                               #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a6, a1, a4
	lh	a7, 14(a6)
	add	a1, a1, a5
	sh	a7, 14(a1)
	lh	a7, 12(a6)
	sh	a7, 12(a1)
	lh	a7, 10(a6)
	sh	a7, 10(a1)
	lh	a7, 8(a6)
	sh	a7, 8(a1)
	lh	a7, 6(a6)
	sh	a7, 6(a1)
	lh	a7, 4(a6)
	sh	a7, 4(a1)
	lh	a7, 2(a6)
	sh	a7, 2(a1)
	lh	a6, 0(a6)
	sh	a6, 0(a1)
	ld	a6, 0(a3)
	ld	a1, %lo(img)(s0)
	add	a6, a6, s4
	lhu	a7, 0(a6)
	add	t0, a1, a4
	lhu	t1, 0(t0)
	lhu	t2, 2(a6)
	lhu	t3, 2(t0)
	subw	a7, a7, t1
	add	t1, a1, a0
	sw	a7, -28(t1)
	subw	a7, t2, t3
	lhu	t2, 4(a6)
	lhu	t3, 4(t0)
	lhu	t4, 6(a6)
	lhu	t5, 6(t0)
	sw	a7, -24(t1)
	subw	a7, t2, t3
	sw	a7, -20(t1)
	subw	t4, t4, t5
	lhu	a7, 8(a6)
	lhu	t2, 8(t0)
	lhu	t3, 10(a6)
	lhu	t5, 10(t0)
	sw	t4, -16(t1)
	subw	a7, a7, t2
	sw	a7, -12(t1)
	subw	t3, t3, t5
	lhu	a7, 12(a6)
	lhu	t2, 12(t0)
	lhu	a6, 14(a6)
	lhu	t0, 14(t0)
	sw	t3, -8(t1)
	subw	a7, a7, t2
	sw	a7, -4(t1)
	subw	a6, a6, t0
	sw	a6, 0(t1)
	addi	a5, a5, 32
	addi	a4, a4, 16
	addi	a3, a3, 8
	addi	a0, a0, 64
	bne	a5, s2, .LBB1_66
# %bb.67:                               #   in Loop: Header=BB1_24 Depth=1
	addi	a0, sp, 2047
	addi	a0, a0, 1785
	mv	a1, s11
	fmv.d	fa0, fs0
	ld	a3, 864(sp)                     # 8-byte Folded Reload
	call	RDCost_for_8x8IntraBlocks
	flt.d	a0, fa0, fs2
	beqz	a0, .LBB1_72
# %bb.68:                               #   in Loop: Header=BB1_24 Depth=1
	fmv.d	fs1, fa0
	sd	s6, 824(sp)                     # 8-byte Folded Spill
	ld	a0, %lo(img)(s0)
	mv	s0, s11
	lui	s11, %hi(cofAC8x8)
	ld	a1, %lo(cofAC8x8)(s11)
	lui	s7, 3
	add	a0, a0, s7
	ld	a0, 1848(a0)
	lui	s6, %hi(img)
	slli	s0, s0, 3
	add	a1, a1, s0
	ld	a1, 0(a1)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a2, 0(a0)
	ld	a0, 0(a1)
	ld	a1, 0(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s6)
	ld	a1, %lo(cofAC8x8)(s11)
	add	a0, a0, s7
	ld	a0, 1848(a0)
	add	a1, a1, s0
	ld	a1, 0(a1)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a2, 0(a0)
	ld	a0, 8(a1)
	ld	a1, 8(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s6)
	ld	a1, %lo(cofAC8x8)(s11)
	add	a0, a0, s7
	ld	a0, 1848(a0)
	add	a1, a1, s0
	ld	a1, 0(a1)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a1, 8(a1)
	ld	a2, 8(a0)
	ld	a0, 0(a1)
	ld	a1, 0(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s6)
	ld	a1, %lo(cofAC8x8)(s11)
	add	a0, a0, s7
	ld	a0, 1848(a0)
	add	a1, a1, s0
	ld	a1, 0(a1)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a1, 8(a1)
	ld	a2, 8(a0)
	ld	a0, 8(a1)
	ld	a1, 8(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s6)
	ld	a1, %lo(cofAC8x8)(s11)
	add	a0, a0, s7
	ld	a0, 1848(a0)
	add	a1, a1, s0
	ld	a1, 0(a1)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a1, 16(a1)
	ld	a2, 16(a0)
	ld	a0, 0(a1)
	ld	a1, 0(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s6)
	ld	a1, %lo(cofAC8x8)(s11)
	add	a0, a0, s7
	ld	a0, 1848(a0)
	add	a1, a1, s0
	ld	a1, 0(a1)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a1, 16(a1)
	ld	a2, 16(a0)
	ld	a0, 8(a1)
	ld	a1, 8(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s6)
	ld	a1, %lo(cofAC8x8)(s11)
	add	a0, a0, s7
	ld	a0, 1848(a0)
	add	a1, a1, s0
	ld	a1, 0(a1)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a1, 24(a1)
	ld	a2, 24(a0)
	ld	a0, 0(a1)
	ld	a1, 0(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s6)
	ld	a1, %lo(cofAC8x8)(s11)
	add	a0, a0, s7
	ld	a0, 1848(a0)
	add	a1, a1, s0
	ld	a1, 0(a1)
	add	a0, a0, s0
	lui	s0, %hi(img)
	ld	a0, 0(a0)
	ld	a1, 24(a1)
	ld	a2, 24(a0)
	ld	a0, 8(a1)
	ld	a1, 8(a2)
	li	a2, 260
	call	memcpy
	ld	a1, %lo(img)(s0)
	lui	a0, 22
	add	a0, a1, a0
	lw	a0, 100(a0)
	beqz	a0, .LBB1_71
# %bb.69:                               #   in Loop: Header=BB1_24 Depth=1
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 104(sp)                     # 8-byte Folded Reload
.LBB1_70:                               #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a3, 28(a0)
	lw	a4, 24(a0)
	lw	a5, 20(a0)
	lw	a6, 16(a0)
	sw	a3, 28(a2)
	sw	a4, 24(a2)
	sw	a5, 20(a2)
	sw	a6, 16(a2)
	lw	a3, 12(a0)
	lw	a4, 8(a0)
	lw	a5, 4(a0)
	lw	a6, 0(a0)
	sw	a3, 12(a2)
	sw	a4, 8(a2)
	sw	a5, 4(a2)
	sw	a6, 0(a2)
	addi	a0, a0, 64
	addi	a2, a2, 64
	bne	a0, a1, .LBB1_70
.LBB1_71:                               #   in Loop: Header=BB1_24 Depth=1
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	add	a0, a0, a1
	ld	a0, -1768(a0)
	slli	a1, s9, 3
	add	a0, a0, a1
	ld	a1, 0(a0)
	ld	a3, 936(sp)                     # 8-byte Folded Reload
	add	a1, a1, a3
	lhu	a2, 0(a1)
	sd	a2, 264(sp)                     # 8-byte Folded Spill
	lhu	a2, 2(a1)
	sd	a2, 256(sp)                     # 8-byte Folded Spill
	lhu	a2, 4(a1)
	sd	a2, 248(sp)                     # 8-byte Folded Spill
	lhu	a2, 6(a1)
	sd	a2, 240(sp)                     # 8-byte Folded Spill
	lhu	a2, 8(a1)
	sd	a2, 232(sp)                     # 8-byte Folded Spill
	ld	a2, 8(a0)
	lhu	a4, 10(a1)
	sd	a4, 224(sp)                     # 8-byte Folded Spill
	lhu	a4, 12(a1)
	sd	a4, 216(sp)                     # 8-byte Folded Spill
	lhu	a1, 14(a1)
	sd	a1, 208(sp)                     # 8-byte Folded Spill
	add	a2, a2, a3
	lhu	a1, 0(a2)
	sd	a1, 328(sp)                     # 8-byte Folded Spill
	lhu	a1, 2(a2)
	sd	a1, 320(sp)                     # 8-byte Folded Spill
	lhu	a1, 4(a2)
	sd	a1, 312(sp)                     # 8-byte Folded Spill
	lhu	a1, 6(a2)
	sd	a1, 304(sp)                     # 8-byte Folded Spill
	lhu	a1, 8(a2)
	sd	a1, 296(sp)                     # 8-byte Folded Spill
	ld	a1, 16(a0)
	lhu	a4, 10(a2)
	sd	a4, 288(sp)                     # 8-byte Folded Spill
	lhu	a4, 12(a2)
	sd	a4, 280(sp)                     # 8-byte Folded Spill
	lhu	a2, 14(a2)
	sd	a2, 272(sp)                     # 8-byte Folded Spill
	add	a1, a1, a3
	lhu	a2, 0(a1)
	sd	a2, 392(sp)                     # 8-byte Folded Spill
	lhu	a2, 2(a1)
	sd	a2, 384(sp)                     # 8-byte Folded Spill
	lhu	a2, 4(a1)
	sd	a2, 376(sp)                     # 8-byte Folded Spill
	lhu	a2, 6(a1)
	sd	a2, 368(sp)                     # 8-byte Folded Spill
	lhu	a2, 8(a1)
	sd	a2, 360(sp)                     # 8-byte Folded Spill
	ld	a2, 24(a0)
	lhu	a4, 10(a1)
	sd	a4, 352(sp)                     # 8-byte Folded Spill
	lhu	a4, 12(a1)
	sd	a4, 344(sp)                     # 8-byte Folded Spill
	lhu	a1, 14(a1)
	sd	a1, 336(sp)                     # 8-byte Folded Spill
	add	a2, a2, a3
	lhu	a1, 0(a2)
	sd	a1, 456(sp)                     # 8-byte Folded Spill
	lhu	a1, 2(a2)
	sd	a1, 448(sp)                     # 8-byte Folded Spill
	lhu	a1, 4(a2)
	sd	a1, 440(sp)                     # 8-byte Folded Spill
	lhu	a1, 6(a2)
	sd	a1, 432(sp)                     # 8-byte Folded Spill
	lhu	a1, 8(a2)
	sd	a1, 424(sp)                     # 8-byte Folded Spill
	ld	a1, 32(a0)
	lhu	a4, 10(a2)
	sd	a4, 416(sp)                     # 8-byte Folded Spill
	lhu	a4, 12(a2)
	sd	a4, 408(sp)                     # 8-byte Folded Spill
	lhu	a2, 14(a2)
	sd	a2, 400(sp)                     # 8-byte Folded Spill
	add	a1, a1, a3
	lhu	a2, 0(a1)
	sd	a2, 520(sp)                     # 8-byte Folded Spill
	lhu	a2, 2(a1)
	sd	a2, 512(sp)                     # 8-byte Folded Spill
	lhu	a2, 4(a1)
	sd	a2, 504(sp)                     # 8-byte Folded Spill
	lhu	a2, 6(a1)
	sd	a2, 496(sp)                     # 8-byte Folded Spill
	lhu	a2, 8(a1)
	sd	a2, 488(sp)                     # 8-byte Folded Spill
	ld	a2, 40(a0)
	lhu	a4, 10(a1)
	sd	a4, 480(sp)                     # 8-byte Folded Spill
	lhu	a4, 12(a1)
	sd	a4, 472(sp)                     # 8-byte Folded Spill
	lhu	a1, 14(a1)
	sd	a1, 464(sp)                     # 8-byte Folded Spill
	add	a2, a2, a3
	lhu	a1, 0(a2)
	sd	a1, 600(sp)                     # 8-byte Folded Spill
	lhu	a1, 2(a2)
	sd	a1, 592(sp)                     # 8-byte Folded Spill
	lhu	a1, 4(a2)
	sd	a1, 584(sp)                     # 8-byte Folded Spill
	lhu	a1, 6(a2)
	sd	a1, 576(sp)                     # 8-byte Folded Spill
	lhu	a1, 8(a2)
	sd	a1, 560(sp)                     # 8-byte Folded Spill
	ld	a1, 48(a0)
	lhu	a4, 10(a2)
	sd	a4, 544(sp)                     # 8-byte Folded Spill
	lhu	a4, 12(a2)
	sd	a4, 536(sp)                     # 8-byte Folded Spill
	lhu	a2, 14(a2)
	sd	a2, 528(sp)                     # 8-byte Folded Spill
	add	a1, a1, a3
	ld	a0, 56(a0)
	lhu	a2, 0(a1)
	sd	a2, 648(sp)                     # 8-byte Folded Spill
	lhu	a2, 2(a1)
	sd	a2, 640(sp)                     # 8-byte Folded Spill
	lhu	a2, 4(a1)
	sd	a2, 632(sp)                     # 8-byte Folded Spill
	lhu	a2, 6(a1)
	sd	a2, 624(sp)                     # 8-byte Folded Spill
	lhu	a2, 8(a1)
	sd	a2, 616(sp)                     # 8-byte Folded Spill
	lhu	a2, 10(a1)
	sd	a2, 608(sp)                     # 8-byte Folded Spill
	lhu	a2, 12(a1)
	sd	a2, 568(sp)                     # 8-byte Folded Spill
	lhu	a1, 14(a1)
	sd	a1, 552(sp)                     # 8-byte Folded Spill
	add	a0, a0, a3
	lhu	a1, 0(a0)
	sd	a1, 712(sp)                     # 8-byte Folded Spill
	lhu	a1, 2(a0)
	sd	a1, 704(sp)                     # 8-byte Folded Spill
	lhu	a1, 4(a0)
	sd	a1, 696(sp)                     # 8-byte Folded Spill
	lhu	a1, 6(a0)
	sd	a1, 688(sp)                     # 8-byte Folded Spill
	lhu	a1, 8(a0)
	sd	a1, 680(sp)                     # 8-byte Folded Spill
	lhu	a1, 10(a0)
	sd	a1, 672(sp)                     # 8-byte Folded Spill
	lhu	a1, 12(a0)
	sd	a1, 664(sp)                     # 8-byte Folded Spill
	lhu	a0, 14(a0)
	sd	a0, 656(sp)                     # 8-byte Folded Spill
	addi	a0, sp, 2047
	addi	a0, a0, 1785
	lw	a0, 0(a0)
	sd	a0, 720(sp)                     # 8-byte Folded Spill
	fmv.d	fs2, fs1
	ld	a0, 824(sp)                     # 8-byte Folded Reload
	sd	a0, 776(sp)                     # 8-byte Folded Spill
	ld	s11, 856(sp)                    # 8-byte Folded Reload
.LBB1_72:                               #   in Loop: Header=BB1_24 Depth=1
	call	reset_coding_state_cs_cm
	mv	ra, s5
	j	.LBB1_23
.LBB1_73:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	ld	a1, 112(a1)
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	ld	a7, 776(sp)                     # 8-byte Folded Reload
	sext.w	s0, a7
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	add	a1, a1, a2
	sb	a7, 0(a1)
	ld	a2, 864(sp)                     # 8-byte Folded Reload
	xor	a1, s0, a2
	snez	a1, a1
	slt	a2, s0, a2
	xori	a2, a2, 1
	subw	a2, a7, a2
	addi	a1, a1, -1
	or	a1, a1, a2
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	ld	a3, 120(sp)                     # 8-byte Folded Reload
	add	a2, a2, a3
	sb	a1, 348(a2)
	ld	a1, %lo(img)(a0)
	lw	a2, 140(a1)
	slliw	a3, a2, 2
	ld	a6, 888(sp)                     # 8-byte Folded Reload
	addw	a4, a3, a6
	addi	a2, a6, 2
	addw	a5, a2, a3
	bge	a4, a5, .LBB1_76
# %bb.74:
	add	a3, a3, a6
	slli	a4, a3, 3
	ld	a6, 880(sp)                     # 8-byte Folded Reload
.LBB1_75:                               # =>This Inner Loop Header: Depth=1
	ld	a5, 112(a1)
	lw	a1, 136(a1)
	add	a5, a5, a4
	ld	a5, 0(a5)
	slliw	a1, a1, 2
	or	a1, a1, a6
	add	a1, a5, a1
	sb	a7, 1(a1)
	sb	a7, 0(a1)
	ld	a1, %lo(img)(a0)
	lw	a5, 140(a1)
	addi	a3, a3, 1
	slli	a5, a5, 2
	addw	a5, a2, a5
	addi	a4, a4, 8
	blt	a3, a5, .LBB1_75
.LBB1_76:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a2, 1089(a0)
	lui	s1, 22
	lui	s4, 3
	addiw	a0, s4, 824
	add	a0, a1, a0
	beqz	a2, .LBB1_79
# %bb.77:
	ld	a0, 1024(a0)
	lui	s5, %hi(cofAC8x8)
	ld	a1, %lo(cofAC8x8)(s5)
	slli	s2, s11, 3
	add	a0, a0, s2
	ld	a0, 0(a0)
	add	a1, a1, s2
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	lui	s3, %hi(img)
	ld	a0, %lo(img)(s3)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s2
	ld	a0, 0(a0)
	add	a1, a1, s2
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s2
	ld	a0, 0(a0)
	add	a1, a1, s2
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s2
	ld	a0, 0(a0)
	add	a1, a1, s2
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s2
	ld	a0, 0(a0)
	add	a1, a1, s2
	ld	a1, 0(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s2
	ld	a0, 0(a0)
	add	a1, a1, s2
	ld	a1, 0(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s2
	ld	a0, 0(a0)
	add	a1, a1, s2
	ld	a1, 0(a1)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s3)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s2
	ld	a0, 0(a0)
	add	a1, a1, s2
	ld	a1, 0(a1)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a1, %lo(img)(s3)
	add	s1, a1, s1
	lw	a0, 100(s1)
	beqz	a0, .LBB1_96
# %bb.78:
	ld	t2, 16(sp)                      # 8-byte Folded Reload
	add	a2, a1, t2
	ld	t1, 80(sp)                      # 8-byte Folded Reload
	slli	a0, t1, 2
	lui	a1, 5
	addiw	a1, a1, -1208
	add	a3, a0, a1
	add	a2, a2, a3
	addi	t0, sp, 2047
	addi	t0, t0, 505
	add	a3, t0, t2
	add	a3, a3, a0
	lw	a4, 28(a3)
	lw	a5, 24(a3)
	lw	a6, 20(a3)
	lw	a7, 16(a3)
	sw	a4, 28(a2)
	sw	a5, 24(a2)
	sw	a6, 20(a2)
	sw	a7, 16(a2)
	lw	a4, 12(a3)
	lw	a5, 8(a3)
	lw	a6, 4(a3)
	lw	a3, 0(a3)
	sw	a4, 12(a2)
	sw	a5, 8(a2)
	sw	a6, 4(a2)
	sw	a3, 0(a2)
	ld	a2, %lo(img)(s3)
	addi	a3, t2, 64
	add	a4, a3, a0
	add	a4, a4, a1
	add	a2, a2, a4
	add	a3, t0, a3
	add	a3, a3, a0
	lw	a4, 0(a3)
	lw	a5, 4(a3)
	lw	a6, 8(a3)
	lw	a7, 12(a3)
	sw	a4, 0(a2)
	sw	a5, 4(a2)
	sw	a6, 8(a2)
	sw	a7, 12(a2)
	lw	a4, 16(a3)
	lw	a5, 20(a3)
	lw	a6, 24(a3)
	lw	a3, 28(a3)
	sw	a4, 16(a2)
	sw	a5, 20(a2)
	sw	a6, 24(a2)
	sw	a3, 28(a2)
	ld	a2, %lo(img)(s3)
	addi	a3, t2, 128
	add	a4, a3, a0
	add	a4, a4, a1
	add	a2, a2, a4
	add	a3, t0, a3
	add	a3, a3, a0
	lw	a4, 28(a3)
	lw	a5, 24(a3)
	lw	a6, 20(a3)
	lw	a7, 16(a3)
	sw	a4, 28(a2)
	sw	a5, 24(a2)
	sw	a6, 20(a2)
	sw	a7, 16(a2)
	lw	a4, 12(a3)
	lw	a5, 8(a3)
	lw	a6, 4(a3)
	lw	a3, 0(a3)
	sw	a4, 12(a2)
	sw	a5, 8(a2)
	sw	a6, 4(a2)
	sw	a3, 0(a2)
	ld	a2, %lo(img)(s3)
	addi	a3, t2, 192
	add	a4, a3, a0
	add	a4, a4, a1
	add	a2, a2, a4
	add	a3, t0, a3
	add	a3, a3, a0
	lw	a4, 0(a3)
	lw	a5, 4(a3)
	lw	a6, 8(a3)
	lw	a7, 12(a3)
	sw	a4, 0(a2)
	sw	a5, 4(a2)
	sw	a6, 8(a2)
	sw	a7, 12(a2)
	lw	a4, 16(a3)
	lw	a5, 20(a3)
	lw	a6, 24(a3)
	lw	a3, 28(a3)
	sw	a4, 16(a2)
	sw	a5, 20(a2)
	sw	a6, 24(a2)
	sw	a3, 28(a2)
	ld	a2, %lo(img)(s3)
	addi	a3, t2, 256
	add	a4, a3, a0
	add	a4, a4, a1
	add	a2, a2, a4
	add	a3, t0, a3
	add	a3, a3, a0
	lw	a4, 28(a3)
	lw	a5, 24(a3)
	lw	a6, 20(a3)
	lw	a7, 16(a3)
	sw	a4, 28(a2)
	sw	a5, 24(a2)
	sw	a6, 20(a2)
	sw	a7, 16(a2)
	lw	a4, 12(a3)
	lw	a5, 8(a3)
	lw	a6, 4(a3)
	lw	a3, 0(a3)
	sw	a4, 12(a2)
	sw	a5, 8(a2)
	sw	a6, 4(a2)
	sw	a3, 0(a2)
	ld	a2, %lo(img)(s3)
	addi	a3, t2, 320
	add	a4, a3, a0
	add	a4, a4, a1
	add	a2, a2, a4
	add	a3, t0, a3
	add	a3, a3, a0
	lw	a4, 28(a3)
	lw	a5, 24(a3)
	lw	a6, 20(a3)
	lw	a7, 16(a3)
	sw	a4, 28(a2)
	sw	a5, 24(a2)
	sw	a6, 20(a2)
	sw	a7, 16(a2)
	lw	a4, 12(a3)
	lw	a5, 8(a3)
	lw	a6, 4(a3)
	lw	a3, 0(a3)
	sw	a4, 12(a2)
	sw	a5, 8(a2)
	sw	a6, 4(a2)
	sw	a3, 0(a2)
	ld	a2, %lo(img)(s3)
	addi	a3, t2, 384
	add	a4, a3, a0
	add	a4, a4, a1
	add	a2, a2, a4
	add	a3, t0, a3
	add	a3, a3, a0
	lw	a4, 28(a3)
	lw	a5, 24(a3)
	lw	a6, 20(a3)
	lw	a7, 16(a3)
	sw	a4, 28(a2)
	sw	a5, 24(a2)
	sw	a6, 20(a2)
	sw	a7, 16(a2)
	lw	a4, 12(a3)
	lw	a5, 8(a3)
	lw	a6, 4(a3)
	lw	a3, 0(a3)
	sw	a4, 12(a2)
	sw	a5, 8(a2)
	sw	a6, 4(a2)
	sw	a3, 0(a2)
	ld	a2, %lo(img)(s3)
	addi	a3, t2, 448
	add	a4, a3, a0
	add	a1, a4, a1
	add	a1, a2, a1
	add	a3, t0, a3
	add	a0, a3, a0
	lw	a2, 28(a0)
	lw	a3, 24(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	sw	a2, 28(a1)
	sw	a3, 24(a1)
	sw	a4, 20(a1)
	sw	a5, 16(a1)
	lw	a2, 12(a0)
	lw	a3, 8(a0)
	lw	a4, 4(a0)
	lw	a0, 0(a0)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a0, 0(a1)
	ld	a1, %lo(img)(s3)
	j	.LBB1_97
.LBB1_79:
	addiw	a2, s1, 460
	add	a2, a1, a2
	lw	a2, 0(a2)
	bnez	a2, .LBB1_80
	j	.LBB1_105
.LBB1_80:
	lui	a2, %hi(imgUV_org)
	ld	a5, %lo(imgUV_org)(a2)
	li	a2, 0
	ld	a3, 0(a5)
	lui	a4, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(a4)
	ld	a5, 8(a5)
	ld	a6, 840(sp)                     # 8-byte Folded Reload
	add	a6, a1, a6
	ld	a7, 832(sp)                     # 8-byte Folded Reload
	add	a7, a1, a7
	ld	t0, 72(sp)                      # 8-byte Folded Reload
	ld	t1, 8(sp)                       # 8-byte Folded Reload
	add	t0, t1, t0
	add	t0, a1, t0
	slli	s0, s0, 7
	lui	t1, 2
	addiw	t1, t1, -840
	sd	s0, 864(sp)                     # 8-byte Folded Spill
	add	t1, s0, t1
	add	a1, a1, t1
	lui	t1, %hi(resTrans_G)
	addi	t1, t1, %lo(resTrans_G)
	lui	t2, %hi(resTrans_B)
	addi	t2, t2, %lo(resTrans_B)
	lui	t3, %hi(resTrans_R)
	addi	t3, t3, %lo(resTrans_R)
	li	t4, 16
	li	t5, 8
.LBB1_81:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_82 Depth 2
	ld	t6, 808(sp)                     # 8-byte Folded Reload
	add	t6, a2, t6
	slli	t6, t6, 3
	add	s0, a3, t6
	add	s1, a4, t6
	add	t6, a5, t6
	ld	s2, 0(t6)
	ld	s1, 0(s1)
	ld	s3, 0(s0)
	li	t6, 0
	ld	s4, 920(sp)                     # 8-byte Folded Reload
	add	s0, s2, s4
	add	s1, s1, s4
	add	s2, s3, s4
	mv	s3, t3
	mv	s4, t2
	mv	s5, t1
.LBB1_82:                               #   Parent Loop BB1_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s6, a1, t6
	lhu	s6, 0(s6)
	add	s7, t0, t6
	sh	s6, 0(s7)
	add	s7, s2, t6
	lhu	s7, 0(s7)
	add	s8, a7, t6
	lhu	s8, 0(s8)
	add	s9, s0, t6
	lhu	s9, 0(s9)
	add	s10, a6, t6
	lhu	s10, 0(s10)
	sub	s7, s7, s8
	add	s8, s1, t6
	lhu	s8, 0(s8)
	sub	s9, s9, s10
	sub	s9, s9, s7
	sw	s9, 0(s3)
	srli	s9, s9, 1
	add	s7, s9, s7
	subw	s6, s8, s6
	subw	s6, s6, s7
	sw	s6, 0(s4)
	sraiw	s6, s6, 1
	add	s6, s6, s7
	sw	s6, 0(s5)
	addi	t6, t6, 2
	addi	s5, s5, 4
	addi	s4, s4, 4
	addi	s3, s3, 4
	bne	t6, t4, .LBB1_82
# %bb.83:                               #   in Loop: Header=BB1_81 Depth=1
	addi	a2, a2, 1
	addi	t1, t1, 64
	addi	t2, t2, 64
	addi	t3, t3, 64
	addi	a6, a6, 32
	addi	a7, a7, 32
	addi	t0, t0, 32
	addi	a1, a1, 16
	bne	a2, t5, .LBB1_81
# %bb.84:
	lui	a1, %hi(resTrans_G)
	lw	a2, %lo(resTrans_G)(a1)
	addi	a1, a1, %lo(resTrans_G)
	sw	a2, 0(a0)
	lw	a2, 4(a1)
	sw	a2, 4(a0)
	lw	a2, 8(a1)
	sw	a2, 8(a0)
	lw	a2, 12(a1)
	sw	a2, 12(a0)
	lw	a2, 16(a1)
	sw	a2, 16(a0)
	lw	a2, 20(a1)
	sw	a2, 20(a0)
	lw	a2, 24(a1)
	sw	a2, 24(a0)
	lw	a2, 28(a1)
	sw	a2, 28(a0)
	lw	a2, 64(a1)
	sw	a2, 64(a0)
	lw	a2, 68(a1)
	sw	a2, 68(a0)
	lw	a2, 72(a1)
	sw	a2, 72(a0)
	lw	a2, 76(a1)
	sw	a2, 76(a0)
	lw	a2, 80(a1)
	sw	a2, 80(a0)
	lw	a2, 84(a1)
	sw	a2, 84(a0)
	lw	a2, 88(a1)
	sw	a2, 88(a0)
	lw	a2, 92(a1)
	sw	a2, 92(a0)
	lw	a2, 128(a1)
	sw	a2, 128(a0)
	lw	a2, 132(a1)
	sw	a2, 132(a0)
	lw	a2, 136(a1)
	sw	a2, 136(a0)
	lw	a2, 140(a1)
	sw	a2, 140(a0)
	lw	a2, 144(a1)
	sw	a2, 144(a0)
	lw	a2, 148(a1)
	sw	a2, 148(a0)
	lw	a2, 152(a1)
	sw	a2, 152(a0)
	lw	a2, 156(a1)
	sw	a2, 156(a0)
	lw	a2, 192(a1)
	sw	a2, 192(a0)
	lw	a2, 196(a1)
	sw	a2, 196(a0)
	lw	a2, 200(a1)
	sw	a2, 200(a0)
	lw	a2, 204(a1)
	sw	a2, 204(a0)
	lw	a2, 208(a1)
	sw	a2, 208(a0)
	lw	a2, 212(a1)
	sw	a2, 212(a0)
	lw	a2, 216(a1)
	sw	a2, 216(a0)
	lw	a2, 220(a1)
	sw	a2, 220(a0)
	lw	a2, 256(a1)
	sw	a2, 256(a0)
	lw	a2, 260(a1)
	sw	a2, 260(a0)
	lw	a2, 264(a1)
	sw	a2, 264(a0)
	lw	a2, 268(a1)
	sw	a2, 268(a0)
	lw	a2, 272(a1)
	sw	a2, 272(a0)
	lw	a2, 276(a1)
	sw	a2, 276(a0)
	lw	a2, 280(a1)
	sw	a2, 280(a0)
	lw	a2, 284(a1)
	sw	a2, 284(a0)
	lw	a2, 320(a1)
	sw	a2, 320(a0)
	lw	a2, 324(a1)
	sw	a2, 324(a0)
	lw	a2, 328(a1)
	sw	a2, 328(a0)
	lw	a2, 332(a1)
	sw	a2, 332(a0)
	lw	a2, 336(a1)
	sw	a2, 336(a0)
	lw	a2, 340(a1)
	sw	a2, 340(a0)
	lw	a2, 344(a1)
	sw	a2, 344(a0)
	lw	a2, 348(a1)
	sw	a2, 348(a0)
	lw	a2, 384(a1)
	sw	a2, 384(a0)
	lw	a2, 388(a1)
	sw	a2, 388(a0)
	lw	a2, 392(a1)
	sw	a2, 392(a0)
	lw	a2, 396(a1)
	sw	a2, 396(a0)
	lw	a2, 400(a1)
	sw	a2, 400(a0)
	lw	a2, 404(a1)
	sw	a2, 404(a0)
	lw	a2, 408(a1)
	sw	a2, 408(a0)
	lw	a2, 412(a1)
	sw	a2, 412(a0)
	lw	a2, 448(a1)
	sw	a2, 448(a0)
	lw	a2, 452(a1)
	sw	a2, 452(a0)
	lw	a2, 456(a1)
	sw	a2, 456(a0)
	lw	a2, 460(a1)
	sw	a2, 460(a0)
	lw	a2, 464(a1)
	sw	a2, 464(a0)
	lw	a2, 468(a1)
	sw	a2, 468(a0)
	lw	a2, 472(a1)
	sw	a2, 472(a0)
	lw	a1, 476(a1)
	sw	a1, 476(a0)
	addi	a1, sp, 2047
	addi	a1, a1, 1789
	li	a2, 1
	mv	a0, s11
	call	dct_luma8x8
	lui	a5, %hi(img)
	ld	a2, %lo(img)(a5)
	lui	a1, 3
	addiw	a1, a1, 824
	sd	a1, 872(sp)                     # 8-byte Folded Spill
	add	a2, a2, a1
	lw	a1, 0(a2)
	lui	a3, %hi(rec_resG)
	sw	a1, %lo(rec_resG)(a3)
	lw	a4, 4(a2)
	addi	a1, a3, %lo(rec_resG)
	sw	a4, 4(a1)
	lw	a3, 8(a2)
	sw	a3, 8(a1)
	lw	a3, 12(a2)
	sw	a3, 12(a1)
	lw	a3, 16(a2)
	sw	a3, 16(a1)
	lw	a3, 20(a2)
	sw	a3, 20(a1)
	lw	a3, 24(a2)
	sw	a3, 24(a1)
	lw	a3, 28(a2)
	sw	a3, 28(a1)
	lw	a3, 64(a2)
	sw	a3, 64(a1)
	lw	a3, 68(a2)
	sw	a3, 68(a1)
	lw	a3, 72(a2)
	sw	a3, 72(a1)
	lw	a3, 76(a2)
	sw	a3, 76(a1)
	lw	a3, 80(a2)
	sw	a3, 80(a1)
	lw	a3, 84(a2)
	sw	a3, 84(a1)
	lw	a3, 88(a2)
	sw	a3, 88(a1)
	lw	a3, 92(a2)
	sw	a3, 92(a1)
	lw	a3, 128(a2)
	sw	a3, 128(a1)
	lw	a3, 132(a2)
	sw	a3, 132(a1)
	lw	a3, 136(a2)
	sw	a3, 136(a1)
	lw	a3, 140(a2)
	sw	a3, 140(a1)
	lw	a3, 144(a2)
	sw	a3, 144(a1)
	lw	a3, 148(a2)
	sw	a3, 148(a1)
	lw	a3, 152(a2)
	sw	a3, 152(a1)
	lw	a3, 156(a2)
	sw	a3, 156(a1)
	lw	a3, 192(a2)
	sw	a3, 192(a1)
	lw	a3, 196(a2)
	sw	a3, 196(a1)
	lw	a3, 200(a2)
	sw	a3, 200(a1)
	lw	a3, 204(a2)
	sw	a3, 204(a1)
	lw	a3, 208(a2)
	sw	a3, 208(a1)
	lw	a3, 212(a2)
	sw	a3, 212(a1)
	lw	a3, 216(a2)
	sw	a3, 216(a1)
	lw	a3, 220(a2)
	sw	a3, 220(a1)
	lw	a3, 256(a2)
	sw	a3, 256(a1)
	lw	a3, 260(a2)
	sw	a3, 260(a1)
	lw	a3, 264(a2)
	sw	a3, 264(a1)
	lw	a3, 268(a2)
	sw	a3, 268(a1)
	lw	a3, 272(a2)
	sw	a3, 272(a1)
	lw	a3, 276(a2)
	sw	a3, 276(a1)
	lw	a3, 280(a2)
	sw	a3, 280(a1)
	lw	a3, 284(a2)
	sw	a3, 284(a1)
	lw	a3, 320(a2)
	sw	a3, 320(a1)
	lw	a3, 324(a2)
	sw	a3, 324(a1)
	lw	a3, 328(a2)
	sw	a3, 328(a1)
	lw	a3, 332(a2)
	sw	a3, 332(a1)
	lw	a3, 336(a2)
	sw	a3, 336(a1)
	lw	a3, 340(a2)
	sw	a3, 340(a1)
	lw	a3, 344(a2)
	sw	a3, 344(a1)
	lw	a3, 348(a2)
	sw	a3, 348(a1)
	lw	a3, 384(a2)
	sw	a3, 384(a1)
	lw	a3, 388(a2)
	sw	a3, 388(a1)
	lw	a3, 392(a2)
	sw	a3, 392(a1)
	lw	a3, 396(a2)
	sw	a3, 396(a1)
	lw	a3, 400(a2)
	sw	a3, 400(a1)
	lw	a3, 404(a2)
	sw	a3, 404(a1)
	lw	a3, 408(a2)
	sw	a3, 408(a1)
	lw	a3, 412(a2)
	sw	a3, 412(a1)
	lw	a3, 448(a2)
	sw	a3, 448(a1)
	lw	a3, 452(a2)
	sw	a3, 452(a1)
	lw	a3, 456(a2)
	sw	a3, 456(a1)
	lw	a3, 460(a2)
	sw	a3, 460(a1)
	lw	a3, 464(a2)
	sw	a3, 464(a1)
	lw	a3, 468(a2)
	sw	a3, 468(a1)
	lw	a3, 472(a2)
	sw	a3, 472(a1)
	lw	a2, 476(a2)
	sd	a0, 720(sp)                     # 8-byte Folded Spill
	li	s4, 0
	sw	a2, 476(a1)
	ld	t0, %lo(img)(a5)
	lui	a0, 22
	addiw	a0, a0, 420
	sd	a0, 856(sp)                     # 8-byte Folded Spill
	lui	s5, %hi(rec_resR)
	addi	s5, s5, %lo(rec_resR)
	ld	s2, 872(sp)                     # 8-byte Folded Reload
.LBB1_85:                               # =>This Inner Loop Header: Depth=1
	andi	s7, s4, 1
	srli	a0, s4, 1
	slliw	s1, a0, 2
	slli	s1, s1, 6
	lui	a2, %hi(resTrans_B)
	addi	a2, a2, %lo(resTrans_B)
	add	a0, a2, s1
	slli	s10, s7, 4
	add	a1, a0, s10
	lw	a1, 0(a1)
	add	t0, t0, s2
	sw	a1, 0(t0)
	addi	s6, s10, 4
	add	a1, a0, s6
	lw	a1, 0(a1)
	sw	a1, 4(t0)
	addi	s11, s10, 8
	add	a1, a0, s11
	lw	a1, 0(a1)
	sw	a1, 8(t0)
	addi	s0, s10, 12
	add	a0, a0, s0
	lw	a0, 0(a0)
	sw	a0, 12(t0)
	addi	s8, s1, 64
	add	a0, a2, s8
	add	a1, a0, s10
	lw	a1, 0(a1)
	sw	a1, 64(t0)
	add	a1, a0, s6
	lw	a1, 0(a1)
	sw	a1, 68(t0)
	add	a1, a0, s11
	lw	a1, 0(a1)
	sw	a1, 72(t0)
	add	a0, a0, s0
	lw	a0, 0(a0)
	sw	a0, 76(t0)
	addi	s9, s1, 128
	add	a0, a2, s9
	add	a1, a0, s10
	lw	a1, 0(a1)
	sw	a1, 128(t0)
	add	a1, a0, s6
	lw	a1, 0(a1)
	sw	a1, 132(t0)
	add	a1, a0, s11
	lw	a1, 0(a1)
	sw	a1, 136(t0)
	add	a0, a0, s0
	lw	a0, 0(a0)
	sw	a0, 140(t0)
	addi	a0, s1, 192
	sd	a0, 920(sp)                     # 8-byte Folded Spill
	add	a0, a2, a0
	add	a1, a0, s10
	lw	a1, 0(a1)
	sw	a1, 192(t0)
	add	a1, a0, s6
	lw	a1, 0(a1)
	sw	a1, 196(t0)
	add	a1, a0, s11
	lw	a1, 0(a1)
	sw	a1, 200(t0)
	add	a0, a0, s0
	lw	a0, 0(a0)
	srliw	s3, s4, 1
	sw	a0, 204(t0)
	li	a0, 0
	ld	a1, 904(sp)                     # 8-byte Folded Reload
	mv	a2, s4
	call	dct_chroma4x4
	ld	a1, 880(sp)                     # 8-byte Folded Reload
	or	a1, s7, a1
	ld	a2, 888(sp)                     # 8-byte Folded Reload
	or	a2, s3, a2
	slli	a1, a1, 4
	lui	a3, %hi(cbp_chroma_block)
	addi	a3, a3, %lo(cbp_chroma_block)
	add	a3, a3, a1
	slli	a2, a2, 2
	add	a3, a3, a2
	sd	a3, 944(sp)                     # 8-byte Folded Spill
	sw	a0, 0(a3)
	lui	a0, %hi(dc_level_temp)
	addi	a0, a0, %lo(dc_level_temp)
	add	a0, a0, a1
	add	a0, a0, a2
	sd	a0, 928(sp)                     # 8-byte Folded Spill
	lw	a0, 0(a0)
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	lui	a4, %hi(dc_level)
	addi	a4, a4, %lo(dc_level)
	add	a1, a4, a1
	add	s7, a1, a2
	sw	a0, 0(s7)
	add	a0, a3, s2
	lw	a1, 0(a0)
	lui	a6, %hi(resTrans_R)
	addi	a6, a6, %lo(resTrans_R)
	add	a2, a6, s1
	add	a3, a2, s10
	lw	a3, 0(a3)
	lui	a7, %hi(rec_resB)
	addi	a7, a7, %lo(rec_resB)
	add	a4, a7, s1
	add	a5, a4, s10
	sw	a1, 0(a5)
	sw	a3, 0(a0)
	lw	a1, 4(a0)
	add	a3, a2, s6
	lw	a3, 0(a3)
	add	a5, a4, s6
	sw	a1, 0(a5)
	sw	a3, 4(a0)
	lw	a1, 8(a0)
	add	a3, a2, s11
	lw	a3, 0(a3)
	add	a5, a4, s11
	sw	a1, 0(a5)
	sw	a3, 8(a0)
	lw	a1, 12(a0)
	add	a2, a2, s0
	lw	a2, 0(a2)
	add	a4, a4, s0
	sw	a1, 0(a4)
	sw	a2, 12(a0)
	lw	a1, 64(a0)
	add	a2, a6, s8
	add	a3, a2, s10
	lw	a3, 0(a3)
	add	a4, a7, s8
	mv	s3, s8
	add	a5, a4, s10
	sw	a1, 0(a5)
	sw	a3, 64(a0)
	lw	a1, 68(a0)
	add	a3, a2, s6
	lw	a3, 0(a3)
	add	a5, a4, s6
	sw	a1, 0(a5)
	sw	a3, 68(a0)
	lw	a1, 72(a0)
	add	a3, a2, s11
	lw	a3, 0(a3)
	add	a5, a4, s11
	sw	a1, 0(a5)
	sw	a3, 72(a0)
	lw	a1, 76(a0)
	add	a2, a2, s0
	lw	a2, 0(a2)
	add	a4, a4, s0
	sw	a1, 0(a4)
	sw	a2, 76(a0)
	lw	a1, 128(a0)
	add	a2, a6, s9
	add	a3, a2, s10
	lw	a3, 0(a3)
	add	a4, a7, s9
	mv	s8, s9
	add	a5, a4, s10
	sw	a1, 0(a5)
	sw	a3, 128(a0)
	lw	a1, 132(a0)
	add	a3, a2, s6
	lw	a3, 0(a3)
	add	a5, a4, s6
	sw	a1, 0(a5)
	sw	a3, 132(a0)
	lw	a1, 136(a0)
	add	a3, a2, s11
	lw	a3, 0(a3)
	add	a5, a4, s11
	sw	a1, 0(a5)
	sw	a3, 136(a0)
	lw	a1, 140(a0)
	add	a2, a2, s0
	lw	a2, 0(a2)
	add	a4, a4, s0
	sw	a1, 0(a4)
	sw	a2, 140(a0)
	lw	a1, 192(a0)
	ld	s9, 920(sp)                     # 8-byte Folded Reload
	add	a2, a6, s9
	add	a3, a2, s10
	lw	a3, 0(a3)
	add	a4, a7, s9
	add	a5, a4, s10
	sw	a1, 0(a5)
	sw	a3, 192(a0)
	lw	a1, 196(a0)
	add	a3, a2, s6
	lw	a3, 0(a3)
	add	a5, a4, s6
	sw	a1, 0(a5)
	sw	a3, 196(a0)
	lw	a1, 200(a0)
	add	a3, a2, s11
	lw	a3, 0(a3)
	add	a5, a4, s11
	sw	a1, 0(a5)
	sw	a3, 200(a0)
	lw	a1, 204(a0)
	add	a2, a2, s0
	lw	a2, 0(a2)
	add	a4, a4, s0
	sw	a1, 0(a4)
	sw	a2, 204(a0)
	li	a0, 1
	ld	a1, 896(sp)                     # 8-byte Folded Reload
	mv	a2, s4
	call	dct_chroma4x4
	ld	a1, 928(sp)                     # 8-byte Folded Reload
	lw	a1, 64(a1)
	lui	a2, %hi(img)
	ld	t0, %lo(img)(a2)
	ld	a2, 944(sp)                     # 8-byte Folded Reload
	sw	a0, 64(a2)
	sw	a1, 64(s7)
	add	a0, t0, s2
	lw	a1, 0(a0)
	add	s1, s5, s1
	add	a2, s1, s10
	sw	a1, 0(a2)
	lw	a1, 4(a0)
	add	a2, s1, s6
	sw	a1, 0(a2)
	lw	a1, 8(a0)
	add	a2, s1, s11
	sw	a1, 0(a2)
	lw	a1, 12(a0)
	add	s1, s1, s0
	sw	a1, 0(s1)
	lw	a1, 64(a0)
	add	a2, s5, s3
	add	a3, a2, s10
	sw	a1, 0(a3)
	lw	a1, 68(a0)
	add	a3, a2, s6
	sw	a1, 0(a3)
	lw	a1, 72(a0)
	add	a3, a2, s11
	sw	a1, 0(a3)
	lw	a1, 76(a0)
	add	a2, a2, s0
	sw	a1, 0(a2)
	lw	a1, 128(a0)
	add	s8, s5, s8
	add	a2, s8, s10
	sw	a1, 0(a2)
	lw	a1, 132(a0)
	add	a2, s8, s6
	sw	a1, 0(a2)
	lw	a1, 136(a0)
	add	a2, s8, s11
	sw	a1, 0(a2)
	lw	a1, 140(a0)
	add	s8, s8, s0
	sw	a1, 0(s8)
	lw	a1, 192(a0)
	add	s9, s5, s9
	add	s10, s9, s10
	sw	a1, 0(s10)
	lw	a1, 196(a0)
	add	s6, s9, s6
	sw	a1, 0(s6)
	lw	a1, 200(a0)
	add	s11, s9, s11
	sw	a1, 0(s11)
	lw	a0, 204(a0)
	add	s0, s9, s0
	addiw	s4, s4, 1
	sw	a0, 0(s0)
	li	a0, 4
	bne	s4, a0, .LBB1_85
# %bb.86:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a6, 2
	addiw	a1, a6, -1768
	add	a4, a0, a1
	ld	a5, 40(a4)
	li	a0, 0
	ld	a3, 856(sp)                     # 8-byte Folded Reload
	add	a3, t0, a3
	lw	a1, 4(a3)
	ld	a2, 0(a5)
	lw	a3, 0(a3)
	ld	a7, 864(sp)                     # 8-byte Folded Reload
	add	a7, t0, a7
	ld	a4, 0(a4)
	ld	a5, 8(a5)
	addiw	a6, a6, -840
	add	a6, a7, a6
	ld	a7, 840(sp)                     # 8-byte Folded Reload
	add	a7, t0, a7
	ld	t1, 832(sp)                     # 8-byte Folded Reload
	add	t0, t0, t1
	lui	t1, %hi(rec_resG)
	addi	t1, t1, %lo(rec_resG)
	li	t2, 16
	li	t3, 8
	lui	s2, %hi(rec_resB)
	addi	s2, s2, %lo(rec_resB)
	j	.LBB1_88
.LBB1_87:                               #   in Loop: Header=BB1_88 Depth=1
	addi	a0, a0, 1
	addi	a6, a6, 16
	addi	a7, a7, 32
	addi	t0, t0, 32
	addi	s5, s5, 64
	addi	s2, s2, 64
	addi	t1, t1, 64
	beq	a0, t3, .LBB1_103
.LBB1_88:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_90 Depth 2
	ld	t4, 912(sp)                     # 8-byte Folded Reload
	add	t4, a0, t4
	slli	t4, t4, 3
	add	t5, a2, t4
	add	t6, a4, t4
	add	t4, a5, t4
	ld	s0, 0(t4)
	ld	t6, 0(t6)
	ld	s1, 0(t5)
	li	t4, 0
	ld	s3, 936(sp)                     # 8-byte Folded Reload
	add	t5, s0, s3
	add	t6, t6, s3
	add	s0, s1, s3
	mv	s1, t1
	mv	s3, s2
	mv	s4, s5
	j	.LBB1_90
.LBB1_89:                               #   in Loop: Header=BB1_90 Depth=2
	add	s7, t5, t4
	sh	s6, 0(s7)
	addi	t4, t4, 2
	addi	s4, s4, 4
	addi	s3, s3, 4
	addi	s1, s1, 4
	beq	t4, t2, .LBB1_87
.LBB1_90:                               #   Parent Loop BB1_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	s8, 0(s3)
	lw	s7, 0(s1)
	srai	s9, s8, 1
	lw	s6, 0(s4)
	add	s10, t0, t4
	lhu	s10, 0(s10)
	subw	s9, s7, s9
	srli	s7, s6, 1
	subw	s7, s9, s7
	addw	s10, s7, s10
	sgtz	s11, s10
	neg	s11, s11
	and	s11, s11, s10
	mv	s10, a1
	blt	a1, s11, .LBB1_92
# %bb.91:                               #   in Loop: Header=BB1_90 Depth=2
	mv	s10, s11
.LBB1_92:                               #   in Loop: Header=BB1_90 Depth=2
	add	s11, s0, t4
	sh	s10, 0(s11)
	add	s10, a6, t4
	lhu	s10, 0(s10)
	add	s8, s9, s8
	addw	s8, s8, s10
	sgtz	s9, s8
	neg	s9, s9
	and	s9, s9, s8
	mv	s8, a3
	blt	a3, s9, .LBB1_94
# %bb.93:                               #   in Loop: Header=BB1_90 Depth=2
	mv	s8, s9
.LBB1_94:                               #   in Loop: Header=BB1_90 Depth=2
	add	s9, t6, t4
	sh	s8, 0(s9)
	add	s8, a7, t4
	lhu	s8, 0(s8)
	add	s6, s7, s6
	addw	s6, s6, s8
	sgtz	s7, s6
	neg	s7, s7
	and	s7, s7, s6
	mv	s6, a1
	blt	a1, s7, .LBB1_89
# %bb.95:                               #   in Loop: Header=BB1_90 Depth=2
	mv	s6, s7
	j	.LBB1_89
.LBB1_96:
	ld	t1, 80(sp)                      # 8-byte Folded Reload
.LBB1_97:
	ld	s1, 712(sp)                     # 8-byte Folded Reload
	ld	s3, 704(sp)                     # 8-byte Folded Reload
	ld	s4, 696(sp)                     # 8-byte Folded Reload
	ld	s5, 688(sp)                     # 8-byte Folded Reload
	lui	a0, 22
	add	a2, a1, a0
	lw	a2, 460(a2)
	lui	a3, 3
	beqz	a2, .LBB1_100
# %bb.98:
	addiw	a2, a3, 1848
	add	a1, a1, a2
	ld	a1, 0(a1)
	add	s2, a1, s2
	ld	a1, 32(s2)
	ld	a2, 64(s2)
	addi	a4, a1, 32
	lui	a5, %hi(cofAC8x8_chroma)
	addi	a5, a5, %lo(cofAC8x8_chroma)
	addi	a5, a5, 576
.LBB1_99:                               # =>This Inner Loop Header: Depth=1
	ld	a6, 0(a1)
	ld	a7, 0(a6)
	lw	t0, -576(a5)
	sw	t0, 0(a7)
	lw	t0, -572(a5)
	sw	t0, 4(a7)
	lw	t0, -568(a5)
	sw	t0, 8(a7)
	lw	t0, -564(a5)
	sw	t0, 12(a7)
	lw	t0, -560(a5)
	sw	t0, 16(a7)
	lw	t0, -556(a5)
	sw	t0, 20(a7)
	lw	t0, -552(a5)
	sw	t0, 24(a7)
	lw	t0, -548(a5)
	sw	t0, 28(a7)
	lw	t0, -544(a5)
	sw	t0, 32(a7)
	lw	t0, -540(a5)
	sw	t0, 36(a7)
	lw	t0, -536(a5)
	sw	t0, 40(a7)
	lw	t0, -532(a5)
	sw	t0, 44(a7)
	lw	t0, -528(a5)
	sw	t0, 48(a7)
	lw	t0, -524(a5)
	sw	t0, 52(a7)
	lw	t0, -520(a5)
	sw	t0, 56(a7)
	lw	t0, -516(a5)
	sw	t0, 60(a7)
	lw	t0, -512(a5)
	sw	t0, 64(a7)
	lw	t0, -508(a5)
	sw	t0, 68(a7)
	ld	a6, 8(a6)
	lw	a7, -504(a5)
	sw	a7, 0(a6)
	lw	a7, -500(a5)
	sw	a7, 4(a6)
	lw	a7, -496(a5)
	sw	a7, 8(a6)
	lw	a7, -492(a5)
	sw	a7, 12(a6)
	lw	a7, -488(a5)
	sw	a7, 16(a6)
	lw	a7, -484(a5)
	sw	a7, 20(a6)
	lw	a7, -480(a5)
	sw	a7, 24(a6)
	lw	a7, -476(a5)
	sw	a7, 28(a6)
	lw	a7, -472(a5)
	sw	a7, 32(a6)
	lw	a7, -468(a5)
	sw	a7, 36(a6)
	lw	a7, -464(a5)
	sw	a7, 40(a6)
	lw	a7, -460(a5)
	sw	a7, 44(a6)
	lw	a7, -456(a5)
	sw	a7, 48(a6)
	lw	a7, -452(a5)
	sw	a7, 52(a6)
	lw	a7, -448(a5)
	sw	a7, 56(a6)
	lw	a7, -444(a5)
	sw	a7, 60(a6)
	lw	a7, -440(a5)
	sw	a7, 64(a6)
	lw	a7, -436(a5)
	ld	t0, 0(a2)
	sw	a7, 68(a6)
	ld	a6, 0(t0)
	lw	a7, 0(a5)
	sw	a7, 0(a6)
	lw	a7, 4(a5)
	sw	a7, 4(a6)
	lw	a7, 8(a5)
	sw	a7, 8(a6)
	lw	a7, 12(a5)
	sw	a7, 12(a6)
	lw	a7, 16(a5)
	sw	a7, 16(a6)
	lw	a7, 20(a5)
	sw	a7, 20(a6)
	lw	a7, 24(a5)
	sw	a7, 24(a6)
	lw	a7, 28(a5)
	sw	a7, 28(a6)
	lw	a7, 32(a5)
	sw	a7, 32(a6)
	lw	a7, 36(a5)
	sw	a7, 36(a6)
	lw	a7, 40(a5)
	sw	a7, 40(a6)
	lw	a7, 44(a5)
	sw	a7, 44(a6)
	lw	a7, 48(a5)
	sw	a7, 48(a6)
	lw	a7, 52(a5)
	sw	a7, 52(a6)
	lw	a7, 56(a5)
	sw	a7, 56(a6)
	lw	a7, 60(a5)
	sw	a7, 60(a6)
	lw	a7, 64(a5)
	sw	a7, 64(a6)
	lw	a7, 68(a5)
	sw	a7, 68(a6)
	ld	a6, 8(t0)
	lw	a7, 72(a5)
	sw	a7, 0(a6)
	lw	a7, 76(a5)
	sw	a7, 4(a6)
	lw	a7, 80(a5)
	sw	a7, 8(a6)
	lw	a7, 84(a5)
	sw	a7, 12(a6)
	lw	a7, 88(a5)
	sw	a7, 16(a6)
	lw	a7, 92(a5)
	sw	a7, 20(a6)
	lw	a7, 96(a5)
	sw	a7, 24(a6)
	lw	a7, 100(a5)
	sw	a7, 28(a6)
	lw	a7, 104(a5)
	sw	a7, 32(a6)
	lw	a7, 108(a5)
	sw	a7, 36(a6)
	lw	a7, 112(a5)
	sw	a7, 40(a6)
	lw	a7, 116(a5)
	sw	a7, 44(a6)
	lw	a7, 120(a5)
	sw	a7, 48(a6)
	lw	a7, 124(a5)
	sw	a7, 52(a6)
	lw	a7, 128(a5)
	sw	a7, 56(a6)
	lw	a7, 132(a5)
	sw	a7, 60(a6)
	lw	a7, 136(a5)
	sw	a7, 64(a6)
	lw	a7, 140(a5)
	sw	a7, 68(a6)
	addi	a1, a1, 8
	addi	a2, a2, 8
	addi	a5, a5, 144
	bne	a1, a4, .LBB1_99
.LBB1_100:
	lui	a1, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a1)
	lui	a2, 2
	add	a4, a4, a2
	ld	a4, -1768(a4)
	slli	a5, s9, 3
	add	a4, a4, a5
	ld	a4, 0(a4)
	ld	t5, 936(sp)                     # 8-byte Folded Reload
	add	a4, a4, t5
	ld	a6, 264(sp)                     # 8-byte Folded Reload
	sh	a6, 0(a4)
	ld	a6, 256(sp)                     # 8-byte Folded Reload
	sh	a6, 2(a4)
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	sh	a6, 4(a4)
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	sh	a6, 6(a4)
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	sh	a6, 8(a4)
	ld	a6, 224(sp)                     # 8-byte Folded Reload
	sh	a6, 10(a4)
	ld	a6, 216(sp)                     # 8-byte Folded Reload
	sh	a6, 12(a4)
	ld	a6, 208(sp)                     # 8-byte Folded Reload
	sh	a6, 14(a4)
	slli	a6, t1, 1
	lui	a4, %hi(img)
	ld	t0, %lo(img)(a4)
	slli	s0, s0, 7
	addiw	a7, a2, -840
	add	t1, s0, a7
	add	t1, t0, t1
	ld	t6, 88(sp)                      # 8-byte Folded Reload
	add	t2, t6, a6
	lh	t3, 14(t1)
	addiw	t4, a3, 312
	add	t2, t2, t4
	add	t0, t0, t2
	sh	t3, 14(t0)
	lh	t2, 12(t1)
	sh	t2, 12(t0)
	lh	t2, 10(t1)
	sh	t2, 10(t0)
	lh	t2, 8(t1)
	sh	t2, 8(t0)
	lh	t2, 6(t1)
	sh	t2, 6(t0)
	lh	t2, 4(t1)
	sh	t2, 4(t0)
	lh	t2, 2(t1)
	sh	t2, 2(t0)
	lh	t1, 0(t1)
	sh	t1, 0(t0)
	ld	t0, %lo(enc_picture)(a1)
	add	t0, t0, a2
	ld	t0, -1768(t0)
	add	t0, t0, a5
	ld	t0, 8(t0)
	add	t0, t0, t5
	ld	t1, 328(sp)                     # 8-byte Folded Reload
	sh	t1, 0(t0)
	ld	t1, 320(sp)                     # 8-byte Folded Reload
	sh	t1, 2(t0)
	ld	t1, 312(sp)                     # 8-byte Folded Reload
	sh	t1, 4(t0)
	ld	t1, 304(sp)                     # 8-byte Folded Reload
	sh	t1, 6(t0)
	ld	t1, 296(sp)                     # 8-byte Folded Reload
	sh	t1, 8(t0)
	ld	t1, 288(sp)                     # 8-byte Folded Reload
	sh	t1, 10(t0)
	ld	t1, 280(sp)                     # 8-byte Folded Reload
	sh	t1, 12(t0)
	ld	t1, 272(sp)                     # 8-byte Folded Reload
	sh	t1, 14(t0)
	ld	t0, %lo(img)(a4)
	add	t1, s0, a7
	add	t1, t0, t1
	add	t2, t6, a6
	lh	t3, 30(t1)
	addiw	t4, a3, 344
	add	t2, t2, t4
	add	t0, t0, t2
	sh	t3, 14(t0)
	lh	t2, 28(t1)
	sh	t2, 12(t0)
	lh	t2, 26(t1)
	sh	t2, 10(t0)
	lh	t2, 24(t1)
	sh	t2, 8(t0)
	lh	t2, 22(t1)
	sh	t2, 6(t0)
	lh	t2, 20(t1)
	sh	t2, 4(t0)
	lh	t2, 18(t1)
	sh	t2, 2(t0)
	lh	t1, 16(t1)
	sh	t1, 0(t0)
	ld	t0, %lo(enc_picture)(a1)
	add	t0, t0, a2
	ld	t0, -1768(t0)
	add	t0, t0, a5
	ld	t0, 16(t0)
	add	t0, t0, t5
	ld	t1, 392(sp)                     # 8-byte Folded Reload
	sh	t1, 0(t0)
	ld	t1, 384(sp)                     # 8-byte Folded Reload
	sh	t1, 2(t0)
	ld	t1, 376(sp)                     # 8-byte Folded Reload
	sh	t1, 4(t0)
	ld	t1, 368(sp)                     # 8-byte Folded Reload
	sh	t1, 6(t0)
	ld	t1, 360(sp)                     # 8-byte Folded Reload
	sh	t1, 8(t0)
	ld	t1, 352(sp)                     # 8-byte Folded Reload
	sh	t1, 10(t0)
	ld	t1, 344(sp)                     # 8-byte Folded Reload
	sh	t1, 12(t0)
	ld	t1, 336(sp)                     # 8-byte Folded Reload
	sh	t1, 14(t0)
	ld	t0, %lo(img)(a4)
	add	t1, s0, a7
	add	t1, t0, t1
	add	t2, t6, a6
	lh	t3, 46(t1)
	addiw	t4, a3, 376
	add	t2, t2, t4
	add	t0, t0, t2
	sh	t3, 14(t0)
	lh	t2, 44(t1)
	sh	t2, 12(t0)
	lh	t2, 42(t1)
	sh	t2, 10(t0)
	lh	t2, 40(t1)
	sh	t2, 8(t0)
	lh	t2, 38(t1)
	sh	t2, 6(t0)
	lh	t2, 36(t1)
	sh	t2, 4(t0)
	lh	t2, 34(t1)
	sh	t2, 2(t0)
	lh	t1, 32(t1)
	sh	t1, 0(t0)
	ld	t0, %lo(enc_picture)(a1)
	add	t0, t0, a2
	ld	t0, -1768(t0)
	add	t0, t0, a5
	ld	t0, 24(t0)
	add	t0, t0, t5
	ld	t1, 456(sp)                     # 8-byte Folded Reload
	sh	t1, 0(t0)
	ld	t1, 448(sp)                     # 8-byte Folded Reload
	sh	t1, 2(t0)
	ld	t1, 440(sp)                     # 8-byte Folded Reload
	sh	t1, 4(t0)
	ld	t1, 432(sp)                     # 8-byte Folded Reload
	sh	t1, 6(t0)
	ld	t1, 424(sp)                     # 8-byte Folded Reload
	sh	t1, 8(t0)
	ld	t1, 416(sp)                     # 8-byte Folded Reload
	sh	t1, 10(t0)
	ld	t1, 408(sp)                     # 8-byte Folded Reload
	sh	t1, 12(t0)
	ld	t1, 400(sp)                     # 8-byte Folded Reload
	sh	t1, 14(t0)
	ld	t0, %lo(img)(a4)
	add	t1, s0, a7
	add	t1, t0, t1
	add	t2, t6, a6
	lh	t3, 62(t1)
	addiw	t4, a3, 408
	add	t2, t2, t4
	add	t0, t0, t2
	sh	t3, 14(t0)
	lh	t2, 60(t1)
	sh	t2, 12(t0)
	lh	t2, 58(t1)
	sh	t2, 10(t0)
	lh	t2, 56(t1)
	sh	t2, 8(t0)
	lh	t2, 54(t1)
	sh	t2, 6(t0)
	lh	t2, 52(t1)
	sh	t2, 4(t0)
	lh	t2, 50(t1)
	sh	t2, 2(t0)
	lh	t1, 48(t1)
	sh	t1, 0(t0)
	ld	t0, %lo(enc_picture)(a1)
	add	t0, t0, a2
	ld	t0, -1768(t0)
	add	t0, t0, a5
	ld	t0, 32(t0)
	add	t0, t0, t5
	ld	t1, 520(sp)                     # 8-byte Folded Reload
	sh	t1, 0(t0)
	ld	t1, 512(sp)                     # 8-byte Folded Reload
	sh	t1, 2(t0)
	ld	t1, 504(sp)                     # 8-byte Folded Reload
	sh	t1, 4(t0)
	ld	t1, 496(sp)                     # 8-byte Folded Reload
	sh	t1, 6(t0)
	ld	t1, 488(sp)                     # 8-byte Folded Reload
	sh	t1, 8(t0)
	ld	t1, 480(sp)                     # 8-byte Folded Reload
	sh	t1, 10(t0)
	ld	t1, 472(sp)                     # 8-byte Folded Reload
	sh	t1, 12(t0)
	ld	t1, 464(sp)                     # 8-byte Folded Reload
	sh	t1, 14(t0)
	ld	t0, %lo(img)(a4)
	add	t1, s0, a7
	add	t1, t0, t1
	add	t2, t6, a6
	lh	t3, 78(t1)
	addiw	t4, a3, 440
	add	t2, t2, t4
	add	t0, t0, t2
	sh	t3, 14(t0)
	lh	t2, 76(t1)
	sh	t2, 12(t0)
	lh	t2, 74(t1)
	sh	t2, 10(t0)
	lh	t2, 72(t1)
	sh	t2, 8(t0)
	lh	t2, 70(t1)
	sh	t2, 6(t0)
	lh	t2, 68(t1)
	sh	t2, 4(t0)
	lh	t2, 66(t1)
	sh	t2, 2(t0)
	lh	t1, 64(t1)
	sh	t1, 0(t0)
	ld	t0, %lo(enc_picture)(a1)
	add	t0, t0, a2
	ld	t0, -1768(t0)
	add	t0, t0, a5
	ld	t0, 40(t0)
	add	t0, t0, t5
	ld	t1, 600(sp)                     # 8-byte Folded Reload
	sh	t1, 0(t0)
	ld	t1, 592(sp)                     # 8-byte Folded Reload
	sh	t1, 2(t0)
	ld	t1, 584(sp)                     # 8-byte Folded Reload
	sh	t1, 4(t0)
	ld	t1, 576(sp)                     # 8-byte Folded Reload
	sh	t1, 6(t0)
	ld	t1, 560(sp)                     # 8-byte Folded Reload
	sh	t1, 8(t0)
	ld	t1, 544(sp)                     # 8-byte Folded Reload
	sh	t1, 10(t0)
	ld	t1, 536(sp)                     # 8-byte Folded Reload
	sh	t1, 12(t0)
	ld	t1, 528(sp)                     # 8-byte Folded Reload
	sh	t1, 14(t0)
	ld	t0, %lo(img)(a4)
	add	t1, s0, a7
	add	t1, t0, t1
	add	t2, t6, a6
	lh	t3, 94(t1)
	addiw	t4, a3, 472
	add	t2, t2, t4
	add	t0, t0, t2
	sh	t3, 14(t0)
	lh	t2, 92(t1)
	sh	t2, 12(t0)
	lh	t2, 90(t1)
	sh	t2, 10(t0)
	lh	t2, 88(t1)
	sh	t2, 8(t0)
	lh	t2, 86(t1)
	sh	t2, 6(t0)
	lh	t2, 84(t1)
	sh	t2, 4(t0)
	lh	t2, 82(t1)
	sh	t2, 2(t0)
	lh	t1, 80(t1)
	sh	t1, 0(t0)
	ld	t0, %lo(enc_picture)(a1)
	add	t0, t0, a2
	ld	t0, -1768(t0)
	add	t0, t0, a5
	ld	t0, 48(t0)
	add	t0, t0, t5
	ld	t1, 648(sp)                     # 8-byte Folded Reload
	sh	t1, 0(t0)
	ld	t1, 640(sp)                     # 8-byte Folded Reload
	sh	t1, 2(t0)
	ld	t1, 632(sp)                     # 8-byte Folded Reload
	sh	t1, 4(t0)
	ld	t1, 624(sp)                     # 8-byte Folded Reload
	sh	t1, 6(t0)
	ld	t1, 616(sp)                     # 8-byte Folded Reload
	sh	t1, 8(t0)
	ld	t1, 608(sp)                     # 8-byte Folded Reload
	sh	t1, 10(t0)
	ld	t1, 568(sp)                     # 8-byte Folded Reload
	sh	t1, 12(t0)
	ld	t1, 552(sp)                     # 8-byte Folded Reload
	sh	t1, 14(t0)
	ld	t0, %lo(img)(a4)
	add	t1, t6, a6
	add	t2, s0, a7
	add	t2, t0, t2
	lh	t3, 110(t2)
	addiw	t4, a3, 504
	add	t1, t1, t4
	add	t0, t0, t1
	sh	t3, 14(t0)
	lh	t1, 108(t2)
	sh	t1, 12(t0)
	lh	t1, 106(t2)
	sh	t1, 10(t0)
	lh	t1, 104(t2)
	sh	t1, 8(t0)
	lh	t1, 102(t2)
	sh	t1, 6(t0)
	lh	t1, 100(t2)
	sh	t1, 4(t0)
	lh	t1, 98(t2)
	sh	t1, 2(t0)
	lh	t1, 96(t2)
	sh	t1, 0(t0)
	ld	t0, %lo(enc_picture)(a1)
	add	t0, t0, a2
	ld	t0, -1768(t0)
	add	a5, t0, a5
	ld	a5, 56(a5)
	add	a5, a5, t5
	sh	s1, 0(a5)
	sh	s3, 2(a5)
	sh	s4, 4(a5)
	sh	s5, 6(a5)
	ld	t0, 680(sp)                     # 8-byte Folded Reload
	sh	t0, 8(a5)
	ld	t0, 672(sp)                     # 8-byte Folded Reload
	sh	t0, 10(a5)
	ld	t0, 664(sp)                     # 8-byte Folded Reload
	sh	t0, 12(a5)
	ld	t0, 656(sp)                     # 8-byte Folded Reload
	sh	t0, 14(a5)
	ld	a5, %lo(img)(a4)
	add	a6, t6, a6
	add	a7, s0, a7
	add	a7, a5, a7
	lh	t0, 126(a7)
	addiw	a3, a3, 536
	add	a3, a6, a3
	add	a3, a5, a3
	sh	t0, 14(a3)
	lh	a5, 124(a7)
	sh	a5, 12(a3)
	lh	a5, 122(a7)
	sh	a5, 10(a3)
	lh	a5, 120(a7)
	sh	a5, 8(a3)
	lh	a5, 118(a7)
	sh	a5, 6(a3)
	lh	a5, 116(a7)
	sh	a5, 4(a3)
	lh	a5, 114(a7)
	sh	a5, 2(a3)
	lh	a5, 112(a7)
	sh	a5, 0(a3)
	ld	a3, %lo(img)(a4)
	add	a0, a3, a0
	lw	a0, 460(a0)
	beqz	a0, .LBB1_103
# %bb.101:                              # %.preheader
	li	a0, 0
	li	a3, 0
	addi	a4, sp, 1212
	li	a5, 16
.LBB1_102:                              # =>This Inner Loop Header: Depth=1
	ld	a6, %lo(enc_picture)(a1)
	add	a6, a6, a2
	ld	a6, -1728(a6)
	andi	t0, a3, 4
	ld	a6, 0(a6)
	andi	a7, a0, 4
	addw	a7, a7, s9
	slli	a7, a7, 3
	add	a6, a6, a7
	ld	t1, 0(a6)
	addw	a6, t0, s8
	lwu	t0, -252(a4)
	slli	a6, a6, 1
	add	t1, t1, a6
	lwu	t2, -256(a4)
	srli	t3, t0, 16
	sh	t3, 6(t1)
	sh	t0, 4(t1)
	srli	t0, t2, 16
	sh	t0, 2(t1)
	sh	t2, 0(t1)
	ld	t0, %lo(enc_picture)(a1)
	add	t0, t0, a2
	ld	t0, -1728(t0)
	ld	t1, 0(t0)
	addi	t0, a7, 8
	add	t1, t1, t0
	ld	t1, 0(t1)
	lwu	t2, -236(a4)
	add	t1, t1, a6
	lwu	t3, -240(a4)
	srli	t4, t2, 16
	sh	t4, 6(t1)
	sh	t2, 4(t1)
	srli	t2, t3, 16
	sh	t2, 2(t1)
	sh	t3, 0(t1)
	ld	t1, %lo(enc_picture)(a1)
	add	t1, t1, a2
	ld	t1, -1728(t1)
	ld	t2, 0(t1)
	addi	t1, a7, 16
	add	t2, t2, t1
	ld	t2, 0(t2)
	lwu	t3, -220(a4)
	add	t2, t2, a6
	lwu	t4, -224(a4)
	srli	t5, t3, 16
	sh	t5, 6(t2)
	sh	t3, 4(t2)
	srli	t3, t4, 16
	sh	t3, 2(t2)
	sh	t4, 0(t2)
	ld	t2, %lo(enc_picture)(a1)
	add	t2, t2, a2
	ld	t2, -1728(t2)
	ld	t3, 0(t2)
	addi	t2, a7, 24
	add	t3, t3, t2
	ld	t3, 0(t3)
	lwu	t4, -204(a4)
	add	t3, t3, a6
	lwu	t5, -208(a4)
	srli	t6, t4, 16
	sh	t6, 6(t3)
	sh	t4, 4(t3)
	srli	t4, t5, 16
	sh	t4, 2(t3)
	sh	t5, 0(t3)
	ld	t3, %lo(enc_picture)(a1)
	add	t3, t3, a2
	ld	t3, -1728(t3)
	ld	t3, 8(t3)
	add	a7, t3, a7
	ld	a7, 0(a7)
	lwu	t3, 4(a4)
	add	a7, a7, a6
	lwu	t4, 0(a4)
	srli	t5, t3, 16
	sh	t5, 6(a7)
	sh	t3, 4(a7)
	srli	t3, t4, 16
	sh	t3, 2(a7)
	sh	t4, 0(a7)
	ld	a7, %lo(enc_picture)(a1)
	add	a7, a7, a2
	ld	a7, -1728(a7)
	ld	a7, 8(a7)
	add	a7, a7, t0
	ld	a7, 0(a7)
	lwu	t0, 20(a4)
	add	a7, a7, a6
	lwu	t3, 16(a4)
	srli	t4, t0, 16
	sh	t4, 6(a7)
	sh	t0, 4(a7)
	srli	t0, t3, 16
	sh	t0, 2(a7)
	sh	t3, 0(a7)
	ld	a7, %lo(enc_picture)(a1)
	add	a7, a7, a2
	ld	a7, -1728(a7)
	ld	a7, 8(a7)
	add	a7, a7, t1
	ld	a7, 0(a7)
	lwu	t0, 36(a4)
	add	a7, a7, a6
	lwu	t1, 32(a4)
	srli	t3, t0, 16
	sh	t3, 6(a7)
	sh	t0, 4(a7)
	srli	t0, t1, 16
	sh	t0, 2(a7)
	sh	t1, 0(a7)
	ld	a7, %lo(enc_picture)(a1)
	add	a7, a7, a2
	ld	a7, -1728(a7)
	ld	a7, 8(a7)
	add	a7, a7, t2
	ld	a7, 0(a7)
	lwu	t0, 52(a4)
	add	a6, a7, a6
	lwu	a7, 48(a4)
	srli	t1, t0, 16
	sh	t1, 6(a6)
	sh	t0, 4(a6)
	srli	t0, a7, 16
	sh	t0, 2(a6)
	sh	a7, 0(a6)
	addiw	a3, a3, 4
	addi	a0, a0, 2
	addi	a4, a4, 64
	bne	a3, a5, .LBB1_102
.LBB1_103:
	ld	a0, 720(sp)                     # 8-byte Folded Reload
.LBB1_104:
	addi	sp, sp, 1936
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
.LBB1_105:
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	add	a0, a0, a2
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	add	a2, a3, a2
	slli	s0, s0, 7
	ld	a3, 48(sp)                      # 8-byte Folded Reload
	add	s0, a3, s0
	addi	a3, s0, -1152
	addi	a4, a2, 256
	lui	a5, 3
	addiw	a5, a5, 852
	lui	a6, %hi(img)
	ld	s0, 920(sp)                     # 8-byte Folded Reload
.LBB1_106:                              # =>This Inner Loop Header: Depth=1
	add	a7, a1, a3
	lh	t0, 14(a7)
	add	a1, a1, a2
	sh	t0, 14(a1)
	lh	t0, 12(a7)
	sh	t0, 12(a1)
	lh	t0, 10(a7)
	sh	t0, 10(a1)
	lh	t0, 8(a7)
	sh	t0, 8(a1)
	lh	t0, 6(a7)
	sh	t0, 6(a1)
	lh	t0, 4(a7)
	sh	t0, 4(a1)
	lh	t0, 2(a7)
	sh	t0, 2(a1)
	lh	a7, 0(a7)
	sh	a7, 0(a1)
	ld	a7, 0(a0)
	ld	a1, %lo(img)(a6)
	add	a7, a7, s0
	lhu	t0, 0(a7)
	add	t1, a1, a3
	lhu	t2, 0(t1)
	lhu	t3, 2(a7)
	lhu	t4, 2(t1)
	subw	t0, t0, t2
	add	t2, a1, a5
	sw	t0, -28(t2)
	subw	t3, t3, t4
	lhu	t0, 4(a7)
	lhu	t4, 4(t1)
	lhu	t5, 6(a7)
	lhu	t6, 6(t1)
	sw	t3, -24(t2)
	subw	t0, t0, t4
	sw	t0, -20(t2)
	subw	t5, t5, t6
	lhu	t0, 8(a7)
	lhu	t3, 8(t1)
	lhu	t4, 10(a7)
	lhu	t6, 10(t1)
	sw	t5, -16(t2)
	subw	t0, t0, t3
	sw	t0, -12(t2)
	subw	t4, t4, t6
	lhu	t0, 12(a7)
	lhu	t3, 12(t1)
	lhu	a7, 14(a7)
	lhu	t1, 14(t1)
	sw	t4, -8(t2)
	subw	t0, t0, t3
	sw	t0, -4(t2)
	subw	a7, a7, t1
	sw	a7, 0(t2)
	addi	a2, a2, 32
	addi	a3, a3, 16
	addi	a0, a0, 8
	addi	a5, a5, 64
	bne	a2, a4, .LBB1_106
# %bb.107:
	addi	a1, sp, 2047
	addi	a1, a1, 1789
	li	a2, 1
	mv	a0, s11
	call	dct_luma8x8
	j	.LBB1_104
.Lfunc_end1:
	.size	Mode_Decision_for_new_8x8IntraBlocks, .Lfunc_end1-Mode_Decision_for_new_8x8IntraBlocks
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	intrapred_luma8x8               # -- Begin function intrapred_luma8x8
	.p2align	2
	.type	intrapred_luma8x8,@function
intrapred_luma8x8:                      # @intrapred_luma8x8
# %bb.0:
	addi	sp, sp, -496
	sd	ra, 488(sp)                     # 8-byte Folded Spill
	sd	s0, 480(sp)                     # 8-byte Folded Spill
	sd	s1, 472(sp)                     # 8-byte Folded Spill
	sd	s2, 464(sp)                     # 8-byte Folded Spill
	sd	s3, 456(sp)                     # 8-byte Folded Spill
	sd	s4, 448(sp)                     # 8-byte Folded Spill
	sd	s5, 440(sp)                     # 8-byte Folded Spill
	sd	s6, 432(sp)                     # 8-byte Folded Spill
	sd	s7, 424(sp)                     # 8-byte Folded Spill
	sd	s8, 416(sp)                     # 8-byte Folded Spill
	sd	s9, 408(sp)                     # 8-byte Folded Spill
	sd	s10, 400(sp)                    # 8-byte Folded Spill
	sd	s11, 392(sp)                    # 8-byte Folded Spill
	mv	s2, a4
	mv	s3, a3
	mv	s4, a2
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	lui	a4, 2
	add	a2, a2, a4
	ld	s8, -1768(a2)
	lw	s5, 12(a3)
	andi	s0, a0, 15
	andi	s1, a1, 15
	addi	s6, s0, -1
	li	a3, 1
	addi	a4, sp, 100
	mv	a0, s5
	mv	a1, s6
	mv	a2, s1
	call	getNeighbour
	addi	a2, s1, 1
	addi	a4, sp, 124
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s1, 2
	addi	a4, sp, 148
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s1, 3
	addi	a4, sp, 172
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s1, 4
	addi	a4, sp, 196
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s1, 5
	addi	a4, sp, 220
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s1, 6
	addi	a4, sp, 244
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s1, 7
	addi	a4, sp, 268
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	s7, s1, -1
	li	a3, 1
	addi	a4, sp, 76
	mv	a0, s5
	mv	a1, s0
	mv	a2, s7
	call	getNeighbour
	addi	a1, s0, 8
	li	a3, 1
	addi	a4, sp, 52
	mv	a0, s5
	mv	a2, s7
	call	getNeighbour
	li	a3, 1
	addi	a4, sp, 28
	mv	a0, s5
	mv	a1, s6
	mv	a2, s7
	call	getNeighbour
	lw	a0, 52(sp)
	beqz	a0, .LBB2_2
# %bb.1:
	xori	a0, s0, 8
	xori	a1, s1, 8
	or	a0, a0, a1
	snez	a0, a0
.LBB2_2:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lw	a1, 220(a1)
	sw	a0, 52(sp)
	beqz	a1, .LBB2_17
# %bb.3:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a2, 100(sp)
	lui	a3, 22
	addiw	a3, a3, -920
	add	a1, a1, a3
	beqz	a2, .LBB2_18
# %bb.4:
	lw	a2, 104(sp)
	ld	a3, 0(a1)
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a3, 0(a2)
	lw	a2, 124(sp)
	beqz	a2, .LBB2_19
.LBB2_5:
	lw	a2, 128(sp)
	ld	a4, 0(a1)
	slli	a2, a2, 2
	add	a2, a4, a2
	lw	a4, 0(a2)
	lw	a2, 148(sp)
	beqz	a2, .LBB2_7
.LBB2_6:
	lw	a2, 152(sp)
	ld	a5, 0(a1)
	slli	a2, a2, 2
	add	a2, a5, a2
	lw	a2, 0(a2)
.LBB2_7:
	lw	a6, 172(sp)
	andi	a5, a3, 1
	beqz	a6, .LBB2_20
# %bb.8:
	lw	a3, 176(sp)
	ld	a6, 0(a1)
	slli	a3, a3, 2
	add	a3, a6, a3
	lw	a3, 0(a3)
	lw	a6, 196(sp)
	and	a5, a4, a5
	beqz	a6, .LBB2_21
.LBB2_9:
	lw	a4, 200(sp)
	ld	a6, 0(a1)
	slli	a4, a4, 2
	add	a4, a6, a4
	lw	a4, 0(a4)
	lw	a6, 220(sp)
	and	a5, a2, a5
	beqz	a6, .LBB2_22
.LBB2_10:
	lw	a2, 224(sp)
	ld	a6, 0(a1)
	slli	a2, a2, 2
	add	a2, a6, a2
	lw	a2, 0(a2)
	lw	a6, 244(sp)
	and	a5, a3, a5
	beqz	a6, .LBB2_23
.LBB2_11:
	lw	a3, 248(sp)
	ld	a6, 0(a1)
	slli	a3, a3, 2
	add	a3, a6, a3
	lw	a3, 0(a3)
	lw	a6, 268(sp)
	and	a5, a4, a5
	beqz	a6, .LBB2_24
.LBB2_12:
	lw	a4, 272(sp)
	ld	a6, 0(a1)
	slli	a4, a4, 2
	add	a4, a6, a4
	lw	a4, 0(a4)
	lw	a6, 76(sp)
	and	a2, a2, a5
	beqz	a6, .LBB2_25
.LBB2_13:
	lw	a5, 80(sp)
	ld	a6, 0(a1)
	slli	a5, a5, 2
	add	a5, a6, a5
	lw	s1, 0(a5)
	and	s0, a3, a2
	beqz	a0, .LBB2_15
.LBB2_14:
	lw	a0, 56(sp)
	ld	a2, 0(a1)
	slli	a0, a0, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
.LBB2_15:
	lw	a2, 28(sp)
	and	s0, a4, s0
	beqz	a2, .LBB2_26
# %bb.16:
	lw	a2, 32(sp)
	ld	a1, 0(a1)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	j	.LBB2_27
.LBB2_17:
	lw	s0, 100(sp)
	lw	s1, 76(sp)
	lw	a1, 28(sp)
	j	.LBB2_27
.LBB2_18:
	li	a3, 0
	lw	a2, 124(sp)
	bnez	a2, .LBB2_5
.LBB2_19:
	li	a4, 0
	lw	a2, 148(sp)
	bnez	a2, .LBB2_6
	j	.LBB2_7
.LBB2_20:
	li	a3, 0
	lw	a6, 196(sp)
	and	a5, a4, a5
	bnez	a6, .LBB2_9
.LBB2_21:
	li	a4, 0
	lw	a6, 220(sp)
	and	a5, a2, a5
	bnez	a6, .LBB2_10
.LBB2_22:
	li	a2, 0
	lw	a6, 244(sp)
	and	a5, a3, a5
	bnez	a6, .LBB2_11
.LBB2_23:
	li	a3, 0
	lw	a6, 268(sp)
	and	a5, a4, a5
	bnez	a6, .LBB2_12
.LBB2_24:
	li	a4, 0
	lw	a6, 76(sp)
	and	a2, a2, a5
	bnez	a6, .LBB2_13
.LBB2_25:
	li	s1, 0
	and	s0, a3, a2
	bnez	a0, .LBB2_14
	j	.LBB2_15
.LBB2_26:
	li	a1, 0
.LBB2_27:
	sw	s0, 0(s4)
	sw	s1, 0(s3)
	snez	a2, s1
	snez	a3, s0
	and	s4, a2, a3
	snez	a2, a1
	and	s5, s4, a2
	sw	s5, 0(s2)
	beqz	s1, .LBB2_29
# %bb.28:
	lw	a2, 96(sp)
	slli	a2, a2, 3
	add	a2, s8, a2
	lw	a3, 92(sp)
	ld	a2, 0(a2)
	slli	a3, a3, 1
	add	a2, a2, a3
	lhu	a3, 0(a2)
	lhu	a4, 2(a2)
	lhu	a5, 4(a2)
	lhu	a6, 6(a2)
	lhu	a7, 8(a2)
	lhu	t0, 10(a2)
	lhu	t1, 12(a2)
	lhu	a2, 14(a2)
	j	.LBB2_30
.LBB2_29:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 22
	add	a2, a2, a3
	lw	a3, 416(a2)
	mv	a4, a3
	mv	a5, a3
	mv	a6, a3
	mv	a7, a3
	mv	t0, a3
	mv	t1, a3
	mv	a2, a3
.LBB2_30:
	sw	a3, 296(sp)
	sw	a4, 300(sp)
	sw	a5, 304(sp)
	sw	a6, 308(sp)
	sw	a7, 312(sp)
	sw	t0, 316(sp)
	sw	t1, 320(sp)
	sw	a2, 324(sp)
	beqz	a0, .LBB2_32
# %bb.31:
	lw	a0, 72(sp)
	slli	a0, a0, 3
	add	a0, s8, a0
	lw	a2, 68(sp)
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a2, a0, a2
	lhu	a0, 0(a2)
	lhu	a3, 2(a2)
	lhu	a4, 4(a2)
	lhu	a5, 6(a2)
	lhu	a7, 10(a2)
	lhu	a6, 8(a2)
	lhu	t0, 12(a2)
	lhu	a2, 14(a2)
	sw	a7, 348(sp)
	addi	a7, sp, 356
	sw	t0, 352(sp)
	j	.LBB2_33
.LBB2_32:
	addi	a7, sp, 348
	sw	a2, 356(sp)
	sw	a2, 352(sp)
	mv	a6, a2
	mv	a5, a2
	mv	a4, a2
	mv	a3, a2
	mv	a0, a2
.LBB2_33:
	sw	a2, 0(a7)
	sw	a6, 344(sp)
	sw	a5, 340(sp)
	sw	a4, 336(sp)
	sw	a3, 332(sp)
	sw	a0, 328(sp)
	beqz	s0, .LBB2_35
# %bb.34:
	lw	a0, 120(sp)
	slli	a0, a0, 3
	add	a0, s8, a0
	lw	a2, 116(sp)
	ld	a0, 0(a0)
	lw	a3, 144(sp)
	slli	a2, a2, 1
	add	a0, a0, a2
	slli	a3, a3, 3
	add	a3, s8, a3
	lw	a2, 140(sp)
	ld	a3, 0(a3)
	lw	a4, 168(sp)
	lhu	a0, 0(a0)
	slli	a2, a2, 1
	add	a2, a3, a2
	slli	a4, a4, 3
	add	a4, s8, a4
	lw	a3, 164(sp)
	ld	a4, 0(a4)
	lw	a5, 192(sp)
	lhu	a2, 0(a2)
	slli	a3, a3, 1
	add	a3, a4, a3
	slli	a5, a5, 3
	add	a5, s8, a5
	lw	a4, 188(sp)
	ld	a5, 0(a5)
	lhu	a3, 0(a3)
	lw	a6, 216(sp)
	slli	a4, a4, 1
	add	a4, a5, a4
	lhu	a4, 0(a4)
	slli	a6, a6, 3
	lw	a5, 212(sp)
	lw	a7, 240(sp)
	add	a6, s8, a6
	ld	a6, 0(a6)
	slli	a5, a5, 1
	slli	a7, a7, 3
	add	a7, s8, a7
	lw	t0, 236(sp)
	ld	a7, 0(a7)
	lw	t1, 264(sp)
	add	a5, a6, a5
	slli	t0, t0, 1
	add	a7, a7, t0
	slli	t1, t1, 3
	add	t1, s8, t1
	lw	a6, 260(sp)
	ld	t0, 0(t1)
	lw	t1, 288(sp)
	lhu	a5, 0(a5)
	slli	a6, a6, 1
	add	t0, t0, a6
	slli	t1, t1, 3
	add	t1, s8, t1
	lw	t2, 284(sp)
	ld	t1, 0(t1)
	lhu	a6, 0(a7)
	lhu	a7, 0(t0)
	slli	t2, t2, 1
	add	t1, t1, t2
	lhu	t0, 0(t1)
	j	.LBB2_36
.LBB2_35:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a2, 22
	add	a0, a0, a2
	lw	a0, 416(a0)
	mv	a2, a0
	mv	a3, a0
	mv	a4, a0
	mv	a5, a0
	mv	a6, a0
	mv	a7, a0
	mv	t0, a0
.LBB2_36:
	sw	a0, 360(sp)
	sw	a2, 364(sp)
	sw	a3, 368(sp)
	sw	a4, 372(sp)
	sw	a5, 376(sp)
	sw	a6, 380(sp)
	sw	a7, 384(sp)
	sw	t0, 388(sp)
	beqz	a1, .LBB2_38
# %bb.37:
	lw	a0, 48(sp)
	slli	a0, a0, 3
	add	a0, s8, a0
	lw	a2, 44(sp)
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a0, a0, a2
	lhu	a0, 0(a0)
	lui	a2, %hi(img)
	ld	s3, %lo(img)(a2)
	j	.LBB2_39
.LBB2_38:
	lui	a0, %hi(img)
	ld	s3, %lo(img)(a0)
	lui	a0, 22
	add	a0, s3, a0
	lw	a0, 416(a0)
.LBB2_39:
	lui	a2, 2
	addiw	s2, a2, -840
	add	s2, s3, s2
	sw	a0, 292(sp)
	li	a0, -1
	sh	a0, 0(s2)
	sh	a0, 128(s2)
	sh	a0, 256(s2)
	sh	a0, 384(s2)
	sh	a0, 512(s2)
	sh	a0, 640(s2)
	sh	a0, 768(s2)
	sh	a0, 896(s2)
	sh	a0, 1024(s2)
	addi	a0, sp, 292
	mv	a2, s1
	mv	a3, s0
	call	LowPassForIntra8x8Pred
	beqz	s4, .LBB2_41
# %bb.40:
	lw	a0, 296(sp)
	lw	a1, 300(sp)
	lw	a2, 304(sp)
	lw	a3, 308(sp)
	lw	a4, 312(sp)
	lw	a5, 316(sp)
	lw	a6, 320(sp)
	lw	a7, 324(sp)
	lw	t0, 360(sp)
	lw	t1, 364(sp)
	lw	t2, 368(sp)
	lw	t3, 372(sp)
	lw	t4, 376(sp)
	lw	t5, 380(sp)
	lw	t6, 384(sp)
	lw	s3, 388(sp)
	add	a0, a0, a1
	add	a2, a2, a3
	add	a0, a0, a2
	add	a4, a4, a5
	add	a4, a4, a6
	add	a0, a0, a4
	add	a7, a7, t0
	add	a7, a7, t1
	add	a7, a7, t2
	add	a0, a0, a7
	add	t3, t3, t4
	add	t3, t3, t5
	add	t3, t3, t6
	add	t3, t3, s3
	add	a0, a0, t3
	addi	a0, a0, 8
	sraiw	a0, a0, 4
	j	.LBB2_49
.LBB2_41:
	bnez	s1, .LBB2_44
# %bb.42:
	beqz	s0, .LBB2_44
# %bb.43:
	lw	a0, 360(sp)
	lw	a1, 364(sp)
	lw	a2, 368(sp)
	lw	a3, 372(sp)
	lw	a4, 376(sp)
	lw	a5, 380(sp)
	lw	a6, 384(sp)
	lw	a7, 388(sp)
	j	.LBB2_47
.LBB2_44:
	beqz	s1, .LBB2_48
# %bb.45:
	bnez	s0, .LBB2_48
# %bb.46:
	lw	a0, 296(sp)
	lw	a1, 300(sp)
	lw	a2, 304(sp)
	lw	a3, 308(sp)
	lw	a4, 312(sp)
	lw	a5, 316(sp)
	lw	a6, 320(sp)
	lw	a7, 324(sp)
.LBB2_47:
	add	a0, a0, a1
	add	a2, a2, a3
	add	a0, a0, a2
	add	a4, a4, a5
	add	a4, a4, a6
	add	a0, a0, a4
	add	a0, a0, a7
	addi	a0, a0, 4
	sraiw	a0, a0, 3
	j	.LBB2_49
.LBB2_48:
	lui	a0, 22
	addiw	a0, a0, 416
	add	a0, s3, a0
	lw	a0, 0(a0)
.LBB2_49:
	sh	a0, 256(s2)
	sh	a0, 272(s2)
	sh	a0, 288(s2)
	sh	a0, 304(s2)
	sh	a0, 320(s2)
	sh	a0, 336(s2)
	sh	a0, 352(s2)
	sh	a0, 368(s2)
	sh	a0, 258(s2)
	sh	a0, 274(s2)
	sh	a0, 290(s2)
	sh	a0, 306(s2)
	sh	a0, 322(s2)
	sh	a0, 338(s2)
	sh	a0, 354(s2)
	sh	a0, 370(s2)
	sh	a0, 260(s2)
	sh	a0, 276(s2)
	sh	a0, 292(s2)
	sh	a0, 308(s2)
	sh	a0, 324(s2)
	sh	a0, 340(s2)
	sh	a0, 356(s2)
	sh	a0, 372(s2)
	sh	a0, 262(s2)
	sh	a0, 278(s2)
	sh	a0, 294(s2)
	sh	a0, 310(s2)
	sh	a0, 326(s2)
	sh	a0, 342(s2)
	sh	a0, 358(s2)
	sh	a0, 374(s2)
	sh	a0, 264(s2)
	sh	a0, 280(s2)
	sh	a0, 296(s2)
	sh	a0, 312(s2)
	sh	a0, 328(s2)
	sh	a0, 344(s2)
	sh	a0, 360(s2)
	sh	a0, 376(s2)
	sh	a0, 266(s2)
	sh	a0, 282(s2)
	sh	a0, 298(s2)
	sh	a0, 314(s2)
	sh	a0, 330(s2)
	sh	a0, 346(s2)
	sh	a0, 362(s2)
	sh	a0, 378(s2)
	sh	a0, 268(s2)
	sh	a0, 284(s2)
	sh	a0, 300(s2)
	sh	a0, 316(s2)
	sh	a0, 332(s2)
	sh	a0, 348(s2)
	sh	a0, 364(s2)
	sh	a0, 380(s2)
	sh	a0, 270(s2)
	sh	a0, 286(s2)
	sh	a0, 302(s2)
	sh	a0, 318(s2)
	sh	a0, 334(s2)
	sh	a0, 350(s2)
	sh	a0, 366(s2)
	sh	a0, 382(s2)
	lui	a1, %hi(img)
	ld	a4, %lo(img)(a1)
	lh	a0, 296(sp)
	lui	a2, 2
	addiw	a3, a2, -840
	add	a4, a4, a3
	sh	a0, 112(a4)
	sh	a0, 96(a4)
	sh	a0, 80(a4)
	sh	a0, 64(a4)
	sh	a0, 48(a4)
	lh	a3, 360(sp)
	sh	a0, 32(a4)
	sh	a0, 16(a4)
	sh	a0, 0(a4)
	sh	a3, 142(a4)
	sh	a3, 140(a4)
	sh	a3, 138(a4)
	sh	a3, 136(a4)
	sh	a3, 134(a4)
	lh	a0, 300(sp)
	sh	a3, 132(a4)
	sh	a3, 130(a4)
	sh	a3, 128(a4)
	sh	a0, 114(a4)
	sh	a0, 98(a4)
	sh	a0, 82(a4)
	sh	a0, 66(a4)
	sh	a0, 50(a4)
	lh	a3, 364(sp)
	sh	a0, 34(a4)
	sh	a0, 18(a4)
	sh	a0, 2(a4)
	sh	a3, 158(a4)
	sh	a3, 156(a4)
	sh	a3, 154(a4)
	sh	a3, 152(a4)
	sh	a3, 150(a4)
	lh	a0, 304(sp)
	sh	a3, 148(a4)
	sh	a3, 146(a4)
	sh	a3, 144(a4)
	sh	a0, 116(a4)
	sh	a0, 100(a4)
	sh	a0, 84(a4)
	sh	a0, 68(a4)
	sh	a0, 52(a4)
	lh	a3, 368(sp)
	sh	a0, 36(a4)
	sh	a0, 20(a4)
	sh	a0, 4(a4)
	sh	a3, 174(a4)
	sh	a3, 172(a4)
	sh	a3, 170(a4)
	sh	a3, 168(a4)
	sh	a3, 166(a4)
	lh	a0, 308(sp)
	sh	a3, 164(a4)
	sh	a3, 162(a4)
	sh	a3, 160(a4)
	sh	a0, 118(a4)
	sh	a0, 102(a4)
	sh	a0, 86(a4)
	sh	a0, 70(a4)
	sh	a0, 54(a4)
	lh	a3, 372(sp)
	sh	a0, 38(a4)
	sh	a0, 22(a4)
	sh	a0, 6(a4)
	sh	a3, 190(a4)
	sh	a3, 188(a4)
	sh	a3, 186(a4)
	sh	a3, 184(a4)
	sh	a3, 182(a4)
	lh	a0, 312(sp)
	sh	a3, 180(a4)
	sh	a3, 178(a4)
	sh	a3, 176(a4)
	sh	a0, 120(a4)
	sh	a0, 104(a4)
	sh	a0, 88(a4)
	sh	a0, 72(a4)
	sh	a0, 56(a4)
	lh	a3, 376(sp)
	sh	a0, 40(a4)
	sh	a0, 24(a4)
	sh	a0, 8(a4)
	sh	a3, 206(a4)
	sh	a3, 204(a4)
	sh	a3, 202(a4)
	sh	a3, 200(a4)
	sh	a3, 198(a4)
	lh	a0, 316(sp)
	sh	a3, 196(a4)
	sh	a3, 194(a4)
	sh	a3, 192(a4)
	sh	a0, 122(a4)
	sh	a0, 106(a4)
	sh	a0, 90(a4)
	sh	a0, 74(a4)
	sh	a0, 58(a4)
	lh	a3, 380(sp)
	sh	a0, 42(a4)
	sh	a0, 26(a4)
	sh	a0, 10(a4)
	sh	a3, 222(a4)
	sh	a3, 220(a4)
	sh	a3, 218(a4)
	sh	a3, 216(a4)
	sh	a3, 214(a4)
	lw	t4, 320(sp)
	sh	a3, 212(a4)
	sh	a3, 210(a4)
	sh	a3, 208(a4)
	sh	t4, 124(a4)
	sh	t4, 108(a4)
	sh	t4, 92(a4)
	sh	t4, 76(a4)
	sh	t4, 60(a4)
	lh	a5, 384(sp)
	sh	t4, 44(a4)
	sh	t4, 28(a4)
	sh	t4, 12(a4)
	sh	a5, 238(a4)
	sh	a5, 236(a4)
	sh	a5, 234(a4)
	sh	a5, 232(a4)
	sh	a5, 230(a4)
	lw	a3, 324(sp)
	sh	a5, 228(a4)
	sh	a5, 226(a4)
	sh	a5, 224(a4)
	sh	a3, 126(a4)
	sh	a3, 110(a4)
	sh	a3, 94(a4)
	sh	a3, 78(a4)
	sh	a3, 62(a4)
	lh	a5, 388(sp)
	sh	a3, 46(a4)
	sh	a3, 30(a4)
	sh	a3, 14(a4)
	sh	a5, 254(a4)
	sh	a5, 252(a4)
	sh	a5, 250(a4)
	sh	a5, 248(a4)
	sh	a5, 246(a4)
	sh	a5, 244(a4)
	sh	a5, 242(a4)
	sh	a5, 240(a4)
	beqz	s1, .LBB2_58
# %bb.50:
	beqz	s0, .LBB2_59
.LBB2_51:
	beqz	s1, .LBB2_53
.LBB2_52:
	lw	s1, 300(sp)
	lw	s2, 304(sp)
	sd	s5, 16(sp)                      # 8-byte Folded Spill
	lw	s5, 296(sp)
	slli	t1, s1, 1
	addi	s8, s2, 2
	add	a1, s8, s5
	add	a1, a1, t1
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(img)
	ld	a4, %lo(img)(a0)
	lui	a0, 2
	lw	s4, 308(sp)
	addiw	a5, a0, -456
	add	a4, a4, a5
	slli	t3, s2, 1
	add	a5, s4, s1
	add	t3, a5, t3
	lw	s6, 312(sp)
	lw	s7, 316(sp)
	slli	a5, s4, 1
	add	s8, s8, a5
	slli	t0, s6, 1
	addi	a6, s7, 2
	add	t0, a6, t0
	add	a5, t0, s4
	srliw	a5, a5, 2
	sh	a5, 48(a4)
	sh	a5, 34(a4)
	sh	a5, 20(a4)
	sh	a5, 6(a4)
	slli	a7, s7, 1
	addi	a5, t4, 2
	add	t2, a5, s6
	add	a7, t2, a7
	srliw	a7, a7, 2
	sh	a7, 64(a4)
	sh	a7, 50(a4)
	sh	a7, 36(a4)
	sh	a7, 22(a4)
	sh	a7, 8(a4)
	slli	a7, t4, 1
	add	a6, a6, a7
	add	a6, a6, a3
	srliw	a6, a6, 2
	sh	a6, 80(a4)
	sh	a6, 66(a4)
	sh	a6, 52(a4)
	sh	a6, 38(a4)
	sh	a6, 24(a4)
	lw	s9, 328(sp)
	sh	a6, 10(a4)
	slli	t1, a3, 1
	add	a7, a5, t1
	add	a7, a7, s9
	srliw	a7, a7, 2
	sh	a7, 96(a4)
	sh	a7, 82(a4)
	sh	a7, 68(a4)
	sh	a7, 54(a4)
	sh	a7, 40(a4)
	sh	a7, 26(a4)
	sh	a7, 12(a4)
	lw	s10, 332(sp)
	slli	t2, s9, 1
	sd	t2, 8(sp)                       # 8-byte Folded Spill
	addi	a7, a3, 2
	add	t2, a7, t2
	add	t2, t2, s10
	srliw	t2, t2, 2
	sh	t2, 112(a4)
	sh	t2, 98(a4)
	sh	t2, 84(a4)
	sh	t2, 70(a4)
	sh	t2, 56(a4)
	sh	t2, 42(a4)
	sh	t2, 28(a4)
	sh	t2, 14(a4)
	lw	s11, 336(sp)
	slli	t2, s10, 1
	addi	t5, s9, 2
	add	t6, t5, t2
	add	t6, t6, s11
	srliw	t6, t6, 2
	sh	t6, 114(a4)
	sh	t6, 100(a4)
	sh	t6, 86(a4)
	sh	t6, 72(a4)
	sh	t6, 58(a4)
	lw	ra, 340(sp)
	lw	s3, 344(sp)
	lw	a2, 348(sp)
	sh	t6, 44(a4)
	sh	t6, 30(a4)
	slli	a1, s3, 1
	add	t6, ra, a2
	add	a1, t6, a1
	addi	a1, a1, 2
	srliw	a1, a1, 2
	sh	a1, 120(a4)
	sh	a1, 106(a4)
	sh	a1, 92(a4)
	sh	a1, 78(a4)
	slli	a1, ra, 1
	lw	a0, 352(sp)
	addi	t6, s11, 2
	add	a1, t6, a1
	add	a6, a1, s3
	add	s3, s3, a0
	mv	a1, s0
	slli	s0, a2, 1
	add	s0, s3, s0
	addi	s0, s0, 2
	srliw	s0, s0, 2
	lw	s3, 356(sp)
	sh	s0, 122(a4)
	sh	s0, 108(a4)
	sh	s0, 94(a4)
	add	a2, a2, s3
	slli	s0, a0, 1
	add	a2, a2, s0
	mv	s0, a1
	addi	a2, a2, 2
	srliw	a2, a2, 2
	sh	a2, 124(a4)
	sh	a2, 110(a4)
	add	a0, a0, s3
	slli	s3, s3, 1
	add	a0, a0, s3
	addi	a0, a0, 2
	srli	a0, a0, 2
	sh	a0, 126(a4)
	add	s5, s1, s5
	addi	s5, s5, 1
	srli	a0, s5, 1
	ld	s5, 16(sp)                      # 8-byte Folded Reload
	sh	a0, 512(a4)
	addi	s2, s2, 1
	add	s1, s2, s1
	srliw	a0, s1, 1
	sh	a0, 544(a4)
	sh	a0, 514(a4)
	add	s2, s2, s4
	srliw	a0, s2, 1
	sh	a0, 576(a4)
	sh	a0, 546(a4)
	sh	a0, 516(a4)
	add	s4, s4, s6
	addi	s4, s4, 1
	srliw	a0, s4, 1
	sh	a0, 608(a4)
	sh	a0, 578(a4)
	sh	a0, 548(a4)
	sh	a0, 518(a4)
	add	s8, s8, s6
	add	s6, s6, s7
	addi	s6, s6, 1
	srliw	a0, s6, 1
	sh	a0, 610(a4)
	sh	a0, 580(a4)
	sh	a0, 550(a4)
	sh	a0, 520(a4)
	add	s7, s7, t4
	addi	s7, s7, 1
	srliw	a0, s7, 1
	sh	a0, 612(a4)
	sh	a0, 582(a4)
	sh	a0, 552(a4)
	sh	a0, 522(a4)
	add	t4, t4, a3
	addi	t4, t4, 1
	srliw	a0, t4, 1
	sh	a0, 614(a4)
	sh	a0, 584(a4)
	sh	a0, 554(a4)
	sh	a0, 524(a4)
	add	a3, a3, s9
	addi	a3, a3, 1
	srliw	a0, a3, 1
	sh	a0, 616(a4)
	sh	a0, 586(a4)
	sh	a0, 556(a4)
	sh	a0, 526(a4)
	add	s9, s9, s10
	addi	s9, s9, 1
	srliw	a0, s9, 1
	sh	a0, 618(a4)
	sh	a0, 588(a4)
	sh	a0, 558(a4)
	add	a0, s10, s11
	addi	a0, a0, 1
	srliw	a0, a0, 1
	sh	a0, 620(a4)
	sh	a0, 590(a4)
	slli	a0, s11, 1
	addi	s10, s10, 2
	add	a0, s10, a0
	add	a0, a0, ra
	add	s11, s11, ra
	addi	s11, s11, 1
	srli	a2, s11, 1
	sh	a2, 622(a4)
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	srliw	a2, a1, 2
	sh	a2, 0(a4)
	sh	a2, 528(a4)
	addi	t3, t3, 2
	srliw	a2, t3, 2
	sh	a2, 16(a4)
	sh	a2, 2(a4)
	sh	a2, 560(a4)
	sh	a2, 530(a4)
	srliw	a2, s8, 2
	sh	a2, 32(a4)
	sh	a2, 18(a4)
	sh	a2, 4(a4)
	srliw	a0, a0, 2
	sh	a0, 116(a4)
	sh	a0, 102(a4)
	sh	a0, 88(a4)
	sh	a0, 74(a4)
	sh	a0, 60(a4)
	sh	a0, 46(a4)
	srliw	a3, a6, 2
	sh	a3, 118(a4)
	sh	a3, 104(a4)
	sh	a3, 90(a4)
	sh	a2, 592(a4)
	sh	a2, 562(a4)
	sh	a2, 532(a4)
	lw	a1, 308(sp)
	sh	a3, 76(a4)
	sh	a3, 62(a4)
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	add	a1, t0, a1
	srliw	a4, a1, 2
	lui	a1, 2
	addiw	a1, a1, 78
	add	a1, a2, a1
	sh	a4, 90(a1)
	sh	a4, 60(a1)
	lw	a2, 312(sp)
	lw	t0, 316(sp)
	sh	a4, 30(a1)
	sh	a4, 0(a1)
	add	a2, a5, a2
	slli	a4, t0, 1
	add	a2, a2, a4
	srliw	a2, a2, 2
	sh	a2, 92(a1)
	sh	a2, 62(a1)
	lw	a4, 320(sp)
	sh	a2, 32(a1)
	sh	a2, 2(a1)
	add	a6, a7, t0
	slli	a2, a4, 1
	add	a2, a6, a2
	srliw	a2, a2, 2
	sh	a2, 94(a1)
	sh	a2, 64(a1)
	sh	a2, 34(a1)
	sh	a2, 4(a1)
	add	t1, t5, t1
	add	a4, t1, a4
	srliw	a2, a4, 2
	sh	a2, 96(a1)
	sh	a2, 66(a1)
	lw	a4, 324(sp)
	sh	a2, 36(a1)
	sh	a2, 6(a1)
	ld	a7, 8(sp)                       # 8-byte Folded Reload
	add	a7, s10, a7
	add	a4, a7, a4
	srliw	a2, a4, 2
	sh	a2, 98(a1)
	sh	a2, 68(a1)
	lw	a4, 328(sp)
	sh	a2, 38(a1)
	sh	a2, 8(a1)
	add	t2, t6, t2
	add	a4, t2, a4
	srliw	a2, a4, 2
	sh	a2, 100(a1)
	sh	a2, 70(a1)
	sh	a2, 40(a1)
	sh	a0, 102(a1)
	sh	a0, 72(a1)
	sh	a3, 104(a1)
.LBB2_53:
	beqz	s5, .LBB2_55
# %bb.54:
	lw	a3, 384(sp)
	lw	a4, 380(sp)
	lw	a0, 388(sp)
	slli	a1, a3, 1
	addi	a5, a4, 2
	add	a0, a5, a0
	add	a0, a0, a1
	srli	a6, a0, 2
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	lui	a0, 2
	addiw	a7, a0, -328
	lw	t0, 376(sp)
	add	a2, a2, a7
	sh	a6, 112(a2)
	slli	a4, a4, 1
	addi	a6, t0, 2
	add	a3, a6, a3
	add	a3, a3, a4
	srliw	a3, a3, 2
	sh	a3, 114(a2)
	lw	a4, 372(sp)
	sh	a3, 96(a2)
	slli	t0, t0, 1
	add	a5, a5, t0
	add	a5, a5, a4
	srliw	a3, a5, 2
	sh	a3, 116(a2)
	sh	a3, 98(a2)
	lw	a5, 368(sp)
	sh	a3, 80(a2)
	slli	a3, a4, 1
	add	a3, a6, a3
	add	a3, a3, a5
	srliw	a3, a3, 2
	sh	a3, 118(a2)
	sh	a3, 100(a2)
	lw	a6, 364(sp)
	sh	a3, 82(a2)
	sh	a3, 64(a2)
	slli	a3, a5, 1
	add	a4, a4, a6
	add	a3, a4, a3
	addi	a3, a3, 2
	srliw	a3, a3, 2
	sh	a3, 120(a2)
	sh	a3, 102(a2)
	sh	a3, 84(a2)
	lw	a4, 360(sp)
	sh	a3, 66(a2)
	sh	a3, 48(a2)
	slli	a3, a6, 1
	add	a5, a5, a4
	add	a3, a5, a3
	addi	a3, a3, 2
	srliw	a3, a3, 2
	sh	a3, 122(a2)
	sh	a3, 104(a2)
	sh	a3, 86(a2)
	sh	a3, 68(a2)
	lw	t0, 292(sp)
	sh	a3, 50(a2)
	sh	a3, 32(a2)
	slli	a5, a4, 1
	addi	a3, t0, 2
	add	a6, a3, a6
	add	a5, a6, a5
	srliw	a5, a5, 2
	sh	a5, 124(a2)
	sh	a5, 106(a2)
	sh	a5, 88(a2)
	sh	a5, 70(a2)
	sh	a5, 52(a2)
	lw	t3, 296(sp)
	sh	a5, 34(a2)
	sh	a5, 16(a2)
	slli	a5, t0, 1
	add	a4, a4, t3
	add	a4, a4, a5
	addi	a4, a4, 2
	srliw	a4, a4, 2
	sh	a4, 126(a2)
	sh	a4, 108(a2)
	sh	a4, 90(a2)
	sh	a4, 72(a2)
	sh	a4, 54(a2)
	sh	a4, 36(a2)
	sh	a4, 18(a2)
	lw	t4, 300(sp)
	sh	a4, 0(a2)
	slli	a5, t3, 1
	add	a5, a3, a5
	add	a5, a5, t4
	srliw	a5, a5, 2
	sh	a5, 110(a2)
	sh	a5, 92(a2)
	sh	a5, 74(a2)
	sh	a5, 56(a2)
	sh	a5, 38(a2)
	lw	t6, 304(sp)
	sh	a5, 20(a2)
	sh	a5, 2(a2)
	slli	a6, t4, 1
	add	a7, t3, t6
	add	a6, a7, a6
	addi	a6, a6, 2
	srliw	a6, a6, 2
	sh	a6, 94(a2)
	sh	a6, 76(a2)
	sh	a6, 58(a2)
	sh	a6, 40(a2)
	lw	s1, 308(sp)
	sh	a6, 22(a2)
	sh	a6, 4(a2)
	slli	a7, t6, 1
	add	t1, t4, s1
	add	a7, t1, a7
	addi	a7, a7, 2
	srliw	a7, a7, 2
	sh	a7, 78(a2)
	sh	a7, 60(a2)
	sh	a7, 42(a2)
	lw	s2, 312(sp)
	sh	a7, 24(a2)
	sh	a7, 6(a2)
	slli	t1, s1, 1
	add	t2, t6, s2
	add	t1, t2, t1
	addi	t1, t1, 2
	srliw	t1, t1, 2
	sh	t1, 62(a2)
	sh	t1, 44(a2)
	lw	s3, 316(sp)
	sh	t1, 26(a2)
	sh	t1, 8(a2)
	slli	t2, s2, 1
	add	t5, s1, s3
	add	t2, t5, t2
	addi	t2, t2, 2
	srliw	t2, t2, 2
	sh	t2, 46(a2)
	lw	s4, 320(sp)
	sh	t2, 28(a2)
	sh	t2, 10(a2)
	slli	t5, s3, 1
	add	s0, s2, s4
	add	t5, s0, t5
	addi	t5, t5, 2
	srliw	t5, t5, 2
	lw	s5, 324(sp)
	sh	t5, 30(a2)
	sh	t5, 12(a2)
	slli	s0, s4, 1
	add	s6, s3, s5
	add	s0, s6, s0
	addi	s0, s0, 2
	srliw	s0, s0, 2
	sh	s0, 14(a2)
	addi	t3, t3, 1
	add	t0, t3, t0
	srliw	t0, t0, 1
	sh	t0, 230(a2)
	sh	t0, 196(a2)
	sh	t0, 162(a2)
	sh	t0, 128(a2)
	add	t3, t3, t4
	srliw	t0, t3, 1
	sh	t0, 232(a2)
	sh	t0, 198(a2)
	sh	t0, 164(a2)
	sh	t0, 130(a2)
	add	t4, t4, t6
	addi	t4, t4, 1
	srliw	t0, t4, 1
	sh	t0, 234(a2)
	sh	t0, 200(a2)
	sh	t0, 166(a2)
	sh	t0, 132(a2)
	add	t6, t6, s1
	addi	t6, t6, 1
	srliw	t0, t6, 1
	sh	t0, 236(a2)
	sh	t0, 202(a2)
	sh	t0, 168(a2)
	sh	t0, 134(a2)
	add	s1, s1, s2
	addi	s1, s1, 1
	srliw	t0, s1, 1
	sh	t0, 238(a2)
	sh	t0, 204(a2)
	sh	t0, 170(a2)
	sh	t0, 136(a2)
	add	s2, s2, s3
	addi	s2, s2, 1
	srliw	t0, s2, 1
	sh	t0, 206(a2)
	sh	t0, 172(a2)
	sh	t0, 138(a2)
	add	s3, s3, s4
	addi	s3, s3, 1
	srliw	t0, s3, 1
	sh	t0, 174(a2)
	sh	t0, 140(a2)
	add	s4, s4, s5
	addi	s4, s4, 1
	srli	t0, s4, 1
	sh	t0, 142(a2)
	sh	a4, 246(a2)
	sh	a4, 212(a2)
	sh	a4, 178(a2)
	sh	a4, 144(a2)
	sh	a5, 248(a2)
	sh	a5, 214(a2)
	sh	a5, 180(a2)
	sh	a5, 146(a2)
	sh	a6, 250(a2)
	ld	a1, %lo(img)(a1)
	sh	a6, 216(a2)
	sh	a6, 182(a2)
	addiw	a0, a0, -180
	add	a0, a1, a0
	sh	a6, 0(a0)
	sh	a7, 104(a0)
	sh	a7, 70(a0)
	sh	a7, 36(a0)
	sh	a7, 2(a0)
	sh	t1, 106(a0)
	sh	t1, 72(a0)
	sh	t1, 38(a0)
	sh	t1, 4(a0)
	sh	t2, 74(a0)
	sh	t2, 40(a0)
	sh	t2, 6(a0)
	sh	t5, 42(a0)
	lw	t6, 360(sp)
	lw	s1, 364(sp)
	sh	t5, 8(a0)
	sh	s0, 10(a0)
	slli	a1, t6, 1
	add	a3, a3, s1
	add	a3, a3, a1
	srliw	a2, a3, 2
	sh	a2, 80(a0)
	sh	a2, 46(a0)
	sh	a2, 12(a0)
	lw	t4, 368(sp)
	slli	a2, s1, 1
	addi	a6, t6, 2
	add	a2, a6, a2
	add	a2, a2, t4
	srliw	a2, a2, 2
	sh	a2, 96(a0)
	sh	a2, 62(a0)
	sh	a2, 28(a0)
	lw	t5, 372(sp)
	slli	a3, t4, 1
	addi	a7, s1, 2
	add	a3, a7, a3
	add	a3, a3, t5
	srliw	a3, a3, 2
	lw	s0, 376(sp)
	sh	a3, 78(a0)
	sh	a3, 44(a0)
	slli	a4, t5, 1
	add	a5, t4, s0
	add	a4, a5, a4
	addi	a4, a4, 2
	srliw	a5, a4, 2
	lw	a4, 380(sp)
	sh	a5, 94(a0)
	sh	a5, 60(a0)
	slli	t0, s0, 1
	add	t1, t5, a4
	add	t0, t1, t0
	addi	t0, t0, 2
	lw	t1, 384(sp)
	srliw	t2, t0, 2
	sh	t2, 76(a0)
	slli	t0, a4, 1
	add	t3, s0, t1
	add	t3, t3, t0
	lw	t0, 292(sp)
	addi	t3, t3, 2
	srliw	t3, t3, 2
	sh	t3, 92(a0)
	add	s2, t6, t0
	addi	s2, s2, 1
	srliw	s2, s2, 1
	sh	s2, 168(a0)
	sh	s2, 148(a0)
	sh	s2, 128(a0)
	sh	s2, 108(a0)
	addi	s1, s1, 1
	add	t6, s1, t6
	srliw	t6, t6, 1
	sh	t6, 184(a0)
	sh	t6, 164(a0)
	sh	t6, 144(a0)
	sh	t6, 124(a0)
	add	s1, s1, t4
	srliw	t6, s1, 1
	sh	t6, 200(a0)
	sh	t6, 180(a0)
	sh	t6, 160(a0)
	sh	t6, 140(a0)
	add	t4, t4, t5
	addi	t4, t4, 1
	srliw	t4, t4, 1
	sh	t4, 216(a0)
	sh	t4, 196(a0)
	sh	t4, 176(a0)
	sh	t4, 156(a0)
	add	t5, t5, s0
	addi	t5, t5, 1
	srliw	t4, t5, 1
	sh	t4, 232(a0)
	sh	t4, 212(a0)
	sh	t4, 192(a0)
	sh	t4, 172(a0)
	add	s0, s0, a4
	addi	s0, s0, 1
	srliw	t4, s0, 1
	sh	t4, 228(a0)
	sh	t4, 208(a0)
	sh	t4, 188(a0)
	add	t4, a4, t1
	addi	t4, t4, 1
	lw	t5, 388(sp)
	srliw	t4, t4, 1
	sh	t4, 224(a0)
	sh	t4, 204(a0)
	add	t4, t1, t5
	addi	t4, t4, 1
	srli	t4, t4, 1
	lw	t6, 296(sp)
	sh	t4, 220(a0)
	slli	t4, t0, 1
	add	a6, a6, t4
	add	a6, a6, t6
	srliw	a6, a6, 2
	sh	a6, 170(a0)
	sh	a6, 150(a0)
	sh	a6, 130(a0)
	sh	a6, 110(a0)
	add	a1, a7, a1
	add	a1, a1, t0
	srliw	a1, a1, 2
	sh	a1, 186(a0)
	sh	a1, 166(a0)
	sh	a1, 146(a0)
	sh	a1, 126(a0)
	sh	a2, 202(a0)
	sh	a2, 182(a0)
	sh	a2, 162(a0)
	sh	a2, 142(a0)
	sh	a3, 218(a0)
	sh	a3, 198(a0)
	sh	a3, 178(a0)
	sh	a3, 158(a0)
	sh	a5, 234(a0)
	sh	a5, 214(a0)
	sh	a5, 194(a0)
	sh	a5, 174(a0)
	sh	t2, 230(a0)
	sh	t2, 210(a0)
	sh	t2, 190(a0)
	sh	t3, 226(a0)
	sh	t3, 206(a0)
	slli	t1, t1, 1
	add	a4, a4, t5
	add	a4, a4, t1
	addi	a4, a4, 2
	lw	a1, 300(sp)
	srli	a4, a4, 2
	sh	a4, 222(a0)
	slli	a2, t6, 1
	add	t0, t0, a1
	add	a2, t0, a2
	addi	a2, a2, 2
	srliw	a2, a2, 2
	sh	a2, 152(a0)
	lw	a3, 304(sp)
	sh	a2, 132(a0)
	sh	a2, 112(a0)
	slli	a2, a1, 1
	add	t6, t6, a3
	add	a2, t6, a2
	addi	a2, a2, 2
	srliw	a2, a2, 2
	sh	a2, 154(a0)
	lw	a4, 308(sp)
	sh	a2, 134(a0)
	sh	a2, 114(a0)
	slli	a2, a3, 1
	add	a1, a1, a4
	add	a1, a1, a2
	addi	a1, a1, 2
	srliw	a1, a1, 2
	lw	a2, 312(sp)
	sh	a1, 136(a0)
	sh	a1, 116(a0)
	slli	a1, a4, 1
	add	a3, a3, a2
	add	a1, a3, a1
	addi	a1, a1, 2
	srliw	a1, a1, 2
	lw	a3, 316(sp)
	sh	a1, 138(a0)
	sh	a1, 118(a0)
	slli	a1, a2, 1
	add	a4, a4, a3
	add	a1, a4, a1
	addi	a1, a1, 2
	lw	a4, 320(sp)
	srli	a1, a1, 2
	sh	a1, 120(a0)
	slli	a3, a3, 1
	add	a2, a2, a4
	add	a2, a2, a3
	addi	a2, a2, 2
	srli	a2, a2, 2
	sh	a2, 122(a0)
	j	.LBB2_56
.LBB2_55:
	beqz	s0, .LBB2_57
.LBB2_56:
	lw	a1, 364(sp)
	lw	a0, 360(sp)
	addi	a4, a1, 1
	add	a2, a4, a0
	srli	a5, a2, 1
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a6, 2
	lw	a3, 368(sp)
	addiw	a6, a6, 184
	add	a2, a2, a6
	sh	a5, 0(a2)
	add	a5, a4, a3
	lw	a4, 372(sp)
	srliw	a5, a5, 1
	sh	a5, 4(a2)
	sh	a5, 16(a2)
	add	a5, a3, a4
	addi	a5, a5, 1
	srliw	a6, a5, 1
	lw	a5, 376(sp)
	sh	a6, 8(a2)
	sh	a6, 20(a2)
	sh	a6, 32(a2)
	add	a6, a4, a5
	addi	a6, a6, 1
	srliw	a7, a6, 1
	sh	a7, 12(a2)
	lw	a6, 380(sp)
	sh	a7, 24(a2)
	sh	a7, 36(a2)
	sh	a7, 48(a2)
	add	a7, a5, a6
	addi	a7, a7, 1
	srliw	a7, a7, 1
	sh	a7, 28(a2)
	lw	t0, 384(sp)
	sh	a7, 40(a2)
	sh	a7, 52(a2)
	sh	a7, 64(a2)
	add	a7, a6, t0
	addi	a7, a7, 1
	srliw	a7, a7, 1
	sh	a7, 44(a2)
	lw	t1, 388(sp)
	sh	a7, 56(a2)
	sh	a7, 68(a2)
	sh	a7, 80(a2)
	add	a7, t0, t1
	addi	a7, a7, 1
	srliw	a7, a7, 1
	sh	a7, 60(a2)
	sh	a7, 72(a2)
	sh	a7, 84(a2)
	sh	a7, 96(a2)
	sh	t1, 126(a2)
	sh	t1, 124(a2)
	sh	t1, 122(a2)
	sh	t1, 120(a2)
	sh	t1, 118(a2)
	sh	t1, 116(a2)
	sh	t1, 114(a2)
	sh	t1, 112(a2)
	sh	t1, 110(a2)
	sh	t1, 108(a2)
	sh	t1, 106(a2)
	sh	t1, 104(a2)
	sh	t1, 102(a2)
	sh	t1, 100(a2)
	sh	t1, 94(a2)
	sh	t1, 92(a2)
	sh	t1, 90(a2)
	sh	t1, 88(a2)
	sh	t1, 78(a2)
	sh	t1, 76(a2)
	slli	a7, t1, 1
	add	a7, a7, t1
	addi	t2, t0, 2
	add	a7, t2, a7
	srliw	a7, a7, 2
	sh	a7, 62(a2)
	sh	a7, 74(a2)
	sh	a7, 86(a2)
	sh	a7, 98(a2)
	slli	t0, t0, 1
	add	t1, a6, t1
	add	t0, t1, t0
	addi	t0, t0, 2
	srliw	a7, t0, 2
	sh	a7, 46(a2)
	sh	a7, 58(a2)
	sh	a7, 70(a2)
	sh	a7, 82(a2)
	slli	a7, a6, 1
	add	a7, a5, a7
	add	a7, t2, a7
	srliw	a7, a7, 2
	sh	a7, 30(a2)
	sh	a7, 42(a2)
	sh	a7, 54(a2)
	sh	a7, 66(a2)
	slli	a7, a5, 1
	addi	t0, a4, 2
	add	a7, t0, a7
	add	a6, a7, a6
	srliw	a6, a6, 2
	sh	a6, 14(a2)
	sh	a6, 26(a2)
	sh	a6, 38(a2)
	sh	a6, 50(a2)
	slli	a4, a4, 1
	addi	a6, a3, 2
	add	a4, a6, a4
	add	a4, a4, a5
	srliw	a4, a4, 2
	sh	a4, 10(a2)
	sh	a4, 22(a2)
	sh	a4, 34(a2)
	slli	a3, a3, 1
	add	t0, t0, a1
	add	a3, t0, a3
	srliw	a3, a3, 2
	sh	a3, 6(a2)
	sh	a3, 18(a2)
	slli	a1, a1, 1
	add	a0, a6, a0
	add	a0, a0, a1
	srli	a0, a0, 2
	sh	a0, 2(a2)
.LBB2_57:
	ld	ra, 488(sp)                     # 8-byte Folded Reload
	ld	s0, 480(sp)                     # 8-byte Folded Reload
	ld	s1, 472(sp)                     # 8-byte Folded Reload
	ld	s2, 464(sp)                     # 8-byte Folded Reload
	ld	s3, 456(sp)                     # 8-byte Folded Reload
	ld	s4, 448(sp)                     # 8-byte Folded Reload
	ld	s5, 440(sp)                     # 8-byte Folded Reload
	ld	s6, 432(sp)                     # 8-byte Folded Reload
	ld	s7, 424(sp)                     # 8-byte Folded Reload
	ld	s8, 416(sp)                     # 8-byte Folded Reload
	ld	s9, 408(sp)                     # 8-byte Folded Reload
	ld	s10, 400(sp)                    # 8-byte Folded Reload
	ld	s11, 392(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 496
	ret
.LBB2_58:
	ld	a1, %lo(img)(a1)
	add	a1, a1, a2
	li	a2, -1
	sh	a2, -840(a1)
	bnez	s0, .LBB2_51
.LBB2_59:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 2
	add	a1, a1, a2
	li	a2, -1
	sh	a2, -712(a1)
	bnez	s1, .LBB2_52
	j	.LBB2_53
.Lfunc_end2:
	.size	intrapred_luma8x8, .Lfunc_end2-intrapred_luma8x8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	RDCost_for_8x8IntraBlocks       # -- Begin function RDCost_for_8x8IntraBlocks
	.p2align	2
	.type	RDCost_for_8x8IntraBlocks,@function
RDCost_for_8x8IntraBlocks:              # @RDCost_for_8x8IntraBlocks
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
	fsd	fs0, 32(sp)                     # 8-byte Folded Spill
	mv	s2, a3
	fmv.d	fs0, fa0
	mv	s1, a2
	mv	s0, a1
	mv	s3, a0
	slli	a0, a1, 3
	lui	s5, %hi(img)
	ld	s7, %lo(img)(s5)
	andi	a0, a0, 8
	slli	a1, a1, 2
	andi	a1, a1, -8
	lw	a2, 152(s7)
	lui	a3, 8
	addiw	a3, a3, -1200
	add	a3, s7, a3
	addw	s10, a2, a0
	lw	a0, 156(s7)
	lw	a2, 172(s7)
	lui	a4, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a4)
	lui	a5, %hi(imgY_org)
	ld	s11, %lo(imgY_org)(a5)
	lui	a5, 2
	add	a4, a4, a5
	lw	a5, 12(s7)
	lui	a6, %hi(input)
	ld	a6, %lo(input)(a6)
	li	a7, 528
	mul	s4, a5, a7
	ld	a5, 8(a3)
	addi	a6, a6, 2047
	lw	a6, 945(a6)
	ld	s6, -1768(a4)
	ld	a3, 0(a3)
	sd	a3, 8(sp)                       # 8-byte Folded Spill
	add	s4, a5, s4
	slli	a6, a6, 3
	lui	a3, %hi(assignSE2partition)
	addi	a3, a3, %lo(assignSE2partition)
	add	a3, a3, a6
	lw	a4, 0(s4)
	sd	a4, 0(sp)                       # 8-byte Folded Spill
	ld	a3, 0(a3)
	sd	a3, 16(sp)                      # 8-byte Folded Spill
	addw	s8, a0, a1
	addw	s9, a2, a1
	sw	zero, 28(sp)
	addi	a1, sp, 28
	li	a2, 1
	mv	a0, s0
	call	dct_luma8x8
	ld	a1, %lo(img)(s5)
	li	s5, 0
	sw	a0, 0(s3)
	lui	a0, 22
	add	a0, a1, a0
	ld	a0, -928(a0)
	addi	a6, s10, 1
	slli	a2, s9, 3
	add	a2, s11, a2
	slli	a3, s8, 3
	add	a3, s6, a3
	addi	a7, s10, 2
	addi	t0, s10, 3
	addi	t1, s10, 4
	addi	t2, s10, 5
	addi	t3, s10, 6
	addi	t4, s10, 7
	addi	a4, a3, 64
	slli	a5, s10, 1
	slli	a6, a6, 1
	slli	a7, a7, 1
	slli	t0, t0, 1
	slli	t1, t1, 1
	slli	t2, t2, 1
	slli	t3, t3, 1
	slli	t4, t4, 1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ld	t5, 0(a2)
	ld	t6, 0(a3)
	add	s3, t5, a5
	lhu	s3, 0(s3)
	add	s6, t6, a5
	lhu	s6, 0(s6)
	sub	s3, s3, s6
	add	s6, t5, a6
	lhu	s6, 0(s6)
	add	s8, t6, a6
	lhu	s8, 0(s8)
	slli	s3, s3, 2
	add	s3, a0, s3
	lw	s3, 0(s3)
	sub	s6, s6, s8
	add	s8, t5, a7
	lhu	s8, 0(s8)
	add	s9, t6, a7
	lhu	s9, 0(s9)
	slli	s6, s6, 2
	add	s6, a0, s6
	lw	s6, 0(s6)
	sub	s8, s8, s9
	slli	s8, s8, 2
	add	s8, a0, s8
	lw	s8, 0(s8)
	add	s9, t5, t0
	lhu	s9, 0(s9)
	add	s10, t6, t0
	lhu	s10, 0(s10)
	add	s3, s5, s3
	add	s6, s6, s8
	add	s3, s3, s6
	sub	s5, s9, s10
	add	s6, t5, t1
	lhu	s6, 0(s6)
	add	s8, t6, t1
	lhu	s8, 0(s8)
	add	s9, t5, t2
	lhu	s9, 0(s9)
	add	s10, t6, t2
	lhu	s10, 0(s10)
	add	s11, t5, t3
	lhu	s11, 0(s11)
	add	ra, t6, t3
	lhu	ra, 0(ra)
	add	t5, t5, t4
	lhu	t5, 0(t5)
	add	t6, t6, t4
	lhu	t6, 0(t6)
	sub	s6, s6, s8
	sub	s8, s9, s10
	sub	s9, s11, ra
	sub	t5, t5, t6
	slli	s5, s5, 2
	add	s5, a0, s5
	lw	t6, 0(s5)
	slli	s6, s6, 2
	add	s6, a0, s6
	lw	s5, 0(s6)
	slli	s8, s8, 2
	add	s8, a0, s8
	lw	s6, 0(s8)
	slli	s9, s9, 2
	add	s9, a0, s9
	lw	s8, 0(s9)
	slli	t5, t5, 2
	add	t5, a0, t5
	lw	t5, 0(t5)
	add	t6, t6, s5
	add	t6, t6, s6
	add	t6, s3, t6
	add	t5, s8, t5
	add	s5, t6, t5
	addi	a3, a3, 8
	addi	a2, a2, 8
	bne	a3, a4, .LBB3_1
# %bb.2:
	li	a0, 48
	ld	a2, 0(sp)                       # 8-byte Folded Reload
	mul	a0, a2, a0
	add	a0, s7, a0
	lui	a2, 8
	addiw	s3, a2, -1184
	add	s3, a0, s3
	xor	a0, s2, s1
	snez	a0, a0
	slt	a2, s1, s2
	xori	a2, a2, 1
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	sub	s1, s1, a2
	addi	a0, a0, -1
	or	a0, a0, s1
	addi	a2, a3, 2047
	lw	a2, 937(a2)
	sw	a0, 4(s3)
	sw	s0, 24(s3)
	li	a0, 4
	sw	a0, 0(s3)
	beqz	a2, .LBB3_4
# %bb.3:
	lui	a0, %hi(writeIntraPredMode_CABAC)
	addi	a0, a0, %lo(writeIntraPredMode_CABAC)
	sd	a0, 40(s3)
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
.LBB3_4:
	lw	a2, 24(a1)
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 24(a0)
	li	a3, 1
	li	a0, 72
	beq	a2, a3, .LBB3_6
# %bb.5:
	li	a0, 16
.LBB3_6:
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	add	a0, a3, a0
	lw	a0, 0(a0)
	addi	a2, a2, 2047
	lw	a2, 937(a2)
	li	a3, 112
	mul	a0, a0, a3
	add	a1, a1, a0
	beqz	a2, .LBB3_8
# %bb.7:
	ld	a2, 104(a1)
	mv	a0, s3
	jalr	a2
	j	.LBB3_9
.LBB3_8:
	mv	a0, s3
	call	writeSyntaxElement_Intra4x4PredictionMode
.LBB3_9:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 0(s4)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	lw	s2, 12(s3)
	addi	a1, a1, 1
	sw	a1, 0(s4)
	beqz	a0, .LBB3_11
# %bb.10:
	li	a1, 1
	mv	a0, s0
	call	writeLumaCoeff8x8_CABAC
	j	.LBB3_12
.LBB3_11:
	mv	a1, s0
	li	a2, 0
	li	a3, 0
	call	writeCoeff4x4_CAVLC
	mv	s1, a0
	li	a2, 1
	li	a0, 0
	mv	a1, s0
	li	a3, 0
	call	writeCoeff4x4_CAVLC
	add	s1, a0, s1
	li	a2, 2
	li	a0, 0
	mv	a1, s0
	li	a3, 0
	call	writeCoeff4x4_CAVLC
	add	s1, a0, s1
	li	a2, 3
	li	a0, 0
	mv	a1, s0
	li	a3, 0
	call	writeCoeff4x4_CAVLC
	add	a0, a0, s1
.LBB3_12:
	add	a0, a0, s2
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 460(a1)
	fcvt.d.w	fa0, a0
	bnez	a1, .LBB3_14
# %bb.13:
	fcvt.d.l	fa5, s5
	fmadd.d	fa0, fs0, fa0, fa5
.LBB3_14:
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
	fld	fs0, 32(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.Lfunc_end3:
	.size	RDCost_for_8x8IntraBlocks, .Lfunc_end3-RDCost_for_8x8IntraBlocks
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	dct_luma8x8                     # -- Begin function dct_luma8x8
	.p2align	2
	.type	dct_luma8x8,@function
dct_luma8x8:                            # @dct_luma8x8
# %bb.0:
	addi	sp, sp, -592
	sd	ra, 584(sp)                     # 8-byte Folded Spill
	sd	s0, 576(sp)                     # 8-byte Folded Spill
	sd	s1, 568(sp)                     # 8-byte Folded Spill
	sd	s2, 560(sp)                     # 8-byte Folded Spill
	sd	s3, 552(sp)                     # 8-byte Folded Spill
	sd	s4, 544(sp)                     # 8-byte Folded Spill
	sd	s5, 536(sp)                     # 8-byte Folded Spill
	sd	s6, 528(sp)                     # 8-byte Folded Spill
	sd	s7, 520(sp)                     # 8-byte Folded Spill
	sd	s8, 512(sp)                     # 8-byte Folded Spill
	sd	s9, 504(sp)                     # 8-byte Folded Spill
	sd	s10, 496(sp)                    # 8-byte Folded Spill
	sd	s11, 488(sp)                    # 8-byte Folded Spill
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	slli	a3, a0, 3
	lui	a1, %hi(img)
	ld	a7, %lo(img)(a1)
	lui	a1, 22
	addiw	t0, a1, 108
	lui	a1, 3
	addiw	a5, a1, 840
	add	a5, a7, a5
	ld	a1, 1008(a5)
	add	t0, a7, t0
	lui	a2, 8
	add	a2, a7, a2
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	add	a1, a1, a3
	ld	a1, 0(a1)
	lw	a3, 12(a7)
	ld	a2, -1192(a2)
	lw	a4, 44(t0)
	li	a6, 528
	mul	a3, a3, a6
	add	a2, a2, a3
	sd	a2, 128(sp)                     # 8-byte Folded Spill
	li	a2, 1
	sd	a2, 160(sp)                     # 8-byte Folded Spill
	bnez	a4, .LBB4_4
# %bb.1:
	lw	a2, 0(t0)
	beqz	a2, .LBB4_3
# %bb.2:
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	lw	a2, 424(a2)
	snez	a2, a2
	sd	a2, 160(sp)                     # 8-byte Folded Spill
	j	.LBB4_4
.LBB4_3:
	sd	zero, 160(sp)                   # 8-byte Folded Spill
.LBB4_4:
	lw	a2, 272(t0)
	lw	a3, 40(a7)
	ld	a1, 0(a1)
	negw	a4, a2
	li	ra, 0
	bne	a3, a4, .LBB4_6
# %bb.5:
	lw	a4, 332(t0)
	addi	a4, a4, -1
	seqz	ra, a4
.LBB4_6:
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	slliw	a0, a0, 2
	ld	a4, 0(a1)
	sd	a4, 96(sp)                      # 8-byte Folded Spill
	ld	a1, 8(a1)
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	addw	t0, a2, a3
	lui	a1, 174763
	addiw	a1, a1, -1365
	mul	a1, t0, a1
	srli	a2, a1, 63
	srli	a1, a1, 32
	addw	a1, a1, a2
	lui	a2, %hi(LevelScale8x8Luma)
	ld	a3, %lo(LevelScale8x8Luma)(a2)
	li	a2, 6
	mul	a4, a1, a2
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	slli	a6, a6, 3
	add	a3, a3, a6
	ld	a3, 0(a3)
	sd	t0, 64(sp)                      # 8-byte Folded Spill
	subw	a4, t0, a4
	addi	t0, a1, 16
	sd	t0, 144(sp)                     # 8-byte Folded Spill
	slli	a4, a4, 3
	add	a3, a3, a4
	lui	t0, %hi(LevelOffset8x8Luma)
	ld	t0, %lo(LevelOffset8x8Luma)(t0)
	lui	t1, %hi(InvLevelScale8x8Luma)
	ld	t1, %lo(InvLevelScale8x8Luma)(t1)
	ld	a3, 0(a3)
	sd	a3, 136(sp)                     # 8-byte Folded Spill
	add	t0, t0, a6
	ld	a3, 0(t0)
	add	a6, t1, a6
	ld	a6, 0(a6)
	slli	t0, a1, 3
	add	a3, a3, t0
	ld	a3, 0(a3)
	sd	a3, 72(sp)                      # 8-byte Folded Spill
	add	a4, a6, a4
	ld	a3, 0(a4)
	sd	a3, 56(sp)                      # 8-byte Folded Spill
	li	a4, 5
	subw	a4, a4, a1
	li	a3, 1
	addi	s9, sp, 504
	bnez	ra, .LBB4_11
# %bb.7:
	addi	t0, sp, 360
	addi	a6, sp, 248
	lui	t1, 3
	addiw	t1, t1, 1352
	add	a7, a7, t1
	mv	t1, a5
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	lw	t2, -16(t1)
	lw	t3, 12(t1)
	lw	t4, -12(t1)
	lw	t5, 8(t1)
	lw	t6, -8(t1)
	lw	s0, 4(t1)
	lw	s1, -4(t1)
	lw	s2, 0(t1)
	add	s3, t3, t2
	add	s4, t5, t4
	add	s5, s0, t6
	add	s6, s2, s1
	add	s7, s6, s3
	add	s8, s5, s4
	subw	s3, s3, s6
	subw	s4, s4, s5
	subw	t2, t2, t3
	subw	t4, t4, t5
	subw	t6, t6, s0
	subw	t3, s1, s2
	sraiw	t5, t2, 1
	add	s0, t2, t4
	add	t5, t5, s0
	add	t5, t5, t6
	sraiw	s0, t6, 1
	add	s1, t6, t3
	add	s0, s1, s0
	subw	s0, t2, s0
	sraiw	s1, t4, 1
	add	s1, t4, s1
	add	t2, t2, t3
	subw	t2, t2, s1
	subw	t4, t4, t6
	sraiw	t6, t3, 1
	add	t3, t3, t4
	add	t3, t3, t6
	add	t4, s7, s8
	sw	t4, -128(t0)
	sraiw	t4, s4, 1
	add	t4, s3, t4
	sw	t4, -64(t0)
	subw	t4, s7, s8
	sw	t4, 0(t0)
	sraiw	t4, s3, 1
	subw	t4, t4, s4
	sw	t4, 64(t0)
	sraiw	t4, t3, 2
	add	t4, t4, t5
	sw	t4, -96(t0)
	sraiw	t4, t2, 2
	add	t4, s0, t4
	sw	t4, -32(t0)
	sraiw	t4, s0, 2
	subw	t2, t2, t4
	sw	t2, 32(t0)
	sraiw	t2, t5, 2
	subw	t2, t2, t3
	sw	t2, 96(t0)
	addi	t1, t1, 64
	addi	t0, t0, 4
	bne	t1, a7, .LBB4_8
# %bb.9:
	addi	a5, a5, 240
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	lw	a7, -16(a6)
	lw	t0, 12(a6)
	lw	t1, -12(a6)
	lw	t2, 8(a6)
	lw	t3, -8(a6)
	lw	t4, 4(a6)
	lw	t5, -4(a6)
	lw	t6, 0(a6)
	add	s0, t0, a7
	add	s1, t2, t1
	add	s2, t4, t3
	add	s3, t6, t5
	add	s4, s3, s0
	add	s5, s2, s1
	subw	s0, s0, s3
	subw	s1, s1, s2
	subw	a7, a7, t0
	subw	t0, t1, t2
	subw	t3, t3, t4
	subw	t5, t5, t6
	sraiw	t1, a7, 1
	add	t2, a7, t0
	add	t1, t1, t2
	add	t1, t1, t3
	sraiw	t2, t3, 1
	add	t4, t3, t5
	add	t2, t4, t2
	subw	t2, a7, t2
	sraiw	t4, t0, 1
	add	t4, t0, t4
	add	a7, a7, t5
	subw	a7, a7, t4
	subw	t0, t0, t3
	sraiw	t3, t5, 1
	add	t0, t5, t0
	add	t0, t0, t3
	add	t3, s4, s5
	sw	t3, -256(a5)
	sraiw	t3, s1, 1
	add	t3, s0, t3
	sw	t3, -128(a5)
	subw	t3, s4, s5
	sw	t3, 0(a5)
	sraiw	t3, s0, 1
	subw	t3, t3, s1
	sw	t3, 128(a5)
	sraiw	t3, t0, 2
	add	t3, t3, t1
	sw	t3, -192(a5)
	sraiw	t3, a7, 2
	add	t3, t2, t3
	sw	t3, -64(a5)
	sraiw	t2, t2, 2
	subw	a7, a7, t2
	sw	a7, 64(a5)
	sraiw	a7, t1, 2
	subw	a7, a7, t0
	sw	a7, 192(a5)
	addi	a6, a6, 32
	addi	a5, a5, 4
	bne	a6, s9, .LBB4_10
.LBB4_11:
	li	s1, 0
	li	s5, 0
	sd	zero, 120(sp)                   # 8-byte Folded Spill
	ld	a5, 32(sp)                      # 8-byte Folded Reload
	andi	a5, a5, 8
	sd	a5, 152(sp)                     # 8-byte Folded Spill
	andi	a0, a0, -8
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	subw	a2, a2, a1
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	sllw	a0, a3, a4
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	addi	a0, a1, -6
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	a0, -1
	sd	a0, 208(sp)
	sd	a0, 200(sp)
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	sllw	a0, a3, a0
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	addi	a1, a1, 17
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	sd	zero, 216(sp)
	sd	zero, 224(sp)
	lui	s10, %hi(SNGL_SCAN8x8)
	addi	s10, s10, %lo(SNGL_SCAN8x8)
	lui	s7, %hi(FIELD_SCAN8x8)
	addi	s7, s7, %lo(FIELD_SCAN8x8)
	lui	a0, 244
	addi	a0, a0, 575
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	li	a6, -1
	sd	ra, 192(sp)                     # 8-byte Folded Spill
	j	.LBB4_14
.LBB4_12:                               #   in Loop: Header=BB4_14 Depth=1
	li	a0, 1
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	mv	a6, s8
.LBB4_13:                               #   in Loop: Header=BB4_14 Depth=1
	addi	s1, s1, 1
	addi	s10, s10, 2
	addi	s7, s7, 2
	li	a0, 64
	beq	s1, a0, .LBB4_40
.LBB4_14:                               # =>This Inner Loop Header: Depth=1
	mv	a0, s7
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	bnez	a1, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=1
	mv	a0, s10
.LBB4_16:                               #   in Loop: Header=BB4_14 Depth=1
	lbu	s3, 0(a0)
	lbu	s6, 1(a0)
	andi	s0, s1, 3
	slli	s2, s0, 2
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	addi	s9, sp, 200
	add	s9, s9, s2
	lw	s11, 0(s9)
	slli	a0, s6, 6
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	add	a0, a1, a0
	slli	a3, s3, 2
	lui	a2, 3
	sd	a3, 176(sp)                     # 8-byte Folded Spill
	add	a2, a3, a2
	add	a0, a0, a2
	lw	a2, 824(a0)
	addiw	s11, s11, 1
	sw	s11, 0(s9)
	sraiw	a3, a2, 31
	xor	a2, a2, a3
	subw	s4, a2, a3
	bnez	ra, .LBB4_18
# %bb.17:                               #   in Loop: Header=BB4_14 Depth=1
	slli	a2, s3, 3
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	add	a3, a3, a2
	ld	a3, 0(a3)
	ld	a4, 72(sp)                      # 8-byte Folded Reload
	add	a2, a4, a2
	ld	a2, 0(a2)
	slli	a4, s6, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a2, a4
	lw	a2, 0(a2)
	mul	a3, a3, s4
	add	a2, a2, a3
	ld	a3, 144(sp)                     # 8-byte Folded Reload
	sraw	s4, a2, a3
.LBB4_18:                               #   in Loop: Header=BB4_14 Depth=1
	lui	a2, 22
	add	a2, a1, a2
	lw	a2, 100(a2)
	addiw	a6, a6, 1
	beqz	a2, .LBB4_21
# %bb.19:                               #   in Loop: Header=BB4_14 Depth=1
	seqz	a2, s4
	or	a2, ra, a2
	beqz	a2, .LBB4_23
# %bb.20:                               #   in Loop: Header=BB4_14 Depth=1
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 10
	add	a1, a1, a2
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	addw	a2, a2, s6
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	add	a3, a3, s3
	slli	a2, a2, 6
	add	a1, a1, a2
	slli	a3, a3, 2
	lui	a2, 4
	add	a3, a3, a2
	add	a1, a1, a3
	sw	zero, 1864(a1)
.LBB4_21:                               #   in Loop: Header=BB4_14 Depth=1
	beqz	s4, .LBB4_28
# %bb.22:                               #   in Loop: Header=BB4_14 Depth=1
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	lw	a2, 468(a1)
	slti	a1, s4, 2
	bnez	a2, .LBB4_24
	j	.LBB4_25
.LBB4_23:                               #   in Loop: Header=BB4_14 Depth=1
	slli	a2, s3, 3
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	add	a2, a3, a2
	ld	a2, 0(a2)
	lui	a3, %hi(AdaptRndWeight)
	lw	a3, %lo(AdaptRndWeight)(a3)
	lw	a4, 824(a0)
	slli	a5, s6, 2
	add	a2, a2, a5
	lw	a2, 0(a2)
	sraiw	a5, a4, 31
	xor	a4, a4, a5
	subw	a4, a4, a5
	mul	a2, a2, a4
	ld	a4, 144(sp)                     # 8-byte Folded Reload
	sllw	a4, s4, a4
	subw	a2, a2, a4
	mul	a2, a2, a3
	ld	a3, 48(sp)                      # 8-byte Folded Reload
	add	a2, a2, a3
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	sraw	a2, a2, a3
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 10
	add	a1, a1, a3
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	addw	a3, a3, s6
	ld	a4, 152(sp)                     # 8-byte Folded Reload
	add	a4, a4, s3
	slli	a3, a3, 6
	add	a1, a1, a3
	slli	a4, a4, 2
	lui	a3, 4
	add	a4, a4, a3
	add	a1, a1, a4
	sw	a2, 1864(a1)
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	lw	a2, 468(a1)
	slti	a1, s4, 2
	beqz	a2, .LBB4_25
.LBB4_24:                               #   in Loop: Header=BB4_14 Depth=1
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	addi	a2, a2, 2047
	lw	a3, 937(a2)
	beqz	a3, .LBB4_30
.LBB4_25:                               #   in Loop: Header=BB4_14 Depth=1
	xori	a1, a1, 1
	or	a2, ra, a1
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	bnez	a2, .LBB4_27
# %bb.26:                               #   in Loop: Header=BB4_14 Depth=1
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 1093(a1)
	slli	a1, a1, 6
	lui	a2, %hi(COEFF_COST8x8)
	addi	a2, a2, %lo(COEFF_COST8x8)
	add	a2, a2, a6
	add	a1, a2, a1
	lbu	a1, 0(a1)
.LBB4_27:                               #   in Loop: Header=BB4_14 Depth=1
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	lw	a2, 0(a3)
	add	a1, a2, a1
	sw	a1, 0(a3)
	lw	a1, 824(a0)
	mv	a0, s4
	mv	s0, a6
	call	sign
	slli	a1, s5, 2
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sw	s0, 0(a0)
	addiw	s5, s5, 1
	li	s8, -1
	j	.LBB4_34
.LBB4_28:                               #   in Loop: Header=BB4_14 Depth=1
	bnez	ra, .LBB4_13
# %bb.29:                               #   in Loop: Header=BB4_14 Depth=1
	li	a0, 0
	ld	s0, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	j	.LBB4_39
.LBB4_30:                               #   in Loop: Header=BB4_14 Depth=1
	xori	a1, a1, 1
	mv	s8, a6
	or	a1, ra, a1
	beqz	a1, .LBB4_32
# %bb.31:                               #   in Loop: Header=BB4_14 Depth=1
	lui	a1, 244
	addi	a1, a1, 575
	j	.LBB4_33
.LBB4_32:                               #   in Loop: Header=BB4_14 Depth=1
	lw	a1, 1093(a2)
	slli	a1, a1, 6
	lui	a2, %hi(COEFF_COST8x8)
	addi	a2, a2, %lo(COEFF_COST8x8)
	add	a2, a2, s11
	add	a1, a2, a1
	lbu	a1, 0(a1)
.LBB4_33:                               #   in Loop: Header=BB4_14 Depth=1
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	lw	a2, 0(a3)
	add	a1, a2, a1
	sw	a1, 0(a3)
	lw	a1, 824(a0)
	mv	a0, s4
	call	sign
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 3
	add	a2, a1, a2
	ld	a2, 1848(a2)
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	add	a2, a2, a3
	ld	a2, 0(a2)
	slli	s0, s0, 3
	add	a2, a2, s0
	ld	a2, 0(a2)
	addi	a3, sp, 216
	add	s2, a3, s2
	lw	a3, 0(s2)
	ld	a4, 0(a2)
	ld	a2, 8(a2)
	slli	a5, a3, 2
	add	a4, a4, a5
	sw	a0, 0(a4)
	add	a2, a2, a5
	sw	s11, 0(a2)
	addi	a3, a3, 1
	sw	a3, 0(s2)
	li	a0, -1
	sw	a0, 0(s9)
.LBB4_34:                               #   in Loop: Header=BB4_14 Depth=1
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s0, 184(sp)                     # 8-byte Folded Reload
	add	a1, a1, s0
	lui	a0, 3
	add	a0, s2, a0
	add	a0, a1, a0
	lw	a1, 824(a0)
	mv	a0, s4
	call	sign
	ld	ra, 192(sp)                     # 8-byte Folded Reload
	bnez	ra, .LBB4_12
# %bb.35:                               #   in Loop: Header=BB4_14 Depth=1
	slli	s3, s3, 3
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	add	s3, a1, s3
	ld	a1, 0(s3)
	slli	s6, s6, 2
	add	a1, a1, s6
	lw	a1, 0(a1)
	mul	a0, a1, a0
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	li	a2, 36
	blt	a1, a2, .LBB4_37
# %bb.36:                               #   in Loop: Header=BB4_14 Depth=1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	sllw	a0, a0, a1
	j	.LBB4_38
.LBB4_37:                               #   in Loop: Header=BB4_14 Depth=1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sraw	a0, a0, a1
.LBB4_38:                               #   in Loop: Header=BB4_14 Depth=1
	li	a1, 1
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	mv	a6, s8
.LBB4_39:                               #   in Loop: Header=BB4_14 Depth=1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	a1, a1, s0
	lui	a2, 3
	add	s8, s2, a2
	add	a1, a1, s8
	sw	a0, 824(a1)
	j	.LBB4_13
.LBB4_40:
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	lw	a0, 468(a0)
	beqz	a0, .LBB4_43
# %bb.41:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	addi	s2, sp, 504
	bnez	a0, .LBB4_44
# %bb.42:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 3
	add	a0, a0, a1
	ld	a0, 1848(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a0, 0(a0)
	ld	a1, 0(a0)
	lw	a2, 216(sp)
	ld	a3, 8(a0)
	ld	a1, 0(a1)
	slli	a2, a2, 2
	lw	a4, 220(sp)
	ld	a3, 0(a3)
	add	a1, a1, a2
	sw	zero, 0(a1)
	slli	a4, a4, 2
	add	a3, a3, a4
	ld	a1, 16(a0)
	ld	a0, 24(a0)
	sw	zero, 0(a3)
	lw	a2, 224(sp)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	lw	s5, 228(sp)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	zero, 0(a1)
	j	.LBB4_44
.LBB4_43:
	addi	s2, sp, 504
.LBB4_44:
	slli	a0, s5, 2
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sw	zero, 0(a0)
	lui	a0, 22
	addiw	a2, a0, 460
	add	a2, a1, a2
	beqz	ra, .LBB4_46
# %bb.45:
	lw	a0, 0(a2)
	bnez	a0, .LBB4_53
	j	.LBB4_54
.LBB4_46:
	lui	a5, 3
	addiw	a0, a5, 840
	add	a0, a1, a0
	addi	a3, sp, 360
	addi	a4, a0, 12
	addiw	a5, a5, 1364
	add	a5, a1, a5
.LBB4_47:                               # =>This Inner Loop Header: Depth=1
	lw	a6, -28(a4)
	lw	a7, -12(a4)
	lw	t0, -20(a4)
	lw	t1, -4(a4)
	add	t2, a7, a6
	subw	a6, a6, a7
	srli	a7, t0, 1
	subw	a7, a7, t1
	srli	t1, t1, 1
	add	t0, t1, t0
	add	t1, t0, t2
	add	t3, a7, a6
	subw	a6, a6, a7
	lw	a7, 0(a4)
	lw	t4, -16(a4)
	subw	t0, t2, t0
	lw	t2, -8(a4)
	srli	t5, a7, 1
	add	t6, t4, a7
	add	t5, t6, t5
	subw	t5, t2, t5
	lw	t6, -24(a4)
	srli	s0, t4, 1
	subw	s1, a7, t4
	subw	s1, s1, s0
	add	s1, s1, t6
	srai	s0, t2, 1
	add	a7, a7, t2
	add	a7, a7, s0
	subw	a7, a7, t6
	add	t2, t2, t4
	add	t2, t2, t6
	srli	t6, t6, 1
	add	t2, t2, t6
	sraiw	t4, t2, 2
	add	t4, t4, t5
	sraiw	t5, t5, 2
	subw	t2, t2, t5
	sraiw	t5, a7, 2
	add	t5, t5, s1
	sraiw	t6, s1, 2
	subw	a7, t6, a7
	add	t6, t2, t1
	sw	t6, -128(a3)
	add	t6, a7, t3
	sw	t6, -96(a3)
	add	t6, t5, a6
	sw	t6, -64(a3)
	add	t6, t4, t0
	sw	t6, -32(a3)
	subw	t0, t0, t4
	sw	t0, 0(a3)
	subw	a6, a6, t5
	sw	a6, 32(a3)
	subw	a6, t3, a7
	sw	a6, 64(a3)
	subw	a6, t1, t2
	sw	a6, 96(a3)
	addi	a4, a4, 64
	addi	a3, a3, 4
	bne	a4, a5, .LBB4_47
# %bb.48:
	addi	a3, a0, 240
	addi	a4, sp, 248
.LBB4_49:                               # =>This Inner Loop Header: Depth=1
	lw	a5, -16(a4)
	lw	a6, 0(a4)
	lw	a7, -8(a4)
	lw	t0, 8(a4)
	add	t1, a6, a5
	subw	a5, a5, a6
	srli	a6, a7, 1
	subw	a6, a6, t0
	srli	t0, t0, 1
	add	a7, t0, a7
	add	t0, a7, t1
	add	t2, a6, a5
	subw	a5, a5, a6
	lw	a6, 12(a4)
	lw	t3, -4(a4)
	subw	a7, t1, a7
	lw	t1, 4(a4)
	srli	t4, a6, 1
	add	t5, t3, a6
	add	t4, t5, t4
	subw	t4, t1, t4
	lw	t5, -12(a4)
	srli	t6, t3, 1
	subw	s0, a6, t3
	subw	s0, s0, t6
	add	s0, s0, t5
	srai	t6, t1, 1
	add	a6, a6, t1
	add	a6, a6, t6
	subw	a6, a6, t5
	add	t1, t1, t3
	add	t1, t1, t5
	srli	t5, t5, 1
	add	t1, t1, t5
	sraiw	t3, t1, 2
	add	t3, t3, t4
	sraiw	t4, t4, 2
	subw	t1, t1, t4
	sraiw	t4, a6, 2
	add	t4, t4, s0
	sraiw	t5, s0, 2
	subw	a6, t5, a6
	add	t5, t1, t0
	sw	t5, -256(a3)
	add	t5, a6, t2
	sw	t5, -192(a3)
	add	t5, t4, a5
	sw	t5, -128(a3)
	add	t5, t3, a7
	sw	t5, -64(a3)
	subw	a7, a7, t3
	sw	a7, 0(a3)
	subw	a5, a5, t4
	sw	a5, 64(a3)
	subw	a5, t2, a6
	sw	a5, 128(a3)
	subw	a5, t0, t1
	sw	a5, 192(a3)
	addi	a4, a4, 32
	addi	a3, a3, 4
	bne	a4, s2, .LBB4_49
# %bb.50:
	lw	a2, 0(a2)
	beqz	a2, .LBB4_54
# %bb.51:                               # %.preheader
	lui	a2, 3
	addiw	a2, a2, 1352
	add	a1, a1, a2
.LBB4_52:                               # =>This Inner Loop Header: Depth=1
	lw	a2, -16(a0)
	lw	a3, -12(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, -16(a0)
	addi	a2, a3, 32
	lw	a3, -8(a0)
	sraiw	a2, a2, 6
	sw	a2, -12(a0)
	lw	a2, -4(a0)
	addi	a3, a3, 32
	sraiw	a3, a3, 6
	sw	a3, -8(a0)
	addi	a2, a2, 32
	lw	a3, 0(a0)
	sraiw	a2, a2, 6
	sw	a2, -4(a0)
	lw	a2, 4(a0)
	addi	a3, a3, 32
	sraiw	a3, a3, 6
	sw	a3, 0(a0)
	addi	a2, a2, 32
	lw	a3, 8(a0)
	sraiw	a2, a2, 6
	sw	a2, 4(a0)
	lw	a2, 12(a0)
	addi	a3, a3, 32
	sraiw	a3, a3, 6
	sw	a3, 8(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 12(a0)
	addi	a0, a0, 64
	bne	a0, a1, .LBB4_52
.LBB4_53:
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	ld	ra, 584(sp)                     # 8-byte Folded Reload
	ld	s0, 576(sp)                     # 8-byte Folded Reload
	ld	s1, 568(sp)                     # 8-byte Folded Reload
	ld	s2, 560(sp)                     # 8-byte Folded Reload
	ld	s3, 552(sp)                     # 8-byte Folded Reload
	ld	s4, 544(sp)                     # 8-byte Folded Reload
	ld	s5, 536(sp)                     # 8-byte Folded Reload
	ld	s6, 528(sp)                     # 8-byte Folded Reload
	ld	s7, 520(sp)                     # 8-byte Folded Reload
	ld	s8, 512(sp)                     # 8-byte Folded Reload
	ld	s9, 504(sp)                     # 8-byte Folded Reload
	ld	s10, 496(sp)                    # 8-byte Folded Reload
	ld	s11, 488(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 592
	ret
.LBB4_54:
	li	s0, 0
	lui	a0, 3
	addiw	s1, a0, 312
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 5
	ld	a3, 0(sp)                       # 8-byte Folded Reload
	andi	a3, a3, 1
	slli	a3, a3, 4
	or	a2, a2, a3
	sd	s1, 184(sp)                     # 8-byte Folded Spill
	add	s1, a2, s1
	addiw	s5, a0, 824
	lui	s4, %hi(enc_picture)
	lui	s6, 2
	lui	s8, %hi(img)
	j	.LBB4_56
.LBB4_55:                               #   in Loop: Header=BB4_56 Depth=1
	addi	s0, s0, 1
	addi	s5, s5, 64
	addi	s1, s1, 32
	li	a0, 8
	beq	s0, a0, .LBB4_53
.LBB4_56:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_59 Depth 2
	slli	a0, s0, 6
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	add	a0, a2, a0
	lw	s11, 156(a1)
	addi	s9, a0, 544
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	or	s10, s0, a0
	slli	s10, s10, 3
	slli	s11, s11, 3
	mv	s2, s1
	ld	s7, 152(sp)                     # 8-byte Folded Reload
	mv	s3, s5
	j	.LBB4_59
.LBB4_57:                               #   in Loop: Header=BB4_59 Depth=2
	lhu	a1, 0(a3)
	slli	a1, a1, 6
	add	a0, a0, a1
	addi	a0, a0, 32
	srai	a0, a0, 6
	call	clip1a
	ld	ra, 192(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(img)(s8)
	add	a2, a1, s3
.LBB4_58:                               #   in Loop: Header=BB4_59 Depth=2
	sw	a0, 0(a2)
	ld	a2, %lo(enc_picture)(s4)
	add	a2, a2, s6
	ld	a2, -1768(a2)
	add	a3, s10, s11
	lw	a4, 152(a1)
	add	a2, a2, a3
	ld	a2, 0(a2)
	add	a4, s7, a4
	slli	a4, a4, 1
	add	a2, a2, a4
	sh	a0, 0(a2)
	addi	s3, s3, 4
	addi	s7, s7, 1
	addi	s2, s2, 2
	beq	s3, s9, .LBB4_55
.LBB4_59:                               #   Parent Loop BB4_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a2, a1, s3
	lw	a0, 0(a2)
	add	a3, a1, s2
	beqz	ra, .LBB4_57
# %bb.60:                               #   in Loop: Header=BB4_59 Depth=2
	lhu	a3, 0(a3)
	add	a0, a0, a3
	j	.LBB4_58
.Lfunc_end4:
	.size	dct_luma8x8, .Lfunc_end4-dct_luma8x8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	LowPassForIntra8x8Pred          # -- Begin function LowPassForIntra8x8Pred
	.p2align	2
	.type	LowPassForIntra8x8Pred,@function
LowPassForIntra8x8Pred:                 # @LowPassForIntra8x8Pred
# %bb.0:
	addi	sp, sp, -144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	mv	s1, a3
	mv	s2, a2
	mv	s3, a1
	mv	s0, a0
	addi	a0, sp, 4
	li	a2, 100
	mv	a1, s0
	call	memcpy
	beqz	s2, .LBB5_7
# %bb.1:
	beqz	s3, .LBB5_3
# %bb.2:
	lw	a1, 0(s0)
	lw	a2, 4(s0)
	lw	a0, 8(s0)
	slli	a2, a2, 1
	add	a1, a1, a0
	j	.LBB5_4
.LBB5_3:
	lw	a1, 4(s0)
	lw	a0, 8(s0)
	slli	a2, a1, 1
	add	a1, a0, a1
.LBB5_4:
	add	a1, a1, a2
	addiw	a1, a1, 2
	srli	a1, a1, 2
	sw	a1, 8(sp)
	addi	a1, sp, 12
	addi	a2, s0, 12
	addi	a3, sp, 68
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	lw	a4, -8(a2)
	slli	a5, a0, 1
	lw	a0, 0(a2)
	add	a4, a4, a5
	add	a4, a4, a0
	addi	a4, a4, 2
	sraiw	a4, a4, 2
	sw	a4, 0(a1)
	addi	a1, a1, 4
	addi	a2, a2, 4
	bne	a1, a3, .LBB5_5
# %bb.6:
	lw	a0, 64(s0)
	lw	a1, 60(s0)
	slli	a2, a0, 1
	add	a0, a1, a0
	add	a0, a0, a2
	addi	a0, a0, 2
	sraiw	a0, a0, 2
	sw	a0, 68(sp)
.LBB5_7:
	beqz	s3, .LBB5_12
# %bb.8:
	beqz	s2, .LBB5_14
# %bb.9:
	beqz	s1, .LBB5_14
# %bb.10:
	lw	a0, 68(s0)
	lw	a1, 0(s0)
	lw	a2, 4(s0)
	slli	a3, a1, 1
	add	a2, a0, a2
	add	a2, a2, a3
.LBB5_11:
	addi	a2, a2, 2
	sraiw	a2, a2, 2
	sw	a2, 4(sp)
	j	.LBB5_17
.LBB5_12:
	beqz	s1, .LBB5_19
# %bb.13:
	lw	a0, 68(s0)
	lw	a2, 72(s0)
	slli	a1, a0, 1
	add	a3, a1, a0
	j	.LBB5_18
.LBB5_14:
	beqz	s2, .LBB5_20
# %bb.15:
	lw	a1, 0(s0)
	lw	a0, 4(s0)
	slli	a2, a1, 1
	add	a0, a0, a1
	add	a0, a0, a2
	addi	a0, a0, 2
	sraiw	a0, a0, 2
	sw	a0, 4(sp)
	beqz	s1, .LBB5_19
# %bb.16:
	lw	a0, 68(s0)
.LBB5_17:
	lw	a2, 72(s0)
	slli	a3, a0, 1
	add	a3, a1, a3
.LBB5_18:
	addi	a1, a2, 2
	add	a3, a1, a3
	sraiw	a3, a3, 2
	sw	a3, 72(sp)
	lw	a3, 76(s0)
	slli	a2, a2, 1
	add	a0, a0, a3
	add	a0, a0, a2
	addi	a0, a0, 2
	sraiw	a0, a0, 2
	lw	a2, 80(s0)
	sw	a0, 76(sp)
	slli	a0, a3, 1
	add	a0, a1, a0
	add	a0, a0, a2
	lw	a1, 84(s0)
	sraiw	a0, a0, 2
	sw	a0, 80(sp)
	slli	a0, a2, 1
	add	a3, a3, a1
	add	a0, a3, a0
	addi	a0, a0, 2
	lw	a3, 88(s0)
	sraiw	a0, a0, 2
	sw	a0, 84(sp)
	slli	a0, a1, 1
	add	a2, a2, a3
	add	a0, a2, a0
	addi	a0, a0, 2
	lw	a2, 92(s0)
	sraiw	a0, a0, 2
	sw	a0, 88(sp)
	slli	a0, a3, 1
	add	a1, a1, a2
	add	a0, a1, a0
	addi	a0, a0, 2
	lw	a1, 96(s0)
	sraiw	a0, a0, 2
	sw	a0, 92(sp)
	slli	a0, a2, 1
	add	a3, a3, a1
	add	a0, a3, a0
	addi	a0, a0, 2
	sraiw	a0, a0, 2
	sw	a0, 96(sp)
	slli	a0, a1, 1
	add	a1, a2, a1
	add	a0, a1, a0
	addi	a0, a0, 2
	sraiw	a0, a0, 2
	sw	a0, 100(sp)
.LBB5_19:
	addi	a1, sp, 4
	li	a2, 100
	mv	a0, s0
	call	memcpy
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.LBB5_20:
	beqz	s1, .LBB5_19
# %bb.21:
	lw	a1, 0(s0)
	lw	a0, 68(s0)
	slli	a2, a1, 1
	add	a3, a0, a1
	add	a2, a3, a2
	j	.LBB5_11
.Lfunc_end5:
	.size	LowPassForIntra8x8Pred, .Lfunc_end5-LowPassForIntra8x8Pred
                                        # -- End function
	.option	pop
	.type	quant_coef8,@object             # @quant_coef8
	.section	.rodata,"a",@progbits
	.globl	quant_coef8
	.p2align	2, 0x0
quant_coef8:
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.size	quant_coef8, 1536

	.type	dequant_coef8,@object           # @dequant_coef8
	.globl	dequant_coef8
	.p2align	2, 0x0
dequant_coef8:
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.size	dequant_coef8, 1536

	.type	SNGL_SCAN8x8,@object            # @SNGL_SCAN8x8
	.globl	SNGL_SCAN8x8
SNGL_SCAN8x8:
	.zero	2
	.asciz	"\001"
	.ascii	"\000\001"
	.ascii	"\000\002"
	.zero	2,1
	.asciz	"\002"
	.asciz	"\003"
	.ascii	"\002\001"
	.ascii	"\001\002"
	.ascii	"\000\003"
	.ascii	"\000\004"
	.ascii	"\001\003"
	.zero	2,2
	.ascii	"\003\001"
	.asciz	"\004"
	.asciz	"\005"
	.ascii	"\004\001"
	.ascii	"\003\002"
	.ascii	"\002\003"
	.ascii	"\001\004"
	.ascii	"\000\005"
	.ascii	"\000\006"
	.ascii	"\001\005"
	.ascii	"\002\004"
	.zero	2,3
	.ascii	"\004\002"
	.ascii	"\005\001"
	.asciz	"\006"
	.asciz	"\007"
	.ascii	"\006\001"
	.ascii	"\005\002"
	.ascii	"\004\003"
	.ascii	"\003\004"
	.ascii	"\002\005"
	.ascii	"\001\006"
	.ascii	"\000\007"
	.ascii	"\001\007"
	.ascii	"\002\006"
	.ascii	"\003\005"
	.zero	2,4
	.ascii	"\005\003"
	.ascii	"\006\002"
	.ascii	"\007\001"
	.ascii	"\007\002"
	.ascii	"\006\003"
	.ascii	"\005\004"
	.ascii	"\004\005"
	.ascii	"\003\006"
	.ascii	"\002\007"
	.ascii	"\003\007"
	.ascii	"\004\006"
	.zero	2,5
	.ascii	"\006\004"
	.ascii	"\007\003"
	.ascii	"\007\004"
	.ascii	"\006\005"
	.ascii	"\005\006"
	.ascii	"\004\007"
	.ascii	"\005\007"
	.zero	2,6
	.ascii	"\007\005"
	.ascii	"\007\006"
	.ascii	"\006\007"
	.zero	2,7
	.size	SNGL_SCAN8x8, 128

	.type	FIELD_SCAN8x8,@object           # @FIELD_SCAN8x8
	.globl	FIELD_SCAN8x8
FIELD_SCAN8x8:
	.zero	2
	.ascii	"\000\001"
	.ascii	"\000\002"
	.asciz	"\001"
	.zero	2,1
	.ascii	"\000\003"
	.ascii	"\000\004"
	.ascii	"\001\002"
	.asciz	"\002"
	.ascii	"\001\003"
	.ascii	"\000\005"
	.ascii	"\000\006"
	.ascii	"\000\007"
	.ascii	"\001\004"
	.ascii	"\002\001"
	.asciz	"\003"
	.zero	2,2
	.ascii	"\001\005"
	.ascii	"\001\006"
	.ascii	"\001\007"
	.ascii	"\002\003"
	.ascii	"\003\001"
	.asciz	"\004"
	.ascii	"\003\002"
	.ascii	"\002\004"
	.ascii	"\002\005"
	.ascii	"\002\006"
	.ascii	"\002\007"
	.zero	2,3
	.ascii	"\004\001"
	.asciz	"\005"
	.ascii	"\004\002"
	.ascii	"\003\004"
	.ascii	"\003\005"
	.ascii	"\003\006"
	.ascii	"\003\007"
	.ascii	"\004\003"
	.ascii	"\005\001"
	.asciz	"\006"
	.ascii	"\005\002"
	.zero	2,4
	.ascii	"\004\005"
	.ascii	"\004\006"
	.ascii	"\004\007"
	.ascii	"\005\003"
	.ascii	"\006\001"
	.ascii	"\006\002"
	.ascii	"\005\004"
	.zero	2,5
	.ascii	"\005\006"
	.ascii	"\005\007"
	.ascii	"\006\003"
	.asciz	"\007"
	.ascii	"\007\001"
	.ascii	"\006\004"
	.ascii	"\006\005"
	.zero	2,6
	.ascii	"\006\007"
	.ascii	"\007\002"
	.ascii	"\007\003"
	.ascii	"\007\004"
	.ascii	"\007\005"
	.ascii	"\007\006"
	.zero	2,7
	.size	FIELD_SCAN8x8, 128

	.type	COEFF_COST8x8,@object           # @COEFF_COST8x8
	.globl	COEFF_COST8x8
COEFF_COST8x8:
	.ascii	"\003\003\003\003\002\002\002\002\002\002\002\002\001\001\001\001\001\001\001\001\001\001\001\001"
	.zero	40
	.zero	64,9
	.size	COEFF_COST8x8, 128

	.type	cofAC8x8_chroma,@object         # @cofAC8x8_chroma
	.bss
	.globl	cofAC8x8_chroma
	.p2align	2, 0x0
cofAC8x8_chroma:
	.zero	1152
	.size	cofAC8x8_chroma, 1152

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
