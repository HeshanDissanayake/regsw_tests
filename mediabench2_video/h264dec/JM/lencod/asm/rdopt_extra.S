	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"rdopt.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	clear_rdopt                     # -- Begin function clear_rdopt
	.p2align	2
	.type	clear_rdopt,@function
clear_rdopt:                            # @clear_rdopt
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(cofDC)
	ld	a0, %lo(cofDC)(a0)
	call	free_mem_DCcoeff
	lui	a0, %hi(cofAC)
	ld	a0, %lo(cofAC)(a0)
	call	free_mem_ACcoeff
	lui	a0, %hi(cofAC8x8)
	ld	a0, %lo(cofAC8x8)(a0)
	call	free_mem_ACcoeff
	lui	a0, %hi(cofAC4x4intern)
	ld	a0, %lo(cofAC4x4intern)(a0)
	call	free_mem_ACcoeff
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1845(a0)
	beqz	a0, .LBB0_2
# %bb.1:
	lui	a0, %hi(cofAC_8x8ts)
	ld	a0, %lo(cofAC_8x8ts)(a0)
	call	free_mem_ACcoeff
.LBB0_2:
	lui	a0, %hi(cs_mb)
	ld	a0, %lo(cs_mb)(a0)
	call	delete_coding_state
	lui	a0, %hi(cs_b8)
	ld	a0, %lo(cs_b8)(a0)
	call	delete_coding_state
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	call	delete_coding_state
	lui	a0, %hi(cs_imb)
	ld	a0, %lo(cs_imb)(a0)
	call	delete_coding_state
	lui	a0, %hi(cs_ib8)
	ld	a0, %lo(cs_ib8)(a0)
	call	delete_coding_state
	lui	a0, %hi(cs_ib4)
	ld	a0, %lo(cs_ib4)(a0)
	call	delete_coding_state
	lui	a0, %hi(cs_pc)
	ld	a0, %lo(cs_pc)(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	delete_coding_state
.Lfunc_end0:
	.size	clear_rdopt, .Lfunc_end0-clear_rdopt
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_rdopt                      # -- Begin function init_rdopt
	.p2align	2
	.type	init_rdopt,@function
init_rdopt:                             # @init_rdopt
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(rdopt)
	sd	zero, %lo(rdopt)(a0)
	lui	a0, %hi(cofDC)
	addi	a0, a0, %lo(cofDC)
	call	get_mem_DCcoeff
	lui	a0, %hi(cofAC)
	addi	a0, a0, %lo(cofAC)
	call	get_mem_ACcoeff
	lui	a0, %hi(cofAC8x8)
	addi	a0, a0, %lo(cofAC8x8)
	call	get_mem_ACcoeff
	lui	s0, %hi(cofAC4x4intern)
	addi	a0, s0, %lo(cofAC4x4intern)
	call	get_mem_ACcoeff
	ld	a0, %lo(cofAC4x4intern)(s0)
	ld	a0, 0(a0)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	ld	a0, 0(a0)
	addi	a1, a1, 2047
	lw	a1, 1845(a1)
	lui	a2, %hi(cofAC4x4)
	sd	a0, %lo(cofAC4x4)(a2)
	beqz	a1, .LBB1_2
# %bb.1:
	lui	a0, %hi(cofAC_8x8ts)
	addi	a0, a0, %lo(cofAC_8x8ts)
	call	get_mem_ACcoeff
.LBB1_2:
	call	create_coding_state
	lui	a1, %hi(cs_mb)
	sd	a0, %lo(cs_mb)(a1)
	call	create_coding_state
	lui	a1, %hi(cs_b8)
	sd	a0, %lo(cs_b8)(a1)
	call	create_coding_state
	lui	a1, %hi(cs_cm)
	sd	a0, %lo(cs_cm)(a1)
	call	create_coding_state
	lui	a1, %hi(cs_imb)
	sd	a0, %lo(cs_imb)(a1)
	call	create_coding_state
	lui	a1, %hi(cs_ib8)
	sd	a0, %lo(cs_ib8)(a1)
	call	create_coding_state
	lui	a1, %hi(cs_ib4)
	sd	a0, %lo(cs_ib4)(a1)
	call	create_coding_state
	lui	a1, %hi(cs_pc)
	sd	a0, %lo(cs_pc)(a1)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	init_rdopt, .Lfunc_end1-init_rdopt
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UpdatePixelMap                  # -- Begin function UpdatePixelMap
	.p2align	2
	.type	UpdatePixelMap,@function
UpdatePixelMap:                         # @UpdatePixelMap
# %bb.0:
	lui	a0, %hi(img)
	ld	t4, %lo(img)(a0)
	lw	a0, 24(t4)
	lw	a1, 60(t4)
	li	a2, 2
	bne	a0, a2, .LBB2_8
# %bb.1:
	blez	a1, .LBB2_33
# %bb.2:
	lw	a0, 52(t4)
	blez	a0, .LBB2_33
# %bb.3:                                # %.preheader1
	li	a0, 0
	lui	a1, %hi(pixel_map)
	li	a2, 1
	lui	a3, %hi(img)
	j	.LBB2_5
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	lw	a4, 60(t4)
	addi	a0, a0, 1
	bge	a0, a4, .LBB2_33
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	lw	a4, 52(t4)
	blez	a4, .LBB2_4
# %bb.6:                                # %.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	li	a4, 0
	slli	a5, a0, 3
.LBB2_7:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, %lo(pixel_map)(a1)
	add	a6, a6, a5
	ld	a6, 0(a6)
	add	a6, a6, a4
	sb	a2, 0(a6)
	ld	t4, %lo(img)(a3)
	lw	a6, 52(t4)
	addi	a4, a4, 1
	blt	a4, a6, .LBB2_7
	j	.LBB2_4
.LBB2_8:
	li	a0, 8
	blt	a1, a0, .LBB2_33
# %bb.9:                                # %.preheader9
	li	a6, 0
	li	a1, 0
	lui	a2, %hi(refresh_map)
	lui	a3, %hi(pixel_map)
	lui	a4, %hi(input)
	lui	a5, %hi(img)
	li	a7, 1
	j	.LBB2_11
.LBB2_10:                               #   in Loop: Header=BB2_11 Depth=1
	lw	a6, 60(t4)
	addi	a1, a1, 1
	srai	t1, a6, 3
	mv	a6, t0
	bge	a1, t1, .LBB2_33
.LBB2_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
                                        #       Child Loop BB2_15 Depth 3
                                        #       Child Loop BB2_17 Depth 3
	lw	t1, 52(t4)
	addi	t0, a6, 64
	blt	t1, a0, .LBB2_10
# %bb.12:                               # %.preheader7
                                        #   in Loop: Header=BB2_11 Depth=1
	li	t1, 0
	li	t2, 0
	slli	t3, a1, 3
	j	.LBB2_14
.LBB2_13:                               #   in Loop: Header=BB2_14 Depth=2
	ld	t4, %lo(img)(a5)
	lw	t5, 52(t4)
	addi	t1, t1, 1
	srai	t5, t5, 3
	addi	t2, t2, 8
	bge	t1, t5, .LBB2_10
.LBB2_14:                               #   Parent Loop BB2_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_15 Depth 3
                                        #       Child Loop BB2_17 Depth 3
	ld	t4, %lo(refresh_map)(a2)
	add	t4, t4, t3
	ld	t4, 0(t4)
	add	t4, t4, t1
	lbu	n7, 0(t4)
	addi	t4, t2, 1
	addi	t5, t2, 2
	addi	t6, t2, 3
	addi	n1, t2, 4
	addi	n2, t2, 5
	addi	n3, t2, 6
	addi	n4, t2, 7
	mv	n6, a6
	mv	n5, a6
	beqz	n7, .LBB2_17
.LBB2_15:                               #   Parent Loop BB2_11 Depth=1
                                        #     Parent Loop BB2_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	n5, %lo(pixel_map)(a3)
	add	n5, n5, n6
	ld	n5, 0(n5)
	add	n5, n5, t2
	sb	a7, 0(n5)
	ld	n5, %lo(pixel_map)(a3)
	add	n5, n5, n6
	ld	n5, 0(n5)
	add	n5, n5, t4
	sb	a7, 0(n5)
	ld	n5, %lo(pixel_map)(a3)
	add	n5, n5, n6
	ld	n5, 0(n5)
	add	n5, n5, t5
	sb	a7, 0(n5)
	ld	n5, %lo(pixel_map)(a3)
	add	n5, n5, n6
	ld	n5, 0(n5)
	add	n5, n5, t6
	sb	a7, 0(n5)
	ld	n5, %lo(pixel_map)(a3)
	add	n5, n5, n6
	ld	n5, 0(n5)
	add	n5, n5, n1
	sb	a7, 0(n5)
	ld	n5, %lo(pixel_map)(a3)
	add	n5, n5, n6
	ld	n5, 0(n5)
	add	n5, n5, n2
	sb	a7, 0(n5)
	ld	n5, %lo(pixel_map)(a3)
	add	n5, n5, n6
	ld	n5, 0(n5)
	add	n5, n5, n3
	sb	a7, 0(n5)
	ld	n5, %lo(pixel_map)(a3)
	add	n5, n5, n6
	ld	n5, 0(n5)
	add	n5, n5, n4
	addi	n6, n6, 8
	sb	a7, 0(n5)
	bne	n6, t0, .LBB2_15
	j	.LBB2_13
.LBB2_16:                               #   in Loop: Header=BB2_17 Depth=3
	addi	n7, n7, 1
	addi	n5, n5, 8
	sb	n7, 0(n6)
	beq	n5, t0, .LBB2_13
.LBB2_17:                               #   Parent Loop BB2_11 Depth=1
                                        #     Parent Loop BB2_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	n6, %lo(pixel_map)(a3)
	add	n6, n6, n5
	ld	n6, 0(n6)
	ld	n7, %lo(input)(a4)
	add	n6, n6, t2
	lbu	n8, 0(n6)
	lw	n7, 36(n7)
	blt	n7, n8, .LBB2_19
# %bb.18:                               #   in Loop: Header=BB2_17 Depth=3
	mv	n7, n8
.LBB2_19:                               #   in Loop: Header=BB2_17 Depth=3
	addi	n7, n7, 1
	sb	n7, 0(n6)
	ld	n6, %lo(pixel_map)(a3)
	add	n6, n6, n5
	ld	n6, 0(n6)
	ld	n7, %lo(input)(a4)
	add	n6, n6, t4
	lbu	n8, 0(n6)
	lw	n7, 36(n7)
	blt	n7, n8, .LBB2_21
# %bb.20:                               #   in Loop: Header=BB2_17 Depth=3
	mv	n7, n8
.LBB2_21:                               #   in Loop: Header=BB2_17 Depth=3
	addi	n7, n7, 1
	sb	n7, 0(n6)
	ld	n6, %lo(pixel_map)(a3)
	add	n6, n6, n5
	ld	n6, 0(n6)
	ld	n7, %lo(input)(a4)
	add	n6, n6, t5
	lbu	n8, 0(n6)
	lw	n7, 36(n7)
	blt	n7, n8, .LBB2_23
# %bb.22:                               #   in Loop: Header=BB2_17 Depth=3
	mv	n7, n8
.LBB2_23:                               #   in Loop: Header=BB2_17 Depth=3
	addi	n7, n7, 1
	sb	n7, 0(n6)
	ld	n6, %lo(pixel_map)(a3)
	add	n6, n6, n5
	ld	n6, 0(n6)
	ld	n7, %lo(input)(a4)
	add	n6, n6, t6
	lbu	n8, 0(n6)
	lw	n7, 36(n7)
	blt	n7, n8, .LBB2_25
# %bb.24:                               #   in Loop: Header=BB2_17 Depth=3
	mv	n7, n8
.LBB2_25:                               #   in Loop: Header=BB2_17 Depth=3
	addi	n7, n7, 1
	sb	n7, 0(n6)
	ld	n6, %lo(pixel_map)(a3)
	add	n6, n6, n5
	ld	n6, 0(n6)
	ld	n7, %lo(input)(a4)
	add	n6, n6, n1
	lbu	n8, 0(n6)
	lw	n7, 36(n7)
	blt	n7, n8, .LBB2_27
# %bb.26:                               #   in Loop: Header=BB2_17 Depth=3
	mv	n7, n8
.LBB2_27:                               #   in Loop: Header=BB2_17 Depth=3
	addi	n7, n7, 1
	sb	n7, 0(n6)
	ld	n6, %lo(pixel_map)(a3)
	add	n6, n6, n5
	ld	n6, 0(n6)
	ld	n7, %lo(input)(a4)
	add	n6, n6, n2
	lbu	n8, 0(n6)
	lw	n7, 36(n7)
	blt	n7, n8, .LBB2_29
# %bb.28:                               #   in Loop: Header=BB2_17 Depth=3
	mv	n7, n8
.LBB2_29:                               #   in Loop: Header=BB2_17 Depth=3
	addi	n7, n7, 1
	sb	n7, 0(n6)
	ld	n6, %lo(pixel_map)(a3)
	add	n6, n6, n5
	ld	n6, 0(n6)
	ld	n7, %lo(input)(a4)
	add	n6, n6, n3
	lbu	n8, 0(n6)
	lw	n7, 36(n7)
	blt	n7, n8, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_17 Depth=3
	mv	n7, n8
.LBB2_31:                               #   in Loop: Header=BB2_17 Depth=3
	addi	n7, n7, 1
	sb	n7, 0(n6)
	ld	n6, %lo(pixel_map)(a3)
	add	n6, n6, n5
	ld	n6, 0(n6)
	ld	n7, %lo(input)(a4)
	add	n6, n6, n4
	lbu	n8, 0(n6)
	lw	n7, 36(n7)
	blt	n7, n8, .LBB2_16
# %bb.32:                               #   in Loop: Header=BB2_17 Depth=3
	mv	n7, n8
	j	.LBB2_16
.LBB2_33:
	ret
.Lfunc_end2:
	.size	UpdatePixelMap, .Lfunc_end2-UpdatePixelMap
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CheckReliabilityOfRef           # -- Begin function CheckReliabilityOfRef
	.p2align	2
	.type	CheckReliabilityOfRef,@function
CheckReliabilityOfRef:                  # @CheckReliabilityOfRef
# %bb.0:
	lui	a4, %hi(img)
	ld	t3, %lo(img)(a4)
	lw	a5, 52(t3)
	lw	a6, 60(t3)
	slti	a4, a3, 4
	xori	a7, a4, 1
	addi	a4, a3, -2
	seqz	t0, a4
	li	t1, 3
	slliw	a4, a0, 1
	blt	t1, a3, .LBB3_2
# %bb.1:
	neg	a0, t0
	and	a0, a0, a4
	or	t2, a7, t0
	li	t0, 2
	li	a7, 2
	beqz	t2, .LBB3_3
	j	.LBB3_4
.LBB3_2:
	andi	a0, a0, -2
	or	t2, a7, t0
	li	t0, 2
	li	a7, 2
	bnez	t2, .LBB3_4
.LBB3_3:
	li	a7, 4
.LBB3_4:
	blt	t1, a3, .LBB3_6
# %bb.5:
	addi	t1, a3, -3
	snez	t1, t1
	addi	t1, t1, -1
	and	a4, t1, a4
	bge	t0, a3, .LBB3_7
	j	.LBB3_8
.LBB3_6:
	andi	a4, a4, 2
	blt	t0, a3, .LBB3_8
.LBB3_7:
	li	t0, 4
.LBB3_8:
	addiw	a5, a5, -1
	addiw	a6, a6, -1
	addw	a7, a0, a7
	addw	t0, a4, t0
	lui	t1, 22
	add	t1, t3, t1
	ld	t1, -776(t1)
	lw	t2, 148(t3)
	lw	t3, 144(t3)
	lui	t4, %hi(pixel_map)
	ld	t4, %lo(pixel_map)(t4)
	slli	a1, a1, 3
	slli	t5, a2, 3
	slli	a3, a3, 3
	li	t6, 2
	li	n1, 4
	li	n2, 1
.LBB3_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
                                        #       Child Loop BB3_263 Depth 3
                                        #         Child Loop BB3_297 Depth 4
                                        #         Child Loop BB3_272 Depth 4
                                        #       Child Loop BB3_199 Depth 3
                                        #         Child Loop BB3_212 Depth 4
                                        #       Child Loop BB3_97 Depth 3
                                        #       Child Loop BB3_135 Depth 3
                                        #         Child Loop BB3_148 Depth 4
                                        #       Child Loop BB3_62 Depth 3
	slli	n3, a0, 3
	add	n3, t1, n3
	ld	n3, 0(n3)
	add	n4, t2, a0
	slli	n4, n4, 4
	mv	n5, a4
.LBB3_10:                               #   Parent Loop BB3_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_263 Depth 3
                                        #         Child Loop BB3_297 Depth 4
                                        #         Child Loop BB3_272 Depth 4
                                        #       Child Loop BB3_199 Depth 3
                                        #         Child Loop BB3_212 Depth 4
                                        #       Child Loop BB3_97 Depth 3
                                        #       Child Loop BB3_135 Depth 3
                                        #         Child Loop BB3_148 Depth 4
                                        #       Child Loop BB3_62 Depth 3
	slli	n6, n5, 3
	add	n6, n3, n6
	ld	n6, 0(n6)
	add	n6, n6, a1
	ld	n6, 0(n6)
	add	n6, n6, t5
	ld	n6, 0(n6)
	add	n6, n6, a3
	ld	n6, 0(n6)
	lh	n7, 0(n6)
	lh	n9, 2(n6)
	slli	n6, n7, 48
	srai	n8, n6, 48
	add	n6, n4, n9
	sraiw	n6, n6, 2
	add	n10, t3, n5
	slli	n10, n10, 4
	add	n10, n10, n8
	or	n7, n9, n7
	andi	n11, n7, 3
	sraiw	n7, n10, 2
	beqz	n11, .LBB3_18
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=2
	andi	n12, n9, 3
	beqz	n12, .LBB3_51
# %bb.12:                               #   in Loop: Header=BB3_10 Depth=2
	andi	n11, n8, 3
	beq	n11, t6, .LBB3_134
# %bb.13:                               #   in Loop: Header=BB3_10 Depth=2
	bnez	n11, .LBB3_198
# %bb.14:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n8, a5
	blt	a5, n7, .LBB3_92
# %bb.15:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n8, n7
	addi	n10, n7, 1
	mv	n9, a5
	bge	a5, n10, .LBB3_93
.LBB3_16:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n11, n7, 2
	mv	n10, a5
	blt	a5, n11, .LBB3_94
.LBB3_17:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n10, n11
	addi	n7, n7, 3
	mv	n11, a5
	bge	a5, n7, .LBB3_95
	j	.LBB3_96
.LBB3_18:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n8, a6
	blt	a6, n6, .LBB3_20
# %bb.19:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n8, n6
.LBB3_20:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n9, a5
	blt	a5, n7, .LBB3_22
# %bb.21:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n9, n7
.LBB3_22:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	n10, n8
	neg	n10, n10
	and	n8, n10, n8
	slli	n8, n8, 3
	add	n8, t4, n8
	ld	n11, 0(n8)
	sgtz	n8, n9
	neg	n8, n8
	and	n8, n8, n9
	add	n9, n11, n8
	lbu	n9, 0(n9)
	blt	a2, n9, .LBB3_23
	j	.LBB3_331
.LBB3_23:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n10, n7, 1
	mv	n9, a5
	blt	a5, n10, .LBB3_25
# %bb.24:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n9, n10
.LBB3_25:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	n10, n9
	neg	n10, n10
	and	n9, n10, n9
	add	n10, n11, n9
	lbu	n10, 0(n10)
	blt	a2, n10, .LBB3_26
	j	.LBB3_331
.LBB3_26:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n12, n7, 2
	mv	n10, a5
	blt	a5, n12, .LBB3_28
# %bb.27:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n10, n12
.LBB3_28:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	n12, n10
	neg	n12, n12
	and	n10, n12, n10
	add	n12, n11, n10
	lbu	n12, 0(n12)
	blt	a2, n12, .LBB3_29
	j	.LBB3_331
.LBB3_29:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n12, n7, 3
	mv	n7, a5
	blt	a5, n12, .LBB3_31
# %bb.30:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n7, n12
.LBB3_31:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	n12, n7
	neg	n12, n12
	and	n7, n12, n7
	add	n11, n11, n7
	lbu	n11, 0(n11)
	blt	a2, n11, .LBB3_32
	j	.LBB3_331
.LBB3_32:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n12, n6, 1
	mv	n11, a6
	blt	a6, n12, .LBB3_34
# %bb.33:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n11, n12
.LBB3_34:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	n12, n11
	neg	n12, n12
	and	n11, n12, n11
	slli	n11, n11, 3
	add	n11, t4, n11
	ld	n11, 0(n11)
	add	n12, n11, n8
	lbu	n12, 0(n12)
	blt	a2, n12, .LBB3_35
	j	.LBB3_331
.LBB3_35:                               #   in Loop: Header=BB3_10 Depth=2
	add	n12, n11, n9
	lbu	n12, 0(n12)
	blt	a2, n12, .LBB3_36
	j	.LBB3_331
.LBB3_36:                               #   in Loop: Header=BB3_10 Depth=2
	add	n12, n11, n10
	lbu	n12, 0(n12)
	blt	a2, n12, .LBB3_37
	j	.LBB3_331
.LBB3_37:                               #   in Loop: Header=BB3_10 Depth=2
	add	n11, n11, n7
	lbu	n11, 0(n11)
	blt	a2, n11, .LBB3_38
	j	.LBB3_331
.LBB3_38:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n12, n6, 2
	mv	n11, a6
	blt	a6, n12, .LBB3_40
# %bb.39:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n11, n12
.LBB3_40:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	n12, n11
	neg	n12, n12
	and	n11, n12, n11
	slli	n11, n11, 3
	add	n11, t4, n11
	ld	n11, 0(n11)
	add	n12, n11, n8
	lbu	n12, 0(n12)
	blt	a2, n12, .LBB3_41
	j	.LBB3_331
.LBB3_41:                               #   in Loop: Header=BB3_10 Depth=2
	add	n12, n11, n9
	lbu	n12, 0(n12)
	blt	a2, n12, .LBB3_42
	j	.LBB3_331
.LBB3_42:                               #   in Loop: Header=BB3_10 Depth=2
	add	n12, n11, n10
	lbu	n12, 0(n12)
	blt	a2, n12, .LBB3_43
	j	.LBB3_331
.LBB3_43:                               #   in Loop: Header=BB3_10 Depth=2
	add	n11, n11, n7
	lbu	n11, 0(n11)
	blt	a2, n11, .LBB3_44
	j	.LBB3_331
.LBB3_44:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n11, n6, 3
	mv	n6, a6
	blt	a6, n11, .LBB3_46
# %bb.45:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n6, n11
.LBB3_46:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	n11, n6
	neg	n11, n11
	and	n6, n11, n6
	slli	n6, n6, 3
	add	n6, t4, n6
	ld	n6, 0(n6)
	add	n8, n6, n8
	lbu	n8, 0(n8)
	blt	a2, n8, .LBB3_47
	j	.LBB3_331
.LBB3_47:                               #   in Loop: Header=BB3_10 Depth=2
	add	n9, n6, n9
	lbu	n8, 0(n9)
	blt	a2, n8, .LBB3_48
	j	.LBB3_331
.LBB3_48:                               #   in Loop: Header=BB3_10 Depth=2
	add	n10, n6, n10
	lbu	n8, 0(n10)
	blt	a2, n8, .LBB3_49
	j	.LBB3_331
.LBB3_49:                               #   in Loop: Header=BB3_10 Depth=2
	add	n6, n6, n7
	lbu	n6, 0(n6)
	blt	a2, n6, .LBB3_50
	j	.LBB3_331
.LBB3_50:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n5, n5, 1
	blt	n5, t0, .LBB3_10
	j	.LBB3_329
.LBB3_51:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n9, n7, -2
	mv	n8, a5
	blt	a5, n9, .LBB3_84
# %bb.52:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n8, n9
	addi	n10, n7, -1
	mv	n9, a5
	bge	a5, n10, .LBB3_85
.LBB3_53:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n10, a5
	blt	a5, n7, .LBB3_86
.LBB3_54:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n10, n7
	addi	n12, n7, 1
	mv	n11, a5
	bge	a5, n12, .LBB3_87
.LBB3_55:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n13, n7, 2
	mv	n12, a5
	blt	a5, n13, .LBB3_88
.LBB3_56:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n12, n13
	addi	n14, n7, 3
	mv	n13, a5
	bge	a5, n14, .LBB3_89
.LBB3_57:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n15, n7, 4
	mv	n14, a5
	blt	a5, n15, .LBB3_90
.LBB3_58:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n14, n15
	addi	n16, n7, 5
	mv	n15, a5
	bge	a5, n16, .LBB3_91
.LBB3_59:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n7, n7, 6
	mv	n16, a5
	blt	a5, n7, .LBB3_61
.LBB3_60:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n16, n7
.LBB3_61:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	n7, n8
	neg	n7, n7
	and	n7, n7, n8
	sgtz	n8, n9
	neg	n8, n8
	and	n8, n8, n9
	sgtz	n9, n10
	neg	n9, n9
	and	n9, n9, n10
	sgtz	n10, n11
	neg	n10, n10
	and	n10, n10, n11
	sgtz	n11, n12
	neg	n11, n11
	and	n11, n11, n12
	sgtz	n12, n13
	neg	n12, n12
	and	n12, n12, n13
	sgtz	n13, n14
	neg	n13, n13
	and	n13, n13, n14
	sgtz	n14, n15
	neg	n14, n14
	and	n14, n14, n15
	sgtz	n15, n16
	neg	n15, n15
	and	n15, n15, n16
	li	n16, 4
.LBB3_62:                               #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	n17, a6
	blt	a6, n6, .LBB3_64
# %bb.63:                               #   in Loop: Header=BB3_62 Depth=3
	mv	n17, n6
.LBB3_64:                               #   in Loop: Header=BB3_62 Depth=3
	sgtz	n18, n17
	neg	n18, n18
	and	n17, n18, n17
	slli	n17, n17, 3
	add	n17, t4, n17
	ld	n17, 0(n17)
	add	n18, n17, n7
	lbu	n18, 0(n18)
	bge	a2, n18, .LBB3_331
# %bb.65:                               #   in Loop: Header=BB3_62 Depth=3
	add	n20, n17, n8
	lbu	n18, 0(n20)
	bge	a2, n18, .LBB3_331
# %bb.66:                               #   in Loop: Header=BB3_62 Depth=3
	add	n18, n17, n9
	lbu	n18, 0(n18)
	bge	a2, n18, .LBB3_331
# %bb.67:                               #   in Loop: Header=BB3_62 Depth=3
	add	n18, n17, n10
	lbu	n19, 0(n18)
	bge	a2, n19, .LBB3_331
# %bb.68:                               #   in Loop: Header=BB3_62 Depth=3
	add	n19, n17, n11
	lbu	n21, 0(n19)
	bge	a2, n21, .LBB3_331
# %bb.69:                               #   in Loop: Header=BB3_62 Depth=3
	add	n21, n17, n12
	lbu	n22, 0(n21)
	bge	a2, n22, .LBB3_331
# %bb.70:                               #   in Loop: Header=BB3_62 Depth=3
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.71:                               #   in Loop: Header=BB3_62 Depth=3
	lbu	n20, 0(n19)
	bge	a2, n20, .LBB3_331
# %bb.72:                               #   in Loop: Header=BB3_62 Depth=3
	lbu	n20, 0(n21)
	bge	a2, n20, .LBB3_331
# %bb.73:                               #   in Loop: Header=BB3_62 Depth=3
	add	n20, n17, n13
	lbu	n22, 0(n20)
	bge	a2, n22, .LBB3_331
# %bb.74:                               #   in Loop: Header=BB3_62 Depth=3
	lbu	n22, 0(n18)
	bge	a2, n22, .LBB3_331
# %bb.75:                               #   in Loop: Header=BB3_62 Depth=3
	lbu	n21, 0(n21)
	bge	a2, n21, .LBB3_331
# %bb.76:                               #   in Loop: Header=BB3_62 Depth=3
	lbu	n21, 0(n20)
	bge	a2, n21, .LBB3_331
# %bb.77:                               #   in Loop: Header=BB3_62 Depth=3
	add	n21, n17, n14
	lbu	n22, 0(n21)
	bge	a2, n22, .LBB3_331
# %bb.78:                               #   in Loop: Header=BB3_62 Depth=3
	lbu	n18, 0(n18)
	bge	a2, n18, .LBB3_331
# %bb.79:                               #   in Loop: Header=BB3_62 Depth=3
	lbu	n18, 0(n19)
	bge	a2, n18, .LBB3_331
# %bb.80:                               #   in Loop: Header=BB3_62 Depth=3
	lbu	n18, 0(n20)
	bge	a2, n18, .LBB3_331
# %bb.81:                               #   in Loop: Header=BB3_62 Depth=3
	lbu	n18, 0(n21)
	bge	a2, n18, .LBB3_331
# %bb.82:                               #   in Loop: Header=BB3_62 Depth=3
	add	n17, n17, n15
	lbu	n17, 0(n17)
	bge	a2, n17, .LBB3_331
# %bb.83:                               #   in Loop: Header=BB3_62 Depth=3
	addiw	n16, n16, -1
	addiw	n6, n6, 1
	bnez	n16, .LBB3_62
	j	.LBB3_50
.LBB3_84:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n10, n7, -1
	mv	n9, a5
	blt	a5, n10, .LBB3_53
.LBB3_85:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n9, n10
	mv	n10, a5
	bge	a5, n7, .LBB3_54
.LBB3_86:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n12, n7, 1
	mv	n11, a5
	blt	a5, n12, .LBB3_55
.LBB3_87:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n11, n12
	addi	n13, n7, 2
	mv	n12, a5
	bge	a5, n13, .LBB3_56
.LBB3_88:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n14, n7, 3
	mv	n13, a5
	blt	a5, n14, .LBB3_57
.LBB3_89:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n13, n14
	addi	n15, n7, 4
	mv	n14, a5
	bge	a5, n15, .LBB3_58
.LBB3_90:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n16, n7, 5
	mv	n15, a5
	blt	a5, n16, .LBB3_59
.LBB3_91:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n15, n16
	addi	n7, n7, 6
	mv	n16, a5
	bge	a5, n7, .LBB3_60
	j	.LBB3_61
.LBB3_92:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n10, n7, 1
	mv	n9, a5
	blt	a5, n10, .LBB3_16
.LBB3_93:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n9, n10
	addi	n11, n7, 2
	mv	n10, a5
	bge	a5, n11, .LBB3_17
.LBB3_94:                               #   in Loop: Header=BB3_10 Depth=2
	addi	n7, n7, 3
	mv	n11, a5
	blt	a5, n7, .LBB3_96
.LBB3_95:                               #   in Loop: Header=BB3_10 Depth=2
	mv	n11, n7
.LBB3_96:                               #   in Loop: Header=BB3_10 Depth=2
	li	n7, 0
	sgtz	n12, n8
	neg	n12, n12
	and	n8, n12, n8
	sgtz	n12, n9
	neg	n12, n12
	and	n9, n12, n9
	sgtz	n12, n10
	neg	n12, n12
	and	n10, n12, n10
	sgtz	n12, n11
	neg	n12, n12
	and	n11, n12, n11
	addi	n12, n6, -1
	addi	n13, n6, -2
.LBB3_97:                               #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addw	n15, n13, n7
	mv	n14, a6
	blt	a6, n15, .LBB3_103
# %bb.98:                               #   in Loop: Header=BB3_97 Depth=3
	mv	n14, n15
	addw	n16, n12, n7
	mv	n15, a6
	bge	a6, n16, .LBB3_104
.LBB3_99:                               #   in Loop: Header=BB3_97 Depth=3
	addw	n19, n6, n7
	mv	n16, a6
	blt	a6, n19, .LBB3_105
.LBB3_100:                              #   in Loop: Header=BB3_97 Depth=3
	mv	n16, n19
	addiw	n18, n19, 1
	mv	n17, a6
	bge	a6, n18, .LBB3_106
.LBB3_101:                              #   in Loop: Header=BB3_97 Depth=3
	addiw	n20, n19, 2
	mv	n18, a6
	blt	a6, n20, .LBB3_107
.LBB3_102:                              #   in Loop: Header=BB3_97 Depth=3
	mv	n18, n20
	addiw	n20, n19, 3
	mv	n19, a6
	bge	a6, n20, .LBB3_108
	j	.LBB3_109
.LBB3_103:                              #   in Loop: Header=BB3_97 Depth=3
	addw	n16, n12, n7
	mv	n15, a6
	blt	a6, n16, .LBB3_99
.LBB3_104:                              #   in Loop: Header=BB3_97 Depth=3
	mv	n15, n16
	addw	n19, n6, n7
	mv	n16, a6
	bge	a6, n19, .LBB3_100
.LBB3_105:                              #   in Loop: Header=BB3_97 Depth=3
	addiw	n18, n19, 1
	mv	n17, a6
	blt	a6, n18, .LBB3_101
.LBB3_106:                              #   in Loop: Header=BB3_97 Depth=3
	mv	n17, n18
	addiw	n20, n19, 2
	mv	n18, a6
	bge	a6, n20, .LBB3_102
.LBB3_107:                              #   in Loop: Header=BB3_97 Depth=3
	addiw	n20, n19, 3
	mv	n19, a6
	blt	a6, n20, .LBB3_109
.LBB3_108:                              #   in Loop: Header=BB3_97 Depth=3
	mv	n19, n20
.LBB3_109:                              #   in Loop: Header=BB3_97 Depth=3
	sgtz	n20, n14
	neg	n20, n20
	and	n14, n20, n14
	slli	n14, n14, 3
	add	n14, t4, n14
	ld	n14, 0(n14)
	add	n20, n14, n8
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.110:                              #   in Loop: Header=BB3_97 Depth=3
	sgtz	n20, n15
	neg	n20, n20
	and	n15, n20, n15
	slli	n15, n15, 3
	add	n15, t4, n15
	ld	n20, 0(n15)
	add	n20, n20, n8
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.111:                              #   in Loop: Header=BB3_97 Depth=3
	sgtz	n20, n16
	neg	n20, n20
	and	n16, n20, n16
	slli	n16, n16, 3
	add	n16, t4, n16
	ld	n20, 0(n16)
	add	n20, n20, n8
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.112:                              #   in Loop: Header=BB3_97 Depth=3
	sgtz	n20, n17
	neg	n20, n20
	and	n17, n20, n17
	slli	n17, n17, 3
	add	n17, t4, n17
	ld	n20, 0(n17)
	add	n20, n20, n8
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.113:                              #   in Loop: Header=BB3_97 Depth=3
	sgtz	n20, n18
	neg	n20, n20
	and	n18, n20, n18
	slli	n18, n18, 3
	add	n18, t4, n18
	ld	n20, 0(n18)
	add	n20, n20, n8
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.114:                              #   in Loop: Header=BB3_97 Depth=3
	sgtz	n20, n19
	neg	n20, n20
	and	n19, n20, n19
	slli	n19, n19, 3
	add	n19, t4, n19
	ld	n20, 0(n19)
	add	n20, n20, n8
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.115:                              #   in Loop: Header=BB3_97 Depth=3
	add	n20, n14, n9
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.116:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n20, 0(n15)
	add	n20, n20, n9
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.117:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n20, 0(n16)
	add	n20, n20, n9
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.118:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n20, 0(n17)
	add	n20, n20, n9
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.119:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n20, 0(n18)
	add	n20, n20, n9
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.120:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n20, 0(n19)
	add	n20, n20, n9
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.121:                              #   in Loop: Header=BB3_97 Depth=3
	add	n20, n14, n10
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.122:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n20, 0(n15)
	add	n20, n20, n10
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.123:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n20, 0(n16)
	add	n20, n20, n10
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.124:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n20, 0(n17)
	add	n20, n20, n10
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.125:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n20, 0(n18)
	add	n20, n20, n10
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.126:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n20, 0(n19)
	add	n20, n20, n10
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.127:                              #   in Loop: Header=BB3_97 Depth=3
	add	n14, n14, n11
	lbu	n14, 0(n14)
	bge	a2, n14, .LBB3_331
# %bb.128:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n14, 0(n15)
	add	n14, n14, n11
	lbu	n14, 0(n14)
	bge	a2, n14, .LBB3_331
# %bb.129:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n14, 0(n16)
	add	n14, n14, n11
	lbu	n14, 0(n14)
	bge	a2, n14, .LBB3_331
# %bb.130:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n14, 0(n17)
	add	n14, n14, n11
	lbu	n14, 0(n14)
	bge	a2, n14, .LBB3_331
# %bb.131:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n14, 0(n18)
	add	n14, n14, n11
	lbu	n14, 0(n14)
	bge	a2, n14, .LBB3_331
# %bb.132:                              #   in Loop: Header=BB3_97 Depth=3
	ld	n14, 0(n19)
	add	n14, n14, n11
	lbu	n14, 0(n14)
	bge	a2, n14, .LBB3_331
# %bb.133:                              #   in Loop: Header=BB3_97 Depth=3
	addiw	n7, n7, 1
	bne	n7, n1, .LBB3_97
	j	.LBB3_50
.LBB3_134:                              #   in Loop: Header=BB3_10 Depth=2
	addi	n8, n6, 3
	addi	n9, n7, -1
	addi	n10, n7, -2
.LBB3_135:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_148 Depth 4
	mv	n11, n6
	addiw	n6, n6, -2
	mv	n13, a6
	blt	a6, n6, .LBB3_141
# %bb.136:                              #   in Loop: Header=BB3_135 Depth=3
	mv	n13, n6
	addiw	n6, n11, -1
	mv	n14, a6
	bge	a6, n6, .LBB3_142
.LBB3_137:                              #   in Loop: Header=BB3_135 Depth=3
	mv	n15, a6
	blt	a6, n11, .LBB3_143
.LBB3_138:                              #   in Loop: Header=BB3_135 Depth=3
	mv	n15, n11
	addiw	n6, n11, 1
	mv	n16, a6
	bge	a6, n6, .LBB3_144
.LBB3_139:                              #   in Loop: Header=BB3_135 Depth=3
	addiw	n12, n11, 2
	mv	n17, a6
	blt	a6, n12, .LBB3_145
.LBB3_140:                              #   in Loop: Header=BB3_135 Depth=3
	mv	n17, n12
	addiw	n12, n11, 3
	mv	n18, a6
	bge	a6, n12, .LBB3_146
	j	.LBB3_147
.LBB3_141:                              #   in Loop: Header=BB3_135 Depth=3
	addiw	n6, n11, -1
	mv	n14, a6
	blt	a6, n6, .LBB3_137
.LBB3_142:                              #   in Loop: Header=BB3_135 Depth=3
	mv	n14, n6
	mv	n15, a6
	bge	a6, n11, .LBB3_138
.LBB3_143:                              #   in Loop: Header=BB3_135 Depth=3
	addiw	n6, n11, 1
	mv	n16, a6
	blt	a6, n6, .LBB3_139
.LBB3_144:                              #   in Loop: Header=BB3_135 Depth=3
	mv	n16, n6
	addiw	n12, n11, 2
	mv	n17, a6
	bge	a6, n12, .LBB3_140
.LBB3_145:                              #   in Loop: Header=BB3_135 Depth=3
	addiw	n12, n11, 3
	mv	n18, a6
	blt	a6, n12, .LBB3_147
.LBB3_146:                              #   in Loop: Header=BB3_135 Depth=3
	mv	n18, n12
.LBB3_147:                              #   in Loop: Header=BB3_135 Depth=3
	li	n12, 0
	sgtz	n19, n13
	neg	n19, n19
	and	n13, n19, n13
	sgtz	n19, n14
	neg	n19, n19
	and	n14, n19, n14
	sgtz	n19, n15
	neg	n19, n19
	and	n15, n19, n15
	sgtz	n19, n16
	neg	n19, n19
	and	n16, n19, n16
	sgtz	n19, n17
	neg	n19, n19
	and	n17, n19, n17
	sgtz	n19, n18
	neg	n19, n19
	and	n18, n19, n18
	slli	n13, n13, 3
	add	n13, t4, n13
	ld	n13, 0(n13)
	slli	n14, n14, 3
	add	n14, t4, n14
	slli	n15, n15, 3
	add	n15, t4, n15
	slli	n16, n16, 3
	add	n16, t4, n16
	slli	n17, n17, 3
	add	n17, t4, n17
	slli	n18, n18, 3
	add	n18, t4, n18
.LBB3_148:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_135 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addw	n20, n10, n12
	mv	n19, a5
	blt	a5, n20, .LBB3_150
# %bb.149:                              #   in Loop: Header=BB3_148 Depth=4
	mv	n19, n20
.LBB3_150:                              #   in Loop: Header=BB3_148 Depth=4
	sgtz	n20, n19
	neg	n20, n20
	and	n19, n20, n19
	add	n20, n13, n19
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.151:                              #   in Loop: Header=BB3_148 Depth=4
	addw	n21, n9, n12
	mv	n20, a5
	blt	a5, n21, .LBB3_153
# %bb.152:                              #   in Loop: Header=BB3_148 Depth=4
	mv	n20, n21
.LBB3_153:                              #   in Loop: Header=BB3_148 Depth=4
	sgtz	n21, n20
	neg	n21, n21
	and	n20, n21, n20
	add	n21, n13, n20
	lbu	n21, 0(n21)
	bge	a2, n21, .LBB3_331
# %bb.154:                              #   in Loop: Header=BB3_148 Depth=4
	addw	n22, n7, n12
	mv	n21, a5
	blt	a5, n22, .LBB3_156
# %bb.155:                              #   in Loop: Header=BB3_148 Depth=4
	mv	n21, n22
.LBB3_156:                              #   in Loop: Header=BB3_148 Depth=4
	sgtz	n22, n21
	neg	n22, n22
	and	n21, n22, n21
	add	n22, n13, n21
	lbu	n22, 0(n22)
	bge	a2, n22, .LBB3_331
# %bb.157:                              #   in Loop: Header=BB3_148 Depth=4
	add	n24, n7, n12
	addiw	n23, n24, 1
	mv	n22, a5
	blt	a5, n23, .LBB3_159
# %bb.158:                              #   in Loop: Header=BB3_148 Depth=4
	mv	n22, n23
.LBB3_159:                              #   in Loop: Header=BB3_148 Depth=4
	sgtz	n23, n22
	neg	n23, n23
	and	n22, n23, n22
	add	n23, n13, n22
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.160:                              #   in Loop: Header=BB3_148 Depth=4
	addiw	n25, n24, 2
	mv	n23, a5
	blt	a5, n25, .LBB3_162
# %bb.161:                              #   in Loop: Header=BB3_148 Depth=4
	mv	n23, n25
.LBB3_162:                              #   in Loop: Header=BB3_148 Depth=4
	sgtz	n25, n23
	neg	n25, n25
	and	n23, n25, n23
	add	n25, n13, n23
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.163:                              #   in Loop: Header=BB3_148 Depth=4
	addiw	n25, n24, 3
	mv	n24, a5
	blt	a5, n25, .LBB3_165
# %bb.164:                              #   in Loop: Header=BB3_148 Depth=4
	mv	n24, n25
.LBB3_165:                              #   in Loop: Header=BB3_148 Depth=4
	sgtz	n25, n24
	neg	n25, n25
	and	n24, n25, n24
	add	n25, n13, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.166:                              #   in Loop: Header=BB3_148 Depth=4
	ld	n25, 0(n14)
	add	n26, n25, n19
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.167:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n20
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.168:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n21
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.169:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n22
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.170:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n23
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.171:                              #   in Loop: Header=BB3_148 Depth=4
	add	n25, n25, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.172:                              #   in Loop: Header=BB3_148 Depth=4
	ld	n25, 0(n15)
	add	n26, n25, n19
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.173:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n20
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.174:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n21
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.175:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n22
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.176:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n23
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.177:                              #   in Loop: Header=BB3_148 Depth=4
	add	n25, n25, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.178:                              #   in Loop: Header=BB3_148 Depth=4
	ld	n25, 0(n16)
	add	n26, n25, n19
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.179:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n20
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.180:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n21
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.181:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n22
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.182:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n23
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.183:                              #   in Loop: Header=BB3_148 Depth=4
	add	n25, n25, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.184:                              #   in Loop: Header=BB3_148 Depth=4
	ld	n25, 0(n17)
	add	n26, n25, n19
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.185:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n20
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.186:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n21
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.187:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n22
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.188:                              #   in Loop: Header=BB3_148 Depth=4
	add	n26, n25, n23
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.189:                              #   in Loop: Header=BB3_148 Depth=4
	add	n25, n25, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.190:                              #   in Loop: Header=BB3_148 Depth=4
	ld	n25, 0(n18)
	add	n19, n25, n19
	lbu	n19, 0(n19)
	bge	a2, n19, .LBB3_331
# %bb.191:                              #   in Loop: Header=BB3_148 Depth=4
	add	n20, n25, n20
	lbu	n19, 0(n20)
	bge	a2, n19, .LBB3_331
# %bb.192:                              #   in Loop: Header=BB3_148 Depth=4
	add	n21, n25, n21
	lbu	n19, 0(n21)
	bge	a2, n19, .LBB3_331
# %bb.193:                              #   in Loop: Header=BB3_148 Depth=4
	add	n22, n25, n22
	lbu	n19, 0(n22)
	bge	a2, n19, .LBB3_331
# %bb.194:                              #   in Loop: Header=BB3_148 Depth=4
	add	n23, n25, n23
	lbu	n19, 0(n23)
	bge	a2, n19, .LBB3_331
# %bb.195:                              #   in Loop: Header=BB3_148 Depth=4
	add	n24, n25, n24
	lbu	n19, 0(n24)
	bge	a2, n19, .LBB3_331
# %bb.196:                              #   in Loop: Header=BB3_148 Depth=4
	addiw	n12, n12, 1
	bne	n12, n1, .LBB3_148
# %bb.197:                              #   in Loop: Header=BB3_135 Depth=3
	bne	n11, n8, .LBB3_135
	j	.LBB3_50
.LBB3_198:                              #   in Loop: Header=BB3_10 Depth=2
	addi	n8, n6, 3
	addi	n9, n7, -1
	addi	n10, n7, -2
	bne	n12, t6, .LBB3_262
.LBB3_199:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_212 Depth 4
	mv	n11, n6
	addiw	n6, n6, -2
	mv	n13, a6
	blt	a6, n6, .LBB3_205
# %bb.200:                              #   in Loop: Header=BB3_199 Depth=3
	mv	n13, n6
	addiw	n6, n11, -1
	mv	n14, a6
	bge	a6, n6, .LBB3_206
.LBB3_201:                              #   in Loop: Header=BB3_199 Depth=3
	mv	n15, a6
	blt	a6, n11, .LBB3_207
.LBB3_202:                              #   in Loop: Header=BB3_199 Depth=3
	mv	n15, n11
	addiw	n6, n11, 1
	mv	n16, a6
	bge	a6, n6, .LBB3_208
.LBB3_203:                              #   in Loop: Header=BB3_199 Depth=3
	addiw	n12, n11, 2
	mv	n17, a6
	blt	a6, n12, .LBB3_209
.LBB3_204:                              #   in Loop: Header=BB3_199 Depth=3
	mv	n17, n12
	addiw	n12, n11, 3
	mv	n18, a6
	bge	a6, n12, .LBB3_210
	j	.LBB3_211
.LBB3_205:                              #   in Loop: Header=BB3_199 Depth=3
	addiw	n6, n11, -1
	mv	n14, a6
	blt	a6, n6, .LBB3_201
.LBB3_206:                              #   in Loop: Header=BB3_199 Depth=3
	mv	n14, n6
	mv	n15, a6
	bge	a6, n11, .LBB3_202
.LBB3_207:                              #   in Loop: Header=BB3_199 Depth=3
	addiw	n6, n11, 1
	mv	n16, a6
	blt	a6, n6, .LBB3_203
.LBB3_208:                              #   in Loop: Header=BB3_199 Depth=3
	mv	n16, n6
	addiw	n12, n11, 2
	mv	n17, a6
	bge	a6, n12, .LBB3_204
.LBB3_209:                              #   in Loop: Header=BB3_199 Depth=3
	addiw	n12, n11, 3
	mv	n18, a6
	blt	a6, n12, .LBB3_211
.LBB3_210:                              #   in Loop: Header=BB3_199 Depth=3
	mv	n18, n12
.LBB3_211:                              #   in Loop: Header=BB3_199 Depth=3
	li	n12, 0
	sgtz	n19, n13
	neg	n19, n19
	and	n13, n19, n13
	sgtz	n19, n14
	neg	n19, n19
	and	n14, n19, n14
	sgtz	n19, n15
	neg	n19, n19
	and	n15, n19, n15
	sgtz	n19, n16
	neg	n19, n19
	and	n16, n19, n16
	sgtz	n19, n17
	neg	n19, n19
	and	n17, n19, n17
	sgtz	n19, n18
	neg	n19, n19
	and	n18, n19, n18
	slli	n13, n13, 3
	add	n13, t4, n13
	ld	n13, 0(n13)
	slli	n14, n14, 3
	add	n14, t4, n14
	slli	n15, n15, 3
	add	n15, t4, n15
	slli	n16, n16, 3
	add	n16, t4, n16
	slli	n17, n17, 3
	add	n17, t4, n17
	slli	n18, n18, 3
	add	n18, t4, n18
.LBB3_212:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_199 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addw	n20, n10, n12
	mv	n19, a5
	blt	a5, n20, .LBB3_214
# %bb.213:                              #   in Loop: Header=BB3_212 Depth=4
	mv	n19, n20
.LBB3_214:                              #   in Loop: Header=BB3_212 Depth=4
	sgtz	n20, n19
	neg	n20, n20
	and	n24, n20, n19
	add	n19, n13, n24
	lbu	n19, 0(n19)
	bge	a2, n19, .LBB3_331
# %bb.215:                              #   in Loop: Header=BB3_212 Depth=4
	ld	n19, 0(n14)
	add	n20, n19, n24
	lbu	n20, 0(n20)
	bge	a2, n20, .LBB3_331
# %bb.216:                              #   in Loop: Header=BB3_212 Depth=4
	ld	n20, 0(n15)
	add	n21, n20, n24
	lbu	n21, 0(n21)
	bge	a2, n21, .LBB3_331
# %bb.217:                              #   in Loop: Header=BB3_212 Depth=4
	ld	n21, 0(n16)
	add	n22, n21, n24
	lbu	n22, 0(n22)
	bge	a2, n22, .LBB3_331
# %bb.218:                              #   in Loop: Header=BB3_212 Depth=4
	ld	n22, 0(n17)
	add	n23, n22, n24
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.219:                              #   in Loop: Header=BB3_212 Depth=4
	ld	n23, 0(n18)
	add	n24, n23, n24
	lbu	n24, 0(n24)
	bge	a2, n24, .LBB3_331
# %bb.220:                              #   in Loop: Header=BB3_212 Depth=4
	addw	n25, n9, n12
	mv	n24, a5
	blt	a5, n25, .LBB3_222
# %bb.221:                              #   in Loop: Header=BB3_212 Depth=4
	mv	n24, n25
.LBB3_222:                              #   in Loop: Header=BB3_212 Depth=4
	sgtz	n25, n24
	neg	n25, n25
	and	n24, n25, n24
	add	n25, n13, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.223:                              #   in Loop: Header=BB3_212 Depth=4
	add	n25, n19, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.224:                              #   in Loop: Header=BB3_212 Depth=4
	add	n25, n20, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.225:                              #   in Loop: Header=BB3_212 Depth=4
	add	n25, n21, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.226:                              #   in Loop: Header=BB3_212 Depth=4
	add	n25, n22, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.227:                              #   in Loop: Header=BB3_212 Depth=4
	add	n24, n23, n24
	lbu	n24, 0(n24)
	bge	a2, n24, .LBB3_331
# %bb.228:                              #   in Loop: Header=BB3_212 Depth=4
	addw	n25, n7, n12
	mv	n24, a5
	blt	a5, n25, .LBB3_230
# %bb.229:                              #   in Loop: Header=BB3_212 Depth=4
	mv	n24, n25
.LBB3_230:                              #   in Loop: Header=BB3_212 Depth=4
	sgtz	n25, n24
	neg	n25, n25
	and	n24, n25, n24
	add	n25, n13, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.231:                              #   in Loop: Header=BB3_212 Depth=4
	add	n25, n19, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.232:                              #   in Loop: Header=BB3_212 Depth=4
	add	n25, n20, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.233:                              #   in Loop: Header=BB3_212 Depth=4
	add	n25, n21, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.234:                              #   in Loop: Header=BB3_212 Depth=4
	add	n25, n22, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.235:                              #   in Loop: Header=BB3_212 Depth=4
	add	n24, n23, n24
	lbu	n24, 0(n24)
	bge	a2, n24, .LBB3_331
# %bb.236:                              #   in Loop: Header=BB3_212 Depth=4
	add	n24, n7, n12
	addiw	n26, n24, 1
	mv	n25, a5
	blt	a5, n26, .LBB3_238
# %bb.237:                              #   in Loop: Header=BB3_212 Depth=4
	mv	n25, n26
.LBB3_238:                              #   in Loop: Header=BB3_212 Depth=4
	sgtz	n26, n25
	neg	n26, n26
	and	n25, n26, n25
	add	n26, n13, n25
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.239:                              #   in Loop: Header=BB3_212 Depth=4
	add	n26, n19, n25
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.240:                              #   in Loop: Header=BB3_212 Depth=4
	add	n26, n20, n25
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.241:                              #   in Loop: Header=BB3_212 Depth=4
	add	n26, n21, n25
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.242:                              #   in Loop: Header=BB3_212 Depth=4
	add	n26, n22, n25
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.243:                              #   in Loop: Header=BB3_212 Depth=4
	add	n25, n23, n25
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.244:                              #   in Loop: Header=BB3_212 Depth=4
	addiw	n26, n24, 2
	mv	n25, a5
	blt	a5, n26, .LBB3_246
# %bb.245:                              #   in Loop: Header=BB3_212 Depth=4
	mv	n25, n26
.LBB3_246:                              #   in Loop: Header=BB3_212 Depth=4
	sgtz	n26, n25
	neg	n26, n26
	and	n25, n26, n25
	add	n26, n13, n25
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.247:                              #   in Loop: Header=BB3_212 Depth=4
	add	n26, n19, n25
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.248:                              #   in Loop: Header=BB3_212 Depth=4
	add	n26, n20, n25
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.249:                              #   in Loop: Header=BB3_212 Depth=4
	add	n26, n21, n25
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.250:                              #   in Loop: Header=BB3_212 Depth=4
	add	n26, n22, n25
	lbu	n26, 0(n26)
	bge	a2, n26, .LBB3_331
# %bb.251:                              #   in Loop: Header=BB3_212 Depth=4
	add	n25, n23, n25
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_331
# %bb.252:                              #   in Loop: Header=BB3_212 Depth=4
	addiw	n25, n24, 3
	mv	n24, a5
	blt	a5, n25, .LBB3_254
# %bb.253:                              #   in Loop: Header=BB3_212 Depth=4
	mv	n24, n25
.LBB3_254:                              #   in Loop: Header=BB3_212 Depth=4
	sgtz	n25, n24
	neg	n25, n25
	and	n24, n25, n24
	add	n25, n13, n24
	lbu	n25, 0(n25)
	bge	a2, n25, .LBB3_332
# %bb.255:                              #   in Loop: Header=BB3_212 Depth=4
	add	n19, n19, n24
	lbu	n19, 0(n19)
	bge	a2, n19, .LBB3_332
# %bb.256:                              #   in Loop: Header=BB3_212 Depth=4
	add	n20, n20, n24
	lbu	n19, 0(n20)
	bge	a2, n19, .LBB3_332
# %bb.257:                              #   in Loop: Header=BB3_212 Depth=4
	add	n21, n21, n24
	lbu	n19, 0(n21)
	bge	a2, n19, .LBB3_332
# %bb.258:                              #   in Loop: Header=BB3_212 Depth=4
	add	n22, n22, n24
	lbu	n19, 0(n22)
	bge	a2, n19, .LBB3_332
# %bb.259:                              #   in Loop: Header=BB3_212 Depth=4
	add	n23, n23, n24
	lbu	n19, 0(n23)
	bge	a2, n19, .LBB3_332
# %bb.260:                              #   in Loop: Header=BB3_212 Depth=4
	addiw	n12, n12, 1
	bne	n12, n1, .LBB3_212
# %bb.261:                              #   in Loop: Header=BB3_199 Depth=3
	bne	n11, n8, .LBB3_199
	j	.LBB3_50
.LBB3_262:                              #   in Loop: Header=BB3_10 Depth=2
	addi	n12, n12, -1
	snez	n12, n12
.LBB3_263:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_297 Depth 4
                                        #         Child Loop BB3_272 Depth 4
	mv	n13, n6
	addw	n6, n6, n12
	mv	n14, a6
	blt	a6, n6, .LBB3_323
# %bb.264:                              #   in Loop: Header=BB3_263 Depth=3
	mv	n14, n6
	addiw	n6, n13, -2
	mv	n15, a6
	bge	a6, n6, .LBB3_324
.LBB3_265:                              #   in Loop: Header=BB3_263 Depth=3
	addiw	n6, n13, -1
	mv	n16, a6
	blt	a6, n6, .LBB3_325
.LBB3_266:                              #   in Loop: Header=BB3_263 Depth=3
	mv	n16, n6
	mv	n17, a6
	bge	a6, n13, .LBB3_326
.LBB3_267:                              #   in Loop: Header=BB3_263 Depth=3
	addiw	n6, n13, 1
	mv	n18, a6
	blt	a6, n6, .LBB3_327
.LBB3_268:                              #   in Loop: Header=BB3_263 Depth=3
	mv	n18, n6
	addiw	n20, n13, 2
	mv	n19, a6
	bge	a6, n20, .LBB3_328
.LBB3_269:                              #   in Loop: Header=BB3_263 Depth=3
	addiw	n21, n13, 3
	mv	n20, a6
	blt	a6, n21, .LBB3_271
.LBB3_270:                              #   in Loop: Header=BB3_263 Depth=3
	mv	n20, n21
.LBB3_271:                              #   in Loop: Header=BB3_263 Depth=3
	sgtz	n21, n14
	neg	n21, n21
	and	n14, n21, n14
	slli	n14, n14, 3
	add	n14, t4, n14
	ld	n14, 0(n14)
	sgtz	n21, n15
	neg	n21, n21
	and	n15, n21, n15
	slli	n15, n15, 3
	add	n15, t4, n15
	sgtz	n21, n16
	neg	n21, n21
	and	n16, n21, n16
	slli	n16, n16, 3
	add	n16, t4, n16
	sgtz	n21, n17
	neg	n21, n21
	and	n17, n21, n17
	slli	n17, n17, 3
	add	n17, t4, n17
	sgtz	n21, n18
	neg	n21, n21
	and	n18, n21, n18
	slli	n18, n18, 3
	add	n18, t4, n18
	sgtz	n21, n19
	neg	n21, n21
	and	n19, n21, n19
	slli	n19, n19, 3
	add	n19, t4, n19
	sgtz	n21, n20
	neg	n21, n21
	and	n20, n21, n20
	slli	n20, n20, 3
	add	n20, t4, n20
	li	n21, 0
	bne	n11, n2, .LBB3_297
.LBB3_272:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_263 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addw	n23, n10, n21
	mv	n22, a5
	blt	a5, n23, .LBB3_274
# %bb.273:                              #   in Loop: Header=BB3_272 Depth=4
	mv	n22, n23
.LBB3_274:                              #   in Loop: Header=BB3_272 Depth=4
	sgtz	n23, n22
	neg	n23, n23
	and	n22, n23, n22
	add	n22, n14, n22
	lbu	n22, 0(n22)
	bge	a2, n22, .LBB3_331
# %bb.275:                              #   in Loop: Header=BB3_272 Depth=4
	addw	n23, n9, n21
	mv	n22, a5
	blt	a5, n23, .LBB3_277
# %bb.276:                              #   in Loop: Header=BB3_272 Depth=4
	mv	n22, n23
.LBB3_277:                              #   in Loop: Header=BB3_272 Depth=4
	sgtz	n23, n22
	neg	n23, n23
	and	n22, n23, n22
	add	n22, n14, n22
	lbu	n22, 0(n22)
	bge	a2, n22, .LBB3_331
# %bb.278:                              #   in Loop: Header=BB3_272 Depth=4
	addw	n23, n7, n21
	mv	n22, a5
	blt	a5, n23, .LBB3_280
# %bb.279:                              #   in Loop: Header=BB3_272 Depth=4
	mv	n22, n23
.LBB3_280:                              #   in Loop: Header=BB3_272 Depth=4
	sgtz	n23, n22
	neg	n23, n23
	and	n22, n23, n22
	add	n23, n14, n22
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.281:                              #   in Loop: Header=BB3_272 Depth=4
	add	n23, n7, n21
	addiw	n25, n23, 1
	mv	n24, a5
	blt	a5, n25, .LBB3_283
# %bb.282:                              #   in Loop: Header=BB3_272 Depth=4
	mv	n24, n25
.LBB3_283:                              #   in Loop: Header=BB3_272 Depth=4
	sgtz	n25, n24
	neg	n25, n25
	and	n24, n25, n24
	add	n24, n14, n24
	lbu	n24, 0(n24)
	bge	a2, n24, .LBB3_331
# %bb.284:                              #   in Loop: Header=BB3_272 Depth=4
	addiw	n25, n23, 2
	mv	n24, a5
	blt	a5, n25, .LBB3_286
# %bb.285:                              #   in Loop: Header=BB3_272 Depth=4
	mv	n24, n25
.LBB3_286:                              #   in Loop: Header=BB3_272 Depth=4
	sgtz	n25, n24
	neg	n25, n25
	and	n24, n25, n24
	add	n24, n14, n24
	lbu	n24, 0(n24)
	bge	a2, n24, .LBB3_331
# %bb.287:                              #   in Loop: Header=BB3_272 Depth=4
	addiw	n24, n23, 3
	mv	n23, a5
	blt	a5, n24, .LBB3_289
# %bb.288:                              #   in Loop: Header=BB3_272 Depth=4
	mv	n23, n24
.LBB3_289:                              #   in Loop: Header=BB3_272 Depth=4
	sgtz	n24, n23
	neg	n24, n24
	and	n23, n24, n23
	add	n23, n14, n23
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.290:                              #   in Loop: Header=BB3_272 Depth=4
	ld	n23, 0(n15)
	add	n23, n23, n22
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.291:                              #   in Loop: Header=BB3_272 Depth=4
	ld	n23, 0(n16)
	add	n23, n23, n22
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.292:                              #   in Loop: Header=BB3_272 Depth=4
	ld	n23, 0(n17)
	add	n23, n23, n22
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.293:                              #   in Loop: Header=BB3_272 Depth=4
	ld	n23, 0(n18)
	add	n23, n23, n22
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.294:                              #   in Loop: Header=BB3_272 Depth=4
	ld	n23, 0(n19)
	add	n23, n23, n22
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.295:                              #   in Loop: Header=BB3_272 Depth=4
	ld	n23, 0(n20)
	add	n22, n23, n22
	lbu	n22, 0(n22)
	bge	a2, n22, .LBB3_331
# %bb.296:                              #   in Loop: Header=BB3_272 Depth=4
	addiw	n21, n21, 1
	bne	n21, n1, .LBB3_272
	j	.LBB3_322
.LBB3_297:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_263 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addw	n23, n10, n21
	mv	n22, a5
	blt	a5, n23, .LBB3_299
# %bb.298:                              #   in Loop: Header=BB3_297 Depth=4
	mv	n22, n23
.LBB3_299:                              #   in Loop: Header=BB3_297 Depth=4
	sgtz	n23, n22
	neg	n23, n23
	and	n22, n23, n22
	add	n22, n14, n22
	lbu	n22, 0(n22)
	bge	a2, n22, .LBB3_331
# %bb.300:                              #   in Loop: Header=BB3_297 Depth=4
	addw	n23, n9, n21
	mv	n22, a5
	blt	a5, n23, .LBB3_302
# %bb.301:                              #   in Loop: Header=BB3_297 Depth=4
	mv	n22, n23
.LBB3_302:                              #   in Loop: Header=BB3_297 Depth=4
	sgtz	n23, n22
	neg	n23, n23
	and	n22, n23, n22
	add	n22, n14, n22
	lbu	n22, 0(n22)
	bge	a2, n22, .LBB3_331
# %bb.303:                              #   in Loop: Header=BB3_297 Depth=4
	addw	n23, n7, n21
	mv	n22, a5
	blt	a5, n23, .LBB3_305
# %bb.304:                              #   in Loop: Header=BB3_297 Depth=4
	mv	n22, n23
.LBB3_305:                              #   in Loop: Header=BB3_297 Depth=4
	sgtz	n23, n22
	neg	n23, n23
	and	n22, n23, n22
	add	n22, n14, n22
	lbu	n22, 0(n22)
	bge	a2, n22, .LBB3_331
# %bb.306:                              #   in Loop: Header=BB3_297 Depth=4
	add	n23, n7, n21
	addiw	n24, n23, 1
	mv	n22, a5
	blt	a5, n24, .LBB3_308
# %bb.307:                              #   in Loop: Header=BB3_297 Depth=4
	mv	n22, n24
.LBB3_308:                              #   in Loop: Header=BB3_297 Depth=4
	sgtz	n24, n22
	neg	n24, n24
	and	n22, n24, n22
	add	n24, n14, n22
	lbu	n24, 0(n24)
	bge	a2, n24, .LBB3_331
# %bb.309:                              #   in Loop: Header=BB3_297 Depth=4
	addiw	n25, n23, 2
	mv	n24, a5
	blt	a5, n25, .LBB3_311
# %bb.310:                              #   in Loop: Header=BB3_297 Depth=4
	mv	n24, n25
.LBB3_311:                              #   in Loop: Header=BB3_297 Depth=4
	sgtz	n25, n24
	neg	n25, n25
	and	n24, n25, n24
	add	n24, n14, n24
	lbu	n24, 0(n24)
	bge	a2, n24, .LBB3_331
# %bb.312:                              #   in Loop: Header=BB3_297 Depth=4
	addiw	n24, n23, 3
	mv	n23, a5
	blt	a5, n24, .LBB3_314
# %bb.313:                              #   in Loop: Header=BB3_297 Depth=4
	mv	n23, n24
.LBB3_314:                              #   in Loop: Header=BB3_297 Depth=4
	sgtz	n24, n23
	neg	n24, n24
	and	n23, n24, n23
	add	n23, n14, n23
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.315:                              #   in Loop: Header=BB3_297 Depth=4
	ld	n23, 0(n15)
	add	n23, n23, n22
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.316:                              #   in Loop: Header=BB3_297 Depth=4
	ld	n23, 0(n16)
	add	n23, n23, n22
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.317:                              #   in Loop: Header=BB3_297 Depth=4
	ld	n23, 0(n17)
	add	n23, n23, n22
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.318:                              #   in Loop: Header=BB3_297 Depth=4
	ld	n23, 0(n18)
	add	n23, n23, n22
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.319:                              #   in Loop: Header=BB3_297 Depth=4
	ld	n23, 0(n19)
	add	n23, n23, n22
	lbu	n23, 0(n23)
	bge	a2, n23, .LBB3_331
# %bb.320:                              #   in Loop: Header=BB3_297 Depth=4
	ld	n23, 0(n20)
	add	n22, n23, n22
	lbu	n22, 0(n22)
	bge	a2, n22, .LBB3_331
# %bb.321:                              #   in Loop: Header=BB3_297 Depth=4
	addiw	n21, n21, 1
	bne	n21, n1, .LBB3_297
.LBB3_322:                              #   in Loop: Header=BB3_263 Depth=3
	bne	n13, n8, .LBB3_263
	j	.LBB3_50
.LBB3_323:                              #   in Loop: Header=BB3_263 Depth=3
	addiw	n6, n13, -2
	mv	n15, a6
	blt	a6, n6, .LBB3_265
.LBB3_324:                              #   in Loop: Header=BB3_263 Depth=3
	mv	n15, n6
	addiw	n6, n13, -1
	mv	n16, a6
	bge	a6, n6, .LBB3_266
.LBB3_325:                              #   in Loop: Header=BB3_263 Depth=3
	mv	n17, a6
	blt	a6, n13, .LBB3_267
.LBB3_326:                              #   in Loop: Header=BB3_263 Depth=3
	mv	n17, n13
	addiw	n6, n13, 1
	mv	n18, a6
	bge	a6, n6, .LBB3_268
.LBB3_327:                              #   in Loop: Header=BB3_263 Depth=3
	addiw	n20, n13, 2
	mv	n19, a6
	blt	a6, n20, .LBB3_269
.LBB3_328:                              #   in Loop: Header=BB3_263 Depth=3
	mv	n19, n20
	addiw	n21, n13, 3
	mv	n20, a6
	bge	a6, n21, .LBB3_270
	j	.LBB3_271
.LBB3_329:                              #   in Loop: Header=BB3_9 Depth=1
	addi	a0, a0, 1
	bge	a0, a7, .LBB3_330
	j	.LBB3_9
.LBB3_330:
	li	a0, 1
	ret
.LBB3_331:
	li	a0, 0
	ret
.LBB3_332:
	li	a0, 0
	ret
.Lfunc_end3:
	.size	CheckReliabilityOfRef, .Lfunc_end3-CheckReliabilityOfRef
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	RDCost_for_4x4IntraBlocks       # -- Begin function RDCost_for_4x4IntraBlocks
	.p2align	2
	.type	RDCost_for_4x4IntraBlocks,@function
RDCost_for_4x4IntraBlocks:              # @RDCost_for_4x4IntraBlocks
# %bb.0:
	addi	sp, sp, -192
	sd	ra, 184(sp)                     # 8-byte Folded Spill
	sd	s0, 176(sp)                     # 8-byte Folded Spill
	sd	s1, 168(sp)                     # 8-byte Folded Spill
	sd	s2, 160(sp)                     # 8-byte Folded Spill
	sd	s3, 152(sp)                     # 8-byte Folded Spill
	sd	s4, 144(sp)                     # 8-byte Folded Spill
	sd	s5, 136(sp)                     # 8-byte Folded Spill
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	sd	s7, 120(sp)                     # 8-byte Folded Spill
	sd	s8, 112(sp)                     # 8-byte Folded Spill
	sd	s9, 104(sp)                     # 8-byte Folded Spill
	sd	s10, 96(sp)                     # 8-byte Folded Spill
	sd	s11, 88(sp)                     # 8-byte Folded Spill
	fsd	fs0, 80(sp)                     # 8-byte Folded Spill
	fsd	fs1, 72(sp)                     # 8-byte Folded Spill
	sd	a4, 16(sp)                      # 8-byte Folded Spill
	fmv.d	fs0, fa0
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	mv	s0, a2
	mv	s7, a0
	slli	a0, a1, 3
	andi	s11, a0, 8
	slli	a0, a2, 2
	andi	s9, a0, 4
	or	s5, s9, s11
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	slli	a0, a1, 2
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	andi	a0, a0, -8
	slli	a1, a2, 1
	andi	a1, a1, -4
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	addw	s6, a1, a0
	lui	a0, 8
	addiw	a1, a0, -1200
	add	a1, a2, a1
	lw	s10, 152(a2)
	lui	a3, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a3)
	lw	s3, 156(a2)
	lw	s1, 172(a2)
	lui	a4, 2
	add	a3, a3, a4
	ld	s8, -1768(a3)
	ld	a3, 0(a1)
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	ld	a1, 8(a1)
	lw	a3, 12(a2)
	li	a4, 528
	lui	a5, %hi(input)
	ld	a5, %lo(input)(a5)
	mul	a3, a3, a4
	add	a1, a1, a3
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	lw	a1, 0(a1)
	addi	a3, a5, 2047
	lw	a3, 945(a3)
	li	a4, 48
	mul	s2, a1, a4
	add	s2, a2, s2
	slli	a3, a3, 3
	lui	a1, %hi(assignSE2partition)
	addi	a1, a1, %lo(assignSE2partition)
	add	a1, a1, a3
	lw	a2, 24(a2)
	ld	a1, 0(a1)
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	addiw	s4, a0, -1184
	li	a0, 3
	sw	zero, 68(sp)
	bne	a2, a0, .LBB4_3
# %bb.1:
	lui	a0, %hi(si_frame_indicator)
	lw	a0, %lo(si_frame_indicator)(a0)
	lui	a1, %hi(sp2_frame_indicator)
	lw	a1, %lo(sp2_frame_indicator)(a1)
	addi	a2, sp, 68
	or	a0, a0, a1
	beqz	a0, .LBB4_4
# %bb.2:
	mv	a0, s5
	mv	a1, s6
	call	dct_luma_sp2
	j	.LBB4_5
.LBB4_3:
	addi	a2, sp, 68
	li	a3, 1
	mv	a0, s5
	mv	a1, s6
	call	dct_luma
	j	.LBB4_5
.LBB4_4:
	mv	a0, s5
	mv	a1, s6
	call	dct_luma_sp
.LBB4_5:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sw	a0, 0(s7)
	lui	a0, 22
	addiw	a0, a0, -928
	add	a0, a1, a0
	lw	a1, 1388(a0)
	add	s4, s2, s4
	beqz	a1, .LBB4_7
# %bb.6:
	fmv.d.x	fs1, zero
	j	.LBB4_16
.LBB4_7:
	addw	a1, s3, s6
	addw	a3, s1, s6
	lui	a2, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(a2)
	add	s11, s10, s11
	addw	a2, s11, s9
	slli	a3, a3, 3
	add	a3, a4, a3
	ld	t0, 0(a3)
	slli	a1, a1, 3
	add	a4, s8, a1
	ld	t1, 0(a4)
	slli	a1, a2, 1
	add	a5, t0, a1
	lhu	a5, 0(a5)
	add	a6, t1, a1
	lhu	a6, 0(a6)
	ld	a0, 0(a0)
	add	s5, s10, s5
	sub	a5, a5, a6
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a7, 0(a5)
	addi	a5, a2, 1
	addiw	a6, s5, 3
	slli	a5, a5, 1
	bge	a2, a6, .LBB4_9
# %bb.8:
	add	t2, t0, a5
	lhu	t2, 0(t2)
	add	t3, t1, a5
	lhu	t3, 0(t3)
	sub	t2, t2, t3
	addi	t3, a1, 4
	add	t4, t0, t3
	lhu	t4, 0(t4)
	add	t3, t1, t3
	lhu	t3, 0(t3)
	slli	t2, t2, 2
	add	t2, a0, t2
	lw	t2, 0(t2)
	sub	t4, t4, t3
	addi	t3, a1, 6
	add	t0, t0, t3
	lhu	t0, 0(t0)
	add	t1, t1, t3
	lhu	t1, 0(t1)
	slli	t4, t4, 2
	add	t4, a0, t4
	lw	t3, 0(t4)
	sub	t0, t0, t1
	slli	t0, t0, 2
	add	t0, a0, t0
	lw	t0, 0(t0)
	add	a7, a7, t2
	add	t0, t3, t0
	add	a7, a7, t0
.LBB4_9:
	ld	t1, 8(a3)
	ld	t0, 8(a4)
	add	t2, t1, a1
	lhu	t2, 0(t2)
	add	t3, t0, a1
	lhu	t3, 0(t3)
	sub	t2, t2, t3
	slli	t2, t2, 2
	add	t2, a0, t2
	lw	t2, 0(t2)
	add	a7, a7, t2
	bge	a2, a6, .LBB4_11
# %bb.10:
	add	t2, t1, a5
	lhu	t2, 0(t2)
	add	t3, t0, a5
	lhu	t3, 0(t3)
	sub	t2, t2, t3
	addi	t3, a1, 4
	add	t4, t1, t3
	lhu	t4, 0(t4)
	add	t3, t0, t3
	lhu	t3, 0(t3)
	slli	t2, t2, 2
	add	t2, a0, t2
	lw	t2, 0(t2)
	sub	t4, t4, t3
	addi	t3, a1, 6
	add	t1, t1, t3
	lhu	t1, 0(t1)
	add	t0, t0, t3
	lhu	t0, 0(t0)
	slli	t4, t4, 2
	add	t4, a0, t4
	lw	t3, 0(t4)
	sub	t0, t1, t0
	slli	t0, t0, 2
	add	t0, a0, t0
	lw	t0, 0(t0)
	add	t2, t2, t3
	add	a7, a7, t2
	add	a7, a7, t0
.LBB4_11:
	ld	t1, 16(a3)
	ld	t0, 16(a4)
	add	t2, t1, a1
	lhu	t2, 0(t2)
	add	t3, t0, a1
	lhu	t3, 0(t3)
	sub	t2, t2, t3
	slli	t2, t2, 2
	add	t2, a0, t2
	lw	t2, 0(t2)
	add	a7, a7, t2
	bge	a2, a6, .LBB4_13
# %bb.12:
	add	t2, t1, a5
	lhu	t2, 0(t2)
	add	t3, t0, a5
	lhu	t3, 0(t3)
	sub	t2, t2, t3
	addi	t3, a1, 4
	add	t4, t1, t3
	lhu	t4, 0(t4)
	add	t3, t0, t3
	lhu	t3, 0(t3)
	slli	t2, t2, 2
	add	t2, a0, t2
	lw	t2, 0(t2)
	sub	t4, t4, t3
	addi	t3, a1, 6
	add	t1, t1, t3
	lhu	t1, 0(t1)
	add	t0, t0, t3
	lhu	t0, 0(t0)
	slli	t4, t4, 2
	add	t4, a0, t4
	lw	t3, 0(t4)
	sub	t0, t1, t0
	slli	t0, t0, 2
	add	t0, a0, t0
	lw	t0, 0(t0)
	add	t2, t2, t3
	add	t0, t2, t0
	add	a7, a7, t0
.LBB4_13:
	ld	t0, 24(a3)
	ld	a3, 24(a4)
	add	a4, t0, a1
	lhu	a4, 0(a4)
	add	t1, a3, a1
	lhu	t1, 0(t1)
	sub	a4, a4, t1
	slli	a4, a4, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	add	a7, a7, a4
	bge	a2, a6, .LBB4_15
# %bb.14:
	add	a2, t0, a5
	lhu	a2, 0(a2)
	add	a5, a3, a5
	lhu	a4, 0(a5)
	sub	a2, a2, a4
	addi	a4, a1, 4
	add	a5, t0, a4
	lhu	a5, 0(a5)
	add	a4, a3, a4
	lhu	a4, 0(a4)
	slli	a2, a2, 2
	add	a2, a0, a2
	lw	a2, 0(a2)
	sub	a5, a5, a4
	addi	a1, a1, 6
	add	t0, t0, a1
	lhu	a4, 0(t0)
	add	a1, a3, a1
	lhu	a1, 0(a1)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a3, 0(a5)
	sub	a4, a4, a1
	slli	a4, a4, 2
	add	a0, a0, a4
	lw	a0, 0(a0)
	add	a2, a2, a3
	add	a0, a2, a0
	add	a7, a7, a0
.LBB4_15:
	fcvt.d.l	fs1, a7
.LBB4_16:
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	xor	a0, a3, a2
	snez	a1, a0
	slt	a0, a2, a3
	xori	a0, a0, 1
	sub	a2, a2, a0
	lui	a0, %hi(input)
	ld	a3, %lo(input)(a0)
	addi	a1, a1, -1
	or	a1, a1, a2
	sw	a1, 4(s4)
	addi	a1, a3, 2047
	lw	a1, 937(a1)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	add	a2, a2, s0
	sw	a2, 24(s4)
	li	a2, 4
	sw	a2, 0(s4)
	beqz	a1, .LBB4_19
# %bb.17:
	lui	a1, %hi(writeIntraPredMode_CABAC)
	addi	a1, a1, %lo(writeIntraPredMode_CABAC)
	sd	a1, 40(s4)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	lw	a1, 16(a1)
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	ld	a2, 24(a2)
	li	a3, 112
	mul	a1, a1, a3
	add	a1, a2, a1
	beqz	a0, .LBB4_20
# %bb.18:
	ld	a2, 104(a1)
	mv	a0, s4
	jalr	a2
	j	.LBB4_21
.LBB4_19:
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	lw	a0, 16(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	ld	a1, 24(a1)
	li	a2, 112
	mul	a0, a0, a2
	add	a1, a1, a0
.LBB4_20:
	mv	a0, s4
	call	writeSyntaxElement_Intra4x4PredictionMode
.LBB4_21:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	lw	a1, 0(a2)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	lw	s1, 12(s4)
	addi	a1, a1, 1
	sw	a1, 0(a2)
	beqz	a0, .LBB4_23
# %bb.22:
	li	a2, 1
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	mv	a1, s0
	call	writeLumaCoeff4x4_CABAC
	j	.LBB4_24
.LBB4_23:
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	mv	a2, s0
	li	a3, 0
	call	writeCoeff4x4_CAVLC
.LBB4_24:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 460(a1)
	add	a0, a0, s1
	fcvt.d.w	fa0, a0
	bnez	a1, .LBB4_26
# %bb.25:
	fmadd.d	fa0, fs0, fa0, fs1
.LBB4_26:
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	ld	s1, 168(sp)                     # 8-byte Folded Reload
	ld	s2, 160(sp)                     # 8-byte Folded Reload
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	ld	s4, 144(sp)                     # 8-byte Folded Reload
	ld	s5, 136(sp)                     # 8-byte Folded Reload
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	ld	s8, 112(sp)                     # 8-byte Folded Reload
	ld	s9, 104(sp)                     # 8-byte Folded Reload
	ld	s10, 96(sp)                     # 8-byte Folded Reload
	ld	s11, 88(sp)                     # 8-byte Folded Reload
	fld	fs0, 80(sp)                     # 8-byte Folded Reload
	fld	fs1, 72(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
	ret
.Lfunc_end4:
	.size	RDCost_for_4x4IntraBlocks, .Lfunc_end4-RDCost_for_4x4IntraBlocks
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	RDCost_for_4x4Blocks_Chroma     # -- Begin function RDCost_for_4x4Blocks_Chroma
	.p2align	2
	.type	RDCost_for_4x4Blocks_Chroma,@function
RDCost_for_4x4Blocks_Chroma:            # @RDCost_for_4x4Blocks_Chroma
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
	lui	a3, %hi(img)
	ld	s8, %lo(img)(a3)
	lui	a3, 8
	addiw	a3, a3, -1200
	add	a3, s8, a3
	ld	a4, 0(a3)
	sd	a4, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(input)
	ld	a4, %lo(input)(s0)
	ld	s4, 8(a3)
	lw	a3, 12(s8)
	li	a5, 528
	addi	a4, a4, 2047
	lw	a4, 945(a4)
	mul	a3, a3, a5
	add	s4, s4, a3
	lw	s10, 0(s4)
	slli	a4, a4, 3
	lui	a3, %hi(assignSE2partition)
	addi	a3, a3, %lo(assignSE2partition)
	add	a3, a3, a4
	ld	s5, 0(a3)
	mv	s1, a1
	mv	s2, a0
	slti	a0, a0, 8
	xori	s6, a0, 1
	mv	a0, a2
	mv	a1, s2
	mv	a2, s1
	call	dct_chroma4x4
	li	a2, 7
	li	a1, -8
	blt	a2, s2, .LBB5_2
# %bb.1:
	li	a1, -4
.LBB5_2:
	add	a1, a1, s2
	slli	a2, s2, 1
	andi	a3, a2, 2
	andi	a2, s1, 1
	or	a3, a3, a2
	andi	a4, a1, -2
	srai	a1, s1, 1
	addw	a4, a4, a1
	slli	a4, a4, 2
	slli	a5, s6, 6
	lui	a6, %hi(cbp_chroma_block_temp)
	addi	a6, a6, %lo(cbp_chroma_block_temp)
	add	a5, a6, a5
	slli	a6, a3, 4
	ld	a7, %lo(input)(s0)
	add	a5, a5, a6
	add	a4, a5, a4
	sw	a0, 0(a4)
	addi	a0, a7, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB5_8
# %bb.3:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a3, 3
	add	a3, a0, a3
	ld	a3, 1848(a3)
	li	s9, 0
	li	s0, 0
	li	a4, 48
	slli	s2, s2, 3
	add	a3, a3, s2
	ld	a3, 0(a3)
	mul	a4, s10, a4
	lui	a5, 8
	slli	s1, s1, 3
	add	a3, a3, s1
	ld	a3, 0(a3)
	addiw	a5, a5, -1184
	add	a5, s8, a5
	add	s1, a5, a4
	ld	s2, 0(a3)
	ld	s8, 8(a3)
	sw	a1, 76(a0)
	sw	a2, 72(a0)
	li	s3, 10
	li	s10, 112
	li	s7, 15
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	lw	s11, 0(s2)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	sw	s11, 4(s1)
	lw	a1, 0(s8)
	addi	a0, a0, 2047
	lw	a2, 937(a0)
	sw	a1, 8(s1)
	li	a0, 32
	lui	a1, %hi(levrun_linfo_inter)
	addi	a1, a1, %lo(levrun_linfo_inter)
	beqz	a2, .LBB5_6
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	li	a0, 40
	lui	a1, %hi(writeRunLevel_CABAC)
	addi	a1, a1, %lo(writeRunLevel_CABAC)
.LBB5_6:                                #   in Loop: Header=BB5_4 Depth=1
	add	a0, s1, a0
	sd	a1, 0(a0)
	lw	a0, 72(s4)
	li	a1, 7
	sw	a1, 24(s1)
	sw	s3, 0(s1)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	addiw	a0, a0, -9
	andi	a0, a0, -6
	seqz	a0, a0
	sw	a0, 80(a1)
	sw	s6, 84(a1)
	lw	a0, 40(s5)
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	ld	a1, 24(a1)
	mul	a0, a0, s10
	add	a1, a1, a0
	ld	a2, 104(a1)
	mv	a0, s1
	jalr	a2
	lw	a0, 12(s1)
	lw	a1, 44(s4)
	add	a0, a1, a0
	sw	a0, 44(s4)
	lw	a0, 12(s1)
	lw	a1, 0(s4)
	addw	s0, a0, s0
	addi	a1, a1, 1
	sw	a1, 0(s4)
	bltu	s7, s9, .LBB5_9
# %bb.7:                                #   in Loop: Header=BB5_4 Depth=1
	addi	s1, s1, 48
	addi	s9, s9, 1
	addi	s8, s8, 4
	addi	s2, s2, 4
	bnez	s11, .LBB5_4
	j	.LBB5_9
.LBB5_8:
	slliw	a0, a3, 4
	andi	a2, s2, -2
	addw	a1, a1, a2
	or	a3, a0, a1
	li	a0, 7
	mv	a1, s2
	mv	a2, s1
	call	writeCoeff4x4_CAVLC
	mv	s0, a0
.LBB5_9:
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	call	reset_coding_state
	mv	a0, s0
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
.Lfunc_end5:
	.size	RDCost_for_4x4Blocks_Chroma, .Lfunc_end5-RDCost_for_4x4Blocks_Chroma
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Mode_Decision_for_4x4IntraBlocks
.LCPI6_0:
	.quad	0x4010000000000000              # double 4
.LCPI6_1:
	.quad	0x46293e5939a08cea              # double 1.0E+30
	.text
	.globl	Mode_Decision_for_4x4IntraBlocks
	.p2align	2
	.type	Mode_Decision_for_4x4IntraBlocks,@function
Mode_Decision_for_4x4IntraBlocks:       # @Mode_Decision_for_4x4IntraBlocks
# %bb.0:
	addi	sp, sp, -1008
	sd	ra, 1000(sp)                    # 8-byte Folded Spill
	sd	s0, 992(sp)                     # 8-byte Folded Spill
	sd	s1, 984(sp)                     # 8-byte Folded Spill
	sd	s2, 976(sp)                     # 8-byte Folded Spill
	sd	s3, 968(sp)                     # 8-byte Folded Spill
	sd	s4, 960(sp)                     # 8-byte Folded Spill
	sd	s5, 952(sp)                     # 8-byte Folded Spill
	sd	s6, 944(sp)                     # 8-byte Folded Spill
	sd	s7, 936(sp)                     # 8-byte Folded Spill
	sd	s8, 928(sp)                     # 8-byte Folded Spill
	sd	s9, 920(sp)                     # 8-byte Folded Spill
	sd	s10, 912(sp)                    # 8-byte Folded Spill
	sd	s11, 904(sp)                    # 8-byte Folded Spill
	fsd	fs0, 896(sp)                    # 8-byte Folded Spill
	fsd	fs1, 888(sp)                    # 8-byte Folded Spill
	fsd	fs2, 880(sp)                    # 8-byte Folded Spill
	sd	a2, 400(sp)                     # 8-byte Folded Spill
	fmv.d	fs0, fa0
	mv	a5, a0
	andi	s9, a0, 1
	slli	a0, s9, 3
	andi	s0, a1, 1
	slli	a3, s0, 2
	mv	s4, a0
	sd	a3, 544(sp)                     # 8-byte Folded Spill
	or	a3, a3, a0
	srai	a2, a1, 1
	lui	a0, 262144
	addi	a0, a0, -2
	lui	s11, %hi(img)
	ld	a4, %lo(img)(s11)
	and	s8, a5, a0
	sd	a2, 552(sp)                     # 8-byte Folded Spill
	add	s8, a2, s8
	lui	a0, 8
	add	a2, a4, a0
	lw	a0, 12(a4)
	ld	a2, -1192(a2)
	sd	a3, 464(sp)                     # 8-byte Folded Spill
	srli	s1, a3, 2
	li	a3, 528
	mul	a3, a0, a3
	add	a2, a2, a3
	lw	s3, 416(a2)
	slli	a2, s8, 34
	sd	a1, 520(sp)                     # 8-byte Folded Spill
	sd	a5, 536(sp)                     # 8-byte Folded Spill
	or	a3, a1, a5
	srai	s2, a2, 34
	bnez	a3, .LBB6_2
# %bb.1:
	lui	a1, %hi(Mode_Decision_for_4x4IntraBlocks.cbp_bits)
	sd	zero, %lo(Mode_Decision_for_4x4IntraBlocks.cbp_bits)(a1)
.LBB6_2:
	lw	s5, 152(a4)
	lw	s7, 156(a4)
	lw	s10, 168(a4)
	lw	s6, 172(a4)
	li	a3, -1
	addi	a5, sp, 776
	mv	a1, s1
	mv	a2, s2
	li	a4, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s11)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 752
	sd	s1, 392(sp)                     # 8-byte Folded Spill
	mv	a1, s1
	sd	s2, 384(sp)                     # 8-byte Folded Spill
	mv	a2, s2
	li	a3, 0
	call	getLuma4x4Neighbour
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 220(a0)
	beqz	a0, .LBB6_7
# %bb.3:
	lw	a0, 776(sp)
	beqz	a0, .LBB6_5
# %bb.4:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a1, 780(sp)
	ld	a0, -920(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
.LBB6_5:
	ld	a4, 400(sp)                     # 8-byte Folded Reload
	mv	s1, s3
	mv	s2, s4
	lw	a1, 752(sp)
	sw	a0, 776(sp)
	ld	s3, 544(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB6_8
# %bb.6:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a1, 756(sp)
	ld	a0, -920(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a2, 0(a0)
	j	.LBB6_9
.LBB6_7:
	lw	a2, 752(sp)
	ld	a4, 400(sp)                     # 8-byte Folded Reload
	mv	s1, s3
	mv	s2, s4
	ld	s3, 544(sp)                     # 8-byte Folded Reload
	ld	s4, 552(sp)                     # 8-byte Folded Reload
	j	.LBB6_10
.LBB6_8:
	li	a2, 0
.LBB6_9:
	ld	s4, 552(sp)                     # 8-byte Folded Reload
	sw	a2, 752(sp)
.LBB6_10:
	lui	a1, %hi(.LCPI6_0)
	slli	s9, s9, 1
	li	a0, 255
	li	a3, 255
	sd	a3, 544(sp)                     # 8-byte Folded Spill
	beqz	a2, .LBB6_12
# %bb.11:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a3, 772(sp)
	ld	a2, 104(a2)
	slli	a3, a3, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	lw	a3, 768(sp)
	add	a2, a2, a3
	lbu	a2, 0(a2)
	sd	a2, 544(sp)                     # 8-byte Folded Spill
.LBB6_12:
	lw	a2, 776(sp)
	fld	fa5, %lo(.LCPI6_0)(a1)
	slliw	a1, s8, 2
	sd	a1, 264(sp)                     # 8-byte Folded Spill
	or	s9, s9, s0
	beqz	a2, .LBB6_14
# %bb.13:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 796(sp)
	ld	a0, 104(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	lw	a1, 792(sp)
	add	a0, a0, a1
	lbu	a0, 0(a0)
.LBB6_14:
	ld	a2, 464(sp)                     # 8-byte Folded Reload
	addw	s11, s5, a2
	ld	a3, 264(sp)                     # 8-byte Folded Reload
	addw	s0, s7, a3
	fmul.d	fa5, fs0, fa5
	or	a1, s9, a3
	addw	a2, s10, a2
	sd	a2, 528(sp)                     # 8-byte Folded Spill
	addw	s8, s6, a3
	lui	a2, 3
	addiw	s6, a2, -1730
	lui	a2, 2
	addiw	s7, a2, 312
	ld	a2, 544(sp)                     # 8-byte Folded Reload
	bltu	a2, a0, .LBB6_16
# %bb.15:
	sd	a0, 544(sp)                     # 8-byte Folded Spill
.LBB6_16:
	sraiw	a0, s11, 2
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	sraiw	a0, s0, 2
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	fcvt.w.d	a0, fa5, rdn
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	addi	a1, a1, 1
	sd	a1, 224(sp)                     # 8-byte Folded Spill
	lui	a0, 524288
	addi	a0, a0, -1
	sw	a0, 0(a4)
	addi	a2, sp, 808
	addi	a3, sp, 804
	addi	a4, sp, 800
	mv	a0, s11
	mv	a1, s0
	call	intrapred_luma
	li	s10, 0
	sd	zero, 456(sp)                   # 8-byte Folded Spill
	sd	zero, 216(sp)                   # 8-byte Folded Spill
	sd	zero, 376(sp)                   # 8-byte Folded Spill
	sd	zero, 312(sp)                   # 8-byte Folded Spill
	ld	a0, 536(sp)                     # 8-byte Folded Reload
	addiw	n1, a0, 4
	addiw	t4, a0, 8
	andi	a0, a0, -2
	addw	a0, s4, a0
	add	s2, s2, s3
	addw	s4, s2, s5
	sd	s4, 304(sp)                     # 8-byte Folded Spill
	ld	a2, 528(sp)                     # 8-byte Folded Reload
	addi	s3, a2, 1
	addi	a1, a2, 2
	mv	a5, s11
	addi	s11, a2, 3
	addi	a2, a5, 1
	addi	a3, a5, 2
	addi	a4, a5, 3
	sd	a5, 496(sp)                     # 8-byte Folded Spill
	addiw	a5, a5, 3
	sd	a5, 296(sp)                     # 8-byte Folded Spill
	addi	a5, s4, 1
	addi	s5, s4, 2
	addi	a6, s4, 3
	slli	s9, s9, 4
	lui	a7, %hi(dc_level_temp)
	addi	a7, a7, %lo(dc_level_temp)
	slli	a0, a0, 2
	add	a7, a7, a0
	add	a7, a7, s9
	sd	a7, 336(sp)                     # 8-byte Folded Spill
	lui	a7, %hi(dc_level)
	addi	a7, a7, %lo(dc_level)
	add	a7, a7, a0
	add	a7, a7, s9
	sd	a7, 344(sp)                     # 8-byte Folded Spill
	lui	a7, %hi(cbp_chroma_block_temp)
	addi	a7, a7, %lo(cbp_chroma_block_temp)
	add	a7, a7, a0
	add	a7, a7, s9
	sd	a7, 288(sp)                     # 8-byte Folded Spill
	lui	a7, %hi(cbp_chroma_block)
	addi	a7, a7, %lo(cbp_chroma_block)
	add	a0, a7, a0
	add	a0, a0, s9
	sd	a0, 328(sp)                     # 8-byte Folded Spill
	addi	a0, s0, 1
	addi	a7, s0, 2
	addi	t0, s0, 3
	ld	t3, 264(sp)                     # 8-byte Folded Reload
	addi	n4, t3, 1
	addi	n3, t3, 2
	addi	n2, t3, 3
	slli	t6, t3, 6
	lui	t1, %hi(fadjust4x4)
	addi	t1, t1, %lo(fadjust4x4)
	ld	t2, 464(sp)                     # 8-byte Folded Reload
	slli	t5, t2, 2
	add	t2, t1, t5
	sd	t6, 32(sp)                      # 8-byte Folded Spill
	add	t2, t2, t6
	sd	t2, 40(sp)                      # 8-byte Folded Spill
	sd	n4, 232(sp)                     # 8-byte Folded Spill
	slli	t6, n4, 6
	add	t2, t1, t5
	sd	t6, 48(sp)                      # 8-byte Folded Spill
	add	t2, t2, t6
	sd	t2, 56(sp)                      # 8-byte Folded Spill
	sd	n3, 240(sp)                     # 8-byte Folded Spill
	slli	t6, n3, 6
	add	t2, t1, t5
	sd	t6, 64(sp)                      # 8-byte Folded Spill
	add	t2, t2, t6
	sd	t2, 72(sp)                      # 8-byte Folded Spill
	sd	n2, 248(sp)                     # 8-byte Folded Spill
	slli	t2, n2, 6
	sd	t5, 96(sp)                      # 8-byte Folded Spill
	add	t1, t1, t5
	sd	t2, 80(sp)                      # 8-byte Folded Spill
	add	t1, t1, t2
	sd	t1, 88(sp)                      # 8-byte Folded Spill
	slli	s8, s8, 3
	sd	s8, 504(sp)                     # 8-byte Folded Spill
	slli	s1, s1, 9
	slli	t3, t3, 5
	slli	s2, s2, 1
	sd	t3, 256(sp)                     # 8-byte Folded Spill
	add	s2, t3, s2
	add	s1, s1, s2
	add	s7, s1, s7
	sd	s7, 480(sp)                     # 8-byte Folded Spill
	add	s1, s1, s6
	sd	s1, 472(sp)                     # 8-byte Folded Spill
	slli	s7, s0, 3
	addi	t1, s7, 32
	sd	t1, 280(sp)                     # 8-byte Folded Spill
	li	n24, 184
	lui	t1, %hi(.LCPI6_1)
	fld	fs2, %lo(.LCPI6_1)(t1)
	li	s8, 2
	lui	t2, %hi(input)
	li	t3, 1
	li	t5, 9
	lui	n25, %hi(img)
	lui	t1, 3
	addiw	t1, t1, 824
	sd	t1, 552(sp)                     # 8-byte Folded Spill
	slli	s3, s3, 1
	slli	s1, a1, 1
	slli	s11, s11, 1
	lui	a1, 4
	addiw	a1, a1, -1208
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	slli	a2, a2, 1
	sd	a2, 368(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 1
	sd	a3, 360(sp)                     # 8-byte Folded Spill
	slli	s9, a4, 1
	slli	s0, a5, 1
	slli	s5, s5, 1
	slli	s6, a6, 1
	slli	a0, a0, 3
	sd	a0, 408(sp)                     # 8-byte Folded Spill
	slli	a7, a7, 3
	sd	a7, 416(sp)                     # 8-byte Folded Spill
	slli	t0, t0, 3
	sd	t0, 424(sp)                     # 8-byte Folded Spill
	lui	n20, %hi(resTrans_R)
	addi	n20, n20, %lo(resTrans_R)
	lui	n21, %hi(resTrans_B)
	addi	n21, n21, %lo(resTrans_B)
	lui	n22, %hi(resTrans_G)
	addi	n22, n22, %lo(resTrans_G)
	slli	s4, s4, 1
	sd	n1, 320(sp)                     # 8-byte Folded Spill
	slli	n1, n1, 3
	sd	n1, 176(sp)                     # 8-byte Folded Spill
	sd	t4, 352(sp)                     # 8-byte Folded Spill
	slli	t4, t4, 3
	sd	t4, 168(sp)                     # 8-byte Folded Spill
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
	sd	s7, 488(sp)                     # 8-byte Folded Spill
	j	.LBB6_19
.LBB6_17:                               #   in Loop: Header=BB6_19 Depth=1
	fmv.d	fa5, fs2
.LBB6_18:                               #   in Loop: Header=BB6_19 Depth=1
	addi	s10, s10, 1
	addi	n24, n24, 512
	fmv.d	fs2, fa5
	bne	s10, t5, .LBB6_19
	j	.LBB6_97
.LBB6_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_30 Depth 2
                                        #     Child Loop BB6_33 Depth 2
                                        #     Child Loop BB6_66 Depth 2
	li	a0, 1
	beq	s10, s8, .LBB6_24
# %bb.20:                               #   in Loop: Header=BB6_19 Depth=1
	snez	a0, s10
	andi	a1, s10, 11
	addi	a1, a1, -3
	snez	a1, a1
	and	a0, a0, a1
	bnez	a0, .LBB6_22
# %bb.21:                               #   in Loop: Header=BB6_19 Depth=1
	lw	a1, 804(sp)
	li	a0, 1
	bnez	a1, .LBB6_24
.LBB6_22:                               #   in Loop: Header=BB6_19 Depth=1
	addi	a0, s10, -1
	snez	a0, a0
	addi	a1, s10, -8
	snez	a1, a1
	and	a0, a0, a1
	bnez	a0, .LBB6_57
# %bb.23:                               #   in Loop: Header=BB6_19 Depth=1
	lw	a1, 808(sp)
	li	a0, 1
	beqz	a1, .LBB6_57
.LBB6_24:                               #   in Loop: Header=BB6_19 Depth=1
	ld	a1, %lo(input)(t2)
	addi	a2, a1, 2047
	lw	a3, 977(a2)
	beqz	a3, .LBB6_58
.LBB6_25:                               #   in Loop: Header=BB6_19 Depth=1
	ld	a3, %lo(img)(n25)
	lw	a3, 24(a3)
	bne	a3, s8, .LBB6_58
.LBB6_26:                               #   in Loop: Header=BB6_19 Depth=1
	beqz	a0, .LBB6_17
# %bb.27:                               #   in Loop: Header=BB6_19 Depth=1
	lw	a2, 1089(a2)
	ld	a0, 528(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 1
	bnez	a2, .LBB6_28
	j	.LBB6_73
.LBB6_28:                               #   in Loop: Header=BB6_19 Depth=1
	ld	t1, %lo(img)(n25)
	lui	a1, 22
	add	a1, t1, a1
	lw	a1, 460(a1)
	sext.w	t5, s10
	ld	s2, 496(sp)                     # 8-byte Folded Reload
	slli	s2, s2, 1
	sd	n24, 512(sp)                    # 8-byte Folded Spill
	bnez	a1, .LBB6_29
	j	.LBB6_75
.LBB6_29:                               #   in Loop: Header=BB6_19 Depth=1
	sd	t5, 448(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(imgUV_org)
	ld	a1, %lo(imgUV_org)(a1)
	li	a2, 0
	li	a3, 0
	ld	a4, 0(a1)
	lui	a5, %hi(imgY_org)
	ld	a5, %lo(imgY_org)(a5)
	ld	a6, 8(a1)
	ld	a1, 552(sp)                     # 8-byte Folded Reload
	add	a1, t1, a1
	ld	a7, 504(sp)                     # 8-byte Folded Reload
	add	a4, a4, a7
	add	a5, a5, a7
	add	a6, a6, a7
	ld	a7, 480(sp)                     # 8-byte Folded Reload
	add	a7, t1, a7
	ld	t0, 472(sp)                     # 8-byte Folded Reload
	add	t0, t1, t0
	add	t1, t1, n24
	li	n10, 256
.LBB6_30:                               #   Parent Loop BB6_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t2, 0(a4)
	add	t3, t2, a0
	lhu	t3, 0(t3)
	add	t4, a7, a2
	lhu	t5, 0(t4)
	ld	t6, 0(a5)
	ld	n1, 0(a6)
	sub	t3, t3, t5
	add	t5, t6, a0
	add	n2, n1, a0
	lhu	n2, 0(n2)
	add	n3, t0, a2
	lhu	n4, -6(n3)
	lhu	t5, 0(t5)
	add	n5, t1, a2
	lhu	n6, 0(n5)
	sub	n2, n2, n4
	sub	n2, n2, t3
	add	n4, n20, a3
	sw	n2, 0(n4)
	srli	n2, n2, 1
	add	t3, n2, t3
	subw	t5, t5, n6
	subw	t5, t5, t3
	add	n2, n21, a3
	sw	t5, 0(n2)
	sraiw	t5, t5, 1
	add	t3, t5, t3
	add	t5, n22, a3
	sw	t3, 0(t5)
	add	t3, t2, s3
	lhu	t3, 0(t3)
	lhu	n6, 2(t4)
	sub	t3, t3, n6
	add	n6, n1, s3
	lhu	n6, 0(n6)
	lhu	n7, -4(n3)
	add	n8, t6, s3
	lhu	n8, 0(n8)
	lhu	n9, 2(n5)
	sub	n6, n6, n7
	sub	n6, n6, t3
	sw	n6, 4(n4)
	srli	n6, n6, 1
	add	t3, n6, t3
	subw	n6, n8, n9
	subw	n6, n6, t3
	sw	n6, 4(n2)
	sraiw	n6, n6, 1
	add	t3, n6, t3
	sw	t3, 4(t5)
	add	t3, t2, s1
	lhu	t3, 0(t3)
	lhu	n6, 4(t4)
	sub	t3, t3, n6
	add	n6, n1, s1
	lhu	n6, 0(n6)
	lhu	n7, -2(n3)
	add	n8, t6, s1
	lhu	n8, 0(n8)
	lhu	n9, 4(n5)
	sub	n6, n6, n7
	sub	n6, n6, t3
	sw	n6, 8(n4)
	srli	n6, n6, 1
	add	t3, n6, t3
	subw	n6, n8, n9
	subw	n6, n6, t3
	sw	n6, 8(n2)
	sraiw	n6, n6, 1
	add	t3, n6, t3
	sw	t3, 8(t5)
	add	t2, t2, s11
	lhu	t2, 0(t2)
	lhu	t3, 6(t4)
	sub	t2, t2, t3
	add	n1, n1, s11
	lhu	t3, 0(n1)
	lhu	t4, 0(n3)
	add	t6, t6, s11
	lhu	t6, 0(t6)
	lhu	n1, 6(n5)
	sub	t3, t3, t4
	sub	t3, t3, t2
	sw	t3, 12(n4)
	srli	t3, t3, 1
	add	t2, t3, t2
	subw	t3, t6, n1
	subw	t3, t3, t2
	sw	t3, 12(n2)
	sraiw	t3, t3, 1
	add	t2, t3, t2
	sw	t2, 12(t5)
	addi	a3, a3, 64
	addi	a4, a4, 8
	addi	a5, a5, 8
	addi	a6, a6, 8
	addi	a2, a2, 32
	bne	a3, n10, .LBB6_30
# %bb.31:                               #   in Loop: Header=BB6_19 Depth=1
	lui	a2, %hi(resTrans_G)
	lw	a0, %lo(resTrans_G)(a2)
	addi	a2, a2, %lo(resTrans_G)
	sw	a0, 0(a1)
	lw	a0, 4(a2)
	sw	a0, 4(a1)
	lw	a0, 8(a2)
	sw	a0, 8(a1)
	lw	a0, 12(a2)
	sw	a0, 12(a1)
	lw	a0, 64(a2)
	sw	a0, 64(a1)
	lw	a0, 68(a2)
	sw	a0, 68(a1)
	lw	a0, 72(a2)
	sw	a0, 72(a1)
	lw	a0, 76(a2)
	sw	a0, 76(a1)
	lw	a0, 128(a2)
	sw	a0, 128(a1)
	lw	a0, 132(a2)
	sw	a0, 132(a1)
	lw	a0, 136(a2)
	sw	a0, 136(a1)
	lw	a0, 140(a2)
	sw	a0, 140(a1)
	lw	a0, 192(a2)
	sw	a0, 192(a1)
	lw	a0, 196(a2)
	sw	a0, 196(a1)
	lw	a0, 200(a2)
	sw	a0, 200(a1)
	lw	a0, 204(a2)
	sw	a0, 204(a1)
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	lui	s7, %hi(cs_cm)
	call	store_coding_state
	addi	a0, sp, 876
	ld	a1, 536(sp)                     # 8-byte Folded Reload
	ld	s8, 520(sp)                     # 8-byte Folded Reload
	mv	a2, s8
	ld	a3, 448(sp)                     # 8-byte Folded Reload
	fmv.d	fa0, fs0
	ld	a4, 544(sp)                     # 8-byte Folded Reload
	call	RDCost_for_4x4IntraBlocks
	ld	a0, %lo(cs_cm)(s7)
	fmv.d	fs1, fa0
	call	reset_coding_state
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	ld	a1, 552(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	lw	a1, 0(a0)
	lui	a3, %hi(resTrans_B)
	lw	a2, %lo(resTrans_B)(a3)
	lui	a4, %hi(rec_resG)
	sw	a1, %lo(rec_resG)(a4)
	addi	a1, a3, %lo(resTrans_B)
	sw	a2, 0(a0)
	lw	a2, 4(a0)
	lw	a3, 4(a1)
	addi	a4, a4, %lo(rec_resG)
	sw	a2, 4(a4)
	sw	a3, 4(a0)
	lw	a2, 8(a0)
	lw	a3, 8(a1)
	sw	a2, 8(a4)
	sw	a3, 8(a0)
	lw	a2, 12(a0)
	lw	a3, 12(a1)
	sw	a2, 12(a4)
	sw	a3, 12(a0)
	lw	a2, 64(a0)
	lw	a3, 64(a1)
	sw	a2, 64(a4)
	sw	a3, 64(a0)
	lw	a2, 68(a0)
	lw	a3, 68(a1)
	sw	a2, 68(a4)
	sw	a3, 68(a0)
	lw	a2, 72(a0)
	lw	a3, 72(a1)
	sw	a2, 72(a4)
	sw	a3, 72(a0)
	lw	a2, 76(a0)
	lw	a3, 76(a1)
	sw	a2, 76(a4)
	sw	a3, 76(a0)
	lw	a2, 128(a0)
	lw	a3, 128(a1)
	sw	a2, 128(a4)
	sw	a3, 128(a0)
	lw	a2, 132(a0)
	lw	a3, 132(a1)
	sw	a2, 132(a4)
	sw	a3, 132(a0)
	lw	a2, 136(a0)
	lw	a3, 136(a1)
	sw	a2, 136(a4)
	sw	a3, 136(a0)
	lw	a2, 140(a0)
	lw	a3, 140(a1)
	sw	a2, 140(a4)
	sw	a3, 140(a0)
	lw	a2, 192(a0)
	lw	a3, 192(a1)
	sw	a2, 192(a4)
	sw	a3, 192(a0)
	lw	a2, 196(a0)
	lw	a3, 196(a1)
	sw	a2, 196(a4)
	sw	a3, 196(a0)
	lw	a2, 200(a0)
	lw	a3, 200(a1)
	sw	a2, 200(a4)
	sw	a3, 200(a0)
	lw	a2, 204(a0)
	lw	a1, 204(a1)
	addi	s7, a4, 8
	sw	a2, 204(a4)
	sw	a1, 204(a0)
	ld	a0, 320(sp)                     # 8-byte Folded Reload
	mv	a1, s8
	li	a2, 0
	call	RDCost_for_4x4Blocks_Chroma
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	ld	a6, 552(sp)                     # 8-byte Folded Reload
	add	a6, a1, a6
	lw	a2, 0(a6)
	lui	a4, %hi(resTrans_R)
	lw	a3, %lo(resTrans_R)(a4)
	lui	a1, %hi(rec_resB)
	sw	a2, %lo(rec_resB)(a1)
	addi	a2, a4, %lo(resTrans_R)
	sw	a3, 0(a6)
	lw	a3, 4(a6)
	lw	a4, 4(a2)
	addi	a5, a1, %lo(rec_resB)
	sw	a3, 4(a5)
	sw	a4, 4(a6)
	lw	a3, 8(a6)
	lw	a4, 8(a2)
	sw	a3, 8(a5)
	sw	a4, 8(a6)
	lw	a3, 12(a6)
	lw	a4, 12(a2)
	sw	a3, 12(a5)
	sw	a4, 12(a6)
	lw	a3, 64(a6)
	lw	a4, 64(a2)
	sw	a3, 64(a5)
	sw	a4, 64(a6)
	lw	a3, 68(a6)
	lw	a4, 68(a2)
	sw	a3, 68(a5)
	sw	a4, 68(a6)
	lw	a3, 72(a6)
	lw	a4, 72(a2)
	sw	a3, 72(a5)
	sw	a4, 72(a6)
	lw	a3, 76(a6)
	lw	a4, 76(a2)
	sw	a3, 76(a5)
	sw	a4, 76(a6)
	lw	a3, 128(a6)
	lw	a4, 128(a2)
	sw	a3, 128(a5)
	sw	a4, 128(a6)
	lw	a3, 132(a6)
	lw	a4, 132(a2)
	sw	a3, 132(a5)
	sw	a4, 132(a6)
	lw	a3, 136(a6)
	lw	a4, 136(a2)
	sw	a3, 136(a5)
	sw	a4, 136(a6)
	lw	a3, 140(a6)
	lw	a4, 140(a2)
	sw	a3, 140(a5)
	sw	a4, 140(a6)
	lw	a3, 192(a6)
	lw	a4, 192(a2)
	sw	a3, 192(a5)
	sw	a4, 192(a6)
	lw	a3, 196(a6)
	lw	a4, 196(a2)
	sw	a3, 196(a5)
	sw	a4, 196(a6)
	lw	a3, 200(a6)
	lw	a4, 200(a2)
	sw	a3, 200(a5)
	sw	a4, 200(a6)
	lw	a3, 204(a6)
	lw	a2, 204(a2)
	sd	a0, 440(sp)                     # 8-byte Folded Spill
	mv	a1, s8
	addi	s8, a5, 8
	sw	a3, 204(a5)
	sw	a2, 204(a6)
	fcvt.w.d	a0, fs1, rtz
	sd	a0, 432(sp)                     # 8-byte Folded Spill
	li	a2, 1
	ld	a0, 352(sp)                     # 8-byte Folded Reload
	call	RDCost_for_4x4Blocks_Chroma
	lui	a1, %hi(cs_cm)
	ld	a1, %lo(cs_cm)(a1)
	sd	a0, 448(sp)                     # 8-byte Folded Spill
	mv	a0, a1
	call	reset_coding_state
	lui	n25, %hi(img)
	ld	t3, %lo(img)(n25)
	ld	a0, 552(sp)                     # 8-byte Folded Reload
	add	a0, t3, a0
	lw	a1, 0(a0)
	lui	a2, %hi(rec_resR)
	sw	a1, %lo(rec_resR)(a2)
	lw	a1, 4(a0)
	addi	a3, a2, %lo(rec_resR)
	sw	a1, 4(a3)
	lw	a1, 8(a0)
	sw	a1, 8(a3)
	lw	a1, 12(a0)
	sw	a1, 12(a3)
	lw	a1, 64(a0)
	sw	a1, 64(a3)
	lw	a1, 68(a0)
	sw	a1, 68(a3)
	lw	a1, 72(a0)
	sw	a1, 72(a3)
	lw	a1, 76(a0)
	sw	a1, 76(a3)
	lw	a1, 128(a0)
	sw	a1, 128(a3)
	lw	a1, 132(a0)
	sw	a1, 132(a3)
	lw	a1, 136(a0)
	sw	a1, 136(a3)
	lw	a1, 140(a0)
	sw	a1, 140(a3)
	lw	a1, 192(a0)
	sw	a1, 192(a3)
	lw	a1, 196(a0)
	sw	a1, 196(a3)
	lw	a1, 200(a0)
	li	a2, 0
	sw	a1, 200(a3)
	lw	a0, 204(a0)
	lui	a1, 22
	addiw	a1, a1, 420
	lui	a4, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a4)
	add	a5, t3, a1
	sw	a0, 204(a3)
	lui	a0, 2
	addiw	a0, a0, -1768
	add	a6, a4, a0
	ld	a7, 40(a6)
	addi	a3, a3, 8
	ld	a1, 440(sp)                     # 8-byte Folded Reload
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	add	a1, a1, a4
	lw	a4, 4(a5)
	ld	t0, 0(a7)
	lw	a5, 0(a5)
	ld	t1, 0(a6)
	ld	t2, 8(a7)
	ld	a6, 480(sp)                     # 8-byte Folded Reload
	add	a6, t3, a6
	ld	a7, 472(sp)                     # 8-byte Folded Reload
	add	a7, t3, a7
	ld	t4, 488(sp)                     # 8-byte Folded Reload
	add	t0, t0, t4
	add	t1, t1, t4
	add	t2, t2, t4
	ld	n24, 512(sp)                    # 8-byte Folded Reload
	add	t3, t3, n24
	ld	n10, 368(sp)                    # 8-byte Folded Reload
	ld	n11, 360(sp)                    # 8-byte Folded Reload
	ld	n12, 304(sp)                    # 8-byte Folded Reload
	ld	n13, 296(sp)                    # 8-byte Folded Reload
	li	n14, 128
	j	.LBB6_33
.LBB6_32:                               #   in Loop: Header=BB6_33 Depth=2
	add	t4, t4, s9
	sh	t5, 0(t4)
	addi	a2, a2, 32
	addi	t0, t0, 8
	addi	t1, t1, 8
	addi	t2, t2, 8
	addi	a3, a3, 64
	addi	s8, s8, 64
	addi	s7, s7, 64
	beq	a2, n14, .LBB6_64
.LBB6_33:                               #   Parent Loop BB6_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t6, 0(t0)
	lw	n3, -8(s8)
	ld	t5, 0(t1)
	ld	t4, 0(t2)
	lw	n2, -8(s7)
	srai	n5, n3, 1
	lw	n4, -8(a3)
	add	n1, a6, a2
	lhu	n7, 0(n1)
	subw	n6, n2, n5
	srli	n2, n4, 1
	subw	n5, n6, n2
	addw	n2, n5, n7
	sgtz	n7, n2
	neg	n7, n7
	and	n7, n7, n2
	mv	n2, a4
	blt	a4, n7, .LBB6_35
# %bb.34:                               #   in Loop: Header=BB6_33 Depth=2
	mv	n2, n7
.LBB6_35:                               #   in Loop: Header=BB6_33 Depth=2
	add	n7, t6, s2
	sh	n2, 0(n7)
	add	n2, t3, a2
	lhu	n7, 0(n2)
	add	n3, n6, n3
	addw	n3, n3, n7
	sgtz	n6, n3
	neg	n6, n6
	and	n6, n6, n3
	mv	n3, a5
	blt	a5, n6, .LBB6_37
# %bb.36:                               #   in Loop: Header=BB6_33 Depth=2
	mv	n3, n6
.LBB6_37:                               #   in Loop: Header=BB6_33 Depth=2
	add	n6, t5, s2
	sh	n3, 0(n6)
	add	n3, a7, a2
	lhu	n6, -6(n3)
	add	n4, n5, n4
	addw	n4, n4, n6
	sgtz	n5, n4
	neg	n5, n5
	and	n5, n5, n4
	mv	n4, a4
	blt	a4, n5, .LBB6_39
# %bb.38:                               #   in Loop: Header=BB6_33 Depth=2
	mv	n4, n5
.LBB6_39:                               #   in Loop: Header=BB6_33 Depth=2
	add	n5, t4, s2
	sh	n4, 0(n5)
	lw	n6, -4(s8)
	lw	n5, -4(s7)
	lw	n4, -4(a3)
	srai	n7, n6, 1
	lhu	n8, 2(n1)
	subw	n7, n5, n7
	srli	n5, n4, 1
	subw	n5, n7, n5
	addw	n8, n5, n8
	sgtz	n9, n8
	neg	n9, n9
	and	n9, n9, n8
	mv	n8, a4
	blt	a4, n9, .LBB6_41
# %bb.40:                               #   in Loop: Header=BB6_33 Depth=2
	mv	n8, n9
.LBB6_41:                               #   in Loop: Header=BB6_33 Depth=2
	add	n9, t6, n10
	sh	n8, 0(n9)
	lhu	n8, 2(n2)
	add	n6, n7, n6
	addw	n6, n6, n8
	sgtz	n7, n6
	neg	n7, n7
	and	n7, n7, n6
	mv	n6, a5
	blt	a5, n7, .LBB6_43
# %bb.42:                               #   in Loop: Header=BB6_33 Depth=2
	mv	n6, n7
.LBB6_43:                               #   in Loop: Header=BB6_33 Depth=2
	add	n7, t5, n10
	sh	n6, 0(n7)
	lhu	n6, -4(n3)
	add	n4, n5, n4
	addw	n4, n4, n6
	sgtz	n5, n4
	neg	n5, n5
	and	n5, n5, n4
	mv	n4, a4
	blt	a4, n5, .LBB6_45
# %bb.44:                               #   in Loop: Header=BB6_33 Depth=2
	mv	n4, n5
.LBB6_45:                               #   in Loop: Header=BB6_33 Depth=2
	add	n5, t4, n10
	sh	n4, 0(n5)
	lw	n6, 0(s8)
	lw	n5, 0(s7)
	lw	n4, 0(a3)
	srai	n7, n6, 1
	lhu	n8, 4(n1)
	subw	n7, n5, n7
	srli	n5, n4, 1
	subw	n5, n7, n5
	addw	n8, n5, n8
	sgtz	n9, n8
	neg	n9, n9
	and	n9, n9, n8
	mv	n8, a4
	blt	a4, n9, .LBB6_47
# %bb.46:                               #   in Loop: Header=BB6_33 Depth=2
	mv	n8, n9
.LBB6_47:                               #   in Loop: Header=BB6_33 Depth=2
	add	n9, t6, n11
	sh	n8, 0(n9)
	lhu	n8, 4(n2)
	add	n6, n7, n6
	addw	n6, n6, n8
	sgtz	n7, n6
	neg	n7, n7
	and	n7, n7, n6
	mv	n6, a5
	blt	a5, n7, .LBB6_49
# %bb.48:                               #   in Loop: Header=BB6_33 Depth=2
	mv	n6, n7
.LBB6_49:                               #   in Loop: Header=BB6_33 Depth=2
	add	n7, t5, n11
	sh	n6, 0(n7)
	lhu	n6, -2(n3)
	add	n4, n5, n4
	addw	n4, n4, n6
	sgtz	n5, n4
	neg	n5, n5
	and	n5, n5, n4
	mv	n4, a4
	blt	a4, n5, .LBB6_51
# %bb.50:                               #   in Loop: Header=BB6_33 Depth=2
	mv	n4, n5
.LBB6_51:                               #   in Loop: Header=BB6_33 Depth=2
	add	n5, t4, n11
	sh	n4, 0(n5)
	lw	n5, 4(s8)
	lw	n6, 4(s7)
	lw	n4, 4(a3)
	srai	n7, n5, 1
	lhu	n8, 6(n1)
	subw	n6, n6, n7
	srli	n1, n4, 1
	subw	n1, n6, n1
	addw	n7, n1, n8
	sgtz	n8, n7
	neg	n8, n8
	and	n8, n8, n7
	mv	n7, a4
	blt	a4, n8, .LBB6_53
# %bb.52:                               #   in Loop: Header=BB6_33 Depth=2
	mv	n7, n8
.LBB6_53:                               #   in Loop: Header=BB6_33 Depth=2
	add	t6, t6, s9
	sh	n7, 0(t6)
	lhu	t6, 6(n2)
	add	n5, n6, n5
	addw	t6, n5, t6
	sgtz	n2, t6
	neg	n2, n2
	and	n2, n2, t6
	mv	t6, a5
	blt	a5, n2, .LBB6_55
# %bb.54:                               #   in Loop: Header=BB6_33 Depth=2
	mv	t6, n2
.LBB6_55:                               #   in Loop: Header=BB6_33 Depth=2
	add	t5, t5, s9
	sh	t6, 0(t5)
	lhu	t5, 0(n3)
	add	n1, n1, n4
	addw	t5, n1, t5
	sgtz	t6, t5
	neg	t6, t6
	and	t6, t6, t5
	mv	t5, a4
	blt	a4, t6, .LBB6_32
# %bb.56:                               #   in Loop: Header=BB6_33 Depth=2
	mv	t5, t6
	j	.LBB6_32
.LBB6_57:                               #   in Loop: Header=BB6_19 Depth=1
	lw	a0, 800(sp)
	snez	a0, a0
	ld	a1, %lo(input)(t2)
	addi	a2, a1, 2047
	lw	a3, 977(a2)
	bnez	a3, .LBB6_25
.LBB6_58:                               #   in Loop: Header=BB6_19 Depth=1
	bltu	t3, s10, .LBB6_60
# %bb.59:                               #   in Loop: Header=BB6_19 Depth=1
	lw	a3, 981(a2)
	bnez	a3, .LBB6_17
.LBB6_60:                               #   in Loop: Header=BB6_19 Depth=1
	lw	a3, 985(a2)
	beqz	a3, .LBB6_62
# %bb.61:                               #   in Loop: Header=BB6_19 Depth=1
	addiw	a3, s10, -3
	bltu	a3, s8, .LBB6_17
.LBB6_62:                               #   in Loop: Header=BB6_19 Depth=1
	li	a3, 5
	bltu	s10, a3, .LBB6_26
# %bb.63:                               #   in Loop: Header=BB6_19 Depth=1
	lw	a3, 989(a2)
	bnez	a3, .LBB6_17
	j	.LBB6_26
.LBB6_64:                               #   in Loop: Header=BB6_19 Depth=1
	ld	a2, %lo(img)(n25)
	lui	a3, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a3)
	li	t2, 0
	lui	a4, 22
	add	a2, a2, a4
	ld	a2, -928(a2)
	add	a3, a3, a0
	ld	a4, 40(a3)
	lui	a5, %hi(imgUV_org)
	ld	a5, %lo(imgUV_org)(a5)
	lui	a6, %hi(imgY_org)
	ld	t0, %lo(imgY_org)(a6)
	ld	a7, 0(a3)
	ld	t1, 8(a4)
	ld	a6, 8(a5)
	ld	t3, 0(a4)
	ld	t4, 0(a5)
	ld	s7, 488(sp)                     # 8-byte Folded Reload
	add	a3, t1, s7
	add	a4, a6, s7
	add	a5, t3, s7
	add	a6, t4, s7
	add	a7, a7, s7
	add	t0, t0, s7
	ld	t3, 280(sp)                     # 8-byte Folded Reload
	add	t1, t1, t3
	lui	n20, %hi(resTrans_R)
	addi	n20, n20, %lo(resTrans_R)
	lui	n21, %hi(resTrans_B)
	addi	n21, n21, %lo(resTrans_B)
	lui	n22, %hi(resTrans_G)
	addi	n22, n22, %lo(resTrans_G)
	li	s8, 2
	j	.LBB6_66
.LBB6_65:                               #   in Loop: Header=BB6_66 Depth=2
	addi	a3, a3, 8
	addi	a4, a4, 8
	addi	a5, a5, 8
	addi	a6, a6, 8
	addi	a7, a7, 8
	addi	t0, t0, 8
	beq	a3, t1, .LBB6_68
.LBB6_66:                               #   Parent Loop BB6_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n2, 0(t0)
	ld	n1, 0(a7)
	ld	t6, 0(a6)
	ld	t5, 0(a5)
	ld	t4, 0(a4)
	ld	t3, 0(a3)
	add	n3, n2, s4
	lhu	n3, 0(n3)
	add	n4, n1, s4
	lhu	n4, 0(n4)
	add	n5, t6, s4
	lhu	n5, 0(n5)
	add	n6, t5, s4
	lhu	n6, 0(n6)
	add	n7, t4, s4
	lhu	n7, 0(n7)
	add	n8, t3, s4
	lhu	n8, 0(n8)
	sub	n3, n3, n4
	sub	n4, n5, n6
	sub	n5, n7, n8
	slli	n3, n3, 2
	add	n3, a2, n3
	lw	n3, 0(n3)
	slli	n4, n4, 2
	add	n4, a2, n4
	lw	n4, 0(n4)
	slli	n5, n5, 2
	add	n5, a2, n5
	lw	n5, 0(n5)
	add	t2, t2, n3
	add	n4, n4, n5
	add	t2, t2, n4
	bge	n12, n13, .LBB6_65
# %bb.67:                               #   in Loop: Header=BB6_66 Depth=2
	add	n3, n2, s0
	lhu	n3, 0(n3)
	add	n4, n1, s0
	lhu	n4, 0(n4)
	sub	n3, n3, n4
	add	n4, t6, s0
	lhu	n4, 0(n4)
	add	n5, t5, s0
	lhu	n5, 0(n5)
	slli	n3, n3, 2
	add	n3, a2, n3
	lw	n3, 0(n3)
	sub	n4, n4, n5
	slli	n4, n4, 2
	add	n4, a2, n4
	lw	n4, 0(n4)
	add	n5, t4, s0
	lhu	n5, 0(n5)
	add	n6, t3, s0
	lhu	n6, 0(n6)
	add	n3, n3, n4
	sub	n4, n5, n6
	add	n5, n2, s5
	lhu	n5, 0(n5)
	add	n6, n1, s5
	lhu	n6, 0(n6)
	slli	n4, n4, 2
	add	n4, a2, n4
	lw	n4, 0(n4)
	sub	n5, n5, n6
	add	n6, t6, s5
	lhu	n6, 0(n6)
	add	n7, t5, s5
	lhu	n7, 0(n7)
	slli	n5, n5, 2
	add	n5, a2, n5
	lw	n5, 0(n5)
	sub	n6, n6, n7
	slli	n6, n6, 2
	add	n6, a2, n6
	lw	n6, 0(n6)
	add	n7, t4, s5
	lhu	n7, 0(n7)
	add	n8, t3, s5
	lhu	n8, 0(n8)
	add	n3, n3, n4
	add	t2, t2, n3
	add	n5, n5, n6
	sub	n3, n7, n8
	add	n2, n2, s6
	lhu	n2, 0(n2)
	add	n1, n1, s6
	lhu	n1, 0(n1)
	slli	n3, n3, 2
	add	n3, a2, n3
	lw	n3, 0(n3)
	sub	n1, n2, n1
	add	t6, t6, s6
	lhu	t6, 0(t6)
	add	t5, t5, s6
	lhu	t5, 0(t5)
	slli	n1, n1, 2
	add	n1, a2, n1
	lw	n1, 0(n1)
	sub	t6, t6, t5
	add	t4, t4, s6
	lhu	t4, 0(t4)
	add	t3, t3, s6
	lhu	t3, 0(t3)
	slli	t6, t6, 2
	add	t6, a2, t6
	lw	t5, 0(t6)
	sub	t4, t4, t3
	slli	t4, t4, 2
	add	t4, a2, t4
	lw	t3, 0(t4)
	add	n3, n5, n3
	add	n1, n3, n1
	add	t2, t2, n1
	add	t3, t5, t3
	add	t2, t2, t3
	j	.LBB6_65
.LBB6_68:                               #   in Loop: Header=BB6_19 Depth=1
	ld	a2, 448(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	fcvt.d.l	fa5, t2
	fcvt.d.w	fa4, a1
	fmadd.d	fa5, fs0, fa4, fa5
	flt.d	a1, fa5, fs2
	beqz	a1, .LBB6_80
# %bb.69:                               #   in Loop: Header=BB6_19 Depth=1
	ld	a1, %lo(img)(n25)
	lui	a2, 3
	add	a1, a1, a2
	ld	a1, 1848(a1)
	ld	a2, 536(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 3
	add	a2, a1, a2
	ld	a2, 0(a2)
	ld	a6, 520(sp)                     # 8-byte Folded Reload
	slli	a6, a6, 3
	add	a2, a2, a6
	ld	a3, 176(sp)                     # 8-byte Folded Reload
	add	a3, a1, a3
	ld	a3, 0(a3)
	ld	a4, 0(a2)
	lui	a2, %hi(cofAC4x4)
	ld	a5, %lo(cofAC4x4)(a2)
	add	a3, a3, a6
	ld	a2, 0(a4)
	ld	a7, 168(sp)                     # 8-byte Folded Reload
	add	a1, a1, a7
	ld	a1, 0(a1)
	ld	a7, 0(a5)
	lw	t0, 0(a2)
	ld	a3, 0(a3)
	add	a1, a1, a6
	ld	a1, 0(a1)
	sw	t0, 0(a7)
	lw	a6, 4(a2)
	sw	a6, 4(a7)
	lw	a6, 8(a2)
	sw	a6, 8(a7)
	lw	a6, 12(a2)
	sw	a6, 12(a7)
	lw	a6, 16(a2)
	sw	a6, 16(a7)
	lw	a6, 20(a2)
	sw	a6, 20(a7)
	lw	a6, 24(a2)
	sw	a6, 24(a7)
	lw	a6, 28(a2)
	sw	a6, 28(a7)
	lw	a6, 32(a2)
	sw	a6, 32(a7)
	lw	a6, 36(a2)
	sw	a6, 36(a7)
	lw	a6, 40(a2)
	sw	a6, 40(a7)
	lw	a6, 44(a2)
	sw	a6, 44(a7)
	lw	a6, 48(a2)
	sw	a6, 48(a7)
	lw	a6, 52(a2)
	sw	a6, 52(a7)
	lw	a6, 56(a2)
	sw	a6, 56(a7)
	lw	a6, 60(a2)
	sw	a6, 60(a7)
	lw	a6, 64(a2)
	sw	a6, 64(a7)
	lw	a2, 68(a2)
	sw	a2, 68(a7)
	ld	a6, 0(a3)
	lw	a2, 0(a6)
	lw	a7, 4(a6)
	lui	t0, %hi(cofAC4x4_chroma)
	sw	a2, %lo(cofAC4x4_chroma)(t0)
	addi	a2, t0, %lo(cofAC4x4_chroma)
	sw	a7, 4(a2)
	lw	a7, 8(a6)
	lw	t0, 12(a6)
	lw	t1, 16(a6)
	lw	t2, 20(a6)
	sw	a7, 8(a2)
	sw	t0, 12(a2)
	sw	t1, 16(a2)
	sw	t2, 20(a2)
	lw	a7, 24(a6)
	lw	t0, 28(a6)
	lw	t1, 32(a6)
	lw	t2, 36(a6)
	sw	a7, 24(a2)
	sw	t0, 28(a2)
	sw	t1, 32(a2)
	sw	t2, 36(a2)
	lw	a7, 40(a6)
	lw	t0, 44(a6)
	lw	t1, 48(a6)
	lw	t2, 52(a6)
	sw	a7, 40(a2)
	sw	t0, 44(a2)
	sw	t1, 48(a2)
	sw	t2, 52(a2)
	lw	a7, 56(a6)
	lw	t0, 60(a6)
	lw	t1, 64(a6)
	lw	a6, 68(a6)
	sw	a7, 56(a2)
	sw	t0, 60(a2)
	sw	t1, 64(a2)
	sw	a6, 68(a2)
	ld	a6, 0(a1)
	lw	a7, 0(a6)
	sw	a7, 144(a2)
	lw	a7, 4(a6)
	sw	a7, 148(a2)
	lw	a7, 8(a6)
	sw	a7, 152(a2)
	lw	a7, 12(a6)
	sw	a7, 156(a2)
	lw	a7, 16(a6)
	sw	a7, 160(a2)
	lw	a7, 20(a6)
	sw	a7, 164(a2)
	lw	a7, 24(a6)
	sw	a7, 168(a2)
	lw	a7, 28(a6)
	sw	a7, 172(a2)
	lw	a7, 32(a6)
	sw	a7, 176(a2)
	lw	a7, 36(a6)
	sw	a7, 180(a2)
	lw	a7, 40(a6)
	sw	a7, 184(a2)
	lw	a7, 44(a6)
	sw	a7, 188(a2)
	lw	a7, 48(a6)
	sw	a7, 192(a2)
	lw	a7, 52(a6)
	sw	a7, 196(a2)
	lw	a7, 56(a6)
	sw	a7, 200(a2)
	lw	a7, 60(a6)
	sw	a7, 204(a2)
	lw	a7, 64(a6)
	sw	a7, 208(a2)
	lw	a6, 68(a6)
	sw	a6, 212(a2)
	ld	a4, 8(a4)
	ld	a5, 8(a5)
	lw	a6, 0(a4)
	sw	a6, 0(a5)
	lw	a6, 4(a4)
	sw	a6, 4(a5)
	lw	a6, 8(a4)
	sw	a6, 8(a5)
	lw	a6, 12(a4)
	sw	a6, 12(a5)
	lw	a6, 16(a4)
	sw	a6, 16(a5)
	lw	a6, 20(a4)
	sw	a6, 20(a5)
	lw	a6, 24(a4)
	sw	a6, 24(a5)
	lw	a6, 28(a4)
	sw	a6, 28(a5)
	lw	a6, 32(a4)
	sw	a6, 32(a5)
	lw	a6, 36(a4)
	sw	a6, 36(a5)
	lw	a6, 40(a4)
	sw	a6, 40(a5)
	lw	a6, 44(a4)
	sw	a6, 44(a5)
	lw	a6, 48(a4)
	sw	a6, 48(a5)
	lw	a6, 52(a4)
	sw	a6, 52(a5)
	lw	a6, 56(a4)
	sw	a6, 56(a5)
	lw	a6, 60(a4)
	sw	a6, 60(a5)
	lw	a6, 64(a4)
	sw	a6, 64(a5)
	lw	a4, 68(a4)
	sw	a4, 68(a5)
	ld	a3, 8(a3)
	lw	a4, 0(a3)
	sw	a4, 72(a2)
	lw	a4, 4(a3)
	sw	a4, 76(a2)
	lw	a4, 8(a3)
	sw	a4, 80(a2)
	lw	a4, 12(a3)
	sw	a4, 84(a2)
	lw	a4, 16(a3)
	sw	a4, 88(a2)
	lw	a4, 20(a3)
	sw	a4, 92(a2)
	lw	a4, 24(a3)
	sw	a4, 96(a2)
	lw	a4, 28(a3)
	sw	a4, 100(a2)
	lw	a4, 32(a3)
	sw	a4, 104(a2)
	lw	a4, 36(a3)
	sw	a4, 108(a2)
	lw	a4, 40(a3)
	sw	a4, 112(a2)
	lw	a4, 44(a3)
	sw	a4, 116(a2)
	lw	a4, 48(a3)
	sw	a4, 120(a2)
	lw	a4, 52(a3)
	sw	a4, 124(a2)
	lw	a4, 56(a3)
	sw	a4, 128(a2)
	lw	a4, 60(a3)
	sw	a4, 132(a2)
	lw	a4, 64(a3)
	sw	a4, 136(a2)
	lw	a3, 68(a3)
	sw	a3, 140(a2)
	ld	a1, 8(a1)
	lw	a3, 0(a1)
	sw	a3, 216(a2)
	lw	a3, 4(a1)
	sw	a3, 220(a2)
	lw	a3, 8(a1)
	sw	a3, 224(a2)
	lw	a3, 12(a1)
	sw	a3, 228(a2)
	lw	a3, 16(a1)
	sw	a3, 232(a2)
	lw	a3, 20(a1)
	sw	a3, 236(a2)
	lw	a3, 24(a1)
	sw	a3, 240(a2)
	lw	a3, 28(a1)
	sw	a3, 244(a2)
	lw	a3, 32(a1)
	sw	a3, 248(a2)
	lw	a3, 36(a1)
	sw	a3, 252(a2)
	lw	a3, 40(a1)
	sw	a3, 256(a2)
	lw	a3, 44(a1)
	sw	a3, 260(a2)
	lw	a3, 48(a1)
	sw	a3, 264(a2)
	lw	a3, 52(a1)
	sw	a3, 268(a2)
	lw	a3, 56(a1)
	sw	a3, 272(a2)
	lw	a3, 60(a1)
	sw	a3, 276(a2)
	lw	a3, 64(a1)
	sw	a3, 280(a2)
	lw	a1, 68(a1)
	lui	a3, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a3)
	sw	a1, 284(a2)
	add	a4, a4, a0
	ld	t1, 40(a4)
	ld	a0, %lo(img)(n25)
	ld	a1, 336(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a1)
	ld	a2, 288(sp)                     # 8-byte Folded Reload
	lw	a5, 0(a2)
	lui	a2, %hi(si_frame_indicator)
	lw	a3, %lo(si_frame_indicator)(a2)
	lui	a2, %hi(sp2_frame_indicator)
	lw	a2, %lo(sp2_frame_indicator)(a2)
	ld	a6, 344(sp)                     # 8-byte Folded Reload
	sw	a1, 0(a6)
	ld	a1, 328(sp)                     # 8-byte Folded Reload
	sw	a5, 0(a1)
	ld	a6, 0(t1)
	lw	a7, 24(a0)
	lui	a1, %hi(lrec)
	ld	a1, %lo(lrec)(a1)
	add	a5, a6, s7
	li	t0, 3
	bne	a7, t0, .LBB6_83
# %bb.70:                               #   in Loop: Header=BB6_19 Depth=1
	bnez	a3, .LBB6_83
# %bb.71:                               #   in Loop: Header=BB6_19 Depth=1
	bnez	a2, .LBB6_83
# %bb.72:                               #   in Loop: Header=BB6_19 Depth=1
	add	a7, a1, s7
	ld	a7, 0(a7)
	ld	t0, 496(sp)                     # 8-byte Folded Reload
	slli	t0, t0, 2
	add	a7, a7, t0
	lwu	t2, 4(a7)
	lwu	t3, 0(a7)
	slli	t2, t2, 32
	or	t2, t2, t3
	lwu	t3, 12(a7)
	ld	t5, 408(sp)                     # 8-byte Folded Reload
	add	t4, a6, t5
	ld	t4, 0(t4)
	sd	t2, 688(sp)
	lwu	a7, 8(a7)
	slli	t3, t3, 32
	add	t4, t4, s2
	lhu	t2, 2(t4)
	or	a7, t3, a7
	sd	a7, 696(sp)
	lhu	a7, 0(t4)
	slli	t2, t2, 16
	lhu	t3, 4(t4)
	lhu	t4, 6(t4)
	add	t5, a1, t5
	ld	t5, 0(t5)
	or	a7, t2, a7
	slli	t3, t3, 32
	slli	t4, t4, 48
	add	t5, t5, t0
	lw	t2, 0(t5)
	or	t3, t4, t3
	or	a7, t3, a7
	sd	a7, 144(sp)                     # 8-byte Folded Spill
	lw	a7, 4(t5)
	addi	n1, sp, 704
	sw	t2, 0(n1)
	ld	t6, 416(sp)                     # 8-byte Folded Reload
	add	t2, a6, t6
	ld	t2, 0(t2)
	sw	a7, 4(n1)
	lw	a7, 8(t5)
	lw	t3, 12(t5)
	add	t2, t2, s2
	lhu	t4, 2(t2)
	sw	a7, 8(n1)
	sw	t3, 12(n1)
	lhu	a7, 0(t2)
	slli	t4, t4, 16
	lhu	t3, 4(t2)
	add	t5, a1, t6
	ld	t5, 0(t5)
	or	a7, t4, a7
	lhu	t2, 6(t2)
	slli	t3, t3, 32
	add	t5, t5, t0
	lw	t4, 12(t5)
	slli	t2, t2, 48
	or	t2, t2, t3
	or	a7, t2, a7
	sd	a7, 136(sp)                     # 8-byte Folded Spill
	addi	t6, sp, 720
	sw	t4, 12(t6)
	lw	a7, 8(t5)
	lw	t2, 4(t5)
	ld	t4, 424(sp)                     # 8-byte Folded Reload
	add	a6, a6, t4
	ld	a6, 0(a6)
	sw	a7, 8(t6)
	sw	t2, 4(t6)
	lw	a7, 0(t5)
	add	a6, a6, s2
	lhu	t2, 2(a6)
	lhu	t3, 0(a6)
	sw	a7, 0(t6)
	lhu	a7, 4(a6)
	slli	t2, t2, 16
	or	t2, t2, t3
	lhu	a6, 6(a6)
	slli	a7, a7, 32
	add	t3, a1, t4
	ld	t3, 0(t3)
	slli	a6, a6, 48
	or	a6, a6, a7
	or	a6, a6, t2
	sd	a6, 24(sp)                      # 8-byte Folded Spill
	add	t0, t3, t0
	lw	a6, 12(t0)
	lw	a7, 8(t0)
	lw	t2, 4(t0)
	lw	t0, 0(t0)
	addi	t3, sp, 736
	sw	a6, 12(t3)
	sw	a7, 8(t3)
	sw	t2, 4(t3)
	sw	t0, 0(t3)
	j	.LBB6_84
.LBB6_73:                               #   in Loop: Header=BB6_19 Depth=1
	mv	s8, n24
	lui	a2, %hi(imgY_org)
	ld	a2, %lo(imgY_org)(a2)
	ld	a3, %lo(img)(n25)
	ld	a4, 504(sp)                     # 8-byte Folded Reload
	add	a2, a2, a4
	ld	a4, 0(a2)
	slli	a5, s10, 9
	add	a3, a3, a5
	add	a5, a4, a0
	lhu	a5, 0(a5)
	lhu	a6, 184(a3)
	subw	a5, a5, a6
	sw	a5, 812(sp)
	add	a5, a4, s3
	lhu	a5, 0(a5)
	lhu	a6, 186(a3)
	subw	a5, a5, a6
	sw	a5, 816(sp)
	add	a5, a4, s1
	lhu	a5, 0(a5)
	lhu	a6, 188(a3)
	subw	a5, a5, a6
	sw	a5, 820(sp)
	add	a4, a4, s11
	lhu	a4, 0(a4)
	lhu	a5, 190(a3)
	subw	a4, a4, a5
	sw	a4, 824(sp)
	ld	a4, 8(a2)
	add	a5, a4, a0
	lhu	a5, 0(a5)
	lhu	a6, 216(a3)
	subw	a5, a5, a6
	sw	a5, 828(sp)
	add	a5, a4, s3
	lhu	a5, 0(a5)
	lhu	a6, 218(a3)
	subw	a5, a5, a6
	sw	a5, 832(sp)
	add	a5, a4, s1
	lhu	a5, 0(a5)
	lhu	a6, 220(a3)
	subw	a5, a5, a6
	sw	a5, 836(sp)
	add	a4, a4, s11
	lhu	a4, 0(a4)
	lhu	a5, 222(a3)
	subw	a4, a4, a5
	sw	a4, 840(sp)
	ld	a4, 16(a2)
	add	a5, a4, a0
	lhu	a5, 0(a5)
	lhu	a6, 248(a3)
	subw	a5, a5, a6
	sw	a5, 844(sp)
	add	a5, a4, s3
	lhu	a5, 0(a5)
	lhu	a6, 250(a3)
	subw	a5, a5, a6
	sw	a5, 848(sp)
	add	a5, a4, s1
	lhu	a5, 0(a5)
	lhu	a6, 252(a3)
	subw	a5, a5, a6
	sw	a5, 852(sp)
	add	a4, a4, s11
	lhu	a4, 0(a4)
	lhu	a5, 254(a3)
	subw	a4, a4, a5
	sw	a4, 856(sp)
	ld	a2, 24(a2)
	add	a0, a2, a0
	lhu	a0, 0(a0)
	lhu	a4, 280(a3)
	subw	a0, a0, a4
	sw	a0, 860(sp)
	add	a0, a2, s3
	lhu	a0, 0(a0)
	lhu	a4, 282(a3)
	subw	a0, a0, a4
	sw	a0, 864(sp)
	add	a0, a2, s1
	lhu	a0, 0(a0)
	lhu	a4, 284(a3)
	subw	a0, a0, a4
	sw	a0, 868(sp)
	add	a2, a2, s11
	lhu	a0, 0(a2)
	lhu	a2, 286(a3)
	subw	a0, a0, a2
	sw	a0, 872(sp)
	ld	a0, 544(sp)                     # 8-byte Folded Reload
	xor	a0, s10, a0
	lw	a1, 24(a1)
	seqz	a0, a0
	addi	a0, a0, -1
	ld	a2, 272(sp)                     # 8-byte Folded Reload
	and	s2, a0, a2
	addi	a0, sp, 812
	call	SATD
	ld	a2, 400(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a2)
	addw	a0, a0, s2
	bge	a0, a1, .LBB6_81
# %bb.74:                               #   in Loop: Header=BB6_19 Depth=1
	sw	a0, 0(a2)
	fmv.d	fa5, fs2
	sd	s10, 456(sp)                    # 8-byte Folded Spill
	j	.LBB6_82
.LBB6_75:                               #   in Loop: Header=BB6_19 Depth=1
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	add	a4, t1, a4
	ld	a2, 464(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 1
	slli	a1, s10, 9
	add	t1, t1, a1
	ld	a5, 184(t1)
	lui	t2, 3
	addiw	a3, t2, 312
	add	a6, a2, a3
	add	a4, a4, a6
	srli	a6, a5, 48
	sh	a6, 6(a4)
	srli	a6, a5, 32
	sh	a6, 4(a4)
	srli	a6, a5, 16
	sh	a6, 2(a4)
	sh	a5, 0(a4)
	lui	t4, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(t4)
	ld	t3, 504(sp)                     # 8-byte Folded Reload
	add	a4, a4, t3
	ld	a5, %lo(img)(n25)
	ld	a4, 0(a4)
	add	a6, a5, a1
	add	a7, a4, a0
	lhu	a7, 0(a7)
	lhu	t0, 184(a6)
	ld	t1, 552(sp)                     # 8-byte Folded Reload
	add	t1, a5, t1
	subw	a7, a7, t0
	sw	a7, 0(t1)
	add	a7, a4, s3
	lhu	a7, 0(a7)
	lhu	t0, 186(a6)
	subw	a7, a7, t0
	sw	a7, 4(t1)
	add	a7, a4, s1
	lhu	a7, 0(a7)
	lhu	t0, 188(a6)
	subw	a7, a7, t0
	sw	a7, 8(t1)
	add	a4, a4, s11
	lhu	a4, 0(a4)
	lhu	a7, 190(a6)
	subw	a4, a4, a7
	sw	a4, 12(t1)
	ld	a4, 232(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 5
	ld	a6, 216(a6)
	add	a4, a4, a2
	add	a4, a4, a3
	add	a4, a5, a4
	srli	a5, a6, 48
	sh	a5, 6(a4)
	srli	a5, a6, 32
	sh	a5, 4(a4)
	srli	a5, a6, 16
	sh	a5, 2(a4)
	sh	a6, 0(a4)
	ld	a4, %lo(imgY_org)(t4)
	add	a4, a4, t3
	ld	a5, %lo(img)(n25)
	ld	a4, 8(a4)
	add	a6, a5, a1
	add	a7, a4, a0
	lhu	a7, 0(a7)
	lhu	t0, 216(a6)
	addiw	t1, t2, 888
	add	t1, a5, t1
	subw	a7, a7, t0
	sw	a7, 0(t1)
	add	a7, a4, s3
	lhu	a7, 0(a7)
	lhu	t0, 218(a6)
	subw	a7, a7, t0
	sw	a7, 4(t1)
	add	a7, a4, s1
	lhu	a7, 0(a7)
	lhu	t0, 220(a6)
	subw	a7, a7, t0
	sw	a7, 8(t1)
	add	a4, a4, s11
	lhu	a4, 0(a4)
	lhu	a7, 222(a6)
	subw	a4, a4, a7
	sw	a4, 12(t1)
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 5
	ld	a6, 248(a6)
	add	a4, a4, a2
	add	a4, a4, a3
	add	a4, a5, a4
	srli	a5, a6, 48
	sh	a5, 6(a4)
	srli	a5, a6, 32
	sh	a5, 4(a4)
	srli	a5, a6, 16
	sh	a5, 2(a4)
	sh	a6, 0(a4)
	ld	a4, %lo(imgY_org)(t4)
	add	a4, a4, t3
	ld	a5, %lo(img)(n25)
	ld	a4, 16(a4)
	add	a6, a5, a1
	add	a7, a4, a0
	lhu	a7, 0(a7)
	lhu	t0, 248(a6)
	addiw	t1, t2, 952
	add	t1, a5, t1
	subw	a7, a7, t0
	sw	a7, 0(t1)
	add	a7, a4, s3
	lhu	a7, 0(a7)
	lhu	t0, 250(a6)
	subw	a7, a7, t0
	sw	a7, 4(t1)
	add	a7, a4, s1
	lhu	a7, 0(a7)
	lhu	t0, 252(a6)
	subw	a7, a7, t0
	sw	a7, 8(t1)
	add	a4, a4, s11
	lhu	a4, 0(a4)
	lhu	a7, 254(a6)
	subw	a4, a4, a7
	sw	a4, 12(t1)
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 5
	ld	a6, 280(a6)
	add	a2, a4, a2
	add	a2, a2, a3
	add	a2, a5, a2
	srli	a3, a6, 48
	sh	a3, 6(a2)
	srli	a3, a6, 32
	sh	a3, 4(a2)
	srli	a3, a6, 16
	sh	a3, 2(a2)
	sh	a6, 0(a2)
	ld	a2, %lo(imgY_org)(t4)
	add	a2, a2, t3
	ld	a3, %lo(img)(n25)
	ld	a2, 24(a2)
	add	a1, a3, a1
	add	a0, a2, a0
	lhu	a0, 0(a0)
	lhu	a4, 280(a1)
	addiw	a5, t2, 1016
	add	a5, a3, a5
	subw	a0, a0, a4
	sw	a0, 0(a5)
	add	a0, a2, s3
	lhu	a0, 0(a0)
	lhu	a4, 282(a1)
	subw	a0, a0, a4
	sw	a0, 4(a5)
	add	a0, a2, s1
	lhu	a0, 0(a0)
	lhu	a4, 284(a1)
	subw	a0, a0, a4
	sw	a0, 8(a5)
	add	a2, a2, s11
	lhu	a0, 0(a2)
	lhu	a1, 286(a1)
	lui	a2, 8
	add	a2, a3, a2
	subw	a0, a0, a1
	sw	a0, 12(a5)
	lw	a0, 12(a3)
	ld	a1, -1192(a2)
	lui	a2, %hi(Mode_Decision_for_4x4IntraBlocks.cbp_bits)
	ld	a2, %lo(Mode_Decision_for_4x4IntraBlocks.cbp_bits)(a2)
	li	a3, 528
	mul	a0, a0, a3
	add	a0, a1, a0
	sd	a2, 408(a0)
	addi	a0, sp, 876
	ld	a1, 536(sp)                     # 8-byte Folded Reload
	ld	a2, 520(sp)                     # 8-byte Folded Reload
	mv	a3, t5
	fmv.d	fa0, fs0
	ld	a4, 544(sp)                     # 8-byte Folded Reload
	call	RDCost_for_4x4IntraBlocks
	flt.d	a0, fa0, fs2
	beqz	a0, .LBB6_95
# %bb.76:                               #   in Loop: Header=BB6_19 Depth=1
	fmv.d	fs1, fa0
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 3
	add	a0, a0, a1
	ld	a0, 1848(a0)
	ld	s7, 536(sp)                     # 8-byte Folded Reload
	slli	s7, s7, 3
	add	a0, a0, s7
	ld	a0, 0(a0)
	lui	a1, %hi(cofAC4x4)
	ld	a2, %lo(cofAC4x4)(a1)
	sd	a2, 456(sp)                     # 8-byte Folded Spill
	ld	s8, 520(sp)                     # 8-byte Folded Reload
	slli	s8, s8, 3
	add	a0, a0, s8
	ld	a1, 0(a0)
	ld	a0, 0(a2)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 3
	add	a0, a0, a1
	ld	a0, 1848(a0)
	add	a0, a0, s7
	ld	s7, 488(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a1, 0(a0)
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	lui	a0, %hi(img)
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	ld	a0, %lo(img)(a0)
	lui	a2, 2
	add	a1, a1, a2
	ld	a2, -1768(a1)
	lw	a3, 24(a0)
	add	a1, a2, s7
	li	a4, 3
	bne	a3, a4, .LBB6_91
# %bb.77:                               #   in Loop: Header=BB6_19 Depth=1
	lui	a3, %hi(si_frame_indicator)
	lw	a3, %lo(si_frame_indicator)(a3)
	bnez	a3, .LBB6_91
# %bb.78:                               #   in Loop: Header=BB6_19 Depth=1
	lui	a3, %hi(sp2_frame_indicator)
	lw	a3, %lo(sp2_frame_indicator)(a3)
	bnez	a3, .LBB6_91
# %bb.79:                               #   in Loop: Header=BB6_19 Depth=1
	lui	a3, %hi(lrec)
	ld	a3, %lo(lrec)(a3)
	add	a4, a3, s7
	ld	a4, 0(a4)
	ld	a5, 496(sp)                     # 8-byte Folded Reload
	slli	a5, a5, 2
	add	a4, a4, a5
	lwu	a6, 4(a4)
	lwu	a7, 0(a4)
	slli	a6, a6, 32
	or	a6, a6, a7
	lwu	a7, 12(a4)
	ld	t1, 408(sp)                     # 8-byte Folded Reload
	add	t0, a2, t1
	ld	t0, 0(t0)
	sd	a6, 688(sp)
	lwu	a4, 8(a4)
	slli	a7, a7, 32
	add	t0, t0, s2
	lhu	a6, 2(t0)
	or	a4, a7, a4
	sd	a4, 696(sp)
	lhu	a4, 0(t0)
	slli	a6, a6, 16
	lhu	a7, 4(t0)
	lhu	t0, 6(t0)
	add	t1, a3, t1
	ld	t1, 0(t1)
	or	a4, a6, a4
	slli	a7, a7, 32
	slli	t0, t0, 48
	add	t1, t1, a5
	lw	a6, 0(t1)
	or	a7, t0, a7
	or	t4, a7, a4
	lw	a4, 4(t1)
	addi	t3, sp, 704
	sw	a6, 0(t3)
	ld	t2, 416(sp)                     # 8-byte Folded Reload
	add	a6, a2, t2
	ld	a6, 0(a6)
	sw	a4, 4(t3)
	lw	a4, 8(t1)
	lw	a7, 12(t1)
	add	a6, a6, s2
	lhu	t0, 2(a6)
	sw	a4, 8(t3)
	sw	a7, 12(t3)
	lhu	a4, 0(a6)
	slli	t0, t0, 16
	lhu	a7, 4(a6)
	add	t1, a3, t2
	ld	t1, 0(t1)
	or	a4, t0, a4
	lhu	a6, 6(a6)
	slli	a7, a7, 32
	add	t1, t1, a5
	lw	t0, 12(t1)
	slli	a6, a6, 48
	or	a6, a6, a7
	or	t3, a6, a4
	addi	t2, sp, 720
	sw	t0, 12(t2)
	lw	a4, 8(t1)
	lw	a6, 4(t1)
	ld	t0, 424(sp)                     # 8-byte Folded Reload
	add	a2, a2, t0
	ld	a2, 0(a2)
	sw	a4, 8(t2)
	sw	a6, 4(t2)
	lw	a4, 0(t1)
	add	a2, a2, s2
	lhu	a6, 2(a2)
	lhu	a7, 0(a2)
	sw	a4, 0(t2)
	lhu	a4, 4(a2)
	slli	a6, a6, 16
	or	a6, a6, a7
	lhu	a2, 6(a2)
	slli	a4, a4, 32
	add	a3, a3, t0
	ld	a3, 0(a3)
	slli	a2, a2, 48
	or	a2, a2, a4
	or	t1, a2, a6
	add	a3, a3, a5
	lw	a2, 12(a3)
	lw	a4, 8(a3)
	lw	a5, 4(a3)
	lw	a3, 0(a3)
	addi	a6, sp, 736
	sw	a2, 12(a6)
	sw	a4, 8(a6)
	sw	a5, 4(a6)
	sw	a3, 0(a6)
	j	.LBB6_92
.LBB6_80:                               #   in Loop: Header=BB6_19 Depth=1
	fmv.d	fa5, fs2
	j	.LBB6_90
.LBB6_81:                               #   in Loop: Header=BB6_19 Depth=1
	fmv.d	fa5, fs2
.LBB6_82:                               #   in Loop: Header=BB6_19 Depth=1
	lui	n20, %hi(resTrans_R)
	addi	n20, n20, %lo(resTrans_R)
	lui	n21, %hi(resTrans_B)
	addi	n21, n21, %lo(resTrans_B)
	lui	n22, %hi(resTrans_G)
	addi	n22, n22, %lo(resTrans_G)
	mv	n24, s8
	li	s8, 2
	j	.LBB6_96
.LBB6_83:                               #   in Loop: Header=BB6_19 Depth=1
	ld	a6, 8(a5)
	add	a6, a6, s2
	lhu	a7, 2(a6)
	lhu	t0, 0(a6)
	slli	a7, a7, 16
	lhu	t2, 4(a6)
	lhu	a6, 6(a6)
	or	a7, a7, t0
	ld	t0, 16(a5)
	slli	t2, t2, 32
	slli	a6, a6, 48
	or	a6, a6, t2
	add	t0, t0, s2
	lhu	t2, 2(t0)
	or	a6, a6, a7
	sd	a6, 144(sp)                     # 8-byte Folded Spill
	lhu	a6, 0(t0)
	lhu	a7, 4(t0)
	slli	t2, t2, 16
	lhu	t0, 6(t0)
	or	a6, t2, a6
	slli	a7, a7, 32
	ld	t2, 24(a5)
	slli	t0, t0, 48
	or	a7, t0, a7
	or	a6, a7, a6
	sd	a6, 136(sp)                     # 8-byte Folded Spill
	add	t2, t2, s2
	lhu	a6, 2(t2)
	lhu	a7, 0(t2)
	lhu	t0, 4(t2)
	lhu	t2, 6(t2)
	slli	a6, a6, 16
	or	a6, a6, a7
	slli	t0, t0, 32
	slli	t2, t2, 48
	or	a7, t2, t0
	or	a6, a7, a6
	sd	a6, 24(sp)                      # 8-byte Folded Spill
.LBB6_84:                               #   in Loop: Header=BB6_19 Depth=1
	ld	a5, 0(a5)
	add	t0, a5, s2
	lhu	a5, 0(t0)
	lhu	a6, 2(t0)
	ld	a7, 336(sp)                     # 8-byte Folded Reload
	lw	t2, 64(a7)
	ld	a7, 288(sp)                     # 8-byte Folded Reload
	lw	t3, 64(a7)
	lhu	a7, 4(t0)
	lhu	t0, 6(t0)
	ld	t4, 344(sp)                     # 8-byte Folded Reload
	sw	t2, 64(t4)
	ld	t2, 328(sp)                     # 8-byte Folded Reload
	sw	t3, 64(t2)
	ld	t1, 8(t1)
	add	t1, t1, s7
	ld	t2, 0(t1)
	lw	n16, 24(a0)
	add	t2, t2, s2
	lhu	t3, 0(t2)
	ld	t4, 8(t1)
	lhu	n2, 2(t2)
	lhu	t6, 4(t2)
	lhu	n1, 6(t2)
	add	t4, t4, s2
	lhu	t5, 0(t4)
	ld	t2, 16(t1)
	lhu	n7, 2(t4)
	lhu	n4, 4(t4)
	lhu	n5, 6(t4)
	add	t2, t2, s2
	lhu	n3, 0(t2)
	lhu	n6, 2(t2)
	ld	t1, 24(t1)
	lhu	n8, 4(t2)
	ld	n14, 0(a4)
	lhu	n10, 6(t2)
	add	t1, t1, s2
	lhu	n9, 0(t1)
	add	n15, n14, s7
	ld	a4, 0(n15)
	lhu	n13, 2(t1)
	lhu	n11, 4(t1)
	lhu	n12, 6(t1)
	add	a4, a4, s2
	lhu	t2, 0(a4)
	lhu	t4, 2(a4)
	lhu	t1, 4(a4)
	lhu	a4, 6(a4)
	li	n17, 3
	bne	n16, n17, .LBB6_88
# %bb.85:                               #   in Loop: Header=BB6_19 Depth=1
	bnez	a3, .LBB6_88
# %bb.86:                               #   in Loop: Header=BB6_19 Depth=1
	bnez	a2, .LBB6_88
# %bb.87:                               #   in Loop: Header=BB6_19 Depth=1
	add	a2, a1, s7
	ld	a2, 0(a2)
	ld	a3, 496(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 2
	add	a2, a2, a3
	lwu	n15, 4(a2)
	lwu	n16, 0(a2)
	slli	n15, n15, 32
	or	n15, n15, n16
	lwu	n16, 12(a2)
	ld	n18, 408(sp)                    # 8-byte Folded Reload
	add	n17, n14, n18
	ld	n17, 0(n17)
	sd	n15, 688(sp)
	lwu	a2, 8(a2)
	slli	n16, n16, 32
	add	n17, n17, s2
	lhu	n15, 2(n17)
	or	a2, n16, a2
	sd	a2, 696(sp)
	lhu	a2, 0(n17)
	slli	n15, n15, 16
	lhu	n16, 4(n17)
	lhu	n17, 6(n17)
	add	n18, a1, n18
	ld	n18, 0(n18)
	or	a2, n15, a2
	slli	n16, n16, 32
	slli	n17, n17, 48
	add	n18, n18, a3
	lw	n15, 0(n18)
	or	n16, n17, n16
	or	a2, n16, a2
	sd	a2, 208(sp)                     # 8-byte Folded Spill
	lw	a2, 4(n18)
	addi	n23, sp, 704
	sw	n15, 0(n23)
	ld	n19, 416(sp)                    # 8-byte Folded Reload
	add	n15, n14, n19
	ld	n15, 0(n15)
	sw	a2, 4(n23)
	lw	a2, 8(n18)
	lw	n16, 12(n18)
	add	n15, n15, s2
	lhu	n17, 2(n15)
	sw	a2, 8(n23)
	sw	n16, 12(n23)
	lhu	a2, 0(n15)
	slli	n17, n17, 16
	lhu	n16, 4(n15)
	add	n18, a1, n19
	ld	n18, 0(n18)
	or	a2, n17, a2
	lhu	n15, 6(n15)
	slli	n16, n16, 32
	add	n18, n18, a3
	lw	n17, 12(n18)
	slli	n15, n15, 48
	or	n15, n15, n16
	or	a2, n15, a2
	sd	a2, 200(sp)                     # 8-byte Folded Spill
	addi	n19, sp, 720
	sw	n17, 12(n19)
	lw	a2, 8(n18)
	lw	n15, 4(n18)
	ld	n17, 424(sp)                    # 8-byte Folded Reload
	add	n14, n14, n17
	ld	n14, 0(n14)
	sw	a2, 8(n19)
	sw	n15, 4(n19)
	lw	a2, 0(n18)
	add	n14, n14, s2
	lhu	n15, 2(n14)
	lhu	n16, 0(n14)
	sw	a2, 0(n19)
	lhu	a2, 4(n14)
	slli	n15, n15, 16
	or	n15, n15, n16
	lhu	n14, 6(n14)
	slli	a2, a2, 32
	add	a1, a1, n17
	ld	a1, 0(a1)
	slli	n14, n14, 48
	or	a2, n14, a2
	or	a2, a2, n15
	sd	a2, 192(sp)                     # 8-byte Folded Spill
	add	a1, a1, a3
	lw	a2, 12(a1)
	lw	a3, 8(a1)
	lw	n14, 4(a1)
	lw	a1, 0(a1)
	addi	n15, sp, 736
	sw	a2, 12(n15)
	sw	a3, 8(n15)
	sw	n14, 4(n15)
	sw	a1, 0(n15)
	j	.LBB6_89
.LBB6_88:                               #   in Loop: Header=BB6_19 Depth=1
	ld	a1, 8(n15)
	add	a1, a1, s2
	lhu	a2, 2(a1)
	lhu	a3, 0(a1)
	slli	a2, a2, 16
	lhu	n14, 4(a1)
	lhu	a1, 6(a1)
	or	a2, a2, a3
	ld	a3, 16(n15)
	slli	n14, n14, 32
	slli	a1, a1, 48
	or	a1, a1, n14
	add	a3, a3, s2
	lhu	n14, 2(a3)
	or	a1, a1, a2
	sd	a1, 208(sp)                     # 8-byte Folded Spill
	lhu	a1, 0(a3)
	lhu	a2, 4(a3)
	slli	n14, n14, 16
	lhu	a3, 6(a3)
	or	a1, n14, a1
	slli	a2, a2, 32
	ld	n14, 24(n15)
	slli	a3, a3, 48
	or	a2, a3, a2
	or	a1, a2, a1
	sd	a1, 200(sp)                     # 8-byte Folded Spill
	add	n14, n14, s2
	lhu	a1, 2(n14)
	lhu	a2, 0(n14)
	lhu	a3, 4(n14)
	lhu	n14, 6(n14)
	slli	a1, a1, 16
	or	a1, a1, a2
	slli	a3, a3, 32
	slli	n14, n14, 48
	or	a2, n14, a3
	or	a1, a2, a1
	sd	a1, 192(sp)                     # 8-byte Folded Spill
.LBB6_89:                               #   in Loop: Header=BB6_19 Depth=1
	slli	a6, a6, 16
	or	a1, a6, a5
	slli	a7, a7, 32
	slli	t0, t0, 48
	or	a2, t0, a7
	or	a1, a2, a1
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	slli	n2, n2, 16
	or	a1, n2, t3
	slli	t6, t6, 32
	slli	n1, n1, 48
	or	a2, n1, t6
	or	a1, a2, a1
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	slli	n7, n7, 16
	or	a1, n7, t5
	slli	n4, n4, 32
	slli	n5, n5, 48
	or	a2, n5, n4
	or	a1, a2, a1
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	slli	n6, n6, 16
	or	a1, n6, n3
	slli	n8, n8, 32
	slli	n10, n10, 48
	or	a2, n10, n8
	or	a1, a2, a1
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	slli	n13, n13, 16
	or	a1, n13, n9
	slli	n11, n11, 32
	slli	n12, n12, 48
	lw	a2, 12(a0)
	ld	a0, 128(a0)
	or	a3, n12, n11
	or	a1, a3, a1
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	slli	t4, t4, 16
	or	a1, t4, t2
	ld	a2, 392(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	slli	t1, t1, 32
	lw	a2, 876(sp)
	sd	a2, 312(sp)                     # 8-byte Folded Spill
	ld	a2, 384(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	sd	a0, 376(sp)                     # 8-byte Folded Spill
	slli	a4, a4, 48
	or	a0, a4, t1
	or	a0, a0, a1
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	sd	s10, 456(sp)                    # 8-byte Folded Spill
.LBB6_90:                               #   in Loop: Header=BB6_19 Depth=1
	lui	t2, %hi(input)
	li	t3, 1
	li	t5, 9
	j	.LBB6_18
.LBB6_91:                               #   in Loop: Header=BB6_19 Depth=1
	ld	a2, 8(a1)
	add	a2, a2, s2
	lhu	a3, 2(a2)
	lhu	a4, 0(a2)
	slli	a3, a3, 16
	lhu	a5, 4(a2)
	lhu	a2, 6(a2)
	or	a3, a3, a4
	ld	a4, 16(a1)
	slli	a5, a5, 32
	slli	a2, a2, 48
	or	a2, a2, a5
	add	a4, a4, s2
	lhu	a5, 2(a4)
	or	t4, a2, a3
	lhu	a2, 0(a4)
	lhu	a3, 4(a4)
	slli	a5, a5, 16
	lhu	a4, 6(a4)
	or	a2, a5, a2
	slli	a3, a3, 32
	ld	a5, 24(a1)
	slli	a4, a4, 48
	or	a3, a4, a3
	or	t3, a3, a2
	add	a5, a5, s2
	lhu	a2, 2(a5)
	lhu	a3, 0(a5)
	lhu	a4, 4(a5)
	lhu	a5, 6(a5)
	slli	a2, a2, 16
	or	a2, a2, a3
	slli	a4, a4, 32
	slli	a5, a5, 48
	or	a4, a5, a4
	or	t1, a4, a2
.LBB6_92:                               #   in Loop: Header=BB6_19 Depth=1
	ld	a7, 392(sp)                     # 8-byte Folded Reload
	ld	t0, 384(sp)                     # 8-byte Folded Reload
	sd	t1, 192(sp)                     # 8-byte Folded Spill
	sd	t3, 200(sp)                     # 8-byte Folded Spill
	sd	t4, 208(sp)                     # 8-byte Folded Spill
	ld	a1, 0(a1)
	lui	a2, 22
	addiw	a2, a2, 100
	add	a2, a0, a2
	add	a1, a1, s2
	lhu	a3, 2(a1)
	lhu	a4, 0(a1)
	lw	a5, 12(a0)
	ld	a6, 128(a0)
	slli	a3, a3, 16
	or	a3, a3, a4
	slli	a4, a5, 3
	add	a4, a6, a4
	ld	a4, 0(a4)
	lhu	a6, 4(a1)
	lhu	a1, 6(a1)
	slli	a7, a7, 3
	add	a4, a4, a7
	lui	a7, 8
	addiw	a7, a7, -1192
	add	a7, a0, a7
	slli	a6, a6, 32
	slli	a1, a1, 48
	ld	a4, 0(a4)
	or	a1, a1, a6
	slli	a6, t0, 2
	ld	a7, 0(a7)
	add	a4, a4, a6
	lw	a6, 876(sp)
	sd	a6, 312(sp)                     # 8-byte Folded Spill
	li	a6, 528
	mul	a5, a5, a6
	add	a5, a7, a5
	ld	a5, 408(a5)
	lw	a2, 0(a2)
	lw	a4, 0(a4)
	sd	a4, 376(sp)                     # 8-byte Folded Spill
	or	a1, a1, a3
	sd	a1, 184(sp)                     # 8-byte Folded Spill
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	srl	a1, a5, a1
	andi	a1, a1, 1
	sd	a1, 216(sp)                     # 8-byte Folded Spill
	li	s8, 2
	beqz	a2, .LBB6_94
# %bb.93:                               #   in Loop: Header=BB6_19 Depth=1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a5, 96(sp)                      # 8-byte Folded Reload
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	add	a1, a1, a5
	add	a1, a0, a1
	lw	a2, 12(a1)
	lw	a3, 8(a1)
	lw	a4, 4(a1)
	lw	a1, 0(a1)
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	sw	a2, 12(a6)
	sw	a3, 8(a6)
	sw	a4, 4(a6)
	sw	a1, 0(a6)
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	add	a1, a1, a5
	add	a1, a0, a1
	lw	a2, 0(a1)
	lw	a3, 4(a1)
	lw	a4, 8(a1)
	lw	a1, 12(a1)
	ld	a6, 56(sp)                      # 8-byte Folded Reload
	sw	a2, 0(a6)
	sw	a3, 4(a6)
	sw	a4, 8(a6)
	sw	a1, 12(a6)
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	add	a1, a1, a5
	add	a1, a0, a1
	lw	a2, 0(a1)
	lw	a3, 4(a1)
	lw	a4, 8(a1)
	lw	a1, 12(a1)
	ld	a6, 72(sp)                      # 8-byte Folded Reload
	sw	a2, 0(a6)
	sw	a3, 4(a6)
	sw	a4, 8(a6)
	sw	a1, 12(a6)
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	add	a1, a1, a5
	add	a0, a0, a1
	lw	a1, 12(a0)
	lw	a2, 8(a0)
	lw	a3, 4(a0)
	lw	a0, 0(a0)
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	sw	a1, 12(a4)
	sw	a2, 8(a4)
	sw	a3, 4(a4)
	sw	a0, 0(a4)
.LBB6_94:                               #   in Loop: Header=BB6_19 Depth=1
	fmv.d	fs2, fs1
	sd	s10, 456(sp)                    # 8-byte Folded Spill
.LBB6_95:                               #   in Loop: Header=BB6_19 Depth=1
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	call	reset_coding_state
	fmv.d	fa5, fs2
	lui	n20, %hi(resTrans_R)
	addi	n20, n20, %lo(resTrans_R)
	lui	n21, %hi(resTrans_B)
	addi	n21, n21, %lo(resTrans_B)
	lui	n22, %hi(resTrans_G)
	addi	n22, n22, %lo(resTrans_G)
	ld	n24, 512(sp)                    # 8-byte Folded Reload
.LBB6_96:                               #   in Loop: Header=BB6_19 Depth=1
	lui	t2, %hi(input)
	li	t3, 1
	li	t5, 9
	lui	n25, %hi(img)
	j	.LBB6_18
.LBB6_97:
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	lw	a1, 12(a0)
	ld	a2, 128(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, 392(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	ld	a2, 384(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 2
	add	a1, a1, a2
	ld	a2, 376(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a1)
	lui	a1, %hi(Mode_Decision_for_4x4IntraBlocks.cbp_bits)
	ld	a2, %lo(Mode_Decision_for_4x4IntraBlocks.cbp_bits)(a1)
	li	a3, 1
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	sllw	a3, a3, a4
	not	a3, a3
	and	a2, a2, a3
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	sllw	a3, a3, a4
	ld	a0, 104(a0)
	or	a2, a2, a3
	sd	a2, %lo(Mode_Decision_for_4x4IntraBlocks.cbp_bits)(a1)
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	ld	a2, 456(sp)                     # 8-byte Folded Reload
	sext.w	s0, a2
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	sb	a2, 0(a0)
	ld	a1, 544(sp)                     # 8-byte Folded Reload
	xor	a0, s0, a1
	snez	a0, a0
	slt	a1, s0, a1
	xori	a1, a1, 1
	subw	a1, a2, a1
	ld	a2, %lo(img)(s2)
	addi	a0, a0, -1
	or	a0, a0, a1
	lui	a1, 8
	add	a1, a2, a1
	ld	a1, -1192(a1)
	lw	a2, 12(a2)
	ld	a5, 536(sp)                     # 8-byte Folded Reload
	slli	a3, a5, 2
	ld	s5, 520(sp)                     # 8-byte Folded Reload
	addw	a3, a3, s5
	li	a4, 528
	mul	a2, a2, a4
	add	a1, a1, a2
	add	a1, a1, a3
	sb	a0, 332(a1)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	beqz	a0, .LBB6_151
# %bb.98:
	ld	a0, %lo(img)(s2)
	lui	s1, 3
	add	a0, a0, s1
	ld	a0, 1848(a0)
	slli	s3, a5, 3
	add	a0, a0, s3
	ld	a0, 0(a0)
	lui	a1, %hi(cofAC4x4)
	slli	s4, s5, 3
	add	a0, a0, s4
	ld	a0, 0(a0)
	ld	s5, %lo(cofAC4x4)(a1)
	ld	a0, 0(a0)
	ld	a1, 0(s5)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s2)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	ld	a1, 8(s5)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s2)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 460(a1)
	beqz	a1, .LBB6_100
# %bb.99:
	addiw	a1, s1, 1848
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a0, a0, s3
	ld	a0, 32(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	lui	s2, %hi(cofAC4x4_chroma)
	addi	s2, s2, %lo(cofAC4x4_chroma)
	li	a2, 72
	mv	a1, s2
	call	memcpy
	lui	s5, %hi(img)
	ld	a0, %lo(img)(s5)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 64(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	addi	a1, s2, 144
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s5)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 32(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	addi	a1, s2, 72
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s5)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 64(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	addi	a1, s2, 216
	li	a2, 72
	call	memcpy
.LBB6_100:
	lui	a3, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a3)
	lui	a5, 2
	add	a0, a0, a5
	ld	a0, -1768(a0)
	add	a0, a0, s7
	ld	a1, 0(a0)
	ld	t5, 496(sp)                     # 8-byte Folded Reload
	slli	a0, t5, 1
	add	a1, a1, a0
	ld	a4, 184(sp)                     # 8-byte Folded Reload
	srli	a2, a4, 48
	sh	a2, 6(a1)
	srli	a2, a4, 32
	sh	a2, 4(a1)
	srli	a2, a4, 16
	sh	a2, 2(a1)
	sh	a4, 0(a1)
	lui	a2, %hi(img)
	ld	a4, %lo(img)(a2)
	ld	a1, 464(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 1
	ld	a6, 256(sp)                     # 8-byte Folded Reload
	add	a6, a6, a1
	slli	s0, s0, 9
	add	a7, a4, s0
	ld	a7, 184(a7)
	addiw	t0, s1, 312
	add	a6, a6, t0
	add	a4, a4, a6
	srli	a6, a7, 48
	sh	a6, 6(a4)
	srli	a6, a7, 32
	sh	a6, 4(a4)
	srli	a6, a7, 16
	sh	a6, 2(a4)
	sh	a7, 0(a4)
	ld	a4, %lo(img)(a2)
	lw	t0, 24(a4)
	lui	a6, %hi(si_frame_indicator)
	li	a7, 3
	lui	a4, %hi(sp2_frame_indicator)
	ld	s11, 312(sp)                    # 8-byte Folded Reload
	bne	t0, a7, .LBB6_104
# %bb.101:
	lw	t0, %lo(si_frame_indicator)(a6)
	bnez	t0, .LBB6_104
# %bb.102:
	lw	t0, %lo(sp2_frame_indicator)(a4)
	bnez	t0, .LBB6_104
# %bb.103:
	lui	t0, %hi(lrec)
	ld	t0, %lo(lrec)(t0)
	add	t0, t0, s7
	ld	t0, 0(t0)
	slli	t1, t5, 2
	add	t0, t0, t1
	lw	t1, 700(sp)
	lw	t2, 696(sp)
	lw	t3, 692(sp)
	lw	t4, 688(sp)
	sw	t1, 12(t0)
	sw	t2, 8(t0)
	sw	t3, 4(t0)
	sw	t4, 0(t0)
.LBB6_104:
	ld	a3, %lo(enc_picture)(a3)
	add	a3, a3, a5
	ld	a3, -1768(a3)
	ld	a5, 408(sp)                     # 8-byte Folded Reload
	add	a3, a3, a5
	ld	a3, 0(a3)
	add	a3, a3, a0
	ld	t0, 208(sp)                     # 8-byte Folded Reload
	srli	a5, t0, 48
	sh	a5, 6(a3)
	srli	a5, t0, 32
	sh	a5, 4(a3)
	srli	a5, t0, 16
	sh	a5, 2(a3)
	sh	t0, 0(a3)
	ld	a5, %lo(img)(a2)
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 5
	add	t0, a3, a1
	lui	a3, 3
	add	t1, a5, s0
	ld	t1, 216(t1)
	addiw	a3, a3, 312
	add	t0, t0, a3
	add	a5, a5, t0
	srli	t0, t1, 48
	sh	t0, 6(a5)
	srli	t0, t1, 32
	sh	t0, 4(a5)
	srli	t0, t1, 16
	sh	t0, 2(a5)
	sh	t1, 0(a5)
	ld	a2, %lo(img)(a2)
	lw	a2, 24(a2)
	ld	t6, 120(sp)                     # 8-byte Folded Reload
	ld	n1, 112(sp)                     # 8-byte Folded Reload
	bne	a2, a7, .LBB6_108
# %bb.105:
	lw	a2, %lo(si_frame_indicator)(a6)
	bnez	a2, .LBB6_108
# %bb.106:
	lw	a2, %lo(sp2_frame_indicator)(a4)
	bnez	a2, .LBB6_108
# %bb.107:
	lui	a2, %hi(lrec)
	ld	a2, %lo(lrec)(a2)
	ld	a4, 408(sp)                     # 8-byte Folded Reload
	add	a2, a2, a4
	ld	a2, 0(a2)
	slli	a4, t5, 2
	add	a2, a2, a4
	lw	a4, 716(sp)
	lw	a5, 712(sp)
	lw	a6, 708(sp)
	lw	a7, 704(sp)
	sw	a4, 12(a2)
	sw	a5, 8(a2)
	sw	a6, 4(a2)
	sw	a7, 0(a2)
.LBB6_108:
	lui	a5, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a5)
	lui	a6, 2
	add	a2, a2, a6
	ld	a2, -1768(a2)
	ld	a4, 416(sp)                     # 8-byte Folded Reload
	add	a2, a2, a4
	ld	a2, 0(a2)
	add	a2, a2, a0
	ld	a7, 200(sp)                     # 8-byte Folded Reload
	srli	a4, a7, 48
	sh	a4, 6(a2)
	srli	a4, a7, 32
	sh	a4, 4(a2)
	srli	a4, a7, 16
	sh	a4, 2(a2)
	sh	a7, 0(a2)
	lui	a2, %hi(img)
	ld	a4, %lo(img)(a2)
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	slli	a7, a7, 5
	add	t0, a4, s0
	ld	t0, 248(t0)
	add	a7, a7, a1
	add	a3, a7, a3
	add	a3, a4, a3
	srli	a4, t0, 48
	sh	a4, 6(a3)
	srli	a4, t0, 32
	sh	a4, 4(a3)
	srli	a4, t0, 16
	sh	a4, 2(a3)
	sh	t0, 0(a3)
	ld	a3, %lo(img)(a2)
	lw	t0, 24(a3)
	lui	a3, %hi(si_frame_indicator)
	li	a7, 3
	lui	a4, %hi(sp2_frame_indicator)
	bne	t0, a7, .LBB6_112
# %bb.109:
	lw	t0, %lo(si_frame_indicator)(a3)
	bnez	t0, .LBB6_112
# %bb.110:
	lw	t0, %lo(sp2_frame_indicator)(a4)
	bnez	t0, .LBB6_112
# %bb.111:
	lui	t0, %hi(lrec)
	ld	t0, %lo(lrec)(t0)
	ld	t1, 416(sp)                     # 8-byte Folded Reload
	add	t0, t0, t1
	ld	t0, 0(t0)
	slli	t1, t5, 2
	add	t0, t0, t1
	lw	t1, 732(sp)
	lw	t2, 728(sp)
	lw	t3, 724(sp)
	lw	t4, 720(sp)
	sw	t1, 12(t0)
	sw	t2, 8(t0)
	sw	t3, 4(t0)
	sw	t4, 0(t0)
.LBB6_112:
	ld	a5, %lo(enc_picture)(a5)
	add	a5, a5, a6
	ld	a5, -1768(a5)
	ld	a6, 424(sp)                     # 8-byte Folded Reload
	add	a5, a5, a6
	ld	a5, 0(a5)
	add	a5, a5, a0
	ld	t0, 192(sp)                     # 8-byte Folded Reload
	srli	a6, t0, 48
	sh	a6, 6(a5)
	srli	a6, t0, 32
	sh	a6, 4(a5)
	srli	a6, t0, 16
	sh	a6, 2(a5)
	sh	t0, 0(a5)
	ld	a5, %lo(img)(a2)
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	slli	a6, a6, 5
	add	a1, a6, a1
	lui	a6, 3
	add	s0, a5, s0
	ld	t0, 280(s0)
	addiw	a6, a6, 312
	add	a1, a1, a6
	add	a1, a5, a1
	srli	a5, t0, 48
	sh	a5, 6(a1)
	srli	a5, t0, 32
	sh	a5, 4(a1)
	srli	a5, t0, 16
	sh	a5, 2(a1)
	sh	t0, 0(a1)
	ld	a2, %lo(img)(a2)
	lw	a1, 24(a2)
	ld	t2, 144(sp)                     # 8-byte Folded Reload
	ld	t3, 136(sp)                     # 8-byte Folded Reload
	ld	t4, 128(sp)                     # 8-byte Folded Reload
	bne	a1, a7, .LBB6_116
# %bb.113:
	lw	a1, %lo(si_frame_indicator)(a3)
	bnez	a1, .LBB6_116
# %bb.114:
	lw	a1, %lo(sp2_frame_indicator)(a4)
	bnez	a1, .LBB6_116
# %bb.115:
	lui	a1, %hi(lrec)
	ld	a1, %lo(lrec)(a1)
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a1, 0(a1)
	slli	a2, t5, 2
	add	a1, a1, a2
	lw	a2, 748(sp)
	lw	a3, 744(sp)
	lw	a4, 740(sp)
	lw	a5, 736(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
.LBB6_116:
	lui	a1, 22
	add	a3, a2, a1
	lw	a3, 100(a3)
	beqz	a3, .LBB6_118
# %bb.117:
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	add	a2, a2, a3
	lui	a3, 4
	addiw	a3, a3, -1208
	ld	t1, 96(sp)                      # 8-byte Folded Reload
	add	a4, t1, a3
	add	a2, a2, a4
	ld	a7, 40(sp)                      # 8-byte Folded Reload
	lw	a4, 12(a7)
	lw	a5, 8(a7)
	lw	a6, 4(a7)
	lw	a7, 0(a7)
	sw	a4, 12(a2)
	sw	a5, 8(a2)
	sw	a6, 4(a2)
	sw	a7, 0(a2)
	lui	a2, %hi(img)
	ld	a4, %lo(img)(a2)
	ld	a5, 48(sp)                      # 8-byte Folded Reload
	add	a5, a5, t1
	add	a5, a5, a3
	add	a4, a4, a5
	ld	t0, 56(sp)                      # 8-byte Folded Reload
	lw	a5, 0(t0)
	lw	a6, 4(t0)
	lw	a7, 8(t0)
	lw	t0, 12(t0)
	sw	a5, 0(a4)
	sw	a6, 4(a4)
	sw	a7, 8(a4)
	sw	t0, 12(a4)
	ld	a4, %lo(img)(a2)
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	add	a5, a5, t1
	add	a5, a5, a3
	add	a4, a4, a5
	ld	t0, 72(sp)                      # 8-byte Folded Reload
	lw	a5, 12(t0)
	lw	a6, 8(t0)
	lw	a7, 4(t0)
	lw	t0, 0(t0)
	sw	a5, 12(a4)
	sw	a6, 8(a4)
	sw	a7, 4(a4)
	sw	t0, 0(a4)
	ld	a4, %lo(img)(a2)
	ld	a5, 80(sp)                      # 8-byte Folded Reload
	add	a5, a5, t1
	add	a3, a5, a3
	add	a3, a4, a3
	ld	a7, 88(sp)                      # 8-byte Folded Reload
	lw	a4, 0(a7)
	lw	a5, 4(a7)
	lw	a6, 8(a7)
	lw	a7, 12(a7)
	sw	a4, 0(a3)
	sw	a5, 4(a3)
	sw	a6, 8(a3)
	sw	a7, 12(a3)
	ld	a2, %lo(img)(a2)
.LBB6_118:
	ld	a5, 104(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	lw	a1, 460(a1)
	bnez	a1, .LBB6_119
	j	.LBB6_181
.LBB6_119:
	lui	a2, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a2)
	lui	a4, 2
	add	a1, a1, a4
	ld	a1, -1728(a1)
	ld	a1, 0(a1)
	add	a1, a1, s7
	ld	a1, 0(a1)
	add	a1, a1, a0
	srli	a3, a5, 48
	sh	a3, 6(a1)
	srli	a3, a5, 32
	sh	a3, 4(a1)
	srli	a3, a5, 16
	sh	a3, 2(a1)
	sh	a5, 0(a1)
	lui	a5, %hi(img)
	ld	a1, %lo(img)(a5)
	lw	a7, 24(a1)
	lui	a3, %hi(si_frame_indicator)
	li	a6, 3
	lui	a1, %hi(sp2_frame_indicator)
	bne	a7, a6, .LBB6_123
# %bb.120:
	lw	a7, %lo(si_frame_indicator)(a3)
	bnez	a7, .LBB6_123
# %bb.121:
	lw	a7, %lo(sp2_frame_indicator)(a1)
	bnez	a7, .LBB6_123
# %bb.122:
	lui	a7, %hi(lrec_uv)
	ld	a7, %lo(lrec_uv)(a7)
	ld	a7, 0(a7)
	add	a7, a7, s7
	ld	a7, 0(a7)
	lw	t0, 572(sp)
	slli	t1, t5, 2
	add	a7, a7, t1
	sw	t0, 12(a7)
	lw	t0, 568(sp)
	sw	t0, 8(a7)
	lw	t0, 564(sp)
	sw	t0, 4(a7)
	lw	t0, 560(sp)
	sw	t0, 0(a7)
.LBB6_123:
	ld	a2, %lo(enc_picture)(a2)
	add	a2, a2, a4
	ld	a2, -1728(a2)
	ld	a2, 0(a2)
	ld	a4, 408(sp)                     # 8-byte Folded Reload
	add	a2, a2, a4
	ld	a2, 0(a2)
	add	a2, a2, a0
	srli	a4, t2, 48
	sh	a4, 6(a2)
	srli	a4, t2, 32
	sh	a4, 4(a2)
	srli	a4, t2, 16
	sh	a4, 2(a2)
	sh	t2, 0(a2)
	ld	a2, %lo(img)(a5)
	lw	a2, 24(a2)
	bne	a2, a6, .LBB6_127
# %bb.124:
	lw	a2, %lo(si_frame_indicator)(a3)
	bnez	a2, .LBB6_127
# %bb.125:
	lw	a1, %lo(sp2_frame_indicator)(a1)
	bnez	a1, .LBB6_127
# %bb.126:
	lui	a1, %hi(lrec_uv)
	ld	a1, %lo(lrec_uv)(a1)
	ld	a1, 0(a1)
	ld	a2, 408(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a1, 0(a1)
	lw	a2, 588(sp)
	slli	a3, t5, 2
	add	a1, a1, a3
	sw	a2, 12(a1)
	lw	a2, 584(sp)
	sw	a2, 8(a1)
	lw	a2, 580(sp)
	sw	a2, 4(a1)
	lw	a2, 576(sp)
	sw	a2, 0(a1)
.LBB6_127:
	lui	a2, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a2)
	lui	a4, 2
	add	a1, a1, a4
	ld	a1, -1728(a1)
	ld	a1, 0(a1)
	ld	a3, 416(sp)                     # 8-byte Folded Reload
	add	a1, a1, a3
	ld	a1, 0(a1)
	add	a1, a1, a0
	srli	a3, t3, 48
	sh	a3, 6(a1)
	srli	a3, t3, 32
	sh	a3, 4(a1)
	srli	a3, t3, 16
	sh	a3, 2(a1)
	sh	t3, 0(a1)
	ld	a1, %lo(img)(a5)
	lw	a7, 24(a1)
	lui	a3, %hi(si_frame_indicator)
	li	a6, 3
	lui	a1, %hi(sp2_frame_indicator)
	ld	t2, 24(sp)                      # 8-byte Folded Reload
	bne	a7, a6, .LBB6_131
# %bb.128:
	lw	a7, %lo(si_frame_indicator)(a3)
	bnez	a7, .LBB6_131
# %bb.129:
	lw	a7, %lo(sp2_frame_indicator)(a1)
	bnez	a7, .LBB6_131
# %bb.130:
	lui	a7, %hi(lrec_uv)
	ld	a7, %lo(lrec_uv)(a7)
	ld	a7, 0(a7)
	ld	t0, 416(sp)                     # 8-byte Folded Reload
	add	a7, a7, t0
	ld	a7, 0(a7)
	lw	t0, 604(sp)
	slli	t1, t5, 2
	add	a7, a7, t1
	sw	t0, 12(a7)
	lw	t0, 600(sp)
	sw	t0, 8(a7)
	lw	t0, 596(sp)
	sw	t0, 4(a7)
	lw	t0, 592(sp)
	sw	t0, 0(a7)
.LBB6_131:
	ld	a2, %lo(enc_picture)(a2)
	add	a2, a2, a4
	ld	a2, -1728(a2)
	ld	a2, 0(a2)
	ld	a4, 424(sp)                     # 8-byte Folded Reload
	add	a2, a2, a4
	ld	a2, 0(a2)
	add	a2, a2, a0
	srli	a4, t2, 48
	sh	a4, 6(a2)
	srli	a4, t2, 32
	sh	a4, 4(a2)
	srli	a4, t2, 16
	sh	a4, 2(a2)
	sh	t2, 0(a2)
	ld	a2, %lo(img)(a5)
	lw	a2, 24(a2)
	bne	a2, a6, .LBB6_135
# %bb.132:
	lw	a2, %lo(si_frame_indicator)(a3)
	bnez	a2, .LBB6_135
# %bb.133:
	lw	a1, %lo(sp2_frame_indicator)(a1)
	bnez	a1, .LBB6_135
# %bb.134:
	lui	a1, %hi(lrec_uv)
	ld	a1, %lo(lrec_uv)(a1)
	ld	a1, 0(a1)
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a1, 0(a1)
	lw	a2, 620(sp)
	slli	a3, t5, 2
	add	a1, a1, a3
	sw	a2, 12(a1)
	lw	a2, 616(sp)
	sw	a2, 8(a1)
	lw	a2, 612(sp)
	sw	a2, 4(a1)
	lw	a2, 608(sp)
	sw	a2, 0(a1)
.LBB6_135:
	lui	a2, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a2)
	lui	a4, 2
	add	a1, a1, a4
	ld	a1, -1728(a1)
	ld	a1, 8(a1)
	add	a1, a1, s7
	ld	a1, 0(a1)
	add	a1, a1, a0
	srli	a3, n1, 48
	sh	a3, 6(a1)
	srli	a3, n1, 32
	sh	a3, 4(a1)
	srli	a3, n1, 16
	sh	a3, 2(a1)
	sh	n1, 0(a1)
	ld	a1, %lo(img)(a5)
	lw	a7, 24(a1)
	lui	a3, %hi(si_frame_indicator)
	li	a6, 3
	lui	a1, %hi(sp2_frame_indicator)
	ld	t2, 16(sp)                      # 8-byte Folded Reload
	bne	a7, a6, .LBB6_139
# %bb.136:
	lw	a7, %lo(si_frame_indicator)(a3)
	bnez	a7, .LBB6_139
# %bb.137:
	lw	a7, %lo(sp2_frame_indicator)(a1)
	bnez	a7, .LBB6_139
# %bb.138:
	lui	a7, %hi(lrec_uv)
	ld	a7, %lo(lrec_uv)(a7)
	ld	a7, 8(a7)
	add	a7, a7, s7
	ld	a7, 0(a7)
	lw	t0, 636(sp)
	slli	t1, t5, 2
	add	a7, a7, t1
	sw	t0, 12(a7)
	lw	t0, 632(sp)
	sw	t0, 8(a7)
	lw	t0, 628(sp)
	sw	t0, 4(a7)
	lw	t0, 624(sp)
	sw	t0, 0(a7)
.LBB6_139:
	ld	a2, %lo(enc_picture)(a2)
	add	a2, a2, a4
	ld	a2, -1728(a2)
	ld	a2, 8(a2)
	ld	a4, 408(sp)                     # 8-byte Folded Reload
	add	a2, a2, a4
	ld	a2, 0(a2)
	add	a2, a2, a0
	srli	a4, t6, 48
	sh	a4, 6(a2)
	srli	a4, t6, 32
	sh	a4, 4(a2)
	srli	a4, t6, 16
	sh	a4, 2(a2)
	sh	t6, 0(a2)
	ld	a2, %lo(img)(a5)
	lw	a2, 24(a2)
	bne	a2, a6, .LBB6_143
# %bb.140:
	lw	a2, %lo(si_frame_indicator)(a3)
	bnez	a2, .LBB6_143
# %bb.141:
	lw	a1, %lo(sp2_frame_indicator)(a1)
	bnez	a1, .LBB6_143
# %bb.142:
	lui	a1, %hi(lrec_uv)
	ld	a1, %lo(lrec_uv)(a1)
	ld	a1, 8(a1)
	ld	a2, 408(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a1, 0(a1)
	lw	a2, 652(sp)
	slli	a3, t5, 2
	add	a1, a1, a3
	sw	a2, 12(a1)
	lw	a2, 648(sp)
	sw	a2, 8(a1)
	lw	a2, 644(sp)
	sw	a2, 4(a1)
	lw	a2, 640(sp)
	sw	a2, 0(a1)
.LBB6_143:
	lui	a1, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a1)
	lui	a2, 2
	add	a3, a3, a2
	ld	a3, -1728(a3)
	ld	a3, 8(a3)
	ld	a4, 416(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	ld	a3, 0(a3)
	add	a3, a3, a0
	srli	a4, t4, 48
	sh	a4, 6(a3)
	srli	a4, t4, 32
	sh	a4, 4(a3)
	srli	a4, t4, 16
	sh	a4, 2(a3)
	sh	t4, 0(a3)
	ld	a3, %lo(img)(a5)
	lw	a7, 24(a3)
	lui	a3, %hi(si_frame_indicator)
	li	a6, 3
	lui	a4, %hi(sp2_frame_indicator)
	bne	a7, a6, .LBB6_147
# %bb.144:
	lw	a7, %lo(si_frame_indicator)(a3)
	bnez	a7, .LBB6_147
# %bb.145:
	lw	a7, %lo(sp2_frame_indicator)(a4)
	bnez	a7, .LBB6_147
# %bb.146:
	lui	a7, %hi(lrec_uv)
	ld	a7, %lo(lrec_uv)(a7)
	ld	a7, 8(a7)
	ld	t0, 416(sp)                     # 8-byte Folded Reload
	add	a7, a7, t0
	ld	a7, 0(a7)
	lw	t0, 668(sp)
	slli	t1, t5, 2
	add	a7, a7, t1
	sw	t0, 12(a7)
	lw	t0, 664(sp)
	sw	t0, 8(a7)
	lw	t0, 660(sp)
	sw	t0, 4(a7)
	lw	t0, 656(sp)
	sw	t0, 0(a7)
.LBB6_147:
	ld	a1, %lo(enc_picture)(a1)
	add	a1, a1, a2
	ld	a1, -1728(a1)
	ld	a1, 8(a1)
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a1, 0(a1)
	add	a0, a1, a0
	srli	a1, t2, 48
	sh	a1, 6(a0)
	srli	a1, t2, 32
	sh	a1, 4(a0)
	srli	a1, t2, 16
	sh	a1, 2(a0)
	sh	t2, 0(a0)
	ld	a0, %lo(img)(a5)
	lw	a0, 24(a0)
	bne	a0, a6, .LBB6_181
# %bb.148:
	lw	a0, %lo(si_frame_indicator)(a3)
	bnez	a0, .LBB6_181
# %bb.149:
	lw	a0, %lo(sp2_frame_indicator)(a4)
	bnez	a0, .LBB6_181
# %bb.150:
	lui	a0, %hi(lrec_uv)
	ld	a0, %lo(lrec_uv)(a0)
	ld	a0, 8(a0)
	ld	a1, 424(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a0, 0(a0)
	lw	a1, 684(sp)
	slli	a2, t5, 2
	add	a0, a0, a2
	sw	a1, 12(a0)
	lw	a1, 680(sp)
	sw	a1, 8(a0)
	lw	a1, 676(sp)
	sw	a1, 4(a0)
	lw	a1, 672(sp)
	sw	a1, 0(a0)
	j	.LBB6_181
.LBB6_151:
	ld	t0, %lo(img)(s2)
	lui	a0, 22
	add	a0, t0, a0
	lw	a1, 460(a0)
	lui	a0, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(a0)
	lui	a2, 3
	addiw	a0, a2, 824
	add	n11, t0, a0
	beqz	a1, .LBB6_180
# %bb.152:
	lui	a1, %hi(imgUV_org)
	ld	a1, %lo(imgUV_org)(a1)
	ld	a3, 0(a1)
	ld	a5, 8(a1)
	li	a1, 0
	li	a2, 0
	ld	a0, 504(sp)                     # 8-byte Folded Reload
	add	a3, a3, a0
	add	a4, a4, a0
	add	a5, a5, a0
	ld	a6, 480(sp)                     # 8-byte Folded Reload
	add	a6, t0, a6
	ld	a7, 472(sp)                     # 8-byte Folded Reload
	add	a7, t0, a7
	slli	s0, s0, 9
	add	t0, t0, s0
	addi	t0, t0, 184
	ld	t1, 528(sp)                     # 8-byte Folded Reload
	slli	t1, t1, 1
	li	t2, 256
.LBB6_153:                              # =>This Inner Loop Header: Depth=1
	ld	t3, 0(a3)
	add	t4, t3, t1
	lhu	t4, 0(t4)
	add	t5, a6, a1
	lhu	t6, 0(t5)
	ld	n1, 0(a4)
	ld	n2, 0(a5)
	sub	t4, t4, t6
	add	t6, n1, t1
	add	n3, n2, t1
	lhu	n3, 0(n3)
	add	n4, a7, a1
	lhu	n5, -6(n4)
	lhu	t6, 0(t6)
	add	n6, t0, a1
	lhu	n7, 0(n6)
	sub	n3, n3, n5
	sub	n3, n3, t4
	add	n5, n20, a2
	sw	n3, 0(n5)
	srli	n3, n3, 1
	add	t4, n3, t4
	subw	t6, t6, n7
	subw	t6, t6, t4
	add	n3, n21, a2
	sw	t6, 0(n3)
	sraiw	t6, t6, 1
	add	t4, t6, t4
	add	t6, n22, a2
	sw	t4, 0(t6)
	add	t4, t3, s3
	lhu	t4, 0(t4)
	lhu	n7, 2(t5)
	sub	t4, t4, n7
	add	n7, n2, s3
	lhu	n7, 0(n7)
	lhu	n8, -4(n4)
	add	n9, n1, s3
	lhu	n9, 0(n9)
	lhu	n10, 2(n6)
	sub	n7, n7, n8
	sub	n7, n7, t4
	sw	n7, 4(n5)
	srli	n7, n7, 1
	add	t4, n7, t4
	subw	n7, n9, n10
	subw	n7, n7, t4
	sw	n7, 4(n3)
	sraiw	n7, n7, 1
	add	t4, n7, t4
	sw	t4, 4(t6)
	add	t4, t3, s1
	lhu	t4, 0(t4)
	lhu	n7, 4(t5)
	sub	t4, t4, n7
	add	n7, n2, s1
	lhu	n7, 0(n7)
	lhu	n8, -2(n4)
	add	n9, n1, s1
	lhu	n9, 0(n9)
	lhu	n10, 4(n6)
	sub	n7, n7, n8
	sub	n7, n7, t4
	sw	n7, 8(n5)
	srli	n7, n7, 1
	add	t4, n7, t4
	subw	n7, n9, n10
	subw	n7, n7, t4
	sw	n7, 8(n3)
	sraiw	n7, n7, 1
	add	t4, n7, t4
	sw	t4, 8(t6)
	add	t3, t3, s11
	lhu	t3, 0(t3)
	lhu	t4, 6(t5)
	sub	t3, t3, t4
	add	n2, n2, s11
	lhu	t4, 0(n2)
	lhu	t5, 0(n4)
	add	n1, n1, s11
	lhu	n1, 0(n1)
	lhu	n2, 6(n6)
	sub	t4, t4, t5
	sub	t4, t4, t3
	sw	t4, 12(n5)
	srli	t4, t4, 1
	add	t3, t4, t3
	subw	t4, n1, n2
	subw	t4, t4, t3
	sw	t4, 12(n3)
	sraiw	t4, t4, 1
	add	t3, t4, t3
	sw	t3, 12(t6)
	addi	a2, a2, 64
	addi	a3, a3, 8
	addi	a4, a4, 8
	addi	a5, a5, 8
	addi	a1, a1, 32
	bne	a2, t2, .LBB6_153
# %bb.154:
	lui	a1, %hi(resTrans_G)
	lw	a2, %lo(resTrans_G)(a1)
	addi	a1, a1, %lo(resTrans_G)
	sw	a2, 0(n11)
	lw	a2, 4(a1)
	sw	a2, 4(n11)
	lw	a2, 8(a1)
	sw	a2, 8(n11)
	lw	a2, 12(a1)
	sw	a2, 12(n11)
	lw	a2, 64(a1)
	sw	a2, 64(n11)
	lw	a2, 68(a1)
	sw	a2, 68(n11)
	lw	a2, 72(a1)
	sw	a2, 72(n11)
	lw	a2, 76(a1)
	sw	a2, 76(n11)
	lw	a2, 128(a1)
	sw	a2, 128(n11)
	lw	a2, 132(a1)
	sw	a2, 132(n11)
	lw	a2, 136(a1)
	sw	a2, 136(n11)
	lw	a2, 140(a1)
	sw	a2, 140(n11)
	lw	a2, 192(a1)
	sw	a2, 192(n11)
	lw	a2, 196(a1)
	sw	a2, 196(n11)
	lw	a2, 200(a1)
	sw	a2, 200(n11)
	lw	a1, 204(a1)
	sw	a1, 204(n11)
	addi	a2, sp, 560
	li	a3, 1
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	call	dct_luma
	lui	s4, %hi(img)
	ld	a1, %lo(img)(s4)
	lui	a2, 3
	addiw	s3, a2, 824
	add	a1, a1, s3
	lw	a2, 0(a1)
	lui	a3, %hi(resTrans_B)
	lw	a4, %lo(resTrans_B)(a3)
	lui	a5, %hi(rec_resG)
	sw	a2, %lo(rec_resG)(a5)
	addi	a2, a3, %lo(resTrans_B)
	sw	a4, 0(a1)
	lw	a3, 4(a1)
	lw	a4, 4(a2)
	addi	a5, a5, %lo(rec_resG)
	sw	a3, 4(a5)
	sw	a4, 4(a1)
	lw	a3, 8(a1)
	lw	a4, 8(a2)
	sw	a3, 8(a5)
	sw	a4, 8(a1)
	lw	a3, 12(a1)
	lw	a4, 12(a2)
	sw	a3, 12(a5)
	sw	a4, 12(a1)
	lw	a3, 64(a1)
	lw	a4, 64(a2)
	sw	a3, 64(a5)
	sw	a4, 64(a1)
	lw	a3, 68(a1)
	lw	a4, 68(a2)
	sw	a3, 68(a5)
	sw	a4, 68(a1)
	lw	a3, 72(a1)
	lw	a4, 72(a2)
	sw	a3, 72(a5)
	sw	a4, 72(a1)
	lw	a3, 76(a1)
	lw	a4, 76(a2)
	sw	a3, 76(a5)
	sw	a4, 76(a1)
	lw	a3, 128(a1)
	lw	a4, 128(a2)
	sw	a3, 128(a5)
	sw	a4, 128(a1)
	lw	a3, 132(a1)
	lw	a4, 132(a2)
	sw	a3, 132(a5)
	sw	a4, 132(a1)
	lw	a3, 136(a1)
	lw	a4, 136(a2)
	sw	a3, 136(a5)
	sw	a4, 136(a1)
	lw	a3, 140(a1)
	lw	a4, 140(a2)
	sw	a3, 140(a5)
	sw	a4, 140(a1)
	lw	a3, 192(a1)
	lw	a4, 192(a2)
	sw	a3, 192(a5)
	sw	a4, 192(a1)
	lw	a3, 196(a1)
	lw	a4, 196(a2)
	sw	a3, 196(a5)
	sw	a4, 196(a1)
	lw	a3, 200(a1)
	lw	a4, 200(a2)
	sw	a3, 200(a5)
	sw	a4, 200(a1)
	lw	a3, 204(a1)
	lw	a2, 204(a2)
	mv	s11, a0
	addi	s1, a5, 8
	sw	a3, 204(a5)
	sw	a2, 204(a1)
	li	a0, 0
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	mv	a2, s5
	call	dct_chroma4x4
	ld	s6, 336(sp)                     # 8-byte Folded Reload
	lw	a1, 0(s6)
	ld	a3, %lo(img)(s4)
	ld	s10, 328(sp)                    # 8-byte Folded Reload
	sw	a0, 0(s10)
	mv	a2, s5
	ld	s5, 344(sp)                     # 8-byte Folded Reload
	sw	a1, 0(s5)
	add	a5, a3, s3
	lw	a0, 0(a5)
	lui	a1, %hi(resTrans_R)
	lw	a3, %lo(resTrans_R)(a1)
	lui	a4, %hi(rec_resB)
	sw	a0, %lo(rec_resB)(a4)
	addi	a0, a1, %lo(resTrans_R)
	sw	a3, 0(a5)
	lw	a1, 4(a5)
	lw	a3, 4(a0)
	addi	a4, a4, %lo(rec_resB)
	sw	a1, 4(a4)
	sw	a3, 4(a5)
	lw	a1, 8(a5)
	lw	a3, 8(a0)
	sw	a1, 8(a4)
	sw	a3, 8(a5)
	lw	a1, 12(a5)
	lw	a3, 12(a0)
	sw	a1, 12(a4)
	sw	a3, 12(a5)
	lw	a1, 64(a5)
	lw	a3, 64(a0)
	sw	a1, 64(a4)
	sw	a3, 64(a5)
	lw	a1, 68(a5)
	lw	a3, 68(a0)
	sw	a1, 68(a4)
	sw	a3, 68(a5)
	lw	a1, 72(a5)
	lw	a3, 72(a0)
	sw	a1, 72(a4)
	sw	a3, 72(a5)
	lw	a1, 76(a5)
	lw	a3, 76(a0)
	sw	a1, 76(a4)
	sw	a3, 76(a5)
	lw	a1, 128(a5)
	lw	a3, 128(a0)
	sw	a1, 128(a4)
	sw	a3, 128(a5)
	lw	a1, 132(a5)
	lw	a3, 132(a0)
	sw	a1, 132(a4)
	sw	a3, 132(a5)
	lw	a1, 136(a5)
	lw	a3, 136(a0)
	sw	a1, 136(a4)
	sw	a3, 136(a5)
	lw	a1, 140(a5)
	lw	a3, 140(a0)
	sw	a1, 140(a4)
	sw	a3, 140(a5)
	lw	a1, 192(a5)
	lw	a3, 192(a0)
	sw	a1, 192(a4)
	sw	a3, 192(a5)
	lw	a1, 196(a5)
	lw	a3, 196(a0)
	sw	a1, 196(a4)
	sw	a3, 196(a5)
	lw	a1, 200(a5)
	lw	a3, 200(a0)
	sw	a1, 200(a4)
	sw	a3, 200(a5)
	lw	a1, 204(a5)
	lw	a0, 204(a0)
	addi	s2, a4, 8
	sw	a1, 204(a4)
	sw	a0, 204(a5)
	li	a0, 1
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	call	dct_chroma4x4
	lw	a1, 64(s6)
	ld	t1, %lo(img)(s4)
	sw	a0, 64(s10)
	sw	a1, 64(s5)
	add	s3, t1, s3
	lw	a0, 0(s3)
	lui	a1, %hi(rec_resR)
	sw	a0, %lo(rec_resR)(a1)
	lw	a0, 4(s3)
	addi	a1, a1, %lo(rec_resR)
	sw	a0, 4(a1)
	lw	a0, 8(s3)
	sw	a0, 8(a1)
	lw	a0, 12(s3)
	sw	a0, 12(a1)
	lw	a0, 64(s3)
	sw	a0, 64(a1)
	lw	a0, 68(s3)
	sw	a0, 68(a1)
	lw	a0, 72(s3)
	sw	a0, 72(a1)
	lw	a0, 76(s3)
	sw	a0, 76(a1)
	lw	a0, 128(s3)
	sw	a0, 128(a1)
	lw	a0, 132(s3)
	sw	a0, 132(a1)
	lw	a0, 136(s3)
	sw	a0, 136(a1)
	lw	a0, 140(s3)
	sw	a0, 140(a1)
	lw	a0, 192(s3)
	sw	a0, 192(a1)
	lw	a0, 196(s3)
	sw	a0, 196(a1)
	lw	a0, 200(s3)
	sw	a0, 200(a1)
	lw	a2, 204(s3)
	li	a0, 0
	lui	a3, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a3)
	sw	a2, 204(a1)
	lui	a2, 2
	addiw	a2, a2, -1768
	add	a2, a3, a2
	ld	a3, 40(a2)
	lui	a4, 22
	addiw	a4, a4, 420
	add	a6, t1, a4
	ld	a4, 0(a3)
	ld	a5, 0(a2)
	ld	a7, 8(a3)
	addi	a1, a1, 8
	add	a2, a4, s7
	add	a3, a5, s7
	add	a4, a7, s7
	lw	a5, 4(a6)
	lw	a6, 0(a6)
	ld	a7, 480(sp)                     # 8-byte Folded Reload
	add	a7, t1, a7
	ld	t0, 472(sp)                     # 8-byte Folded Reload
	add	t0, t1, t0
	add	t1, t1, s0
	addi	t1, t1, 184
	li	t2, 128
	ld	n9, 496(sp)                     # 8-byte Folded Reload
	ld	n10, 368(sp)                    # 8-byte Folded Reload
	ld	n11, 360(sp)                    # 8-byte Folded Reload
	j	.LBB6_156
.LBB6_155:                              #   in Loop: Header=BB6_156 Depth=1
	add	t3, t3, s9
	sh	t4, 0(t3)
	addi	a0, a0, 32
	addi	a2, a2, 8
	addi	a3, a3, 8
	addi	a4, a4, 8
	addi	a1, a1, 64
	addi	s2, s2, 64
	addi	s1, s1, 64
	beq	a0, t2, .LBB6_181
.LBB6_156:                              # =>This Inner Loop Header: Depth=1
	lw	n2, -8(s2)
	lw	t3, -8(s1)
	srai	t4, n2, 1
	lw	n3, -8(a1)
	add	t5, a7, a0
	lhu	t6, 0(t5)
	subw	n6, t3, t4
	srli	t3, n3, 1
	subw	n4, n6, t3
	addw	t3, n4, t6
	sgtz	t4, t3
	neg	t4, t4
	and	t3, t4, t3
	mv	n1, a5
	blt	a5, t3, .LBB6_158
# %bb.157:                              #   in Loop: Header=BB6_156 Depth=1
	mv	n1, t3
.LBB6_158:                              #   in Loop: Header=BB6_156 Depth=1
	ld	t6, 0(a2)
	ld	t4, 0(a3)
	ld	t3, 0(a4)
	slli	n5, n9, 1
	add	n7, t6, n5
	sh	n1, 0(n7)
	add	n1, t1, a0
	lhu	n7, 0(n1)
	add	n2, n6, n2
	addw	n2, n2, n7
	sgtz	n6, n2
	neg	n6, n6
	and	n6, n6, n2
	mv	n2, a6
	blt	a6, n6, .LBB6_160
# %bb.159:                              #   in Loop: Header=BB6_156 Depth=1
	mv	n2, n6
.LBB6_160:                              #   in Loop: Header=BB6_156 Depth=1
	add	n6, t4, n5
	sh	n2, 0(n6)
	add	n2, t0, a0
	lhu	n6, -6(n2)
	add	n3, n4, n3
	addw	n3, n3, n6
	sgtz	n4, n3
	neg	n4, n4
	and	n4, n4, n3
	mv	n3, a5
	blt	a5, n4, .LBB6_162
# %bb.161:                              #   in Loop: Header=BB6_156 Depth=1
	mv	n3, n4
.LBB6_162:                              #   in Loop: Header=BB6_156 Depth=1
	add	n5, t3, n5
	sh	n3, 0(n5)
	lw	n5, -4(s2)
	lw	n4, -4(s1)
	lw	n3, -4(a1)
	srai	n6, n5, 1
	lhu	n7, 2(t5)
	subw	n6, n4, n6
	srli	n4, n3, 1
	subw	n4, n6, n4
	addw	n7, n4, n7
	sgtz	n8, n7
	neg	n8, n8
	and	n8, n8, n7
	mv	n7, a5
	blt	a5, n8, .LBB6_164
# %bb.163:                              #   in Loop: Header=BB6_156 Depth=1
	mv	n7, n8
.LBB6_164:                              #   in Loop: Header=BB6_156 Depth=1
	add	n8, t6, n10
	sh	n7, 0(n8)
	lhu	n7, 2(n1)
	add	n5, n6, n5
	addw	n5, n5, n7
	sgtz	n6, n5
	neg	n6, n6
	and	n6, n6, n5
	mv	n5, a6
	blt	a6, n6, .LBB6_166
# %bb.165:                              #   in Loop: Header=BB6_156 Depth=1
	mv	n5, n6
.LBB6_166:                              #   in Loop: Header=BB6_156 Depth=1
	add	n6, t4, n10
	sh	n5, 0(n6)
	lhu	n5, -4(n2)
	add	n3, n4, n3
	addw	n3, n3, n5
	sgtz	n4, n3
	neg	n4, n4
	and	n4, n4, n3
	mv	n3, a5
	blt	a5, n4, .LBB6_168
# %bb.167:                              #   in Loop: Header=BB6_156 Depth=1
	mv	n3, n4
.LBB6_168:                              #   in Loop: Header=BB6_156 Depth=1
	add	n4, t3, n10
	sh	n3, 0(n4)
	lw	n5, 0(s2)
	lw	n4, 0(s1)
	lw	n3, 0(a1)
	srai	n6, n5, 1
	lhu	n7, 4(t5)
	subw	n6, n4, n6
	srli	n4, n3, 1
	subw	n4, n6, n4
	addw	n7, n4, n7
	sgtz	n8, n7
	neg	n8, n8
	and	n8, n8, n7
	mv	n7, a5
	blt	a5, n8, .LBB6_170
# %bb.169:                              #   in Loop: Header=BB6_156 Depth=1
	mv	n7, n8
.LBB6_170:                              #   in Loop: Header=BB6_156 Depth=1
	add	n8, t6, n11
	sh	n7, 0(n8)
	lhu	n7, 4(n1)
	add	n5, n6, n5
	addw	n5, n5, n7
	sgtz	n6, n5
	neg	n6, n6
	and	n6, n6, n5
	mv	n5, a6
	blt	a6, n6, .LBB6_172
# %bb.171:                              #   in Loop: Header=BB6_156 Depth=1
	mv	n5, n6
.LBB6_172:                              #   in Loop: Header=BB6_156 Depth=1
	add	n6, t4, n11
	sh	n5, 0(n6)
	lhu	n5, -2(n2)
	add	n3, n4, n3
	addw	n3, n3, n5
	sgtz	n4, n3
	neg	n4, n4
	and	n4, n4, n3
	mv	n3, a5
	blt	a5, n4, .LBB6_174
# %bb.173:                              #   in Loop: Header=BB6_156 Depth=1
	mv	n3, n4
.LBB6_174:                              #   in Loop: Header=BB6_156 Depth=1
	add	n4, t3, n11
	sh	n3, 0(n4)
	lw	n4, 4(s2)
	lw	n5, 4(s1)
	lw	n3, 4(a1)
	srai	n6, n4, 1
	lhu	n7, 6(t5)
	subw	n5, n5, n6
	srli	t5, n3, 1
	subw	t5, n5, t5
	addw	n6, t5, n7
	sgtz	n7, n6
	neg	n7, n7
	and	n7, n7, n6
	mv	n6, a5
	blt	a5, n7, .LBB6_176
# %bb.175:                              #   in Loop: Header=BB6_156 Depth=1
	mv	n6, n7
.LBB6_176:                              #   in Loop: Header=BB6_156 Depth=1
	add	t6, t6, s9
	sh	n6, 0(t6)
	lhu	t6, 6(n1)
	add	n4, n5, n4
	addw	t6, n4, t6
	sgtz	n1, t6
	neg	n1, n1
	and	n1, n1, t6
	mv	t6, a6
	blt	a6, n1, .LBB6_178
# %bb.177:                              #   in Loop: Header=BB6_156 Depth=1
	mv	t6, n1
.LBB6_178:                              #   in Loop: Header=BB6_156 Depth=1
	add	t4, t4, s9
	sh	t6, 0(t4)
	lhu	t4, 0(n2)
	add	t5, t5, n3
	addw	t4, t5, t4
	sgtz	t5, t4
	neg	t5, t5
	and	t5, t5, t4
	mv	t4, a5
	blt	a5, t5, .LBB6_155
# %bb.179:                              #   in Loop: Header=BB6_156 Depth=1
	mv	t4, t5
	j	.LBB6_155
.LBB6_180:
	slli	a1, s0, 9
	add	a1, t0, a1
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	add	a3, t0, a3
	ld	a0, 504(sp)                     # 8-byte Folded Reload
	add	a4, a4, a0
	ld	a5, 0(a4)
	lhu	a6, 184(a1)
	addiw	a7, a2, 312
	add	a7, a3, a7
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	slli	t0, a0, 1
	add	t1, a7, t0
	sh	a6, 0(t1)
	ld	t1, 528(sp)                     # 8-byte Folded Reload
	slli	t1, t1, 1
	add	t2, a5, t1
	lhu	t2, 0(t2)
	subw	a6, t2, a6
	lhu	t2, 186(a1)
	sw	a6, 0(n11)
	addi	a6, t0, 2
	add	t3, a7, a6
	sh	t2, 0(t3)
	addi	t3, t1, 2
	add	t4, a5, t3
	lhu	t4, 0(t4)
	subw	t2, t4, t2
	lhu	t4, 188(a1)
	sw	t2, 4(n11)
	addi	t2, t0, 4
	add	t5, a7, t2
	sh	t4, 0(t5)
	addi	t5, t1, 4
	add	t6, a5, t5
	lhu	t6, 0(t6)
	subw	t6, t6, t4
	lhu	t4, 190(a1)
	sw	t6, 8(n11)
	addi	t6, t0, 6
	add	a7, a7, t6
	sh	t4, 0(a7)
	addi	a7, t1, 6
	add	a5, a5, a7
	lhu	a5, 0(a5)
	subw	a5, a5, t4
	sw	a5, 12(n11)
	ld	a5, 8(a4)
	lhu	t4, 216(a1)
	addiw	n1, a2, 344
	add	n1, a3, n1
	add	n2, n1, t0
	sh	t4, 0(n2)
	add	n2, a5, t1
	lhu	n2, 0(n2)
	lhu	n3, 218(a1)
	subw	t4, n2, t4
	sw	t4, 64(n11)
	add	t4, n1, a6
	sh	n3, 0(t4)
	add	t4, a5, t3
	lhu	t4, 0(t4)
	lhu	n2, 220(a1)
	subw	t4, t4, n3
	sw	t4, 68(n11)
	add	t4, n1, t2
	sh	n2, 0(t4)
	add	t4, a5, t5
	lhu	t4, 0(t4)
	lhu	n3, 222(a1)
	subw	t4, t4, n2
	sw	t4, 72(n11)
	add	n1, n1, t6
	sh	n3, 0(n1)
	add	a5, a5, a7
	lhu	a5, 0(a5)
	subw	a5, a5, n3
	sw	a5, 76(n11)
	ld	a5, 16(a4)
	lhu	t4, 248(a1)
	addiw	n1, a2, 376
	add	n1, a3, n1
	add	n2, n1, t0
	sh	t4, 0(n2)
	add	n2, a5, t1
	lhu	n2, 0(n2)
	lhu	n3, 250(a1)
	subw	t4, n2, t4
	sw	t4, 128(n11)
	add	t4, n1, a6
	sh	n3, 0(t4)
	add	t4, a5, t3
	lhu	t4, 0(t4)
	lhu	n2, 252(a1)
	subw	t4, t4, n3
	sw	t4, 132(n11)
	add	t4, n1, t2
	sh	n2, 0(t4)
	add	t4, a5, t5
	lhu	t4, 0(t4)
	lhu	n3, 254(a1)
	subw	t4, t4, n2
	sw	t4, 136(n11)
	add	n1, n1, t6
	sh	n3, 0(n1)
	add	a5, a5, a7
	lhu	a5, 0(a5)
	subw	a5, a5, n3
	sw	a5, 140(n11)
	ld	a4, 24(a4)
	lhu	a5, 280(a1)
	addiw	a2, a2, 408
	add	a2, a3, a2
	add	t0, a2, t0
	sh	a5, 0(t0)
	add	t1, a4, t1
	lhu	a3, 0(t1)
	lhu	t0, 282(a1)
	subw	a3, a3, a5
	sw	a3, 192(n11)
	add	a6, a2, a6
	sh	t0, 0(a6)
	add	t3, a4, t3
	lhu	a3, 0(t3)
	lhu	a5, 284(a1)
	subw	a3, a3, t0
	sw	a3, 196(n11)
	add	t2, a2, t2
	sh	a5, 0(t2)
	add	t5, a4, t5
	lhu	a3, 0(t5)
	lhu	a1, 286(a1)
	subw	a3, a3, a5
	sw	a3, 200(n11)
	add	a2, a2, t6
	sh	a1, 0(a2)
	add	a4, a4, a7
	lhu	a2, 0(a4)
	subw	a2, a2, a1
	sw	a2, 204(n11)
	addi	a2, sp, 560
	li	a3, 1
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	call	dct_luma
	mv	s11, a0
.LBB6_181:
	mv	a0, s11
	ld	ra, 1000(sp)                    # 8-byte Folded Reload
	ld	s0, 992(sp)                     # 8-byte Folded Reload
	ld	s1, 984(sp)                     # 8-byte Folded Reload
	ld	s2, 976(sp)                     # 8-byte Folded Reload
	ld	s3, 968(sp)                     # 8-byte Folded Reload
	ld	s4, 960(sp)                     # 8-byte Folded Reload
	ld	s5, 952(sp)                     # 8-byte Folded Reload
	ld	s6, 944(sp)                     # 8-byte Folded Reload
	ld	s7, 936(sp)                     # 8-byte Folded Reload
	ld	s8, 928(sp)                     # 8-byte Folded Reload
	ld	s9, 920(sp)                     # 8-byte Folded Reload
	ld	s10, 912(sp)                    # 8-byte Folded Reload
	ld	s11, 904(sp)                    # 8-byte Folded Reload
	fld	fs0, 896(sp)                    # 8-byte Folded Reload
	fld	fs1, 888(sp)                    # 8-byte Folded Reload
	fld	fs2, 880(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 1008
	ret
.Lfunc_end6:
	.size	Mode_Decision_for_4x4IntraBlocks, .Lfunc_end6-Mode_Decision_for_4x4IntraBlocks
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Mode_Decision_for_8x8IntraBlocks
.LCPI7_0:
	.quad	0x3fdffe5c91d14e3c              # double 0.49990000000000001
.LCPI7_1:
	.quad	0x4018000000000000              # double 6
	.text
	.globl	Mode_Decision_for_8x8IntraBlocks
	.p2align	2
	.type	Mode_Decision_for_8x8IntraBlocks,@function
Mode_Decision_for_8x8IntraBlocks:       # @Mode_Decision_for_8x8IntraBlocks
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	fsd	fs0, 8(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(.LCPI7_0)
	fld	fa5, %lo(.LCPI7_0)(a2)
	lui	a2, %hi(.LCPI7_1)
	fld	fa4, %lo(.LCPI7_1)(a2)
	mv	s0, a1
	fmv.d	fs0, fa0
	mv	s1, a0
	fmadd.d	fa5, fa0, fa4, fa5
	fcvt.w.d	a0, fa5, rdn
	sw	a0, 0(a1)
	addi	a2, sp, 4
	mv	a0, s1
	li	a1, 0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	a1, 4(sp)
	lw	a2, 0(s0)
	mv	s2, a0
	add	a1, a2, a1
	sw	a1, 0(s0)
	li	a1, 1
	addi	a2, sp, 4
	mv	a0, s1
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	a1, 4(sp)
	lw	a2, 0(s0)
	mv	s3, a0
	add	a1, a2, a1
	sw	a1, 0(s0)
	li	a1, 2
	addi	a2, sp, 4
	mv	a0, s1
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	a1, 4(sp)
	lw	a2, 0(s0)
	mv	s4, a0
	add	a1, a2, a1
	sw	a1, 0(s0)
	li	a1, 3
	addi	a2, sp, 4
	mv	a0, s1
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	or	a0, a0, s4
	lw	a1, 4(sp)
	lw	a2, 0(s0)
	or	a3, s3, s2
	or	a0, a0, a3
	snez	a0, a0
	add	a1, a2, a1
	sw	a1, 0(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	fld	fs0, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end7:
	.size	Mode_Decision_for_8x8IntraBlocks, .Lfunc_end7-Mode_Decision_for_8x8IntraBlocks
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Mode_Decision_for_Intra4x4Macroblock
.LCPI8_0:
	.quad	0x3fdffe5c91d14e3c              # double 0.49990000000000001
.LCPI8_1:
	.quad	0x4018000000000000              # double 6
	.text
	.globl	Mode_Decision_for_Intra4x4Macroblock
	.p2align	2
	.type	Mode_Decision_for_Intra4x4Macroblock,@function
Mode_Decision_for_Intra4x4Macroblock:   # @Mode_Decision_for_Intra4x4Macroblock
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 56(sp)                      # 8-byte Folded Spill
	sd	s4, 48(sp)                      # 8-byte Folded Spill
	sd	s5, 40(sp)                      # 8-byte Folded Spill
	sd	s6, 32(sp)                      # 8-byte Folded Spill
	sd	s7, 24(sp)                      # 8-byte Folded Spill
	fsd	fs0, 16(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(.LCPI8_0)
	fld	fa5, %lo(.LCPI8_0)(a1)
	lui	a1, %hi(.LCPI8_1)
	fld	fa4, %lo(.LCPI8_1)(a1)
	mv	s0, a0
	fmv.d	fs0, fa0
	sw	zero, 0(a0)
	fmadd.d	fa5, fa0, fa4, fa5
	fcvt.w.d	s4, fa5, rdn
	addi	a2, sp, 12
	li	a0, 0
	li	a1, 0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	s3, 12(sp)
	mv	s1, a0
	li	a1, 1
	addi	a2, sp, 12
	li	a0, 0
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	a1, 12(sp)
	mv	s2, a0
	add	s5, s3, a1
	li	a1, 2
	addi	a2, sp, 12
	li	a0, 0
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	a1, 12(sp)
	mv	s3, a0
	add	s5, s5, a1
	li	a1, 3
	addi	a2, sp, 12
	li	a0, 0
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	or	a0, a0, s3
	or	a1, s2, s1
	lw	a2, 12(sp)
	or	a0, a0, a1
	lw	a1, 0(s0)
	snez	s6, a0
	add	a2, s5, a2
	add	a2, a2, s4
	add	a1, a2, a1
	sw	a1, 0(s0)
	li	a0, 1
	addi	a2, sp, 12
	li	a1, 0
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	s3, 12(sp)
	mv	s1, a0
	li	a0, 1
	li	a1, 1
	addi	a2, sp, 12
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	a1, 12(sp)
	mv	s2, a0
	add	s5, s3, a1
	li	a0, 1
	li	a1, 2
	addi	a2, sp, 12
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	a1, 12(sp)
	mv	s3, a0
	add	s5, s5, a1
	li	a0, 1
	li	a1, 3
	addi	a2, sp, 12
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	or	a0, a0, s3
	lw	a1, 12(sp)
	or	a2, s2, s1
	or	a0, a0, a2
	snez	a0, a0
	add	a1, s5, a1
	lw	a2, 0(s0)
	add	a1, a1, s4
	slli	a0, a0, 1
	or	s5, a0, s6
	add	a1, a1, a2
	sw	a1, 0(s0)
	li	a0, 2
	addi	a2, sp, 12
	li	a1, 0
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	s3, 12(sp)
	mv	s1, a0
	li	a0, 2
	li	a1, 1
	addi	a2, sp, 12
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	a1, 12(sp)
	mv	s2, a0
	add	s6, s3, a1
	li	a0, 2
	li	a1, 2
	addi	a2, sp, 12
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	a1, 12(sp)
	mv	s3, a0
	add	s6, s6, a1
	li	a0, 2
	li	a1, 3
	addi	a2, sp, 12
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	or	a0, a0, s3
	or	a1, s2, s1
	lw	a2, 12(sp)
	or	a0, a0, a1
	snez	a0, a0
	lw	a1, 0(s0)
	add	a2, s6, a2
	add	a2, a2, s4
	slli	s6, a0, 2
	add	a1, a2, a1
	sw	a1, 0(s0)
	li	a0, 3
	addi	a2, sp, 12
	li	a1, 0
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	s3, 12(sp)
	mv	s1, a0
	li	a0, 3
	li	a1, 1
	addi	a2, sp, 12
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	a1, 12(sp)
	mv	s2, a0
	add	s7, s3, a1
	li	a0, 3
	li	a1, 2
	addi	a2, sp, 12
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	a1, 12(sp)
	mv	s3, a0
	add	s7, s7, a1
	li	a0, 3
	li	a1, 3
	addi	a2, sp, 12
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	or	a0, a0, s3
	lw	a1, 12(sp)
	or	a2, s2, s1
	or	a0, a0, a2
	snez	a0, a0
	add	a1, s7, a1
	add	a1, a1, s4
	lw	a2, 0(s0)
	slli	a0, a0, 3
	or	a0, a0, s6
	or	a0, a0, s5
	add	a1, a1, a2
	sw	a1, 0(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	fld	fs0, 16(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end8:
	.size	Mode_Decision_for_Intra4x4Macroblock, .Lfunc_end8-Mode_Decision_for_Intra4x4Macroblock
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function RDCost_for_8x8blocks
.LCPI9_0:
	.quad	0x4415af1d78b58c40              # double 1.0E+20
	.text
	.globl	RDCost_for_8x8blocks
	.p2align	2
	.type	RDCost_for_8x8blocks,@function
RDCost_for_8x8blocks:                   # @RDCost_for_8x8blocks
# %bb.0:
	addi	sp, sp, -304
	sd	ra, 296(sp)                     # 8-byte Folded Spill
	sd	s0, 288(sp)                     # 8-byte Folded Spill
	sd	s1, 280(sp)                     # 8-byte Folded Spill
	sd	s2, 272(sp)                     # 8-byte Folded Spill
	sd	s3, 264(sp)                     # 8-byte Folded Spill
	sd	s4, 256(sp)                     # 8-byte Folded Spill
	sd	s5, 248(sp)                     # 8-byte Folded Spill
	sd	s6, 240(sp)                     # 8-byte Folded Spill
	sd	s7, 232(sp)                     # 8-byte Folded Spill
	sd	s8, 224(sp)                     # 8-byte Folded Spill
	sd	s9, 216(sp)                     # 8-byte Folded Spill
	sd	s10, 208(sp)                    # 8-byte Folded Spill
	sd	s11, 200(sp)                    # 8-byte Folded Spill
	fsd	fs0, 192(sp)                    # 8-byte Folded Spill
	mv	s3, a6
	mv	s11, a5
	mv	s4, a4
	mv	s7, a3
	mv	s8, a2
	fmv.d	fs0, fa0
	mv	s1, a1
	mv	s9, a0
	sw	zero, 188(sp)
	sw	zero, 180(sp)
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	slli	a1, a2, 3
	andi	a2, a1, 8
	slliw	a1, s8, 2
	lw	a0, 24(a0)
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	andi	a1, a1, -8
	sd	a2, 152(sp)                     # 8-byte Folded Spill
	srli	s5, a2, 2
	sd	a1, 144(sp)                     # 8-byte Folded Spill
	srai	s6, a1, 2
	xori	a0, a0, 1
	or	s2, a3, a0
	mv	a0, a3
	mv	a1, a4
	call	B8Mode2Value
	ld	a6, %lo(img)(s0)
	lui	a1, 8
	addiw	a1, a1, -1200
	add	a1, a6, a1
	lw	a2, 12(a6)
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	ld	a4, 8(a1)
	li	a5, 528
	mul	a2, a2, a5
	addi	a3, a3, 2047
	lw	a3, 945(a3)
	add	s10, a4, a2
	lw	a2, 0(s10)
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	ld	a1, 0(a1)
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 3
	lui	a1, %hi(assignSE2partition)
	addi	a1, a1, %lo(assignSE2partition)
	add	a1, a1, a3
	ld	a1, 0(a1)
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	sh	zero, 476(s10)
	bnez	s2, .LBB9_3
# %bb.1:
	lw	a2, 148(a6)
	lui	a1, %hi(direct_pdir)
	ld	a1, %lo(direct_pdir)(a1)
	addw	a5, a2, s6
	slli	a5, a5, 3
	lw	a2, 144(a6)
	add	a1, a1, a5
	ld	a3, 0(a1)
	addw	a1, a2, s5
	slli	a2, a1, 1
	add	a2, a3, a2
	lh	a3, 0(a2)
	bltz	a3, .LBB9_44
# %bb.2:
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	sd	a6, 96(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(direct_ref_idx)
	ld	a2, %lo(direct_ref_idx)(a2)
	ld	a4, 0(a2)
	ld	a2, 8(a2)
	add	a4, a4, a5
	ld	a4, 0(a4)
	add	a0, a2, a5
	ld	a0, 0(a0)
	add	a4, a4, a1
	lbu	a6, 0(a4)
	add	a0, a0, a1
	lbu	a7, 0(a0)
	addi	a0, sp, 180
	mv	a1, s1
	mv	a2, s8
	li	a4, 0
	li	a5, 0
	j	.LBB9_4
.LBB9_3:
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	sd	a6, 96(sp)                      # 8-byte Folded Spill
	andi	a0, s4, -3
	snez	a0, a0
	addi	a0, a0, -1
	and	a4, a0, s7
	addi	a0, s4, -1
	slli	a0, a0, 48
	srli	a0, a0, 48
	sltiu	a0, a0, 2
	neg	a0, a0
	and	a5, a0, s7
	addi	a0, sp, 180
	mv	a1, s1
	mv	a2, s8
	mv	a3, s4
	mv	a6, s11
	mv	a7, s3
.LBB9_4:
	call	LumaResidualCoding8x8
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sw	a0, 0(s9)
	lui	a0, 22
	add	a0, a1, a0
	lw	a0, 460(a0)
	sd	s3, 32(sp)                      # 8-byte Folded Spill
	sd	s11, 120(sp)                    # 8-byte Folded Spill
	beqz	a0, .LBB9_18
# %bb.5:
	sd	s2, 40(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s10, 0(sp)                      # 8-byte Folded Spill
	sd	s9, 8(sp)                       # 8-byte Folded Spill
	sd	s7, 24(sp)                      # 8-byte Folded Spill
	li	s5, 0
	li	s4, 0
	li	s10, 0
	li	s1, 0
	addiw	a0, s8, 4
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	sd	s8, 16(sp)                      # 8-byte Folded Spill
	addiw	s8, s8, 8
	sd	s8, 128(sp)                     # 8-byte Folded Spill
	lui	a0, 3
	addiw	a0, a0, 824
	sd	a0, 168(sp)                     # 8-byte Folded Spill
.LBB9_6:                                # =>This Inner Loop Header: Depth=1
	sd	s1, 160(sp)                     # 8-byte Folded Spill
	andi	a0, s5, 4
	ld	s0, 152(sp)                     # 8-byte Folded Reload
	or	s0, a0, s0
	andi	a0, s4, 4
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	or	s7, a0, a2
	slli	s7, s7, 6
	lui	a3, %hi(resTrans_B)
	addi	a3, a3, %lo(resTrans_B)
	add	a0, a3, s7
	slli	s0, s0, 2
	add	a2, a0, s0
	lw	a2, 0(a2)
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	add	a1, a1, a4
	mv	s9, a4
	sw	a2, 0(a1)
	addi	s11, s0, 4
	add	a2, a0, s11
	lw	a2, 0(a2)
	sw	a2, 4(a1)
	addi	s1, s0, 8
	add	a2, a0, s1
	lw	a2, 0(a2)
	sw	a2, 8(a1)
	addi	s8, s0, 12
	add	a0, a0, s8
	lw	a0, 0(a0)
	sw	a0, 12(a1)
	addi	s6, s7, 64
	add	a0, a3, s6
	add	a2, a0, s0
	lw	a2, 0(a2)
	sw	a2, 64(a1)
	add	a2, a0, s11
	lw	a2, 0(a2)
	sw	a2, 68(a1)
	add	a2, a0, s1
	lw	a2, 0(a2)
	sw	a2, 72(a1)
	add	a0, a0, s8
	lw	a0, 0(a0)
	sw	a0, 76(a1)
	addi	s2, s7, 128
	add	a0, a3, s2
	add	a2, a0, s0
	lw	a2, 0(a2)
	sw	a2, 128(a1)
	add	a2, a0, s11
	lw	a2, 0(a2)
	sw	a2, 132(a1)
	add	a2, a0, s1
	lw	a2, 0(a2)
	sw	a2, 136(a1)
	add	a0, a0, s8
	lw	a0, 0(a0)
	sw	a0, 140(a1)
	addi	s3, s7, 192
	add	a0, a3, s3
	add	a2, a0, s0
	lw	a2, 0(a2)
	sw	a2, 192(a1)
	add	a2, a0, s11
	lw	a2, 0(a2)
	sw	a2, 196(a1)
	add	a2, a0, s1
	lw	a2, 0(a2)
	sw	a2, 200(a1)
	add	a0, a0, s8
	lw	a0, 0(a0)
	sw	a0, 204(a1)
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	mv	a1, s10
	li	a2, 0
	call	RDCost_for_4x4Blocks_Chroma
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	a1, a1, s9
	lw	a2, 0(a1)
	lui	t0, %hi(resTrans_R)
	addi	t0, t0, %lo(resTrans_R)
	add	a3, t0, s7
	add	a4, a3, s0
	lw	a4, 0(a4)
	lui	a7, %hi(rec_resB)
	addi	a7, a7, %lo(rec_resB)
	add	a5, a7, s7
	add	a6, a5, s0
	sw	a2, 0(a6)
	sw	a4, 0(a1)
	lw	a2, 4(a1)
	add	a4, a3, s11
	lw	a4, 0(a4)
	add	a6, a5, s11
	sw	a2, 0(a6)
	sw	a4, 4(a1)
	lw	a2, 8(a1)
	add	a4, a3, s1
	lw	a4, 0(a4)
	add	a6, a5, s1
	sw	a2, 0(a6)
	sw	a4, 8(a1)
	lw	a2, 12(a1)
	add	a3, a3, s8
	lw	a3, 0(a3)
	add	a5, a5, s8
	sw	a2, 0(a5)
	sw	a3, 12(a1)
	lw	a2, 64(a1)
	add	a3, t0, s6
	add	a4, a3, s0
	lw	a4, 0(a4)
	add	a5, a7, s6
	add	a6, a5, s0
	sw	a2, 0(a6)
	sw	a4, 64(a1)
	lw	a2, 68(a1)
	add	a4, a3, s11
	lw	a4, 0(a4)
	add	a6, a5, s11
	sw	a2, 0(a6)
	sw	a4, 68(a1)
	lw	a2, 72(a1)
	add	a4, a3, s1
	lw	a4, 0(a4)
	add	a6, a5, s1
	sw	a2, 0(a6)
	sw	a4, 72(a1)
	lw	a2, 76(a1)
	add	a3, a3, s8
	lw	a3, 0(a3)
	add	a5, a5, s8
	sw	a2, 0(a5)
	sw	a3, 76(a1)
	lw	a2, 128(a1)
	add	a3, t0, s2
	add	a4, a3, s0
	lw	a4, 0(a4)
	add	a5, a7, s2
	add	a6, a5, s0
	sw	a2, 0(a6)
	sw	a4, 128(a1)
	lw	a2, 132(a1)
	add	a4, a3, s11
	lw	a4, 0(a4)
	add	a6, a5, s11
	sw	a2, 0(a6)
	sw	a4, 132(a1)
	lw	a2, 136(a1)
	add	a4, a3, s1
	lw	a4, 0(a4)
	add	a6, a5, s1
	sw	a2, 0(a6)
	sw	a4, 136(a1)
	lw	a2, 140(a1)
	add	a3, a3, s8
	lw	a3, 0(a3)
	add	a5, a5, s8
	sw	a2, 0(a5)
	sw	a3, 140(a1)
	lw	a2, 192(a1)
	add	a3, t0, s3
	add	a4, a3, s0
	lw	a4, 0(a4)
	add	a5, a7, s3
	add	a6, a5, s0
	sw	a2, 0(a6)
	sw	a4, 192(a1)
	lw	a2, 196(a1)
	add	a4, a3, s11
	lw	a4, 0(a4)
	add	a6, a5, s11
	sw	a2, 0(a6)
	sw	a4, 196(a1)
	lw	a2, 200(a1)
	add	a4, a3, s1
	lw	a4, 0(a4)
	add	a6, a5, s1
	sw	a2, 0(a6)
	sw	a4, 200(a1)
	lw	a2, 204(a1)
	add	a3, a3, s8
	lw	a3, 0(a3)
	mv	s9, a0
	add	a5, a5, s8
	sw	a2, 0(a5)
	sw	a3, 204(a1)
	li	a2, 1
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	mv	a1, s10
	call	RDCost_for_4x4Blocks_Chroma
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	add	a2, a1, a2
	lw	a3, 0(a2)
	lui	a5, %hi(rec_resR)
	addi	a5, a5, %lo(rec_resR)
	add	s7, a5, s7
	add	a4, s7, s0
	sw	a3, 0(a4)
	lw	a3, 4(a2)
	add	a4, s7, s11
	sw	a3, 0(a4)
	lw	a3, 8(a2)
	add	a4, s7, s1
	sw	a3, 0(a4)
	lw	a3, 12(a2)
	add	s7, s7, s8
	sw	a3, 0(s7)
	lw	a3, 64(a2)
	add	s6, a5, s6
	add	a4, s6, s0
	sw	a3, 0(a4)
	lw	a3, 68(a2)
	add	a4, s6, s11
	sw	a3, 0(a4)
	lw	a3, 72(a2)
	add	a4, s6, s1
	sw	a3, 0(a4)
	lw	a3, 76(a2)
	add	s6, s6, s8
	sw	a3, 0(s6)
	lw	a3, 128(a2)
	add	s2, a5, s2
	add	a4, s2, s0
	sw	a3, 0(a4)
	lw	a3, 132(a2)
	add	a4, s2, s11
	sw	a3, 0(a4)
	lw	a3, 136(a2)
	add	a4, s2, s1
	sw	a3, 0(a4)
	lw	a3, 140(a2)
	add	s2, s2, s8
	sw	a3, 0(s2)
	lw	a3, 192(a2)
	add	s3, a5, s3
	add	s0, s3, s0
	sw	a3, 0(s0)
	lw	a3, 196(a2)
	add	s11, s3, s11
	sw	a3, 0(s11)
	lw	a3, 200(a2)
	add	s1, s3, s1
	sw	a3, 0(s1)
	lw	a2, 204(a2)
	add	s3, s3, s8
	sw	a2, 0(s3)
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	add	s9, s9, a2
	add	s1, s9, a0
	addiw	s10, s10, 1
	addi	s4, s4, 2
	addi	s5, s5, 4
	li	a0, 4
	bne	s10, a0, .LBB9_6
# %bb.7:
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	call	reset_coding_state
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a2, 22
	lui	a3, 2
	addiw	a3, a3, -1768
	add	a5, a0, a3
	ld	a6, 40(a5)
	addiw	a0, a2, 420
	add	a4, a1, a0
	lw	a0, 4(a4)
	ld	a2, 0(a6)
	lw	a3, 156(a1)
	lw	t2, 152(a1)
	lw	a4, 0(a4)
	ld	a5, 0(a5)
	ld	a6, 8(a6)
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	ori	a7, a7, 7
	ld	n1, 144(sp)                     # 8-byte Folded Reload
	slli	t0, n1, 6
	ld	s8, 16(sp)                      # 8-byte Folded Reload
	andi	t3, s8, 1
	slli	t1, t3, 5
	or	t4, t0, t1
	lui	t0, %hi(rec_resG)
	addi	t0, t0, %lo(rec_resG)
	add	t0, t0, t4
	lui	t1, %hi(mprRGB)
	addi	t1, t1, %lo(mprRGB)
	add	t1, t1, t4
	slli	t3, t3, 4
	slli	t2, t2, 1
	add	t2, t3, t2
	lui	t3, %hi(rec_resR)
	addi	t3, t3, %lo(rec_resR)
	add	t3, t3, t4
	lui	t5, %hi(rec_resB)
	addi	t5, t5, %lo(rec_resB)
	add	t4, t5, t4
	li	t5, 32
	ld	s10, 0(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	j	.LBB9_9
.LBB9_8:                                #   in Loop: Header=BB9_9 Depth=1
	addi	n1, t6, 1
	addi	t0, t0, 64
	addi	t1, t1, 64
	addi	t3, t3, 64
	addi	t4, t4, 64
	bge	t6, a7, .LBB9_17
.LBB9_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_11 Depth 2
	mv	t6, n1
	add	n1, n1, a3
	slli	n1, n1, 3
	add	n2, a2, n1
	add	n3, a5, n1
	add	n1, a6, n1
	ld	n4, 0(n1)
	ld	n3, 0(n3)
	ld	n5, 0(n2)
	li	n1, 0
	add	n2, n4, t2
	add	n3, n3, t2
	add	n4, n5, t2
	j	.LBB9_11
.LBB9_10:                               #   in Loop: Header=BB9_11 Depth=2
	sh	n6, 0(n2)
	addi	n1, n1, 4
	addi	n2, n2, 2
	addi	n3, n3, 2
	addi	n4, n4, 2
	beq	n1, t5, .LBB9_8
.LBB9_11:                               #   Parent Loop BB9_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	n5, t4, n1
	lw	n8, 0(n5)
	add	n5, t0, n1
	lw	n7, 0(n5)
	srli	n9, n8, 1
	add	n5, t3, n1
	lw	n5, 0(n5)
	add	n6, t1, n1
	lw	n10, 1024(n6)
	subw	n9, n7, n9
	srli	n7, n5, 1
	subw	n7, n9, n7
	addw	n10, n10, n7
	sgtz	n11, n10
	neg	n11, n11
	and	n11, n11, n10
	mv	n10, a0
	blt	a0, n11, .LBB9_13
# %bb.12:                               #   in Loop: Header=BB9_11 Depth=2
	mv	n10, n11
.LBB9_13:                               #   in Loop: Header=BB9_11 Depth=2
	lw	n11, 0(n6)
	add	n8, n9, n8
	addw	n8, n8, n11
	sgtz	n9, n8
	neg	n9, n9
	and	n9, n9, n8
	sh	n10, 0(n4)
	mv	n8, a4
	blt	a4, n9, .LBB9_15
# %bb.14:                               #   in Loop: Header=BB9_11 Depth=2
	mv	n8, n9
.LBB9_15:                               #   in Loop: Header=BB9_11 Depth=2
	addi	n6, n6, 2047
	lw	n6, 1(n6)
	add	n5, n7, n5
	addw	n5, n5, n6
	sgtz	n6, n5
	neg	n6, n6
	and	n5, n6, n5
	sh	n8, 0(n3)
	mv	n6, a0
	blt	a0, n5, .LBB9_10
# %bb.16:                               #   in Loop: Header=BB9_11 Depth=2
	mv	n6, n5
	j	.LBB9_10
.LBB9_17:
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	j	.LBB9_19
.LBB9_18:
	li	s1, 0
.LBB9_19:
	lui	a0, %hi(input)
	ld	a2, %lo(input)(a0)
	addi	a0, a2, 2047
	lw	a0, 1089(a0)
	li	a3, 3
	bne	a0, a3, .LBB9_23
# %bb.20:
	lw	a0, 24(a1)
	li	s0, 1
	beq	a0, s0, .LBB9_22
# %bb.21:
	li	a1, -1
	mv	a0, s8
	call	compute_residue_b8block
	lui	a0, %hi(input)
	ld	a2, %lo(input)(a0)
	addi	a0, a2, 2047
	lw	a0, 1089(a0)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	li	a3, 3
	bne	a0, a3, .LBB9_23
.LBB9_22:
	lw	a0, 24(a1)
	bne	a0, s0, .LBB9_45
.LBB9_23:
	lui	a0, 22
	addiw	a0, a0, -928
	add	a4, a1, a0
	lw	a7, 152(a1)
	ld	a0, 0(a4)
	lui	a3, %hi(imgY_org)
	ld	t0, %lo(imgY_org)(a3)
	lui	a3, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a3)
	lw	n5, 172(a1)
	lui	a5, 2
	addiw	a5, a5, -1768
	add	a3, a3, a5
	ld	a6, 0(a3)
	lw	a4, 1388(a4)
	lw	t1, 156(a1)
	ld	n8, 144(sp)                     # 8-byte Folded Reload
	addiw	a5, n8, 8
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	addw	t2, a7, a1
	addiw	a1, t2, 8
	beqz	a4, .LBB9_38
# %bb.24:
	lui	a2, %hi(imgUV_org)
	ld	a2, %lo(imgUV_org)(a2)
	ld	a3, 40(a3)
	ld	a7, 0(a2)
	ld	a4, 0(a3)
	ld	n4, 8(a2)
	ld	t3, 8(a3)
	addi	a2, t2, 1
	addi	t4, t2, 2
	addi	t5, t2, 3
	addi	t6, t2, 4
	addi	n1, t2, 5
	addi	n2, t2, 6
	addi	n3, t2, 7
	add	n6, t1, n8
	slli	n6, n6, 3
	add	n7, n5, n8
	addi	n5, n8, 1
	slli	n7, n7, 3
	blt	a5, n5, .LBB9_26
# %bb.25:
	mv	n5, a5
.LBB9_26:
	li	s3, 0
	add	a3, t3, n6
	add	a4, a4, n6
	add	a5, a6, n6
	add	a6, n4, n7
	add	a7, a7, n7
	add	t0, t0, n7
	add	t1, n5, t1
	slli	t1, t1, 3
	add	t1, t3, t1
	slli	t2, t2, 1
	slli	t3, a2, 1
	slli	t4, t4, 1
	slli	t5, t5, 1
	slli	t6, t6, 1
	slli	n1, n1, 1
	slli	n2, n2, 1
	slli	n3, n3, 1
	j	.LBB9_28
.LBB9_27:                               #   in Loop: Header=BB9_28 Depth=1
	addi	a3, a3, 8
	addi	a4, a4, 8
	addi	a5, a5, 8
	addi	a6, a6, 8
	addi	a7, a7, 8
	addi	t0, t0, 8
	beq	a3, t1, .LBB9_30
.LBB9_28:                               # =>This Inner Loop Header: Depth=1
	ld	n9, 0(t0)
	ld	n8, 0(a5)
	ld	n7, 0(a7)
	ld	n6, 0(a4)
	ld	n5, 0(a6)
	ld	n4, 0(a3)
	add	n10, n9, t2
	lhu	n10, 0(n10)
	add	n11, n8, t2
	lhu	n11, 0(n11)
	add	n12, n7, t2
	lhu	n12, 0(n12)
	add	n13, n6, t2
	lhu	n13, 0(n13)
	add	n14, n5, t2
	lhu	n14, 0(n14)
	add	n15, n4, t2
	lhu	n15, 0(n15)
	sub	n10, n10, n11
	sub	n11, n12, n13
	sub	n12, n14, n15
	slli	n10, n10, 2
	add	n10, a0, n10
	lw	n10, 0(n10)
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	slli	n12, n12, 2
	add	n12, a0, n12
	lw	n12, 0(n12)
	add	n10, s3, n10
	add	n11, n11, n12
	add	s3, n10, n11
	bge	a2, a1, .LBB9_27
# %bb.29:                               #   in Loop: Header=BB9_28 Depth=1
	add	n10, n9, t3
	lhu	n10, 0(n10)
	add	n11, n8, t3
	lhu	n11, 0(n11)
	sub	n10, n10, n11
	add	n11, n7, t3
	lhu	n11, 0(n11)
	add	n12, n6, t3
	lhu	n12, 0(n12)
	slli	n10, n10, 2
	add	n10, a0, n10
	lw	n10, 0(n10)
	sub	n11, n11, n12
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	add	n12, n5, t3
	lhu	n12, 0(n12)
	add	n13, n4, t3
	lhu	n13, 0(n13)
	add	n10, n10, n11
	sub	n11, n12, n13
	add	n12, n9, t4
	lhu	n12, 0(n12)
	add	n13, n8, t4
	lhu	n13, 0(n13)
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	sub	n12, n12, n13
	add	n13, n7, t4
	lhu	n13, 0(n13)
	add	n14, n6, t4
	lhu	n14, 0(n14)
	slli	n12, n12, 2
	add	n12, a0, n12
	lw	n12, 0(n12)
	sub	n13, n13, n14
	slli	n13, n13, 2
	add	n13, a0, n13
	lw	n13, 0(n13)
	add	n14, n5, t4
	lhu	n14, 0(n14)
	add	n15, n4, t4
	lhu	n15, 0(n15)
	add	n10, n10, n11
	add	n10, s3, n10
	add	n12, n12, n13
	sub	n11, n14, n15
	add	n13, n9, t5
	lhu	n13, 0(n13)
	add	n14, n8, t5
	lhu	n14, 0(n14)
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	sub	n13, n13, n14
	slli	n13, n13, 2
	add	n13, a0, n13
	lw	n13, 0(n13)
	add	n14, n7, t5
	lhu	n14, 0(n14)
	add	n15, n6, t5
	lhu	n15, 0(n15)
	add	n11, n12, n11
	add	n11, n11, n13
	add	n10, n10, n11
	sub	n11, n14, n15
	add	n12, n5, t5
	lhu	n12, 0(n12)
	add	n13, n4, t5
	lhu	n13, 0(n13)
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	sub	n12, n12, n13
	add	n13, n9, t6
	lhu	n13, 0(n13)
	add	n14, n8, t6
	lhu	n14, 0(n14)
	slli	n12, n12, 2
	add	n12, a0, n12
	lw	n12, 0(n12)
	sub	n13, n13, n14
	add	n14, n7, t6
	lhu	n14, 0(n14)
	add	n15, n6, t6
	lhu	n15, 0(n15)
	slli	n13, n13, 2
	add	n13, a0, n13
	lw	n13, 0(n13)
	sub	n14, n14, n15
	slli	n14, n14, 2
	add	n14, a0, n14
	lw	n14, 0(n14)
	add	n15, n5, t6
	lhu	n15, 0(n15)
	add	n16, n4, t6
	lhu	n16, 0(n16)
	add	n11, n11, n12
	add	n11, n11, n13
	add	n11, n11, n14
	sub	n12, n15, n16
	add	n13, n9, n1
	lhu	n13, 0(n13)
	add	n14, n8, n1
	lhu	n14, 0(n14)
	slli	n12, n12, 2
	add	n12, a0, n12
	lw	n12, 0(n12)
	sub	n13, n13, n14
	add	n14, n7, n1
	lhu	n14, 0(n14)
	add	n15, n6, n1
	lhu	n15, 0(n15)
	slli	n13, n13, 2
	add	n13, a0, n13
	lw	n13, 0(n13)
	sub	n14, n14, n15
	slli	n14, n14, 2
	add	n14, a0, n14
	lw	n14, 0(n14)
	add	n15, n5, n1
	lhu	n15, 0(n15)
	add	n16, n4, n1
	lhu	n16, 0(n16)
	add	n11, n11, n12
	add	n10, n10, n11
	add	n13, n13, n14
	sub	n11, n15, n16
	add	n12, n9, n2
	lhu	n12, 0(n12)
	add	n14, n8, n2
	lhu	n14, 0(n14)
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	sub	n12, n12, n14
	add	n14, n7, n2
	lhu	n14, 0(n14)
	add	n15, n6, n2
	lhu	n15, 0(n15)
	slli	n12, n12, 2
	add	n12, a0, n12
	lw	n12, 0(n12)
	sub	n14, n14, n15
	slli	n14, n14, 2
	add	n14, a0, n14
	lw	n14, 0(n14)
	add	n15, n5, n2
	lhu	n15, 0(n15)
	add	n16, n4, n2
	lhu	n16, 0(n16)
	add	n11, n13, n11
	add	n11, n11, n12
	add	n11, n11, n14
	sub	n12, n15, n16
	add	n9, n9, n3
	lhu	n9, 0(n9)
	add	n8, n8, n3
	lhu	n8, 0(n8)
	slli	n12, n12, 2
	add	n12, a0, n12
	lw	n12, 0(n12)
	sub	n8, n9, n8
	add	n7, n7, n3
	lhu	n7, 0(n7)
	add	n6, n6, n3
	lhu	n6, 0(n6)
	slli	n8, n8, 2
	add	n8, a0, n8
	lw	n8, 0(n8)
	sub	n6, n7, n6
	add	n5, n5, n3
	lhu	n5, 0(n5)
	add	n4, n4, n3
	lhu	n4, 0(n4)
	slli	n6, n6, 2
	add	n6, a0, n6
	lw	n6, 0(n6)
	sub	n4, n5, n4
	slli	n4, n4, 2
	add	n4, a0, n4
	lw	n4, 0(n4)
	add	n11, n11, n12
	add	n10, n10, n11
	add	n6, n8, n6
	add	n4, n6, n4
	add	s3, n10, n4
	j	.LBB9_27
.LBB9_30:
	mv	s11, s6
	lui	a0, %hi(input)
	ld	a2, %lo(input)(a0)
.LBB9_31:
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	ld	a0, 88(sp)                      # 8-byte Folded Reload
.LBB9_32:
	mv	s6, s5
	addi	a2, a2, 2047
	lw	a2, 937(a2)
	seqz	s2, s2
	beqz	a2, .LBB9_34
# %bb.33:
	li	a2, 48
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	mul	a2, a3, a2
	add	a2, a1, a2
	lui	a1, 8
	mv	s5, s9
	mv	s9, s1
	addiw	s1, a1, -1184
	add	s1, a2, s1
	sw	a0, 4(s1)
	li	a0, 2
	sw	a0, 0(s1)
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	lw	a0, 8(a0)
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	ld	a1, 24(a1)
	li	a2, 112
	mul	a0, a0, a2
	add	a1, a1, a0
	ld	a2, 104(a1)
	lui	a0, %hi(writeB8_typeInfo_CABAC)
	addi	a0, a0, %lo(writeB8_typeInfo_CABAC)
	sd	a0, 40(s1)
	mv	a0, s1
	jalr	a2
	lw	a0, 0(s10)
	lw	s0, 12(s1)
	mv	s1, s9
	mv	s9, s5
	addi	a0, a0, 1
	sw	a0, 0(s10)
	add	s0, s0, s1
	beqz	s2, .LBB9_35
	j	.LBB9_61
.LBB9_34:
	lw	a1, 188(sp)
	addi	a2, sp, 184
	addi	a3, sp, 188
	call	ue_linfo
	lw	s0, 184(sp)
	add	s0, s0, s1
	bnez	s2, .LBB9_61
.LBB9_35:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lui	s1, 22
	lui	s2, 16
	andi	a0, s4, -3
	addiw	s2, s2, -3
	bnez	a0, .LBB9_52
# %bb.36:
	add	a0, a1, s1
	lw	a0, -704(a0)
	li	a2, 2
	mv	s5, s6
	blt	a0, a2, .LBB9_53
# %bb.37:
	li	a3, 1
	mv	a0, s7
	mv	a1, s5
	mv	a2, s11
	ld	a4, 120(sp)                     # 8-byte Folded Reload
	call	writeReferenceFrame
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	s0, a0, s0
	j	.LBB9_53
.LBB9_38:
	addi	a3, t2, 1
	addi	t3, t2, 2
	addi	t4, t2, 3
	addi	t5, t2, 4
	addi	t6, t2, 5
	addi	n1, t2, 6
	addi	n2, t2, 7
	slli	a4, t1, 3
	slli	n3, n8, 3
	add	a4, a4, n3
	slli	n5, n5, 3
	addi	a7, n8, 1
	add	n3, n5, n3
	blt	a5, a7, .LBB9_40
# %bb.39:
	mv	a7, a5
.LBB9_40:
	mv	s11, s6
	li	s3, 0
	add	a4, a6, a4
	add	a5, t0, n3
	add	a7, a7, t1
	slli	a7, a7, 3
	add	a6, a6, a7
	slli	a7, t2, 1
	slli	t0, a3, 1
	slli	t1, t3, 1
	slli	t2, t4, 1
	slli	t3, t5, 1
	slli	t4, t6, 1
	slli	t5, n1, 1
	slli	t6, n2, 1
	j	.LBB9_42
.LBB9_41:                               #   in Loop: Header=BB9_42 Depth=1
	addi	a4, a4, 8
	addi	a5, a5, 8
	beq	a4, a6, .LBB9_31
.LBB9_42:                               # =>This Inner Loop Header: Depth=1
	ld	n2, 0(a5)
	ld	n1, 0(a4)
	add	n3, n2, a7
	lhu	n3, 0(n3)
	add	n4, n1, a7
	lhu	n4, 0(n4)
	sub	n3, n3, n4
	slli	n3, n3, 2
	add	n3, a0, n3
	lw	n3, 0(n3)
	add	s3, s3, n3
	bge	a3, a1, .LBB9_41
# %bb.43:                               #   in Loop: Header=BB9_42 Depth=1
	add	n3, n2, t0
	lhu	n3, 0(n3)
	add	n4, n1, t0
	lhu	n4, 0(n4)
	sub	n3, n3, n4
	add	n4, n2, t1
	lhu	n4, 0(n4)
	add	n5, n1, t1
	lhu	n5, 0(n5)
	slli	n3, n3, 2
	add	n3, a0, n3
	lw	n3, 0(n3)
	sub	n4, n4, n5
	slli	n4, n4, 2
	add	n4, a0, n4
	lw	n4, 0(n4)
	add	n5, n2, t2
	lhu	n5, 0(n5)
	add	n6, n1, t2
	lhu	n6, 0(n6)
	add	n3, n3, n4
	add	n3, s3, n3
	sub	n4, n5, n6
	add	n5, n2, t3
	lhu	n5, 0(n5)
	add	n6, n1, t3
	lhu	n6, 0(n6)
	add	n7, n2, t4
	lhu	n7, 0(n7)
	add	n8, n1, t4
	lhu	n8, 0(n8)
	add	n9, n2, t5
	lhu	n9, 0(n9)
	add	n10, n1, t5
	lhu	n10, 0(n10)
	add	n2, n2, t6
	lhu	n2, 0(n2)
	add	n1, n1, t6
	lhu	n1, 0(n1)
	sub	n5, n5, n6
	sub	n6, n7, n8
	sub	n7, n9, n10
	sub	n1, n2, n1
	slli	n4, n4, 2
	add	n4, a0, n4
	lw	n2, 0(n4)
	slli	n5, n5, 2
	add	n5, a0, n5
	lw	n4, 0(n5)
	slli	n6, n6, 2
	add	n6, a0, n6
	lw	n5, 0(n6)
	slli	n7, n7, 2
	add	n7, a0, n7
	lw	n6, 0(n7)
	slli	n1, n1, 2
	add	n1, a0, n1
	lw	n1, 0(n1)
	add	n2, n2, n4
	add	n2, n2, n5
	add	n2, n3, n2
	add	n1, n6, n1
	add	s3, n2, n1
	j	.LBB9_41
.LBB9_44:
	lui	a0, %hi(.LCPI9_0)
	fld	fa0, %lo(.LCPI9_0)(a0)
	j	.LBB9_66
.LBB9_45:
	sd	s1, 160(sp)                     # 8-byte Folded Spill
	sd	s2, 40(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	addi	a0, a2, 2047
	lw	a0, 1529(a0)
	blez	a0, .LBB9_67
# %bb.46:
	li	s0, 0
	li	s6, 0
	lui	s1, %hi(img)
	lui	s2, 22
	lui	s3, %hi(imgY_org)
	lui	s4, %hi(decs)
	lui	s5, %hi(input)
	ld	s11, 144(sp)                    # 8-byte Folded Reload
.LBB9_47:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_50 Depth 2
	sext.w	a0, s0
	li	a1, 8
	mv	a2, s8
	mv	a3, s7
	ld	a4, 120(sp)                     # 8-byte Folded Reload
	call	decode_one_b8block
	ld	a0, %lo(img)(s1)
	lw	a1, 172(a0)
	addw	a1, a1, s11
	addiw	a3, a1, 7
	blt	a1, a3, .LBB9_49
# %bb.48:                               #   in Loop: Header=BB9_47 Depth=1
	mv	a3, a1
.LBB9_49:                               #   in Loop: Header=BB9_47 Depth=1
	lw	a2, 168(a0)
	ld	a4, %lo(decs)(s4)
	ld	a5, 152(sp)                     # 8-byte Folded Reload
	addw	a5, a2, a5
	add	a0, a0, s2
	ld	a2, 8(a4)
	ld	a0, -928(a0)
	ld	a4, %lo(imgY_org)(s3)
	slli	a6, s0, 3
	add	a2, a2, a6
	ld	a6, 0(a2)
	addi	a7, a5, 1
	addi	t0, a5, 2
	addi	t1, a5, 3
	addi	t2, a5, 4
	addi	t3, a5, 5
	addi	t4, a5, 6
	addi	t5, a5, 7
	slli	a2, a1, 3
	add	a1, a6, a2
	add	a2, a4, a2
	slli	a3, a3, 3
	add	a3, a6, a3
	addi	a3, a3, 8
	slli	a4, a5, 1
	slli	a5, a7, 1
	slli	a6, t0, 1
	slli	a7, t1, 1
	slli	t0, t2, 1
	slli	t1, t3, 1
	slli	t2, t4, 1
	slli	t3, t5, 1
.LBB9_50:                               #   Parent Loop BB9_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t4, 0(a2)
	ld	t5, 0(a1)
	add	t6, t4, a4
	lhu	t6, 0(t6)
	add	n1, t5, a4
	lhu	n1, 0(n1)
	sub	t6, t6, n1
	add	n1, t4, a5
	lhu	n1, 0(n1)
	add	n2, t5, a5
	lhu	n2, 0(n2)
	slli	t6, t6, 2
	add	t6, a0, t6
	lw	t6, 0(t6)
	sub	n1, n1, n2
	add	n2, t4, a6
	lhu	n2, 0(n2)
	add	n3, t5, a6
	lhu	n3, 0(n3)
	slli	n1, n1, 2
	add	n1, a0, n1
	lw	n1, 0(n1)
	sub	n2, n2, n3
	slli	n2, n2, 2
	add	n2, a0, n2
	lw	n2, 0(n2)
	add	n3, t4, a7
	lhu	n3, 0(n3)
	add	n4, t5, a7
	lhu	n4, 0(n4)
	add	t6, s6, t6
	add	n1, n1, n2
	add	t6, t6, n1
	sub	n1, n3, n4
	add	n2, t4, t0
	lhu	n2, 0(n2)
	add	n3, t5, t0
	lhu	n3, 0(n3)
	add	n4, t4, t1
	lhu	n4, 0(n4)
	add	n5, t5, t1
	lhu	n5, 0(n5)
	add	n6, t4, t2
	lhu	n6, 0(n6)
	add	n7, t5, t2
	lhu	n7, 0(n7)
	add	t4, t4, t3
	lhu	t4, 0(t4)
	add	t5, t5, t3
	lhu	t5, 0(t5)
	sub	n2, n2, n3
	sub	n3, n4, n5
	sub	n4, n6, n7
	sub	t4, t4, t5
	slli	n1, n1, 2
	add	n1, a0, n1
	lw	t5, 0(n1)
	slli	n2, n2, 2
	add	n2, a0, n2
	lw	n1, 0(n2)
	slli	n3, n3, 2
	add	n3, a0, n3
	lw	n2, 0(n3)
	slli	n4, n4, 2
	add	n4, a0, n4
	lw	n3, 0(n4)
	slli	t4, t4, 2
	add	t4, a0, t4
	lw	t4, 0(t4)
	add	t5, t5, n1
	add	t5, t5, n2
	add	t5, t6, t5
	add	t4, n3, t4
	add	s6, t5, t4
	addi	a1, a1, 8
	addi	a2, a2, 8
	bne	a1, a3, .LBB9_50
# %bb.51:                               #   in Loop: Header=BB9_47 Depth=1
	ld	a2, %lo(input)(s5)
	addi	a0, a2, 2047
	lw	a0, 1529(a0)
	addi	s0, s0, 1
	blt	s0, a0, .LBB9_47
	j	.LBB9_68
.LBB9_52:
	mv	s5, s6
.LBB9_53:
	add	s1, a1, s1
	lw	a0, -700(s1)
	li	a2, 2
	and	s1, s4, s2
	blt	a0, a2, .LBB9_57
# %bb.54:
	addi	a0, s4, -1
	slli	a0, a0, 48
	srli	a2, a0, 48
	li	a0, 1
	bltu	a0, a2, .LBB9_57
# %bb.55:
	lw	a1, 24(a1)
	bne	a1, a0, .LBB9_57
# %bb.56:
	mv	a0, s7
	mv	a1, s5
	mv	a2, s11
	li	a3, 0
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	call	writeReferenceFrame
	add	s0, a0, s0
.LBB9_57:
	bnez	s1, .LBB9_59
# %bb.58:
	addi	a2, s5, 2
	addi	a3, s11, 2
	mv	a0, s5
	mv	a1, s11
	ld	a4, 120(sp)                     # 8-byte Folded Reload
	li	a5, 0
	mv	a6, s7
	call	writeMotionVector8x8
	add	s0, a0, s0
.LBB9_59:
	addi	a0, s4, -1
	slli	a0, a0, 48
	srli	a0, a0, 48
	li	a1, 1
	bltu	a1, a0, .LBB9_61
# %bb.60:
	addi	a2, s5, 2
	addi	a3, s11, 2
	li	a5, 1
	mv	a0, s5
	mv	a1, s11
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	mv	a6, s7
	call	writeMotionVector8x8
	add	s0, a0, s0
.LBB9_61:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	li	a1, 1
	bne	a0, a1, .LBB9_63
# %bb.62:
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	lw	a0, 44(a0)
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	ld	a1, 24(a1)
	li	a2, 112
	mul	a0, a0, a2
	add	a0, a1, a0
	addi	s1, a0, 8
	mv	a0, s1
	call	arienco_bits_written
	lw	a1, 0(s9)
	lui	a2, %hi(cbp8x8)
	lw	a2, %lo(cbp8x8)(a2)
	sw	a0, 184(sp)
	sgtz	a1, a1
	li	a4, 1
	mv	a0, s8
	mv	a3, s10
	mv	a5, s1
	call	writeCBP_BIT_CABAC
	mv	a0, s1
	call	arienco_bits_written
	lw	a1, 184(sp)
	subw	a0, a0, a1
	sw	a0, 184(sp)
	add	s0, a0, s0
.LBB9_63:
	lw	a0, 0(s9)
	beqz	a0, .LBB9_65
# %bb.64:
	lw	a2, 468(s10)
	mv	a0, s8
	mv	a1, s7
	call	writeLumaCoeff8x8
	add	s0, a0, s0
.LBB9_65:
	fcvt.d.l	fa5, s3
	fcvt.d.w	fa4, s0
	fmadd.d	fa0, fs0, fa4, fa5
.LBB9_66:
	ld	ra, 296(sp)                     # 8-byte Folded Reload
	ld	s0, 288(sp)                     # 8-byte Folded Reload
	ld	s1, 280(sp)                     # 8-byte Folded Reload
	ld	s2, 272(sp)                     # 8-byte Folded Reload
	ld	s3, 264(sp)                     # 8-byte Folded Reload
	ld	s4, 256(sp)                     # 8-byte Folded Reload
	ld	s5, 248(sp)                     # 8-byte Folded Reload
	ld	s6, 240(sp)                     # 8-byte Folded Reload
	ld	s7, 232(sp)                     # 8-byte Folded Reload
	ld	s8, 224(sp)                     # 8-byte Folded Reload
	ld	s9, 216(sp)                     # 8-byte Folded Reload
	ld	s10, 208(sp)                    # 8-byte Folded Reload
	ld	s11, 200(sp)                    # 8-byte Folded Reload
	fld	fs0, 192(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 304
	ret
.LBB9_67:
	li	s6, 0
.LBB9_68:
	div	s3, s6, a0
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s11, 48(sp)                     # 8-byte Folded Reload
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	ld	s1, 160(sp)                     # 8-byte Folded Reload
	j	.LBB9_32
.Lfunc_end9:
	.size	RDCost_for_8x8blocks, .Lfunc_end9-RDCost_for_8x8blocks
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	I16Offset                       # -- Begin function I16Offset
	.p2align	2
	.type	I16Offset,@function
I16Offset:                              # @I16Offset
# %bb.0:
	andi	a3, a0, 15
	li	a2, 1
	beqz	a3, .LBB10_2
# %bb.1:
	li	a2, 13
.LBB10_2:
	srli	a0, a0, 2
	andi	a0, a0, 12
	add	a1, a1, a2
	addw	a0, a0, a1
	ret
.Lfunc_end10:
	.size	I16Offset, .Lfunc_end10-I16Offset
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SetModesAndRefframeForBlocks    # -- Begin function SetModesAndRefframeForBlocks
	.p2align	2
	.type	SetModesAndRefframeForBlocks,@function
SetModesAndRefframeForBlocks:           # @SetModesAndRefframeForBlocks
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	a4, %lo(img)(a1)
	lui	a1, 8
	add	a1, a4, a1
	lw	a2, 12(a4)
	ld	a1, -1192(a1)
	li	a3, 528
	mul	a2, a2, a3
	add	a1, a1, a2
	lw	a2, 24(a4)
	sw	a0, 72(a1)
	li	a3, 1
	addi	a5, a1, 476
	bne	a0, a3, .LBB11_25
# %bb.1:
	lui	a3, 22
	addiw	a3, a3, -750
	add	a3, a4, a3
	lh	a3, 0(a3)
	sh	a3, 476(a1)
.LBB11_2:
	slli	a3, a0, 3
	lui	a6, %hi(best8x8pdir)
	addi	a6, a6, %lo(best8x8pdir)
	add	a3, a6, a3
	lh	a6, 0(a3)
	sw	a0, 376(a1)
	lh	a7, 2(a3)
	sw	a6, 392(a1)
	sw	a0, 380(a1)
	lh	a6, 4(a3)
	sw	a7, 396(a1)
	sw	a0, 384(a1)
	lh	a3, 6(a3)
	sw	a6, 400(a1)
	sw	a0, 388(a1)
.LBB11_3:
	li	a6, 404
.LBB11_4:
	add	a6, a1, a6
	sw	a3, 0(a6)
	li	a6, 1
	lui	a3, %hi(best8x8fwref)
	addi	a3, a3, %lo(best8x8fwref)
	bne	a2, a6, .LBB11_29
# %bb.5:
	li	a4, 0
	lui	a7, %hi(img)
	li	t0, 8
	lui	t1, %hi(best8x8mode)
	addi	t1, t1, %lo(best8x8mode)
	lui	t2, %hi(direct_ref_idx)
	lui	t3, %hi(enc_picture)
	lui	t4, 2
	li	t5, 4
	slli	n2, a0, 3
	lui	t6, %hi(best8x8pdir)
	addi	t6, t6, %lo(best8x8pdir)
	add	t6, t6, n2
	li	n1, 2
	add	a3, a3, n2
	lui	n3, %hi(best8x8bwref)
	addi	n3, n3, %lo(best8x8bwref)
	add	n2, n3, n2
	j	.LBB11_7
.LBB11_6:                               #   in Loop: Header=BB11_7 Depth=1
	addiw	a4, a4, 1
	beq	a4, t5, .LBB11_78
.LBB11_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_10 Depth 2
	ld	n3, %lo(img)(a7)
	lw	n4, 148(n3)
	li	n3, 0
	addw	n5, n4, a4
	andi	n4, a4, 2
	slli	n5, n5, 3
	j	.LBB11_10
.LBB11_8:                               #   in Loop: Header=BB11_10 Depth=2
	add	n8, n2, n8
	lbu	n7, 0(n8)
.LBB11_9:                               #   in Loop: Header=BB11_10 Depth=2
	ld	n8, %lo(enc_picture)(t3)
	add	n8, n8, t4
	ld	n8, -1712(n8)
	ld	n8, 8(n8)
	add	n8, n8, n5
	ld	n8, 0(n8)
	add	n6, n8, n6
	addiw	n3, n3, 1
	sb	n7, 0(n6)
	beq	n3, t5, .LBB11_6
.LBB11_10:                              #   Parent Loop BB11_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n6, %lo(img)(a7)
	lw	n6, 144(n6)
	addw	n6, n3, n6
	srliw	n7, n3, 1
	or	n8, n7, n4
	bne	a0, t0, .LBB11_13
# %bb.11:                               #   in Loop: Header=BB11_10 Depth=2
	slli	n7, n8, 1
	add	n7, t1, n7
	lhu	n7, 0(n7)
	bnez	n7, .LBB11_18
# %bb.12:                               #   in Loop: Header=BB11_10 Depth=2
	ld	n7, %lo(direct_ref_idx)(t2)
	ld	n8, %lo(enc_picture)(t3)
	ld	n7, 0(n7)
	add	n8, n8, t4
	ld	n8, -1712(n8)
	add	n7, n7, n5
	ld	n7, 0(n7)
	ld	n8, 0(n8)
	add	n7, n7, n6
	add	n8, n8, n5
	ld	n8, 0(n8)
	lbu	n7, 0(n7)
	add	n8, n8, n6
	sb	n7, 0(n8)
	ld	n7, %lo(direct_ref_idx)(t2)
	ld	n7, 8(n7)
	add	n7, n7, n5
	ld	n7, 0(n7)
	add	n7, n7, n6
	lbu	n7, 0(n7)
	j	.LBB11_9
.LBB11_13:                              #   in Loop: Header=BB11_10 Depth=2
	bne	a0, a6, .LBB11_18
# %bb.14:                               #   in Loop: Header=BB11_10 Depth=2
	lhu	n7, 0(a5)
	beqz	n7, .LBB11_18
# %bb.15:                               #   in Loop: Header=BB11_10 Depth=2
	slli	n7, n8, 1
	add	n7, t6, n7
	lhu	n7, 0(n7)
	ori	n9, n7, 2
	bne	n9, n1, .LBB11_18
# %bb.16:                               #   in Loop: Header=BB11_10 Depth=2
	addi	n7, n7, -1
	bltu	a6, n7, .LBB11_18
# %bb.17:                               #   in Loop: Header=BB11_10 Depth=2
	ld	n7, %lo(enc_picture)(t3)
	add	n7, n7, t4
	ld	n7, -1712(n7)
	ld	n7, 0(n7)
	add	n7, n7, n5
	ld	n8, 0(n7)
	li	n7, 0
	add	n8, n8, n6
	sb	zero, 0(n8)
	j	.LBB11_9
.LBB11_18:                              #   in Loop: Header=BB11_10 Depth=2
	slli	n8, n8, 1
	add	n9, t6, n8
	lhu	n10, 0(n9)
	li	n7, 255
	ori	n11, n10, 2
	li	n10, 255
	bne	n11, n1, .LBB11_22
# %bb.19:                               #   in Loop: Header=BB11_10 Depth=2
	bne	a0, t0, .LBB11_21
# %bb.20:                               #   in Loop: Header=BB11_10 Depth=2
	add	n10, t1, n8
	lhu	n11, 0(n10)
	li	n10, 255
	beqz	n11, .LBB11_22
.LBB11_21:                              #   in Loop: Header=BB11_10 Depth=2
	add	n10, a3, n8
	lbu	n10, 0(n10)
.LBB11_22:                              #   in Loop: Header=BB11_10 Depth=2
	ld	n11, %lo(enc_picture)(t3)
	add	n11, n11, t4
	ld	n11, -1712(n11)
	ld	n11, 0(n11)
	add	n11, n11, n5
	ld	n11, 0(n11)
	add	n11, n11, n6
	sb	n10, 0(n11)
	lhu	n9, 0(n9)
	addi	n9, n9, -1
	bltu	a6, n9, .LBB11_9
# %bb.23:                               #   in Loop: Header=BB11_10 Depth=2
	bne	a0, t0, .LBB11_8
# %bb.24:                               #   in Loop: Header=BB11_10 Depth=2
	add	n9, t1, n8
	lhu	n9, 0(n9)
	bnez	n9, .LBB11_8
	j	.LBB11_9
.LBB11_25:
	li	a3, 14
	sh	zero, 476(a1)
	bgeu	a3, a0, .LBB11_26
	j	.LBB11_81
.LBB11_26:
	slli	a3, a0, 2
	lui	a6, %hi(.LJTI11_0)
	addi	a6, a6, %lo(.LJTI11_0)
	add	a3, a3, a6
	lw	a3, 0(a3)
	jr	a3
.LBB11_27:
	lui	a0, %hi(direct_pdir)
	ld	a0, %lo(direct_pdir)(a0)
	li	a3, 1
	sw	zero, 376(a1)
	bne	a2, a3, .LBB11_75
# %bb.28:
	lw	a3, 148(a4)
	slli	a3, a3, 3
	add	a3, a0, a3
	lw	a5, 144(a4)
	ld	a3, 0(a3)
	slli	a5, a5, 1
	add	a3, a3, a5
	lh	a3, 0(a3)
	sw	a3, 392(a1)
	sw	zero, 380(a1)
	lw	a3, 148(a4)
	slli	a3, a3, 3
	add	a3, a0, a3
	lw	a5, 144(a4)
	ld	a3, 0(a3)
	slli	a5, a5, 1
	add	a3, a3, a5
	lh	a3, 4(a3)
	sw	a3, 396(a1)
	sw	zero, 384(a1)
	lw	a3, 148(a4)
	slli	a3, a3, 3
	add	a3, a0, a3
	lw	a5, 144(a4)
	ld	a3, 16(a3)
	slli	a5, a5, 1
	add	a3, a3, a5
	lh	a3, 0(a3)
	sw	a3, 400(a1)
	sw	zero, 388(a1)
	lw	a3, 148(a4)
	slli	a3, a3, 3
	add	a0, a0, a3
	lw	a3, 144(a4)
	ld	a0, 16(a0)
	slli	a3, a3, 1
	add	a0, a0, a3
	lh	a0, 4(a0)
	sw	a0, 404(a1)
	j	.LBB11_67
.LBB11_29:
	slli	a5, a0, 3
	lui	a2, %hi(best8x8pdir)
	addi	a2, a2, %lo(best8x8pdir)
	add	a5, a2, a5
	lhu	a7, 0(a5)
	lw	t3, 148(a4)
	lw	t2, 144(a4)
	li	a6, 255
	ori	a4, a7, 2
	li	a7, 2
	slli	a0, a0, 3
	li	t4, 255
	bne	a4, a7, .LBB11_31
# %bb.30:
	add	a4, a3, a0
	lbu	t4, 0(a4)
.LBB11_31:
	lui	t0, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(t0)
	lui	t1, 2
	add	a4, a4, t1
	ld	a4, -1712(a4)
	ld	t5, 0(a4)
	slli	a4, t3, 3
	add	t5, t5, a4
	ld	t3, 0(t5)
	add	t2, t3, t2
	sb	t4, 0(t2)
	lui	t2, %hi(img)
	ld	t3, %lo(img)(t2)
	lhu	t4, 0(a5)
	lw	t3, 144(t3)
	ori	t4, t4, 2
	bne	t4, a7, .LBB11_33
# %bb.32:
	add	a6, a3, a0
	lbu	a6, 0(a6)
.LBB11_33:
	ld	a7, %lo(enc_picture)(t0)
	add	a7, a7, t1
	ld	a7, -1712(a7)
	ld	a7, 0(a7)
	add	a7, a7, a4
	ld	a7, 0(a7)
	add	a7, a7, t3
	sb	a6, 1(a7)
	ld	a6, %lo(img)(t2)
	add	a2, a2, a0
	lhu	a7, 2(a2)
	lw	t2, 144(a6)
	li	a6, 255
	ori	t0, a7, 2
	li	a7, 2
	li	t3, 255
	bne	t0, a7, .LBB11_35
# %bb.34:
	add	t0, a3, a0
	lbu	t3, 2(t0)
.LBB11_35:
	lui	t0, %hi(enc_picture)
	ld	t4, %lo(enc_picture)(t0)
	add	t4, t4, t1
	ld	t4, -1712(t4)
	ld	t4, 0(t4)
	add	t4, t4, a4
	ld	t4, 0(t4)
	add	t2, t4, t2
	sb	t3, 2(t2)
	lui	t2, %hi(img)
	ld	t3, %lo(img)(t2)
	lhu	t4, 2(a2)
	lw	t3, 144(t3)
	ori	t4, t4, 2
	bne	t4, a7, .LBB11_37
# %bb.36:
	add	a6, a3, a0
	lbu	a6, 2(a6)
.LBB11_37:
	ld	a7, %lo(enc_picture)(t0)
	add	a7, a7, t1
	ld	a7, -1712(a7)
	ld	a7, 0(a7)
	add	a4, a7, a4
	ld	a4, 0(a4)
	add	a4, a4, t3
	sb	a6, 3(a4)
	ld	a6, %lo(img)(t2)
	lw	a4, 148(a6)
	lhu	a7, 0(a5)
	addiw	a4, a4, 1
	lw	t2, 144(a6)
	li	a6, 255
	ori	t0, a7, 2
	li	a7, 2
	li	t3, 255
	bne	t0, a7, .LBB11_39
# %bb.38:
	add	t0, a3, a0
	lbu	t3, 0(t0)
.LBB11_39:
	lui	t0, %hi(enc_picture)
	ld	t4, %lo(enc_picture)(t0)
	add	t4, t4, t1
	ld	t4, -1712(t4)
	ld	t4, 0(t4)
	slli	a4, a4, 3
	add	t4, t4, a4
	ld	t4, 0(t4)
	add	t2, t4, t2
	sb	t3, 0(t2)
	lui	t2, %hi(img)
	ld	t3, %lo(img)(t2)
	lhu	t4, 0(a5)
	lw	a5, 144(t3)
	ori	t3, t4, 2
	bne	t3, a7, .LBB11_41
# %bb.40:
	add	a6, a3, a0
	lbu	a6, 0(a6)
.LBB11_41:
	ld	a7, %lo(enc_picture)(t0)
	add	a7, a7, t1
	ld	a7, -1712(a7)
	ld	a7, 0(a7)
	add	a7, a7, a4
	ld	a7, 0(a7)
	add	a5, a7, a5
	sb	a6, 1(a5)
	ld	a5, %lo(img)(t2)
	lhu	a6, 2(a2)
	lw	t1, 144(a5)
	li	a5, 255
	ori	a7, a6, 2
	li	a6, 2
	li	t2, 255
	bne	a7, a6, .LBB11_43
# %bb.42:
	add	a7, a3, a0
	lbu	t2, 2(a7)
.LBB11_43:
	lui	a7, %hi(enc_picture)
	ld	t3, %lo(enc_picture)(a7)
	lui	t0, 2
	add	t3, t3, t0
	ld	t3, -1712(t3)
	ld	t3, 0(t3)
	add	t3, t3, a4
	ld	t3, 0(t3)
	add	t1, t3, t1
	sb	t2, 2(t1)
	lui	t1, %hi(img)
	ld	t2, %lo(img)(t1)
	lhu	t3, 2(a2)
	lw	t2, 144(t2)
	ori	t3, t3, 2
	bne	t3, a6, .LBB11_45
# %bb.44:
	add	a5, a3, a0
	lbu	a5, 2(a5)
.LBB11_45:
	ld	a6, %lo(enc_picture)(a7)
	add	a6, a6, t0
	ld	a6, -1712(a6)
	ld	a6, 0(a6)
	add	a4, a6, a4
	ld	a4, 0(a4)
	add	a4, a4, t2
	sb	a5, 3(a4)
	ld	a5, %lo(img)(t1)
	lw	a4, 148(a5)
	lhu	a6, 4(a2)
	addiw	a4, a4, 2
	lw	t1, 144(a5)
	li	a5, 255
	ori	a7, a6, 2
	li	a6, 2
	li	t2, 255
	bne	a7, a6, .LBB11_47
# %bb.46:
	add	a7, a3, a0
	lbu	t2, 4(a7)
.LBB11_47:
	lui	a7, %hi(enc_picture)
	ld	t3, %lo(enc_picture)(a7)
	add	t3, t3, t0
	ld	t3, -1712(t3)
	ld	t3, 0(t3)
	slli	a4, a4, 3
	add	t3, t3, a4
	ld	t3, 0(t3)
	add	t1, t3, t1
	sb	t2, 0(t1)
	lui	t1, %hi(img)
	ld	t2, %lo(img)(t1)
	lhu	t3, 4(a2)
	lw	t2, 144(t2)
	ori	t3, t3, 2
	bne	t3, a6, .LBB11_49
# %bb.48:
	add	a5, a3, a0
	lbu	a5, 4(a5)
.LBB11_49:
	ld	a6, %lo(enc_picture)(a7)
	add	a6, a6, t0
	ld	a6, -1712(a6)
	ld	a6, 0(a6)
	add	a6, a6, a4
	ld	a6, 0(a6)
	add	a6, a6, t2
	sb	a5, 1(a6)
	ld	a5, %lo(img)(t1)
	lhu	a6, 6(a2)
	lw	t1, 144(a5)
	li	a5, 255
	ori	a7, a6, 2
	li	a6, 2
	li	t2, 255
	bne	a7, a6, .LBB11_51
# %bb.50:
	add	a7, a3, a0
	lbu	t2, 6(a7)
.LBB11_51:
	lui	a7, %hi(enc_picture)
	ld	t3, %lo(enc_picture)(a7)
	add	t3, t3, t0
	ld	t3, -1712(t3)
	ld	t3, 0(t3)
	add	t3, t3, a4
	ld	t3, 0(t3)
	add	t1, t3, t1
	sb	t2, 2(t1)
	lui	t1, %hi(img)
	ld	t2, %lo(img)(t1)
	lhu	t3, 6(a2)
	lw	t2, 144(t2)
	ori	t3, t3, 2
	bne	t3, a6, .LBB11_53
# %bb.52:
	add	a5, a3, a0
	lbu	a5, 6(a5)
.LBB11_53:
	ld	a6, %lo(enc_picture)(a7)
	add	a6, a6, t0
	ld	a6, -1712(a6)
	ld	a6, 0(a6)
	add	a4, a6, a4
	ld	a4, 0(a4)
	add	a4, a4, t2
	sb	a5, 3(a4)
	ld	a5, %lo(img)(t1)
	lw	a4, 148(a5)
	lhu	a6, 4(a2)
	addiw	a4, a4, 3
	lw	t1, 144(a5)
	li	a5, 255
	ori	a7, a6, 2
	li	a6, 2
	li	t2, 255
	bne	a7, a6, .LBB11_55
# %bb.54:
	add	a7, a3, a0
	lbu	t2, 4(a7)
.LBB11_55:
	lui	a7, %hi(enc_picture)
	ld	t3, %lo(enc_picture)(a7)
	add	t3, t3, t0
	ld	t3, -1712(t3)
	ld	t3, 0(t3)
	slli	a4, a4, 3
	add	t3, t3, a4
	ld	t3, 0(t3)
	add	t1, t3, t1
	sb	t2, 0(t1)
	lui	t1, %hi(img)
	ld	t2, %lo(img)(t1)
	lhu	t3, 4(a2)
	lw	t2, 144(t2)
	ori	t3, t3, 2
	bne	t3, a6, .LBB11_57
# %bb.56:
	add	a5, a3, a0
	lbu	a5, 4(a5)
.LBB11_57:
	ld	a6, %lo(enc_picture)(a7)
	add	a6, a6, t0
	ld	a6, -1712(a6)
	ld	a6, 0(a6)
	add	a6, a6, a4
	ld	a6, 0(a6)
	add	a6, a6, t2
	sb	a5, 1(a6)
	ld	a5, %lo(img)(t1)
	lhu	a6, 6(a2)
	lw	t1, 144(a5)
	li	a5, 255
	ori	a7, a6, 2
	li	a6, 2
	li	t2, 255
	bne	a7, a6, .LBB11_59
# %bb.58:
	add	a7, a3, a0
	lbu	t2, 6(a7)
.LBB11_59:
	lui	a7, %hi(enc_picture)
	ld	t3, %lo(enc_picture)(a7)
	add	t3, t3, t0
	ld	t3, -1712(t3)
	ld	t3, 0(t3)
	add	t3, t3, a4
	ld	t3, 0(t3)
	add	t1, t3, t1
	sb	t2, 2(t1)
	lui	t1, %hi(img)
	ld	t1, %lo(img)(t1)
	lhu	t2, 6(a2)
	lw	a2, 144(t1)
	ori	t1, t2, 2
	bne	t1, a6, .LBB11_61
# %bb.60:
	add	a0, a3, a0
	lbu	a5, 6(a0)
.LBB11_61:
	ld	a0, %lo(enc_picture)(a7)
	add	a0, a0, t0
	ld	a0, -1712(a0)
	ld	a0, 0(a0)
	add	a0, a0, a4
	ld	a0, 0(a0)
	add	a0, a0, a2
	sb	a5, 3(a0)
	j	.LBB11_80
.LBB11_62:
	li	a3, 11
	sw	a3, 376(a1)
	li	a5, -1
	sw	a5, 392(a1)
	sw	a3, 380(a1)
	sw	a5, 396(a1)
	sw	a3, 384(a1)
	sw	a5, 400(a1)
	sw	a3, 388(a1)
	sw	a5, 404(a1)
	li	a3, 1
	beq	a2, a3, .LBB11_64
	j	.LBB11_72
.LBB11_63:
	sw	zero, 388(a1)
	sw	zero, 384(a1)
	sw	zero, 380(a1)
	sw	zero, 376(a1)
	li	a3, -1
	sw	a3, 392(a1)
	sw	a3, 396(a1)
	sw	a3, 400(a1)
	sw	a3, 404(a1)
	li	a3, 1
	bne	a2, a3, .LBB11_72
.LBB11_64:
	beqz	a0, .LBB11_67
# %bb.65:
	lw	a3, 148(a4)
	addi	a0, a3, -1
	slli	a3, a3, 3
	lui	a5, %hi(enc_picture)
	lui	a6, 2
	li	a7, -1
	lui	t0, %hi(img)
.LBB11_66:                              # =>This Inner Loop Header: Depth=1
	ld	t1, %lo(enc_picture)(a5)
	add	t1, t1, a6
	ld	t1, -1712(t1)
	ld	t1, 0(t1)
	add	t1, t1, a3
	ld	t1, 0(t1)
	lw	a4, 144(a4)
	add	a4, t1, a4
	sb	a7, 3(a4)
	sb	a7, 2(a4)
	sb	a7, 1(a4)
	sb	a7, 0(a4)
	ld	a4, %lo(enc_picture)(a5)
	add	a4, a4, a6
	ld	a4, -1712(a4)
	ld	a4, 8(a4)
	ld	t1, %lo(img)(t0)
	add	a4, a4, a3
	ld	a4, 0(a4)
	lw	t1, 144(t1)
	add	a4, a4, t1
	sb	a7, 3(a4)
	sb	a7, 2(a4)
	sb	a7, 1(a4)
	sb	a7, 0(a4)
	ld	a4, %lo(img)(t0)
	lw	t1, 148(a4)
	addiw	t1, t1, 3
	addi	a0, a0, 1
	addi	a3, a3, 8
	blt	a0, t1, .LBB11_66
	j	.LBB11_78
.LBB11_67:
	lw	a3, 148(a4)
	addi	a0, a3, -1
	slli	a3, a3, 3
	lui	a5, %hi(enc_picture)
	lui	a6, 2
	lui	a7, %hi(direct_ref_idx)
	lui	t0, %hi(img)
.LBB11_68:                              # =>This Inner Loop Header: Depth=1
	ld	t1, %lo(enc_picture)(a5)
	add	t1, t1, a6
	ld	t1, -1712(t1)
	ld	t2, %lo(direct_ref_idx)(a7)
	ld	t1, 0(t1)
	ld	t2, 0(t2)
	add	t1, t1, a3
	ld	t1, 0(t1)
	lw	a4, 144(a4)
	add	t2, t2, a3
	ld	t2, 0(t2)
	add	t1, t1, a4
	add	a4, t2, a4
	lb	t2, 3(a4)
	lbu	t3, 2(a4)
	lbu	t4, 1(a4)
	lbu	a4, 0(a4)
	sb	t2, 3(t1)
	sb	t3, 2(t1)
	sb	t4, 1(t1)
	sb	a4, 0(t1)
	ld	a4, %lo(enc_picture)(a5)
	add	a4, a4, a6
	ld	a4, -1712(a4)
	ld	t1, %lo(direct_ref_idx)(a7)
	ld	a4, 8(a4)
	ld	t2, %lo(img)(t0)
	ld	t1, 8(t1)
	add	a4, a4, a3
	ld	a4, 0(a4)
	lw	t2, 144(t2)
	add	t1, t1, a3
	ld	t1, 0(t1)
	add	a4, a4, t2
	add	t1, t1, t2
	lb	t2, 3(t1)
	lbu	t3, 2(t1)
	lbu	t4, 1(t1)
	lbu	t1, 0(t1)
	sb	t2, 3(a4)
	sb	t3, 2(a4)
	sb	t4, 1(a4)
	sb	t1, 0(a4)
	ld	a4, %lo(img)(t0)
	lw	t1, 148(a4)
	addiw	t1, t1, 3
	addi	a0, a0, 1
	addi	a3, a3, 8
	blt	a0, t1, .LBB11_68
	j	.LBB11_78
.LBB11_69:
	li	a3, 0
	li	a6, 14
	sw	a6, 376(a1)
	li	a7, -1
	sw	a7, 392(a1)
	sw	a6, 380(a1)
	sw	a7, 396(a1)
	sw	a6, 384(a1)
	sw	a7, 400(a1)
	sw	a6, 388(a1)
	sw	a7, 404(a1)
	li	a6, 468
	j	.LBB11_4
.LBB11_70:
	lui	a3, %hi(best8x8mode)
	addi	a6, a3, %lo(best8x8mode)
	lh	a3, %lo(best8x8mode)(a3)
	lui	a7, %hi(best8x8pdir)
	addi	a7, a7, %lo(best8x8pdir)
	lh	t0, 64(a7)
	lh	t1, 2(a6)
	sw	a3, 376(a1)
	lh	a3, 66(a7)
	sw	t0, 392(a1)
	sw	t1, 380(a1)
	lh	t0, 4(a6)
	sw	a3, 396(a1)
	lh	t1, 68(a7)
	lh	a6, 6(a6)
	sw	t0, 384(a1)
	lh	a3, 70(a7)
	sw	t1, 400(a1)
	sw	a6, 388(a1)
	j	.LBB11_3
.LBB11_71:
	li	a3, 13
	sw	a3, 376(a1)
	li	a5, -1
	sw	a5, 392(a1)
	sw	a3, 380(a1)
	sw	a5, 396(a1)
	sw	a3, 384(a1)
	sw	a5, 400(a1)
	sw	a3, 388(a1)
	sw	a5, 404(a1)
	li	a3, 1
	sw	a3, 468(a1)
	li	a3, 1
	beq	a2, a3, .LBB11_64
.LBB11_72:
	beqz	a0, .LBB11_76
# %bb.73:
	lw	a3, 148(a4)
	addi	a0, a3, -1
	slli	a3, a3, 3
	lui	a5, %hi(enc_picture)
	lui	a6, 2
	li	a7, -1
	lui	t0, %hi(img)
.LBB11_74:                              # =>This Inner Loop Header: Depth=1
	ld	t1, %lo(enc_picture)(a5)
	add	t1, t1, a6
	ld	t1, -1712(t1)
	ld	t1, 0(t1)
	add	t1, t1, a3
	ld	t1, 0(t1)
	lw	a4, 144(a4)
	add	a4, t1, a4
	sb	a7, 3(a4)
	sb	a7, 2(a4)
	sb	a7, 1(a4)
	sb	a7, 0(a4)
	ld	a4, %lo(img)(t0)
	lw	t1, 148(a4)
	addiw	t1, t1, 3
	addi	a0, a0, 1
	addi	a3, a3, 8
	blt	a0, t1, .LBB11_74
	j	.LBB11_78
.LBB11_75:
	sw	zero, 404(a1)
	sw	zero, 400(a1)
	sw	zero, 396(a1)
	sw	zero, 392(a1)
	sw	zero, 388(a1)
	sw	zero, 384(a1)
	sw	zero, 380(a1)
.LBB11_76:
	lw	a3, 148(a4)
	addi	a0, a3, -1
	slli	a3, a3, 3
	lui	a5, %hi(enc_picture)
	lui	a6, 2
	lui	a7, %hi(img)
.LBB11_77:                              # =>This Inner Loop Header: Depth=1
	ld	t0, %lo(enc_picture)(a5)
	add	t0, t0, a6
	ld	t0, -1712(t0)
	ld	t0, 0(t0)
	add	t0, t0, a3
	ld	t0, 0(t0)
	lw	a4, 144(a4)
	add	a4, t0, a4
	sb	zero, 3(a4)
	sb	zero, 2(a4)
	sb	zero, 1(a4)
	sb	zero, 0(a4)
	ld	a4, %lo(img)(a7)
	lw	t0, 148(a4)
	addiw	t0, t0, 3
	addi	a0, a0, 1
	addi	a3, a3, 8
	blt	a0, t0, .LBB11_77
.LBB11_78:
	li	a0, 1
	bne	a2, a0, .LBB11_80
# %bb.79:
	lui	a0, %hi(img)
	lui	a2, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a2)
	ld	a0, %lo(img)(a0)
	lui	a2, 2
	addiw	a2, a2, -1712
	add	a5, a3, a2
	ld	a6, 0(a5)
	lw	t4, 148(a0)
	lw	a2, 144(a0)
	ld	a4, 8(a6)
	ld	a0, 8(a5)
	lw	a1, 428(a1)
	addi	t0, a3, 24
	ld	a7, 0(a6)
	ld	a5, 0(a0)
	addiw	t1, a1, 1
	ld	a3, 8(a0)
	slli	t4, t4, 3
	add	a0, a4, t4
	ld	t6, 0(a0)
	add	a0, a7, t4
	ld	n1, 0(a0)
	add	a0, a5, t4
	ld	n2, 0(a0)
	add	a0, a3, t4
	ld	n3, 0(a0)
	add	a6, t6, a2
	add	a0, n1, a2
	lbu	t2, 0(a0)
	li	t3, 264
	mul	a0, a1, t3
	add	a0, t0, a0
	slli	t2, t2, 3
	add	t2, a0, t2
	ld	a1, 0(t2)
	lbu	t2, 0(a6)
	slli	a6, a2, 3
	add	t5, n2, a6
	sd	a1, 0(t5)
	mul	a1, t1, t3
	add	a1, t0, a1
	slli	t2, t2, 3
	add	t2, a1, t2
	ld	t0, 0(t2)
	add	t1, n3, a6
	sd	t0, 0(t1)
	addi	t0, a2, 1
	add	t1, n1, t0
	lbu	t1, 0(t1)
	add	t2, t6, t0
	slli	t1, t1, 3
	add	t1, a0, t1
	ld	t3, 0(t1)
	lbu	t2, 0(t2)
	slli	t1, t0, 3
	add	t5, n2, t1
	sd	t3, 0(t5)
	slli	t2, t2, 3
	add	t2, a1, t2
	ld	t2, 0(t2)
	add	t3, n3, t1
	sd	t2, 0(t3)
	addi	t2, a2, 2
	add	t3, n1, t2
	lbu	t3, 0(t3)
	add	t5, t6, t2
	slli	t3, t3, 3
	add	t3, a0, t3
	ld	n4, 0(t3)
	lbu	t5, 0(t5)
	slli	t3, t2, 3
	add	n5, n2, t3
	sd	n4, 0(n5)
	slli	t5, t5, 3
	add	t5, a1, t5
	ld	t5, 0(t5)
	add	n4, n3, t3
	sd	t5, 0(n4)
	addi	t5, a2, 3
	add	n1, n1, t5
	lbu	n1, 0(n1)
	add	t6, t6, t5
	slli	n1, n1, 3
	add	n1, a0, n1
	ld	n1, 0(n1)
	lbu	n4, 0(t6)
	slli	t6, t5, 3
	add	n2, n2, t6
	sd	n1, 0(n2)
	slli	n4, n4, 3
	add	n4, a1, n4
	ld	n1, 0(n4)
	add	n3, n3, t6
	sd	n1, 0(n3)
	addi	n1, t4, 8
	add	n2, a7, n1
	ld	n2, 0(n2)
	add	n3, a4, n1
	ld	n3, 0(n3)
	add	n4, a5, n1
	add	n5, n2, a2
	lbu	n5, 0(n5)
	ld	n4, 0(n4)
	add	n1, a3, n1
	add	n6, n3, a2
	slli	n5, n5, 3
	add	n5, a0, n5
	ld	n5, 0(n5)
	lbu	n6, 0(n6)
	ld	n1, 0(n1)
	add	n7, n4, a6
	sd	n5, 0(n7)
	slli	n6, n6, 3
	add	n6, a1, n6
	ld	n5, 0(n6)
	add	n6, n1, a6
	sd	n5, 0(n6)
	add	n5, n2, t0
	lbu	n5, 0(n5)
	add	n6, n3, t0
	slli	n5, n5, 3
	add	n5, a0, n5
	ld	n5, 0(n5)
	lbu	n6, 0(n6)
	add	n7, n4, t1
	sd	n5, 0(n7)
	slli	n6, n6, 3
	add	n6, a1, n6
	ld	n5, 0(n6)
	add	n6, n1, t1
	sd	n5, 0(n6)
	add	n5, n2, t2
	lbu	n5, 0(n5)
	add	n6, n3, t2
	slli	n5, n5, 3
	add	n5, a0, n5
	ld	n5, 0(n5)
	lbu	n6, 0(n6)
	add	n7, n4, t3
	sd	n5, 0(n7)
	slli	n6, n6, 3
	add	n6, a1, n6
	ld	n5, 0(n6)
	add	n6, n1, t3
	sd	n5, 0(n6)
	add	n2, n2, t5
	lbu	n2, 0(n2)
	add	n3, n3, t5
	slli	n2, n2, 3
	add	n2, a0, n2
	ld	n2, 0(n2)
	lbu	n3, 0(n3)
	add	n4, n4, t6
	sd	n2, 0(n4)
	slli	n3, n3, 3
	add	n3, a1, n3
	ld	n2, 0(n3)
	add	n1, n1, t6
	sd	n2, 0(n1)
	addi	n1, t4, 16
	add	n2, a7, n1
	ld	n2, 0(n2)
	add	n3, a4, n1
	ld	n3, 0(n3)
	add	n4, a5, n1
	add	n5, n2, a2
	lbu	n5, 0(n5)
	ld	n4, 0(n4)
	add	n1, a3, n1
	add	n6, n3, a2
	slli	n5, n5, 3
	add	n5, a0, n5
	ld	n5, 0(n5)
	lbu	n6, 0(n6)
	ld	n1, 0(n1)
	add	n7, n4, a6
	sd	n5, 0(n7)
	slli	n6, n6, 3
	add	n6, a1, n6
	ld	n5, 0(n6)
	add	n6, n1, a6
	sd	n5, 0(n6)
	add	n5, n2, t0
	lbu	n5, 0(n5)
	add	n6, n3, t0
	slli	n5, n5, 3
	add	n5, a0, n5
	ld	n5, 0(n5)
	lbu	n6, 0(n6)
	add	n7, n4, t1
	sd	n5, 0(n7)
	slli	n6, n6, 3
	add	n6, a1, n6
	ld	n5, 0(n6)
	add	n6, n1, t1
	sd	n5, 0(n6)
	add	n5, n2, t2
	lbu	n5, 0(n5)
	add	n6, n3, t2
	slli	n5, n5, 3
	add	n5, a0, n5
	ld	n5, 0(n5)
	lbu	n6, 0(n6)
	add	n7, n4, t3
	sd	n5, 0(n7)
	slli	n6, n6, 3
	add	n6, a1, n6
	ld	n5, 0(n6)
	add	n6, n1, t3
	sd	n5, 0(n6)
	add	n2, n2, t5
	lbu	n2, 0(n2)
	add	n3, n3, t5
	slli	n2, n2, 3
	add	n2, a0, n2
	ld	n2, 0(n2)
	lbu	n3, 0(n3)
	add	n4, n4, t6
	sd	n2, 0(n4)
	slli	n3, n3, 3
	add	n3, a1, n3
	ld	n2, 0(n3)
	add	n1, n1, t6
	sd	n2, 0(n1)
	addi	t4, t4, 24
	add	a7, a7, t4
	ld	a7, 0(a7)
	add	a4, a4, t4
	ld	a4, 0(a4)
	add	a5, a5, t4
	add	n1, a7, a2
	lbu	n1, 0(n1)
	ld	a5, 0(a5)
	add	a3, a3, t4
	add	a2, a4, a2
	slli	n1, n1, 3
	add	n1, a0, n1
	ld	t4, 0(n1)
	lbu	a2, 0(a2)
	ld	a3, 0(a3)
	add	n1, a5, a6
	sd	t4, 0(n1)
	slli	a2, a2, 3
	add	a2, a1, a2
	ld	a2, 0(a2)
	add	a6, a3, a6
	sd	a2, 0(a6)
	add	a2, a7, t0
	lbu	a2, 0(a2)
	add	t0, a4, t0
	slli	a2, a2, 3
	add	a2, a0, a2
	ld	a2, 0(a2)
	lbu	a6, 0(t0)
	add	t0, a5, t1
	sd	a2, 0(t0)
	slli	a6, a6, 3
	add	a6, a1, a6
	ld	a2, 0(a6)
	add	t1, a3, t1
	sd	a2, 0(t1)
	add	a2, a7, t2
	lbu	a2, 0(a2)
	add	t2, a4, t2
	slli	a2, a2, 3
	add	a2, a0, a2
	ld	a2, 0(a2)
	lbu	a6, 0(t2)
	add	t0, a5, t3
	sd	a2, 0(t0)
	slli	a6, a6, 3
	add	a6, a1, a6
	ld	a2, 0(a6)
	add	t3, a3, t3
	sd	a2, 0(t3)
	add	a7, a7, t5
	lbu	a2, 0(a7)
	add	a4, a4, t5
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	lbu	a2, 0(a4)
	add	a5, a5, t6
	sd	a0, 0(a5)
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a0, 0(a1)
	add	a3, a3, t6
	sd	a0, 0(a3)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB11_80:
	lui	a0, %hi(img)
	lui	a2, %hi(enc_picture)
	ld	a5, %lo(enc_picture)(a2)
	ld	a0, %lo(img)(a0)
	lui	a2, 2
	addiw	a2, a2, -1712
	add	a3, a5, a2
	ld	a4, 0(a3)
	lw	a6, 148(a0)
	lw	a2, 144(a0)
	lw	a0, 428(a1)
	ld	a1, 0(a4)
	li	a7, 264
	ld	a3, 8(a3)
	slli	a4, a6, 3
	add	a6, a1, a4
	ld	a6, 0(a6)
	mul	a0, a0, a7
	ld	a3, 0(a3)
	add	a0, a5, a0
	add	a5, a6, a2
	lbu	a5, 0(a5)
	add	a7, a3, a4
	ld	a7, 0(a7)
	addi	a0, a0, 24
	slli	a5, a5, 3
	add	a5, a0, a5
	ld	t0, 0(a5)
	slli	a5, a2, 3
	add	t1, a7, a5
	sd	t0, 0(t1)
	addi	t0, a2, 1
	add	t1, a6, t0
	lbu	t1, 0(t1)
	slli	t1, t1, 3
	add	t1, a0, t1
	ld	t1, 0(t1)
	slli	t2, t0, 3
	add	t3, a7, t2
	sd	t1, 0(t3)
	addi	t1, a2, 2
	add	t3, a6, t1
	lbu	t3, 0(t3)
	slli	t3, t3, 3
	add	t3, a0, t3
	ld	t3, 0(t3)
	slli	t4, t1, 3
	add	t5, a7, t4
	sd	t3, 0(t5)
	addi	t3, a2, 3
	add	a6, a6, t3
	lbu	a6, 0(a6)
	slli	a6, a6, 3
	add	a6, a0, a6
	ld	a6, 0(a6)
	addi	t5, a4, 8
	add	t6, a1, t5
	ld	t6, 0(t6)
	slli	n1, t3, 3
	add	a7, a7, n1
	sd	a6, 0(a7)
	add	a6, t6, a2
	lbu	a6, 0(a6)
	add	t5, a3, t5
	ld	a7, 0(t5)
	slli	a6, a6, 3
	add	a6, a0, a6
	ld	a6, 0(a6)
	add	t5, a7, a5
	sd	a6, 0(t5)
	add	a6, t6, t0
	lbu	a6, 0(a6)
	slli	a6, a6, 3
	add	a6, a0, a6
	ld	a6, 0(a6)
	add	t5, a7, t2
	sd	a6, 0(t5)
	add	a6, t6, t1
	lbu	a6, 0(a6)
	slli	a6, a6, 3
	add	a6, a0, a6
	ld	a6, 0(a6)
	add	t5, a7, t4
	sd	a6, 0(t5)
	add	t6, t6, t3
	lbu	a6, 0(t6)
	slli	a6, a6, 3
	add	a6, a0, a6
	ld	a6, 0(a6)
	addi	t5, a4, 16
	add	t6, a1, t5
	ld	t6, 0(t6)
	add	a7, a7, n1
	sd	a6, 0(a7)
	add	a6, t6, a2
	lbu	a6, 0(a6)
	add	t5, a3, t5
	ld	a7, 0(t5)
	slli	a6, a6, 3
	add	a6, a0, a6
	ld	a6, 0(a6)
	add	t5, a7, a5
	sd	a6, 0(t5)
	add	a6, t6, t0
	lbu	a6, 0(a6)
	slli	a6, a6, 3
	add	a6, a0, a6
	ld	a6, 0(a6)
	add	t5, a7, t2
	sd	a6, 0(t5)
	add	a6, t6, t1
	lbu	a6, 0(a6)
	slli	a6, a6, 3
	add	a6, a0, a6
	ld	a6, 0(a6)
	add	t5, a7, t4
	sd	a6, 0(t5)
	add	t6, t6, t3
	lbu	a6, 0(t6)
	slli	a6, a6, 3
	add	a6, a0, a6
	ld	a6, 0(a6)
	addi	a4, a4, 24
	add	a1, a1, a4
	ld	a1, 0(a1)
	add	a7, a7, n1
	sd	a6, 0(a7)
	add	a2, a1, a2
	lbu	a2, 0(a2)
	add	a3, a3, a4
	ld	a3, 0(a3)
	slli	a2, a2, 3
	add	a2, a0, a2
	ld	a2, 0(a2)
	add	a5, a3, a5
	sd	a2, 0(a5)
	add	t0, a1, t0
	lbu	a2, 0(t0)
	slli	a2, a2, 3
	add	a2, a0, a2
	ld	a2, 0(a2)
	add	t2, a3, t2
	sd	a2, 0(t2)
	add	t1, a1, t1
	lbu	a2, 0(t1)
	slli	a2, a2, 3
	add	a2, a0, a2
	ld	a2, 0(a2)
	add	t4, a3, t4
	sd	a2, 0(t4)
	add	a1, a1, t3
	lbu	a1, 0(a1)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a3, a3, n1
	sd	a0, 0(a3)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB11_81:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	li	a0, 1
	call	exit
.Lfunc_end11:
	.size	SetModesAndRefframeForBlocks, .Lfunc_end11-SetModesAndRefframeForBlocks
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI11_0:
	.word	.LBB11_27
	.word	.LBB11_81
	.word	.LBB11_2
	.word	.LBB11_2
	.word	.LBB11_81
	.word	.LBB11_81
	.word	.LBB11_81
	.word	.LBB11_81
	.word	.LBB11_70
	.word	.LBB11_62
	.word	.LBB11_63
	.word	.LBB11_81
	.word	.LBB11_81
	.word	.LBB11_71
	.word	.LBB11_69
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	Intra16x16_Mode_Decision        # -- Begin function Intra16x16_Mode_Decision
	.p2align	2
	.type	Intra16x16_Mode_Decision,@function
Intra16x16_Mode_Decision:               # @Intra16x16_Mode_Decision
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
	lui	s10, %hi(img)
	ld	a2, %lo(img)(s10)
	mv	s0, a1
	mv	s1, a0
	lui	a0, 8
	add	a0, a2, a0
	lw	a1, 12(a2)
	ld	a0, -1192(a0)
	lui	s8, 3
	li	a3, 528
	mul	a1, a1, a3
	add	a0, a0, a1
	lw	s4, 416(a0)
	lw	s3, 152(a2)
	lw	s2, 156(a2)
	lui	a0, %hi(imgY_org)
	ld	s7, %lo(imgY_org)(a0)
	lui	a0, %hi(imgUV_org)
	ld	s9, %lo(imgUV_org)(a0)
	addiw	s6, s8, -1736
	lui	a0, 2
	addiw	s5, a0, 312
	call	intrapred_luma_16x16
	ld	t0, %lo(img)(s10)
	lui	s11, 22
	add	a0, t0, s11
	lw	a0, 460(a0)
	bnez	a0, .LBB12_2
# %bb.1:
	mv	a0, s0
	call	find_sad_16x16
	ld	t0, %lo(img)(s10)
	add	s11, t0, s11
	lw	a0, 460(s11)
	beqz	a0, .LBB12_6
.LBB12_2:
	li	a0, 0
	lui	a1, %hi(resTrans_B)
	addi	a1, a1, %lo(resTrans_B)
	lui	a2, %hi(resTrans_R)
	addi	a2, a2, %lo(resTrans_R)
	ld	a3, 0(s9)
	lui	a4, 1
	addiw	a4, a4, 696
	add	a4, t0, a4
	ld	a5, 8(s9)
	addiw	a6, s8, 824
	add	a6, t0, a6
	slli	t1, s4, 9
	add	a7, t0, s6
	add	a7, a7, t1
	add	t0, t0, s5
	add	t0, t0, t1
	slli	t1, s3, 1
	lui	t2, %hi(resTrans_G)
	addi	t2, t2, %lo(resTrans_G)
	li	t3, 32
	li	t4, 16
.LBB12_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
	add	t5, a0, s2
	slli	t5, t5, 3
	add	t6, a3, t5
	add	n1, s7, t5
	add	t5, a5, t5
	ld	n2, 0(t5)
	ld	n1, 0(n1)
	ld	n3, 0(t6)
	li	t5, 0
	add	t6, n2, t1
	add	n1, n1, t1
	add	n2, n3, t1
	mv	n3, a2
	mv	n4, a1
	mv	n5, t2
	mv	n6, a6
.LBB12_4:                               #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	n7, n2, t5
	lhu	n7, 0(n7)
	add	n8, t0, t5
	lhu	n8, 0(n8)
	lw	n9, 0(s0)
	sub	n7, n7, n8
	slli	n9, n9, 9
	add	n8, a4, t5
	add	n8, n8, n9
	add	n9, t6, t5
	lhu	n9, 0(n9)
	add	n10, a7, t5
	lhu	n10, 0(n10)
	add	n11, n1, t5
	lhu	n11, 0(n11)
	lhu	n8, 0(n8)
	sub	n9, n9, n10
	sub	n9, n9, n7
	sw	n9, 0(n3)
	srli	n9, n9, 1
	add	n7, n9, n7
	subw	n9, n11, n7
	subw	n8, n9, n8
	sw	n8, 0(n4)
	sraiw	n8, n8, 1
	add	n7, n8, n7
	sw	n7, 0(n5)
	sw	n7, 0(n6)
	addi	t5, t5, 2
	addi	n6, n6, 4
	addi	n5, n5, 4
	addi	n4, n4, 4
	addi	n3, n3, 4
	bne	t5, t3, .LBB12_4
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	addi	a0, a0, 1
	addi	a6, a6, 64
	addi	t2, t2, 64
	addi	a1, a1, 64
	addi	a2, a2, 64
	addi	a7, a7, 32
	addi	a4, a4, 32
	addi	t0, t0, 32
	bne	a0, t4, .LBB12_3
.LBB12_6:
	lw	a0, 0(s0)
	call	dct_luma_16x16
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a2, a1, a2
	lw	a2, 460(a2)
	sw	a0, 364(s1)
	beqz	a2, .LBB12_23
# %bb.7:
	lui	a0, 3
	addiw	a0, a0, 884
	add	a0, a1, a0
	lui	a3, %hi(resTrans_B)
	addi	a3, a3, %lo(resTrans_B)
	addi	a1, a3, 32
	lui	s7, %hi(rec_resG)
	addi	s7, s7, %lo(rec_resG)
	addi	a2, s7, 32
	addi	a3, a3, 1056
.LBB12_8:                               # =>This Inner Loop Header: Depth=1
	lw	a4, -60(a0)
	lw	a5, -32(a1)
	sw	a4, -32(a2)
	sw	a5, -60(a0)
	lw	a4, -56(a0)
	lw	a5, -28(a1)
	sw	a4, -28(a2)
	sw	a5, -56(a0)
	lw	a4, -52(a0)
	lw	a5, -24(a1)
	sw	a4, -24(a2)
	sw	a5, -52(a0)
	lw	a4, -48(a0)
	lw	a5, -20(a1)
	sw	a4, -20(a2)
	sw	a5, -48(a0)
	lw	a4, -44(a0)
	lw	a5, -16(a1)
	sw	a4, -16(a2)
	sw	a5, -44(a0)
	lw	a4, -40(a0)
	lw	a5, -12(a1)
	sw	a4, -12(a2)
	sw	a5, -40(a0)
	lw	a4, -36(a0)
	lw	a5, -8(a1)
	sw	a4, -8(a2)
	sw	a5, -36(a0)
	lw	a4, -32(a0)
	lw	a5, -4(a1)
	sw	a4, -4(a2)
	sw	a5, -32(a0)
	lw	a4, -28(a0)
	lw	a5, 0(a1)
	sw	a4, 0(a2)
	sw	a5, -28(a0)
	lw	a4, -24(a0)
	lw	a5, 4(a1)
	sw	a4, 4(a2)
	sw	a5, -24(a0)
	lw	a4, -20(a0)
	lw	a5, 8(a1)
	sw	a4, 8(a2)
	sw	a5, -20(a0)
	lw	a4, -16(a0)
	lw	a5, 12(a1)
	sw	a4, 12(a2)
	sw	a5, -16(a0)
	lw	a4, -12(a0)
	lw	a5, 16(a1)
	sw	a4, 16(a2)
	sw	a5, -12(a0)
	lw	a4, -8(a0)
	lw	a5, 20(a1)
	sw	a4, 20(a2)
	sw	a5, -8(a0)
	lw	a4, -4(a0)
	lw	a5, 24(a1)
	sw	a4, 24(a2)
	sw	a5, -4(a0)
	lw	a4, 0(a0)
	lw	a5, 28(a1)
	sw	a4, 28(a2)
	sw	a5, 0(a0)
	addi	a1, a1, 64
	addi	a2, a2, 64
	addi	a0, a0, 64
	bne	a1, a3, .LBB12_8
# %bb.9:
	li	a0, 0
	li	a1, 0
	call	dct_chroma
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	mv	a1, a0
	lui	a0, 3
	addiw	a0, a0, 884
	add	a0, a2, a0
	lui	a4, %hi(resTrans_R)
	addi	a4, a4, %lo(resTrans_R)
	addi	a2, a4, 32
	lui	s8, %hi(rec_resB)
	addi	s8, s8, %lo(rec_resB)
	addi	a3, s8, 32
	addi	a4, a4, 1056
.LBB12_10:                              # =>This Inner Loop Header: Depth=1
	lw	a5, -60(a0)
	lw	a6, -32(a2)
	sw	a5, -32(a3)
	sw	a6, -60(a0)
	lw	a5, -56(a0)
	lw	a6, -28(a2)
	sw	a5, -28(a3)
	sw	a6, -56(a0)
	lw	a5, -52(a0)
	lw	a6, -24(a2)
	sw	a5, -24(a3)
	sw	a6, -52(a0)
	lw	a5, -48(a0)
	lw	a6, -20(a2)
	sw	a5, -20(a3)
	sw	a6, -48(a0)
	lw	a5, -44(a0)
	lw	a6, -16(a2)
	sw	a5, -16(a3)
	sw	a6, -44(a0)
	lw	a5, -40(a0)
	lw	a6, -12(a2)
	sw	a5, -12(a3)
	sw	a6, -40(a0)
	lw	a5, -36(a0)
	lw	a6, -8(a2)
	sw	a5, -8(a3)
	sw	a6, -36(a0)
	lw	a5, -32(a0)
	lw	a6, -4(a2)
	sw	a5, -4(a3)
	sw	a6, -32(a0)
	lw	a5, -28(a0)
	lw	a6, 0(a2)
	sw	a5, 0(a3)
	sw	a6, -28(a0)
	lw	a5, -24(a0)
	lw	a6, 4(a2)
	sw	a5, 4(a3)
	sw	a6, -24(a0)
	lw	a5, -20(a0)
	lw	a6, 8(a2)
	sw	a5, 8(a3)
	sw	a6, -20(a0)
	lw	a5, -16(a0)
	lw	a6, 12(a2)
	sw	a5, 12(a3)
	sw	a6, -16(a0)
	lw	a5, -12(a0)
	lw	a6, 16(a2)
	sw	a5, 16(a3)
	sw	a6, -12(a0)
	lw	a5, -8(a0)
	lw	a6, 20(a2)
	sw	a5, 20(a3)
	sw	a6, -8(a0)
	lw	a5, -4(a0)
	lw	a6, 24(a2)
	sw	a5, 24(a3)
	sw	a6, -4(a0)
	lw	a5, 0(a0)
	lw	a6, 28(a2)
	sw	a5, 28(a3)
	sw	a6, 0(a0)
	addi	a2, a2, 64
	addi	a3, a3, 64
	addi	a0, a0, 64
	bne	a2, a4, .LBB12_10
# %bb.11:
	li	a0, 1
	call	dct_chroma
	lui	a1, %hi(img)
	ld	t1, %lo(img)(a1)
	lui	a1, 22
	addiw	a5, a1, 420
	add	a5, t1, a5
	lui	a1, 3
	addiw	a2, a1, 884
	add	a2, t1, a2
	lui	a1, %hi(rec_resR)
	addi	a1, a1, %lo(rec_resR)
	addi	a3, a1, 32
	addi	a4, a1, 1056
.LBB12_12:                              # =>This Inner Loop Header: Depth=1
	lw	a6, -60(a2)
	sw	a6, -32(a3)
	lw	a6, -56(a2)
	sw	a6, -28(a3)
	lw	a6, -52(a2)
	sw	a6, -24(a3)
	lw	a6, -48(a2)
	sw	a6, -20(a3)
	lw	a6, -44(a2)
	sw	a6, -16(a3)
	lw	a6, -40(a2)
	sw	a6, -12(a3)
	lw	a6, -36(a2)
	sw	a6, -8(a3)
	lw	a6, -32(a2)
	sw	a6, -4(a3)
	lw	a6, -28(a2)
	sw	a6, 0(a3)
	lw	a6, -24(a2)
	sw	a6, 4(a3)
	lw	a6, -20(a2)
	sw	a6, 8(a3)
	lw	a6, -16(a2)
	sw	a6, 12(a3)
	lw	a6, -12(a2)
	sw	a6, 16(a3)
	lw	a6, -8(a2)
	sw	a6, 20(a3)
	lw	a6, -4(a2)
	sw	a6, 24(a3)
	lw	a6, 0(a2)
	sw	a6, 28(a3)
	addi	a3, a3, 64
	addi	a2, a2, 64
	bne	a3, a4, .LBB12_12
# %bb.13:
	lw	a3, 364(s1)
	li	a2, 0
	slli	a0, a0, 4
	add	a0, a3, a0
	sw	a0, 364(s1)
	lw	a0, 4(a5)
	lui	a3, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a3)
	lui	a4, 2
	lw	a6, 0(s0)
	addiw	a4, a4, -1768
	add	a7, a3, a4
	ld	t0, 40(a7)
	slli	a3, a6, 9
	lui	a4, 1
	addiw	a4, a4, 696
	add	a4, t1, a4
	add	a3, a3, a4
	ld	a4, 0(t0)
	lw	a5, 0(a5)
	ld	a6, 0(a7)
	ld	a7, 8(t0)
	slli	s4, s4, 9
	add	t0, s4, s6
	add	t0, t1, t0
	slli	s3, s3, 1
	add	s4, s4, s5
	add	t1, t1, s4
	li	t2, 32
	li	t3, 16
	j	.LBB12_15
.LBB12_14:                              #   in Loop: Header=BB12_15 Depth=1
	addi	a2, a2, 1
	addi	t0, t0, 32
	addi	a3, a3, 32
	addi	t1, t1, 32
	addi	a1, a1, 64
	addi	s8, s8, 64
	addi	s7, s7, 64
	beq	a2, t3, .LBB12_23
.LBB12_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_17 Depth 2
	add	t4, a2, s2
	slli	t4, t4, 3
	add	t5, a4, t4
	add	t6, a6, t4
	add	t4, a7, t4
	ld	n1, 0(t4)
	ld	t6, 0(t6)
	ld	n2, 0(t5)
	li	t4, 0
	add	t5, n1, s3
	add	t6, t6, s3
	add	n1, n2, s3
	mv	n2, s7
	mv	n3, s8
	mv	n4, a1
	j	.LBB12_17
.LBB12_16:                              #   in Loop: Header=BB12_17 Depth=2
	add	n6, t5, t4
	sh	n5, 0(n6)
	addi	t4, t4, 2
	addi	n4, n4, 4
	addi	n3, n3, 4
	addi	n2, n2, 4
	beq	t4, t2, .LBB12_14
.LBB12_17:                              #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	n7, 0(n3)
	lw	n6, 0(n2)
	srai	n8, n7, 1
	lw	n5, 0(n4)
	add	n9, t1, t4
	lhu	n9, 0(n9)
	subw	n8, n6, n8
	srli	n6, n5, 1
	subw	n6, n8, n6
	addw	n9, n6, n9
	sgtz	n10, n9
	neg	n10, n10
	and	n10, n10, n9
	mv	n9, a0
	blt	a0, n10, .LBB12_19
# %bb.18:                               #   in Loop: Header=BB12_17 Depth=2
	mv	n9, n10
.LBB12_19:                              #   in Loop: Header=BB12_17 Depth=2
	add	n10, n1, t4
	sh	n9, 0(n10)
	add	n9, a3, t4
	lhu	n9, 0(n9)
	add	n7, n8, n7
	addw	n7, n7, n9
	sgtz	n8, n7
	neg	n8, n8
	and	n8, n8, n7
	mv	n7, a5
	blt	a5, n8, .LBB12_21
# %bb.20:                               #   in Loop: Header=BB12_17 Depth=2
	mv	n7, n8
.LBB12_21:                              #   in Loop: Header=BB12_17 Depth=2
	add	n8, t6, t4
	sh	n7, 0(n8)
	add	n7, t0, t4
	lhu	n7, 0(n7)
	add	n5, n6, n5
	addw	n5, n5, n7
	sgtz	n6, n5
	neg	n6, n6
	and	n6, n6, n5
	mv	n5, a0
	blt	a0, n6, .LBB12_16
# %bb.22:                               #   in Loop: Header=BB12_17 Depth=2
	mv	n5, n6
	j	.LBB12_16
.LBB12_23:
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
.Lfunc_end12:
	.size	Intra16x16_Mode_Decision, .Lfunc_end12-Intra16x16_Mode_Decision
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SetCoeffAndReconstruction8x8    # -- Begin function SetCoeffAndReconstruction8x8
	.p2align	2
	.type	SetCoeffAndReconstruction8x8,@function
SetCoeffAndReconstruction8x8:           # @SetCoeffAndReconstruction8x8
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
	lui	a1, 2
	addiw	a1, a1, -1888
	sub	sp, sp, a1
	mv	s1, a0
	lui	a0, %hi(img)
	lw	a1, 468(s1)
	ld	s2, %lo(img)(a0)
	beqz	a1, .LBB13_20
# %bb.1:
	lui	a1, 2
	lui	s8, %hi(tr8x8)
	addi	s8, s8, %lo(tr8x8)
	add	a2, s8, a1
	lh	a3, -2044(a2)
	lw	a0, 24(s2)
	lh	a4, -2036(a2)
	lh	a5, -2042(a2)
	sw	a3, 376(s1)
	lh	a3, -2034(a2)
	sw	a4, 392(s1)
	sw	a5, 380(s1)
	lh	a4, -2040(a2)
	sw	a3, 396(s1)
	lh	a3, -2032(a2)
	lh	a5, -2038(a2)
	sw	a4, 384(s1)
	lh	a4, -2030(a2)
	sw	a3, 400(s1)
	sw	a5, 388(s1)
	li	a3, 1
	sw	a4, 404(s1)
	bne	a0, a3, .LBB13_31
# %bb.2:                                # %.preheader9
	li	a2, 0
	li	a3, 0
	addi	a4, s1, 392
	lui	a5, %hi(enc_picture)
	lui	a6, %hi(img)
	li	a7, 4
	j	.LBB13_4
.LBB13_3:                               #   in Loop: Header=BB13_4 Depth=1
	ld	t0, %lo(enc_picture)(a5)
	ld	t1, %lo(img)(a6)
	add	t0, t0, a1
	ld	t0, -1712(t0)
	lw	t3, 148(t1)
	ld	t0, 8(t0)
	add	t3, a2, t3
	slli	t3, t3, 3
	add	t0, t0, t3
	ld	t0, 0(t0)
	lw	t1, 144(t1)
	add	t0, t0, t1
	sb	t2, 3(t0)
	addiw	a3, a3, 1
	addi	a2, a2, 1
	beq	a3, a7, .LBB13_32
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	andi	t0, a3, 2
	slli	t2, t0, 2
	add	t2, a4, t2
	lbu	t1, 0(t2)
	andi	t5, t1, 1
	li	t3, 255
	add	t1, s8, t0
	li	t4, 255
	bnez	t5, .LBB13_6
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	add	t4, t1, a1
	lbu	t4, -2028(t4)
.LBB13_6:                               #   in Loop: Header=BB13_4 Depth=1
	ld	t5, %lo(enc_picture)(a5)
	ld	t6, %lo(img)(a6)
	add	t5, t5, a1
	ld	t5, -1712(t5)
	lw	n1, 148(t6)
	ld	t5, 0(t5)
	add	n1, a2, n1
	slli	n1, n1, 3
	add	t5, t5, n1
	ld	t5, 0(t5)
	lw	t6, 144(t6)
	add	t5, t5, t6
	sb	t4, 0(t5)
	lw	t4, 0(t2)
	blez	t4, .LBB13_8
# %bb.7:                                #   in Loop: Header=BB13_4 Depth=1
	add	t3, t1, a1
	lbu	t3, -2024(t3)
.LBB13_8:                               #   in Loop: Header=BB13_4 Depth=1
	ld	t4, %lo(enc_picture)(a5)
	ld	t5, %lo(img)(a6)
	add	t4, t4, a1
	ld	t4, -1712(t4)
	lw	t6, 148(t5)
	ld	t4, 8(t4)
	add	t6, a2, t6
	slli	t6, t6, 3
	add	t4, t4, t6
	ld	t4, 0(t4)
	lw	t5, 144(t5)
	add	t4, t4, t5
	sb	t3, 0(t4)
	lbu	t3, 0(t2)
	andi	t5, t3, 1
	li	t3, 255
	li	t4, 255
	bnez	t5, .LBB13_10
# %bb.9:                                #   in Loop: Header=BB13_4 Depth=1
	add	t4, t1, a1
	lbu	t4, -2028(t4)
.LBB13_10:                              #   in Loop: Header=BB13_4 Depth=1
	ld	t5, %lo(enc_picture)(a5)
	ld	t6, %lo(img)(a6)
	add	t5, t5, a1
	ld	t5, -1712(t5)
	lw	n1, 148(t6)
	ld	t5, 0(t5)
	add	n1, a2, n1
	slli	n1, n1, 3
	add	t5, t5, n1
	ld	t5, 0(t5)
	lw	t6, 144(t6)
	add	t5, t5, t6
	sb	t4, 1(t5)
	lw	t2, 0(t2)
	blez	t2, .LBB13_12
# %bb.11:                               #   in Loop: Header=BB13_4 Depth=1
	add	t1, t1, a1
	lbu	t3, -2024(t1)
.LBB13_12:                              #   in Loop: Header=BB13_4 Depth=1
	ld	t1, %lo(enc_picture)(a5)
	ld	t2, %lo(img)(a6)
	add	t1, t1, a1
	ld	t1, -1712(t1)
	lw	t4, 148(t2)
	ld	t1, 8(t1)
	add	t4, a2, t4
	slli	t4, t4, 3
	add	t1, t1, t4
	ld	t1, 0(t1)
	lw	t2, 144(t2)
	add	t1, t1, t2
	sb	t3, 1(t1)
	ori	t0, t0, 1
	slli	t1, t0, 2
	add	t1, a4, t1
	lbu	t2, 0(t1)
	andi	t4, t2, 1
	li	t2, 255
	add	t0, s8, t0
	li	t3, 255
	bnez	t4, .LBB13_14
# %bb.13:                               #   in Loop: Header=BB13_4 Depth=1
	add	t3, t0, a1
	lbu	t3, -2028(t3)
.LBB13_14:                              #   in Loop: Header=BB13_4 Depth=1
	ld	t4, %lo(enc_picture)(a5)
	ld	t5, %lo(img)(a6)
	add	t4, t4, a1
	ld	t4, -1712(t4)
	lw	t6, 148(t5)
	ld	t4, 0(t4)
	add	t6, a2, t6
	slli	t6, t6, 3
	add	t4, t4, t6
	ld	t4, 0(t4)
	lw	t5, 144(t5)
	add	t4, t4, t5
	sb	t3, 2(t4)
	lw	t3, 0(t1)
	blez	t3, .LBB13_16
# %bb.15:                               #   in Loop: Header=BB13_4 Depth=1
	add	t2, t0, a1
	lbu	t2, -2024(t2)
.LBB13_16:                              #   in Loop: Header=BB13_4 Depth=1
	ld	t3, %lo(enc_picture)(a5)
	ld	t4, %lo(img)(a6)
	add	t3, t3, a1
	ld	t3, -1712(t3)
	lw	t5, 148(t4)
	ld	t3, 8(t3)
	add	t5, a2, t5
	slli	t5, t5, 3
	add	t3, t3, t5
	ld	t3, 0(t3)
	lw	t4, 144(t4)
	add	t3, t3, t4
	sb	t2, 2(t3)
	lbu	t2, 0(t1)
	andi	t4, t2, 1
	li	t2, 255
	li	t3, 255
	bnez	t4, .LBB13_18
# %bb.17:                               #   in Loop: Header=BB13_4 Depth=1
	add	t3, t0, a1
	lbu	t3, -2028(t3)
.LBB13_18:                              #   in Loop: Header=BB13_4 Depth=1
	ld	t4, %lo(enc_picture)(a5)
	ld	t5, %lo(img)(a6)
	add	t4, t4, a1
	ld	t4, -1712(t4)
	lw	t6, 148(t5)
	ld	t4, 0(t4)
	add	t6, a2, t6
	slli	t6, t6, 3
	add	t4, t4, t6
	ld	t4, 0(t4)
	lw	t5, 144(t5)
	add	t4, t4, t5
	sb	t3, 3(t4)
	lw	t1, 0(t1)
	blez	t1, .LBB13_3
# %bb.19:                               #   in Loop: Header=BB13_4 Depth=1
	add	t0, t0, a1
	lbu	t2, -2024(t0)
	j	.LBB13_3
.LBB13_20:
	lui	s0, 22
	add	a0, s2, s0
	lw	a0, 428(a0)
	li	a1, -3
	blt	a0, a1, .LBB13_23
# %bb.21:
	li	s3, 0
	lui	a0, %hi(cofAC8x8)
	ld	s4, %lo(cofAC8x8)(a0)
	li	s5, -1
	lui	s6, 3
	lui	s7, %hi(img)
.LBB13_22:                              # =>This Inner Loop Header: Depth=1
	add	s2, s2, s6
	ld	a0, 1848(s2)
	add	s2, s4, s3
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s2)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s2)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s2)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s2)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s2)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s2)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s2)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s2)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	s2, %lo(img)(s7)
	add	a0, s2, s0
	lw	a0, 428(a0)
	addiw	a0, a0, 3
	addi	s5, s5, 1
	addi	s3, s3, 8
	blt	s5, a0, .LBB13_22
.LBB13_23:
	lui	a0, %hi(cnt_nonz_8x8)
	lw	a1, %lo(cnt_nonz_8x8)(a0)
	addiw	a0, s0, 380
	add	a0, s2, a0
	li	a2, 5
	lui	a3, %hi(tr4x4)
	addi	a3, a3, %lo(tr4x4)
	blt	a2, a1, .LBB13_27
# %bb.24:
	lw	a1, 24(s2)
	li	a2, 3
	beq	a1, a2, .LBB13_27
# %bb.25:
	lw	a1, 0(a0)
	lw	a2, 40(s2)
	negw	a1, a1
	beq	a2, a1, .LBB13_26
	j	.LBB13_63
.LBB13_26:
	lw	a1, 60(a0)
	bnez	a1, .LBB13_27
	j	.LBB13_63
.LBB13_27:
	lui	a1, %hi(cbp8x8)
	lw	a1, %lo(cbp8x8)(a1)
	lui	a2, %hi(cbp_blk8x8)
	lw	a2, %lo(cbp_blk8x8)(a2)
	lw	a0, 80(a0)
	sw	a1, 364(s1)
	sd	a2, 368(s1)
	beqz	a0, .LBB13_55
# %bb.28:
	addi	a1, a3, 4
	lui	a0, %hi(rec_resG)
	addi	a0, a0, %lo(rec_resG)
	li	a2, 1024
	call	memcpy
.LBB13_29:
	lui	a0, 22
	add	a0, s2, a0
	lw	a0, 460(a0)
	beqz	a0, .LBB13_48
# %bb.30:
	lui	s3, %hi(tr4x4)
	addi	s3, s3, %lo(tr4x4)
	addi	s1, s3, 2047
	addi	a1, s1, 1029
	lui	s0, %hi(mprRGB)
	addi	s0, s0, %lo(mprRGB)
	li	a2, 1024
	mv	a0, s0
	call	memcpy
	lui	s2, 1
	addiw	a1, s2, 4
	add	a1, s3, a1
	addi	a0, s0, 1024
	li	a2, 1024
	call	memcpy
	addiw	a1, s2, 1028
	add	a1, s3, a1
	addi	a0, s0, 2047
	addi	a0, a0, 1
	li	a2, 1024
	call	memcpy
	addi	a1, s3, 1028
	lui	a0, %hi(resTrans_R)
	addi	a0, a0, %lo(resTrans_R)
	li	a2, 1024
	call	memcpy
	addi	a1, s1, 5
	lui	a0, %hi(resTrans_B)
	addi	a0, a0, %lo(resTrans_B)
	li	a2, 1024
	lui	a3, 2
	addiw	a3, a3, -1888
	add	sp, sp, a3
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
	addi	sp, sp, 2032
	tail	memcpy
.LBB13_31:
	lui	a3, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a3)
	add	a4, a4, a1
	ld	a4, -1712(a4)
	lw	a5, 148(s2)
	ld	a4, 0(a4)
	slli	a5, a5, 3
	add	a4, a4, a5
	ld	a4, 0(a4)
	lw	a5, 144(s2)
	lbu	a6, -2028(a2)
	add	a4, a4, a5
	sb	a6, 0(a4)
	ld	a4, %lo(enc_picture)(a3)
	add	a5, a4, a1
	lui	a4, %hi(img)
	ld	a7, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	t0, 148(a7)
	ld	a5, 0(a5)
	slli	t0, t0, 3
	add	a5, a5, t0
	ld	a5, 0(a5)
	lw	a7, 144(a7)
	add	a5, a5, a7
	sb	a6, 1(a5)
	ld	a5, %lo(enc_picture)(a3)
	add	a5, a5, a1
	ld	a6, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	a7, 148(a6)
	ld	a5, 0(a5)
	slli	a7, a7, 3
	add	a5, a5, a7
	ld	a5, 0(a5)
	lw	a6, 144(a6)
	lbu	a7, -2027(a2)
	add	a5, a5, a6
	sb	a7, 2(a5)
	ld	a5, %lo(enc_picture)(a3)
	add	a5, a5, a1
	ld	a6, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	t0, 148(a6)
	ld	a5, 0(a5)
	slli	t0, t0, 3
	add	a5, a5, t0
	ld	a5, 0(a5)
	lw	a6, 144(a6)
	add	a5, a5, a6
	sb	a7, 3(a5)
	ld	a5, %lo(enc_picture)(a3)
	add	a5, a5, a1
	ld	a6, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	a7, 148(a6)
	ld	a5, 0(a5)
	slli	a7, a7, 3
	add	a5, a5, a7
	ld	a5, 8(a5)
	lw	a6, 144(a6)
	lbu	a7, -2028(a2)
	add	a5, a5, a6
	sb	a7, 0(a5)
	ld	a5, %lo(enc_picture)(a3)
	add	a5, a5, a1
	ld	a6, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	t0, 148(a6)
	ld	a5, 0(a5)
	slli	t0, t0, 3
	add	a5, a5, t0
	ld	a5, 8(a5)
	lw	a6, 144(a6)
	add	a5, a5, a6
	sb	a7, 1(a5)
	ld	a5, %lo(enc_picture)(a3)
	add	a5, a5, a1
	ld	a6, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	a7, 148(a6)
	ld	a5, 0(a5)
	slli	a7, a7, 3
	add	a5, a5, a7
	ld	a5, 8(a5)
	lw	a6, 144(a6)
	lbu	a7, -2027(a2)
	add	a5, a5, a6
	sb	a7, 2(a5)
	ld	a5, %lo(enc_picture)(a3)
	add	a5, a5, a1
	ld	a6, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	t0, 148(a6)
	ld	a5, 0(a5)
	slli	t0, t0, 3
	add	a5, a5, t0
	ld	a5, 8(a5)
	lw	a6, 144(a6)
	add	a5, a5, a6
	sb	a7, 3(a5)
	ld	a5, %lo(enc_picture)(a3)
	add	a5, a5, a1
	ld	a6, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	a7, 148(a6)
	ld	a5, 0(a5)
	slli	a7, a7, 3
	add	a5, a5, a7
	ld	a5, 16(a5)
	lw	a6, 144(a6)
	lbu	a7, -2026(a2)
	add	a5, a5, a6
	sb	a7, 0(a5)
	ld	a5, %lo(enc_picture)(a3)
	add	a5, a5, a1
	ld	a6, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	t0, 148(a6)
	ld	a5, 0(a5)
	slli	t0, t0, 3
	add	a5, a5, t0
	ld	a5, 16(a5)
	lw	a6, 144(a6)
	add	a5, a5, a6
	sb	a7, 1(a5)
	ld	a5, %lo(enc_picture)(a3)
	add	a5, a5, a1
	ld	a6, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	a7, 148(a6)
	ld	a5, 0(a5)
	slli	a7, a7, 3
	add	a5, a5, a7
	ld	a5, 16(a5)
	lw	a6, 144(a6)
	lbu	a7, -2025(a2)
	add	a5, a5, a6
	sb	a7, 2(a5)
	ld	a5, %lo(enc_picture)(a3)
	add	a5, a5, a1
	ld	a6, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	t0, 148(a6)
	ld	a5, 0(a5)
	slli	t0, t0, 3
	add	a5, a5, t0
	ld	a5, 16(a5)
	lw	a6, 144(a6)
	add	a5, a5, a6
	sb	a7, 3(a5)
	ld	a5, %lo(enc_picture)(a3)
	add	a5, a5, a1
	ld	a6, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	a7, 148(a6)
	ld	a5, 0(a5)
	slli	a7, a7, 3
	add	a5, a5, a7
	ld	a5, 24(a5)
	lw	a6, 144(a6)
	lbu	a7, -2026(a2)
	add	a5, a5, a6
	sb	a7, 0(a5)
	ld	a5, %lo(enc_picture)(a3)
	add	a5, a5, a1
	ld	a6, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	t0, 148(a6)
	ld	a5, 0(a5)
	slli	t0, t0, 3
	add	a5, a5, t0
	ld	a5, 24(a5)
	lw	a6, 144(a6)
	add	a5, a5, a6
	sb	a7, 1(a5)
	ld	a5, %lo(enc_picture)(a3)
	add	a5, a5, a1
	ld	a6, %lo(img)(a4)
	ld	a5, -1712(a5)
	lw	a7, 148(a6)
	ld	a5, 0(a5)
	slli	a7, a7, 3
	add	a5, a5, a7
	ld	a5, 24(a5)
	lw	a6, 144(a6)
	lbu	a2, -2025(a2)
	add	a5, a5, a6
	sb	a2, 2(a5)
	ld	a3, %lo(enc_picture)(a3)
	add	a1, a3, a1
	ld	a3, %lo(img)(a4)
	ld	a1, -1712(a1)
	lw	a4, 148(a3)
	ld	a1, 0(a1)
	slli	a4, a4, 3
	add	a1, a1, a4
	ld	a1, 24(a1)
	lw	a3, 144(a3)
	add	a1, a1, a3
	sb	a2, 3(a1)
.LBB13_32:
	lui	a1, %hi(img)
	lui	a2, %hi(enc_picture)
	ld	t3, %lo(enc_picture)(a2)
	ld	a1, %lo(img)(a1)
	lui	a2, 2
	addiw	a2, a2, -1712
	add	a2, t3, a2
	ld	t4, 0(a2)
	lw	n2, 148(a1)
	ld	t5, 8(a2)
	lw	a2, 144(a1)
	ld	n5, 0(t4)
	addi	t3, t3, 24
	ld	n4, 0(t5)
	slli	a3, n2, 3
	add	a4, n5, a3
	ld	t2, 0(a4)
	lw	t6, 428(s1)
	add	a4, n4, a3
	ld	n6, 0(a4)
	add	a4, t2, a2
	lbu	a4, 0(a4)
	li	a5, 264
	mul	n3, t6, a5
	add	n3, t3, n3
	slli	a4, a4, 3
	add	a4, n3, a4
	ld	a5, 0(a4)
	slli	a4, a2, 3
	add	a6, n6, a4
	sd	a5, 0(a6)
	addi	a5, a2, 1
	add	a6, t2, a5
	lbu	a6, 0(a6)
	slli	a6, a6, 3
	add	a6, n3, a6
	ld	a7, 0(a6)
	slli	a6, a5, 3
	add	t0, n6, a6
	sd	a7, 0(t0)
	addi	a7, a2, 2
	add	t0, t2, a7
	lbu	t0, 0(t0)
	slli	t0, t0, 3
	add	t0, n3, t0
	ld	t1, 0(t0)
	slli	t0, a7, 3
	add	n1, n6, t0
	sd	t1, 0(n1)
	addi	t1, a2, 3
	add	t2, t2, t1
	lbu	t2, 0(t2)
	addiw	n1, n2, 4
	slli	t2, t2, 3
	add	t2, n3, t2
	ld	n7, 0(t2)
	slli	t2, t1, 3
	add	n6, n6, t2
	addi	n2, n2, 1
	sd	n7, 0(n6)
	bge	n2, n1, .LBB13_34
# %bb.33:
	slli	n6, n2, 3
	add	n7, n5, n6
	ld	n7, 0(n7)
	add	n8, n7, a2
	lbu	n8, 0(n8)
	add	n6, n4, n6
	ld	n6, 0(n6)
	slli	n8, n8, 3
	add	n8, n3, n8
	ld	n8, 0(n8)
	add	n9, n6, a4
	sd	n8, 0(n9)
	add	n8, n7, a5
	lbu	n8, 0(n8)
	slli	n8, n8, 3
	add	n8, n3, n8
	ld	n8, 0(n8)
	add	n9, n6, a6
	sd	n8, 0(n9)
	add	n8, n7, a7
	lbu	n8, 0(n8)
	slli	n8, n8, 3
	add	n8, n3, n8
	ld	n8, 0(n8)
	add	n9, n6, t0
	sd	n8, 0(n9)
	add	n7, n7, t1
	lbu	n7, 0(n7)
	slli	n7, n7, 3
	add	n7, n3, n7
	ld	n7, 0(n7)
	addi	n8, a3, 16
	add	n9, n5, n8
	ld	n9, 0(n9)
	add	n6, n6, t2
	sd	n7, 0(n6)
	add	n6, n9, a2
	lbu	n6, 0(n6)
	add	n8, n4, n8
	ld	n7, 0(n8)
	slli	n6, n6, 3
	add	n6, n3, n6
	ld	n6, 0(n6)
	add	n8, n7, a4
	sd	n6, 0(n8)
	add	n6, n9, a5
	lbu	n6, 0(n6)
	slli	n6, n6, 3
	add	n6, n3, n6
	ld	n6, 0(n6)
	add	n8, n7, a6
	sd	n6, 0(n8)
	add	n6, n9, a7
	lbu	n6, 0(n6)
	slli	n6, n6, 3
	add	n6, n3, n6
	ld	n6, 0(n6)
	add	n8, n7, t0
	sd	n6, 0(n8)
	add	n9, n9, t1
	lbu	n6, 0(n9)
	slli	n6, n6, 3
	add	n6, n3, n6
	ld	n6, 0(n6)
	addi	n8, a3, 24
	add	n5, n5, n8
	ld	n5, 0(n5)
	add	n7, n7, t2
	sd	n6, 0(n7)
	add	n6, n5, a2
	lbu	n6, 0(n6)
	add	n4, n4, n8
	ld	n4, 0(n4)
	slli	n6, n6, 3
	add	n6, n3, n6
	ld	n6, 0(n6)
	add	n7, n4, a4
	sd	n6, 0(n7)
	add	n6, n5, a5
	lbu	n6, 0(n6)
	slli	n6, n6, 3
	add	n6, n3, n6
	ld	n6, 0(n6)
	add	n7, n4, a6
	sd	n6, 0(n7)
	add	n6, n5, a7
	lbu	n6, 0(n6)
	slli	n6, n6, 3
	add	n6, n3, n6
	ld	n6, 0(n6)
	add	n7, n4, t0
	sd	n6, 0(n7)
	add	n5, n5, t1
	lbu	n5, 0(n5)
	slli	n5, n5, 3
	add	n3, n3, n5
	ld	n3, 0(n3)
	add	n4, n4, t2
	sd	n3, 0(n4)
.LBB13_34:
	li	n3, 1
	bne	a0, n3, .LBB13_37
# %bb.35:
	ld	t4, 8(t4)
	ld	a0, 8(t5)
	add	t5, t4, a3
	ld	t5, 0(t5)
	addiw	t6, t6, 1
	add	n3, a0, a3
	ld	n3, 0(n3)
	add	n4, t5, a2
	lbu	n4, 0(n4)
	li	n5, 264
	mul	t6, t6, n5
	add	t3, t3, t6
	slli	n4, n4, 3
	add	n4, t3, n4
	ld	t6, 0(n4)
	add	n4, n3, a4
	sd	t6, 0(n4)
	add	t6, t5, a5
	lbu	t6, 0(t6)
	slli	t6, t6, 3
	add	t6, t3, t6
	ld	t6, 0(t6)
	add	n4, n3, a6
	sd	t6, 0(n4)
	add	t6, t5, a7
	lbu	t6, 0(t6)
	slli	t6, t6, 3
	add	t6, t3, t6
	ld	t6, 0(t6)
	add	n4, n3, t0
	sd	t6, 0(n4)
	add	t5, t5, t1
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, t3, t5
	ld	t5, 0(t5)
	add	n3, n3, t2
	sd	t5, 0(n3)
	bge	n2, n1, .LBB13_37
# %bb.36:
	slli	n2, n2, 3
	add	t5, t4, n2
	ld	t5, 0(t5)
	add	t6, t5, a2
	lbu	t6, 0(t6)
	add	n2, a0, n2
	ld	n1, 0(n2)
	slli	t6, t6, 3
	add	t6, t3, t6
	ld	t6, 0(t6)
	add	n2, n1, a4
	sd	t6, 0(n2)
	add	t6, t5, a5
	lbu	t6, 0(t6)
	slli	t6, t6, 3
	add	t6, t3, t6
	ld	t6, 0(t6)
	add	n2, n1, a6
	sd	t6, 0(n2)
	add	t6, t5, a7
	lbu	t6, 0(t6)
	slli	t6, t6, 3
	add	t6, t3, t6
	ld	t6, 0(t6)
	add	n2, n1, t0
	sd	t6, 0(n2)
	add	t5, t5, t1
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, t3, t5
	ld	t5, 0(t5)
	addi	t6, a3, 16
	add	n2, t4, t6
	ld	n2, 0(n2)
	add	n1, n1, t2
	sd	t5, 0(n1)
	add	t5, n2, a2
	lbu	t5, 0(t5)
	add	t6, a0, t6
	ld	t6, 0(t6)
	slli	t5, t5, 3
	add	t5, t3, t5
	ld	t5, 0(t5)
	add	n1, t6, a4
	sd	t5, 0(n1)
	add	t5, n2, a5
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, t3, t5
	ld	t5, 0(t5)
	add	n1, t6, a6
	sd	t5, 0(n1)
	add	t5, n2, a7
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, t3, t5
	ld	t5, 0(t5)
	add	n1, t6, t0
	sd	t5, 0(n1)
	add	n2, n2, t1
	lbu	t5, 0(n2)
	slli	t5, t5, 3
	add	t5, t3, t5
	ld	t5, 0(t5)
	addi	a3, a3, 24
	add	t4, t4, a3
	ld	t4, 0(t4)
	add	t6, t6, t2
	sd	t5, 0(t6)
	add	a2, t4, a2
	lbu	a2, 0(a2)
	add	a0, a0, a3
	ld	a0, 0(a0)
	slli	a2, a2, 3
	add	a2, t3, a2
	ld	a2, 0(a2)
	add	a4, a0, a4
	sd	a2, 0(a4)
	add	a5, t4, a5
	lbu	a2, 0(a5)
	slli	a2, a2, 3
	add	a2, t3, a2
	ld	a2, 0(a2)
	add	a6, a0, a6
	sd	a2, 0(a6)
	add	a7, t4, a7
	lbu	a2, 0(a7)
	slli	a2, a2, 3
	add	a2, t3, a2
	ld	a2, 0(a2)
	add	t0, a0, t0
	sd	a2, 0(t0)
	add	t1, t4, t1
	lbu	a2, 0(t1)
	slli	a2, a2, 3
	add	a2, t3, a2
	ld	a2, 0(a2)
	add	a0, a0, t2
	sd	a2, 0(a0)
.LBB13_37:
	lw	a0, 24(a1)
	lui	s3, 2
	add	s0, s8, s3
	lh	a2, -2044(s0)
	lbu	a3, -2028(s0)
	lbu	a4, -2024(s0)
	lh	a5, -2036(s0)
	addi	a0, a0, -1
	seqz	s2, a0
	li	a0, 1
	li	a1, 0
	mv	a6, s2
	call	StoreMVBlock8x8
	lh	a2, -2042(s0)
	lbu	a3, -2027(s0)
	lbu	a4, -2023(s0)
	lh	a5, -2034(s0)
	li	a0, 1
	li	a1, 1
	mv	a6, s2
	call	StoreMVBlock8x8
	lh	a2, -2040(s0)
	lbu	a3, -2026(s0)
	lbu	a4, -2022(s0)
	lh	a5, -2032(s0)
	li	a0, 1
	li	a1, 2
	mv	a6, s2
	call	StoreMVBlock8x8
	lh	a2, -2038(s0)
	lbu	a3, -2025(s0)
	lbu	a4, -2021(s0)
	lh	a5, -2030(s0)
	li	a0, 1
	li	a1, 3
	mv	a6, s2
	call	StoreMVBlock8x8
	lui	s4, %hi(img)
	ld	a0, %lo(img)(s4)
	lw	a0, 24(a0)
	addi	a0, a0, -1
	seqz	s2, a0
	addiw	s3, s3, 28
	addi	a0, sp, 12
	mv	a1, s8
	mv	a2, s3
	call	memcpy
	addi	a2, sp, 12
	li	a0, 0
	li	a1, 0
	mv	a3, s2
	call	RestoreMVBlock8x8
	addi	a0, sp, 12
	mv	a1, s8
	mv	a2, s3
	call	memcpy
	li	a1, 1
	addi	a2, sp, 12
	li	a0, 0
	mv	a3, s2
	call	RestoreMVBlock8x8
	addi	a0, sp, 12
	mv	a1, s8
	mv	a2, s3
	call	memcpy
	li	a1, 2
	addi	a2, sp, 12
	li	a0, 0
	mv	a3, s2
	call	RestoreMVBlock8x8
	addi	a0, sp, 12
	mv	a1, s8
	mv	a2, s3
	call	memcpy
	li	a1, 3
	addi	a2, sp, 12
	li	a0, 0
	mv	a3, s2
	call	RestoreMVBlock8x8
	lui	a0, %hi(cofAC_8x8ts)
	ld	s2, %lo(cofAC_8x8ts)(a0)
	li	s3, 0
	lui	s5, 3
	li	s6, 32
.LBB13_38:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(img)(s4)
	add	a0, a0, s5
	ld	a0, 1848(a0)
	add	s7, s2, s3
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s7)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s4)
	add	a0, a0, s5
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s7)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s4)
	add	a0, a0, s5
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s7)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s4)
	add	a0, a0, s5
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s7)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s4)
	add	a0, a0, s5
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s7)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s4)
	add	a0, a0, s5
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s7)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s4)
	add	a0, a0, s5
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s7)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s4)
	add	a0, a0, s5
	ld	a0, 1848(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(s7)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	addi	s3, s3, 8
	bne	s3, s6, .LBB13_38
# %bb.39:
	lui	a0, %hi(cnt_nonz8_8x8ts)
	lw	a1, %lo(cnt_nonz8_8x8ts)(a0)
	lui	a0, %hi(img)
	ld	s3, %lo(img)(a0)
	lui	a0, 22
	addiw	a0, a0, 380
	li	a2, 5
	add	a0, s3, a0
	blt	a2, a1, .LBB13_43
# %bb.40:
	lw	a1, 0(a0)
	lw	a2, 40(s3)
	negw	a1, a1
	bne	a2, a1, .LBB13_42
# %bb.41:
	lw	a1, 60(a0)
	bnez	a1, .LBB13_43
.LBB13_42:
	lw	a1, 24(s3)
	li	a2, 3
	bne	a1, a2, .LBB13_61
.LBB13_43:
	lui	a1, %hi(cbp8_8x8ts)
	lw	a1, %lo(cbp8_8x8ts)(a1)
	lui	a2, %hi(cbp_blk8_8x8ts)
	ld	a2, %lo(cbp_blk8_8x8ts)(a2)
	lw	a0, 80(a0)
	sw	a1, 364(s1)
	sd	a2, 368(s1)
	beqz	a0, .LBB13_49
# %bb.44:
	addi	a1, s8, 4
	lui	a0, %hi(rec_resG)
	addi	a0, a0, %lo(rec_resG)
	li	a2, 1024
	call	memcpy
.LBB13_45:
	lui	a0, 22
	add	a0, s3, a0
	lw	a0, 460(a0)
	beqz	a0, .LBB13_48
# %bb.46:
	lui	s2, %hi(tr8x8)
	addi	s2, s2, %lo(tr8x8)
	addi	a1, s2, 1028
	lui	a0, %hi(resTrans_R)
	addi	a0, a0, %lo(resTrans_R)
	li	a2, 1024
	call	memcpy
	addi	s1, s2, 2047
	addi	a1, s1, 5
	lui	a0, %hi(resTrans_B)
	addi	a0, a0, %lo(resTrans_B)
	li	a2, 1024
	call	memcpy
	lui	a0, 1
	addiw	s0, a0, 1088
	add	s0, s2, s0
	lui	a2, %hi(mprRGB)
	addi	a2, a2, %lo(mprRGB)
	addi	a0, a2, 1056
	addi	a1, s1, 1029
	addi	a2, a2, 2047
	addi	a2, a2, 33
.LBB13_47:                              # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	lw	a4, 1024(a1)
	lw	a5, -60(s0)
	lw	a6, 4(a1)
	sw	a3, -1056(a0)
	sw	a4, -32(a0)
	sw	a5, 992(a0)
	sw	a6, -1052(a0)
	lw	a3, -1080(s0)
	lw	a4, -56(s0)
	lw	a5, 8(a1)
	lw	a6, -1076(s0)
	sw	a3, -28(a0)
	sw	a4, 996(a0)
	sw	a5, -1048(a0)
	sw	a6, -24(a0)
	lw	a3, -52(s0)
	lw	a4, 12(a1)
	lw	a5, -1072(s0)
	lw	a6, -48(s0)
	sw	a3, 1000(a0)
	sw	a4, -1044(a0)
	sw	a5, -20(a0)
	sw	a6, 1004(a0)
	lw	a3, 16(a1)
	lw	a4, -1068(s0)
	lw	a5, -44(s0)
	lw	a6, 20(a1)
	sw	a3, -1040(a0)
	sw	a4, -16(a0)
	sw	a5, 1008(a0)
	sw	a6, -1036(a0)
	lw	a3, -1064(s0)
	lw	a4, -40(s0)
	lw	a5, 24(a1)
	lw	a6, -1060(s0)
	sw	a3, -12(a0)
	sw	a4, 1012(a0)
	sw	a5, -1032(a0)
	sw	a6, -8(a0)
	lw	a3, -36(s0)
	lw	a4, 28(a1)
	lw	a5, -1056(s0)
	lw	a6, -32(s0)
	sw	a3, 1016(a0)
	sw	a4, -1028(a0)
	sw	a5, -4(a0)
	sw	a6, 1020(a0)
	lw	a3, 32(a1)
	lw	a4, -1052(s0)
	lw	a5, -28(s0)
	lw	a6, 36(a1)
	sw	a3, -1024(a0)
	sw	a4, 0(a0)
	sw	a5, 1024(a0)
	sw	a6, -1020(a0)
	lw	a3, -1048(s0)
	lw	a4, -24(s0)
	lw	a5, 40(a1)
	lw	a6, -1044(s0)
	sw	a3, 4(a0)
	sw	a4, 1028(a0)
	sw	a5, -1016(a0)
	sw	a6, 8(a0)
	lw	a3, -20(s0)
	lw	a4, 44(a1)
	lw	a5, -1040(s0)
	lw	a6, -16(s0)
	sw	a3, 1032(a0)
	sw	a4, -1012(a0)
	sw	a5, 12(a0)
	sw	a6, 1036(a0)
	lw	a3, 48(a1)
	lw	a4, -1036(s0)
	lw	a5, -12(s0)
	lw	a6, 52(a1)
	sw	a3, -1008(a0)
	sw	a4, 16(a0)
	sw	a5, 1040(a0)
	sw	a6, -1004(a0)
	lw	a3, -1032(s0)
	lw	a4, -8(s0)
	lw	a5, 56(a1)
	lw	a6, -1028(s0)
	sw	a3, 20(a0)
	sw	a4, 1044(a0)
	sw	a5, -1000(a0)
	sw	a6, 24(a0)
	lw	a3, -4(s0)
	lw	a4, 60(a1)
	lw	a5, -1024(s0)
	lw	a6, 0(s0)
	sw	a3, 1048(a0)
	sw	a4, -996(a0)
	sw	a5, 28(a0)
	sw	a6, 1052(a0)
	addi	a0, a0, 64
	addi	s0, s0, 64
	addi	a1, a1, 64
	bne	a0, a2, .LBB13_47
.LBB13_48:
	lui	a0, 2
	addiw	a0, a0, -1888
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
	addi	sp, sp, 2032
	ret
.LBB13_49:                              # %.preheader5
	li	s4, 0
	lui	s5, 2
	addiw	s1, s5, -996
	add	s1, s8, s1
	addiw	s2, s5, -2020
	add	s2, s8, s2
	lui	s6, %hi(enc_picture)
	lui	s7, %hi(img)
	lui	s8, %hi(si_frame_indicator)
	lui	s9, %hi(sp2_frame_indicator)
	li	s10, 3
	li	s11, 16
	lui	s0, %hi(lrec)
	j	.LBB13_51
.LBB13_50:                              #   in Loop: Header=BB13_51 Depth=1
	addi	s4, s4, 1
	addi	s1, s1, 64
	addi	s2, s2, 32
	beq	s4, s11, .LBB13_45
.LBB13_51:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(enc_picture)(s6)
	lw	a1, 156(s3)
	add	a0, a0, s5
	ld	a0, -1768(a0)
	add	a1, s4, a1
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 152(s3)
	ld	a0, 0(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	li	a2, 32
	mv	a1, s2
	call	memcpy
	ld	s3, %lo(img)(s7)
	lw	a0, 24(s3)
	bne	a0, s10, .LBB13_50
# %bb.52:                               #   in Loop: Header=BB13_51 Depth=1
	lw	a0, %lo(si_frame_indicator)(s8)
	bnez	a0, .LBB13_50
# %bb.53:                               #   in Loop: Header=BB13_51 Depth=1
	lw	a0, %lo(sp2_frame_indicator)(s9)
	bnez	a0, .LBB13_50
# %bb.54:                               #   in Loop: Header=BB13_51 Depth=1
	lw	a0, 156(s3)
	ld	a1, %lo(lrec)(s0)
	add	a0, s4, a0
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s3)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	li	a2, 64
	mv	a1, s1
	call	memcpy
	ld	s3, %lo(img)(s7)
	j	.LBB13_50
.LBB13_55:                              # %.preheader
	li	s4, 0
	lui	s5, 2
	addiw	s0, s5, -996
	add	s0, a3, s0
	addiw	s1, s5, -2020
	add	s1, a3, s1
	lui	s6, %hi(enc_picture)
	lui	s7, %hi(img)
	lui	s8, %hi(si_frame_indicator)
	lui	s9, %hi(sp2_frame_indicator)
	li	s10, 3
	li	s11, 16
	lui	s3, %hi(lrec)
	j	.LBB13_57
.LBB13_56:                              #   in Loop: Header=BB13_57 Depth=1
	addi	s4, s4, 1
	addi	s0, s0, 64
	addi	s1, s1, 32
	beq	s4, s11, .LBB13_29
.LBB13_57:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(enc_picture)(s6)
	lw	a1, 156(s2)
	add	a0, a0, s5
	ld	a0, -1768(a0)
	add	a1, s4, a1
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 152(s2)
	ld	a0, 0(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	li	a2, 32
	mv	a1, s1
	call	memcpy
	ld	s2, %lo(img)(s7)
	lw	a0, 24(s2)
	bne	a0, s10, .LBB13_56
# %bb.58:                               #   in Loop: Header=BB13_57 Depth=1
	lw	a0, %lo(si_frame_indicator)(s8)
	bnez	a0, .LBB13_56
# %bb.59:                               #   in Loop: Header=BB13_57 Depth=1
	lw	a0, %lo(sp2_frame_indicator)(s9)
	bnez	a0, .LBB13_56
# %bb.60:                               #   in Loop: Header=BB13_57 Depth=1
	lw	a0, 156(s2)
	ld	a1, %lo(lrec)(s3)
	add	a0, s4, a0
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s2)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	li	a2, 64
	mv	a1, s0
	call	memcpy
	ld	s2, %lo(img)(s7)
	j	.LBB13_56
.LBB13_61:
	lw	a0, 80(a0)
	sw	zero, 364(s1)
	sd	zero, 368(s1)
	beqz	a0, .LBB13_65
# %bb.62:
	lui	a0, %hi(rec_resG)
	addi	a0, a0, %lo(rec_resG)
	li	a2, 1024
	li	a1, 0
	call	memset
	j	.LBB13_45
.LBB13_63:
	lw	a0, 80(a0)
	sw	zero, 364(s1)
	sd	zero, 368(s1)
	beqz	a0, .LBB13_71
# %bb.64:
	lui	a0, %hi(rec_resG)
	addi	a0, a0, %lo(rec_resG)
	li	a2, 1024
	li	a1, 0
	call	memset
	j	.LBB13_29
.LBB13_65:                              # %.preheader7
	li	s4, 0
	lui	s5, 2
	addiw	s1, s5, -996
	add	s1, s8, s1
	addiw	s2, s5, -1508
	add	s2, s8, s2
	lui	s6, %hi(enc_picture)
	lui	s7, %hi(img)
	lui	s8, %hi(si_frame_indicator)
	lui	s9, %hi(sp2_frame_indicator)
	li	s10, 3
	li	s11, 16
	lui	s0, %hi(lrec)
	j	.LBB13_67
.LBB13_66:                              #   in Loop: Header=BB13_67 Depth=1
	addi	s4, s4, 1
	addi	s1, s1, 64
	addi	s2, s2, 32
	beq	s4, s11, .LBB13_45
.LBB13_67:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(enc_picture)(s6)
	lw	a1, 156(s3)
	add	a0, a0, s5
	ld	a0, -1768(a0)
	add	a1, s4, a1
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 152(s3)
	ld	a0, 0(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	li	a2, 32
	mv	a1, s2
	call	memcpy
	ld	s3, %lo(img)(s7)
	lw	a0, 24(s3)
	bne	a0, s10, .LBB13_66
# %bb.68:                               #   in Loop: Header=BB13_67 Depth=1
	lw	a0, %lo(si_frame_indicator)(s8)
	bnez	a0, .LBB13_66
# %bb.69:                               #   in Loop: Header=BB13_67 Depth=1
	lw	a0, %lo(sp2_frame_indicator)(s9)
	bnez	a0, .LBB13_66
# %bb.70:                               #   in Loop: Header=BB13_67 Depth=1
	lw	a0, 156(s3)
	ld	a1, %lo(lrec)(s0)
	add	a0, s4, a0
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s3)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	li	a2, 64
	mv	a1, s1
	call	memcpy
	ld	s3, %lo(img)(s7)
	j	.LBB13_66
.LBB13_71:                              # %.preheader1
	li	s4, 0
	lui	s5, 2
	addiw	s0, s5, -996
	add	s0, a3, s0
	addiw	s1, s5, -1508
	add	s1, a3, s1
	lui	s6, %hi(enc_picture)
	lui	s7, %hi(img)
	lui	s8, %hi(si_frame_indicator)
	lui	s9, %hi(sp2_frame_indicator)
	li	s10, 3
	li	s11, 16
	lui	s3, %hi(lrec)
	j	.LBB13_73
.LBB13_72:                              #   in Loop: Header=BB13_73 Depth=1
	addi	s4, s4, 1
	addi	s0, s0, 64
	addi	s1, s1, 32
	bne	s4, s11, .LBB13_73
	j	.LBB13_29
.LBB13_73:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(enc_picture)(s6)
	lw	a1, 156(s2)
	add	a0, a0, s5
	ld	a0, -1768(a0)
	add	a1, s4, a1
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 152(s2)
	ld	a0, 0(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	li	a2, 32
	mv	a1, s1
	call	memcpy
	ld	s2, %lo(img)(s7)
	lw	a0, 24(s2)
	bne	a0, s10, .LBB13_72
# %bb.74:                               #   in Loop: Header=BB13_73 Depth=1
	lw	a0, %lo(si_frame_indicator)(s8)
	bnez	a0, .LBB13_72
# %bb.75:                               #   in Loop: Header=BB13_73 Depth=1
	lw	a0, %lo(sp2_frame_indicator)(s9)
	bnez	a0, .LBB13_72
# %bb.76:                               #   in Loop: Header=BB13_73 Depth=1
	lw	a0, 156(s2)
	ld	a1, %lo(lrec)(s3)
	add	a0, s4, a0
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s2)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	li	a2, 64
	mv	a1, s0
	call	memcpy
	ld	s2, %lo(img)(s7)
	j	.LBB13_72
.Lfunc_end13:
	.size	SetCoeffAndReconstruction8x8, .Lfunc_end13-SetCoeffAndReconstruction8x8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	StoreMV8x8                      # -- Begin function StoreMV8x8
	.p2align	2
	.type	StoreMV8x8,@function
StoreMV8x8:                             # @StoreMV8x8
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a1, 24(a1)
	lui	s2, %hi(tr8x8+8192)
	addi	s2, s2, %lo(tr8x8+8192)
	lh	a2, -2044(s2)
	lbu	a3, -2028(s2)
	lbu	a4, -2024(s2)
	lh	a5, -2036(s2)
	mv	s0, a0
	addi	a1, a1, -1
	seqz	s1, a1
	li	a1, 0
	mv	a6, s1
	call	StoreMVBlock8x8
	lh	a2, -2042(s2)
	lbu	a3, -2027(s2)
	lbu	a4, -2023(s2)
	lh	a5, -2034(s2)
	li	a1, 1
	mv	a0, s0
	mv	a6, s1
	call	StoreMVBlock8x8
	lh	a2, -2040(s2)
	lbu	a3, -2026(s2)
	lbu	a4, -2022(s2)
	lh	a5, -2032(s2)
	li	a1, 2
	mv	a0, s0
	mv	a6, s1
	call	StoreMVBlock8x8
	lh	a2, -2038(s2)
	lbu	a3, -2025(s2)
	lbu	a4, -2021(s2)
	lh	a5, -2030(s2)
	li	a1, 3
	mv	a0, s0
	mv	a6, s1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	StoreMVBlock8x8
.Lfunc_end14:
	.size	StoreMV8x8, .Lfunc_end14-StoreMV8x8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	RestoreMV8x8                    # -- Begin function RestoreMV8x8
	.p2align	2
	.type	RestoreMV8x8,@function
RestoreMV8x8:                           # @RestoreMV8x8
# %bb.0:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)                    # 8-byte Folded Spill
	sd	s0, 2016(sp)                    # 8-byte Folded Spill
	sd	s1, 2008(sp)                    # 8-byte Folded Spill
	sd	s2, 2000(sp)                    # 8-byte Folded Spill
	sd	s3, 1992(sp)                    # 8-byte Folded Spill
	lui	a1, 2
	addiw	a1, a1, -1952
	sub	sp, sp, a1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a1, 24(a1)
	mv	s0, a0
	addi	a1, a1, -1
	seqz	s1, a1
	lui	s2, %hi(tr8x8)
	addi	s2, s2, %lo(tr8x8)
	lui	s3, 2
	addiw	s3, s3, 28
	addi	a0, sp, 12
	mv	a1, s2
	mv	a2, s3
	call	memcpy
	addi	a2, sp, 12
	mv	a0, s0
	li	a1, 0
	mv	a3, s1
	call	RestoreMVBlock8x8
	addi	a0, sp, 12
	mv	a1, s2
	mv	a2, s3
	call	memcpy
	li	a1, 1
	addi	a2, sp, 12
	mv	a0, s0
	mv	a3, s1
	call	RestoreMVBlock8x8
	addi	a0, sp, 12
	mv	a1, s2
	mv	a2, s3
	call	memcpy
	li	a1, 2
	addi	a2, sp, 12
	mv	a0, s0
	mv	a3, s1
	call	RestoreMVBlock8x8
	addi	a0, sp, 12
	mv	a1, s2
	mv	a2, s3
	call	memcpy
	li	a1, 3
	addi	a2, sp, 12
	mv	a0, s0
	mv	a3, s1
	call	RestoreMVBlock8x8
	lui	a0, 2
	addiw	a0, a0, -1952
	add	sp, sp, a0
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	ld	s1, 2008(sp)                    # 8-byte Folded Reload
	ld	s2, 2000(sp)                    # 8-byte Folded Reload
	ld	s3, 1992(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 2032
	ret
.Lfunc_end15:
	.size	RestoreMV8x8, .Lfunc_end15-RestoreMV8x8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SetMotionVectorsMB              # -- Begin function SetMotionVectorsMB
	.p2align	2
	.type	SetMotionVectorsMB,@function
SetMotionVectorsMB:                     # @SetMotionVectorsMB
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	sd	s4, 80(sp)                      # 8-byte Folded Spill
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	sd	s7, 56(sp)                      # 8-byte Folded Spill
	sd	s8, 48(sp)                      # 8-byte Folded Spill
	sd	s9, 40(sp)                      # 8-byte Folded Spill
	sd	s10, 32(sp)                     # 8-byte Folded Spill
	sd	s11, 24(sp)                     # 8-byte Folded Spill
	lui	t2, %hi(img)
	ld	a2, %lo(img)(t2)
	lui	a3, 22
	addiw	a4, a3, -784
	add	a4, a2, a4
	ld	s1, 8(a4)
	ld	n10, 0(a4)
	mv	s0, a0
	beqz	a1, .LBB16_33
# %bb.1:
	sd	n10, 8(sp)                      # 8-byte Folded Spill
	li	a1, 0
	addi	s6, s0, 376
	addi	s7, s0, 392
	lui	t6, %hi(enc_picture)
	lui	t3, 2
	addiw	s10, t3, -1712
	li	t4, 2
	li	n2, 1
	addiw	s8, a3, -760
	addiw	s3, a3, -768
	li	n3, 4
	li	n4, -1
	j	.LBB16_3
.LBB16_2:                               #   in Loop: Header=BB16_3 Depth=1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 1
	beq	a1, n3, .LBB16_21
.LBB16_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
	ld	a0, %lo(img)(t2)
	lw	a0, 148(a0)
	li	s9, 0
	li	s5, 0
	andi	s11, a1, 2
	addw	s4, a0, a1
	slli	s4, s4, 3
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	slli	s2, a1, 3
	j	.LBB16_6
.LBB16_4:                               #   in Loop: Header=BB16_6 Depth=2
	add	a3, s1, s2
	ld	a3, 0(a3)
	add	a3, a3, s9
	ld	a3, 0(a3)
	ld	a3, 0(a3)
	slli	a5, a5, 3
	add	a3, a3, a5
	ld	a2, 24(a2)
	ld	a3, 0(a3)
	slli	a0, a0, 3
	ld	a5, 0(a2)
	add	a0, a3, a0
	ld	a0, 0(a0)
	add	a5, a5, s4
	ld	a3, 0(a5)
	lh	a5, 0(a0)
	ld	a2, 8(a2)
	slli	a1, a1, 3
	add	a3, a3, a1
	ld	a3, 0(a3)
	add	a2, a2, s4
	ld	a2, 0(a2)
	sh	a5, 0(a3)
	lh	a0, 2(a0)
	add	a1, a2, a1
	ld	a1, 0(a1)
	sh	a0, 2(a3)
	sh	zero, 0(a1)
	sh	zero, 2(a1)
	sb	n4, 0(a4)
.LBB16_5:                               #   in Loop: Header=BB16_6 Depth=2
	addi	s5, s5, 1
	addi	s9, s9, 8
	beq	s5, n3, .LBB16_2
.LBB16_6:                               #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srliw	a0, s5, 1
	ld	a2, %lo(enc_picture)(t6)
	or	a0, a0, s11
	slli	a1, a0, 2
	ld	a6, %lo(img)(t2)
	add	a2, a2, s10
	ld	a3, 0(a2)
	add	a0, s6, a1
	lw	a0, 0(a0)
	lw	a4, 144(a6)
	ld	a5, 0(a3)
	add	a1, s7, a1
	ld	a3, 8(a3)
	lw	a7, 0(a1)
	add	a5, a5, s4
	ld	t0, 0(a5)
	add	a3, a3, s4
	ld	a3, 0(a3)
	add	a1, s5, a4
	add	t0, t0, a1
	lbu	a5, 0(t0)
	add	a4, a3, a1
	lhu	t1, 476(s0)
	lbu	a3, 0(a4)
	beqz	t1, .LBB16_14
# %bb.7:                                #   in Loop: Header=BB16_6 Depth=2
	bne	a7, t4, .LBB16_14
# %bb.8:                                #   in Loop: Header=BB16_6 Depth=2
	lw	a4, 72(s0)
	bne	a4, n2, .LBB16_12
# %bb.9:                                #   in Loop: Header=BB16_6 Depth=2
	mv	a3, s3
	beq	t1, n2, .LBB16_11
# %bb.10:                               #   in Loop: Header=BB16_6 Depth=2
	mv	a3, s8
.LBB16_11:                              #   in Loop: Header=BB16_6 Depth=2
	add	a3, a6, a3
	ld	s1, 0(a3)
	li	a5, 0
	li	a3, 0
.LBB16_12:                              #   in Loop: Header=BB16_6 Depth=2
	add	a4, s1, s2
	ld	a4, 0(a4)
	add	a4, a4, s9
	ld	a4, 0(a4)
	ld	a6, 0(a4)
	slli	a5, a5, 3
	add	a5, a6, a5
	ld	a2, 24(a2)
	ld	a5, 0(a5)
	slli	a0, a0, 3
	ld	a6, 0(a2)
	add	a5, a5, a0
	ld	a5, 0(a5)
	add	a6, a6, s4
	ld	a6, 0(a6)
	lh	a7, 0(a5)
	slli	a1, a1, 3
	ld	a4, 8(a4)
	add	a6, a6, a1
	ld	a6, 0(a6)
	slli	a3, a3, 3
	add	a3, a4, a3
	ld	a3, 0(a3)
	sh	a7, 0(a6)
	ld	a2, 8(a2)
	lh	a4, 2(a5)
	add	a0, a3, a0
	ld	a0, 0(a0)
	add	a2, a2, s4
	ld	a2, 0(a2)
	sh	a4, 2(a6)
.LBB16_13:                              #   in Loop: Header=BB16_6 Depth=2
	lh	a3, 0(a0)
	add	a1, a2, a1
	ld	a1, 0(a1)
	sh	a3, 0(a1)
	lh	a0, 2(a0)
	sh	a0, 2(a1)
	j	.LBB16_5
.LBB16_14:                              #   in Loop: Header=BB16_6 Depth=2
	beq	a7, n2, .LBB16_18
# %bb.15:                               #   in Loop: Header=BB16_6 Depth=2
	beqz	a7, .LBB16_4
# %bb.16:                               #   in Loop: Header=BB16_6 Depth=2
	bne	a7, n4, .LBB16_19
# %bb.17:                               #   in Loop: Header=BB16_6 Depth=2
	ld	a0, 24(a2)
	ld	a2, 0(a0)
	ld	a0, 8(a0)
	add	a2, a2, s4
	ld	a2, 0(a2)
	add	a0, a0, s4
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a2, a2, a1
	ld	a2, 0(a2)
	add	a0, a0, a1
	ld	a0, 0(a0)
	sh	zero, 0(a2)
	sh	zero, 2(a2)
	sh	zero, 0(a0)
	sh	zero, 2(a0)
	j	.LBB16_5
.LBB16_18:                              #   in Loop: Header=BB16_6 Depth=2
	ld	a2, 24(a2)
	ld	a2, 0(a2)
	add	a2, a2, s4
	ld	a2, 0(a2)
	slli	a1, a1, 3
	add	a2, a2, a1
	ld	a2, 0(a2)
	sh	zero, 0(a2)
	sh	zero, 2(a2)
	sb	n4, 0(t0)
	add	a2, s1, s2
	ld	a2, 0(a2)
	add	a2, a2, s9
	ld	a2, 0(a2)
	ld	a4, %lo(enc_picture)(t6)
	ld	a2, 8(a2)
	slli	a3, a3, 3
	add	a4, a4, t3
	ld	a4, -1688(a4)
	add	a2, a2, a3
	ld	a2, 0(a2)
	ld	a3, 8(a4)
	slli	a0, a0, 3
	add	a0, a2, a0
	ld	a0, 0(a0)
	add	a3, a3, s4
	ld	a2, 0(a3)
	j	.LBB16_13
.LBB16_19:                              #   in Loop: Header=BB16_6 Depth=2
	beq	a7, t4, .LBB16_12
# %bb.20:                               #   in Loop: Header=BB16_6 Depth=2
	li	a1, 255
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	error
	li	n4, -1
	li	n3, 4
	li	n2, 1
	lui	t6, %hi(enc_picture)
	li	t4, 2
	lui	t3, 2
	lui	t2, %hi(img)
	j	.LBB16_5
.LBB16_21:
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	ld	n10, 8(sp)                      # 8-byte Folded Reload
.LBB16_22:
	lui	a0, 22
	add	a0, a2, a0
	lw	a0, 108(a0)
	beqz	a0, .LBB16_32
# %bb.23:
	lw	a1, 36(a2)
	blez	a1, .LBB16_32
# %bb.24:
	li	a0, 0
	slli	a1, a1, 3
	lui	a2, %hi(rdopt)
	li	a3, 4
.LBB16_25:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_26 Depth 2
                                        #       Child Loop BB16_27 Depth 3
                                        #       Child Loop BB16_29 Depth 3
	li	a4, 0
	slli	a5, a0, 3
.LBB16_26:                              #   Parent Loop BB16_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_27 Depth 3
                                        #       Child Loop BB16_29 Depth 3
	slli	a7, a4, 3
	add	a6, s1, a7
	ld	t0, %lo(rdopt)(a2)
	ld	a6, 0(a6)
	add	t1, n10, a7
	ld	t2, 1656(t0)
	add	a6, a6, a5
	ld	a6, 0(a6)
	ld	t0, 1648(t0)
	add	t2, t2, a7
	ld	t2, 0(t2)
	ld	t1, 0(t1)
	add	a7, t0, a7
	ld	t0, 0(a7)
	add	t2, t2, a5
	ld	a7, 0(t2)
	add	t2, t1, a5
	add	t0, t0, a5
	ld	t1, 0(t0)
	ld	t0, 0(t2)
	ld	t2, 0(a6)
	ld	t3, 0(a7)
	ld	t4, 0(t1)
	ld	t5, 0(t0)
	add	t6, t4, a1
.LBB16_27:                              #   Parent Loop BB16_25 Depth=1
                                        #     Parent Loop BB16_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	n1, 0(t2)
	ld	n2, 0(n1)
	ld	n3, 0(t3)
	ld	n4, 0(t5)
	lh	n5, 0(n2)
	ld	n6, 0(n3)
	ld	n7, 0(n4)
	ld	n8, 0(t4)
	sh	n5, 0(n6)
	lh	n5, 0(n7)
	ld	n9, 0(n8)
	sh	n5, 0(n9)
	lh	n2, 2(n2)
	sh	n2, 2(n6)
	lh	n2, 2(n7)
	ld	n5, 8(n1)
	sh	n2, 2(n9)
	lh	n2, 0(n5)
	ld	n6, 8(n3)
	ld	n7, 8(n4)
	sh	n2, 0(n6)
	lh	n2, 0(n7)
	ld	n9, 8(n8)
	sh	n2, 0(n9)
	lh	n2, 2(n5)
	sh	n2, 2(n6)
	lh	n2, 2(n7)
	ld	n5, 16(n1)
	sh	n2, 2(n9)
	lh	n2, 0(n5)
	ld	n6, 16(n3)
	ld	n7, 16(n4)
	sh	n2, 0(n6)
	lh	n2, 0(n7)
	ld	n9, 16(n8)
	sh	n2, 0(n9)
	lh	n2, 2(n5)
	sh	n2, 2(n6)
	lh	n2, 2(n7)
	ld	n5, 24(n1)
	sh	n2, 2(n9)
	lh	n2, 0(n5)
	ld	n6, 24(n3)
	ld	n7, 24(n4)
	sh	n2, 0(n6)
	lh	n2, 0(n7)
	ld	n9, 24(n8)
	sh	n2, 0(n9)
	lh	n2, 2(n5)
	sh	n2, 2(n6)
	lh	n2, 2(n7)
	ld	n5, 32(n1)
	sh	n2, 2(n9)
	lh	n2, 0(n5)
	ld	n6, 32(n3)
	ld	n7, 32(n4)
	sh	n2, 0(n6)
	lh	n2, 0(n7)
	ld	n9, 32(n8)
	sh	n2, 0(n9)
	lh	n2, 2(n5)
	sh	n2, 2(n6)
	lh	n2, 2(n7)
	ld	n5, 40(n1)
	sh	n2, 2(n9)
	lh	n2, 0(n5)
	ld	n6, 40(n3)
	ld	n7, 40(n4)
	sh	n2, 0(n6)
	lh	n2, 0(n7)
	ld	n9, 40(n8)
	sh	n2, 0(n9)
	lh	n2, 2(n5)
	sh	n2, 2(n6)
	lh	n2, 2(n7)
	ld	n5, 48(n1)
	sh	n2, 2(n9)
	lh	n2, 0(n5)
	ld	n6, 48(n3)
	ld	n7, 48(n4)
	sh	n2, 0(n6)
	lh	n2, 0(n7)
	ld	n9, 48(n8)
	sh	n2, 0(n9)
	lh	n2, 2(n5)
	sh	n2, 2(n6)
	lh	n2, 2(n7)
	ld	n5, 56(n1)
	sh	n2, 2(n9)
	lh	n2, 0(n5)
	ld	n6, 56(n3)
	ld	n7, 56(n4)
	sh	n2, 0(n6)
	lh	n2, 0(n7)
	ld	n9, 56(n8)
	sh	n2, 0(n9)
	lh	n2, 2(n5)
	sh	n2, 2(n6)
	lh	n2, 2(n7)
	ld	n1, 64(n1)
	sh	n2, 2(n9)
	lh	n2, 0(n1)
	ld	n3, 64(n3)
	ld	n4, 64(n4)
	sh	n2, 0(n3)
	lh	n2, 0(n4)
	ld	n5, 64(n8)
	sh	n2, 0(n5)
	lh	n1, 2(n1)
	sh	n1, 2(n3)
	lh	n1, 2(n4)
	sh	n1, 2(n5)
	addi	t4, t4, 8
	addi	t5, t5, 8
	addi	t3, t3, 8
	addi	t2, t2, 8
	bne	t4, t6, .LBB16_27
# %bb.28:                               #   in Loop: Header=BB16_26 Depth=2
	ld	a6, 8(a6)
	ld	a7, 8(a7)
	ld	t1, 8(t1)
	ld	t0, 8(t0)
	add	t2, t1, a1
.LBB16_29:                              #   Parent Loop BB16_25 Depth=1
                                        #     Parent Loop BB16_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t3, 0(a6)
	ld	t4, 0(t3)
	ld	t5, 0(a7)
	ld	t6, 0(t0)
	lh	n1, 0(t4)
	ld	n2, 0(t5)
	ld	n3, 0(t6)
	ld	n4, 0(t1)
	sh	n1, 0(n2)
	lh	n1, 0(n3)
	ld	n5, 0(n4)
	sh	n1, 0(n5)
	lh	t4, 2(t4)
	sh	t4, 2(n2)
	lh	t4, 2(n3)
	ld	n1, 8(t3)
	sh	t4, 2(n5)
	lh	t4, 0(n1)
	ld	n2, 8(t5)
	ld	n3, 8(t6)
	sh	t4, 0(n2)
	lh	t4, 0(n3)
	ld	n5, 8(n4)
	sh	t4, 0(n5)
	lh	t4, 2(n1)
	sh	t4, 2(n2)
	lh	t4, 2(n3)
	ld	n1, 16(t3)
	sh	t4, 2(n5)
	lh	t4, 0(n1)
	ld	n2, 16(t5)
	ld	n3, 16(t6)
	sh	t4, 0(n2)
	lh	t4, 0(n3)
	ld	n5, 16(n4)
	sh	t4, 0(n5)
	lh	t4, 2(n1)
	sh	t4, 2(n2)
	lh	t4, 2(n3)
	ld	n1, 24(t3)
	sh	t4, 2(n5)
	lh	t4, 0(n1)
	ld	n2, 24(t5)
	ld	n3, 24(t6)
	sh	t4, 0(n2)
	lh	t4, 0(n3)
	ld	n5, 24(n4)
	sh	t4, 0(n5)
	lh	t4, 2(n1)
	sh	t4, 2(n2)
	lh	t4, 2(n3)
	ld	n1, 32(t3)
	sh	t4, 2(n5)
	lh	t4, 0(n1)
	ld	n2, 32(t5)
	ld	n3, 32(t6)
	sh	t4, 0(n2)
	lh	t4, 0(n3)
	ld	n5, 32(n4)
	sh	t4, 0(n5)
	lh	t4, 2(n1)
	sh	t4, 2(n2)
	lh	t4, 2(n3)
	ld	n1, 40(t3)
	sh	t4, 2(n5)
	lh	t4, 0(n1)
	ld	n2, 40(t5)
	ld	n3, 40(t6)
	sh	t4, 0(n2)
	lh	t4, 0(n3)
	ld	n5, 40(n4)
	sh	t4, 0(n5)
	lh	t4, 2(n1)
	sh	t4, 2(n2)
	lh	t4, 2(n3)
	ld	n1, 48(t3)
	sh	t4, 2(n5)
	lh	t4, 0(n1)
	ld	n2, 48(t5)
	ld	n3, 48(t6)
	sh	t4, 0(n2)
	lh	t4, 0(n3)
	ld	n5, 48(n4)
	sh	t4, 0(n5)
	lh	t4, 2(n1)
	sh	t4, 2(n2)
	lh	t4, 2(n3)
	ld	n1, 56(t3)
	sh	t4, 2(n5)
	lh	t4, 0(n1)
	ld	n2, 56(t5)
	ld	n3, 56(t6)
	sh	t4, 0(n2)
	lh	t4, 0(n3)
	ld	n5, 56(n4)
	sh	t4, 0(n5)
	lh	t4, 2(n1)
	sh	t4, 2(n2)
	lh	t4, 2(n3)
	ld	t3, 64(t3)
	sh	t4, 2(n5)
	lh	t4, 0(t3)
	ld	t5, 64(t5)
	ld	t6, 64(t6)
	sh	t4, 0(t5)
	lh	t4, 0(t6)
	ld	n1, 64(n4)
	sh	t4, 0(n1)
	lh	t3, 2(t3)
	sh	t3, 2(t5)
	lh	t3, 2(t6)
	sh	t3, 2(n1)
	addi	t1, t1, 8
	addi	t0, t0, 8
	addi	a7, a7, 8
	addi	a6, a6, 8
	bne	t1, t2, .LBB16_29
# %bb.30:                               #   in Loop: Header=BB16_26 Depth=2
	addi	a4, a4, 1
	bne	a4, a3, .LBB16_26
# %bb.31:                               #   in Loop: Header=BB16_25 Depth=1
	addi	a0, a0, 1
	bne	a0, a3, .LBB16_25
.LBB16_32:
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.LBB16_33:
	li	a0, 0
	lw	t1, 148(a2)
	lw	a1, 144(a2)
	lui	a3, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a3)
	addi	a3, s0, 392
	lui	a5, 2
	addiw	a5, a5, -1712
	add	a4, a4, a5
	addi	a5, s0, 376
	addi	a6, a1, 1
	addi	a7, a1, 2
	addi	t0, a1, 3
	slli	t1, t1, 3
	slli	t2, a1, 3
	slli	t3, a6, 3
	slli	t4, a7, 3
	slli	t5, t0, 3
	li	t6, 4
	mv	n1, s1
	j	.LBB16_36
.LBB16_34:                              #   in Loop: Header=BB16_36 Depth=1
	ld	n4, 0(a4)
	ld	n4, 0(n4)
	ld	n5, 0(n1)
	add	n4, n4, t1
	ld	n4, 0(n4)
	ld	n6, 16(n5)
	add	n7, n4, a7
	lbu	n7, 0(n7)
	ld	n6, 0(n6)
	add	n3, a5, n3
	slli	n7, n7, 3
	add	n6, n6, n7
	lw	n3, 0(n3)
	ld	n6, 0(n6)
	slli	n3, n3, 3
	add	n6, n6, n3
	ld	n6, 0(n6)
	lh	n7, 0(n6)
	add	n8, n2, t4
	ld	n8, 0(n8)
	sh	n7, 0(n8)
	lh	n6, 2(n6)
	ld	n5, 24(n5)
	sh	n6, 2(n8)
	add	n4, n4, t0
	lbu	n4, 0(n4)
	ld	n5, 0(n5)
	slli	n4, n4, 3
	add	n4, n5, n4
	ld	n4, 0(n4)
	add	n3, n4, n3
	ld	n3, 0(n3)
	lh	n4, 0(n3)
	add	n2, n2, t5
	ld	n2, 0(n2)
	sh	n4, 0(n2)
	lhu	n3, 2(n3)
.LBB16_35:                              #   in Loop: Header=BB16_36 Depth=1
	sh	n3, 2(n2)
	addi	a0, a0, 1
	addi	n1, n1, 8
	addi	t1, t1, 8
	beq	a0, t6, .LBB16_22
.LBB16_36:                              # =>This Inner Loop Header: Depth=1
	andi	n3, a0, 2
	slli	n2, n3, 2
	add	n4, a3, n2
	lw	n4, 0(n4)
	bltz	n4, .LBB16_38
# %bb.37:                               #   in Loop: Header=BB16_36 Depth=1
	ld	n4, 0(a4)
	ld	n4, 0(n4)
	add	n4, n4, t1
	ld	n5, 0(n1)
	ld	n4, 0(n4)
	ld	n5, 0(n5)
	add	n4, n4, a1
	lbu	n4, 0(n4)
	add	n6, a5, n2
	ld	n2, 0(n5)
	lw	n5, 0(n6)
	slli	n4, n4, 3
	ld	n7, 24(a4)
	add	n2, n2, n4
	ld	n2, 0(n2)
	ld	n4, 0(n7)
	slli	n5, n5, 3
	add	n2, n2, n5
	ld	n5, 0(n2)
	add	n4, n4, t1
	ld	n2, 0(n4)
	lh	n4, 0(n5)
	add	n7, n2, t2
	ld	n8, 0(a4)
	ld	n7, 0(n7)
	ld	n8, 0(n8)
	sh	n4, 0(n7)
	lh	n4, 2(n5)
	ld	n5, 0(n1)
	add	n8, n8, t1
	ld	n8, 0(n8)
	ld	n5, 8(n5)
	sh	n4, 2(n7)
	add	n8, n8, a6
	lbu	n4, 0(n8)
	ld	n5, 0(n5)
	lw	n6, 0(n6)
	slli	n4, n4, 3
	add	n4, n5, n4
	ld	n4, 0(n4)
	slli	n6, n6, 3
	add	n4, n4, n6
	ld	n5, 0(n4)
	lh	n6, 0(n5)
	add	n4, n2, t3
	ld	n4, 0(n4)
	sh	n6, 0(n4)
	lhu	n5, 2(n5)
	j	.LBB16_39
.LBB16_38:                              #   in Loop: Header=BB16_36 Depth=1
	ld	n2, 24(a4)
	ld	n2, 0(n2)
	add	n2, n2, t1
	ld	n2, 0(n2)
	add	n4, n2, t2
	ld	n6, 0(n4)
	ld	n4, 8(n4)
	li	n5, 0
	sh	zero, 0(n6)
	sh	zero, 2(n6)
	sh	zero, 0(n4)
.LBB16_39:                              #   in Loop: Header=BB16_36 Depth=1
	addi	n3, n3, 1
	slli	n3, n3, 2
	add	n6, a3, n3
	lw	n6, 0(n6)
	sh	n5, 2(n4)
	bgez	n6, .LBB16_34
# %bb.40:                               #   in Loop: Header=BB16_36 Depth=1
	add	n3, n2, t4
	ld	n4, 0(n3)
	add	n2, n2, t5
	ld	n2, 0(n2)
	li	n3, 0
	sh	zero, 0(n4)
	sh	zero, 2(n4)
	sh	zero, 0(n2)
	j	.LBB16_35
.Lfunc_end16:
	.size	SetMotionVectorsMB, .Lfunc_end16-SetMotionVectorsMB
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function RDCost_for_macroblocks
.LCPI17_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	RDCost_for_macroblocks
	.p2align	2
	.type	RDCost_for_macroblocks,@function
RDCost_for_macroblocks:                 # @RDCost_for_macroblocks
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
	fsd	fs0, 64(sp)                     # 8-byte Folded Spill
	lui	s0, %hi(img)
	ld	a4, %lo(img)(s0)
	mv	s11, a2
	mv	s1, a1
	mv	s3, a0
	fmv.d	fs0, fa0
	lw	a0, 12(a4)
	sw	a3, 60(sp)
	sw	zero, 56(sp)
	sw	zero, 52(sp)
	call	FmoGetPreviousMBNr
	ld	a1, %lo(img)(s0)
	lui	a2, 8
	add	a2, a1, a2
	ld	s5, -1192(a2)
	lw	s10, 24(a1)
	lw	s2, 12(a1)
	li	a1, 2
	mv	s6, a0
	bne	s10, a1, .LBB17_2
# %bb.1:
	mv	a0, s3
	call	SetModesAndRefframeForBlocks
	ld	s9, %lo(img)(s0)
	sd	zero, 32(sp)                    # 8-byte Folded Spill
	seqz	s0, s3
	j	.LBB17_21
.LBB17_2:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	addi	a0, a0, -1
	snez	s4, a0
	mv	a0, s3
	call	SetModesAndRefframeForBlocks
	ld	s9, %lo(img)(s0)
	seqz	s0, s3
	bnez	s3, .LBB17_20
# %bb.3:
	li	a0, 1
	bne	s10, a0, .LBB17_20
# %bb.4:
	lw	a0, 156(s9)
	lui	a1, %hi(direct_pdir)
	ld	a1, %lo(direct_pdir)(a1)
	lw	a4, 152(s9)
	srai	a0, a0, 2
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a5, 0(a0)
	srai	a4, a4, 2
	slli	a1, a4, 1
	add	a2, a5, a1
	lh	a2, 0(a2)
	bgez	a2, .LBB17_5
	j	.LBB17_107
.LBB17_5:
	addi	a2, a4, 1
	slli	a2, a2, 1
	add	a3, a5, a2
	lh	a3, 0(a3)
	bgez	a3, .LBB17_6
	j	.LBB17_107
.LBB17_6:
	addi	a3, a4, 2
	slli	a3, a3, 1
	add	a6, a5, a3
	lh	a6, 0(a6)
	bgez	a6, .LBB17_7
	j	.LBB17_107
.LBB17_7:
	addi	a4, a4, 3
	slli	a4, a4, 1
	add	a5, a5, a4
	lh	a5, 0(a5)
	bgez	a5, .LBB17_8
	j	.LBB17_107
.LBB17_8:
	ld	a5, 8(a0)
	add	a6, a5, a1
	lh	a6, 0(a6)
	bgez	a6, .LBB17_9
	j	.LBB17_107
.LBB17_9:
	add	a6, a5, a2
	lh	a6, 0(a6)
	bgez	a6, .LBB17_10
	j	.LBB17_107
.LBB17_10:
	add	a6, a5, a3
	lh	a6, 0(a6)
	bgez	a6, .LBB17_11
	j	.LBB17_107
.LBB17_11:
	add	a5, a5, a4
	lh	a5, 0(a5)
	bgez	a5, .LBB17_12
	j	.LBB17_107
.LBB17_12:
	ld	a5, 16(a0)
	add	a6, a5, a1
	lh	a6, 0(a6)
	bgez	a6, .LBB17_13
	j	.LBB17_107
.LBB17_13:
	add	a6, a5, a2
	lh	a6, 0(a6)
	bgez	a6, .LBB17_14
	j	.LBB17_107
.LBB17_14:
	add	a6, a5, a3
	lh	a6, 0(a6)
	bgez	a6, .LBB17_15
	j	.LBB17_107
.LBB17_15:
	add	a5, a5, a4
	lh	a5, 0(a5)
	bgez	a5, .LBB17_16
	j	.LBB17_107
.LBB17_16:
	ld	a0, 24(a0)
	add	a1, a0, a1
	lh	a1, 0(a1)
	bgez	a1, .LBB17_17
	j	.LBB17_107
.LBB17_17:
	add	a2, a0, a2
	lh	a1, 0(a2)
	bgez	a1, .LBB17_18
	j	.LBB17_107
.LBB17_18:
	add	a3, a0, a3
	lh	a1, 0(a3)
	bgez	a1, .LBB17_19
	j	.LBB17_107
.LBB17_19:
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	add	a0, a0, a4
	lh	a0, 0(a0)
	li	s0, 1
	bgez	a0, .LBB17_21
	j	.LBB17_107
.LBB17_20:
	sd	s4, 32(sp)                      # 8-byte Folded Spill
.LBB17_21:
	lui	a0, 22
	addiw	a0, a0, -776
	add	a0, s9, a0
	lw	a1, 884(a0)
	li	a2, 528
	mul	s4, s2, a2
	add	s4, s5, s4
	beqz	a1, .LBB17_24
# %bb.22:
	lw	a1, 424(s4)
	bnez	a1, .LBB17_24
# %bb.23:
	lw	a1, 24(s9)
	or	a1, a1, s3
	beqz	a1, .LBB17_34
.LBB17_24:
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	lw	a0, 876(a0)
	beqz	a0, .LBB17_26
# %bb.25:
	lui	a0, 3
	addiw	a0, a0, 1864
	add	a0, s9, a0
	lui	s2, 4
	addiw	s5, s2, 1864
	add	s5, s9, s5
	lui	s8, 5
	addiw	s6, s8, 840
	add	s6, s9, s6
	addiw	s7, s8, 1864
	add	s7, s9, s7
	li	a2, 832
	li	a1, 0
	call	memset
	li	a2, 832
	mv	a0, s5
	li	a1, 0
	call	memset
	li	a2, 768
	mv	a0, s6
	li	a1, 0
	call	memset
	li	a2, 768
	mv	a0, s7
	li	a1, 0
	call	memset
	lui	a0, %hi(img)
	ld	s9, %lo(img)(a0)
	addiw	s5, s8, 1608
	add	s5, s9, s5
	lui	a0, 6
	addiw	s6, a0, -1464
	add	s6, s9, s6
	addiw	a0, s2, -1400
	add	a0, s9, a0
	addiw	s7, s8, -1400
	add	s7, s9, s7
	li	a2, 192
	li	a1, 0
	call	memset
	li	a2, 192
	mv	a0, s7
	li	a1, 0
	call	memset
	li	a2, 256
	mv	a0, s5
	li	a1, 0
	call	memset
	li	a2, 256
	mv	a0, s6
	li	a1, 0
	call	memset
.LBB17_26:
	li	a0, 7
	blt	a0, s3, .LBB17_31
# %bb.27:
	call	LumaResidualCoding
	bnez	s0, .LBB17_28
	j	.LBB17_52
.LBB17_28:
	lw	a0, 364(s4)
	beqz	a0, .LBB17_37
# %bb.29:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a2, 24(a0)
	li	a1, 1
	beq	a2, a1, .LBB17_30
	j	.LBB17_107
.LBB17_30:
	lui	a2, 22
	add	a0, a0, a2
	lw	a0, 96(a0)
	beq	a0, a1, .LBB17_133
	j	.LBB17_52
.LBB17_133:
	j	.LBB17_107
.LBB17_31:
	addi	a0, s3, -8
	li	a1, 6
	bgeu	a1, a0, .LBB17_32
	j	.LBB17_52
.LBB17_32:
	slli	a0, a0, 2
	lui	a1, %hi(.LJTI17_0)
	addi	a1, a1, %lo(.LJTI17_0)
	add	a0, a0, a1
	lw	a0, 0(a0)
	jr	a0
.LBB17_33:
	mv	a0, s4
	call	SetCoeffAndReconstruction8x8
	j	.LBB17_52
.LBB17_34:
	ld	a1, 0(a0)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	lhu	a2, 0(a1)
	lui	a3, 1048574
	add	a2, a2, a3
	srli	a2, a2, 14
	li	a3, 3
	bgeu	a2, a3, .LBB17_35
	j	.LBB17_107
.LBB17_35:
	lw	a2, 8(s9)
	lh	a1, 2(a1)
	li	a3, 24
	mul	a2, a2, a3
	lui	a3, %hi(LEVELMVLIMIT)
	addi	a3, a3, %lo(LEVELMVLIMIT)
	add	a2, a3, a2
	lw	a3, 16(a2)
	bge	a1, a3, .LBB17_36
	j	.LBB17_107
.LBB17_36:
	lw	a2, 20(a2)
	bge	a2, a1, .LBB17_24
	j	.LBB17_107
.LBB17_37:
	lw	a0, 468(s4)
	li	a1, 1
	beq	a0, a1, .LBB17_134
	j	.LBB17_52
.LBB17_134:
	j	.LBB17_107
.LBB17_38:
	addi	a1, sp, 60
	mv	a0, s4
	call	Intra16x16_Mode_Decision
	j	.LBB17_52
.LBB17_39:
	addi	a0, sp, 44
	fmv.d	fa0, fs0
	call	Mode_Decision_for_Intra4x4Macroblock
	j	.LBB17_41
.LBB17_40:
	addi	a0, sp, 44
	fmv.d	fa0, fs0
	call	Mode_Decision_for_new_Intra8x8Macroblock
.LBB17_41:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 460(a1)
	sw	a0, 364(s4)
	bnez	a1, .LBB17_42
	j	.LBB17_52
.LBB17_42:
	lui	a0, %hi(cbp_chroma_block)
	lw	a1, %lo(cbp_chroma_block)(a0)
	addi	a0, a0, %lo(cbp_chroma_block)
	lw	a2, 4(a0)
	lw	a3, 8(a0)
	lw	a4, 12(a0)
	lw	a5, 16(a0)
	lw	a6, 20(a0)
	lw	a7, 24(a0)
	lw	t0, 28(a0)
	lw	t1, 32(a0)
	lw	t2, 36(a0)
	lw	t3, 40(a0)
	lw	t4, 44(a0)
	lw	t5, 48(a0)
	lw	t6, 52(a0)
	lw	n1, 56(a0)
	lw	n2, 60(a0)
	lw	n3, 64(a0)
	lw	n4, 68(a0)
	lw	n5, 72(a0)
	lw	n6, 76(a0)
	lw	n7, 80(a0)
	lw	n8, 84(a0)
	lw	n9, 88(a0)
	lw	n10, 92(a0)
	lw	n11, 96(a0)
	lw	n12, 100(a0)
	lw	n13, 112(a0)
	lw	n14, 120(a0)
	lw	n15, 124(a0)
	lw	n16, 116(a0)
	lw	n17, 104(a0)
	lw	a0, 108(a0)
	or	n14, n15, n14
	or	n13, n16, n13
	or	n13, n14, n13
	or	a0, a0, n17
	or	a0, a0, n12
	or	a0, n13, a0
	or	n10, n11, n10
	or	n9, n10, n9
	or	n8, n9, n8
	or	a0, a0, n8
	or	n6, n7, n6
	or	n5, n6, n5
	or	n4, n5, n4
	or	n3, n4, n3
	or	a0, a0, n3
	or	n1, n2, n1
	or	t6, n1, t6
	or	t5, t6, t5
	or	t4, t5, t4
	or	t3, t4, t3
	or	a0, a0, t3
	or	t1, t2, t1
	or	t0, t1, t0
	or	a7, t0, a7
	or	a6, a7, a6
	or	a5, a6, a5
	or	a4, a5, a4
	or	a0, a0, a4
	or	a2, a3, a2
	or	a1, a2, a1
	or	a0, a0, a1
	snez	a1, a0
	slli	a1, a1, 1
	li	a0, 0
	call	dct_chroma_DC
	mv	a1, a0
	li	a0, 1
	call	dct_chroma_DC
	lw	a1, 364(s4)
	slli	a0, a0, 4
	add	a0, a1, a0
	sw	a0, 364(s4)
	j	.LBB17_52
.LBB17_43:
	lw	a0, 172(s9)
	lw	a1, 156(s9)
	lw	a2, 168(s9)
	lui	a3, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a3)
	lui	a4, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(a4)
	lui	a5, 2
	add	a3, a3, a5
	ld	a5, -1768(a3)
	slli	a1, a1, 3
	slli	a0, a0, 3
	add	a3, a4, a0
	ld	n4, 0(a3)
	add	a1, a5, a1
	ld	n5, 0(a1)
	slli	a0, a2, 1
	add	a2, n4, a0
	lh	a2, 0(a2)
	add	a4, n5, a0
	sh	a2, 0(a4)
	addi	a2, a0, 2
	add	a4, n4, a2
	lh	a4, 0(a4)
	add	a5, n5, a2
	sh	a4, 0(a5)
	addi	a4, a0, 4
	add	a5, n4, a4
	lh	a5, 0(a5)
	add	a6, n5, a4
	sh	a5, 0(a6)
	addi	a5, a0, 6
	add	a6, n4, a5
	lh	a6, 0(a6)
	add	a7, n5, a5
	sh	a6, 0(a7)
	addi	a6, a0, 8
	add	a7, n4, a6
	lh	a7, 0(a7)
	add	t0, n5, a6
	sh	a7, 0(t0)
	addi	a7, a0, 10
	add	t0, n4, a7
	lh	t0, 0(t0)
	add	t1, n5, a7
	sh	t0, 0(t1)
	addi	t0, a0, 12
	add	t1, n4, t0
	lh	t1, 0(t1)
	add	t2, n5, t0
	sh	t1, 0(t2)
	addi	t1, a0, 14
	add	t2, n4, t1
	lh	t2, 0(t2)
	add	t3, n5, t1
	sh	t2, 0(t3)
	addi	t2, a0, 16
	add	t3, n4, t2
	lh	t3, 0(t3)
	add	t4, n5, t2
	sh	t3, 0(t4)
	addi	t3, a0, 18
	add	t4, n4, t3
	lh	t4, 0(t4)
	add	t5, n5, t3
	sh	t4, 0(t5)
	addi	t5, a0, 20
	add	t4, n4, t5
	lh	t4, 0(t4)
	add	t6, n5, t5
	sh	t4, 0(t6)
	addi	t6, a0, 22
	add	t4, n4, t6
	lh	t4, 0(t4)
	add	n1, n5, t6
	sh	t4, 0(n1)
	addi	n2, a0, 24
	add	t4, n4, n2
	lh	t4, 0(t4)
	add	n1, n5, n2
	sh	t4, 0(n1)
	addi	n3, a0, 26
	add	t4, n4, n3
	lh	t4, 0(t4)
	add	n1, n5, n3
	sh	t4, 0(n1)
	addi	n1, a0, 28
	add	t4, n4, n1
	lh	t4, 0(t4)
	add	n6, n5, n1
	sh	t4, 0(n6)
	addi	t4, a0, 30
	add	n4, n4, t4
	lh	n4, 0(n4)
	ld	n6, 8(a3)
	add	n5, n5, t4
	sh	n4, 0(n5)
	ld	n4, 8(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	n6, 16(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 16(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	n6, 24(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 24(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	n6, 32(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 32(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	n6, 40(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 40(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	n6, 48(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 48(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	n6, 56(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 56(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	n6, 64(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 64(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	n6, 72(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 72(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	n6, 80(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 80(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	n6, 88(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 88(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	n6, 96(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 96(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	n6, 104(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 104(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	n6, 112(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 112(a1)
	add	n5, n6, a0
	lh	n5, 0(n5)
	add	n7, n4, a0
	sh	n5, 0(n7)
	add	n5, n6, a2
	lh	n5, 0(n5)
	add	n7, n4, a2
	sh	n5, 0(n7)
	add	n5, n6, a4
	lh	n5, 0(n5)
	add	n7, n4, a4
	sh	n5, 0(n7)
	add	n5, n6, a5
	lh	n5, 0(n5)
	add	n7, n4, a5
	sh	n5, 0(n7)
	add	n5, n6, a6
	lh	n5, 0(n5)
	add	n7, n4, a6
	sh	n5, 0(n7)
	add	n5, n6, a7
	lh	n5, 0(n5)
	add	n7, n4, a7
	sh	n5, 0(n7)
	add	n5, n6, t0
	lh	n5, 0(n5)
	add	n7, n4, t0
	sh	n5, 0(n7)
	add	n5, n6, t1
	lh	n5, 0(n5)
	add	n7, n4, t1
	sh	n5, 0(n7)
	add	n5, n6, t2
	lh	n5, 0(n5)
	add	n7, n4, t2
	sh	n5, 0(n7)
	add	n5, n6, t3
	lh	n5, 0(n5)
	add	n7, n4, t3
	sh	n5, 0(n7)
	add	n5, n6, t5
	lh	n5, 0(n5)
	add	n7, n4, t5
	sh	n5, 0(n7)
	add	n5, n6, t6
	lh	n5, 0(n5)
	add	n7, n4, t6
	sh	n5, 0(n7)
	add	n5, n6, n2
	lh	n5, 0(n5)
	add	n7, n4, n2
	sh	n5, 0(n7)
	add	n5, n6, n3
	lh	n5, 0(n5)
	add	n7, n4, n3
	sh	n5, 0(n7)
	add	n5, n6, n1
	lh	n5, 0(n5)
	add	n7, n4, n1
	sh	n5, 0(n7)
	add	n6, n6, t4
	lh	n5, 0(n6)
	ld	a3, 120(a3)
	add	n4, n4, t4
	sh	n5, 0(n4)
	ld	n4, 120(a1)
	add	a1, a3, a0
	lh	a1, 0(a1)
	add	a0, n4, a0
	sh	a1, 0(a0)
	add	a0, a3, a2
	lh	a0, 0(a0)
	add	a2, n4, a2
	sh	a0, 0(a2)
	add	a0, a3, a4
	lh	a0, 0(a0)
	add	a4, n4, a4
	sh	a0, 0(a4)
	add	a0, a3, a5
	lh	a0, 0(a0)
	add	a5, n4, a5
	sh	a0, 0(a5)
	add	a0, a3, a6
	lh	a0, 0(a0)
	add	a6, n4, a6
	sh	a0, 0(a6)
	add	a0, a3, a7
	lh	a0, 0(a0)
	add	a7, n4, a7
	sh	a0, 0(a7)
	add	a0, a3, t0
	lh	a0, 0(a0)
	add	t0, n4, t0
	sh	a0, 0(t0)
	add	a0, a3, t1
	lh	a0, 0(a0)
	add	t1, n4, t1
	sh	a0, 0(t1)
	add	a0, a3, t2
	lh	a0, 0(a0)
	add	t2, n4, t2
	sh	a0, 0(t2)
	add	a0, a3, t3
	lh	a0, 0(a0)
	add	t3, n4, t3
	sh	a0, 0(t3)
	add	a0, a3, t5
	lh	a0, 0(a0)
	add	t5, n4, t5
	sh	a0, 0(t5)
	add	a0, a3, t6
	lh	a0, 0(a0)
	add	t6, n4, t6
	sh	a0, 0(t6)
	add	a0, a3, n2
	lh	a0, 0(a0)
	add	n2, n4, n2
	sh	a0, 0(n2)
	add	a0, a3, n3
	lh	a0, 0(a0)
	lui	a1, 22
	add	n3, n4, n3
	sh	a0, 0(n3)
	add	a0, a3, n1
	lh	a0, 0(a0)
	addiw	a1, a1, 436
	add	a1, s9, a1
	add	n1, n4, n1
	sh	a0, 0(n1)
	add	a3, a3, t4
	lh	a0, 0(a3)
	lw	a2, 0(a1)
	add	t4, n4, t4
	sh	a0, 0(t4)
	beqz	a2, .LBB17_52
# %bb.44:
	lw	a0, 12(a1)
	blez	a0, .LBB17_52
# %bb.45:
	lw	a1, 8(a1)
	blez	a1, .LBB17_52
# %bb.46:
	lw	t0, 176(s9)
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	lui	a3, %hi(imgUV_org)
	ld	a5, %lo(imgUV_org)(a3)
	lui	a3, 2
	add	a2, a2, a3
	ld	a6, -1728(a2)
	addw	a1, a1, t0
	addi	t1, t0, 1
	blt	a1, t1, .LBB17_48
# %bb.47:
	mv	t1, a1
.LBB17_48:
	lw	a1, 164(s9)
	lw	a2, 180(s9)
	ld	a3, 0(a5)
	ld	a4, 0(a6)
	ld	a5, 8(a5)
	ld	a6, 8(a6)
	li	a7, 0
	slli	t0, t0, 1
	slli	t1, t1, 1
.LBB17_49:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_50 Depth 2
	add	t2, a7, a2
	add	t3, a7, a1
	slli	t2, t2, 3
	add	t4, a3, t2
	slli	t3, t3, 3
	add	t5, a4, t3
	add	t2, a5, t2
	add	t3, a6, t3
	ld	t6, 0(t3)
	ld	t3, 0(t2)
	ld	t5, 0(t5)
	ld	n1, 0(t4)
	add	t2, t6, t0
	add	t3, t3, t0
	add	t4, t5, t0
	add	t5, n1, t0
	add	t6, t6, t1
.LBB17_50:                              #   Parent Loop BB17_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	n1, 0(t5)
	sh	n1, 0(t4)
	lh	n1, 0(t3)
	sh	n1, 0(t2)
	addi	t2, t2, 2
	addi	t3, t3, 2
	addi	t4, t4, 2
	addi	t5, t5, 2
	bne	t2, t6, .LBB17_50
# %bb.51:                               #   in Loop: Header=BB17_49 Depth=1
	addi	a7, a7, 1
	bne	a7, a0, .LBB17_49
.LBB17_52:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a1, 1089(a1)
	li	a2, 3
	bne	a1, a2, .LBB17_55
# %bb.53:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a1, 24(a1)
	li	a2, 1
	beq	a1, a2, .LBB17_55
# %bb.54:
	lw	a0, 60(sp)
	addi	a1, s3, -10
	seqz	a1, a1
	addi	a1, a1, -1
	or	a0, a1, a0
	call	compute_residue_mb
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB17_55:
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB17_58
# %bb.56:
	lui	a0, %hi(img)
	ld	s5, %lo(img)(a0)
	li	a0, 10
	bne	s3, a0, .LBB17_59
# %bb.57:
	lw	a0, 60(sp)
	slli	a0, a0, 9
	add	a0, s5, a0
	lui	a1, 1
	addiw	a1, a1, 696
	add	a1, a0, a1
	j	.LBB17_60
.LBB17_58:
	lui	a0, %hi(img)
	ld	s5, %lo(img)(a0)
	j	.LBB17_61
.LBB17_59:
	lui	a0, 3
	addiw	a1, a0, 312
	add	a1, s5, a1
.LBB17_60:
	lui	a0, %hi(pred)
	addi	a0, a0, %lo(pred)
	li	a2, 512
	call	memcpy
.LBB17_61:
	lui	a0, 22
	addiw	a0, a0, 84
	add	a0, s5, a0
	sw	zero, 0(a0)
	sw	zero, 44(sp)
	lw	a1, 376(a0)
	beqz	a1, .LBB17_65
# %bb.62:
	li	a1, 9
	beq	s3, a1, .LBB17_71
# %bb.63:
	li	a1, 10
	beq	s3, a1, .LBB17_68
# %bb.64:
	li	a1, 13
	beq	s3, a1, .LBB17_71
.LBB17_65:
	lw	a0, 352(a0)
	beqz	a0, .LBB17_67
# %bb.66:
	addi	a0, sp, 44
	call	ChromaResidualCoding
	lui	a0, %hi(img)
	ld	s5, %lo(img)(a0)
.LBB17_67:
	li	a0, 10
	bne	s3, a0, .LBB17_71
.LBB17_68:
	lw	a1, 364(s4)
	lw	a0, 60(sp)
	andi	a3, a1, 15
	li	a2, 1
	beqz	a3, .LBB17_70
# %bb.69:
	li	a2, 13
.LBB17_70:
	srli	a1, a1, 2
	andi	a1, a1, 12
	add	a0, a0, a2
	add	a0, a1, a0
	lui	a1, 22
	add	a1, s5, a1
	sw	a0, 84(a1)
.LBB17_71:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 1089(a0)
	li	a2, 3
	bne	a1, a2, .LBB17_73
# %bb.72:
	lw	a1, 24(s5)
	li	a2, 1
	bne	a1, a2, .LBB17_75
.LBB17_73:
	li	s6, 0
	lw	a1, 172(s5)
	lw	a2, 156(s5)
	lw	a4, 168(s5)
	lui	a0, 22
	add	a0, s5, a0
	ld	a0, -928(a0)
	lui	a3, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a3)
	lui	a5, %hi(imgY_org)
	ld	a5, %lo(imgY_org)(a5)
	lui	a6, 2
	add	a3, a3, a6
	ld	a3, -1768(a3)
	slli	a1, a1, 3
	add	a1, a5, a1
	slli	a2, a2, 3
	add	a2, a3, a2
	addi	a5, a4, 1
	addi	a6, a4, 2
	addi	a7, a4, 3
	addi	t0, a4, 4
	addi	t1, a4, 5
	addi	t2, a4, 6
	addi	t3, a4, 7
	addi	t4, a4, 8
	addi	t5, a4, 9
	addi	t6, a4, 10
	addi	n1, a4, 11
	addi	n2, a4, 12
	addi	n3, a4, 13
	addi	n4, a4, 14
	addi	n5, a4, 15
	addi	a3, a1, 128
	slli	a4, a4, 1
	slli	a5, a5, 1
	slli	a6, a6, 1
	slli	a7, a7, 1
	slli	t0, t0, 1
	slli	t1, t1, 1
	slli	t2, t2, 1
	slli	t3, t3, 1
	slli	t4, t4, 1
	slli	t5, t5, 1
	slli	t6, t6, 1
	slli	n1, n1, 1
	slli	n2, n2, 1
	slli	n3, n3, 1
	slli	n4, n4, 1
	slli	n5, n5, 1
.LBB17_74:                              # =>This Inner Loop Header: Depth=1
	ld	n7, 0(a1)
	ld	n6, 0(a2)
	add	n8, n7, a4
	lhu	n8, 0(n8)
	add	n9, n6, a4
	lhu	n9, 0(n9)
	sub	n8, n8, n9
	slli	n8, n8, 2
	add	n8, a0, n8
	lw	n8, 0(n8)
	add	n9, n7, a5
	lhu	n9, 0(n9)
	add	n10, n6, a5
	lhu	n10, 0(n10)
	add	n8, s6, n8
	sub	n9, n9, n10
	add	n10, n7, a6
	lhu	n10, 0(n10)
	add	n11, n6, a6
	lhu	n11, 0(n11)
	slli	n9, n9, 2
	add	n9, a0, n9
	lw	n9, 0(n9)
	sub	n10, n10, n11
	add	n11, n7, a7
	lhu	n11, 0(n11)
	add	n12, n6, a7
	lhu	n12, 0(n12)
	slli	n10, n10, 2
	add	n10, a0, n10
	lw	n10, 0(n10)
	sub	n11, n11, n12
	add	n12, n7, t0
	lhu	n12, 0(n12)
	add	n13, n6, t0
	lhu	n13, 0(n13)
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	sub	n12, n12, n13
	slli	n12, n12, 2
	add	n12, a0, n12
	lw	n12, 0(n12)
	add	n13, n7, t1
	lhu	n13, 0(n13)
	add	n14, n6, t1
	lhu	n14, 0(n14)
	add	n9, n9, n10
	add	n8, n8, n9
	add	n11, n11, n12
	sub	n9, n13, n14
	add	n10, n7, t2
	lhu	n10, 0(n10)
	add	n12, n6, t2
	lhu	n12, 0(n12)
	slli	n9, n9, 2
	add	n9, a0, n9
	lw	n9, 0(n9)
	sub	n10, n10, n12
	add	n12, n7, t3
	lhu	n12, 0(n12)
	add	n13, n6, t3
	lhu	n13, 0(n13)
	slli	n10, n10, 2
	add	n10, a0, n10
	lw	n10, 0(n10)
	sub	n12, n12, n13
	slli	n12, n12, 2
	add	n12, a0, n12
	lw	n12, 0(n12)
	add	n13, n7, t4
	lhu	n13, 0(n13)
	add	n14, n6, t4
	lhu	n14, 0(n14)
	add	n9, n11, n9
	add	n8, n8, n9
	add	n10, n10, n12
	sub	n9, n13, n14
	add	n11, n7, t5
	lhu	n11, 0(n11)
	add	n12, n6, t5
	lhu	n12, 0(n12)
	slli	n9, n9, 2
	add	n9, a0, n9
	lw	n9, 0(n9)
	sub	n11, n11, n12
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	add	n12, n7, t6
	lhu	n12, 0(n12)
	add	n13, n6, t6
	lhu	n13, 0(n13)
	add	n9, n10, n9
	add	n9, n9, n11
	add	n8, n8, n9
	sub	n9, n12, n13
	add	n10, n7, n1
	lhu	n10, 0(n10)
	add	n11, n6, n1
	lhu	n11, 0(n11)
	slli	n9, n9, 2
	add	n9, a0, n9
	lw	n9, 0(n9)
	sub	n10, n10, n11
	add	n11, n7, n2
	lhu	n11, 0(n11)
	add	n12, n6, n2
	lhu	n12, 0(n12)
	slli	n10, n10, 2
	add	n10, a0, n10
	lw	n10, 0(n10)
	sub	n11, n11, n12
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	add	n12, n7, n3
	lhu	n12, 0(n12)
	add	n13, n6, n3
	lhu	n13, 0(n13)
	add	n14, n7, n4
	lhu	n14, 0(n14)
	add	n15, n6, n4
	lhu	n15, 0(n15)
	add	n9, n9, n10
	add	n9, n9, n11
	sub	n10, n12, n13
	sub	n11, n14, n15
	slli	n10, n10, 2
	add	n10, a0, n10
	lw	n10, 0(n10)
	add	n7, n7, n5
	lhu	n7, 0(n7)
	add	n6, n6, n5
	lhu	n6, 0(n6)
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	sub	n6, n7, n6
	slli	n6, n6, 2
	add	n6, a0, n6
	lw	s6, 0(n6)
	add	n9, n9, n10
	add	n9, n9, n11
	add	n8, n8, n9
	add	s6, n8, s6
	addi	a1, a1, 8
	addi	a2, a2, 8
	bne	a1, a3, .LBB17_74
	j	.LBB17_82
.LBB17_75:
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s1, s11
	lw	a0, 1529(a0)
	blez	a0, .LBB17_80
# %bb.76:                               # %.preheader
	li	s6, 0
	li	s8, 0
	lui	s7, %hi(img)
	lui	s9, 22
	lui	s2, %hi(imgY_org)
	lui	s0, %hi(decs)
	lui	s11, %hi(input)
.LBB17_77:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_78 Depth 2
	sext.w	a0, s6
	mv	a1, s4
	call	decode_one_mb
	ld	s5, %lo(img)(s7)
	ld	a1, %lo(decs)(s0)
	lw	a4, 168(s5)
	add	a0, s5, s9
	ld	a0, -928(a0)
	ld	a1, 8(a1)
	ld	a2, %lo(imgY_org)(s2)
	lw	a3, 172(s5)
	slli	a5, s6, 3
	add	a1, a1, a5
	ld	a5, 0(a1)
	addi	a6, a4, 1
	addi	a7, a4, 2
	addi	t0, a4, 3
	addi	t1, a4, 4
	addi	t2, a4, 5
	addi	t3, a4, 6
	addi	t4, a4, 7
	addi	t5, a4, 8
	addi	t6, a4, 9
	addi	n1, a4, 10
	addi	n2, a4, 11
	addi	n3, a4, 12
	addi	n4, a4, 13
	addi	n5, a4, 14
	addi	n6, a4, 15
	slli	a3, a3, 3
	add	a1, a2, a3
	add	a2, a5, a3
	addi	a3, a1, 128
	slli	a4, a4, 1
	slli	a5, a6, 1
	slli	a6, a7, 1
	slli	a7, t0, 1
	slli	t0, t1, 1
	slli	t1, t2, 1
	slli	t2, t3, 1
	slli	t3, t4, 1
	slli	t4, t5, 1
	slli	t5, t6, 1
	slli	t6, n1, 1
	slli	n1, n2, 1
	slli	n2, n3, 1
	slli	n3, n4, 1
	slli	n4, n5, 1
	slli	n5, n6, 1
.LBB17_78:                              #   Parent Loop BB17_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n7, 0(a1)
	ld	n6, 0(a2)
	add	n8, n7, a4
	lhu	n8, 0(n8)
	add	n9, n6, a4
	lhu	n9, 0(n9)
	sub	n8, n8, n9
	slli	n8, n8, 2
	add	n8, a0, n8
	lw	n8, 0(n8)
	add	n9, n7, a5
	lhu	n9, 0(n9)
	add	n10, n6, a5
	lhu	n10, 0(n10)
	add	n8, s8, n8
	sub	n9, n9, n10
	add	n10, n7, a6
	lhu	n10, 0(n10)
	add	n11, n6, a6
	lhu	n11, 0(n11)
	slli	n9, n9, 2
	add	n9, a0, n9
	lw	n9, 0(n9)
	sub	n10, n10, n11
	add	n11, n7, a7
	lhu	n11, 0(n11)
	add	n12, n6, a7
	lhu	n12, 0(n12)
	slli	n10, n10, 2
	add	n10, a0, n10
	lw	n10, 0(n10)
	sub	n11, n11, n12
	add	n12, n7, t0
	lhu	n12, 0(n12)
	add	n13, n6, t0
	lhu	n13, 0(n13)
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	sub	n12, n12, n13
	slli	n12, n12, 2
	add	n12, a0, n12
	lw	n12, 0(n12)
	add	n13, n7, t1
	lhu	n13, 0(n13)
	add	n14, n6, t1
	lhu	n14, 0(n14)
	add	n9, n9, n10
	add	n8, n8, n9
	add	n11, n11, n12
	sub	n9, n13, n14
	add	n10, n7, t2
	lhu	n10, 0(n10)
	add	n12, n6, t2
	lhu	n12, 0(n12)
	slli	n9, n9, 2
	add	n9, a0, n9
	lw	n9, 0(n9)
	sub	n10, n10, n12
	add	n12, n7, t3
	lhu	n12, 0(n12)
	add	n13, n6, t3
	lhu	n13, 0(n13)
	slli	n10, n10, 2
	add	n10, a0, n10
	lw	n10, 0(n10)
	sub	n12, n12, n13
	slli	n12, n12, 2
	add	n12, a0, n12
	lw	n12, 0(n12)
	add	n13, n7, t4
	lhu	n13, 0(n13)
	add	n14, n6, t4
	lhu	n14, 0(n14)
	add	n9, n11, n9
	add	n8, n8, n9
	add	n10, n10, n12
	sub	n9, n13, n14
	add	n11, n7, t5
	lhu	n11, 0(n11)
	add	n12, n6, t5
	lhu	n12, 0(n12)
	slli	n9, n9, 2
	add	n9, a0, n9
	lw	n9, 0(n9)
	sub	n11, n11, n12
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	add	n12, n7, t6
	lhu	n12, 0(n12)
	add	n13, n6, t6
	lhu	n13, 0(n13)
	add	n9, n10, n9
	add	n9, n9, n11
	add	n8, n8, n9
	sub	n9, n12, n13
	add	n10, n7, n1
	lhu	n10, 0(n10)
	add	n11, n6, n1
	lhu	n11, 0(n11)
	slli	n9, n9, 2
	add	n9, a0, n9
	lw	n9, 0(n9)
	sub	n10, n10, n11
	add	n11, n7, n2
	lhu	n11, 0(n11)
	add	n12, n6, n2
	lhu	n12, 0(n12)
	slli	n10, n10, 2
	add	n10, a0, n10
	lw	n10, 0(n10)
	sub	n11, n11, n12
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	add	n12, n7, n3
	lhu	n12, 0(n12)
	add	n13, n6, n3
	lhu	n13, 0(n13)
	add	n14, n7, n4
	lhu	n14, 0(n14)
	add	n15, n6, n4
	lhu	n15, 0(n15)
	add	n9, n9, n10
	add	n9, n9, n11
	sub	n10, n12, n13
	sub	n11, n14, n15
	slli	n10, n10, 2
	add	n10, a0, n10
	lw	n10, 0(n10)
	add	n7, n7, n5
	lhu	n7, 0(n7)
	add	n6, n6, n5
	lhu	n6, 0(n6)
	slli	n11, n11, 2
	add	n11, a0, n11
	lw	n11, 0(n11)
	sub	n6, n7, n6
	slli	n6, n6, 2
	add	n6, a0, n6
	lw	s8, 0(n6)
	add	n9, n9, n10
	add	n9, n9, n11
	add	n8, n8, n9
	add	s8, n8, s8
	addi	a1, a1, 8
	addi	a2, a2, 8
	bne	a1, a3, .LBB17_78
# %bb.79:                               #   in Loop: Header=BB17_77 Depth=1
	ld	a0, %lo(input)(s11)
	addi	a0, a0, 2047
	lw	a0, 1529(a0)
	addi	s6, s6, 1
	blt	s6, a0, .LBB17_77
	j	.LBB17_81
.LBB17_80:
	li	s8, 0
.LBB17_81:
	div	s6, s8, a0
	mv	s11, s1
	ld	s1, 8(sp)                       # 8-byte Folded Reload
.LBB17_82:
	lui	a0, 22
	addiw	a3, a0, -928
	add	a3, s5, a3
	lw	a0, 1364(a3)
	beqz	a0, .LBB17_91
# %bb.83:
	lw	a0, 1376(a3)
	blez	a0, .LBB17_91
# %bb.84:
	lw	a1, 1372(a3)
	blez	a1, .LBB17_91
# %bb.85:
	lw	t1, 176(s5)
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	lui	a4, %hi(imgUV_org)
	ld	a6, %lo(imgUV_org)(a4)
	lui	a4, 2
	add	a2, a2, a4
	ld	a7, -1728(a2)
	addw	a1, a1, t1
	addi	t2, t1, 1
	blt	a1, t2, .LBB17_87
# %bb.86:
	mv	t2, a1
.LBB17_87:
	lw	a1, 164(s5)
	lw	a2, 180(s5)
	ld	a3, 0(a3)
	ld	a4, 0(a6)
	ld	a5, 0(a7)
	ld	a6, 8(a6)
	ld	a7, 8(a7)
	li	t0, 0
	slli	t1, t1, 1
	slli	t2, t2, 1
.LBB17_88:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_89 Depth 2
	add	t3, t0, a2
	add	t4, t0, a1
	slli	t3, t3, 3
	add	t5, a4, t3
	slli	t4, t4, 3
	add	t6, a5, t4
	add	t3, a6, t3
	add	t4, a7, t4
	ld	n1, 0(t4)
	ld	t4, 0(t3)
	ld	t6, 0(t6)
	ld	n2, 0(t5)
	add	t3, n1, t1
	add	t4, t4, t1
	add	t5, t6, t1
	add	t6, n2, t1
	add	n1, n1, t2
.LBB17_89:                              #   Parent Loop BB17_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	n2, 0(t6)
	lhu	n3, 0(t5)
	sub	n2, n2, n3
	lhu	n3, 0(t4)
	lhu	n4, 0(t3)
	slli	n2, n2, 2
	add	n2, a3, n2
	lw	n2, 0(n2)
	sub	n3, n3, n4
	slli	n3, n3, 2
	add	n3, a3, n3
	lw	n3, 0(n3)
	add	n2, s6, n2
	add	s6, n2, n3
	addi	t3, t3, 2
	addi	t4, t4, 2
	addi	t5, t5, 2
	addi	t6, t6, 2
	bne	t3, n1, .LBB17_89
# %bb.90:                               #   in Loop: Header=BB17_88 Depth=1
	addi	t0, t0, 1
	bne	t0, a0, .LBB17_88
.LBB17_91:
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	call	store_coding_state
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB17_94
# %bb.92:
	lw	a0, 72(s4)
	beqz	a0, .LBB17_95
.LBB17_93:
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lw	s5, 120(a0)
	li	a0, 1
	addi	a1, sp, 52
	call	writeMBLayer
	lw	a1, 44(sp)
	sw	a0, 56(sp)
	addi	a2, sp, 48
	addi	a3, sp, 44
	mv	a0, s5
	call	ue_linfo
	lw	a0, 48(sp)
	lw	a1, 56(sp)
	ld	a2, %lo(img)(s0)
	subw	a1, a1, a0
	sw	a1, 56(sp)
	sw	s5, 120(a2)
	j	.LBB17_98
.LBB17_94:
	li	a0, 1
	addi	a1, sp, 52
	call	writeMBLayer
	sw	a0, 56(sp)
	j	.LBB17_98
.LBB17_95:
	li	a0, 1
	bne	s10, a0, .LBB17_97
# %bb.96:
	lw	a0, 364(s4)
	bnez	a0, .LBB17_93
.LBB17_97:
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lw	a0, 120(a0)
	lw	a1, 44(sp)
	addiw	a0, a0, 1
	addi	a2, sp, 56
	addi	a3, sp, 44
	call	ue_linfo
	ld	a0, %lo(img)(s0)
	lw	a0, 120(a0)
	lw	a1, 44(sp)
	addi	a2, sp, 48
	addi	a3, sp, 44
	call	ue_linfo
	lw	a0, 48(sp)
	lw	a1, 56(sp)
	subw	a1, a1, a0
	sw	a1, 56(sp)
.LBB17_98:
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	call	reset_coding_state
	lw	a0, 56(sp)
	lui	a1, %hi(.LCPI17_0)
	fld	fa5, %lo(.LCPI17_0)(a1)
	fcvt.d.w	fa4, a0
	flt.d	a0, fa4, fa5
	fcvt.d.l	fa3, s6
	bnez	a0, .LBB17_100
# %bb.99:
	fmv.d	fa5, fa4
.LBB17_100:
	fld	fa4, 0(s1)
	fmadd.d	fa5, fs0, fa5, fa3
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	fle.d	a0, fa4, fa5
	lui	a2, 22
	addiw	a2, a2, 108
	add	a2, a1, a2
	bnez	a0, .LBB17_104
# %bb.101:
	lw	a0, 272(a2)
	lw	a3, 40(a1)
	negw	a0, a0
	bne	a3, a0, .LBB17_108
# %bb.102:
	lw	a0, 332(a2)
	li	a3, 1
	bne	a0, a3, .LBB17_108
# %bb.103:
	beqz	s6, .LBB17_108
.LBB17_104:
	feq.d	a3, fa5, fa4
	li	a0, 0
	beqz	a3, .LBB17_126
# %bb.105:
	lw	a3, 24(a1)
	or	a3, a3, s3
	bnez	a3, .LBB17_126
# %bb.106:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 0(a0)
	li	a3, 99
	bge	a3, a0, .LBB17_108
.LBB17_107:
	li	a0, 0
	j	.LBB17_126
.LBB17_108:
	bnez	s3, .LBB17_114
# %bb.109:
	lw	a0, 0(a2)
	beqz	a0, .LBB17_114
# %bb.110:
	lw	a3, 24(a1)
	li	a0, 1
	bne	a3, a0, .LBB17_112
# %bb.111:
	lw	a0, 364(s4)
	bnez	a0, .LBB17_114
.LBB17_112:
	lw	a0, 12(a1)
	andi	a4, a0, 1
	beqz	a4, .LBB17_114
# %bb.113:
	ld	a5, 16(sp)                      # 8-byte Folded Reload
	slti	a4, a5, 0
	li	a6, 528
	mul	a5, a5, a6
	ld	a6, 24(sp)                      # 8-byte Folded Reload
	add	a5, a6, a5
	addi	a4, a4, -1
	and	a4, a4, a5
	lw	a5, 72(a4)
	beqz	a5, .LBB17_127
.LBB17_114:
	lw	a0, 52(sp)
	fsd	fa5, 0(s1)
	fcvt.d.w	fa5, a0
	lw	a3, 320(a2)
	fmul.d	fa5, fa5, fs0
	fsd	fa5, 0(s11)
	li	a4, -3
	li	a0, 1
	blt	a3, a4, .LBB17_126
# %bb.115:
	ld	a4, 128(a1)
	li	a5, 0
	li	a6, -1
	lui	a3, %hi(gaaiMBAFF_NZCoeff)
	addi	a3, a3, %lo(gaaiMBAFF_NZCoeff)
.LBB17_116:                             # =>This Inner Loop Header: Depth=1
	lw	a7, 12(a1)
	slli	a7, a7, 3
	add	a7, a4, a7
	ld	a7, 0(a7)
	ld	a7, 0(a7)
	add	a7, a7, a5
	lw	a7, 0(a7)
	add	t0, a3, a5
	sw	a7, 0(t0)
	lw	a7, 320(a2)
	addiw	t0, a7, 3
	addi	a6, a6, 1
	addi	a5, a5, 4
	blt	a6, t0, .LBB17_116
# %bb.117:
	li	a4, -3
	blt	a7, a4, .LBB17_126
# %bb.118:
	ld	a4, 128(a1)
	li	a5, 0
	li	a6, -1
.LBB17_119:                             # =>This Inner Loop Header: Depth=1
	lw	a7, 12(a1)
	slli	a7, a7, 3
	add	a7, a4, a7
	ld	a7, 0(a7)
	ld	a7, 8(a7)
	add	a7, a7, a5
	lw	a7, 0(a7)
	add	t0, a3, a5
	sw	a7, 48(t0)
	lw	a7, 320(a2)
	addiw	t0, a7, 3
	addi	a6, a6, 1
	addi	a5, a5, 4
	blt	a6, t0, .LBB17_119
# %bb.120:
	li	a4, -3
	blt	a7, a4, .LBB17_126
# %bb.121:
	ld	a4, 128(a1)
	li	a5, 0
	li	a6, -1
.LBB17_122:                             # =>This Inner Loop Header: Depth=1
	lw	a7, 12(a1)
	slli	a7, a7, 3
	add	a7, a4, a7
	ld	a7, 0(a7)
	ld	a7, 16(a7)
	add	a7, a7, a5
	lw	a7, 0(a7)
	add	t0, a3, a5
	sw	a7, 96(t0)
	lw	a7, 320(a2)
	addiw	t0, a7, 3
	addi	a6, a6, 1
	addi	a5, a5, 4
	blt	a6, t0, .LBB17_122
# %bb.123:
	li	a4, -3
	blt	a7, a4, .LBB17_126
# %bb.124:
	ld	a4, 128(a1)
	li	a5, 0
	li	a6, -1
.LBB17_125:                             # =>This Inner Loop Header: Depth=1
	lw	a7, 12(a1)
	slli	a7, a7, 3
	add	a7, a4, a7
	ld	a7, 0(a7)
	ld	a7, 24(a7)
	add	a7, a7, a5
	lw	a7, 0(a7)
	add	t0, a3, a5
	sw	a7, 144(t0)
	lw	a7, 320(a2)
	addiw	a7, a7, 3
	addi	a6, a6, 1
	addi	a5, a5, 4
	blt	a6, a7, .LBB17_125
.LBB17_126:
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
	fld	fs0, 64(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 176
	ret
.LBB17_127:
	li	a5, 1
	bne	a3, a5, .LBB17_129
# %bb.128:
	lw	a3, 364(a4)
	bnez	a3, .LBB17_114
.LBB17_129:
	lui	a3, 8
	addiw	a3, a3, -1192
	add	a3, a1, a3
	ld	a3, 0(a3)
	li	a4, 528
	mul	a0, a0, a4
	add	a0, a3, a0
	lw	a6, 448(a0)
	li	a5, 432
	bnez	a6, .LBB17_131
# %bb.130:
	lw	a6, 452(a0)
	li	a5, 436
	beqz	a6, .LBB17_132
.LBB17_131:
	add	a0, a0, a5
	lw	a0, 0(a0)
	mul	a0, a0, a4
	add	a0, a3, a0
	lw	a0, 424(a0)
	lw	a3, 424(s4)
	beq	a0, a3, .LBB17_114
	j	.LBB17_107
.LBB17_132:
	lw	a3, 424(s4)
	beq	zero, a3, .LBB17_114
	j	.LBB17_107
.Lfunc_end17:
	.size	RDCost_for_macroblocks, .Lfunc_end17-RDCost_for_macroblocks
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI17_0:
	.word	.LBB17_33
	.word	.LBB17_39
	.word	.LBB17_38
	.word	.LBB17_52
	.word	.LBB17_52
	.word	.LBB17_40
	.word	.LBB17_43
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	field_flag_inference            # -- Begin function field_flag_inference
	.p2align	2
	.type	field_flag_inference,@function
field_flag_inference:                   # @field_flag_inference
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 8
	add	a1, a0, a1
	lw	a2, 12(a0)
	ld	a0, -1192(a1)
	li	a1, 528
	mul	a2, a2, a1
	add	a2, a0, a2
	lw	a4, 448(a2)
	li	a3, 432
	bnez	a4, .LBB18_2
# %bb.1:
	lw	a4, 452(a2)
	li	a3, 436
	beqz	a4, .LBB18_3
.LBB18_2:
	add	a2, a2, a3
	lw	a2, 0(a2)
	mul	a1, a2, a1
	add	a0, a0, a1
	lw	a0, 424(a0)
	ret
.LBB18_3:
	li	a0, 0
	ret
.Lfunc_end18:
	.size	field_flag_inference, .Lfunc_end18-field_flag_inference
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	store_adaptive_rounding_parameters # -- Begin function store_adaptive_rounding_parameters
	.p2align	2
	.type	store_adaptive_rounding_parameters,@function
store_adaptive_rounding_parameters:     # @store_adaptive_rounding_parameters
# %bb.0:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a6, 3
	addiw	a3, a6, 1864
	addi	a4, a0, -9
	li	a5, 2
	add	a3, a2, a3
	bltu	a4, a5, .LBB19_8
# %bb.1:
	lui	a4, 5
	li	a5, 8
	lui	a6, 4
	beq	a0, a5, .LBB19_13
# %bb.2:
	li	a5, 13
	bne	a0, a5, .LBB19_21
# %bb.3:                                # %.preheader3
	li	a0, 0
	li	a1, 0
	addiw	a3, a4, -1208
	add	a3, a2, a3
	addiw	a4, a4, 1864
	add	a4, a2, a4
	lui	t2, 6
	addiw	a5, t2, -160
	add	a5, a2, a5
	lui	a6, %hi(bestIntraFAdjust8x8)
	addi	a6, a6, %lo(bestIntraFAdjust8x8)
	li	a7, 8
	lui	t0, %hi(bestIntraFAdjust4x4Cr)
	addi	t0, t0, %lo(bestIntraFAdjust4x4Cr)
	addi	t1, t0, 1024
	addiw	t2, t2, -184
	li	t3, 1024
	lui	t4, 5
	addiw	t4, t4, -1208
	j	.LBB19_6
.LBB19_4:                               #   in Loop: Header=BB19_6 Depth=1
	add	n1, a4, a0
	lw	n2, 0(n1)
	add	n3, t0, a0
	sw	n2, 0(n3)
	add	n2, a5, a0
	lw	n4, -24(n2)
	sw	n4, 1024(n3)
	lw	n4, 4(t5)
	sw	n4, 4(t6)
	lw	n4, 4(n1)
	sw	n4, 4(n3)
	lw	n4, -20(n2)
	sw	n4, 1028(n3)
	lw	n4, 8(t5)
	sw	n4, 8(t6)
	lw	n4, 8(n1)
	sw	n4, 8(n3)
	lw	n4, -16(n2)
	sw	n4, 1032(n3)
	lw	n4, 12(t5)
	sw	n4, 12(t6)
	lw	n4, 12(n1)
	sw	n4, 12(n3)
	lw	n4, -12(n2)
	sw	n4, 1036(n3)
	lw	n4, 16(t5)
	sw	n4, 16(t6)
	lw	n4, 16(n1)
	sw	n4, 16(n3)
	lw	n4, -8(n2)
	sw	n4, 1040(n3)
	lw	n4, 20(t5)
	sw	n4, 20(t6)
	lw	n4, 20(n1)
	sw	n4, 20(n3)
	lw	n4, -4(n2)
	sw	n4, 1044(n3)
	lw	n4, 24(t5)
	sw	n4, 24(t6)
	lw	n1, 24(n1)
	sw	n1, 24(n3)
	lw	n1, 0(n2)
	sw	n1, 1048(n3)
	lw	n1, 28(t5)
	sw	n1, 28(t6)
	lw	n1, -2044(n2)
	sw	n1, 28(n3)
	mv	n2, t2
	mv	n1, t1
.LBB19_5:                               #   in Loop: Header=BB19_6 Depth=1
	add	n2, a0, n2
	add	n2, a2, n2
	lw	n2, 28(n2)
	add	n1, n1, a0
	sw	n2, 28(n1)
	lw	n1, 32(t5)
	sw	n1, 32(t6)
	lw	n1, 36(t5)
	sw	n1, 36(t6)
	lw	n1, 40(t5)
	sw	n1, 40(t6)
	lw	n1, 44(t5)
	sw	n1, 44(t6)
	lw	n1, 48(t5)
	sw	n1, 48(t6)
	lw	n1, 52(t5)
	sw	n1, 52(t6)
	lw	n1, 56(t5)
	sw	n1, 56(t6)
	lw	t5, 60(t5)
	sw	t5, 60(t6)
	addi	a0, a0, 64
	addi	a1, a1, 1
	beq	a0, t3, .LBB19_29
.LBB19_6:                               # =>This Inner Loop Header: Depth=1
	add	t5, a3, a0
	lw	n1, 0(t5)
	add	t6, a6, a0
	sw	n1, 0(t6)
	bltu	a1, a7, .LBB19_4
# %bb.7:                                #   in Loop: Header=BB19_6 Depth=1
	lw	n1, 4(t5)
	sw	n1, 4(t6)
	lw	n1, 8(t5)
	sw	n1, 8(t6)
	lw	n1, 12(t5)
	sw	n1, 12(t6)
	lw	n1, 16(t5)
	sw	n1, 16(t6)
	lw	n1, 20(t5)
	sw	n1, 20(t6)
	lw	n1, 24(t5)
	sw	n1, 24(t6)
	mv	n2, t4
	mv	n1, a6
	j	.LBB19_5
.LBB19_8:
	li	a0, 0
	li	a1, 0
	seqz	a7, a4
	lui	t0, 6
	addiw	a4, t0, -1208
	add	a4, a2, a4
	addiw	a5, t0, -184
	add	a5, a2, a5
	slli	t4, a7, 10
	addiw	a6, a6, 1924
	add	a6, t4, a6
	add	a6, a6, a2
	addiw	a7, t0, -156
	add	a2, a2, a7
	lui	a7, %hi(bestIntraFAdjust4x4)
	addi	a7, a7, %lo(bestIntraFAdjust4x4)
	li	t0, 8
	lui	t1, %hi(bestIntraFAdjust4x4Cr)
	addi	t1, t1, %lo(bestIntraFAdjust4x4Cr)
	addi	t2, t1, 1024
	li	t3, 1024
	add	a3, a3, t4
	j	.LBB19_11
.LBB19_9:                               #   in Loop: Header=BB19_11 Depth=1
	add	t6, a4, a0
	lw	n1, 0(t6)
	add	n2, t1, a0
	sw	n1, 0(n2)
	add	n1, a5, a0
	lw	n1, 0(n1)
	sw	n1, 1024(n2)
	lw	n1, -56(t4)
	sw	n1, 4(t5)
	lw	n1, 4(t6)
	sw	n1, 4(n2)
	lw	n1, 1028(t6)
	sw	n1, 1028(n2)
	lw	n1, -52(t4)
	sw	n1, 8(t5)
	lw	n1, 8(t6)
	sw	n1, 8(n2)
	lw	n1, 1032(t6)
	sw	n1, 1032(n2)
	lw	n1, -48(t4)
	sw	n1, 12(t5)
	lw	n1, 12(t6)
	sw	n1, 12(n2)
	lw	n1, 1036(t6)
	sw	n1, 1036(n2)
	lw	n1, -44(t4)
	sw	n1, 16(t5)
	lw	n1, 16(t6)
	sw	n1, 16(n2)
	lw	n1, 1040(t6)
	sw	n1, 1040(n2)
	lw	n1, -40(t4)
	sw	n1, 20(t5)
	lw	n1, 20(t6)
	sw	n1, 20(n2)
	lw	n1, 1044(t6)
	sw	n1, 1044(n2)
	lw	n1, -36(t4)
	sw	n1, 24(t5)
	lw	n1, 24(t6)
	sw	n1, 24(n2)
	lw	n1, 1048(t6)
	sw	n1, 1048(n2)
	lw	n1, -32(t4)
	sw	n1, 28(t5)
	lw	t6, 28(t6)
	sw	t6, 28(n2)
	add	t6, a2, a0
	mv	n1, t2
.LBB19_10:                              #   in Loop: Header=BB19_11 Depth=1
	lw	t6, 0(t6)
	add	n1, n1, a0
	sw	t6, 28(n1)
	lw	t6, -28(t4)
	sw	t6, 32(t5)
	lw	t6, -24(t4)
	sw	t6, 36(t5)
	lw	t6, -20(t4)
	sw	t6, 40(t5)
	lw	t6, -16(t4)
	sw	t6, 44(t5)
	lw	t6, -12(t4)
	sw	t6, 48(t5)
	lw	t6, -8(t4)
	sw	t6, 52(t5)
	lw	t6, -4(t4)
	sw	t6, 56(t5)
	lw	t4, 0(t4)
	sw	t4, 60(t5)
	addi	a0, a0, 64
	addi	a1, a1, 1
	beq	a0, t3, .LBB19_29
.LBB19_11:                              # =>This Inner Loop Header: Depth=1
	add	t4, a6, a0
	lw	t6, -60(t4)
	add	t5, a7, a0
	sw	t6, 0(t5)
	bltu	a1, t0, .LBB19_9
# %bb.12:                               #   in Loop: Header=BB19_11 Depth=1
	lw	t6, -56(t4)
	sw	t6, 4(t5)
	lw	t6, -52(t4)
	sw	t6, 8(t5)
	lw	t6, -48(t4)
	sw	t6, 12(t5)
	lw	t6, -44(t4)
	sw	t6, 16(t5)
	lw	t6, -40(t4)
	sw	t6, 20(t5)
	lw	t6, -36(t4)
	sw	t6, 24(t5)
	slli	t6, a1, 6
	add	t6, a3, t6
	addi	t6, t6, 28
	mv	n1, a7
	j	.LBB19_10
.LBB19_13:                              # %.preheader1
	li	a0, 0
	addiw	a3, a4, -184
	add	a3, a2, a3
	addiw	a4, a6, 840
	add	a4, a2, a4
	lui	a5, %hi(bestInterFAdjust4x4Cr)
	addi	a5, a5, %lo(bestInterFAdjust4x4Cr)
	lui	a6, %hi(bestInterFAdjust4x4)
	addi	a6, a6, %lo(bestInterFAdjust4x4)
	lui	a7, %hi(bestInterFAdjust8x8)
	addi	a7, a7, %lo(bestInterFAdjust8x8)
	li	t0, 1
	slli	t0, t0, 32
	addi	t0, t0, -8
	lui	t2, 6
	addiw	t1, t2, 1864
	addiw	t2, t2, 840
	li	t3, 64
	li	t4, 16
	lui	t6, 7
	addiw	t5, t6, 1864
	addiw	t6, t6, 840
	j	.LBB19_15
.LBB19_14:                              #   in Loop: Header=BB19_15 Depth=1
	addi	a0, a0, 1
	addi	a2, a2, 64
	addi	a5, a5, 64
	addi	a6, a6, 64
	addi	a4, a4, 64
	addi	a7, a7, 64
	addi	a3, a3, 64
	beq	a0, t4, .LBB19_29
.LBB19_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_18 Depth 2
	li	n1, 0
	li	n2, 0
	j	.LBB19_18
.LBB19_16:                              #   in Loop: Header=BB19_18 Depth=2
	add	n5, n1, n5
	add	n5, a2, n5
	lw	n3, 0(n5)
	add	n5, a5, n1
	sw	n3, 0(n5)
	add	n4, n1, n4
	add	n4, a2, n4
	lw	n3, 0(n4)
	sw	n3, 1024(n5)
.LBB19_17:                              #   in Loop: Header=BB19_18 Depth=2
	addi	n1, n1, 4
	addi	n2, n2, 1
	beq	n1, t3, .LBB19_14
.LBB19_18:                              #   Parent Loop BB19_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	n4, 468(a1)
	or	n3, n2, a0
	and	n3, n3, t0
	beqz	n4, .LBB19_20
# %bb.19:                               #   in Loop: Header=BB19_18 Depth=2
	add	n4, a3, n1
	lw	n4, 0(n4)
	add	n5, a7, n1
	sw	n4, 0(n5)
	mv	n5, t6
	mv	n4, t5
	bnez	n3, .LBB19_17
	j	.LBB19_16
.LBB19_20:                              #   in Loop: Header=BB19_18 Depth=2
	add	n4, a4, n1
	lw	n4, 0(n4)
	add	n5, a6, n1
	sw	n4, 0(n5)
	mv	n5, t2
	mv	n4, t1
	bnez	n3, .LBB19_17
	j	.LBB19_16
.LBB19_21:                              # %.preheader
	li	a0, 0
	li	a5, 0
	addiw	a6, a6, 1864
	add	a6, a2, a6
	addiw	a4, a4, 840
	add	a2, a2, a4
	li	a4, 1
	slli	a4, a4, 32
	addi	a4, a4, -8
	lui	a7, %hi(bestInterFAdjust8x8)
	addi	a7, a7, %lo(bestInterFAdjust8x8)
	lui	t0, %hi(bestInterFAdjust4x4)
	addi	t0, t0, %lo(bestInterFAdjust4x4)
	lui	t1, %hi(bestInterFAdjust4x4Cr)
	addi	t1, t1, %lo(bestInterFAdjust4x4Cr)
	li	t2, 16
	j	.LBB19_23
.LBB19_22:                              #   in Loop: Header=BB19_23 Depth=1
	addi	a5, a5, 1
	addi	a0, a0, 64
	beq	a5, t2, .LBB19_29
.LBB19_23:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_26 Depth 2
	li	t3, 0
	mv	t4, a0
	j	.LBB19_26
.LBB19_24:                              #   in Loop: Header=BB19_26 Depth=2
	add	t5, t5, t4
	lw	t5, 0(t5)
	add	t6, t6, t4
	or	n1, t3, a5
	and	n1, n1, a4
	sw	t5, 0(t6)
	beqz	n1, .LBB19_28
# %bb.25:                               #   in Loop: Header=BB19_26 Depth=2
	addi	t3, t3, 1
	addi	t4, t4, 4
	beq	t3, t2, .LBB19_22
.LBB19_26:                              #   Parent Loop BB19_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	n1, 468(a1)
	mv	t5, a3
	mv	t6, t0
	beqz	n1, .LBB19_24
# %bb.27:                               #   in Loop: Header=BB19_26 Depth=2
	mv	t5, a6
	mv	t6, a7
	j	.LBB19_24
.LBB19_28:                              #   in Loop: Header=BB19_26 Depth=2
	add	t5, a2, t4
	lw	t6, 0(t5)
	add	n1, t1, t4
	sw	t6, 0(n1)
	lw	t5, 1024(t5)
	sw	t5, 1024(n1)
	addi	t3, t3, 1
	addi	t4, t4, 4
	bne	t3, t2, .LBB19_26
	j	.LBB19_22
.LBB19_29:
	ret
.Lfunc_end19:
	.size	store_adaptive_rounding_parameters, .Lfunc_end19-store_adaptive_rounding_parameters
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	store_macroblock_parameters     # -- Begin function store_macroblock_parameters
	.p2align	2
	.type	store_macroblock_parameters,@function
store_macroblock_parameters:            # @store_macroblock_parameters
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	sd	s4, 80(sp)                      # 8-byte Folded Spill
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	sd	s7, 56(sp)                      # 8-byte Folded Spill
	sd	s8, 48(sp)                      # 8-byte Folded Spill
	sd	s9, 40(sp)                      # 8-byte Folded Spill
	sd	s10, 32(sp)                     # 8-byte Folded Spill
	sd	s11, 24(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	s7, %lo(img)(a1)
	lui	a1, 22
	addiw	s4, a1, 84
	lui	a1, 8
	add	a2, s7, a1
	lw	a1, 12(s7)
	ld	s11, -1192(a2)
	add	s4, s7, s4
	li	a2, 528
	mul	a1, a1, a2
	add	s11, s11, a1
	lw	a4, 416(s11)
	lw	a3, 24(s7)
	lui	a1, %hi(best_mode)
	lui	a2, %hi(best_c_imode)
	sw	a4, %lo(best_c_imode)(a2)
	lw	a4, 0(s4)
	sh	a0, %lo(best_mode)(a1)
	lui	a1, %hi(best_i16offset)
	li	a2, 1
	sw	a4, %lo(best_i16offset)(a1)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	sd	a3, 8(sp)                       # 8-byte Folded Spill
	bne	a0, a2, .LBB20_2
# %bb.1:
	lhu	a0, 476(s11)
	j	.LBB20_3
.LBB20_2:
	li	a0, 0
.LBB20_3:
	lw	a1, 376(s11)
	lui	a2, %hi(b8mode)
	sw	a1, %lo(b8mode)(a2)
	lw	a1, 380(s11)
	addi	a2, a2, %lo(b8mode)
	sw	a1, 4(a2)
	lw	a1, 384(s11)
	sw	a1, 8(a2)
	lw	a1, 388(s11)
	sw	a1, 12(a2)
	lw	a1, 392(s11)
	lui	a2, %hi(b8pdir)
	sw	a1, %lo(b8pdir)(a2)
	lw	a1, 396(s11)
	addi	a2, a2, %lo(b8pdir)
	sw	a1, 4(a2)
	lw	a1, 400(s11)
	sw	a1, 8(a2)
	lw	a1, 404(s11)
	lui	a3, %hi(bi_pred_me)
	sh	a0, %lo(bi_pred_me)(a3)
	sw	a1, 12(a2)
	addi	a1, s11, 332
	lui	a0, %hi(b4_intra_pred_modes)
	addi	a0, a0, %lo(b4_intra_pred_modes)
	li	a2, 16
	li	s5, 16
	call	memcpy
	addi	a1, s11, 348
	lui	a0, %hi(b8_intra_pred_modes8x8)
	addi	a0, a0, %lo(b8_intra_pred_modes8x8)
	li	a2, 16
	call	memcpy
	lw	a0, 148(s7)
	ld	a2, 104(s7)
	slli	a3, a0, 3
	add	a0, a2, a3
	ld	a1, 0(a0)
	lw	a0, 144(s7)
	add	a1, a1, a0
	lbu	a4, 1(a1)
	lbu	a5, 0(a1)
	lbu	a6, 2(a1)
	lb	a1, 3(a1)
	slli	a4, a4, 8
	or	a4, a4, a5
	slli	a6, a6, 16
	slli	a1, a1, 24
	or	a1, a1, a6
	ld	a5, 112(s7)
	or	a1, a1, a4
	lui	a4, %hi(b4_ipredmode)
	sw	a1, %lo(b4_ipredmode)(a4)
	add	a1, a5, a3
	ld	a1, 0(a1)
	add	a1, a1, a0
	lbu	a6, 2(a1)
	lb	a7, 3(a1)
	slli	a6, a6, 16
	slli	t0, a7, 24
	or	a6, t0, a6
	lbu	t0, 0(a1)
	lbu	t1, 1(a1)
	lui	t2, %hi(b8_ipredmode8x8)
	addi	a1, t2, %lo(b8_ipredmode8x8)
	sb	a7, 3(a1)
	sb	t1, 1(a1)
	sb	t0, %lo(b8_ipredmode8x8)(t2)
	srli	a6, a6, 16
	sb	a6, 2(a1)
	addi	a6, a3, 8
	add	a7, a2, a6
	ld	a7, 0(a7)
	addi	a4, a4, %lo(b4_ipredmode)
	add	a7, a7, a0
	lbu	t0, 1(a7)
	lbu	t1, 0(a7)
	lbu	t2, 2(a7)
	lb	a7, 3(a7)
	slli	t0, t0, 8
	or	t0, t0, t1
	slli	t2, t2, 16
	slli	a7, a7, 24
	or	a7, a7, t2
	or	a7, a7, t0
	sw	a7, 4(a4)
	add	a6, a5, a6
	ld	a6, 0(a6)
	add	a6, a6, a0
	lb	a7, 3(a6)
	lbu	t0, 2(a6)
	lbu	t1, 1(a6)
	lbu	a6, 0(a6)
	sb	a7, 7(a1)
	sb	t0, 6(a1)
	sb	t1, 5(a1)
	sb	a6, 4(a1)
	addi	a6, a3, 16
	add	a7, a2, a6
	ld	a7, 0(a7)
	add	a7, a7, a0
	lbu	t0, 1(a7)
	lbu	t1, 0(a7)
	lbu	t2, 2(a7)
	lb	a7, 3(a7)
	slli	t0, t0, 8
	or	t0, t0, t1
	slli	t2, t2, 16
	slli	a7, a7, 24
	or	a7, a7, t2
	or	a7, a7, t0
	sw	a7, 8(a4)
	add	a6, a5, a6
	ld	a6, 0(a6)
	add	a6, a6, a0
	lb	a7, 3(a6)
	lbu	t0, 2(a6)
	lbu	t1, 1(a6)
	lbu	a6, 0(a6)
	sb	a7, 11(a1)
	sb	t0, 10(a1)
	sb	t1, 9(a1)
	sb	a6, 8(a1)
	addi	a3, a3, 24
	add	a2, a2, a3
	ld	a2, 0(a2)
	add	a2, a2, a0
	lbu	a6, 1(a2)
	lbu	a7, 0(a2)
	lbu	t0, 2(a2)
	lb	a2, 3(a2)
	slli	a6, a6, 8
	or	a6, a6, a7
	slli	t0, t0, 16
	slli	a2, a2, 24
	or	a2, a2, t0
	or	a2, a2, a6
	sw	a2, 12(a4)
	add	a3, a5, a3
	ld	a2, 0(a3)
	li	s0, 0
	add	a0, a2, a0
	lbu	a2, 2(a0)
	lb	a3, 3(a0)
	lbu	a4, 0(a0)
	lbu	a0, 1(a0)
	sb	a2, 14(a1)
	sb	a3, 15(a1)
	sb	a4, 12(a1)
	lui	a2, %hi(enc_picture)
	ld	s1, %lo(enc_picture)(a2)
	sb	a0, 13(a1)
	lui	a0, 2
	addiw	a0, a0, -1768
	add	s1, s1, a0
	lui	a0, %hi(si_frame_indicator)
	lw	s6, %lo(si_frame_indicator)(a0)
	lui	a0, %hi(sp2_frame_indicator)
	lw	s8, %lo(sp2_frame_indicator)(a0)
	lui	a0, %hi(lrec)
	ld	s9, %lo(lrec)(a0)
	lui	s2, %hi(lrec_rec)
	addi	s2, s2, %lo(lrec_rec)
	lui	s3, %hi(rec_mbY)
	addi	s3, s3, %lo(rec_mbY)
	li	s10, 3
	j	.LBB20_5
.LBB20_4:                               #   in Loop: Header=BB20_5 Depth=1
	addi	s0, s0, 1
	addi	s2, s2, 64
	addi	s3, s3, 32
	beq	s0, s5, .LBB20_9
.LBB20_5:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 156(s7)
	ld	a1, 0(s1)
	add	a0, s0, a0
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s7)
	ld	a0, 0(a0)
	slli	a1, a1, 1
	add	a1, a0, a1
	li	a2, 32
	mv	a0, s3
	call	memcpy
	lw	a0, 24(s7)
	bne	a0, s10, .LBB20_4
# %bb.6:                                #   in Loop: Header=BB20_5 Depth=1
	bnez	s6, .LBB20_4
# %bb.7:                                #   in Loop: Header=BB20_5 Depth=1
	bnez	s8, .LBB20_4
# %bb.8:                                #   in Loop: Header=BB20_5 Depth=1
	lw	a0, 156(s7)
	add	a0, s0, a0
	slli	a0, a0, 3
	add	a0, s9, a0
	lw	a1, 152(s7)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a1, a0, a1
	li	a2, 64
	mv	a0, s2
	call	memcpy
	j	.LBB20_4
.LBB20_9:
	lw	a0, 16(s4)
	beqz	a0, .LBB20_11
# %bb.10:
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	mv	a1, s11
	call	store_adaptive_rounding_parameters
	lui	a0, %hi(img)
	ld	s7, %lo(img)(a0)
.LBB20_11:
	sd	s11, 0(sp)                      # 8-byte Folded Spill
	lui	a0, 22
	addiw	s8, a0, 436
	add	s8, s7, s8
	lw	a0, 0(s8)
	beqz	a0, .LBB20_19
# %bb.12:
	lw	a0, 12(s8)
	blez	a0, .LBB20_19
# %bb.13:
	lui	a0, %hi(enc_picture)
	ld	s10, %lo(enc_picture)(a0)
	li	s9, 0
	lui	a0, 2
	addiw	a0, a0, -1728
	add	s10, s10, a0
	lui	a0, %hi(si_frame_indicator)
	lw	s11, %lo(si_frame_indicator)(a0)
	lui	a0, %hi(sp2_frame_indicator)
	lw	s6, %lo(sp2_frame_indicator)(a0)
	lui	a0, %hi(lrec_uv)
	ld	s1, %lo(lrec_uv)(a0)
	lui	s2, %hi(lrec_rec_V)
	addi	s2, s2, %lo(lrec_rec_V)
	lui	s3, %hi(lrec_rec_U)
	addi	s3, s3, %lo(lrec_rec_U)
	lui	s4, %hi(rec_mbV)
	addi	s4, s4, %lo(rec_mbV)
	lui	s5, %hi(rec_mbU)
	addi	s5, s5, %lo(rec_mbU)
	li	s0, 3
	j	.LBB20_15
.LBB20_14:                              #   in Loop: Header=BB20_15 Depth=1
	addi	s9, s9, 1
	lw	a0, 12(s8)
	addi	s2, s2, 64
	addi	s3, s3, 64
	addi	s4, s4, 32
	addi	s5, s5, 32
	bge	s9, a0, .LBB20_19
.LBB20_15:                              # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s10)
	lw	a1, 164(s7)
	ld	a0, 0(a0)
	add	a1, s9, a1
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 160(s7)
	ld	a0, 0(a0)
	lw	a2, 8(s8)
	slli	a1, a1, 1
	add	a1, a0, a1
	slli	a2, a2, 1
	mv	a0, s5
	call	memcpy
	ld	a0, 0(s10)
	lw	a1, 164(s7)
	ld	a0, 8(a0)
	add	a1, s9, a1
	slli	a1, a1, 3
	add	a0, a0, a1
	lw	a1, 160(s7)
	ld	a0, 0(a0)
	lw	a2, 8(s8)
	slli	a1, a1, 1
	add	a1, a0, a1
	slli	a2, a2, 1
	mv	a0, s4
	call	memcpy
	lw	a0, 24(s7)
	bne	a0, s0, .LBB20_14
# %bb.16:                               #   in Loop: Header=BB20_15 Depth=1
	bnez	s11, .LBB20_14
# %bb.17:                               #   in Loop: Header=BB20_15 Depth=1
	bnez	s6, .LBB20_14
# %bb.18:                               #   in Loop: Header=BB20_15 Depth=1
	lw	a0, 164(s7)
	ld	a1, 0(s1)
	add	a0, s9, a0
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 160(s7)
	ld	a0, 0(a0)
	lw	a2, 8(s8)
	slli	a1, a1, 2
	add	a1, a0, a1
	slli	a2, a2, 2
	mv	a0, s3
	call	memcpy
	lw	a0, 164(s7)
	ld	a1, 8(s1)
	add	a0, s9, a0
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 160(s7)
	ld	a0, 0(a0)
	lw	a2, 8(s8)
	slli	a1, a1, 2
	add	a1, a0, a1
	slli	a2, a2, 2
	mv	a0, s2
	call	memcpy
	j	.LBB20_14
.LBB20_19:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 1089(a0)
	li	a2, 3
	ld	n15, 0(sp)                      # 8-byte Folded Reload
	bne	a1, a2, .LBB20_28
# %bb.20:
	lw	a1, 24(s7)
	li	a2, 1
	beq	a1, a2, .LBB20_28
# %bb.21:
	lw	a0, 1529(a0)
	blez	a0, .LBB20_28
# %bb.22:
	lw	a4, 156(s7)
	lw	a6, 152(s7)
	lui	a1, %hi(decs)
	ld	a3, %lo(decs)(a1)
	addiw	a1, a4, 15
	addi	a7, a6, 1
	addi	t0, a6, 2
	addi	t1, a6, 3
	addi	t2, a6, 4
	addi	t3, a6, 5
	addi	t4, a6, 6
	addi	t5, a6, 7
	addi	t6, a6, 8
	addi	n1, a6, 9
	addi	n2, a6, 10
	addi	n3, a6, 11
	addi	n4, a6, 12
	addi	n5, a6, 13
	addi	n6, a6, 14
	addi	n7, a6, 15
	mv	a5, a4
	blt	a1, a4, .LBB20_24
# %bb.23:
	mv	a5, a1
.LBB20_24:
	li	a1, 0
	ld	a2, 8(a3)
	ld	a3, 24(a3)
	slli	a4, a4, 3
	slli	a5, a5, 3
	addi	a5, a5, 8
	slli	a6, a6, 1
	slli	a7, a7, 1
	slli	t0, t0, 1
	slli	t1, t1, 1
	slli	t2, t2, 1
	slli	t3, t3, 1
	slli	t4, t4, 1
	slli	t5, t5, 1
	slli	t6, t6, 1
	slli	n1, n1, 1
	slli	n2, n2, 1
	slli	n3, n3, 1
	slli	n4, n4, 1
	slli	n5, n5, 1
	slli	n6, n6, 1
	slli	n7, n7, 1
.LBB20_25:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_26 Depth 2
	slli	n8, a1, 3
	add	n9, a2, n8
	ld	n10, 0(n9)
	add	n8, a3, n8
	ld	n9, 0(n8)
	add	n8, n10, a4
	add	n9, n9, a4
	add	n10, n10, a5
.LBB20_26:                              #   Parent Loop BB20_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n11, 0(n8)
	ld	n12, 0(n9)
	add	n13, n11, a6
	lh	n13, 0(n13)
	add	n14, n12, a6
	sh	n13, 0(n14)
	add	n13, n11, a7
	lh	n13, 0(n13)
	add	n14, n12, a7
	sh	n13, 0(n14)
	add	n13, n11, t0
	lh	n13, 0(n13)
	add	n14, n12, t0
	sh	n13, 0(n14)
	add	n13, n11, t1
	lh	n13, 0(n13)
	add	n14, n12, t1
	sh	n13, 0(n14)
	add	n13, n11, t2
	lh	n13, 0(n13)
	add	n14, n12, t2
	sh	n13, 0(n14)
	add	n13, n11, t3
	lh	n13, 0(n13)
	add	n14, n12, t3
	sh	n13, 0(n14)
	add	n13, n11, t4
	lh	n13, 0(n13)
	add	n14, n12, t4
	sh	n13, 0(n14)
	add	n13, n11, t5
	lh	n13, 0(n13)
	add	n14, n12, t5
	sh	n13, 0(n14)
	add	n13, n11, t6
	lh	n13, 0(n13)
	add	n14, n12, t6
	sh	n13, 0(n14)
	add	n13, n11, n1
	lh	n13, 0(n13)
	add	n14, n12, n1
	sh	n13, 0(n14)
	add	n13, n11, n2
	lh	n13, 0(n13)
	add	n14, n12, n2
	sh	n13, 0(n14)
	add	n13, n11, n3
	lh	n13, 0(n13)
	add	n14, n12, n3
	sh	n13, 0(n14)
	add	n13, n11, n4
	lh	n13, 0(n13)
	add	n14, n12, n4
	sh	n13, 0(n14)
	add	n13, n11, n5
	lh	n13, 0(n13)
	add	n14, n12, n5
	sh	n13, 0(n14)
	add	n13, n11, n6
	lh	n13, 0(n13)
	add	n14, n12, n6
	sh	n13, 0(n14)
	add	n11, n11, n7
	lh	n11, 0(n11)
	add	n12, n12, n7
	sh	n11, 0(n12)
	addi	n8, n8, 8
	addi	n9, n9, 8
	bne	n8, n10, .LBB20_26
# %bb.27:                               #   in Loop: Header=BB20_25 Depth=1
	addi	a1, a1, 1
	bne	a1, a0, .LBB20_25
.LBB20_28:
	ld	t3, 8(sp)                       # 8-byte Folded Reload
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB20_31
# %bb.29:
	li	a0, 1
	beq	t3, a0, .LBB20_31
# %bb.30:
	li	a1, 0
	li	a3, 0
	j	.LBB20_32
.LBB20_31:
	lui	a0, 3
	addiw	a0, a0, 1848
	add	a0, s7, a0
	lui	a1, %hi(cofAC)
	ld	a2, 0(a0)
	ld	a3, %lo(cofAC)(a1)
	sd	a2, %lo(cofAC)(a1)
	sd	a3, 0(a0)
	lui	a2, %hi(cofDC)
	ld	a4, %lo(cofDC)(a2)
	ld	a5, 8(a0)
	lw	a1, 364(n15)
	ld	a3, 368(n15)
	sd	a5, %lo(cofDC)(a2)
	sd	a4, 8(a0)
.LBB20_32:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a2, 2
	add	a0, a0, a2
	ld	a0, -1712(a0)
	lui	a2, %hi(cbp)
	sw	a1, %lo(cbp)(a2)
	lw	a5, 148(s7)
	ld	a1, 0(a0)
	lui	a4, %hi(cbp_blk)
	lw	a6, 468(n15)
	slli	a2, a5, 3
	add	a1, a1, a2
	ld	a7, 0(a1)
	lw	a1, 144(s7)
	sd	a3, %lo(cbp_blk)(a4)
	lui	a3, %hi(luma_transform_size_8x8_flag)
	sw	a6, %lo(luma_transform_size_8x8_flag)(a3)
	add	a7, a7, a1
	lbu	a3, 1(a7)
	lbu	a4, 0(a7)
	lbu	a6, 2(a7)
	lb	a7, 3(a7)
	slli	a3, a3, 8
	or	a3, a3, a4
	slli	a6, a6, 16
	slli	a7, a7, 24
	or	a4, a7, a6
	or	a3, a4, a3
	lui	a4, %hi(frefframe)
	sw	a3, %lo(frefframe)(a4)
	ld	a6, 0(a0)
	addiw	a3, a5, 1
	slli	a3, a3, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	addi	a7, a4, %lo(frefframe)
	add	a6, a6, a1
	lbu	a4, 1(a6)
	lbu	t0, 0(a6)
	lbu	t1, 2(a6)
	lb	a6, 3(a6)
	slli	a4, a4, 8
	or	a4, a4, t0
	slli	t1, t1, 16
	slli	a6, a6, 24
	or	a6, a6, t1
	or	a4, a6, a4
	sw	a4, 4(a7)
	ld	a6, 0(a0)
	addiw	a4, a5, 2
	slli	a4, a4, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	add	a6, a6, a1
	lbu	t0, 1(a6)
	lbu	t1, 0(a6)
	lbu	t2, 2(a6)
	lb	a6, 3(a6)
	slli	t0, t0, 8
	or	t0, t0, t1
	slli	t2, t2, 16
	slli	a6, a6, 24
	or	a6, a6, t2
	or	a6, a6, t0
	sw	a6, 8(a7)
	ld	a6, 0(a0)
	addiw	a5, a5, 3
	slli	a5, a5, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	add	a6, a6, a1
	lbu	t0, 1(a6)
	lbu	t1, 0(a6)
	lbu	t2, 2(a6)
	lb	a6, 3(a6)
	slli	t0, t0, 8
	or	t0, t0, t1
	slli	t2, t2, 16
	slli	a6, a6, 24
	or	a6, a6, t2
	or	a6, a6, t0
	li	t0, 1
	sw	a6, 12(a7)
	bne	t3, t0, .LBB20_34
# %bb.33:
	ld	a6, 8(a0)
	add	a2, a6, a2
	ld	a2, 0(a2)
	add	a2, a2, a1
	lbu	a7, 1(a2)
	lbu	t0, 0(a2)
	lbu	t1, 2(a2)
	lb	a2, 3(a2)
	slli	a7, a7, 8
	or	a7, a7, t0
	slli	t1, t1, 16
	slli	a2, a2, 24
	or	a2, a2, t1
	or	a2, a2, a7
	lui	a7, %hi(brefframe)
	sw	a2, %lo(brefframe)(a7)
	add	a3, a6, a3
	ld	a2, 0(a3)
	add	a2, a2, a1
	lbu	a3, 1(a2)
	lbu	t0, 0(a2)
	slli	a3, a3, 8
	lbu	t1, 2(a2)
	lb	a2, 3(a2)
	or	a3, a3, t0
	addi	a7, a7, %lo(brefframe)
	slli	t1, t1, 16
	slli	a2, a2, 24
	or	a2, a2, t1
	or	a2, a2, a3
	sw	a2, 4(a7)
	add	a4, a6, a4
	ld	a2, 0(a4)
	add	a2, a2, a1
	lbu	a3, 1(a2)
	lbu	a4, 0(a2)
	lbu	a6, 2(a2)
	lb	a2, 3(a2)
	slli	a3, a3, 8
	or	a3, a3, a4
	slli	a6, a6, 16
	slli	a2, a2, 24
	or	a2, a2, a6
	or	a2, a2, a3
	sw	a2, 8(a7)
	ld	a0, 8(a0)
	add	a0, a0, a5
	ld	a0, 0(a0)
	add	a0, a0, a1
	lbu	a1, 1(a0)
	lbu	a2, 0(a0)
	lbu	a3, 2(a0)
	lb	a0, 3(a0)
	slli	a1, a1, 8
	or	a1, a1, a2
	slli	a3, a3, 16
	slli	a0, a0, 24
	or	a0, a0, a3
	or	a0, a0, a1
	sw	a0, 12(a7)
.LBB20_34:
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end20:
	.size	store_macroblock_parameters, .Lfunc_end20-store_macroblock_parameters
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	set_stored_macroblock_parameters # -- Begin function set_stored_macroblock_parameters
	.p2align	2
	.type	set_stored_macroblock_parameters,@function
set_stored_macroblock_parameters:       # @set_stored_macroblock_parameters
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
	lui	a0, 2
	addiw	a0, a0, -1840
	sub	sp, sp, a0
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	li	s5, 0
	li	s6, 0
	lui	a1, 8
	add	a1, a0, a1
	ld	a1, -1192(a1)
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	lw	a1, 12(a0)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(best_mode)
	lhu	a1, %lo(best_mode)(a1)
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	lw	a1, 24(a0)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	ld	a2, 104(a0)
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	lui	a2, 2
	addiw	a2, a2, -1768
	add	a1, a1, a2
	ld	s7, 0(a1)
	ld	a1, 40(a1)
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	lui	s0, %hi(lrec_rec)
	addi	s0, s0, %lo(lrec_rec)
	lui	s8, %hi(rec_mbY)
	addi	s8, s8, %lo(rec_mbY)
	lui	s10, %hi(si_frame_indicator)
	lui	s11, %hi(sp2_frame_indicator)
	li	s3, 3
	lui	s4, 22
	li	s9, 16
	j	.LBB21_2
.LBB21_1:                               #   in Loop: Header=BB21_2 Depth=1
	addi	s6, s6, 1
	addi	s5, s5, 32
	addi	s0, s0, 64
	beq	s6, s9, .LBB21_8
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	lw	a1, 156(a0)
	add	a1, s6, a1
	slli	a1, a1, 3
	add	a1, s7, a1
	lw	a0, 152(a0)
	ld	a1, 0(a1)
	slli	a0, a0, 1
	add	a0, a1, a0
	add	s1, s8, s5
	li	a2, 32
	mv	a1, s1
	call	memcpy
	ld	a0, %lo(img)(s2)
	lw	a1, 24(a0)
	bne	a1, s3, .LBB21_6
# %bb.3:                                #   in Loop: Header=BB21_2 Depth=1
	lw	a1, %lo(si_frame_indicator)(s10)
	bnez	a1, .LBB21_6
# %bb.4:                                #   in Loop: Header=BB21_2 Depth=1
	lw	a1, %lo(sp2_frame_indicator)(s11)
	bnez	a1, .LBB21_6
# %bb.5:                                #   in Loop: Header=BB21_2 Depth=1
	lw	a1, 156(a0)
	lui	a2, %hi(lrec)
	ld	a2, %lo(lrec)(a2)
	add	a1, s6, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a0, 152(a0)
	ld	a1, 0(a1)
	slli	a0, a0, 2
	add	a0, a1, a0
	li	a2, 64
	mv	a1, s0
	call	memcpy
	ld	a0, %lo(img)(s2)
.LBB21_6:                               #   in Loop: Header=BB21_2 Depth=1
	add	a1, a0, s4
	lw	a1, 108(a1)
	beqz	a1, .LBB21_1
# %bb.7:                                #   in Loop: Header=BB21_2 Depth=1
	lui	a0, %hi(rdopt)
	ld	a0, %lo(rdopt)(a0)
	add	a0, a0, s5
	addi	a0, a0, 8
	li	a2, 32
	mv	a1, s1
	call	memcpy
	ld	a0, %lo(img)(s2)
	j	.LBB21_1
.LBB21_8:
	lui	s0, 22
	add	a1, a0, s0
	lw	a1, 100(a1)
	li	a2, 528
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	mul	s1, a3, a2
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	slli	a2, s3, 48
	srai	s2, a2, 48
	beqz	a1, .LBB21_10
# %bb.9:
	lui	a0, %hi(luma_transform_size_8x8_flag)
	lw	a1, %lo(luma_transform_size_8x8_flag)(a0)
	mv	a0, s2
	call	update_offset_params
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
.LBB21_10:
	addiw	a1, s0, 436
	add	a1, a0, a1
	lw	a2, 0(a1)
	ld	s0, 8(sp)                       # 8-byte Folded Reload
	add	s0, s0, s1
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	beqz	a2, .LBB21_20
# %bb.11:
	lw	a1, 12(a1)
	blez	a1, .LBB21_20
# %bb.12:
	li	s10, 0
	li	s11, 0
	lui	s2, %hi(lrec_rec_V)
	addi	s2, s2, %lo(lrec_rec_V)
	lui	s3, %hi(lrec_rec_U)
	addi	s3, s3, %lo(lrec_rec_U)
	lui	s8, 22
	lui	s7, %hi(img)
	addiw	s1, s8, 108
	lui	s6, %hi(rdopt)
	lui	s9, %hi(lrec_uv)
	j	.LBB21_14
.LBB21_13:                              #   in Loop: Header=BB21_14 Depth=1
	add	a1, a0, s8
	lw	a1, 448(a1)
	addi	s11, s11, 1
	addi	s10, s10, 32
	addi	s2, s2, 64
	addi	s3, s3, 64
	bge	s11, a1, .LBB21_20
.LBB21_14:                              # =>This Inner Loop Header: Depth=1
	lw	a1, 164(a0)
	ld	s5, 48(sp)                      # 8-byte Folded Reload
	ld	a2, 0(s5)
	add	a1, s11, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a2, 160(a0)
	ld	a1, 0(a1)
	add	a0, a0, s8
	lw	a3, 444(a0)
	slli	a0, a2, 1
	add	a0, a1, a0
	lui	s4, %hi(rec_mbU)
	addi	s4, s4, %lo(rec_mbU)
	add	s4, s4, s10
	slli	a2, a3, 1
	mv	a1, s4
	call	memcpy
	ld	a0, %lo(img)(s7)
	lw	a1, 164(a0)
	ld	a2, 8(s5)
	add	a1, s11, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a2, 160(a0)
	ld	a1, 0(a1)
	add	a0, a0, s8
	lw	a3, 444(a0)
	slli	a0, a2, 1
	add	a0, a1, a0
	lui	s5, %hi(rec_mbV)
	addi	s5, s5, %lo(rec_mbV)
	add	s5, s5, s10
	slli	a2, a3, 1
	mv	a1, s5
	call	memcpy
	ld	a0, %lo(img)(s7)
	lw	a1, 24(a0)
	li	a2, 3
	bne	a1, a2, .LBB21_18
# %bb.15:                               #   in Loop: Header=BB21_14 Depth=1
	lui	a1, %hi(si_frame_indicator)
	lw	a1, %lo(si_frame_indicator)(a1)
	bnez	a1, .LBB21_18
# %bb.16:                               #   in Loop: Header=BB21_14 Depth=1
	lui	a1, %hi(sp2_frame_indicator)
	lw	a1, %lo(sp2_frame_indicator)(a1)
	bnez	a1, .LBB21_18
# %bb.17:                               #   in Loop: Header=BB21_14 Depth=1
	ld	a1, %lo(lrec_uv)(s9)
	lw	a2, 164(a0)
	ld	a1, 0(a1)
	add	a2, s11, a2
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lw	a2, 160(a0)
	add	a0, a0, s8
	lw	a3, 444(a0)
	slli	a0, a2, 2
	add	a0, a1, a0
	slli	a2, a3, 2
	mv	a1, s3
	call	memcpy
	ld	a0, %lo(img)(s7)
	ld	a1, %lo(lrec_uv)(s9)
	lw	a2, 164(a0)
	ld	a1, 8(a1)
	add	a2, s11, a2
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lw	a2, 160(a0)
	add	a0, a0, s8
	lw	a3, 444(a0)
	slli	a0, a2, 2
	add	a0, a1, a0
	slli	a2, a3, 2
	mv	a1, s2
	call	memcpy
	ld	a0, %lo(img)(s7)
.LBB21_18:                              #   in Loop: Header=BB21_14 Depth=1
	add	a1, a0, s1
	lw	a2, 0(a1)
	beqz	a2, .LBB21_13
# %bb.19:                               #   in Loop: Header=BB21_14 Depth=1
	ld	a0, %lo(rdopt)(s6)
	lw	a2, 336(a1)
	add	a0, a0, s10
	addi	a0, a0, 520
	slli	a2, a2, 1
	mv	a1, s4
	call	memcpy
	ld	a0, %lo(img)(s7)
	ld	a1, %lo(rdopt)(s6)
	add	a0, a0, s8
	lw	a2, 444(a0)
	add	a1, a1, s10
	addi	a0, a1, 1032
	slli	a2, a2, 1
	mv	a1, s5
	call	memcpy
	ld	a0, %lo(img)(s7)
	j	.LBB21_13
.LBB21_20:
	lui	s2, 22
	addiw	a2, s2, 84
	lui	a1, 3
	addiw	a1, a1, 1848
	add	a3, a0, a1
	ld	a1, 0(a3)
	lui	a4, %hi(cofAC)
	ld	a5, %lo(cofAC)(a4)
	add	a2, a0, a2
	sd	a1, %lo(cofAC)(a4)
	ld	a4, 8(a3)
	sd	a5, 0(a3)
	lui	a5, %hi(cofDC)
	ld	a1, %lo(cofDC)(a5)
	sd	a4, %lo(cofDC)(a5)
	lui	a5, %hi(cbp)
	lw	a6, %lo(cbp)(a5)
	lui	a4, %hi(cbp_blk)
	ld	a4, %lo(cbp_blk)(a4)
	lw	a7, 24(a2)
	sd	a1, 8(a3)
	sw	a6, 364(s0)
	sd	a4, 368(s0)
	ld	s9, 16(sp)                      # 8-byte Folded Reload
	sw	s9, 72(s0)
	ld	s6, 24(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	beqz	a7, .LBB21_26
# %bb.21:
	lui	s3, %hi(rdopt)
	ld	a3, %lo(rdopt)(s3)
	lw	a6, 0(a2)
	lw	a5, %lo(cbp)(a5)
	sw	s9, 1640(a3)
	sw	a6, 1696(a3)
	sw	a5, 1624(a3)
	lw	a5, 488(s0)
	lw	a6, 492(s0)
	sd	a4, 1632(a3)
	sw	s9, 1560(a3)
	sw	a5, 1716(a3)
	sw	a6, 1720(a3)
	lw	a4, 8(s0)
	lw	a5, 12(s0)
	lw	a6, 496(s0)
	lw	a2, 344(a2)
	sw	a4, 1724(a3)
	sw	a5, 1712(a3)
	li	a4, -3
	sw	a6, 1728(a3)
	blt	a2, a4, .LBB21_25
# %bb.22:                               # %.preheader4
	li	s1, 0
	li	s4, -1
	lui	s5, 3
	lui	s9, %hi(img)
	lui	s11, 22
	addiw	s10, s5, 1856
.LBB21_23:                              # =>This Inner Loop Header: Depth=1
	ld	a1, %lo(rdopt)(s3)
	ld	a1, 1544(a1)
	add	a0, a0, s5
	ld	a0, 1848(a0)
	add	a1, a1, s1
	ld	a1, 0(a1)
	add	a0, a0, s1
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a2, 0(a0)
	ld	a0, 0(a1)
	ld	a1, 0(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s9)
	ld	a0, 1544(a0)
	add	a1, a1, s5
	ld	a1, 1848(a1)
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
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s9)
	ld	a0, 1544(a0)
	add	a1, a1, s5
	ld	a1, 1848(a1)
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
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s9)
	ld	a0, 1544(a0)
	add	a1, a1, s5
	ld	a1, 1848(a1)
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
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s9)
	ld	a0, 1544(a0)
	add	a1, a1, s5
	ld	a1, 1848(a1)
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
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s9)
	ld	a0, 1544(a0)
	add	a1, a1, s5
	ld	a1, 1848(a1)
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
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s9)
	ld	a0, 1544(a0)
	add	a1, a1, s5
	ld	a1, 1848(a1)
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
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s9)
	ld	a0, 1544(a0)
	add	a1, a1, s5
	ld	a1, 1848(a1)
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
	ld	a0, %lo(img)(s9)
	add	a1, a0, s11
	lw	a1, 428(a1)
	addiw	a1, a1, 3
	addi	s4, s4, 1
	addi	s1, s1, 8
	blt	s4, a1, .LBB21_23
# %bb.24:
	add	a0, a0, s10
	lui	a1, %hi(rdopt)
	ld	a3, %lo(rdopt)(a1)
	ld	a1, 0(a0)
	ld	s5, 40(sp)                      # 8-byte Folded Reload
.LBB21_25:
	ld	a0, 1552(a3)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(rdopt)(s3)
	lui	s1, %hi(img)
	ld	a1, %lo(img)(s1)
	ld	a0, 1552(a0)
	lui	s4, 3
	add	a1, a1, s4
	ld	a1, 1856(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s1)
	ld	a0, 1552(a0)
	add	a1, a1, s4
	ld	a1, 1856(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s1)
	ld	a0, 1552(a0)
	add	a1, a1, s4
	ld	a1, 1856(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s1)
	ld	a0, 1552(a0)
	add	a1, a1, s4
	ld	a1, 1856(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s1)
	ld	a0, 1552(a0)
	add	a1, a1, s4
	ld	a1, 1856(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
.LBB21_26:
	lui	a4, %hi(b8mode)
	lw	a0, %lo(b8mode)(a4)
	sw	a0, 376(s0)
	addi	a2, a4, %lo(b8mode)
	lw	a0, 12(a2)
	sw	a0, 388(s0)
	lw	a0, 8(a2)
	sw	a0, 384(s0)
	lw	a0, 4(a2)
	sw	a0, 380(s0)
	lui	a3, %hi(b8pdir)
	addi	a1, a3, %lo(b8pdir)
	lw	a0, 12(a1)
	sw	a0, 404(s0)
	lw	a0, 8(a1)
	sw	a0, 400(s0)
	lw	a0, 4(a1)
	sw	a0, 396(s0)
	lw	a0, %lo(b8pdir)(a3)
	sw	a0, 392(s0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	add	s2, a0, s2
	lw	a5, 108(s2)
	beqz	a5, .LBB21_28
# %bb.27:
	lui	a5, %hi(rdopt)
	ld	a5, %lo(rdopt)(a5)
	lw	a4, %lo(b8mode)(a4)
	lw	a6, 4(a2)
	lw	a7, 8(a2)
	lw	a2, 12(a2)
	sw	a4, 1568(a5)
	sw	a6, 1572(a5)
	sw	a7, 1576(a5)
	sw	a2, 1580(a5)
	lw	a2, %lo(b8pdir)(a3)
	lw	a3, 4(a1)
	lw	a4, 8(a1)
	lw	a1, 12(a1)
	sw	a2, 1584(a5)
	sw	a3, 1588(a5)
	sw	a4, 1592(a5)
	sw	a1, 1596(a5)
.LBB21_28:
	lw	a1, 72(s0)
	lui	a2, %hi(bi_pred_me)
	lh	a2, %lo(bi_pred_me)(a2)
	addi	a1, a1, -1
	snez	a1, a1
	addi	a1, a1, -1
	and	a1, a1, a2
	li	a2, 8
	sh	a1, 476(s0)
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	bne	s5, a2, .LBB21_32
# %bb.29:
	lui	a1, %hi(luma_transform_size_8x8_flag)
	lw	a1, %lo(luma_transform_size_8x8_flag)(a1)
	bnez	a1, .LBB21_32
# %bb.30:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 1845(a1)
	beqz	a1, .LBB21_32
# %bb.31:
	lw	a0, 24(a0)
	addi	a0, a0, -1
	seqz	s1, a0
	lui	s2, %hi(tr8x8)
	addi	s2, s2, %lo(tr8x8)
	lui	s3, 2
	addiw	s3, s3, 28
	addi	a0, sp, 60
	mv	a1, s2
	mv	a2, s3
	call	memcpy
	li	a0, 1
	addi	a2, sp, 60
	li	a1, 0
	mv	a3, s1
	call	RestoreMVBlock8x8
	addi	a0, sp, 60
	mv	a1, s2
	mv	a2, s3
	call	memcpy
	li	a0, 1
	li	a1, 1
	addi	a2, sp, 60
	mv	a3, s1
	call	RestoreMVBlock8x8
	addi	a0, sp, 60
	mv	a1, s2
	mv	a2, s3
	call	memcpy
	li	a0, 1
	li	a1, 2
	addi	a2, sp, 60
	mv	a3, s1
	call	RestoreMVBlock8x8
	addi	a0, sp, 60
	mv	a1, s2
	mv	a2, s3
	call	memcpy
	li	a0, 1
	li	a1, 3
	addi	a2, sp, 60
	mv	a3, s1
	call	RestoreMVBlock8x8
.LBB21_32:
	lbu	a0, 364(s0)
	andi	a0, a0, 15
	bnez	a0, .LBB21_34
# %bb.33:
	lw	a0, 72(s0)
	ori	a0, a0, 4
	li	a1, 13
	bne	a0, a1, .LBB21_92
.LBB21_34:
	lui	a0, %hi(luma_transform_size_8x8_flag)
	lw	a0, %lo(luma_transform_size_8x8_flag)(a0)
.LBB21_35:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lui	a3, %hi(rdopt)
	ld	a2, %lo(rdopt)(a3)
	addi	a1, a1, 2047
	lw	a1, 1089(a1)
	sw	a0, 468(s0)
	li	a4, 3
	sw	a0, 1704(a2)
	bne	a1, a4, .LBB21_38
# %bb.36:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	li	a2, 1
	beq	a1, a2, .LBB21_38
# %bb.37:
	lui	a1, %hi(decs)
	ld	a1, %lo(decs)(a1)
	lw	a2, 136(a0)
	ld	a1, 48(a1)
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lw	a0, 140(a0)
	add	a0, a1, a0
	sb	s5, 0(a0)
.LBB21_38:
	li	a4, 0
	addi	a0, s0, 376
	addi	a1, s0, 392
	li	a5, 1680
	li	a6, 1664
	lui	a7, %hi(frefframe)
	addi	a7, a7, %lo(frefframe)
	lui	a2, 524288
	addiw	a2, a2, -1
	lui	t0, %hi(img)
	li	t1, 1
	lui	t2, %hi(enc_picture)
	lui	t3, 2
	addiw	t4, t3, -1704
	li	t5, -1
	lui	t6, 22
	li	n1, 4
	li	n2, 14
	lui	n3, 6
	addiw	n3, n3, 1536
	li	n4, 2
	addiw	n5, t6, -760
	addiw	n6, t6, -768
	li	n7, 264
	j	.LBB21_40
.LBB21_39:                              #   in Loop: Header=BB21_40 Depth=1
	addi	a4, a4, 1
	addi	a5, a5, 4
	addi	a6, a6, 4
	addi	a7, a7, 4
	beq	a4, n1, .LBB21_60
.LBB21_40:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_42 Depth 2
	ld	n8, %lo(img)(t0)
	lw	n11, 148(n8)
	li	n8, 0
	li	n9, 0
	li	n10, 0
	addw	n12, n11, a4
	andi	n11, a4, 2
	slli	n12, n12, 3
	slli	n13, a4, 3
	j	.LBB21_42
.LBB21_41:                              #   in Loop: Header=BB21_42 Depth=2
	addi	n10, n10, 1
	addi	n9, n9, 8
	addi	n8, n8, 1
	beq	n10, n1, .LBB21_39
.LBB21_42:                              #   Parent Loop BB21_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n17, %lo(img)(t0)
	lw	n14, 144(n17)
	srli	n15, n10, 1
	and	n15, n15, a2
	or	n16, n15, n11
	slli	n16, n16, 2
	add	n15, a1, n16
	lw	n18, 0(n15)
	addw	n14, n8, n14
	beq	n18, t1, .LBB21_45
# %bb.43:                               #   in Loop: Header=BB21_42 Depth=2
	lw	n19, 72(s0)
	bltu	n2, n19, .LBB21_52
# %bb.44:                               #   in Loop: Header=BB21_42 Depth=2
	srl	n20, n3, n19
	andi	n20, n20, 1
	beqz	n20, .LBB21_52
.LBB21_45:                              #   in Loop: Header=BB21_42 Depth=2
	ld	n16, %lo(enc_picture)(t2)
	add	n16, n16, t3
	ld	n16, -1712(n16)
	ld	n16, 0(n16)
	add	n16, n16, n12
	ld	n16, 0(n16)
	add	n17, n16, n14
	li	n16, 255
	sb	n16, 0(n17)
	ld	n17, %lo(enc_picture)(t2)
	add	n17, n17, t4
	ld	n18, 0(n17)
	ld	n17, 16(n17)
	ld	n18, 0(n18)
	ld	n17, 0(n17)
	add	n18, n18, n12
	add	n17, n17, n12
	ld	n17, 0(n17)
	ld	n18, 0(n18)
	ld	n19, %lo(img)(t0)
	slli	n20, n14, 3
	add	n17, n17, n20
	ld	n17, 0(n17)
	add	n19, n19, t6
	lw	n19, 108(n19)
	add	n18, n18, n20
	sd	t5, 0(n18)
	sh	zero, 0(n17)
	sh	zero, 2(n17)
	beqz	n19, .LBB21_47
.LBB21_46:                              #   in Loop: Header=BB21_42 Depth=2
	ld	n17, %lo(rdopt)(a3)
	add	n18, a6, n10
	add	n17, n17, n18
	sb	n16, 0(n17)
.LBB21_47:                              #   in Loop: Header=BB21_42 Depth=2
	lw	n15, 0(n15)
	beqz	n15, .LBB21_50
# %bb.48:                               #   in Loop: Header=BB21_42 Depth=2
	lw	n15, 72(s0)
	bltu	n2, n15, .LBB21_41
# %bb.49:                               #   in Loop: Header=BB21_42 Depth=2
	srl	n15, n3, n15
	andi	n15, n15, 1
	beqz	n15, .LBB21_41
.LBB21_50:                              #   in Loop: Header=BB21_42 Depth=2
	ld	n15, %lo(enc_picture)(t2)
	add	n15, n15, t3
	ld	n15, -1712(n15)
	ld	n15, 8(n15)
	add	n15, n15, n12
	ld	n15, 0(n15)
	add	n15, n15, n14
	sb	t5, 0(n15)
	ld	n15, %lo(enc_picture)(t2)
	add	n15, n15, t4
	ld	n16, 0(n15)
	ld	n15, 16(n15)
	ld	n16, 8(n16)
	ld	n15, 8(n15)
	add	n16, n16, n12
	add	n15, n15, n12
	ld	n15, 0(n15)
	ld	n16, 0(n16)
	ld	n17, %lo(img)(t0)
	slli	n14, n14, 3
	add	n15, n15, n14
	ld	n15, 0(n15)
	add	n17, n17, t6
	lw	n17, 108(n17)
	add	n14, n16, n14
	sd	t5, 0(n14)
	sh	zero, 0(n15)
	sh	zero, 2(n15)
	beqz	n17, .LBB21_41
# %bb.51:                               #   in Loop: Header=BB21_42 Depth=2
	ld	n14, %lo(rdopt)(a3)
	add	n15, a5, n10
	add	n14, n14, n15
	sb	t5, 0(n14)
	j	.LBB21_41
.LBB21_52:                              #   in Loop: Header=BB21_42 Depth=2
	bne	n19, t1, .LBB21_58
# %bb.53:                               #   in Loop: Header=BB21_42 Depth=2
	bne	n18, n4, .LBB21_58
# %bb.54:                               #   in Loop: Header=BB21_42 Depth=2
	lhu	n19, 476(s0)
	beqz	n19, .LBB21_58
# %bb.55:                               #   in Loop: Header=BB21_42 Depth=2
	mv	n18, n6
	beq	n19, t1, .LBB21_57
# %bb.56:                               #   in Loop: Header=BB21_42 Depth=2
	mv	n18, n5
.LBB21_57:                              #   in Loop: Header=BB21_42 Depth=2
	add	n17, n17, n18
	ld	n17, 0(n17)
	add	n17, n17, n13
	ld	n17, 0(n17)
	ld	n18, %lo(enc_picture)(t2)
	add	n17, n17, n9
	ld	n17, 0(n17)
	add	n18, n18, t3
	ld	n18, -1712(n18)
	ld	n17, 0(n17)
	ld	n18, 0(n18)
	add	n16, a0, n16
	lw	n16, 0(n16)
	ld	n17, 0(n17)
	add	n18, n18, n12
	ld	n18, 0(n18)
	slli	n16, n16, 3
	add	n16, n17, n16
	ld	n16, 0(n16)
	add	n18, n18, n14
	sb	zero, 0(n18)
	ld	n17, %lo(enc_picture)(t2)
	add	n18, n17, t4
	lw	n19, 428(s0)
	ld	n20, 16(n18)
	mul	n19, n19, n7
	ld	n20, 0(n20)
	add	n17, n17, n19
	ld	n18, 0(n18)
	ld	n17, 24(n17)
	add	n20, n20, n12
	ld	n19, 0(n20)
	ld	n18, 0(n18)
	slli	n20, n14, 3
	lh	n21, 0(n16)
	add	n19, n19, n20
	ld	n19, 0(n19)
	add	n18, n18, n12
	ld	n22, %lo(img)(t0)
	ld	n18, 0(n18)
	sh	n21, 0(n19)
	lh	n21, 2(n16)
	add	n22, n22, t6
	lw	n22, 108(n22)
	li	n16, 0
	add	n18, n18, n20
	sd	n17, 0(n18)
	sh	n21, 2(n19)
	bnez	n22, .LBB21_46
	j	.LBB21_47
.LBB21_58:                              #   in Loop: Header=BB21_42 Depth=2
	add	n17, n17, t6
	ld	n17, -776(n17)
	add	n17, n17, n13
	ld	n17, 0(n17)
	add	n17, n17, n9
	ld	n17, 0(n17)
	ld	n18, %lo(enc_picture)(t2)
	ld	n19, 0(n17)
	add	n17, a7, n10
	lbu	n20, 0(n17)
	add	n18, n18, t3
	ld	n18, -1712(n18)
	slli	n21, n20, 3
	add	n19, n19, n21
	ld	n18, 0(n18)
	add	n16, a0, n16
	lw	n16, 0(n16)
	ld	n19, 0(n19)
	add	n18, n18, n12
	ld	n18, 0(n18)
	slli	n16, n16, 3
	add	n16, n19, n16
	ld	n16, 0(n16)
	add	n18, n18, n14
	sb	n20, 0(n18)
	ld	n18, %lo(enc_picture)(t2)
	add	n19, n18, t4
	ld	n20, 16(n19)
	lw	n22, 428(s0)
	ld	n20, 0(n20)
	mul	n22, n22, n7
	add	n18, n18, n22
	add	n20, n20, n12
	ld	n20, 0(n20)
	ld	n19, 0(n19)
	slli	n22, n14, 3
	lh	n23, 0(n16)
	add	n20, n20, n22
	ld	n20, 0(n20)
	add	n18, n18, n21
	ld	n19, 0(n19)
	ld	n18, 24(n18)
	sh	n23, 0(n20)
	ld	n21, %lo(img)(t0)
	add	n19, n19, n12
	ld	n19, 0(n19)
	lh	n16, 2(n16)
	add	n21, n21, t6
	lw	n21, 108(n21)
	add	n19, n19, n22
	sd	n18, 0(n19)
	sh	n16, 2(n20)
	beqz	n21, .LBB21_47
# %bb.59:                               #   in Loop: Header=BB21_42 Depth=2
	lbu	n16, 0(n17)
	j	.LBB21_46
.LBB21_60:
	li	a3, 1
	bne	s4, a3, .LBB21_78
# %bb.61:                               # %.preheader
	li	a4, 0
	li	a5, 1680
	lui	a6, %hi(brefframe)
	addi	a6, a6, %lo(brefframe)
	lui	a7, %hi(img)
	li	t0, 14
	li	t1, 2
	lui	t2, 22
	addiw	t3, t2, -760
	addiw	t4, t2, -768
	lui	t5, %hi(enc_picture)
	lui	t6, 2
	addiw	n1, t6, -1704
	li	n2, 264
	li	n3, -1
	li	n4, 4
	lui	n5, %hi(rdopt)
	lui	n6, 6
	addiw	n6, n6, 1536
	j	.LBB21_63
.LBB21_62:                              #   in Loop: Header=BB21_63 Depth=1
	addi	a4, a4, 1
	addi	a5, a5, 4
	addi	a6, a6, 4
	beq	a4, n4, .LBB21_78
.LBB21_63:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_67 Depth 2
	ld	n7, %lo(img)(a7)
	lw	n10, 148(n7)
	li	n7, 0
	li	n8, 0
	li	n9, 0
	addw	n12, n10, a4
	andi	n10, a4, 2
	slli	n11, a4, 3
	slli	n12, n12, 3
	j	.LBB21_67
.LBB21_64:                              #   in Loop: Header=BB21_67 Depth=2
	add	n15, n15, n16
	ld	n15, 0(n15)
	add	n15, n15, n11
	ld	n15, 0(n15)
	ld	n16, %lo(enc_picture)(t5)
	add	n15, n15, n8
	ld	n15, 0(n15)
	add	n16, n16, t6
	ld	n16, -1712(n16)
	ld	n15, 8(n15)
	ld	n16, 8(n16)
	add	n14, a0, n14
	lw	n14, 0(n14)
	ld	n15, 0(n15)
	add	n16, n16, n12
	ld	n16, 0(n16)
	slli	n14, n14, 3
	add	n14, n15, n14
	ld	n14, 0(n14)
	add	n16, n16, n13
	sb	zero, 0(n16)
	ld	n15, %lo(enc_picture)(t5)
	lw	n16, 428(s0)
	add	n17, n15, n1
	ld	n18, 16(n17)
	addiw	n16, n16, 1
	mul	n16, n16, n2
	ld	n18, 8(n18)
	add	n15, n15, n16
	ld	n16, 0(n17)
	ld	n15, 24(n15)
	add	n18, n18, n12
	ld	n17, 0(n18)
	ld	n16, 8(n16)
	slli	n13, n13, 3
	lh	n18, 0(n14)
	add	n17, n17, n13
	ld	n17, 0(n17)
	add	n16, n16, n12
	ld	n19, %lo(img)(a7)
	ld	n16, 0(n16)
	sh	n18, 0(n17)
	lh	n18, 2(n14)
	add	n19, n19, t2
	lw	n19, 108(n19)
	li	n14, 0
	add	n13, n16, n13
	sd	n15, 0(n13)
	sh	n18, 2(n17)
	beqz	n19, .LBB21_66
.LBB21_65:                              #   in Loop: Header=BB21_67 Depth=2
	ld	n13, %lo(rdopt)(n5)
	add	n15, a5, n9
	add	n13, n13, n15
	sb	n14, 0(n13)
.LBB21_66:                              #   in Loop: Header=BB21_67 Depth=2
	addi	n9, n9, 1
	addi	n8, n8, 8
	addi	n7, n7, 1
	beq	n9, n4, .LBB21_62
.LBB21_67:                              #   Parent Loop BB21_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n15, %lo(img)(a7)
	lw	n13, 144(n15)
	lw	n16, 72(s0)
	addw	n13, n7, n13
	bltu	t0, n16, .LBB21_70
# %bb.68:                               #   in Loop: Header=BB21_67 Depth=2
	srl	n14, n6, n16
	andi	n14, n14, 1
	beqz	n14, .LBB21_70
.LBB21_69:                              #   in Loop: Header=BB21_67 Depth=2
	ld	n14, %lo(enc_picture)(t5)
	add	n14, n14, t6
	ld	n14, -1712(n14)
	ld	n14, 8(n14)
	add	n14, n14, n12
	ld	n14, 0(n14)
	add	n15, n14, n13
	li	n14, 255
	sb	n14, 0(n15)
	ld	n15, %lo(enc_picture)(t5)
	add	n15, n15, n1
	ld	n16, 0(n15)
	ld	n15, 16(n15)
	ld	n16, 8(n16)
	ld	n15, 8(n15)
	add	n16, n16, n12
	add	n15, n15, n12
	ld	n15, 0(n15)
	ld	n16, 0(n16)
	ld	n17, %lo(img)(a7)
	slli	n13, n13, 3
	add	n15, n15, n13
	ld	n15, 0(n15)
	add	n17, n17, t2
	lw	n17, 108(n17)
	add	n13, n16, n13
	sd	n3, 0(n13)
	sh	zero, 0(n15)
	sh	zero, 2(n15)
	bnez	n17, .LBB21_65
	j	.LBB21_66
.LBB21_70:                              #   in Loop: Header=BB21_67 Depth=2
	srli	n14, n9, 1
	and	n14, n14, a2
	or	n14, n14, n10
	slli	n14, n14, 2
	add	n17, a1, n14
	lw	n17, 0(n17)
	beqz	n17, .LBB21_69
# %bb.71:                               #   in Loop: Header=BB21_67 Depth=2
	bne	n16, a3, .LBB21_76
# %bb.72:                               #   in Loop: Header=BB21_67 Depth=2
	bne	n17, t1, .LBB21_76
# %bb.73:                               #   in Loop: Header=BB21_67 Depth=2
	lhu	n17, 476(s0)
	beqz	n17, .LBB21_76
# %bb.74:                               #   in Loop: Header=BB21_67 Depth=2
	mv	n16, t4
	beq	n17, a3, .LBB21_64
# %bb.75:                               #   in Loop: Header=BB21_67 Depth=2
	mv	n16, t3
	j	.LBB21_64
.LBB21_76:                              #   in Loop: Header=BB21_67 Depth=2
	add	n15, n15, t2
	ld	n15, -776(n15)
	add	n15, n15, n11
	ld	n15, 0(n15)
	add	n15, n15, n8
	ld	n15, 0(n15)
	ld	n16, %lo(enc_picture)(t5)
	ld	n17, 8(n15)
	add	n15, a6, n9
	lbu	n18, 0(n15)
	add	n16, n16, t6
	ld	n16, -1712(n16)
	slli	n19, n18, 3
	add	n17, n17, n19
	ld	n16, 8(n16)
	add	n14, a0, n14
	lw	n14, 0(n14)
	ld	n17, 0(n17)
	add	n16, n16, n12
	ld	n16, 0(n16)
	slli	n14, n14, 3
	add	n14, n17, n14
	ld	n14, 0(n14)
	add	n16, n16, n13
	sb	n18, 0(n16)
	ld	n16, %lo(enc_picture)(t5)
	add	n17, n16, n1
	ld	n18, 16(n17)
	lw	n20, 428(s0)
	ld	n18, 8(n18)
	addiw	n20, n20, 1
	mul	n20, n20, n2
	add	n16, n16, n20
	add	n18, n18, n12
	ld	n18, 0(n18)
	ld	n17, 0(n17)
	slli	n13, n13, 3
	lh	n20, 0(n14)
	add	n18, n18, n13
	ld	n18, 0(n18)
	add	n16, n16, n19
	ld	n17, 8(n17)
	ld	n16, 24(n16)
	sh	n20, 0(n18)
	ld	n19, %lo(img)(a7)
	add	n17, n17, n12
	ld	n17, 0(n17)
	lh	n14, 2(n14)
	add	n19, n19, t2
	lw	n19, 108(n19)
	add	n13, n17, n13
	sd	n16, 0(n13)
	sh	n14, 2(n18)
	beqz	n19, .LBB21_66
# %bb.77:                               #   in Loop: Header=BB21_67 Depth=2
	lbu	n14, 0(n15)
	j	.LBB21_65
.LBB21_78:
	lui	a0, %hi(best_c_imode)
	lw	a0, %lo(best_c_imode)(a0)
	sw	a0, 416(s0)
	lui	a1, %hi(best_i16offset)
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lw	a1, %lo(best_i16offset)(a1)
	lw	a3, 72(s0)
	lui	a4, 22
	add	a2, a2, a4
	li	a4, 13
	sw	a1, 84(a2)
	bne	a3, a4, .LBB21_81
# %bb.79:
	lw	a1, 360(s0)
	lw	a2, 356(s0)
	lw	a3, 352(s0)
	lw	a4, 348(s0)
	sw	a1, 344(s0)
	sw	a2, 340(s0)
	sw	a3, 336(s0)
	sw	a4, 332(s0)
	ld	a3, %lo(img)(a0)
	lw	a2, 148(a3)
	addi	a1, a2, -1
	slli	a2, a2, 3
.LBB21_80:                              # =>This Inner Loop Header: Depth=1
	ld	a4, 104(a3)
	ld	a5, 112(a3)
	add	a4, a4, a2
	ld	a4, 0(a4)
	lw	a3, 144(a3)
	add	a5, a5, a2
	ld	a5, 0(a5)
	add	a4, a4, a3
	add	a3, a5, a3
	lbu	a5, 2(a3)
	lb	a6, 3(a3)
	lbu	a7, 0(a3)
	lbu	a3, 1(a3)
	sb	a5, 2(a4)
	sb	a6, 3(a4)
	sb	a7, 0(a4)
	sb	a3, 1(a4)
	ld	a3, %lo(img)(a0)
	lw	a4, 148(a3)
	addiw	a4, a4, 3
	addi	a1, a1, 1
	addi	a2, a2, 8
	blt	a1, a4, .LBB21_80
	j	.LBB21_86
.LBB21_81:
	andi	a1, s5, -5
	li	a0, 9
	bne	a1, a0, .LBB21_84
# %bb.82:
	bne	s5, a0, .LBB21_86
# %bb.83:
	addi	a0, s0, 332
	lui	a1, %hi(b4_intra_pred_modes)
	addi	a1, a1, %lo(b4_intra_pred_modes)
	li	a2, 16
	call	memcpy
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lw	a2, 148(a1)
	ld	a3, 104(a1)
	slli	a2, a2, 3
	add	a2, a3, a2
	ld	a2, 0(a2)
	lw	a1, 144(a1)
	lui	a3, %hi(b4_ipredmode)
	lw	a4, %lo(b4_ipredmode)(a3)
	add	a1, a2, a1
	srli	a2, a4, 24
	sb	a2, 3(a1)
	srli	a2, a4, 16
	sb	a2, 2(a1)
	srli	a2, a4, 8
	sb	a2, 1(a1)
	sb	a4, 0(a1)
	ld	a1, %lo(img)(a0)
	lw	a2, 148(a1)
	ld	a4, 104(a1)
	addi	a3, a3, %lo(b4_ipredmode)
	slli	a2, a2, 3
	add	a2, a4, a2
	ld	a2, 8(a2)
	lw	a1, 144(a1)
	lw	a4, 4(a3)
	add	a1, a2, a1
	srli	a2, a4, 24
	sb	a2, 3(a1)
	srli	a2, a4, 16
	sb	a2, 2(a1)
	srli	a2, a4, 8
	sb	a2, 1(a1)
	sb	a4, 0(a1)
	ld	a1, %lo(img)(a0)
	lw	a2, 148(a1)
	ld	a4, 104(a1)
	slli	a2, a2, 3
	add	a2, a4, a2
	ld	a2, 16(a2)
	lw	a1, 144(a1)
	lw	a4, 8(a3)
	add	a1, a2, a1
	srli	a2, a4, 24
	sb	a2, 3(a1)
	srli	a2, a4, 16
	sb	a2, 2(a1)
	srli	a2, a4, 8
	sb	a2, 1(a1)
	sb	a4, 0(a1)
	ld	a0, %lo(img)(a0)
	lw	a1, 148(a0)
	ld	a2, 104(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 24(a1)
	lw	a0, 144(a0)
	lw	a2, 12(a3)
	add	a0, a1, a0
	srli	a1, a2, 24
	sb	a1, 3(a0)
	srli	a1, a2, 16
	sb	a1, 2(a0)
	srli	a1, a2, 8
	sb	a1, 1(a0)
	sb	a2, 0(a0)
	j	.LBB21_86
.LBB21_84:
	lui	a0, 8224
	addi	a0, a0, 514
	sw	a0, 344(s0)
	sw	a0, 340(s0)
	sw	a0, 336(s0)
	sw	a0, 332(s0)
	lui	a0, %hi(img)
	ld	a4, %lo(img)(a0)
	lw	a2, 148(a4)
	addi	a1, a2, -1
	slli	a2, a2, 3
	li	a3, 2
.LBB21_85:                              # =>This Inner Loop Header: Depth=1
	ld	a5, 104(a4)
	add	a5, a5, a2
	ld	a5, 0(a5)
	lw	a4, 144(a4)
	add	a4, a5, a4
	sb	a3, 3(a4)
	sb	a3, 2(a4)
	sb	a3, 1(a4)
	sb	a3, 0(a4)
	ld	a4, %lo(img)(a0)
	lw	a5, 148(a4)
	addiw	a5, a5, 3
	addi	a1, a1, 1
	addi	a2, a2, 8
	blt	a1, a5, .LBB21_85
.LBB21_86:
	lw	a0, 72(s0)
	li	a1, 13
	bne	a0, a1, .LBB21_88
# %bb.87:
	addi	a0, s0, 332
	lui	a1, %hi(b8_intra_pred_modes8x8)
	addi	a1, a1, %lo(b8_intra_pred_modes8x8)
	li	a2, 16
	call	memcpy
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lw	a2, 148(a1)
	ld	a3, 104(a1)
	slli	a2, a2, 3
	add	a2, a3, a2
	ld	a2, 0(a2)
	lw	a1, 144(a1)
	add	a1, a2, a1
	lui	a2, %hi(b8_ipredmode8x8)
	addi	a3, a2, %lo(b8_ipredmode8x8)
	lb	a4, 3(a3)
	lbu	a5, 2(a3)
	lbu	a6, 1(a3)
	lbu	a2, %lo(b8_ipredmode8x8)(a2)
	sb	a4, 3(a1)
	sb	a5, 2(a1)
	sb	a6, 1(a1)
	sb	a2, 0(a1)
	ld	a1, %lo(img)(a0)
	lw	a2, 148(a1)
	ld	a4, 104(a1)
	slli	a2, a2, 3
	add	a2, a4, a2
	ld	a2, 8(a2)
	lw	a1, 144(a1)
	add	a1, a2, a1
	lbu	a2, 5(a3)
	lbu	a4, 4(a3)
	lb	a5, 7(a3)
	lbu	a6, 6(a3)
	sb	a2, 1(a1)
	sb	a4, 0(a1)
	sb	a5, 3(a1)
	sb	a6, 2(a1)
	ld	a1, %lo(img)(a0)
	lw	a2, 148(a1)
	ld	a4, 104(a1)
	slli	a2, a2, 3
	add	a2, a4, a2
	ld	a2, 16(a2)
	lw	a1, 144(a1)
	add	a1, a2, a1
	lb	a2, 11(a3)
	lbu	a4, 10(a3)
	lbu	a5, 8(a3)
	lbu	a6, 9(a3)
	sb	a2, 3(a1)
	sb	a4, 2(a1)
	sb	a5, 0(a1)
	sb	a6, 1(a1)
	ld	a0, %lo(img)(a0)
	lw	a1, 148(a0)
	ld	a2, 104(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 24(a1)
	lw	a0, 144(a0)
	add	a0, a1, a0
	lbu	a1, 13(a3)
	lbu	a2, 12(a3)
	lb	a4, 15(a3)
	lbu	a3, 14(a3)
	sb	a1, 1(a0)
	sb	a2, 0(a0)
	sb	a4, 3(a0)
	sb	a3, 2(a0)
.LBB21_88:
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lui	a1, 22
	addiw	a3, a1, 84
	add	a3, a2, a3
	lw	a1, 24(a3)
	beqz	a1, .LBB21_91
# %bb.89:
	lw	a4, 416(s0)
	lui	a1, %hi(rdopt)
	ld	a5, %lo(rdopt)(a1)
	lw	a3, 0(a3)
	sw	a4, 1700(a5)
	sw	a3, 1696(a5)
	lw	a3, 344(s0)
	sw	a3, 1620(a5)
	lw	a3, 340(s0)
	sw	a3, 1616(a5)
	lw	a3, 336(s0)
	sw	a3, 1612(a5)
	lw	a3, 332(s0)
	sw	a3, 1608(a5)
	lw	a4, 148(a2)
	addi	a3, a4, -1
	slli	a4, a4, 3
.LBB21_90:                              # =>This Inner Loop Header: Depth=1
	ld	a5, %lo(rdopt)(a1)
	ld	a5, 1600(a5)
	add	a5, a5, a4
	ld	a5, 0(a5)
	lw	a2, 144(a2)
	add	a6, s6, a4
	ld	a6, 0(a6)
	add	a5, a5, a2
	add	a2, a6, a2
	lbu	a6, 2(a2)
	lb	a7, 3(a2)
	lbu	t0, 0(a2)
	lbu	a2, 1(a2)
	sb	a6, 2(a5)
	sb	a7, 3(a5)
	sb	t0, 0(a5)
	sb	a2, 1(a5)
	ld	a2, %lo(img)(a0)
	lw	a5, 148(a2)
	addiw	a5, a5, 3
	addi	a3, a3, 1
	addi	a4, a4, 8
	blt	a3, a5, .LBB21_90
.LBB21_91:
	addi	a0, s4, -1
	seqz	a1, a0
	mv	a0, s0
	lui	a2, 2
	addiw	a2, a2, -1840
	add	sp, sp, a2
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
	addi	sp, sp, 2032
	tail	SetMotionVectorsMB
.LBB21_92:
	li	a0, 0
	j	.LBB21_35
.Lfunc_end21:
	.size	set_stored_macroblock_parameters, .Lfunc_end21-set_stored_macroblock_parameters
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	update_offset_params            # -- Begin function update_offset_params
	.p2align	2
	.type	update_offset_params,@function
update_offset_params:                   # @update_offset_params
# %bb.0:
	li	a2, 0
	li	a3, 0
	lui	a4, %hi(OffsetBits)
	lw	a6, %lo(OffsetBits)(a4)
	li	a4, 1
	slli	a5, a4, 32
	addi	a5, a5, -8
	addi	a6, a6, -1
	sllw	a6, a4, a6
	lui	a7, %hi(img)
	lui	t0, %hi(input)
	ld	t0, %lo(input)(t0)
	ld	a7, %lo(img)(a7)
	lui	t1, 1
	addiw	t1, t1, 172
	add	t0, t0, t1
	lui	t1, %hi(bestIntraFAdjust4x4Cr+1024)
	addi	t1, t1, %lo(bestIntraFAdjust4x4Cr+1024)
	lui	t2, %hi(bestInterFAdjust4x4Cr+1024)
	addi	t2, t2, %lo(bestInterFAdjust4x4Cr+1024)
	lui	t3, %hi(bestIntraFAdjust4x4)
	addi	t3, t3, %lo(bestIntraFAdjust4x4)
	lui	t4, %hi(bestIntraFAdjust8x8)
	addi	t4, t4, %lo(bestIntraFAdjust8x8)
	addi	t5, a0, -9
	li	t6, 2
	lui	n1, %hi(OffsetList4x4)
	addi	n1, n1, %lo(OffsetList4x4)
	li	n2, 16
	li	n3, 13
	lui	n4, %hi(OffsetList8x8)
	addi	n4, n4, %lo(OffsetList8x8)
	lui	n5, %hi(bestInterFAdjust4x4)
	addi	n5, n5, %lo(bestInterFAdjust4x4)
	li	n6, 7
	lui	n7, %hi(bestInterFAdjust8x8)
	addi	n7, n7, %lo(bestInterFAdjust8x8)
	j	.LBB22_2
.LBB22_1:                               #   in Loop: Header=BB22_2 Depth=1
	addi	a3, a3, 1
	addi	t1, t1, 64
	addi	t3, t3, 64
	addi	t4, t4, 64
	addi	t2, t2, 64
	beq	a3, n2, .LBB22_103
.LBB22_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_70 Depth 2
                                        #     Child Loop BB22_34 Depth 2
                                        #     Child Loop BB22_95 Depth 2
                                        #     Child Loop BB22_22 Depth 2
                                        #     Child Loop BB22_84 Depth 2
                                        #     Child Loop BB22_59 Depth 2
                                        #     Child Loop BB22_8 Depth 2
                                        #     Child Loop BB22_48 Depth 2
	mv	n10, a2
	addi	a2, a2, 64
	slli	n8, a3, 2
	andi	n8, n8, 12
	bgeu	t5, t6, .LBB22_16
# %bb.3:                                #   in Loop: Header=BB22_2 Depth=1
	lw	n10, 24(a7)
	lw	n9, 0(t0)
	beq	n10, t6, .LBB22_45
# %bb.4:                                #   in Loop: Header=BB22_2 Depth=1
	bne	n10, a4, .LBB22_56
# %bb.5:                                # %.preheader13
                                        #   in Loop: Header=BB22_2 Depth=1
	li	n10, 0
	li	n11, 0
	mv	n12, t3
	mv	n13, t1
	j	.LBB22_8
.LBB22_6:                               #   in Loop: Header=BB22_8 Depth=2
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n15, n15, n16
	sh	n15, 256(n14)
.LBB22_7:                               #   in Loop: Header=BB22_8 Depth=2
	addi	n11, n11, 1
	addi	n13, n13, 4
	addi	n12, n12, 4
	addi	n10, n10, 1
	beq	n11, n2, .LBB22_1
.LBB22_8:                               #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	n14, n10, 3
	or	n14, n14, n8
	lh	n15, 0(n12)
	slli	n14, n14, 1
	add	n14, n1, n14
	lh	n16, 192(n14)
	add	n15, n16, n15
	slli	n15, n15, 48
	srai	n15, n15, 48
	mv	n16, a6
	blt	a6, n15, .LBB22_10
# %bb.9:                                #   in Loop: Header=BB22_8 Depth=2
	mv	n16, n15
.LBB22_10:                              #   in Loop: Header=BB22_8 Depth=2
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n15, n15, n16
	or	n16, n11, a3
	and	n16, n16, a5
	sh	n15, 192(n14)
	bnez	n16, .LBB22_7
# %bb.11:                               #   in Loop: Header=BB22_8 Depth=2
	beqz	n9, .LBB22_7
# %bb.12:                               #   in Loop: Header=BB22_8 Depth=2
	lh	n15, -1024(n13)
	lh	n16, 224(n14)
	add	n15, n16, n15
	slli	n15, n15, 48
	srai	n15, n15, 48
	mv	n16, a6
	blt	a6, n15, .LBB22_14
# %bb.13:                               #   in Loop: Header=BB22_8 Depth=2
	mv	n16, n15
.LBB22_14:                              #   in Loop: Header=BB22_8 Depth=2
	lh	n17, 0(n13)
	lh	n18, 256(n14)
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n16, n15, n16
	add	n17, n18, n17
	slli	n17, n17, 48
	srai	n15, n17, 48
	sh	n16, 224(n14)
	mv	n16, a6
	blt	a6, n15, .LBB22_6
# %bb.15:                               #   in Loop: Header=BB22_8 Depth=2
	mv	n16, n15
	j	.LBB22_6
.LBB22_16:                              #   in Loop: Header=BB22_2 Depth=1
	slli	n9, a3, 61
	srli	n9, n9, 58
	bne	a0, n3, .LBB22_30
# %bb.17:                               #   in Loop: Header=BB22_2 Depth=1
	lw	n11, 24(a7)
	lw	n10, 0(t0)
	beq	n11, t6, .LBB22_81
# %bb.18:                               #   in Loop: Header=BB22_2 Depth=1
	bne	n11, a4, .LBB22_92
# %bb.19:                               # %.preheader7
                                        #   in Loop: Header=BB22_2 Depth=1
	li	n11, 0
	li	n12, 0
	mv	n13, t4
	mv	n14, t1
	j	.LBB22_22
.LBB22_20:                              #   in Loop: Header=BB22_22 Depth=2
	slti	n16, n16, 0
	addi	n16, n16, -1
	and	n16, n16, n17
	sh	n16, 256(n15)
.LBB22_21:                              #   in Loop: Header=BB22_22 Depth=2
	addi	n12, n12, 1
	addi	n14, n14, 4
	addi	n13, n13, 4
	addi	n11, n11, 1
	beq	n12, n2, .LBB22_1
.LBB22_22:                              #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	n15, n11, 7
	or	n15, n15, n9
	lh	n16, 0(n13)
	slli	n15, n15, 1
	add	n15, n4, n15
	lh	n17, 256(n15)
	add	n16, n17, n16
	slli	n16, n16, 48
	srai	n16, n16, 48
	mv	n17, a6
	blt	a6, n16, .LBB22_24
# %bb.23:                               #   in Loop: Header=BB22_22 Depth=2
	mv	n17, n16
.LBB22_24:                              #   in Loop: Header=BB22_22 Depth=2
	slti	n16, n16, 0
	addi	n16, n16, -1
	and	n16, n16, n17
	or	n17, n12, a3
	and	n17, n17, a5
	sh	n16, 256(n15)
	bnez	n17, .LBB22_21
# %bb.25:                               #   in Loop: Header=BB22_22 Depth=2
	beqz	n10, .LBB22_21
# %bb.26:                               #   in Loop: Header=BB22_22 Depth=2
	andi	n15, n11, 3
	or	n15, n15, n8
	lh	n16, -1024(n14)
	slli	n15, n15, 1
	add	n15, n1, n15
	lh	n17, 224(n15)
	add	n16, n17, n16
	slli	n16, n16, 48
	srai	n16, n16, 48
	mv	n17, a6
	blt	a6, n16, .LBB22_28
# %bb.27:                               #   in Loop: Header=BB22_22 Depth=2
	mv	n17, n16
.LBB22_28:                              #   in Loop: Header=BB22_22 Depth=2
	lh	n18, 0(n14)
	lh	n19, 256(n15)
	slti	n16, n16, 0
	addi	n16, n16, -1
	and	n17, n16, n17
	add	n18, n19, n18
	slli	n18, n18, 48
	srai	n16, n18, 48
	sh	n17, 224(n15)
	mv	n17, a6
	blt	a6, n16, .LBB22_20
# %bb.29:                               #   in Loop: Header=BB22_22 Depth=2
	mv	n17, n16
	j	.LBB22_20
.LBB22_30:                              #   in Loop: Header=BB22_2 Depth=1
	lw	n12, 24(a7)
	lw	n11, 0(t0)
	bne	n12, a4, .LBB22_67
# %bb.31:                               # %.preheader
                                        #   in Loop: Header=BB22_2 Depth=1
	li	n12, 0
	mv	n13, t2
	j	.LBB22_34
.LBB22_32:                              #   in Loop: Header=BB22_34 Depth=2
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n15, n15, n16
	sh	n15, 448(n14)
.LBB22_33:                              #   in Loop: Header=BB22_34 Depth=2
	addi	n13, n13, 4
	addi	n10, n10, 4
	addi	n12, n12, 1
	beq	n10, a2, .LBB22_1
.LBB22_34:                              #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	a1, .LBB22_36
# %bb.35:                               #   in Loop: Header=BB22_34 Depth=2
	andi	n14, n12, 7
	or	n14, n14, n9
	slli	n14, n14, 1
	add	n14, n4, n14
	addi	n14, n14, 512
	mv	n15, n7
	j	.LBB22_37
.LBB22_36:                              #   in Loop: Header=BB22_34 Depth=2
	andi	n14, n12, 3
	or	n14, n14, n8
	slli	n14, n14, 1
	add	n14, n1, n14
	addi	n14, n14, 384
	mv	n15, n5
.LBB22_37:                              #   in Loop: Header=BB22_34 Depth=2
	add	n15, n15, n10
	lh	n15, 0(n15)
	lh	n16, 0(n14)
	add	n15, n16, n15
	slli	n15, n15, 48
	srai	n15, n15, 48
	mv	n16, a6
	blt	a6, n15, .LBB22_39
# %bb.38:                               #   in Loop: Header=BB22_34 Depth=2
	mv	n16, n15
.LBB22_39:                              #   in Loop: Header=BB22_34 Depth=2
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n15, n15, n16
	or	n16, n12, a3
	sext.w	n16, n16
	sh	n15, 0(n14)
	bltu	n6, n16, .LBB22_33
# %bb.40:                               #   in Loop: Header=BB22_34 Depth=2
	beqz	n11, .LBB22_33
# %bb.41:                               #   in Loop: Header=BB22_34 Depth=2
	andi	n14, n12, 3
	or	n14, n14, n8
	lh	n15, -1024(n13)
	slli	n14, n14, 1
	add	n14, n1, n14
	lh	n16, 416(n14)
	add	n15, n16, n15
	slli	n15, n15, 48
	srai	n15, n15, 48
	mv	n16, a6
	blt	a6, n15, .LBB22_43
# %bb.42:                               #   in Loop: Header=BB22_34 Depth=2
	mv	n16, n15
.LBB22_43:                              #   in Loop: Header=BB22_34 Depth=2
	lh	n17, 0(n13)
	lh	n18, 448(n14)
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n16, n15, n16
	add	n17, n18, n17
	slli	n17, n17, 48
	srai	n15, n17, 48
	sh	n16, 416(n14)
	mv	n16, a6
	blt	a6, n15, .LBB22_32
# %bb.44:                               #   in Loop: Header=BB22_34 Depth=2
	mv	n16, n15
	j	.LBB22_32
.LBB22_45:                              # %.preheader11
                                        #   in Loop: Header=BB22_2 Depth=1
	li	n10, 0
	li	n11, 0
	mv	n12, t3
	mv	n13, t1
	j	.LBB22_48
.LBB22_46:                              #   in Loop: Header=BB22_48 Depth=2
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n15, n15, n16
	sh	n15, 64(n14)
.LBB22_47:                              #   in Loop: Header=BB22_48 Depth=2
	addi	n11, n11, 1
	addi	n13, n13, 4
	addi	n12, n12, 4
	addi	n10, n10, 1
	beq	n11, n2, .LBB22_1
.LBB22_48:                              #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	n14, n10, 3
	or	n14, n14, n8
	lh	n15, 0(n12)
	slli	n14, n14, 1
	add	n14, n1, n14
	lh	n16, 0(n14)
	add	n15, n16, n15
	slli	n15, n15, 48
	srai	n15, n15, 48
	mv	n16, a6
	blt	a6, n15, .LBB22_50
# %bb.49:                               #   in Loop: Header=BB22_48 Depth=2
	mv	n16, n15
.LBB22_50:                              #   in Loop: Header=BB22_48 Depth=2
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n15, n15, n16
	or	n16, n11, a3
	and	n16, n16, a5
	sh	n15, 0(n14)
	bnez	n16, .LBB22_47
# %bb.51:                               #   in Loop: Header=BB22_48 Depth=2
	beqz	n9, .LBB22_47
# %bb.52:                               #   in Loop: Header=BB22_48 Depth=2
	lh	n15, -1024(n13)
	lh	n16, 32(n14)
	add	n15, n16, n15
	slli	n15, n15, 48
	srai	n15, n15, 48
	mv	n16, a6
	blt	a6, n15, .LBB22_54
# %bb.53:                               #   in Loop: Header=BB22_48 Depth=2
	mv	n16, n15
.LBB22_54:                              #   in Loop: Header=BB22_48 Depth=2
	lh	n17, 0(n13)
	lh	n18, 64(n14)
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n16, n15, n16
	add	n17, n18, n17
	slli	n17, n17, 48
	srai	n15, n17, 48
	sh	n16, 32(n14)
	mv	n16, a6
	blt	a6, n15, .LBB22_46
# %bb.55:                               #   in Loop: Header=BB22_48 Depth=2
	mv	n16, n15
	j	.LBB22_46
.LBB22_56:                              # %.preheader9
                                        #   in Loop: Header=BB22_2 Depth=1
	li	n10, 0
	li	n11, 0
	mv	n12, t3
	mv	n13, t1
	j	.LBB22_59
.LBB22_57:                              #   in Loop: Header=BB22_59 Depth=2
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n15, n15, n16
	sh	n15, 160(n14)
.LBB22_58:                              #   in Loop: Header=BB22_59 Depth=2
	addi	n11, n11, 1
	addi	n13, n13, 4
	addi	n12, n12, 4
	addi	n10, n10, 1
	beq	n11, n2, .LBB22_1
.LBB22_59:                              #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	n14, n10, 3
	or	n14, n14, n8
	lh	n15, 0(n12)
	slli	n14, n14, 1
	add	n14, n1, n14
	lh	n16, 96(n14)
	add	n15, n16, n15
	slli	n15, n15, 48
	srai	n15, n15, 48
	mv	n16, a6
	blt	a6, n15, .LBB22_61
# %bb.60:                               #   in Loop: Header=BB22_59 Depth=2
	mv	n16, n15
.LBB22_61:                              #   in Loop: Header=BB22_59 Depth=2
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n15, n15, n16
	or	n16, n11, a3
	and	n16, n16, a5
	sh	n15, 96(n14)
	bnez	n16, .LBB22_58
# %bb.62:                               #   in Loop: Header=BB22_59 Depth=2
	beqz	n9, .LBB22_58
# %bb.63:                               #   in Loop: Header=BB22_59 Depth=2
	lh	n15, -1024(n13)
	lh	n16, 128(n14)
	add	n15, n16, n15
	slli	n15, n15, 48
	srai	n15, n15, 48
	mv	n16, a6
	blt	a6, n15, .LBB22_65
# %bb.64:                               #   in Loop: Header=BB22_59 Depth=2
	mv	n16, n15
.LBB22_65:                              #   in Loop: Header=BB22_59 Depth=2
	lh	n17, 0(n13)
	lh	n18, 160(n14)
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n16, n15, n16
	add	n17, n18, n17
	slli	n17, n17, 48
	srai	n15, n17, 48
	sh	n16, 128(n14)
	mv	n16, a6
	blt	a6, n15, .LBB22_57
# %bb.66:                               #   in Loop: Header=BB22_59 Depth=2
	mv	n16, n15
	j	.LBB22_57
.LBB22_67:                              # %.preheader1
                                        #   in Loop: Header=BB22_2 Depth=1
	li	n12, 0
	mv	n13, t2
	j	.LBB22_70
.LBB22_68:                              #   in Loop: Header=BB22_70 Depth=2
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n15, n15, n16
	sh	n15, 352(n14)
.LBB22_69:                              #   in Loop: Header=BB22_70 Depth=2
	addi	n13, n13, 4
	addi	n10, n10, 4
	addi	n12, n12, 1
	beq	n10, a2, .LBB22_1
.LBB22_70:                              #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	a1, .LBB22_72
# %bb.71:                               #   in Loop: Header=BB22_70 Depth=2
	andi	n14, n12, 7
	or	n14, n14, n9
	slli	n14, n14, 1
	add	n14, n4, n14
	addi	n14, n14, 384
	mv	n15, n7
	j	.LBB22_73
.LBB22_72:                              #   in Loop: Header=BB22_70 Depth=2
	andi	n14, n12, 3
	or	n14, n14, n8
	slli	n14, n14, 1
	add	n14, n1, n14
	addi	n14, n14, 288
	mv	n15, n5
.LBB22_73:                              #   in Loop: Header=BB22_70 Depth=2
	add	n15, n15, n10
	lh	n15, 0(n15)
	lh	n16, 0(n14)
	add	n15, n16, n15
	slli	n15, n15, 48
	srai	n15, n15, 48
	mv	n16, a6
	blt	a6, n15, .LBB22_75
# %bb.74:                               #   in Loop: Header=BB22_70 Depth=2
	mv	n16, n15
.LBB22_75:                              #   in Loop: Header=BB22_70 Depth=2
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n15, n15, n16
	or	n16, n12, a3
	sext.w	n16, n16
	sh	n15, 0(n14)
	bltu	n6, n16, .LBB22_69
# %bb.76:                               #   in Loop: Header=BB22_70 Depth=2
	beqz	n11, .LBB22_69
# %bb.77:                               #   in Loop: Header=BB22_70 Depth=2
	andi	n14, n12, 3
	or	n14, n14, n8
	lh	n15, -1024(n13)
	slli	n14, n14, 1
	add	n14, n1, n14
	lh	n16, 320(n14)
	add	n15, n16, n15
	slli	n15, n15, 48
	srai	n15, n15, 48
	mv	n16, a6
	blt	a6, n15, .LBB22_79
# %bb.78:                               #   in Loop: Header=BB22_70 Depth=2
	mv	n16, n15
.LBB22_79:                              #   in Loop: Header=BB22_70 Depth=2
	lh	n17, 0(n13)
	lh	n18, 352(n14)
	slti	n15, n15, 0
	addi	n15, n15, -1
	and	n16, n15, n16
	add	n17, n18, n17
	slli	n17, n17, 48
	srai	n15, n17, 48
	sh	n16, 320(n14)
	mv	n16, a6
	blt	a6, n15, .LBB22_68
# %bb.80:                               #   in Loop: Header=BB22_70 Depth=2
	mv	n16, n15
	j	.LBB22_68
.LBB22_81:                              # %.preheader5
                                        #   in Loop: Header=BB22_2 Depth=1
	li	n11, 0
	li	n12, 0
	mv	n13, t4
	mv	n14, t1
	j	.LBB22_84
.LBB22_82:                              #   in Loop: Header=BB22_84 Depth=2
	slti	n16, n16, 0
	addi	n16, n16, -1
	and	n16, n16, n17
	sh	n16, 64(n15)
.LBB22_83:                              #   in Loop: Header=BB22_84 Depth=2
	addi	n12, n12, 1
	addi	n14, n14, 4
	addi	n13, n13, 4
	addi	n11, n11, 1
	beq	n12, n2, .LBB22_1
.LBB22_84:                              #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	n15, n11, 7
	or	n15, n15, n9
	lh	n16, 0(n13)
	slli	n15, n15, 1
	add	n15, n4, n15
	lh	n17, 0(n15)
	add	n16, n17, n16
	slli	n16, n16, 48
	srai	n16, n16, 48
	mv	n17, a6
	blt	a6, n16, .LBB22_86
# %bb.85:                               #   in Loop: Header=BB22_84 Depth=2
	mv	n17, n16
.LBB22_86:                              #   in Loop: Header=BB22_84 Depth=2
	slti	n16, n16, 0
	addi	n16, n16, -1
	and	n16, n16, n17
	or	n17, n12, a3
	and	n17, n17, a5
	sh	n16, 0(n15)
	bnez	n17, .LBB22_83
# %bb.87:                               #   in Loop: Header=BB22_84 Depth=2
	beqz	n10, .LBB22_83
# %bb.88:                               #   in Loop: Header=BB22_84 Depth=2
	andi	n15, n11, 3
	or	n15, n15, n8
	lh	n16, -1024(n14)
	slli	n15, n15, 1
	add	n15, n1, n15
	lh	n17, 32(n15)
	add	n16, n17, n16
	slli	n16, n16, 48
	srai	n16, n16, 48
	mv	n17, a6
	blt	a6, n16, .LBB22_90
# %bb.89:                               #   in Loop: Header=BB22_84 Depth=2
	mv	n17, n16
.LBB22_90:                              #   in Loop: Header=BB22_84 Depth=2
	lh	n18, 0(n14)
	lh	n19, 64(n15)
	slti	n16, n16, 0
	addi	n16, n16, -1
	and	n17, n16, n17
	add	n18, n19, n18
	slli	n18, n18, 48
	srai	n16, n18, 48
	sh	n17, 32(n15)
	mv	n17, a6
	blt	a6, n16, .LBB22_82
# %bb.91:                               #   in Loop: Header=BB22_84 Depth=2
	mv	n17, n16
	j	.LBB22_82
.LBB22_92:                              # %.preheader3
                                        #   in Loop: Header=BB22_2 Depth=1
	li	n11, 0
	li	n12, 0
	mv	n13, t4
	mv	n14, t1
	j	.LBB22_95
.LBB22_93:                              #   in Loop: Header=BB22_95 Depth=2
	slti	n16, n16, 0
	addi	n16, n16, -1
	and	n16, n16, n17
	sh	n16, 160(n15)
.LBB22_94:                              #   in Loop: Header=BB22_95 Depth=2
	addi	n12, n12, 1
	addi	n14, n14, 4
	addi	n13, n13, 4
	addi	n11, n11, 1
	beq	n12, n2, .LBB22_1
.LBB22_95:                              #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	n15, n11, 7
	or	n15, n15, n9
	lh	n16, 0(n13)
	slli	n15, n15, 1
	add	n15, n4, n15
	lh	n17, 128(n15)
	add	n16, n17, n16
	slli	n16, n16, 48
	srai	n16, n16, 48
	mv	n17, a6
	blt	a6, n16, .LBB22_97
# %bb.96:                               #   in Loop: Header=BB22_95 Depth=2
	mv	n17, n16
.LBB22_97:                              #   in Loop: Header=BB22_95 Depth=2
	slti	n16, n16, 0
	addi	n16, n16, -1
	and	n16, n16, n17
	or	n17, n12, a3
	and	n17, n17, a5
	sh	n16, 128(n15)
	bnez	n17, .LBB22_94
# %bb.98:                               #   in Loop: Header=BB22_95 Depth=2
	beqz	n10, .LBB22_94
# %bb.99:                               #   in Loop: Header=BB22_95 Depth=2
	andi	n15, n11, 3
	or	n15, n15, n8
	lh	n16, -1024(n14)
	slli	n15, n15, 1
	add	n15, n1, n15
	lh	n17, 128(n15)
	add	n16, n17, n16
	slli	n16, n16, 48
	srai	n16, n16, 48
	mv	n17, a6
	blt	a6, n16, .LBB22_101
# %bb.100:                              #   in Loop: Header=BB22_95 Depth=2
	mv	n17, n16
.LBB22_101:                             #   in Loop: Header=BB22_95 Depth=2
	lh	n18, 0(n14)
	lh	n19, 160(n15)
	slti	n16, n16, 0
	addi	n16, n16, -1
	and	n17, n16, n17
	add	n18, n19, n18
	slli	n18, n18, 48
	srai	n16, n18, 48
	sh	n17, 128(n15)
	mv	n17, a6
	blt	a6, n16, .LBB22_93
# %bb.102:                              #   in Loop: Header=BB22_95 Depth=2
	mv	n17, n16
	j	.LBB22_93
.LBB22_103:
	ret
.Lfunc_end22:
	.size	update_offset_params, .Lfunc_end22-update_offset_params
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SetRefAndMotionVectors          # -- Begin function SetRefAndMotionVectors
	.p2align	2
	.type	SetRefAndMotionVectors,@function
SetRefAndMotionVectors:                 # @SetRefAndMotionVectors
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
	mv	s10, a3
	addiw	a5, a1, -1
	li	a6, 3
	lui	a3, %hi(img)
	mv	s6, a1
	bltu	a5, a6, .LBB23_2
# %bb.1:
	li	s6, 4
.LBB23_2:
	lui	a5, %hi(input)
	ld	a5, %lo(input)(a5)
	ld	a3, %lo(img)(a3)
	andi	s3, a0, -2
	slli	s6, s6, 3
	add	a5, a5, s6
	lw	a6, 152(a5)
	lw	s7, 148(a5)
	slli	a5, a0, 1
	andi	s1, a5, 2
	addw	a7, a6, s3
	sd	a7, 0(sp)                       # 8-byte Folded Spill
	addw	s4, s7, s1
	bltz	a2, .LBB23_31
# %bb.3:
	lui	a7, 8
	add	a7, a3, a7
	lw	t0, 12(a3)
	ld	s5, -1192(a7)
	lw	a7, 24(a3)
	li	t1, 528
	mul	t0, t0, t1
	li	t1, 1
	add	s5, s5, t0
	bne	a7, t1, .LBB23_39
# %bb.4:
	blez	a6, .LBB23_49
# %bb.5:
	blez	s7, .LBB23_49
# %bb.6:
	andi	a3, a5, 2
	andi	a0, a0, 1
	slli	a0, a0, 4
	lui	a5, %hi(img)
	lui	a6, %hi(direct_pdir)
	lui	a7, %hi(direct_ref_idx)
	li	t0, 2
	lui	t1, %hi(enc_picture)
	lui	t2, 2
	addiw	t3, t2, -1712
	li	t4, 1
	lui	t5, 22
	addiw	t6, t5, -760
	addiw	n1, t5, -768
	li	n2, 264
	slli	n3, a1, 3
	j	.LBB23_8
.LBB23_7:                               #   in Loop: Header=BB23_8 Depth=1
	addi	s3, s3, 1
	ld	n4, 0(sp)                       # 8-byte Folded Reload
	bge	s3, n4, .LBB23_49
.LBB23_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_11 Depth 2
	ld	n4, %lo(img)(a5)
	lw	n4, 148(n4)
	add	n4, s3, n4
	slli	n4, n4, 3
	slli	n5, s3, 3
	mv	n6, s1
	mv	n7, a0
	mv	n8, a3
	j	.LBB23_11
.LBB23_9:                               #   in Loop: Header=BB23_11 Depth=2
	ld	n11, 24(n12)
	ld	n11, 8(n11)
	ld	n12, 0(n12)
	add	n11, n11, n4
	ld	n11, 0(n11)
	ld	n12, 8(n12)
	add	n11, n11, n10
	ld	n11, 0(n11)
	add	n12, n12, n4
	ld	n12, 0(n12)
	sh	zero, 0(n11)
	sh	zero, 2(n11)
	add	n12, n12, n9
	li	n9, -1
	sb	n9, 0(n12)
	ld	n11, %lo(enc_picture)(t1)
.LBB23_10:                              #   in Loop: Header=BB23_11 Depth=2
	add	n11, n11, t2
	ld	n11, -1704(n11)
	ld	n11, 8(n11)
	add	n11, n11, n4
	ld	n11, 0(n11)
	add	n10, n11, n10
	sd	n9, 0(n10)
	addi	n8, n8, 1
	addi	n7, n7, 8
	addi	n6, n6, 1
	bgeu	n8, s4, .LBB23_7
.LBB23_11:                              #   Parent Loop BB23_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n11, %lo(img)(a5)
	lw	n9, 144(n11)
	addw	n9, n6, n9
	beqz	a1, .LBB23_19
# %bb.12:                               #   in Loop: Header=BB23_11 Depth=2
	ori	n12, a2, 2
	slli	n10, n9, 3
	bne	n12, t0, .LBB23_20
.LBB23_13:                              #   in Loop: Header=BB23_11 Depth=2
	ld	n13, %lo(enc_picture)(t1)
	add	n13, n13, t3
	ld	n12, 24(n13)
	ld	n12, 0(n12)
	add	n12, n12, n4
	ld	n12, 0(n12)
	add	n12, n12, n10
	ld	n12, 0(n12)
	bne	a1, t4, .LBB23_21
# %bb.14:                               #   in Loop: Header=BB23_11 Depth=2
	bne	a2, t0, .LBB23_21
# %bb.15:                               #   in Loop: Header=BB23_11 Depth=2
	lhu	n14, 476(s5)
	beqz	n14, .LBB23_21
# %bb.16:                               #   in Loop: Header=BB23_11 Depth=2
	mv	n15, n1
	beq	n14, t4, .LBB23_18
# %bb.17:                               #   in Loop: Header=BB23_11 Depth=2
	mv	n15, t6
.LBB23_18:                              #   in Loop: Header=BB23_11 Depth=2
	add	n11, n11, n15
	ld	n11, 0(n11)
	add	n11, n11, n5
	ld	n11, 0(n11)
	add	n11, n11, n7
	ld	n11, 0(n11)
	ld	n11, 0(n11)
	ld	n11, 0(n11)
	ld	n11, 8(n11)
	ld	n13, 0(n13)
	lh	n14, 0(n11)
	ld	n13, 0(n13)
	sh	n14, 0(n12)
	lh	n11, 2(n11)
	add	n13, n13, n4
	ld	n13, 0(n13)
	sh	n11, 2(n12)
	add	n13, n13, n9
	sb	zero, 0(n13)
	ld	n11, %lo(enc_picture)(t1)
	add	n12, n11, t2
	ld	n12, -1704(n12)
	lw	n13, 428(s5)
	ld	n12, 0(n12)
	mul	n13, n13, n2
	add	n13, n11, n13
	add	n12, n12, n4
	ld	n12, 0(n12)
	ld	n13, 24(n13)
	add	n12, n12, n10
	sd	n13, 0(n12)
	j	.LBB23_23
.LBB23_19:                              #   in Loop: Header=BB23_11 Depth=2
	ld	a2, %lo(direct_pdir)(a6)
	ld	a4, %lo(direct_ref_idx)(a7)
	add	a2, a2, n4
	ld	a2, 0(a2)
	ld	n10, 0(a4)
	slli	n12, n9, 1
	ld	a4, 8(a4)
	add	a2, a2, n12
	add	n10, n10, n4
	ld	n10, 0(n10)
	add	a4, a4, n4
	ld	a4, 0(a4)
	lh	a2, 0(a2)
	add	n10, n10, n9
	lbu	s10, 0(n10)
	add	a4, a4, n9
	lbu	a4, 0(a4)
	ori	n12, a2, 2
	slli	n10, n9, 3
	beq	n12, t0, .LBB23_13
.LBB23_20:                              #   in Loop: Header=BB23_11 Depth=2
	ld	n11, %lo(enc_picture)(t1)
	add	n11, n11, t3
	ld	n12, 24(n11)
	ld	n12, 0(n12)
	ld	n11, 0(n11)
	add	n12, n12, n4
	ld	n12, 0(n12)
	ld	n11, 0(n11)
	add	n12, n12, n10
	ld	n12, 0(n12)
	add	n11, n11, n4
	ld	n11, 0(n11)
	sh	zero, 0(n12)
	sh	zero, 2(n12)
	add	n11, n11, n9
	li	n13, -1
	sb	n13, 0(n11)
	ld	n11, %lo(enc_picture)(t1)
	j	.LBB23_22
.LBB23_21:                              #   in Loop: Header=BB23_11 Depth=2
	add	n11, n11, t5
	ld	n11, -776(n11)
	add	n11, n11, n5
	ld	n11, 0(n11)
	add	n11, n11, n7
	ld	n11, 0(n11)
	ld	n11, 0(n11)
	slli	n14, s10, 3
	add	n11, n11, n14
	ld	n11, 0(n11)
	add	n11, n11, n3
	ld	n11, 0(n11)
	ld	n13, 0(n13)
	lh	n14, 0(n11)
	ld	n13, 0(n13)
	sh	n14, 0(n12)
	lh	n11, 2(n11)
	add	n13, n13, n4
	ld	n13, 0(n13)
	sh	n11, 2(n12)
	add	n13, n13, n9
	sb	s10, 0(n13)
	ld	n11, %lo(enc_picture)(t1)
	add	n12, n11, t2
	ld	n12, -1712(n12)
	ld	n12, 0(n12)
	add	n12, n12, n4
	ld	n12, 0(n12)
	lw	n13, 428(s5)
	add	n12, n12, n9
	lbu	n12, 0(n12)
	mul	n13, n13, n2
	add	n13, n11, n13
	slli	n12, n12, 3
	add	n12, n13, n12
	ld	n13, 24(n12)
.LBB23_22:                              #   in Loop: Header=BB23_11 Depth=2
	add	n12, n11, t3
	ld	n14, 8(n12)
	ld	n14, 0(n14)
	add	n14, n14, n4
	ld	n14, 0(n14)
	add	n14, n14, n10
	addiw	n15, a2, -1
	sd	n13, 0(n14)
	bgeu	n15, t0, .LBB23_9
.LBB23_23:                              #   in Loop: Header=BB23_11 Depth=2
	add	n12, n11, t3
	ld	n11, 24(n12)
	ld	n11, 8(n11)
	add	n11, n11, n4
	ld	n11, 0(n11)
	add	n11, n11, n10
	ld	n11, 0(n11)
	bne	a1, t4, .LBB23_29
# %bb.24:                               #   in Loop: Header=BB23_11 Depth=2
	bne	a2, t0, .LBB23_29
# %bb.25:                               #   in Loop: Header=BB23_11 Depth=2
	lhu	n14, 476(s5)
	beqz	n14, .LBB23_29
# %bb.26:                               #   in Loop: Header=BB23_11 Depth=2
	mv	n13, n1
	beq	n14, t4, .LBB23_28
# %bb.27:                               #   in Loop: Header=BB23_11 Depth=2
	mv	n13, t6
.LBB23_28:                              #   in Loop: Header=BB23_11 Depth=2
	ld	n14, %lo(img)(a5)
	add	n13, n14, n13
	ld	n13, 0(n13)
	add	n13, n13, n5
	ld	n13, 0(n13)
	add	n13, n13, n7
	ld	n13, 0(n13)
	ld	n13, 8(n13)
	ld	n13, 0(n13)
	ld	n13, 8(n13)
	ld	n12, 0(n12)
	lh	n14, 0(n13)
	ld	n12, 8(n12)
	sh	n14, 0(n11)
	lh	n13, 2(n13)
	add	n12, n12, n4
	ld	n12, 0(n12)
	sh	n13, 2(n11)
	add	n9, n12, n9
	sb	zero, 0(n9)
	lw	n9, 428(s5)
	ld	n11, %lo(enc_picture)(t1)
	addiw	n9, n9, 1
	mul	n9, n9, n2
	add	n9, n11, n9
	j	.LBB23_30
.LBB23_29:                              #   in Loop: Header=BB23_11 Depth=2
	ld	n13, %lo(img)(a5)
	add	n13, n13, t5
	ld	n13, -776(n13)
	add	n13, n13, n5
	ld	n13, 0(n13)
	add	n13, n13, n7
	ld	n13, 0(n13)
	ld	n13, 8(n13)
	slli	n14, a4, 3
	add	n13, n13, n14
	ld	n13, 0(n13)
	add	n13, n13, n3
	ld	n13, 0(n13)
	ld	n12, 0(n12)
	lh	n14, 0(n13)
	ld	n12, 8(n12)
	sh	n14, 0(n11)
	lh	n13, 2(n13)
	add	n12, n12, n4
	ld	n12, 0(n12)
	sh	n13, 2(n11)
	add	n12, n12, n9
	sb	a4, 0(n12)
	ld	n11, %lo(enc_picture)(t1)
	add	n12, n11, t2
	ld	n12, -1712(n12)
	ld	n12, 8(n12)
	add	n12, n12, n4
	ld	n12, 0(n12)
	lw	n13, 428(s5)
	add	n9, n12, n9
	lbu	n9, 0(n9)
	addiw	n13, n13, 1
	mul	n12, n13, n2
	add	n12, n11, n12
	slli	n9, n9, 3
	add	n9, n12, n9
.LBB23_30:                              #   in Loop: Header=BB23_11 Depth=2
	ld	n9, 24(n9)
	j	.LBB23_10
.LBB23_31:
	blez	a6, .LBB23_49
# %bb.32:
	lw	s2, 148(a3)
	add	s2, s2, s3
	lui	s0, %hi(enc_picture)
	lui	s5, 2
	addiw	s8, s5, -1712
	li	s9, -1
	lui	s10, %hi(input)
	lui	s11, %hi(img)
	j	.LBB23_34
.LBB23_33:                              #   in Loop: Header=BB23_34 Depth=1
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a2, %lo(input)(s10)
	add	a1, a1, s3
	ld	a1, 0(a1)
	add	a2, a2, s6
	lw	a2, 148(a2)
	add	a0, a1, a0
	li	a1, 255
	call	memset
	ld	a0, %lo(enc_picture)(s0)
	add	a0, a0, s5
	ld	a0, -1712(a0)
	ld	a0, 8(a0)
	ld	a1, %lo(img)(s11)
	ld	a2, %lo(input)(s10)
	add	a0, a0, s3
	ld	a0, 0(a0)
	lw	a1, 144(a1)
	add	a2, a2, s6
	lw	a2, 148(a2)
	addw	a1, a1, s1
	add	a0, a0, a1
	li	a1, 255
	call	memset
	ld	a0, %lo(enc_picture)(s0)
	add	a0, a0, s5
	ld	a0, -1688(a0)
	ld	a1, %lo(img)(s11)
	ld	a0, 0(a0)
	lw	a1, 144(a1)
	add	a0, a0, s3
	ld	a2, %lo(input)(s10)
	ld	a0, 0(a0)
	addw	a1, a1, s1
	slli	a1, a1, 3
	add	a2, a2, s6
	lw	a2, 148(a2)
	add	a0, a0, a1
	ld	a0, 0(a0)
	slliw	a2, a2, 1
	slli	a2, a2, 1
	li	a1, 0
	call	memset
	ld	a0, %lo(enc_picture)(s0)
	add	a0, a0, s5
	ld	a0, -1688(a0)
	ld	a1, %lo(img)(s11)
	ld	a0, 8(a0)
	lw	a1, 144(a1)
	add	a0, a0, s3
	ld	a2, %lo(input)(s10)
	ld	a0, 0(a0)
	addw	a1, a1, s1
	slli	a1, a1, 3
	add	a2, a2, s6
	lw	a2, 148(a2)
	add	a0, a0, a1
	ld	a0, 0(a0)
	slliw	a2, a2, 1
	slli	a2, a2, 1
	li	a1, 0
	call	memset
	ld	a3, %lo(img)(s11)
	lw	a0, 148(a3)
	addi	s2, s2, 1
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	addw	a0, a0, a1
	bge	s2, a0, .LBB23_49
.LBB23_34:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_38 Depth 2
	lw	a2, 144(a3)
	ld	a1, %lo(enc_picture)(s0)
	addw	a0, a2, s1
	add	a1, a1, s8
	slli	s3, s2, 3
	blez	s7, .LBB23_33
# %bb.35:                               #   in Loop: Header=BB23_34 Depth=1
	addw	a3, a2, s4
	addi	a2, a0, 1
	blt	a3, a2, .LBB23_37
# %bb.36:                               #   in Loop: Header=BB23_34 Depth=1
	mv	a2, a3
.LBB23_37:                              #   in Loop: Header=BB23_34 Depth=1
	ld	a3, 8(a1)
	ld	a4, 0(a3)
	ld	a3, 8(a3)
	add	a4, a4, s3
	add	a3, a3, s3
	ld	a5, 0(a3)
	ld	a4, 0(a4)
	slli	a6, a0, 3
	add	a3, a5, a6
	add	a4, a4, a6
	slli	a2, a2, 3
	add	a2, a5, a2
.LBB23_38:                              #   Parent Loop BB23_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	s9, 0(a4)
	sd	s9, 0(a3)
	addi	a3, a3, 8
	addi	a4, a4, 8
	bne	a3, a2, .LBB23_38
	j	.LBB23_33
.LBB23_39:
	blez	a6, .LBB23_49
# %bb.40:
	blez	s7, .LBB23_47
# %bb.41:
	andi	a5, a5, 2
	slli	a2, s4, 32
	srli	a2, a2, 32
	addi	s7, a5, 1
	andi	s2, a0, 1
	bltu	a2, s7, .LBB23_43
# %bb.42:
	mv	s7, a2
.LBB23_43:
	lui	a0, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a0)
	lw	a0, 144(a3)
	slli	s2, s2, 4
	slli	s7, s7, 3
	lui	a4, 2
	addiw	s4, a4, -1704
	li	s9, 264
	slli	s0, s10, 3
	slli	s11, a1, 3
.LBB23_44:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_45 Depth 2
	lui	a1, 2
	add	a2, a2, a1
	ld	a1, -1712(a2)
	lw	a2, 148(a3)
	ld	a1, 0(a1)
	add	a2, s3, a2
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	slli	s8, a2, 3
	add	a1, a1, s8
	ld	a1, 0(a1)
	add	a3, a3, s6
	lw	a2, 148(a3)
	addw	a0, a0, s1
	add	a0, a1, a0
	mv	a1, s10
	call	memset
	lui	a0, %hi(img)
	ld	a3, %lo(img)(a0)
	lui	a0, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a0)
	lui	a0, 22
	add	a0, a3, a0
	ld	a1, -776(a0)
	add	a4, a2, s4
	ld	a5, 16(a4)
	lw	a0, 144(a3)
	slli	a6, s3, 3
	add	a1, a1, a6
	ld	a5, 0(a5)
	ld	a7, 0(a1)
	ld	a1, 0(a4)
	lw	a4, 428(s5)
	add	a5, a5, s8
	ld	a6, 0(a5)
	ld	a1, 0(a1)
	mul	a4, a4, s9
	add	a5, a2, s0
	add	a4, a5, a4
	add	a1, a1, s8
	ld	a5, 0(a1)
	ld	a1, 24(a4)
	add	a4, a7, s2
	slli	t0, a0, 3
	add	t1, s2, t0
	add	a5, a5, t1
	add	t0, s2, t0
	add	a6, a6, t0
	add	a7, a7, s7
.LBB23_45:                              #   Parent Loop BB23_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a4)
	ld	t0, 0(t0)
	add	t0, t0, s0
	ld	t0, 0(t0)
	add	t0, t0, s11
	ld	t0, 0(t0)
	lh	t1, 0(t0)
	ld	t2, 0(a6)
	sh	t1, 0(t2)
	lh	t0, 2(t0)
	sh	t0, 2(t2)
	sd	a1, 0(a5)
	addi	a4, a4, 8
	addi	a5, a5, 8
	addi	a6, a6, 8
	bne	a4, a7, .LBB23_45
# %bb.46:                               #   in Loop: Header=BB23_44 Depth=1
	addi	s3, s3, 1
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	blt	s3, a1, .LBB23_44
	j	.LBB23_49
.LBB23_47:                              # %.preheader
	lui	s0, %hi(img)
	lui	s2, %hi(enc_picture)
	lui	s4, 2
	lui	s5, %hi(input)
	mv	s7, s3
.LBB23_48:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(enc_picture)(s2)
	ld	a1, %lo(img)(s0)
	add	a0, a0, s4
	ld	a0, -1712(a0)
	lw	a2, 148(a1)
	ld	a0, 0(a0)
	add	a2, s7, a2
	slli	a2, a2, 3
	ld	a3, %lo(input)(s5)
	add	a0, a0, a2
	ld	a0, 0(a0)
	lw	a1, 144(a1)
	add	a3, a3, s6
	lw	a2, 148(a3)
	addw	a1, a1, s1
	add	a0, a0, a1
	mv	a1, s10
	call	memset
	addiw	s3, s3, 1
	addi	s7, s7, 1
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	blt	s3, a0, .LBB23_48
.LBB23_49:
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
.Lfunc_end23:
	.size	SetRefAndMotionVectors, .Lfunc_end23-SetRefAndMotionVectors
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	StoreMVBlock8x8                 # -- Begin function StoreMVBlock8x8
	.p2align	2
	.type	StoreMVBlock8x8,@function
StoreMVBlock8x8:                        # @StoreMVBlock8x8
# %bb.0:
	lui	a7, %hi(img)
	ld	a7, %lo(img)(a7)
	lui	t0, 22
	addiw	t0, t0, -784
	add	a7, a7, t0
	ld	t0, 8(a7)
	ld	a7, 0(a7)
	andi	t2, a1, -2
	addiw	t1, t2, 2
	beqz	a6, .LBB24_6
# %bb.1:
	beqz	a5, .LBB24_11
# %bb.2:
	li	a6, 1
	beq	a5, a6, .LBB24_9
# %bb.3:
	li	a6, 2
	bne	a5, a6, .LBB24_14
# %bb.4:
	slli	a6, t2, 3
	add	a5, t0, a6
	ld	t6, 0(a5)
	slli	a1, a1, 1
	andi	a1, a1, 2
	slli	a5, a1, 3
	add	t3, t6, a5
	ld	t4, 0(t3)
	ld	t3, 0(t4)
	slli	n2, a0, 7
	lui	t5, %hi(all_mv8x8)
	addi	t5, t5, %lo(all_mv8x8)
	slli	n3, a3, 3
	add	t3, t3, n3
	ld	a0, 0(t3)
	add	a6, a7, a6
	ld	n4, 0(a6)
	slli	n1, a2, 3
	add	a0, a0, n1
	ld	a6, 0(a0)
	add	a0, n4, a5
	ld	n5, 0(a0)
	add	t5, t5, n2
	lui	t3, %hi(pred_mv8x8)
	addi	t3, t3, %lo(pred_mv8x8)
	lh	n6, 0(a6)
	ld	n7, 0(n5)
	slli	n8, t2, 4
	add	n9, t5, n8
	slli	a0, a1, 2
	add	n7, n7, n3
	ld	n7, 0(n7)
	add	n10, n9, a0
	sh	n6, 0(n10)
	lh	a6, 2(a6)
	add	n7, n7, n1
	ld	n6, 0(n7)
	add	t3, t3, n2
	sh	a6, 2(n10)
	ld	a6, 8(t4)
	lh	t4, 0(n6)
	add	n2, t3, n8
	slli	n7, a4, 3
	add	a6, a6, n7
	ld	a6, 0(a6)
	add	n10, n2, a0
	sh	t4, 0(n10)
	lh	n6, 2(n6)
	add	a6, a6, n1
	ld	a6, 0(a6)
	addi	t4, t5, 64
	ld	n5, 8(n5)
	sh	n6, 2(n10)
	lh	n6, 0(a6)
	add	n10, t4, n8
	add	n5, n5, n7
	ld	n5, 0(n5)
	add	n11, n10, a0
	sh	n6, 0(n11)
	lh	n6, 2(a6)
	add	n5, n5, n1
	ld	n5, 0(n5)
	addi	a1, a1, 1
	slli	a6, a1, 3
	add	t6, t6, a6
	ld	n12, 0(t6)
	addi	t6, t3, 64
	sh	n6, 2(n11)
	lh	n6, 0(n5)
	ld	n11, 0(n12)
	add	n8, t6, n8
	add	n13, n8, a0
	sh	n6, 0(n13)
	add	n11, n11, n3
	ld	n6, 0(n11)
	lh	n5, 2(n5)
	add	n4, n4, a6
	ld	n4, 0(n4)
	add	n6, n6, n1
	ld	n6, 0(n6)
	ld	n11, 0(n4)
	sh	n5, 2(n13)
	lh	n5, 0(n6)
	slli	a1, a1, 2
	add	n3, n11, n3
	ld	n3, 0(n3)
	add	n9, n9, a1
	sh	n5, 0(n9)
	lh	n5, 2(n6)
	add	n3, n3, n1
	ld	n3, 0(n3)
	ld	n6, 8(n12)
	sh	n5, 2(n9)
	lh	n5, 0(n3)
	add	n6, n6, n7
	ld	n6, 0(n6)
	add	n2, n2, a1
	sh	n5, 0(n2)
	lh	n3, 2(n3)
	add	n6, n6, n1
	ld	n5, 0(n6)
	ld	n4, 8(n4)
	sh	n3, 2(n2)
	lh	n2, 0(n5)
	add	n4, n4, n7
	ld	n3, 0(n4)
	add	n10, n10, a1
	sh	n2, 0(n10)
	lh	n2, 2(n5)
	add	n1, n3, n1
	ld	n1, 0(n1)
	sh	n2, 2(n10)
	lh	n2, 0(n1)
	add	n8, n8, a1
	sh	n2, 0(n8)
	lh	n1, 2(n1)
	addi	t2, t2, 1
	sh	n1, 2(n8)
	bge	t2, t1, .LBB24_13
# %bb.5:
	slli	t1, t2, 3
	add	t0, t0, t1
	ld	t0, 0(t0)
	add	n1, t0, a5
	ld	n1, 0(n1)
	ld	n2, 0(n1)
	add	a7, a7, t1
	slli	a3, a3, 3
	add	n2, n2, a3
	ld	t1, 0(n2)
	ld	a7, 0(a7)
	slli	a2, a2, 3
	add	t1, t1, a2
	add	a5, a7, a5
	ld	a5, 0(a5)
	ld	t1, 0(t1)
	ld	n2, 0(a5)
	lh	n3, 0(t1)
	slli	t2, t2, 4
	add	t5, t5, t2
	add	n2, n2, a3
	ld	n2, 0(n2)
	add	n4, t5, a0
	sh	n3, 0(n4)
	lh	t1, 2(t1)
	add	n2, n2, a2
	ld	n2, 0(n2)
	sh	t1, 2(n4)
	ld	t1, 8(n1)
	lh	n1, 0(n2)
	add	t3, t3, t2
	slli	a4, a4, 3
	add	t1, t1, a4
	ld	t1, 0(t1)
	add	n3, t3, a0
	sh	n1, 0(n3)
	lh	n1, 2(n2)
	add	t1, t1, a2
	ld	t1, 0(t1)
	ld	a5, 8(a5)
	sh	n1, 2(n3)
	lh	n1, 0(t1)
	add	t4, t4, t2
	add	a5, a5, a4
	ld	a5, 0(a5)
	add	n2, t4, a0
	sh	n1, 0(n2)
	lh	t1, 2(t1)
	add	a5, a5, a2
	ld	a5, 0(a5)
	add	t0, t0, a6
	ld	t0, 0(t0)
	sh	t1, 2(n2)
	lh	t1, 0(a5)
	ld	n1, 0(t0)
	add	t2, t6, t2
	add	a0, t2, a0
	sh	t1, 0(a0)
	add	n1, n1, a3
	ld	t1, 0(n1)
	add	a6, a7, a6
	ld	a6, 0(a6)
	lh	a5, 2(a5)
	add	t1, t1, a2
	ld	a7, 0(t1)
	ld	t1, 0(a6)
	sh	a5, 2(a0)
	lh	a0, 0(a7)
	add	a3, t1, a3
	ld	a3, 0(a3)
	add	t5, t5, a1
	sh	a0, 0(t5)
	lh	a0, 2(a7)
	add	a3, a3, a2
	ld	a3, 0(a3)
	ld	a5, 8(t0)
	sh	a0, 2(t5)
	lh	a0, 0(a3)
	add	a5, a5, a4
	ld	a5, 0(a5)
	add	t3, t3, a1
	sh	a0, 0(t3)
	lh	a0, 2(a3)
	add	a5, a5, a2
	ld	a3, 0(a5)
	ld	a5, 8(a6)
	sh	a0, 2(t3)
	lh	a0, 0(a3)
	add	a4, a5, a4
	ld	a4, 0(a4)
	add	t4, t4, a1
	sh	a0, 0(t4)
	lh	a0, 2(a3)
	add	a2, a4, a2
	ld	a2, 0(a2)
	sh	a0, 2(t4)
	lh	a0, 0(a2)
	add	a1, t2, a1
	sh	a0, 0(a1)
	lh	a0, 2(a2)
	sh	a0, 2(a1)
	ret
.LBB24_6:
	bltz	a5, .LBB24_13
# %bb.7:
	slli	a2, t2, 3
	add	a4, t0, a2
	ld	a5, 0(a4)
	slli	a1, a1, 1
	andi	a6, a1, 2
	slli	a1, a6, 3
	add	a4, a5, a1
	ld	a4, 0(a4)
	ld	a4, 0(a4)
	add	a2, a7, a2
	slli	t3, a3, 3
	add	a4, a4, t3
	ld	a4, 0(a4)
	ld	t4, 0(a2)
	slli	t5, a0, 7
	lui	a0, %hi(all_mv8x8)
	addi	a0, a0, %lo(all_mv8x8)
	ld	a2, 32(a4)
	add	a4, t4, a1
	ld	t6, 0(a4)
	add	a4, a0, t5
	lui	n1, %hi(pred_mv8x8)
	addi	n1, n1, %lo(pred_mv8x8)
	lh	n2, 0(a2)
	ld	t6, 0(t6)
	slli	n3, t2, 4
	add	n4, a4, n3
	slli	a0, a6, 2
	add	t6, t6, t3
	ld	t6, 0(t6)
	add	n5, n4, a0
	sh	n2, 0(n5)
	lh	n2, 2(a2)
	ld	t6, 32(t6)
	addi	n6, a6, 1
	slli	a2, n6, 3
	add	a5, a5, a2
	ld	a5, 0(a5)
	add	a6, n1, t5
	sh	n2, 2(n5)
	lh	t5, 0(t6)
	ld	a5, 0(a5)
	add	n3, a6, n3
	add	n1, n3, a0
	sh	t5, 0(n1)
	add	a5, a5, t3
	ld	a5, 0(a5)
	add	t4, t4, a2
	ld	t4, 0(t4)
	lh	t5, 2(t6)
	ld	t6, 32(a5)
	ld	t4, 0(t4)
	sh	t5, 2(n1)
	lh	t5, 0(t6)
	slli	a5, n6, 2
	add	t3, t4, t3
	ld	t3, 0(t3)
	add	n4, n4, a5
	sh	t5, 0(n4)
	lh	t4, 2(t6)
	ld	t3, 32(t3)
	sh	t4, 2(n4)
	lh	t4, 0(t3)
	add	n3, n3, a5
	sh	t4, 0(n3)
	lh	t3, 2(t3)
	addi	t2, t2, 1
	sh	t3, 2(n3)
	bge	t2, t1, .LBB24_13
# %bb.8:
	slli	t1, t2, 3
	add	t0, t0, t1
	ld	t0, 0(t0)
	add	t3, t0, a1
	ld	t3, 0(t3)
	ld	t3, 0(t3)
	add	a7, a7, t1
	slli	a3, a3, 3
	add	t3, t3, a3
	ld	t1, 0(t3)
	ld	a7, 0(a7)
	ld	t1, 32(t1)
	add	a1, a7, a1
	ld	a1, 0(a1)
	lh	t3, 0(t1)
	slli	t2, t2, 4
	ld	a1, 0(a1)
	add	a4, a4, t2
	add	t4, a4, a0
	sh	t3, 0(t4)
	add	a1, a1, a3
	ld	a1, 0(a1)
	lh	t1, 2(t1)
	add	t0, t0, a2
	ld	t0, 0(t0)
	ld	a1, 32(a1)
	sh	t1, 2(t4)
	ld	t0, 0(t0)
	lh	t1, 0(a1)
	add	a6, a6, t2
	add	a0, a6, a0
	add	t0, t0, a3
	ld	t0, 0(t0)
	add	a2, a7, a2
	ld	a2, 0(a2)
	sh	t1, 0(a0)
	lh	a1, 2(a1)
	ld	a7, 32(t0)
	ld	a2, 0(a2)
	sh	a1, 2(a0)
	lh	a0, 0(a7)
	add	a2, a2, a3
	ld	a1, 0(a2)
	add	a4, a4, a5
	sh	a0, 0(a4)
	lh	a0, 2(a7)
	ld	a1, 32(a1)
	sh	a0, 2(a4)
	lh	a0, 0(a1)
	add	a5, a6, a5
	sh	a0, 0(a5)
	lh	a0, 2(a1)
	sh	a0, 2(a5)
	ret
.LBB24_9:
	slli	a3, t2, 3
	add	a5, t0, a3
	ld	a6, 0(a5)
	slli	a1, a1, 1
	andi	a5, a1, 2
	slli	a1, a5, 3
	add	t3, a6, a1
	ld	t3, 0(t3)
	ld	t3, 8(t3)
	slli	t5, a4, 3
	add	t3, t3, t5
	ld	t3, 0(t3)
	slli	t6, a2, 3
	add	t3, t3, t6
	ld	t4, 0(t3)
	add	a3, a7, a3
	ld	n1, 0(a3)
	lh	n2, 0(t4)
	slli	n3, a0, 7
	add	a3, n1, a1
	ld	a3, 0(a3)
	lui	t3, %hi(all_mv8x8)
	addi	t3, t3, %lo(all_mv8x8)
	add	n4, t3, n3
	slli	n5, t2, 4
	ld	n6, 8(a3)
	add	n4, n4, n5
	addi	n4, n4, 64
	slli	a3, a5, 2
	add	n6, n6, t5
	ld	n6, 0(n6)
	add	n7, n4, a3
	sh	n2, 0(n7)
	lh	t4, 2(t4)
	add	n6, n6, t6
	ld	n2, 0(n6)
	sh	t4, 2(n7)
	lh	n6, 0(n2)
	addi	n7, a5, 1
	slli	a5, n7, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	lui	t4, %hi(pred_mv8x8)
	addi	t4, t4, %lo(pred_mv8x8)
	add	n3, t4, n3
	add	n3, n3, n5
	ld	a6, 8(a6)
	addi	n3, n3, 64
	add	n5, n3, a3
	sh	n6, 0(n5)
	add	a6, a6, t5
	ld	a6, 0(a6)
	lh	n2, 2(n2)
	add	n1, n1, a5
	ld	n1, 0(n1)
	add	a6, a6, t6
	ld	n6, 0(a6)
	ld	n1, 8(n1)
	sh	n2, 2(n5)
	lh	n2, 0(n6)
	slli	a6, n7, 2
	add	t5, n1, t5
	ld	t5, 0(t5)
	add	n4, n4, a6
	sh	n2, 0(n4)
	lh	n1, 2(n6)
	add	t5, t5, t6
	ld	t5, 0(t5)
	sh	n1, 2(n4)
	lh	t6, 0(t5)
	add	n3, n3, a6
	sh	t6, 0(n3)
	lh	t5, 2(t5)
	addi	t2, t2, 1
	sh	t5, 2(n3)
	bge	t2, t1, .LBB24_13
# %bb.10:
	slli	t1, t2, 3
	add	t0, t0, t1
	ld	t0, 0(t0)
	add	t5, t0, a1
	ld	t5, 0(t5)
	ld	t5, 8(t5)
	slli	a4, a4, 3
	add	t5, t5, a4
	ld	t5, 0(t5)
	add	a7, a7, t1
	slli	a2, a2, 3
	add	t5, t5, a2
	ld	t1, 0(t5)
	ld	a7, 0(a7)
	lh	t5, 0(t1)
	add	a1, a7, a1
	ld	a1, 0(a1)
	slli	a0, a0, 7
	add	t3, t3, a0
	slli	t2, t2, 4
	ld	a1, 8(a1)
	add	t3, t3, t2
	addi	t3, t3, 64
	add	t6, t3, a3
	add	a1, a1, a4
	ld	a1, 0(a1)
	sh	t5, 0(t6)
	lh	t1, 2(t1)
	add	a1, a1, a2
	ld	a1, 0(a1)
	sh	t1, 2(t6)
	add	t0, t0, a5
	ld	t0, 0(t0)
	lh	t1, 0(a1)
	add	a0, t4, a0
	add	a0, a0, t2
	ld	t0, 8(t0)
	addi	a0, a0, 64
	add	a3, a0, a3
	sh	t1, 0(a3)
	add	t0, t0, a4
	ld	t0, 0(t0)
	add	a5, a7, a5
	ld	a5, 0(a5)
	lh	a1, 2(a1)
	add	t0, t0, a2
	ld	a7, 0(t0)
	ld	a5, 8(a5)
	sh	a1, 2(a3)
	lh	a1, 0(a7)
	add	a4, a5, a4
	ld	a3, 0(a4)
	add	t3, t3, a6
	sh	a1, 0(t3)
	lh	a1, 2(a7)
	add	a2, a3, a2
	ld	a2, 0(a2)
	sh	a1, 2(t3)
	lh	a1, 0(a2)
	add	a0, a0, a6
	sh	a1, 0(a0)
	lh	a1, 2(a2)
	sh	a1, 2(a0)
	ret
.LBB24_11:
	slli	a4, t2, 3
	add	a5, t0, a4
	ld	a6, 0(a5)
	slli	a1, a1, 1
	andi	t3, a1, 2
	slli	a1, t3, 3
	add	a5, a6, a1
	ld	a5, 0(a5)
	ld	a5, 0(a5)
	slli	t4, a0, 7
	lui	a0, %hi(all_mv8x8)
	addi	a0, a0, %lo(all_mv8x8)
	slli	t5, a3, 3
	add	a5, a5, t5
	ld	a5, 0(a5)
	add	a4, a7, a4
	ld	t6, 0(a4)
	slli	n1, a2, 3
	add	a5, a5, n1
	ld	a4, 0(a5)
	add	a5, t6, a1
	ld	n2, 0(a5)
	add	a5, a0, t4
	lui	n3, %hi(pred_mv8x8)
	addi	n3, n3, %lo(pred_mv8x8)
	lh	n4, 0(a4)
	ld	n2, 0(n2)
	slli	n5, t2, 4
	add	n6, a5, n5
	slli	a0, t3, 2
	add	n2, n2, t5
	ld	n2, 0(n2)
	add	n7, n6, a0
	sh	n4, 0(n7)
	lh	n4, 2(a4)
	add	n2, n2, n1
	ld	n2, 0(n2)
	addi	n8, t3, 1
	slli	a4, n8, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	add	t3, n3, t4
	sh	n4, 2(n7)
	lh	t4, 0(n2)
	ld	a6, 0(a6)
	add	n5, t3, n5
	add	n3, n5, a0
	sh	t4, 0(n3)
	add	a6, a6, t5
	ld	a6, 0(a6)
	lh	t4, 2(n2)
	add	t6, t6, a4
	ld	t6, 0(t6)
	add	a6, a6, n1
	ld	n2, 0(a6)
	ld	t6, 0(t6)
	sh	t4, 2(n3)
	lh	t4, 0(n2)
	slli	a6, n8, 2
	add	t5, t6, t5
	ld	t5, 0(t5)
	add	n6, n6, a6
	sh	t4, 0(n6)
	lh	t4, 2(n2)
	add	t5, t5, n1
	ld	t5, 0(t5)
	sh	t4, 2(n6)
	lh	t4, 0(t5)
	add	n5, n5, a6
	sh	t4, 0(n5)
	lh	t4, 2(t5)
	addi	t2, t2, 1
	sh	t4, 2(n5)
	bge	t2, t1, .LBB24_13
# %bb.12:
	slli	t1, t2, 3
	add	t0, t0, t1
	ld	t0, 0(t0)
	add	t4, t0, a1
	ld	t4, 0(t4)
	ld	t4, 0(t4)
	add	a7, a7, t1
	slli	a3, a3, 3
	add	t4, t4, a3
	ld	t1, 0(t4)
	ld	a7, 0(a7)
	slli	a2, a2, 3
	add	t1, t1, a2
	add	a1, a7, a1
	ld	a1, 0(a1)
	ld	t1, 0(t1)
	ld	a1, 0(a1)
	lh	t4, 0(t1)
	slli	t2, t2, 4
	add	a5, a5, t2
	add	a1, a1, a3
	ld	a1, 0(a1)
	add	t5, a5, a0
	sh	t4, 0(t5)
	lh	t1, 2(t1)
	add	a1, a1, a2
	ld	a1, 0(a1)
	add	t0, t0, a4
	ld	t0, 0(t0)
	sh	t1, 2(t5)
	lh	t1, 0(a1)
	ld	t0, 0(t0)
	add	t2, t3, t2
	add	a0, t2, a0
	sh	t1, 0(a0)
	add	t0, t0, a3
	ld	t0, 0(t0)
	add	a4, a7, a4
	ld	a4, 0(a4)
	lh	a1, 2(a1)
	add	t0, t0, a2
	ld	a7, 0(t0)
	ld	a4, 0(a4)
	sh	a1, 2(a0)
	lh	a0, 0(a7)
	add	a3, a4, a3
	ld	a1, 0(a3)
	add	a5, a5, a6
	sh	a0, 0(a5)
	lh	a0, 2(a7)
	add	a1, a1, a2
	ld	a1, 0(a1)
	sh	a0, 2(a5)
	lh	a0, 0(a1)
	add	a6, t2, a6
	sh	a0, 0(a6)
	lh	a0, 2(a1)
	sh	a0, 2(a6)
.LBB24_13:
	ret
.LBB24_14:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 255
	tail	error
.Lfunc_end24:
	.size	StoreMVBlock8x8, .Lfunc_end24-StoreMVBlock8x8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	RestoreMVBlock8x8               # -- Begin function RestoreMVBlock8x8
	.p2align	2
	.type	RestoreMVBlock8x8,@function
RestoreMVBlock8x8:                      # @RestoreMVBlock8x8
# %bb.0:
	lui	a4, %hi(img)
	ld	a4, %lo(img)(a4)
	lui	a5, 22
	addiw	a5, a5, -784
	add	a4, a4, a5
	ld	a5, 8(a4)
	ld	a4, 0(a4)
	slli	a6, a1, 1
	lui	t1, 2
	add	a6, a2, a6
	add	t2, a6, t1
	lhu	a7, -2036(t2)
	add	a2, a2, a1
	add	t1, a2, t1
	lbu	t0, -2028(t1)
	andi	a6, a1, -2
	addiw	a2, a6, 2
	beqz	a3, .LBB25_6
# %bb.1:
	lh	t3, -2044(t2)
	beqz	a7, .LBB25_11
# %bb.2:
	lbu	a3, -2024(t1)
	li	t1, 1
	beq	a7, t1, .LBB25_9
# %bb.3:
	li	t1, 2
	bne	a7, t1, .LBB25_14
# %bb.4:
	slli	t4, a0, 7
	lui	t1, %hi(all_mv8x8)
	addi	t1, t1, %lo(all_mv8x8)
	add	t1, t1, t4
	slli	a0, a6, 3
	add	a7, a5, a0
	ld	n1, 0(a7)
	slli	a1, a1, 1
	andi	n2, a1, 2
	slli	t2, n2, 3
	add	a1, n1, t2
	ld	t5, 0(a1)
	add	a0, a4, a0
	ld	n3, 0(a0)
	slli	n4, a6, 4
	ld	a0, 0(t5)
	add	n5, t1, n4
	slli	a7, n2, 2
	slli	a1, t0, 3
	add	a0, a0, a1
	ld	t0, 0(a0)
	add	t6, n5, a7
	lh	n6, 0(t6)
	slli	a0, t3, 3
	add	t0, t0, a0
	ld	t0, 0(t0)
	add	t3, n3, t2
	ld	t3, 0(t3)
	sh	n6, 0(t0)
	lh	t6, 2(t6)
	ld	n6, 0(t3)
	lui	n7, %hi(pred_mv8x8)
	addi	n7, n7, %lo(pred_mv8x8)
	add	t4, n7, t4
	sh	t6, 2(t0)
	add	n6, n6, a1
	ld	t0, 0(n6)
	add	n6, t4, n4
	add	t6, n6, a7
	lh	n7, 0(t6)
	add	t0, t0, a0
	ld	t0, 0(t0)
	sh	n7, 0(t0)
	lh	t6, 2(t6)
	ld	n7, 8(t5)
	addi	t5, t1, 64
	sh	t6, 2(t0)
	slli	a3, a3, 3
	add	n7, n7, a3
	ld	t0, 0(n7)
	add	n7, t5, n4
	add	t6, n7, a7
	lh	n8, 0(t6)
	add	t0, t0, a0
	ld	t0, 0(t0)
	sh	n8, 0(t0)
	lh	n8, 2(t6)
	ld	t3, 8(t3)
	addi	t6, t4, 64
	sh	n8, 2(t0)
	add	t3, t3, a3
	ld	t0, 0(t3)
	add	n4, t6, n4
	add	n8, n4, a7
	lh	n9, 0(n8)
	add	t0, t0, a0
	ld	t0, 0(t0)
	addi	n2, n2, 1
	slli	t3, n2, 3
	add	n1, n1, t3
	ld	n1, 0(n1)
	sh	n9, 0(t0)
	lh	n8, 2(n8)
	ld	n9, 0(n1)
	sh	n8, 2(t0)
	add	n9, n9, a1
	ld	n8, 0(n9)
	slli	t0, n2, 2
	add	n5, n5, t0
	lh	n2, 0(n5)
	add	n8, n8, a0
	add	n3, n3, t3
	ld	n3, 0(n3)
	ld	n8, 0(n8)
	ld	n9, 0(n3)
	sh	n2, 0(n8)
	lh	n2, 2(n5)
	add	n9, n9, a1
	ld	n5, 0(n9)
	sh	n2, 2(n8)
	add	n6, n6, t0
	lh	n2, 0(n6)
	add	n5, n5, a0
	ld	n5, 0(n5)
	ld	n1, 8(n1)
	sh	n2, 0(n5)
	lh	n2, 2(n6)
	add	n1, n1, a3
	ld	n1, 0(n1)
	sh	n2, 2(n5)
	add	n7, n7, t0
	lh	n2, 0(n7)
	add	n1, n1, a0
	ld	n1, 0(n1)
	ld	n3, 8(n3)
	sh	n2, 0(n1)
	lh	n2, 2(n7)
	add	n3, n3, a3
	ld	n3, 0(n3)
	sh	n2, 2(n1)
	add	n4, n4, t0
	lh	n1, 0(n4)
	add	n3, n3, a0
	ld	n2, 0(n3)
	sh	n1, 0(n2)
	lh	n1, 2(n4)
	addi	a6, a6, 1
	sh	n1, 2(n2)
	bge	a6, a2, .LBB25_13
# %bb.5:
	slli	a2, a6, 3
	add	a5, a5, a2
	ld	a5, 0(a5)
	add	n1, a5, t2
	ld	n1, 0(n1)
	ld	n2, 0(n1)
	add	a2, a4, a2
	ld	a2, 0(a2)
	slli	a6, a6, 4
	add	n2, n2, a1
	ld	a4, 0(n2)
	add	t1, t1, a6
	add	n2, t1, a7
	lh	n3, 0(n2)
	add	a4, a4, a0
	ld	a4, 0(a4)
	add	t2, a2, t2
	ld	t2, 0(t2)
	sh	n3, 0(a4)
	lh	n2, 2(n2)
	ld	n3, 0(t2)
	sh	n2, 2(a4)
	add	n3, n3, a1
	ld	a4, 0(n3)
	add	t4, t4, a6
	add	n2, t4, a7
	lh	n3, 0(n2)
	add	a4, a4, a0
	ld	a4, 0(a4)
	sh	n3, 0(a4)
	lh	n2, 2(n2)
	ld	n1, 8(n1)
	sh	n2, 2(a4)
	add	n1, n1, a3
	ld	a4, 0(n1)
	add	t5, t5, a6
	add	n1, t5, a7
	lh	n2, 0(n1)
	add	a4, a4, a0
	ld	a4, 0(a4)
	sh	n2, 0(a4)
	lh	n1, 2(n1)
	ld	t2, 8(t2)
	sh	n1, 2(a4)
	add	t2, t2, a3
	ld	a4, 0(t2)
	add	a6, t6, a6
	add	a7, a6, a7
	lh	t2, 0(a7)
	add	a4, a4, a0
	add	a5, a5, t3
	ld	a5, 0(a5)
	ld	a4, 0(a4)
	ld	t6, 0(a5)
	sh	t2, 0(a4)
	lh	a7, 2(a7)
	add	t6, t6, a1
	ld	t2, 0(t6)
	sh	a7, 2(a4)
	add	t1, t1, t0
	lh	a4, 0(t1)
	add	t2, t2, a0
	add	a2, a2, t3
	ld	a2, 0(a2)
	ld	a7, 0(t2)
	ld	t2, 0(a2)
	sh	a4, 0(a7)
	lh	a4, 2(t1)
	add	a1, t2, a1
	ld	a1, 0(a1)
	sh	a4, 2(a7)
	add	t4, t4, t0
	lh	a4, 0(t4)
	add	a1, a1, a0
	ld	a1, 0(a1)
	ld	a5, 8(a5)
	sh	a4, 0(a1)
	lh	a4, 2(t4)
	add	a5, a5, a3
	ld	a5, 0(a5)
	sh	a4, 2(a1)
	add	t5, t5, t0
	lh	a1, 0(t5)
	add	a5, a5, a0
	ld	a4, 0(a5)
	ld	a2, 8(a2)
	sh	a1, 0(a4)
	lh	a1, 2(t5)
	add	a2, a2, a3
	ld	a2, 0(a2)
	sh	a1, 2(a4)
	add	a6, a6, t0
	lh	a1, 0(a6)
	add	a0, a2, a0
	ld	a0, 0(a0)
	sh	a1, 0(a0)
	lh	a1, 2(a6)
	sh	a1, 2(a0)
	ret
.LBB25_6:
	slli	a7, a7, 48
	srai	a3, a7, 48
	bltz	a3, .LBB25_13
# %bb.7:
	slli	t2, a0, 7
	lui	t1, %hi(all_mv8x8)
	addi	t1, t1, %lo(all_mv8x8)
	slli	a0, a6, 3
	add	a3, a5, a0
	ld	a7, 0(a3)
	slli	a1, a1, 1
	andi	t3, a1, 2
	slli	a1, t3, 3
	add	a3, a7, a1
	ld	a3, 0(a3)
	add	t1, t1, t2
	add	a0, a4, a0
	ld	t4, 0(a0)
	ld	a3, 0(a3)
	slli	t5, a6, 4
	add	t6, t1, t5
	slli	a0, t0, 3
	add	a3, a3, a0
	ld	t0, 0(a3)
	slli	a3, t3, 2
	add	n1, t6, a3
	lh	n2, 0(n1)
	ld	t0, 32(t0)
	add	n3, t4, a1
	ld	n3, 0(n3)
	sh	n2, 0(t0)
	lh	n1, 2(n1)
	ld	n2, 0(n3)
	lui	n3, %hi(pred_mv8x8)
	addi	n3, n3, %lo(pred_mv8x8)
	add	t2, n3, t2
	sh	n1, 2(t0)
	add	n2, n2, a0
	ld	t0, 0(n2)
	add	t5, t2, t5
	add	n1, t5, a3
	lh	n2, 0(n1)
	ld	n3, 32(t0)
	sh	n2, 0(n3)
	addi	t3, t3, 1
	slli	t0, t3, 3
	add	a7, a7, t0
	ld	a7, 0(a7)
	lh	n1, 2(n1)
	ld	n2, 0(a7)
	sh	n1, 2(n3)
	slli	a7, t3, 2
	add	t6, t6, a7
	add	n2, n2, a0
	ld	t3, 0(n2)
	lh	n1, 0(t6)
	add	t4, t4, t0
	ld	t4, 0(t4)
	ld	t3, 32(t3)
	ld	t4, 0(t4)
	sh	n1, 0(t3)
	lh	t6, 2(t6)
	add	t4, t4, a0
	ld	t4, 0(t4)
	sh	t6, 2(t3)
	add	t5, t5, a7
	lh	t3, 0(t5)
	ld	t4, 32(t4)
	sh	t3, 0(t4)
	lh	t3, 2(t5)
	addi	a6, a6, 1
	sh	t3, 2(t4)
	bge	a6, a2, .LBB25_13
# %bb.8:
	slli	a2, a6, 3
	add	a5, a5, a2
	ld	a5, 0(a5)
	add	t3, a5, a1
	ld	t3, 0(t3)
	ld	t3, 0(t3)
	add	a2, a4, a2
	ld	a2, 0(a2)
	slli	a6, a6, 4
	add	t3, t3, a0
	ld	a4, 0(t3)
	add	t1, t1, a6
	add	t3, t1, a3
	lh	t4, 0(t3)
	ld	a4, 32(a4)
	add	a1, a2, a1
	ld	a1, 0(a1)
	sh	t4, 0(a4)
	lh	t3, 2(t3)
	ld	a1, 0(a1)
	sh	t3, 2(a4)
	add	a1, a1, a0
	ld	a1, 0(a1)
	add	a6, t2, a6
	add	a3, a6, a3
	lh	a4, 0(a3)
	ld	a1, 32(a1)
	add	a5, a5, t0
	ld	a5, 0(a5)
	sh	a4, 0(a1)
	lh	a3, 2(a3)
	ld	a4, 0(a5)
	sh	a3, 2(a1)
	add	t1, t1, a7
	add	a4, a4, a0
	ld	a1, 0(a4)
	lh	a3, 0(t1)
	add	a2, a2, t0
	ld	a2, 0(a2)
	ld	a1, 32(a1)
	ld	a2, 0(a2)
	sh	a3, 0(a1)
	lh	a3, 2(t1)
	add	a0, a2, a0
	ld	a0, 0(a0)
	sh	a3, 2(a1)
	add	a6, a6, a7
	lh	a1, 0(a6)
	ld	a0, 32(a0)
	sh	a1, 0(a0)
	lh	a1, 2(a6)
	sh	a1, 2(a0)
	ret
.LBB25_9:
	slli	a1, a1, 1
	andi	t2, a1, 2
	slli	t4, a6, 3
	add	a1, a5, t4
	ld	t5, 0(a1)
	slli	t6, a0, 7
	lui	t1, %hi(all_mv8x8)
	addi	t1, t1, %lo(all_mv8x8)
	slli	t0, t2, 3
	add	a1, t5, t0
	ld	a1, 0(a1)
	add	a7, t1, t6
	slli	n1, a6, 4
	add	a7, a7, n1
	ld	n2, 8(a1)
	addi	n3, a7, 64
	slli	a7, t2, 2
	slli	a1, a3, 3
	add	n2, n2, a1
	ld	n2, 0(n2)
	add	n4, n3, a7
	lh	n5, 0(n4)
	slli	a3, t3, 3
	add	n2, n2, a3
	ld	t3, 0(n2)
	add	t4, a4, t4
	ld	n2, 0(t4)
	sh	n5, 0(t3)
	lh	t4, 2(n4)
	add	n4, n2, t0
	ld	n4, 0(n4)
	sh	t4, 2(t3)
	ld	t3, 8(n4)
	lui	t4, %hi(pred_mv8x8)
	addi	t4, t4, %lo(pred_mv8x8)
	add	t6, t4, t6
	add	t6, t6, n1
	add	t3, t3, a1
	ld	t3, 0(t3)
	addi	t6, t6, 64
	add	n1, t6, a7
	lh	n4, 0(n1)
	add	t3, t3, a3
	ld	n5, 0(t3)
	addi	t2, t2, 1
	slli	t3, t2, 3
	add	t5, t5, t3
	ld	t5, 0(t5)
	sh	n4, 0(n5)
	lh	n1, 2(n1)
	ld	t5, 8(t5)
	sh	n1, 2(n5)
	add	t5, t5, a1
	ld	t5, 0(t5)
	slli	t2, t2, 2
	add	n3, n3, t2
	lh	n1, 0(n3)
	add	t5, t5, a3
	add	n2, n2, t3
	ld	n2, 0(n2)
	ld	t5, 0(t5)
	ld	n2, 8(n2)
	sh	n1, 0(t5)
	lh	n1, 2(n3)
	add	n2, n2, a1
	ld	n2, 0(n2)
	sh	n1, 2(t5)
	add	t6, t6, t2
	lh	t5, 0(t6)
	add	n2, n2, a3
	ld	n1, 0(n2)
	sh	t5, 0(n1)
	lh	t5, 2(t6)
	addi	a6, a6, 1
	sh	t5, 2(n1)
	bge	a6, a2, .LBB25_13
# %bb.10:
	slli	a2, a6, 3
	add	a5, a5, a2
	ld	a5, 0(a5)
	add	t5, a5, t0
	ld	t5, 0(t5)
	add	a2, a4, a2
	slli	a0, a0, 7
	ld	a4, 8(t5)
	add	t1, t1, a0
	slli	a6, a6, 4
	add	t1, t1, a6
	add	a4, a4, a1
	ld	a4, 0(a4)
	addi	t1, t1, 64
	add	t5, t1, a7
	lh	t6, 0(t5)
	add	a4, a4, a3
	ld	a4, 0(a4)
	ld	a2, 0(a2)
	sh	t6, 0(a4)
	add	t0, a2, t0
	ld	t0, 0(t0)
	lh	t5, 2(t5)
	ld	t0, 8(t0)
	sh	t5, 2(a4)
	add	a0, t4, a0
	add	a0, a0, a6
	add	t0, t0, a1
	ld	a4, 0(t0)
	addi	a0, a0, 64
	add	a7, a0, a7
	lh	a6, 0(a7)
	add	a4, a4, a3
	add	a5, a5, t3
	ld	a5, 0(a5)
	ld	a4, 0(a4)
	ld	a5, 8(a5)
	sh	a6, 0(a4)
	lh	a6, 2(a7)
	add	a5, a5, a1
	ld	a5, 0(a5)
	sh	a6, 2(a4)
	add	t1, t1, t2
	lh	a4, 0(t1)
	add	a5, a5, a3
	add	a2, a2, t3
	ld	a2, 0(a2)
	ld	a5, 0(a5)
	ld	a2, 8(a2)
	sh	a4, 0(a5)
	lh	a4, 2(t1)
	add	a1, a2, a1
	ld	a1, 0(a1)
	sh	a4, 2(a5)
	add	a0, a0, t2
	lh	a2, 0(a0)
	add	a1, a1, a3
	ld	a1, 0(a1)
	sh	a2, 0(a1)
	lh	a0, 2(a0)
	sh	a0, 2(a1)
	ret
.LBB25_11:
	slli	t2, a0, 7
	lui	a3, %hi(all_mv8x8)
	addi	a3, a3, %lo(all_mv8x8)
	add	a3, a3, t2
	slli	a0, a6, 3
	add	a7, a5, a0
	ld	t4, 0(a7)
	slli	a1, a1, 1
	andi	t5, a1, 2
	slli	t1, t5, 3
	add	a1, t4, t1
	ld	a1, 0(a1)
	add	a0, a4, a0
	ld	t6, 0(a0)
	slli	n1, a6, 4
	ld	a1, 0(a1)
	add	n2, a3, n1
	slli	a7, t5, 2
	slli	a0, t0, 3
	add	a1, a1, a0
	ld	t0, 0(a1)
	add	n3, n2, a7
	lh	n4, 0(n3)
	slli	a1, t3, 3
	add	t0, t0, a1
	ld	t0, 0(t0)
	add	t3, t6, t1
	ld	t3, 0(t3)
	sh	n4, 0(t0)
	lh	n3, 2(n3)
	ld	n4, 0(t3)
	lui	t3, %hi(pred_mv8x8)
	addi	t3, t3, %lo(pred_mv8x8)
	add	t3, t3, t2
	sh	n3, 2(t0)
	add	n4, n4, a0
	ld	t0, 0(n4)
	add	n1, t3, n1
	add	n3, n1, a7
	lh	n4, 0(n3)
	add	t0, t0, a1
	ld	t0, 0(t0)
	addi	t5, t5, 1
	slli	t2, t5, 3
	add	t4, t4, t2
	ld	t4, 0(t4)
	sh	n4, 0(t0)
	lh	n3, 2(n3)
	ld	t4, 0(t4)
	sh	n3, 2(t0)
	add	t4, t4, a0
	ld	t4, 0(t4)
	slli	t0, t5, 2
	add	n2, n2, t0
	lh	t5, 0(n2)
	add	t4, t4, a1
	add	t6, t6, t2
	ld	t6, 0(t6)
	ld	t4, 0(t4)
	ld	t6, 0(t6)
	sh	t5, 0(t4)
	lh	t5, 2(n2)
	add	t6, t6, a0
	ld	t6, 0(t6)
	sh	t5, 2(t4)
	add	n1, n1, t0
	lh	t4, 0(n1)
	add	t6, t6, a1
	ld	t5, 0(t6)
	sh	t4, 0(t5)
	lh	t4, 2(n1)
	addi	a6, a6, 1
	sh	t4, 2(t5)
	bge	a6, a2, .LBB25_13
# %bb.12:
	slli	a2, a6, 3
	add	a5, a5, a2
	ld	a5, 0(a5)
	add	t4, a5, t1
	ld	t4, 0(t4)
	ld	t4, 0(t4)
	add	a2, a4, a2
	ld	a2, 0(a2)
	slli	a6, a6, 4
	add	t4, t4, a0
	ld	a4, 0(t4)
	add	a3, a3, a6
	add	t4, a3, a7
	lh	t5, 0(t4)
	add	a4, a4, a1
	ld	a4, 0(a4)
	add	t1, a2, t1
	ld	t1, 0(t1)
	sh	t5, 0(a4)
	lh	t4, 2(t4)
	ld	t1, 0(t1)
	sh	t4, 2(a4)
	add	t1, t1, a0
	ld	a4, 0(t1)
	add	a6, t3, a6
	add	a7, a6, a7
	lh	t1, 0(a7)
	add	a4, a4, a1
	add	a5, a5, t2
	ld	a5, 0(a5)
	ld	a4, 0(a4)
	ld	a5, 0(a5)
	sh	t1, 0(a4)
	lh	a7, 2(a7)
	add	a5, a5, a0
	ld	a5, 0(a5)
	sh	a7, 2(a4)
	add	a3, a3, t0
	lh	a4, 0(a3)
	add	a5, a5, a1
	add	a2, a2, t2
	ld	a2, 0(a2)
	ld	a5, 0(a5)
	ld	a2, 0(a2)
	sh	a4, 0(a5)
	lh	a3, 2(a3)
	add	a0, a2, a0
	ld	a0, 0(a0)
	sh	a3, 2(a5)
	add	a6, a6, t0
	lh	a2, 0(a6)
	add	a0, a0, a1
	ld	a0, 0(a0)
	sh	a2, 0(a0)
	lh	a1, 2(a6)
	sh	a1, 2(a0)
.LBB25_13:
	ret
.LBB25_14:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 255
	tail	error
.Lfunc_end25:
	.size	RestoreMVBlock8x8, .Lfunc_end25-RestoreMVBlock8x8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	StoreNewMotionVectorsBlock8x8   # -- Begin function StoreNewMotionVectorsBlock8x8
	.p2align	2
	.type	StoreNewMotionVectorsBlock8x8,@function
StoreNewMotionVectorsBlock8x8:          # @StoreNewMotionVectorsBlock8x8
# %bb.0:
	slli	t4, a1, 1
	andi	t4, t4, 2
	andi	t3, a1, -2
	addiw	a1, t3, 2
	bltz	a5, .LBB26_5
# %bb.1:
	lui	a7, %hi(img)
	ld	a7, %lo(img)(a7)
	lui	t0, 22
	addiw	t0, t0, -784
	add	a7, a7, t0
	ld	t0, 8(a7)
	ld	a7, 0(a7)
	beqz	a6, .LBB26_8
# %bb.2:
	lui	a6, 524288
	addiw	a6, a6, -3
	and	n1, a5, a6
	slli	t5, a0, 7
	lui	t1, %hi(all_mv8x8)
	addi	t1, t1, %lo(all_mv8x8)
	slli	t6, t3, 4
	slli	a6, t4, 2
	addi	t2, t3, 1
	beqz	n1, .LBB26_10
# %bb.3:
	add	a3, t1, t5
	add	n1, a3, t6
	add	n1, n1, a6
	sh	zero, 6(n1)
	sh	zero, 4(n1)
	sh	zero, 2(n1)
	sh	zero, 0(n1)
	bge	t2, a1, .LBB26_12
# %bb.4:
	slli	n1, t2, 4
	add	a3, a3, n1
	add	a3, a3, a6
	sh	zero, 6(a3)
	sh	zero, 4(a3)
	sh	zero, 2(a3)
	sh	zero, 0(a3)
	j	.LBB26_12
.LBB26_5:
	slli	a0, a0, 7
	lui	a2, %hi(all_mv8x8)
	addi	a2, a2, %lo(all_mv8x8)
	add	a2, a2, a0
	addi	a0, a2, 64
	slli	a3, t3, 4
	add	a4, a2, a3
	slli	t4, t4, 2
	add	a4, a4, t4
	sh	zero, 6(a4)
	sh	zero, 4(a4)
	sh	zero, 2(a4)
	sh	zero, 0(a4)
	add	a3, a0, a3
	add	a3, a3, t4
	sh	zero, 6(a3)
	sh	zero, 4(a3)
	sh	zero, 2(a3)
	addi	t3, t3, 1
	sh	zero, 0(a3)
	bge	t3, a1, .LBB26_7
# %bb.6:
	slli	t3, t3, 4
	add	a2, a2, t3
	add	a2, a2, t4
	sh	zero, 6(a2)
	sh	zero, 4(a2)
	sh	zero, 2(a2)
	sh	zero, 0(a2)
	add	a0, a0, t3
	add	a0, a0, t4
	sh	zero, 6(a0)
	sh	zero, 4(a0)
	sh	zero, 2(a0)
	sh	zero, 0(a0)
.LBB26_7:
	ret
.LBB26_8:
	slli	a4, t3, 3
	add	a2, t0, a4
	ld	a6, 0(a2)
	slli	a2, t4, 3
	add	a5, a6, a2
	ld	a5, 0(a5)
	ld	a5, 0(a5)
	add	a4, a7, a4
	slli	t2, a3, 3
	add	a5, a5, t2
	ld	a5, 0(a5)
	ld	t5, 0(a4)
	slli	t1, a0, 7
	lui	a0, %hi(all_mv8x8)
	addi	a0, a0, %lo(all_mv8x8)
	ld	a4, 32(a5)
	add	a5, t5, a2
	ld	t6, 0(a5)
	add	a5, a0, t1
	lui	n1, %hi(pred_mv8x8)
	addi	n1, n1, %lo(pred_mv8x8)
	lh	n2, 0(a4)
	ld	t6, 0(t6)
	slli	n3, t3, 4
	add	n4, a5, n3
	slli	a0, t4, 2
	add	t6, t6, t2
	ld	t6, 0(t6)
	add	n5, n4, a0
	sh	n2, 0(n5)
	lh	n2, 2(a4)
	ld	t6, 32(t6)
	addi	t4, t4, 1
	slli	a4, t4, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	add	t1, n1, t1
	sh	n2, 2(n5)
	lh	n1, 0(t6)
	ld	a6, 0(a6)
	add	n3, t1, n3
	add	n2, n3, a0
	sh	n1, 0(n2)
	add	a6, a6, t2
	ld	a6, 0(a6)
	add	t5, t5, a4
	ld	t5, 0(t5)
	lh	t6, 2(t6)
	ld	n1, 32(a6)
	ld	t5, 0(t5)
	sh	t6, 2(n2)
	lh	t6, 0(n1)
	slli	a6, t4, 2
	add	t2, t5, t2
	ld	t2, 0(t2)
	add	n4, n4, a6
	sh	t6, 0(n4)
	lh	t4, 2(n1)
	ld	t2, 32(t2)
	sh	t4, 2(n4)
	lh	t4, 0(t2)
	add	n3, n3, a6
	sh	t4, 0(n3)
	lh	t2, 2(t2)
	addi	t3, t3, 1
	sh	t2, 2(n3)
	bge	t3, a1, .LBB26_7
# %bb.9:
	slli	a1, t3, 3
	add	t0, t0, a1
	ld	t0, 0(t0)
	add	t2, t0, a2
	ld	t2, 0(t2)
	ld	t2, 0(t2)
	add	a1, a7, a1
	slli	a3, a3, 3
	add	t2, t2, a3
	ld	a7, 0(t2)
	ld	a1, 0(a1)
	ld	a7, 32(a7)
	add	a2, a1, a2
	ld	a2, 0(a2)
	lh	t2, 0(a7)
	slli	t3, t3, 4
	ld	a2, 0(a2)
	add	a5, a5, t3
	add	t4, a5, a0
	sh	t2, 0(t4)
	add	a2, a2, a3
	ld	a2, 0(a2)
	lh	a7, 2(a7)
	add	t0, t0, a4
	ld	t0, 0(t0)
	ld	a2, 32(a2)
	sh	a7, 2(t4)
	ld	a7, 0(t0)
	lh	t0, 0(a2)
	add	t1, t1, t3
	add	a0, t1, a0
	add	a7, a7, a3
	ld	a7, 0(a7)
	add	a1, a1, a4
	ld	a1, 0(a1)
	sh	t0, 0(a0)
	lh	a2, 2(a2)
	ld	a4, 32(a7)
	ld	a1, 0(a1)
	sh	a2, 2(a0)
	lh	a0, 0(a4)
	add	a1, a1, a3
	ld	a1, 0(a1)
	add	a5, a5, a6
	sh	a0, 0(a5)
	lh	a0, 2(a4)
	ld	a1, 32(a1)
	sh	a0, 2(a5)
	lh	a0, 0(a1)
	add	a6, t1, a6
	sh	a0, 0(a6)
	lh	a0, 2(a1)
	sh	a0, 2(a6)
	ret
.LBB26_10:
	slli	n2, t3, 3
	add	n1, t0, n2
	ld	n3, 0(n1)
	slli	n1, t4, 3
	add	n4, n3, n1
	ld	n4, 0(n4)
	ld	n4, 0(n4)
	add	n2, a7, n2
	ld	n6, 0(n2)
	slli	n7, a3, 3
	add	n4, n4, n7
	ld	n2, 0(n4)
	slli	n8, a2, 3
	add	n4, n6, n1
	ld	n5, 0(n4)
	add	n2, n2, n8
	ld	n2, 0(n2)
	add	n4, t1, t5
	ld	n5, 0(n5)
	lui	n9, %hi(pred_mv8x8)
	addi	n9, n9, %lo(pred_mv8x8)
	lh	n10, 0(n2)
	add	n11, n4, t6
	add	n5, n5, n7
	ld	n5, 0(n5)
	add	n12, n11, a6
	sh	n10, 0(n12)
	lh	n10, 2(n2)
	add	n5, n5, n8
	ld	n13, 0(n5)
	addi	n14, t4, 1
	slli	n2, n14, 3
	add	n3, n3, n2
	ld	n3, 0(n3)
	add	n5, n9, t5
	sh	n10, 2(n12)
	lh	n9, 0(n13)
	ld	n3, 0(n3)
	add	n10, n5, t6
	add	n12, n10, a6
	sh	n9, 0(n12)
	add	n3, n3, n7
	ld	n3, 0(n3)
	lh	n9, 2(n13)
	add	n6, n6, n2
	ld	n6, 0(n6)
	add	n3, n3, n8
	ld	n13, 0(n3)
	ld	n6, 0(n6)
	sh	n9, 2(n12)
	lh	n9, 0(n13)
	slli	n3, n14, 2
	add	n6, n6, n7
	ld	n6, 0(n6)
	add	n11, n11, n3
	sh	n9, 0(n11)
	lh	n7, 2(n13)
	add	n6, n6, n8
	ld	n6, 0(n6)
	sh	n7, 2(n11)
	lh	n7, 0(n6)
	add	n10, n10, n3
	sh	n7, 0(n10)
	lh	n6, 2(n6)
	sh	n6, 2(n10)
	bge	t2, a1, .LBB26_12
# %bb.11:
	slli	n6, t2, 3
	add	n7, t0, n6
	ld	n7, 0(n7)
	add	n8, n7, n1
	ld	n8, 0(n8)
	ld	n8, 0(n8)
	add	n6, a7, n6
	slli	a3, a3, 3
	add	n8, n8, a3
	ld	n8, 0(n8)
	ld	n6, 0(n6)
	slli	n9, a2, 3
	add	n8, n8, n9
	add	n1, n6, n1
	ld	n1, 0(n1)
	ld	n8, 0(n8)
	ld	n1, 0(n1)
	lh	n10, 0(n8)
	slli	n11, t2, 4
	add	n4, n4, n11
	add	n1, n1, a3
	ld	n1, 0(n1)
	add	n12, n4, a6
	sh	n10, 0(n12)
	lh	n8, 2(n8)
	add	n1, n1, n9
	ld	n1, 0(n1)
	add	n7, n7, n2
	ld	n7, 0(n7)
	sh	n8, 2(n12)
	lh	n8, 0(n1)
	ld	n7, 0(n7)
	add	n5, n5, n11
	add	n10, n5, a6
	sh	n8, 0(n10)
	add	n7, n7, a3
	ld	n7, 0(n7)
	add	n2, n6, n2
	ld	n2, 0(n2)
	lh	n1, 2(n1)
	add	n7, n7, n9
	ld	n6, 0(n7)
	ld	n2, 0(n2)
	sh	n1, 2(n10)
	lh	n1, 0(n6)
	add	a3, n2, a3
	ld	a3, 0(a3)
	add	n4, n4, n3
	sh	n1, 0(n4)
	lh	n1, 2(n6)
	add	a3, a3, n9
	ld	a3, 0(a3)
	sh	n1, 2(n4)
	lh	n1, 0(a3)
	add	n3, n5, n3
	sh	n1, 0(n3)
	lh	a3, 2(a3)
	sh	a3, 2(n3)
.LBB26_12:
	addiw	a5, a5, -1
	li	a3, 2
	bgeu	a5, a3, .LBB26_15
# %bb.13:
	slli	t3, t3, 3
	add	a3, t0, t3
	ld	n1, 0(a3)
	slli	a3, t4, 3
	add	a5, n1, a3
	ld	a5, 0(a5)
	ld	a5, 8(a5)
	slli	n2, a4, 3
	add	a5, a5, n2
	ld	a5, 0(a5)
	add	t3, a7, t3
	ld	t3, 0(t3)
	slli	n3, a2, 3
	add	a5, a5, n3
	ld	a5, 0(a5)
	add	n4, t3, a3
	ld	n4, 0(n4)
	lh	n5, 0(a5)
	ld	n4, 8(n4)
	add	n6, t1, t5
	add	n6, n6, t6
	addi	n6, n6, 64
	add	n4, n4, n2
	ld	n4, 0(n4)
	add	n7, n6, a6
	sh	n5, 0(n7)
	lh	a5, 2(a5)
	add	n4, n4, n3
	ld	n4, 0(n4)
	sh	a5, 2(n7)
	lh	n5, 0(n4)
	addi	n7, t4, 1
	slli	a5, n7, 3
	add	n1, n1, a5
	ld	n1, 0(n1)
	lui	t4, %hi(pred_mv8x8)
	addi	t4, t4, %lo(pred_mv8x8)
	add	t5, t4, t5
	add	t5, t5, t6
	ld	t6, 8(n1)
	addi	t5, t5, 64
	add	n1, t5, a6
	sh	n5, 0(n1)
	add	t6, t6, n2
	ld	t6, 0(t6)
	lh	n4, 2(n4)
	add	t3, t3, a5
	ld	t3, 0(t3)
	add	t6, t6, n3
	ld	t6, 0(t6)
	ld	n5, 8(t3)
	sh	n4, 2(n1)
	lh	n1, 0(t6)
	slli	t3, n7, 2
	add	n2, n5, n2
	ld	n2, 0(n2)
	add	n6, n6, t3
	sh	n1, 0(n6)
	lh	t6, 2(t6)
	add	n2, n2, n3
	ld	n1, 0(n2)
	sh	t6, 2(n6)
	lh	t6, 0(n1)
	add	t5, t5, t3
	sh	t6, 0(t5)
	lh	t6, 2(n1)
	sh	t6, 2(t5)
	bge	t2, a1, .LBB26_7
# %bb.14:
	slli	a1, t2, 3
	add	t0, t0, a1
	ld	t0, 0(t0)
	add	t5, t0, a3
	ld	t5, 0(t5)
	ld	t5, 8(t5)
	slli	a4, a4, 3
	add	t5, t5, a4
	ld	t5, 0(t5)
	add	a1, a7, a1
	slli	a2, a2, 3
	add	t5, t5, a2
	ld	a7, 0(t5)
	ld	a1, 0(a1)
	lh	t5, 0(a7)
	add	a3, a1, a3
	ld	a3, 0(a3)
	slli	a0, a0, 7
	add	t1, t1, a0
	slli	t2, t2, 4
	ld	a3, 8(a3)
	add	t1, t1, t2
	addi	t1, t1, 64
	add	t6, t1, a6
	add	a3, a3, a4
	ld	a3, 0(a3)
	sh	t5, 0(t6)
	lh	a7, 2(a7)
	add	a3, a3, a2
	ld	a3, 0(a3)
	sh	a7, 2(t6)
	add	t0, t0, a5
	ld	a7, 0(t0)
	lh	t0, 0(a3)
	add	a0, t4, a0
	add	a0, a0, t2
	ld	a7, 8(a7)
	addi	a0, a0, 64
	add	a6, a0, a6
	sh	t0, 0(a6)
	add	a7, a7, a4
	ld	a7, 0(a7)
	add	a1, a1, a5
	ld	a1, 0(a1)
	lh	a3, 2(a3)
	add	a7, a7, a2
	ld	a5, 0(a7)
	ld	a1, 8(a1)
	sh	a3, 2(a6)
	lh	a3, 0(a5)
	add	a1, a1, a4
	ld	a1, 0(a1)
	add	t1, t1, t3
	sh	a3, 0(t1)
	lh	a3, 2(a5)
	add	a1, a1, a2
	ld	a1, 0(a1)
	sh	a3, 2(t1)
	lh	a2, 0(a1)
	add	a0, a0, t3
	sh	a2, 0(a0)
	lh	a1, 2(a1)
	sh	a1, 2(a0)
	ret
.LBB26_15:
	add	t5, t1, t5
	add	t5, t5, t6
	add	t5, t5, a6
	sh	zero, 70(t5)
	sh	zero, 68(t5)
	sh	zero, 66(t5)
	sh	zero, 64(t5)
	bge	t2, a1, .LBB26_7
# %bb.16:
	slli	a0, a0, 7
	add	a0, t1, a0
	slli	t2, t2, 4
	add	a0, a0, t2
	add	a0, a0, a6
	sh	zero, 70(a0)
	sh	zero, 68(a0)
	sh	zero, 66(a0)
	sh	zero, 64(a0)
	ret
.Lfunc_end26:
	.size	StoreNewMotionVectorsBlock8x8, .Lfunc_end26-StoreNewMotionVectorsBlock8x8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	GetBestTransformP8x8            # -- Begin function GetBestTransformP8x8
	.p2align	2
	.type	GetBestTransformP8x8,@function
GetBestTransformP8x8:                   # @GetBestTransformP8x8
# %bb.0:
	addi	sp, sp, -704
	sd	ra, 696(sp)                     # 8-byte Folded Spill
	sd	s0, 688(sp)                     # 8-byte Folded Spill
	sd	s1, 680(sp)                     # 8-byte Folded Spill
	sd	s2, 672(sp)                     # 8-byte Folded Spill
	sd	s3, 664(sp)                     # 8-byte Folded Spill
	sd	s4, 656(sp)                     # 8-byte Folded Spill
	sd	s5, 648(sp)                     # 8-byte Folded Spill
	sd	s6, 640(sp)                     # 8-byte Folded Spill
	sd	s7, 632(sp)                     # 8-byte Folded Spill
	sd	s8, 624(sp)                     # 8-byte Folded Spill
	sd	s9, 616(sp)                     # 8-byte Folded Spill
	sd	s10, 608(sp)                    # 8-byte Folded Spill
	sd	s11, 600(sp)                    # 8-byte Folded Spill
	lui	s0, %hi(input)
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a1, 1845(a0)
	li	a2, 2
	li	a0, 1
	beq	a1, a2, .LBB27_8
# %bb.1:                                # %.preheader
	li	a1, 0
	li	a2, 0
	li	s2, 0
	li	a3, 0
	li	a4, 0
	li	a0, -15
	srli	a0, a0, 1
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	a0, 2
	addiw	a0, a0, -1406
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	lui	s10, %hi(img)
	lui	s11, %hi(imgY_org)
	addi	s7, sp, 344
	addi	s9, sp, 88
.LBB27_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_3 Depth 2
                                        #       Child Loop BB27_4 Depth 3
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	li	s6, 0
	srli	a0, a1, 3
	slli	a0, a0, 8
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	and	a3, a1, a3
	sd	a2, 32(sp)                      # 8-byte Folded Spill
	slli	a1, a2, 3
	andi	a5, a1, 8
	slli	a1, a4, 2
	andi	a1, a1, 8
	sd	a4, 16(sp)                      # 8-byte Folded Spill
	slli	a2, a4, 3
	andi	a2, a2, 8
	addi	a1, a1, 8
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	addi	s3, a2, 8
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	slli	a1, a5, 1
	or	a0, a0, a1
	lui	a1, %hi(tr4x4)
	addi	a1, a1, %lo(tr4x4)
	ld	a2, 0(sp)                       # 8-byte Folded Reload
	add	a1, a1, a2
	add	s1, a1, a0
	lui	a1, %hi(tr8x8)
	addi	a1, a1, %lo(tr8x8)
	add	a1, a1, a2
	add	s5, a1, a0
.LBB27_3:                               #   Parent Loop BB27_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_4 Depth 3
	ld	a0, %lo(img)(s10)
	lw	a0, 172(a0)
	sd	a3, 80(sp)                      # 8-byte Folded Spill
	add	a0, a3, a0
	slli	s4, a0, 3
	sd	s5, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	ld	s8, 56(sp)                      # 8-byte Folded Reload
.LBB27_4:                               #   Parent Loop BB27_2 Depth=1
                                        #     Parent Loop BB27_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, %lo(img)(s10)
	ld	a5, %lo(imgY_org)(s11)
	lw	a0, 168(a0)
	add	a5, a5, s4
	ld	a6, 0(a5)
	add	a0, s8, a0
	slli	a4, a0, 1
	add	a0, a6, a4
	lhu	a2, 0(a0)
	lhu	a0, -102(s1)
	subw	a1, a2, a0
	slli	a7, s6, 2
	add	a0, s7, a7
	sw	a1, 0(a0)
	lhu	a3, -102(s5)
	addi	a1, a4, 2
	add	t0, a6, a1
	lhu	t0, 0(t0)
	lhu	t1, -100(s1)
	subw	a2, a2, a3
	add	a3, s9, a7
	sw	a2, 0(a3)
	subw	a2, t0, t1
	addi	a3, a7, 4
	add	t1, s7, a3
	sw	a2, 0(t1)
	lhu	t1, -100(s5)
	addi	a2, a4, 4
	add	t2, a6, a2
	lhu	t2, 0(t2)
	lhu	t3, -98(s1)
	subw	t0, t0, t1
	add	a3, s9, a3
	sw	t0, 0(a3)
	subw	a3, t2, t3
	addi	t0, a7, 8
	add	t1, s7, t0
	sw	a3, 0(t1)
	lhu	t1, -98(s5)
	addi	a3, a4, 6
	add	a6, a6, a3
	lhu	a6, 0(a6)
	lhu	t3, -96(s1)
	subw	t1, t2, t1
	add	t0, s9, t0
	sw	t1, 0(t0)
	subw	t0, a6, t3
	addi	a7, a7, 12
	ld	t1, 8(a5)
	add	t2, s7, a7
	sw	t0, 0(t2)
	lhu	t0, -96(s5)
	add	t2, t1, a4
	lhu	t2, 0(t2)
	lhu	t3, -70(s1)
	subw	a6, a6, t0
	add	a7, s9, a7
	sw	a6, 0(a7)
	subw	a6, t2, t3
	addiw	a7, s6, 4
	slli	a7, a7, 2
	add	t0, s7, a7
	sw	a6, 0(t0)
	lhu	a6, -70(s5)
	add	t0, t1, a1
	lhu	t0, 0(t0)
	lhu	t3, -68(s1)
	subw	a6, t2, a6
	add	t2, s9, a7
	sw	a6, 0(t2)
	subw	a6, t0, t3
	addi	t2, a7, 4
	add	t3, s7, t2
	sw	a6, 0(t3)
	lhu	a6, -68(s5)
	add	t3, t1, a2
	lhu	t3, 0(t3)
	lhu	t4, -66(s1)
	subw	a6, t0, a6
	add	t2, s9, t2
	sw	a6, 0(t2)
	subw	a6, t3, t4
	addi	t0, a7, 8
	add	t2, s7, t0
	sw	a6, 0(t2)
	lhu	a6, -66(s5)
	add	t1, t1, a3
	lhu	t1, 0(t1)
	lhu	t2, -64(s1)
	subw	a6, t3, a6
	add	t0, s9, t0
	sw	a6, 0(t0)
	subw	a6, t1, t2
	addi	a7, a7, 12
	ld	t0, 16(a5)
	add	t2, s7, a7
	sw	a6, 0(t2)
	lhu	a6, -64(s5)
	add	t2, t0, a4
	lhu	t2, 0(t2)
	lhu	t3, -38(s1)
	subw	a6, t1, a6
	add	a7, s9, a7
	sw	a6, 0(a7)
	subw	a6, t2, t3
	addiw	a7, s6, 8
	slli	a7, a7, 2
	add	t1, s7, a7
	sw	a6, 0(t1)
	lhu	a6, -38(s5)
	add	t1, t0, a1
	lhu	t1, 0(t1)
	lhu	t3, -36(s1)
	subw	a6, t2, a6
	add	t2, s9, a7
	sw	a6, 0(t2)
	subw	a6, t1, t3
	addi	t2, a7, 4
	add	t3, s7, t2
	sw	a6, 0(t3)
	lhu	a6, -36(s5)
	add	t3, t0, a2
	lhu	t3, 0(t3)
	lhu	t4, -34(s1)
	subw	a6, t1, a6
	add	t2, s9, t2
	sw	a6, 0(t2)
	subw	a6, t3, t4
	addi	t1, a7, 8
	add	t2, s7, t1
	sw	a6, 0(t2)
	lhu	a6, -34(s5)
	add	t0, t0, a3
	lhu	t0, 0(t0)
	lhu	t2, -32(s1)
	subw	a6, t3, a6
	add	t1, s9, t1
	sw	a6, 0(t1)
	subw	a6, t0, t2
	addi	a7, a7, 12
	ld	a5, 24(a5)
	add	t1, s7, a7
	sw	a6, 0(t1)
	lhu	a6, -32(s5)
	add	a4, a5, a4
	lhu	a4, 0(a4)
	lhu	t1, -6(s1)
	subw	a6, t0, a6
	add	a7, s9, a7
	sw	a6, 0(a7)
	subw	a6, a4, t1
	addiw	s6, s6, 12
	slli	a7, s6, 2
	add	t0, s7, a7
	sw	a6, 0(t0)
	lhu	a6, -6(s5)
	add	a1, a5, a1
	lhu	a1, 0(a1)
	lhu	t0, -4(s1)
	subw	a4, a4, a6
	add	a6, s9, a7
	sw	a4, 0(a6)
	subw	a4, a1, t0
	addi	a6, a7, 4
	add	t0, s7, a6
	sw	a4, 0(t0)
	lhu	a4, -4(s5)
	add	a2, a5, a2
	lhu	a2, 0(a2)
	lhu	t0, -2(s1)
	subw	a1, a1, a4
	add	a6, s9, a6
	sw	a1, 0(a6)
	subw	a1, a2, t0
	addi	a4, a7, 8
	add	a6, s7, a4
	sw	a1, 0(a6)
	lhu	a1, -2(s5)
	add	a3, a5, a3
	lhu	a3, 0(a3)
	lhu	a5, 0(s1)
	subw	a2, a2, a1
	add	a4, s9, a4
	sw	a2, 0(a4)
	subw	a1, a3, a5
	addi	a7, a7, 12
	lhu	a2, 0(s5)
	add	a4, s7, a7
	sw	a1, 0(a4)
	ld	a1, %lo(input)(s0)
	subw	a3, a3, a2
	add	a7, s9, a7
	sw	a3, 0(a7)
	lw	a1, 24(a1)
	addiw	s6, s6, 4
	call	SATD
	addw	s2, a0, s2
	addi	s8, s8, 4
	addi	s1, s1, 8
	addi	s5, s5, 8
	bltu	s8, s3, .LBB27_4
# %bb.5:                                #   in Loop: Header=BB27_3 Depth=2
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	addi	a3, a3, 4
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	addi	s1, s1, 128
	ld	s5, 64(sp)                      # 8-byte Folded Reload
	addi	s5, s5, 128
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	bltu	a3, a0, .LBB27_3
# %bb.6:                                #   in Loop: Header=BB27_2 Depth=1
	ld	a0, %lo(input)(s0)
	lw	a1, 24(a0)
	addi	a0, sp, 88
	call	SATD8X8
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	addw	a3, a0, a3
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	addiw	a4, a4, 1
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	xori	a2, a2, 1
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 4
	li	a0, 4
	bne	a4, a0, .LBB27_2
# %bb.7:
	slt	a0, a3, s2
.LBB27_8:
	ld	ra, 696(sp)                     # 8-byte Folded Reload
	ld	s0, 688(sp)                     # 8-byte Folded Reload
	ld	s1, 680(sp)                     # 8-byte Folded Reload
	ld	s2, 672(sp)                     # 8-byte Folded Reload
	ld	s3, 664(sp)                     # 8-byte Folded Reload
	ld	s4, 656(sp)                     # 8-byte Folded Reload
	ld	s5, 648(sp)                     # 8-byte Folded Reload
	ld	s6, 640(sp)                     # 8-byte Folded Reload
	ld	s7, 632(sp)                     # 8-byte Folded Reload
	ld	s8, 624(sp)                     # 8-byte Folded Reload
	ld	s9, 616(sp)                     # 8-byte Folded Reload
	ld	s10, 608(sp)                    # 8-byte Folded Reload
	ld	s11, 600(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 704
	ret
.Lfunc_end27:
	.size	GetBestTransformP8x8, .Lfunc_end27-GetBestTransformP8x8
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	set_mbaff_parameters            # -- Begin function set_mbaff_parameters
	.p2align	2
	.type	set_mbaff_parameters,@function
set_mbaff_parameters:                   # @set_mbaff_parameters
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
	lui	s5, %hi(img)
	ld	s10, %lo(img)(s5)
	lui	a0, 8
	add	a0, s10, a0
	ld	s2, -1192(a0)
	lw	s4, 12(s10)
	lui	a0, %hi(best_mode)
	lui	s7, %hi(enc_picture)
	ld	s6, %lo(enc_picture)(s7)
	lh	s3, %lo(best_mode)(a0)
	lw	a0, 24(s10)
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	lui	s8, 2
	add	s6, s6, s8
	lw	a0, 156(s10)
	ld	a1, -1768(s6)
	lui	s9, %hi(rdopt)
	ld	s11, %lo(rdopt)(s9)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s10)
	ld	a2, 0(a0)
	ld	s0, 104(s10)
	addi	a0, s11, 8
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 156(s10)
	ld	a1, -1768(s6)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s10)
	ld	a2, 8(a0)
	addi	a0, s11, 40
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 156(s10)
	ld	a1, -1768(s6)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s10)
	ld	a2, 16(a0)
	addi	a0, s11, 72
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 156(s10)
	ld	a1, -1768(s6)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s10)
	ld	a2, 24(a0)
	addi	a0, s11, 104
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 156(s10)
	ld	a1, -1768(s6)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s10)
	ld	a2, 32(a0)
	addi	a0, s11, 136
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 156(s10)
	ld	a1, -1768(s6)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s10)
	ld	a2, 40(a0)
	addi	a0, s11, 168
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 156(s10)
	ld	a1, -1768(s6)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s10)
	ld	a2, 48(a0)
	addi	a0, s11, 200
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 156(s10)
	ld	a1, -1768(s6)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s10)
	ld	a2, 56(a0)
	addi	a0, s11, 232
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	ld	s5, %lo(img)(s5)
	lw	a1, 156(s5)
	ld	a2, -1768(s6)
	addi	a0, s11, 264
	lui	s6, 22
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a2, 152(s5)
	ld	a1, 64(a1)
	addiw	s10, s6, 436
	add	s10, s5, s10
	slli	a2, a2, 1
	add	a1, a1, a2
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s7)
	add	s8, a0, s8
	lw	a0, 156(s5)
	ld	a1, -1768(s8)
	ld	s7, %lo(rdopt)(s9)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s5)
	ld	a2, 72(a0)
	addi	a0, s7, 296
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 156(s5)
	ld	a1, -1768(s8)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s5)
	ld	a2, 80(a0)
	addi	a0, s7, 328
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 156(s5)
	ld	a1, -1768(s8)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s5)
	ld	a2, 88(a0)
	addi	a0, s7, 360
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 156(s5)
	ld	a1, -1768(s8)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s5)
	ld	a2, 96(a0)
	addi	a0, s7, 392
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 156(s5)
	ld	a1, -1768(s8)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s5)
	ld	a2, 104(a0)
	addi	a0, s7, 424
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 156(s5)
	ld	a1, -1768(s8)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s5)
	ld	a2, 112(a0)
	addi	a0, s7, 456
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 156(s5)
	ld	a1, -1768(s8)
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s5)
	ld	a2, 120(a0)
	addi	a0, s7, 488
	slli	a1, a1, 1
	add	a1, a2, a1
	li	a2, 32
	call	memcpy
	lw	a0, 0(s10)
	li	a1, 528
	mul	a1, s4, a1
	add	s2, s2, a1
	beqz	a0, .LBB28_5
# %bb.1:
	lw	a0, 12(s10)
	blez	a0, .LBB28_5
# %bb.2:                                # %.preheader1
	li	s4, 0
	li	s7, 0
	lui	s8, %hi(rdopt)
	lui	s9, %hi(enc_picture)
	lui	s10, 2
	lui	s11, 22
	lui	s1, %hi(img)
.LBB28_3:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(enc_picture)(s9)
	add	a0, a0, s10
	ld	a0, -1728(a0)
	ld	a1, %lo(rdopt)(s8)
	lw	a2, 164(s5)
	ld	a0, 0(a0)
	add	a1, a1, s4
	add	a2, s7, a2
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a2, 0(a0)
	lw	a3, 160(s5)
	add	s5, s5, s11
	lw	a4, 444(s5)
	addi	a0, a1, 520
	slli	a1, a3, 1
	add	a1, a2, a1
	slli	a2, a4, 1
	call	memcpy
	ld	a0, %lo(enc_picture)(s9)
	ld	a1, %lo(img)(s1)
	add	a0, a0, s10
	ld	a0, -1728(a0)
	ld	a2, %lo(rdopt)(s8)
	lw	a3, 164(a1)
	ld	a0, 8(a0)
	add	a2, a2, s4
	add	a3, s7, a3
	slli	a3, a3, 3
	add	a0, a0, a3
	ld	a3, 0(a0)
	lw	a4, 160(a1)
	add	a1, a1, s11
	lw	a5, 444(a1)
	addi	a0, a2, 1032
	slli	a1, a4, 1
	add	a1, a3, a1
	slli	a2, a5, 1
	call	memcpy
	ld	s5, %lo(img)(s1)
	add	a0, s5, s11
	lw	a0, 448(a0)
	addi	s7, s7, 1
	addi	s4, s4, 32
	blt	s7, a0, .LBB28_3
# %bb.4:
	lui	a0, %hi(rdopt)
	ld	s7, %lo(rdopt)(a0)
.LBB28_5:
	addiw	a0, s6, 84
	add	a0, s5, a0
	lw	a1, 0(a0)
	sw	s3, 1640(s7)
	sw	a1, 1696(s7)
	lw	a1, 364(s2)
	ld	a2, 368(s2)
	lw	a3, 72(s2)
	lw	a4, 468(s2)
	sw	a1, 1624(s7)
	sd	a2, 1632(s7)
	sw	a3, 1560(s7)
	sw	a4, 1704(s7)
	bnez	a3, .LBB28_8
# %bb.6:
	slli	s3, s3, 48
	srli	a1, s3, 48
	beqz	a1, .LBB28_8
# %bb.7:
	sw	zero, 1640(s7)
.LBB28_8:
	lw	a0, 344(a0)
	li	a1, -3
	blt	a0, a1, .LBB28_12
# %bb.9:                                # %.preheader
	li	s3, 0
	li	s4, -1
	lui	s6, %hi(rdopt)
	lui	s7, 3
	lui	s8, %hi(img)
	lui	s9, 22
.LBB28_10:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(rdopt)(s6)
	ld	a0, 1544(a0)
	add	s5, s5, s7
	ld	a1, 1848(s5)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s3
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(rdopt)(s6)
	ld	a1, %lo(img)(s8)
	ld	a0, 1544(a0)
	add	a1, a1, s7
	ld	a1, 1848(a1)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s3
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(rdopt)(s6)
	ld	a1, %lo(img)(s8)
	ld	a0, 1544(a0)
	add	a1, a1, s7
	ld	a1, 1848(a1)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s3
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(rdopt)(s6)
	ld	a1, %lo(img)(s8)
	ld	a0, 1544(a0)
	add	a1, a1, s7
	ld	a1, 1848(a1)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s3
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(rdopt)(s6)
	ld	a1, %lo(img)(s8)
	ld	a0, 1544(a0)
	add	a1, a1, s7
	ld	a1, 1848(a1)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s3
	ld	a1, 0(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(rdopt)(s6)
	ld	a1, %lo(img)(s8)
	ld	a0, 1544(a0)
	add	a1, a1, s7
	ld	a1, 1848(a1)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s3
	ld	a1, 0(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(rdopt)(s6)
	ld	a1, %lo(img)(s8)
	ld	a0, 1544(a0)
	add	a1, a1, s7
	ld	a1, 1848(a1)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s3
	ld	a1, 0(a1)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(rdopt)(s6)
	ld	a1, %lo(img)(s8)
	ld	a0, 1544(a0)
	add	a1, a1, s7
	ld	a1, 1848(a1)
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a1, a1, s3
	ld	a1, 0(a1)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	s5, %lo(img)(s8)
	add	a0, s5, s9
	lw	a0, 428(a0)
	addiw	a0, a0, 3
	addi	s4, s4, 1
	addi	s3, s3, 8
	blt	s4, a0, .LBB28_10
# %bb.11:
	lui	a0, %hi(rdopt)
	ld	s7, %lo(rdopt)(a0)
.LBB28_12:
	ld	a0, 1552(s7)
	lui	s1, 3
	add	s5, s5, s1
	ld	a1, 1856(s5)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	lui	s3, %hi(rdopt)
	ld	a0, %lo(rdopt)(s3)
	lui	s4, %hi(img)
	ld	a1, %lo(img)(s4)
	ld	a0, 1552(a0)
	add	a1, a1, s1
	ld	a1, 1856(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s4)
	ld	a0, 1552(a0)
	add	a1, a1, s1
	ld	a1, 1856(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s4)
	ld	a0, 1552(a0)
	add	a1, a1, s1
	ld	a1, 1856(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s4)
	ld	a0, 1552(a0)
	add	a1, a1, s1
	ld	a1, 1856(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s4)
	ld	a0, 1552(a0)
	add	a1, a1, s1
	ld	a1, 1856(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(rdopt)(s3)
	ld	a1, 376(s2)
	sd	a1, 1568(a0)
	ld	a1, 384(s2)
	sd	a1, 1576(a0)
	ld	a1, 392(s2)
	sd	a1, 1584(a0)
	ld	a1, 400(s2)
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	sd	a1, 1592(a0)
	lui	a1, 2
	addiw	a1, a1, -1712
	add	a2, a2, a1
	ld	a1, %lo(img)(s4)
	ld	a3, 0(a2)
	lw	a4, 148(a1)
	ld	a3, 0(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	ld	a3, 0(a3)
	lw	a4, 144(a1)
	add	a3, a3, a4
	lbu	a4, 1(a3)
	lbu	a5, 0(a3)
	lbu	a6, 2(a3)
	lb	a3, 3(a3)
	slli	a4, a4, 8
	or	a4, a4, a5
	slli	a6, a6, 16
	slli	a3, a3, 24
	or	a3, a3, a6
	or	a3, a3, a4
	sw	a3, 1664(a0)
	ld	a4, 0(a2)
	lw	a3, 144(a1)
	li	a5, 1
	ld	a6, 0(sp)                       # 8-byte Folded Reload
	bne	a6, a5, .LBB28_14
# %bb.13:
	lw	a5, 148(a1)
	ld	a4, 8(a4)
	slli	a5, a5, 3
	add	a4, a4, a5
	ld	a4, 0(a4)
	add	a3, a4, a3
	lbu	a4, 1(a3)
	lbu	a5, 0(a3)
	lbu	a6, 2(a3)
	lb	a3, 3(a3)
	slli	a4, a4, 8
	or	a4, a4, a5
	slli	a6, a6, 16
	slli	a3, a3, 24
	or	a3, a3, a6
	or	a3, a3, a4
	sw	a3, 1680(a0)
	ld	a3, 0(a2)
	lw	a4, 148(a1)
	ld	a3, 0(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	ld	a3, 8(a3)
	lw	a4, 144(a1)
	add	a3, a3, a4
	lbu	a4, 1(a3)
	lbu	a5, 0(a3)
	lbu	a6, 2(a3)
	lb	a3, 3(a3)
	slli	a4, a4, 8
	or	a4, a4, a5
	slli	a6, a6, 16
	slli	a3, a3, 24
	or	a3, a3, a6
	or	a3, a3, a4
	sw	a3, 1668(a0)
	ld	a3, 0(a2)
	lw	a4, 148(a1)
	ld	a3, 8(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	ld	a3, 8(a3)
	lw	a4, 144(a1)
	add	a3, a3, a4
	lbu	a4, 1(a3)
	lbu	a5, 0(a3)
	lbu	a6, 2(a3)
	lb	a3, 3(a3)
	slli	a4, a4, 8
	or	a4, a4, a5
	slli	a6, a6, 16
	slli	a3, a3, 24
	or	a3, a3, a6
	or	a3, a3, a4
	sw	a3, 1684(a0)
	ld	a3, 0(a2)
	lw	a4, 148(a1)
	ld	a3, 0(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	ld	a3, 16(a3)
	lw	a4, 144(a1)
	add	a3, a3, a4
	lbu	a4, 1(a3)
	lbu	a5, 0(a3)
	lbu	a6, 2(a3)
	lb	a3, 3(a3)
	slli	a4, a4, 8
	or	a4, a4, a5
	slli	a6, a6, 16
	slli	a3, a3, 24
	or	a3, a3, a6
	or	a3, a3, a4
	sw	a3, 1672(a0)
	ld	a3, 0(a2)
	lw	a4, 148(a1)
	ld	a3, 8(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	ld	a3, 16(a3)
	lw	a4, 144(a1)
	add	a3, a3, a4
	lbu	a4, 1(a3)
	lbu	a5, 0(a3)
	lbu	a6, 2(a3)
	lb	a3, 3(a3)
	slli	a4, a4, 8
	or	a4, a4, a5
	slli	a6, a6, 16
	slli	a3, a3, 24
	or	a3, a3, a6
	or	a3, a3, a4
	sw	a3, 1688(a0)
	ld	a3, 0(a2)
	lw	a4, 148(a1)
	ld	a3, 0(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	ld	a3, 24(a3)
	lw	a4, 144(a1)
	add	a3, a3, a4
	lbu	a4, 1(a3)
	lbu	a5, 0(a3)
	lbu	a6, 2(a3)
	lb	a3, 3(a3)
	slli	a4, a4, 8
	or	a4, a4, a5
	slli	a6, a6, 16
	slli	a3, a3, 24
	or	a3, a3, a6
	or	a3, a3, a4
	sw	a3, 1676(a0)
	ld	a2, 0(a2)
	lw	a3, 148(a1)
	ld	a2, 8(a2)
	slli	a3, a3, 3
	add	a2, a2, a3
	ld	a2, 24(a2)
	lw	a1, 144(a1)
	add	a1, a2, a1
	lbu	a2, 1(a1)
	lbu	a3, 0(a1)
	lbu	a4, 2(a1)
	lb	a1, 3(a1)
	slli	a2, a2, 8
	or	a2, a2, a3
	slli	a4, a4, 16
	slli	a1, a1, 24
	or	a1, a1, a4
	or	a1, a1, a2
	sw	a1, 1692(a0)
	lh	a2, 476(s2)
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s4)
	sh	a2, 1564(a0)
	j	.LBB28_15
.LBB28_14:
	lw	a5, 148(a1)
	ld	a4, 0(a4)
	slli	a5, a5, 3
	add	a4, a4, a5
	ld	a4, 8(a4)
	add	a3, a4, a3
	lbu	a4, 1(a3)
	lbu	a5, 0(a3)
	lbu	a6, 2(a3)
	lb	a3, 3(a3)
	slli	a4, a4, 8
	or	a4, a4, a5
	slli	a6, a6, 16
	slli	a3, a3, 24
	or	a3, a3, a6
	or	a3, a3, a4
	sw	a3, 1668(a0)
	ld	a3, 0(a2)
	lw	a4, 148(a1)
	ld	a3, 0(a3)
	slli	a4, a4, 3
	add	a3, a3, a4
	ld	a3, 16(a3)
	lw	a4, 144(a1)
	add	a3, a3, a4
	lbu	a4, 1(a3)
	lbu	a5, 0(a3)
	lbu	a6, 2(a3)
	lb	a3, 3(a3)
	slli	a4, a4, 8
	or	a4, a4, a5
	slli	a6, a6, 16
	slli	a3, a3, 24
	or	a3, a3, a6
	or	a3, a3, a4
	sw	a3, 1672(a0)
	ld	a2, 0(a2)
	lw	a3, 148(a1)
	ld	a2, 0(a2)
	slli	a3, a3, 3
	add	a2, a2, a3
	ld	a2, 24(a2)
	lw	a3, 144(a1)
	add	a2, a2, a3
	lbu	a3, 1(a2)
	lbu	a4, 0(a2)
	lbu	a5, 2(a2)
	lb	a2, 3(a2)
	slli	a3, a3, 8
	or	a3, a3, a4
	slli	a5, a5, 16
	slli	a2, a2, 24
	or	a2, a2, a5
	or	a2, a2, a3
	sw	a2, 1676(a0)
.LBB28_15:
	lw	a2, 344(s2)
	sw	a2, 1620(a0)
	lw	a2, 340(s2)
	sw	a2, 1616(a0)
	lw	a2, 336(s2)
	sw	a2, 1612(a0)
	lw	a2, 332(s2)
	sw	a2, 1608(a0)
	lw	a2, 148(a1)
	addi	a0, a2, -1
	slli	a2, a2, 3
	lui	a3, %hi(rdopt)
	lui	a4, %hi(img)
.LBB28_16:                              # =>This Inner Loop Header: Depth=1
	ld	a5, %lo(rdopt)(a3)
	ld	a5, 1600(a5)
	add	a5, a5, a2
	ld	a5, 0(a5)
	lw	a1, 144(a1)
	add	a6, s0, a2
	ld	a6, 0(a6)
	add	a5, a5, a1
	add	a1, a6, a1
	lbu	a6, 2(a1)
	lb	a7, 3(a1)
	lbu	t0, 0(a1)
	lbu	a1, 1(a1)
	sb	a6, 2(a5)
	sb	a7, 3(a5)
	sb	t0, 0(a5)
	sb	a1, 1(a5)
	ld	a1, %lo(img)(a4)
	lw	a5, 148(a1)
	addiw	a5, a5, 3
	addi	a0, a0, 1
	addi	a2, a2, 8
	blt	a0, a5, .LBB28_16
# %bb.17:
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
.Lfunc_end28:
	.size	set_mbaff_parameters, .Lfunc_end28-set_mbaff_parameters
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	store_coding_state_cs_cm        # -- Begin function store_coding_state_cs_cm
	.p2align	2
	.type	store_coding_state_cs_cm,@function
store_coding_state_cs_cm:               # @store_coding_state_cs_cm
# %bb.0:
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	tail	store_coding_state
.Lfunc_end29:
	.size	store_coding_state_cs_cm, .Lfunc_end29-store_coding_state_cs_cm
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	reset_coding_state_cs_cm        # -- Begin function reset_coding_state_cs_cm
	.p2align	2
	.type	reset_coding_state_cs_cm,@function
reset_coding_state_cs_cm:               # @reset_coding_state_cs_cm
# %bb.0:
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	tail	reset_coding_state
.Lfunc_end30:
	.size	reset_coding_state_cs_cm, .Lfunc_end30-reset_coding_state_cs_cm
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	assign_enc_picture_params       # -- Begin function assign_enc_picture_params
	.p2align	2
	.type	assign_enc_picture_params,@function
assign_enc_picture_params:              # @assign_enc_picture_params
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
	li	a7, 1
	mv	s1, a6
	mv	s0, a5
	mv	t0, a2
	mv	s2, a1
	beq	a0, a7, .LBB31_22
# %bb.1:
	li	a1, 2
	bne	a0, a1, .LBB31_28
# %bb.2:
	lui	a5, %hi(img)
	ld	a0, %lo(img)(a5)
	lw	a0, 148(a0)
	li	a6, 0
	li	a7, 0
	slliw	n14, t0, 1
	addiw	a2, a3, 1
	addw	a0, n14, a0
	li	t0, 1
	lui	t1, %hi(enc_picture)
	lui	t2, 2
	slli	t3, a0, 3
	li	t4, -1
	addiw	t5, t2, -1704
	li	t6, 32
	lui	n1, 22
	slli	n2, n14, 3
	slli	a0, s0, 3
	li	n5, 264
	mul	n3, a2, n5
	slli	a1, a4, 3
	addiw	n4, t2, -1712
	mul	n5, a3, n5
	j	.LBB31_6
.LBB31_3:                               #   in Loop: Header=BB31_6 Depth=1
	ld	n8, 0(n9)
	ld	n8, 8(n8)
	add	n8, n8, t3
	ld	n8, 0(n8)
	add	n7, n8, n7
	sb	t4, 0(n7)
	ld	n7, %lo(enc_picture)(t1)
	add	n7, n7, t5
	ld	n8, 16(n7)
	ld	n7, 0(n7)
	ld	n8, 8(n8)
	ld	n7, 8(n7)
	add	n8, n8, t3
	ld	n8, 0(n8)
	add	n7, n7, t3
	ld	n9, 0(n7)
	add	n8, n8, n6
	ld	n7, 0(n8)
	li	n8, 0
	add	n6, n9, n6
	sd	t4, 0(n6)
	sh	zero, 0(n7)
.LBB31_4:                               #   in Loop: Header=BB31_6 Depth=1
	sh	n8, 2(n7)
.LBB31_5:                               #   in Loop: Header=BB31_6 Depth=1
	addi	a7, a7, 8
	addi	a6, a6, 1
	beq	a7, t6, .LBB31_12
.LBB31_6:                               # =>This Inner Loop Header: Depth=1
	ld	n8, %lo(img)(a5)
	lw	n6, 144(n8)
	addw	n7, a6, n6
	slli	n6, n7, 3
	bne	s2, t0, .LBB31_8
# %bb.7:                                #   in Loop: Header=BB31_6 Depth=1
	ld	n8, %lo(enc_picture)(t1)
	add	n8, n8, t2
	ld	n8, -1712(n8)
	ld	n8, 0(n8)
	add	n8, n8, t3
	ld	n8, 0(n8)
	add	n8, n8, n7
	sb	t4, 0(n8)
	ld	n8, %lo(enc_picture)(t1)
	add	n9, n8, t5
	ld	n10, 16(n9)
	ld	n9, 0(n9)
	ld	n10, 0(n10)
	ld	n9, 0(n9)
	add	n10, n10, t3
	ld	n10, 0(n10)
	add	n9, n9, t3
	ld	n9, 0(n9)
	add	n10, n10, n6
	ld	n10, 0(n10)
	add	n9, n9, n6
	sd	t4, 0(n9)
	sh	zero, 0(n10)
	sh	zero, 2(n10)
	bnez	s1, .LBB31_10
	j	.LBB31_5
.LBB31_8:                               #   in Loop: Header=BB31_6 Depth=1
	add	n8, n8, n1
	ld	n8, -776(n8)
	add	n8, n8, n2
	ld	n8, 0(n8)
	ld	n9, %lo(enc_picture)(t1)
	add	n8, n8, a7
	ld	n8, 0(n8)
	add	n9, n9, t2
	ld	n9, -1712(n9)
	ld	n8, 0(n8)
	ld	n9, 0(n9)
	add	n8, n8, a1
	ld	n8, 0(n8)
	add	n9, n9, t3
	ld	n9, 0(n9)
	ld	n10, 16(n8)
	add	n9, n9, n7
	sb	a4, 0(n9)
	ld	n8, %lo(enc_picture)(t1)
	add	n9, n8, n4
	ld	n11, 24(n9)
	ld	n11, 0(n11)
	add	n11, n11, t3
	ld	n11, 0(n11)
	ld	n12, 8(n9)
	lh	n13, 0(n10)
	add	n11, n11, n6
	ld	n11, 0(n11)
	ld	n12, 0(n12)
	sh	n13, 0(n11)
	add	n13, n5, a1
	add	n13, n8, n13
	add	n12, n12, t3
	ld	n12, 0(n12)
	ld	n13, 24(n13)
	lh	n10, 2(n10)
	add	n12, n12, n6
	sd	n13, 0(n12)
	sh	n10, 2(n11)
	beqz	s1, .LBB31_5
# %bb.9:                                #   in Loop: Header=BB31_6 Depth=1
	beqz	s2, .LBB31_3
.LBB31_10:                              #   in Loop: Header=BB31_6 Depth=1
	add	n8, n8, t2
	ld	n8, -1712(n8)
	ld	n8, 8(n8)
	add	n8, n8, t3
	ld	n8, 0(n8)
	add	n7, n8, n7
	sb	s0, 0(n7)
	bltz	s0, .LBB31_5
# %bb.11:                               #   in Loop: Header=BB31_6 Depth=1
	ld	n7, %lo(img)(a5)
	add	n7, n7, n1
	ld	n7, -776(n7)
	add	n7, n7, n2
	ld	n7, 0(n7)
	add	n7, n7, a7
	ld	n7, 0(n7)
	ld	n8, %lo(enc_picture)(t1)
	ld	n7, 8(n7)
	add	n9, n8, t5
	ld	n10, 16(n9)
	add	n7, n7, a0
	ld	n7, 0(n7)
	ld	n10, 8(n10)
	ld	n11, 16(n7)
	add	n10, n10, t3
	ld	n7, 0(n10)
	ld	n9, 0(n9)
	lh	n10, 0(n11)
	add	n7, n7, n6
	ld	n7, 0(n7)
	ld	n9, 8(n9)
	add	n12, n3, a0
	add	n8, n8, n12
	sh	n10, 0(n7)
	add	n9, n9, t3
	ld	n9, 0(n9)
	ld	n10, 24(n8)
	lhu	n8, 2(n11)
	add	n6, n9, n6
	sd	n10, 0(n6)
	j	.LBB31_4
.LBB31_12:
	lui	a5, %hi(img)
	ld	a6, %lo(img)(a5)
	lw	t0, 148(a6)
	li	a6, 0
	li	a7, 0
	add	t0, t0, n14
	addiw	t2, t0, 1
	addi	n1, n14, 1
	li	n12, 1
	lui	t0, %hi(enc_picture)
	lui	t1, 2
	slli	t2, t2, 3
	li	t3, -1
	addiw	t4, t1, -1704
	li	t5, 32
	lui	t6, 22
	slli	n1, n1, 3
	li	n3, 264
	mul	a2, a2, n3
	addiw	n2, t1, -1712
	mul	n3, a3, n3
	j	.LBB31_16
.LBB31_13:                              #   in Loop: Header=BB31_16 Depth=1
	ld	n6, 0(n7)
	ld	n6, 8(n6)
	add	n6, n6, t2
	ld	n6, 0(n6)
	add	n5, n6, n5
	sb	t3, 0(n5)
	ld	n5, %lo(enc_picture)(t0)
	add	n5, n5, t4
	ld	n6, 16(n5)
	ld	n5, 0(n5)
	ld	n6, 8(n6)
	ld	n5, 8(n5)
	add	n6, n6, t2
	ld	n6, 0(n6)
	add	n5, n5, t2
	ld	n7, 0(n5)
	add	n6, n6, n4
	ld	n5, 0(n6)
	li	n6, 0
	add	n4, n7, n4
	sd	t3, 0(n4)
	sh	zero, 0(n5)
.LBB31_14:                              #   in Loop: Header=BB31_16 Depth=1
	sh	n6, 2(n5)
.LBB31_15:                              #   in Loop: Header=BB31_16 Depth=1
	addi	a7, a7, 8
	addi	a6, a6, 1
	bne	a7, t5, .LBB31_16
	j	.LBB31_83
.LBB31_16:                              # =>This Inner Loop Header: Depth=1
	ld	n6, %lo(img)(a5)
	lw	n4, 144(n6)
	addw	n5, a6, n4
	slli	n4, n5, 3
	bne	s2, n12, .LBB31_18
# %bb.17:                               #   in Loop: Header=BB31_16 Depth=1
	ld	n6, %lo(enc_picture)(t0)
	add	n6, n6, t1
	ld	n6, -1712(n6)
	ld	n6, 0(n6)
	add	n6, n6, t2
	ld	n6, 0(n6)
	add	n6, n6, n5
	sb	t3, 0(n6)
	ld	n6, %lo(enc_picture)(t0)
	add	n7, n6, t4
	ld	n8, 16(n7)
	ld	n7, 0(n7)
	ld	n8, 0(n8)
	ld	n7, 0(n7)
	add	n8, n8, t2
	ld	n8, 0(n8)
	add	n7, n7, t2
	ld	n7, 0(n7)
	add	n8, n8, n4
	ld	n8, 0(n8)
	add	n7, n7, n4
	sd	t3, 0(n7)
	sh	zero, 0(n8)
	sh	zero, 2(n8)
	bnez	s1, .LBB31_20
	j	.LBB31_15
.LBB31_18:                              #   in Loop: Header=BB31_16 Depth=1
	add	n6, n6, t6
	ld	n6, -776(n6)
	add	n6, n6, n1
	ld	n6, 0(n6)
	ld	n7, %lo(enc_picture)(t0)
	add	n6, n6, a7
	ld	n6, 0(n6)
	add	n7, n7, t1
	ld	n7, -1712(n7)
	ld	n6, 0(n6)
	ld	n7, 0(n7)
	add	n6, n6, a1
	ld	n6, 0(n6)
	add	n7, n7, t2
	ld	n7, 0(n7)
	ld	n8, 16(n6)
	add	n7, n7, n5
	sb	a4, 0(n7)
	ld	n6, %lo(enc_picture)(t0)
	add	n7, n6, n2
	ld	n9, 24(n7)
	ld	n9, 0(n9)
	add	n9, n9, t2
	ld	n9, 0(n9)
	ld	n10, 8(n7)
	lh	n11, 0(n8)
	add	n9, n9, n4
	ld	n9, 0(n9)
	ld	n10, 0(n10)
	sh	n11, 0(n9)
	add	n11, n3, a1
	add	n11, n6, n11
	add	n10, n10, t2
	ld	n10, 0(n10)
	ld	n11, 24(n11)
	lh	n8, 2(n8)
	add	n10, n10, n4
	sd	n11, 0(n10)
	sh	n8, 2(n9)
	beqz	s1, .LBB31_15
# %bb.19:                               #   in Loop: Header=BB31_16 Depth=1
	beqz	s2, .LBB31_13
.LBB31_20:                              #   in Loop: Header=BB31_16 Depth=1
	add	n6, n6, t1
	ld	n6, -1712(n6)
	ld	n6, 8(n6)
	add	n6, n6, t2
	ld	n6, 0(n6)
	add	n5, n6, n5
	sb	s0, 0(n5)
	bltz	s0, .LBB31_15
# %bb.21:                               #   in Loop: Header=BB31_16 Depth=1
	ld	n5, %lo(img)(a5)
	add	n5, n5, t6
	ld	n5, -776(n5)
	add	n5, n5, n1
	ld	n5, 0(n5)
	add	n5, n5, a7
	ld	n5, 0(n5)
	ld	n6, %lo(enc_picture)(t0)
	ld	n5, 8(n5)
	add	n7, n6, t4
	ld	n8, 16(n7)
	add	n5, n5, a0
	ld	n5, 0(n5)
	ld	n8, 8(n8)
	ld	n9, 16(n5)
	add	n8, n8, t2
	ld	n5, 0(n8)
	ld	n7, 0(n7)
	lh	n8, 0(n9)
	add	n5, n5, n4
	ld	n5, 0(n5)
	ld	n7, 8(n7)
	add	n10, a2, a0
	add	n6, n6, n10
	sh	n8, 0(n5)
	add	n7, n7, t2
	ld	n7, 0(n7)
	ld	n8, 24(n6)
	lhu	n6, 2(n9)
	add	n4, n7, n4
	sd	n8, 0(n4)
	j	.LBB31_14
.LBB31_22:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	sd	a3, 8(sp)                       # 8-byte Folded Spill
	bne	s2, a7, .LBB31_47
# %bb.23:
	lw	a1, 148(a0)
	andi	s10, t0, 2
	addw	a2, a1, s10
	addi	a3, s10, 4
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	addw	a3, a3, a1
	bge	a2, a3, .LBB31_58
# %bb.24:
	slli	a2, t0, 1
	andi	s9, a2, 2
	slli	a2, t0, 4
	andi	a2, a2, 16
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	slli	a2, t0, 63
	srai	a2, a2, 63
	andi	s8, a2, -2
	mv	s5, s9
	addi	s9, s9, 3
	add	s10, s10, a1
	lui	s11, %hi(enc_picture)
	ld	s6, %lo(enc_picture)(s11)
	sd	t0, 16(sp)                      # 8-byte Folded Spill
	slli	a2, t0, 3
	andi	a2, a2, 16
	slli	a1, a1, 3
	add	s3, a2, a1
	lui	s4, 2
	li	s7, 255
	j	.LBB31_26
.LBB31_25:                              #   in Loop: Header=BB31_26 Depth=1
	ld	s6, %lo(enc_picture)(s11)
	add	a0, s6, s4
	ld	a0, -1704(a0)
	ld	a0, 0(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	slli	a3, a1, 3
	ld	a4, 24(sp)                      # 8-byte Folded Reload
	add	a3, a4, a3
	add	a0, a0, a3
	subw	a1, s8, a1
	add	a1, a1, a2
	slli	a1, a1, 32
	srli	a1, a1, 29
	addi	a2, a1, 8
	li	a1, 255
	call	memset
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 148(a0)
	addi	s10, s10, 1
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	addw	a1, a2, a1
	addi	s3, s3, 8
	bge	s10, a1, .LBB31_61
.LBB31_26:                              # =>This Inner Loop Header: Depth=1
	add	s6, s6, s4
	ld	a1, -1712(s6)
	ld	a2, 0(a1)
	lw	a1, 144(a0)
	add	a2, a2, s3
	ld	a2, 0(a2)
	addw	a0, a1, s5
	add	a2, a2, a0
	sb	s7, 3(a2)
	sb	s7, 2(a2)
	sb	s7, 1(a2)
	sb	s7, 0(a2)
	ld	a2, %lo(enc_picture)(s11)
	add	a2, a2, s4
	ld	a2, -1688(a2)
	ld	a2, 0(a2)
	add	a2, a2, s3
	ld	a2, 0(a2)
	slli	a3, a0, 3
	add	a2, a2, a3
	ld	a3, 0(a2)
	sh	zero, 14(a3)
	sh	zero, 12(a3)
	sh	zero, 10(a3)
	sh	zero, 8(a3)
	sh	zero, 6(a3)
	sh	zero, 4(a3)
	sh	zero, 2(a3)
	addw	a2, s9, a1
	sh	zero, 0(a3)
	blt	a0, a2, .LBB31_25
# %bb.27:                               #   in Loop: Header=BB31_26 Depth=1
	mv	a2, a0
	j	.LBB31_25
.LBB31_28:
	li	a1, 0
	li	a2, 0
	slliw	n16, t0, 1
	addiw	n2, a3, 1
	addi	a5, n16, 1
	lui	a6, %hi(img)
	li	a7, 1
	lui	t0, %hi(enc_picture)
	lui	t1, 2
	li	t2, -1
	addiw	t3, t1, -1704
	li	t4, 32
	lui	t5, 22
	slli	t6, a5, 3
	slli	n1, s0, 3
	slli	a0, a0, 3
	li	n6, 264
	mul	n2, n2, n6
	slli	n3, n16, 3
	slli	n4, a4, 3
	addiw	n5, t1, -1712
	mul	n6, a3, n6
	j	.LBB31_32
.LBB31_29:                              #   in Loop: Header=BB31_32 Depth=1
	ld	n9, 0(n11)
	ld	n9, 8(n9)
	add	n9, n9, n7
	ld	n9, 0(n9)
	add	n8, n9, n8
	sb	t2, 0(n8)
	ld	n8, %lo(enc_picture)(t0)
	add	n8, n8, t3
	ld	n9, 16(n8)
	ld	n8, 0(n8)
	ld	n9, 8(n9)
	ld	n8, 8(n8)
	add	n9, n9, n7
	ld	n9, 0(n9)
	add	n7, n8, n7
	ld	n11, 0(n7)
	add	n9, n9, n10
	ld	n8, 0(n9)
	li	n7, 0
	add	n10, n11, n10
	sd	t2, 0(n10)
	sh	zero, 0(n8)
.LBB31_30:                              #   in Loop: Header=BB31_32 Depth=1
	sh	n7, 2(n8)
.LBB31_31:                              #   in Loop: Header=BB31_32 Depth=1
	addi	a2, a2, 8
	addi	a1, a1, 1
	beq	a2, t4, .LBB31_83
.LBB31_32:                              # =>This Inner Loop Header: Depth=1
	ld	n10, %lo(img)(a6)
	lw	n7, 148(n10)
	lw	n8, 144(n10)
	addw	n7, a1, n7
	addw	n9, n16, n8
	slli	n7, n7, 3
	slli	n8, n9, 3
	bne	s2, a7, .LBB31_35
# %bb.33:                               #   in Loop: Header=BB31_32 Depth=1
	ld	n10, %lo(enc_picture)(t0)
	add	n10, n10, t1
	ld	n10, -1712(n10)
	ld	n10, 0(n10)
	add	n10, n10, n7
	ld	n10, 0(n10)
	add	n10, n10, n9
	sb	t2, 0(n10)
	ld	n10, %lo(enc_picture)(t0)
	add	n11, n10, t3
	ld	n12, 16(n11)
	ld	n11, 0(n11)
	ld	n12, 0(n12)
	ld	n11, 0(n11)
	add	n12, n12, n7
	ld	n12, 0(n12)
	add	n11, n11, n7
	ld	n11, 0(n11)
	add	n12, n12, n8
	ld	n12, 0(n12)
	add	n11, n11, n8
	sd	t2, 0(n11)
	sh	zero, 0(n12)
	sh	zero, 2(n12)
	bnez	s1, .LBB31_37
# %bb.34:                               #   in Loop: Header=BB31_32 Depth=1
	ld	n8, %lo(img)(a6)
	lw	n8, 144(n8)
	addw	n8, a5, n8
	j	.LBB31_40
.LBB31_35:                              #   in Loop: Header=BB31_32 Depth=1
	add	n10, n10, t5
	ld	n10, -776(n10)
	add	n10, n10, a2
	ld	n10, 0(n10)
	ld	n11, %lo(enc_picture)(t0)
	add	n10, n10, n3
	ld	n10, 0(n10)
	add	n11, n11, t1
	ld	n11, -1712(n11)
	ld	n10, 0(n10)
	ld	n11, 0(n11)
	add	n10, n10, n4
	ld	n10, 0(n10)
	add	n11, n11, n7
	ld	n11, 0(n11)
	add	n10, n10, a0
	ld	n12, 0(n10)
	add	n11, n11, n9
	sb	a4, 0(n11)
	ld	n10, %lo(enc_picture)(t0)
	add	n11, n10, n5
	ld	n13, 24(n11)
	ld	n13, 0(n13)
	add	n13, n13, n7
	ld	n13, 0(n13)
	ld	n14, 8(n11)
	lh	n15, 0(n12)
	add	n13, n13, n8
	ld	n13, 0(n13)
	ld	n14, 0(n14)
	sh	n15, 0(n13)
	add	n15, n6, n4
	add	n15, n10, n15
	add	n14, n14, n7
	ld	n14, 0(n14)
	ld	n15, 24(n15)
	lh	n12, 2(n12)
	add	n14, n14, n8
	sd	n15, 0(n14)
	sh	n12, 2(n13)
	beqz	s1, .LBB31_42
# %bb.36:                               #   in Loop: Header=BB31_32 Depth=1
	beqz	s2, .LBB31_41
.LBB31_37:                              #   in Loop: Header=BB31_32 Depth=1
	add	n10, n10, t1
	ld	n10, -1712(n10)
	ld	n10, 8(n10)
	add	n10, n10, n7
	ld	n10, 0(n10)
	add	n9, n10, n9
	sb	s0, 0(n9)
	bltz	s0, .LBB31_39
# %bb.38:                               #   in Loop: Header=BB31_32 Depth=1
	ld	n9, %lo(img)(a6)
	add	n9, n9, t5
	ld	n9, -776(n9)
	add	n9, n9, a2
	ld	n9, 0(n9)
	add	n9, n9, n3
	ld	n9, 0(n9)
	ld	n10, %lo(enc_picture)(t0)
	ld	n9, 8(n9)
	add	n11, n10, t3
	ld	n12, 16(n11)
	add	n9, n9, n1
	ld	n9, 0(n9)
	ld	n12, 8(n12)
	add	n9, n9, a0
	ld	n9, 0(n9)
	add	n12, n12, n7
	ld	n12, 0(n12)
	ld	n11, 0(n11)
	lh	n13, 0(n9)
	add	n12, n12, n8
	ld	n12, 0(n12)
	ld	n11, 8(n11)
	add	n14, n2, n1
	add	n10, n10, n14
	sh	n13, 0(n12)
	add	n11, n11, n7
	ld	n11, 0(n11)
	ld	n10, 24(n10)
	lh	n9, 2(n9)
	add	n8, n11, n8
	sd	n10, 0(n8)
	sh	n9, 2(n12)
.LBB31_39:                              #   in Loop: Header=BB31_32 Depth=1
	ld	n9, %lo(img)(a6)
	lw	n8, 144(n9)
	addw	n8, a5, n8
	bne	s2, a7, .LBB31_43
.LBB31_40:                              #   in Loop: Header=BB31_32 Depth=1
	ld	n9, %lo(enc_picture)(t0)
	add	n9, n9, t1
	ld	n9, -1712(n9)
	ld	n9, 0(n9)
	add	n9, n9, n7
	ld	n9, 0(n9)
	add	n9, n9, n8
	sb	t2, 0(n9)
	ld	n9, %lo(enc_picture)(t0)
	add	n10, n9, t3
	ld	n11, 16(n10)
	ld	n10, 0(n10)
	ld	n11, 0(n11)
	ld	n10, 0(n10)
	add	n11, n11, n7
	ld	n11, 0(n11)
	add	n10, n10, n7
	ld	n10, 0(n10)
	slli	n12, n8, 3
	add	n11, n11, n12
	ld	n11, 0(n11)
	add	n10, n10, n12
	sd	t2, 0(n10)
	sh	zero, 0(n11)
	sh	zero, 2(n11)
	bnez	s1, .LBB31_45
	j	.LBB31_31
.LBB31_41:                              #   in Loop: Header=BB31_32 Depth=1
	ld	n10, 0(n11)
	ld	n10, 8(n10)
	add	n10, n10, n7
	ld	n10, 0(n10)
	add	n9, n10, n9
	sb	t2, 0(n9)
	ld	n9, %lo(enc_picture)(t0)
	add	n9, n9, t3
	ld	n10, 16(n9)
	ld	n9, 0(n9)
	ld	n10, 8(n10)
	ld	n9, 8(n9)
	add	n10, n10, n7
	ld	n10, 0(n10)
	add	n9, n9, n7
	ld	n9, 0(n9)
	add	n10, n10, n8
	ld	n10, 0(n10)
	add	n8, n9, n8
	sd	t2, 0(n8)
	sh	zero, 0(n10)
	sh	zero, 2(n10)
.LBB31_42:                              #   in Loop: Header=BB31_32 Depth=1
	ld	n9, %lo(img)(a6)
	lw	n8, 144(n9)
	addw	n8, a5, n8
.LBB31_43:                              #   in Loop: Header=BB31_32 Depth=1
	add	n9, n9, t5
	ld	n9, -776(n9)
	add	n9, n9, a2
	ld	n9, 0(n9)
	ld	n10, %lo(enc_picture)(t0)
	add	n9, n9, t6
	ld	n9, 0(n9)
	add	n10, n10, t1
	ld	n10, -1712(n10)
	ld	n9, 0(n9)
	ld	n10, 0(n10)
	add	n9, n9, n4
	ld	n9, 0(n9)
	add	n10, n10, n7
	ld	n10, 0(n10)
	add	n9, n9, a0
	ld	n12, 0(n9)
	add	n10, n10, n8
	sb	a4, 0(n10)
	ld	n9, %lo(enc_picture)(t0)
	add	n11, n9, n5
	ld	n10, 24(n11)
	ld	n10, 0(n10)
	add	n10, n10, n7
	ld	n13, 0(n10)
	ld	n14, 8(n11)
	slli	n10, n8, 3
	lh	n15, 0(n12)
	add	n13, n13, n10
	ld	n13, 0(n13)
	ld	n14, 0(n14)
	sh	n15, 0(n13)
	add	n15, n6, n4
	add	n15, n9, n15
	add	n14, n14, n7
	ld	n14, 0(n14)
	ld	n15, 24(n15)
	lh	n12, 2(n12)
	add	n14, n14, n10
	sd	n15, 0(n14)
	sh	n12, 2(n13)
	beqz	s1, .LBB31_31
# %bb.44:                               #   in Loop: Header=BB31_32 Depth=1
	beqz	s2, .LBB31_29
.LBB31_45:                              #   in Loop: Header=BB31_32 Depth=1
	add	n9, n9, t1
	ld	n9, -1712(n9)
	ld	n9, 8(n9)
	add	n9, n9, n7
	ld	n9, 0(n9)
	add	n9, n9, n8
	sb	s0, 0(n9)
	bltz	s0, .LBB31_31
# %bb.46:                               #   in Loop: Header=BB31_32 Depth=1
	ld	n9, %lo(img)(a6)
	add	n9, n9, t5
	ld	n9, -776(n9)
	add	n9, n9, a2
	ld	n9, 0(n9)
	add	n9, n9, t6
	ld	n9, 0(n9)
	ld	n9, 8(n9)
	ld	n10, %lo(enc_picture)(t0)
	add	n9, n9, n1
	ld	n9, 0(n9)
	add	n11, n10, t3
	ld	n12, 16(n11)
	add	n9, n9, a0
	ld	n9, 0(n9)
	ld	n12, 8(n12)
	add	n13, n2, n1
	ld	n11, 0(n11)
	add	n10, n10, n13
	add	n12, n12, n7
	ld	n12, 0(n12)
	ld	n11, 8(n11)
	slli	n13, n8, 3
	lh	n14, 0(n9)
	add	n12, n12, n13
	ld	n8, 0(n12)
	add	n7, n11, n7
	ld	n10, 24(n10)
	ld	n11, 0(n7)
	sh	n14, 0(n8)
	lhu	n7, 2(n9)
	add	n11, n11, n13
	sd	n10, 0(n11)
	j	.LBB31_30
.LBB31_47:
	lui	n10, 22
	add	a1, a0, n10
	lhu	a5, -750(a1)
	andi	a1, t0, 2
	sd	t0, 16(sp)                      # 8-byte Folded Spill
	slli	a2, t0, 1
	andi	a2, a2, 2
	beqz	a5, .LBB31_59
# %bb.48:
	li	a4, 0
	lui	a5, %hi(enc_picture)
	ld	t5, %lo(enc_picture)(a5)
	lui	a6, 2
	lui	a7, %hi(img)
	addiw	t0, n10, -768
	addiw	t1, a6, -1704
	li	t2, 264
	mul	t2, a3, t2
	addiw	a3, n10, -760
	li	t3, 1
	li	t4, 32
	j	.LBB31_50
.LBB31_49:                              #   in Loop: Header=BB31_50 Depth=1
	ld	t6, 0(t6)
	ld	t6, 24(t6)
	add	t6, t6, a4
	ld	t6, 0(t6)
	ld	t6, 0(t6)
	ld	t6, 0(t6)
	ld	t6, 8(t6)
	addi	n3, n3, 24
	lh	n1, 0(t6)
	add	n2, n2, n3
	ld	n2, 0(n2)
	sh	n1, 0(n2)
	lh	t6, 2(t6)
	add	n3, n4, n3
	sd	n5, 0(n3)
	sh	t6, 2(n2)
	addi	a4, a4, 8
	addi	a1, a1, 1
	beq	a4, t4, .LBB31_61
.LBB31_50:                              # =>This Inner Loop Header: Depth=1
	add	t5, t5, a6
	ld	t5, -1712(t5)
	lw	t6, 148(a0)
	ld	t5, 0(t5)
	addw	t6, a1, t6
	lw	a0, 144(a0)
	slli	n4, t6, 3
	add	t5, t5, n4
	ld	t5, 0(t5)
	addw	n3, a0, a2
	add	t5, t5, n3
	sb	zero, 3(t5)
	sb	zero, 2(t5)
	sb	zero, 1(t5)
	sb	zero, 0(t5)
	ld	a0, %lo(img)(a7)
	add	t6, a0, t0
	lhu	n2, 18(t6)
	add	n1, a0, a3
	mv	t5, t6
	beq	n2, t3, .LBB31_52
# %bb.51:                               #   in Loop: Header=BB31_50 Depth=1
	mv	t5, n1
.LBB31_52:                              #   in Loop: Header=BB31_50 Depth=1
	ld	t5, 0(t5)
	ld	n2, 0(t5)
	ld	t5, %lo(enc_picture)(a5)
	add	n2, n2, a4
	ld	n2, 0(n2)
	add	n5, t5, t1
	ld	n6, 16(n5)
	ld	n2, 0(n2)
	ld	n6, 0(n6)
	ld	n2, 0(n2)
	add	n6, n6, n4
	ld	n7, 8(n2)
	ld	n2, 0(n6)
	ld	n5, 0(n5)
	slli	n3, n3, 3
	lh	n6, 0(n7)
	add	n8, n2, n3
	ld	n8, 0(n8)
	ld	n9, 0(n5)
	add	n5, t5, t2
	sh	n6, 0(n8)
	lh	n7, 2(n7)
	add	n4, n9, n4
	ld	n4, 0(n4)
	ld	n6, 24(n5)
	sh	n7, 2(n8)
	lhu	n8, 18(t6)
	add	n7, n4, n3
	sd	n6, 0(n7)
	mv	n7, t6
	beq	n8, t3, .LBB31_54
# %bb.53:                               #   in Loop: Header=BB31_50 Depth=1
	mv	n7, n1
.LBB31_54:                              #   in Loop: Header=BB31_50 Depth=1
	ld	n7, 0(n7)
	ld	n7, 8(n7)
	add	n7, n7, a4
	ld	n7, 0(n7)
	ld	n7, 0(n7)
	ld	n7, 0(n7)
	ld	n7, 8(n7)
	addi	n8, n3, 8
	lh	n9, 0(n7)
	add	n10, n2, n8
	ld	n10, 0(n10)
	sh	n9, 0(n10)
	lh	n7, 2(n7)
	sh	n7, 2(n10)
	lhu	n7, 18(t6)
	add	n8, n4, n8
	sd	n6, 0(n8)
	mv	n6, t6
	beq	n7, t3, .LBB31_56
# %bb.55:                               #   in Loop: Header=BB31_50 Depth=1
	mv	n6, n1
.LBB31_56:                              #   in Loop: Header=BB31_50 Depth=1
	ld	n6, 0(n6)
	ld	n6, 16(n6)
	add	n6, n6, a4
	ld	n6, 0(n6)
	ld	n6, 0(n6)
	ld	n6, 0(n6)
	ld	n6, 8(n6)
	addi	n7, n3, 16
	lh	n8, 0(n6)
	add	n9, n2, n7
	ld	n9, 0(n9)
	sh	n8, 0(n9)
	lh	n6, 2(n6)
	ld	n5, 24(n5)
	sh	n6, 2(n9)
	lhu	n6, 18(t6)
	add	n7, n4, n7
	sd	n5, 0(n7)
	beq	n6, t3, .LBB31_49
# %bb.57:                               #   in Loop: Header=BB31_50 Depth=1
	mv	t6, n1
	j	.LBB31_49
.LBB31_58:
	bnez	s1, .LBB31_63
	j	.LBB31_83
.LBB31_59:
	lui	a6, %hi(enc_picture)
	ld	t5, %lo(enc_picture)(a6)
	lui	a7, 2
	lui	t0, %hi(img)
	addiw	t1, a7, -1704
	li	t2, 264
	mul	t2, a3, t2
	slli	t3, a4, 3
	li	t4, 32
.LBB31_60:                              # =>This Inner Loop Header: Depth=1
	add	t5, t5, a7
	ld	t5, -1712(t5)
	lw	t6, 148(a0)
	ld	t5, 0(t5)
	addw	t6, a1, t6
	lw	a0, 144(a0)
	slli	t6, t6, 3
	add	t5, t5, t6
	ld	t5, 0(t5)
	addw	n1, a0, a2
	add	t5, t5, n1
	sb	a4, 3(t5)
	sb	a4, 2(t5)
	sb	a4, 1(t5)
	sb	a4, 0(t5)
	ld	a0, %lo(img)(t0)
	add	t5, a0, n10
	ld	t5, -776(t5)
	add	t5, t5, a5
	ld	n2, 0(t5)
	ld	t5, %lo(enc_picture)(a6)
	ld	n3, 0(n2)
	add	n4, t5, t1
	ld	n5, 16(n4)
	ld	n3, 0(n3)
	ld	n5, 0(n5)
	add	n3, n3, t3
	ld	n3, 0(n3)
	add	n5, n5, t6
	ld	n3, 8(n3)
	ld	n6, 8(n2)
	ld	n5, 0(n5)
	slli	n1, n1, 3
	lh	n7, 0(n3)
	ld	n6, 0(n6)
	add	n8, n5, n1
	ld	n8, 0(n8)
	add	n6, n6, t3
	ld	n6, 0(n6)
	sh	n7, 0(n8)
	lh	n3, 2(n3)
	ld	n4, 0(n4)
	ld	n6, 8(n6)
	ld	n7, 16(n2)
	sh	n3, 2(n8)
	addi	n3, n1, 8
	lh	n8, 0(n6)
	ld	n7, 0(n7)
	add	n9, n5, n3
	ld	n9, 0(n9)
	ld	n4, 0(n4)
	add	n7, n7, t3
	ld	n7, 0(n7)
	sh	n8, 0(n9)
	lh	n6, 2(n6)
	add	n8, t2, t3
	ld	n7, 8(n7)
	add	t6, n4, t6
	sh	n6, 2(n9)
	addi	n4, n1, 16
	lh	n6, 0(n7)
	ld	n2, 24(n2)
	add	n9, n5, n4
	ld	n9, 0(n9)
	add	n8, t5, n8
	ld	n2, 0(n2)
	ld	t6, 0(t6)
	sh	n6, 0(n9)
	lh	n6, 2(n7)
	add	n2, n2, t3
	ld	n2, 0(n2)
	ld	n7, 24(n8)
	sh	n6, 2(n9)
	add	n6, t6, n1
	ld	n2, 8(n2)
	sd	n7, 0(n6)
	add	n3, t6, n3
	addi	n1, n1, 24
	lh	n6, 0(n2)
	add	n5, n5, n1
	ld	n5, 0(n5)
	sd	n7, 0(n3)
	ld	n3, 24(n8)
	add	n4, t6, n4
	sh	n6, 0(n5)
	lh	n2, 2(n2)
	sd	n3, 0(n4)
	add	t6, t6, n1
	sd	n3, 0(t6)
	sh	n2, 2(n5)
	addi	a5, a5, 8
	addi	a1, a1, 1
	bne	a5, t4, .LBB31_60
.LBB31_61:
	ld	t0, 16(sp)                      # 8-byte Folded Reload
	beqz	s1, .LBB31_83
# %bb.62:
	beqz	s2, .LBB31_74
.LBB31_63:
	lui	a3, 22
	add	a1, a0, a3
	lhu	a4, -750(a1)
	andi	a1, t0, 2
	slli	a2, t0, 1
	andi	a2, a2, 2
	beqz	a4, .LBB31_79
# %bb.64:
	li	a4, 0
	ld	t2, 8(sp)                       # 8-byte Folded Reload
	addiw	t2, t2, 1
	lui	a5, %hi(enc_picture)
	ld	t5, %lo(enc_picture)(a5)
	lui	a6, 2
	lui	a7, %hi(img)
	addiw	t0, a3, -768
	addiw	t1, a6, -1704
	li	t3, 264
	mul	t2, t2, t3
	addiw	a3, a3, -760
	li	t3, 1
	li	t4, 32
	j	.LBB31_66
.LBB31_65:                              #   in Loop: Header=BB31_66 Depth=1
	ld	t6, 0(t6)
	ld	t6, 24(t6)
	add	t6, t6, a4
	ld	t6, 0(t6)
	ld	t6, 8(t6)
	ld	t6, 0(t6)
	ld	t6, 8(t6)
	addi	n3, n3, 24
	lh	n1, 0(t6)
	add	n2, n2, n3
	ld	n2, 0(n2)
	sh	n1, 0(n2)
	lh	t6, 2(t6)
	add	n3, n4, n3
	sd	n5, 0(n3)
	sh	t6, 2(n2)
	addi	a4, a4, 8
	addi	a1, a1, 1
	beq	a4, t4, .LBB31_83
.LBB31_66:                              # =>This Inner Loop Header: Depth=1
	add	t5, t5, a6
	ld	t5, -1712(t5)
	lw	t6, 148(a0)
	ld	t5, 8(t5)
	addw	t6, a1, t6
	lw	a0, 144(a0)
	slli	n4, t6, 3
	add	t5, t5, n4
	ld	t5, 0(t5)
	addw	n3, a0, a2
	add	t5, t5, n3
	sb	zero, 3(t5)
	sb	zero, 2(t5)
	sb	zero, 1(t5)
	sb	zero, 0(t5)
	ld	a0, %lo(img)(a7)
	add	t6, a0, t0
	lhu	n2, 18(t6)
	add	n1, a0, a3
	mv	t5, t6
	beq	n2, t3, .LBB31_68
# %bb.67:                               #   in Loop: Header=BB31_66 Depth=1
	mv	t5, n1
.LBB31_68:                              #   in Loop: Header=BB31_66 Depth=1
	ld	t5, 0(t5)
	ld	n2, 0(t5)
	ld	t5, %lo(enc_picture)(a5)
	add	n2, n2, a4
	ld	n2, 0(n2)
	add	n5, t5, t1
	ld	n6, 16(n5)
	ld	n2, 8(n2)
	ld	n6, 8(n6)
	ld	n2, 0(n2)
	add	n6, n6, n4
	ld	n7, 8(n2)
	ld	n2, 0(n6)
	ld	n5, 0(n5)
	slli	n3, n3, 3
	lh	n6, 0(n7)
	add	n8, n2, n3
	ld	n8, 0(n8)
	ld	n9, 8(n5)
	add	n5, t5, t2
	sh	n6, 0(n8)
	lh	n7, 2(n7)
	add	n4, n9, n4
	ld	n4, 0(n4)
	ld	n6, 24(n5)
	sh	n7, 2(n8)
	lhu	n8, 18(t6)
	add	n7, n4, n3
	sd	n6, 0(n7)
	mv	n7, t6
	beq	n8, t3, .LBB31_70
# %bb.69:                               #   in Loop: Header=BB31_66 Depth=1
	mv	n7, n1
.LBB31_70:                              #   in Loop: Header=BB31_66 Depth=1
	ld	n7, 0(n7)
	ld	n7, 8(n7)
	add	n7, n7, a4
	ld	n7, 0(n7)
	ld	n7, 8(n7)
	ld	n7, 0(n7)
	ld	n7, 8(n7)
	addi	n8, n3, 8
	lh	n9, 0(n7)
	add	n10, n2, n8
	ld	n10, 0(n10)
	sh	n9, 0(n10)
	lh	n7, 2(n7)
	sh	n7, 2(n10)
	lhu	n7, 18(t6)
	add	n8, n4, n8
	sd	n6, 0(n8)
	mv	n6, t6
	beq	n7, t3, .LBB31_72
# %bb.71:                               #   in Loop: Header=BB31_66 Depth=1
	mv	n6, n1
.LBB31_72:                              #   in Loop: Header=BB31_66 Depth=1
	ld	n6, 0(n6)
	ld	n6, 16(n6)
	add	n6, n6, a4
	ld	n6, 0(n6)
	ld	n6, 8(n6)
	ld	n6, 0(n6)
	ld	n6, 8(n6)
	addi	n7, n3, 16
	lh	n8, 0(n6)
	add	n9, n2, n7
	ld	n9, 0(n9)
	sh	n8, 0(n9)
	lh	n6, 2(n6)
	ld	n5, 24(n5)
	sh	n6, 2(n9)
	lhu	n6, 18(t6)
	add	n7, n4, n7
	sd	n5, 0(n7)
	beq	n6, t3, .LBB31_65
# %bb.73:                               #   in Loop: Header=BB31_66 Depth=1
	mv	t6, n1
	j	.LBB31_65
.LBB31_74:
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lw	a1, 148(a0)
	andi	s7, t0, 2
	addw	a2, a1, s7
	addi	s1, s7, 4
	addw	a3, s1, a1
	bge	a2, a3, .LBB31_83
# %bb.75:
	slli	a2, t0, 1
	andi	s2, a2, 2
	slli	a2, t0, 4
	andi	s3, a2, 16
	slli	a2, t0, 63
	srai	a2, a2, 63
	andi	s5, a2, -2
	addi	s6, s2, 3
	add	s7, s7, a1
	lui	s8, %hi(enc_picture)
	ld	s11, %lo(enc_picture)(s8)
	slli	a2, t0, 3
	andi	a2, a2, 16
	slli	a1, a1, 3
	add	s4, a2, a1
	lui	s9, 2
	li	s10, 255
	j	.LBB31_77
.LBB31_76:                              #   in Loop: Header=BB31_77 Depth=1
	ld	s11, %lo(enc_picture)(s8)
	add	a0, s11, s9
	ld	a0, -1704(a0)
	ld	a0, 8(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	slli	a3, a1, 3
	add	a3, s3, a3
	add	a0, a0, a3
	subw	a1, s5, a1
	add	a1, a1, a2
	slli	a1, a1, 32
	srli	a1, a1, 29
	addi	a2, a1, 8
	li	a1, 255
	call	memset
	ld	a0, %lo(img)(s0)
	lw	a1, 148(a0)
	addi	s7, s7, 1
	addw	a1, s1, a1
	addi	s4, s4, 8
	bge	s7, a1, .LBB31_83
.LBB31_77:                              # =>This Inner Loop Header: Depth=1
	add	s11, s11, s9
	ld	a1, -1712(s11)
	ld	a2, 8(a1)
	lw	a1, 144(a0)
	add	a2, a2, s4
	ld	a2, 0(a2)
	addw	a0, a1, s2
	add	a2, a2, a0
	sb	s10, 3(a2)
	sb	s10, 2(a2)
	sb	s10, 1(a2)
	sb	s10, 0(a2)
	ld	a2, %lo(enc_picture)(s8)
	add	a2, a2, s9
	ld	a2, -1688(a2)
	ld	a2, 8(a2)
	add	a2, a2, s4
	ld	a2, 0(a2)
	slli	a3, a0, 3
	add	a2, a2, a3
	ld	a3, 0(a2)
	sh	zero, 14(a3)
	sh	zero, 12(a3)
	sh	zero, 10(a3)
	sh	zero, 8(a3)
	sh	zero, 6(a3)
	sh	zero, 4(a3)
	sh	zero, 2(a3)
	addw	a2, s6, a1
	sh	zero, 0(a3)
	blt	a0, a2, .LBB31_76
# %bb.78:                               #   in Loop: Header=BB31_77 Depth=1
	mv	a2, a0
	j	.LBB31_76
.LBB31_79:
	li	a0, 0
	ld	t0, 8(sp)                       # 8-byte Folded Reload
	addiw	t0, t0, 1
	lui	a4, %hi(enc_picture)
	ld	t3, %lo(enc_picture)(a4)
	lui	a5, %hi(img)
	lui	a6, 2
	addiw	a7, a6, -1704
	li	t1, 264
	mul	t0, t0, t1
	slli	t1, s0, 3
	li	t2, 32
	j	.LBB31_81
.LBB31_80:                              #   in Loop: Header=BB31_81 Depth=1
	ld	n3, %lo(img)(a5)
	add	n3, n3, a3
	ld	n3, -776(n3)
	add	n3, n3, a0
	ld	n3, 0(n3)
	ld	n4, 0(n3)
	ld	n2, 16(n2)
	ld	n4, 8(n4)
	ld	n2, 8(n2)
	add	n4, n4, t1
	ld	n4, 0(n4)
	add	n1, n2, n1
	ld	n2, 8(n4)
	ld	n4, 8(n3)
	ld	n1, 0(n1)
	lh	n5, 0(n2)
	ld	n4, 8(n4)
	add	n6, n1, t6
	ld	n6, 0(n6)
	add	n4, n4, t1
	ld	n4, 0(n4)
	sh	n5, 0(n6)
	lh	n2, 2(n2)
	ld	n4, 8(n4)
	ld	n5, 16(n3)
	sh	n2, 2(n6)
	addi	n2, t6, 8
	lh	n6, 0(n4)
	ld	n5, 8(n5)
	add	n7, n1, n2
	ld	n7, 0(n7)
	add	n5, n5, t1
	ld	n5, 0(n5)
	sh	n6, 0(n7)
	lh	n4, 2(n4)
	ld	n5, 8(n5)
	sh	n4, 2(n7)
	addi	n4, t6, 16
	lh	n6, 0(n5)
	ld	n3, 24(n3)
	add	n7, n1, n4
	ld	n7, 0(n7)
	ld	n3, 8(n3)
	sh	n6, 0(n7)
	lh	n5, 2(n5)
	add	n3, n3, t1
	ld	n3, 0(n3)
	ld	n6, 24(t5)
	sh	n5, 2(n7)
	add	n5, t4, t6
	ld	n3, 8(n3)
	sd	n6, 0(n5)
	add	n2, t4, n2
	addi	t6, t6, 24
	lh	n5, 0(n3)
	add	n1, n1, t6
	ld	n1, 0(n1)
	sd	n6, 0(n2)
	ld	t5, 24(t5)
	add	n4, t4, n4
	sh	n5, 0(n1)
	lh	n2, 2(n3)
	sd	t5, 0(n4)
	add	t4, t4, t6
	sd	t5, 0(t4)
	sh	n2, 2(n1)
	addi	a0, a0, 8
	addi	a1, a1, 1
	beq	a0, t2, .LBB31_83
.LBB31_81:                              # =>This Inner Loop Header: Depth=1
	ld	t4, %lo(img)(a5)
	add	t3, t3, a6
	ld	t3, -1712(t3)
	lw	t5, 148(t4)
	ld	t3, 8(t3)
	addw	t5, a1, t5
	lw	t4, 144(t4)
	slli	n1, t5, 3
	add	t3, t3, n1
	ld	t3, 0(t3)
	addw	t6, t4, a2
	add	t3, t3, t6
	sb	s0, 3(t3)
	sb	s0, 2(t3)
	sb	s0, 1(t3)
	sb	s0, 0(t3)
	ld	t3, %lo(enc_picture)(a4)
	add	n2, t3, a7
	ld	t4, 0(n2)
	ld	t4, 8(t4)
	add	t4, t4, n1
	ld	t4, 0(t4)
	add	t5, t0, t1
	add	t5, t3, t5
	slli	t6, t6, 3
	bgez	s0, .LBB31_80
# %bb.82:                               #   in Loop: Header=BB31_81 Depth=1
	ld	n1, 24(t5)
	add	t4, t4, t6
	sd	n1, 0(t4)
	sd	n1, 8(t4)
	ld	t5, 24(t5)
	sd	t5, 16(t4)
	sd	t5, 24(t4)
	addi	a0, a0, 8
	addi	a1, a1, 1
	bne	a0, t2, .LBB31_81
.LBB31_83:
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
.Lfunc_end31:
	.size	assign_enc_picture_params, .Lfunc_end31-assign_enc_picture_params
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	update_refresh_map              # -- Begin function update_refresh_map
	.p2align	2
	.type	update_refresh_map,@function
update_refresh_map:                     # @update_refresh_map
# %bb.0:
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	addi	a3, a3, 2047
	lw	a4, 1533(a3)
	li	a5, 2
	beq	a4, a5, .LBB32_4
# %bb.1:
	li	a5, 1
	bne	a4, a5, .LBB32_7
# %bb.2:
	lw	a3, 1089(a3)
	blt	a5, a3, .LBB32_8
# %bb.3:
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	lw	a3, 140(a2)
	lui	a4, %hi(refresh_map)
	ld	a5, %lo(refresh_map)(a4)
	slliw	a3, a3, 1
	slli	a3, a3, 3
	add	a3, a5, a3
	lw	a2, 136(a2)
	ld	a3, 0(a3)
	snez	a0, a0
	slliw	a2, a2, 1
	add	a2, a3, a2
	sb	a0, 0(a2)
	ld	a2, %lo(img)(a1)
	lw	a3, 140(a2)
	ld	a5, %lo(refresh_map)(a4)
	slliw	a3, a3, 1
	slli	a3, a3, 3
	add	a3, a5, a3
	lw	a2, 136(a2)
	ld	a3, 0(a3)
	slliw	a2, a2, 1
	add	a2, a3, a2
	sb	a0, 1(a2)
	ld	a1, %lo(img)(a1)
	lw	a2, 140(a1)
	ld	a3, %lo(refresh_map)(a4)
	slliw	a2, a2, 1
	slli	a2, a2, 3
	add	a2, a3, a2
	lw	a1, 136(a1)
	ld	a2, 8(a2)
	slliw	a1, a1, 1
	add	a1, a2, a1
	sb	a0, 0(a1)
	j	.LBB32_6
.LBB32_4:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lw	a3, 140(a1)
	lui	a4, %hi(refresh_map)
	ld	a5, %lo(refresh_map)(a4)
	lw	a6, 72(a2)
	slliw	a3, a3, 1
	slli	a3, a3, 3
	add	a3, a5, a3
	lw	a1, 136(a1)
	ld	a3, 0(a3)
	addiw	a6, a6, -9
	sltiu	a5, a6, 2
	slliw	a1, a1, 1
	add	a1, a3, a1
	sb	a5, 0(a1)
	ld	a1, %lo(img)(a0)
	lw	a3, 140(a1)
	ld	a5, %lo(refresh_map)(a4)
	lw	a6, 72(a2)
	slliw	a3, a3, 1
	slli	a3, a3, 3
	add	a3, a5, a3
	lw	a1, 136(a1)
	ld	a3, 0(a3)
	addiw	a6, a6, -9
	sltiu	a5, a6, 2
	slliw	a1, a1, 1
	add	a1, a3, a1
	sb	a5, 1(a1)
	ld	a0, %lo(img)(a0)
	lw	a1, 140(a0)
	ld	a3, %lo(refresh_map)(a4)
	lw	a4, 72(a2)
	slliw	a1, a1, 1
	slli	a1, a1, 3
	add	a1, a3, a1
	lw	a0, 136(a0)
	ld	a1, 8(a1)
	addiw	a4, a4, -9
	sltiu	a3, a4, 2
	slliw	a0, a0, 1
	add	a0, a1, a0
	sb	a3, 0(a0)
.LBB32_5:
	lw	a0, 72(a2)
	addiw	a0, a0, -9
	sltiu	a0, a0, 2
.LBB32_6:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a2, 140(a1)
	lui	a3, %hi(refresh_map)
	ld	a3, %lo(refresh_map)(a3)
	slliw	a2, a2, 1
	slli	a2, a2, 3
	add	a2, a3, a2
	lw	a1, 136(a1)
	ld	a2, 8(a2)
	slliw	a1, a1, 1
	add	a1, a2, a1
	sb	a0, 1(a1)
.LBB32_7:
	ret
.LBB32_8:
	li	a0, 3
	bne	a3, a0, .LBB32_7
# %bb.9:
	beqz	a1, .LBB32_11
# %bb.10:
	li	a4, 0
	j	.LBB32_12
.LBB32_11:
	lw	a0, 72(a2)
	addiw	a0, a0, -9
	sltiu	a4, a0, 2
.LBB32_12:
	lui	a0, %hi(img)
	ld	a5, %lo(img)(a0)
	lw	a6, 140(a5)
	lui	a3, %hi(refresh_map)
	ld	a7, %lo(refresh_map)(a3)
	slliw	a6, a6, 1
	slli	a6, a6, 3
	add	a6, a7, a6
	lw	a5, 136(a5)
	ld	a6, 0(a6)
	slliw	a5, a5, 1
	add	a5, a6, a5
	sb	a4, 0(a5)
	beqz	a1, .LBB32_14
# %bb.13:
	li	a4, 0
	j	.LBB32_15
.LBB32_14:
	lw	a4, 72(a2)
	addiw	a4, a4, -9
	sltiu	a4, a4, 2
.LBB32_15:
	ld	a0, %lo(img)(a0)
	lw	a5, 140(a0)
	ld	a3, %lo(refresh_map)(a3)
	slliw	a5, a5, 1
	slli	a5, a5, 3
	add	a3, a3, a5
	lw	a0, 136(a0)
	ld	a3, 0(a3)
	slliw	a0, a0, 1
	add	a0, a3, a0
	sb	a4, 1(a0)
	beqz	a1, .LBB32_17
# %bb.16:
	li	a0, 0
	j	.LBB32_18
.LBB32_17:
	lw	a0, 72(a2)
	addiw	a0, a0, -9
	sltiu	a0, a0, 2
.LBB32_18:
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	lw	a4, 140(a3)
	lui	a5, %hi(refresh_map)
	ld	a5, %lo(refresh_map)(a5)
	slliw	a4, a4, 1
	slli	a4, a4, 3
	add	a4, a5, a4
	lw	a3, 136(a3)
	ld	a4, 8(a4)
	slliw	a3, a3, 1
	add	a3, a4, a3
	sb	a0, 0(a3)
	beqz	a1, .LBB32_5
# %bb.19:
	li	a0, 0
	j	.LBB32_6
.Lfunc_end32:
	.size	update_refresh_map, .Lfunc_end32-update_refresh_map
                                        # -- End function
	.option	pop
	.type	cofAC,@object                   # @cofAC
	.section	.sbss,"aw",@nobits
	.globl	cofAC
	.p2align	3, 0x0
cofAC:
	.quad	0
	.size	cofAC, 8

	.type	cofAC8x8,@object                # @cofAC8x8
	.globl	cofAC8x8
	.p2align	3, 0x0
cofAC8x8:
	.quad	0
	.size	cofAC8x8, 8

	.type	cofDC,@object                   # @cofDC
	.globl	cofDC
	.p2align	3, 0x0
cofDC:
	.quad	0
	.size	cofDC, 8

	.type	cofAC4x4,@object                # @cofAC4x4
	.globl	cofAC4x4
	.p2align	3, 0x0
cofAC4x4:
	.quad	0
	.size	cofAC4x4, 8

	.type	cofAC4x4intern,@object          # @cofAC4x4intern
	.globl	cofAC4x4intern
	.p2align	3, 0x0
cofAC4x4intern:
	.quad	0
	.size	cofAC4x4intern, 8

	.type	cs_mb,@object                   # @cs_mb
	.globl	cs_mb
	.p2align	3, 0x0
cs_mb:
	.quad	0
	.size	cs_mb, 8

	.type	cs_b8,@object                   # @cs_b8
	.globl	cs_b8
	.p2align	3, 0x0
cs_b8:
	.quad	0
	.size	cs_b8, 8

	.type	cs_cm,@object                   # @cs_cm
	.globl	cs_cm
	.p2align	3, 0x0
cs_cm:
	.quad	0
	.size	cs_cm, 8

	.type	cs_imb,@object                  # @cs_imb
	.globl	cs_imb
	.p2align	3, 0x0
cs_imb:
	.quad	0
	.size	cs_imb, 8

	.type	cs_ib8,@object                  # @cs_ib8
	.globl	cs_ib8
	.p2align	3, 0x0
cs_ib8:
	.quad	0
	.size	cs_ib8, 8

	.type	cs_ib4,@object                  # @cs_ib4
	.globl	cs_ib4
	.p2align	3, 0x0
cs_ib4:
	.quad	0
	.size	cs_ib4, 8

	.type	cs_pc,@object                   # @cs_pc
	.globl	cs_pc
	.p2align	3, 0x0
cs_pc:
	.quad	0
	.size	cs_pc, 8

	.type	cofAC_8x8ts,@object             # @cofAC_8x8ts
	.globl	cofAC_8x8ts
	.p2align	3, 0x0
cofAC_8x8ts:
	.quad	0
	.size	cofAC_8x8ts, 8

	.type	Mode_Decision_for_4x4IntraBlocks.cbp_bits,@object # @Mode_Decision_for_4x4IntraBlocks.cbp_bits
	.p2align	3, 0x0
Mode_Decision_for_4x4IntraBlocks.cbp_bits:
	.quad	0                               # 0x0
	.size	Mode_Decision_for_4x4IntraBlocks.cbp_bits, 8

	.type	fadjust4x4,@object              # @fadjust4x4
	.bss
	.globl	fadjust4x4
	.p2align	2, 0x0
fadjust4x4:
	.zero	1024
	.size	fadjust4x4, 1024

	.type	cofAC4x4_chroma,@object         # @cofAC4x4_chroma
	.globl	cofAC4x4_chroma
	.p2align	2, 0x0
cofAC4x4_chroma:
	.zero	288
	.size	cofAC4x4_chroma, 288

	.type	cbp8x8,@object                  # @cbp8x8
	.section	.sbss,"aw",@nobits
	.globl	cbp8x8
	.p2align	2, 0x0
cbp8x8:
	.word	0                               # 0x0
	.size	cbp8x8, 4

	.type	best8x8pdir,@object             # @best8x8pdir
	.bss
	.globl	best8x8pdir
	.p2align	1, 0x0
best8x8pdir:
	.zero	120
	.size	best8x8pdir, 120

	.type	best8x8mode,@object             # @best8x8mode
	.section	.sbss,"aw",@nobits
	.globl	best8x8mode
	.p2align	1, 0x0
best8x8mode:
	.zero	8
	.size	best8x8mode, 8

	.type	best8x8fwref,@object            # @best8x8fwref
	.bss
	.globl	best8x8fwref
	.p2align	1, 0x0
best8x8fwref:
	.zero	120
	.size	best8x8fwref, 120

	.type	best8x8bwref,@object            # @best8x8bwref
	.globl	best8x8bwref
	.p2align	1, 0x0
best8x8bwref:
	.zero	120
	.size	best8x8bwref, 120

	.type	tr8x8,@object                   # @tr8x8
	.globl	tr8x8
	.p2align	2, 0x0
tr8x8:
	.zero	8220
	.size	tr8x8, 8220

	.type	cnt_nonz8_8x8ts,@object         # @cnt_nonz8_8x8ts
	.section	.sbss,"aw",@nobits
	.globl	cnt_nonz8_8x8ts
	.p2align	2, 0x0
cnt_nonz8_8x8ts:
	.word	0                               # 0x0
	.size	cnt_nonz8_8x8ts, 4

	.type	cbp8_8x8ts,@object              # @cbp8_8x8ts
	.globl	cbp8_8x8ts
	.p2align	2, 0x0
cbp8_8x8ts:
	.word	0                               # 0x0
	.size	cbp8_8x8ts, 4

	.type	cbp_blk8_8x8ts,@object          # @cbp_blk8_8x8ts
	.globl	cbp_blk8_8x8ts
	.p2align	3, 0x0
cbp_blk8_8x8ts:
	.quad	0                               # 0x0
	.size	cbp_blk8_8x8ts, 8

	.type	cnt_nonz_8x8,@object            # @cnt_nonz_8x8
	.globl	cnt_nonz_8x8
	.p2align	2, 0x0
cnt_nonz_8x8:
	.word	0                               # 0x0
	.size	cnt_nonz_8x8, 4

	.type	tr4x4,@object                   # @tr4x4
	.bss
	.globl	tr4x4
	.p2align	2, 0x0
tr4x4:
	.zero	8220
	.size	tr4x4, 8220

	.type	cbp_blk8x8,@object              # @cbp_blk8x8
	.section	.sbss,"aw",@nobits
	.globl	cbp_blk8x8
	.p2align	2, 0x0
cbp_blk8x8:
	.word	0                               # 0x0
	.size	cbp_blk8x8, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"invalid direction mode"
	.size	.L.str.1, 23

	.type	pred,@object                    # @pred
	.bss
	.globl	pred
	.p2align	1, 0x0
pred:
	.zero	512
	.size	pred, 512

	.type	bestInterFAdjust8x8,@object     # @bestInterFAdjust8x8
	.globl	bestInterFAdjust8x8
	.p2align	2, 0x0
bestInterFAdjust8x8:
	.zero	1024
	.size	bestInterFAdjust8x8, 1024

	.type	bestInterFAdjust4x4Cr,@object   # @bestInterFAdjust4x4Cr
	.globl	bestInterFAdjust4x4Cr
	.p2align	2, 0x0
bestInterFAdjust4x4Cr:
	.zero	2048
	.size	bestInterFAdjust4x4Cr, 2048

	.type	bestInterFAdjust4x4,@object     # @bestInterFAdjust4x4
	.globl	bestInterFAdjust4x4
	.p2align	2, 0x0
bestInterFAdjust4x4:
	.zero	1024
	.size	bestInterFAdjust4x4, 1024

	.type	bestIntraFAdjust4x4,@object     # @bestIntraFAdjust4x4
	.globl	bestIntraFAdjust4x4
	.p2align	2, 0x0
bestIntraFAdjust4x4:
	.zero	1024
	.size	bestIntraFAdjust4x4, 1024

	.type	bestIntraFAdjust4x4Cr,@object   # @bestIntraFAdjust4x4Cr
	.globl	bestIntraFAdjust4x4Cr
	.p2align	2, 0x0
bestIntraFAdjust4x4Cr:
	.zero	2048
	.size	bestIntraFAdjust4x4Cr, 2048

	.type	bestIntraFAdjust8x8,@object     # @bestIntraFAdjust8x8
	.globl	bestIntraFAdjust8x8
	.p2align	2, 0x0
bestIntraFAdjust8x8:
	.zero	1024
	.size	bestIntraFAdjust8x8, 1024

	.type	best_mode,@object               # @best_mode
	.section	.sbss,"aw",@nobits
	.globl	best_mode
	.p2align	1, 0x0
best_mode:
	.half	0                               # 0x0
	.size	best_mode, 2

	.type	best_c_imode,@object            # @best_c_imode
	.globl	best_c_imode
	.p2align	2, 0x0
best_c_imode:
	.word	0                               # 0x0
	.size	best_c_imode, 4

	.type	best_i16offset,@object          # @best_i16offset
	.globl	best_i16offset
	.p2align	2, 0x0
best_i16offset:
	.word	0                               # 0x0
	.size	best_i16offset, 4

	.type	bi_pred_me,@object              # @bi_pred_me
	.globl	bi_pred_me
	.p2align	1, 0x0
bi_pred_me:
	.half	0                               # 0x0
	.size	bi_pred_me, 2

	.type	b8mode,@object                  # @b8mode
	.bss
	.globl	b8mode
	.p2align	2, 0x0
b8mode:
	.zero	16
	.size	b8mode, 16

	.type	b8pdir,@object                  # @b8pdir
	.globl	b8pdir
	.p2align	2, 0x0
b8pdir:
	.zero	16
	.size	b8pdir, 16

	.type	b4_intra_pred_modes,@object     # @b4_intra_pred_modes
	.globl	b4_intra_pred_modes
b4_intra_pred_modes:
	.zero	16
	.size	b4_intra_pred_modes, 16

	.type	b4_ipredmode,@object            # @b4_ipredmode
	.globl	b4_ipredmode
	.p2align	2, 0x0
b4_ipredmode:
	.zero	16
	.size	b4_ipredmode, 16

	.type	rec_mbY,@object                 # @rec_mbY
	.globl	rec_mbY
	.p2align	1, 0x0
rec_mbY:
	.zero	512
	.size	rec_mbY, 512

	.type	lrec_rec,@object                # @lrec_rec
	.globl	lrec_rec
	.p2align	2, 0x0
lrec_rec:
	.zero	1024
	.size	lrec_rec, 1024

	.type	rec_mbU,@object                 # @rec_mbU
	.globl	rec_mbU
	.p2align	1, 0x0
rec_mbU:
	.zero	512
	.size	rec_mbU, 512

	.type	rec_mbV,@object                 # @rec_mbV
	.globl	rec_mbV
	.p2align	1, 0x0
rec_mbV:
	.zero	512
	.size	rec_mbV, 512

	.type	lrec_rec_U,@object              # @lrec_rec_U
	.globl	lrec_rec_U
	.p2align	2, 0x0
lrec_rec_U:
	.zero	1024
	.size	lrec_rec_U, 1024

	.type	lrec_rec_V,@object              # @lrec_rec_V
	.globl	lrec_rec_V
	.p2align	2, 0x0
lrec_rec_V:
	.zero	1024
	.size	lrec_rec_V, 1024

	.type	cbp,@object                     # @cbp
	.section	.sbss,"aw",@nobits
	.globl	cbp
	.p2align	2, 0x0
cbp:
	.word	0                               # 0x0
	.size	cbp, 4

	.type	cbp_blk,@object                 # @cbp_blk
	.globl	cbp_blk
	.p2align	3, 0x0
cbp_blk:
	.quad	0                               # 0x0
	.size	cbp_blk, 8

	.type	luma_transform_size_8x8_flag,@object # @luma_transform_size_8x8_flag
	.globl	luma_transform_size_8x8_flag
	.p2align	2, 0x0
luma_transform_size_8x8_flag:
	.word	0                               # 0x0
	.size	luma_transform_size_8x8_flag, 4

	.type	frefframe,@object               # @frefframe
	.bss
	.globl	frefframe
	.p2align	2, 0x0
frefframe:
	.zero	16
	.size	frefframe, 16

	.type	brefframe,@object               # @brefframe
	.globl	brefframe
	.p2align	2, 0x0
brefframe:
	.zero	16
	.size	brefframe, 16

	.type	all_mv8x8,@object               # @all_mv8x8
	.globl	all_mv8x8
	.p2align	1, 0x0
all_mv8x8:
	.zero	256
	.size	all_mv8x8, 256

	.type	pred_mv8x8,@object              # @pred_mv8x8
	.globl	pred_mv8x8
	.p2align	1, 0x0
pred_mv8x8:
	.zero	256
	.size	pred_mv8x8, 256

	.type	QP2,@object                     # @QP2
	.section	.sbss,"aw",@nobits
	.globl	QP2
	.p2align	2, 0x0
QP2:
	.word	0                               # 0x0
	.size	QP2, 4

	.type	DELTA_QP,@object                # @DELTA_QP
	.globl	DELTA_QP
	.p2align	2, 0x0
DELTA_QP:
	.word	0                               # 0x0
	.size	DELTA_QP, 4

	.type	DELTA_QP2,@object               # @DELTA_QP2
	.globl	DELTA_QP2
	.p2align	2, 0x0
DELTA_QP2:
	.word	0                               # 0x0
	.size	DELTA_QP2, 4

	.type	fadjust8x8,@object              # @fadjust8x8
	.bss
	.globl	fadjust8x8
	.p2align	2, 0x0
fadjust8x8:
	.zero	1024
	.size	fadjust8x8, 1024

	.type	fadjust4x4Cr,@object            # @fadjust4x4Cr
	.globl	fadjust4x4Cr
	.p2align	2, 0x0
fadjust4x4Cr:
	.zero	2048
	.size	fadjust4x4Cr, 2048

	.type	fadjust8x8Cr,@object            # @fadjust8x8Cr
	.globl	fadjust8x8Cr
	.p2align	2, 0x0
fadjust8x8Cr:
	.zero	2048
	.size	fadjust8x8Cr, 2048

	.type	cost8_8x8ts,@object             # @cost8_8x8ts
	.section	.sbss,"aw",@nobits
	.globl	cost8_8x8ts
	.p2align	2, 0x0
cost8_8x8ts:
	.word	0                               # 0x0
	.size	cost8_8x8ts, 4

	.type	rec_resG_8x8,@object            # @rec_resG_8x8
	.bss
	.globl	rec_resG_8x8
	.p2align	2, 0x0
rec_resG_8x8:
	.zero	1024
	.size	rec_resG_8x8, 1024

	.type	resTrans_R_8x8,@object          # @resTrans_R_8x8
	.globl	resTrans_R_8x8
	.p2align	2, 0x0
resTrans_R_8x8:
	.zero	1024
	.size	resTrans_R_8x8, 1024

	.type	resTrans_B_8x8,@object          # @resTrans_B_8x8
	.globl	resTrans_B_8x8
	.p2align	2, 0x0
resTrans_B_8x8:
	.zero	1024
	.size	resTrans_B_8x8, 1024

	.type	rec_resG_8x8ts,@object          # @rec_resG_8x8ts
	.globl	rec_resG_8x8ts
	.p2align	2, 0x0
rec_resG_8x8ts:
	.zero	1024
	.size	rec_resG_8x8ts, 1024

	.type	resTrans_R_8x8ts,@object        # @resTrans_R_8x8ts
	.globl	resTrans_R_8x8ts
	.p2align	2, 0x0
resTrans_R_8x8ts:
	.zero	1024
	.size	resTrans_R_8x8ts, 1024

	.type	resTrans_B_8x8ts,@object        # @resTrans_B_8x8ts
	.globl	resTrans_B_8x8ts
	.p2align	2, 0x0
resTrans_B_8x8ts:
	.zero	1024
	.size	resTrans_B_8x8ts, 1024

	.type	mprRGB_8x8,@object              # @mprRGB_8x8
	.globl	mprRGB_8x8
	.p2align	2, 0x0
mprRGB_8x8:
	.zero	3072
	.size	mprRGB_8x8, 3072

	.type	mprRGB_8x8ts,@object            # @mprRGB_8x8ts
	.globl	mprRGB_8x8ts
	.p2align	2, 0x0
mprRGB_8x8ts:
	.zero	3072
	.size	mprRGB_8x8ts, 3072

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Unsupported mode in SetModesAndRefframeForBlocks!"
	.size	.Lstr, 50

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
