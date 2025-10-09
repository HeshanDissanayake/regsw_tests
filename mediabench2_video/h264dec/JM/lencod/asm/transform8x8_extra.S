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
	slli	n3, s2, 5
	add	s4, s4, n3
	slli	n1, s0, 4
	or	n2, s4, n1
	sd	n2, 72(sp)                      # 8-byte Folded Spill
	add	n2, n2, s7
	sd	n2, 776(sp)                     # 8-byte Folded Spill
	slli	s7, s9, 3
	sd	n3, 32(sp)                      # 8-byte Folded Spill
	or	n2, n3, n1
	ld	n1, 64(sp)                      # 8-byte Folded Reload
	sd	n2, 16(sp)                      # 8-byte Folded Spill
	add	n1, n2, n1
	sd	n1, 144(sp)                     # 8-byte Folded Spill
	slli	n1, s2, 6
	slli	s0, s0, 5
	sd	n1, 24(sp)                      # 8-byte Folded Spill
	or	n2, n1, s0
	lui	n1, 5
	addiw	n1, n1, -1208
	blt	s2, t6, .LBB1_19
# %bb.18:
	mv	t6, s2
.LBB1_19:
	sd	zero, 792(sp)                   # 8-byte Folded Spill
	sd	zero, 672(sp)                   # 8-byte Folded Spill
	sraiw	n3, s1, 2
	sd	n3, 48(sp)                      # 8-byte Folded Spill
	sraiw	n3, s6, 2
	sd	n3, 40(sp)                      # 8-byte Folded Spill
	ld	n3, 952(sp)                     # 8-byte Folded Reload
	addiw	n4, n3, 4
	sd	n4, 1008(sp)                    # 8-byte Folded Spill
	addiw	n3, n3, 8
	sd	n3, 1000(sp)                    # 8-byte Folded Spill
	fcvt.w.d	n3, fa5, rdn
	sd	n3, 688(sp)                     # 8-byte Folded Spill
	ld	s6, 784(sp)                     # 8-byte Folded Reload
	addi	n3, s6, 1
	sd	n3, 712(sp)                     # 8-byte Folded Spill
	ld	n3, 80(sp)                      # 8-byte Folded Reload
	ld	n4, 72(sp)                      # 8-byte Folded Reload
	add	n3, n4, n3
	sd	n3, 928(sp)                     # 8-byte Folded Spill
	ld	n3, 776(sp)                     # 8-byte Folded Reload
	addi	n3, n3, 14
	sd	n3, 704(sp)                     # 8-byte Folded Spill
	slli	s6, s6, 1
	addi	n3, s7, 64
	sd	n3, 696(sp)                     # 8-byte Folded Spill
	ld	n3, 144(sp)                     # 8-byte Folded Reload
	addi	s5, n3, 256
	add	n3, n2, n1
	sd	n3, 120(sp)                     # 8-byte Folded Spill
	addi	n3, sp, 2047
	addi	n3, n3, 585
	add	n2, n3, n2
	sd	n2, 112(sp)                     # 8-byte Folded Spill
	slli	t6, t6, 6
	or	t6, t6, s0
	li	s0, 0
	add	t6, t6, n1
	addi	t6, t6, 64
	sd	t6, 104(sp)                     # 8-byte Folded Spill
	lui	t6, %hi(.LCPI1_1)
	fld	fs2, %lo(.LCPI1_1)(t6)
	lui	t6, 2
	addiw	n17, t6, -840
	lui	s8, %hi(img)
	lui	t6, 22
	addiw	t6, t6, 460
	sd	t6, 848(sp)                     # 8-byte Folded Spill
	lui	t6, 3
	addiw	t6, t6, 824
	sd	t6, 1024(sp)                    # 8-byte Folded Spill
	lui	t6, 2
	addiw	t6, t6, -840
	sd	t6, 680(sp)                     # 8-byte Folded Spill
	lui	s1, %hi(resTrans_R)
	addi	s1, s1, %lo(resTrans_R)
	lui	s4, %hi(resTrans_G)
	addi	s4, s4, %lo(resTrans_G)
	slli	a7, a7, 1
	sd	a7, 920(sp)                     # 8-byte Folded Spill
	slli	t0, t0, 1
	sd	t0, 912(sp)                     # 8-byte Folded Spill
	slli	t1, t1, 1
	sd	t1, 904(sp)                     # 8-byte Folded Spill
	slli	t2, t2, 1
	sd	t2, 896(sp)                     # 8-byte Folded Spill
	slli	t3, t3, 1
	sd	t3, 888(sp)                     # 8-byte Folded Spill
	slli	t4, t4, 1
	sd	t4, 880(sp)                     # 8-byte Folded Spill
	slli	t5, t5, 1
	sd	t5, 872(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 1
	sd	a1, 840(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 1
	sd	a2, 832(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 1
	sd	a3, 824(sp)                     # 8-byte Folded Spill
	slli	a4, a4, 1
	sd	a4, 816(sp)                     # 8-byte Folded Spill
	slli	a5, a5, 1
	sd	a5, 808(sp)                     # 8-byte Folded Spill
	slli	a6, a6, 1
	sd	a6, 800(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(cofAC8x8_chroma)
	addi	a1, a1, %lo(cofAC8x8_chroma)
	snez	a0, a0
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	addi	a0, a1, 576
	sd	a0, 128(sp)                     # 8-byte Folded Spill
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
	sd	s10, 864(sp)                    # 8-byte Folded Spill
	sd	s11, 856(sp)                    # 8-byte Folded Spill
	sd	s3, 728(sp)                     # 8-byte Folded Spill
	sd	s5, 936(sp)                     # 8-byte Folded Spill
	sd	s6, 752(sp)                     # 8-byte Folded Spill
	sd	s9, 744(sp)                     # 8-byte Folded Spill
	sd	s7, 720(sp)                     # 8-byte Folded Spill
	j	.LBB1_23
.LBB1_20:                               #   in Loop: Header=BB1_23 Depth=1
	mv	n20, s8
	mv	s0, s5
	ld	s5, 936(sp)                     # 8-byte Folded Reload
	mv	n17, s2
.LBB1_21:                               #   in Loop: Header=BB1_23 Depth=1
	lui	s8, %hi(img)
.LBB1_22:                               #   in Loop: Header=BB1_23 Depth=1
	addi	s0, s0, 1
	addi	n17, n17, 128
	li	a0, 9
	bne	s0, a0, .LBB1_23
	j	.LBB1_64
.LBB1_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_29 Depth 2
                                        #     Child Loop BB1_31 Depth 2
                                        #     Child Loop BB1_34 Depth 2
                                        #       Child Loop BB1_36 Depth 3
                                        #     Child Loop BB1_43 Depth 2
                                        #     Child Loop BB1_46 Depth 2
                                        #     Child Loop BB1_48 Depth 2
                                        #     Child Loop BB1_50 Depth 2
                                        #     Child Loop BB1_57 Depth 2
                                        #     Child Loop BB1_61 Depth 2
	li	a3, 2
	ld	n20, 968(sp)                    # 8-byte Folded Reload
	slli	n20, n20, 1
	beq	s0, a3, .LBB1_26
# %bb.24:                               #   in Loop: Header=BB1_23 Depth=1
	snez	a0, s0
	andi	a1, s0, 11
	addi	a1, a1, -3
	snez	a1, a1
	and	a0, a0, a1
	beqz	a0, .LBB1_25
	j	.LBB1_54
.LBB1_25:                               #   in Loop: Header=BB1_23 Depth=1
	mv	a3, s0
	ld	a0, 768(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB1_26
	j	.LBB1_54
.LBB1_26:                               #   in Loop: Header=BB1_23 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a2, 1089(a1)
	ld	a1, %lo(img)(s8)
	sd	a3, 992(sp)                     # 8-byte Folded Spill
	bnez	a2, .LBB1_27
	j	.LBB1_52
.LBB1_27:                               #   in Loop: Header=BB1_23 Depth=1
	ld	a0, 848(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lw	a0, 0(a0)
	sext.w	a2, a3
	sd	n20, 984(sp)                    # 8-byte Folded Spill
	sd	n17, 976(sp)                    # 8-byte Folded Spill
	bnez	a0, .LBB1_28
	j	.LBB1_56
.LBB1_28:                               #   in Loop: Header=BB1_23 Depth=1
	sd	s0, 944(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(imgUV_org)
	ld	a0, %lo(imgUV_org)(a0)
	li	a3, 0
	ld	a4, 0(a0)
	lui	a5, %hi(imgY_org)
	ld	a5, %lo(imgY_org)(a5)
	ld	a6, 8(a0)
	ld	s2, 1024(sp)                    # 8-byte Folded Reload
	add	a0, a1, s2
	ld	a7, 736(sp)                     # 8-byte Folded Reload
	add	a4, a4, a7
	add	a5, a5, a7
	add	a6, a6, a7
	mv	a7, n17
	ld	t0, 704(sp)                     # 8-byte Folded Reload
	ld	t1, 928(sp)                     # 8-byte Folded Reload
	lui	n18, %hi(resTrans_B)
	addi	n18, n18, %lo(resTrans_B)
	ld	n10, 920(sp)                    # 8-byte Folded Reload
	ld	n11, 912(sp)                    # 8-byte Folded Reload
	ld	n12, 904(sp)                    # 8-byte Folded Reload
	ld	n13, 896(sp)                    # 8-byte Folded Reload
	ld	n14, 888(sp)                    # 8-byte Folded Reload
	ld	n15, 880(sp)                    # 8-byte Folded Reload
	ld	n16, 872(sp)                    # 8-byte Folded Reload
	li	n17, 512
.LBB1_29:                               #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t4, 0(a4)
	add	t2, t4, n20
	lhu	t6, 0(t2)
	add	t5, a1, t1
	lhu	n1, 0(t5)
	ld	t2, 0(a5)
	ld	t3, 0(a6)
	sub	n3, t6, n1
	add	t6, t2, n20
	add	n1, t3, n20
	lhu	n2, 0(n1)
	add	n1, a1, t0
	lhu	n4, -14(n1)
	lhu	n5, 0(t6)
	add	t6, a1, a7
	lhu	n6, 0(t6)
	sub	n2, n2, n4
	sub	n4, n2, n3
	add	n2, s1, a3
	sw	n4, 0(n2)
	srli	n4, n4, 1
	add	n4, n4, n3
	subw	n3, n5, n6
	subw	n5, n3, n4
	add	n3, n18, a3
	sw	n5, 0(n3)
	sraiw	n5, n5, 1
	add	n6, t4, n10
	lhu	n6, 0(n6)
	lhu	n7, 2(t5)
	add	n5, n5, n4
	add	n4, s4, a3
	sw	n5, 0(n4)
	sub	n5, n6, n7
	add	n6, t3, n10
	lhu	n6, 0(n6)
	lhu	n7, -12(n1)
	add	n8, t2, n10
	lhu	n8, 0(n8)
	lhu	n9, 2(t6)
	sub	n6, n6, n7
	sub	n6, n6, n5
	sw	n6, 4(n2)
	srli	n6, n6, 1
	add	n5, n6, n5
	subw	n6, n8, n9
	subw	n6, n6, n5
	sw	n6, 4(n3)
	add	n7, t4, n11
	lhu	n7, 0(n7)
	lhu	n8, 4(t5)
	sraiw	n6, n6, 1
	add	n5, n6, n5
	sw	n5, 4(n4)
	sub	n5, n7, n8
	add	n6, t3, n11
	lhu	n6, 0(n6)
	lhu	n7, -10(n1)
	add	n8, t2, n11
	lhu	n8, 0(n8)
	lhu	n9, 4(t6)
	sub	n6, n6, n7
	sub	n6, n6, n5
	sw	n6, 8(n2)
	srli	n6, n6, 1
	add	n5, n6, n5
	subw	n6, n8, n9
	subw	n6, n6, n5
	sw	n6, 8(n3)
	add	n7, t4, n12
	lhu	n7, 0(n7)
	lhu	n8, 6(t5)
	sraiw	n6, n6, 1
	add	n5, n6, n5
	sw	n5, 8(n4)
	sub	n5, n7, n8
	add	n6, t3, n12
	lhu	n6, 0(n6)
	lhu	n7, -8(n1)
	add	n8, t2, n12
	lhu	n8, 0(n8)
	lhu	n9, 6(t6)
	sub	n6, n6, n7
	sub	n6, n6, n5
	sw	n6, 12(n2)
	srli	n6, n6, 1
	add	n5, n6, n5
	subw	n6, n8, n9
	subw	n6, n6, n5
	sw	n6, 12(n3)
	add	n7, t4, n13
	lhu	n7, 0(n7)
	lhu	n8, 8(t5)
	sraiw	n6, n6, 1
	add	n5, n6, n5
	sw	n5, 12(n4)
	sub	n5, n7, n8
	add	n6, t3, n13
	lhu	n6, 0(n6)
	lhu	n7, -6(n1)
	add	n8, t2, n13
	lhu	n8, 0(n8)
	lhu	n9, 8(t6)
	sub	n6, n6, n7
	sub	n6, n6, n5
	sw	n6, 16(n2)
	srli	n6, n6, 1
	add	n5, n6, n5
	subw	n6, n8, n9
	subw	n6, n6, n5
	sw	n6, 16(n3)
	add	n7, t4, n14
	lhu	n7, 0(n7)
	lhu	n8, 10(t5)
	sraiw	n6, n6, 1
	add	n5, n6, n5
	sw	n5, 16(n4)
	sub	n5, n7, n8
	add	n6, t3, n14
	lhu	n6, 0(n6)
	lhu	n7, -4(n1)
	add	n8, t2, n14
	lhu	n8, 0(n8)
	lhu	n9, 10(t6)
	sub	n6, n6, n7
	sub	n6, n6, n5
	sw	n6, 20(n2)
	srli	n6, n6, 1
	add	n5, n6, n5
	subw	n6, n8, n9
	subw	n6, n6, n5
	sw	n6, 20(n3)
	add	n7, t4, n15
	lhu	n7, 0(n7)
	lhu	n8, 12(t5)
	sraiw	n6, n6, 1
	add	n5, n6, n5
	sw	n5, 20(n4)
	sub	n5, n7, n8
	add	n6, t3, n15
	lhu	n6, 0(n6)
	lhu	n7, -2(n1)
	add	n8, t2, n15
	lhu	n8, 0(n8)
	lhu	n9, 12(t6)
	sub	n6, n6, n7
	sub	n6, n6, n5
	sw	n6, 24(n2)
	srli	n6, n6, 1
	add	n5, n6, n5
	subw	n6, n8, n9
	subw	n6, n6, n5
	sw	n6, 24(n3)
	add	t4, t4, n16
	lhu	t4, 0(t4)
	lhu	t5, 14(t5)
	sraiw	n6, n6, 1
	add	n5, n6, n5
	sw	n5, 24(n4)
	sub	t4, t4, t5
	add	t3, t3, n16
	lhu	t3, 0(t3)
	lhu	t5, 0(n1)
	add	t2, t2, n16
	lhu	t2, 0(t2)
	lhu	t6, 14(t6)
	sub	t3, t3, t5
	sub	t3, t3, t4
	sw	t3, 28(n2)
	srli	t3, t3, 1
	add	t3, t3, t4
	subw	t2, t2, t6
	subw	t2, t2, t3
	sw	t2, 28(n3)
	sraiw	t2, t2, 1
	add	t2, t2, t3
	sw	t2, 28(n4)
	addi	a3, a3, 64
	addi	a4, a4, 8
	addi	a5, a5, 8
	addi	a6, a6, 8
	addi	t1, t1, 32
	addi	t0, t0, 32
	addi	a7, a7, 16
	bne	a3, n17, .LBB1_29
# %bb.30:                               #   in Loop: Header=BB1_23 Depth=1
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
	addi	a0, a0, 1865
	ld	a1, 952(sp)                     # 8-byte Folded Reload
	fmv.d	fa0, fs0
	ld	a3, 960(sp)                     # 8-byte Folded Reload
	call	RDCost_for_8x8IntraBlocks
	fmv.d	fs1, fa0
	call	reset_coding_state_cs_cm
	ld	a1, %lo(img)(s8)
	add	a1, a1, s2
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
	ld	a1, %lo(img)(s8)
	li	s9, 0
	li	s8, 0
	li	s10, 0
	sw	a2, 476(a0)
	fcvt.w.d	s4, fs1, rtz
.LBB1_31:                               #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	s4, 1016(sp)                    # 8-byte Folded Spill
	slli	a0, s8, 6
	andi	s6, a0, 256
	lui	a3, %hi(resTrans_B)
	addi	a3, a3, %lo(resTrans_B)
	add	a0, a3, s6
	slli	s1, s9, 2
	andi	s1, s1, 16
	add	a2, a0, s1
	lw	a2, 0(a2)
	ld	a4, 1024(sp)                    # 8-byte Folded Reload
	add	a1, a1, a4
	mv	s11, a4
	sw	a2, 0(a1)
	addi	s3, s1, 4
	add	a2, a0, s3
	lw	a2, 0(a2)
	sw	a2, 4(a1)
	addi	s4, s1, 8
	add	a2, a0, s4
	lw	a2, 0(a2)
	sw	a2, 8(a1)
	addi	s5, s1, 12
	add	a0, a0, s5
	lw	a0, 0(a0)
	sw	a0, 12(a1)
	addi	s0, s6, 64
	add	a0, a3, s0
	add	a2, a0, s1
	lw	a2, 0(a2)
	sw	a2, 64(a1)
	add	a2, a0, s3
	lw	a2, 0(a2)
	sw	a2, 68(a1)
	add	a2, a0, s4
	lw	a2, 0(a2)
	sw	a2, 72(a1)
	add	a0, a0, s5
	lw	a0, 0(a0)
	sw	a0, 76(a1)
	addi	s2, s6, 128
	add	a0, a3, s2
	add	a2, a0, s1
	lw	a2, 0(a2)
	sw	a2, 128(a1)
	add	a2, a0, s3
	lw	a2, 0(a2)
	sw	a2, 132(a1)
	add	a2, a0, s4
	lw	a2, 0(a2)
	sw	a2, 136(a1)
	add	a0, a0, s5
	lw	a0, 0(a0)
	sw	a0, 140(a1)
	addi	s7, s6, 192
	add	a0, a3, s7
	add	a2, a0, s1
	lw	a2, 0(a2)
	sw	a2, 192(a1)
	add	a2, a0, s3
	lw	a2, 0(a2)
	sw	a2, 196(a1)
	add	a2, a0, s4
	lw	a2, 0(a2)
	sw	a2, 200(a1)
	add	a0, a0, s5
	lw	a0, 0(a0)
	sw	a0, 204(a1)
	ld	a0, 1008(sp)                    # 8-byte Folded Reload
	mv	a1, s10
	li	a2, 0
	call	RDCost_for_4x4Blocks_Chroma
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	a1, a1, s11
	lw	a2, 0(a1)
	lui	a7, %hi(resTrans_R)
	addi	a7, a7, %lo(resTrans_R)
	add	a3, a7, s6
	add	a4, a3, s1
	lw	a4, 0(a4)
	lui	t0, %hi(rec_resB)
	addi	t0, t0, %lo(rec_resB)
	add	a5, t0, s6
	add	a6, a5, s1
	sw	a2, 0(a6)
	sw	a4, 0(a1)
	lw	a2, 4(a1)
	add	a4, a3, s3
	lw	a4, 0(a4)
	add	a6, a5, s3
	sw	a2, 0(a6)
	sw	a4, 4(a1)
	lw	a2, 8(a1)
	add	a4, a3, s4
	lw	a4, 0(a4)
	add	a6, a5, s4
	sw	a2, 0(a6)
	sw	a4, 8(a1)
	lw	a2, 12(a1)
	add	a3, a3, s5
	lw	a3, 0(a3)
	add	a5, a5, s5
	sw	a2, 0(a5)
	sw	a3, 12(a1)
	lw	a2, 64(a1)
	add	a3, a7, s0
	add	a4, a3, s1
	lw	a4, 0(a4)
	add	a5, t0, s0
	add	a6, a5, s1
	sw	a2, 0(a6)
	sw	a4, 64(a1)
	lw	a2, 68(a1)
	add	a4, a3, s3
	lw	a4, 0(a4)
	add	a6, a5, s3
	sw	a2, 0(a6)
	sw	a4, 68(a1)
	lw	a2, 72(a1)
	add	a4, a3, s4
	lw	a4, 0(a4)
	add	a6, a5, s4
	sw	a2, 0(a6)
	sw	a4, 72(a1)
	lw	a2, 76(a1)
	add	a3, a3, s5
	lw	a3, 0(a3)
	add	a5, a5, s5
	sw	a2, 0(a5)
	sw	a3, 76(a1)
	lw	a2, 128(a1)
	add	a3, a7, s2
	add	a4, a3, s1
	lw	a4, 0(a4)
	add	a5, t0, s2
	add	a6, a5, s1
	sw	a2, 0(a6)
	sw	a4, 128(a1)
	lw	a2, 132(a1)
	add	a4, a3, s3
	lw	a4, 0(a4)
	add	a6, a5, s3
	sw	a2, 0(a6)
	sw	a4, 132(a1)
	lw	a2, 136(a1)
	add	a4, a3, s4
	lw	a4, 0(a4)
	add	a6, a5, s4
	sw	a2, 0(a6)
	sw	a4, 136(a1)
	lw	a2, 140(a1)
	add	a3, a3, s5
	lw	a3, 0(a3)
	add	a5, a5, s5
	sw	a2, 0(a5)
	sw	a3, 140(a1)
	lw	a2, 192(a1)
	add	a3, a7, s7
	add	a4, a3, s1
	lw	a4, 0(a4)
	add	a5, t0, s7
	add	a6, a5, s1
	sw	a2, 0(a6)
	sw	a4, 192(a1)
	lw	a2, 196(a1)
	add	a4, a3, s3
	lw	a4, 0(a4)
	add	a6, a5, s3
	sw	a2, 0(a6)
	sw	a4, 196(a1)
	lw	a2, 200(a1)
	add	a4, a3, s4
	lw	a4, 0(a4)
	add	a6, a5, s4
	sw	a2, 0(a6)
	sw	a4, 200(a1)
	lw	a2, 204(a1)
	add	a3, a3, s5
	lw	a3, 0(a3)
	mv	s11, a0
	add	a5, a5, s5
	sw	a2, 0(a5)
	sw	a3, 204(a1)
	li	a2, 1
	ld	a0, 1000(sp)                    # 8-byte Folded Reload
	mv	a1, s10
	call	RDCost_for_4x4Blocks_Chroma
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	ld	a2, 1024(sp)                    # 8-byte Folded Reload
	add	a2, a1, a2
	lw	a3, 0(a2)
	lui	a5, %hi(rec_resR)
	addi	a5, a5, %lo(rec_resR)
	add	s6, a5, s6
	add	a4, s6, s1
	sw	a3, 0(a4)
	lw	a3, 4(a2)
	add	a4, s6, s3
	sw	a3, 0(a4)
	lw	a3, 8(a2)
	add	a4, s6, s4
	sw	a3, 0(a4)
	lw	a3, 12(a2)
	add	s6, s6, s5
	sw	a3, 0(s6)
	lw	a3, 64(a2)
	add	s0, a5, s0
	add	a4, s0, s1
	sw	a3, 0(a4)
	lw	a3, 68(a2)
	add	a4, s0, s3
	sw	a3, 0(a4)
	lw	a3, 72(a2)
	add	a4, s0, s4
	sw	a3, 0(a4)
	lw	a3, 76(a2)
	add	s0, s0, s5
	sw	a3, 0(s0)
	lw	a3, 128(a2)
	add	s2, a5, s2
	add	a4, s2, s1
	sw	a3, 0(a4)
	lw	a3, 132(a2)
	add	a4, s2, s3
	sw	a3, 0(a4)
	lw	a3, 136(a2)
	add	a4, s2, s4
	sw	a3, 0(a4)
	lw	a3, 140(a2)
	add	s2, s2, s5
	sw	a3, 0(s2)
	lw	a3, 192(a2)
	add	s7, a5, s7
	add	s1, s7, s1
	sw	a3, 0(s1)
	lw	a3, 196(a2)
	add	s3, s7, s3
	sw	a3, 0(s3)
	lw	a3, 200(a2)
	add	s4, s7, s4
	sw	a3, 0(s4)
	lw	a2, 204(a2)
	add	s5, s7, s5
	sw	a2, 0(s5)
	ld	a2, 1016(sp)                    # 8-byte Folded Reload
	add	s11, s11, a2
	add	s4, s11, a0
	addiw	s10, s10, 1
	addi	s8, s8, 2
	addi	s9, s9, 4
	li	a0, 4
	bne	s10, a0, .LBB1_31
# %bb.32:                               #   in Loop: Header=BB1_23 Depth=1
	call	reset_coding_state_cs_cm
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	li	a1, 0
	lui	a2, %hi(img)
	ld	t1, %lo(img)(a2)
	lui	a2, 2
	addiw	a2, a2, -1768
	add	a5, a0, a2
	ld	a7, 40(a5)
	lui	a0, 22
	addiw	a0, a0, -928
	add	a0, t1, a0
	lw	a2, 1352(a0)
	ld	a4, 0(a7)
	lw	a3, 1348(a0)
	ld	a6, 0(a5)
	ld	t0, 8(a7)
	ld	n17, 976(sp)                    # 8-byte Folded Reload
	add	a5, t1, n17
	ld	a7, 776(sp)                     # 8-byte Folded Reload
	add	a7, t1, a7
	ld	t2, 928(sp)                     # 8-byte Folded Reload
	add	t1, t1, t2
	lui	t2, %hi(rec_resG)
	addi	t2, t2, %lo(rec_resG)
	lui	t3, %hi(rec_resB)
	addi	t3, t3, %lo(rec_resB)
	lui	t4, %hi(rec_resR)
	addi	t4, t4, %lo(rec_resR)
	ld	s6, 752(sp)                     # 8-byte Folded Reload
	ld	s9, 744(sp)                     # 8-byte Folded Reload
	ld	s7, 720(sp)                     # 8-byte Folded Reload
	ld	s10, 864(sp)                    # 8-byte Folded Reload
	ld	s11, 856(sp)                    # 8-byte Folded Reload
	lui	s1, %hi(resTrans_R)
	addi	s1, s1, %lo(resTrans_R)
	lui	n12, %hi(dc_level_temp)
	addi	n12, n12, %lo(dc_level_temp)
	lui	n13, %hi(dc_level)
	addi	n13, n13, %lo(dc_level)
	lui	n14, %hi(cbp_chroma_block)
	addi	n14, n14, %lo(cbp_chroma_block)
	ld	s3, 728(sp)                     # 8-byte Folded Reload
	ld	n20, 984(sp)                    # 8-byte Folded Reload
	ld	n15, 784(sp)                    # 8-byte Folded Reload
	ld	s0, 944(sp)                     # 8-byte Folded Reload
	ld	n16, 712(sp)                    # 8-byte Folded Reload
	ld	s5, 936(sp)                     # 8-byte Folded Reload
	lui	s8, %hi(img)
	li	n18, 4
	li	n19, 16
	li	n21, 8
	ld	n22, 840(sp)                    # 8-byte Folded Reload
	ld	n23, 832(sp)                    # 8-byte Folded Reload
	ld	n24, 824(sp)                    # 8-byte Folded Reload
	ld	n25, 816(sp)                    # 8-byte Folded Reload
	ld	n26, 808(sp)                    # 8-byte Folded Reload
	ld	n27, 800(sp)                    # 8-byte Folded Reload
	lui	n28, %hi(cbp_chroma_block_temp)
	addi	n28, n28, %lo(cbp_chroma_block_temp)
	j	.LBB1_34
.LBB1_33:                               #   in Loop: Header=BB1_34 Depth=2
	addi	a1, a1, 1
	addi	a5, a5, 16
	addi	a7, a7, 32
	addi	t1, t1, 32
	addi	t4, t4, 64
	addi	t3, t3, 64
	addi	t2, t2, 64
	beq	a1, n21, .LBB1_42
.LBB1_34:                               #   Parent Loop BB1_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_36 Depth 3
	add	t5, a1, s9
	slli	t5, t5, 3
	add	t6, a4, t5
	add	n1, a6, t5
	add	t5, t0, t5
	ld	n2, 0(t5)
	ld	n1, 0(n1)
	ld	n3, 0(t6)
	li	t5, 0
	add	t6, n2, s6
	add	n1, n1, s6
	add	n2, n3, s6
	mv	n3, t2
	mv	n4, t3
	mv	n5, t4
	j	.LBB1_36
.LBB1_35:                               #   in Loop: Header=BB1_36 Depth=3
	add	n7, t6, t5
	sh	n6, 0(n7)
	addi	t5, t5, 2
	addi	n5, n5, 4
	addi	n4, n4, 4
	addi	n3, n3, 4
	beq	t5, n19, .LBB1_33
.LBB1_36:                               #   Parent Loop BB1_23 Depth=1
                                        #     Parent Loop BB1_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	n8, 0(n4)
	lw	n7, 0(n3)
	srai	n9, n8, 1
	lw	n6, 0(n5)
	add	n10, t1, t5
	lhu	n10, 0(n10)
	subw	n9, n7, n9
	srli	n7, n6, 1
	subw	n7, n9, n7
	addw	n10, n7, n10
	sgtz	n11, n10
	neg	n11, n11
	and	n11, n11, n10
	mv	n10, a2
	blt	a2, n11, .LBB1_38
# %bb.37:                               #   in Loop: Header=BB1_36 Depth=3
	mv	n10, n11
.LBB1_38:                               #   in Loop: Header=BB1_36 Depth=3
	add	n11, n2, t5
	sh	n10, 0(n11)
	add	n10, a5, t5
	lhu	n10, 0(n10)
	add	n8, n9, n8
	addw	n8, n8, n10
	sgtz	n9, n8
	neg	n9, n9
	and	n9, n9, n8
	mv	n8, a3
	blt	a3, n9, .LBB1_40
# %bb.39:                               #   in Loop: Header=BB1_36 Depth=3
	mv	n8, n9
.LBB1_40:                               #   in Loop: Header=BB1_36 Depth=3
	add	n9, n1, t5
	sh	n8, 0(n9)
	add	n8, a7, t5
	lhu	n8, 0(n8)
	add	n6, n7, n6
	addw	n6, n6, n8
	sgtz	n7, n6
	neg	n7, n7
	and	n7, n7, n6
	mv	n6, a2
	blt	a2, n7, .LBB1_35
# %bb.41:                               #   in Loop: Header=BB1_36 Depth=3
	mv	n6, n7
	j	.LBB1_35
.LBB1_42:                               #   in Loop: Header=BB1_23 Depth=1
	lui	a1, %hi(imgUV_org)
	ld	a2, %lo(imgUV_org)(a1)
	li	t6, 0
	ld	a1, 0(a0)
	ld	a3, 8(a2)
	lui	a0, %hi(imgY_org)
	ld	a7, %lo(imgY_org)(a0)
	ld	a5, 0(a2)
	add	a2, t0, s7
	add	a3, a3, s7
	add	a4, a4, s7
	add	a5, a5, s7
	add	a6, a6, s7
	add	a7, a7, s7
	ld	a0, 696(sp)                     # 8-byte Folded Reload
	add	t0, t0, a0
.LBB1_43:                               #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t1, 0(a7)
	ld	t2, 0(a6)
	add	a0, t1, s6
	lhu	a0, 0(a0)
	add	t3, t2, s6
	lhu	t3, 0(t3)
	sub	a0, a0, t3
	slli	a0, a0, 2
	ld	t3, 0(a5)
	add	a0, a1, a0
	ld	t4, 0(a4)
	lw	a0, 0(a0)
	add	t5, t3, s6
	lhu	n1, 0(t5)
	add	t5, t4, s6
	lhu	n2, 0(t5)
	ld	t5, 0(a3)
	add	n3, t6, a0
	ld	t6, 0(a2)
	sub	a0, n1, n2
	add	n1, t5, s6
	lhu	n1, 0(n1)
	add	n2, t6, s6
	lhu	n2, 0(n2)
	slli	a0, a0, 2
	add	a0, a1, a0
	lw	n4, 0(a0)
	sub	n1, n1, n2
	slli	a0, n16, 1
	add	n2, t1, a0
	lhu	n2, 0(n2)
	add	n5, t2, a0
	lhu	n5, 0(n5)
	slli	n1, n1, 2
	add	n1, a1, n1
	lw	n1, 0(n1)
	sub	n2, n2, n5
	add	n5, t3, a0
	lhu	n5, 0(n5)
	add	n6, t4, a0
	lhu	n6, 0(n6)
	slli	n2, n2, 2
	add	n2, a1, n2
	lw	n2, 0(n2)
	sub	n5, n5, n6
	slli	n5, n5, 2
	add	n5, a1, n5
	lw	n5, 0(n5)
	add	n6, t5, a0
	lhu	n6, 0(n6)
	add	n7, t6, a0
	lhu	n7, 0(n7)
	add	n1, n4, n1
	add	n1, n3, n1
	add	n2, n2, n5
	sub	n3, n6, n7
	add	n4, t1, n22
	lhu	n4, 0(n4)
	add	n5, t2, n22
	lhu	n5, 0(n5)
	slli	n3, n3, 2
	add	n3, a1, n3
	lw	n3, 0(n3)
	sub	n4, n4, n5
	add	n5, t3, n22
	lhu	n5, 0(n5)
	add	n6, t4, n22
	lhu	n6, 0(n6)
	slli	n4, n4, 2
	add	n4, a1, n4
	lw	n4, 0(n4)
	sub	n5, n5, n6
	slli	n5, n5, 2
	add	n5, a1, n5
	lw	n5, 0(n5)
	add	n6, t5, n22
	lhu	n6, 0(n6)
	add	n7, t6, n22
	lhu	n7, 0(n7)
	add	n2, n2, n3
	add	n1, n1, n2
	add	n4, n4, n5
	sub	n2, n6, n7
	add	n3, t1, n23
	lhu	n3, 0(n3)
	add	n5, t2, n23
	lhu	n5, 0(n5)
	slli	n2, n2, 2
	add	n2, a1, n2
	lw	n2, 0(n2)
	sub	n3, n3, n5
	slli	n3, n3, 2
	add	n3, a1, n3
	lw	n3, 0(n3)
	add	n5, t3, n23
	lhu	n5, 0(n5)
	add	n6, t4, n23
	lhu	n6, 0(n6)
	add	n2, n4, n2
	add	n2, n2, n3
	add	n1, n1, n2
	sub	n2, n5, n6
	add	n3, t5, n23
	lhu	n3, 0(n3)
	add	n4, t6, n23
	lhu	n4, 0(n4)
	slli	n2, n2, 2
	add	n2, a1, n2
	lw	n2, 0(n2)
	sub	n3, n3, n4
	add	n4, t1, n24
	lhu	n4, 0(n4)
	add	n5, t2, n24
	lhu	n5, 0(n5)
	slli	n3, n3, 2
	add	n3, a1, n3
	lw	n3, 0(n3)
	sub	n4, n4, n5
	add	n5, t3, n24
	lhu	n5, 0(n5)
	add	n6, t4, n24
	lhu	n6, 0(n6)
	slli	n4, n4, 2
	add	n4, a1, n4
	lw	n4, 0(n4)
	sub	n5, n5, n6
	slli	n5, n5, 2
	add	n5, a1, n5
	lw	n5, 0(n5)
	add	n6, t5, n24
	lhu	n6, 0(n6)
	add	n7, t6, n24
	lhu	n7, 0(n7)
	add	n2, n2, n3
	add	n2, n2, n4
	add	n2, n2, n5
	sub	n3, n6, n7
	add	n4, t1, n25
	lhu	n4, 0(n4)
	add	n5, t2, n25
	lhu	n5, 0(n5)
	slli	n3, n3, 2
	add	n3, a1, n3
	lw	n3, 0(n3)
	sub	n4, n4, n5
	add	n5, t3, n25
	lhu	n5, 0(n5)
	add	n6, t4, n25
	lhu	n6, 0(n6)
	slli	n4, n4, 2
	add	n4, a1, n4
	lw	n4, 0(n4)
	sub	n5, n5, n6
	slli	n5, n5, 2
	add	n5, a1, n5
	lw	n5, 0(n5)
	add	n6, t5, n25
	lhu	n6, 0(n6)
	add	n7, t6, n25
	lhu	n7, 0(n7)
	add	n2, n2, n3
	add	n1, n1, n2
	add	n4, n4, n5
	sub	n2, n6, n7
	add	n3, t1, n26
	lhu	n3, 0(n3)
	add	n5, t2, n26
	lhu	n5, 0(n5)
	slli	n2, n2, 2
	add	n2, a1, n2
	lw	n2, 0(n2)
	sub	n3, n3, n5
	add	n5, t3, n26
	lhu	n5, 0(n5)
	add	n6, t4, n26
	lhu	n6, 0(n6)
	slli	n3, n3, 2
	add	n3, a1, n3
	lw	n3, 0(n3)
	sub	n5, n5, n6
	slli	n5, n5, 2
	add	n5, a1, n5
	lw	n5, 0(n5)
	add	n6, t5, n26
	lhu	n6, 0(n6)
	add	n7, t6, n26
	lhu	n7, 0(n7)
	add	n2, n4, n2
	add	n2, n2, n3
	add	n2, n2, n5
	sub	n3, n6, n7
	add	t1, t1, n27
	lhu	t1, 0(t1)
	add	t2, t2, n27
	lhu	t2, 0(t2)
	slli	n3, n3, 2
	add	n3, a1, n3
	lw	n3, 0(n3)
	sub	t1, t1, t2
	add	t3, t3, n27
	lhu	t2, 0(t3)
	add	t4, t4, n27
	lhu	t3, 0(t4)
	slli	t1, t1, 2
	add	t1, a1, t1
	lw	t1, 0(t1)
	sub	t2, t2, t3
	add	t5, t5, n27
	lhu	t3, 0(t5)
	add	t6, t6, n27
	lhu	t4, 0(t6)
	slli	t2, t2, 2
	add	t2, a1, t2
	lw	t2, 0(t2)
	sub	t3, t3, t4
	slli	t3, t3, 2
	add	t3, a1, t3
	lw	t3, 0(t3)
	add	n2, n2, n3
	add	t6, n1, n2
	add	t1, t1, t2
	add	t1, t1, t3
	add	t6, t6, t1
	addi	a2, a2, 8
	addi	a3, a3, 8
	addi	a4, a4, 8
	addi	a5, a5, 8
	addi	a6, a6, 8
	addi	a7, a7, 8
	bne	a2, t0, .LBB1_43
# %bb.44:                               #   in Loop: Header=BB1_23 Depth=1
	fcvt.d.l	fa5, t6
	fcvt.d.w	fa4, s4
	fmadd.d	fa5, fs0, fa4, fa5
	flt.d	a1, fa5, fs2
	lui	s4, %hi(resTrans_G)
	addi	s4, s4, %lo(resTrans_G)
	bnez	a1, .LBB1_45
	j	.LBB1_22
.LBB1_45:                               #   in Loop: Header=BB1_23 Depth=1
	ld	a1, %lo(img)(s8)
	lui	a2, 3
	add	a1, a1, a2
	ld	a2, 1848(a1)
	lui	a1, %hi(cofAC8x8)
	ld	a1, %lo(cofAC8x8)(a1)
	ld	a3, 952(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 3
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
	ld	n1, 0(a7)
	ld	n2, 0(t3)
	ld	n3, 0(t2)
	addi	n4, n2, 260
.LBB1_46:                               #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	n5, 0(t0)
	sw	n5, 0(t1)
	lw	n5, 0(t4)
	sw	n5, 0(t5)
	lw	n5, 0(t6)
	sw	n5, 0(n1)
	lw	n5, 0(n3)
	sw	n5, 0(n2)
	addi	n2, n2, 4
	addi	n3, n3, 4
	addi	n1, n1, 4
	addi	t6, t6, 4
	addi	t5, t5, 4
	addi	t4, t4, 4
	addi	t1, t1, 4
	addi	t0, t0, 4
	bne	n2, n4, .LBB1_46
# %bb.47:                               #   in Loop: Header=BB1_23 Depth=1
	ld	a1, 8(a1)
	ld	a3, 8(a3)
	ld	a4, 8(a4)
	ld	a5, 8(a5)
	ld	a6, 8(a6)
	ld	a7, 8(a7)
	ld	t0, 8(t3)
	ld	t1, 8(t2)
	addi	t2, t0, 260
.LBB1_48:                               #   Parent Loop BB1_23 Depth=1
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
	bne	t0, t2, .LBB1_48
# %bb.49:                               #   in Loop: Header=BB1_23 Depth=1
	lui	a1, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a1)
	ld	a1, 32(a2)
	ld	a2, 64(a2)
	lui	a4, 2
	add	a3, a3, a4
	ld	a3, -1728(a3)
	li	a4, 0
	addi	a5, sp, 1288
	ld	a6, 128(sp)                     # 8-byte Folded Reload
.LBB1_50:                               #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a1)
	ld	t0, 0(a7)
	lw	t1, 0(t0)
	sw	t1, -576(a6)
	lw	t1, 4(t0)
	sw	t1, -572(a6)
	lw	t1, 8(t0)
	sw	t1, -568(a6)
	lw	t1, 12(t0)
	sw	t1, -564(a6)
	lw	t1, 16(t0)
	sw	t1, -560(a6)
	lw	t1, 20(t0)
	sw	t1, -556(a6)
	lw	t1, 24(t0)
	sw	t1, -552(a6)
	lw	t1, 28(t0)
	sw	t1, -548(a6)
	lw	t1, 32(t0)
	sw	t1, -544(a6)
	lw	t1, 36(t0)
	sw	t1, -540(a6)
	lw	t1, 40(t0)
	sw	t1, -536(a6)
	lw	t1, 44(t0)
	sw	t1, -532(a6)
	lw	t1, 48(t0)
	sw	t1, -528(a6)
	lw	t1, 52(t0)
	sw	t1, -524(a6)
	lw	t1, 56(t0)
	sw	t1, -520(a6)
	lw	t1, 60(t0)
	sw	t1, -516(a6)
	lw	t1, 64(t0)
	sw	t1, -512(a6)
	lw	t0, 68(t0)
	ld	a7, 8(a7)
	sw	t0, -508(a6)
	lw	t0, 0(a7)
	sw	t0, -504(a6)
	lw	t0, 4(a7)
	sw	t0, -500(a6)
	lw	t0, 8(a7)
	sw	t0, -496(a6)
	lw	t0, 12(a7)
	sw	t0, -492(a6)
	lw	t0, 16(a7)
	sw	t0, -488(a6)
	lw	t0, 20(a7)
	sw	t0, -484(a6)
	lw	t0, 24(a7)
	sw	t0, -480(a6)
	lw	t0, 28(a7)
	sw	t0, -476(a6)
	lw	t0, 32(a7)
	sw	t0, -472(a6)
	lw	t0, 36(a7)
	sw	t0, -468(a6)
	lw	t0, 40(a7)
	sw	t0, -464(a6)
	lw	t0, 44(a7)
	sw	t0, -460(a6)
	lw	t0, 48(a7)
	sw	t0, -456(a6)
	lw	t0, 52(a7)
	sw	t0, -452(a6)
	lw	t0, 56(a7)
	sw	t0, -448(a6)
	lw	t0, 60(a7)
	sw	t0, -444(a6)
	lw	t0, 64(a7)
	ld	t1, 0(a2)
	sw	t0, -440(a6)
	lw	a7, 68(a7)
	ld	t0, 0(t1)
	sw	a7, -436(a6)
	lw	a7, 0(t0)
	sw	a7, 0(a6)
	lw	a7, 4(t0)
	sw	a7, 4(a6)
	lw	a7, 8(t0)
	sw	a7, 8(a6)
	lw	a7, 12(t0)
	sw	a7, 12(a6)
	lw	a7, 16(t0)
	sw	a7, 16(a6)
	lw	a7, 20(t0)
	sw	a7, 20(a6)
	lw	a7, 24(t0)
	sw	a7, 24(a6)
	lw	a7, 28(t0)
	sw	a7, 28(a6)
	lw	a7, 32(t0)
	sw	a7, 32(a6)
	lw	a7, 36(t0)
	sw	a7, 36(a6)
	lw	a7, 40(t0)
	sw	a7, 40(a6)
	lw	a7, 44(t0)
	sw	a7, 44(a6)
	lw	a7, 48(t0)
	sw	a7, 48(a6)
	lw	a7, 52(t0)
	sw	a7, 52(a6)
	lw	a7, 56(t0)
	sw	a7, 56(a6)
	lw	a7, 60(t0)
	sw	a7, 60(a6)
	lw	a7, 64(t0)
	sw	a7, 64(a6)
	lw	a7, 68(t0)
	ld	t0, 8(t1)
	sw	a7, 68(a6)
	lw	a7, 0(t0)
	sw	a7, 72(a6)
	lw	a7, 4(t0)
	sw	a7, 76(a6)
	lw	a7, 8(t0)
	sw	a7, 80(a6)
	lw	a7, 12(t0)
	sw	a7, 84(a6)
	lw	a7, 16(t0)
	sw	a7, 88(a6)
	lw	a7, 20(t0)
	sw	a7, 92(a6)
	lw	a7, 24(t0)
	sw	a7, 96(a6)
	lw	a7, 28(t0)
	sw	a7, 100(a6)
	lw	a7, 32(t0)
	sw	a7, 104(a6)
	lw	a7, 36(t0)
	sw	a7, 108(a6)
	lw	a7, 40(t0)
	sw	a7, 112(a6)
	lw	a7, 44(t0)
	sw	a7, 116(a6)
	lw	a7, 48(t0)
	sw	a7, 120(a6)
	lw	a7, 52(t0)
	sw	a7, 124(a6)
	lw	a7, 56(t0)
	sw	a7, 128(a6)
	lw	a7, 60(t0)
	sw	a7, 132(a6)
	lw	a7, 64(t0)
	sw	a7, 136(a6)
	lw	a7, 68(t0)
	andi	t0, a4, 1
	srliw	t1, a4, 1
	slli	t2, t0, 2
	sw	a7, 140(a6)
	slli	a7, t1, 2
	or	t0, t0, s10
	or	t1, t1, s11
	addw	t3, a7, s9
	addw	t2, t2, n15
	slli	t0, t0, 4
	add	a7, n12, t0
	slli	t1, t1, 2
	add	t4, a7, t1
	lw	a7, 0(t4)
	add	t5, n13, t0
	add	t5, t5, t1
	ld	t6, 0(a3)
	sw	a7, 0(t5)
	add	a7, n28, t0
	slli	n1, t3, 3
	add	n2, t6, n1
	ld	n2, 0(n2)
	add	n3, a7, t1
	lw	n4, 0(n3)
	slli	a7, t2, 1
	add	n5, n2, a7
	lhu	n5, 0(n5)
	add	t0, n14, t0
	add	n6, t0, t1
	sw	n4, 0(n6)
	sw	n5, -256(a5)
	addiw	t0, t2, 1
	slli	t0, t0, 1
	add	t1, n2, t0
	lhu	n4, 0(t1)
	addiw	t1, t2, 2
	slli	t1, t1, 1
	add	n5, n2, t1
	lhu	n5, 0(n5)
	addiw	t2, t2, 3
	addiw	n7, t3, 1
	slli	n7, n7, 3
	add	n8, t6, n7
	ld	n8, 0(n8)
	slli	t2, t2, 1
	add	n2, n2, t2
	lhu	n2, 0(n2)
	add	n9, n8, a7
	lhu	n9, 0(n9)
	sw	n4, -252(a5)
	sw	n5, -248(a5)
	sw	n2, -244(a5)
	sw	n9, -240(a5)
	add	n2, n8, t0
	lhu	n2, 0(n2)
	add	n4, n8, t1
	addiw	n5, t3, 2
	slli	n5, n5, 3
	add	n9, t6, n5
	ld	n9, 0(n9)
	lhu	n4, 0(n4)
	add	n8, n8, t2
	lhu	n8, 0(n8)
	add	n10, n9, a7
	lhu	n10, 0(n10)
	sw	n2, -236(a5)
	sw	n4, -232(a5)
	sw	n8, -228(a5)
	sw	n10, -224(a5)
	add	n2, n9, t0
	lhu	n2, 0(n2)
	add	n4, n9, t1
	lhu	n4, 0(n4)
	add	n9, n9, t2
	lhu	n8, 0(n9)
	addiw	t3, t3, 3
	slli	t3, t3, 3
	add	t6, t6, t3
	ld	t6, 0(t6)
	sw	n2, -220(a5)
	sw	n4, -216(a5)
	sw	n8, -212(a5)
	add	n2, t6, a7
	lhu	n2, 0(n2)
	add	n4, t6, t0
	lhu	n4, 0(n4)
	add	n8, t6, t1
	lhu	n8, 0(n8)
	sw	n2, -208(a5)
	ld	n2, 8(a3)
	sw	n4, -204(a5)
	sw	n8, -200(a5)
	add	t6, t6, t2
	add	n1, n2, n1
	ld	n1, 0(n1)
	lhu	t6, 0(t6)
	lw	t4, 64(t4)
	lw	n3, 64(n3)
	add	n4, n1, a7
	lhu	n4, 0(n4)
	sw	t6, -196(a5)
	sw	t4, 64(t5)
	sw	n3, 64(n6)
	sw	n4, 0(a5)
	add	t4, n1, t0
	lhu	t4, 0(t4)
	add	t5, n1, t1
	add	n7, n2, n7
	ld	t6, 0(n7)
	lhu	t5, 0(t5)
	add	n1, n1, t2
	lhu	n1, 0(n1)
	add	n3, t6, a7
	lhu	n3, 0(n3)
	sw	t4, 4(a5)
	sw	t5, 8(a5)
	sw	n1, 12(a5)
	sw	n3, 16(a5)
	add	t4, t6, t0
	lhu	t4, 0(t4)
	add	t5, t6, t1
	add	n5, n2, n5
	ld	n1, 0(n5)
	lhu	t5, 0(t5)
	add	t6, t6, t2
	lhu	t6, 0(t6)
	add	n3, n1, a7
	lhu	n3, 0(n3)
	sw	t4, 20(a5)
	sw	t5, 24(a5)
	sw	t6, 28(a5)
	sw	n3, 32(a5)
	add	t4, n1, t0
	lhu	t4, 0(t4)
	add	t5, n1, t1
	lhu	t5, 0(t5)
	add	n1, n1, t2
	lhu	t6, 0(n1)
	add	t3, n2, t3
	ld	t3, 0(t3)
	sw	t4, 36(a5)
	sw	t5, 40(a5)
	sw	t6, 44(a5)
	add	a7, t3, a7
	lhu	a7, 0(a7)
	add	t0, t3, t0
	lhu	t0, 0(t0)
	add	t1, t3, t1
	lhu	t1, 0(t1)
	add	t2, t3, t2
	lhu	t2, 0(t2)
	sw	a7, 48(a5)
	sw	t0, 52(a5)
	sw	t1, 56(a5)
	sw	t2, 60(a5)
	addiw	a4, a4, 1
	addi	a1, a1, 8
	addi	a2, a2, 8
	addi	a6, a6, 144
	addi	a5, a5, 64
	bne	a4, n18, .LBB1_50
# %bb.51:                               #   in Loop: Header=BB1_23 Depth=1
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	lui	a2, 2
	add	a1, a1, a2
	ld	a1, -1768(a1)
	add	a1, a1, s7
	ld	a2, 0(a1)
	add	a3, a2, s6
	lhu	a3, 0(a3)
	sd	a3, 216(sp)                     # 8-byte Folded Spill
	add	a3, a2, a0
	lhu	a3, 0(a3)
	sd	a3, 208(sp)                     # 8-byte Folded Spill
	ld	a5, 840(sp)                     # 8-byte Folded Reload
	add	a3, a2, a5
	lhu	a3, 0(a3)
	sd	a3, 200(sp)                     # 8-byte Folded Spill
	ld	a6, 832(sp)                     # 8-byte Folded Reload
	add	a3, a2, a6
	lhu	a3, 0(a3)
	sd	a3, 192(sp)                     # 8-byte Folded Spill
	ld	a7, 824(sp)                     # 8-byte Folded Reload
	add	a3, a2, a7
	lhu	a3, 0(a3)
	sd	a3, 184(sp)                     # 8-byte Folded Spill
	ld	t0, 816(sp)                     # 8-byte Folded Reload
	add	a3, a2, t0
	lhu	a3, 0(a3)
	sd	a3, 176(sp)                     # 8-byte Folded Spill
	ld	t1, 808(sp)                     # 8-byte Folded Reload
	add	a3, a2, t1
	ld	a4, 8(a1)
	lhu	a3, 0(a3)
	sd	a3, 168(sp)                     # 8-byte Folded Spill
	ld	t2, 800(sp)                     # 8-byte Folded Reload
	add	a2, a2, t2
	lhu	a2, 0(a2)
	sd	a2, 160(sp)                     # 8-byte Folded Spill
	add	a2, a4, s6
	lhu	a2, 0(a2)
	sd	a2, 280(sp)                     # 8-byte Folded Spill
	add	a2, a4, a0
	lhu	a2, 0(a2)
	sd	a2, 272(sp)                     # 8-byte Folded Spill
	add	a2, a4, a5
	lhu	a2, 0(a2)
	sd	a2, 264(sp)                     # 8-byte Folded Spill
	add	a2, a4, a6
	lhu	a2, 0(a2)
	sd	a2, 256(sp)                     # 8-byte Folded Spill
	add	a2, a4, a7
	lhu	a2, 0(a2)
	sd	a2, 248(sp)                     # 8-byte Folded Spill
	add	a2, a4, t0
	lhu	a2, 0(a2)
	sd	a2, 240(sp)                     # 8-byte Folded Spill
	add	a2, a4, t1
	ld	a3, 16(a1)
	lhu	a2, 0(a2)
	sd	a2, 232(sp)                     # 8-byte Folded Spill
	add	a4, a4, t2
	lhu	a2, 0(a4)
	sd	a2, 224(sp)                     # 8-byte Folded Spill
	add	a2, a3, s6
	lhu	a2, 0(a2)
	sd	a2, 344(sp)                     # 8-byte Folded Spill
	add	a2, a3, a0
	lhu	a2, 0(a2)
	sd	a2, 336(sp)                     # 8-byte Folded Spill
	add	a2, a3, a5
	lhu	a2, 0(a2)
	sd	a2, 328(sp)                     # 8-byte Folded Spill
	add	a2, a3, a6
	lhu	a2, 0(a2)
	sd	a2, 320(sp)                     # 8-byte Folded Spill
	add	a2, a3, a7
	lhu	a2, 0(a2)
	sd	a2, 312(sp)                     # 8-byte Folded Spill
	add	a2, a3, t0
	lhu	a2, 0(a2)
	sd	a2, 304(sp)                     # 8-byte Folded Spill
	add	a2, a3, t1
	ld	a4, 24(a1)
	lhu	a2, 0(a2)
	sd	a2, 296(sp)                     # 8-byte Folded Spill
	add	a3, a3, t2
	lhu	a2, 0(a3)
	sd	a2, 288(sp)                     # 8-byte Folded Spill
	add	a2, a4, s6
	lhu	a2, 0(a2)
	sd	a2, 408(sp)                     # 8-byte Folded Spill
	add	a2, a4, a0
	lhu	a2, 0(a2)
	sd	a2, 400(sp)                     # 8-byte Folded Spill
	add	a2, a4, a5
	lhu	a2, 0(a2)
	sd	a2, 392(sp)                     # 8-byte Folded Spill
	add	a2, a4, a6
	lhu	a2, 0(a2)
	sd	a2, 384(sp)                     # 8-byte Folded Spill
	add	a2, a4, a7
	lhu	a2, 0(a2)
	sd	a2, 376(sp)                     # 8-byte Folded Spill
	add	a2, a4, t0
	lhu	a2, 0(a2)
	sd	a2, 368(sp)                     # 8-byte Folded Spill
	add	a2, a4, t1
	ld	a3, 32(a1)
	lhu	a2, 0(a2)
	sd	a2, 360(sp)                     # 8-byte Folded Spill
	add	a4, a4, t2
	lhu	a2, 0(a4)
	sd	a2, 352(sp)                     # 8-byte Folded Spill
	add	a2, a3, s6
	lhu	a2, 0(a2)
	sd	a2, 472(sp)                     # 8-byte Folded Spill
	add	a2, a3, a0
	lhu	a2, 0(a2)
	sd	a2, 464(sp)                     # 8-byte Folded Spill
	add	a2, a3, a5
	lhu	a2, 0(a2)
	sd	a2, 456(sp)                     # 8-byte Folded Spill
	add	a2, a3, a6
	lhu	a2, 0(a2)
	sd	a2, 448(sp)                     # 8-byte Folded Spill
	add	a2, a3, a7
	lhu	a2, 0(a2)
	sd	a2, 440(sp)                     # 8-byte Folded Spill
	add	a2, a3, t0
	lhu	a2, 0(a2)
	sd	a2, 432(sp)                     # 8-byte Folded Spill
	add	a2, a3, t1
	ld	a4, 40(a1)
	lhu	a2, 0(a2)
	sd	a2, 424(sp)                     # 8-byte Folded Spill
	add	a3, a3, t2
	lhu	a2, 0(a3)
	sd	a2, 416(sp)                     # 8-byte Folded Spill
	add	a2, a4, s6
	lhu	a2, 0(a2)
	sd	a2, 536(sp)                     # 8-byte Folded Spill
	add	a2, a4, a0
	lhu	a2, 0(a2)
	sd	a2, 528(sp)                     # 8-byte Folded Spill
	add	a2, a4, a5
	lhu	a2, 0(a2)
	sd	a2, 520(sp)                     # 8-byte Folded Spill
	add	a2, a4, a6
	lhu	a2, 0(a2)
	sd	a2, 512(sp)                     # 8-byte Folded Spill
	add	a2, a4, a7
	lhu	a2, 0(a2)
	sd	a2, 504(sp)                     # 8-byte Folded Spill
	add	a2, a4, t0
	lhu	a2, 0(a2)
	sd	a2, 496(sp)                     # 8-byte Folded Spill
	add	a2, a4, t1
	ld	a3, 48(a1)
	lhu	a2, 0(a2)
	sd	a2, 488(sp)                     # 8-byte Folded Spill
	add	a4, a4, t2
	lhu	a2, 0(a4)
	sd	a2, 480(sp)                     # 8-byte Folded Spill
	add	a2, a3, s6
	lhu	a2, 0(a2)
	sd	a2, 600(sp)                     # 8-byte Folded Spill
	add	a2, a3, a0
	lhu	a2, 0(a2)
	sd	a2, 592(sp)                     # 8-byte Folded Spill
	add	a2, a3, a5
	lhu	a2, 0(a2)
	sd	a2, 584(sp)                     # 8-byte Folded Spill
	add	a2, a3, a6
	lhu	a2, 0(a2)
	sd	a2, 576(sp)                     # 8-byte Folded Spill
	add	a2, a3, a7
	lhu	a2, 0(a2)
	sd	a2, 568(sp)                     # 8-byte Folded Spill
	add	a2, a3, t0
	lhu	a2, 0(a2)
	sd	a2, 560(sp)                     # 8-byte Folded Spill
	add	a2, a3, t1
	ld	a1, 56(a1)
	lhu	a2, 0(a2)
	sd	a2, 552(sp)                     # 8-byte Folded Spill
	add	a3, a3, t2
	lhu	a2, 0(a3)
	sd	a2, 544(sp)                     # 8-byte Folded Spill
	add	a2, a1, s6
	lhu	a2, 0(a2)
	sd	a2, 664(sp)                     # 8-byte Folded Spill
	add	a0, a1, a0
	lhu	a0, 0(a0)
	sd	a0, 656(sp)                     # 8-byte Folded Spill
	add	a0, a1, a5
	lhu	a0, 0(a0)
	sd	a0, 648(sp)                     # 8-byte Folded Spill
	add	a0, a1, a6
	lhu	a0, 0(a0)
	sd	a0, 640(sp)                     # 8-byte Folded Spill
	add	a0, a1, a7
	lhu	a0, 0(a0)
	sd	a0, 632(sp)                     # 8-byte Folded Spill
	add	a0, a1, t0
	lhu	a0, 0(a0)
	sd	a0, 624(sp)                     # 8-byte Folded Spill
	add	a0, a1, t1
	lhu	a0, 0(a0)
	sd	a0, 616(sp)                     # 8-byte Folded Spill
	add	a1, a1, t2
	lhu	a0, 0(a1)
	sd	a0, 608(sp)                     # 8-byte Folded Spill
	addi	a0, sp, 2047
	addi	a0, a0, 1609
	lw	a0, 256(a0)
	sd	a0, 672(sp)                     # 8-byte Folded Spill
	fmv.d	fs2, fa5
	ld	a0, 992(sp)                     # 8-byte Folded Reload
	sd	a0, 792(sp)                     # 8-byte Folded Spill
	j	.LBB1_22
.LBB1_52:                               #   in Loop: Header=BB1_23 Depth=1
	mv	s2, n17
	ld	a2, 0(s3)
	slli	a3, s0, 7
	add	a4, a2, n20
	lhu	a4, 0(a4)
	ld	a5, 680(sp)                     # 8-byte Folded Reload
	add	a3, a3, a5
	add	a1, a1, a3
	lhu	a3, 0(a1)
	ld	t0, 920(sp)                     # 8-byte Folded Reload
	add	a5, a2, t0
	lhu	a5, 0(a5)
	lhu	a6, 2(a1)
	subw	a4, a4, a3
	addi	n1, sp, 2047
	addi	n1, n1, 1609
	sw	a4, 0(n1)
	subw	a3, a5, a6
	ld	t1, 912(sp)                     # 8-byte Folded Reload
	add	a4, a2, t1
	lhu	a4, 0(a4)
	lhu	a5, 4(a1)
	ld	t2, 904(sp)                     # 8-byte Folded Reload
	add	a6, a2, t2
	lhu	a6, 0(a6)
	lhu	a7, 6(a1)
	sw	a3, 4(n1)
	subw	a4, a4, a5
	sw	a4, 8(n1)
	subw	a3, a6, a7
	ld	t3, 896(sp)                     # 8-byte Folded Reload
	add	a4, a2, t3
	lhu	a4, 0(a4)
	lhu	a5, 8(a1)
	ld	t4, 888(sp)                     # 8-byte Folded Reload
	add	a6, a2, t4
	lhu	a6, 0(a6)
	lhu	a7, 10(a1)
	sw	a3, 12(n1)
	subw	a4, a4, a5
	sw	a4, 16(n1)
	subw	a3, a6, a7
	sw	a3, 20(n1)
	ld	t5, 880(sp)                     # 8-byte Folded Reload
	add	a3, a2, t5
	lhu	a3, 0(a3)
	lhu	a4, 12(a1)
	ld	t6, 872(sp)                     # 8-byte Folded Reload
	add	a2, a2, t6
	lhu	a2, 0(a2)
	lhu	a5, 14(a1)
	ld	a6, 8(s3)
	subw	a3, a3, a4
	sw	a3, 24(n1)
	subw	a2, a2, a5
	add	a3, a6, n20
	lhu	a3, 0(a3)
	lhu	a4, 16(a1)
	add	a5, a6, t0
	lhu	a5, 0(a5)
	lhu	a7, 18(a1)
	sw	a2, 28(n1)
	subw	a3, a3, a4
	sw	a3, 32(n1)
	subw	a2, a5, a7
	add	a3, a6, t1
	lhu	a3, 0(a3)
	lhu	a4, 20(a1)
	add	a5, a6, t2
	lhu	a5, 0(a5)
	lhu	a7, 22(a1)
	sw	a2, 36(n1)
	subw	a3, a3, a4
	sw	a3, 40(n1)
	subw	a2, a5, a7
	add	a3, a6, t3
	lhu	a3, 0(a3)
	lhu	a4, 24(a1)
	add	a5, a6, t4
	lhu	a5, 0(a5)
	lhu	a7, 26(a1)
	sw	a2, 44(n1)
	subw	a3, a3, a4
	sw	a3, 48(n1)
	subw	a2, a5, a7
	sw	a2, 52(n1)
	add	a2, a6, t5
	lhu	a2, 0(a2)
	lhu	a3, 28(a1)
	add	a6, a6, t6
	lhu	a4, 0(a6)
	lhu	a5, 30(a1)
	ld	a6, 16(s3)
	subw	a2, a2, a3
	sw	a2, 56(n1)
	subw	a4, a4, a5
	add	a2, a6, n20
	lhu	a2, 0(a2)
	lhu	a3, 32(a1)
	add	a5, a6, t0
	lhu	a5, 0(a5)
	lhu	a7, 34(a1)
	sw	a4, 60(n1)
	subw	a2, a2, a3
	sw	a2, 64(n1)
	subw	a2, a5, a7
	add	a3, a6, t1
	lhu	a3, 0(a3)
	lhu	a4, 36(a1)
	add	a5, a6, t2
	lhu	a5, 0(a5)
	lhu	a7, 38(a1)
	sw	a2, 68(n1)
	subw	a3, a3, a4
	sw	a3, 72(n1)
	subw	a2, a5, a7
	add	a3, a6, t3
	lhu	a3, 0(a3)
	lhu	a4, 40(a1)
	add	a5, a6, t4
	lhu	a5, 0(a5)
	lhu	a7, 42(a1)
	sw	a2, 76(n1)
	subw	a3, a3, a4
	sw	a3, 80(n1)
	subw	a2, a5, a7
	sw	a2, 84(n1)
	add	a2, a6, t5
	lhu	a2, 0(a2)
	lhu	a3, 44(a1)
	add	a6, a6, t6
	lhu	a4, 0(a6)
	lhu	a5, 46(a1)
	ld	a6, 24(s3)
	subw	a2, a2, a3
	sw	a2, 88(n1)
	subw	a4, a4, a5
	add	a2, a6, n20
	lhu	a2, 0(a2)
	lhu	a3, 48(a1)
	add	a5, a6, t0
	lhu	a5, 0(a5)
	lhu	a7, 50(a1)
	sw	a4, 92(n1)
	subw	a2, a2, a3
	sw	a2, 96(n1)
	subw	a2, a5, a7
	add	a3, a6, t1
	lhu	a3, 0(a3)
	lhu	a4, 52(a1)
	add	a5, a6, t2
	lhu	a5, 0(a5)
	lhu	a7, 54(a1)
	sw	a2, 100(n1)
	subw	a3, a3, a4
	sw	a3, 104(n1)
	subw	a2, a5, a7
	add	a3, a6, t3
	lhu	a3, 0(a3)
	lhu	a4, 56(a1)
	add	a5, a6, t4
	lhu	a5, 0(a5)
	lhu	a7, 58(a1)
	sw	a2, 108(n1)
	subw	a3, a3, a4
	sw	a3, 112(n1)
	subw	a2, a5, a7
	sw	a2, 116(n1)
	add	a2, a6, t5
	lhu	a2, 0(a2)
	lhu	a3, 60(a1)
	add	a6, a6, t6
	lhu	a4, 0(a6)
	lhu	a5, 62(a1)
	ld	a6, 32(s3)
	subw	a2, a2, a3
	sw	a2, 120(n1)
	subw	a4, a4, a5
	add	a2, a6, n20
	lhu	a2, 0(a2)
	lhu	a3, 64(a1)
	add	a5, a6, t0
	lhu	a5, 0(a5)
	lhu	a7, 66(a1)
	sw	a4, 124(n1)
	subw	a2, a2, a3
	sw	a2, 128(n1)
	subw	a2, a5, a7
	add	a3, a6, t1
	lhu	a3, 0(a3)
	lhu	a4, 68(a1)
	add	a5, a6, t2
	lhu	a5, 0(a5)
	lhu	a7, 70(a1)
	sw	a2, 132(n1)
	subw	a3, a3, a4
	sw	a3, 136(n1)
	subw	a2, a5, a7
	add	a3, a6, t3
	lhu	a3, 0(a3)
	lhu	a4, 72(a1)
	add	a5, a6, t4
	lhu	a5, 0(a5)
	lhu	a7, 74(a1)
	sw	a2, 140(n1)
	subw	a3, a3, a4
	sw	a3, 144(n1)
	subw	a2, a5, a7
	sw	a2, 148(n1)
	add	a2, a6, t5
	lhu	a2, 0(a2)
	lhu	a3, 76(a1)
	add	a6, a6, t6
	lhu	a4, 0(a6)
	lhu	a5, 78(a1)
	ld	a6, 40(s3)
	subw	a2, a2, a3
	sw	a2, 152(n1)
	subw	a4, a4, a5
	add	a2, a6, n20
	lhu	a2, 0(a2)
	lhu	a3, 80(a1)
	add	a5, a6, t0
	lhu	a5, 0(a5)
	lhu	a7, 82(a1)
	sw	a4, 156(n1)
	subw	a2, a2, a3
	sw	a2, 160(n1)
	subw	a2, a5, a7
	add	a3, a6, t1
	lhu	a3, 0(a3)
	lhu	a4, 84(a1)
	add	a5, a6, t2
	lhu	a5, 0(a5)
	lhu	a7, 86(a1)
	sw	a2, 164(n1)
	subw	a3, a3, a4
	sw	a3, 168(n1)
	subw	a2, a5, a7
	add	a3, a6, t3
	lhu	a3, 0(a3)
	lhu	a4, 88(a1)
	add	a5, a6, t4
	lhu	a5, 0(a5)
	lhu	a7, 90(a1)
	sw	a2, 172(n1)
	subw	a3, a3, a4
	sw	a3, 176(n1)
	subw	a2, a5, a7
	sw	a2, 180(n1)
	add	a2, a6, t5
	lhu	a2, 0(a2)
	lhu	a3, 92(a1)
	add	a6, a6, t6
	lhu	a4, 0(a6)
	lhu	a5, 94(a1)
	ld	a6, 48(s3)
	subw	a2, a2, a3
	sw	a2, 184(n1)
	subw	a4, a4, a5
	add	a2, a6, n20
	lhu	a2, 0(a2)
	lhu	a3, 96(a1)
	add	a5, a6, t0
	lhu	a5, 0(a5)
	lhu	a7, 98(a1)
	sw	a4, 188(n1)
	subw	a2, a2, a3
	sw	a2, 192(n1)
	subw	a2, a5, a7
	add	a3, a6, t1
	lhu	a3, 0(a3)
	lhu	a4, 100(a1)
	add	a5, a6, t2
	lhu	a5, 0(a5)
	lhu	a7, 102(a1)
	sw	a2, 196(n1)
	subw	a3, a3, a4
	sw	a3, 200(n1)
	subw	a2, a5, a7
	add	a3, a6, t3
	lhu	a3, 0(a3)
	lhu	a4, 104(a1)
	add	a5, a6, t4
	lhu	a5, 0(a5)
	lhu	a7, 106(a1)
	sw	a2, 204(n1)
	subw	a3, a3, a4
	sw	a3, 208(n1)
	subw	a2, a5, a7
	sw	a2, 212(n1)
	add	a2, a6, t5
	lhu	a2, 0(a2)
	lhu	a3, 108(a1)
	add	a6, a6, t6
	lhu	a4, 0(a6)
	lhu	a5, 110(a1)
	ld	a6, 56(s3)
	subw	a2, a2, a3
	sw	a2, 216(n1)
	subw	a4, a4, a5
	mv	s8, n20
	add	a2, a6, n20
	lhu	a2, 0(a2)
	lhu	a3, 112(a1)
	add	a5, a6, t0
	lhu	a5, 0(a5)
	lhu	a7, 114(a1)
	sw	a4, 220(n1)
	subw	a2, a2, a3
	sw	a2, 224(n1)
	subw	a2, a5, a7
	add	a3, a6, t1
	lhu	a3, 0(a3)
	lhu	a4, 116(a1)
	add	a5, a6, t2
	lhu	a5, 0(a5)
	lhu	a7, 118(a1)
	sw	a2, 228(n1)
	subw	a3, a3, a4
	sw	a3, 232(n1)
	subw	a2, a5, a7
	add	a3, a6, t3
	lhu	a3, 0(a3)
	lhu	a4, 120(a1)
	add	a5, a6, t4
	lhu	a5, 0(a5)
	lhu	a7, 122(a1)
	sw	a2, 236(n1)
	subw	a3, a3, a4
	sw	a3, 240(n1)
	subw	a2, a5, a7
	add	a3, a6, t5
	lhu	a3, 0(a3)
	lhu	a4, 124(a1)
	add	a6, a6, t6
	lhu	a5, 0(a6)
	lhu	a1, 126(a1)
	sw	a2, 244(n1)
	subw	a3, a3, a4
	sw	a3, 248(n1)
	subw	a5, a5, a1
	sw	a5, 252(n1)
	ld	a1, 960(sp)                     # 8-byte Folded Reload
	mv	s5, s0
	xor	a2, s0, a1
	lw	a1, 24(a0)
	seqz	a0, a2
	addi	a0, a0, -1
	ld	s0, 688(sp)                     # 8-byte Folded Reload
	and	s0, a0, s0
	addi	a0, sp, 2047
	addi	a0, a0, 1609
	call	SATD8X8
	ld	a2, 760(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a2)
	addw	a0, a0, s0
	blt	a0, a1, .LBB1_53
	j	.LBB1_20
.LBB1_53:                               #   in Loop: Header=BB1_23 Depth=1
	sw	a0, 0(a2)
	ld	a0, 992(sp)                     # 8-byte Folded Reload
	sd	a0, 792(sp)                     # 8-byte Folded Spill
	j	.LBB1_20
.LBB1_54:                               #   in Loop: Header=BB1_23 Depth=1
	addi	a0, s0, -1
	seqz	a0, a0
	addi	a1, s0, -8
	seqz	a1, a1
	or	a0, a0, a1
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	mv	a3, s0
	and	a0, a0, a1
	beqz	a0, .LBB1_55
	j	.LBB1_26
.LBB1_55:                               #   in Loop: Header=BB1_23 Depth=1
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB1_96
	j	.LBB1_22
.LBB1_96:                               #   in Loop: Header=BB1_23 Depth=1
	j	.LBB1_26
.LBB1_56:                               # %.preheader
                                        #   in Loop: Header=BB1_23 Depth=1
	lui	a0, 3
	addiw	a0, a0, 852
	mv	a3, s3
	mv	a4, n17
	ld	a5, 144(sp)                     # 8-byte Folded Reload
.LBB1_57:                               #   Parent Loop BB1_23 Depth=1
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
	ld	a1, %lo(img)(s8)
	add	a6, a6, n20
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
	bne	a5, s5, .LBB1_57
# %bb.58:                               #   in Loop: Header=BB1_23 Depth=1
	addi	a0, sp, 2047
	addi	a0, a0, 1865
	ld	a1, 952(sp)                     # 8-byte Folded Reload
	fmv.d	fa0, fs0
	ld	a3, 960(sp)                     # 8-byte Folded Reload
	call	RDCost_for_8x8IntraBlocks
	flt.d	a0, fa0, fs2
	beqz	a0, .LBB1_63
# %bb.59:                               #   in Loop: Header=BB1_23 Depth=1
	fmv.d	fs1, fa0
	sd	s0, 944(sp)                     # 8-byte Folded Spill
	lui	s5, %hi(img)
	ld	a0, %lo(img)(s5)
	lui	s8, %hi(cofAC8x8)
	ld	a1, %lo(cofAC8x8)(s8)
	lui	s2, 3
	add	a0, a0, s2
	ld	a0, 1848(a0)
	ld	s0, 952(sp)                     # 8-byte Folded Reload
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
	ld	a0, %lo(img)(s5)
	ld	a1, %lo(cofAC8x8)(s8)
	add	a0, a0, s2
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
	ld	a0, %lo(img)(s5)
	ld	a1, %lo(cofAC8x8)(s8)
	add	a0, a0, s2
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
	ld	a0, %lo(img)(s5)
	ld	a1, %lo(cofAC8x8)(s8)
	add	a0, a0, s2
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
	ld	a0, %lo(img)(s5)
	ld	a1, %lo(cofAC8x8)(s8)
	add	a0, a0, s2
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
	ld	a0, %lo(img)(s5)
	ld	a1, %lo(cofAC8x8)(s8)
	add	a0, a0, s2
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
	ld	a0, %lo(img)(s5)
	ld	a1, %lo(cofAC8x8)(s8)
	add	a0, a0, s2
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
	ld	a0, %lo(img)(s5)
	ld	a1, %lo(cofAC8x8)(s8)
	add	a0, a0, s2
	ld	a0, 1848(a0)
	add	a1, a1, s0
	ld	a1, 0(a1)
	add	a0, a0, s0
	ld	a0, 0(a0)
	ld	a1, 24(a1)
	ld	a2, 24(a0)
	ld	a0, 8(a1)
	ld	a1, 8(a2)
	li	a2, 260
	call	memcpy
	ld	a1, %lo(img)(s5)
	lui	a0, 22
	add	a0, a1, a0
	lw	a0, 100(a0)
	beqz	a0, .LBB1_62
# %bb.60:                               #   in Loop: Header=BB1_23 Depth=1
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 112(sp)                     # 8-byte Folded Reload
.LBB1_61:                               #   Parent Loop BB1_23 Depth=1
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
	bne	a0, a1, .LBB1_61
.LBB1_62:                               #   in Loop: Header=BB1_23 Depth=1
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	add	a0, a0, a1
	ld	a0, -1768(a0)
	add	a0, a0, s7
	ld	a1, 0(a0)
	add	a1, a1, s6
	lhu	a2, 0(a1)
	sd	a2, 216(sp)                     # 8-byte Folded Spill
	lhu	a2, 2(a1)
	sd	a2, 208(sp)                     # 8-byte Folded Spill
	lhu	a2, 4(a1)
	sd	a2, 200(sp)                     # 8-byte Folded Spill
	lhu	a2, 6(a1)
	sd	a2, 192(sp)                     # 8-byte Folded Spill
	lhu	a2, 8(a1)
	sd	a2, 184(sp)                     # 8-byte Folded Spill
	ld	a2, 8(a0)
	lhu	a3, 10(a1)
	sd	a3, 176(sp)                     # 8-byte Folded Spill
	lhu	a3, 12(a1)
	sd	a3, 168(sp)                     # 8-byte Folded Spill
	lhu	a1, 14(a1)
	sd	a1, 160(sp)                     # 8-byte Folded Spill
	add	a2, a2, s6
	lhu	a1, 0(a2)
	sd	a1, 280(sp)                     # 8-byte Folded Spill
	lhu	a1, 2(a2)
	sd	a1, 272(sp)                     # 8-byte Folded Spill
	lhu	a1, 4(a2)
	sd	a1, 264(sp)                     # 8-byte Folded Spill
	lhu	a1, 6(a2)
	sd	a1, 256(sp)                     # 8-byte Folded Spill
	lhu	a1, 8(a2)
	sd	a1, 248(sp)                     # 8-byte Folded Spill
	ld	a1, 16(a0)
	lhu	a3, 10(a2)
	sd	a3, 240(sp)                     # 8-byte Folded Spill
	lhu	a3, 12(a2)
	sd	a3, 232(sp)                     # 8-byte Folded Spill
	lhu	a2, 14(a2)
	sd	a2, 224(sp)                     # 8-byte Folded Spill
	add	a1, a1, s6
	lhu	a2, 0(a1)
	sd	a2, 344(sp)                     # 8-byte Folded Spill
	lhu	a2, 2(a1)
	sd	a2, 336(sp)                     # 8-byte Folded Spill
	lhu	a2, 4(a1)
	sd	a2, 328(sp)                     # 8-byte Folded Spill
	lhu	a2, 6(a1)
	sd	a2, 320(sp)                     # 8-byte Folded Spill
	lhu	a2, 8(a1)
	sd	a2, 312(sp)                     # 8-byte Folded Spill
	ld	a2, 24(a0)
	lhu	a3, 10(a1)
	sd	a3, 304(sp)                     # 8-byte Folded Spill
	lhu	a3, 12(a1)
	sd	a3, 296(sp)                     # 8-byte Folded Spill
	lhu	a1, 14(a1)
	sd	a1, 288(sp)                     # 8-byte Folded Spill
	add	a2, a2, s6
	lhu	a1, 0(a2)
	sd	a1, 408(sp)                     # 8-byte Folded Spill
	lhu	a1, 2(a2)
	sd	a1, 400(sp)                     # 8-byte Folded Spill
	lhu	a1, 4(a2)
	sd	a1, 392(sp)                     # 8-byte Folded Spill
	lhu	a1, 6(a2)
	sd	a1, 384(sp)                     # 8-byte Folded Spill
	lhu	a1, 8(a2)
	sd	a1, 376(sp)                     # 8-byte Folded Spill
	ld	a1, 32(a0)
	lhu	a3, 10(a2)
	sd	a3, 368(sp)                     # 8-byte Folded Spill
	lhu	a3, 12(a2)
	sd	a3, 360(sp)                     # 8-byte Folded Spill
	lhu	a2, 14(a2)
	sd	a2, 352(sp)                     # 8-byte Folded Spill
	add	a1, a1, s6
	lhu	a2, 0(a1)
	sd	a2, 472(sp)                     # 8-byte Folded Spill
	lhu	a2, 2(a1)
	sd	a2, 464(sp)                     # 8-byte Folded Spill
	lhu	a2, 4(a1)
	sd	a2, 456(sp)                     # 8-byte Folded Spill
	lhu	a2, 6(a1)
	sd	a2, 448(sp)                     # 8-byte Folded Spill
	lhu	a2, 8(a1)
	sd	a2, 440(sp)                     # 8-byte Folded Spill
	ld	a2, 40(a0)
	lhu	a3, 10(a1)
	sd	a3, 432(sp)                     # 8-byte Folded Spill
	lhu	a3, 12(a1)
	sd	a3, 424(sp)                     # 8-byte Folded Spill
	lhu	a1, 14(a1)
	sd	a1, 416(sp)                     # 8-byte Folded Spill
	add	a2, a2, s6
	lhu	a1, 0(a2)
	sd	a1, 536(sp)                     # 8-byte Folded Spill
	lhu	a1, 2(a2)
	sd	a1, 528(sp)                     # 8-byte Folded Spill
	lhu	a1, 4(a2)
	sd	a1, 520(sp)                     # 8-byte Folded Spill
	lhu	a1, 6(a2)
	sd	a1, 512(sp)                     # 8-byte Folded Spill
	lhu	a1, 8(a2)
	sd	a1, 504(sp)                     # 8-byte Folded Spill
	ld	a1, 48(a0)
	lhu	a3, 10(a2)
	sd	a3, 496(sp)                     # 8-byte Folded Spill
	lhu	a3, 12(a2)
	sd	a3, 488(sp)                     # 8-byte Folded Spill
	lhu	a2, 14(a2)
	sd	a2, 480(sp)                     # 8-byte Folded Spill
	add	a1, a1, s6
	lhu	a2, 0(a1)
	sd	a2, 600(sp)                     # 8-byte Folded Spill
	lhu	a2, 2(a1)
	sd	a2, 592(sp)                     # 8-byte Folded Spill
	lhu	a2, 4(a1)
	sd	a2, 584(sp)                     # 8-byte Folded Spill
	lhu	a2, 6(a1)
	sd	a2, 576(sp)                     # 8-byte Folded Spill
	lhu	a2, 8(a1)
	sd	a2, 568(sp)                     # 8-byte Folded Spill
	ld	a0, 56(a0)
	lhu	a2, 10(a1)
	sd	a2, 560(sp)                     # 8-byte Folded Spill
	lhu	a2, 12(a1)
	sd	a2, 552(sp)                     # 8-byte Folded Spill
	lhu	a1, 14(a1)
	sd	a1, 544(sp)                     # 8-byte Folded Spill
	add	a0, a0, s6
	lhu	a1, 0(a0)
	sd	a1, 664(sp)                     # 8-byte Folded Spill
	lhu	a1, 2(a0)
	sd	a1, 656(sp)                     # 8-byte Folded Spill
	lhu	a1, 4(a0)
	sd	a1, 648(sp)                     # 8-byte Folded Spill
	lhu	a1, 6(a0)
	sd	a1, 640(sp)                     # 8-byte Folded Spill
	lhu	a1, 8(a0)
	sd	a1, 632(sp)                     # 8-byte Folded Spill
	lhu	a1, 10(a0)
	sd	a1, 624(sp)                     # 8-byte Folded Spill
	lhu	a1, 12(a0)
	sd	a1, 616(sp)                     # 8-byte Folded Spill
	lhu	a0, 14(a0)
	sd	a0, 608(sp)                     # 8-byte Folded Spill
	addi	a0, sp, 2047
	addi	a0, a0, 1609
	lw	a0, 256(a0)
	sd	a0, 672(sp)                     # 8-byte Folded Spill
	fmv.d	fs2, fs1
	ld	a0, 992(sp)                     # 8-byte Folded Reload
	sd	a0, 792(sp)                     # 8-byte Folded Spill
	ld	s0, 944(sp)                     # 8-byte Folded Reload
	ld	s5, 936(sp)                     # 8-byte Folded Reload
.LBB1_63:                               #   in Loop: Header=BB1_23 Depth=1
	call	reset_coding_state_cs_cm
	ld	n20, 984(sp)                    # 8-byte Folded Reload
	ld	n17, 976(sp)                    # 8-byte Folded Reload
	j	.LBB1_21
.LBB1_64:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	ld	a1, 112(a1)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	ld	a6, 792(sp)                     # 8-byte Folded Reload
	sext.w	s0, a6
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	add	a1, a1, a2
	sb	a6, 0(a1)
	ld	a2, 960(sp)                     # 8-byte Folded Reload
	xor	a1, s0, a2
	snez	a1, a1
	slt	a2, s0, a2
	xori	a2, a2, 1
	subw	a2, a6, a2
	addi	a1, a1, -1
	or	a1, a1, a2
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	sb	a1, 348(a2)
	ld	a1, %lo(img)(a0)
	lw	a2, 140(a1)
	slliw	a3, a2, 2
	addw	a4, a3, s11
	addi	a2, s11, 2
	addw	a5, a2, a3
	bge	a4, a5, .LBB1_67
# %bb.65:
	add	a3, a3, s11
	slli	a4, a3, 3
.LBB1_66:                               # =>This Inner Loop Header: Depth=1
	ld	a5, 112(a1)
	lw	a1, 136(a1)
	add	a5, a5, a4
	ld	a5, 0(a5)
	slliw	a1, a1, 2
	or	a1, a1, s10
	add	a1, a5, a1
	sb	a6, 1(a1)
	sb	a6, 0(a1)
	ld	a1, %lo(img)(a0)
	lw	a5, 140(a1)
	addi	a3, a3, 1
	slli	a5, a5, 2
	addw	a5, a2, a5
	addi	a4, a4, 8
	blt	a3, a5, .LBB1_66
.LBB1_67:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a2, 1089(a0)
	lui	s3, 22
	lui	s4, 3
	addiw	a0, s4, 824
	add	a0, a1, a0
	beqz	a2, .LBB1_70
# %bb.68:
	ld	a0, 1024(a0)
	lui	s5, %hi(cofAC8x8)
	ld	a1, %lo(cofAC8x8)(s5)
	ld	s1, 952(sp)                     # 8-byte Folded Reload
	slli	s1, s1, 3
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a1, a1, s1
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a1, a1, s1
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s2)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a1, a1, s1
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s2)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a1, a1, s1
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s2)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a1, a1, s1
	ld	a1, 0(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s2)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a1, a1, s1
	ld	a1, 0(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s2)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a1, a1, s1
	ld	a1, 0(a1)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s2)
	add	a0, a0, s4
	ld	a0, 1848(a0)
	ld	a1, %lo(cofAC8x8)(s5)
	add	a0, a0, s1
	ld	a0, 0(a0)
	add	a1, a1, s1
	ld	a1, 0(a1)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s2)
	add	s3, a0, s3
	lw	a1, 100(s3)
	bnez	a1, .LBB1_69
	j	.LBB1_85
.LBB1_69:
	ld	t2, 24(sp)                      # 8-byte Folded Reload
	add	a2, a0, t2
	ld	t1, 88(sp)                      # 8-byte Folded Reload
	slli	a0, t1, 2
	lui	a1, 5
	addiw	a1, a1, -1208
	add	a3, a0, a1
	add	a2, a2, a3
	addi	t0, sp, 2047
	addi	t0, t0, 585
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
	ld	a2, %lo(img)(s2)
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
	ld	a2, %lo(img)(s2)
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
	ld	a2, %lo(img)(s2)
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
	ld	a2, %lo(img)(s2)
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
	ld	a2, %lo(img)(s2)
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
	ld	a2, %lo(img)(s2)
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
	ld	a2, %lo(img)(s2)
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
	ld	a0, %lo(img)(s2)
	j	.LBB1_86
.LBB1_70:
	addiw	a2, s3, 460
	add	a2, a1, a2
	lw	a2, 0(a2)
	bnez	a2, .LBB1_71
	j	.LBB1_93
.LBB1_71:
	lui	a2, %hi(imgUV_org)
	ld	a3, %lo(imgUV_org)(a2)
	li	a2, 0
	ld	a6, 0(a3)
	lui	a4, %hi(imgY_org)
	ld	a7, %lo(imgY_org)(a4)
	ld	t0, 8(a3)
	ld	t1, 80(sp)                      # 8-byte Folded Reload
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	add	a3, a3, t1
	ld	a4, 64(sp)                      # 8-byte Folded Reload
	ld	a5, 16(sp)                      # 8-byte Folded Reload
	add	a4, a5, a4
	addi	a4, a4, 14
	ld	a5, 776(sp)                     # 8-byte Folded Reload
	addi	a5, a5, 14
	ld	t2, 736(sp)                     # 8-byte Folded Reload
	add	a6, a6, t2
	add	a7, a7, t2
	add	t0, t0, t2
	slli	s0, s0, 7
	sd	s0, 976(sp)                     # 8-byte Folded Spill
	add	t1, t1, s0
	addi	t1, t1, -1152
	li	t2, 512
	lui	s6, %hi(resTrans_B)
	addi	s6, s6, %lo(resTrans_B)
	lui	n12, %hi(resTrans_G)
	addi	n12, n12, %lo(resTrans_G)
	ld	n13, 920(sp)                    # 8-byte Folded Reload
	ld	n14, 912(sp)                    # 8-byte Folded Reload
	ld	n15, 904(sp)                    # 8-byte Folded Reload
	ld	n16, 896(sp)                    # 8-byte Folded Reload
	ld	n17, 888(sp)                    # 8-byte Folded Reload
	ld	n18, 880(sp)                    # 8-byte Folded Reload
	ld	n19, 872(sp)                    # 8-byte Folded Reload
.LBB1_72:                               # =>This Inner Loop Header: Depth=1
	ld	t4, 0(a6)
	add	t6, a1, t1
	lhu	n5, 0(t6)
	ld	t3, 0(a7)
	ld	t5, 0(t0)
	add	n1, a1, a4
	sh	n5, -14(n1)
	add	n2, t4, n20
	lhu	n4, 0(n2)
	add	n2, a1, a3
	lhu	n6, 0(n2)
	add	n3, t5, n20
	lhu	n7, 0(n3)
	add	n3, a1, a5
	lhu	n8, -14(n3)
	sub	n6, n4, n6
	add	n4, t3, n20
	lhu	n9, 0(n4)
	sub	n4, n7, n8
	sub	n7, n4, n6
	add	n4, s1, a2
	sw	n7, 0(n4)
	srli	n7, n7, 1
	add	n6, n7, n6
	subw	n5, n9, n5
	subw	n7, n5, n6
	add	n5, s6, a2
	sw	n7, 0(n5)
	sraiw	n7, n7, 1
	lhu	n8, 2(t6)
	add	n7, n7, n6
	add	n6, n12, a2
	sw	n7, 0(n6)
	sh	n8, -12(n1)
	add	n7, t4, n13
	lhu	n7, 0(n7)
	lhu	n9, 2(n2)
	add	n10, t5, n13
	lhu	n10, 0(n10)
	lhu	n11, -12(n3)
	sub	n7, n7, n9
	add	n9, t3, n13
	lhu	n9, 0(n9)
	sub	n10, n10, n11
	sub	n10, n10, n7
	sw	n10, 4(n4)
	srli	n10, n10, 1
	add	n7, n10, n7
	subw	n8, n9, n8
	subw	n8, n8, n7
	sw	n8, 4(n5)
	lhu	n9, 4(t6)
	sraiw	n8, n8, 1
	add	n7, n8, n7
	sw	n7, 4(n6)
	sh	n9, -10(n1)
	add	n7, t4, n14
	lhu	n7, 0(n7)
	lhu	n8, 4(n2)
	add	n10, t5, n14
	lhu	n10, 0(n10)
	lhu	n11, -10(n3)
	sub	n7, n7, n8
	add	n8, t3, n14
	lhu	n8, 0(n8)
	sub	n10, n10, n11
	sub	n10, n10, n7
	sw	n10, 8(n4)
	srli	n10, n10, 1
	add	n7, n10, n7
	subw	n8, n8, n9
	subw	n8, n8, n7
	sw	n8, 8(n5)
	lhu	n9, 6(t6)
	sraiw	n8, n8, 1
	add	n7, n8, n7
	sw	n7, 8(n6)
	sh	n9, -8(n1)
	add	n7, t4, n15
	lhu	n7, 0(n7)
	lhu	n8, 6(n2)
	add	n10, t5, n15
	lhu	n10, 0(n10)
	lhu	n11, -8(n3)
	sub	n7, n7, n8
	add	n8, t3, n15
	lhu	n8, 0(n8)
	sub	n10, n10, n11
	sub	n10, n10, n7
	sw	n10, 12(n4)
	srli	n10, n10, 1
	add	n7, n10, n7
	subw	n8, n8, n9
	subw	n8, n8, n7
	sw	n8, 12(n5)
	lhu	n9, 8(t6)
	sraiw	n8, n8, 1
	add	n7, n8, n7
	sw	n7, 12(n6)
	sh	n9, -6(n1)
	add	n7, t4, n16
	lhu	n7, 0(n7)
	lhu	n8, 8(n2)
	add	n10, t5, n16
	lhu	n10, 0(n10)
	lhu	n11, -6(n3)
	sub	n7, n7, n8
	add	n8, t3, n16
	lhu	n8, 0(n8)
	sub	n10, n10, n11
	sub	n10, n10, n7
	sw	n10, 16(n4)
	srli	n10, n10, 1
	add	n7, n10, n7
	subw	n8, n8, n9
	subw	n8, n8, n7
	sw	n8, 16(n5)
	lhu	n9, 10(t6)
	sraiw	n8, n8, 1
	add	n7, n8, n7
	sw	n7, 16(n6)
	sh	n9, -4(n1)
	add	n7, t4, n17
	lhu	n7, 0(n7)
	lhu	n8, 10(n2)
	add	n10, t5, n17
	lhu	n10, 0(n10)
	lhu	n11, -4(n3)
	sub	n7, n7, n8
	add	n8, t3, n17
	lhu	n8, 0(n8)
	sub	n10, n10, n11
	sub	n10, n10, n7
	sw	n10, 20(n4)
	srli	n10, n10, 1
	add	n7, n10, n7
	subw	n8, n8, n9
	subw	n8, n8, n7
	sw	n8, 20(n5)
	lhu	n9, 12(t6)
	sraiw	n8, n8, 1
	add	n7, n8, n7
	sw	n7, 20(n6)
	sh	n9, -2(n1)
	add	n7, t4, n18
	lhu	n7, 0(n7)
	lhu	n8, 12(n2)
	add	n10, t5, n18
	lhu	n10, 0(n10)
	lhu	n11, -2(n3)
	sub	n7, n7, n8
	add	n8, t3, n18
	lhu	n8, 0(n8)
	sub	n10, n10, n11
	sub	n10, n10, n7
	sw	n10, 24(n4)
	srli	n10, n10, 1
	add	n7, n10, n7
	subw	n8, n8, n9
	subw	n8, n8, n7
	sw	n8, 24(n5)
	lhu	t6, 14(t6)
	sraiw	n8, n8, 1
	add	n7, n8, n7
	sw	n7, 24(n6)
	sh	t6, 0(n1)
	add	t4, t4, n19
	lhu	t4, 0(t4)
	lhu	n1, 14(n2)
	add	t5, t5, n19
	lhu	t5, 0(t5)
	lhu	n2, 0(n3)
	sub	t4, t4, n1
	add	t3, t3, n19
	lhu	t3, 0(t3)
	sub	t5, t5, n2
	sub	t5, t5, t4
	sw	t5, 28(n4)
	srli	t5, t5, 1
	add	t4, t5, t4
	subw	t3, t3, t6
	subw	t3, t3, t4
	sw	t3, 28(n5)
	sraiw	t3, t3, 1
	add	t3, t3, t4
	sw	t3, 28(n6)
	addi	a2, a2, 64
	addi	a3, a3, 32
	addi	a4, a4, 32
	addi	a5, a5, 32
	addi	a6, a6, 8
	addi	a7, a7, 8
	addi	t0, t0, 8
	addi	t1, t1, 16
	bne	a2, t2, .LBB1_72
# %bb.73:
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
	addi	a1, a1, 1869
	li	a2, 1
	ld	a0, 952(sp)                     # 8-byte Folded Reload
	call	dct_luma8x8
	lui	a5, %hi(img)
	ld	a2, %lo(img)(a5)
	lui	a1, 3
	addiw	a1, a1, 824
	sd	a1, 984(sp)                     # 8-byte Folded Spill
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
	sd	a0, 672(sp)                     # 8-byte Folded Spill
	li	s3, 0
	sw	a2, 476(a1)
	ld	t0, %lo(img)(a5)
	lui	a0, 22
	addiw	a0, a0, 420
	sd	a0, 968(sp)                     # 8-byte Folded Spill
	lui	s2, %hi(rec_resR)
	addi	s2, s2, %lo(rec_resR)
	ld	s1, 984(sp)                     # 8-byte Folded Reload
.LBB1_74:                               # =>This Inner Loop Header: Depth=1
	andi	s5, s3, 1
	srli	a0, s3, 1
	slliw	s0, a0, 2
	slli	s0, s0, 6
	add	a0, s6, s0
	slli	s8, s5, 4
	add	a1, a0, s8
	lw	a1, 0(a1)
	add	t0, t0, s1
	sw	a1, 0(t0)
	addi	s9, s8, 4
	add	a1, a0, s9
	lw	a1, 0(a1)
	sw	a1, 4(t0)
	addi	s10, s8, 8
	add	a1, a0, s10
	lw	a1, 0(a1)
	sw	a1, 8(t0)
	addi	s11, s8, 12
	add	a0, a0, s11
	lw	a0, 0(a0)
	sw	a0, 12(t0)
	addi	s7, s0, 64
	add	a0, s6, s7
	add	a1, a0, s8
	lw	a1, 0(a1)
	sw	a1, 64(t0)
	add	a1, a0, s9
	lw	a1, 0(a1)
	sw	a1, 68(t0)
	add	a1, a0, s10
	lw	a1, 0(a1)
	sw	a1, 72(t0)
	add	a0, a0, s11
	lw	a0, 0(a0)
	sw	a0, 76(t0)
	addi	s4, s0, 128
	add	a0, s6, s4
	add	a1, a0, s8
	lw	a1, 0(a1)
	sw	a1, 128(t0)
	add	a1, a0, s9
	lw	a1, 0(a1)
	sw	a1, 132(t0)
	add	a1, a0, s10
	lw	a1, 0(a1)
	sw	a1, 136(t0)
	add	a0, a0, s11
	lw	a0, 0(a0)
	sw	a0, 140(t0)
	addi	a0, s0, 192
	sd	a0, 992(sp)                     # 8-byte Folded Spill
	add	a0, s6, a0
	add	a1, a0, s8
	lw	a1, 0(a1)
	sw	a1, 192(t0)
	add	a1, a0, s9
	lw	a1, 0(a1)
	sw	a1, 196(t0)
	add	a1, a0, s10
	lw	a1, 0(a1)
	sw	a1, 200(t0)
	add	a0, a0, s11
	lw	a0, 0(a0)
	srliw	s6, s3, 1
	sw	a0, 204(t0)
	li	a0, 0
	ld	a1, 1008(sp)                    # 8-byte Folded Reload
	mv	a2, s3
	call	dct_chroma4x4
	ld	a1, 864(sp)                     # 8-byte Folded Reload
	or	a1, s5, a1
	ld	a2, 856(sp)                     # 8-byte Folded Reload
	or	a2, s6, a2
	slli	a1, a1, 4
	lui	a3, %hi(cbp_chroma_block)
	addi	a3, a3, %lo(cbp_chroma_block)
	add	a3, a3, a1
	slli	a2, a2, 2
	add	a3, a3, a2
	sd	a3, 1024(sp)                    # 8-byte Folded Spill
	sw	a0, 0(a3)
	lui	a0, %hi(dc_level_temp)
	addi	a0, a0, %lo(dc_level_temp)
	add	a0, a0, a1
	add	a0, a0, a2
	sd	a0, 1016(sp)                    # 8-byte Folded Spill
	lw	a0, 0(a0)
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	lui	a4, %hi(dc_level)
	addi	a4, a4, %lo(dc_level)
	add	a1, a4, a1
	add	s5, a1, a2
	sw	a0, 0(s5)
	add	a0, a3, s1
	lw	a1, 0(a0)
	lui	a6, %hi(resTrans_R)
	addi	a6, a6, %lo(resTrans_R)
	add	a2, a6, s0
	add	a3, a2, s8
	lw	a3, 0(a3)
	lui	a7, %hi(rec_resB)
	addi	a7, a7, %lo(rec_resB)
	add	a4, a7, s0
	add	a5, a4, s8
	sw	a1, 0(a5)
	sw	a3, 0(a0)
	lw	a1, 4(a0)
	add	a3, a2, s9
	lw	a3, 0(a3)
	add	a5, a4, s9
	sw	a1, 0(a5)
	sw	a3, 4(a0)
	lw	a1, 8(a0)
	add	a3, a2, s10
	lw	a3, 0(a3)
	add	a5, a4, s10
	sw	a1, 0(a5)
	sw	a3, 8(a0)
	lw	a1, 12(a0)
	add	a2, a2, s11
	lw	a2, 0(a2)
	add	a4, a4, s11
	sw	a1, 0(a4)
	sw	a2, 12(a0)
	lw	a1, 64(a0)
	add	a2, a6, s7
	add	a3, a2, s8
	lw	a3, 0(a3)
	add	a4, a7, s7
	mv	s6, s7
	add	a5, a4, s8
	sw	a1, 0(a5)
	sw	a3, 64(a0)
	lw	a1, 68(a0)
	add	a3, a2, s9
	lw	a3, 0(a3)
	add	a5, a4, s9
	sw	a1, 0(a5)
	sw	a3, 68(a0)
	lw	a1, 72(a0)
	add	a3, a2, s10
	lw	a3, 0(a3)
	add	a5, a4, s10
	sw	a1, 0(a5)
	sw	a3, 72(a0)
	lw	a1, 76(a0)
	add	a2, a2, s11
	lw	a2, 0(a2)
	add	a4, a4, s11
	sw	a1, 0(a4)
	sw	a2, 76(a0)
	lw	a1, 128(a0)
	add	a2, a6, s4
	add	a3, a2, s8
	lw	a3, 0(a3)
	add	a4, a7, s4
	mv	s7, s4
	add	a5, a4, s8
	sw	a1, 0(a5)
	sw	a3, 128(a0)
	lw	a1, 132(a0)
	add	a3, a2, s9
	lw	a3, 0(a3)
	add	a5, a4, s9
	sw	a1, 0(a5)
	sw	a3, 132(a0)
	lw	a1, 136(a0)
	add	a3, a2, s10
	lw	a3, 0(a3)
	add	a5, a4, s10
	sw	a1, 0(a5)
	sw	a3, 136(a0)
	lw	a1, 140(a0)
	add	a2, a2, s11
	lw	a2, 0(a2)
	add	a4, a4, s11
	sw	a1, 0(a4)
	sw	a2, 140(a0)
	lw	a1, 192(a0)
	ld	s4, 992(sp)                     # 8-byte Folded Reload
	add	a2, a6, s4
	add	a3, a2, s8
	lw	a3, 0(a3)
	add	a4, a7, s4
	add	a5, a4, s8
	sw	a1, 0(a5)
	sw	a3, 192(a0)
	lw	a1, 196(a0)
	add	a3, a2, s9
	lw	a3, 0(a3)
	add	a5, a4, s9
	sw	a1, 0(a5)
	sw	a3, 196(a0)
	lw	a1, 200(a0)
	add	a3, a2, s10
	lw	a3, 0(a3)
	add	a5, a4, s10
	sw	a1, 0(a5)
	sw	a3, 200(a0)
	lw	a1, 204(a0)
	add	a2, a2, s11
	lw	a2, 0(a2)
	add	a4, a4, s11
	sw	a1, 0(a4)
	sw	a2, 204(a0)
	li	a0, 1
	ld	a1, 1000(sp)                    # 8-byte Folded Reload
	mv	a2, s3
	call	dct_chroma4x4
	ld	a1, 1016(sp)                    # 8-byte Folded Reload
	lw	a1, 64(a1)
	lui	a2, %hi(img)
	ld	t0, %lo(img)(a2)
	ld	a2, 1024(sp)                    # 8-byte Folded Reload
	sw	a0, 64(a2)
	sw	a1, 64(s5)
	add	a0, t0, s1
	lw	a1, 0(a0)
	add	s0, s2, s0
	add	a2, s0, s8
	sw	a1, 0(a2)
	lw	a1, 4(a0)
	add	a2, s0, s9
	sw	a1, 0(a2)
	lw	a1, 8(a0)
	add	a2, s0, s10
	sw	a1, 0(a2)
	lw	a1, 12(a0)
	add	s0, s0, s11
	sw	a1, 0(s0)
	lw	a1, 64(a0)
	add	a2, s2, s6
	lui	s6, %hi(resTrans_B)
	addi	s6, s6, %lo(resTrans_B)
	add	a3, a2, s8
	sw	a1, 0(a3)
	lw	a1, 68(a0)
	add	a3, a2, s9
	sw	a1, 0(a3)
	lw	a1, 72(a0)
	add	a3, a2, s10
	sw	a1, 0(a3)
	lw	a1, 76(a0)
	add	a2, a2, s11
	sw	a1, 0(a2)
	lw	a1, 128(a0)
	add	s7, s2, s7
	add	a2, s7, s8
	sw	a1, 0(a2)
	lw	a1, 132(a0)
	add	a2, s7, s9
	sw	a1, 0(a2)
	lw	a1, 136(a0)
	add	a2, s7, s10
	sw	a1, 0(a2)
	lw	a1, 140(a0)
	add	s7, s7, s11
	sw	a1, 0(s7)
	lw	a1, 192(a0)
	add	s4, s2, s4
	add	s8, s4, s8
	sw	a1, 0(s8)
	lw	a1, 196(a0)
	add	s9, s4, s9
	sw	a1, 0(s9)
	lw	a1, 200(a0)
	add	s10, s4, s10
	sw	a1, 0(s10)
	lw	a0, 204(a0)
	add	s4, s4, s11
	addiw	s3, s3, 1
	sw	a0, 0(s4)
	li	a0, 4
	bne	s3, a0, .LBB1_74
# %bb.75:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a6, 2
	addiw	a1, a6, -1768
	add	a4, a0, a1
	ld	a5, 40(a4)
	li	a0, 0
	ld	a3, 968(sp)                     # 8-byte Folded Reload
	add	a3, t0, a3
	lw	a1, 4(a3)
	ld	a2, 0(a5)
	lw	a3, 0(a3)
	ld	a7, 976(sp)                     # 8-byte Folded Reload
	add	a7, t0, a7
	ld	a4, 0(a4)
	ld	a5, 8(a5)
	addiw	a6, a6, -840
	add	a6, a7, a6
	ld	a7, 776(sp)                     # 8-byte Folded Reload
	add	a7, t0, a7
	ld	t1, 80(sp)                      # 8-byte Folded Reload
	ld	t2, 72(sp)                      # 8-byte Folded Reload
	add	t1, t2, t1
	add	t0, t0, t1
	lui	t1, %hi(rec_resG)
	addi	t1, t1, %lo(rec_resG)
	li	t2, 16
	li	t3, 8
	ld	n11, 752(sp)                    # 8-byte Folded Reload
	ld	n12, 744(sp)                    # 8-byte Folded Reload
	lui	n13, %hi(rec_resB)
	addi	n13, n13, %lo(rec_resB)
	j	.LBB1_77
.LBB1_76:                               #   in Loop: Header=BB1_77 Depth=1
	addi	a0, a0, 1
	addi	a6, a6, 16
	addi	a7, a7, 32
	addi	t0, t0, 32
	addi	s2, s2, 64
	addi	n13, n13, 64
	addi	t1, t1, 64
	bne	a0, t3, .LBB1_77
	j	.LBB1_91
.LBB1_77:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_79 Depth 2
	add	t4, a0, n12
	slli	t4, t4, 3
	add	t5, a2, t4
	add	t6, a4, t4
	add	t4, a5, t4
	ld	n1, 0(t4)
	ld	t6, 0(t6)
	ld	n2, 0(t5)
	li	t4, 0
	add	t5, n1, n11
	add	t6, t6, n11
	add	n1, n2, n11
	mv	n2, t1
	mv	n3, n13
	mv	n4, s2
	j	.LBB1_79
.LBB1_78:                               #   in Loop: Header=BB1_79 Depth=2
	add	n6, t5, t4
	sh	n5, 0(n6)
	addi	t4, t4, 2
	addi	n4, n4, 4
	addi	n3, n3, 4
	addi	n2, n2, 4
	beq	t4, t2, .LBB1_76
.LBB1_79:                               #   Parent Loop BB1_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	n7, 0(n3)
	lw	n6, 0(n2)
	srai	n8, n7, 1
	lw	n5, 0(n4)
	add	n9, t0, t4
	lhu	n9, 0(n9)
	subw	n8, n6, n8
	srli	n6, n5, 1
	subw	n6, n8, n6
	addw	n9, n6, n9
	sgtz	n10, n9
	neg	n10, n10
	and	n10, n10, n9
	mv	n9, a1
	blt	a1, n10, .LBB1_81
# %bb.80:                               #   in Loop: Header=BB1_79 Depth=2
	mv	n9, n10
.LBB1_81:                               #   in Loop: Header=BB1_79 Depth=2
	add	n10, n1, t4
	sh	n9, 0(n10)
	add	n9, a6, t4
	lhu	n9, 0(n9)
	add	n7, n8, n7
	addw	n7, n7, n9
	sgtz	n8, n7
	neg	n8, n8
	and	n8, n8, n7
	mv	n7, a3
	blt	a3, n8, .LBB1_83
# %bb.82:                               #   in Loop: Header=BB1_79 Depth=2
	mv	n7, n8
.LBB1_83:                               #   in Loop: Header=BB1_79 Depth=2
	add	n8, t6, t4
	sh	n7, 0(n8)
	add	n7, a7, t4
	lhu	n7, 0(n7)
	add	n5, n6, n5
	addw	n5, n5, n7
	sgtz	n6, n5
	neg	n6, n6
	and	n6, n6, n5
	mv	n5, a1
	blt	a1, n6, .LBB1_78
# %bb.84:                               #   in Loop: Header=BB1_79 Depth=2
	mv	n5, n6
	j	.LBB1_78
.LBB1_85:
	ld	t1, 88(sp)                      # 8-byte Folded Reload
.LBB1_86:
	ld	n2, 664(sp)                     # 8-byte Folded Reload
	ld	n3, 656(sp)                     # 8-byte Folded Reload
	ld	n4, 648(sp)                     # 8-byte Folded Reload
	ld	n5, 640(sp)                     # 8-byte Folded Reload
	ld	n6, 632(sp)                     # 8-byte Folded Reload
	ld	n7, 624(sp)                     # 8-byte Folded Reload
	ld	n8, 616(sp)                     # 8-byte Folded Reload
	ld	n9, 608(sp)                     # 8-byte Folded Reload
	ld	n10, 600(sp)                    # 8-byte Folded Reload
	ld	n11, 592(sp)                    # 8-byte Folded Reload
	ld	n12, 584(sp)                    # 8-byte Folded Reload
	ld	n13, 576(sp)                    # 8-byte Folded Reload
	ld	n14, 568(sp)                    # 8-byte Folded Reload
	ld	n15, 560(sp)                    # 8-byte Folded Reload
	ld	n16, 552(sp)                    # 8-byte Folded Reload
	ld	n17, 544(sp)                    # 8-byte Folded Reload
	ld	n18, 536(sp)                    # 8-byte Folded Reload
	ld	n19, 528(sp)                    # 8-byte Folded Reload
	ld	n20, 520(sp)                    # 8-byte Folded Reload
	ld	n21, 512(sp)                    # 8-byte Folded Reload
	ld	n22, 504(sp)                    # 8-byte Folded Reload
	ld	n23, 496(sp)                    # 8-byte Folded Reload
	ld	n24, 488(sp)                    # 8-byte Folded Reload
	ld	n25, 480(sp)                    # 8-byte Folded Reload
	ld	n26, 472(sp)                    # 8-byte Folded Reload
	ld	n27, 464(sp)                    # 8-byte Folded Reload
	ld	n28, 456(sp)                    # 8-byte Folded Reload
	ld	t2, 216(sp)                     # 8-byte Folded Reload
	lui	a2, 22
	add	a1, a0, a2
	lw	a1, 460(a1)
	lui	a4, 3
	beqz	a1, .LBB1_89
# %bb.87:
	addiw	a1, a4, 1848
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	s1, a0, s1
	ld	a0, 32(s1)
	ld	a1, 64(s1)
	addi	a3, a0, 32
	lui	a5, %hi(cofAC8x8_chroma)
	addi	a5, a5, %lo(cofAC8x8_chroma)
	addi	a5, a5, 576
.LBB1_88:                               # =>This Inner Loop Header: Depth=1
	ld	a6, 0(a0)
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
	ld	t0, 0(a1)
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
	addi	a0, a0, 8
	addi	a1, a1, 8
	addi	a5, a5, 144
	bne	a0, a3, .LBB1_88
.LBB1_89:
	lui	a0, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a0)
	lui	a1, 2
	add	a3, a3, a1
	ld	a3, -1768(a3)
	add	a3, a3, s7
	ld	a3, 0(a3)
	add	a3, a3, s6
	sh	t2, 0(a3)
	ld	a5, 208(sp)                     # 8-byte Folded Reload
	sh	a5, 2(a3)
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	sh	a5, 4(a3)
	ld	a5, 192(sp)                     # 8-byte Folded Reload
	sh	a5, 6(a3)
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	sh	a5, 8(a3)
	ld	a5, 176(sp)                     # 8-byte Folded Reload
	sh	a5, 10(a3)
	ld	a5, 168(sp)                     # 8-byte Folded Reload
	sh	a5, 12(a3)
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	sh	a5, 14(a3)
	slli	t0, t1, 1
	lui	a7, %hi(img)
	ld	a3, %lo(img)(a7)
	slli	s0, s0, 7
	addiw	t1, a1, -840
	add	a5, s0, t1
	add	a5, a3, a5
	ld	n1, 32(sp)                      # 8-byte Folded Reload
	add	a6, n1, t0
	lh	t2, 14(a5)
	addiw	t3, a4, 312
	add	a6, a6, t3
	add	a3, a3, a6
	sh	t2, 14(a3)
	lh	a6, 12(a5)
	sh	a6, 12(a3)
	lh	a6, 10(a5)
	sh	a6, 10(a3)
	lh	a6, 8(a5)
	sh	a6, 8(a3)
	lh	a6, 6(a5)
	sh	a6, 6(a3)
	lh	a6, 4(a5)
	sh	a6, 4(a3)
	lh	a6, 2(a5)
	sh	a6, 2(a3)
	lh	a5, 0(a5)
	sh	a5, 0(a3)
	ld	a3, %lo(enc_picture)(a0)
	add	a3, a3, a1
	ld	a5, -1768(a3)
	addi	a3, s9, 1
	slli	a3, a3, 3
	add	a5, a5, a3
	ld	a5, 0(a5)
	add	a5, a5, s6
	ld	a6, 280(sp)                     # 8-byte Folded Reload
	sh	a6, 0(a5)
	ld	a6, 272(sp)                     # 8-byte Folded Reload
	sh	a6, 2(a5)
	ld	a6, 264(sp)                     # 8-byte Folded Reload
	sh	a6, 4(a5)
	ld	a6, 256(sp)                     # 8-byte Folded Reload
	sh	a6, 6(a5)
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	sh	a6, 8(a5)
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	sh	a6, 10(a5)
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	sh	a6, 12(a5)
	ld	a6, 224(sp)                     # 8-byte Folded Reload
	sh	a6, 14(a5)
	ld	a5, %lo(img)(a7)
	add	a6, s0, t1
	add	a6, a5, a6
	add	t2, n1, t0
	lh	t3, 30(a6)
	addiw	t4, a4, 344
	add	t2, t2, t4
	add	a5, a5, t2
	sh	t3, 14(a5)
	lh	t2, 28(a6)
	sh	t2, 12(a5)
	lh	t2, 26(a6)
	sh	t2, 10(a5)
	lh	t2, 24(a6)
	sh	t2, 8(a5)
	lh	t2, 22(a6)
	sh	t2, 6(a5)
	lh	t2, 20(a6)
	sh	t2, 4(a5)
	lh	t2, 18(a6)
	sh	t2, 2(a5)
	lh	a6, 16(a6)
	sh	a6, 0(a5)
	ld	a5, %lo(enc_picture)(a0)
	add	a5, a5, a1
	ld	a6, -1768(a5)
	addi	a5, s9, 2
	slli	a5, a5, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	add	a6, a6, s6
	ld	t2, 344(sp)                     # 8-byte Folded Reload
	sh	t2, 0(a6)
	ld	t2, 336(sp)                     # 8-byte Folded Reload
	sh	t2, 2(a6)
	ld	t2, 328(sp)                     # 8-byte Folded Reload
	sh	t2, 4(a6)
	ld	t2, 320(sp)                     # 8-byte Folded Reload
	sh	t2, 6(a6)
	ld	t2, 312(sp)                     # 8-byte Folded Reload
	sh	t2, 8(a6)
	ld	t2, 304(sp)                     # 8-byte Folded Reload
	sh	t2, 10(a6)
	ld	t2, 296(sp)                     # 8-byte Folded Reload
	sh	t2, 12(a6)
	ld	t2, 288(sp)                     # 8-byte Folded Reload
	sh	t2, 14(a6)
	ld	a6, %lo(img)(a7)
	add	t2, n1, t0
	add	t3, s0, t1
	add	t3, a6, t3
	lh	t4, 46(t3)
	addiw	t5, a4, 376
	add	t2, t2, t5
	add	a6, a6, t2
	sh	t4, 14(a6)
	lh	t2, 44(t3)
	sh	t2, 12(a6)
	lh	t2, 42(t3)
	sh	t2, 10(a6)
	lh	t2, 40(t3)
	sh	t2, 8(a6)
	lh	t2, 38(t3)
	sh	t2, 6(a6)
	lh	t2, 36(t3)
	sh	t2, 4(a6)
	lh	t2, 34(t3)
	sh	t2, 2(a6)
	lh	t2, 32(t3)
	sh	t2, 0(a6)
	ld	a6, %lo(enc_picture)(a0)
	add	a6, a6, a1
	ld	t2, -1768(a6)
	addi	a6, s9, 3
	slli	a6, a6, 3
	add	t2, t2, a6
	ld	t2, 0(t2)
	add	t2, t2, s6
	ld	t3, 408(sp)                     # 8-byte Folded Reload
	sh	t3, 0(t2)
	ld	t3, 400(sp)                     # 8-byte Folded Reload
	sh	t3, 2(t2)
	ld	t3, 392(sp)                     # 8-byte Folded Reload
	sh	t3, 4(t2)
	ld	t3, 384(sp)                     # 8-byte Folded Reload
	sh	t3, 6(t2)
	ld	t3, 376(sp)                     # 8-byte Folded Reload
	sh	t3, 8(t2)
	ld	t3, 368(sp)                     # 8-byte Folded Reload
	sh	t3, 10(t2)
	ld	t3, 360(sp)                     # 8-byte Folded Reload
	sh	t3, 12(t2)
	ld	t3, 352(sp)                     # 8-byte Folded Reload
	sh	t3, 14(t2)
	ld	t2, %lo(img)(a7)
	add	t3, n1, t0
	add	t4, s0, t1
	add	t4, t2, t4
	lh	t5, 62(t4)
	addiw	t6, a4, 408
	add	t3, t3, t6
	add	t2, t2, t3
	sh	t5, 14(t2)
	lh	t3, 60(t4)
	sh	t3, 12(t2)
	lh	t3, 58(t4)
	sh	t3, 10(t2)
	lh	t3, 56(t4)
	sh	t3, 8(t2)
	lh	t3, 54(t4)
	sh	t3, 6(t2)
	lh	t3, 52(t4)
	sh	t3, 4(t2)
	lh	t3, 50(t4)
	sh	t3, 2(t2)
	lh	t3, 48(t4)
	sh	t3, 0(t2)
	ld	t2, %lo(enc_picture)(a0)
	add	t2, t2, a1
	ld	t2, -1768(t2)
	add	t2, t2, s7
	ld	t2, 32(t2)
	add	t2, t2, s6
	sh	n26, 0(t2)
	sh	n27, 2(t2)
	sh	n28, 4(t2)
	ld	t3, 448(sp)                     # 8-byte Folded Reload
	sh	t3, 6(t2)
	ld	t3, 440(sp)                     # 8-byte Folded Reload
	sh	t3, 8(t2)
	ld	t3, 432(sp)                     # 8-byte Folded Reload
	sh	t3, 10(t2)
	ld	t3, 424(sp)                     # 8-byte Folded Reload
	sh	t3, 12(t2)
	ld	t3, 416(sp)                     # 8-byte Folded Reload
	sh	t3, 14(t2)
	ld	t2, %lo(img)(a7)
	add	t3, n1, t0
	add	t4, s0, t1
	add	t4, t2, t4
	lh	t5, 78(t4)
	addiw	t6, a4, 440
	add	t3, t3, t6
	add	t2, t2, t3
	sh	t5, 14(t2)
	lh	t3, 76(t4)
	sh	t3, 12(t2)
	lh	t3, 74(t4)
	sh	t3, 10(t2)
	lh	t3, 72(t4)
	sh	t3, 8(t2)
	lh	t3, 70(t4)
	sh	t3, 6(t2)
	lh	t3, 68(t4)
	sh	t3, 4(t2)
	lh	t3, 66(t4)
	sh	t3, 2(t2)
	lh	t3, 64(t4)
	sh	t3, 0(t2)
	ld	t2, %lo(enc_picture)(a0)
	add	t2, t2, a1
	ld	t2, -1768(t2)
	add	t2, t2, s7
	ld	t2, 40(t2)
	add	t2, t2, s6
	sh	n18, 0(t2)
	sh	n19, 2(t2)
	sh	n20, 4(t2)
	sh	n21, 6(t2)
	sh	n22, 8(t2)
	sh	n23, 10(t2)
	sh	n24, 12(t2)
	sh	n25, 14(t2)
	ld	t2, %lo(img)(a7)
	add	t3, n1, t0
	add	t4, s0, t1
	add	t4, t2, t4
	lh	t5, 94(t4)
	addiw	t6, a4, 472
	add	t3, t3, t6
	add	t2, t2, t3
	sh	t5, 14(t2)
	lh	t3, 92(t4)
	sh	t3, 12(t2)
	lh	t3, 90(t4)
	sh	t3, 10(t2)
	lh	t3, 88(t4)
	sh	t3, 8(t2)
	lh	t3, 86(t4)
	sh	t3, 6(t2)
	lh	t3, 84(t4)
	sh	t3, 4(t2)
	lh	t3, 82(t4)
	sh	t3, 2(t2)
	lh	t3, 80(t4)
	sh	t3, 0(t2)
	ld	t2, %lo(enc_picture)(a0)
	add	t2, t2, a1
	ld	t2, -1768(t2)
	add	t2, t2, s7
	ld	t2, 48(t2)
	add	t2, t2, s6
	sh	n10, 0(t2)
	sh	n11, 2(t2)
	sh	n12, 4(t2)
	sh	n13, 6(t2)
	sh	n14, 8(t2)
	sh	n15, 10(t2)
	sh	n16, 12(t2)
	sh	n17, 14(t2)
	ld	t2, %lo(img)(a7)
	add	t3, n1, t0
	add	t4, s0, t1
	add	t4, t2, t4
	lh	t5, 110(t4)
	addiw	t6, a4, 504
	add	t3, t3, t6
	add	t2, t2, t3
	sh	t5, 14(t2)
	lh	t3, 108(t4)
	sh	t3, 12(t2)
	lh	t3, 106(t4)
	sh	t3, 10(t2)
	lh	t3, 104(t4)
	sh	t3, 8(t2)
	lh	t3, 102(t4)
	sh	t3, 6(t2)
	lh	t3, 100(t4)
	sh	t3, 4(t2)
	lh	t3, 98(t4)
	sh	t3, 2(t2)
	lh	t3, 96(t4)
	sh	t3, 0(t2)
	ld	t2, %lo(enc_picture)(a0)
	add	t2, t2, a1
	ld	t2, -1768(t2)
	add	t2, t2, s7
	ld	t2, 56(t2)
	add	t2, t2, s6
	sh	n2, 0(t2)
	sh	n3, 2(t2)
	sh	n4, 4(t2)
	sh	n5, 6(t2)
	sh	n6, 8(t2)
	sh	n7, 10(t2)
	sh	n8, 12(t2)
	sh	n9, 14(t2)
	ld	t2, %lo(img)(a7)
	add	t0, n1, t0
	add	t1, s0, t1
	add	t1, t2, t1
	lh	t3, 126(t1)
	addiw	a4, a4, 536
	add	a4, t0, a4
	add	a4, t2, a4
	sh	t3, 14(a4)
	lh	t0, 124(t1)
	sh	t0, 12(a4)
	lh	t0, 122(t1)
	sh	t0, 10(a4)
	lh	t0, 120(t1)
	sh	t0, 8(a4)
	lh	t0, 118(t1)
	sh	t0, 6(a4)
	lh	t0, 116(t1)
	sh	t0, 4(a4)
	lh	t0, 114(t1)
	sh	t0, 2(a4)
	lh	t0, 112(t1)
	sh	t0, 0(a4)
	ld	a4, %lo(img)(a7)
	add	a2, a4, a2
	lw	a2, 460(a2)
	beqz	a2, .LBB1_91
# %bb.90:
	ld	a2, %lo(enc_picture)(a0)
	add	a2, a2, a1
	ld	a2, -1728(a2)
	ld	a2, 0(a2)
	add	a2, a2, s7
	ld	a2, 0(a2)
	ld	a4, 1032(sp)
	add	a2, a2, s6
	srli	a7, a4, 48
	sh	a7, 6(a2)
	srli	a7, a4, 32
	sh	a7, 4(a2)
	srli	a7, a4, 16
	sh	a7, 2(a2)
	sh	a4, 0(a2)
	ld	a2, %lo(enc_picture)(a0)
	add	a2, a2, a1
	ld	a2, -1728(a2)
	ld	a2, 0(a2)
	add	a2, a2, a3
	ld	a2, 0(a2)
	ld	a4, 1048(sp)
	add	a2, a2, s6
	srli	a7, a4, 48
	sh	a7, 6(a2)
	srli	a7, a4, 32
	sh	a7, 4(a2)
	srli	a7, a4, 16
	sh	a7, 2(a2)
	sh	a4, 0(a2)
	ld	a2, %lo(enc_picture)(a0)
	add	a2, a2, a1
	ld	a2, -1728(a2)
	ld	a2, 0(a2)
	add	a2, a2, a5
	ld	a2, 0(a2)
	ld	a4, 1064(sp)
	add	a2, a2, s6
	srli	a7, a4, 48
	sh	a7, 6(a2)
	srli	a7, a4, 32
	sh	a7, 4(a2)
	srli	a7, a4, 16
	sh	a7, 2(a2)
	sh	a4, 0(a2)
	ld	a2, %lo(enc_picture)(a0)
	add	a2, a2, a1
	ld	a2, -1728(a2)
	ld	a2, 0(a2)
	add	a2, a2, a6
	ld	a2, 0(a2)
	ld	a4, 1080(sp)
	add	a2, a2, s6
	srli	a7, a4, 48
	sh	a7, 6(a2)
	srli	a7, a4, 32
	sh	a7, 4(a2)
	srli	a7, a4, 16
	sh	a7, 2(a2)
	sh	a4, 0(a2)
	ld	a2, %lo(enc_picture)(a0)
	add	a2, a2, a1
	ld	a2, -1728(a2)
	ld	a2, 8(a2)
	add	a2, a2, s7
	ld	a2, 0(a2)
	ld	a4, 1288(sp)
	add	a2, a2, s6
	srli	a7, a4, 48
	sh	a7, 6(a2)
	srli	a7, a4, 32
	sh	a7, 4(a2)
	srli	a7, a4, 16
	sh	a7, 2(a2)
	sh	a4, 0(a2)
	ld	a2, %lo(enc_picture)(a0)
	add	a2, a2, a1
	ld	a2, -1728(a2)
	ld	a2, 8(a2)
	add	a2, a2, a3
	ld	a2, 0(a2)
	ld	a4, 1304(sp)
	add	a2, a2, s6
	srli	a7, a4, 48
	sh	a7, 6(a2)
	srli	a7, a4, 32
	sh	a7, 4(a2)
	srli	a7, a4, 16
	sh	a7, 2(a2)
	sh	a4, 0(a2)
	ld	a2, %lo(enc_picture)(a0)
	add	a2, a2, a1
	ld	a2, -1728(a2)
	ld	a2, 8(a2)
	add	a2, a2, a5
	ld	a2, 0(a2)
	ld	a4, 1320(sp)
	add	a2, a2, s6
	srli	a7, a4, 48
	sh	a7, 6(a2)
	srli	a7, a4, 32
	sh	a7, 4(a2)
	srli	a7, a4, 16
	sh	a7, 2(a2)
	sh	a4, 0(a2)
	ld	a2, %lo(enc_picture)(a0)
	add	a2, a2, a1
	ld	a2, -1728(a2)
	ld	a2, 8(a2)
	add	a2, a2, a6
	ld	a2, 0(a2)
	ld	a4, 1336(sp)
	add	a2, a2, s6
	srli	a7, a4, 48
	sh	a7, 6(a2)
	srli	a7, a4, 32
	sh	a7, 4(a2)
	srli	a7, a4, 16
	sh	a7, 2(a2)
	sh	a4, 0(a2)
	ld	a2, %lo(enc_picture)(a0)
	add	a2, a2, a1
	ld	a2, -1728(a2)
	ld	a2, 0(a2)
	add	a2, a2, s7
	ld	a4, 0(a2)
	ld	a7, 1096(sp)
	addi	a2, s6, 8
	add	a4, a4, a2
	srli	t0, a7, 48
	sh	t0, 6(a4)
	srli	t0, a7, 32
	sh	t0, 4(a4)
	srli	t0, a7, 16
	sh	t0, 2(a4)
	sh	a7, 0(a4)
	ld	a4, %lo(enc_picture)(a0)
	add	a4, a4, a1
	ld	a4, -1728(a4)
	ld	a4, 0(a4)
	add	a4, a4, a3
	ld	a4, 0(a4)
	ld	a7, 1112(sp)
	add	a4, a4, a2
	srli	t0, a7, 48
	sh	t0, 6(a4)
	srli	t0, a7, 32
	sh	t0, 4(a4)
	srli	t0, a7, 16
	sh	t0, 2(a4)
	sh	a7, 0(a4)
	ld	a4, %lo(enc_picture)(a0)
	add	a4, a4, a1
	ld	a4, -1728(a4)
	ld	a4, 0(a4)
	add	a4, a4, a5
	ld	a4, 0(a4)
	ld	a7, 1128(sp)
	add	a4, a4, a2
	srli	t0, a7, 48
	sh	t0, 6(a4)
	srli	t0, a7, 32
	sh	t0, 4(a4)
	srli	t0, a7, 16
	sh	t0, 2(a4)
	sh	a7, 0(a4)
	ld	a4, %lo(enc_picture)(a0)
	add	a4, a4, a1
	ld	a4, -1728(a4)
	ld	a4, 0(a4)
	add	a4, a4, a6
	ld	a4, 0(a4)
	ld	a7, 1144(sp)
	add	a4, a4, a2
	srli	t0, a7, 48
	sh	t0, 6(a4)
	srli	t0, a7, 32
	sh	t0, 4(a4)
	srli	t0, a7, 16
	sh	t0, 2(a4)
	sh	a7, 0(a4)
	ld	a4, %lo(enc_picture)(a0)
	add	a4, a4, a1
	ld	a4, -1728(a4)
	ld	a4, 8(a4)
	add	a4, a4, s7
	ld	a4, 0(a4)
	ld	a7, 1352(sp)
	add	a4, a4, a2
	srli	t0, a7, 48
	sh	t0, 6(a4)
	srli	t0, a7, 32
	sh	t0, 4(a4)
	srli	t0, a7, 16
	sh	t0, 2(a4)
	sh	a7, 0(a4)
	ld	a4, %lo(enc_picture)(a0)
	add	a4, a4, a1
	ld	a4, -1728(a4)
	ld	a4, 8(a4)
	add	a3, a4, a3
	ld	a3, 0(a3)
	ld	a4, 1368(sp)
	add	a3, a3, a2
	srli	a7, a4, 48
	sh	a7, 6(a3)
	srli	a7, a4, 32
	sh	a7, 4(a3)
	srli	a7, a4, 16
	sh	a7, 2(a3)
	sh	a4, 0(a3)
	ld	a3, %lo(enc_picture)(a0)
	add	a3, a3, a1
	ld	a3, -1728(a3)
	ld	a3, 8(a3)
	add	a3, a3, a5
	ld	a3, 0(a3)
	ld	a4, 1384(sp)
	add	a3, a3, a2
	srli	a5, a4, 48
	sh	a5, 6(a3)
	srli	a5, a4, 32
	sh	a5, 4(a3)
	srli	a5, a4, 16
	sh	a5, 2(a3)
	sh	a4, 0(a3)
	ld	a3, %lo(enc_picture)(a0)
	add	a3, a3, a1
	ld	a3, -1728(a3)
	ld	a3, 8(a3)
	add	a3, a3, a6
	ld	a3, 0(a3)
	ld	a4, 1400(sp)
	add	a3, a3, a2
	srli	a5, a4, 48
	sh	a5, 6(a3)
	srli	a5, a4, 32
	sh	a5, 4(a3)
	srli	a5, a4, 16
	sh	a5, 2(a3)
	sh	a4, 0(a3)
	ld	a3, %lo(enc_picture)(a0)
	add	a3, a3, a1
	ld	a3, -1728(a3)
	ld	a4, 0(a3)
	addi	a3, s7, 32
	add	a4, a4, a3
	ld	a4, 0(a4)
	ld	a5, 1160(sp)
	add	a4, a4, s6
	srli	a6, a5, 48
	sh	a6, 6(a4)
	srli	a6, a5, 32
	sh	a6, 4(a4)
	srli	a6, a5, 16
	sh	a6, 2(a4)
	sh	a5, 0(a4)
	ld	a4, %lo(enc_picture)(a0)
	add	a4, a4, a1
	ld	a4, -1728(a4)
	ld	a5, 0(a4)
	addi	a4, s7, 40
	add	a5, a5, a4
	ld	a5, 0(a5)
	ld	a6, 1176(sp)
	add	a5, a5, s6
	srli	a7, a6, 48
	sh	a7, 6(a5)
	srli	a7, a6, 32
	sh	a7, 4(a5)
	srli	a7, a6, 16
	sh	a7, 2(a5)
	sh	a6, 0(a5)
	ld	a5, %lo(enc_picture)(a0)
	add	a5, a5, a1
	ld	a5, -1728(a5)
	ld	a6, 0(a5)
	addi	a5, s7, 48
	add	a6, a6, a5
	ld	a6, 0(a6)
	ld	a7, 1192(sp)
	add	a6, a6, s6
	srli	t0, a7, 48
	sh	t0, 6(a6)
	srli	t0, a7, 32
	sh	t0, 4(a6)
	srli	t0, a7, 16
	sh	t0, 2(a6)
	sh	a7, 0(a6)
	ld	a6, %lo(enc_picture)(a0)
	add	a6, a6, a1
	ld	a6, -1728(a6)
	ld	a7, 0(a6)
	addi	a6, s7, 56
	add	a7, a7, a6
	ld	a7, 0(a7)
	ld	t0, 1208(sp)
	add	a7, a7, s6
	srli	t1, t0, 48
	sh	t1, 6(a7)
	srli	t1, t0, 32
	sh	t1, 4(a7)
	srli	t1, t0, 16
	sh	t1, 2(a7)
	sh	t0, 0(a7)
	ld	a7, %lo(enc_picture)(a0)
	add	a7, a7, a1
	ld	a7, -1728(a7)
	ld	a7, 8(a7)
	add	a7, a7, a3
	ld	a7, 0(a7)
	ld	t0, 1416(sp)
	add	a7, a7, s6
	srli	t1, t0, 48
	sh	t1, 6(a7)
	srli	t1, t0, 32
	sh	t1, 4(a7)
	srli	t1, t0, 16
	sh	t1, 2(a7)
	sh	t0, 0(a7)
	ld	a7, %lo(enc_picture)(a0)
	add	a7, a7, a1
	ld	a7, -1728(a7)
	ld	a7, 8(a7)
	add	a7, a7, a4
	ld	a7, 0(a7)
	ld	t0, 1432(sp)
	add	a7, a7, s6
	srli	t1, t0, 48
	sh	t1, 6(a7)
	srli	t1, t0, 32
	sh	t1, 4(a7)
	srli	t1, t0, 16
	sh	t1, 2(a7)
	sh	t0, 0(a7)
	ld	a7, %lo(enc_picture)(a0)
	add	a7, a7, a1
	ld	a7, -1728(a7)
	ld	a7, 8(a7)
	add	a7, a7, a5
	ld	a7, 0(a7)
	ld	t0, 1448(sp)
	add	a7, a7, s6
	srli	t1, t0, 48
	sh	t1, 6(a7)
	srli	t1, t0, 32
	sh	t1, 4(a7)
	srli	t1, t0, 16
	sh	t1, 2(a7)
	sh	t0, 0(a7)
	ld	a7, %lo(enc_picture)(a0)
	add	a7, a7, a1
	ld	a7, -1728(a7)
	ld	a7, 8(a7)
	add	a7, a7, a6
	ld	a7, 0(a7)
	ld	t0, 1464(sp)
	add	a7, a7, s6
	srli	t1, t0, 48
	sh	t1, 6(a7)
	srli	t1, t0, 32
	sh	t1, 4(a7)
	srli	t1, t0, 16
	sh	t1, 2(a7)
	sh	t0, 0(a7)
	ld	a7, %lo(enc_picture)(a0)
	add	a7, a7, a1
	ld	a7, -1728(a7)
	ld	a7, 0(a7)
	add	a7, a7, a3
	ld	a7, 0(a7)
	ld	t0, 1224(sp)
	add	a7, a7, a2
	srli	t1, t0, 48
	sh	t1, 6(a7)
	srli	t1, t0, 32
	sh	t1, 4(a7)
	srli	t1, t0, 16
	sh	t1, 2(a7)
	sh	t0, 0(a7)
	ld	a7, %lo(enc_picture)(a0)
	add	a7, a7, a1
	ld	a7, -1728(a7)
	ld	a7, 0(a7)
	add	a7, a7, a4
	ld	a7, 0(a7)
	ld	t0, 1240(sp)
	add	a7, a7, a2
	srli	t1, t0, 48
	sh	t1, 6(a7)
	srli	t1, t0, 32
	sh	t1, 4(a7)
	srli	t1, t0, 16
	sh	t1, 2(a7)
	sh	t0, 0(a7)
	ld	a7, %lo(enc_picture)(a0)
	add	a7, a7, a1
	ld	a7, -1728(a7)
	ld	a7, 0(a7)
	add	a7, a7, a5
	ld	a7, 0(a7)
	ld	t0, 1256(sp)
	add	a7, a7, a2
	srli	t1, t0, 48
	sh	t1, 6(a7)
	srli	t1, t0, 32
	sh	t1, 4(a7)
	srli	t1, t0, 16
	sh	t1, 2(a7)
	sh	t0, 0(a7)
	ld	a7, %lo(enc_picture)(a0)
	add	a7, a7, a1
	ld	a7, -1728(a7)
	ld	a7, 0(a7)
	add	a7, a7, a6
	ld	a7, 0(a7)
	ld	t0, 1272(sp)
	add	a7, a7, a2
	srli	t1, t0, 48
	sh	t1, 6(a7)
	srli	t1, t0, 32
	sh	t1, 4(a7)
	srli	t1, t0, 16
	sh	t1, 2(a7)
	sh	t0, 0(a7)
	ld	a7, %lo(enc_picture)(a0)
	add	a7, a7, a1
	ld	a7, -1728(a7)
	ld	a7, 8(a7)
	add	a3, a7, a3
	ld	a3, 0(a3)
	ld	a7, 1480(sp)
	add	a3, a3, a2
	srli	t0, a7, 48
	sh	t0, 6(a3)
	srli	t0, a7, 32
	sh	t0, 4(a3)
	srli	t0, a7, 16
	sh	t0, 2(a3)
	sh	a7, 0(a3)
	ld	a3, %lo(enc_picture)(a0)
	add	a3, a3, a1
	ld	a3, -1728(a3)
	ld	a3, 8(a3)
	add	a3, a3, a4
	ld	a3, 0(a3)
	ld	a4, 1496(sp)
	add	a3, a3, a2
	srli	a7, a4, 48
	sh	a7, 6(a3)
	srli	a7, a4, 32
	sh	a7, 4(a3)
	srli	a7, a4, 16
	sh	a7, 2(a3)
	sh	a4, 0(a3)
	ld	a3, %lo(enc_picture)(a0)
	add	a3, a3, a1
	ld	a3, -1728(a3)
	ld	a3, 8(a3)
	add	a3, a3, a5
	ld	a3, 0(a3)
	ld	a4, 1512(sp)
	add	a3, a3, a2
	srli	a5, a4, 48
	sh	a5, 6(a3)
	srli	a5, a4, 32
	sh	a5, 4(a3)
	srli	a5, a4, 16
	sh	a5, 2(a3)
	sh	a4, 0(a3)
	ld	a0, %lo(enc_picture)(a0)
	add	a0, a0, a1
	ld	a0, -1728(a0)
	ld	a0, 8(a0)
	add	a0, a0, a6
	ld	a0, 0(a0)
	ld	a1, 1528(sp)
	add	a0, a0, a2
	srli	a2, a1, 48
	sh	a2, 6(a0)
	srli	a2, a1, 32
	sh	a2, 4(a0)
	srli	a2, a1, 16
	sh	a2, 2(a0)
	sh	a1, 0(a0)
.LBB1_91:
	ld	a0, 672(sp)                     # 8-byte Folded Reload
.LBB1_92:
	addi	sp, sp, 2016
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
.LBB1_93:
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	add	a0, a2, a0
	slli	s0, s0, 7
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	add	s0, a2, s0
	addi	a2, s0, -1152
	addi	a3, a0, 256
	lui	a4, 3
	addiw	a4, a4, 852
	lui	a5, %hi(img)
	ld	t6, 728(sp)                     # 8-byte Folded Reload
.LBB1_94:                               # =>This Inner Loop Header: Depth=1
	add	a6, a1, a2
	lh	a7, 14(a6)
	add	a1, a1, a0
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
	ld	a6, 0(t6)
	ld	a1, %lo(img)(a5)
	add	a6, a6, n20
	lhu	a7, 0(a6)
	add	t0, a1, a2
	lhu	t1, 0(t0)
	lhu	t2, 2(a6)
	lhu	t3, 2(t0)
	subw	a7, a7, t1
	add	t1, a1, a4
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
	addi	a0, a0, 32
	addi	a2, a2, 16
	addi	t6, t6, 8
	addi	a4, a4, 64
	bne	a0, a3, .LBB1_94
# %bb.95:
	addi	a1, sp, 2047
	addi	a1, a1, 1869
	li	a2, 1
	ld	a0, 952(sp)                     # 8-byte Folded Reload
	call	dct_luma8x8
	j	.LBB1_92
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
	addi	sp, sp, -448
	sd	ra, 440(sp)                     # 8-byte Folded Spill
	sd	s0, 432(sp)                     # 8-byte Folded Spill
	sd	s1, 424(sp)                     # 8-byte Folded Spill
	sd	s2, 416(sp)                     # 8-byte Folded Spill
	sd	s3, 408(sp)                     # 8-byte Folded Spill
	sd	s4, 400(sp)                     # 8-byte Folded Spill
	sd	s5, 392(sp)                     # 8-byte Folded Spill
	sd	s6, 384(sp)                     # 8-byte Folded Spill
	sd	s7, 376(sp)                     # 8-byte Folded Spill
	sd	s8, 368(sp)                     # 8-byte Folded Spill
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
	addi	a4, sp, 76
	mv	a0, s5
	mv	a1, s6
	mv	a2, s1
	call	getNeighbour
	addi	a2, s1, 1
	addi	a4, sp, 100
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s1, 2
	addi	a4, sp, 124
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s1, 3
	addi	a4, sp, 148
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s1, 4
	addi	a4, sp, 172
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s1, 5
	addi	a4, sp, 196
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s1, 6
	addi	a4, sp, 220
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	a2, s1, 7
	addi	a4, sp, 244
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	getNeighbour
	addi	s7, s1, -1
	li	a3, 1
	addi	a4, sp, 52
	mv	a0, s5
	mv	a1, s0
	mv	a2, s7
	call	getNeighbour
	addi	a1, s0, 8
	li	a3, 1
	addi	a4, sp, 28
	mv	a0, s5
	mv	a2, s7
	call	getNeighbour
	li	a3, 1
	addi	a4, sp, 4
	mv	a0, s5
	mv	a1, s6
	mv	a2, s7
	call	getNeighbour
	lw	a0, 28(sp)
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
	sw	a0, 28(sp)
	beqz	a1, .LBB2_17
# %bb.3:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a2, 76(sp)
	lui	a3, 22
	addiw	a3, a3, -920
	add	a1, a1, a3
	beqz	a2, .LBB2_18
# %bb.4:
	lw	a2, 80(sp)
	ld	a3, 0(a1)
	slli	a2, a2, 2
	add	a2, a3, a2
	lw	a3, 0(a2)
	lw	a2, 100(sp)
	beqz	a2, .LBB2_19
.LBB2_5:
	lw	a2, 104(sp)
	ld	a4, 0(a1)
	slli	a2, a2, 2
	add	a2, a4, a2
	lw	a4, 0(a2)
	lw	a2, 124(sp)
	beqz	a2, .LBB2_7
.LBB2_6:
	lw	a2, 128(sp)
	ld	a5, 0(a1)
	slli	a2, a2, 2
	add	a2, a5, a2
	lw	a2, 0(a2)
.LBB2_7:
	lw	a6, 148(sp)
	andi	a5, a3, 1
	beqz	a6, .LBB2_20
# %bb.8:
	lw	a3, 152(sp)
	ld	a6, 0(a1)
	slli	a3, a3, 2
	add	a3, a6, a3
	lw	a3, 0(a3)
	lw	a6, 172(sp)
	and	a5, a4, a5
	beqz	a6, .LBB2_21
.LBB2_9:
	lw	a4, 176(sp)
	ld	a6, 0(a1)
	slli	a4, a4, 2
	add	a4, a6, a4
	lw	a4, 0(a4)
	lw	a6, 196(sp)
	and	a5, a2, a5
	beqz	a6, .LBB2_22
.LBB2_10:
	lw	a2, 200(sp)
	ld	a6, 0(a1)
	slli	a2, a2, 2
	add	a2, a6, a2
	lw	a2, 0(a2)
	lw	a6, 220(sp)
	and	a5, a3, a5
	beqz	a6, .LBB2_23
.LBB2_11:
	lw	a3, 224(sp)
	ld	a6, 0(a1)
	slli	a3, a3, 2
	add	a3, a6, a3
	lw	a3, 0(a3)
	lw	a6, 244(sp)
	and	a5, a4, a5
	beqz	a6, .LBB2_24
.LBB2_12:
	lw	a4, 248(sp)
	ld	a6, 0(a1)
	slli	a4, a4, 2
	add	a4, a6, a4
	lw	a4, 0(a4)
	lw	a6, 52(sp)
	and	a2, a2, a5
	beqz	a6, .LBB2_25
.LBB2_13:
	lw	a5, 56(sp)
	ld	a6, 0(a1)
	slli	a5, a5, 2
	add	a5, a6, a5
	lw	s1, 0(a5)
	and	s0, a3, a2
	beqz	a0, .LBB2_15
.LBB2_14:
	lw	a0, 32(sp)
	ld	a2, 0(a1)
	slli	a0, a0, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
.LBB2_15:
	lw	a2, 4(sp)
	and	s0, a4, s0
	beqz	a2, .LBB2_26
# %bb.16:
	lw	a2, 8(sp)
	ld	a1, 0(a1)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	j	.LBB2_27
.LBB2_17:
	lw	s0, 76(sp)
	lw	s1, 52(sp)
	lw	a1, 4(sp)
	j	.LBB2_27
.LBB2_18:
	li	a3, 0
	lw	a2, 100(sp)
	bnez	a2, .LBB2_5
.LBB2_19:
	li	a4, 0
	lw	a2, 124(sp)
	bnez	a2, .LBB2_6
	j	.LBB2_7
.LBB2_20:
	li	a3, 0
	lw	a6, 172(sp)
	and	a5, a4, a5
	bnez	a6, .LBB2_9
.LBB2_21:
	li	a4, 0
	lw	a6, 196(sp)
	and	a5, a2, a5
	bnez	a6, .LBB2_10
.LBB2_22:
	li	a2, 0
	lw	a6, 220(sp)
	and	a5, a3, a5
	bnez	a6, .LBB2_11
.LBB2_23:
	li	a3, 0
	lw	a6, 244(sp)
	and	a5, a4, a5
	bnez	a6, .LBB2_12
.LBB2_24:
	li	a4, 0
	lw	a6, 52(sp)
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
	and	s3, s4, a2
	sw	s3, 0(s2)
	beqz	s1, .LBB2_29
# %bb.28:
	lw	a2, 72(sp)
	slli	a2, a2, 3
	add	a2, s8, a2
	lw	a3, 68(sp)
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
	sw	a3, 272(sp)
	sw	a4, 276(sp)
	sw	a5, 280(sp)
	sw	a6, 284(sp)
	sw	a7, 288(sp)
	sw	t0, 292(sp)
	sw	t1, 296(sp)
	sw	a2, 300(sp)
	beqz	a0, .LBB2_32
# %bb.31:
	lw	a0, 48(sp)
	slli	a0, a0, 3
	add	a0, s8, a0
	lw	a2, 44(sp)
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a2, a0, a2
	lhu	a0, 0(a2)
	lhu	a3, 2(a2)
	lhu	a4, 4(a2)
	lhu	a5, 6(a2)
	lhu	a6, 8(a2)
	lhu	t0, 10(a2)
	lhu	t1, 12(a2)
	lhu	a2, 14(a2)
	addi	a7, sp, 332
	sw	t0, 324(sp)
	sw	t1, 328(sp)
	j	.LBB2_33
.LBB2_32:
	addi	a7, sp, 324
	sw	a2, 332(sp)
	sw	a2, 328(sp)
	mv	a6, a2
	mv	a5, a2
	mv	a4, a2
	mv	a3, a2
	mv	a0, a2
.LBB2_33:
	sw	a2, 0(a7)
	sw	a6, 320(sp)
	sw	a5, 316(sp)
	sw	a4, 312(sp)
	sw	a3, 308(sp)
	sw	a0, 304(sp)
	beqz	s0, .LBB2_35
# %bb.34:
	lw	a0, 96(sp)
	slli	a0, a0, 3
	add	a0, s8, a0
	lw	a2, 92(sp)
	ld	a0, 0(a0)
	lw	a3, 120(sp)
	slli	a2, a2, 1
	add	a0, a0, a2
	slli	a3, a3, 3
	add	a3, s8, a3
	lw	a2, 116(sp)
	ld	a3, 0(a3)
	lw	a4, 144(sp)
	lhu	a0, 0(a0)
	slli	a2, a2, 1
	add	a2, a3, a2
	slli	a4, a4, 3
	add	a4, s8, a4
	lw	a3, 140(sp)
	ld	a4, 0(a4)
	lw	a5, 168(sp)
	lhu	a2, 0(a2)
	slli	a3, a3, 1
	add	a3, a4, a3
	slli	a5, a5, 3
	add	a5, s8, a5
	lw	a4, 164(sp)
	ld	a5, 0(a5)
	lhu	a3, 0(a3)
	lw	a6, 192(sp)
	slli	a4, a4, 1
	add	a4, a5, a4
	lhu	a4, 0(a4)
	slli	a6, a6, 3
	lw	a5, 188(sp)
	lw	a7, 216(sp)
	add	a6, s8, a6
	ld	a6, 0(a6)
	slli	a5, a5, 1
	slli	a7, a7, 3
	add	a7, s8, a7
	lw	t0, 212(sp)
	ld	a7, 0(a7)
	lw	t1, 240(sp)
	add	a5, a6, a5
	slli	t0, t0, 1
	add	a7, a7, t0
	slli	t1, t1, 3
	add	t1, s8, t1
	lw	a6, 236(sp)
	ld	t0, 0(t1)
	lw	t1, 264(sp)
	lhu	a5, 0(a5)
	slli	a6, a6, 1
	add	t0, t0, a6
	slli	t1, t1, 3
	add	t1, s8, t1
	lw	t2, 260(sp)
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
	sw	a0, 336(sp)
	sw	a2, 340(sp)
	sw	a3, 344(sp)
	sw	a4, 348(sp)
	sw	a5, 352(sp)
	sw	a6, 356(sp)
	sw	a7, 360(sp)
	sw	t0, 364(sp)
	beqz	a1, .LBB2_38
# %bb.37:
	lw	a0, 24(sp)
	slli	a0, a0, 3
	add	a0, s8, a0
	lw	a2, 20(sp)
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a0, a0, a2
	lhu	a0, 0(a0)
	lui	a2, %hi(img)
	ld	s5, %lo(img)(a2)
	j	.LBB2_39
.LBB2_38:
	lui	a0, %hi(img)
	ld	s5, %lo(img)(a0)
	lui	a0, 22
	add	a0, s5, a0
	lw	a0, 416(a0)
.LBB2_39:
	lui	a2, 2
	addiw	s2, a2, -840
	add	s2, s5, s2
	sw	a0, 268(sp)
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
	addi	a0, sp, 268
	mv	a2, s1
	mv	a3, s0
	call	LowPassForIntra8x8Pred
	beqz	s4, .LBB2_41
# %bb.40:
	lw	a0, 272(sp)
	lw	a1, 276(sp)
	lw	a2, 280(sp)
	lw	a3, 284(sp)
	lw	a4, 288(sp)
	lw	a5, 292(sp)
	lw	a6, 296(sp)
	lw	a7, 300(sp)
	lw	t0, 336(sp)
	lw	t1, 340(sp)
	lw	t2, 344(sp)
	lw	t3, 348(sp)
	lw	t4, 352(sp)
	lw	t5, 356(sp)
	lw	t6, 360(sp)
	lw	n1, 364(sp)
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
	add	t3, t3, n1
	add	a0, a0, t3
	addi	a0, a0, 8
	sraiw	a0, a0, 4
	j	.LBB2_49
.LBB2_41:
	bnez	s1, .LBB2_44
# %bb.42:
	beqz	s0, .LBB2_44
# %bb.43:
	lw	a0, 336(sp)
	lw	a1, 340(sp)
	lw	a2, 344(sp)
	lw	a3, 348(sp)
	lw	a4, 352(sp)
	lw	a5, 356(sp)
	lw	a6, 360(sp)
	lw	a7, 364(sp)
	j	.LBB2_47
.LBB2_44:
	beqz	s1, .LBB2_48
# %bb.45:
	bnez	s0, .LBB2_48
# %bb.46:
	lw	a0, 272(sp)
	lw	a1, 276(sp)
	lw	a2, 280(sp)
	lw	a3, 284(sp)
	lw	a4, 288(sp)
	lw	a5, 292(sp)
	lw	a6, 296(sp)
	lw	a7, 300(sp)
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
	add	a0, s5, a0
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
	lui	a2, %hi(img)
	ld	a4, %lo(img)(a2)
	lh	a0, 272(sp)
	lui	a3, 2
	addiw	a1, a3, -840
	add	a4, a4, a1
	sh	a0, 112(a4)
	sh	a0, 96(a4)
	sh	a0, 80(a4)
	sh	a0, 64(a4)
	sh	a0, 48(a4)
	lh	a1, 336(sp)
	sh	a0, 32(a4)
	sh	a0, 16(a4)
	sh	a0, 0(a4)
	sh	a1, 142(a4)
	sh	a1, 140(a4)
	sh	a1, 138(a4)
	sh	a1, 136(a4)
	sh	a1, 134(a4)
	lh	a0, 276(sp)
	sh	a1, 132(a4)
	sh	a1, 130(a4)
	sh	a1, 128(a4)
	sh	a0, 114(a4)
	sh	a0, 98(a4)
	sh	a0, 82(a4)
	sh	a0, 66(a4)
	sh	a0, 50(a4)
	lh	a1, 340(sp)
	sh	a0, 34(a4)
	sh	a0, 18(a4)
	sh	a0, 2(a4)
	sh	a1, 158(a4)
	sh	a1, 156(a4)
	sh	a1, 154(a4)
	sh	a1, 152(a4)
	sh	a1, 150(a4)
	lh	a0, 280(sp)
	sh	a1, 148(a4)
	sh	a1, 146(a4)
	sh	a1, 144(a4)
	sh	a0, 116(a4)
	sh	a0, 100(a4)
	sh	a0, 84(a4)
	sh	a0, 68(a4)
	sh	a0, 52(a4)
	lh	a1, 344(sp)
	sh	a0, 36(a4)
	sh	a0, 20(a4)
	sh	a0, 4(a4)
	sh	a1, 174(a4)
	sh	a1, 172(a4)
	sh	a1, 170(a4)
	sh	a1, 168(a4)
	sh	a1, 166(a4)
	lh	a0, 284(sp)
	sh	a1, 164(a4)
	sh	a1, 162(a4)
	sh	a1, 160(a4)
	sh	a0, 118(a4)
	sh	a0, 102(a4)
	sh	a0, 86(a4)
	sh	a0, 70(a4)
	sh	a0, 54(a4)
	lh	a1, 348(sp)
	sh	a0, 38(a4)
	sh	a0, 22(a4)
	sh	a0, 6(a4)
	sh	a1, 190(a4)
	sh	a1, 188(a4)
	sh	a1, 186(a4)
	sh	a1, 184(a4)
	sh	a1, 182(a4)
	lh	a0, 288(sp)
	sh	a1, 180(a4)
	sh	a1, 178(a4)
	sh	a1, 176(a4)
	sh	a0, 120(a4)
	sh	a0, 104(a4)
	sh	a0, 88(a4)
	sh	a0, 72(a4)
	sh	a0, 56(a4)
	lh	a1, 352(sp)
	sh	a0, 40(a4)
	sh	a0, 24(a4)
	sh	a0, 8(a4)
	sh	a1, 206(a4)
	sh	a1, 204(a4)
	sh	a1, 202(a4)
	sh	a1, 200(a4)
	sh	a1, 198(a4)
	lh	a0, 292(sp)
	sh	a1, 196(a4)
	sh	a1, 194(a4)
	sh	a1, 192(a4)
	sh	a0, 122(a4)
	sh	a0, 106(a4)
	sh	a0, 90(a4)
	sh	a0, 74(a4)
	sh	a0, 58(a4)
	lh	a1, 356(sp)
	sh	a0, 42(a4)
	sh	a0, 26(a4)
	sh	a0, 10(a4)
	sh	a1, 222(a4)
	sh	a1, 220(a4)
	sh	a1, 218(a4)
	sh	a1, 216(a4)
	sh	a1, 214(a4)
	lw	a0, 296(sp)
	sh	a1, 212(a4)
	sh	a1, 210(a4)
	sh	a1, 208(a4)
	sh	a0, 124(a4)
	sh	a0, 108(a4)
	sh	a0, 92(a4)
	sh	a0, 76(a4)
	sh	a0, 60(a4)
	lh	a5, 360(sp)
	sh	a0, 44(a4)
	sh	a0, 28(a4)
	sh	a0, 12(a4)
	sh	a5, 238(a4)
	sh	a5, 236(a4)
	sh	a5, 234(a4)
	sh	a5, 232(a4)
	sh	a5, 230(a4)
	lw	a1, 300(sp)
	sh	a5, 228(a4)
	sh	a5, 226(a4)
	sh	a5, 224(a4)
	sh	a1, 126(a4)
	sh	a1, 110(a4)
	sh	a1, 94(a4)
	sh	a1, 78(a4)
	sh	a1, 62(a4)
	lh	a5, 364(sp)
	sh	a1, 46(a4)
	sh	a1, 30(a4)
	sh	a1, 14(a4)
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
	lw	n5, 276(sp)
	lw	n6, 280(sp)
	lw	n8, 272(sp)
	slli	a2, n5, 1
	addi	a7, n6, 2
	add	a3, a7, n8
	add	a2, a3, a2
	srliw	a4, a2, 2
	lui	a3, %hi(img)
	ld	a5, %lo(img)(a3)
	lui	a2, 2
	addiw	a6, a2, -456
	lw	n7, 284(sp)
	add	a5, a5, a6
	sh	a4, 0(a5)
	slli	a6, n6, 1
	add	t0, n7, n5
	add	a6, t0, a6
	addi	a6, a6, 2
	srliw	a6, a6, 2
	sh	a6, 16(a5)
	lw	n9, 288(sp)
	sh	a6, 2(a5)
	slli	t0, n7, 1
	add	a7, a7, t0
	add	a7, a7, n9
	srliw	t0, a7, 2
	sh	t0, 32(a5)
	lw	n10, 292(sp)
	sh	t0, 18(a5)
	sh	t0, 4(a5)
	slli	t3, n9, 1
	addi	t1, n10, 2
	add	t3, t1, t3
	add	a7, t3, n7
	srliw	a7, a7, 2
	sh	a7, 48(a5)
	sh	a7, 34(a5)
	sh	a7, 20(a5)
	sh	a7, 6(a5)
	slli	t2, n10, 1
	addi	a7, a0, 2
	add	t4, a7, n9
	add	t2, t4, t2
	srliw	t2, t2, 2
	sh	t2, 64(a5)
	sh	t2, 50(a5)
	sh	t2, 36(a5)
	sh	t2, 22(a5)
	sh	t2, 8(a5)
	slli	t2, a0, 1
	add	t1, t1, t2
	add	t1, t1, a1
	srliw	t1, t1, 2
	sh	t1, 80(a5)
	sh	t1, 66(a5)
	sh	t1, 52(a5)
	sh	t1, 38(a5)
	sh	t1, 24(a5)
	lw	n11, 304(sp)
	sh	t1, 10(a5)
	slli	t1, a1, 1
	add	t2, a7, t1
	add	t2, t2, n11
	srliw	t2, t2, 2
	sh	t2, 96(a5)
	sh	t2, 82(a5)
	sh	t2, 68(a5)
	sh	t2, 54(a5)
	sh	t2, 40(a5)
	sh	t2, 26(a5)
	sh	t2, 12(a5)
	lw	n12, 308(sp)
	slli	t2, n11, 1
	addi	t6, a1, 2
	add	t4, t6, t2
	add	t4, t4, n12
	srliw	t4, t4, 2
	sh	t4, 112(a5)
	sh	t4, 98(a5)
	sh	t4, 84(a5)
	sh	t4, 70(a5)
	sh	t4, 56(a5)
	sh	t4, 42(a5)
	sh	t4, 28(a5)
	sh	t4, 14(a5)
	lw	n13, 312(sp)
	slli	t4, n12, 1
	addi	n1, n11, 2
	add	t5, n1, t4
	add	t5, t5, n13
	srliw	t5, t5, 2
	sh	t5, 114(a5)
	sh	t5, 100(a5)
	sh	t5, 86(a5)
	sh	t5, 72(a5)
	sh	t5, 58(a5)
	sh	t5, 44(a5)
	sh	t5, 30(a5)
	lw	n14, 316(sp)
	slli	t5, n13, 1
	addi	n3, n12, 2
	add	t5, n3, t5
	add	t5, t5, n14
	srliw	t5, t5, 2
	sh	t5, 116(a5)
	sh	t5, 102(a5)
	sh	t5, 88(a5)
	sh	t5, 74(a5)
	sh	t5, 60(a5)
	sh	t5, 46(a5)
	lw	n15, 320(sp)
	slli	n2, n14, 1
	addi	n4, n13, 2
	add	n2, n4, n2
	add	n2, n2, n15
	srliw	n2, n2, 2
	sh	n2, 118(a5)
	sh	n2, 104(a5)
	sh	n2, 90(a5)
	lw	n16, 324(sp)
	sh	n2, 76(a5)
	sh	n2, 62(a5)
	slli	n17, n15, 1
	add	n18, n14, n16
	add	n17, n18, n17
	addi	n17, n17, 2
	srliw	n17, n17, 2
	sh	n17, 120(a5)
	sh	n17, 106(a5)
	lw	n18, 328(sp)
	sh	n17, 92(a5)
	sh	n17, 78(a5)
	slli	n17, n16, 1
	add	n15, n15, n18
	add	n15, n15, n17
	addi	n15, n15, 2
	srliw	n15, n15, 2
	sh	n15, 122(a5)
	lw	n17, 332(sp)
	sh	n15, 108(a5)
	sh	n15, 94(a5)
	slli	n15, n18, 1
	add	n16, n16, n17
	add	n15, n16, n15
	addi	n15, n15, 2
	srliw	n15, n15, 2
	sh	n15, 124(a5)
	sh	n15, 110(a5)
	slli	n15, n17, 1
	add	n17, n18, n17
	add	n15, n17, n15
	addi	n15, n15, 2
	srli	n15, n15, 2
	sh	n15, 126(a5)
	add	n8, n5, n8
	addi	n8, n8, 1
	srli	n8, n8, 1
	sh	n8, 512(a5)
	addi	n6, n6, 1
	add	n5, n6, n5
	srliw	n5, n5, 1
	sh	n5, 544(a5)
	sh	n5, 514(a5)
	add	n6, n6, n7
	srliw	n5, n6, 1
	sh	n5, 576(a5)
	sh	n5, 546(a5)
	sh	n5, 516(a5)
	add	n7, n7, n9
	addi	n7, n7, 1
	srliw	n5, n7, 1
	sh	n5, 608(a5)
	sh	n5, 578(a5)
	sh	n5, 548(a5)
	sh	n5, 518(a5)
	add	n9, n9, n10
	addi	n9, n9, 1
	srliw	n5, n9, 1
	sh	n5, 610(a5)
	sh	n5, 580(a5)
	sh	n5, 550(a5)
	sh	n5, 520(a5)
	add	n10, n10, a0
	addi	n10, n10, 1
	srliw	n5, n10, 1
	sh	n5, 612(a5)
	sh	n5, 582(a5)
	sh	n5, 552(a5)
	sh	n5, 522(a5)
	add	a0, a0, a1
	addi	a0, a0, 1
	srliw	a0, a0, 1
	sh	a0, 614(a5)
	sh	a0, 584(a5)
	sh	a0, 554(a5)
	sh	a0, 524(a5)
	add	a1, a1, n11
	addi	a1, a1, 1
	srliw	a0, a1, 1
	sh	a0, 616(a5)
	sh	a0, 586(a5)
	sh	a0, 556(a5)
	sh	a0, 526(a5)
	add	n11, n11, n12
	addi	n11, n11, 1
	srliw	a0, n11, 1
	sh	a0, 618(a5)
	sh	a0, 588(a5)
	sh	a0, 558(a5)
	add	n12, n12, n13
	addi	n12, n12, 1
	srliw	a0, n12, 1
	sh	a0, 620(a5)
	sh	a0, 590(a5)
	add	n13, n13, n14
	addi	n13, n13, 1
	srli	a0, n13, 1
	sh	a0, 622(a5)
	sh	a4, 528(a5)
	sh	a6, 560(a5)
	sh	a6, 530(a5)
	sh	t0, 592(a5)
	lw	a0, 284(sp)
	sh	t0, 562(a5)
	sh	t0, 532(a5)
	ld	a1, %lo(img)(a3)
	add	a0, t3, a0
	srliw	a0, a0, 2
	addiw	a2, a2, 78
	add	a1, a1, a2
	sh	a0, 90(a1)
	sh	a0, 60(a1)
	lw	a2, 292(sp)
	lw	a3, 288(sp)
	sh	a0, 30(a1)
	sh	a0, 0(a1)
	slli	a0, a2, 1
	add	a3, a7, a3
	add	a0, a3, a0
	srliw	a0, a0, 2
	sh	a0, 92(a1)
	lw	a3, 296(sp)
	sh	a0, 62(a1)
	sh	a0, 32(a1)
	sh	a0, 2(a1)
	slli	a0, a3, 1
	add	a2, t6, a2
	add	a0, a2, a0
	srliw	a0, a0, 2
	sh	a0, 94(a1)
	sh	a0, 64(a1)
	sh	a0, 34(a1)
	sh	a0, 4(a1)
	add	t1, n1, t1
	add	a3, t1, a3
	srliw	a0, a3, 2
	sh	a0, 96(a1)
	sh	a0, 66(a1)
	lw	a2, 300(sp)
	sh	a0, 36(a1)
	sh	a0, 6(a1)
	add	t2, n3, t2
	add	a2, t2, a2
	srliw	a0, a2, 2
	sh	a0, 98(a1)
	sh	a0, 68(a1)
	lw	a2, 304(sp)
	sh	a0, 38(a1)
	sh	a0, 8(a1)
	add	t4, n4, t4
	add	a2, t4, a2
	srliw	a0, a2, 2
	sh	a0, 100(a1)
	sh	a0, 70(a1)
	sh	a0, 40(a1)
	sh	t5, 102(a1)
	sh	t5, 72(a1)
	sh	n2, 104(a1)
.LBB2_53:
	beqz	s3, .LBB2_55
# %bb.54:
	lw	a3, 360(sp)
	lw	a4, 356(sp)
	lw	a0, 364(sp)
	slli	a1, a3, 1
	addi	a5, a4, 2
	add	a0, a5, a0
	add	a0, a0, a1
	srli	a6, a0, 2
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	lui	a0, 2
	addiw	a7, a0, -328
	lw	t0, 352(sp)
	add	a2, a2, a7
	sh	a6, 112(a2)
	slli	a4, a4, 1
	addi	a6, t0, 2
	add	a3, a6, a3
	add	a3, a3, a4
	srliw	a3, a3, 2
	sh	a3, 114(a2)
	lw	a4, 348(sp)
	sh	a3, 96(a2)
	slli	t0, t0, 1
	add	a5, a5, t0
	add	a5, a5, a4
	srliw	a3, a5, 2
	sh	a3, 116(a2)
	sh	a3, 98(a2)
	lw	a5, 344(sp)
	sh	a3, 80(a2)
	slli	a3, a4, 1
	add	a3, a6, a3
	add	a3, a3, a5
	srliw	a3, a3, 2
	sh	a3, 118(a2)
	sh	a3, 100(a2)
	lw	a6, 340(sp)
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
	lw	a4, 336(sp)
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
	lw	a7, 268(sp)
	sh	a3, 50(a2)
	sh	a3, 32(a2)
	slli	a5, a4, 1
	addi	a3, a7, 2
	add	a6, a3, a6
	add	a5, a6, a5
	srliw	a5, a5, 2
	sh	a5, 124(a2)
	sh	a5, 106(a2)
	sh	a5, 88(a2)
	sh	a5, 70(a2)
	sh	a5, 52(a2)
	lw	t0, 272(sp)
	sh	a5, 34(a2)
	sh	a5, 16(a2)
	slli	a5, a7, 1
	add	a4, a4, t0
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
	lw	t1, 276(sp)
	sh	a4, 0(a2)
	slli	a5, t0, 1
	add	a5, a3, a5
	add	a5, a5, t1
	srliw	a5, a5, 2
	sh	a5, 110(a2)
	sh	a5, 92(a2)
	sh	a5, 74(a2)
	sh	a5, 56(a2)
	sh	a5, 38(a2)
	lw	t2, 280(sp)
	sh	a5, 20(a2)
	sh	a5, 2(a2)
	slli	a6, t1, 1
	add	t3, t0, t2
	add	a6, t3, a6
	addi	a6, a6, 2
	srliw	a6, a6, 2
	sh	a6, 94(a2)
	sh	a6, 76(a2)
	sh	a6, 58(a2)
	sh	a6, 40(a2)
	lw	t3, 284(sp)
	sh	a6, 22(a2)
	sh	a6, 4(a2)
	slli	t4, t2, 1
	add	t5, t1, t3
	add	t4, t5, t4
	addi	t4, t4, 2
	srliw	t4, t4, 2
	sh	t4, 78(a2)
	sh	t4, 60(a2)
	sh	t4, 42(a2)
	lw	t5, 288(sp)
	sh	t4, 24(a2)
	sh	t4, 6(a2)
	slli	t6, t3, 1
	add	n1, t2, t5
	add	t6, n1, t6
	addi	t6, t6, 2
	srliw	t6, t6, 2
	sh	t6, 62(a2)
	sh	t6, 44(a2)
	lw	n1, 292(sp)
	sh	t6, 26(a2)
	sh	t6, 8(a2)
	slli	n2, t5, 1
	add	n3, t3, n1
	add	n2, n3, n2
	addi	n2, n2, 2
	srliw	n2, n2, 2
	sh	n2, 46(a2)
	lw	n3, 296(sp)
	sh	n2, 28(a2)
	sh	n2, 10(a2)
	slli	n4, n1, 1
	add	n5, t5, n3
	add	n4, n5, n4
	addi	n4, n4, 2
	srliw	n4, n4, 2
	lw	n5, 300(sp)
	sh	n4, 30(a2)
	sh	n4, 12(a2)
	slli	n6, n3, 1
	add	n7, n1, n5
	add	n6, n7, n6
	addi	n6, n6, 2
	srliw	n6, n6, 2
	sh	n6, 14(a2)
	addi	t0, t0, 1
	add	a7, t0, a7
	srliw	a7, a7, 1
	sh	a7, 230(a2)
	sh	a7, 196(a2)
	sh	a7, 162(a2)
	sh	a7, 128(a2)
	add	t0, t0, t1
	srliw	a7, t0, 1
	sh	a7, 232(a2)
	sh	a7, 198(a2)
	sh	a7, 164(a2)
	sh	a7, 130(a2)
	add	t1, t1, t2
	addi	t1, t1, 1
	srliw	a7, t1, 1
	sh	a7, 234(a2)
	sh	a7, 200(a2)
	sh	a7, 166(a2)
	sh	a7, 132(a2)
	add	t2, t2, t3
	addi	t2, t2, 1
	srliw	a7, t2, 1
	sh	a7, 236(a2)
	sh	a7, 202(a2)
	sh	a7, 168(a2)
	sh	a7, 134(a2)
	add	t3, t3, t5
	addi	t3, t3, 1
	srliw	a7, t3, 1
	sh	a7, 238(a2)
	sh	a7, 204(a2)
	sh	a7, 170(a2)
	sh	a7, 136(a2)
	add	t5, t5, n1
	addi	t5, t5, 1
	srliw	a7, t5, 1
	sh	a7, 206(a2)
	sh	a7, 172(a2)
	sh	a7, 138(a2)
	add	n1, n1, n3
	addi	n1, n1, 1
	srliw	a7, n1, 1
	sh	a7, 174(a2)
	sh	a7, 140(a2)
	add	n3, n3, n5
	addi	n3, n3, 1
	srli	a7, n3, 1
	sh	a7, 142(a2)
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
	sh	t4, 104(a0)
	sh	t4, 70(a0)
	sh	t4, 36(a0)
	sh	t4, 2(a0)
	sh	t6, 106(a0)
	sh	t6, 72(a0)
	sh	t6, 38(a0)
	sh	t6, 4(a0)
	sh	n2, 74(a0)
	sh	n2, 40(a0)
	sh	n2, 6(a0)
	sh	n4, 42(a0)
	lw	a2, 336(sp)
	lw	a4, 340(sp)
	sh	n4, 8(a0)
	sh	n6, 10(a0)
	slli	a1, a2, 1
	add	a3, a3, a4
	add	a3, a3, a1
	srliw	a3, a3, 2
	sh	a3, 80(a0)
	sh	a3, 46(a0)
	sh	a3, 12(a0)
	lw	a3, 344(sp)
	slli	a5, a4, 1
	addi	a6, a2, 2
	add	a5, a6, a5
	add	a5, a5, a3
	srliw	a5, a5, 2
	sh	a5, 96(a0)
	sh	a5, 62(a0)
	sh	a5, 28(a0)
	lw	a7, 348(sp)
	slli	t0, a3, 1
	addi	t1, a4, 2
	add	t0, t1, t0
	add	t0, t0, a7
	srliw	t0, t0, 2
	lw	t2, 352(sp)
	sh	t0, 78(a0)
	sh	t0, 44(a0)
	slli	t3, a7, 1
	add	t4, a3, t2
	add	t3, t4, t3
	addi	t3, t3, 2
	srliw	t3, t3, 2
	lw	t4, 356(sp)
	sh	t3, 94(a0)
	sh	t3, 60(a0)
	slli	t5, t2, 1
	add	t6, a7, t4
	add	t5, t6, t5
	addi	t5, t5, 2
	lw	t6, 360(sp)
	srliw	t5, t5, 2
	sh	t5, 76(a0)
	slli	n1, t4, 1
	add	n2, t2, t6
	add	n1, n2, n1
	lw	n2, 268(sp)
	addi	n1, n1, 2
	srliw	n1, n1, 2
	sh	n1, 92(a0)
	add	n3, a2, n2
	addi	n3, n3, 1
	srliw	n3, n3, 1
	sh	n3, 168(a0)
	sh	n3, 148(a0)
	sh	n3, 128(a0)
	sh	n3, 108(a0)
	addi	a4, a4, 1
	add	a2, a4, a2
	srliw	a2, a2, 1
	sh	a2, 184(a0)
	sh	a2, 164(a0)
	sh	a2, 144(a0)
	sh	a2, 124(a0)
	add	a4, a4, a3
	srliw	a2, a4, 1
	sh	a2, 200(a0)
	sh	a2, 180(a0)
	sh	a2, 160(a0)
	sh	a2, 140(a0)
	add	a3, a3, a7
	addi	a3, a3, 1
	srliw	a2, a3, 1
	sh	a2, 216(a0)
	sh	a2, 196(a0)
	sh	a2, 176(a0)
	sh	a2, 156(a0)
	add	a7, a7, t2
	addi	a7, a7, 1
	srliw	a2, a7, 1
	sh	a2, 232(a0)
	sh	a2, 212(a0)
	sh	a2, 192(a0)
	sh	a2, 172(a0)
	add	t2, t2, t4
	addi	t2, t2, 1
	srliw	a2, t2, 1
	sh	a2, 228(a0)
	sh	a2, 208(a0)
	sh	a2, 188(a0)
	add	a2, t4, t6
	addi	a2, a2, 1
	lw	a3, 364(sp)
	srliw	a2, a2, 1
	sh	a2, 224(a0)
	sh	a2, 204(a0)
	add	a2, t6, a3
	addi	a2, a2, 1
	srli	a2, a2, 1
	lw	a4, 272(sp)
	sh	a2, 220(a0)
	slli	a2, n2, 1
	add	a2, a6, a2
	add	a2, a2, a4
	srliw	a2, a2, 2
	sh	a2, 170(a0)
	sh	a2, 150(a0)
	sh	a2, 130(a0)
	sh	a2, 110(a0)
	add	a1, t1, a1
	add	a1, a1, n2
	srliw	a1, a1, 2
	sh	a1, 186(a0)
	sh	a1, 166(a0)
	sh	a1, 146(a0)
	sh	a1, 126(a0)
	sh	a5, 202(a0)
	sh	a5, 182(a0)
	sh	a5, 162(a0)
	sh	a5, 142(a0)
	sh	t0, 218(a0)
	sh	t0, 198(a0)
	sh	t0, 178(a0)
	sh	t0, 158(a0)
	sh	t3, 234(a0)
	sh	t3, 214(a0)
	sh	t3, 194(a0)
	sh	t3, 174(a0)
	sh	t5, 230(a0)
	sh	t5, 210(a0)
	sh	t5, 190(a0)
	sh	n1, 226(a0)
	sh	n1, 206(a0)
	slli	t6, t6, 1
	add	a3, t4, a3
	add	a3, a3, t6
	addi	a3, a3, 2
	lw	a1, 276(sp)
	srli	a3, a3, 2
	sh	a3, 222(a0)
	slli	a2, a4, 1
	add	n2, n2, a1
	add	a2, n2, a2
	addi	a2, a2, 2
	srliw	a2, a2, 2
	sh	a2, 152(a0)
	lw	a3, 280(sp)
	sh	a2, 132(a0)
	sh	a2, 112(a0)
	slli	a2, a1, 1
	add	a4, a4, a3
	add	a2, a4, a2
	addi	a2, a2, 2
	srliw	a2, a2, 2
	sh	a2, 154(a0)
	lw	a4, 284(sp)
	sh	a2, 134(a0)
	sh	a2, 114(a0)
	slli	a2, a3, 1
	add	a1, a1, a4
	add	a1, a1, a2
	addi	a1, a1, 2
	srliw	a1, a1, 2
	lw	a2, 288(sp)
	sh	a1, 136(a0)
	sh	a1, 116(a0)
	slli	a1, a4, 1
	add	a3, a3, a2
	add	a1, a3, a1
	addi	a1, a1, 2
	srliw	a1, a1, 2
	lw	a3, 292(sp)
	sh	a1, 138(a0)
	sh	a1, 118(a0)
	slli	a1, a2, 1
	add	a4, a4, a3
	add	a1, a4, a1
	addi	a1, a1, 2
	lw	a4, 296(sp)
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
	lw	a1, 340(sp)
	lw	a0, 336(sp)
	addi	a4, a1, 1
	add	a2, a4, a0
	srli	a5, a2, 1
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a6, 2
	lw	a3, 344(sp)
	addiw	a6, a6, 184
	add	a2, a2, a6
	sh	a5, 0(a2)
	add	a4, a4, a3
	lw	a5, 348(sp)
	srliw	a4, a4, 1
	sh	a4, 4(a2)
	sh	a4, 16(a2)
	add	a4, a3, a5
	addi	a4, a4, 1
	srliw	a4, a4, 1
	lw	a6, 352(sp)
	sh	a4, 8(a2)
	sh	a4, 20(a2)
	sh	a4, 32(a2)
	add	a4, a5, a6
	addi	a4, a4, 1
	srliw	a4, a4, 1
	sh	a4, 12(a2)
	lw	a7, 356(sp)
	sh	a4, 24(a2)
	sh	a4, 36(a2)
	sh	a4, 48(a2)
	add	a4, a6, a7
	addi	a4, a4, 1
	srliw	a4, a4, 1
	sh	a4, 28(a2)
	lw	t0, 360(sp)
	sh	a4, 40(a2)
	sh	a4, 52(a2)
	sh	a4, 64(a2)
	add	a4, a7, t0
	addi	a4, a4, 1
	srliw	a4, a4, 1
	sh	a4, 44(a2)
	lw	t1, 364(sp)
	sh	a4, 56(a2)
	sh	a4, 68(a2)
	sh	a4, 80(a2)
	add	a4, t0, t1
	addi	a4, a4, 1
	srliw	a4, a4, 1
	sh	a4, 60(a2)
	sh	a4, 72(a2)
	sh	a4, 84(a2)
	sh	a4, 96(a2)
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
	slli	a4, t1, 1
	add	a4, a4, t1
	addi	t2, t0, 2
	add	a4, t2, a4
	srliw	a4, a4, 2
	sh	a4, 62(a2)
	sh	a4, 74(a2)
	sh	a4, 86(a2)
	sh	a4, 98(a2)
	slli	t0, t0, 1
	add	t1, a7, t1
	add	t0, t1, t0
	addi	t0, t0, 2
	srliw	a4, t0, 2
	sh	a4, 46(a2)
	sh	a4, 58(a2)
	sh	a4, 70(a2)
	sh	a4, 82(a2)
	slli	a4, a7, 1
	add	a4, a6, a4
	add	a4, t2, a4
	srliw	a4, a4, 2
	sh	a4, 30(a2)
	sh	a4, 42(a2)
	sh	a4, 54(a2)
	sh	a4, 66(a2)
	slli	a4, a6, 1
	addi	t0, a5, 2
	add	a4, t0, a4
	add	a4, a4, a7
	srliw	a4, a4, 2
	sh	a4, 14(a2)
	sh	a4, 26(a2)
	sh	a4, 38(a2)
	sh	a4, 50(a2)
	slli	a5, a5, 1
	addi	a4, a3, 2
	add	a5, a4, a5
	add	a5, a5, a6
	srliw	a5, a5, 2
	sh	a5, 10(a2)
	sh	a5, 22(a2)
	sh	a5, 34(a2)
	slli	a3, a3, 1
	add	t0, t0, a1
	add	a3, t0, a3
	srliw	a3, a3, 2
	sh	a3, 6(a2)
	sh	a3, 18(a2)
	slli	a1, a1, 1
	add	a0, a4, a0
	add	a0, a0, a1
	srli	a0, a0, 2
	sh	a0, 2(a2)
.LBB2_57:
	ld	ra, 440(sp)                     # 8-byte Folded Reload
	ld	s0, 432(sp)                     # 8-byte Folded Reload
	ld	s1, 424(sp)                     # 8-byte Folded Reload
	ld	s2, 416(sp)                     # 8-byte Folded Reload
	ld	s3, 408(sp)                     # 8-byte Folded Reload
	ld	s4, 400(sp)                     # 8-byte Folded Reload
	ld	s5, 392(sp)                     # 8-byte Folded Reload
	ld	s6, 384(sp)                     # 8-byte Folded Reload
	ld	s7, 376(sp)                     # 8-byte Folded Reload
	ld	s8, 368(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 448
	ret
.LBB2_58:
	ld	a2, %lo(img)(a2)
	add	a2, a2, a3
	li	a3, -1
	sh	a3, -840(a2)
	bnez	s0, .LBB2_51
.LBB2_59:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 2
	add	a2, a2, a3
	li	a3, -1
	sh	a3, -712(a2)
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
	add	n1, t5, a5
	lhu	n1, 0(n1)
	add	n2, t6, a5
	lhu	n2, 0(n2)
	sub	n1, n1, n2
	add	n2, t5, a6
	lhu	n2, 0(n2)
	add	n3, t6, a6
	lhu	n3, 0(n3)
	slli	n1, n1, 2
	add	n1, a0, n1
	lw	n1, 0(n1)
	sub	n2, n2, n3
	add	n3, t5, a7
	lhu	n3, 0(n3)
	add	n4, t6, a7
	lhu	n4, 0(n4)
	slli	n2, n2, 2
	add	n2, a0, n2
	lw	n2, 0(n2)
	sub	n3, n3, n4
	slli	n3, n3, 2
	add	n3, a0, n3
	lw	n3, 0(n3)
	add	n4, t5, t0
	lhu	n4, 0(n4)
	add	n5, t6, t0
	lhu	n5, 0(n5)
	add	n1, s5, n1
	add	n2, n2, n3
	add	n1, n1, n2
	sub	n2, n4, n5
	add	n3, t5, t1
	lhu	n3, 0(n3)
	add	n4, t6, t1
	lhu	n4, 0(n4)
	add	n5, t5, t2
	lhu	n5, 0(n5)
	add	n6, t6, t2
	lhu	n6, 0(n6)
	add	n7, t5, t3
	lhu	n7, 0(n7)
	add	n8, t6, t3
	lhu	n8, 0(n8)
	add	t5, t5, t4
	lhu	t5, 0(t5)
	add	t6, t6, t4
	lhu	t6, 0(t6)
	sub	n3, n3, n4
	sub	n4, n5, n6
	sub	n5, n7, n8
	sub	t5, t5, t6
	slli	n2, n2, 2
	add	n2, a0, n2
	lw	t6, 0(n2)
	slli	n3, n3, 2
	add	n3, a0, n3
	lw	n2, 0(n3)
	slli	n4, n4, 2
	add	n4, a0, n4
	lw	n3, 0(n4)
	slli	n5, n5, 2
	add	n5, a0, n5
	lw	n4, 0(n5)
	slli	t5, t5, 2
	add	t5, a0, t5
	lw	t5, 0(t5)
	add	t6, t6, n2
	add	t6, t6, n3
	add	t6, n1, t6
	add	t5, n4, t5
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
	sd	a1, 120(sp)                     # 8-byte Folded Spill
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
	sd	a3, 40(sp)                      # 8-byte Folded Spill
	add	a1, a1, a3
	ld	a1, 0(a1)
	lw	a3, 12(a7)
	ld	a2, -1192(a2)
	lw	a4, 44(t0)
	li	a6, 528
	mul	a3, a3, a6
	add	a2, a2, a3
	sd	a2, 136(sp)                     # 8-byte Folded Spill
	li	a2, 1
	sd	a2, 168(sp)                     # 8-byte Folded Spill
	bnez	a4, .LBB4_4
# %bb.1:
	lw	a2, 0(t0)
	beqz	a2, .LBB4_3
# %bb.2:
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	lw	a2, 424(a2)
	snez	a2, a2
	sd	a2, 168(sp)                     # 8-byte Folded Spill
	j	.LBB4_4
.LBB4_3:
	sd	zero, 168(sp)                   # 8-byte Folded Spill
.LBB4_4:
	lw	a2, 272(t0)
	lw	a3, 40(a7)
	ld	a1, 0(a1)
	negw	a4, a2
	li	n10, 0
	bne	a3, a4, .LBB4_6
# %bb.5:
	lw	a4, 332(t0)
	addi	a4, a4, -1
	seqz	n10, a4
.LBB4_6:
	sd	a0, 8(sp)                       # 8-byte Folded Spill
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
	sd	t0, 72(sp)                      # 8-byte Folded Spill
	subw	a4, t0, a4
	addi	t0, a1, 16
	sd	t0, 152(sp)                     # 8-byte Folded Spill
	slli	a4, a4, 3
	add	a3, a3, a4
	lui	t0, %hi(LevelOffset8x8Luma)
	ld	t0, %lo(LevelOffset8x8Luma)(t0)
	lui	t1, %hi(InvLevelScale8x8Luma)
	ld	t1, %lo(InvLevelScale8x8Luma)(t1)
	ld	a3, 0(a3)
	sd	a3, 144(sp)                     # 8-byte Folded Spill
	add	t0, t0, a6
	ld	a3, 0(t0)
	add	a6, t1, a6
	ld	a6, 0(a6)
	slli	t0, a1, 3
	add	a3, a3, t0
	ld	a3, 0(a3)
	sd	a3, 80(sp)                      # 8-byte Folded Spill
	add	a4, a6, a4
	ld	a3, 0(a4)
	sd	a3, 64(sp)                      # 8-byte Folded Spill
	li	a4, 5
	subw	a4, a4, a1
	li	a3, 1
	addi	n11, sp, 504
	bnez	n10, .LBB4_11
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
	lw	n1, 4(t1)
	lw	n2, -4(t1)
	lw	n3, 0(t1)
	add	n4, t3, t2
	add	n5, t5, t4
	add	n6, n1, t6
	add	n7, n3, n2
	add	n8, n7, n4
	add	n9, n6, n5
	subw	n4, n4, n7
	subw	n5, n5, n6
	subw	t2, t2, t3
	subw	t4, t4, t5
	subw	t3, t6, n1
	subw	t5, n2, n3
	sraiw	t6, t2, 1
	add	n1, t2, t4
	add	t6, t6, n1
	add	t6, t6, t3
	sraiw	n1, t3, 1
	add	n2, t3, t5
	add	n1, n2, n1
	subw	n1, t2, n1
	sraiw	n2, t4, 1
	add	n2, t4, n2
	add	t2, t2, t5
	subw	t2, t2, n2
	subw	t4, t4, t3
	sraiw	t3, t5, 1
	add	t4, t5, t4
	add	t3, t4, t3
	add	t4, n8, n9
	sw	t4, -128(t0)
	sraiw	t4, n5, 1
	add	t4, n4, t4
	sw	t4, -64(t0)
	subw	t4, n8, n9
	sw	t4, 0(t0)
	sraiw	t4, n4, 1
	subw	t4, t4, n5
	sw	t4, 64(t0)
	sraiw	t4, t3, 2
	add	t4, t4, t6
	sw	t4, -96(t0)
	sraiw	t4, t2, 2
	add	t4, n1, t4
	sw	t4, -32(t0)
	sraiw	t4, n1, 2
	subw	t2, t2, t4
	sw	t2, 32(t0)
	sraiw	t2, t6, 2
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
	add	n1, t0, a7
	add	n2, t2, t1
	add	n3, t4, t3
	add	n4, t6, t5
	add	n5, n4, n1
	add	n6, n3, n2
	subw	n1, n1, n4
	subw	n2, n2, n3
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
	add	t3, n5, n6
	sw	t3, -256(a5)
	sraiw	t3, n2, 1
	add	t3, n1, t3
	sw	t3, -128(a5)
	subw	t3, n5, n6
	sw	t3, 0(a5)
	sraiw	t3, n1, 1
	subw	t3, t3, n2
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
	bne	a6, n11, .LBB4_10
.LBB4_11:
	li	s1, 0
	sd	zero, 184(sp)                   # 8-byte Folded Spill
	li	n3, 0
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	andi	a5, a5, 8
	sd	a5, 176(sp)                     # 8-byte Folded Spill
	andi	n4, a0, -8
	subw	a2, a2, a1
	sd	a2, 32(sp)                      # 8-byte Folded Spill
	sllw	a0, a3, a4
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	addi	a0, a1, -6
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	li	a0, -1
	sd	a0, 208(sp)
	sd	a0, 200(sp)
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	sllw	a0, a3, a0
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	addi	a1, a1, 17
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	sd	zero, 216(sp)
	sd	zero, 224(sp)
	lui	s2, %hi(SNGL_SCAN8x8)
	addi	s2, s2, %lo(SNGL_SCAN8x8)
	lui	s6, %hi(FIELD_SCAN8x8)
	addi	s6, s6, %lo(FIELD_SCAN8x8)
	lui	a0, 244
	addi	a0, a0, 575
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	li	s5, -1
	sd	n10, 160(sp)                    # 8-byte Folded Spill
	sd	n4, 128(sp)                     # 8-byte Folded Spill
	j	.LBB4_14
.LBB4_12:                               #   in Loop: Header=BB4_14 Depth=1
	ld	n4, 128(sp)                     # 8-byte Folded Reload
.LBB4_13:                               #   in Loop: Header=BB4_14 Depth=1
	addi	s1, s1, 1
	addi	s2, s2, 2
	addi	s6, s6, 2
	li	a0, 64
	beq	s1, a0, .LBB4_39
.LBB4_14:                               # =>This Inner Loop Header: Depth=1
	mv	a0, s6
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	bnez	a1, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=1
	mv	a0, s2
.LBB4_16:                               #   in Loop: Header=BB4_14 Depth=1
	lbu	s3, 0(a0)
	lbu	s8, 1(a0)
	andi	s0, s1, 3
	slli	s11, s0, 2
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	addi	s10, sp, 200
	add	s10, s10, s11
	lw	s9, 0(s10)
	slli	a0, s8, 6
	sd	a0, 192(sp)                     # 8-byte Folded Spill
	add	a0, a1, a0
	slli	s7, s3, 2
	lui	a2, 3
	add	a2, s7, a2
	add	a0, a0, a2
	lw	a2, 824(a0)
	addiw	s9, s9, 1
	sw	s9, 0(s10)
	sraiw	a3, a2, 31
	xor	a2, a2, a3
	subw	s4, a2, a3
	bnez	n10, .LBB4_18
# %bb.17:                               #   in Loop: Header=BB4_14 Depth=1
	slli	a2, s3, 3
	ld	a3, 144(sp)                     # 8-byte Folded Reload
	add	a3, a3, a2
	ld	a3, 0(a3)
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	add	a2, a4, a2
	ld	a2, 0(a2)
	slli	a4, s8, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	add	a2, a2, a4
	lw	a2, 0(a2)
	mul	a3, a3, s4
	add	a2, a2, a3
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	sraw	s4, a2, a3
.LBB4_18:                               #   in Loop: Header=BB4_14 Depth=1
	lui	a2, 22
	add	a2, a1, a2
	lw	a2, 100(a2)
	addiw	s5, s5, 1
	beqz	a2, .LBB4_21
# %bb.19:                               #   in Loop: Header=BB4_14 Depth=1
	seqz	a2, s4
	or	a5, n10, a2
	ld	a4, 104(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 10
	addw	a3, n4, s8
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	add	a2, a2, s3
	beqz	a5, .LBB4_23
# %bb.20:                               #   in Loop: Header=BB4_14 Depth=1
	add	a1, a1, a4
	slli	a3, a3, 6
	add	a1, a1, a3
	slli	a2, a2, 2
	lui	a3, 4
	add	a2, a2, a3
	add	a1, a1, a2
	sw	zero, 1864(a1)
.LBB4_21:                               #   in Loop: Header=BB4_14 Depth=1
	beqz	s4, .LBB4_28
# %bb.22:                               #   in Loop: Header=BB4_14 Depth=1
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	lw	a2, 468(a1)
	slti	a1, s4, 2
	bnez	a2, .LBB4_24
	j	.LBB4_25
.LBB4_23:                               #   in Loop: Header=BB4_14 Depth=1
	slli	a5, s3, 3
	ld	a6, 144(sp)                     # 8-byte Folded Reload
	add	a5, a6, a5
	ld	a5, 0(a5)
	lui	a6, %hi(AdaptRndWeight)
	lw	a6, %lo(AdaptRndWeight)(a6)
	lw	a7, 824(a0)
	slli	t0, s8, 2
	add	a5, a5, t0
	lw	a5, 0(a5)
	sraiw	t0, a7, 31
	xor	a7, a7, t0
	subw	a7, a7, t0
	mul	a5, a5, a7
	ld	a7, 152(sp)                     # 8-byte Folded Reload
	sllw	a7, s4, a7
	subw	a5, a5, a7
	mul	a5, a5, a6
	ld	a6, 56(sp)                      # 8-byte Folded Reload
	add	a5, a5, a6
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	sraw	a5, a5, a6
	add	a1, a1, a4
	slli	a3, a3, 6
	add	a1, a1, a3
	slli	a2, a2, 2
	lui	a3, 4
	add	a2, a2, a3
	add	a1, a1, a2
	sw	a5, 1864(a1)
	ld	a1, 136(sp)                     # 8-byte Folded Reload
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
	or	a2, n10, a1
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	bnez	a2, .LBB4_27
# %bb.26:                               #   in Loop: Header=BB4_14 Depth=1
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 1093(a1)
	slli	a1, a1, 6
	lui	a2, %hi(COEFF_COST8x8)
	addi	a2, a2, %lo(COEFF_COST8x8)
	add	a2, a2, s5
	add	a1, a2, a1
	lbu	a1, 0(a1)
.LBB4_27:                               #   in Loop: Header=BB4_14 Depth=1
	ld	a3, 120(sp)                     # 8-byte Folded Reload
	lw	a2, 0(a3)
	add	a1, a2, a1
	sw	a1, 0(a3)
	lw	a1, 824(a0)
	mv	a0, s4
	call	sign
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	slli	a1, a3, 2
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	add	a2, a2, a1
	sw	a0, 0(a2)
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sw	s5, 0(a0)
	addiw	a3, a3, 1
	sd	a3, 184(sp)                     # 8-byte Folded Spill
	li	s5, -1
	j	.LBB4_33
.LBB4_28:                               #   in Loop: Header=BB4_14 Depth=1
	bnez	n10, .LBB4_13
# %bb.29:                               #   in Loop: Header=BB4_14 Depth=1
	li	a0, 0
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	j	.LBB4_38
.LBB4_30:                               #   in Loop: Header=BB4_14 Depth=1
	xori	a1, a1, 1
	or	a3, n10, a1
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	bnez	a3, .LBB4_32
# %bb.31:                               #   in Loop: Header=BB4_14 Depth=1
	lw	a1, 1093(a2)
	slli	a1, a1, 6
	lui	a2, %hi(COEFF_COST8x8)
	addi	a2, a2, %lo(COEFF_COST8x8)
	add	a2, a2, s9
	add	a1, a2, a1
	lbu	a1, 0(a1)
.LBB4_32:                               #   in Loop: Header=BB4_14 Depth=1
	ld	a3, 120(sp)                     # 8-byte Folded Reload
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
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	add	a2, a2, a3
	ld	a2, 0(a2)
	slli	s0, s0, 3
	add	a2, a2, s0
	ld	a2, 0(a2)
	addi	a3, sp, 216
	add	s11, a3, s11
	lw	a3, 0(s11)
	ld	a4, 0(a2)
	ld	a2, 8(a2)
	slli	a5, a3, 2
	add	a4, a4, a5
	sw	a0, 0(a4)
	add	a2, a2, a5
	sw	s9, 0(a2)
	addi	a3, a3, 1
	sw	a3, 0(s11)
	li	a0, -1
	sw	a0, 0(s10)
.LBB4_33:                               #   in Loop: Header=BB4_14 Depth=1
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	add	a1, a1, s0
	lui	a0, 3
	add	a0, s7, a0
	add	a0, a1, a0
	lw	a1, 824(a0)
	mv	a0, s4
	call	sign
	li	n3, 1
	ld	n10, 160(sp)                    # 8-byte Folded Reload
	bnez	n10, .LBB4_12
# %bb.34:                               #   in Loop: Header=BB4_14 Depth=1
	slli	s3, s3, 3
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	add	s3, a1, s3
	ld	a1, 0(s3)
	slli	s8, s8, 2
	add	a1, a1, s8
	lw	a1, 0(a1)
	mul	a0, a1, a0
	ld	n4, 128(sp)                     # 8-byte Folded Reload
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	li	a2, 36
	blt	a1, a2, .LBB4_36
# %bb.35:                               #   in Loop: Header=BB4_14 Depth=1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sllw	a0, a0, a1
	j	.LBB4_37
.LBB4_36:                               #   in Loop: Header=BB4_14 Depth=1
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sraw	a0, a0, a1
.LBB4_37:                               #   in Loop: Header=BB4_14 Depth=1
	li	n3, 1
.LBB4_38:                               #   in Loop: Header=BB4_14 Depth=1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	a1, a1, s0
	lui	a2, 3
	add	s7, s7, a2
	add	a1, a1, s7
	sw	a0, 824(a1)
	j	.LBB4_13
.LBB4_39:
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	lw	a0, 468(a0)
	beqz	a0, .LBB4_42
# %bb.40:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	addi	n5, sp, 504
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB4_43
# %bb.41:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 3
	add	a0, a0, a1
	ld	a0, 1848(a0)
	ld	a1, 40(sp)                      # 8-byte Folded Reload
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
	lw	a3, 228(sp)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	zero, 0(a1)
	j	.LBB4_43
.LBB4_42:
	addi	n5, sp, 504
	ld	a3, 184(sp)                     # 8-byte Folded Reload
.LBB4_43:
	slli	a0, a3, 2
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sw	zero, 0(a0)
	lui	a0, 22
	addiw	a2, a0, 460
	add	a2, a1, a2
	beqz	n10, .LBB4_45
# %bb.44:
	lw	a0, 0(a2)
	bnez	a0, .LBB4_51
	j	.LBB4_52
.LBB4_45:
	lui	a5, 3
	addiw	a0, a5, 824
	add	a0, a1, a0
	addi	a3, sp, 360
	addi	a4, a0, 28
	addiw	a5, a5, 1364
	add	a5, a1, a5
.LBB4_46:                               # =>This Inner Loop Header: Depth=1
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
	srli	n1, t4, 1
	subw	n2, a7, t4
	subw	n1, n2, n1
	add	n1, n1, t6
	srai	n2, t2, 1
	add	a7, a7, t2
	add	a7, a7, n2
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
	add	t5, t5, n1
	sraiw	t6, n1, 2
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
	bne	a4, a5, .LBB4_46
# %bb.47:
	addi	a3, a0, 256
	addi	a4, sp, 248
.LBB4_48:                               # =>This Inner Loop Header: Depth=1
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
	subw	n1, a6, t3
	subw	t6, n1, t6
	add	t6, t6, t5
	srai	n1, t1, 1
	add	a6, a6, t1
	add	a6, a6, n1
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
	add	t4, t4, t6
	sraiw	t5, t6, 2
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
	bne	a4, n5, .LBB4_48
# %bb.49:
	lw	a2, 0(a2)
	beqz	a2, .LBB4_52
# %bb.50:
	lw	a1, 0(a0)
	lw	a2, 4(a0)
	addi	a1, a1, 32
	sraiw	a1, a1, 6
	sw	a1, 0(a0)
	addi	a1, a2, 32
	lw	a2, 8(a0)
	sraiw	a1, a1, 6
	sw	a1, 4(a0)
	lw	a1, 12(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 8(a0)
	addi	a1, a1, 32
	lw	a2, 16(a0)
	sraiw	a1, a1, 6
	sw	a1, 12(a0)
	lw	a1, 20(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 16(a0)
	addi	a1, a1, 32
	lw	a2, 24(a0)
	sraiw	a1, a1, 6
	sw	a1, 20(a0)
	lw	a1, 28(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 24(a0)
	addi	a1, a1, 32
	lw	a2, 64(a0)
	sraiw	a1, a1, 6
	sw	a1, 28(a0)
	lw	a1, 68(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 64(a0)
	addi	a1, a1, 32
	lw	a2, 72(a0)
	sraiw	a1, a1, 6
	sw	a1, 68(a0)
	lw	a1, 76(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 72(a0)
	addi	a1, a1, 32
	lw	a2, 80(a0)
	sraiw	a1, a1, 6
	sw	a1, 76(a0)
	lw	a1, 84(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 80(a0)
	addi	a1, a1, 32
	lw	a2, 88(a0)
	sraiw	a1, a1, 6
	sw	a1, 84(a0)
	lw	a1, 92(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 88(a0)
	addi	a1, a1, 32
	lw	a2, 128(a0)
	sraiw	a1, a1, 6
	sw	a1, 92(a0)
	lw	a1, 132(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 128(a0)
	addi	a1, a1, 32
	lw	a2, 136(a0)
	sraiw	a1, a1, 6
	sw	a1, 132(a0)
	lw	a1, 140(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 136(a0)
	addi	a1, a1, 32
	lw	a2, 144(a0)
	sraiw	a1, a1, 6
	sw	a1, 140(a0)
	lw	a1, 148(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 144(a0)
	addi	a1, a1, 32
	lw	a2, 152(a0)
	sraiw	a1, a1, 6
	sw	a1, 148(a0)
	lw	a1, 156(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 152(a0)
	addi	a1, a1, 32
	lw	a2, 192(a0)
	sraiw	a1, a1, 6
	sw	a1, 156(a0)
	lw	a1, 196(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 192(a0)
	addi	a1, a1, 32
	lw	a2, 200(a0)
	sraiw	a1, a1, 6
	sw	a1, 196(a0)
	lw	a1, 204(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 200(a0)
	addi	a1, a1, 32
	lw	a2, 208(a0)
	sraiw	a1, a1, 6
	sw	a1, 204(a0)
	lw	a1, 212(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 208(a0)
	addi	a1, a1, 32
	lw	a2, 216(a0)
	sraiw	a1, a1, 6
	sw	a1, 212(a0)
	lw	a1, 220(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 216(a0)
	addi	a1, a1, 32
	lw	a2, 256(a0)
	sraiw	a1, a1, 6
	sw	a1, 220(a0)
	lw	a1, 260(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 256(a0)
	addi	a1, a1, 32
	lw	a2, 264(a0)
	sraiw	a1, a1, 6
	sw	a1, 260(a0)
	lw	a1, 268(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 264(a0)
	addi	a1, a1, 32
	lw	a2, 272(a0)
	sraiw	a1, a1, 6
	sw	a1, 268(a0)
	lw	a1, 276(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 272(a0)
	addi	a1, a1, 32
	lw	a2, 280(a0)
	sraiw	a1, a1, 6
	sw	a1, 276(a0)
	lw	a1, 284(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 280(a0)
	addi	a1, a1, 32
	lw	a2, 320(a0)
	sraiw	a1, a1, 6
	sw	a1, 284(a0)
	lw	a1, 324(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 320(a0)
	addi	a1, a1, 32
	lw	a2, 328(a0)
	sraiw	a1, a1, 6
	sw	a1, 324(a0)
	lw	a1, 332(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 328(a0)
	addi	a1, a1, 32
	lw	a2, 336(a0)
	sraiw	a1, a1, 6
	sw	a1, 332(a0)
	lw	a1, 340(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 336(a0)
	addi	a1, a1, 32
	lw	a2, 344(a0)
	sraiw	a1, a1, 6
	sw	a1, 340(a0)
	lw	a1, 348(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 344(a0)
	addi	a1, a1, 32
	lw	a2, 384(a0)
	sraiw	a1, a1, 6
	sw	a1, 348(a0)
	lw	a1, 388(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 384(a0)
	addi	a1, a1, 32
	lw	a2, 392(a0)
	sraiw	a1, a1, 6
	sw	a1, 388(a0)
	lw	a1, 396(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 392(a0)
	addi	a1, a1, 32
	lw	a2, 400(a0)
	sraiw	a1, a1, 6
	sw	a1, 396(a0)
	lw	a1, 404(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 400(a0)
	addi	a1, a1, 32
	lw	a2, 408(a0)
	sraiw	a1, a1, 6
	sw	a1, 404(a0)
	lw	a1, 412(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 408(a0)
	addi	a1, a1, 32
	lw	a2, 448(a0)
	sraiw	a1, a1, 6
	sw	a1, 412(a0)
	lw	a1, 452(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 448(a0)
	addi	a1, a1, 32
	lw	a2, 456(a0)
	sraiw	a1, a1, 6
	sw	a1, 452(a0)
	lw	a1, 460(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 456(a0)
	addi	a1, a1, 32
	lw	a2, 464(a0)
	sraiw	a1, a1, 6
	sw	a1, 460(a0)
	lw	a1, 468(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 464(a0)
	addi	a1, a1, 32
	lw	a2, 472(a0)
	sraiw	a1, a1, 6
	sw	a1, 468(a0)
	lw	a1, 476(a0)
	addi	a2, a2, 32
	sraiw	a2, a2, 6
	sw	a2, 472(a0)
	addi	a1, a1, 32
	sraiw	a1, a1, 6
	sw	a1, 476(a0)
.LBB4_51:
	mv	a0, n3
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
.LBB4_52:
	li	s0, 0
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	addi	a2, a0, 1
	sd	a2, 192(sp)                     # 8-byte Folded Spill
	addi	a2, a0, 2
	sd	a2, 184(sp)                     # 8-byte Folded Spill
	addi	a2, a0, 3
	sd	a2, 168(sp)                     # 8-byte Folded Spill
	addi	a2, a0, 4
	sd	a2, 152(sp)                     # 8-byte Folded Spill
	addi	a2, a0, 5
	sd	a2, 144(sp)                     # 8-byte Folded Spill
	addi	a2, a0, 6
	sd	a2, 136(sp)                     # 8-byte Folded Spill
	ori	s10, a0, 7
	slli	a0, n4, 5
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	andi	a2, a2, 1
	slli	a2, a2, 4
	or	s11, a0, a2
	lui	s1, %hi(enc_picture)
	lui	s2, 2
	lui	s3, 3
	addiw	s4, s3, 824
	lui	s8, %hi(img)
	li	t3, 512
	addiw	s9, s3, 312
	j	.LBB4_55
.LBB4_53:                               #   in Loop: Header=BB4_55 Depth=1
	ld	a2, %lo(enc_picture)(s1)
	add	a2, a2, s2
	ld	a2, -1768(a2)
	add	a3, a0, s0
	lw	a4, 0(a3)
	add	a0, a0, s11
	lhu	a5, -512(a0)
	lw	a1, 152(a1)
	add	a2, a2, s6
	ld	a2, 0(a2)
	add	a4, a4, a5
	ld	a5, 176(sp)                     # 8-byte Folded Reload
	addw	a5, a1, a5
	slli	a5, a5, 1
	add	a5, a2, a5
	sh	a4, 0(a5)
	lw	a5, 4(a3)
	lhu	a6, -510(a0)
	add	a5, a5, a6
	ld	a6, 192(sp)                     # 8-byte Folded Reload
	addw	a6, a1, a6
	slli	a6, a6, 1
	add	a6, a2, a6
	sh	a5, 0(a6)
	lw	a6, 8(a3)
	lhu	a7, -508(a0)
	add	a6, a6, a7
	ld	a7, 184(sp)                     # 8-byte Folded Reload
	addw	a7, a1, a7
	slli	a7, a7, 1
	add	a7, a2, a7
	sh	a6, 0(a7)
	lw	a7, 12(a3)
	lhu	t0, -506(a0)
	add	a7, a7, t0
	ld	t0, 168(sp)                     # 8-byte Folded Reload
	addw	t0, a1, t0
	slli	t0, t0, 1
	add	t0, a2, t0
	sh	a7, 0(t0)
	lw	t0, 16(a3)
	lhu	t1, -504(a0)
	add	t0, t0, t1
	ld	t1, 152(sp)                     # 8-byte Folded Reload
	addw	t1, a1, t1
	slli	t1, t1, 1
	add	t1, a2, t1
	sh	t0, 0(t1)
	lw	t1, 20(a3)
	lhu	t2, -502(a0)
	sw	a4, 0(a3)
	add	t1, t1, t2
	ld	a4, 144(sp)                     # 8-byte Folded Reload
	addw	a4, a1, a4
	slli	a4, a4, 1
	add	a4, a2, a4
	sh	t1, 0(a4)
	lw	a4, 24(a3)
	lhu	t2, -500(a0)
	sw	a5, 4(a3)
	sw	a6, 8(a3)
	sw	a7, 12(a3)
	add	a4, a4, t2
	ld	a5, 136(sp)                     # 8-byte Folded Reload
	addw	a5, a1, a5
	slli	a5, a5, 1
	add	a5, a2, a5
	sh	a4, 0(a5)
	lw	a5, 28(a3)
	lhu	a0, -498(a0)
	sw	t0, 16(a3)
	sw	t1, 20(a3)
	sw	a4, 24(a3)
	add	a0, a5, a0
	sw	a0, 28(a3)
	addw	a3, a1, s10
	ld	a1, %lo(img)(s8)
.LBB4_54:                               #   in Loop: Header=BB4_55 Depth=1
	slli	a3, a3, 1
	add	a2, a2, a3
	sh	a0, 0(a2)
	addi	s0, s0, 64
	addi	n4, n4, 1
	addi	s11, s11, 32
	beq	s0, t3, .LBB4_51
.LBB4_55:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 156(a1)
	add	a0, n4, a0
	slli	s6, a0, 3
	add	a0, a1, s4
	bnez	n10, .LBB4_53
# %bb.56:                               #   in Loop: Header=BB4_55 Depth=1
	add	a1, a0, s0
	add	a0, a0, s11
	lhu	a0, -512(a0)
	lw	a1, 0(a1)
	slli	a0, a0, 6
	add	a0, a1, a0
	addi	a0, a0, 32
	srai	a0, a0, 6
	mv	s5, n3
	mv	s7, n4
	call	clip1a
	ld	a1, %lo(enc_picture)(s1)
	ld	a2, %lo(img)(s8)
	add	a1, a1, s2
	ld	a1, -1768(a1)
	add	a3, a2, s4
	lw	a2, 152(a2)
	add	a1, a1, s6
	ld	a1, 0(a1)
	add	a4, a3, s0
	ld	a5, 176(sp)                     # 8-byte Folded Reload
	addw	a2, a2, a5
	slli	a2, a2, 1
	add	a1, a1, a2
	sh	a0, 0(a1)
	add	a3, a3, s11
	lhu	a1, -510(a3)
	lw	a2, 4(a4)
	sw	a0, 0(a4)
	slli	a1, a1, 6
	add	a1, a2, a1
	addi	a0, a1, 32
	srai	a0, a0, 6
	call	clip1a
	ld	a1, %lo(enc_picture)(s1)
	ld	a2, %lo(img)(s8)
	add	a1, a1, s2
	ld	a1, -1768(a1)
	add	a3, s0, s9
	lw	a4, 152(a2)
	add	a1, a1, s6
	ld	a1, 0(a1)
	add	a3, a2, a3
	ld	a5, 192(sp)                     # 8-byte Folded Reload
	addw	a4, a4, a5
	slli	a4, a4, 1
	add	a1, a1, a4
	sh	a0, 0(a1)
	add	a1, s11, s3
	add	a1, a2, a1
	lhu	a1, 316(a1)
	lw	a2, 520(a3)
	sw	a0, 516(a3)
	slli	a1, a1, 6
	add	a1, a2, a1
	addi	a0, a1, 32
	srai	a0, a0, 6
	call	clip1a
	ld	a1, %lo(enc_picture)(s1)
	ld	a2, %lo(img)(s8)
	add	a1, a1, s2
	ld	a1, -1768(a1)
	add	a3, s0, s9
	lw	a4, 152(a2)
	add	a1, a1, s6
	ld	a1, 0(a1)
	add	a3, a2, a3
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	addw	a4, a4, a5
	slli	a4, a4, 1
	add	a1, a1, a4
	sh	a0, 0(a1)
	add	a1, s11, s3
	add	a1, a2, a1
	lhu	a1, 318(a1)
	lw	a2, 524(a3)
	sw	a0, 520(a3)
	slli	a1, a1, 6
	add	a1, a2, a1
	addi	a0, a1, 32
	srai	a0, a0, 6
	call	clip1a
	ld	a1, %lo(enc_picture)(s1)
	ld	a2, %lo(img)(s8)
	add	a1, a1, s2
	ld	a1, -1768(a1)
	add	a3, s0, s9
	lw	a4, 152(a2)
	add	a1, a1, s6
	ld	a1, 0(a1)
	add	a3, a2, a3
	ld	a5, 168(sp)                     # 8-byte Folded Reload
	addw	a4, a4, a5
	slli	a4, a4, 1
	add	a1, a1, a4
	sh	a0, 0(a1)
	add	a1, s11, s3
	add	a1, a2, a1
	lhu	a1, 320(a1)
	lw	a2, 528(a3)
	sw	a0, 524(a3)
	slli	a1, a1, 6
	add	a1, a2, a1
	addi	a0, a1, 32
	srai	a0, a0, 6
	call	clip1a
	ld	a1, %lo(enc_picture)(s1)
	ld	a2, %lo(img)(s8)
	add	a1, a1, s2
	ld	a1, -1768(a1)
	add	a3, s0, s9
	lw	a4, 152(a2)
	add	a1, a1, s6
	ld	a1, 0(a1)
	add	a3, a2, a3
	ld	a5, 152(sp)                     # 8-byte Folded Reload
	addw	a4, a4, a5
	slli	a4, a4, 1
	add	a1, a1, a4
	sh	a0, 0(a1)
	add	a1, s11, s3
	add	a1, a2, a1
	lhu	a1, 322(a1)
	lw	a2, 532(a3)
	sw	a0, 528(a3)
	slli	a1, a1, 6
	add	a1, a2, a1
	addi	a0, a1, 32
	srai	a0, a0, 6
	call	clip1a
	ld	a1, %lo(enc_picture)(s1)
	ld	a2, %lo(img)(s8)
	add	a1, a1, s2
	ld	a1, -1768(a1)
	add	a3, s0, s9
	lw	a4, 152(a2)
	add	a1, a1, s6
	ld	a1, 0(a1)
	add	a3, a2, a3
	ld	a5, 144(sp)                     # 8-byte Folded Reload
	addw	a4, a4, a5
	slli	a4, a4, 1
	add	a1, a1, a4
	sh	a0, 0(a1)
	add	a1, s11, s3
	add	a1, a2, a1
	lhu	a1, 324(a1)
	lw	a2, 536(a3)
	sw	a0, 532(a3)
	slli	a1, a1, 6
	add	a1, a2, a1
	addi	a0, a1, 32
	srai	a0, a0, 6
	call	clip1a
	ld	a1, %lo(enc_picture)(s1)
	ld	a2, %lo(img)(s8)
	add	a1, a1, s2
	ld	a1, -1768(a1)
	add	a3, s0, s9
	lw	a4, 152(a2)
	add	a1, a1, s6
	ld	a1, 0(a1)
	add	a3, a2, a3
	ld	a5, 136(sp)                     # 8-byte Folded Reload
	addw	a4, a4, a5
	slli	a4, a4, 1
	add	a1, a1, a4
	sh	a0, 0(a1)
	add	a1, s11, s3
	add	a1, a2, a1
	lhu	a1, 326(a1)
	lw	a2, 540(a3)
	sw	a0, 536(a3)
	slli	a1, a1, 6
	add	a1, a2, a1
	addi	a0, a1, 32
	srai	a0, a0, 6
	call	clip1a
	li	t3, 512
	mv	n4, s7
	ld	n10, 160(sp)                    # 8-byte Folded Reload
	mv	n3, s5
	ld	a2, %lo(enc_picture)(s1)
	ld	a1, %lo(img)(s8)
	add	a2, a2, s2
	ld	a2, -1768(a2)
	add	a3, s0, s3
	add	a3, a1, a3
	lw	a4, 152(a1)
	add	a2, a2, s6
	ld	a2, 0(a2)
	sw	a0, 852(a3)
	addw	a3, a4, s10
	j	.LBB4_54
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
	lw	a7, 0(a0)
	lw	n7, 4(a0)
	lw	a5, 8(a0)
	lw	n6, 12(a0)
	lw	n5, 16(a0)
	lw	n4, 20(a0)
	lw	n3, 24(a0)
	lw	n2, 28(a0)
	lw	n1, 32(a0)
	lw	t5, 36(a0)
	lw	t4, 40(a0)
	lw	t3, 44(a0)
	lw	t2, 48(a0)
	lw	t1, 52(a0)
	lw	t0, 56(a0)
	lw	a6, 60(a0)
	lw	a4, 64(a0)
	beqz	a2, .LBB5_3
# %bb.1:
	slli	t6, n7, 1
	beqz	a1, .LBB5_4
# %bb.2:
	add	t6, a7, t6
	j	.LBB5_5
.LBB5_3:
	mv	t6, n7
	j	.LBB5_6
.LBB5_4:
	add	t6, t6, n7
.LBB5_5:
	addi	n8, a5, 2
	addw	t6, n8, t6
	srai	t6, t6, 2
	slli	a5, a5, 1
	add	n9, n7, n6
	add	a5, n9, a5
	addi	a5, a5, 2
	sraiw	a5, a5, 2
	slli	n9, n6, 1
	add	n8, n8, n9
	add	n8, n8, n5
	add	n6, n6, n4
	sraiw	n8, n8, 2
	slli	n9, n5, 1
	add	n6, n6, n9
	addi	n6, n6, 2
	add	n5, n5, n3
	sraiw	n6, n6, 2
	slli	n9, n4, 1
	add	n5, n5, n9
	addi	n5, n5, 2
	add	n4, n4, n2
	sraiw	n5, n5, 2
	slli	n9, n3, 1
	add	n4, n4, n9
	addi	n4, n4, 2
	add	n3, n3, n1
	sraiw	n4, n4, 2
	slli	n9, n2, 1
	add	n3, n3, n9
	addi	n3, n3, 2
	add	n2, n2, t5
	sraiw	n3, n3, 2
	slli	n9, n1, 1
	add	n2, n2, n9
	addi	n2, n2, 2
	add	n1, n1, t4
	sraiw	n2, n2, 2
	slli	n9, t5, 1
	add	n1, n1, n9
	addi	n1, n1, 2
	add	t5, t5, t3
	sraiw	n1, n1, 2
	slli	n9, t4, 1
	add	t5, t5, n9
	addi	t5, t5, 2
	add	t4, t4, t2
	sraiw	t5, t5, 2
	slli	n9, t3, 1
	add	t4, t4, n9
	addi	t4, t4, 2
	add	t3, t3, t1
	sraiw	t4, t4, 2
	slli	n9, t2, 1
	add	t3, t3, n9
	addi	t3, t3, 2
	add	t2, t2, t0
	sraiw	t3, t3, 2
	slli	n9, t1, 1
	add	t2, t2, n9
	addi	t2, t2, 2
	add	t1, t1, a6
	sraiw	t2, t2, 2
	slli	n9, t0, 1
	add	t1, t1, n9
	addi	t1, t1, 2
	add	t0, t0, a4
	sraiw	t1, t1, 2
	slli	n9, a6, 1
	add	t0, t0, n9
	addi	t0, t0, 2
	add	a6, a6, a4
	sraiw	t0, t0, 2
	slli	a4, a4, 1
	add	a4, a6, a4
	addi	a4, a4, 2
	sraiw	a4, a4, 2
	mv	a6, t0
	mv	t0, t1
	mv	t1, t2
	mv	t2, t3
	mv	t3, t4
	mv	t4, t5
	mv	t5, n1
	mv	n1, n2
	mv	n2, n3
	mv	n3, n4
	mv	n4, n5
	mv	n5, n6
	mv	n6, n8
.LBB5_6:
	lw	n15, 68(a0)
	lw	n9, 72(a0)
	lw	n14, 76(a0)
	lw	n13, 80(a0)
	lw	n12, 84(a0)
	lw	n11, 88(a0)
	lw	n10, 92(a0)
	lw	n8, 96(a0)
	beqz	a1, .LBB5_11
# %bb.7:
	beqz	a2, .LBB5_13
# %bb.8:
	beqz	a3, .LBB5_13
# %bb.9:
	slli	a1, a7, 1
	add	n7, n15, n7
	add	a1, n7, a1
.LBB5_10:
	addi	a1, a1, 2
	sraiw	a1, a1, 2
	j	.LBB5_15
.LBB5_11:
	beqz	a3, .LBB5_17
# %bb.12:
	slli	a1, n15, 1
	add	a1, a1, n15
	addi	a2, n9, 2
	addw	a3, a2, a1
	j	.LBB5_16
.LBB5_13:
	beqz	a2, .LBB5_18
# %bb.14:
	slli	a1, a7, 1
	add	n7, n7, a7
	add	a1, n7, a1
	addi	a1, a1, 2
	sraiw	a1, a1, 2
	beqz	a3, .LBB5_20
.LBB5_15:
	slli	a2, n15, 1
	add	a3, a7, a2
	addi	a2, n9, 2
	addw	a3, a2, a3
	mv	a7, a1
.LBB5_16:
	add	n15, n15, n14
	srai	a3, a3, 2
	slli	n9, n9, 1
	add	n9, n15, n9
	addi	n9, n9, 2
	sraiw	n9, n9, 2
	slli	a1, n14, 1
	add	a1, a2, a1
	add	a1, a1, n13
	add	n14, n14, n12
	sraiw	a1, a1, 2
	slli	a2, n13, 1
	add	a2, n14, a2
	addi	a2, a2, 2
	add	n13, n13, n11
	sraiw	a2, a2, 2
	slli	n7, n12, 1
	add	n7, n13, n7
	addi	n7, n7, 2
	add	n12, n12, n10
	sraiw	n7, n7, 2
	slli	n13, n11, 1
	add	n12, n12, n13
	addi	n12, n12, 2
	add	n11, n11, n8
	sraiw	n12, n12, 2
	slli	n13, n10, 1
	add	n11, n11, n13
	addi	n11, n11, 2
	add	n10, n10, n8
	sraiw	n11, n11, 2
	slli	n8, n8, 1
	add	n8, n10, n8
	addi	n8, n8, 2
	sraiw	n8, n8, 2
	mv	n10, n11
	mv	n11, n12
	mv	n12, n7
	mv	n13, a2
	mv	n14, a1
	mv	n15, a3
.LBB5_17:
	sw	a7, 0(a0)
	sw	t6, 4(a0)
	sw	a5, 8(a0)
	sw	n6, 12(a0)
	sw	n5, 16(a0)
	sw	n4, 20(a0)
	sw	n3, 24(a0)
	sw	n2, 28(a0)
	sw	n1, 32(a0)
	sw	t5, 36(a0)
	sw	t4, 40(a0)
	sw	t3, 44(a0)
	sw	t2, 48(a0)
	sw	t1, 52(a0)
	sw	t0, 56(a0)
	sw	a6, 60(a0)
	sw	a4, 64(a0)
	sw	n15, 68(a0)
	sw	n9, 72(a0)
	sw	n14, 76(a0)
	sw	n13, 80(a0)
	sw	n12, 84(a0)
	sw	n11, 88(a0)
	sw	n10, 92(a0)
	sw	n8, 96(a0)
	ret
.LBB5_18:
	beqz	a3, .LBB5_17
# %bb.19:
	slli	a1, a7, 1
	add	a2, n15, a7
	add	a1, a2, a1
	j	.LBB5_10
.LBB5_20:
	mv	a7, a1
	j	.LBB5_17
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
