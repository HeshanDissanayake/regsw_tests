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
	addi	sp, sp, -64
	sd	s0, 56(sp)                      # 8-byte Folded Spill
	sd	s1, 48(sp)                      # 8-byte Folded Spill
	sd	s2, 40(sp)                      # 8-byte Folded Spill
	sd	s3, 32(sp)                      # 8-byte Folded Spill
	sd	s4, 24(sp)                      # 8-byte Folded Spill
	sd	s5, 16(sp)                      # 8-byte Folded Spill
	sd	s6, 8(sp)                       # 8-byte Folded Spill
	sd	s7, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(img)
	ld	t4, %lo(img)(a0)
	lw	a0, 24(t4)
	lw	a1, 60(t4)
	li	a2, 2
	bne	a0, a2, .LBB2_7
# %bb.1:
	blez	a1, .LBB2_32
# %bb.2:                                # %.preheader1
	li	a0, 0
	lui	a1, %hi(pixel_map)
	li	a2, 1
	lui	a3, %hi(img)
	j	.LBB2_4
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	lw	a4, 60(t4)
	addi	a0, a0, 1
	bge	a0, a4, .LBB2_32
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	lw	a4, 52(t4)
	blez	a4, .LBB2_3
# %bb.5:                                # %.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	li	a4, 0
	slli	a5, a0, 3
.LBB2_6:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, %lo(pixel_map)(a1)
	add	a6, a6, a5
	ld	a6, 0(a6)
	add	a6, a6, a4
	sb	a2, 0(a6)
	ld	t4, %lo(img)(a3)
	lw	a6, 52(t4)
	addi	a4, a4, 1
	blt	a4, a6, .LBB2_6
	j	.LBB2_3
.LBB2_7:
	li	a0, 8
	blt	a1, a0, .LBB2_32
# %bb.8:                                # %.preheader9
	li	a6, 0
	li	a1, 0
	lui	a2, %hi(refresh_map)
	lui	a3, %hi(pixel_map)
	lui	a4, %hi(input)
	lui	a5, %hi(img)
	li	a7, 1
	j	.LBB2_10
.LBB2_9:                                #   in Loop: Header=BB2_10 Depth=1
	lw	a6, 60(t4)
	addi	a1, a1, 1
	srai	t1, a6, 3
	mv	a6, t0
	bge	a1, t1, .LBB2_32
.LBB2_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
                                        #       Child Loop BB2_14 Depth 3
                                        #       Child Loop BB2_16 Depth 3
	lw	t1, 52(t4)
	addi	t0, a6, 64
	blt	t1, a0, .LBB2_9
# %bb.11:                               # %.preheader7
                                        #   in Loop: Header=BB2_10 Depth=1
	li	t1, 0
	li	t2, 0
	slli	t3, a1, 3
	j	.LBB2_13
.LBB2_12:                               #   in Loop: Header=BB2_13 Depth=2
	ld	t4, %lo(img)(a5)
	lw	t5, 52(t4)
	addi	t1, t1, 1
	srai	t5, t5, 3
	addi	t2, t2, 8
	bge	t1, t5, .LBB2_9
.LBB2_13:                               #   Parent Loop BB2_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_14 Depth 3
                                        #       Child Loop BB2_16 Depth 3
	ld	t4, %lo(refresh_map)(a2)
	add	t4, t4, t3
	ld	t4, 0(t4)
	add	t4, t4, t1
	lbu	s6, 0(t4)
	addi	t4, t2, 1
	addi	t5, t2, 2
	addi	t6, t2, 3
	addi	s0, t2, 4
	addi	s1, t2, 5
	addi	s2, t2, 6
	addi	s3, t2, 7
	mv	s5, a6
	mv	s4, a6
	beqz	s6, .LBB2_16
.LBB2_14:                               #   Parent Loop BB2_10 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	s4, %lo(pixel_map)(a3)
	add	s4, s4, s5
	ld	s4, 0(s4)
	add	s4, s4, t2
	sb	a7, 0(s4)
	ld	s4, %lo(pixel_map)(a3)
	add	s4, s4, s5
	ld	s4, 0(s4)
	add	s4, s4, t4
	sb	a7, 0(s4)
	ld	s4, %lo(pixel_map)(a3)
	add	s4, s4, s5
	ld	s4, 0(s4)
	add	s4, s4, t5
	sb	a7, 0(s4)
	ld	s4, %lo(pixel_map)(a3)
	add	s4, s4, s5
	ld	s4, 0(s4)
	add	s4, s4, t6
	sb	a7, 0(s4)
	ld	s4, %lo(pixel_map)(a3)
	add	s4, s4, s5
	ld	s4, 0(s4)
	add	s4, s4, s0
	sb	a7, 0(s4)
	ld	s4, %lo(pixel_map)(a3)
	add	s4, s4, s5
	ld	s4, 0(s4)
	add	s4, s4, s1
	sb	a7, 0(s4)
	ld	s4, %lo(pixel_map)(a3)
	add	s4, s4, s5
	ld	s4, 0(s4)
	add	s4, s4, s2
	sb	a7, 0(s4)
	ld	s4, %lo(pixel_map)(a3)
	add	s4, s4, s5
	ld	s4, 0(s4)
	add	s4, s4, s3
	addi	s5, s5, 8
	sb	a7, 0(s4)
	bne	s5, t0, .LBB2_14
	j	.LBB2_12
.LBB2_15:                               #   in Loop: Header=BB2_16 Depth=3
	addi	s6, s6, 1
	addi	s4, s4, 8
	sb	s6, 0(s5)
	beq	s4, t0, .LBB2_12
.LBB2_16:                               #   Parent Loop BB2_10 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	s5, %lo(pixel_map)(a3)
	add	s5, s5, s4
	ld	s5, 0(s5)
	ld	s6, %lo(input)(a4)
	add	s5, s5, t2
	lbu	s7, 0(s5)
	lw	s6, 36(s6)
	blt	s6, s7, .LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_16 Depth=3
	mv	s6, s7
.LBB2_18:                               #   in Loop: Header=BB2_16 Depth=3
	addi	s6, s6, 1
	sb	s6, 0(s5)
	ld	s5, %lo(pixel_map)(a3)
	add	s5, s5, s4
	ld	s5, 0(s5)
	ld	s6, %lo(input)(a4)
	add	s5, s5, t4
	lbu	s7, 0(s5)
	lw	s6, 36(s6)
	blt	s6, s7, .LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_16 Depth=3
	mv	s6, s7
.LBB2_20:                               #   in Loop: Header=BB2_16 Depth=3
	addi	s6, s6, 1
	sb	s6, 0(s5)
	ld	s5, %lo(pixel_map)(a3)
	add	s5, s5, s4
	ld	s5, 0(s5)
	ld	s6, %lo(input)(a4)
	add	s5, s5, t5
	lbu	s7, 0(s5)
	lw	s6, 36(s6)
	blt	s6, s7, .LBB2_22
# %bb.21:                               #   in Loop: Header=BB2_16 Depth=3
	mv	s6, s7
.LBB2_22:                               #   in Loop: Header=BB2_16 Depth=3
	addi	s6, s6, 1
	sb	s6, 0(s5)
	ld	s5, %lo(pixel_map)(a3)
	add	s5, s5, s4
	ld	s5, 0(s5)
	ld	s6, %lo(input)(a4)
	add	s5, s5, t6
	lbu	s7, 0(s5)
	lw	s6, 36(s6)
	blt	s6, s7, .LBB2_24
# %bb.23:                               #   in Loop: Header=BB2_16 Depth=3
	mv	s6, s7
.LBB2_24:                               #   in Loop: Header=BB2_16 Depth=3
	addi	s6, s6, 1
	sb	s6, 0(s5)
	ld	s5, %lo(pixel_map)(a3)
	add	s5, s5, s4
	ld	s5, 0(s5)
	ld	s6, %lo(input)(a4)
	add	s5, s5, s0
	lbu	s7, 0(s5)
	lw	s6, 36(s6)
	blt	s6, s7, .LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_16 Depth=3
	mv	s6, s7
.LBB2_26:                               #   in Loop: Header=BB2_16 Depth=3
	addi	s6, s6, 1
	sb	s6, 0(s5)
	ld	s5, %lo(pixel_map)(a3)
	add	s5, s5, s4
	ld	s5, 0(s5)
	ld	s6, %lo(input)(a4)
	add	s5, s5, s1
	lbu	s7, 0(s5)
	lw	s6, 36(s6)
	blt	s6, s7, .LBB2_28
# %bb.27:                               #   in Loop: Header=BB2_16 Depth=3
	mv	s6, s7
.LBB2_28:                               #   in Loop: Header=BB2_16 Depth=3
	addi	s6, s6, 1
	sb	s6, 0(s5)
	ld	s5, %lo(pixel_map)(a3)
	add	s5, s5, s4
	ld	s5, 0(s5)
	ld	s6, %lo(input)(a4)
	add	s5, s5, s2
	lbu	s7, 0(s5)
	lw	s6, 36(s6)
	blt	s6, s7, .LBB2_30
# %bb.29:                               #   in Loop: Header=BB2_16 Depth=3
	mv	s6, s7
.LBB2_30:                               #   in Loop: Header=BB2_16 Depth=3
	addi	s6, s6, 1
	sb	s6, 0(s5)
	ld	s5, %lo(pixel_map)(a3)
	add	s5, s5, s4
	ld	s5, 0(s5)
	ld	s6, %lo(input)(a4)
	add	s5, s5, s3
	lbu	s7, 0(s5)
	lw	s6, 36(s6)
	blt	s6, s7, .LBB2_15
# %bb.31:                               #   in Loop: Header=BB2_16 Depth=3
	mv	s6, s7
	j	.LBB2_15
.LBB2_32:
	ld	s0, 56(sp)                      # 8-byte Folded Reload
	ld	s1, 48(sp)                      # 8-byte Folded Reload
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	ld	s3, 32(sp)                      # 8-byte Folded Reload
	ld	s4, 24(sp)                      # 8-byte Folded Reload
	ld	s5, 16(sp)                      # 8-byte Folded Reload
	ld	s6, 8(sp)                       # 8-byte Folded Reload
	ld	s7, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
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
	lui	a4, %hi(img)
	ld	a7, %lo(img)(a4)
	lw	a5, 52(a7)
	lw	a6, 60(a7)
	slti	a4, a3, 4
	xori	t0, a4, 1
	addi	a4, a3, -2
	seqz	t1, a4
	li	t2, 3
	slliw	a4, a0, 1
	blt	t2, a3, .LBB3_2
# %bb.1:
	neg	a0, t1
	and	a0, a0, a4
	or	t3, t0, t1
	li	t0, 2
	li	t1, 2
	beqz	t3, .LBB3_3
	j	.LBB3_4
.LBB3_2:
	andi	a0, a0, -2
	or	t3, t0, t1
	li	t0, 2
	li	t1, 2
	bnez	t3, .LBB3_4
.LBB3_3:
	li	t1, 4
.LBB3_4:
	blt	t2, a3, .LBB3_6
# %bb.5:
	addi	t2, a3, -3
	snez	t2, t2
	addi	t2, t2, -1
	and	a4, t2, a4
	bge	t0, a3, .LBB3_7
	j	.LBB3_8
.LBB3_6:
	andi	a4, a4, 2
	blt	t0, a3, .LBB3_8
.LBB3_7:
	li	t0, 4
.LBB3_8:
	addiw	a5, a5, -1
	addiw	t2, a6, -1
	addw	ra, a0, t1
	addw	t3, a4, t0
	lui	a6, 22
	add	a6, a7, a6
	ld	t0, -776(a6)
	lw	t4, 148(a7)
	lw	t5, 144(a7)
	lui	a6, %hi(pixel_map)
	ld	t1, %lo(pixel_map)(a6)
	slli	a1, a1, 3
	slli	s2, a2, 3
	slli	a3, a3, 3
	sd	t0, 80(sp)                      # 8-byte Folded Spill
	sd	t4, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 88(sp)                      # 8-byte Folded Spill
.LBB3_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
                                        #       Child Loop BB3_247 Depth 3
                                        #         Child Loop BB3_256 Depth 4
                                        #       Child Loop BB3_183 Depth 3
                                        #         Child Loop BB3_196 Depth 4
                                        #       Child Loop BB3_44 Depth 3
                                        #         Child Loop BB3_57 Depth 4
                                        #       Child Loop BB3_144 Depth 3
                                        #       Child Loop BB3_112 Depth 3
                                        #         Child Loop BB3_115 Depth 4
	slli	a6, a0, 3
	add	a6, t0, a6
	ld	s6, 0(a6)
	add	s3, t4, a0
	slli	s3, s3, 4
	mv	s4, a4
	sd	s6, 96(sp)                      # 8-byte Folded Spill
.LBB3_10:                               #   Parent Loop BB3_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_247 Depth 3
                                        #         Child Loop BB3_256 Depth 4
                                        #       Child Loop BB3_183 Depth 3
                                        #         Child Loop BB3_196 Depth 4
                                        #       Child Loop BB3_44 Depth 3
                                        #         Child Loop BB3_57 Depth 4
                                        #       Child Loop BB3_144 Depth 3
                                        #       Child Loop BB3_112 Depth 3
                                        #         Child Loop BB3_115 Depth 4
	slli	a6, s4, 3
	add	a6, s6, a6
	ld	a6, 0(a6)
	add	a6, a6, a1
	ld	a6, 0(a6)
	add	a6, a6, s2
	ld	a6, 0(a6)
	add	a6, a6, a3
	ld	a6, 0(a6)
	lh	t0, 2(a6)
	lh	a6, 0(a6)
	andi	a7, t0, 3
	andi	s7, a6, 3
	add	t0, s3, t0
	sraiw	s5, t0, 2
	add	t0, t5, s4
	slli	t0, t0, 4
	add	a6, t0, a6
	or	t0, a7, s7
	sraiw	s9, a6, 2
	bnez	t0, .LBB3_40
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=2
	mv	a7, a5
	blt	a5, s9, .LBB3_107
# %bb.12:                               #   in Loop: Header=BB3_10 Depth=2
	mv	a7, s9
	addi	a6, s9, 1
	mv	t0, a5
	bge	a5, a6, .LBB3_108
.LBB3_13:                               #   in Loop: Header=BB3_10 Depth=2
	addi	a6, s9, 2
	mv	t4, a5
	blt	a5, a6, .LBB3_109
.LBB3_14:                               #   in Loop: Header=BB3_10 Depth=2
	mv	t4, a6
	addi	s9, s9, 3
	mv	s0, a5
	bge	a5, s9, .LBB3_110
.LBB3_15:                               #   in Loop: Header=BB3_10 Depth=2
	mv	t6, t2
	blt	t2, s5, .LBB3_17
.LBB3_16:                               #   in Loop: Header=BB3_10 Depth=2
	mv	t6, s5
.LBB3_17:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	a6, t6
	neg	a6, a6
	and	a6, a6, t6
	slli	a6, a6, 3
	add	a6, t1, a6
	ld	s1, 0(a6)
	sgtz	a6, a7
	neg	a6, a6
	and	a7, a6, a7
	add	a6, s1, a7
	lbu	a6, 0(a6)
	blt	a2, a6, .LBB3_18
	j	.LBB3_294
.LBB3_18:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	a6, t0
	neg	a6, a6
	and	t0, a6, t0
	add	a6, s1, t0
	lbu	a6, 0(a6)
	blt	a2, a6, .LBB3_19
	j	.LBB3_294
.LBB3_19:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	a6, t4
	neg	t6, a6
	and	t6, t6, t4
	add	a6, s1, t6
	lbu	a6, 0(a6)
	blt	a2, a6, .LBB3_20
	j	.LBB3_294
.LBB3_20:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	a6, s0
	neg	a6, a6
	and	s0, a6, s0
	add	s1, s1, s0
	lbu	a6, 0(s1)
	blt	a2, a6, .LBB3_21
	j	.LBB3_294
.LBB3_21:                               #   in Loop: Header=BB3_10 Depth=2
	addi	a6, s5, 1
	mv	t4, t2
	blt	t2, a6, .LBB3_23
# %bb.22:                               #   in Loop: Header=BB3_10 Depth=2
	mv	t4, a6
.LBB3_23:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	slli	a6, a6, 3
	add	a6, t1, a6
	ld	t4, 0(a6)
	add	a6, t4, a7
	lbu	a6, 0(a6)
	blt	a2, a6, .LBB3_24
	j	.LBB3_294
.LBB3_24:                               #   in Loop: Header=BB3_10 Depth=2
	add	a6, t4, t0
	lbu	a6, 0(a6)
	blt	a2, a6, .LBB3_25
	j	.LBB3_294
.LBB3_25:                               #   in Loop: Header=BB3_10 Depth=2
	add	a6, t4, t6
	lbu	a6, 0(a6)
	blt	a2, a6, .LBB3_26
	j	.LBB3_294
.LBB3_26:                               #   in Loop: Header=BB3_10 Depth=2
	add	t4, t4, s0
	lbu	a6, 0(t4)
	blt	a2, a6, .LBB3_27
	j	.LBB3_294
.LBB3_27:                               #   in Loop: Header=BB3_10 Depth=2
	addi	a6, s5, 2
	mv	t4, t2
	blt	t2, a6, .LBB3_29
# %bb.28:                               #   in Loop: Header=BB3_10 Depth=2
	mv	t4, a6
.LBB3_29:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	slli	a6, a6, 3
	add	a6, t1, a6
	ld	t4, 0(a6)
	add	a6, t4, a7
	lbu	a6, 0(a6)
	blt	a2, a6, .LBB3_30
	j	.LBB3_294
.LBB3_30:                               #   in Loop: Header=BB3_10 Depth=2
	add	a6, t4, t0
	lbu	a6, 0(a6)
	blt	a2, a6, .LBB3_31
	j	.LBB3_294
.LBB3_31:                               #   in Loop: Header=BB3_10 Depth=2
	add	a6, t4, t6
	lbu	a6, 0(a6)
	blt	a2, a6, .LBB3_32
	j	.LBB3_294
.LBB3_32:                               #   in Loop: Header=BB3_10 Depth=2
	add	t4, t4, s0
	lbu	a6, 0(t4)
	blt	a2, a6, .LBB3_33
	j	.LBB3_294
.LBB3_33:                               #   in Loop: Header=BB3_10 Depth=2
	addi	s5, s5, 3
	mv	t4, t2
	blt	t2, s5, .LBB3_35
# %bb.34:                               #   in Loop: Header=BB3_10 Depth=2
	mv	t4, s5
.LBB3_35:                               #   in Loop: Header=BB3_10 Depth=2
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	slli	a6, a6, 3
	add	a6, t1, a6
	ld	t4, 0(a6)
	add	a7, t4, a7
	lbu	a6, 0(a7)
	blt	a2, a6, .LBB3_36
	j	.LBB3_294
.LBB3_36:                               #   in Loop: Header=BB3_10 Depth=2
	add	t0, t4, t0
	lbu	a6, 0(t0)
	blt	a2, a6, .LBB3_37
	j	.LBB3_294
.LBB3_37:                               #   in Loop: Header=BB3_10 Depth=2
	add	t6, t4, t6
	lbu	a6, 0(t6)
	blt	a2, a6, .LBB3_38
	j	.LBB3_294
.LBB3_38:                               #   in Loop: Header=BB3_10 Depth=2
	add	t4, t4, s0
	lbu	a6, 0(t4)
	blt	a2, a6, .LBB3_39
	j	.LBB3_294
.LBB3_39:                               #   in Loop: Header=BB3_10 Depth=2
	addi	s4, s4, 1
	ld	s2, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	blt	s4, t3, .LBB3_10
	j	.LBB3_292
.LBB3_40:                               #   in Loop: Header=BB3_10 Depth=2
	beqz	a7, .LBB3_111
# %bb.41:                               #   in Loop: Header=BB3_10 Depth=2
	beqz	s7, .LBB3_135
# %bb.42:                               #   in Loop: Header=BB3_10 Depth=2
	li	a6, 2
	sd	ra, 64(sp)                      # 8-byte Folded Spill
	bne	s7, a6, .LBB3_181
# %bb.43:                               #   in Loop: Header=BB3_10 Depth=2
	addi	a6, s5, 3
	sd	a6, 24(sp)                      # 8-byte Folded Spill
	addi	s2, s9, -1
	addi	s7, s9, -2
.LBB3_44:                               #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_57 Depth 4
	mv	s10, s5
	addiw	t0, s5, -2
	mv	a7, t2
	blt	t2, t0, .LBB3_50
# %bb.45:                               #   in Loop: Header=BB3_44 Depth=3
	mv	a7, t0
	addiw	t4, s10, -1
	mv	t0, t2
	bge	t2, t4, .LBB3_51
.LBB3_46:                               #   in Loop: Header=BB3_44 Depth=3
	mv	t4, t2
	blt	t2, s10, .LBB3_52
.LBB3_47:                               #   in Loop: Header=BB3_44 Depth=3
	mv	t4, s10
	addiw	s5, s10, 1
	mv	t6, t2
	bge	t2, s5, .LBB3_53
.LBB3_48:                               #   in Loop: Header=BB3_44 Depth=3
	addiw	s1, s10, 2
	mv	s0, t2
	blt	t2, s1, .LBB3_54
.LBB3_49:                               #   in Loop: Header=BB3_44 Depth=3
	mv	s0, s1
	addiw	s6, s10, 3
	mv	s1, t2
	bge	t2, s6, .LBB3_55
	j	.LBB3_56
.LBB3_50:                               #   in Loop: Header=BB3_44 Depth=3
	addiw	t4, s10, -1
	mv	t0, t2
	blt	t2, t4, .LBB3_46
.LBB3_51:                               #   in Loop: Header=BB3_44 Depth=3
	mv	t0, t4
	mv	t4, t2
	bge	t2, s10, .LBB3_47
.LBB3_52:                               #   in Loop: Header=BB3_44 Depth=3
	addiw	s5, s10, 1
	mv	t6, t2
	blt	t2, s5, .LBB3_48
.LBB3_53:                               #   in Loop: Header=BB3_44 Depth=3
	mv	t6, s5
	addiw	s1, s10, 2
	mv	s0, t2
	bge	t2, s1, .LBB3_49
.LBB3_54:                               #   in Loop: Header=BB3_44 Depth=3
	addiw	s6, s10, 3
	mv	s1, t2
	blt	t2, s6, .LBB3_56
.LBB3_55:                               #   in Loop: Header=BB3_44 Depth=3
	mv	s1, s6
.LBB3_56:                               #   in Loop: Header=BB3_44 Depth=3
	li	s11, 0
	sgtz	a6, a7
	neg	a6, a6
	and	a6, a6, a7
	sgtz	a7, t0
	neg	a7, a7
	and	a7, a7, t0
	sgtz	t0, t4
	neg	t0, t0
	and	t0, t0, t4
	sgtz	t4, t6
	neg	t4, t4
	and	t4, t4, t6
	sgtz	t6, s0
	neg	t6, t6
	and	t6, t6, s0
	sgtz	s0, s1
	neg	s0, s0
	and	s0, s0, s1
	slli	a6, a6, 3
	add	a6, t1, a6
	ld	ra, 0(a6)
	slli	a7, a7, 3
	add	s1, t1, a7
	slli	t0, t0, 3
	add	t0, t1, t0
	sd	t0, 56(sp)                      # 8-byte Folded Spill
	slli	t4, t4, 3
	add	t4, t1, t4
	sd	t4, 48(sp)                      # 8-byte Folded Spill
	slli	t6, t6, 3
	add	t6, t1, t6
	sd	t6, 40(sp)                      # 8-byte Folded Spill
	slli	s0, s0, 3
	add	s0, t1, s0
	sd	s0, 32(sp)                      # 8-byte Folded Spill
.LBB3_57:                               #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_44 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addw	t0, s7, s11
	mv	a7, a5
	blt	a5, t0, .LBB3_59
# %bb.58:                               #   in Loop: Header=BB3_57 Depth=4
	mv	a7, t0
.LBB3_59:                               #   in Loop: Header=BB3_57 Depth=4
	sgtz	a6, a7
	neg	a6, a6
	and	t6, a6, a7
	add	a6, ra, t6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.60:                               #   in Loop: Header=BB3_57 Depth=4
	addw	t0, s2, s11
	mv	a7, a5
	blt	a5, t0, .LBB3_62
# %bb.61:                               #   in Loop: Header=BB3_57 Depth=4
	mv	a7, t0
.LBB3_62:                               #   in Loop: Header=BB3_57 Depth=4
	sgtz	a6, a7
	neg	a6, a6
	and	t0, a6, a7
	add	a6, ra, t0
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.63:                               #   in Loop: Header=BB3_57 Depth=4
	addw	t4, s9, s11
	mv	a7, a5
	blt	a5, t4, .LBB3_65
# %bb.64:                               #   in Loop: Header=BB3_57 Depth=4
	mv	a7, t4
.LBB3_65:                               #   in Loop: Header=BB3_57 Depth=4
	sgtz	a6, a7
	neg	a6, a6
	and	s8, a6, a7
	add	a6, ra, s8
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.66:                               #   in Loop: Header=BB3_57 Depth=4
	add	t4, s9, s11
	addiw	s0, t4, 1
	mv	a7, a5
	blt	a5, s0, .LBB3_68
# %bb.67:                               #   in Loop: Header=BB3_57 Depth=4
	mv	a7, s0
.LBB3_68:                               #   in Loop: Header=BB3_57 Depth=4
	sgtz	a6, a7
	neg	a6, a6
	and	a7, a6, a7
	add	a6, ra, a7
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.69:                               #   in Loop: Header=BB3_57 Depth=4
	addiw	s6, t4, 2
	mv	s0, a5
	blt	a5, s6, .LBB3_71
# %bb.70:                               #   in Loop: Header=BB3_57 Depth=4
	mv	s0, s6
.LBB3_71:                               #   in Loop: Header=BB3_57 Depth=4
	sgtz	a6, s0
	neg	a6, a6
	and	s6, a6, s0
	add	a6, ra, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.72:                               #   in Loop: Header=BB3_57 Depth=4
	addiw	s0, t4, 3
	mv	t4, a5
	blt	a5, s0, .LBB3_74
# %bb.73:                               #   in Loop: Header=BB3_57 Depth=4
	mv	t4, s0
.LBB3_74:                               #   in Loop: Header=BB3_57 Depth=4
	sgtz	a6, t4
	neg	s0, a6
	and	s0, s0, t4
	add	a6, ra, s0
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.75:                               #   in Loop: Header=BB3_57 Depth=4
	ld	t4, 0(s1)
	add	a6, t4, t6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.76:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, t0
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.77:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, s8
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.78:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, a7
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.79:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.80:                               #   in Loop: Header=BB3_57 Depth=4
	add	t4, t4, s0
	lbu	a6, 0(t4)
	bge	a2, a6, .LBB3_294
# %bb.81:                               #   in Loop: Header=BB3_57 Depth=4
	ld	a6, 56(sp)                      # 8-byte Folded Reload
	ld	t4, 0(a6)
	add	a6, t4, t6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.82:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, t0
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.83:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, s8
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.84:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, a7
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.85:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.86:                               #   in Loop: Header=BB3_57 Depth=4
	add	t4, t4, s0
	lbu	a6, 0(t4)
	bge	a2, a6, .LBB3_294
# %bb.87:                               #   in Loop: Header=BB3_57 Depth=4
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	ld	t4, 0(a6)
	add	a6, t4, t6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.88:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, t0
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.89:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, s8
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.90:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, a7
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.91:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.92:                               #   in Loop: Header=BB3_57 Depth=4
	add	t4, t4, s0
	lbu	a6, 0(t4)
	bge	a2, a6, .LBB3_294
# %bb.93:                               #   in Loop: Header=BB3_57 Depth=4
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	ld	t4, 0(a6)
	add	a6, t4, t6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.94:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, t0
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.95:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, s8
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.96:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, a7
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.97:                               #   in Loop: Header=BB3_57 Depth=4
	add	a6, t4, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.98:                               #   in Loop: Header=BB3_57 Depth=4
	add	t4, t4, s0
	lbu	a6, 0(t4)
	bge	a2, a6, .LBB3_294
# %bb.99:                               #   in Loop: Header=BB3_57 Depth=4
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	ld	t4, 0(a6)
	add	t6, t4, t6
	lbu	a6, 0(t6)
	bge	a2, a6, .LBB3_294
# %bb.100:                              #   in Loop: Header=BB3_57 Depth=4
	add	t0, t4, t0
	lbu	a6, 0(t0)
	bge	a2, a6, .LBB3_294
# %bb.101:                              #   in Loop: Header=BB3_57 Depth=4
	add	s8, t4, s8
	lbu	a6, 0(s8)
	bge	a2, a6, .LBB3_294
# %bb.102:                              #   in Loop: Header=BB3_57 Depth=4
	add	a7, t4, a7
	lbu	a6, 0(a7)
	bge	a2, a6, .LBB3_294
# %bb.103:                              #   in Loop: Header=BB3_57 Depth=4
	add	s6, t4, s6
	lbu	a6, 0(s6)
	bge	a2, a6, .LBB3_294
# %bb.104:                              #   in Loop: Header=BB3_57 Depth=4
	add	t4, t4, s0
	lbu	a6, 0(t4)
	bge	a2, a6, .LBB3_294
# %bb.105:                              #   in Loop: Header=BB3_57 Depth=4
	addiw	s11, s11, 1
	li	a6, 4
	bne	s11, a6, .LBB3_57
# %bb.106:                              #   in Loop: Header=BB3_44 Depth=3
	ld	ra, 64(sp)                      # 8-byte Folded Reload
	ld	a6, 24(sp)                      # 8-byte Folded Reload
	bne	s10, a6, .LBB3_44
	j	.LBB3_39
.LBB3_107:                              #   in Loop: Header=BB3_10 Depth=2
	addi	a6, s9, 1
	mv	t0, a5
	blt	a5, a6, .LBB3_13
.LBB3_108:                              #   in Loop: Header=BB3_10 Depth=2
	mv	t0, a6
	addi	a6, s9, 2
	mv	t4, a5
	bge	a5, a6, .LBB3_14
.LBB3_109:                              #   in Loop: Header=BB3_10 Depth=2
	addi	s9, s9, 3
	mv	s0, a5
	blt	a5, s9, .LBB3_15
.LBB3_110:                              #   in Loop: Header=BB3_10 Depth=2
	mv	s0, s9
	mv	t6, t2
	bge	t2, s5, .LBB3_16
	j	.LBB3_17
.LBB3_111:                              #   in Loop: Header=BB3_10 Depth=2
	addi	a7, s5, 3
	addi	t0, s9, -1
	addi	t6, s9, -2
.LBB3_112:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_115 Depth 4
	mv	s2, a4
	mv	a4, s3
	mv	s0, s5
	mv	t4, t2
	blt	t2, s5, .LBB3_114
# %bb.113:                              #   in Loop: Header=BB3_112 Depth=3
	mv	t4, s0
.LBB3_114:                              #   in Loop: Header=BB3_112 Depth=3
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	slli	a6, a6, 3
	add	a6, t1, a6
	ld	s1, 0(a6)
	li	s5, 0
	li	s3, 4
.LBB3_115:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_112 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addw	a6, t6, s5
	mv	t4, a5
	blt	a5, a6, .LBB3_117
# %bb.116:                              #   in Loop: Header=BB3_115 Depth=4
	mv	t4, a6
.LBB3_117:                              #   in Loop: Header=BB3_115 Depth=4
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	add	a6, s1, a6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.118:                              #   in Loop: Header=BB3_115 Depth=4
	addw	a6, t0, s5
	mv	t4, a5
	blt	a5, a6, .LBB3_120
# %bb.119:                              #   in Loop: Header=BB3_115 Depth=4
	mv	t4, a6
.LBB3_120:                              #   in Loop: Header=BB3_115 Depth=4
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	add	a6, s1, a6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.121:                              #   in Loop: Header=BB3_115 Depth=4
	addw	s6, s9, s5
	mv	t4, a5
	blt	a5, s6, .LBB3_123
# %bb.122:                              #   in Loop: Header=BB3_115 Depth=4
	mv	t4, s6
.LBB3_123:                              #   in Loop: Header=BB3_115 Depth=4
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	add	a6, s1, a6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.124:                              #   in Loop: Header=BB3_115 Depth=4
	add	t4, s9, s5
	addiw	a6, t4, 1
	mv	s6, a5
	blt	a5, a6, .LBB3_126
# %bb.125:                              #   in Loop: Header=BB3_115 Depth=4
	mv	s6, a6
.LBB3_126:                              #   in Loop: Header=BB3_115 Depth=4
	sgtz	a6, s6
	neg	a6, a6
	and	a6, a6, s6
	add	a6, s1, a6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.127:                              #   in Loop: Header=BB3_115 Depth=4
	addiw	a6, t4, 2
	mv	s6, a5
	blt	a5, a6, .LBB3_129
# %bb.128:                              #   in Loop: Header=BB3_115 Depth=4
	mv	s6, a6
.LBB3_129:                              #   in Loop: Header=BB3_115 Depth=4
	sgtz	a6, s6
	neg	a6, a6
	and	a6, a6, s6
	add	a6, s1, a6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.130:                              #   in Loop: Header=BB3_115 Depth=4
	addiw	a6, t4, 3
	mv	t4, a5
	blt	a5, a6, .LBB3_132
# %bb.131:                              #   in Loop: Header=BB3_115 Depth=4
	mv	t4, a6
.LBB3_132:                              #   in Loop: Header=BB3_115 Depth=4
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	add	a6, s1, a6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.133:                              #   in Loop: Header=BB3_115 Depth=4
	addiw	s5, s5, 1
	bne	s5, s3, .LBB3_115
# %bb.134:                              #   in Loop: Header=BB3_112 Depth=3
	addiw	s5, s0, 1
	mv	s3, a4
	mv	a4, s2
	bne	s0, a7, .LBB3_112
	j	.LBB3_39
.LBB3_135:                              #   in Loop: Header=BB3_10 Depth=2
	mv	t0, a5
	blt	a5, s9, .LBB3_139
# %bb.136:                              #   in Loop: Header=BB3_10 Depth=2
	mv	t0, s9
	addi	a7, s9, 1
	mv	t4, a5
	bge	a5, a7, .LBB3_140
.LBB3_137:                              #   in Loop: Header=BB3_10 Depth=2
	addi	a7, s9, 2
	mv	s1, a5
	blt	a5, a7, .LBB3_141
.LBB3_138:                              #   in Loop: Header=BB3_10 Depth=2
	mv	s1, a7
	addi	s9, s9, 3
	mv	s6, a5
	bge	a5, s9, .LBB3_142
	j	.LBB3_143
.LBB3_139:                              #   in Loop: Header=BB3_10 Depth=2
	addi	a7, s9, 1
	mv	t4, a5
	blt	a5, a7, .LBB3_137
.LBB3_140:                              #   in Loop: Header=BB3_10 Depth=2
	mv	t4, a7
	addi	a7, s9, 2
	mv	s1, a5
	bge	a5, a7, .LBB3_138
.LBB3_141:                              #   in Loop: Header=BB3_10 Depth=2
	addi	s9, s9, 3
	mv	s6, a5
	blt	a5, s9, .LBB3_143
.LBB3_142:                              #   in Loop: Header=BB3_10 Depth=2
	mv	s6, s9
.LBB3_143:                              #   in Loop: Header=BB3_10 Depth=2
	li	a7, 0
	sgtz	a6, t0
	neg	a6, a6
	and	t6, a6, t0
	sgtz	a6, t4
	neg	s0, a6
	and	s0, s0, t4
	sgtz	a6, s1
	neg	a6, a6
	and	s1, a6, s1
	sgtz	a6, s6
	neg	a6, a6
	and	s6, a6, s6
	addi	s7, s5, -1
	addi	s8, s5, -2
.LBB3_144:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	s2, a4
	mv	a4, s3
	mv	s3, a3
	mv	a3, a1
	addw	t4, s8, a7
	mv	t0, t2
	blt	t2, t4, .LBB3_150
# %bb.145:                              #   in Loop: Header=BB3_144 Depth=3
	mv	t0, t4
	mv	a1, t3
	addw	t4, s7, a7
	mv	s9, t2
	bge	t2, t4, .LBB3_151
.LBB3_146:                              #   in Loop: Header=BB3_144 Depth=3
	mv	t3, ra
	addw	t4, s5, a7
	mv	s10, t2
	blt	t2, t4, .LBB3_152
.LBB3_147:                              #   in Loop: Header=BB3_144 Depth=3
	mv	s10, t4
	addiw	ra, t4, 1
	mv	s11, t2
	bge	t2, ra, .LBB3_153
.LBB3_148:                              #   in Loop: Header=BB3_144 Depth=3
	addiw	ra, t4, 2
	mv	a6, t2
	blt	t2, ra, .LBB3_154
.LBB3_149:                              #   in Loop: Header=BB3_144 Depth=3
	mv	a6, ra
	addiw	ra, t4, 3
	mv	t4, t2
	bge	t2, ra, .LBB3_155
	j	.LBB3_156
.LBB3_150:                              #   in Loop: Header=BB3_144 Depth=3
	mv	a1, t3
	addw	t4, s7, a7
	mv	s9, t2
	blt	t2, t4, .LBB3_146
.LBB3_151:                              #   in Loop: Header=BB3_144 Depth=3
	mv	s9, t4
	mv	t3, ra
	addw	t4, s5, a7
	mv	s10, t2
	bge	t2, t4, .LBB3_147
.LBB3_152:                              #   in Loop: Header=BB3_144 Depth=3
	addiw	ra, t4, 1
	mv	s11, t2
	blt	t2, ra, .LBB3_148
.LBB3_153:                              #   in Loop: Header=BB3_144 Depth=3
	mv	s11, ra
	addiw	ra, t4, 2
	mv	a6, t2
	bge	t2, ra, .LBB3_149
.LBB3_154:                              #   in Loop: Header=BB3_144 Depth=3
	addiw	ra, t4, 3
	mv	t4, t2
	blt	t2, ra, .LBB3_156
.LBB3_155:                              #   in Loop: Header=BB3_144 Depth=3
	mv	t4, ra
.LBB3_156:                              #   in Loop: Header=BB3_144 Depth=3
	sgtz	ra, t0
	neg	ra, ra
	and	t0, ra, t0
	slli	t0, t0, 3
	add	t0, t1, t0
	ld	t0, 0(t0)
	add	ra, t0, t6
	lbu	ra, 0(ra)
	bge	a2, ra, .LBB3_294
# %bb.157:                              #   in Loop: Header=BB3_144 Depth=3
	sgtz	ra, s9
	neg	ra, ra
	and	s9, ra, s9
	slli	s9, s9, 3
	add	s9, t1, s9
	ld	ra, 0(s9)
	add	ra, ra, t6
	lbu	ra, 0(ra)
	bge	a2, ra, .LBB3_294
# %bb.158:                              #   in Loop: Header=BB3_144 Depth=3
	sgtz	ra, s10
	neg	ra, ra
	and	s10, ra, s10
	slli	s10, s10, 3
	add	s10, t1, s10
	ld	ra, 0(s10)
	add	ra, ra, t6
	lbu	ra, 0(ra)
	bge	a2, ra, .LBB3_294
# %bb.159:                              #   in Loop: Header=BB3_144 Depth=3
	sgtz	ra, s11
	neg	ra, ra
	and	s11, ra, s11
	slli	s11, s11, 3
	add	s11, t1, s11
	ld	ra, 0(s11)
	add	ra, ra, t6
	lbu	ra, 0(ra)
	bge	a2, ra, .LBB3_294
# %bb.160:                              #   in Loop: Header=BB3_144 Depth=3
	sgtz	ra, a6
	neg	ra, ra
	and	a6, ra, a6
	slli	a6, a6, 3
	add	ra, t1, a6
	ld	a6, 0(ra)
	add	a6, a6, t6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.161:                              #   in Loop: Header=BB3_144 Depth=3
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	slli	a6, a6, 3
	add	t4, t1, a6
	ld	a6, 0(t4)
	add	a6, a6, t6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.162:                              #   in Loop: Header=BB3_144 Depth=3
	add	a6, t0, s0
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.163:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(s9)
	add	a6, a6, s0
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.164:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(s10)
	add	a6, a6, s0
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.165:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(s11)
	add	a6, a6, s0
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.166:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(ra)
	add	a6, a6, s0
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.167:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(t4)
	add	a6, a6, s0
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.168:                              #   in Loop: Header=BB3_144 Depth=3
	add	a6, t0, s1
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.169:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(s9)
	add	a6, a6, s1
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.170:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(s10)
	add	a6, a6, s1
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.171:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(s11)
	add	a6, a6, s1
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.172:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(ra)
	add	a6, a6, s1
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.173:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(t4)
	add	a6, a6, s1
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.174:                              #   in Loop: Header=BB3_144 Depth=3
	add	t0, t0, s6
	lbu	a6, 0(t0)
	bge	a2, a6, .LBB3_294
# %bb.175:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(s9)
	add	a6, a6, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.176:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(s10)
	add	a6, a6, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.177:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(s11)
	add	a6, a6, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.178:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(ra)
	add	a6, a6, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.179:                              #   in Loop: Header=BB3_144 Depth=3
	ld	a6, 0(t4)
	add	a6, a6, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.180:                              #   in Loop: Header=BB3_144 Depth=3
	addiw	a7, a7, 1
	mv	ra, t3
	mv	t3, a1
	mv	a1, a3
	mv	a3, s3
	li	a6, 4
	mv	s3, a4
	mv	a4, s2
	bne	a7, a6, .LBB3_144
	j	.LBB3_39
.LBB3_181:                              #   in Loop: Header=BB3_10 Depth=2
	bne	a7, a6, .LBB3_246
# %bb.182:                              #   in Loop: Header=BB3_10 Depth=2
	addi	a6, s5, 3
	sd	a6, 8(sp)                       # 8-byte Folded Spill
	addi	a6, s9, -1
	sd	a6, 40(sp)                      # 8-byte Folded Spill
	addi	s7, s9, -2
.LBB3_183:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_196 Depth 4
	mv	s10, s5
	addiw	t0, s5, -2
	mv	a7, t2
	blt	t2, t0, .LBB3_189
# %bb.184:                              #   in Loop: Header=BB3_183 Depth=3
	mv	a7, t0
	addiw	t4, s10, -1
	mv	t0, t2
	bge	t2, t4, .LBB3_190
.LBB3_185:                              #   in Loop: Header=BB3_183 Depth=3
	mv	t4, t2
	blt	t2, s10, .LBB3_191
.LBB3_186:                              #   in Loop: Header=BB3_183 Depth=3
	mv	t4, s10
	addiw	s5, s10, 1
	mv	t6, t2
	bge	t2, s5, .LBB3_192
.LBB3_187:                              #   in Loop: Header=BB3_183 Depth=3
	addiw	s1, s10, 2
	mv	s0, t2
	blt	t2, s1, .LBB3_193
.LBB3_188:                              #   in Loop: Header=BB3_183 Depth=3
	mv	s0, s1
	addiw	s6, s10, 3
	mv	s1, t2
	bge	t2, s6, .LBB3_194
	j	.LBB3_195
.LBB3_189:                              #   in Loop: Header=BB3_183 Depth=3
	addiw	t4, s10, -1
	mv	t0, t2
	blt	t2, t4, .LBB3_185
.LBB3_190:                              #   in Loop: Header=BB3_183 Depth=3
	mv	t0, t4
	mv	t4, t2
	bge	t2, s10, .LBB3_186
.LBB3_191:                              #   in Loop: Header=BB3_183 Depth=3
	addiw	s5, s10, 1
	mv	t6, t2
	blt	t2, s5, .LBB3_187
.LBB3_192:                              #   in Loop: Header=BB3_183 Depth=3
	mv	t6, s5
	addiw	s1, s10, 2
	mv	s0, t2
	bge	t2, s1, .LBB3_188
.LBB3_193:                              #   in Loop: Header=BB3_183 Depth=3
	addiw	s6, s10, 3
	mv	s1, t2
	blt	t2, s6, .LBB3_195
.LBB3_194:                              #   in Loop: Header=BB3_183 Depth=3
	mv	s1, s6
.LBB3_195:                              #   in Loop: Header=BB3_183 Depth=3
	li	s11, 0
	sgtz	a6, a7
	neg	a6, a6
	and	a6, a6, a7
	sgtz	a7, t0
	neg	a7, a7
	and	a7, a7, t0
	sgtz	t0, t4
	neg	t0, t0
	and	t0, t0, t4
	sgtz	t4, t6
	neg	t4, t4
	and	t4, t4, t6
	sgtz	t6, s0
	neg	t6, t6
	and	t6, t6, s0
	sgtz	s0, s1
	neg	s0, s0
	and	s0, s0, s1
	slli	a6, a6, 3
	add	a6, t1, a6
	ld	ra, 0(a6)
	slli	a7, a7, 3
	add	s1, t1, a7
	slli	t0, t0, 3
	add	s6, t1, t0
	slli	t4, t4, 3
	add	t4, t1, t4
	sd	t4, 56(sp)                      # 8-byte Folded Spill
	slli	t6, t6, 3
	add	t6, t1, t6
	sd	t6, 48(sp)                      # 8-byte Folded Spill
	slli	s0, s0, 3
	add	s0, t1, s0
	sd	s6, 32(sp)                      # 8-byte Folded Spill
.LBB3_196:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_183 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addw	t0, s7, s11
	mv	a7, a5
	blt	a5, t0, .LBB3_198
# %bb.197:                              #   in Loop: Header=BB3_196 Depth=4
	mv	a7, t0
.LBB3_198:                              #   in Loop: Header=BB3_196 Depth=4
	sgtz	a6, a7
	neg	a6, a6
	and	t4, a6, a7
	add	a6, ra, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.199:                              #   in Loop: Header=BB3_196 Depth=4
	ld	s8, 0(s1)
	add	a6, s8, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.200:                              #   in Loop: Header=BB3_196 Depth=4
	ld	t0, 0(s6)
	add	a6, t0, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.201:                              #   in Loop: Header=BB3_196 Depth=4
	ld	a6, 56(sp)                      # 8-byte Folded Reload
	ld	t6, 0(a6)
	add	a6, t6, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.202:                              #   in Loop: Header=BB3_196 Depth=4
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	ld	a7, 0(a6)
	add	a6, a7, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.203:                              #   in Loop: Header=BB3_196 Depth=4
	mv	s2, s0
	ld	s0, 0(s0)
	add	t4, s0, t4
	lbu	a6, 0(t4)
	bge	a2, a6, .LBB3_294
# %bb.204:                              #   in Loop: Header=BB3_196 Depth=4
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	addw	s6, a6, s11
	mv	t4, a5
	blt	a5, s6, .LBB3_206
# %bb.205:                              #   in Loop: Header=BB3_196 Depth=4
	mv	t4, s6
.LBB3_206:                              #   in Loop: Header=BB3_196 Depth=4
	sgtz	a6, t4
	neg	a6, a6
	and	t4, a6, t4
	add	a6, ra, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.207:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, s8, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.208:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, t0, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.209:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, t6, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.210:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, a7, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.211:                              #   in Loop: Header=BB3_196 Depth=4
	add	t4, s0, t4
	lbu	a6, 0(t4)
	bge	a2, a6, .LBB3_294
# %bb.212:                              #   in Loop: Header=BB3_196 Depth=4
	addw	s6, s9, s11
	mv	t4, a5
	blt	a5, s6, .LBB3_214
# %bb.213:                              #   in Loop: Header=BB3_196 Depth=4
	mv	t4, s6
.LBB3_214:                              #   in Loop: Header=BB3_196 Depth=4
	sgtz	a6, t4
	neg	a6, a6
	and	t4, a6, t4
	add	a6, ra, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.215:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, s8, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.216:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, t0, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.217:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, t6, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.218:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, a7, t4
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.219:                              #   in Loop: Header=BB3_196 Depth=4
	add	t4, s0, t4
	lbu	a6, 0(t4)
	bge	a2, a6, .LBB3_294
# %bb.220:                              #   in Loop: Header=BB3_196 Depth=4
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s7, 16(sp)                      # 8-byte Folded Spill
	add	s7, s9, s11
	addiw	t4, s7, 1
	mv	s6, a5
	blt	a5, t4, .LBB3_222
# %bb.221:                              #   in Loop: Header=BB3_196 Depth=4
	mv	s6, t4
.LBB3_222:                              #   in Loop: Header=BB3_196 Depth=4
	sgtz	a6, s6
	neg	a6, a6
	and	s6, a6, s6
	add	a6, ra, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.223:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, s8, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.224:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, t0, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.225:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, t6, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.226:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, a7, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.227:                              #   in Loop: Header=BB3_196 Depth=4
	add	s6, s0, s6
	lbu	a6, 0(s6)
	bge	a2, a6, .LBB3_294
# %bb.228:                              #   in Loop: Header=BB3_196 Depth=4
	addiw	t4, s7, 2
	mv	s6, a5
	blt	a5, t4, .LBB3_230
# %bb.229:                              #   in Loop: Header=BB3_196 Depth=4
	mv	s6, t4
.LBB3_230:                              #   in Loop: Header=BB3_196 Depth=4
	sgtz	a6, s6
	neg	a6, a6
	and	s6, a6, s6
	add	a6, ra, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.231:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, s8, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.232:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, t0, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.233:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, t6, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.234:                              #   in Loop: Header=BB3_196 Depth=4
	add	a6, a7, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.235:                              #   in Loop: Header=BB3_196 Depth=4
	add	s6, s0, s6
	lbu	a6, 0(s6)
	bge	a2, a6, .LBB3_294
# %bb.236:                              #   in Loop: Header=BB3_196 Depth=4
	addiw	s7, s7, 3
	mv	t4, a5
	blt	a5, s7, .LBB3_238
# %bb.237:                              #   in Loop: Header=BB3_196 Depth=4
	mv	t4, s7
.LBB3_238:                              #   in Loop: Header=BB3_196 Depth=4
	sgtz	a6, t4
	neg	a6, a6
	and	t4, a6, t4
	add	a6, ra, t4
	lbu	a6, 0(a6)
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	bge	a2, a6, .LBB3_294
# %bb.239:                              #   in Loop: Header=BB3_196 Depth=4
	add	s8, s8, t4
	lbu	a6, 0(s8)
	bge	a2, a6, .LBB3_294
# %bb.240:                              #   in Loop: Header=BB3_196 Depth=4
	add	t0, t0, t4
	lbu	a6, 0(t0)
	bge	a2, a6, .LBB3_294
# %bb.241:                              #   in Loop: Header=BB3_196 Depth=4
	add	t6, t6, t4
	lbu	a6, 0(t6)
	bge	a2, a6, .LBB3_294
# %bb.242:                              #   in Loop: Header=BB3_196 Depth=4
	add	a7, a7, t4
	lbu	a6, 0(a7)
	bge	a2, a6, .LBB3_294
# %bb.243:                              #   in Loop: Header=BB3_196 Depth=4
	add	t4, s0, t4
	lbu	a6, 0(t4)
	bge	a2, a6, .LBB3_294
# %bb.244:                              #   in Loop: Header=BB3_196 Depth=4
	addiw	s11, s11, 1
	li	a6, 4
	ld	s7, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	mv	s0, s2
	bne	s11, a6, .LBB3_196
# %bb.245:                              #   in Loop: Header=BB3_183 Depth=3
	ld	ra, 64(sp)                      # 8-byte Folded Reload
	ld	a6, 8(sp)                       # 8-byte Folded Reload
	bne	s10, a6, .LBB3_183
	j	.LBB3_39
.LBB3_246:                              #   in Loop: Header=BB3_10 Depth=2
	addi	a7, a7, -1
	snez	s2, a7
	addi	a6, s9, 3
	sd	a6, 56(sp)                      # 8-byte Folded Spill
	addi	a6, s5, 3
	sd	a6, 48(sp)                      # 8-byte Folded Spill
.LBB3_247:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_256 Depth 4
	mv	s11, s5
	addw	t0, s5, s2
	mv	a7, t2
	blt	t2, t0, .LBB3_286
# %bb.248:                              #   in Loop: Header=BB3_247 Depth=3
	mv	a7, t0
	addiw	t4, s11, -2
	mv	t0, t2
	bge	t2, t4, .LBB3_287
.LBB3_249:                              #   in Loop: Header=BB3_247 Depth=3
	addiw	t6, s11, -1
	mv	t4, t2
	blt	t2, t6, .LBB3_288
.LBB3_250:                              #   in Loop: Header=BB3_247 Depth=3
	mv	t4, t6
	mv	s0, t2
	bge	t2, s11, .LBB3_289
.LBB3_251:                              #   in Loop: Header=BB3_247 Depth=3
	addiw	s5, s11, 1
	mv	s1, t2
	blt	t2, s5, .LBB3_290
.LBB3_252:                              #   in Loop: Header=BB3_247 Depth=3
	mv	s1, s5
	addiw	t6, s11, 2
	mv	s6, t2
	bge	t2, t6, .LBB3_291
.LBB3_253:                              #   in Loop: Header=BB3_247 Depth=3
	addiw	t6, s11, 3
	mv	s10, t2
	blt	t2, t6, .LBB3_255
.LBB3_254:                              #   in Loop: Header=BB3_247 Depth=3
	mv	s10, t6
.LBB3_255:                              #   in Loop: Header=BB3_247 Depth=3
	sgtz	a6, a7
	neg	a6, a6
	and	a6, a6, a7
	slli	a6, a6, 3
	add	a6, t1, a6
	ld	a7, 0(a6)
	sgtz	a6, t0
	neg	a6, a6
	and	a6, a6, t0
	slli	a6, a6, 3
	add	t6, t1, a6
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	slli	a6, a6, 3
	add	t0, t1, a6
	sgtz	a6, s0
	neg	a6, a6
	and	a6, a6, s0
	slli	a6, a6, 3
	add	s0, t1, a6
	sgtz	a6, s1
	neg	a6, a6
	and	a6, a6, s1
	slli	a6, a6, 3
	add	s1, t1, a6
	sgtz	a6, s6
	neg	a6, a6
	and	a6, a6, s6
	slli	a6, a6, 3
	add	ra, t1, a6
	sgtz	a6, s10
	neg	a6, a6
	and	a6, a6, s10
	slli	a6, a6, 3
	add	s10, t1, a6
	mv	s6, s9
.LBB3_256:                              #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_247 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addiw	s8, s6, -2
	mv	t4, a5
	blt	a5, s8, .LBB3_258
# %bb.257:                              #   in Loop: Header=BB3_256 Depth=4
	mv	t4, s8
.LBB3_258:                              #   in Loop: Header=BB3_256 Depth=4
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	add	a6, a7, a6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.259:                              #   in Loop: Header=BB3_256 Depth=4
	addiw	s8, s6, -1
	mv	t4, a5
	blt	a5, s8, .LBB3_261
# %bb.260:                              #   in Loop: Header=BB3_256 Depth=4
	mv	t4, s8
.LBB3_261:                              #   in Loop: Header=BB3_256 Depth=4
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	add	a6, a7, a6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.262:                              #   in Loop: Header=BB3_256 Depth=4
	mv	t4, a5
	blt	a5, s6, .LBB3_264
# %bb.263:                              #   in Loop: Header=BB3_256 Depth=4
	mv	t4, s6
.LBB3_264:                              #   in Loop: Header=BB3_256 Depth=4
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	add	a6, a7, a6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.265:                              #   in Loop: Header=BB3_256 Depth=4
	addiw	s8, s6, 1
	mv	t4, a5
	blt	a5, s8, .LBB3_267
# %bb.266:                              #   in Loop: Header=BB3_256 Depth=4
	mv	t4, s8
.LBB3_267:                              #   in Loop: Header=BB3_256 Depth=4
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	add	a6, a7, a6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.268:                              #   in Loop: Header=BB3_256 Depth=4
	addiw	s8, s6, 2
	mv	t4, a5
	blt	a5, s8, .LBB3_270
# %bb.269:                              #   in Loop: Header=BB3_256 Depth=4
	mv	t4, s8
.LBB3_270:                              #   in Loop: Header=BB3_256 Depth=4
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	add	a6, a7, a6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.271:                              #   in Loop: Header=BB3_256 Depth=4
	addiw	s8, s6, 3
	mv	t4, a5
	blt	a5, s8, .LBB3_273
# %bb.272:                              #   in Loop: Header=BB3_256 Depth=4
	mv	t4, s8
.LBB3_273:                              #   in Loop: Header=BB3_256 Depth=4
	sgtz	a6, t4
	neg	a6, a6
	and	a6, a6, t4
	add	a6, a7, a6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.274:                              #   in Loop: Header=BB3_256 Depth=4
	addiw	t4, s6, 1
	li	a6, 1
	beq	s7, a6, .LBB3_276
# %bb.275:                              #   in Loop: Header=BB3_256 Depth=4
	mv	s6, t4
.LBB3_276:                              #   in Loop: Header=BB3_256 Depth=4
	mv	s8, a5
	blt	a5, s6, .LBB3_278
# %bb.277:                              #   in Loop: Header=BB3_256 Depth=4
	mv	s8, s6
.LBB3_278:                              #   in Loop: Header=BB3_256 Depth=4
	ld	a6, 0(t6)
	sgtz	s6, s8
	neg	s6, s6
	and	s6, s6, s8
	add	a6, a6, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.279:                              #   in Loop: Header=BB3_256 Depth=4
	ld	a6, 0(t0)
	add	a6, a6, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.280:                              #   in Loop: Header=BB3_256 Depth=4
	ld	a6, 0(s0)
	add	a6, a6, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.281:                              #   in Loop: Header=BB3_256 Depth=4
	ld	a6, 0(s1)
	add	a6, a6, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.282:                              #   in Loop: Header=BB3_256 Depth=4
	ld	a6, 0(ra)
	add	a6, a6, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.283:                              #   in Loop: Header=BB3_256 Depth=4
	ld	a6, 0(s10)
	add	a6, a6, s6
	lbu	a6, 0(a6)
	bge	a2, a6, .LBB3_294
# %bb.284:                              #   in Loop: Header=BB3_256 Depth=4
	addiw	a6, t4, -1
	mv	s6, t4
	ld	t4, 56(sp)                      # 8-byte Folded Reload
	bne	a6, t4, .LBB3_256
# %bb.285:                              #   in Loop: Header=BB3_247 Depth=3
	ld	ra, 64(sp)                      # 8-byte Folded Reload
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	bne	s11, a6, .LBB3_247
	j	.LBB3_39
.LBB3_286:                              #   in Loop: Header=BB3_247 Depth=3
	addiw	t4, s11, -2
	mv	t0, t2
	blt	t2, t4, .LBB3_249
.LBB3_287:                              #   in Loop: Header=BB3_247 Depth=3
	mv	t0, t4
	addiw	t6, s11, -1
	mv	t4, t2
	bge	t2, t6, .LBB3_250
.LBB3_288:                              #   in Loop: Header=BB3_247 Depth=3
	mv	s0, t2
	blt	t2, s11, .LBB3_251
.LBB3_289:                              #   in Loop: Header=BB3_247 Depth=3
	mv	s0, s11
	addiw	s5, s11, 1
	mv	s1, t2
	bge	t2, s5, .LBB3_252
.LBB3_290:                              #   in Loop: Header=BB3_247 Depth=3
	addiw	t6, s11, 2
	mv	s6, t2
	blt	t2, t6, .LBB3_253
.LBB3_291:                              #   in Loop: Header=BB3_247 Depth=3
	mv	s6, t6
	addiw	t6, s11, 3
	mv	s10, t2
	bge	t2, t6, .LBB3_254
	j	.LBB3_255
.LBB3_292:                              #   in Loop: Header=BB3_9 Depth=1
	addi	a0, a0, 1
	ld	t0, 80(sp)                      # 8-byte Folded Reload
	ld	t4, 72(sp)                      # 8-byte Folded Reload
	bge	a0, ra, .LBB3_293
	j	.LBB3_9
.LBB3_293:
	li	a0, 1
	j	.LBB3_295
.LBB3_294:
	li	a0, 0
.LBB3_295:
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
	addi	t4, a1, 4
	add	t5, t0, t4
	lhu	t5, 0(t5)
	add	t4, t1, t4
	lhu	t4, 0(t4)
	sub	t2, t2, t3
	sub	t5, t5, t4
	addi	t3, a1, 6
	add	t0, t0, t3
	add	t1, t1, t3
	slli	t2, t2, 2
	add	t2, a0, t2
	lw	t2, 0(t2)
	lhu	t0, 0(t0)
	lhu	t1, 0(t1)
	slli	t5, t5, 2
	add	t5, a0, t5
	lw	t3, 0(t5)
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
	addi	sp, sp, -1088
	sd	ra, 1080(sp)                    # 8-byte Folded Spill
	sd	s0, 1072(sp)                    # 8-byte Folded Spill
	sd	s1, 1064(sp)                    # 8-byte Folded Spill
	sd	s2, 1056(sp)                    # 8-byte Folded Spill
	sd	s3, 1048(sp)                    # 8-byte Folded Spill
	sd	s4, 1040(sp)                    # 8-byte Folded Spill
	sd	s5, 1032(sp)                    # 8-byte Folded Spill
	sd	s6, 1024(sp)                    # 8-byte Folded Spill
	sd	s7, 1016(sp)                    # 8-byte Folded Spill
	sd	s8, 1008(sp)                    # 8-byte Folded Spill
	sd	s9, 1000(sp)                    # 8-byte Folded Spill
	sd	s10, 992(sp)                    # 8-byte Folded Spill
	sd	s11, 984(sp)                    # 8-byte Folded Spill
	fsd	fs0, 976(sp)                    # 8-byte Folded Spill
	fsd	fs1, 968(sp)                    # 8-byte Folded Spill
	fsd	fs2, 960(sp)                    # 8-byte Folded Spill
	sd	a2, 368(sp)                     # 8-byte Folded Spill
	fmv.d	fs0, fa0
	mv	a5, a0
	andi	s10, a0, 1
	slli	a0, s10, 3
	andi	a3, a1, 1
	sd	a3, 568(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 2
	mv	s6, a0
	sd	a3, 576(sp)                     # 8-byte Folded Spill
	or	a3, a3, a0
	srai	a2, a1, 1
	lui	a0, 262144
	addi	a0, a0, -2
	lui	s11, %hi(img)
	ld	a4, %lo(img)(s11)
	and	s8, a5, a0
	mv	s3, a2
	add	s8, a2, s8
	lui	a0, 8
	add	a2, a4, a0
	lw	a0, 12(a4)
	ld	a2, -1192(a2)
	sd	a3, 440(sp)                     # 8-byte Folded Spill
	srli	s0, a3, 2
	li	a3, 528
	mul	a3, a0, a3
	add	a2, a2, a3
	lw	s2, 416(a2)
	slli	a2, s8, 34
	sd	a1, 488(sp)                     # 8-byte Folded Spill
	sd	a5, 496(sp)                     # 8-byte Folded Spill
	or	a3, a1, a5
	srai	s1, a2, 34
	bnez	a3, .LBB6_2
# %bb.1:
	lui	a1, %hi(Mode_Decision_for_4x4IntraBlocks.cbp_bits)
	sd	zero, %lo(Mode_Decision_for_4x4IntraBlocks.cbp_bits)(a1)
.LBB6_2:
	lw	s4, 152(a4)
	lw	s5, 156(a4)
	lw	s9, 168(a4)
	lw	s7, 172(a4)
	li	a3, -1
	addi	a5, sp, 852
	mv	a1, s0
	mv	a2, s1
	li	a4, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s11)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 828
	sd	s0, 352(sp)                     # 8-byte Folded Spill
	mv	a1, s0
	sd	s1, 344(sp)                     # 8-byte Folded Spill
	mv	a2, s1
	li	a3, 0
	call	getLuma4x4Neighbour
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 220(a0)
	beqz	a0, .LBB6_7
# %bb.3:
	lw	a0, 852(sp)
	ld	a4, 368(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB6_5
# %bb.4:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a1, 856(sp)
	ld	a0, -920(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
.LBB6_5:
	mv	s0, s2
	mv	s1, s6
	ld	t0, 568(sp)                     # 8-byte Folded Reload
	lw	a1, 828(sp)
	sw	a0, 852(sp)
	ld	s2, 576(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB6_8
# %bb.6:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a1, 832(sp)
	ld	a0, -920(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a2, 0(a0)
	sw	a2, 828(sp)
	j	.LBB6_9
.LBB6_7:
	lw	a2, 828(sp)
	ld	a4, 368(sp)                     # 8-byte Folded Reload
	mv	s0, s2
	mv	s1, s6
	ld	s2, 576(sp)                     # 8-byte Folded Reload
	ld	t0, 568(sp)                     # 8-byte Folded Reload
	j	.LBB6_9
.LBB6_8:
	li	a2, 0
	sw	zero, 828(sp)
.LBB6_9:
	lui	a1, %hi(.LCPI6_0)
	slli	s10, s10, 1
	li	a0, 255
	li	a3, 255
	sd	a3, 512(sp)                     # 8-byte Folded Spill
	beqz	a2, .LBB6_11
# %bb.10:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a3, 848(sp)
	ld	a2, 104(a2)
	slli	a3, a3, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	lw	a3, 844(sp)
	add	a2, a2, a3
	lbu	a2, 0(a2)
	sd	a2, 512(sp)                     # 8-byte Folded Spill
.LBB6_11:
	lw	a2, 852(sp)
	fld	fa5, %lo(.LCPI6_0)(a1)
	slliw	a1, s8, 2
	sd	a1, 216(sp)                     # 8-byte Folded Spill
	or	s8, s10, t0
	beqz	a2, .LBB6_13
# %bb.12:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 872(sp)
	ld	a0, 104(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	lw	a1, 868(sp)
	add	a0, a0, a1
	lbu	a0, 0(a0)
.LBB6_13:
	ld	a2, 440(sp)                     # 8-byte Folded Reload
	addw	a1, s4, a2
	sd	a1, 480(sp)                     # 8-byte Folded Spill
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	addw	a1, s5, a3
	sd	a1, 576(sp)                     # 8-byte Folded Spill
	fmul.d	fa5, fs0, fa5
	or	a1, s8, a3
	addw	a2, s9, a2
	sd	a2, 384(sp)                     # 8-byte Folded Spill
	addw	s5, s7, a3
	lui	a2, 3
	addiw	s6, a2, -1736
	lui	a2, 2
	addiw	s7, a2, 312
	ld	a2, 512(sp)                     # 8-byte Folded Reload
	bltu	a2, a0, .LBB6_15
# %bb.14:
	sd	a0, 512(sp)                     # 8-byte Folded Spill
.LBB6_15:
	ld	s11, 480(sp)                    # 8-byte Folded Reload
	sraiw	a0, s11, 2
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	ld	s9, 576(sp)                     # 8-byte Folded Reload
	sraiw	a0, s9, 2
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	fcvt.w.d	a0, fa5, rdn
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	addi	a1, a1, 1
	sd	a1, 176(sp)                     # 8-byte Folded Spill
	lui	a0, 524288
	addi	a0, a0, -1
	sw	a0, 0(a4)
	addi	a2, sp, 884
	addi	a3, sp, 880
	addi	a4, sp, 876
	mv	a0, s11
	mv	a1, s9
	call	intrapred_luma
	sd	zero, 424(sp)                   # 8-byte Folded Spill
	sd	zero, 168(sp)                   # 8-byte Folded Spill
	sd	zero, 336(sp)                   # 8-byte Folded Spill
	sd	zero, 360(sp)                   # 8-byte Folded Spill
	ld	a7, 496(sp)                     # 8-byte Folded Reload
	andi	a0, a7, -2
	addw	a0, s3, a0
	add	s1, s1, s2
	addw	t4, s1, s4
	ld	a4, 384(sp)                     # 8-byte Folded Reload
	addi	a1, a4, 1
	addi	a2, a4, 2
	slli	s8, s8, 4
	lui	a3, %hi(dc_level_temp)
	addi	a3, a3, %lo(dc_level_temp)
	slli	a0, a0, 2
	add	a3, a3, a0
	add	a3, a3, s8
	sd	a3, 304(sp)                     # 8-byte Folded Spill
	lui	a3, %hi(dc_level)
	addi	a3, a3, %lo(dc_level)
	add	a3, a3, a0
	add	a3, a3, s8
	sd	a3, 312(sp)                     # 8-byte Folded Spill
	lui	a3, %hi(cbp_chroma_block_temp)
	addi	a3, a3, %lo(cbp_chroma_block_temp)
	add	a3, a3, a0
	add	a3, a3, s8
	sd	a3, 248(sp)                     # 8-byte Folded Spill
	lui	a3, %hi(cbp_chroma_block)
	addi	a3, a3, %lo(cbp_chroma_block)
	add	a0, a3, a0
	add	a0, a0, s8
	mv	s8, a4
	sd	a0, 296(sp)                     # 8-byte Folded Spill
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	addi	t2, a4, 1
	addi	t1, a4, 2
	addi	t0, a4, 3
	slli	a6, a4, 6
	lui	a0, %hi(fadjust4x4)
	addi	a0, a0, %lo(fadjust4x4)
	ld	a3, 440(sp)                     # 8-byte Folded Reload
	slli	a5, a3, 2
	add	a3, a0, a5
	sd	a6, 24(sp)                      # 8-byte Folded Spill
	add	a3, a3, a6
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	sd	t2, 184(sp)                     # 8-byte Folded Spill
	slli	a6, t2, 6
	add	a3, a0, a5
	sd	a6, 40(sp)                      # 8-byte Folded Spill
	add	a3, a3, a6
	sd	a3, 48(sp)                      # 8-byte Folded Spill
	sd	t1, 192(sp)                     # 8-byte Folded Spill
	slli	a6, t1, 6
	slli	s0, s0, 9
	slli	a4, a4, 5
	slli	s1, s1, 1
	sd	a4, 208(sp)                     # 8-byte Folded Spill
	add	s1, a4, s1
	add	s0, s0, s1
	add	a3, a0, a5
	sd	a6, 56(sp)                      # 8-byte Folded Spill
	add	a3, a3, a6
	sd	a3, 64(sp)                      # 8-byte Folded Spill
	add	s7, s0, s7
	sd	s7, 448(sp)                     # 8-byte Folded Spill
	add	s0, s0, s6
	mv	s6, a7
	lui	a3, %hi(.LCPI6_1)
	fld	fs2, %lo(.LCPI6_1)(a3)
	sd	t0, 200(sp)                     # 8-byte Folded Spill
	slli	a3, t0, 6
	sd	a5, 88(sp)                      # 8-byte Folded Spill
	add	a0, a0, a5
	sd	a3, 72(sp)                      # 8-byte Folded Spill
	add	a0, a0, a3
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	slli	s10, s5, 3
	slli	a1, a1, 1
	sd	a1, 472(sp)                     # 8-byte Folded Spill
	slli	ra, a2, 1
	addi	a0, s8, 3
	slli	s5, a0, 1
	lui	a0, 4
	addiw	a0, a0, -1208
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	addi	a0, t4, 1
	slli	a0, a0, 1
	sd	a0, 560(sp)                     # 8-byte Folded Spill
	addi	a0, t4, 2
	slli	a0, a0, 1
	sd	a0, 552(sp)                     # 8-byte Folded Spill
	addi	a0, t4, 3
	slli	a0, a0, 1
	sd	a0, 544(sp)                     # 8-byte Folded Spill
	addi	a0, s9, 1
	slli	a0, a0, 3
	sd	a0, 432(sp)                     # 8-byte Folded Spill
	addi	a0, s9, 2
	slli	a0, a0, 3
	sd	a0, 376(sp)                     # 8-byte Folded Spill
	addi	a0, s9, 3
	slli	a0, a0, 3
	sd	a0, 520(sp)                     # 8-byte Folded Spill
	addiw	a1, a7, 4
	addiw	a0, a7, 8
	addiw	a2, s11, 3
	sd	a2, 568(sp)                     # 8-byte Folded Spill
	sd	s0, 328(sp)                     # 8-byte Folded Spill
	addi	s0, s0, 6
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	li	s0, 0
	slli	a2, t4, 1
	sd	a2, 272(sp)                     # 8-byte Folded Spill
	slli	s9, s9, 3
	sd	s9, 536(sp)                     # 8-byte Folded Spill
	addi	a2, s9, 32
	sd	a2, 232(sp)                     # 8-byte Folded Spill
	li	s4, 184
	li	s2, 2
	lui	a4, %hi(input)
	li	a5, 1
	li	a6, 9
	lui	s1, %hi(img)
	lui	a2, 3
	addiw	a2, a2, 824
	sd	a2, 464(sp)                     # 8-byte Folded Spill
	lui	s3, %hi(resTrans_R)
	addi	s3, s3, %lo(resTrans_R)
	lui	s7, %hi(resTrans_B)
	addi	s7, s7, %lo(resTrans_B)
	sd	a1, 280(sp)                     # 8-byte Folded Spill
	slli	a1, a1, 3
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	sd	a0, 288(sp)                     # 8-byte Folded Spill
	slli	a0, a0, 3
	sd	a0, 120(sp)                     # 8-byte Folded Spill
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
	sd	ra, 456(sp)                     # 8-byte Folded Spill
	sd	s5, 392(sp)                     # 8-byte Folded Spill
	sd	s10, 264(sp)                    # 8-byte Folded Spill
	sd	t4, 256(sp)                     # 8-byte Folded Spill
	j	.LBB6_18
.LBB6_16:                               #   in Loop: Header=BB6_18 Depth=1
	fmv.d	fa5, fs2
.LBB6_17:                               #   in Loop: Header=BB6_18 Depth=1
	addi	s0, s0, 1
	addi	s4, s4, 512
	fmv.d	fs2, fa5
	bne	s0, a6, .LBB6_18
	j	.LBB6_81
.LBB6_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_29 Depth 2
                                        #     Child Loop BB6_32 Depth 2
                                        #       Child Loop BB6_34 Depth 3
                                        #     Child Loop BB6_49 Depth 2
                                        #     Child Loop BB6_53 Depth 2
	li	a0, 1
	beq	s0, s2, .LBB6_23
# %bb.19:                               #   in Loop: Header=BB6_18 Depth=1
	snez	a0, s0
	andi	a1, s0, 11
	addi	a1, a1, -3
	snez	a1, a1
	and	a0, a0, a1
	bnez	a0, .LBB6_21
# %bb.20:                               #   in Loop: Header=BB6_18 Depth=1
	lw	a1, 880(sp)
	li	a0, 1
	bnez	a1, .LBB6_23
.LBB6_21:                               #   in Loop: Header=BB6_18 Depth=1
	addi	a0, s0, -1
	snez	a0, a0
	addi	a1, s0, -8
	snez	a1, a1
	and	a0, a0, a1
	bnez	a0, .LBB6_40
# %bb.22:                               #   in Loop: Header=BB6_18 Depth=1
	lw	a1, 884(sp)
	li	a0, 1
	beqz	a1, .LBB6_40
.LBB6_23:                               #   in Loop: Header=BB6_18 Depth=1
	ld	a1, %lo(input)(a4)
	addi	a2, a1, 2047
	lw	a3, 977(a2)
	beqz	a3, .LBB6_41
.LBB6_24:                               #   in Loop: Header=BB6_18 Depth=1
	ld	a3, %lo(img)(s1)
	lw	a3, 24(a3)
	bne	a3, s2, .LBB6_41
.LBB6_25:                               #   in Loop: Header=BB6_18 Depth=1
	beqz	a0, .LBB6_16
# %bb.26:                               #   in Loop: Header=BB6_18 Depth=1
	lw	a2, 1089(a2)
	slli	a0, s8, 1
	beqz	a2, .LBB6_58
# %bb.27:                               #   in Loop: Header=BB6_18 Depth=1
	ld	t1, %lo(img)(s1)
	lui	a1, 22
	add	a1, t1, a1
	lw	a1, 460(a1)
	sext.w	s11, s0
	bnez	a1, .LBB6_28
	j	.LBB6_60
.LBB6_28:                               #   in Loop: Header=BB6_18 Depth=1
	sd	s11, 408(sp)                    # 8-byte Folded Spill
	sd	s0, 416(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(imgUV_org)
	ld	a1, %lo(imgUV_org)(a1)
	li	a2, 0
	li	a3, 0
	ld	a4, 0(a1)
	lui	a5, %hi(imgY_org)
	ld	a5, %lo(imgY_org)(a5)
	ld	a6, 8(a1)
	ld	a1, 464(sp)                     # 8-byte Folded Reload
	add	a1, t1, a1
	sd	a1, 400(sp)                     # 8-byte Folded Spill
	add	a4, a4, s10
	add	a5, a5, s10
	add	a6, a6, s10
	ld	a7, 448(sp)                     # 8-byte Folded Reload
	add	a7, t1, a7
	lui	s2, %hi(resTrans_G)
	addi	s2, s2, %lo(resTrans_G)
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	add	s0, t1, s0
	sd	s4, 504(sp)                     # 8-byte Folded Spill
	add	t1, t1, s4
	ld	s11, 472(sp)                    # 8-byte Folded Reload
	mv	s9, ra
	mv	s10, s5
	mv	a1, s3
.LBB6_29:                               #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t3, 0(a4)
	add	t0, t3, a0
	lhu	t0, 0(t0)
	add	t5, a7, a2
	lhu	t6, 0(t5)
	ld	t2, 0(a5)
	ld	t4, 0(a6)
	sub	s1, t0, t6
	add	t6, t2, a0
	add	t0, t4, a0
	lhu	s3, 0(t0)
	add	t0, s0, a2
	lhu	s4, -6(t0)
	lhu	s6, 0(t6)
	add	t6, t1, a2
	lhu	s8, 0(t6)
	sub	s3, s3, s4
	sub	s3, s3, s1
	add	s5, a1, a3
	sw	s3, 0(s5)
	srli	s3, s3, 1
	add	s1, s3, s1
	subw	s3, s6, s8
	subw	s3, s3, s1
	add	ra, s7, a3
	sw	s3, 0(ra)
	sraiw	s3, s3, 1
	add	s3, s3, s1
	add	s1, s2, a3
	sw	s3, 0(s1)
	add	s3, t3, s11
	lhu	s3, 0(s3)
	lhu	s4, 2(t5)
	add	s6, t4, s11
	lhu	s6, 0(s6)
	lhu	s8, -4(t0)
	sub	s3, s3, s4
	add	s4, t2, s11
	lhu	s4, 0(s4)
	sub	s6, s6, s8
	lhu	s8, 2(t6)
	sub	s6, s6, s3
	sw	s6, 4(s5)
	srli	s6, s6, 1
	add	s3, s6, s3
	subw	s4, s4, s8
	subw	s4, s4, s3
	sw	s4, 4(ra)
	sraiw	s4, s4, 1
	add	s3, s4, s3
	sw	s3, 4(s1)
	add	s3, t3, s9
	lhu	s3, 0(s3)
	lhu	s4, 4(t5)
	add	s6, t4, s9
	lhu	s6, 0(s6)
	lhu	s8, -2(t0)
	sub	s3, s3, s4
	add	s4, t2, s9
	lhu	s4, 0(s4)
	sub	s6, s6, s8
	lhu	s8, 4(t6)
	sub	s6, s6, s3
	sw	s6, 8(s5)
	srli	s6, s6, 1
	add	s3, s6, s3
	subw	s4, s4, s8
	subw	s4, s4, s3
	sw	s4, 8(ra)
	sraiw	s4, s4, 1
	add	t3, t3, s10
	lhu	t3, 0(t3)
	lhu	t5, 6(t5)
	add	t4, t4, s10
	lhu	t4, 0(t4)
	lhu	t0, 0(t0)
	add	s3, s4, s3
	sw	s3, 8(s1)
	sub	t3, t3, t5
	sub	t0, t4, t0
	add	t2, t2, s10
	lhu	t2, 0(t2)
	lhu	t4, 6(t6)
	sub	t0, t0, t3
	sw	t0, 12(s5)
	srli	t0, t0, 1
	add	t0, t0, t3
	subw	t2, t2, t4
	subw	t2, t2, t0
	sw	t2, 12(ra)
	sraiw	t2, t2, 1
	add	t0, t2, t0
	sw	t0, 12(s1)
	addi	a3, a3, 64
	addi	a4, a4, 8
	addi	a5, a5, 8
	addi	a6, a6, 8
	addi	a2, a2, 32
	li	t0, 256
	bne	a3, t0, .LBB6_29
# %bb.30:                               #   in Loop: Header=BB6_18 Depth=1
	lui	a1, %hi(resTrans_G)
	lw	a0, %lo(resTrans_G)(a1)
	addi	a2, a1, %lo(resTrans_G)
	ld	a1, 400(sp)                     # 8-byte Folded Reload
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
	lw	a2, 204(a2)
	lui	s2, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(s2)
	sw	a2, 204(a1)
	call	store_coding_state
	addi	a0, sp, 952
	ld	a1, 496(sp)                     # 8-byte Folded Reload
	ld	s3, 488(sp)                     # 8-byte Folded Reload
	mv	a2, s3
	ld	a3, 408(sp)                     # 8-byte Folded Reload
	fmv.d	fa0, fs0
	ld	a4, 512(sp)                     # 8-byte Folded Reload
	call	RDCost_for_4x4IntraBlocks
	ld	a0, %lo(cs_cm)(s2)
	fmv.d	fs1, fa0
	call	reset_coding_state
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	ld	s1, 464(sp)                     # 8-byte Folded Reload
	add	a0, a0, s1
	lw	a1, 0(a0)
	lui	a3, %hi(resTrans_B)
	lw	a2, %lo(resTrans_B)(a3)
	lui	a4, %hi(rec_resG)
	sw	a1, %lo(rec_resG)(a4)
	addi	a1, a3, %lo(resTrans_B)
	sw	a2, 0(a0)
	lw	a2, 4(a0)
	lw	a3, 4(a1)
	addi	s6, a4, %lo(rec_resG)
	sw	a2, 4(s6)
	sw	a3, 4(a0)
	lw	a2, 8(a0)
	lw	a3, 8(a1)
	sw	a2, 8(s6)
	sw	a3, 8(a0)
	lw	a2, 12(a0)
	lw	a3, 12(a1)
	sw	a2, 12(s6)
	sw	a3, 12(a0)
	lw	a2, 64(a0)
	lw	a3, 64(a1)
	sw	a2, 64(s6)
	sw	a3, 64(a0)
	lw	a2, 68(a0)
	lw	a3, 68(a1)
	sw	a2, 68(s6)
	sw	a3, 68(a0)
	lw	a2, 72(a0)
	lw	a3, 72(a1)
	sw	a2, 72(s6)
	sw	a3, 72(a0)
	lw	a2, 76(a0)
	lw	a3, 76(a1)
	sw	a2, 76(s6)
	sw	a3, 76(a0)
	lw	a2, 128(a0)
	lw	a3, 128(a1)
	sw	a2, 128(s6)
	sw	a3, 128(a0)
	lw	a2, 132(a0)
	lw	a3, 132(a1)
	sw	a2, 132(s6)
	sw	a3, 132(a0)
	lw	a2, 136(a0)
	lw	a3, 136(a1)
	sw	a2, 136(s6)
	sw	a3, 136(a0)
	lw	a2, 140(a0)
	lw	a3, 140(a1)
	sw	a2, 140(s6)
	sw	a3, 140(a0)
	lw	a2, 192(a0)
	lw	a3, 192(a1)
	sw	a2, 192(s6)
	sw	a3, 192(a0)
	lw	a2, 196(a0)
	lw	a3, 196(a1)
	sw	a2, 196(s6)
	sw	a3, 196(a0)
	lw	a2, 200(a0)
	lw	a3, 200(a1)
	sw	a2, 200(s6)
	sw	a3, 200(a0)
	lw	a2, 204(a0)
	lw	a1, 204(a1)
	sw	a2, 204(s6)
	sw	a1, 204(a0)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	mv	a1, s3
	li	a2, 0
	call	RDCost_for_4x4Blocks_Chroma
	ld	a1, %lo(img)(s0)
	add	a1, a1, s1
	lw	a2, 0(a1)
	lui	a4, %hi(resTrans_R)
	lw	a3, %lo(resTrans_R)(a4)
	lui	a5, %hi(rec_resB)
	sw	a2, %lo(rec_resB)(a5)
	addi	a2, a4, %lo(resTrans_R)
	sw	a3, 0(a1)
	lw	a3, 4(a1)
	lw	a4, 4(a2)
	addi	s8, a5, %lo(rec_resB)
	sw	a3, 4(s8)
	sw	a4, 4(a1)
	lw	a3, 8(a1)
	lw	a4, 8(a2)
	sw	a3, 8(s8)
	sw	a4, 8(a1)
	lw	a3, 12(a1)
	lw	a4, 12(a2)
	sw	a3, 12(s8)
	sw	a4, 12(a1)
	lw	a3, 64(a1)
	lw	a4, 64(a2)
	sw	a3, 64(s8)
	sw	a4, 64(a1)
	lw	a3, 68(a1)
	lw	a4, 68(a2)
	sw	a3, 68(s8)
	sw	a4, 68(a1)
	lw	a3, 72(a1)
	lw	a4, 72(a2)
	sw	a3, 72(s8)
	sw	a4, 72(a1)
	lw	a3, 76(a1)
	lw	a4, 76(a2)
	sw	a3, 76(s8)
	sw	a4, 76(a1)
	lw	a3, 128(a1)
	lw	a4, 128(a2)
	sw	a3, 128(s8)
	sw	a4, 128(a1)
	lw	a3, 132(a1)
	lw	a4, 132(a2)
	sw	a3, 132(s8)
	sw	a4, 132(a1)
	lw	a3, 136(a1)
	lw	a4, 136(a2)
	sw	a3, 136(s8)
	sw	a4, 136(a1)
	lw	a3, 140(a1)
	lw	a4, 140(a2)
	sw	a3, 140(s8)
	sw	a4, 140(a1)
	lw	a3, 192(a1)
	lw	a4, 192(a2)
	sw	a3, 192(s8)
	sw	a4, 192(a1)
	lw	a3, 196(a1)
	lw	a4, 196(a2)
	sw	a3, 196(s8)
	sw	a4, 196(a1)
	lw	a3, 200(a1)
	lw	a4, 200(a2)
	sw	a3, 200(s8)
	sw	a4, 200(a1)
	lw	a3, 204(a1)
	lw	a2, 204(a2)
	mv	s4, a0
	sw	a3, 204(s8)
	sw	a2, 204(a1)
	fcvt.w.d	s5, fs1, rtz
	li	a2, 1
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	mv	a1, s3
	call	RDCost_for_4x4Blocks_Chroma
	ld	a1, %lo(cs_cm)(s2)
	sd	a0, 408(sp)                     # 8-byte Folded Spill
	mv	a0, a1
	call	reset_coding_state
	ld	t4, %lo(img)(s0)
	add	a1, t4, s1
	lw	a0, 0(a1)
	lui	a3, %hi(rec_resR)
	sw	a0, %lo(rec_resR)(a3)
	lw	a2, 4(a1)
	addi	a0, a3, %lo(rec_resR)
	sw	a2, 4(a0)
	lw	a2, 8(a1)
	sw	a2, 8(a0)
	lw	a2, 12(a1)
	sw	a2, 12(a0)
	lw	a2, 64(a1)
	sw	a2, 64(a0)
	lw	a2, 68(a1)
	sw	a2, 68(a0)
	lw	a2, 72(a1)
	sw	a2, 72(a0)
	lw	a2, 76(a1)
	sw	a2, 76(a0)
	lw	a2, 128(a1)
	sw	a2, 128(a0)
	lw	a2, 132(a1)
	sw	a2, 132(a0)
	lw	a2, 136(a1)
	sw	a2, 136(a0)
	lw	a2, 140(a1)
	sw	a2, 140(a0)
	lw	a2, 192(a1)
	sw	a2, 192(a0)
	lw	a2, 196(a1)
	li	a4, 0
	sw	a2, 196(a0)
	lw	a2, 200(a1)
	lui	a3, 22
	addiw	a3, a3, -928
	add	a6, t4, a3
	lui	a3, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a3)
	sw	a2, 200(a0)
	lw	a1, 204(a1)
	lui	a2, 2
	addiw	a2, a2, -1768
	sd	a2, 320(sp)                     # 8-byte Folded Spill
	add	a3, a3, a2
	ld	a2, 40(a3)
	sw	a1, 204(a0)
	add	a1, s4, s5
	sd	a1, 400(sp)                     # 8-byte Folded Spill
	lw	s11, 1352(a6)
	ld	a5, 0(a2)
	mv	s10, a6
	lw	t0, 1348(a6)
	ld	a7, 0(a3)
	ld	t1, 8(a2)
	ld	t2, 504(sp)                     # 8-byte Folded Reload
	add	t2, t4, t2
	ld	t3, 328(sp)                     # 8-byte Folded Reload
	add	t3, t4, t3
	ld	a1, 448(sp)                     # 8-byte Folded Reload
	add	t4, t4, a1
	ld	s2, 272(sp)                     # 8-byte Folded Reload
	ld	s0, 416(sp)                     # 8-byte Folded Reload
	j	.LBB6_32
.LBB6_31:                               #   in Loop: Header=BB6_32 Depth=2
	addi	a4, a4, 1
	addi	t2, t2, 32
	addi	t3, t3, 32
	addi	t4, t4, 32
	addi	a0, a0, 64
	addi	s8, s8, 64
	addi	s6, s6, 64
	li	a1, 4
	beq	a4, a1, .LBB6_47
.LBB6_32:                               #   Parent Loop BB6_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_34 Depth 3
	ld	a1, 576(sp)                     # 8-byte Folded Reload
	add	a1, a4, a1
	slli	a1, a1, 3
	add	a2, a5, a1
	add	a3, a7, a1
	add	a1, t1, a1
	ld	t6, 0(a1)
	ld	s1, 0(a3)
	ld	ra, 0(a2)
	li	t5, 0
	add	t6, t6, s2
	add	s1, s1, s2
	add	ra, ra, s2
	mv	s5, s6
	mv	s7, s8
	mv	a2, a0
	j	.LBB6_34
.LBB6_33:                               #   in Loop: Header=BB6_34 Depth=3
	add	a3, t6, t5
	sh	a1, 0(a3)
	addi	t5, t5, 2
	addi	a2, a2, 4
	addi	s7, s7, 4
	addi	s5, s5, 4
	li	a1, 8
	beq	t5, a1, .LBB6_31
.LBB6_34:                               #   Parent Loop BB6_18 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	s9, 0(s7)
	lw	a3, 0(s5)
	srai	a6, s9, 1
	lw	a1, 0(a2)
	add	s3, t4, t5
	lhu	s3, 0(s3)
	subw	s4, a3, a6
	srli	a3, a1, 1
	subw	a3, s4, a3
	addw	a6, a3, s3
	sgtz	s3, a6
	neg	s3, s3
	and	a6, s3, a6
	mv	s3, s11
	blt	s11, a6, .LBB6_36
# %bb.35:                               #   in Loop: Header=BB6_34 Depth=3
	mv	s3, a6
.LBB6_36:                               #   in Loop: Header=BB6_34 Depth=3
	add	a6, ra, t5
	sh	s3, 0(a6)
	add	a6, t2, t5
	lhu	a6, 0(a6)
	add	s4, s4, s9
	addw	a6, s4, a6
	sgtz	s3, a6
	neg	s3, s3
	and	s3, s3, a6
	mv	a6, t0
	blt	t0, s3, .LBB6_38
# %bb.37:                               #   in Loop: Header=BB6_34 Depth=3
	mv	a6, s3
.LBB6_38:                               #   in Loop: Header=BB6_34 Depth=3
	add	s3, s1, t5
	sh	a6, 0(s3)
	add	a6, t3, t5
	lhu	a6, 0(a6)
	add	a1, a3, a1
	addw	a1, a1, a6
	sgtz	a3, a1
	neg	a3, a3
	and	a3, a3, a1
	mv	a1, s11
	blt	s11, a3, .LBB6_33
# %bb.39:                               #   in Loop: Header=BB6_34 Depth=3
	mv	a1, a3
	j	.LBB6_33
.LBB6_40:                               #   in Loop: Header=BB6_18 Depth=1
	lw	a0, 876(sp)
	snez	a0, a0
	ld	a1, %lo(input)(a4)
	addi	a2, a1, 2047
	lw	a3, 977(a2)
	bnez	a3, .LBB6_24
.LBB6_41:                               #   in Loop: Header=BB6_18 Depth=1
	bltu	a5, s0, .LBB6_43
# %bb.42:                               #   in Loop: Header=BB6_18 Depth=1
	lw	a3, 981(a2)
	bnez	a3, .LBB6_16
.LBB6_43:                               #   in Loop: Header=BB6_18 Depth=1
	lw	a3, 985(a2)
	beqz	a3, .LBB6_45
# %bb.44:                               #   in Loop: Header=BB6_18 Depth=1
	addiw	a3, s0, -3
	bltu	a3, s2, .LBB6_16
.LBB6_45:                               #   in Loop: Header=BB6_18 Depth=1
	li	a3, 5
	bltu	s0, a3, .LBB6_25
# %bb.46:                               #   in Loop: Header=BB6_18 Depth=1
	lw	a3, 989(a2)
	bnez	a3, .LBB6_16
	j	.LBB6_25
.LBB6_47:                               #   in Loop: Header=BB6_18 Depth=1
	lui	a0, %hi(imgUV_org)
	ld	a0, %lo(imgUV_org)(a0)
	li	t2, 0
	ld	a2, 0(s10)
	ld	a4, 8(a0)
	lui	a1, %hi(imgY_org)
	ld	t0, %lo(imgY_org)(a1)
	ld	a6, 0(a0)
	ld	a0, 536(sp)                     # 8-byte Folded Reload
	add	a3, t1, a0
	add	a4, a4, a0
	add	a5, a5, a0
	add	a6, a6, a0
	add	a7, a7, a0
	add	t0, t0, a0
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	add	t1, t1, a0
	ld	s8, 376(sp)                     # 8-byte Folded Reload
	ld	ra, 456(sp)                     # 8-byte Folded Reload
	ld	s9, 256(sp)                     # 8-byte Folded Reload
	j	.LBB6_49
.LBB6_48:                               #   in Loop: Header=BB6_49 Depth=2
	addi	a3, a3, 8
	addi	a4, a4, 8
	addi	a5, a5, 8
	addi	a6, a6, 8
	addi	a7, a7, 8
	addi	t0, t0, 8
	beq	a3, t1, .LBB6_51
.LBB6_49:                               #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s7, 0(t0)
	ld	s5, 0(a7)
	ld	t6, 0(a6)
	ld	t5, 0(a5)
	ld	t4, 0(a4)
	ld	t3, 0(a3)
	add	a0, s7, s2
	lhu	a0, 0(a0)
	add	a1, s5, s2
	lhu	a1, 0(a1)
	add	s1, t6, s2
	lhu	s1, 0(s1)
	add	s3, t5, s2
	lhu	s3, 0(s3)
	add	s4, t4, s2
	lhu	s4, 0(s4)
	add	s6, t3, s2
	lhu	s6, 0(s6)
	sub	a0, a0, a1
	sub	a1, s1, s3
	sub	s1, s4, s6
	slli	a0, a0, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	slli	a1, a1, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	slli	s1, s1, 2
	add	s1, a2, s1
	lw	s1, 0(s1)
	add	a0, t2, a0
	add	a1, a1, s1
	add	t2, a0, a1
	ld	a0, 568(sp)                     # 8-byte Folded Reload
	bge	s9, a0, .LBB6_48
# %bb.50:                               #   in Loop: Header=BB6_49 Depth=2
	ld	s3, 560(sp)                     # 8-byte Folded Reload
	add	a0, s7, s3
	lhu	a0, 0(a0)
	add	a1, s5, s3
	lhu	a1, 0(a1)
	sub	a0, a0, a1
	add	a1, t6, s3
	lhu	a1, 0(a1)
	add	s1, t5, s3
	lhu	s1, 0(s1)
	slli	a0, a0, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	sub	a1, a1, s1
	slli	a1, a1, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	add	s1, t4, s3
	lhu	s1, 0(s1)
	add	s3, t3, s3
	lhu	s3, 0(s3)
	add	a0, a0, a1
	sub	a1, s1, s3
	ld	s6, 552(sp)                     # 8-byte Folded Reload
	add	s1, s7, s6
	lhu	s1, 0(s1)
	add	s3, s5, s6
	lhu	s3, 0(s3)
	slli	a1, a1, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	sub	s1, s1, s3
	add	s3, t6, s6
	lhu	s3, 0(s3)
	add	s4, t5, s6
	lhu	s4, 0(s4)
	slli	s1, s1, 2
	add	s1, a2, s1
	lw	s1, 0(s1)
	sub	s3, s3, s4
	slli	s3, s3, 2
	add	s3, a2, s3
	lw	s3, 0(s3)
	add	s4, t4, s6
	lhu	s4, 0(s4)
	add	s6, t3, s6
	lhu	s6, 0(s6)
	add	a0, a0, a1
	add	a0, t2, a0
	add	s1, s1, s3
	sub	a1, s4, s6
	ld	s4, 544(sp)                     # 8-byte Folded Reload
	add	s7, s7, s4
	lhu	t2, 0(s7)
	add	s5, s5, s4
	lhu	s3, 0(s5)
	slli	a1, a1, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	sub	t2, t2, s3
	add	t6, t6, s4
	lhu	t6, 0(t6)
	add	t5, t5, s4
	lhu	t5, 0(t5)
	slli	t2, t2, 2
	add	t2, a2, t2
	lw	t2, 0(t2)
	sub	t6, t6, t5
	add	t4, t4, s4
	lhu	t4, 0(t4)
	add	t3, t3, s4
	lhu	t3, 0(t3)
	slli	t6, t6, 2
	add	t6, a2, t6
	lw	t5, 0(t6)
	sub	t4, t4, t3
	slli	t4, t4, 2
	add	t4, a2, t4
	lw	t3, 0(t4)
	add	a1, s1, a1
	add	a1, a1, t2
	add	a0, a0, a1
	add	t2, t5, t3
	add	t2, a0, t2
	j	.LBB6_48
.LBB6_51:                               #   in Loop: Header=BB6_18 Depth=1
	ld	a0, 408(sp)                     # 8-byte Folded Reload
	ld	a1, 400(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	fcvt.d.l	fa5, t2
	fcvt.d.w	fa4, a0
	fmadd.d	fa5, fs0, fa4, fa5
	flt.d	a0, fa5, fs2
	ld	s6, 496(sp)                     # 8-byte Folded Reload
	ld	s5, 392(sp)                     # 8-byte Folded Reload
	lui	s7, %hi(resTrans_B)
	addi	s7, s7, %lo(resTrans_B)
	lui	s1, %hi(img)
	beqz	a0, .LBB6_65
# %bb.52:                               #   in Loop: Header=BB6_18 Depth=1
	ld	a0, %lo(img)(s1)
	lui	a1, 3
	add	a0, a0, a1
	ld	a0, 1848(a0)
	slli	a1, s6, 3
	add	a1, a0, a1
	ld	a1, 0(a1)
	ld	a4, 488(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 3
	add	a1, a1, a4
	ld	a1, 0(a1)
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	add	a2, a0, a2
	ld	a3, 0(a2)
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	add	a0, a0, a2
	ld	a0, 0(a0)
	lui	a2, %hi(cofAC4x4)
	ld	a2, %lo(cofAC4x4)(a2)
	add	a3, a3, a4
	ld	a3, 0(a3)
	add	a0, a0, a4
	ld	a4, 0(a0)
	li	a0, 0
	li	a5, 1
	ld	s3, 520(sp)                     # 8-byte Folded Reload
	lui	t2, %hi(cofAC4x4_chroma)
	addi	t2, t2, %lo(cofAC4x4_chroma)
	li	t3, 72
.LBB6_53:                               #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a6, a0, 3
	add	a7, a1, a6
	ld	a7, 0(a7)
	add	t0, a2, a6
	ld	t0, 0(t0)
	lw	t1, 0(a7)
	sw	t1, 0(t0)
	lw	t1, 4(a7)
	sw	t1, 4(t0)
	lw	t1, 8(a7)
	sw	t1, 8(t0)
	lw	t1, 12(a7)
	sw	t1, 12(t0)
	lw	t1, 16(a7)
	sw	t1, 16(t0)
	lw	t1, 20(a7)
	sw	t1, 20(t0)
	lw	t1, 24(a7)
	sw	t1, 24(t0)
	lw	t1, 28(a7)
	sw	t1, 28(t0)
	lw	t1, 32(a7)
	sw	t1, 32(t0)
	lw	t1, 36(a7)
	sw	t1, 36(t0)
	lw	t1, 40(a7)
	sw	t1, 40(t0)
	lw	t1, 44(a7)
	sw	t1, 44(t0)
	lw	t1, 48(a7)
	sw	t1, 48(t0)
	lw	t1, 52(a7)
	sw	t1, 52(t0)
	lw	t1, 56(a7)
	sw	t1, 56(t0)
	lw	t1, 60(a7)
	sw	t1, 60(t0)
	lw	t1, 64(a7)
	sw	t1, 64(t0)
	lw	a7, 68(a7)
	add	t1, a3, a6
	ld	t1, 0(t1)
	sw	a7, 68(t0)
	lw	t0, 0(t1)
	mul	a7, a0, t3
	add	a7, t2, a7
	sw	t0, 0(a7)
	lw	a0, 4(t1)
	sw	a0, 4(a7)
	lw	a0, 8(t1)
	sw	a0, 8(a7)
	lw	a0, 12(t1)
	sw	a0, 12(a7)
	lw	a0, 16(t1)
	sw	a0, 16(a7)
	lw	a0, 20(t1)
	sw	a0, 20(a7)
	lw	a0, 24(t1)
	sw	a0, 24(a7)
	lw	a0, 28(t1)
	sw	a0, 28(a7)
	lw	a0, 32(t1)
	sw	a0, 32(a7)
	lw	a0, 36(t1)
	sw	a0, 36(a7)
	lw	a0, 40(t1)
	sw	a0, 40(a7)
	lw	a0, 44(t1)
	sw	a0, 44(a7)
	lw	a0, 48(t1)
	sw	a0, 48(a7)
	lw	a0, 52(t1)
	sw	a0, 52(a7)
	lw	a0, 56(t1)
	sw	a0, 56(a7)
	lw	a0, 60(t1)
	sw	a0, 60(a7)
	lw	a0, 64(t1)
	sw	a0, 64(a7)
	lw	a0, 68(t1)
	add	a6, a4, a6
	ld	a6, 0(a6)
	sw	a0, 68(a7)
	lw	a0, 0(a6)
	sw	a0, 144(a7)
	lw	a0, 4(a6)
	sw	a0, 148(a7)
	lw	a0, 8(a6)
	sw	a0, 152(a7)
	lw	a0, 12(a6)
	sw	a0, 156(a7)
	lw	a0, 16(a6)
	sw	a0, 160(a7)
	lw	a0, 20(a6)
	sw	a0, 164(a7)
	lw	a0, 24(a6)
	sw	a0, 168(a7)
	lw	a0, 28(a6)
	sw	a0, 172(a7)
	lw	a0, 32(a6)
	sw	a0, 176(a7)
	lw	a0, 36(a6)
	sw	a0, 180(a7)
	lw	a0, 40(a6)
	sw	a0, 184(a7)
	lw	a0, 44(a6)
	sw	a0, 188(a7)
	lw	a0, 48(a6)
	sw	a0, 192(a7)
	lw	a0, 52(a6)
	sw	a0, 196(a7)
	lw	a0, 56(a6)
	sw	a0, 200(a7)
	lw	a0, 60(a6)
	sw	a0, 204(a7)
	lw	a0, 64(a6)
	sw	a0, 208(a7)
	lw	a0, 68(a6)
	sw	a0, 212(a7)
	andi	a6, a5, 1
	li	a0, 1
	li	a5, 0
	bnez	a6, .LBB6_53
# %bb.54:                               #   in Loop: Header=BB6_18 Depth=1
	lui	a0, %hi(enc_picture)
	ld	t3, %lo(enc_picture)(a0)
	ld	a0, 320(sp)                     # 8-byte Folded Reload
	add	t3, t3, a0
	ld	a7, 40(t3)
	ld	a0, %lo(img)(s1)
	lui	a1, %hi(si_frame_indicator)
	lw	t5, %lo(si_frame_indicator)(a1)
	lui	a1, %hi(sp2_frame_indicator)
	lw	t4, %lo(sp2_frame_indicator)(a1)
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a1)
	ld	t0, 0(a7)
	lui	a2, %hi(lrec)
	ld	a6, %lo(lrec)(a2)
	ld	a2, 248(sp)                     # 8-byte Folded Reload
	lw	a2, 0(a2)
	ld	a3, 312(sp)                     # 8-byte Folded Reload
	sw	a1, 0(a3)
	ld	a1, 536(sp)                     # 8-byte Folded Reload
	add	a1, t0, a1
	ld	a1, 0(a1)
	ld	a3, 296(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a3)
	lw	t1, 24(a0)
	ld	a5, 480(sp)                     # 8-byte Folded Reload
	slli	a5, a5, 1
	add	a3, a1, a5
	lhu	a1, 0(a3)
	lhu	a4, 2(a3)
	lhu	a2, 4(a3)
	lhu	a3, 6(a3)
	ld	s10, 264(sp)                    # 8-byte Folded Reload
	li	t2, 3
	bne	t1, t2, .LBB6_67
# %bb.55:                               #   in Loop: Header=BB6_18 Depth=1
	bnez	t5, .LBB6_67
# %bb.56:                               #   in Loop: Header=BB6_18 Depth=1
	bnez	t4, .LBB6_67
# %bb.57:                               #   in Loop: Header=BB6_18 Depth=1
	ld	s7, 536(sp)                     # 8-byte Folded Reload
	add	t1, a6, s7
	ld	t2, 0(t1)
	ld	t1, 480(sp)                     # 8-byte Folded Reload
	slli	t1, t1, 2
	add	t2, t2, t1
	lwu	t6, 4(t2)
	lwu	s1, 0(t2)
	slli	t6, t6, 32
	or	t6, t6, s1
	lwu	s1, 12(t2)
	ld	s5, 432(sp)                     # 8-byte Folded Reload
	mv	s6, s3
	add	s3, t0, s5
	ld	s3, 0(s3)
	sd	t6, 760(sp)
	lwu	t2, 8(t2)
	slli	s1, s1, 32
	add	s3, s3, a5
	lhu	t6, 2(s3)
	lhu	s4, 0(s3)
	or	t2, s1, t2
	sd	t2, 768(sp)
	slli	t6, t6, 16
	or	t2, t6, s4
	lhu	t6, 4(s3)
	lhu	s1, 6(s3)
	add	s3, a6, s5
	ld	s3, 0(s3)
	slli	t6, t6, 32
	slli	s1, s1, 48
	or	t6, s1, t6
	add	s3, s3, t1
	lw	s1, 0(s3)
	or	t2, t6, t2
	sd	t2, 624(sp)
	lw	t2, 4(s3)
	addi	s4, sp, 776
	sw	s1, 0(s4)
	add	t6, t0, s8
	ld	t6, 0(t6)
	sw	t2, 4(s4)
	lw	t2, 8(s3)
	lw	s1, 12(s3)
	add	t6, t6, a5
	lhu	s3, 2(t6)
	sw	t2, 8(s4)
	sw	s1, 12(s4)
	lhu	t2, 0(t6)
	slli	s3, s3, 16
	lhu	s1, 4(t6)
	lhu	t6, 6(t6)
	add	s4, a6, s8
	ld	s4, 0(s4)
	or	t2, s3, t2
	slli	s1, s1, 32
	slli	t6, t6, 48
	add	s4, s4, t1
	lw	s3, 0(s4)
	or	t6, t6, s1
	or	t2, t6, t2
	sd	t2, 616(sp)
	addi	s2, sp, 792
	sw	s3, 0(s2)
	lw	t2, 12(s4)
	lw	t6, 8(s4)
	lw	s1, 4(s4)
	add	t0, t0, s6
	ld	t0, 0(t0)
	sw	t2, 12(s2)
	sw	t6, 8(s2)
	sw	s1, 4(s2)
	add	t0, t0, a5
	lhu	t2, 2(t0)
	lhu	t6, 0(t0)
	lhu	s1, 4(t0)
	lhu	t0, 6(t0)
	slli	t2, t2, 16
	or	t2, t2, t6
	slli	s1, s1, 32
	slli	t0, t0, 48
	add	t6, a6, s6
	ld	t6, 0(t6)
	or	t0, t0, s1
	or	t0, t0, t2
	sd	t0, 608(sp)
	add	t1, t6, t1
	lw	t0, 12(t1)
	lw	t2, 8(t1)
	lw	t6, 4(t1)
	lw	t1, 0(t1)
	addi	s1, sp, 808
	sw	t0, 12(s1)
	sw	t2, 8(s1)
	sw	t6, 4(s1)
	sw	t1, 0(s1)
	j	.LBB6_68
.LBB6_58:                               #   in Loop: Header=BB6_18 Depth=1
	lui	a2, %hi(imgY_org)
	ld	a3, %lo(imgY_org)(a2)
	ld	a2, %lo(img)(s1)
	add	a3, a3, s10
	ld	a4, 0(a3)
	slli	a5, s0, 9
	add	a2, a2, a5
	add	a5, a4, a0
	lhu	a5, 0(a5)
	lhu	a6, 184(a2)
	ld	t2, 472(sp)                     # 8-byte Folded Reload
	add	a7, a4, t2
	lhu	a7, 0(a7)
	lhu	t0, 186(a2)
	subw	a5, a5, a6
	sw	a5, 888(sp)
	subw	a5, a7, t0
	sw	a5, 892(sp)
	add	a5, a4, ra
	lhu	a5, 0(a5)
	lhu	a6, 188(a2)
	add	a4, a4, s5
	lhu	a4, 0(a4)
	lhu	a7, 190(a2)
	ld	t0, 8(a3)
	subw	a5, a5, a6
	sw	a5, 896(sp)
	subw	a4, a4, a7
	add	a5, t0, a0
	lhu	a5, 0(a5)
	lhu	a6, 216(a2)
	add	a7, t0, t2
	lhu	a7, 0(a7)
	lhu	t1, 218(a2)
	sw	a4, 900(sp)
	subw	a4, a5, a6
	sw	a4, 904(sp)
	subw	a4, a7, t1
	sw	a4, 908(sp)
	add	a4, t0, ra
	lhu	a4, 0(a4)
	lhu	a5, 220(a2)
	add	t0, t0, s5
	lhu	a6, 0(t0)
	lhu	a7, 222(a2)
	ld	t0, 16(a3)
	subw	a4, a4, a5
	sw	a4, 912(sp)
	subw	a4, a6, a7
	add	a5, t0, a0
	lhu	a5, 0(a5)
	lhu	a6, 248(a2)
	add	a7, t0, t2
	lhu	a7, 0(a7)
	lhu	t1, 250(a2)
	sw	a4, 916(sp)
	subw	a4, a5, a6
	sw	a4, 920(sp)
	subw	a4, a7, t1
	sw	a4, 924(sp)
	add	a4, t0, ra
	lhu	a4, 0(a4)
	lhu	a5, 252(a2)
	add	t0, t0, s5
	lhu	a6, 0(t0)
	lhu	a7, 254(a2)
	ld	a3, 24(a3)
	subw	a4, a4, a5
	sw	a4, 928(sp)
	subw	a4, a6, a7
	add	a0, a3, a0
	lhu	a0, 0(a0)
	lhu	a5, 280(a2)
	add	a6, a3, t2
	lhu	a6, 0(a6)
	lhu	a7, 282(a2)
	sw	a4, 932(sp)
	subw	a0, a0, a5
	sw	a0, 936(sp)
	subw	a0, a6, a7
	add	a4, a3, ra
	lhu	a4, 0(a4)
	lhu	a5, 284(a2)
	add	a3, a3, s5
	lhu	a3, 0(a3)
	lhu	a2, 286(a2)
	sw	a0, 940(sp)
	subw	a4, a4, a5
	sw	a4, 944(sp)
	subw	a3, a3, a2
	sw	a3, 948(sp)
	ld	a0, 512(sp)                     # 8-byte Folded Reload
	xor	a0, s0, a0
	lw	a1, 24(a1)
	seqz	a0, a0
	addi	a0, a0, -1
	ld	s1, 224(sp)                     # 8-byte Folded Reload
	and	s1, a0, s1
	addi	a0, sp, 888
	call	SATD
	ld	a2, 368(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a2)
	addw	a0, a0, s1
	bge	a0, a1, .LBB6_66
# %bb.59:                               #   in Loop: Header=BB6_18 Depth=1
	sw	a0, 0(a2)
	fmv.d	fa5, fs2
	sd	s0, 424(sp)                     # 8-byte Folded Spill
	ld	ra, 456(sp)                     # 8-byte Folded Reload
	j	.LBB6_74
.LBB6_60:                               #   in Loop: Header=BB6_18 Depth=1
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	add	a4, t1, a4
	ld	a2, 440(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 1
	slli	a1, s0, 9
	add	t1, t1, a1
	ld	a5, 184(t1)
	lui	t6, 3
	addiw	a3, t6, 312
	add	a6, a2, a3
	add	a4, a4, a6
	srli	a6, a5, 48
	sh	a6, 6(a4)
	srli	a6, a5, 32
	sh	a6, 4(a4)
	srli	a6, a5, 16
	sh	a6, 2(a4)
	sh	a5, 0(a4)
	lui	t5, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(t5)
	add	a4, a4, s10
	ld	a5, %lo(img)(s1)
	ld	a4, 0(a4)
	add	a6, a5, a1
	add	a7, a4, a0
	lhu	a7, 0(a7)
	lhu	t0, 184(a6)
	ld	t4, 472(sp)                     # 8-byte Folded Reload
	add	t1, a4, t4
	lhu	t1, 0(t1)
	lhu	t2, 186(a6)
	ld	t3, 464(sp)                     # 8-byte Folded Reload
	add	t3, a5, t3
	subw	a7, a7, t0
	sw	a7, 0(t3)
	subw	a7, t1, t2
	add	t0, a4, ra
	lhu	t0, 0(t0)
	lhu	t1, 188(a6)
	add	a4, a4, s5
	lhu	a4, 0(a4)
	lhu	t2, 190(a6)
	sw	a7, 4(t3)
	subw	a7, t0, t1
	sw	a7, 8(t3)
	subw	a4, a4, t2
	sw	a4, 12(t3)
	ld	a4, 184(sp)                     # 8-byte Folded Reload
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
	ld	a4, %lo(imgY_org)(t5)
	add	a4, a4, s10
	ld	a5, %lo(img)(s1)
	ld	a4, 8(a4)
	addiw	a6, t6, 888
	add	a7, a5, a1
	add	t0, a4, a0
	lhu	t0, 0(t0)
	lhu	t1, 216(a7)
	add	t2, a4, t4
	lhu	t2, 0(t2)
	lhu	t3, 218(a7)
	add	a6, a5, a6
	subw	t0, t0, t1
	sw	t0, 0(a6)
	subw	t0, t2, t3
	add	t1, a4, ra
	lhu	t1, 0(t1)
	lhu	t2, 220(a7)
	add	a4, a4, s5
	lhu	a4, 0(a4)
	lhu	t3, 222(a7)
	sw	t0, 4(a6)
	subw	t0, t1, t2
	sw	t0, 8(a6)
	subw	a4, a4, t3
	sw	a4, 12(a6)
	ld	a4, 192(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 5
	ld	a6, 248(a7)
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
	ld	a4, %lo(imgY_org)(t5)
	add	a4, a4, s10
	ld	a5, %lo(img)(s1)
	ld	a4, 16(a4)
	addiw	a6, t6, 952
	add	a7, a5, a1
	add	t0, a4, a0
	lhu	t0, 0(t0)
	lhu	t1, 248(a7)
	add	t2, a4, t4
	lhu	t2, 0(t2)
	lhu	t3, 250(a7)
	add	a6, a5, a6
	subw	t0, t0, t1
	sw	t0, 0(a6)
	subw	t0, t2, t3
	add	t1, a4, ra
	lhu	t1, 0(t1)
	lhu	t2, 252(a7)
	add	a4, a4, s5
	lhu	a4, 0(a4)
	lhu	t3, 254(a7)
	sw	t0, 4(a6)
	subw	t0, t1, t2
	sw	t0, 8(a6)
	subw	a4, a4, t3
	sw	a4, 12(a6)
	ld	a4, 200(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 5
	ld	a6, 280(a7)
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
	ld	a2, %lo(imgY_org)(t5)
	ld	a3, %lo(img)(s1)
	add	a2, a2, s10
	ld	a2, 24(a2)
	lui	a4, 8
	add	a4, a3, a4
	addiw	a5, t6, 1016
	add	a1, a3, a1
	add	a0, a2, a0
	lhu	a0, 0(a0)
	lhu	a6, 280(a1)
	add	a7, a2, t4
	lhu	a7, 0(a7)
	lhu	t0, 282(a1)
	add	a5, a3, a5
	subw	a0, a0, a6
	sw	a0, 0(a5)
	subw	a0, a7, t0
	add	a6, a2, ra
	lhu	a6, 0(a6)
	lhu	a7, 284(a1)
	add	a2, a2, s5
	lhu	a2, 0(a2)
	lhu	a1, 286(a1)
	sw	a0, 4(a5)
	subw	a0, a6, a7
	sw	a0, 8(a5)
	subw	a2, a2, a1
	lw	a0, 12(a3)
	ld	a1, -1192(a4)
	lui	a3, %hi(Mode_Decision_for_4x4IntraBlocks.cbp_bits)
	ld	a3, %lo(Mode_Decision_for_4x4IntraBlocks.cbp_bits)(a3)
	sw	a2, 12(a5)
	li	a2, 528
	mul	a0, a0, a2
	add	a0, a1, a0
	sd	a3, 408(a0)
	addi	a0, sp, 952
	mv	a1, s6
	ld	a2, 488(sp)                     # 8-byte Folded Reload
	mv	a3, s11
	fmv.d	fa0, fs0
	ld	a4, 512(sp)                     # 8-byte Folded Reload
	call	RDCost_for_4x4IntraBlocks
	flt.d	a0, fa0, fs2
	beqz	a0, .LBB6_79
# %bb.61:                               #   in Loop: Header=BB6_18 Depth=1
	fmv.d	fs1, fa0
	sd	s4, 504(sp)                     # 8-byte Folded Spill
	ld	a0, %lo(img)(s1)
	lui	s7, 3
	add	a0, a0, s7
	ld	a0, 1848(a0)
	lui	s2, %hi(img)
	slli	s1, s6, 3
	add	a0, a0, s1
	ld	a0, 0(a0)
	lui	a1, %hi(cofAC4x4)
	ld	s3, %lo(cofAC4x4)(a1)
	ld	s4, 488(sp)                     # 8-byte Folded Reload
	slli	s4, s4, 3
	add	a0, a0, s4
	ld	a1, 0(a0)
	ld	a0, 0(s3)
	ld	a1, 0(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s2)
	add	a0, a0, s7
	ld	s11, 480(sp)                    # 8-byte Folded Reload
	ld	a0, 1848(a0)
	add	a0, a0, s1
	lui	s1, %hi(img)
	ld	a0, 0(a0)
	add	a0, a0, s4
	ld	a1, 0(a0)
	ld	a0, 8(s3)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	lui	a0, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a0)
	ld	a0, %lo(img)(s1)
	lui	a2, 2
	add	a1, a1, a2
	ld	a5, -1768(a1)
	lw	a3, 24(a0)
	ld	a2, 536(sp)                     # 8-byte Folded Reload
	add	a2, a5, a2
	slli	a1, s11, 1
	li	a4, 3
	bne	a3, a4, .LBB6_75
# %bb.62:                               #   in Loop: Header=BB6_18 Depth=1
	lui	a3, %hi(si_frame_indicator)
	lw	a3, %lo(si_frame_indicator)(a3)
	bnez	a3, .LBB6_75
# %bb.63:                               #   in Loop: Header=BB6_18 Depth=1
	lui	a3, %hi(sp2_frame_indicator)
	lw	a3, %lo(sp2_frame_indicator)(a3)
	bnez	a3, .LBB6_75
# %bb.64:                               #   in Loop: Header=BB6_18 Depth=1
	lui	a3, %hi(lrec)
	ld	a4, %lo(lrec)(a3)
	ld	a3, 536(sp)                     # 8-byte Folded Reload
	add	a3, a4, a3
	ld	a6, 0(a3)
	ld	a3, 480(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 2
	add	a6, a6, a3
	lwu	a7, 4(a6)
	lwu	t0, 0(a6)
	slli	a7, a7, 32
	or	a7, a7, t0
	lwu	t0, 12(a6)
	ld	t2, 432(sp)                     # 8-byte Folded Reload
	add	t1, a5, t2
	ld	t1, 0(t1)
	sd	a7, 760(sp)
	lwu	a6, 8(a6)
	slli	t0, t0, 32
	add	t1, t1, a1
	lhu	a7, 2(t1)
	or	a6, t0, a6
	sd	a6, 768(sp)
	lhu	a6, 0(t1)
	slli	a7, a7, 16
	lhu	t0, 4(t1)
	lhu	t1, 6(t1)
	add	t2, a4, t2
	ld	t2, 0(t2)
	or	a6, a7, a6
	slli	t0, t0, 32
	slli	t1, t1, 48
	add	t2, t2, a3
	lw	a7, 0(t2)
	or	t0, t1, t0
	or	t5, t0, a6
	lw	a6, 4(t2)
	addi	t4, sp, 776
	sw	a7, 0(t4)
	ld	t3, 376(sp)                     # 8-byte Folded Reload
	add	a7, a5, t3
	ld	a7, 0(a7)
	sw	a6, 4(t4)
	lw	a6, 8(t2)
	lw	t0, 12(t2)
	add	a7, a7, a1
	lhu	t1, 2(a7)
	sw	a6, 8(t4)
	sw	t0, 12(t4)
	lhu	a6, 0(a7)
	slli	t1, t1, 16
	lhu	t0, 4(a7)
	add	t2, a4, t3
	ld	t2, 0(t2)
	or	a6, t1, a6
	lhu	a7, 6(a7)
	slli	t0, t0, 32
	add	t2, t2, a3
	lw	t1, 12(t2)
	slli	a7, a7, 48
	or	a7, a7, t0
	or	a6, a7, a6
	sd	a6, 152(sp)                     # 8-byte Folded Spill
	addi	t3, sp, 792
	sw	t1, 12(t3)
	lw	a6, 8(t2)
	lw	a7, 4(t2)
	ld	t1, 520(sp)                     # 8-byte Folded Reload
	add	a5, a5, t1
	ld	a5, 0(a5)
	sw	a6, 8(t3)
	sw	a7, 4(t3)
	lw	a6, 0(t2)
	add	a5, a5, a1
	lhu	a7, 2(a5)
	lhu	t0, 0(a5)
	sw	a6, 0(t3)
	lhu	a6, 4(a5)
	slli	a7, a7, 16
	or	a7, a7, t0
	lhu	a5, 6(a5)
	slli	a6, a6, 32
	add	a4, a4, t1
	ld	a4, 0(a4)
	slli	a5, a5, 48
	or	a5, a5, a6
	or	t0, a5, a7
	add	a3, a4, a3
	lw	a4, 12(a3)
	lw	a5, 8(a3)
	lw	a6, 4(a3)
	lw	a3, 0(a3)
	addi	a7, sp, 808
	sw	a4, 12(a7)
	sw	a5, 8(a7)
	sw	a6, 4(a7)
	sw	a3, 0(a7)
	j	.LBB6_76
.LBB6_65:                               #   in Loop: Header=BB6_18 Depth=1
	fmv.d	fa5, fs2
	ld	s8, 384(sp)                     # 8-byte Folded Reload
	lui	s3, %hi(resTrans_R)
	addi	s3, s3, %lo(resTrans_R)
	ld	s10, 264(sp)                    # 8-byte Folded Reload
	ld	s4, 504(sp)                     # 8-byte Folded Reload
	li	s2, 2
	j	.LBB6_80
.LBB6_66:                               #   in Loop: Header=BB6_18 Depth=1
	fmv.d	fa5, fs2
	ld	ra, 456(sp)                     # 8-byte Folded Reload
	j	.LBB6_74
.LBB6_67:                               #   in Loop: Header=BB6_18 Depth=1
	ld	s5, 432(sp)                     # 8-byte Folded Reload
	add	t1, t0, s5
	ld	t1, 0(t1)
	add	t1, t1, a5
	lhu	t2, 2(t1)
	lhu	t6, 0(t1)
	lhu	s1, 4(t1)
	lhu	t1, 6(t1)
	slli	t2, t2, 16
	or	t2, t2, t6
	slli	s1, s1, 32
	slli	t1, t1, 48
	add	t6, t0, s8
	ld	t6, 0(t6)
	or	t1, t1, s1
	or	t1, t1, t2
	sd	t1, 624(sp)
	add	t6, t6, a5
	lhu	t1, 2(t6)
	lhu	t2, 0(t6)
	lhu	s1, 4(t6)
	lhu	t6, 6(t6)
	slli	t1, t1, 16
	or	t1, t1, t2
	slli	s1, s1, 32
	slli	t6, t6, 48
	add	t0, t0, s3
	ld	t0, 0(t0)
	or	t6, t6, s1
	or	t1, t6, t1
	sd	t1, 616(sp)
	add	t0, t0, a5
	lhu	t1, 2(t0)
	lhu	t2, 0(t0)
	lhu	t6, 4(t0)
	lhu	t0, 6(t0)
	slli	t1, t1, 16
	or	t1, t1, t2
	slli	t6, t6, 32
	slli	t0, t0, 48
	or	t0, t0, t6
	or	t0, t0, t1
	sd	t0, 608(sp)
	mv	s6, s3
	ld	s7, 536(sp)                     # 8-byte Folded Reload
.LBB6_68:                               #   in Loop: Header=BB6_18 Depth=1
	ld	t0, 304(sp)                     # 8-byte Folded Reload
	lw	t0, 64(t0)
	ld	t6, 8(a7)
	ld	a7, 312(sp)                     # 8-byte Folded Reload
	sw	t0, 64(a7)
	ld	a7, 248(sp)                     # 8-byte Folded Reload
	lw	a7, 64(a7)
	add	t0, t6, s7
	ld	t0, 0(t0)
	add	t1, t6, s5
	ld	t1, 0(t1)
	ld	t2, 296(sp)                     # 8-byte Folded Reload
	sw	a7, 64(t2)
	lw	s3, 24(a0)
	add	a7, t0, a5
	add	t2, t1, a5
	lhu	s1, 2(t2)
	lhu	s4, 0(t2)
	lhu	t0, 0(a7)
	lhu	t1, 2(a7)
	slli	s1, s1, 16
	or	s1, s1, s4
	lhu	s4, 4(t2)
	lhu	s5, 6(t2)
	lhu	t2, 4(a7)
	lhu	a7, 6(a7)
	slli	s4, s4, 32
	slli	s5, s5, 48
	or	s4, s5, s4
	or	s1, s4, s1
	add	s4, t6, s8
	add	t6, t6, s6
	li	s2, 3
	bne	s3, s2, .LBB6_72
# %bb.69:                               #   in Loop: Header=BB6_18 Depth=1
	bnez	t5, .LBB6_72
# %bb.70:                               #   in Loop: Header=BB6_18 Depth=1
	bnez	t4, .LBB6_72
# %bb.71:                               #   in Loop: Header=BB6_18 Depth=1
	ld	t4, 0(s4)
	add	t4, t4, a5
	lhu	t5, 2(t4)
	sd	s1, 600(sp)
	lhu	s1, 0(t4)
	slli	t5, t5, 16
	lhu	s3, 4(t4)
	lhu	t4, 6(t4)
	or	t5, t5, s1
	ld	t6, 0(t6)
	slli	s3, s3, 32
	slli	t4, t4, 48
	or	t4, t4, s3
	add	t6, t6, a5
	lhu	s1, 2(t6)
	or	t4, t4, t5
	lhu	t5, 0(t6)
	sd	t4, 592(sp)
	slli	s1, s1, 16
	ld	t3, 0(t3)
	or	t5, s1, t5
	lhu	t4, 4(t6)
	lhu	t6, 6(t6)
	ld	s4, 536(sp)                     # 8-byte Folded Reload
	add	s1, t3, s4
	ld	s1, 0(s1)
	slli	t4, t4, 32
	slli	t6, t6, 48
	or	t4, t6, t4
	add	s1, s1, a5
	lhu	t6, 2(s1)
	lhu	s3, 0(s1)
	or	t4, t4, t5
	sd	t4, 584(sp)
	slli	t6, t6, 16
	or	t5, t6, s3
	lhu	t4, 4(s1)
	lhu	t6, 6(s1)
	add	s1, a6, s4
	ld	s1, 0(s1)
	slli	s3, t4, 32
	slli	t6, t6, 48
	ld	t4, 480(sp)                     # 8-byte Folded Reload
	slli	t4, t4, 2
	add	s1, s1, t4
	lwu	s4, 4(s1)
	lwu	s5, 0(s1)
	or	t6, t6, s3
	or	t5, t6, t5
	sd	t5, 136(sp)                     # 8-byte Folded Spill
	slli	s4, s4, 32
	or	t5, s4, s5
	lwu	t6, 12(s1)
	ld	s4, 432(sp)                     # 8-byte Folded Reload
	add	s3, t3, s4
	ld	s3, 0(s3)
	sd	t5, 760(sp)
	lwu	t5, 8(s1)
	slli	t6, t6, 32
	add	s3, s3, a5
	lhu	s1, 2(s3)
	or	t5, t6, t5
	sd	t5, 768(sp)
	lhu	t5, 0(s3)
	slli	s1, s1, 16
	lhu	t6, 4(s3)
	lhu	s3, 6(s3)
	add	s4, a6, s4
	ld	s4, 0(s4)
	or	t5, s1, t5
	slli	t6, t6, 32
	slli	s3, s3, 48
	add	s4, s4, t4
	lw	s1, 12(s4)
	or	t6, s3, t6
	or	t5, t6, t5
	sd	t5, 160(sp)                     # 8-byte Folded Spill
	lw	t5, 8(s4)
	addi	s5, sp, 776
	sw	s1, 12(s5)
	add	t6, t3, s8
	ld	t6, 0(t6)
	sw	t5, 8(s5)
	lw	t5, 4(s4)
	lw	s1, 0(s4)
	add	t6, t6, a5
	lhu	s3, 2(t6)
	sw	t5, 4(s5)
	sw	s1, 0(s5)
	lhu	t5, 0(t6)
	slli	s3, s3, 16
	lhu	s1, 4(t6)
	add	s4, a6, s8
	ld	s4, 0(s4)
	or	t5, s3, t5
	lhu	t6, 6(t6)
	slli	s1, s1, 32
	add	s4, s4, t4
	lw	s3, 12(s4)
	slli	t6, t6, 48
	or	t6, t6, s1
	or	t5, t6, t5
	sd	t5, 152(sp)                     # 8-byte Folded Spill
	addi	s2, sp, 792
	sw	s3, 12(s2)
	lw	t5, 8(s4)
	lw	t6, 4(s4)
	ld	s1, 520(sp)                     # 8-byte Folded Reload
	add	t3, t3, s1
	ld	t3, 0(t3)
	sw	t5, 8(s2)
	sw	t6, 4(s2)
	lw	t5, 0(s4)
	add	a5, t3, a5
	lhu	t3, 2(a5)
	lhu	t6, 0(a5)
	sw	t5, 0(s2)
	lhu	t5, 4(a5)
	slli	t3, t3, 16
	or	t3, t3, t6
	lhu	a5, 6(a5)
	slli	t5, t5, 32
	add	a6, a6, s1
	ld	a6, 0(a6)
	slli	a5, a5, 48
	or	a5, a5, t5
	or	a5, a5, t3
	sd	a5, 144(sp)                     # 8-byte Folded Spill
	add	a6, a6, t4
	lw	a5, 12(a6)
	lw	t3, 8(a6)
	lw	t4, 4(a6)
	lw	a6, 0(a6)
	addi	t5, sp, 808
	sw	a5, 12(t5)
	sw	t3, 8(t5)
	sw	t4, 4(t5)
	sw	a6, 0(t5)
	j	.LBB6_73
.LBB6_72:                               #   in Loop: Header=BB6_18 Depth=1
	ld	a6, 0(s4)
	add	a6, a6, a5
	lhu	t4, 2(a6)
	sd	s1, 600(sp)
	lhu	t5, 0(a6)
	slli	t4, t4, 16
	lhu	s1, 4(a6)
	lhu	a6, 6(a6)
	or	t4, t4, t5
	ld	t5, 0(t6)
	slli	s1, s1, 32
	slli	a6, a6, 48
	or	a6, a6, s1
	add	t5, t5, a5
	lhu	t6, 2(t5)
	or	a6, a6, t4
	lhu	t4, 0(t5)
	sd	a6, 592(sp)
	slli	t6, t6, 16
	ld	a6, 0(t3)
	or	t4, t6, t4
	lhu	t3, 4(t5)
	lhu	t5, 6(t5)
	ld	t6, 536(sp)                     # 8-byte Folded Reload
	add	t6, a6, t6
	ld	t6, 0(t6)
	slli	t3, t3, 32
	slli	t5, t5, 48
	or	t3, t5, t3
	add	t6, t6, a5
	lhu	t5, 2(t6)
	or	t3, t3, t4
	sd	t3, 584(sp)
	lhu	t3, 0(t6)
	slli	t5, t5, 16
	lhu	t4, 4(t6)
	lhu	t6, 6(t6)
	ld	s1, 432(sp)                     # 8-byte Folded Reload
	add	s1, a6, s1
	ld	s1, 0(s1)
	or	t3, t5, t3
	slli	t4, t4, 32
	slli	t6, t6, 48
	add	s1, s1, a5
	lhu	t5, 2(s1)
	lhu	s3, 0(s1)
	or	t4, t6, t4
	or	t3, t4, t3
	sd	t3, 136(sp)                     # 8-byte Folded Spill
	slli	t5, t5, 16
	or	t3, t5, s3
	lhu	t4, 4(s1)
	lhu	t5, 6(s1)
	add	t6, a6, s8
	ld	t6, 0(t6)
	slli	t4, t4, 32
	slli	t5, t5, 48
	or	t4, t5, t4
	add	t6, t6, a5
	lhu	t5, 2(t6)
	lhu	s1, 0(t6)
	or	t3, t4, t3
	sd	t3, 160(sp)                     # 8-byte Folded Spill
	lhu	t3, 4(t6)
	slli	t5, t5, 16
	or	t5, t5, s1
	lhu	t4, 6(t6)
	slli	t3, t3, 32
	ld	t6, 520(sp)                     # 8-byte Folded Reload
	add	a6, a6, t6
	ld	a6, 0(a6)
	slli	t4, t4, 48
	or	t3, t4, t3
	or	t3, t3, t5
	sd	t3, 152(sp)                     # 8-byte Folded Spill
	add	a5, a6, a5
	lhu	a6, 2(a5)
	lhu	t3, 0(a5)
	lhu	t4, 4(a5)
	lhu	a5, 6(a5)
	slli	a6, a6, 16
	or	a6, a6, t3
	slli	t4, t4, 32
	slli	a5, a5, 48
	or	a5, a5, t4
	or	a5, a5, a6
	sd	a5, 144(sp)                     # 8-byte Folded Spill
.LBB6_73:                               #   in Loop: Header=BB6_18 Depth=1
	ld	s6, 496(sp)                     # 8-byte Folded Reload
	ld	s5, 392(sp)                     # 8-byte Folded Reload
	lui	s7, %hi(resTrans_B)
	addi	s7, s7, %lo(resTrans_B)
	li	s2, 2
	slli	a4, a4, 16
	or	a1, a4, a1
	slli	a2, a2, 32
	slli	a3, a3, 48
	lw	a4, 12(a0)
	ld	a0, 128(a0)
	or	a2, a3, a2
	or	a1, a2, a1
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	slli	a4, a4, 3
	add	a0, a0, a4
	ld	a0, 0(a0)
	slli	t1, t1, 16
	or	a1, t1, t0
	ld	a2, 352(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	slli	t2, t2, 32
	lw	a2, 952(sp)
	sd	a2, 360(sp)                     # 8-byte Folded Spill
	ld	a2, 344(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	sd	a0, 336(sp)                     # 8-byte Folded Spill
	slli	a7, a7, 48
	or	a0, a7, t2
	or	a0, a0, a1
	sd	a0, 528(sp)                     # 8-byte Folded Spill
	sd	s0, 424(sp)                     # 8-byte Folded Spill
	ld	s8, 384(sp)                     # 8-byte Folded Reload
	lui	s3, %hi(resTrans_R)
	addi	s3, s3, %lo(resTrans_R)
	ld	s4, 504(sp)                     # 8-byte Folded Reload
.LBB6_74:                               #   in Loop: Header=BB6_18 Depth=1
	lui	a4, %hi(input)
	li	a5, 1
	li	a6, 9
	lui	s1, %hi(img)
	j	.LBB6_17
.LBB6_75:                               #   in Loop: Header=BB6_18 Depth=1
	ld	a3, 8(a2)
	add	a3, a3, a1
	lhu	a4, 2(a3)
	lhu	a5, 0(a3)
	slli	a4, a4, 16
	lhu	a6, 4(a3)
	lhu	a3, 6(a3)
	or	a4, a4, a5
	ld	a5, 16(a2)
	slli	a6, a6, 32
	slli	a3, a3, 48
	or	a3, a3, a6
	add	a5, a5, a1
	lhu	a6, 2(a5)
	or	t5, a3, a4
	lhu	a3, 0(a5)
	lhu	a4, 4(a5)
	slli	a6, a6, 16
	lhu	a5, 6(a5)
	or	a3, a6, a3
	slli	a4, a4, 32
	ld	a6, 24(a2)
	slli	a5, a5, 48
	or	a4, a5, a4
	or	a3, a4, a3
	sd	a3, 152(sp)                     # 8-byte Folded Spill
	add	a6, a6, a1
	lhu	a3, 2(a6)
	lhu	a4, 0(a6)
	lhu	a5, 4(a6)
	lhu	a6, 6(a6)
	slli	a3, a3, 16
	or	a3, a3, a4
	slli	a5, a5, 32
	slli	a6, a6, 48
	or	a4, a6, a5
	or	t0, a4, a3
.LBB6_76:                               #   in Loop: Header=BB6_18 Depth=1
	ld	a7, 352(sp)                     # 8-byte Folded Reload
	sd	t0, 144(sp)                     # 8-byte Folded Spill
	sd	t5, 160(sp)                     # 8-byte Folded Spill
	ld	a2, 0(a2)
	lui	a3, 22
	addiw	a3, a3, 100
	add	a3, a0, a3
	add	a1, a2, a1
	lhu	a2, 2(a1)
	lhu	a4, 0(a1)
	lw	a5, 12(a0)
	ld	a6, 128(a0)
	slli	a2, a2, 16
	or	a2, a2, a4
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
	ld	a6, 344(sp)                     # 8-byte Folded Reload
	slli	a6, a6, 2
	ld	a7, 0(a7)
	add	a4, a4, a6
	lw	a6, 952(sp)
	sd	a6, 360(sp)                     # 8-byte Folded Spill
	li	a6, 528
	mul	a5, a5, a6
	add	a5, a7, a5
	ld	a5, 408(a5)
	lw	a3, 0(a3)
	lw	a4, 0(a4)
	sd	a4, 336(sp)                     # 8-byte Folded Spill
	or	a1, a1, a2
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	ld	a1, 176(sp)                     # 8-byte Folded Reload
	srl	a1, a5, a1
	andi	a1, a1, 1
	sd	a1, 168(sp)                     # 8-byte Folded Spill
	lui	s3, %hi(resTrans_R)
	addi	s3, s3, %lo(resTrans_R)
	ld	s4, 504(sp)                     # 8-byte Folded Reload
	lui	s7, %hi(resTrans_B)
	addi	s7, s7, %lo(resTrans_B)
	beqz	a3, .LBB6_78
# %bb.77:                               #   in Loop: Header=BB6_18 Depth=1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a5, 88(sp)                      # 8-byte Folded Reload
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	add	a1, a1, a5
	add	a1, a0, a1
	lw	a2, 12(a1)
	lw	a3, 8(a1)
	lw	a4, 4(a1)
	lw	a1, 0(a1)
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	sw	a2, 12(a6)
	sw	a3, 8(a6)
	sw	a4, 4(a6)
	sw	a1, 0(a6)
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	add	a1, a1, a5
	add	a1, a0, a1
	lw	a2, 0(a1)
	lw	a3, 4(a1)
	lw	a4, 8(a1)
	lw	a1, 12(a1)
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	sw	a2, 0(a6)
	sw	a3, 4(a6)
	sw	a4, 8(a6)
	sw	a1, 12(a6)
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	add	a1, a1, a5
	add	a1, a0, a1
	lw	a2, 0(a1)
	lw	a3, 4(a1)
	lw	a4, 8(a1)
	lw	a1, 12(a1)
	ld	a6, 64(sp)                      # 8-byte Folded Reload
	sw	a2, 0(a6)
	sw	a3, 4(a6)
	sw	a4, 8(a6)
	sw	a1, 12(a6)
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a1, a1, a5
	add	a0, a0, a1
	lw	a1, 12(a0)
	lw	a2, 8(a0)
	lw	a3, 4(a0)
	lw	a0, 0(a0)
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	sw	a1, 12(a4)
	sw	a2, 8(a4)
	sw	a3, 4(a4)
	sw	a0, 0(a4)
.LBB6_78:                               #   in Loop: Header=BB6_18 Depth=1
	fmv.d	fs2, fs1
	sd	s0, 424(sp)                     # 8-byte Folded Spill
	li	s2, 2
.LBB6_79:                               #   in Loop: Header=BB6_18 Depth=1
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	call	reset_coding_state
	fmv.d	fa5, fs2
	ld	ra, 456(sp)                     # 8-byte Folded Reload
.LBB6_80:                               #   in Loop: Header=BB6_18 Depth=1
	lui	a4, %hi(input)
	li	a5, 1
	li	a6, 9
	j	.LBB6_17
.LBB6_81:
	lui	s5, %hi(img)
	ld	a0, %lo(img)(s5)
	lw	a1, 12(a0)
	ld	a2, 128(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, 352(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	ld	a2, 344(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 2
	add	a1, a1, a2
	ld	a2, 336(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a1)
	li	a1, 1
	lui	a2, %hi(Mode_Decision_for_4x4IntraBlocks.cbp_bits)
	ld	a3, %lo(Mode_Decision_for_4x4IntraBlocks.cbp_bits)(a2)
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	sllw	a1, a1, a4
	not	a1, a1
	ld	a0, 104(a0)
	and	a1, a3, a1
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	sllw	a3, a3, a4
	ld	a4, 104(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 3
	add	a0, a0, a4
	ld	a0, 0(a0)
	or	a1, a1, a3
	sd	a1, %lo(Mode_Decision_for_4x4IntraBlocks.cbp_bits)(a2)
	ld	a2, 424(sp)                     # 8-byte Folded Reload
	sext.w	s0, a2
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	sb	a2, 0(a0)
	ld	a1, 512(sp)                     # 8-byte Folded Reload
	xor	a0, s0, a1
	snez	a0, a0
	slt	a1, s0, a1
	xori	a1, a1, 1
	subw	a1, a2, a1
	ld	a2, %lo(img)(s5)
	addi	a0, a0, -1
	or	a0, a0, a1
	lui	a1, 8
	add	a1, a2, a1
	ld	a1, -1192(a1)
	lw	a2, 12(a2)
	slli	a3, s6, 2
	ld	a5, 488(sp)                     # 8-byte Folded Reload
	addw	a3, a3, a5
	li	a4, 528
	mul	a2, a2, a4
	add	a1, a1, a2
	add	a1, a1, a3
	sb	a0, 332(a1)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	beqz	a0, .LBB6_121
# %bb.82:
	ld	a0, %lo(img)(s5)
	lui	s1, 3
	add	a0, a0, s1
	ld	a0, 1848(a0)
	slli	s2, s6, 3
	add	a0, a0, s2
	ld	a0, 0(a0)
	lui	a1, %hi(cofAC4x4)
	slli	s3, a5, 3
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	s4, %lo(cofAC4x4)(a1)
	ld	a0, 0(a0)
	ld	a1, 0(s4)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s5)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	ld	a1, 8(s4)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s5)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 460(a1)
	beqz	a1, .LBB6_84
# %bb.83:
	addiw	a1, s1, 1848
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a0, a0, s2
	ld	a0, 32(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	li	a2, 72
	lui	s5, %hi(cofAC4x4_chroma)
	addi	s5, s5, %lo(cofAC4x4_chroma)
	mv	a1, s5
	call	memcpy
	lui	s4, %hi(img)
	ld	a0, %lo(img)(s4)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 64(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	addi	a1, s5, 144
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s4)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 32(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	addi	a1, s5, 72
	li	a2, 72
	call	memcpy
	ld	a0, %lo(img)(s4)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 64(a0)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	addi	a1, s5, 216
	li	a2, 72
	call	memcpy
.LBB6_84:
	lui	a3, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a3)
	lui	a5, 2
	add	a0, a0, a5
	ld	a0, -1768(a0)
	ld	s2, 536(sp)                     # 8-byte Folded Reload
	add	a0, a0, s2
	ld	a1, 0(a0)
	ld	a0, 480(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 1
	add	a1, a1, a0
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	srli	a2, a4, 48
	sh	a2, 6(a1)
	srli	a2, a4, 32
	sh	a2, 4(a1)
	srli	a2, a4, 16
	sh	a2, 2(a1)
	sh	a4, 0(a1)
	lui	a2, %hi(img)
	ld	a4, %lo(img)(a2)
	ld	a1, 440(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 1
	ld	a6, 208(sp)                     # 8-byte Folded Reload
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
	addi	s6, sp, 728
	addi	s7, sp, 744
	addi	s8, sp, 680
	addi	s9, sp, 664
	addi	s10, sp, 648
	ld	ra, 376(sp)                     # 8-byte Folded Reload
	bne	t0, a7, .LBB6_88
# %bb.85:
	lw	t0, %lo(si_frame_indicator)(a6)
	bnez	t0, .LBB6_88
# %bb.86:
	lw	t0, %lo(sp2_frame_indicator)(a4)
	bnez	t0, .LBB6_88
# %bb.87:
	lui	t0, %hi(lrec)
	ld	t0, %lo(lrec)(t0)
	add	t0, t0, s2
	ld	t0, 0(t0)
	ld	t1, 480(sp)                     # 8-byte Folded Reload
	slli	t1, t1, 2
	add	t0, t0, t1
	lw	t1, 772(sp)
	lw	t2, 768(sp)
	lw	t3, 764(sp)
	lw	t4, 760(sp)
	sw	t1, 12(t0)
	sw	t2, 8(t0)
	sw	t3, 4(t0)
	sw	t4, 0(t0)
.LBB6_88:
	ld	a3, %lo(enc_picture)(a3)
	add	a3, a3, a5
	ld	a3, -1768(a3)
	ld	a5, 432(sp)                     # 8-byte Folded Reload
	add	a3, a3, a5
	ld	a3, 0(a3)
	add	a3, a3, a0
	ld	t0, 160(sp)                     # 8-byte Folded Reload
	srli	a5, t0, 48
	sh	a5, 6(a3)
	srli	a5, t0, 32
	sh	a5, 4(a3)
	srli	a5, t0, 16
	sh	a5, 2(a3)
	sh	t0, 0(a3)
	ld	a5, %lo(img)(a2)
	ld	a3, 184(sp)                     # 8-byte Folded Reload
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
	addi	s4, sp, 696
	ld	s3, 520(sp)                     # 8-byte Folded Reload
	ld	s5, 96(sp)                      # 8-byte Folded Reload
	ld	t0, 152(sp)                     # 8-byte Folded Reload
	bne	a2, a7, .LBB6_92
# %bb.89:
	lw	a2, %lo(si_frame_indicator)(a6)
	bnez	a2, .LBB6_92
# %bb.90:
	lw	a2, %lo(sp2_frame_indicator)(a4)
	bnez	a2, .LBB6_92
# %bb.91:
	lui	a2, %hi(lrec)
	ld	a2, %lo(lrec)(a2)
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	add	a2, a2, a4
	ld	a2, 0(a2)
	ld	a4, 480(sp)                     # 8-byte Folded Reload
	slli	a4, a4, 2
	add	a2, a2, a4
	lw	a4, 788(sp)
	lw	a5, 784(sp)
	lw	a6, 780(sp)
	lw	a7, 776(sp)
	sw	a4, 12(a2)
	sw	a5, 8(a2)
	sw	a6, 4(a2)
	sw	a7, 0(a2)
.LBB6_92:
	lui	a5, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a5)
	lui	a6, 2
	add	a2, a2, a6
	ld	a2, -1768(a2)
	add	a2, a2, ra
	ld	a2, 0(a2)
	add	a2, a2, a0
	srli	a4, t0, 48
	sh	a4, 6(a2)
	srli	a4, t0, 32
	sh	a4, 4(a2)
	srli	a4, t0, 16
	sh	a4, 2(a2)
	sh	t0, 0(a2)
	lui	a2, %hi(img)
	ld	a4, %lo(img)(a2)
	ld	a7, 192(sp)                     # 8-byte Folded Reload
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
	bne	t0, a7, .LBB6_96
# %bb.93:
	lw	t0, %lo(si_frame_indicator)(a3)
	bnez	t0, .LBB6_96
# %bb.94:
	lw	t0, %lo(sp2_frame_indicator)(a4)
	bnez	t0, .LBB6_96
# %bb.95:
	lui	t0, %hi(lrec)
	ld	t0, %lo(lrec)(t0)
	add	t0, t0, ra
	ld	t0, 0(t0)
	ld	t1, 480(sp)                     # 8-byte Folded Reload
	slli	t1, t1, 2
	add	t0, t0, t1
	lw	t1, 804(sp)
	lw	t2, 800(sp)
	lw	t3, 796(sp)
	lw	t4, 792(sp)
	sw	t1, 12(t0)
	sw	t2, 8(t0)
	sw	t3, 4(t0)
	sw	t4, 0(t0)
.LBB6_96:
	ld	a5, %lo(enc_picture)(a5)
	add	a5, a5, a6
	ld	a5, -1768(a5)
	add	a5, a5, s3
	ld	a5, 0(a5)
	add	a5, a5, a0
	ld	t0, 144(sp)                     # 8-byte Folded Reload
	srli	a6, t0, 48
	sh	a6, 6(a5)
	srli	a6, t0, 32
	sh	a6, 4(a5)
	srli	a6, t0, 16
	sh	a6, 2(a5)
	sh	t0, 0(a5)
	ld	a5, %lo(img)(a2)
	ld	a6, 200(sp)                     # 8-byte Folded Reload
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
	bne	a1, a7, .LBB6_100
# %bb.97:
	lw	a1, %lo(si_frame_indicator)(a3)
	bnez	a1, .LBB6_100
# %bb.98:
	lw	a1, %lo(sp2_frame_indicator)(a4)
	bnez	a1, .LBB6_100
# %bb.99:
	lui	a1, %hi(lrec)
	ld	a1, %lo(lrec)(a1)
	add	a1, a1, s3
	ld	a1, 0(a1)
	ld	a2, 480(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a2, 820(sp)
	lw	a3, 816(sp)
	lw	a4, 812(sp)
	lw	a5, 808(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
.LBB6_100:
	lui	a1, 22
	add	a3, a2, a1
	lw	a3, 100(a3)
	beqz	a3, .LBB6_102
# %bb.101:
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	add	a2, a2, a3
	lui	a3, 4
	addiw	a3, a3, -1208
	ld	t1, 88(sp)                      # 8-byte Folded Reload
	add	a4, t1, a3
	add	a2, a2, a4
	ld	a7, 32(sp)                      # 8-byte Folded Reload
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
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	add	a5, a5, t1
	add	a5, a5, a3
	add	a4, a4, a5
	ld	t0, 48(sp)                      # 8-byte Folded Reload
	lw	a5, 0(t0)
	lw	a6, 4(t0)
	lw	a7, 8(t0)
	lw	t0, 12(t0)
	sw	a5, 0(a4)
	sw	a6, 4(a4)
	sw	a7, 8(a4)
	sw	t0, 12(a4)
	ld	a4, %lo(img)(a2)
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	add	a5, a5, t1
	add	a5, a5, a3
	add	a4, a4, a5
	ld	t0, 64(sp)                      # 8-byte Folded Reload
	lw	a5, 12(t0)
	lw	a6, 8(t0)
	lw	a7, 4(t0)
	lw	t0, 0(t0)
	sw	a5, 12(a4)
	sw	a6, 8(a4)
	sw	a7, 4(a4)
	sw	t0, 0(a4)
	ld	a4, %lo(img)(a2)
	ld	a5, 72(sp)                      # 8-byte Folded Reload
	add	a5, a5, t1
	add	a3, a5, a3
	add	a3, a4, a3
	ld	a7, 80(sp)                      # 8-byte Folded Reload
	lw	a4, 0(a7)
	lw	a5, 4(a7)
	lw	a6, 8(a7)
	lw	a7, 12(a7)
	sw	a4, 0(a3)
	sw	a5, 4(a3)
	sw	a6, 8(a3)
	sw	a7, 12(a3)
	ld	a2, %lo(img)(a2)
.LBB6_102:
	add	a1, a2, a1
	lw	a1, 460(a1)
	beqz	a1, .LBB6_134
# %bb.103:                              # %.preheader
	li	t3, 0
	addi	t6, sp, 632
	addi	t2, sp, 608
	addi	t4, sp, 616
	addi	t5, sp, 624
	li	t1, 1
	lui	a1, %hi(enc_picture)
	lui	a2, 2
	lui	a3, %hi(img)
	lui	a4, %hi(si_frame_indicator)
	lui	a5, %hi(sp2_frame_indicator)
	li	a6, 3
	lui	a7, %hi(lrec_uv)
	ld	t0, 480(sp)                     # 8-byte Folded Reload
	slli	t0, t0, 2
	ld	s11, 432(sp)                    # 8-byte Folded Reload
	j	.LBB6_105
.LBB6_104:                              #   in Loop: Header=BB6_105 Depth=1
	li	t3, 1
	addi	t2, sp, 584
	addi	t4, sp, 592
	andi	s0, t1, 1
	addi	t5, sp, 600
	ld	s5, 528(sp)                     # 8-byte Folded Reload
	mv	t6, s4
	addi	s10, sp, 712
	mv	s9, s6
	mv	s8, s7
	li	t1, 0
	beqz	s0, .LBB6_134
.LBB6_105:                              # =>This Inner Loop Header: Depth=1
	ld	s0, %lo(enc_picture)(a1)
	add	s0, s0, a2
	ld	s0, -1728(s0)
	slli	t3, t3, 3
	add	s0, s0, t3
	ld	s0, 0(s0)
	add	s0, s0, s2
	ld	s0, 0(s0)
	add	s0, s0, a0
	srli	s1, s5, 48
	sh	s1, 6(s0)
	srli	s1, s5, 32
	sh	s1, 4(s0)
	srli	s1, s5, 16
	sh	s1, 2(s0)
	sh	s5, 0(s0)
	ld	s0, %lo(img)(a3)
	lw	s0, 24(s0)
	bne	s0, a6, .LBB6_109
# %bb.106:                              #   in Loop: Header=BB6_105 Depth=1
	lw	s0, %lo(si_frame_indicator)(a4)
	bnez	s0, .LBB6_109
# %bb.107:                              #   in Loop: Header=BB6_105 Depth=1
	lw	s0, %lo(sp2_frame_indicator)(a5)
	bnez	s0, .LBB6_109
# %bb.108:                              #   in Loop: Header=BB6_105 Depth=1
	ld	s0, %lo(lrec_uv)(a7)
	add	s0, s0, t3
	ld	s0, 0(s0)
	add	s0, s0, s2
	ld	s0, 0(s0)
	add	s0, s0, t0
	lw	s1, 12(t6)
	lw	s2, 8(t6)
	lw	s3, 4(t6)
	lw	t6, 0(t6)
	sw	s1, 12(s0)
	sw	s2, 8(s0)
	ld	s2, 536(sp)                     # 8-byte Folded Reload
	sw	s3, 4(s0)
	ld	s3, 520(sp)                     # 8-byte Folded Reload
	sw	t6, 0(s0)
.LBB6_109:                              #   in Loop: Header=BB6_105 Depth=1
	ld	t6, %lo(enc_picture)(a1)
	add	t6, t6, a2
	ld	t6, -1728(t6)
	add	t6, t6, t3
	ld	t6, 0(t6)
	add	t6, t6, s11
	ld	t6, 0(t6)
	ld	t5, 0(t5)
	add	t6, t6, a0
	srli	s0, t5, 48
	sh	s0, 6(t6)
	srli	s0, t5, 32
	sh	s0, 4(t6)
	srli	s0, t5, 16
	sh	s0, 2(t6)
	sh	t5, 0(t6)
	ld	t5, %lo(img)(a3)
	lw	t5, 24(t5)
	bne	t5, a6, .LBB6_113
# %bb.110:                              #   in Loop: Header=BB6_105 Depth=1
	lw	t5, %lo(si_frame_indicator)(a4)
	bnez	t5, .LBB6_113
# %bb.111:                              #   in Loop: Header=BB6_105 Depth=1
	lw	t5, %lo(sp2_frame_indicator)(a5)
	bnez	t5, .LBB6_113
# %bb.112:                              #   in Loop: Header=BB6_105 Depth=1
	ld	t5, %lo(lrec_uv)(a7)
	add	t5, t5, t3
	ld	t5, 0(t5)
	add	t5, t5, s11
	ld	t5, 0(t5)
	add	t5, t5, t0
	lw	t6, 12(s10)
	lw	s0, 8(s10)
	lw	s1, 4(s10)
	lw	s2, 0(s10)
	sw	t6, 12(t5)
	sw	s0, 8(t5)
	sw	s1, 4(t5)
	sw	s2, 0(t5)
	ld	s2, 536(sp)                     # 8-byte Folded Reload
.LBB6_113:                              #   in Loop: Header=BB6_105 Depth=1
	ld	t5, %lo(enc_picture)(a1)
	add	t5, t5, a2
	ld	t5, -1728(t5)
	add	t5, t5, t3
	ld	t5, 0(t5)
	add	t5, t5, ra
	ld	t5, 0(t5)
	ld	t4, 0(t4)
	add	t5, t5, a0
	srli	t6, t4, 48
	sh	t6, 6(t5)
	srli	t6, t4, 32
	sh	t6, 4(t5)
	srli	t6, t4, 16
	sh	t6, 2(t5)
	sh	t4, 0(t5)
	ld	t4, %lo(img)(a3)
	lw	t4, 24(t4)
	bne	t4, a6, .LBB6_117
# %bb.114:                              #   in Loop: Header=BB6_105 Depth=1
	lw	t4, %lo(si_frame_indicator)(a4)
	bnez	t4, .LBB6_117
# %bb.115:                              #   in Loop: Header=BB6_105 Depth=1
	lw	t4, %lo(sp2_frame_indicator)(a5)
	bnez	t4, .LBB6_117
# %bb.116:                              #   in Loop: Header=BB6_105 Depth=1
	ld	t4, %lo(lrec_uv)(a7)
	add	t4, t4, t3
	ld	t4, 0(t4)
	add	t4, t4, ra
	ld	t4, 0(t4)
	add	t4, t4, t0
	lw	t5, 12(s9)
	lw	t6, 8(s9)
	lw	s0, 4(s9)
	lw	s1, 0(s9)
	sw	t5, 12(t4)
	sw	t6, 8(t4)
	sw	s0, 4(t4)
	sw	s1, 0(t4)
.LBB6_117:                              #   in Loop: Header=BB6_105 Depth=1
	ld	t4, %lo(enc_picture)(a1)
	add	t4, t4, a2
	ld	t4, -1728(t4)
	add	t4, t4, t3
	ld	t4, 0(t4)
	add	t4, t4, s3
	ld	t4, 0(t4)
	ld	t2, 0(t2)
	add	t4, t4, a0
	srli	t5, t2, 48
	sh	t5, 6(t4)
	srli	t5, t2, 32
	sh	t5, 4(t4)
	srli	t5, t2, 16
	sh	t5, 2(t4)
	sh	t2, 0(t4)
	ld	t2, %lo(img)(a3)
	lw	t2, 24(t2)
	bne	t2, a6, .LBB6_104
# %bb.118:                              #   in Loop: Header=BB6_105 Depth=1
	lw	t2, %lo(si_frame_indicator)(a4)
	bnez	t2, .LBB6_104
# %bb.119:                              #   in Loop: Header=BB6_105 Depth=1
	lw	t2, %lo(sp2_frame_indicator)(a5)
	bnez	t2, .LBB6_104
# %bb.120:                              #   in Loop: Header=BB6_105 Depth=1
	ld	t2, %lo(lrec_uv)(a7)
	add	t2, t2, t3
	ld	t2, 0(t2)
	add	t2, t2, s3
	ld	t2, 0(t2)
	add	t2, t2, t0
	lw	t3, 12(s8)
	lw	t4, 8(s8)
	lw	t5, 4(s8)
	lw	t6, 0(s8)
	sw	t3, 12(t2)
	sw	t4, 8(t2)
	sw	t5, 4(t2)
	sw	t6, 0(t2)
	j	.LBB6_104
.LBB6_121:
	ld	t0, %lo(img)(s5)
	lui	a0, 22
	add	a0, t0, a0
	lw	a1, 460(a0)
	lui	a0, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(a0)
	lui	a2, 3
	addiw	a0, a2, 824
	add	s4, t0, a0
	beqz	a1, .LBB6_136
# %bb.122:
	sd	s4, 560(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(imgUV_org)
	ld	a1, %lo(imgUV_org)(a1)
	ld	a3, 0(a1)
	ld	a5, 8(a1)
	li	a1, 0
	li	a2, 0
	add	a3, a3, s10
	add	a4, a4, s10
	add	a5, a5, s10
	ld	a6, 448(sp)                     # 8-byte Folded Reload
	add	a6, t0, a6
	ld	a7, 328(sp)                     # 8-byte Folded Reload
	add	a7, a7, t0
	addi	a7, a7, 6
	slli	s0, s0, 9
	sd	s0, 568(sp)                     # 8-byte Folded Spill
	add	t0, t0, s0
	addi	t0, t0, 184
	slli	t1, s8, 1
	ld	a0, 472(sp)                     # 8-byte Folded Reload
	ld	s0, 392(sp)                     # 8-byte Folded Reload
	mv	s11, s3
	lui	s2, %hi(resTrans_G)
	addi	s2, s2, %lo(resTrans_G)
	mv	t2, s7
.LBB6_123:                              # =>This Inner Loop Header: Depth=1
	ld	t4, 0(a3)
	add	t3, t4, t1
	lhu	s1, 0(t3)
	add	t6, a6, a1
	lhu	s3, 0(t6)
	ld	t3, 0(a4)
	ld	t5, 0(a5)
	sub	s3, s1, s3
	add	s1, t3, t1
	add	s4, t5, t1
	lhu	s4, 0(s4)
	add	s7, a7, a1
	lhu	s5, -6(s7)
	lhu	s6, 0(s1)
	add	s1, t0, a1
	lhu	s8, 0(s1)
	sub	s4, s4, s5
	sub	s4, s4, s3
	add	s5, s11, a2
	sw	s4, 0(s5)
	srli	s4, s4, 1
	add	s3, s4, s3
	subw	s4, s6, s8
	subw	s4, s4, s3
	add	s6, t2, a2
	sw	s4, 0(s6)
	sraiw	s4, s4, 1
	add	s3, s4, s3
	add	s8, s2, a2
	sw	s3, 0(s8)
	add	s3, t4, a0
	lhu	s3, 0(s3)
	lhu	s4, 2(t6)
	add	s9, t5, a0
	lhu	s9, 0(s9)
	lhu	s10, -4(s7)
	sub	s3, s3, s4
	add	s4, t3, a0
	lhu	s4, 0(s4)
	sub	s9, s9, s10
	lhu	s10, 2(s1)
	sub	s9, s9, s3
	sw	s9, 4(s5)
	srli	s9, s9, 1
	add	s3, s9, s3
	subw	s4, s4, s10
	subw	s4, s4, s3
	sw	s4, 4(s6)
	sraiw	s4, s4, 1
	add	s3, s4, s3
	sw	s3, 4(s8)
	add	s3, t4, ra
	lhu	s3, 0(s3)
	lhu	s4, 4(t6)
	add	s9, t5, ra
	lhu	s9, 0(s9)
	lhu	s10, -2(s7)
	sub	s3, s3, s4
	add	s4, t3, ra
	lhu	s4, 0(s4)
	sub	s9, s9, s10
	lhu	s10, 4(s1)
	sub	s9, s9, s3
	sw	s9, 8(s5)
	srli	s9, s9, 1
	add	s3, s9, s3
	subw	s4, s4, s10
	subw	s4, s4, s3
	sw	s4, 8(s6)
	sraiw	s4, s4, 1
	add	t4, t4, s0
	lhu	t4, 0(t4)
	lhu	t6, 6(t6)
	add	t5, t5, s0
	lhu	t5, 0(t5)
	lhu	s7, 0(s7)
	add	s3, s4, s3
	sw	s3, 8(s8)
	sub	t4, t4, t6
	sub	t5, t5, s7
	add	t3, t3, s0
	lhu	t3, 0(t3)
	lhu	t6, 6(s1)
	sub	t5, t5, t4
	sw	t5, 12(s5)
	srli	t5, t5, 1
	add	t4, t5, t4
	subw	t3, t3, t6
	subw	t3, t3, t4
	sw	t3, 12(s6)
	sraiw	t3, t3, 1
	add	t3, t3, t4
	sw	t3, 12(s8)
	addi	a2, a2, 64
	addi	a3, a3, 8
	addi	a4, a4, 8
	addi	a5, a5, 8
	addi	a1, a1, 32
	li	t3, 256
	bne	a2, t3, .LBB6_123
# %bb.124:
	lui	a1, %hi(resTrans_G)
	lw	a2, %lo(resTrans_G)(a1)
	addi	a1, a1, %lo(resTrans_G)
	ld	a0, 560(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a0)
	lw	a2, 4(a1)
	sw	a2, 4(a0)
	lw	a2, 8(a1)
	sw	a2, 8(a0)
	lw	a2, 12(a1)
	sw	a2, 12(a0)
	lw	a2, 64(a1)
	sw	a2, 64(a0)
	lw	a2, 68(a1)
	sw	a2, 68(a0)
	lw	a2, 72(a1)
	sw	a2, 72(a0)
	lw	a2, 76(a1)
	sw	a2, 76(a0)
	lw	a2, 128(a1)
	sw	a2, 128(a0)
	lw	a2, 132(a1)
	sw	a2, 132(a0)
	lw	a2, 136(a1)
	sw	a2, 136(a0)
	lw	a2, 140(a1)
	sw	a2, 140(a0)
	lw	a2, 192(a1)
	sw	a2, 192(a0)
	lw	a2, 196(a1)
	sw	a2, 196(a0)
	lw	a2, 200(a1)
	sw	a2, 200(a0)
	lw	a1, 204(a1)
	sw	a1, 204(a0)
	addi	a2, sp, 956
	li	a3, 1
	ld	a0, 440(sp)                     # 8-byte Folded Reload
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	call	dct_luma
	lui	s5, %hi(img)
	ld	a1, %lo(img)(s5)
	lui	a2, 3
	addiw	s4, a2, 824
	add	a1, a1, s4
	lw	a2, 0(a1)
	lui	a3, %hi(resTrans_B)
	lw	a4, %lo(resTrans_B)(a3)
	lui	a5, %hi(rec_resG)
	sw	a2, %lo(rec_resG)(a5)
	addi	a2, a3, %lo(resTrans_B)
	sw	a4, 0(a1)
	lw	a3, 4(a1)
	lw	a4, 4(a2)
	addi	s1, a5, %lo(rec_resG)
	sw	a3, 4(s1)
	sw	a4, 4(a1)
	lw	a3, 8(a1)
	lw	a4, 8(a2)
	sw	a3, 8(s1)
	sw	a4, 8(a1)
	lw	a3, 12(a1)
	lw	a4, 12(a2)
	sw	a3, 12(s1)
	sw	a4, 12(a1)
	lw	a3, 64(a1)
	lw	a4, 64(a2)
	sw	a3, 64(s1)
	sw	a4, 64(a1)
	lw	a3, 68(a1)
	lw	a4, 68(a2)
	sw	a3, 68(s1)
	sw	a4, 68(a1)
	lw	a3, 72(a1)
	lw	a4, 72(a2)
	sw	a3, 72(s1)
	sw	a4, 72(a1)
	lw	a3, 76(a1)
	lw	a4, 76(a2)
	sw	a3, 76(s1)
	sw	a4, 76(a1)
	lw	a3, 128(a1)
	lw	a4, 128(a2)
	sw	a3, 128(s1)
	sw	a4, 128(a1)
	lw	a3, 132(a1)
	lw	a4, 132(a2)
	sw	a3, 132(s1)
	sw	a4, 132(a1)
	lw	a3, 136(a1)
	lw	a4, 136(a2)
	sw	a3, 136(s1)
	sw	a4, 136(a1)
	lw	a3, 140(a1)
	lw	a4, 140(a2)
	sw	a3, 140(s1)
	sw	a4, 140(a1)
	lw	a3, 192(a1)
	lw	a4, 192(a2)
	sw	a3, 192(s1)
	sw	a4, 192(a1)
	lw	a3, 196(a1)
	lw	a4, 196(a2)
	sw	a3, 196(s1)
	sw	a4, 196(a1)
	lw	a3, 200(a1)
	lw	a4, 200(a2)
	sw	a3, 200(s1)
	sw	a4, 200(a1)
	lw	a3, 204(a1)
	lw	a2, 204(a2)
	sd	a0, 360(sp)                     # 8-byte Folded Spill
	sw	a3, 204(s1)
	sw	a2, 204(a1)
	li	a0, 0
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	ld	s6, 488(sp)                     # 8-byte Folded Reload
	mv	a2, s6
	call	dct_chroma4x4
	ld	s8, 304(sp)                     # 8-byte Folded Reload
	lw	a1, 0(s8)
	ld	a2, %lo(img)(s5)
	ld	s9, 296(sp)                     # 8-byte Folded Reload
	sw	a0, 0(s9)
	ld	s7, 312(sp)                     # 8-byte Folded Reload
	sw	a1, 0(s7)
	add	a0, a2, s4
	lw	a1, 0(a0)
	lui	a2, %hi(resTrans_R)
	lw	a3, %lo(resTrans_R)(a2)
	lui	a4, %hi(rec_resB)
	sw	a1, %lo(rec_resB)(a4)
	addi	a1, a2, %lo(resTrans_R)
	sw	a3, 0(a0)
	lw	a2, 4(a0)
	lw	a3, 4(a1)
	addi	s3, a4, %lo(rec_resB)
	sw	a2, 4(s3)
	sw	a3, 4(a0)
	lw	a2, 8(a0)
	lw	a3, 8(a1)
	sw	a2, 8(s3)
	sw	a3, 8(a0)
	lw	a2, 12(a0)
	lw	a3, 12(a1)
	sw	a2, 12(s3)
	sw	a3, 12(a0)
	lw	a2, 64(a0)
	lw	a3, 64(a1)
	sw	a2, 64(s3)
	sw	a3, 64(a0)
	lw	a2, 68(a0)
	lw	a3, 68(a1)
	sw	a2, 68(s3)
	sw	a3, 68(a0)
	lw	a2, 72(a0)
	lw	a3, 72(a1)
	sw	a2, 72(s3)
	sw	a3, 72(a0)
	lw	a2, 76(a0)
	lw	a3, 76(a1)
	sw	a2, 76(s3)
	sw	a3, 76(a0)
	lw	a2, 128(a0)
	lw	a3, 128(a1)
	sw	a2, 128(s3)
	sw	a3, 128(a0)
	lw	a2, 132(a0)
	lw	a3, 132(a1)
	sw	a2, 132(s3)
	sw	a3, 132(a0)
	lw	a2, 136(a0)
	lw	a3, 136(a1)
	sw	a2, 136(s3)
	sw	a3, 136(a0)
	lw	a2, 140(a0)
	lw	a3, 140(a1)
	sw	a2, 140(s3)
	sw	a3, 140(a0)
	lw	a2, 192(a0)
	lw	a3, 192(a1)
	sw	a2, 192(s3)
	sw	a3, 192(a0)
	lw	a2, 196(a0)
	lw	a3, 196(a1)
	sw	a2, 196(s3)
	sw	a3, 196(a0)
	lw	a2, 200(a0)
	lw	a3, 200(a1)
	sw	a2, 200(s3)
	sw	a3, 200(a0)
	lw	a2, 204(a0)
	lw	a1, 204(a1)
	sw	a2, 204(s3)
	sw	a1, 204(a0)
	li	a0, 1
	ld	a1, 288(sp)                     # 8-byte Folded Reload
	mv	a2, s6
	call	dct_chroma4x4
	lw	a1, 64(s8)
	ld	t1, %lo(img)(s5)
	sw	a0, 64(s9)
	sw	a1, 64(s7)
	add	s4, t1, s4
	lw	a0, 0(s4)
	lui	a1, %hi(rec_resR)
	sw	a0, %lo(rec_resR)(a1)
	lw	a2, 4(s4)
	addi	a0, a1, %lo(rec_resR)
	sw	a2, 4(a0)
	lw	a1, 8(s4)
	sw	a1, 8(a0)
	lw	a1, 12(s4)
	sw	a1, 12(a0)
	lw	a1, 64(s4)
	sw	a1, 64(a0)
	lw	a1, 68(s4)
	sw	a1, 68(a0)
	lw	a1, 72(s4)
	sw	a1, 72(a0)
	lw	a1, 76(s4)
	sw	a1, 76(a0)
	lw	a1, 128(s4)
	sw	a1, 128(a0)
	lw	a1, 132(s4)
	sw	a1, 132(a0)
	lw	a1, 136(s4)
	sw	a1, 136(a0)
	lw	a1, 140(s4)
	sw	a1, 140(a0)
	lw	a1, 192(s4)
	sw	a1, 192(a0)
	lw	a1, 196(s4)
	sw	a1, 196(a0)
	lw	a2, 200(s4)
	li	a1, 0
	lui	a3, 22
	addiw	a3, a3, 420
	sw	a2, 200(a0)
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	lw	a4, 204(s4)
	lui	a5, 2
	addiw	a5, a5, -1768
	add	a5, a2, a5
	ld	a6, 40(a5)
	add	a7, t1, a3
	sw	a4, 204(a0)
	lw	a2, 4(a7)
	ld	a3, 0(a6)
	lw	a4, 0(a7)
	ld	s0, 568(sp)                     # 8-byte Folded Reload
	add	s0, t1, s0
	ld	a5, 0(a5)
	ld	a6, 8(a6)
	addi	a7, s0, 184
	ld	t0, 328(sp)                     # 8-byte Folded Reload
	add	t0, t1, t0
	ld	t2, 448(sp)                     # 8-byte Folded Reload
	add	t1, t1, t2
	li	t2, 8
	li	t3, 4
	ld	s2, 272(sp)                     # 8-byte Folded Reload
	j	.LBB6_126
.LBB6_125:                              #   in Loop: Header=BB6_126 Depth=1
	addi	a1, a1, 1
	addi	a7, a7, 32
	addi	t0, t0, 32
	addi	t1, t1, 32
	addi	a0, a0, 64
	addi	s3, s3, 64
	addi	s1, s1, 64
	beq	a1, t3, .LBB6_134
.LBB6_126:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_128 Depth 2
	ld	t4, 576(sp)                     # 8-byte Folded Reload
	add	t4, a1, t4
	slli	t4, t4, 3
	add	t5, a3, t4
	add	t6, a5, t4
	add	t4, a6, t4
	ld	s0, 0(t4)
	ld	t6, 0(t6)
	ld	s4, 0(t5)
	li	t4, 0
	add	t5, s0, s2
	add	t6, t6, s2
	add	s0, s4, s2
	mv	s4, s1
	mv	s5, s3
	mv	s6, a0
	j	.LBB6_128
.LBB6_127:                              #   in Loop: Header=BB6_128 Depth=2
	add	s8, t5, t4
	sh	s7, 0(s8)
	addi	t4, t4, 2
	addi	s6, s6, 4
	addi	s5, s5, 4
	addi	s4, s4, 4
	beq	t4, t2, .LBB6_125
.LBB6_128:                              #   Parent Loop BB6_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	s9, 0(s5)
	lw	s8, 0(s4)
	srai	s10, s9, 1
	lw	s7, 0(s6)
	add	s11, t1, t4
	lhu	s11, 0(s11)
	subw	s10, s8, s10
	srli	s8, s7, 1
	subw	s8, s10, s8
	addw	s11, s8, s11
	sgtz	ra, s11
	neg	ra, ra
	and	ra, ra, s11
	mv	s11, a2
	blt	a2, ra, .LBB6_130
# %bb.129:                              #   in Loop: Header=BB6_128 Depth=2
	mv	s11, ra
.LBB6_130:                              #   in Loop: Header=BB6_128 Depth=2
	add	ra, s0, t4
	sh	s11, 0(ra)
	add	s11, a7, t4
	lhu	s11, 0(s11)
	add	s9, s10, s9
	addw	s9, s9, s11
	sgtz	s10, s9
	neg	s10, s10
	and	s10, s10, s9
	mv	s9, a4
	blt	a4, s10, .LBB6_132
# %bb.131:                              #   in Loop: Header=BB6_128 Depth=2
	mv	s9, s10
.LBB6_132:                              #   in Loop: Header=BB6_128 Depth=2
	add	s10, t6, t4
	sh	s9, 0(s10)
	add	s9, t0, t4
	lhu	s9, 0(s9)
	add	s7, s8, s7
	addw	s7, s7, s9
	sgtz	s8, s7
	neg	s8, s8
	and	s8, s8, s7
	mv	s7, a2
	blt	a2, s8, .LBB6_127
# %bb.133:                              #   in Loop: Header=BB6_128 Depth=2
	mv	s7, s8
	j	.LBB6_127
.LBB6_134:
	ld	a0, 360(sp)                     # 8-byte Folded Reload
.LBB6_135:
	ld	ra, 1080(sp)                    # 8-byte Folded Reload
	ld	s0, 1072(sp)                    # 8-byte Folded Reload
	ld	s1, 1064(sp)                    # 8-byte Folded Reload
	ld	s2, 1056(sp)                    # 8-byte Folded Reload
	ld	s3, 1048(sp)                    # 8-byte Folded Reload
	ld	s4, 1040(sp)                    # 8-byte Folded Reload
	ld	s5, 1032(sp)                    # 8-byte Folded Reload
	ld	s6, 1024(sp)                    # 8-byte Folded Reload
	ld	s7, 1016(sp)                    # 8-byte Folded Reload
	ld	s8, 1008(sp)                    # 8-byte Folded Reload
	ld	s9, 1000(sp)                    # 8-byte Folded Reload
	ld	s10, 992(sp)                    # 8-byte Folded Reload
	ld	s11, 984(sp)                    # 8-byte Folded Reload
	fld	fs0, 976(sp)                    # 8-byte Folded Reload
	fld	fs1, 968(sp)                    # 8-byte Folded Reload
	fld	fs2, 960(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 1088
	ret
.LBB6_136:
	slli	a1, s0, 9
	add	a1, t0, a1
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	add	a3, t0, a3
	add	a5, a4, s10
	ld	t5, 0(a5)
	lhu	a6, 184(a1)
	addiw	a4, a2, 312
	add	t4, a3, a4
	ld	a0, 440(sp)                     # 8-byte Folded Reload
	slli	a7, a0, 1
	add	a4, t4, a7
	sh	a6, 0(a4)
	slli	a4, s8, 1
	add	t0, t5, a4
	lhu	t2, 186(a1)
	lhu	t3, 0(t0)
	addi	t0, a7, 2
	add	t1, t4, t0
	sh	t2, 0(t1)
	addi	t1, a4, 2
	add	t6, t5, t1
	lhu	t6, 0(t6)
	subw	a6, t3, a6
	sw	a6, 0(s4)
	lhu	s0, 188(a1)
	subw	t6, t6, t2
	addi	t2, a7, 4
	add	a6, t4, t2
	sh	s0, 0(a6)
	addi	a6, a4, 4
	add	t3, t5, a6
	lhu	s1, 190(a1)
	lhu	s2, 0(t3)
	addi	t3, a7, 6
	add	t4, t4, t3
	sh	s1, 0(t4)
	addi	t4, a4, 6
	add	t5, t5, t4
	lhu	t5, 0(t5)
	sw	t6, 4(s4)
	subw	t6, s2, s0
	sw	t6, 8(s4)
	subw	t5, t5, s1
	sw	t5, 12(s4)
	ld	t5, 8(a5)
	lhu	t6, 216(a1)
	addiw	s0, a2, 344
	add	s0, a3, s0
	add	s1, s0, a7
	sh	t6, 0(s1)
	lhu	s1, 218(a1)
	add	s2, t5, a4
	lhu	s2, 0(s2)
	add	s3, s0, t0
	sh	s1, 0(s3)
	add	s3, t5, t1
	lhu	s3, 0(s3)
	subw	t6, s2, t6
	lhu	s2, 220(a1)
	sw	t6, 64(s4)
	subw	t6, s3, s1
	add	s1, s0, t2
	sh	s2, 0(s1)
	lhu	s1, 222(a1)
	add	s3, t5, a6
	lhu	s3, 0(s3)
	add	s0, s0, t3
	sh	s1, 0(s0)
	add	t5, t5, t4
	lhu	t5, 0(t5)
	sw	t6, 68(s4)
	subw	t6, s3, s2
	sw	t6, 72(s4)
	subw	t5, t5, s1
	sw	t5, 76(s4)
	ld	t5, 16(a5)
	lhu	t6, 248(a1)
	addiw	s0, a2, 376
	add	s0, a3, s0
	add	s1, s0, a7
	sh	t6, 0(s1)
	lhu	s1, 250(a1)
	add	s2, t5, a4
	lhu	s2, 0(s2)
	add	s3, s0, t0
	sh	s1, 0(s3)
	add	s3, t5, t1
	lhu	s3, 0(s3)
	subw	t6, s2, t6
	lhu	s2, 252(a1)
	sw	t6, 128(s4)
	subw	t6, s3, s1
	add	s1, s0, t2
	sh	s2, 0(s1)
	lhu	s1, 254(a1)
	add	s3, t5, a6
	lhu	s3, 0(s3)
	add	s0, s0, t3
	sh	s1, 0(s0)
	add	t5, t5, t4
	lhu	t5, 0(t5)
	sw	t6, 132(s4)
	subw	t6, s3, s2
	sw	t6, 136(s4)
	subw	t5, t5, s1
	sw	t5, 140(s4)
	ld	a5, 24(a5)
	lhu	t5, 280(a1)
	addiw	a2, a2, 408
	add	a2, a3, a2
	add	a7, a2, a7
	sh	t5, 0(a7)
	lhu	a3, 282(a1)
	add	a4, a5, a4
	lhu	a4, 0(a4)
	add	t0, a2, t0
	sh	a3, 0(t0)
	add	t1, a5, t1
	lhu	a7, 0(t1)
	subw	a4, a4, t5
	lhu	t0, 284(a1)
	sw	a4, 192(s4)
	subw	a3, a7, a3
	add	t2, a2, t2
	sh	t0, 0(t2)
	lhu	a1, 286(a1)
	add	a6, a5, a6
	lhu	a4, 0(a6)
	add	a2, a2, t3
	sh	a1, 0(a2)
	add	a5, a5, t4
	lhu	a2, 0(a5)
	sw	a3, 196(s4)
	subw	a3, a4, t0
	sw	a3, 200(s4)
	subw	a2, a2, a1
	sw	a2, 204(s4)
	addi	a2, sp, 956
	li	a3, 1
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	call	dct_luma
	j	.LBB6_135
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
	fsd	fs0, 8(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(.LCPI8_0)
	fld	fa5, %lo(.LCPI8_0)(a1)
	lui	a1, %hi(.LCPI8_1)
	fld	fa4, %lo(.LCPI8_1)(a1)
	mv	s0, a0
	fmv.d	fs0, fa0
	li	s2, 0
	li	s1, 0
	sw	zero, 0(a0)
	fmadd.d	fa5, fa0, fa4, fa5
	fcvt.w.d	s6, fa5, rdn
	li	s7, 1
	li	s8, 4
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	addi	a2, sp, 4
	mv	a0, s2
	li	a1, 0
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	a1, 4(sp)
	mv	s3, a0
	add	s9, a1, s6
	li	a1, 1
	addi	a2, sp, 4
	mv	a0, s2
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	s10, 4(sp)
	mv	s4, a0
	li	a1, 2
	addi	a2, sp, 4
	mv	a0, s2
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	lw	a1, 4(sp)
	mv	s5, a0
	add	a1, s10, a1
	add	s9, s9, a1
	li	a1, 3
	addi	a2, sp, 4
	mv	a0, s2
	fmv.d	fa0, fs0
	call	Mode_Decision_for_4x4IntraBlocks
	or	a0, a0, s5
	or	a1, s4, s3
	or	a0, a0, a1
	seqz	a0, a0
	lw	a1, 4(sp)
	sllw	a2, s7, s2
	lw	a3, 0(s0)
	addiw	a0, a0, -1
	and	a0, a0, a2
	or	s1, a0, s1
	add	a1, a1, a3
	add	a1, s9, a1
	addiw	s2, s2, 1
	sw	a1, 0(s0)
	bne	s2, s8, .LBB8_1
# %bb.2:
	mv	a0, s1
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
	fld	fs0, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
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
	mv	s8, a6
	mv	s6, a5
	mv	s3, a4
	mv	s7, a3
	mv	s11, a2
	fmv.d	fs0, fa0
	mv	s1, a1
	mv	s9, a0
	sw	zero, 188(sp)
	sw	zero, 180(sp)
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	slli	a1, a2, 3
	andi	a2, a1, 8
	slliw	s0, s11, 2
	lw	a0, 24(a0)
	andi	a1, s0, -8
	sd	a2, 144(sp)                     # 8-byte Folded Spill
	srli	s4, a2, 2
	sd	a1, 152(sp)                     # 8-byte Folded Spill
	srai	s5, a1, 2
	xori	a0, a0, 1
	or	s10, a3, a0
	mv	a0, a3
	mv	a1, a4
	call	B8Mode2Value
	ld	a6, %lo(img)(s2)
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
	add	s2, a4, a2
	lw	a2, 0(s2)
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	ld	a1, 0(a1)
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 3
	lui	a1, %hi(assignSE2partition)
	addi	a1, a1, %lo(assignSE2partition)
	add	a1, a1, a3
	ld	a1, 0(a1)
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	sh	zero, 476(s2)
	sd	s6, 120(sp)                     # 8-byte Folded Spill
	sd	s10, 88(sp)                     # 8-byte Folded Spill
	sd	s5, 80(sp)                      # 8-byte Folded Spill
	bnez	s10, .LBB9_3
# %bb.1:
	lw	a2, 148(a6)
	lui	a1, %hi(direct_pdir)
	ld	a1, %lo(direct_pdir)(a1)
	addw	a5, a2, s5
	slli	a5, a5, 3
	lw	a2, 144(a6)
	add	a1, a1, a5
	ld	a3, 0(a1)
	addw	a1, a2, s4
	slli	a2, a1, 1
	add	a2, a3, a2
	lh	a3, 0(a2)
	bltz	a3, .LBB9_31
# %bb.2:
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	sd	a6, 64(sp)                      # 8-byte Folded Spill
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
	mv	a2, s11
	li	a4, 0
	li	a5, 0
	j	.LBB9_4
.LBB9_3:
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	sd	a6, 64(sp)                      # 8-byte Folded Spill
	andi	a0, s3, -3
	snez	a0, a0
	addi	a0, a0, -1
	and	a4, a0, s7
	addi	a0, s3, -1
	slli	a0, a0, 48
	srli	a0, a0, 48
	sltiu	a0, a0, 2
	neg	a0, a0
	and	a5, a0, s7
	addi	a0, sp, 180
	mv	a1, s1
	mv	a2, s11
	mv	a3, s3
	mv	a6, s6
	mv	a7, s8
.LBB9_4:
	call	LumaResidualCoding8x8
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sw	a0, 0(s9)
	lui	a0, 22
	add	a0, a1, a0
	lw	a0, 460(a0)
	ori	ra, s0, 7
	sd	s11, 112(sp)                    # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 16(sp)                      # 8-byte Folded Spill
	beqz	a0, .LBB9_18
# %bb.5:
	sd	ra, 0(sp)                       # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s9, 32(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	li	a2, 0
	li	s3, 0
	li	s10, 0
	li	s9, 0
	addiw	a0, s11, 4
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	addiw	s11, s11, 8
	sd	s11, 128(sp)                    # 8-byte Folded Spill
	lui	a0, 3
	addiw	a0, a0, 824
	sd	a0, 168(sp)                     # 8-byte Folded Spill
.LBB9_6:                                # =>This Inner Loop Header: Depth=1
	sd	a2, 160(sp)                     # 8-byte Folded Spill
	andi	a0, a2, 4
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	or	s5, a0, a2
	andi	a0, s3, 4
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	or	s11, a0, a2
	slli	s11, s11, 6
	lui	a3, %hi(resTrans_B)
	addi	a3, a3, %lo(resTrans_B)
	add	a0, a3, s11
	slli	s5, s5, 2
	add	a2, a0, s5
	lw	a2, 0(a2)
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	add	a1, a1, a4
	mv	s4, a4
	sw	a2, 0(a1)
	addi	s2, s5, 4
	add	a2, a0, s2
	lw	a2, 0(a2)
	sw	a2, 4(a1)
	addi	s8, s5, 8
	add	a2, a0, s8
	lw	a2, 0(a2)
	sw	a2, 8(a1)
	addi	s7, s5, 12
	add	a0, a0, s7
	lw	a0, 0(a0)
	sw	a0, 12(a1)
	addi	s1, s11, 64
	add	a0, a3, s1
	add	a2, a0, s5
	lw	a2, 0(a2)
	sw	a2, 64(a1)
	add	a2, a0, s2
	lw	a2, 0(a2)
	sw	a2, 68(a1)
	add	a2, a0, s8
	lw	a2, 0(a2)
	sw	a2, 72(a1)
	add	a0, a0, s7
	lw	a0, 0(a0)
	sw	a0, 76(a1)
	addi	s6, s11, 128
	add	a0, a3, s6
	add	a2, a0, s5
	lw	a2, 0(a2)
	sw	a2, 128(a1)
	add	a2, a0, s2
	lw	a2, 0(a2)
	sw	a2, 132(a1)
	add	a2, a0, s8
	lw	a2, 0(a2)
	sw	a2, 136(a1)
	add	a0, a0, s7
	lw	a0, 0(a0)
	sw	a0, 140(a1)
	addi	s0, s11, 192
	add	a0, a3, s0
	add	a2, a0, s5
	lw	a2, 0(a2)
	sw	a2, 192(a1)
	add	a2, a0, s2
	lw	a2, 0(a2)
	sw	a2, 196(a1)
	add	a2, a0, s8
	lw	a2, 0(a2)
	sw	a2, 200(a1)
	add	a0, a0, s7
	lw	a0, 0(a0)
	sw	a0, 204(a1)
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	mv	a1, s10
	li	a2, 0
	call	RDCost_for_4x4Blocks_Chroma
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	a1, a1, s4
	lw	a2, 0(a1)
	lui	t0, %hi(resTrans_R)
	addi	t0, t0, %lo(resTrans_R)
	add	a3, t0, s11
	add	a4, a3, s5
	lw	a4, 0(a4)
	lui	a7, %hi(rec_resB)
	addi	a7, a7, %lo(rec_resB)
	add	a5, a7, s11
	add	a6, a5, s5
	sw	a2, 0(a6)
	sw	a4, 0(a1)
	lw	a2, 4(a1)
	add	a4, a3, s2
	lw	a4, 0(a4)
	add	a6, a5, s2
	sw	a2, 0(a6)
	sw	a4, 4(a1)
	lw	a2, 8(a1)
	add	a4, a3, s8
	lw	a4, 0(a4)
	add	a6, a5, s8
	sw	a2, 0(a6)
	sw	a4, 8(a1)
	lw	a2, 12(a1)
	add	a3, a3, s7
	lw	a3, 0(a3)
	add	a5, a5, s7
	sw	a2, 0(a5)
	sw	a3, 12(a1)
	lw	a2, 64(a1)
	add	a3, t0, s1
	add	a4, a3, s5
	lw	a4, 0(a4)
	add	a5, a7, s1
	add	a6, a5, s5
	sw	a2, 0(a6)
	sw	a4, 64(a1)
	lw	a2, 68(a1)
	add	a4, a3, s2
	lw	a4, 0(a4)
	add	a6, a5, s2
	sw	a2, 0(a6)
	sw	a4, 68(a1)
	lw	a2, 72(a1)
	add	a4, a3, s8
	lw	a4, 0(a4)
	add	a6, a5, s8
	sw	a2, 0(a6)
	sw	a4, 72(a1)
	lw	a2, 76(a1)
	add	a3, a3, s7
	lw	a3, 0(a3)
	add	a5, a5, s7
	sw	a2, 0(a5)
	sw	a3, 76(a1)
	lw	a2, 128(a1)
	add	a3, t0, s6
	add	a4, a3, s5
	lw	a4, 0(a4)
	add	a5, a7, s6
	add	a6, a5, s5
	sw	a2, 0(a6)
	sw	a4, 128(a1)
	lw	a2, 132(a1)
	add	a4, a3, s2
	lw	a4, 0(a4)
	add	a6, a5, s2
	sw	a2, 0(a6)
	sw	a4, 132(a1)
	lw	a2, 136(a1)
	add	a4, a3, s8
	lw	a4, 0(a4)
	add	a6, a5, s8
	sw	a2, 0(a6)
	sw	a4, 136(a1)
	lw	a2, 140(a1)
	add	a3, a3, s7
	lw	a3, 0(a3)
	add	a5, a5, s7
	sw	a2, 0(a5)
	sw	a3, 140(a1)
	lw	a2, 192(a1)
	add	a3, t0, s0
	add	a4, a3, s5
	lw	a4, 0(a4)
	add	a5, a7, s0
	add	a6, a5, s5
	sw	a2, 0(a6)
	sw	a4, 192(a1)
	lw	a2, 196(a1)
	add	a4, a3, s2
	lw	a4, 0(a4)
	add	a6, a5, s2
	sw	a2, 0(a6)
	sw	a4, 196(a1)
	lw	a2, 200(a1)
	add	a4, a3, s8
	lw	a4, 0(a4)
	add	a6, a5, s8
	sw	a2, 0(a6)
	sw	a4, 200(a1)
	lw	a2, 204(a1)
	add	a3, a3, s7
	lw	a3, 0(a3)
	mv	s4, s9
	mv	s9, a0
	add	a5, a5, s7
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
	add	s11, a5, s11
	add	a4, s11, s5
	sw	a3, 0(a4)
	lw	a3, 4(a2)
	add	a4, s11, s2
	sw	a3, 0(a4)
	lw	a3, 8(a2)
	add	a4, s11, s8
	sw	a3, 0(a4)
	lw	a3, 12(a2)
	add	s11, s11, s7
	sw	a3, 0(s11)
	lw	a3, 64(a2)
	add	s1, a5, s1
	add	a4, s1, s5
	sw	a3, 0(a4)
	lw	a3, 68(a2)
	add	a4, s1, s2
	sw	a3, 0(a4)
	lw	a3, 72(a2)
	add	a4, s1, s8
	sw	a3, 0(a4)
	lw	a3, 76(a2)
	add	s1, s1, s7
	sw	a3, 0(s1)
	lw	a3, 128(a2)
	add	s6, a5, s6
	add	a4, s6, s5
	sw	a3, 0(a4)
	lw	a3, 132(a2)
	add	a4, s6, s2
	sw	a3, 0(a4)
	lw	a3, 136(a2)
	add	a4, s6, s8
	sw	a3, 0(a4)
	lw	a3, 140(a2)
	add	s6, s6, s7
	sw	a3, 0(s6)
	lw	a3, 192(a2)
	add	s0, a5, s0
	add	s5, s0, s5
	sw	a3, 0(s5)
	lw	a3, 196(a2)
	add	s2, s0, s2
	sw	a3, 0(s2)
	lw	a3, 200(a2)
	add	s8, s0, s8
	sw	a3, 0(s8)
	lw	a2, 204(a2)
	add	s0, s0, s7
	sw	a2, 0(s0)
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	add	s9, s9, s4
	add	s9, s9, a0
	addiw	s10, s10, 1
	addi	s3, s3, 2
	addi	a2, a2, 4
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
	lw	t1, 152(a1)
	lw	a4, 0(a4)
	ld	a5, 0(a5)
	ld	a6, 8(a6)
	ld	t6, 152(sp)                     # 8-byte Folded Reload
	slli	a7, t6, 6
	ld	s11, 112(sp)                    # 8-byte Folded Reload
	andi	t2, s11, 1
	slli	t0, t2, 5
	or	t3, a7, t0
	lui	a7, %hi(rec_resG)
	addi	a7, a7, %lo(rec_resG)
	add	a7, a7, t3
	lui	t0, %hi(mprRGB)
	addi	t0, t0, %lo(mprRGB)
	add	t0, t0, t3
	slli	t2, t2, 4
	slli	t1, t1, 1
	add	t1, t2, t1
	lui	t2, %hi(rec_resR)
	addi	t2, t2, %lo(rec_resR)
	add	t2, t2, t3
	lui	t4, %hi(rec_resB)
	addi	t4, t4, %lo(rec_resB)
	add	t3, t4, t3
	li	t4, 32
	mv	s10, s9
	ld	ra, 0(sp)                       # 8-byte Folded Reload
	j	.LBB9_9
.LBB9_8:                                #   in Loop: Header=BB9_9 Depth=1
	addi	t6, t5, 1
	addi	a7, a7, 64
	addi	t0, t0, 64
	addi	t2, t2, 64
	addi	t3, t3, 64
	bge	t5, ra, .LBB9_17
.LBB9_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_11 Depth 2
	mv	t5, t6
	add	t6, t6, a3
	slli	t6, t6, 3
	add	s0, a2, t6
	add	s1, a5, t6
	add	t6, a6, t6
	ld	s2, 0(t6)
	ld	s1, 0(s1)
	ld	s3, 0(s0)
	li	t6, 0
	add	s0, s2, t1
	add	s1, s1, t1
	add	s2, s3, t1
	j	.LBB9_11
.LBB9_10:                               #   in Loop: Header=BB9_11 Depth=2
	sh	s4, 0(s0)
	addi	t6, t6, 4
	addi	s0, s0, 2
	addi	s1, s1, 2
	addi	s2, s2, 2
	beq	t6, t4, .LBB9_8
.LBB9_11:                               #   Parent Loop BB9_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s3, t3, t6
	lw	s6, 0(s3)
	add	s3, a7, t6
	lw	s5, 0(s3)
	srli	s7, s6, 1
	add	s3, t2, t6
	lw	s3, 0(s3)
	add	s4, t0, t6
	lw	s8, 1024(s4)
	subw	s7, s5, s7
	srli	s5, s3, 1
	subw	s5, s7, s5
	addw	s8, s8, s5
	sgtz	s9, s8
	neg	s9, s9
	and	s9, s9, s8
	mv	s8, a0
	blt	a0, s9, .LBB9_13
# %bb.12:                               #   in Loop: Header=BB9_11 Depth=2
	mv	s8, s9
.LBB9_13:                               #   in Loop: Header=BB9_11 Depth=2
	lw	s9, 0(s4)
	add	s6, s7, s6
	addw	s6, s6, s9
	sgtz	s7, s6
	neg	s7, s7
	and	s7, s7, s6
	sh	s8, 0(s2)
	mv	s6, a4
	blt	a4, s7, .LBB9_15
# %bb.14:                               #   in Loop: Header=BB9_11 Depth=2
	mv	s6, s7
.LBB9_15:                               #   in Loop: Header=BB9_11 Depth=2
	addi	s4, s4, 2047
	lw	s4, 1(s4)
	add	s3, s5, s3
	addw	s3, s3, s4
	sgtz	s4, s3
	neg	s4, s4
	and	s3, s4, s3
	sh	s6, 0(s1)
	mv	s4, a0
	blt	a0, s3, .LBB9_10
# %bb.16:                               #   in Loop: Header=BB9_11 Depth=2
	mv	s4, s3
	j	.LBB9_10
.LBB9_17:
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	ld	s9, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	j	.LBB9_19
.LBB9_18:
	li	s10, 0
.LBB9_19:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a2, a0, 2047
	lw	a2, 1089(a2)
	li	a3, 3
	bne	a2, a3, .LBB9_23
# %bb.20:
	lw	a2, 24(a1)
	li	s0, 1
	beq	a2, s0, .LBB9_22
# %bb.21:
	li	a1, -1
	mv	a0, s11
	mv	s1, ra
	call	compute_residue_b8block
	mv	ra, s1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a2, 1089(a1)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	li	a3, 3
	bne	a2, a3, .LBB9_23
.LBB9_22:
	lw	a2, 24(a1)
	bne	a2, s0, .LBB9_32
.LBB9_23:
	mv	s8, s10
	mv	s10, s2
	lw	a2, 152(a1)
	lui	a3, 22
	addiw	a4, a3, -928
	add	a4, a1, a4
	ld	a3, 144(sp)                     # 8-byte Folded Reload
	addw	t1, a2, a3
	lui	a5, %hi(imgY_org)
	lui	a2, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a2)
	lui	a2, 2
	addiw	a6, a2, -1768
	lw	a2, 1388(a4)
	add	a3, a3, a6
	addiw	t2, t1, 7
	lui	t0, %hi(imgUV_org)
	blt	t1, t2, .LBB9_25
# %bb.24:
	mv	t2, t1
.LBB9_25:
	li	s3, 0
	ld	a4, 0(a4)
	ld	a5, %lo(imgY_org)(a5)
	lw	a6, 172(a1)
	ld	a7, 0(a3)
	lw	a1, 156(a1)
	ld	t0, %lo(imgUV_org)(t0)
	slli	t1, t1, 1
	slli	t2, t2, 1
	addi	t2, t2, 2
	ld	t4, 152(sp)                     # 8-byte Folded Reload
	j	.LBB9_27
.LBB9_26:                               #   in Loop: Header=BB9_27 Depth=1
	addi	t4, t3, 1
	bge	t3, ra, .LBB9_41
.LBB9_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_29 Depth 2
	mv	t3, t4
	add	t4, t4, a6
	slli	t4, t4, 3
	add	t5, a5, t4
	ld	t5, 0(t5)
	add	t6, t3, a1
	slli	t6, t6, 3
	add	s0, a7, t6
	ld	s0, 0(s0)
	mv	s1, t1
	j	.LBB9_29
.LBB9_28:                               #   in Loop: Header=BB9_29 Depth=2
	addi	s1, s1, 2
	beq	s1, t2, .LBB9_26
.LBB9_29:                               #   Parent Loop BB9_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s2, t5, s1
	lhu	s2, 0(s2)
	add	s4, s0, s1
	lhu	s4, 0(s4)
	sub	s2, s2, s4
	slli	s2, s2, 2
	add	s2, a4, s2
	lw	s2, 0(s2)
	add	s3, s3, s2
	beqz	a2, .LBB9_28
# %bb.30:                               #   in Loop: Header=BB9_29 Depth=2
	ld	s2, 40(a3)
	ld	s4, 0(t0)
	ld	s5, 0(s2)
	add	s4, s4, t4
	ld	s4, 0(s4)
	add	s5, s5, t6
	ld	s5, 0(s5)
	add	s4, s4, s1
	lhu	s4, 0(s4)
	ld	s6, 8(t0)
	add	s5, s5, s1
	ld	s2, 8(s2)
	lhu	s5, 0(s5)
	add	s6, s6, t4
	ld	s6, 0(s6)
	add	s2, s2, t6
	ld	s2, 0(s2)
	sub	s4, s4, s5
	add	s6, s6, s1
	lhu	s5, 0(s6)
	add	s2, s2, s1
	lhu	s2, 0(s2)
	slli	s4, s4, 2
	add	s4, a4, s4
	lw	s4, 0(s4)
	sub	s2, s5, s2
	slli	s2, s2, 2
	add	s2, a4, s2
	lw	s2, 0(s2)
	add	s3, s3, s4
	add	s3, s3, s2
	j	.LBB9_28
.LBB9_31:
	lui	a0, %hi(.LCPI9_0)
	fld	fa0, %lo(.LCPI9_0)(a0)
	j	.LBB9_62
.LBB9_32:
	sd	s10, 168(sp)                    # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s9, 32(sp)                      # 8-byte Folded Spill
	addi	a1, a0, 2047
	lw	a1, 1529(a1)
	blez	a1, .LBB9_39
# %bb.33:
	li	s0, 0
	li	s6, 0
	lui	s2, 22
	lui	s3, %hi(imgY_org)
	lui	s4, %hi(decs)
	lui	s5, %hi(input)
.LBB9_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_37 Depth 2
	sext.w	a0, s0
	li	a1, 8
	mv	a2, s11
	mv	s1, s7
	mv	a3, s7
	ld	a4, 120(sp)                     # 8-byte Folded Reload
	call	decode_one_b8block
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 172(a0)
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	addw	a1, a1, a2
	addiw	a3, a1, 7
	ld	a5, 144(sp)                     # 8-byte Folded Reload
	blt	a1, a3, .LBB9_36
# %bb.35:                               #   in Loop: Header=BB9_34 Depth=1
	mv	a3, a1
.LBB9_36:                               #   in Loop: Header=BB9_34 Depth=1
	lw	a2, 168(a0)
	ld	a4, %lo(decs)(s4)
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
.LBB9_37:                               #   Parent Loop BB9_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t4, 0(a2)
	ld	t5, 0(a1)
	add	t6, t4, a4
	lhu	t6, 0(t6)
	add	s7, t5, a4
	lhu	s7, 0(s7)
	sub	t6, t6, s7
	add	s7, t4, a5
	lhu	s7, 0(s7)
	add	s8, t5, a5
	lhu	s8, 0(s8)
	slli	t6, t6, 2
	add	t6, a0, t6
	lw	t6, 0(t6)
	sub	s7, s7, s8
	add	s8, t4, a6
	lhu	s8, 0(s8)
	add	s9, t5, a6
	lhu	s9, 0(s9)
	slli	s7, s7, 2
	add	s7, a0, s7
	lw	s7, 0(s7)
	sub	s8, s8, s9
	slli	s8, s8, 2
	add	s8, a0, s8
	lw	s8, 0(s8)
	add	s9, t4, a7
	lhu	s9, 0(s9)
	add	s10, t5, a7
	lhu	s10, 0(s10)
	add	t6, s6, t6
	add	s7, s7, s8
	add	t6, t6, s7
	sub	s6, s9, s10
	add	s7, t4, t0
	lhu	s7, 0(s7)
	add	s8, t5, t0
	lhu	s8, 0(s8)
	add	s9, t4, t1
	lhu	s9, 0(s9)
	add	s10, t5, t1
	lhu	s10, 0(s10)
	add	s11, t4, t2
	lhu	s11, 0(s11)
	add	ra, t5, t2
	lhu	ra, 0(ra)
	add	t4, t4, t3
	lhu	t4, 0(t4)
	add	t5, t5, t3
	lhu	t5, 0(t5)
	sub	s7, s7, s8
	sub	s8, s9, s10
	sub	s9, s11, ra
	sub	t4, t4, t5
	slli	s6, s6, 2
	add	s6, a0, s6
	lw	t5, 0(s6)
	slli	s7, s7, 2
	add	s7, a0, s7
	lw	s6, 0(s7)
	slli	s8, s8, 2
	add	s8, a0, s8
	lw	s7, 0(s8)
	slli	s9, s9, 2
	add	s9, a0, s9
	lw	s8, 0(s9)
	slli	t4, t4, 2
	add	t4, a0, t4
	lw	t4, 0(t4)
	add	t5, t5, s6
	add	t5, t5, s7
	add	t5, t6, t5
	add	t4, s8, t4
	add	s6, t5, t4
	addi	a1, a1, 8
	addi	a2, a2, 8
	bne	a1, a3, .LBB9_37
# %bb.38:                               #   in Loop: Header=BB9_34 Depth=1
	ld	a0, %lo(input)(s5)
	addi	a1, a0, 2047
	lw	a1, 1529(a1)
	addi	s0, s0, 1
	mv	s7, s1
	ld	s11, 112(sp)                    # 8-byte Folded Reload
	blt	s0, a1, .LBB9_34
	j	.LBB9_40
.LBB9_39:
	li	s6, 0
.LBB9_40:
	div	s3, s6, a1
	ld	s9, 32(sp)                      # 8-byte Folded Reload
	ld	s10, 24(sp)                     # 8-byte Folded Reload
	ld	s8, 168(sp)                     # 8-byte Folded Reload
.LBB9_41:
	addi	a0, a0, 2047
	lw	a2, 937(a0)
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	seqz	s2, a1
	ld	s4, 72(sp)                      # 8-byte Folded Reload
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	beqz	a2, .LBB9_43
# %bb.42:
	li	a2, 48
	ld	a3, 48(sp)                      # 8-byte Folded Reload
	mul	a2, a3, a2
	add	a2, a1, a2
	lui	a1, 8
	addiw	s1, a1, -1184
	add	s1, a2, s1
	sw	a0, 4(s1)
	li	a0, 2
	sw	a0, 0(s1)
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	lw	a0, 8(a0)
	ld	a1, 104(sp)                     # 8-byte Folded Reload
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
	addi	a0, a0, 1
	sw	a0, 0(s10)
	add	s0, s0, s8
	beqz	s2, .LBB9_44
	j	.LBB9_57
.LBB9_43:
	lw	a1, 188(sp)
	addi	a2, sp, 184
	addi	a3, sp, 188
	call	ue_linfo
	lw	s0, 184(sp)
	add	s0, s0, s8
	bnez	s2, .LBB9_57
.LBB9_44:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lui	s1, 22
	lui	s2, 16
	andi	a0, s4, -3
	addiw	s2, s2, -3
	bnez	a0, .LBB9_47
# %bb.45:
	add	a0, a1, s1
	lw	a0, -704(a0)
	li	a2, 2
	ld	s5, 16(sp)                      # 8-byte Folded Reload
	blt	a0, a2, .LBB9_48
# %bb.46:
	li	a3, 1
	mv	a0, s7
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	ld	a4, 120(sp)                     # 8-byte Folded Reload
	call	writeReferenceFrame
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	s0, a0, s0
	j	.LBB9_48
.LBB9_47:
	ld	s5, 16(sp)                      # 8-byte Folded Reload
.LBB9_48:
	add	s1, a1, s1
	lw	a0, -700(s1)
	li	a2, 2
	and	s1, s4, s2
	blt	a0, a2, .LBB9_52
# %bb.49:
	addi	a0, s4, -1
	slli	a0, a0, 48
	srli	a2, a0, 48
	li	a0, 1
	bltu	a0, a2, .LBB9_52
# %bb.50:
	lw	a1, 24(a1)
	bne	a1, a0, .LBB9_52
# %bb.51:
	mv	a0, s7
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	li	a3, 0
	mv	a4, s5
	call	writeReferenceFrame
	add	s0, a0, s0
.LBB9_52:
	beqz	s1, .LBB9_54
# %bb.53:
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	j	.LBB9_55
.LBB9_54:
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	addi	a2, a0, 2
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	addi	a3, s1, 2
	mv	a1, s1
	ld	a4, 120(sp)                     # 8-byte Folded Reload
	li	a5, 0
	mv	a6, s7
	call	writeMotionVector8x8
	add	s0, a0, s0
.LBB9_55:
	addi	a0, s4, -1
	slli	a0, a0, 48
	srli	a0, a0, 48
	li	a1, 1
	bltu	a1, a0, .LBB9_57
# %bb.56:
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	addi	a2, a0, 2
	addi	a3, s1, 2
	li	a5, 1
	mv	a1, s1
	mv	a4, s5
	mv	a6, s7
	call	writeMotionVector8x8
	add	s0, a0, s0
.LBB9_57:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	li	a1, 1
	bne	a0, a1, .LBB9_59
# %bb.58:
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	lw	a0, 44(a0)
	ld	a1, 104(sp)                     # 8-byte Folded Reload
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
	mv	a0, s11
	mv	a3, s10
	mv	a5, s1
	call	writeCBP_BIT_CABAC
	mv	a0, s1
	call	arienco_bits_written
	lw	a1, 184(sp)
	subw	a0, a0, a1
	sw	a0, 184(sp)
	add	s0, a0, s0
.LBB9_59:
	lw	a0, 0(s9)
	beqz	a0, .LBB9_61
# %bb.60:
	lw	a2, 468(s10)
	mv	a0, s11
	mv	a1, s7
	call	writeLumaCoeff8x8
	add	s0, a0, s0
.LBB9_61:
	fcvt.d.l	fa5, s3
	fcvt.d.w	fa4, s0
	fmadd.d	fa0, fs0, fa4, fa5
.LBB9_62:
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
	sd	s8, 16(sp)                      # 8-byte Folded Spill
	sd	s9, 8(sp)                       # 8-byte Folded Spill
	sd	s10, 0(sp)                      # 8-byte Folded Spill
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
	li	a5, 1
	addi	a3, a1, 476
	bne	a0, a5, .LBB11_24
# %bb.1:
	lui	a5, 22
	addiw	a5, a5, -750
	add	a4, a4, a5
	lh	a4, 0(a4)
	sh	a4, 476(a1)
.LBB11_2:
	slli	a4, a0, 3
	lui	a5, %hi(best8x8pdir)
	addi	a5, a5, %lo(best8x8pdir)
	add	a4, a5, a4
	lh	a5, 0(a4)
	lh	a6, 2(a4)
	sw	a5, 392(a1)
	sw	a0, 376(a1)
	sw	a6, 396(a1)
	lh	a6, 4(a4)
	sw	a0, 380(a1)
	sw	a0, 384(a1)
	lh	a5, 6(a4)
	sw	a6, 400(a1)
	sw	a0, 388(a1)
.LBB11_3:
	li	a4, 404
	add	a6, a1, a4
	li	a4, 1
	sw	a5, 0(a6)
	bne	a2, a4, .LBB11_36
.LBB11_4:
	li	a5, 0
	lui	a6, %hi(img)
	li	a7, 8
	lui	t0, %hi(best8x8mode)
	addi	t0, t0, %lo(best8x8mode)
	lui	t1, %hi(direct_ref_idx)
	lui	t2, %hi(enc_picture)
	lui	t3, 2
	li	t4, 4
	slli	s0, a0, 3
	lui	t5, %hi(best8x8pdir)
	addi	t5, t5, %lo(best8x8pdir)
	add	t5, t5, s0
	lui	t6, %hi(best8x8fwref)
	addi	t6, t6, %lo(best8x8fwref)
	add	t6, t6, s0
	lui	s1, %hi(best8x8bwref)
	addi	s1, s1, %lo(best8x8bwref)
	add	s0, s1, s0
	li	s1, 2
	j	.LBB11_6
.LBB11_5:                               #   in Loop: Header=BB11_6 Depth=1
	addiw	a5, a5, 1
	beq	a5, t4, .LBB11_54
.LBB11_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_9 Depth 2
	ld	s2, %lo(img)(a6)
	lw	s3, 148(s2)
	li	s2, 0
	addw	s4, s3, a5
	andi	s3, a5, 2
	slli	s4, s4, 3
	j	.LBB11_9
.LBB11_7:                               #   in Loop: Header=BB11_9 Depth=2
	add	s7, s0, s7
	lbu	s6, 0(s7)
.LBB11_8:                               #   in Loop: Header=BB11_9 Depth=2
	ld	s7, %lo(enc_picture)(t2)
	add	s7, s7, t3
	ld	s7, -1712(s7)
	ld	s7, 8(s7)
	add	s7, s7, s4
	ld	s7, 0(s7)
	add	s5, s7, s5
	addiw	s2, s2, 1
	sb	s6, 0(s5)
	beq	s2, t4, .LBB11_5
.LBB11_9:                               #   Parent Loop BB11_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s5, %lo(img)(a6)
	lw	s5, 144(s5)
	addw	s5, s2, s5
	srliw	s6, s2, 1
	or	s7, s6, s3
	bne	a0, a7, .LBB11_12
# %bb.10:                               #   in Loop: Header=BB11_9 Depth=2
	slli	s6, s7, 1
	add	s6, t0, s6
	lhu	s6, 0(s6)
	bnez	s6, .LBB11_17
# %bb.11:                               #   in Loop: Header=BB11_9 Depth=2
	ld	s6, %lo(direct_ref_idx)(t1)
	ld	s7, %lo(enc_picture)(t2)
	ld	s6, 0(s6)
	add	s7, s7, t3
	ld	s7, -1712(s7)
	add	s6, s6, s4
	ld	s6, 0(s6)
	ld	s7, 0(s7)
	add	s6, s6, s5
	add	s7, s7, s4
	ld	s7, 0(s7)
	lbu	s6, 0(s6)
	add	s7, s7, s5
	sb	s6, 0(s7)
	ld	s6, %lo(direct_ref_idx)(t1)
	ld	s6, 8(s6)
	add	s6, s6, s4
	ld	s6, 0(s6)
	add	s6, s6, s5
	lbu	s6, 0(s6)
	j	.LBB11_8
.LBB11_12:                              #   in Loop: Header=BB11_9 Depth=2
	bne	a0, a4, .LBB11_17
# %bb.13:                               #   in Loop: Header=BB11_9 Depth=2
	lhu	s6, 0(a3)
	beqz	s6, .LBB11_17
# %bb.14:                               #   in Loop: Header=BB11_9 Depth=2
	slli	s6, s7, 1
	add	s6, t5, s6
	lhu	s6, 0(s6)
	ori	s8, s6, 2
	bne	s8, s1, .LBB11_17
# %bb.15:                               #   in Loop: Header=BB11_9 Depth=2
	addi	s6, s6, -1
	bltu	a4, s6, .LBB11_17
# %bb.16:                               #   in Loop: Header=BB11_9 Depth=2
	ld	s6, %lo(enc_picture)(t2)
	add	s6, s6, t3
	ld	s6, -1712(s6)
	ld	s6, 0(s6)
	add	s6, s6, s4
	ld	s7, 0(s6)
	li	s6, 0
	add	s7, s7, s5
	sb	zero, 0(s7)
	j	.LBB11_8
.LBB11_17:                              #   in Loop: Header=BB11_9 Depth=2
	slli	s7, s7, 1
	add	s8, t5, s7
	lhu	s9, 0(s8)
	li	s6, 255
	ori	s10, s9, 2
	li	s9, 255
	bne	s10, s1, .LBB11_21
# %bb.18:                               #   in Loop: Header=BB11_9 Depth=2
	bne	a0, a7, .LBB11_20
# %bb.19:                               #   in Loop: Header=BB11_9 Depth=2
	add	s9, t0, s7
	lhu	s10, 0(s9)
	li	s9, 255
	beqz	s10, .LBB11_21
.LBB11_20:                              #   in Loop: Header=BB11_9 Depth=2
	add	s9, t6, s7
	lbu	s9, 0(s9)
.LBB11_21:                              #   in Loop: Header=BB11_9 Depth=2
	ld	s10, %lo(enc_picture)(t2)
	add	s10, s10, t3
	ld	s10, -1712(s10)
	ld	s10, 0(s10)
	add	s10, s10, s4
	ld	s10, 0(s10)
	add	s10, s10, s5
	sb	s9, 0(s10)
	lhu	s8, 0(s8)
	addi	s8, s8, -1
	bltu	a4, s8, .LBB11_8
# %bb.22:                               #   in Loop: Header=BB11_9 Depth=2
	bne	a0, a7, .LBB11_7
# %bb.23:                               #   in Loop: Header=BB11_9 Depth=2
	add	s8, t0, s7
	lhu	s8, 0(s8)
	bnez	s8, .LBB11_7
	j	.LBB11_8
.LBB11_24:
	li	a5, 14
	sh	zero, 476(a1)
	bltu	a5, a0, .LBB11_61
# %bb.25:
	slli	a5, a0, 2
	lui	a6, %hi(.LJTI11_0)
	addi	a6, a6, %lo(.LJTI11_0)
	add	a5, a5, a6
	lw	a5, 0(a5)
	jr	a5
.LBB11_26:
	lui	a0, %hi(direct_pdir)
	ld	a0, %lo(direct_pdir)(a0)
	li	a3, 1
	sw	zero, 376(a1)
	bne	a2, a3, .LBB11_51
# %bb.27:
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
	j	.LBB11_33
.LBB11_28:
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
	beq	a2, a3, .LBB11_30
	j	.LBB11_48
.LBB11_29:
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
	bne	a2, a3, .LBB11_48
.LBB11_30:
	beqz	a0, .LBB11_33
# %bb.31:
	lw	a3, 148(a4)
	addi	a0, a3, -1
	slli	a3, a3, 3
	lui	a5, %hi(enc_picture)
	lui	a6, 2
	li	a7, -1
	lui	t0, %hi(img)
.LBB11_32:                              # =>This Inner Loop Header: Depth=1
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
	blt	a0, t1, .LBB11_32
	j	.LBB11_54
.LBB11_33:
	lw	a3, 148(a4)
	addi	a0, a3, -1
	slli	a3, a3, 3
	lui	a5, %hi(enc_picture)
	lui	a6, 2
	lui	a7, %hi(direct_ref_idx)
	lui	t0, %hi(img)
.LBB11_34:                              # =>This Inner Loop Header: Depth=1
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
	blt	a0, t1, .LBB11_34
	j	.LBB11_54
.LBB11_35:
	li	a4, 14
	sw	a4, 376(a1)
	li	a6, -1
	sw	a6, 392(a1)
	sw	a4, 380(a1)
	sw	a6, 396(a1)
	sw	a4, 384(a1)
	sw	a6, 400(a1)
	sw	a4, 388(a1)
	sw	a6, 404(a1)
	li	a4, 468
	add	a6, a1, a4
	li	a4, 1
	sw	zero, 0(a6)
	beq	a2, a4, .LBB11_4
.LBB11_36:
	li	a3, 0
	lui	a4, %hi(img)
	slli	a6, a0, 3
	lui	a0, %hi(best8x8pdir)
	addi	a0, a0, %lo(best8x8pdir)
	add	a0, a0, a6
	li	a5, 2
	lui	a7, %hi(best8x8fwref)
	addi	a7, a7, %lo(best8x8fwref)
	add	a6, a7, a6
	lui	a7, %hi(enc_picture)
	lui	t0, 2
	li	t1, 4
	j	.LBB11_38
.LBB11_37:                              #   in Loop: Header=BB11_38 Depth=1
	ld	t4, %lo(enc_picture)(a7)
	add	t4, t4, t0
	ld	t4, -1712(t4)
	ld	t4, 0(t4)
	add	t2, t4, t2
	ld	t2, 0(t2)
	add	t2, t2, t5
	addiw	a3, a3, 1
	sb	t3, 3(t2)
	beq	a3, t1, .LBB11_54
.LBB11_38:                              # =>This Inner Loop Header: Depth=1
	andi	t3, a3, 2
	slli	t5, t3, 1
	add	t6, a0, t5
	lhu	t2, 0(t6)
	li	t4, 255
	ori	t2, t2, 2
	li	s0, 255
	bne	t2, a5, .LBB11_40
# %bb.39:                               #   in Loop: Header=BB11_38 Depth=1
	add	t2, a6, t5
	lbu	s0, 0(t2)
.LBB11_40:                              #   in Loop: Header=BB11_38 Depth=1
	ld	t2, %lo(enc_picture)(a7)
	ld	s1, %lo(img)(a4)
	add	t2, t2, t0
	ld	t2, -1712(t2)
	lw	s2, 148(s1)
	ld	s3, 0(t2)
	addw	t2, a3, s2
	lw	s1, 144(s1)
	slli	t2, t2, 3
	add	s3, s3, t2
	ld	s2, 0(s3)
	add	s1, s2, s1
	sb	s0, 0(s1)
	lhu	t6, 0(t6)
	ori	t6, t6, 2
	bne	t6, a5, .LBB11_42
# %bb.41:                               #   in Loop: Header=BB11_38 Depth=1
	add	t5, a6, t5
	lbu	t4, 0(t5)
.LBB11_42:                              #   in Loop: Header=BB11_38 Depth=1
	ld	t5, %lo(enc_picture)(a7)
	add	t5, t5, t0
	ld	t5, -1712(t5)
	ld	t6, %lo(img)(a4)
	ld	t5, 0(t5)
	lw	t6, 144(t6)
	add	t5, t5, t2
	ld	t5, 0(t5)
	add	t5, t5, t6
	sb	t4, 1(t5)
	ld	t6, %lo(img)(a4)
	ori	t4, t3, 1
	slli	t4, t4, 1
	add	t5, a0, t4
	lhu	s0, 0(t5)
	lw	t6, 144(t6)
	li	t3, 255
	ori	s1, s0, 2
	li	s0, 255
	bne	s1, a5, .LBB11_44
# %bb.43:                               #   in Loop: Header=BB11_38 Depth=1
	add	s0, a6, t4
	lbu	s0, 0(s0)
.LBB11_44:                              #   in Loop: Header=BB11_38 Depth=1
	ld	s1, %lo(enc_picture)(a7)
	add	s1, s1, t0
	ld	s1, -1712(s1)
	ld	s1, 0(s1)
	add	s1, s1, t2
	ld	s1, 0(s1)
	add	t6, s1, t6
	sb	s0, 2(t6)
	ld	t6, %lo(img)(a4)
	lhu	s0, 0(t5)
	lw	t5, 144(t6)
	ori	t6, s0, 2
	bne	t6, a5, .LBB11_37
# %bb.45:                               #   in Loop: Header=BB11_38 Depth=1
	add	t4, a6, t4
	lbu	t3, 0(t4)
	j	.LBB11_37
.LBB11_46:
	lui	a4, %hi(best8x8mode)
	addi	a5, a4, %lo(best8x8mode)
	lh	a4, %lo(best8x8mode)(a4)
	lui	a6, %hi(best8x8pdir)
	addi	a6, a6, %lo(best8x8pdir)
	lh	a7, 64(a6)
	lh	t0, 2(a5)
	sw	a4, 376(a1)
	lh	a4, 66(a6)
	sw	a7, 392(a1)
	sw	t0, 380(a1)
	lh	a7, 4(a5)
	sw	a4, 396(a1)
	lh	a4, 68(a6)
	lh	t0, 6(a5)
	sw	a7, 384(a1)
	lh	a5, 70(a6)
	sw	a4, 400(a1)
	sw	t0, 388(a1)
	j	.LBB11_3
.LBB11_47:
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
	beq	a2, a3, .LBB11_30
.LBB11_48:
	beqz	a0, .LBB11_52
# %bb.49:
	lw	a3, 148(a4)
	addi	a0, a3, -1
	slli	a3, a3, 3
	lui	a5, %hi(enc_picture)
	lui	a6, 2
	li	a7, -1
	lui	t0, %hi(img)
.LBB11_50:                              # =>This Inner Loop Header: Depth=1
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
	blt	a0, t1, .LBB11_50
	j	.LBB11_54
.LBB11_51:
	sw	zero, 404(a1)
	sw	zero, 400(a1)
	sw	zero, 396(a1)
	sw	zero, 392(a1)
	sw	zero, 388(a1)
	sw	zero, 384(a1)
	sw	zero, 380(a1)
.LBB11_52:
	lw	a3, 148(a4)
	addi	a0, a3, -1
	slli	a3, a3, 3
	lui	a5, %hi(enc_picture)
	lui	a6, 2
	lui	a7, %hi(img)
.LBB11_53:                              # =>This Inner Loop Header: Depth=1
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
	blt	a0, t0, .LBB11_53
.LBB11_54:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	t0, 148(a0)
	lw	a0, 144(a0)
	lui	a3, %hi(enc_picture)
	ld	a5, %lo(enc_picture)(a3)
	lui	a3, 2
	addiw	a3, a3, -1712
	li	a4, 1
	add	a3, a5, a3
	bne	a2, a4, .LBB11_59
# %bb.55:
	ld	a2, 0(a3)
	ld	a7, 8(a2)
	ld	a3, 8(a3)
	lw	t1, 428(a1)
	addi	t3, a5, 24
	ld	a6, 0(a2)
	ld	a5, 0(a3)
	addiw	t4, t1, 1
	ld	t2, 8(a3)
	addi	a1, a0, 1
	addi	a2, a0, 2
	addi	a3, a0, 3
	addiw	a4, t0, 3
	slli	t5, t0, 3
	blt	a4, t0, .LBB11_57
# %bb.56:
	mv	t0, a4
.LBB11_57:
	add	a4, t2, t5
	add	a5, a5, t5
	add	a6, a6, t5
	add	a7, a7, t5
	slli	t0, t0, 3
	add	t0, t0, t2
	addi	t0, t0, 8
	li	t5, 264
	mul	t1, t1, t5
	add	t1, t3, t1
	slli	t2, a0, 3
	mul	t4, t4, t5
	add	t3, t3, t4
	slli	t4, a1, 3
	slli	t5, a2, 3
	slli	t6, a3, 3
.LBB11_58:                              # =>This Inner Loop Header: Depth=1
	ld	s1, 0(a6)
	ld	s0, 0(a7)
	add	s2, s1, a0
	lbu	s2, 0(s2)
	ld	s3, 0(a5)
	add	s4, s0, a0
	slli	s2, s2, 3
	add	s2, t1, s2
	ld	s2, 0(s2)
	lbu	s4, 0(s4)
	ld	s5, 0(a4)
	add	s6, s3, t2
	sd	s2, 0(s6)
	slli	s4, s4, 3
	add	s4, t3, s4
	ld	s2, 0(s4)
	add	s4, s5, t2
	sd	s2, 0(s4)
	add	s2, s1, a1
	lbu	s2, 0(s2)
	add	s4, s0, a1
	slli	s2, s2, 3
	add	s2, t1, s2
	ld	s2, 0(s2)
	lbu	s4, 0(s4)
	add	s6, s3, t4
	sd	s2, 0(s6)
	slli	s4, s4, 3
	add	s4, t3, s4
	ld	s2, 0(s4)
	add	s4, s5, t4
	sd	s2, 0(s4)
	add	s2, s1, a2
	lbu	s2, 0(s2)
	add	s4, s0, a2
	slli	s2, s2, 3
	add	s2, t1, s2
	ld	s2, 0(s2)
	lbu	s4, 0(s4)
	add	s6, s3, t5
	sd	s2, 0(s6)
	slli	s4, s4, 3
	add	s4, t3, s4
	ld	s2, 0(s4)
	add	s4, s5, t5
	sd	s2, 0(s4)
	add	s1, s1, a3
	lbu	s1, 0(s1)
	add	s0, s0, a3
	slli	s1, s1, 3
	add	s1, t1, s1
	ld	s1, 0(s1)
	lbu	s0, 0(s0)
	add	s3, s3, t6
	sd	s1, 0(s3)
	slli	s0, s0, 3
	add	s0, t3, s0
	ld	s0, 0(s0)
	add	s5, s5, t6
	sd	s0, 0(s5)
	addi	a4, a4, 8
	addi	a5, a5, 8
	addi	a6, a6, 8
	addi	a7, a7, 8
	bne	a4, t0, .LBB11_58
	j	.LBB11_60
.LBB11_59:
	ld	a2, 0(a3)
	lw	a1, 428(a1)
	ld	a2, 0(a2)
	li	a6, 264
	ld	a3, 8(a3)
	slli	a4, t0, 3
	add	a7, a2, a4
	ld	t3, 0(a7)
	mul	a1, a1, a6
	ld	a3, 0(a3)
	add	a1, a5, a1
	add	a5, t3, a0
	lbu	a5, 0(a5)
	add	a6, a3, a4
	ld	t4, 0(a6)
	addi	a1, a1, 24
	slli	a5, a5, 3
	add	a5, a1, a5
	ld	a6, 0(a5)
	slli	a5, a0, 3
	add	a7, t4, a5
	sd	a6, 0(a7)
	addi	a6, a0, 1
	add	a7, t3, a6
	lbu	a7, 0(a7)
	slli	a7, a7, 3
	add	a7, a1, a7
	ld	t0, 0(a7)
	slli	a7, a6, 3
	add	t1, t4, a7
	sd	t0, 0(t1)
	addi	t0, a0, 2
	add	t1, t3, t0
	lbu	t1, 0(t1)
	slli	t1, t1, 3
	add	t1, a1, t1
	ld	t2, 0(t1)
	slli	t1, t0, 3
	add	t5, t4, t1
	sd	t2, 0(t5)
	addi	t2, a0, 3
	add	t3, t3, t2
	lbu	t3, 0(t3)
	slli	t3, t3, 3
	add	t3, a1, t3
	ld	t5, 0(t3)
	addi	t6, a4, 8
	add	t3, a2, t6
	ld	s0, 0(t3)
	slli	t3, t2, 3
	add	t4, t4, t3
	sd	t5, 0(t4)
	add	t4, s0, a0
	lbu	t4, 0(t4)
	add	t6, a3, t6
	ld	t5, 0(t6)
	slli	t4, t4, 3
	add	t4, a1, t4
	ld	t4, 0(t4)
	add	t6, t5, a5
	sd	t4, 0(t6)
	add	t4, s0, a6
	lbu	t4, 0(t4)
	slli	t4, t4, 3
	add	t4, a1, t4
	ld	t4, 0(t4)
	add	t6, t5, a7
	sd	t4, 0(t6)
	add	t4, s0, t0
	lbu	t4, 0(t4)
	slli	t4, t4, 3
	add	t4, a1, t4
	ld	t4, 0(t4)
	add	t6, t5, t1
	sd	t4, 0(t6)
	add	s0, s0, t2
	lbu	t4, 0(s0)
	slli	t4, t4, 3
	add	t4, a1, t4
	ld	t4, 0(t4)
	addi	t6, a4, 16
	add	s0, a2, t6
	ld	s0, 0(s0)
	add	t5, t5, t3
	sd	t4, 0(t5)
	add	t4, s0, a0
	lbu	t4, 0(t4)
	add	t6, a3, t6
	ld	t5, 0(t6)
	slli	t4, t4, 3
	add	t4, a1, t4
	ld	t4, 0(t4)
	add	t6, t5, a5
	sd	t4, 0(t6)
	add	t4, s0, a6
	lbu	t4, 0(t4)
	slli	t4, t4, 3
	add	t4, a1, t4
	ld	t4, 0(t4)
	add	t6, t5, a7
	sd	t4, 0(t6)
	add	t4, s0, t0
	lbu	t4, 0(t4)
	slli	t4, t4, 3
	add	t4, a1, t4
	ld	t4, 0(t4)
	add	t6, t5, t1
	sd	t4, 0(t6)
	add	s0, s0, t2
	lbu	t4, 0(s0)
	slli	t4, t4, 3
	add	t4, a1, t4
	ld	t4, 0(t4)
	addi	a4, a4, 24
	add	a2, a2, a4
	ld	a2, 0(a2)
	add	t5, t5, t3
	sd	t4, 0(t5)
	add	a0, a2, a0
	lbu	a0, 0(a0)
	add	a3, a3, a4
	ld	a3, 0(a3)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a0, 0(a0)
	add	a5, a3, a5
	sd	a0, 0(a5)
	add	a6, a2, a6
	lbu	a0, 0(a6)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a0, 0(a0)
	add	a7, a3, a7
	sd	a0, 0(a7)
	add	t0, a2, t0
	lbu	a0, 0(t0)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a0, 0(a0)
	add	t1, a3, t1
	sd	a0, 0(t1)
	add	a2, a2, t2
	lbu	a0, 0(a2)
	slli	a0, a0, 3
	add	a0, a1, a0
	ld	a0, 0(a0)
	add	a3, a3, t3
	sd	a0, 0(a3)
.LBB11_60:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	ld	s8, 16(sp)                      # 8-byte Folded Reload
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	ld	s10, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.LBB11_61:
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
	.word	.LBB11_26
	.word	.LBB11_61
	.word	.LBB11_2
	.word	.LBB11_2
	.word	.LBB11_61
	.word	.LBB11_61
	.word	.LBB11_61
	.word	.LBB11_61
	.word	.LBB11_46
	.word	.LBB11_28
	.word	.LBB11_29
	.word	.LBB11_61
	.word	.LBB11_61
	.word	.LBB11_47
	.word	.LBB11_35
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
	addi	sp, sp, -160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
	lui	s3, %hi(img)
	ld	a2, %lo(img)(s3)
	mv	s0, a1
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	a0, 8
	add	a0, a2, a0
	lw	a1, 12(a2)
	ld	a0, -1192(a0)
	lui	s8, 3
	li	a3, 528
	mul	a1, a1, a3
	add	a0, a0, a1
	lw	a0, 416(a0)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	lw	a0, 152(a2)
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	lw	a0, 156(a2)
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(imgY_org)
	ld	s7, %lo(imgY_org)(a0)
	lui	a0, %hi(imgUV_org)
	ld	s9, %lo(imgUV_org)(a0)
	addiw	a0, s8, -1736
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	lui	a0, 2
	addiw	a0, a0, 312
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	call	intrapred_luma_16x16
	ld	t0, %lo(img)(s3)
	lui	s10, 22
	add	a0, t0, s10
	lw	a0, 460(a0)
	bnez	a0, .LBB12_2
# %bb.1:
	mv	a0, s0
	call	find_sad_16x16
	ld	t0, %lo(img)(s3)
	add	s10, t0, s10
	lw	a0, 460(s10)
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
	addiw	s3, s8, 824
	add	s3, t0, s3
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	slli	a6, a6, 9
	ld	a7, 16(sp)                      # 8-byte Folded Reload
	add	a7, t0, a7
	add	s1, a7, a6
	ld	a7, 24(sp)                      # 8-byte Folded Reload
	add	t0, t0, a7
	add	s5, t0, a6
	ld	t1, 40(sp)                      # 8-byte Folded Reload
	slli	t1, t1, 1
	lui	t2, %hi(resTrans_G)
	addi	t2, t2, %lo(resTrans_G)
	li	t3, 32
	li	t4, 16
.LBB12_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	add	a6, a0, a6
	slli	a6, a6, 3
	add	t5, a3, a6
	add	t6, s7, a6
	add	a6, a5, a6
	ld	a6, 0(a6)
	ld	s8, 0(t6)
	ld	s9, 0(t5)
	li	s2, 0
	add	t6, a6, t1
	add	s8, s8, t1
	add	s9, s9, t1
	mv	s10, a2
	mv	s11, a1
	mv	ra, t2
	mv	a6, s3
.LBB12_4:                               #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	t5, s9, s2
	lhu	t5, 0(t5)
	add	t0, s5, s2
	lhu	t0, 0(t0)
	lw	s6, 0(s0)
	sub	t0, t5, t0
	slli	s6, s6, 9
	add	t5, a4, s2
	add	t5, t5, s6
	add	s6, t6, s2
	lhu	s6, 0(s6)
	add	a7, s1, s2
	lhu	a7, 0(a7)
	add	s4, s8, s2
	lhu	s4, 0(s4)
	lhu	t5, 0(t5)
	sub	a7, s6, a7
	sub	a7, a7, t0
	sw	a7, 0(s10)
	srli	a7, a7, 1
	add	a7, a7, t0
	subw	t0, s4, a7
	subw	t0, t0, t5
	sw	t0, 0(s11)
	sraiw	t0, t0, 1
	add	a7, t0, a7
	sw	a7, 0(ra)
	sw	a7, 0(a6)
	addi	s2, s2, 2
	addi	a6, a6, 4
	addi	ra, ra, 4
	addi	s11, s11, 4
	addi	s10, s10, 4
	bne	s2, t3, .LBB12_4
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	addi	a0, a0, 1
	addi	s3, s3, 64
	addi	t2, t2, 64
	addi	a1, a1, 64
	addi	a2, a2, 64
	addi	s1, s1, 32
	addi	a4, a4, 32
	addi	s5, s5, 32
	bne	a0, t4, .LBB12_3
.LBB12_6:
	lw	a0, 0(s0)
	call	dct_luma_16x16
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a2, a1, a2
	lw	a2, 460(a2)
	ld	s1, 8(sp)                       # 8-byte Folded Reload
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
	lw	t3, 4(a5)
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a3, 2
	lw	a4, 0(s0)
	addiw	a3, a3, -1768
	add	a0, a0, a3
	ld	a7, 40(a0)
	slli	a3, a4, 9
	lui	a4, 1
	addiw	a4, a4, 696
	add	a4, t1, a4
	add	a3, a3, a4
	ld	a4, 0(a7)
	lw	a5, 0(a5)
	ld	a6, 0(a0)
	ld	a7, 8(a7)
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 9
	ld	t0, 16(sp)                      # 8-byte Folded Reload
	add	t0, a0, t0
	add	t0, t1, t0
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	slli	s3, s3, 1
	ld	t2, 24(sp)                      # 8-byte Folded Reload
	add	a0, a0, t2
	add	t1, t1, a0
	li	t2, 32
	j	.LBB12_15
.LBB12_14:                              #   in Loop: Header=BB12_15 Depth=1
	addi	a2, a2, 1
	addi	t0, t0, 32
	addi	a3, a3, 32
	addi	t1, t1, 32
	addi	a1, a1, 64
	addi	s8, s8, 64
	addi	s7, s7, 64
	li	a0, 16
	beq	a2, a0, .LBB12_23
.LBB12_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_17 Depth 2
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	add	a0, a2, a0
	slli	a0, a0, 3
	add	t4, a4, a0
	add	t5, a6, a0
	add	a0, a7, a0
	ld	a0, 0(a0)
	ld	t6, 0(t5)
	ld	s0, 0(t4)
	li	t4, 0
	add	t5, a0, s3
	add	t6, t6, s3
	add	s0, s0, s3
	mv	s1, s7
	mv	s4, s8
	mv	s5, a1
	j	.LBB12_17
.LBB12_16:                              #   in Loop: Header=BB12_17 Depth=2
	add	a0, t5, t4
	sh	s6, 0(a0)
	addi	t4, t4, 2
	addi	s5, s5, 4
	addi	s4, s4, 4
	addi	s1, s1, 4
	beq	t4, t2, .LBB12_14
.LBB12_17:                              #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	s10, 0(s4)
	lw	a0, 0(s1)
	srai	s2, s10, 1
	lw	s6, 0(s5)
	add	s9, t1, t4
	lhu	ra, 0(s9)
	subw	s11, a0, s2
	srli	a0, s6, 1
	subw	s9, s11, a0
	addw	a0, s9, ra
	sgtz	s2, a0
	neg	s2, s2
	and	ra, s2, a0
	mv	a0, t3
	blt	t3, ra, .LBB12_19
# %bb.18:                               #   in Loop: Header=BB12_17 Depth=2
	mv	a0, ra
.LBB12_19:                              #   in Loop: Header=BB12_17 Depth=2
	add	s2, s0, t4
	sh	a0, 0(s2)
	add	a0, a3, t4
	lhu	a0, 0(a0)
	add	s10, s11, s10
	addw	a0, s10, a0
	sgtz	s2, a0
	neg	s2, s2
	and	a0, s2, a0
	mv	s10, a5
	blt	a5, a0, .LBB12_21
# %bb.20:                               #   in Loop: Header=BB12_17 Depth=2
	mv	s10, a0
.LBB12_21:                              #   in Loop: Header=BB12_17 Depth=2
	add	a0, t6, t4
	sh	s10, 0(a0)
	add	a0, t0, t4
	lhu	a0, 0(a0)
	add	s6, s9, s6
	addw	a0, s6, a0
	sgtz	s2, a0
	neg	s2, s2
	and	a0, s2, a0
	mv	s6, t3
	blt	t3, a0, .LBB12_16
# %bb.22:                               #   in Loop: Header=BB12_17 Depth=2
	mv	s6, a0
	j	.LBB12_16
.LBB12_23:
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 160
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
	ld	s3, %lo(img)(a0)
	beqz	a1, .LBB13_10
# %bb.1:
	lui	a1, 2
	lui	s0, %hi(tr8x8)
	addi	s0, s0, %lo(tr8x8)
	add	a2, s0, a1
	lh	a3, -2044(a2)
	lw	a0, 24(s3)
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
	lh	a2, -2030(a2)
	sw	a3, 400(s1)
	sw	a5, 388(s1)
	li	a3, 1
	sw	a2, 404(s1)
	li	a2, 0
	bne	a0, a3, .LBB13_21
# %bb.2:                                # %.preheader9
	addi	a3, s1, 392
	lui	a4, %hi(enc_picture)
	lui	a5, %hi(img)
	li	a6, 4
	j	.LBB13_4
.LBB13_3:                               #   in Loop: Header=BB13_4 Depth=1
	addiw	a2, a2, 1
	beq	a2, a6, .LBB13_23
.LBB13_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_6 Depth 2
	li	a7, 0
	li	t0, 0
	andi	t1, a2, 2
	j	.LBB13_6
.LBB13_5:                               #   in Loop: Header=BB13_6 Depth=2
	ld	t3, %lo(enc_picture)(a4)
	ld	t4, %lo(img)(a5)
	add	t3, t3, a1
	ld	t3, -1712(t3)
	lw	t5, 148(t4)
	ld	t3, 8(t3)
	addw	t5, t5, a2
	slli	t5, t5, 3
	add	t3, t3, t5
	lw	t4, 144(t4)
	ld	t3, 0(t3)
	add	t4, t4, a7
	add	t3, t3, t4
	sb	t2, 0(t3)
	addiw	t0, t0, 1
	addi	a7, a7, 1
	beq	t0, a6, .LBB13_3
.LBB13_6:                               #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srliw	t2, t0, 1
	or	t3, t2, t1
	slli	t4, t3, 2
	add	t4, a3, t4
	lbu	t2, 0(t4)
	andi	t6, t2, 1
	li	t2, 255
	add	t3, s0, t3
	li	t5, 255
	bnez	t6, .LBB13_8
# %bb.7:                                #   in Loop: Header=BB13_6 Depth=2
	add	t5, t3, a1
	lbu	t5, -2028(t5)
.LBB13_8:                               #   in Loop: Header=BB13_6 Depth=2
	ld	t6, %lo(enc_picture)(a4)
	ld	s2, %lo(img)(a5)
	add	t6, t6, a1
	ld	t6, -1712(t6)
	lw	s3, 148(s2)
	ld	t6, 0(t6)
	addw	s3, s3, a2
	slli	s3, s3, 3
	add	t6, t6, s3
	lw	s2, 144(s2)
	ld	t6, 0(t6)
	add	s2, s2, a7
	add	t6, t6, s2
	sb	t5, 0(t6)
	lw	t4, 0(t4)
	blez	t4, .LBB13_5
# %bb.9:                                #   in Loop: Header=BB13_6 Depth=2
	add	t3, t3, a1
	lbu	t2, -2024(t3)
	j	.LBB13_5
.LBB13_10:
	lui	s0, 22
	add	a0, s3, s0
	lw	a0, 428(a0)
	li	a1, -3
	blt	a0, a1, .LBB13_13
# %bb.11:
	li	s2, 0
	lui	a0, %hi(cofAC8x8)
	ld	s4, %lo(cofAC8x8)(a0)
	li	s5, -1
	lui	s6, 3
	lui	s7, %hi(img)
.LBB13_12:                              # =>This Inner Loop Header: Depth=1
	add	s3, s3, s6
	ld	a0, 1848(s3)
	add	s3, s4, s2
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 0(s3)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 0(s3)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 0(s3)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 0(s3)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 0(s3)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 0(s3)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 0(s3)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s7)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 0(s3)
	ld	a0, 24(a0)
	ld	a1, 24(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 260
	call	memcpy
	ld	s3, %lo(img)(s7)
	add	a0, s3, s0
	lw	a0, 428(a0)
	addiw	a0, a0, 3
	addi	s5, s5, 1
	addi	s2, s2, 8
	blt	s5, a0, .LBB13_12
.LBB13_13:
	lui	a0, %hi(cnt_nonz_8x8)
	lw	a1, %lo(cnt_nonz_8x8)(a0)
	addiw	a0, s0, 380
	add	a0, s3, a0
	li	a2, 5
	lui	a3, %hi(tr4x4)
	addi	a3, a3, %lo(tr4x4)
	blt	a2, a1, .LBB13_17
# %bb.14:
	lw	a1, 24(s3)
	li	a2, 3
	beq	a1, a2, .LBB13_17
# %bb.15:
	lw	a1, 0(a0)
	lw	a2, 40(s3)
	negw	a1, a1
	bne	a2, a1, .LBB13_56
# %bb.16:
	lw	a1, 60(a0)
	beqz	a1, .LBB13_56
.LBB13_17:
	lui	a1, %hi(cbp8x8)
	lw	a1, %lo(cbp8x8)(a1)
	lui	a2, %hi(cbp_blk8x8)
	lw	a2, %lo(cbp_blk8x8)(a2)
	lw	a0, 80(a0)
	sw	a1, 364(s1)
	sd	a2, 368(s1)
	beqz	a0, .LBB13_48
# %bb.18:
	addi	a1, a3, 4
	lui	a0, %hi(rec_resG)
	addi	a0, a0, %lo(rec_resG)
	li	a2, 1024
	call	memcpy
.LBB13_19:
	lui	a0, 22
	add	a0, s3, a0
	lw	a0, 460(a0)
	beqz	a0, .LBB13_41
# %bb.20:
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
.LBB13_21:                              # %.preheader11
	li	a3, 0
	addiw	a4, a1, -2028
	lui	a5, %hi(enc_picture)
	lui	a6, %hi(img)
	li	a7, 4
.LBB13_22:                              # =>This Inner Loop Header: Depth=1
	ld	t0, %lo(enc_picture)(a5)
	ld	t1, %lo(img)(a6)
	add	t0, t0, a1
	ld	t0, -1712(t0)
	andi	t2, a3, 2
	lw	t3, 148(t1)
	add	t2, s0, t2
	ld	t0, 0(t0)
	add	t2, t2, a4
	add	t3, a2, t3
	slli	t3, t3, 3
	add	t0, t0, t3
	ld	t0, 0(t0)
	lw	t1, 144(t1)
	lbu	t3, 0(t2)
	add	t0, t0, t1
	sb	t3, 0(t0)
	ld	t0, %lo(enc_picture)(a5)
	ld	t1, %lo(img)(a6)
	add	t0, t0, a1
	ld	t0, -1712(t0)
	lw	t4, 148(t1)
	ld	t0, 0(t0)
	add	t4, a2, t4
	slli	t4, t4, 3
	add	t0, t0, t4
	ld	t0, 0(t0)
	lw	t1, 144(t1)
	add	t0, t0, t1
	sb	t3, 1(t0)
	ld	t0, %lo(enc_picture)(a5)
	ld	t1, %lo(img)(a6)
	add	t0, t0, a1
	ld	t0, -1712(t0)
	lw	t3, 148(t1)
	ld	t0, 0(t0)
	add	t3, a2, t3
	slli	t3, t3, 3
	add	t0, t0, t3
	ld	t0, 0(t0)
	lw	t1, 144(t1)
	lbu	t2, 1(t2)
	add	t0, t0, t1
	sb	t2, 2(t0)
	ld	t0, %lo(enc_picture)(a5)
	ld	t1, %lo(img)(a6)
	add	t0, t0, a1
	ld	t0, -1712(t0)
	lw	t3, 148(t1)
	ld	t0, 0(t0)
	add	t3, a2, t3
	slli	t3, t3, 3
	add	t0, t0, t3
	ld	t0, 0(t0)
	lw	t1, 144(t1)
	add	t0, t0, t1
	sb	t2, 3(t0)
	addiw	a3, a3, 1
	addi	a2, a2, 1
	bne	a3, a7, .LBB13_22
.LBB13_23:
	lui	a1, %hi(img)
	lui	a2, %hi(enc_picture)
	ld	t3, %lo(enc_picture)(a2)
	ld	a1, %lo(img)(a1)
	lui	a2, 2
	addiw	a2, a2, -1712
	add	a2, t3, a2
	ld	t4, 0(a2)
	lw	s3, 148(a1)
	ld	t5, 8(a2)
	lw	a2, 144(a1)
	ld	s6, 0(t4)
	addi	t3, t3, 24
	ld	s5, 0(t5)
	slli	a3, s3, 3
	add	a4, s6, a3
	ld	t2, 0(a4)
	lw	t6, 428(s1)
	add	a4, s5, a3
	ld	s7, 0(a4)
	add	a4, t2, a2
	lbu	a4, 0(a4)
	li	a5, 264
	mul	s4, t6, a5
	add	s4, t3, s4
	slli	a4, a4, 3
	add	a4, s4, a4
	ld	a5, 0(a4)
	slli	a4, a2, 3
	add	a6, s7, a4
	sd	a5, 0(a6)
	addi	a5, a2, 1
	add	a6, t2, a5
	lbu	a6, 0(a6)
	slli	a6, a6, 3
	add	a6, s4, a6
	ld	a7, 0(a6)
	slli	a6, a5, 3
	add	t0, s7, a6
	sd	a7, 0(t0)
	addi	a7, a2, 2
	add	t0, t2, a7
	lbu	t0, 0(t0)
	slli	t0, t0, 3
	add	t0, s4, t0
	ld	t1, 0(t0)
	slli	t0, a7, 3
	add	s2, s7, t0
	sd	t1, 0(s2)
	addi	t1, a2, 3
	add	t2, t2, t1
	lbu	t2, 0(t2)
	addiw	s2, s3, 4
	slli	t2, t2, 3
	add	t2, s4, t2
	ld	s8, 0(t2)
	slli	t2, t1, 3
	add	s7, s7, t2
	addi	s3, s3, 1
	sd	s8, 0(s7)
	bge	s3, s2, .LBB13_25
# %bb.24:
	slli	s7, s3, 3
	add	s8, s6, s7
	ld	s8, 0(s8)
	add	s9, s8, a2
	lbu	s9, 0(s9)
	add	s7, s5, s7
	ld	s7, 0(s7)
	slli	s9, s9, 3
	add	s9, s4, s9
	ld	s9, 0(s9)
	add	s10, s7, a4
	sd	s9, 0(s10)
	add	s9, s8, a5
	lbu	s9, 0(s9)
	slli	s9, s9, 3
	add	s9, s4, s9
	ld	s9, 0(s9)
	add	s10, s7, a6
	sd	s9, 0(s10)
	add	s9, s8, a7
	lbu	s9, 0(s9)
	slli	s9, s9, 3
	add	s9, s4, s9
	ld	s9, 0(s9)
	add	s10, s7, t0
	sd	s9, 0(s10)
	add	s8, s8, t1
	lbu	s8, 0(s8)
	slli	s8, s8, 3
	add	s8, s4, s8
	ld	s8, 0(s8)
	addi	s9, a3, 16
	add	s10, s6, s9
	ld	s10, 0(s10)
	add	s7, s7, t2
	sd	s8, 0(s7)
	add	s7, s10, a2
	lbu	s7, 0(s7)
	add	s9, s5, s9
	ld	s8, 0(s9)
	slli	s7, s7, 3
	add	s7, s4, s7
	ld	s7, 0(s7)
	add	s9, s8, a4
	sd	s7, 0(s9)
	add	s7, s10, a5
	lbu	s7, 0(s7)
	slli	s7, s7, 3
	add	s7, s4, s7
	ld	s7, 0(s7)
	add	s9, s8, a6
	sd	s7, 0(s9)
	add	s7, s10, a7
	lbu	s7, 0(s7)
	slli	s7, s7, 3
	add	s7, s4, s7
	ld	s7, 0(s7)
	add	s9, s8, t0
	sd	s7, 0(s9)
	add	s10, s10, t1
	lbu	s7, 0(s10)
	slli	s7, s7, 3
	add	s7, s4, s7
	ld	s7, 0(s7)
	addi	s9, a3, 24
	add	s6, s6, s9
	ld	s6, 0(s6)
	add	s8, s8, t2
	sd	s7, 0(s8)
	add	s7, s6, a2
	lbu	s7, 0(s7)
	add	s5, s5, s9
	ld	s5, 0(s5)
	slli	s7, s7, 3
	add	s7, s4, s7
	ld	s7, 0(s7)
	add	s8, s5, a4
	sd	s7, 0(s8)
	add	s7, s6, a5
	lbu	s7, 0(s7)
	slli	s7, s7, 3
	add	s7, s4, s7
	ld	s7, 0(s7)
	add	s8, s5, a6
	sd	s7, 0(s8)
	add	s7, s6, a7
	lbu	s7, 0(s7)
	slli	s7, s7, 3
	add	s7, s4, s7
	ld	s7, 0(s7)
	add	s8, s5, t0
	sd	s7, 0(s8)
	add	s6, s6, t1
	lbu	s6, 0(s6)
	slli	s6, s6, 3
	add	s4, s4, s6
	ld	s4, 0(s4)
	add	s5, s5, t2
	sd	s4, 0(s5)
.LBB13_25:
	li	s4, 1
	bne	a0, s4, .LBB13_28
# %bb.26:
	ld	t4, 8(t4)
	ld	a0, 8(t5)
	add	t5, t4, a3
	ld	t5, 0(t5)
	addiw	t6, t6, 1
	add	s4, a0, a3
	ld	s4, 0(s4)
	add	s5, t5, a2
	lbu	s5, 0(s5)
	li	s6, 264
	mul	t6, t6, s6
	add	t3, t3, t6
	slli	s5, s5, 3
	add	s5, t3, s5
	ld	t6, 0(s5)
	add	s5, s4, a4
	sd	t6, 0(s5)
	add	t6, t5, a5
	lbu	t6, 0(t6)
	slli	t6, t6, 3
	add	t6, t3, t6
	ld	t6, 0(t6)
	add	s5, s4, a6
	sd	t6, 0(s5)
	add	t6, t5, a7
	lbu	t6, 0(t6)
	slli	t6, t6, 3
	add	t6, t3, t6
	ld	t6, 0(t6)
	add	s5, s4, t0
	sd	t6, 0(s5)
	add	t5, t5, t1
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, t3, t5
	ld	t5, 0(t5)
	add	s4, s4, t2
	sd	t5, 0(s4)
	bge	s3, s2, .LBB13_28
# %bb.27:
	slli	s3, s3, 3
	add	t5, t4, s3
	ld	t5, 0(t5)
	add	t6, t5, a2
	lbu	t6, 0(t6)
	add	s3, a0, s3
	ld	s2, 0(s3)
	slli	t6, t6, 3
	add	t6, t3, t6
	ld	t6, 0(t6)
	add	s3, s2, a4
	sd	t6, 0(s3)
	add	t6, t5, a5
	lbu	t6, 0(t6)
	slli	t6, t6, 3
	add	t6, t3, t6
	ld	t6, 0(t6)
	add	s3, s2, a6
	sd	t6, 0(s3)
	add	t6, t5, a7
	lbu	t6, 0(t6)
	slli	t6, t6, 3
	add	t6, t3, t6
	ld	t6, 0(t6)
	add	s3, s2, t0
	sd	t6, 0(s3)
	add	t5, t5, t1
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, t3, t5
	ld	t5, 0(t5)
	addi	t6, a3, 16
	add	s3, t4, t6
	ld	s3, 0(s3)
	add	s2, s2, t2
	sd	t5, 0(s2)
	add	t5, s3, a2
	lbu	t5, 0(t5)
	add	t6, a0, t6
	ld	t6, 0(t6)
	slli	t5, t5, 3
	add	t5, t3, t5
	ld	t5, 0(t5)
	add	s2, t6, a4
	sd	t5, 0(s2)
	add	t5, s3, a5
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, t3, t5
	ld	t5, 0(t5)
	add	s2, t6, a6
	sd	t5, 0(s2)
	add	t5, s3, a7
	lbu	t5, 0(t5)
	slli	t5, t5, 3
	add	t5, t3, t5
	ld	t5, 0(t5)
	add	s2, t6, t0
	sd	t5, 0(s2)
	add	s3, s3, t1
	lbu	t5, 0(s3)
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
.LBB13_28:
	lw	a0, 24(a1)
	lui	s3, 2
	add	s4, s0, s3
	lh	a2, -2044(s4)
	lbu	a3, -2028(s4)
	lbu	a4, -2024(s4)
	lh	a5, -2036(s4)
	addi	a0, a0, -1
	seqz	s2, a0
	li	a0, 1
	li	a1, 0
	mv	a6, s2
	call	StoreMVBlock8x8
	lh	a2, -2042(s4)
	lbu	a3, -2027(s4)
	lbu	a4, -2023(s4)
	lh	a5, -2034(s4)
	li	a0, 1
	li	a1, 1
	mv	a6, s2
	call	StoreMVBlock8x8
	lh	a2, -2040(s4)
	lbu	a3, -2026(s4)
	lbu	a4, -2022(s4)
	lh	a5, -2032(s4)
	li	a0, 1
	li	a1, 2
	mv	a6, s2
	call	StoreMVBlock8x8
	lh	a2, -2038(s4)
	lbu	a3, -2025(s4)
	lbu	a4, -2021(s4)
	lh	a5, -2030(s4)
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
	mv	a1, s0
	mv	a2, s3
	call	memcpy
	addi	a2, sp, 12
	li	a0, 0
	li	a1, 0
	mv	a3, s2
	call	RestoreMVBlock8x8
	addi	a0, sp, 12
	mv	a1, s0
	mv	a2, s3
	call	memcpy
	li	a1, 1
	addi	a2, sp, 12
	li	a0, 0
	mv	a3, s2
	call	RestoreMVBlock8x8
	addi	a0, sp, 12
	mv	a1, s0
	mv	a2, s3
	call	memcpy
	li	a1, 2
	addi	a2, sp, 12
	li	a0, 0
	mv	a3, s2
	call	RestoreMVBlock8x8
	addi	a0, sp, 12
	mv	a1, s0
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
.LBB13_29:                              # =>This Inner Loop Header: Depth=1
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
	bne	s3, s6, .LBB13_29
# %bb.30:
	lui	a0, %hi(cnt_nonz8_8x8ts)
	lw	a1, %lo(cnt_nonz8_8x8ts)(a0)
	lui	a0, %hi(img)
	ld	s3, %lo(img)(a0)
	lui	a0, 22
	addiw	a0, a0, 380
	li	a2, 5
	add	a0, s3, a0
	blt	a2, a1, .LBB13_34
# %bb.31:
	lw	a1, 0(a0)
	lw	a2, 40(s3)
	negw	a1, a1
	bne	a2, a1, .LBB13_33
# %bb.32:
	lw	a1, 60(a0)
	bnez	a1, .LBB13_34
.LBB13_33:
	lw	a1, 24(s3)
	li	a2, 3
	bne	a1, a2, .LBB13_54
.LBB13_34:
	lui	a1, %hi(cbp8_8x8ts)
	lw	a1, %lo(cbp8_8x8ts)(a1)
	lui	a2, %hi(cbp_blk8_8x8ts)
	ld	a2, %lo(cbp_blk8_8x8ts)(a2)
	lw	a0, 80(a0)
	sw	a1, 364(s1)
	sd	a2, 368(s1)
	beqz	a0, .LBB13_42
# %bb.35:
	addi	a1, s0, 4
	lui	a0, %hi(rec_resG)
	addi	a0, a0, %lo(rec_resG)
	li	a2, 1024
	call	memcpy
.LBB13_36:
	lui	a0, 22
	add	a0, s3, a0
	lw	a0, 460(a0)
	beqz	a0, .LBB13_41
# %bb.37:
	addi	a1, s0, 1028
	lui	a0, %hi(resTrans_R)
	addi	a0, a0, %lo(resTrans_R)
	li	a2, 1024
	call	memcpy
	addi	a1, s0, 2047
	addi	a1, a1, 5
	lui	a0, %hi(resTrans_B)
	addi	a0, a0, %lo(resTrans_B)
	li	a2, 1024
	call	memcpy
	li	a0, 0
	lui	a1, 1
	addiw	a1, a1, 1028
	add	s0, s0, a1
	lui	a1, %hi(mprRGB)
	addi	a1, a1, %lo(mprRGB)
	addi	a2, a1, 2047
	addi	a2, a2, 1
	li	a3, 16
.LBB13_38:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_39 Depth 2
	slli	a4, a0, 6
	add	a4, a4, a1
	addi	a4, a4, 2047
	addi	a4, a4, 65
	mv	a5, s0
	mv	a6, a2
.LBB13_39:                              #   Parent Loop BB13_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a7, -2048(a5)
	lw	t0, -1024(a5)
	lw	t1, 0(a5)
	sw	a7, -2048(a6)
	sw	t0, -1024(a6)
	sw	t1, 0(a6)
	addi	a6, a6, 4
	addi	a5, a5, 4
	bne	a6, a4, .LBB13_39
# %bb.40:                               #   in Loop: Header=BB13_38 Depth=1
	addi	a0, a0, 1
	addi	a2, a2, 64
	addi	s0, s0, 64
	bne	a0, a3, .LBB13_38
.LBB13_41:
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
.LBB13_42:                              # %.preheader5
	li	s4, 0
	lui	s5, 2
	addiw	s1, s5, -996
	add	s1, s0, s1
	addiw	s2, s5, -2020
	add	s2, s0, s2
	lui	s6, %hi(enc_picture)
	lui	s7, %hi(img)
	lui	s8, %hi(si_frame_indicator)
	lui	s9, %hi(sp2_frame_indicator)
	li	s10, 3
	li	s11, 16
	j	.LBB13_44
.LBB13_43:                              #   in Loop: Header=BB13_44 Depth=1
	addi	s4, s4, 1
	addi	s1, s1, 64
	addi	s2, s2, 32
	beq	s4, s11, .LBB13_36
.LBB13_44:                              # =>This Inner Loop Header: Depth=1
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
	bne	a0, s10, .LBB13_43
# %bb.45:                               #   in Loop: Header=BB13_44 Depth=1
	lw	a0, %lo(si_frame_indicator)(s8)
	bnez	a0, .LBB13_43
# %bb.46:                               #   in Loop: Header=BB13_44 Depth=1
	lw	a0, %lo(sp2_frame_indicator)(s9)
	bnez	a0, .LBB13_43
# %bb.47:                               #   in Loop: Header=BB13_44 Depth=1
	lw	a0, 156(s3)
	lui	a1, %hi(lrec)
	ld	a1, %lo(lrec)(a1)
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
	j	.LBB13_43
.LBB13_48:                              # %.preheader
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
	lui	s2, %hi(lrec)
	j	.LBB13_50
.LBB13_49:                              #   in Loop: Header=BB13_50 Depth=1
	addi	s4, s4, 1
	addi	s0, s0, 64
	addi	s1, s1, 32
	beq	s4, s11, .LBB13_19
.LBB13_50:                              # =>This Inner Loop Header: Depth=1
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
	mv	a1, s1
	call	memcpy
	ld	s3, %lo(img)(s7)
	lw	a0, 24(s3)
	bne	a0, s10, .LBB13_49
# %bb.51:                               #   in Loop: Header=BB13_50 Depth=1
	lw	a0, %lo(si_frame_indicator)(s8)
	bnez	a0, .LBB13_49
# %bb.52:                               #   in Loop: Header=BB13_50 Depth=1
	lw	a0, %lo(sp2_frame_indicator)(s9)
	bnez	a0, .LBB13_49
# %bb.53:                               #   in Loop: Header=BB13_50 Depth=1
	lw	a0, 156(s3)
	ld	a1, %lo(lrec)(s2)
	add	a0, s4, a0
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s3)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	li	a2, 64
	mv	a1, s0
	call	memcpy
	ld	s3, %lo(img)(s7)
	j	.LBB13_49
.LBB13_54:
	lw	a0, 80(a0)
	sw	zero, 364(s1)
	sd	zero, 368(s1)
	beqz	a0, .LBB13_58
# %bb.55:
	lui	a0, %hi(rec_resG)
	addi	a0, a0, %lo(rec_resG)
	li	a2, 1024
	li	a1, 0
	call	memset
	j	.LBB13_36
.LBB13_56:
	lw	a0, 80(a0)
	sw	zero, 364(s1)
	sd	zero, 368(s1)
	beqz	a0, .LBB13_64
# %bb.57:
	lui	a0, %hi(rec_resG)
	addi	a0, a0, %lo(rec_resG)
	li	a2, 1024
	li	a1, 0
	call	memset
	j	.LBB13_19
.LBB13_58:                              # %.preheader7
	li	s4, 0
	lui	s5, 2
	addiw	s1, s5, -996
	add	s1, s0, s1
	addiw	s2, s5, -1508
	add	s2, s0, s2
	lui	s6, %hi(enc_picture)
	lui	s7, %hi(img)
	lui	s8, %hi(si_frame_indicator)
	lui	s9, %hi(sp2_frame_indicator)
	li	s10, 3
	li	s11, 16
	j	.LBB13_60
.LBB13_59:                              #   in Loop: Header=BB13_60 Depth=1
	addi	s4, s4, 1
	addi	s1, s1, 64
	addi	s2, s2, 32
	beq	s4, s11, .LBB13_36
.LBB13_60:                              # =>This Inner Loop Header: Depth=1
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
	bne	a0, s10, .LBB13_59
# %bb.61:                               #   in Loop: Header=BB13_60 Depth=1
	lw	a0, %lo(si_frame_indicator)(s8)
	bnez	a0, .LBB13_59
# %bb.62:                               #   in Loop: Header=BB13_60 Depth=1
	lw	a0, %lo(sp2_frame_indicator)(s9)
	bnez	a0, .LBB13_59
# %bb.63:                               #   in Loop: Header=BB13_60 Depth=1
	lw	a0, 156(s3)
	lui	a1, %hi(lrec)
	ld	a1, %lo(lrec)(a1)
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
	j	.LBB13_59
.LBB13_64:                              # %.preheader1
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
	lui	s2, %hi(lrec)
	j	.LBB13_66
.LBB13_65:                              #   in Loop: Header=BB13_66 Depth=1
	addi	s4, s4, 1
	addi	s0, s0, 64
	addi	s1, s1, 32
	beq	s4, s11, .LBB13_19
.LBB13_66:                              # =>This Inner Loop Header: Depth=1
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
	mv	a1, s1
	call	memcpy
	ld	s3, %lo(img)(s7)
	lw	a0, 24(s3)
	bne	a0, s10, .LBB13_65
# %bb.67:                               #   in Loop: Header=BB13_66 Depth=1
	lw	a0, %lo(si_frame_indicator)(s8)
	bnez	a0, .LBB13_65
# %bb.68:                               #   in Loop: Header=BB13_66 Depth=1
	lw	a0, %lo(sp2_frame_indicator)(s9)
	bnez	a0, .LBB13_65
# %bb.69:                               #   in Loop: Header=BB13_66 Depth=1
	lw	a0, 156(s3)
	ld	a1, %lo(lrec)(s2)
	add	a0, s4, a0
	slli	a0, a0, 3
	add	a0, a1, a0
	lw	a1, 152(s3)
	ld	a0, 0(a0)
	slli	a1, a1, 2
	add	a0, a0, a1
	li	a2, 64
	mv	a1, s0
	call	memcpy
	ld	s3, %lo(img)(s7)
	j	.LBB13_65
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
	lui	t2, %hi(img)
	ld	a2, %lo(img)(t2)
	lui	t3, 22
	addiw	a3, t3, -784
	add	a3, a2, a3
	ld	s3, 8(a3)
	ld	ra, 0(a3)
	mv	s0, a0
	beqz	a1, .LBB16_34
# %bb.1:
	li	s6, 0
	addi	s7, s0, 376
	addi	s8, s0, 392
	lui	t4, %hi(enc_picture)
	lui	t5, 2
	addiw	s11, t5, -1712
	li	t6, 2
	li	s10, 1
	li	s9, 4
	j	.LBB16_3
.LBB16_2:                               #   in Loop: Header=BB16_3 Depth=1
	addi	s6, s6, 1
	beq	s6, s9, .LBB16_22
.LBB16_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
	ld	a0, %lo(img)(t2)
	lw	a0, 148(a0)
	li	s2, 0
	li	s1, 0
	andi	s4, s6, 2
	addw	s5, a0, s6
	slli	s5, s5, 3
	j	.LBB16_6
.LBB16_4:                               #   in Loop: Header=BB16_6 Depth=2
	slli	a3, s6, 3
	add	a3, s3, a3
	ld	a3, 0(a3)
	add	a3, a3, s2
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
	add	a5, a5, s5
	ld	a3, 0(a5)
	lh	a5, 0(a0)
	ld	a2, 8(a2)
	slli	a1, a1, 3
	add	a3, a3, a1
	ld	a3, 0(a3)
	add	a2, a2, s5
	ld	a2, 0(a2)
	sh	a5, 0(a3)
	lh	a0, 2(a0)
	add	a1, a2, a1
	ld	a1, 0(a1)
	sh	a0, 2(a3)
	sh	zero, 0(a1)
	sh	zero, 2(a1)
	li	a0, -1
	sb	a0, 0(a4)
.LBB16_5:                               #   in Loop: Header=BB16_6 Depth=2
	addi	s1, s1, 1
	addi	s2, s2, 8
	beq	s1, s9, .LBB16_2
.LBB16_6:                               #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srliw	a0, s1, 1
	ld	a2, %lo(enc_picture)(t4)
	or	a0, a0, s4
	slli	a1, a0, 2
	ld	a6, %lo(img)(t2)
	add	a2, a2, s11
	ld	a3, 0(a2)
	add	a0, s7, a1
	lw	a0, 0(a0)
	lw	a4, 144(a6)
	ld	a5, 0(a3)
	add	a1, s8, a1
	ld	a3, 8(a3)
	lw	a7, 0(a1)
	add	a5, a5, s5
	ld	t0, 0(a5)
	add	a3, a3, s5
	ld	a3, 0(a3)
	add	a1, s1, a4
	add	t0, t0, a1
	lbu	a5, 0(t0)
	add	a4, a3, a1
	lhu	t1, 476(s0)
	lbu	a3, 0(a4)
	beqz	t1, .LBB16_11
# %bb.7:                                #   in Loop: Header=BB16_6 Depth=2
	bne	a7, t6, .LBB16_11
# %bb.8:                                #   in Loop: Header=BB16_6 Depth=2
	lw	a4, 72(s0)
	bne	a4, s10, .LBB16_20
# %bb.9:                                #   in Loop: Header=BB16_6 Depth=2
	beq	t1, s10, .LBB16_18
# %bb.10:                               #   in Loop: Header=BB16_6 Depth=2
	addiw	a3, t3, -760
	j	.LBB16_19
.LBB16_11:                              #   in Loop: Header=BB16_6 Depth=2
	beq	a7, s10, .LBB16_15
# %bb.12:                               #   in Loop: Header=BB16_6 Depth=2
	beqz	a7, .LBB16_4
# %bb.13:                               #   in Loop: Header=BB16_6 Depth=2
	li	a4, -1
	bne	a7, a4, .LBB16_16
# %bb.14:                               #   in Loop: Header=BB16_6 Depth=2
	ld	a0, 24(a2)
	ld	a2, 0(a0)
	ld	a0, 8(a0)
	add	a2, a2, s5
	ld	a2, 0(a2)
	add	a0, a0, s5
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
.LBB16_15:                              #   in Loop: Header=BB16_6 Depth=2
	ld	a2, 24(a2)
	ld	a2, 0(a2)
	add	a2, a2, s5
	ld	a2, 0(a2)
	slli	a1, a1, 3
	add	a2, a2, a1
	ld	a2, 0(a2)
	sh	zero, 0(a2)
	sh	zero, 2(a2)
	li	a2, -1
	sb	a2, 0(t0)
	slli	a2, s6, 3
	add	a2, s3, a2
	ld	a2, 0(a2)
	add	a2, a2, s2
	ld	a2, 0(a2)
	ld	a4, %lo(enc_picture)(t4)
	ld	a2, 8(a2)
	slli	a3, a3, 3
	add	a4, a4, t5
	ld	a4, -1688(a4)
	add	a2, a2, a3
	ld	a2, 0(a2)
	ld	a3, 8(a4)
	slli	a0, a0, 3
	add	a0, a2, a0
	ld	a0, 0(a0)
	add	a3, a3, s5
	ld	a2, 0(a3)
	j	.LBB16_21
.LBB16_16:                              #   in Loop: Header=BB16_6 Depth=2
	beq	a7, t6, .LBB16_20
# %bb.17:                               #   in Loop: Header=BB16_6 Depth=2
	li	a1, 255
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	mv	s9, ra
	call	error
	li	t6, 2
	lui	t5, 2
	lui	t4, %hi(enc_picture)
	lui	t3, 22
	lui	t2, %hi(img)
	mv	ra, s9
	li	s9, 4
	j	.LBB16_5
.LBB16_18:                              #   in Loop: Header=BB16_6 Depth=2
	addiw	a3, t3, -768
.LBB16_19:                              #   in Loop: Header=BB16_6 Depth=2
	add	a3, a6, a3
	ld	s3, 0(a3)
	li	a5, 0
	li	a3, 0
.LBB16_20:                              #   in Loop: Header=BB16_6 Depth=2
	slli	a4, s6, 3
	add	a4, s3, a4
	ld	a4, 0(a4)
	add	a4, a4, s2
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
	add	a6, a6, s5
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
	add	a2, a2, s5
	ld	a2, 0(a2)
	sh	a4, 2(a6)
.LBB16_21:                              #   in Loop: Header=BB16_6 Depth=2
	lh	a3, 0(a0)
	add	a1, a2, a1
	ld	a1, 0(a1)
	sh	a3, 0(a1)
	lh	a0, 2(a0)
	sh	a0, 2(a1)
	j	.LBB16_5
.LBB16_22:
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
.LBB16_23:
	lui	a0, 22
	add	a0, a2, a0
	lw	a0, 108(a0)
	beqz	a0, .LBB16_33
# %bb.24:
	lwu	a2, 36(a2)
	li	a0, 0
	sext.w	a1, a2
	slli	a2, a2, 3
	lui	a3, %hi(rdopt)
	li	a4, 4
	j	.LBB16_26
.LBB16_25:                              #   in Loop: Header=BB16_26 Depth=1
	addi	a0, a0, 1
	beq	a0, a4, .LBB16_33
.LBB16_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_28 Depth 2
                                        #       Child Loop BB16_30 Depth 3
                                        #         Child Loop BB16_32 Depth 4
	li	a5, 0
	slli	a6, a0, 3
	j	.LBB16_28
.LBB16_27:                              #   in Loop: Header=BB16_28 Depth=2
	addi	a5, a5, 1
	beq	a5, a4, .LBB16_25
.LBB16_28:                              #   Parent Loop BB16_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_30 Depth 3
                                        #         Child Loop BB16_32 Depth 4
	li	t4, 0
	slli	a7, a5, 3
	ld	t0, %lo(rdopt)(a3)
	add	t1, s3, a7
	add	t2, ra, a7
	li	t3, 1
	j	.LBB16_30
.LBB16_29:                              #   in Loop: Header=BB16_30 Depth=3
	andi	t5, t3, 1
	li	t4, 1
	li	t3, 0
	beqz	t5, .LBB16_27
.LBB16_30:                              #   Parent Loop BB16_26 Depth=1
                                        #     Parent Loop BB16_28 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_32 Depth 4
	blez	a1, .LBB16_29
# %bb.31:                               #   in Loop: Header=BB16_30 Depth=3
	ld	t5, 0(t1)
	ld	t6, 1656(t0)
	add	t5, t5, a6
	ld	t5, 0(t5)
	slli	s0, t4, 3
	add	t6, t6, a7
	ld	t6, 0(t6)
	add	t5, t5, s0
	ld	s1, 1648(t0)
	ld	t4, 0(t5)
	add	t6, t6, a6
	ld	t5, 0(t2)
	add	s1, s1, a7
	ld	s1, 0(s1)
	ld	t6, 0(t6)
	add	t5, t5, a6
	ld	s2, 0(t5)
	add	s1, s1, a6
	ld	s1, 0(s1)
	add	t6, t6, s0
	ld	t5, 0(t6)
	add	s2, s2, s0
	add	s0, s1, s0
	ld	t6, 0(s0)
	ld	s0, 0(s2)
	add	s1, t6, a2
.LBB16_32:                              #   Parent Loop BB16_26 Depth=1
                                        #     Parent Loop BB16_28 Depth=2
                                        #       Parent Loop BB16_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld	s2, 0(t4)
	ld	s7, 0(s2)
	ld	s5, 0(t5)
	ld	s4, 0(s0)
	lh	s8, 0(s7)
	ld	s9, 0(s5)
	ld	s10, 0(s4)
	ld	s6, 0(t6)
	sh	s8, 0(s9)
	lh	s8, 0(s10)
	ld	s11, 0(s6)
	sh	s8, 0(s11)
	lh	s7, 2(s7)
	sh	s7, 2(s9)
	lh	s7, 2(s10)
	ld	s8, 8(s2)
	sh	s7, 2(s11)
	lh	s7, 0(s8)
	ld	s9, 8(s5)
	ld	s10, 8(s4)
	sh	s7, 0(s9)
	lh	s7, 0(s10)
	ld	s11, 8(s6)
	sh	s7, 0(s11)
	lh	s7, 2(s8)
	sh	s7, 2(s9)
	lh	s7, 2(s10)
	ld	s8, 16(s2)
	sh	s7, 2(s11)
	lh	s7, 0(s8)
	ld	s9, 16(s5)
	ld	s10, 16(s4)
	sh	s7, 0(s9)
	lh	s7, 0(s10)
	ld	s11, 16(s6)
	sh	s7, 0(s11)
	lh	s7, 2(s8)
	sh	s7, 2(s9)
	lh	s7, 2(s10)
	ld	s8, 24(s2)
	sh	s7, 2(s11)
	lh	s7, 0(s8)
	ld	s9, 24(s5)
	ld	s10, 24(s4)
	sh	s7, 0(s9)
	lh	s7, 0(s10)
	ld	s11, 24(s6)
	sh	s7, 0(s11)
	lh	s7, 2(s8)
	sh	s7, 2(s9)
	lh	s7, 2(s10)
	ld	s8, 32(s2)
	sh	s7, 2(s11)
	lh	s7, 0(s8)
	ld	s9, 32(s5)
	ld	s10, 32(s4)
	sh	s7, 0(s9)
	lh	s7, 0(s10)
	ld	s11, 32(s6)
	sh	s7, 0(s11)
	lh	s7, 2(s8)
	sh	s7, 2(s9)
	lh	s7, 2(s10)
	ld	s8, 40(s2)
	sh	s7, 2(s11)
	lh	s7, 0(s8)
	ld	s9, 40(s5)
	ld	s10, 40(s4)
	sh	s7, 0(s9)
	lh	s7, 0(s10)
	ld	s11, 40(s6)
	sh	s7, 0(s11)
	lh	s7, 2(s8)
	sh	s7, 2(s9)
	lh	s7, 2(s10)
	ld	s8, 48(s2)
	sh	s7, 2(s11)
	lh	s7, 0(s8)
	ld	s9, 48(s5)
	ld	s10, 48(s4)
	sh	s7, 0(s9)
	lh	s7, 0(s10)
	ld	s11, 48(s6)
	sh	s7, 0(s11)
	lh	s7, 2(s8)
	sh	s7, 2(s9)
	lh	s7, 2(s10)
	ld	s8, 56(s2)
	sh	s7, 2(s11)
	lh	s7, 0(s8)
	ld	s9, 56(s5)
	ld	s10, 56(s4)
	sh	s7, 0(s9)
	lh	s7, 0(s10)
	ld	s11, 56(s6)
	sh	s7, 0(s11)
	lh	s7, 2(s8)
	sh	s7, 2(s9)
	lh	s7, 2(s10)
	ld	s2, 64(s2)
	sh	s7, 2(s11)
	lh	s7, 0(s2)
	ld	s5, 64(s5)
	ld	s4, 64(s4)
	sh	s7, 0(s5)
	lh	s7, 0(s4)
	ld	s6, 64(s6)
	sh	s7, 0(s6)
	lh	s2, 2(s2)
	sh	s2, 2(s5)
	lh	s2, 2(s4)
	sh	s2, 2(s6)
	addi	t6, t6, 8
	addi	s0, s0, 8
	addi	t5, t5, 8
	addi	t4, t4, 8
	bne	t6, s1, .LBB16_32
	j	.LBB16_29
.LBB16_33:
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
.LBB16_34:
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
	mv	s0, s3
	j	.LBB16_37
.LBB16_35:                              #   in Loop: Header=BB16_37 Depth=1
	ld	s4, 0(a4)
	ld	s4, 0(s4)
	ld	s5, 0(s0)
	add	s4, s4, t1
	ld	s4, 0(s4)
	ld	s6, 16(s5)
	add	s7, s4, a7
	lbu	s7, 0(s7)
	ld	s6, 0(s6)
	add	s2, a5, s2
	slli	s7, s7, 3
	add	s6, s6, s7
	lw	s2, 0(s2)
	ld	s6, 0(s6)
	slli	s2, s2, 3
	add	s6, s6, s2
	ld	s6, 0(s6)
	lh	s7, 0(s6)
	add	s8, s1, t4
	ld	s8, 0(s8)
	sh	s7, 0(s8)
	lh	s6, 2(s6)
	ld	s5, 24(s5)
	sh	s6, 2(s8)
	add	s4, s4, t0
	lbu	s4, 0(s4)
	ld	s5, 0(s5)
	slli	s4, s4, 3
	add	s4, s5, s4
	ld	s4, 0(s4)
	add	s2, s4, s2
	ld	s2, 0(s2)
	lh	s4, 0(s2)
	add	s1, s1, t5
	ld	s1, 0(s1)
	sh	s4, 0(s1)
	lhu	s2, 2(s2)
.LBB16_36:                              #   in Loop: Header=BB16_37 Depth=1
	sh	s2, 2(s1)
	addi	a0, a0, 1
	addi	s0, s0, 8
	addi	t1, t1, 8
	beq	a0, t6, .LBB16_23
.LBB16_37:                              # =>This Inner Loop Header: Depth=1
	andi	s2, a0, 2
	slli	s1, s2, 2
	add	s4, a3, s1
	lw	s4, 0(s4)
	bltz	s4, .LBB16_39
# %bb.38:                               #   in Loop: Header=BB16_37 Depth=1
	ld	s4, 0(a4)
	ld	s4, 0(s4)
	add	s4, s4, t1
	ld	s5, 0(s0)
	ld	s4, 0(s4)
	ld	s5, 0(s5)
	add	s4, s4, a1
	lbu	s4, 0(s4)
	add	s6, a5, s1
	ld	s1, 0(s5)
	lw	s5, 0(s6)
	slli	s4, s4, 3
	ld	s7, 24(a4)
	add	s1, s1, s4
	ld	s1, 0(s1)
	ld	s4, 0(s7)
	slli	s5, s5, 3
	add	s1, s1, s5
	ld	s5, 0(s1)
	add	s4, s4, t1
	ld	s1, 0(s4)
	lh	s4, 0(s5)
	add	s7, s1, t2
	ld	s8, 0(a4)
	ld	s7, 0(s7)
	ld	s8, 0(s8)
	sh	s4, 0(s7)
	lh	s4, 2(s5)
	ld	s5, 0(s0)
	add	s8, s8, t1
	ld	s8, 0(s8)
	ld	s5, 8(s5)
	sh	s4, 2(s7)
	add	s8, s8, a6
	lbu	s4, 0(s8)
	ld	s5, 0(s5)
	lw	s6, 0(s6)
	slli	s4, s4, 3
	add	s4, s5, s4
	ld	s4, 0(s4)
	slli	s6, s6, 3
	add	s4, s4, s6
	ld	s5, 0(s4)
	lh	s6, 0(s5)
	add	s4, s1, t3
	ld	s4, 0(s4)
	sh	s6, 0(s4)
	lhu	s5, 2(s5)
	j	.LBB16_40
.LBB16_39:                              #   in Loop: Header=BB16_37 Depth=1
	ld	s1, 24(a4)
	ld	s1, 0(s1)
	add	s1, s1, t1
	ld	s1, 0(s1)
	add	s4, s1, t2
	ld	s6, 0(s4)
	ld	s4, 8(s4)
	li	s5, 0
	sh	zero, 0(s6)
	sh	zero, 2(s6)
	sh	zero, 0(s4)
.LBB16_40:                              #   in Loop: Header=BB16_37 Depth=1
	addi	s2, s2, 1
	slli	s2, s2, 2
	add	s6, a3, s2
	lw	s6, 0(s6)
	sh	s5, 2(s4)
	bgez	s6, .LBB16_35
# %bb.41:                               #   in Loop: Header=BB16_37 Depth=1
	add	s2, s1, t4
	ld	s4, 0(s2)
	add	s1, s1, t5
	ld	s1, 0(s1)
	li	s2, 0
	sh	zero, 0(s4)
	sh	zero, 2(s4)
	sh	zero, 0(s1)
	j	.LBB16_36
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
	addi	sp, sp, -240
	sd	ra, 232(sp)                     # 8-byte Folded Spill
	sd	s0, 224(sp)                     # 8-byte Folded Spill
	sd	s1, 216(sp)                     # 8-byte Folded Spill
	sd	s2, 208(sp)                     # 8-byte Folded Spill
	sd	s3, 200(sp)                     # 8-byte Folded Spill
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	sd	s5, 184(sp)                     # 8-byte Folded Spill
	sd	s6, 176(sp)                     # 8-byte Folded Spill
	sd	s7, 168(sp)                     # 8-byte Folded Spill
	sd	s8, 160(sp)                     # 8-byte Folded Spill
	sd	s9, 152(sp)                     # 8-byte Folded Spill
	sd	s10, 144(sp)                    # 8-byte Folded Spill
	sd	s11, 136(sp)                    # 8-byte Folded Spill
	fsd	fs0, 128(sp)                    # 8-byte Folded Spill
	lui	s0, %hi(img)
	ld	a4, %lo(img)(s0)
	mv	s10, a2
	mv	s11, a1
	mv	s4, a0
	fmv.d	fs0, fa0
	lw	a0, 12(a4)
	sw	a3, 124(sp)
	sw	zero, 120(sp)
	sw	zero, 116(sp)
	call	FmoGetPreviousMBNr
	ld	a1, %lo(img)(s0)
	lui	a2, 8
	add	a2, a1, a2
	ld	s2, -1192(a2)
	lw	s5, 24(a1)
	lw	s1, 12(a1)
	li	a1, 2
	mv	s3, a0
	bne	s5, a1, .LBB17_13
# %bb.1:
	mv	a0, s4
	call	SetModesAndRefframeForBlocks
	ld	a0, %lo(img)(s0)
	li	s6, 0
	seqz	s0, s4
.LBB17_2:
	lui	a1, 22
	addiw	a1, a1, -776
	add	a1, a0, a1
	lw	a2, 884(a1)
	li	a3, 528
	mul	a3, s1, a3
	add	s8, s2, a3
	beqz	a2, .LBB17_5
# %bb.3:
	lw	a2, 424(s8)
	bnez	a2, .LBB17_5
# %bb.4:
	lw	a2, 24(a0)
	or	a2, a2, s4
	beqz	a2, .LBB17_34
.LBB17_5:
	lw	a0, 876(a1)
	beqz	a0, .LBB17_8
# %bb.6:                                # %.preheader7
	lui	a0, 5
	addiw	a0, a0, 1864
	lui	a1, 4
	addiw	a1, a1, 1864
	lui	a2, 3
	addiw	a2, a2, 1864
	lui	a3, %hi(img)
	lui	a4, 6
	addiw	a4, a4, -1208
.LBB17_7:                               # =>This Inner Loop Header: Depth=1
	ld	a5, %lo(img)(a3)
	add	a5, a5, a2
	sd	zero, 56(a5)
	sd	zero, 48(a5)
	sd	zero, 40(a5)
	sd	zero, 32(a5)
	sd	zero, 24(a5)
	sd	zero, 16(a5)
	sd	zero, 8(a5)
	sd	zero, 0(a5)
	ld	a5, %lo(img)(a3)
	add	a5, a5, a1
	sd	zero, 56(a5)
	sd	zero, 48(a5)
	sd	zero, 40(a5)
	sd	zero, 32(a5)
	sd	zero, 24(a5)
	sd	zero, 16(a5)
	sd	zero, 8(a5)
	sd	zero, 0(a5)
	ld	a5, %lo(img)(a3)
	add	a5, a5, a0
	sd	zero, -968(a5)
	sd	zero, -976(a5)
	sd	zero, -984(a5)
	sd	zero, -992(a5)
	sd	zero, -1000(a5)
	sd	zero, -1008(a5)
	sd	zero, -1016(a5)
	sd	zero, -1024(a5)
	ld	a5, %lo(img)(a3)
	add	a5, a5, a0
	sd	zero, 56(a5)
	sd	zero, 48(a5)
	sd	zero, 40(a5)
	sd	zero, 32(a5)
	sd	zero, 24(a5)
	sd	zero, 16(a5)
	sd	zero, 8(a5)
	sd	zero, 0(a5)
	addi	a0, a0, 64
	addi	a1, a1, 64
	addi	a2, a2, 64
	bne	a0, a4, .LBB17_7
.LBB17_8:
	li	a0, 7
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 56(sp)                      # 8-byte Folded Spill
	sd	s8, 72(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	blt	a0, s4, .LBB17_31
# %bb.9:
	call	LumaResidualCoding
	beqz	s0, .LBB17_54
# %bb.10:
	lw	a0, 364(s8)
	beqz	a0, .LBB17_37
# %bb.11:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a2, 24(a0)
	li	a1, 1
	beq	a2, a1, .LBB17_12
	j	.LBB17_109
.LBB17_12:
	lui	a2, 22
	add	a0, a0, a2
	lw	a0, 96(a0)
	bne	a0, a1, .LBB17_54
	j	.LBB17_109
.LBB17_13:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	addi	a0, a0, -1
	snez	s6, a0
	mv	a0, s4
	call	SetModesAndRefframeForBlocks
	ld	a0, %lo(img)(s0)
	seqz	s0, s4
	bnez	s4, .LBB17_2
# %bb.14:
	li	a1, 1
	bne	s5, a1, .LBB17_2
# %bb.15:
	lw	a1, 156(a0)
	lui	a2, %hi(direct_pdir)
	ld	a2, %lo(direct_pdir)(a2)
	lw	a5, 152(a0)
	srai	a1, a1, 2
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a6, 0(a1)
	srai	a5, a5, 2
	slli	a2, a5, 1
	add	a3, a6, a2
	lh	a3, 0(a3)
	bgez	a3, .LBB17_16
	j	.LBB17_109
.LBB17_16:
	addi	a3, a5, 1
	slli	a3, a3, 1
	add	a4, a6, a3
	lh	a4, 0(a4)
	bgez	a4, .LBB17_17
	j	.LBB17_109
.LBB17_17:
	addi	a4, a5, 2
	slli	a4, a4, 1
	add	a7, a6, a4
	lh	a7, 0(a7)
	bgez	a7, .LBB17_18
	j	.LBB17_109
.LBB17_18:
	addi	a5, a5, 3
	slli	a5, a5, 1
	add	a6, a6, a5
	lh	a6, 0(a6)
	bgez	a6, .LBB17_19
	j	.LBB17_109
.LBB17_19:
	ld	a6, 8(a1)
	add	a7, a6, a2
	lh	a7, 0(a7)
	bgez	a7, .LBB17_20
	j	.LBB17_109
.LBB17_20:
	add	a7, a6, a3
	lh	a7, 0(a7)
	bgez	a7, .LBB17_21
	j	.LBB17_109
.LBB17_21:
	add	a7, a6, a4
	lh	a7, 0(a7)
	bgez	a7, .LBB17_22
	j	.LBB17_109
.LBB17_22:
	add	a6, a6, a5
	lh	a6, 0(a6)
	bgez	a6, .LBB17_23
	j	.LBB17_109
.LBB17_23:
	ld	a6, 16(a1)
	add	a7, a6, a2
	lh	a7, 0(a7)
	bgez	a7, .LBB17_24
	j	.LBB17_109
.LBB17_24:
	add	a7, a6, a3
	lh	a7, 0(a7)
	bgez	a7, .LBB17_25
	j	.LBB17_109
.LBB17_25:
	add	a7, a6, a4
	lh	a7, 0(a7)
	bgez	a7, .LBB17_26
	j	.LBB17_109
.LBB17_26:
	add	a6, a6, a5
	lh	a6, 0(a6)
	bgez	a6, .LBB17_27
	j	.LBB17_109
.LBB17_27:
	ld	a1, 24(a1)
	add	a2, a1, a2
	lh	a2, 0(a2)
	bgez	a2, .LBB17_28
	j	.LBB17_109
.LBB17_28:
	add	a3, a1, a3
	lh	a2, 0(a3)
	bgez	a2, .LBB17_29
	j	.LBB17_109
.LBB17_29:
	add	a4, a1, a4
	lh	a2, 0(a4)
	bgez	a2, .LBB17_30
	j	.LBB17_109
.LBB17_30:
	add	a1, a1, a5
	lh	a1, 0(a1)
	li	s0, 1
	bgez	a1, .LBB17_2
	j	.LBB17_109
.LBB17_31:
	addi	a0, s4, -8
	li	a1, 6
	bltu	a1, a0, .LBB17_54
# %bb.32:
	slli	a0, a0, 2
	lui	a1, %hi(.LJTI17_0)
	addi	a1, a1, %lo(.LJTI17_0)
	add	a0, a0, a1
	lw	a0, 0(a0)
	jr	a0
.LBB17_33:
	mv	a0, s8
	call	SetCoeffAndReconstruction8x8
	j	.LBB17_54
.LBB17_34:
	ld	a2, 0(a1)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	lhu	a3, 0(a2)
	lui	a4, 1048574
	add	a3, a3, a4
	srli	a3, a3, 14
	li	a4, 3
	bltu	a3, a4, .LBB17_109
# %bb.35:
	lw	a3, 8(a0)
	lh	a0, 2(a2)
	li	a2, 24
	mul	a2, a3, a2
	lui	a3, %hi(LEVELMVLIMIT)
	addi	a3, a3, %lo(LEVELMVLIMIT)
	add	a2, a3, a2
	lw	a3, 16(a2)
	blt	a0, a3, .LBB17_109
# %bb.36:
	lw	a2, 20(a2)
	bge	a2, a0, .LBB17_5
	j	.LBB17_109
.LBB17_37:
	lw	a0, 468(s8)
	li	a1, 1
	bne	a0, a1, .LBB17_54
	j	.LBB17_109
.LBB17_38:
	addi	a1, sp, 124
	mv	a0, s8
	call	Intra16x16_Mode_Decision
	j	.LBB17_54
.LBB17_39:
	addi	a0, sp, 108
	fmv.d	fa0, fs0
	call	Mode_Decision_for_Intra4x4Macroblock
	j	.LBB17_41
.LBB17_40:
	addi	a0, sp, 108
	fmv.d	fa0, fs0
	call	Mode_Decision_for_new_Intra8x8Macroblock
.LBB17_41:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 460(a1)
	sw	a0, 364(s8)
	beqz	a1, .LBB17_54
# %bb.42:
	lui	a0, %hi(cbp_chroma_block)
	addi	a1, a0, %lo(cbp_chroma_block)
	lw	a2, 120(a1)
	lw	a3, 124(a1)
	lw	a4, 112(a1)
	lw	a5, 116(a1)
	lw	a6, 104(a1)
	or	a2, a3, a2
	lw	a3, 108(a1)
	or	a4, a5, a4
	lw	a5, 100(a1)
	or	a2, a2, a4
	lw	a4, 92(a1)
	or	a3, a3, a6
	lw	a6, 96(a1)
	or	a3, a3, a5
	lw	a5, 88(a1)
	or	a2, a2, a3
	lw	a3, 84(a1)
	or	a4, a6, a4
	lw	a6, 76(a1)
	or	a4, a4, a5
	lw	a5, 80(a1)
	or	a3, a4, a3
	lw	a4, 72(a1)
	or	a2, a2, a3
	lw	a3, 68(a1)
	or	a5, a5, a6
	lw	a6, 64(a1)
	or	a4, a5, a4
	lw	a5, 56(a1)
	or	a3, a4, a3
	lw	a4, 60(a1)
	or	a3, a3, a6
	lw	a6, 52(a1)
	or	a2, a2, a3
	lw	a3, 48(a1)
	or	a4, a4, a5
	lw	a5, 44(a1)
	or	a4, a4, a6
	lw	a6, 40(a1)
	or	a3, a4, a3
	lw	a4, 32(a1)
	or	a3, a3, a5
	lw	a5, 36(a1)
	or	a3, a3, a6
	lw	a6, 28(a1)
	or	a2, a2, a3
	lw	a3, 24(a1)
	or	a4, a5, a4
	lw	a5, 20(a1)
	or	a4, a4, a6
	lw	a6, 16(a1)
	or	a3, a4, a3
	or	a3, a3, a5
	lw	a4, 12(a1)
	or	a3, a3, a6
	lw	a5, 4(a1)
	lw	a1, 8(a1)
	lw	a0, %lo(cbp_chroma_block)(a0)
	or	a3, a3, a4
	or	a2, a2, a3
	or	a1, a1, a5
	or	a0, a1, a0
	or	a0, a2, a0
	snez	a1, a0
	slli	a1, a1, 1
	li	a0, 0
	call	dct_chroma_DC
	mv	a1, a0
	li	a0, 1
	call	dct_chroma_DC
	lw	a1, 364(s8)
	slli	a0, a0, 4
	add	a0, a1, a0
	sw	a0, 364(s8)
	j	.LBB17_54
.LBB17_43:
	mv	ra, s2
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	addiw	a1, a1, 436
	add	a1, a0, a1
	lw	a2, 172(a0)
	lw	a3, 156(a0)
	lw	a5, 168(a0)
	lui	a4, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a4)
	lui	a6, %hi(imgY_org)
	ld	a6, %lo(imgY_org)(a6)
	lui	a7, 2
	add	a4, a4, a7
	ld	a4, -1768(a4)
	slli	a2, a2, 3
	add	a2, a6, a2
	slli	a3, a3, 3
	add	a3, a4, a3
	addi	a6, a5, 1
	addi	a7, a5, 2
	addi	t0, a5, 3
	addi	t1, a5, 4
	addi	t2, a5, 5
	addi	t3, a5, 6
	addi	t4, a5, 7
	addi	t5, a5, 8
	addi	t6, a5, 9
	addi	s0, a5, 10
	addi	s1, a5, 11
	addi	s2, a5, 12
	addi	s3, a5, 13
	addi	s4, a5, 14
	addi	s5, a5, 15
	addi	a4, a2, 128
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
	slli	s0, s0, 1
	slli	s1, s1, 1
	slli	s2, s2, 1
	slli	s3, s3, 1
	slli	s4, s4, 1
	slli	s5, s5, 1
.LBB17_44:                              # =>This Inner Loop Header: Depth=1
	ld	s7, 0(a2)
	ld	s6, 0(a3)
	add	s8, s7, a5
	lh	s8, 0(s8)
	add	s9, s6, a5
	sh	s8, 0(s9)
	add	s8, s7, a6
	lh	s8, 0(s8)
	add	s9, s6, a6
	sh	s8, 0(s9)
	add	s8, s7, a7
	lh	s8, 0(s8)
	add	s9, s6, a7
	sh	s8, 0(s9)
	add	s8, s7, t0
	lh	s8, 0(s8)
	add	s9, s6, t0
	sh	s8, 0(s9)
	add	s8, s7, t1
	lh	s8, 0(s8)
	add	s9, s6, t1
	sh	s8, 0(s9)
	add	s8, s7, t2
	lh	s8, 0(s8)
	add	s9, s6, t2
	sh	s8, 0(s9)
	add	s8, s7, t3
	lh	s8, 0(s8)
	add	s9, s6, t3
	sh	s8, 0(s9)
	add	s8, s7, t4
	lh	s8, 0(s8)
	add	s9, s6, t4
	sh	s8, 0(s9)
	add	s8, s7, t5
	lh	s8, 0(s8)
	add	s9, s6, t5
	sh	s8, 0(s9)
	add	s8, s7, t6
	lh	s8, 0(s8)
	add	s9, s6, t6
	sh	s8, 0(s9)
	add	s8, s7, s0
	lh	s8, 0(s8)
	add	s9, s6, s0
	sh	s8, 0(s9)
	add	s8, s7, s1
	lh	s8, 0(s8)
	add	s9, s6, s1
	sh	s8, 0(s9)
	add	s8, s7, s2
	lh	s8, 0(s8)
	add	s9, s6, s2
	sh	s8, 0(s9)
	add	s8, s7, s3
	lh	s8, 0(s8)
	add	s9, s6, s3
	sh	s8, 0(s9)
	add	s8, s7, s4
	lh	s8, 0(s8)
	add	s9, s6, s4
	sh	s8, 0(s9)
	add	s7, s7, s5
	lh	s7, 0(s7)
	add	s6, s6, s5
	sh	s7, 0(s6)
	addi	a2, a2, 8
	addi	a3, a3, 8
	bne	a2, a4, .LBB17_44
# %bb.45:
	lw	a2, 0(a1)
	mv	s2, ra
	ld	s4, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 72(sp)                      # 8-byte Folded Reload
	beqz	a2, .LBB17_54
# %bb.46:
	lw	a2, 12(a1)
	blez	a2, .LBB17_54
# %bb.47:
	lw	a7, 176(a0)
	lw	a1, 8(a1)
	addw	a3, a1, a7
	lui	a5, %hi(imgUV_org)
	lui	a4, %hi(enc_picture)
	ld	a6, %lo(enc_picture)(a4)
	lui	a4, 2
	addi	t0, a7, 1
	addiw	t1, a4, -1728
	blt	a3, t0, .LBB17_49
# %bb.48:
	mv	t0, a3
.LBB17_49:
	li	a3, 0
	lw	a4, 180(a0)
	lw	a0, 164(a0)
	ld	a5, %lo(imgUV_org)(a5)
	add	a6, a6, t1
	slli	a7, a7, 1
	slli	t0, t0, 1
	j	.LBB17_51
.LBB17_50:                              #   in Loop: Header=BB17_51 Depth=1
	addi	a3, a3, 1
	beq	a3, a2, .LBB17_54
.LBB17_51:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_53 Depth 2
	blez	a1, .LBB17_50
# %bb.52:                               #   in Loop: Header=BB17_51 Depth=1
	add	t1, a3, a0
	ld	t2, 0(a5)
	ld	t3, 0(a6)
	add	t4, a3, a4
	slli	t4, t4, 3
	add	t2, t2, t4
	ld	t5, 0(t3)
	ld	t6, 8(a5)
	ld	t3, 8(t3)
	slli	t1, t1, 3
	add	t5, t5, t1
	add	t4, t6, t4
	add	t1, t3, t1
	ld	t6, 0(t1)
	ld	t3, 0(t4)
	ld	t4, 0(t5)
	ld	t5, 0(t2)
	add	t1, t6, a7
	add	t2, t3, a7
	add	t3, t4, a7
	add	t4, t5, a7
	add	t5, t6, t0
.LBB17_53:                              #   Parent Loop BB17_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	t6, 0(t4)
	sh	t6, 0(t3)
	lh	t6, 0(t2)
	sh	t6, 0(t1)
	addi	t1, t1, 2
	addi	t2, t2, 2
	addi	t3, t3, 2
	addi	t4, t4, 2
	bne	t1, t5, .LBB17_53
	j	.LBB17_50
.LBB17_54:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a1, 1089(a1)
	li	a2, 3
	bne	a1, a2, .LBB17_57
# %bb.55:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a1, 24(a1)
	li	a2, 1
	beq	a1, a2, .LBB17_57
# %bb.56:
	lw	a0, 124(sp)
	addi	a1, s4, -10
	seqz	a1, a1
	addi	a1, a1, -1
	or	a0, a1, a0
	call	compute_residue_mb
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB17_57:
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB17_60
# %bb.58:
	lui	a0, %hi(img)
	ld	s0, %lo(img)(a0)
	li	a0, 10
	bne	s4, a0, .LBB17_61
# %bb.59:
	lw	a0, 124(sp)
	slli	a0, a0, 9
	add	a0, s0, a0
	lui	a1, 1
	addiw	a1, a1, 696
	add	a1, a0, a1
	j	.LBB17_62
.LBB17_60:
	lui	a0, %hi(img)
	ld	s0, %lo(img)(a0)
	j	.LBB17_63
.LBB17_61:
	lui	a0, 3
	addiw	a1, a0, 312
	add	a1, s0, a1
.LBB17_62:
	lui	a0, %hi(pred)
	addi	a0, a0, %lo(pred)
	li	a2, 512
	call	memcpy
.LBB17_63:
	lui	a0, 22
	addiw	a0, a0, 84
	add	a0, s0, a0
	sw	zero, 0(a0)
	sw	zero, 108(sp)
	lw	a1, 376(a0)
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	beqz	a1, .LBB17_67
# %bb.64:
	li	a1, 9
	beq	s4, a1, .LBB17_73
# %bb.65:
	li	a1, 10
	beq	s4, a1, .LBB17_70
# %bb.66:
	li	a1, 13
	beq	s4, a1, .LBB17_73
.LBB17_67:
	lw	a0, 352(a0)
	beqz	a0, .LBB17_69
# %bb.68:
	addi	a0, sp, 108
	call	ChromaResidualCoding
	lui	a0, %hi(img)
	ld	s0, %lo(img)(a0)
.LBB17_69:
	li	a0, 10
	bne	s4, a0, .LBB17_73
.LBB17_70:
	lw	a1, 364(s8)
	lw	a0, 124(sp)
	andi	a3, a1, 15
	li	a2, 1
	beqz	a3, .LBB17_72
# %bb.71:
	li	a2, 13
.LBB17_72:
	srli	a1, a1, 2
	andi	a1, a1, 12
	add	a0, a0, a2
	add	a0, a1, a0
	lui	a1, 22
	add	a1, s0, a1
	sw	a0, 84(a1)
.LBB17_73:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 1089(a0)
	li	a2, 3
	sd	s10, 32(sp)                     # 8-byte Folded Spill
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	bne	a1, a2, .LBB17_75
# %bb.74:
	lw	a1, 24(s0)
	li	a2, 1
	bne	a1, a2, .LBB17_91
.LBB17_75:
	li	s10, 0
	lw	a1, 172(s0)
	lw	a2, 156(s0)
	lw	a4, 168(s0)
	lui	a0, 22
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	add	a0, s0, a0
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
	addi	s0, a4, 11
	addi	s1, a4, 12
	addi	s2, a4, 13
	addi	s4, a4, 14
	addi	s5, a4, 15
	addi	a3, a1, 128
	sd	a3, 96(sp)                      # 8-byte Folded Spill
	slli	a4, a4, 1
	sd	a4, 88(sp)                      # 8-byte Folded Spill
	slli	a5, a5, 1
	slli	a6, a6, 1
	slli	a7, a7, 1
	slli	t0, t0, 1
	slli	a3, t1, 1
	slli	t2, t2, 1
	slli	t3, t3, 1
	slli	t4, t4, 1
	slli	t5, t5, 1
	slli	t6, t6, 1
	slli	s0, s0, 1
	slli	s1, s1, 1
	slli	s2, s2, 1
	slli	s4, s4, 1
	slli	s5, s5, 1
.LBB17_76:                              # =>This Inner Loop Header: Depth=1
	ld	s6, 0(a1)
	ld	a4, 0(a2)
	ld	s8, 88(sp)                      # 8-byte Folded Reload
	add	s7, s6, s8
	lhu	s7, 0(s7)
	add	s8, a4, s8
	lhu	s8, 0(s8)
	sub	s7, s7, s8
	slli	s7, s7, 2
	add	s7, a0, s7
	lw	s7, 0(s7)
	add	s8, s6, a5
	lhu	s8, 0(s8)
	add	s9, a4, a5
	lhu	s9, 0(s9)
	add	s7, s10, s7
	sub	s8, s8, s9
	add	s9, s6, a6
	lhu	s9, 0(s9)
	add	s10, a4, a6
	lhu	s10, 0(s10)
	slli	s8, s8, 2
	add	s8, a0, s8
	lw	s8, 0(s8)
	sub	s9, s9, s10
	add	s10, s6, a7
	lhu	s10, 0(s10)
	add	s11, a4, a7
	lhu	s11, 0(s11)
	slli	s9, s9, 2
	add	s9, a0, s9
	lw	s9, 0(s9)
	sub	s10, s10, s11
	add	s11, s6, t0
	lhu	s11, 0(s11)
	add	ra, a4, t0
	lhu	ra, 0(ra)
	slli	s10, s10, 2
	add	s10, a0, s10
	lw	s10, 0(s10)
	sub	s11, s11, ra
	slli	s11, s11, 2
	add	s11, a0, s11
	lw	s11, 0(s11)
	add	ra, s6, a3
	lhu	ra, 0(ra)
	add	t1, a4, a3
	lhu	t1, 0(t1)
	add	s8, s8, s9
	add	s7, s7, s8
	add	s10, s10, s11
	sub	t1, ra, t1
	add	s8, s6, t2
	lhu	s8, 0(s8)
	add	s9, a4, t2
	lhu	s9, 0(s9)
	slli	t1, t1, 2
	add	t1, a0, t1
	lw	t1, 0(t1)
	sub	s8, s8, s9
	add	s9, s6, t3
	lhu	s9, 0(s9)
	add	s11, a4, t3
	lhu	s11, 0(s11)
	slli	s8, s8, 2
	add	s8, a0, s8
	lw	s8, 0(s8)
	sub	s9, s9, s11
	slli	s9, s9, 2
	add	s9, a0, s9
	lw	s9, 0(s9)
	add	s11, s6, t4
	lhu	s11, 0(s11)
	add	ra, a4, t4
	lhu	ra, 0(ra)
	add	t1, s10, t1
	add	t1, s7, t1
	add	s8, s8, s9
	sub	s7, s11, ra
	add	s9, s6, t5
	lhu	s9, 0(s9)
	add	s10, a4, t5
	lhu	s10, 0(s10)
	slli	s7, s7, 2
	add	s7, a0, s7
	lw	s7, 0(s7)
	sub	s9, s9, s10
	slli	s9, s9, 2
	add	s9, a0, s9
	lw	s9, 0(s9)
	add	s10, s6, t6
	lhu	s10, 0(s10)
	add	s11, a4, t6
	lhu	s11, 0(s11)
	add	s7, s8, s7
	add	s7, s7, s9
	add	s7, t1, s7
	sub	t1, s10, s11
	add	s8, s6, s0
	lhu	s8, 0(s8)
	add	s9, a4, s0
	lhu	s9, 0(s9)
	slli	t1, t1, 2
	add	t1, a0, t1
	lw	t1, 0(t1)
	sub	s8, s8, s9
	add	s9, s6, s1
	lhu	s9, 0(s9)
	add	s10, a4, s1
	lhu	s10, 0(s10)
	slli	s8, s8, 2
	add	s8, a0, s8
	lw	s8, 0(s8)
	sub	s9, s9, s10
	slli	s9, s9, 2
	add	s9, a0, s9
	lw	s9, 0(s9)
	add	s10, s6, s2
	lhu	s10, 0(s10)
	add	s11, a4, s2
	lhu	s11, 0(s11)
	add	ra, s6, s4
	lhu	ra, 0(ra)
	add	s3, a4, s4
	lhu	s3, 0(s3)
	add	t1, t1, s8
	add	t1, t1, s9
	sub	s8, s10, s11
	sub	s3, ra, s3
	slli	s8, s8, 2
	add	s8, a0, s8
	lw	s8, 0(s8)
	add	s6, s6, s5
	lhu	s6, 0(s6)
	add	a4, a4, s5
	lhu	a4, 0(a4)
	slli	s3, s3, 2
	add	s3, a0, s3
	lw	s3, 0(s3)
	sub	a4, s6, a4
	slli	a4, a4, 2
	add	a4, a0, a4
	lw	s10, 0(a4)
	add	t1, t1, s8
	add	t1, t1, s3
	add	t1, s7, t1
	add	s10, t1, s10
	addi	a1, a1, 8
	addi	a2, a2, 8
	ld	a4, 96(sp)                      # 8-byte Folded Reload
	bne	a1, a4, .LBB17_76
# %bb.77:
	ld	s8, 72(sp)                      # 8-byte Folded Reload
.LBB17_78:
	lui	a0, 22
	addiw	a0, a0, -928
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	add	a0, a5, a0
	lw	a1, 1364(a0)
	ld	s6, 40(sp)                      # 8-byte Folded Reload
	beqz	a1, .LBB17_87
# %bb.79:
	lw	a1, 1376(a0)
	blez	a1, .LBB17_87
# %bb.80:
	lw	t0, 176(a5)
	lw	a2, 1372(a0)
	addw	a3, a2, t0
	lui	a6, %hi(imgUV_org)
	lui	a4, %hi(enc_picture)
	ld	a7, %lo(enc_picture)(a4)
	lui	a4, 2
	addi	t1, t0, 1
	addiw	t2, a4, -1728
	blt	a3, t1, .LBB17_82
# %bb.81:
	mv	t1, a3
.LBB17_82:
	li	a3, 0
	lw	a4, 180(a5)
	lw	a5, 164(a5)
	ld	a6, %lo(imgUV_org)(a6)
	add	a7, a7, t2
	slli	t0, t0, 1
	slli	t1, t1, 1
	j	.LBB17_84
.LBB17_83:                              #   in Loop: Header=BB17_84 Depth=1
	addi	a3, a3, 1
	beq	a3, a1, .LBB17_87
.LBB17_84:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_86 Depth 2
	blez	a2, .LBB17_83
# %bb.85:                               #   in Loop: Header=BB17_84 Depth=1
	add	t3, a3, a5
	add	t4, a3, a4
	ld	t5, 0(a6)
	ld	t6, 0(a7)
	ld	t2, 0(a0)
	slli	t4, t4, 3
	add	t5, t5, t4
	ld	s0, 0(t6)
	ld	s1, 8(a6)
	ld	t6, 8(t6)
	slli	t3, t3, 3
	add	s0, s0, t3
	add	t4, s1, t4
	add	t3, t6, t3
	ld	s1, 0(t3)
	ld	t4, 0(t4)
	ld	t6, 0(s0)
	ld	s0, 0(t5)
	add	t3, s1, t0
	add	t4, t4, t0
	add	t5, t6, t0
	add	t6, s0, t0
	add	s0, s1, t1
.LBB17_86:                              #   Parent Loop BB17_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	s1, 0(t6)
	lhu	s2, 0(t5)
	lhu	s3, 0(t4)
	lhu	s4, 0(t3)
	sub	s1, s1, s2
	sub	s2, s3, s4
	slli	s1, s1, 2
	add	s1, t2, s1
	lw	s1, 0(s1)
	slli	s2, s2, 2
	add	s2, t2, s2
	lw	s2, 0(s2)
	add	s1, s10, s1
	add	s10, s1, s2
	addi	t3, t3, 2
	addi	t4, t4, 2
	addi	t5, t5, 2
	addi	t6, t6, 2
	bne	t3, s0, .LBB17_86
	j	.LBB17_83
.LBB17_87:
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	call	store_coding_state
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB17_90
# %bb.88:
	lw	a0, 72(s8)
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB17_97
.LBB17_89:
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lw	s5, 120(a0)
	li	a0, 1
	addi	a1, sp, 116
	call	writeMBLayer
	lw	a1, 108(sp)
	sw	a0, 120(sp)
	addi	a2, sp, 112
	addi	a3, sp, 108
	mv	a0, s5
	call	ue_linfo
	lw	a0, 112(sp)
	lw	a1, 120(sp)
	ld	a2, %lo(img)(s0)
	subw	a1, a1, a0
	sw	a1, 120(sp)
	sw	s5, 120(a2)
	j	.LBB17_100
.LBB17_90:
	li	a0, 1
	addi	a1, sp, 116
	call	writeMBLayer
	sw	a0, 120(sp)
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	j	.LBB17_100
.LBB17_91:
	lw	a0, 1529(a0)
	blez	a0, .LBB17_129
# %bb.92:                               # %.preheader
	li	s0, 0
	li	s7, 0
.LBB17_93:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_94 Depth 2
	sext.w	a0, s0
	mv	a1, s8
	call	decode_one_mb
	lui	a0, %hi(img)
	ld	a3, %lo(img)(a0)
	lui	a0, %hi(decs)
	ld	a1, %lo(decs)(a0)
	lw	a4, 168(a3)
	lui	a0, 22
	add	a0, a3, a0
	ld	a0, -928(a0)
	ld	a1, 8(a1)
	lui	a2, %hi(imgY_org)
	ld	a2, %lo(imgY_org)(a2)
	sd	a3, 64(sp)                      # 8-byte Folded Spill
	lw	a3, 172(a3)
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	slli	a5, s0, 3
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
	addi	s1, a4, 10
	addi	ra, a4, 11
	addi	s6, a4, 12
	addi	s3, a4, 13
	addi	s5, a4, 14
	addi	s4, a4, 15
	slli	a3, a3, 3
	add	a1, a2, a3
	add	a2, a5, a3
	addi	a3, a1, 128
	sd	a3, 96(sp)                      # 8-byte Folded Spill
	slli	a4, a4, 1
	sd	a4, 88(sp)                      # 8-byte Folded Spill
	slli	s8, a6, 1
	slli	a6, a7, 1
	slli	s9, t0, 1
	slli	s10, t1, 1
	slli	a3, t2, 1
	slli	t2, t3, 1
	slli	t3, t4, 1
	slli	t4, t5, 1
	slli	t5, t6, 1
	slli	t6, s1, 1
	slli	ra, ra, 1
	slli	s6, s6, 1
	slli	s1, s3, 1
	slli	s5, s5, 1
	slli	s4, s4, 1
.LBB17_94:                              #   Parent Loop BB17_93 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s11, 0(a1)
	ld	s0, 0(a2)
	ld	s2, 88(sp)                      # 8-byte Folded Reload
	add	a4, s11, s2
	lhu	a4, 0(a4)
	add	s2, s0, s2
	lhu	s2, 0(s2)
	sub	a4, a4, s2
	slli	a4, a4, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	add	s2, s11, s8
	lhu	s2, 0(s2)
	add	a5, s0, s8
	lhu	a5, 0(a5)
	add	a4, s7, a4
	sub	a5, s2, a5
	add	s2, s11, a6
	lhu	s2, 0(s2)
	add	s7, s0, a6
	lhu	s7, 0(s7)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	sub	s2, s2, s7
	add	s7, s11, s9
	lhu	s7, 0(s7)
	add	a7, s0, s9
	lhu	a7, 0(a7)
	slli	s2, s2, 2
	add	s2, a0, s2
	lw	s2, 0(s2)
	sub	a7, s7, a7
	add	s7, s11, s10
	lhu	s7, 0(s7)
	add	t0, s0, s10
	lhu	t0, 0(t0)
	slli	a7, a7, 2
	add	a7, a0, a7
	lw	a7, 0(a7)
	sub	t0, s7, t0
	slli	t0, t0, 2
	add	t0, a0, t0
	lw	t0, 0(t0)
	add	s7, s11, a3
	lhu	s7, 0(s7)
	add	t1, s0, a3
	lhu	t1, 0(t1)
	add	a5, a5, s2
	add	a4, a4, a5
	add	a7, a7, t0
	sub	a5, s7, t1
	add	t0, s11, t2
	lhu	t0, 0(t0)
	add	t1, s0, t2
	lhu	t1, 0(t1)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	sub	t0, t0, t1
	add	t1, s11, t3
	lhu	t1, 0(t1)
	add	s2, s0, t3
	lhu	s2, 0(s2)
	slli	t0, t0, 2
	add	t0, a0, t0
	lw	t0, 0(t0)
	sub	t1, t1, s2
	slli	t1, t1, 2
	add	t1, a0, t1
	lw	t1, 0(t1)
	add	s2, s11, t4
	lhu	s2, 0(s2)
	add	s7, s0, t4
	lhu	s7, 0(s7)
	add	a5, a7, a5
	add	a4, a4, a5
	add	t0, t0, t1
	sub	a5, s2, s7
	add	a7, s11, t5
	lhu	a7, 0(a7)
	add	t1, s0, t5
	lhu	t1, 0(t1)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	sub	a7, a7, t1
	slli	a7, a7, 2
	add	a7, a0, a7
	lw	a7, 0(a7)
	add	t1, s11, t6
	lhu	t1, 0(t1)
	add	s2, s0, t6
	lhu	s2, 0(s2)
	add	a5, t0, a5
	add	a5, a5, a7
	add	s7, a4, a5
	sub	a4, t1, s2
	add	a5, s11, ra
	lhu	a5, 0(a5)
	add	a7, s0, ra
	lhu	a7, 0(a7)
	slli	a4, a4, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	sub	a5, a5, a7
	add	a7, s11, s6
	lhu	a7, 0(a7)
	add	t0, s0, s6
	lhu	t0, 0(t0)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	sub	a7, a7, t0
	slli	a7, a7, 2
	add	a7, a0, a7
	lw	a7, 0(a7)
	add	t0, s11, s1
	lhu	t0, 0(t0)
	add	t1, s0, s1
	lhu	t1, 0(t1)
	add	s2, s11, s5
	lhu	s2, 0(s2)
	add	s3, s0, s5
	lhu	s3, 0(s3)
	add	a4, a4, a5
	add	a4, a4, a7
	sub	a5, t0, t1
	sub	a7, s2, s3
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	add	s11, s11, s4
	lhu	t0, 0(s11)
	add	s0, s0, s4
	lhu	t1, 0(s0)
	slli	a7, a7, 2
	add	a7, a0, a7
	lw	a7, 0(a7)
	sub	t0, t0, t1
	slli	t0, t0, 2
	add	t0, a0, t0
	lw	t0, 0(t0)
	add	a4, a4, a5
	add	a4, a4, a7
	add	a4, s7, a4
	add	s7, a4, t0
	addi	a1, a1, 8
	addi	a2, a2, 8
	ld	a4, 96(sp)                      # 8-byte Folded Reload
	bne	a1, a4, .LBB17_94
# %bb.95:                               #   in Loop: Header=BB17_93 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1529(a0)
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	s0, s0, 1
	ld	s8, 72(sp)                      # 8-byte Folded Reload
	blt	s0, a0, .LBB17_93
# %bb.96:
	div	s10, s7, a0
	j	.LBB17_78
.LBB17_97:
	li	a0, 1
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	bne	a1, a0, .LBB17_99
# %bb.98:
	lw	a0, 364(s8)
	bnez	a0, .LBB17_89
.LBB17_99:
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lw	a0, 120(a0)
	lw	a1, 108(sp)
	addiw	a0, a0, 1
	addi	a2, sp, 120
	addi	a3, sp, 108
	call	ue_linfo
	ld	a0, %lo(img)(s0)
	lw	a0, 120(a0)
	lw	a1, 108(sp)
	addi	a2, sp, 112
	addi	a3, sp, 108
	call	ue_linfo
	lw	a0, 112(sp)
	lw	a1, 120(sp)
	subw	a1, a1, a0
	sw	a1, 120(sp)
.LBB17_100:
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	call	reset_coding_state
	lw	a0, 120(sp)
	lui	a1, %hi(.LCPI17_0)
	fld	fa5, %lo(.LCPI17_0)(a1)
	fcvt.d.w	fa4, a0
	flt.d	a0, fa4, fa5
	fcvt.d.l	fa3, s10
	bnez	a0, .LBB17_102
# %bb.101:
	fmv.d	fa5, fa4
.LBB17_102:
	fld	fa4, 0(s6)
	fmadd.d	fa5, fs0, fa5, fa3
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	fle.d	a0, fa4, fa5
	lui	a2, 22
	addiw	a2, a2, 108
	add	a2, a1, a2
	bnez	a0, .LBB17_106
# %bb.103:
	lw	a0, 272(a2)
	lw	a3, 40(a1)
	negw	a0, a0
	bne	a3, a0, .LBB17_110
# %bb.104:
	lw	a0, 332(a2)
	li	a3, 1
	bne	a0, a3, .LBB17_110
# %bb.105:
	beqz	s10, .LBB17_110
.LBB17_106:
	feq.d	a3, fa5, fa4
	li	a0, 0
	beqz	a3, .LBB17_128
# %bb.107:
	lw	a3, 24(a1)
	or	a3, a3, s1
	bnez	a3, .LBB17_128
# %bb.108:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 0(a0)
	li	a3, 99
	bge	a3, a0, .LBB17_110
.LBB17_109:
	li	a0, 0
	j	.LBB17_128
.LBB17_110:
	ld	a7, 32(sp)                      # 8-byte Folded Reload
	bnez	s1, .LBB17_116
# %bb.111:
	lw	a0, 0(a2)
	beqz	a0, .LBB17_116
# %bb.112:
	lw	a3, 24(a1)
	li	a0, 1
	bne	a3, a0, .LBB17_114
# %bb.113:
	lw	a0, 364(s8)
	bnez	a0, .LBB17_116
.LBB17_114:
	lw	a0, 12(a1)
	andi	a4, a0, 1
	beqz	a4, .LBB17_116
# %bb.115:
	ld	a5, 16(sp)                      # 8-byte Folded Reload
	slti	a4, a5, 0
	li	a6, 528
	mul	a5, a5, a6
	ld	a6, 8(sp)                       # 8-byte Folded Reload
	add	a5, a6, a5
	addi	a4, a4, -1
	and	a4, a4, a5
	lw	a5, 72(a4)
	beqz	a5, .LBB17_130
.LBB17_116:
	lw	a0, 116(sp)
	fsd	fa5, 0(s6)
	fcvt.d.w	fa5, a0
	lw	a3, 320(a2)
	fmul.d	fa5, fa5, fs0
	fsd	fa5, 0(a7)
	li	a4, -3
	li	a0, 1
	blt	a3, a4, .LBB17_128
# %bb.117:
	ld	a4, 128(a1)
	li	a5, 0
	li	a6, -1
	lui	a3, %hi(gaaiMBAFF_NZCoeff)
	addi	a3, a3, %lo(gaaiMBAFF_NZCoeff)
.LBB17_118:                             # =>This Inner Loop Header: Depth=1
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
	blt	a6, t0, .LBB17_118
# %bb.119:
	li	a4, -3
	blt	a7, a4, .LBB17_128
# %bb.120:
	ld	a4, 128(a1)
	li	a5, 0
	li	a6, -1
.LBB17_121:                             # =>This Inner Loop Header: Depth=1
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
	blt	a6, t0, .LBB17_121
# %bb.122:
	li	a4, -3
	blt	a7, a4, .LBB17_128
# %bb.123:
	ld	a4, 128(a1)
	li	a5, 0
	li	a6, -1
.LBB17_124:                             # =>This Inner Loop Header: Depth=1
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
	blt	a6, t0, .LBB17_124
# %bb.125:
	li	a4, -3
	blt	a7, a4, .LBB17_128
# %bb.126:
	ld	a4, 128(a1)
	li	a5, 0
	li	a6, -1
.LBB17_127:                             # =>This Inner Loop Header: Depth=1
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
	blt	a6, a7, .LBB17_127
.LBB17_128:
	ld	ra, 232(sp)                     # 8-byte Folded Reload
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	ld	s1, 216(sp)                     # 8-byte Folded Reload
	ld	s2, 208(sp)                     # 8-byte Folded Reload
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	ld	s4, 192(sp)                     # 8-byte Folded Reload
	ld	s5, 184(sp)                     # 8-byte Folded Reload
	ld	s6, 176(sp)                     # 8-byte Folded Reload
	ld	s7, 168(sp)                     # 8-byte Folded Reload
	ld	s8, 160(sp)                     # 8-byte Folded Reload
	ld	s9, 152(sp)                     # 8-byte Folded Reload
	ld	s10, 144(sp)                    # 8-byte Folded Reload
	ld	s11, 136(sp)                    # 8-byte Folded Reload
	fld	fs0, 128(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 240
	ret
.LBB17_129:
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	div	s10, zero, a0
	j	.LBB17_78
.LBB17_130:
	li	a5, 1
	bne	a3, a5, .LBB17_132
# %bb.131:
	lw	a3, 364(a4)
	bnez	a3, .LBB17_116
.LBB17_132:
	lui	a3, 8
	addiw	a3, a3, -1192
	add	a3, a1, a3
	ld	a3, 0(a3)
	li	a4, 528
	mul	a0, a0, a4
	add	a0, a3, a0
	lw	a6, 448(a0)
	li	a5, 432
	bnez	a6, .LBB17_134
# %bb.133:
	lw	a6, 452(a0)
	li	a5, 436
	beqz	a6, .LBB17_135
.LBB17_134:
	add	a0, a0, a5
	lw	a0, 0(a0)
	mul	a0, a0, a4
	add	a0, a3, a0
	lw	a0, 424(a0)
	lw	a3, 424(s8)
	beq	a0, a3, .LBB17_116
	j	.LBB17_109
.LBB17_135:
	lw	a3, 424(s8)
	beq	zero, a3, .LBB17_116
	j	.LBB17_109
.Lfunc_end17:
	.size	RDCost_for_macroblocks, .Lfunc_end17-RDCost_for_macroblocks
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI17_0:
	.word	.LBB17_33
	.word	.LBB17_39
	.word	.LBB17_38
	.word	.LBB17_54
	.word	.LBB17_54
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
	addi	sp, sp, -160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
	li	a2, 0
	li	a3, 0
	li	a4, 1
	slli	a4, a4, 32
	lui	a5, %hi(img)
	ld	a7, %lo(img)(a5)
	addi	a4, a4, -8
	lui	a5, 3
	addiw	a5, a5, 1864
	add	a5, a7, a5
	addi	a6, a0, -9
	seqz	t0, a6
	lui	t3, 6
	addiw	t1, t3, -1208
	add	t1, a7, t1
	sd	t1, 48(sp)                      # 8-byte Folded Spill
	addiw	s1, t3, -184
	add	s1, a7, s1
	lui	t4, 5
	addiw	t1, t4, 1864
	add	t1, a7, t1
	addiw	t2, t4, -184
	add	t2, a7, t2
	lui	t5, 7
	addiw	t6, t5, 840
	add	t6, a7, t6
	sd	t6, 24(sp)                      # 8-byte Folded Spill
	addiw	t5, t5, 1864
	add	t5, a7, t5
	sd	t5, 16(sp)                      # 8-byte Folded Spill
	lui	t6, 4
	addiw	t5, t6, 840
	add	t5, a7, t5
	addiw	s0, t3, 840
	add	s0, a7, s0
	sd	s0, 8(sp)                       # 8-byte Folded Spill
	addiw	t3, t3, 1864
	add	t3, a7, t3
	sd	t3, 0(sp)                       # 8-byte Folded Spill
	addiw	t3, t6, 1864
	add	t3, a7, t3
	sd	t3, 40(sp)                      # 8-byte Folded Spill
	addiw	t3, t4, 840
	add	a7, a7, t3
	sd	a7, 32(sp)                      # 8-byte Folded Spill
	slli	t0, t0, 10
	add	s3, a5, t0
	lui	s4, %hi(bestIntraFAdjust8x8)
	addi	s4, s4, %lo(bestIntraFAdjust8x8)
	lui	s5, %hi(bestIntraFAdjust4x4)
	addi	s5, s5, %lo(bestIntraFAdjust4x4)
	lui	s6, %hi(bestInterFAdjust4x4)
	addi	s6, s6, %lo(bestInterFAdjust4x4)
	lui	s7, %hi(bestInterFAdjust8x8)
	addi	s7, s7, %lo(bestInterFAdjust8x8)
	li	s8, 2
	lui	t3, %hi(bestIntraFAdjust4x4Cr)
	addi	t3, t3, %lo(bestIntraFAdjust4x4Cr)
	li	s10, 64
	li	ra, 13
	li	s11, 8
	lui	t6, %hi(bestInterFAdjust4x4Cr)
	addi	t6, t6, %lo(bestInterFAdjust4x4Cr)
	j	.LBB19_2
.LBB19_1:                               #   in Loop: Header=BB19_2 Depth=1
	addi	a3, a3, 1
	addi	a2, a2, 64
	addi	s4, s4, 64
	addi	t2, t2, 64
	addi	s5, s5, 64
	addi	s3, s3, 64
	addi	s6, s6, 64
	addi	t5, t5, 64
	addi	s7, s7, 64
	li	a7, 16
	beq	a3, a7, .LBB19_22
.LBB19_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_6 Depth 2
	li	t4, 0
	li	s0, 0
	j	.LBB19_6
.LBB19_3:                               #   in Loop: Header=BB19_6 Depth=2
	mv	s9, t3
	mv	t0, s1
.LBB19_4:                               #   in Loop: Header=BB19_6 Depth=2
	add	a7, a7, a2
	add	a7, a7, t4
	lw	a7, 0(a7)
	add	s9, s9, a2
	add	s9, s9, t4
	add	t0, t0, a2
	add	t0, t0, t4
	lw	t0, 0(t0)
	sw	a7, 0(s9)
	add	a7, a2, t4
	add	a7, s2, a7
	sw	t0, 0(a7)
.LBB19_5:                               #   in Loop: Header=BB19_6 Depth=2
	addi	t4, t4, 4
	addi	s0, s0, 1
	beq	t4, s10, .LBB19_1
.LBB19_6:                               #   Parent Loop BB19_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	a6, s8, .LBB19_12
# %bb.7:                                #   in Loop: Header=BB19_6 Depth=2
	beq	a0, ra, .LBB19_14
# %bb.8:                                #   in Loop: Header=BB19_6 Depth=2
	or	a7, s0, a3
	bne	a0, s11, .LBB19_16
# %bb.9:                                #   in Loop: Header=BB19_6 Depth=2
	lw	t0, 468(a1)
	and	a7, a7, a4
	beqz	t0, .LBB19_20
# %bb.10:                               #   in Loop: Header=BB19_6 Depth=2
	add	t0, t2, t4
	lw	t0, 0(t0)
	add	s2, s7, t4
	sw	t0, 0(s2)
	bnez	a7, .LBB19_5
# %bb.11:                               #   in Loop: Header=BB19_6 Depth=2
	addi	s2, t6, 1024
	ld	a7, 24(sp)                      # 8-byte Folded Reload
	mv	s9, t6
	ld	t0, 16(sp)                      # 8-byte Folded Reload
	j	.LBB19_4
.LBB19_12:                              #   in Loop: Header=BB19_6 Depth=2
	add	a7, s3, t4
	lw	a7, 0(a7)
	add	t0, s5, t4
	or	s2, s0, a3
	and	s2, s2, a4
	sw	a7, 0(t0)
	bnez	s2, .LBB19_5
# %bb.13:                               #   in Loop: Header=BB19_6 Depth=2
	addi	s2, t3, 1024
	ld	a7, 48(sp)                      # 8-byte Folded Reload
	j	.LBB19_3
.LBB19_14:                              #   in Loop: Header=BB19_6 Depth=2
	add	a7, t2, t4
	lw	a7, -1024(a7)
	add	t0, s4, t4
	or	s2, s0, a3
	and	s2, s2, a4
	sw	a7, 0(t0)
	bnez	s2, .LBB19_5
# %bb.15:                               #   in Loop: Header=BB19_6 Depth=2
	addi	s2, t3, 1024
	mv	a7, t1
	j	.LBB19_3
.LBB19_16:                              #   in Loop: Header=BB19_6 Depth=2
	lw	s9, 468(a1)
	mv	s2, a5
	lui	t0, %hi(bestInterFAdjust4x4)
	addi	t0, t0, %lo(bestInterFAdjust4x4)
	beqz	s9, .LBB19_18
# %bb.17:                               #   in Loop: Header=BB19_6 Depth=2
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	lui	t0, %hi(bestInterFAdjust8x8)
	addi	t0, t0, %lo(bestInterFAdjust8x8)
.LBB19_18:                              #   in Loop: Header=BB19_6 Depth=2
	add	s2, s2, a2
	add	s2, s2, t4
	lw	s2, 0(s2)
	add	t0, t0, a2
	add	t0, t0, t4
	and	a7, a7, a4
	sw	s2, 0(t0)
	bnez	a7, .LBB19_5
# %bb.19:                               #   in Loop: Header=BB19_6 Depth=2
	addi	s2, t6, 1024
	ld	a7, 32(sp)                      # 8-byte Folded Reload
	mv	s9, t6
	mv	t0, t1
	j	.LBB19_4
.LBB19_20:                              #   in Loop: Header=BB19_6 Depth=2
	add	t0, t5, t4
	lw	t0, 0(t0)
	add	s2, s6, t4
	sw	t0, 0(s2)
	bnez	a7, .LBB19_5
# %bb.21:                               #   in Loop: Header=BB19_6 Depth=2
	addi	s2, t6, 1024
	ld	a7, 8(sp)                       # 8-byte Folded Reload
	mv	s9, t6
	ld	t0, 0(sp)                       # 8-byte Folded Reload
	j	.LBB19_4
.LBB19_22:
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 160
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
	lui	a1, %hi(img)
	ld	s7, %lo(img)(a1)
	lui	a1, 8
	add	a1, s7, a1
	lw	a2, 12(s7)
	ld	a1, -1192(a1)
	lui	a3, 22
	li	a4, 528
	mul	a2, a2, a4
	add	s11, a1, a2
	lw	a1, 416(s11)
	addiw	s4, a3, 84
	add	s4, s7, s4
	lui	a2, %hi(best_c_imode)
	sw	a1, %lo(best_c_imode)(a2)
	lw	a1, 0(s4)
	lw	a2, 24(s7)
	lui	a3, %hi(best_i16offset)
	sw	a1, %lo(best_i16offset)(a3)
	lui	a3, %hi(best_mode)
	li	a1, 1
	sh	a0, %lo(best_mode)(a3)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	sd	a2, 8(sp)                       # 8-byte Folded Spill
	bne	a0, a1, .LBB20_2
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
	lw	a3, 148(s7)
	ld	a2, 104(s7)
	slli	a3, a3, 3
	add	a0, a2, a3
	ld	a1, 0(a0)
	lw	a0, 144(s7)
	add	a1, a1, a0
	lbu	a4, 1(a1)
	lbu	a5, 0(a1)
	lbu	a6, 2(a1)
	lb	a1, 3(a1)
	slli	a4, a4, 8
	or	a5, a4, a5
	slli	a6, a6, 16
	slli	a1, a1, 24
	or	a1, a1, a6
	ld	a4, 112(s7)
	or	a1, a1, a5
	lui	a5, %hi(b4_ipredmode)
	sw	a1, %lo(b4_ipredmode)(a5)
	add	a1, a4, a3
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
	addi	a5, a5, %lo(b4_ipredmode)
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
	sw	a7, 4(a5)
	add	a6, a4, a6
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
	sw	a7, 8(a5)
	add	a6, a4, a6
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
	sw	a2, 12(a5)
	add	a3, a4, a3
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
	bne	a1, a2, .LBB20_28
# %bb.20:
	lw	a1, 24(s7)
	li	a2, 1
	beq	a1, a2, .LBB20_28
# %bb.21:
	lw	a0, 1529(a0)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
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
	addi	s0, a6, 9
	addi	s1, a6, 10
	addi	s2, a6, 11
	addi	s3, a6, 12
	addi	s4, a6, 13
	addi	s5, a6, 14
	addi	s6, a6, 15
	mv	a5, a4
	blt	a1, a4, .LBB20_24
# %bb.23:
	mv	a5, a1
.LBB20_24:
	li	a1, 0
	ld	a0, 8(a3)
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	ld	a3, 24(a3)
	slli	a4, a4, 3
	slli	a5, a5, 3
	addi	a5, a5, 8
	slli	a2, a6, 1
	slli	a7, a7, 1
	slli	t0, t0, 1
	slli	t1, t1, 1
	slli	t2, t2, 1
	slli	t3, t3, 1
	slli	t4, t4, 1
	slli	t5, t5, 1
	slli	t6, t6, 1
	slli	s0, s0, 1
	slli	s1, s1, 1
	slli	s2, s2, 1
	slli	s3, s3, 1
	slli	s4, s4, 1
	slli	s5, s5, 1
	slli	s6, s6, 1
.LBB20_25:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_26 Depth 2
	slli	s8, a1, 3
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	add	s9, s9, s8
	ld	s10, 0(s9)
	add	s8, a3, s8
	ld	s9, 0(s8)
	add	s8, s10, a4
	add	s9, s9, a4
	add	s10, s10, a5
.LBB20_26:                              #   Parent Loop BB20_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	ra, 0(s8)
	ld	s11, 0(s9)
	add	a6, ra, a2
	lh	a6, 0(a6)
	add	a0, s11, a2
	sh	a6, 0(a0)
	add	a0, ra, a7
	lh	a0, 0(a0)
	add	a6, s11, a7
	sh	a0, 0(a6)
	add	a0, ra, t0
	lh	a0, 0(a0)
	add	a6, s11, t0
	sh	a0, 0(a6)
	add	a0, ra, t1
	lh	a0, 0(a0)
	add	a6, s11, t1
	sh	a0, 0(a6)
	add	a0, ra, t2
	lh	a0, 0(a0)
	add	a6, s11, t2
	sh	a0, 0(a6)
	add	a0, ra, t3
	lh	a0, 0(a0)
	add	a6, s11, t3
	sh	a0, 0(a6)
	add	a0, ra, t4
	lh	a0, 0(a0)
	add	a6, s11, t4
	sh	a0, 0(a6)
	add	a0, ra, t5
	lh	a0, 0(a0)
	add	a6, s11, t5
	sh	a0, 0(a6)
	add	a0, ra, t6
	lh	a0, 0(a0)
	add	a6, s11, t6
	sh	a0, 0(a6)
	add	a0, ra, s0
	lh	a0, 0(a0)
	add	a6, s11, s0
	sh	a0, 0(a6)
	add	a0, ra, s1
	lh	a0, 0(a0)
	add	a6, s11, s1
	sh	a0, 0(a6)
	add	a0, ra, s2
	lh	a0, 0(a0)
	add	a6, s11, s2
	sh	a0, 0(a6)
	add	a0, ra, s3
	lh	a0, 0(a0)
	add	a6, s11, s3
	sh	a0, 0(a6)
	add	a0, ra, s4
	lh	a0, 0(a0)
	add	a6, s11, s4
	sh	a0, 0(a6)
	add	a0, ra, s5
	lh	a0, 0(a0)
	add	a6, s11, s5
	sh	a0, 0(a6)
	add	ra, ra, s6
	lh	a0, 0(ra)
	add	s11, s11, s6
	sh	a0, 0(s11)
	addi	s8, s8, 8
	addi	s9, s9, 8
	bne	s8, s10, .LBB20_26
# %bb.27:                               #   in Loop: Header=BB20_25 Depth=1
	addi	a1, a1, 1
	ld	a0, 32(sp)                      # 8-byte Folded Reload
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
	ld	a6, 0(sp)                       # 8-byte Folded Reload
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
	ld	a6, 0(sp)                       # 8-byte Folded Reload
	lw	a1, 364(a6)
	ld	a3, 368(a6)
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
	lw	a6, 468(a6)
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
	ld	a7, 0(a6)
	addi	a6, a4, %lo(frefframe)
	add	a7, a7, a1
	lbu	a4, 1(a7)
	lbu	t0, 0(a7)
	lbu	t1, 2(a7)
	lb	a7, 3(a7)
	slli	a4, a4, 8
	or	a4, a4, t0
	slli	t1, t1, 16
	slli	a7, a7, 24
	or	a7, a7, t1
	or	a4, a7, a4
	sw	a4, 4(a6)
	ld	a7, 0(a0)
	addiw	a4, a5, 2
	slli	a4, a4, 3
	add	a7, a7, a4
	ld	a7, 0(a7)
	add	a7, a7, a1
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
	sw	a7, 8(a6)
	ld	a7, 0(a0)
	addiw	a5, a5, 3
	slli	a5, a5, 3
	add	a7, a7, a5
	ld	a7, 0(a7)
	add	a7, a7, a1
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
	li	t0, 1
	sw	a7, 12(a6)
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
	addiw	a0, a0, -1824
	sub	sp, sp, a0
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	li	s5, 0
	li	s6, 0
	lui	a1, 8
	add	a1, a0, a1
	ld	a1, -1192(a1)
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	lw	a1, 12(a0)
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(best_mode)
	lhu	a1, %lo(best_mode)(a1)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	lw	a1, 24(a0)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	ld	a2, 104(a0)
	sd	a2, 8(sp)                       # 8-byte Folded Spill
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
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	mul	s1, a3, a2
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 48
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
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	add	s1, a3, s1
	sd	s1, 64(sp)                      # 8-byte Folded Spill
	sd	s2, 56(sp)                      # 8-byte Folded Spill
	beqz	a2, .LBB21_20
# %bb.11:
	lw	a1, 12(a1)
	blez	a1, .LBB21_20
# %bb.12:
	li	s6, 0
	li	s7, 0
	lui	s2, %hi(lrec_rec_V)
	addi	s2, s2, %lo(lrec_rec_V)
	lui	s3, %hi(lrec_rec_U)
	addi	s3, s3, %lo(lrec_rec_U)
	lui	s10, 22
	lui	s11, %hi(img)
	addiw	s1, s10, 108
	lui	s8, %hi(rdopt)
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	lui	s9, %hi(lrec_uv)
	j	.LBB21_14
.LBB21_13:                              #   in Loop: Header=BB21_14 Depth=1
	add	a1, a0, s10
	lw	a1, 448(a1)
	addi	s7, s7, 1
	addi	s6, s6, 32
	addi	s2, s2, 64
	addi	s3, s3, 64
	bge	s7, a1, .LBB21_20
.LBB21_14:                              # =>This Inner Loop Header: Depth=1
	lw	a1, 164(a0)
	ld	a2, 0(s0)
	add	a1, s7, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a2, 160(a0)
	ld	a1, 0(a1)
	add	a0, a0, s10
	lw	a3, 444(a0)
	slli	a0, a2, 1
	add	a0, a1, a0
	lui	s4, %hi(rec_mbU)
	addi	s4, s4, %lo(rec_mbU)
	add	s4, s4, s6
	slli	a2, a3, 1
	mv	a1, s4
	call	memcpy
	ld	a0, %lo(img)(s11)
	lw	a1, 164(a0)
	ld	a2, 8(s0)
	add	a1, s7, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lw	a2, 160(a0)
	ld	a1, 0(a1)
	add	a0, a0, s10
	lw	a3, 444(a0)
	slli	a0, a2, 1
	add	a0, a1, a0
	lui	s5, %hi(rec_mbV)
	addi	s5, s5, %lo(rec_mbV)
	add	s5, s5, s6
	slli	a2, a3, 1
	mv	a1, s5
	call	memcpy
	ld	a0, %lo(img)(s11)
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
	add	a2, s7, a2
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lw	a2, 160(a0)
	add	a0, a0, s10
	lw	a3, 444(a0)
	slli	a0, a2, 2
	add	a0, a1, a0
	slli	a2, a3, 2
	mv	a1, s3
	call	memcpy
	ld	a0, %lo(img)(s11)
	ld	a1, %lo(lrec_uv)(s9)
	lw	a2, 164(a0)
	ld	a1, 8(a1)
	add	a2, s7, a2
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lw	a2, 160(a0)
	add	a0, a0, s10
	lw	a3, 444(a0)
	slli	a0, a2, 2
	add	a0, a1, a0
	slli	a2, a3, 2
	mv	a1, s2
	call	memcpy
	ld	a0, %lo(img)(s11)
.LBB21_18:                              #   in Loop: Header=BB21_14 Depth=1
	add	a1, a0, s1
	lw	a2, 0(a1)
	beqz	a2, .LBB21_13
# %bb.19:                               #   in Loop: Header=BB21_14 Depth=1
	ld	a0, %lo(rdopt)(s8)
	lw	a2, 336(a1)
	add	a0, a0, s6
	addi	a0, a0, 520
	slli	a2, a2, 1
	mv	a1, s4
	call	memcpy
	ld	a0, %lo(img)(s11)
	ld	a1, %lo(rdopt)(s8)
	add	a0, a0, s10
	lw	a2, 444(a0)
	add	a1, a1, s6
	addi	a0, a1, 1032
	slli	a2, a2, 1
	mv	a1, s5
	call	memcpy
	ld	a0, %lo(img)(s11)
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
	ld	t0, 64(sp)                      # 8-byte Folded Reload
	sw	a6, 364(t0)
	sd	a4, 368(t0)
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	sw	s9, 72(t0)
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	beqz	a7, .LBB21_26
# %bb.21:
	lui	s3, %hi(rdopt)
	ld	a3, %lo(rdopt)(s3)
	lw	a6, 0(a2)
	lw	a5, %lo(cbp)(a5)
	sw	s9, 1640(a3)
	sw	a6, 1696(a3)
	sw	a5, 1624(a3)
	lw	a5, 488(t0)
	lw	a6, 492(t0)
	sd	a4, 1632(a3)
	sw	s9, 1560(a3)
	sw	a5, 1716(a3)
	sw	a6, 1720(a3)
	lw	a4, 8(t0)
	lw	a5, 12(t0)
	lw	a6, 496(t0)
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
	lui	s6, %hi(img)
	lui	s8, 22
	addiw	s7, s5, 1856
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
	ld	a1, %lo(img)(s6)
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
	ld	a1, %lo(img)(s6)
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
	ld	a1, %lo(img)(s6)
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
	ld	a1, %lo(img)(s6)
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
	ld	a1, %lo(img)(s6)
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
	ld	a1, %lo(img)(s6)
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
	ld	a1, %lo(img)(s6)
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
	ld	a0, %lo(img)(s6)
	add	a1, a0, s8
	lw	a1, 428(a1)
	addiw	a1, a1, 3
	addi	s4, s4, 1
	addi	s1, s1, 8
	blt	s4, a1, .LBB21_23
# %bb.24:
	add	a0, a0, s7
	lui	a1, %hi(rdopt)
	ld	a3, %lo(rdopt)(a1)
	ld	a1, 0(a0)
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
	ld	t0, 64(sp)                      # 8-byte Folded Reload
.LBB21_26:
	lui	a4, %hi(b8mode)
	lw	a0, %lo(b8mode)(a4)
	sw	a0, 376(t0)
	addi	a2, a4, %lo(b8mode)
	lw	a0, 12(a2)
	sw	a0, 388(t0)
	lw	a0, 8(a2)
	sw	a0, 384(t0)
	lw	a0, 4(a2)
	sw	a0, 380(t0)
	lui	a3, %hi(b8pdir)
	addi	a1, a3, %lo(b8pdir)
	lw	a0, 12(a1)
	sw	a0, 404(t0)
	lw	a0, 8(a1)
	sw	a0, 400(t0)
	lw	a0, 4(a1)
	sw	a0, 396(t0)
	lw	a0, %lo(b8pdir)(a3)
	sw	a0, 392(t0)
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
	lw	a1, 72(t0)
	lui	a2, %hi(bi_pred_me)
	lh	a2, %lo(bi_pred_me)(a2)
	addi	a1, a1, -1
	snez	a1, a1
	addi	a1, a1, -1
	and	a1, a1, a2
	li	a2, 8
	sh	a1, 476(t0)
	bne	s0, a2, .LBB21_32
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
	addi	a0, sp, 76
	mv	a1, s2
	mv	a2, s3
	call	memcpy
	li	a0, 1
	addi	a2, sp, 76
	li	a1, 0
	mv	a3, s1
	call	RestoreMVBlock8x8
	addi	a0, sp, 76
	mv	a1, s2
	mv	a2, s3
	call	memcpy
	li	a0, 1
	li	a1, 1
	addi	a2, sp, 76
	mv	a3, s1
	call	RestoreMVBlock8x8
	addi	a0, sp, 76
	mv	a1, s2
	mv	a2, s3
	call	memcpy
	li	a0, 1
	li	a1, 2
	addi	a2, sp, 76
	mv	a3, s1
	call	RestoreMVBlock8x8
	addi	a0, sp, 76
	mv	a1, s2
	mv	a2, s3
	call	memcpy
	li	a0, 1
	li	a1, 3
	addi	a2, sp, 76
	mv	a3, s1
	call	RestoreMVBlock8x8
	ld	t0, 64(sp)                      # 8-byte Folded Reload
.LBB21_32:
	lbu	a0, 364(t0)
	andi	a0, a0, 15
	bnez	a0, .LBB21_34
# %bb.33:
	lw	a0, 72(t0)
	ori	a0, a0, 4
	li	a1, 13
	bne	a0, a1, .LBB21_93
.LBB21_34:
	lui	a0, %hi(luma_transform_size_8x8_flag)
	lw	a0, %lo(luma_transform_size_8x8_flag)(a0)
.LBB21_35:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lui	a2, %hi(rdopt)
	ld	a2, %lo(rdopt)(a2)
	addi	a1, a1, 2047
	lw	a1, 1089(a1)
	sw	a0, 468(t0)
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
	sb	s0, 0(a0)
.LBB21_38:
	li	a3, 0
	addi	a0, t0, 376
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	addi	a0, t0, 392
	li	a5, 1680
	li	a6, 1664
	lui	a1, %hi(frefframe)
	addi	a1, a1, %lo(frefframe)
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	lui	a2, 524288
	addiw	a2, a2, -1
	lui	t0, %hi(img)
	li	t1, 1
	lui	t2, %hi(enc_picture)
	lui	t3, 2
	addiw	t4, t3, -1704
	li	t5, -1
	lui	t6, 22
	li	s2, 14
	lui	a1, 6
	addiw	s3, a1, 1536
	j	.LBB21_40
.LBB21_39:                              #   in Loop: Header=BB21_40 Depth=1
	ld	a3, 48(sp)                      # 8-byte Folded Reload
	addi	a3, a3, 1
	addi	a5, a5, 4
	addi	a6, a6, 4
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 4
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	li	a1, 4
	beq	a3, a1, .LBB21_61
.LBB21_40:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_42 Depth 2
	ld	a1, %lo(img)(t0)
	lw	a1, 148(a1)
	li	s9, 0
	li	s10, 0
	li	s11, 0
	addw	a1, a1, a3
	sd	a3, 48(sp)                      # 8-byte Folded Spill
	andi	ra, a3, 2
	slli	s6, a1, 3
	j	.LBB21_42
.LBB21_41:                              #   in Loop: Header=BB21_42 Depth=2
	addi	s11, s11, 1
	addi	s10, s10, 8
	addi	s9, s9, 1
	li	a1, 4
	beq	s11, a1, .LBB21_39
.LBB21_42:                              #   Parent Loop BB21_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, %lo(img)(t0)
	lw	s4, 144(a7)
	srli	a1, s11, 1
	and	a1, a1, a2
	or	s7, a1, ra
	slli	s7, s7, 2
	add	a1, a0, s7
	lw	s5, 0(a1)
	addw	s8, s9, s4
	beq	s5, t1, .LBB21_45
# %bb.43:                               #   in Loop: Header=BB21_42 Depth=2
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	lw	s4, 72(a3)
	bltu	s2, s4, .LBB21_52
# %bb.44:                               #   in Loop: Header=BB21_42 Depth=2
	srl	a4, s3, s4
	andi	a4, a4, 1
	beqz	a4, .LBB21_52
.LBB21_45:                              #   in Loop: Header=BB21_42 Depth=2
	ld	a4, %lo(enc_picture)(t2)
	add	a4, a4, t3
	ld	a4, -1712(a4)
	ld	a4, 0(a4)
	add	a4, a4, s6
	ld	a4, 0(a4)
	add	a4, a4, s8
	li	a7, 255
	sb	a7, 0(a4)
	ld	a4, %lo(enc_picture)(t2)
	add	a4, a4, t4
	ld	s4, 0(a4)
	ld	a4, 16(a4)
	ld	s4, 0(s4)
	ld	a4, 0(a4)
	add	s4, s4, s6
	add	a4, a4, s6
	ld	a4, 0(a4)
	ld	s4, 0(s4)
	ld	s5, %lo(img)(t0)
	slli	s7, s8, 3
	add	a4, a4, s7
	ld	a4, 0(a4)
	add	s5, s5, t6
	lw	s5, 108(s5)
	add	s4, s4, s7
	sd	t5, 0(s4)
	sh	zero, 0(a4)
	sh	zero, 2(a4)
	beqz	s5, .LBB21_47
.LBB21_46:                              #   in Loop: Header=BB21_42 Depth=2
	lui	a3, %hi(rdopt)
	ld	a3, %lo(rdopt)(a3)
	add	a4, a6, s11
	add	a3, a3, a4
	sb	a7, 0(a3)
.LBB21_47:                              #   in Loop: Header=BB21_42 Depth=2
	lw	a1, 0(a1)
	beqz	a1, .LBB21_50
# %bb.48:                               #   in Loop: Header=BB21_42 Depth=2
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	lw	a1, 72(a1)
	bltu	s2, a1, .LBB21_41
# %bb.49:                               #   in Loop: Header=BB21_42 Depth=2
	srl	a1, s3, a1
	andi	a1, a1, 1
	beqz	a1, .LBB21_41
.LBB21_50:                              #   in Loop: Header=BB21_42 Depth=2
	ld	a1, %lo(enc_picture)(t2)
	add	a1, a1, t3
	ld	a1, -1712(a1)
	ld	a1, 8(a1)
	add	a1, a1, s6
	ld	a1, 0(a1)
	add	a1, a1, s8
	sb	t5, 0(a1)
	ld	a1, %lo(enc_picture)(t2)
	add	a1, a1, t4
	ld	a3, 0(a1)
	ld	a1, 16(a1)
	ld	a3, 8(a3)
	ld	a1, 8(a1)
	add	a3, a3, s6
	add	a1, a1, s6
	ld	a1, 0(a1)
	ld	a3, 0(a3)
	ld	a4, %lo(img)(t0)
	slli	s8, s8, 3
	add	a1, a1, s8
	ld	a1, 0(a1)
	add	a4, a4, t6
	lw	a4, 108(a4)
	add	a3, a3, s8
	sd	t5, 0(a3)
	sh	zero, 0(a1)
	sh	zero, 2(a1)
	beqz	a4, .LBB21_41
# %bb.51:                               #   in Loop: Header=BB21_42 Depth=2
	lui	a1, %hi(rdopt)
	ld	a1, %lo(rdopt)(a1)
	add	a3, a5, s11
	add	a1, a1, a3
	sb	t5, 0(a1)
	j	.LBB21_41
.LBB21_52:                              #   in Loop: Header=BB21_42 Depth=2
	bne	s4, t1, .LBB21_57
# %bb.53:                               #   in Loop: Header=BB21_42 Depth=2
	li	a3, 2
	bne	s5, a3, .LBB21_57
# %bb.54:                               #   in Loop: Header=BB21_42 Depth=2
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	lhu	s4, 476(a3)
	beqz	s4, .LBB21_57
# %bb.55:                               #   in Loop: Header=BB21_42 Depth=2
	beq	s4, t1, .LBB21_59
# %bb.56:                               #   in Loop: Header=BB21_42 Depth=2
	addiw	s5, t6, -760
	j	.LBB21_60
.LBB21_57:                              #   in Loop: Header=BB21_42 Depth=2
	add	a7, a7, t6
	ld	a3, -776(a7)
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	slli	a4, a4, 3
	add	a3, a3, a4
	ld	a3, 0(a3)
	add	a3, a3, s10
	ld	a3, 0(a3)
	ld	a4, %lo(enc_picture)(t2)
	ld	a3, 0(a3)
	ld	a7, 40(sp)                      # 8-byte Folded Reload
	add	a7, a7, s11
	lbu	s0, 0(a7)
	add	a4, a4, t3
	ld	a4, -1712(a4)
	slli	s4, s0, 3
	add	a3, a3, s4
	ld	a4, 0(a4)
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	add	s7, s1, s7
	lw	s5, 0(s7)
	ld	a3, 0(a3)
	add	a4, a4, s6
	ld	a4, 0(a4)
	slli	s5, s5, 3
	add	a3, a3, s5
	ld	a3, 0(a3)
	add	a4, a4, s8
	sb	s0, 0(a4)
	ld	a4, %lo(enc_picture)(t2)
	add	s0, a4, t4
	ld	s5, 16(s0)
	ld	s1, 64(sp)                      # 8-byte Folded Reload
	lw	s7, 428(s1)
	ld	s5, 0(s5)
	li	s1, 264
	mul	s7, s7, s1
	add	a4, a4, s7
	add	s5, s5, s6
	ld	s5, 0(s5)
	ld	s0, 0(s0)
	slli	s7, s8, 3
	lh	s1, 0(a3)
	add	s5, s5, s7
	ld	s5, 0(s5)
	add	a4, a4, s4
	ld	s0, 0(s0)
	ld	a4, 24(a4)
	sh	s1, 0(s5)
	ld	s1, %lo(img)(t0)
	add	s0, s0, s6
	ld	s0, 0(s0)
	lh	a3, 2(a3)
	add	s1, s1, t6
	lw	s1, 108(s1)
	add	s0, s0, s7
	sd	a4, 0(s0)
	sh	a3, 2(s5)
	beqz	s1, .LBB21_47
# %bb.58:                               #   in Loop: Header=BB21_42 Depth=2
	lbu	a7, 0(a7)
	j	.LBB21_46
.LBB21_59:                              #   in Loop: Header=BB21_42 Depth=2
	addiw	s5, t6, -768
.LBB21_60:                              #   in Loop: Header=BB21_42 Depth=2
	add	a7, a7, s5
	ld	a4, 0(a7)
	ld	a7, 48(sp)                      # 8-byte Folded Reload
	slli	a7, a7, 3
	add	a4, a4, a7
	ld	a4, 0(a4)
	ld	a7, %lo(enc_picture)(t2)
	add	a4, a4, s10
	ld	a4, 0(a4)
	add	a7, a7, t3
	ld	a7, -1712(a7)
	ld	a4, 0(a4)
	ld	a7, 0(a7)
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	add	s7, a3, s7
	lw	s4, 0(s7)
	ld	a4, 0(a4)
	add	a7, a7, s6
	ld	a7, 0(a7)
	slli	s4, s4, 3
	add	a4, a4, s4
	ld	a4, 0(a4)
	add	a7, a7, s8
	sb	zero, 0(a7)
	ld	a7, %lo(enc_picture)(t2)
	add	s4, a7, t4
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	lw	s5, 428(a3)
	ld	s7, 16(s4)
	li	a3, 264
	mul	s5, s5, a3
	ld	s7, 0(s7)
	add	a7, a7, s5
	ld	s4, 0(s4)
	ld	s5, 24(a7)
	add	s7, s7, s6
	ld	a7, 0(s7)
	ld	s4, 0(s4)
	slli	s7, s8, 3
	lh	s0, 0(a4)
	add	a7, a7, s7
	ld	a3, 0(a7)
	add	s4, s4, s6
	ld	a7, %lo(img)(t0)
	ld	s4, 0(s4)
	sh	s0, 0(a3)
	lh	a4, 2(a4)
	add	a7, a7, t6
	lw	s0, 108(a7)
	li	a7, 0
	add	s4, s4, s7
	sd	s5, 0(s4)
	sh	a4, 2(a3)
	bnez	s0, .LBB21_46
	j	.LBB21_47
.LBB21_61:
	li	a3, 1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	ra, 64(sp)                      # 8-byte Folded Reload
	bne	a1, a3, .LBB21_79
# %bb.62:                               # %.preheader
	li	a3, 0
	li	a5, 1680
	lui	t1, %hi(brefframe)
	addi	t1, t1, %lo(brefframe)
	lui	a7, %hi(img)
	li	t0, 14
	lui	t2, 22
	addiw	a1, t2, -760
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	addiw	a1, t2, -768
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	lui	t5, %hi(enc_picture)
	lui	t6, 2
	addiw	s1, t6, -1704
	li	s3, -1
	li	s4, 4
	lui	s5, %hi(rdopt)
	lui	a1, 6
	addiw	s6, a1, 1536
	j	.LBB21_64
.LBB21_63:                              #   in Loop: Header=BB21_64 Depth=1
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	addi	a3, a3, 1
	addi	a5, a5, 4
	addi	t1, t1, 4
	beq	a3, s4, .LBB21_79
.LBB21_64:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_68 Depth 2
	ld	a1, %lo(img)(a7)
	lw	a1, 148(a1)
	li	s8, 0
	li	s9, 0
	li	s10, 0
	addw	a1, a1, a3
	andi	s11, a3, 2
	sd	a3, 40(sp)                      # 8-byte Folded Spill
	slli	a4, a3, 3
	slli	s7, a1, 3
	j	.LBB21_68
.LBB21_65:                              #   in Loop: Header=BB21_68 Depth=2
	add	a6, a6, t4
	ld	a6, 0(a6)
	add	a6, a6, a4
	ld	a6, 0(a6)
	ld	t4, %lo(enc_picture)(t5)
	add	a6, a6, s9
	ld	a6, 0(a6)
	add	t4, t4, t6
	ld	t4, -1712(t4)
	ld	a6, 8(a6)
	ld	t4, 8(t4)
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	add	a1, a3, a1
	lw	a1, 0(a1)
	ld	a6, 0(a6)
	add	t4, t4, s7
	ld	t4, 0(t4)
	slli	a1, a1, 3
	add	a1, a6, a1
	ld	a1, 0(a1)
	add	t4, t4, t3
	sb	zero, 0(t4)
	ld	a6, %lo(enc_picture)(t5)
	lw	t4, 428(ra)
	add	s0, a6, s1
	ld	s2, 16(s0)
	addiw	t4, t4, 1
	li	a3, 264
	mul	t4, t4, a3
	ld	s2, 8(s2)
	add	a6, a6, t4
	ld	t4, 0(s0)
	ld	a6, 24(a6)
	add	s2, s2, s7
	ld	s0, 0(s2)
	ld	t4, 8(t4)
	slli	t3, t3, 3
	lh	s2, 0(a1)
	add	s0, s0, t3
	ld	s0, 0(s0)
	add	t4, t4, s7
	ld	a3, %lo(img)(a7)
	ld	t4, 0(t4)
	sh	s2, 0(s0)
	lh	s2, 2(a1)
	add	a3, a3, t2
	lw	a3, 108(a3)
	li	a1, 0
	add	t3, t4, t3
	sd	a6, 0(t3)
	sh	s2, 2(s0)
	beqz	a3, .LBB21_67
.LBB21_66:                              #   in Loop: Header=BB21_68 Depth=2
	ld	a3, %lo(rdopt)(s5)
	add	a6, a5, s10
	add	a3, a3, a6
	sb	a1, 0(a3)
.LBB21_67:                              #   in Loop: Header=BB21_68 Depth=2
	addi	s10, s10, 1
	addi	s9, s9, 8
	addi	s8, s8, 1
	beq	s10, s4, .LBB21_63
.LBB21_68:                              #   Parent Loop BB21_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, %lo(img)(a7)
	lw	a1, 144(a6)
	lw	s2, 72(ra)
	addw	t3, s8, a1
	bltu	t0, s2, .LBB21_71
# %bb.69:                               #   in Loop: Header=BB21_68 Depth=2
	srl	a1, s6, s2
	andi	a1, a1, 1
	beqz	a1, .LBB21_71
.LBB21_70:                              #   in Loop: Header=BB21_68 Depth=2
	ld	a1, %lo(enc_picture)(t5)
	add	a1, a1, t6
	ld	a1, -1712(a1)
	ld	a1, 8(a1)
	add	a1, a1, s7
	ld	a1, 0(a1)
	add	a6, a1, t3
	li	a1, 255
	sb	a1, 0(a6)
	ld	a6, %lo(enc_picture)(t5)
	add	a6, a6, s1
	ld	t4, 0(a6)
	ld	a6, 16(a6)
	ld	t4, 8(t4)
	ld	a6, 8(a6)
	add	t4, t4, s7
	add	a6, a6, s7
	ld	a6, 0(a6)
	ld	t4, 0(t4)
	ld	s0, %lo(img)(a7)
	slli	t3, t3, 3
	add	a6, a6, t3
	ld	a6, 0(a6)
	add	s0, s0, t2
	lw	s0, 108(s0)
	add	t3, t4, t3
	sd	s3, 0(t3)
	sh	zero, 0(a6)
	sh	zero, 2(a6)
	bnez	s0, .LBB21_66
	j	.LBB21_67
.LBB21_71:                              #   in Loop: Header=BB21_68 Depth=2
	srli	a1, s10, 1
	and	a1, a1, a2
	or	a1, a1, s11
	slli	a1, a1, 2
	add	t4, a0, a1
	lw	t4, 0(t4)
	beqz	t4, .LBB21_70
# %bb.72:                               #   in Loop: Header=BB21_68 Depth=2
	li	a3, 1
	bne	s2, a3, .LBB21_77
# %bb.73:                               #   in Loop: Header=BB21_68 Depth=2
	li	a3, 2
	bne	t4, a3, .LBB21_77
# %bb.74:                               #   in Loop: Header=BB21_68 Depth=2
	lhu	s2, 476(ra)
	beqz	s2, .LBB21_77
# %bb.75:                               #   in Loop: Header=BB21_68 Depth=2
	ld	t4, 48(sp)                      # 8-byte Folded Reload
	li	a3, 1
	beq	s2, a3, .LBB21_65
# %bb.76:                               #   in Loop: Header=BB21_68 Depth=2
	ld	t4, 32(sp)                      # 8-byte Folded Reload
	j	.LBB21_65
.LBB21_77:                              #   in Loop: Header=BB21_68 Depth=2
	add	a6, a6, t2
	ld	a3, -776(a6)
	add	a3, a3, a4
	ld	a3, 0(a3)
	add	a3, a3, s9
	ld	a3, 0(a3)
	ld	t4, %lo(enc_picture)(t5)
	ld	a3, 8(a3)
	add	a6, t1, s10
	lbu	s0, 0(a6)
	add	t4, t4, t6
	ld	t4, -1712(t4)
	slli	s2, s0, 3
	add	a3, a3, s2
	ld	t4, 8(t4)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	add	a1, ra, a1
	lw	a1, 0(a1)
	ld	a3, 0(a3)
	add	t4, t4, s7
	ld	t4, 0(t4)
	slli	a1, a1, 3
	add	a1, a3, a1
	ld	a1, 0(a1)
	add	t4, t4, t3
	sb	s0, 0(t4)
	ld	a3, %lo(enc_picture)(t5)
	add	t4, a3, s1
	ld	s0, 16(t4)
	ld	ra, 64(sp)                      # 8-byte Folded Reload
	lw	ra, 428(ra)
	ld	s0, 8(s0)
	addiw	ra, ra, 1
	mv	s5, a4
	mv	a4, s11
	mv	s11, t1
	li	t1, 264
	mul	ra, ra, t1
	mv	t1, s11
	mv	s11, a4
	mv	a4, s5
	lui	s5, %hi(rdopt)
	add	a3, a3, ra
	add	s0, s0, s7
	ld	s0, 0(s0)
	ld	t4, 0(t4)
	slli	t3, t3, 3
	lh	ra, 0(a1)
	add	s0, s0, t3
	ld	s0, 0(s0)
	add	a3, a3, s2
	ld	t4, 8(t4)
	ld	a3, 24(a3)
	sh	ra, 0(s0)
	ld	ra, 64(sp)                      # 8-byte Folded Reload
	ld	s2, %lo(img)(a7)
	add	t4, t4, s7
	ld	t4, 0(t4)
	lh	a1, 2(a1)
	add	s2, s2, t2
	lw	s2, 108(s2)
	add	t3, t4, t3
	sd	a3, 0(t3)
	sh	a1, 2(s0)
	beqz	s2, .LBB21_67
# %bb.78:                               #   in Loop: Header=BB21_68 Depth=2
	lbu	a1, 0(a6)
	j	.LBB21_66
.LBB21_79:
	lui	a0, %hi(best_c_imode)
	lw	a0, %lo(best_c_imode)(a0)
	sw	a0, 416(ra)
	lui	a1, %hi(best_i16offset)
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lw	a1, %lo(best_i16offset)(a1)
	lw	a3, 72(ra)
	lui	a4, 22
	add	a2, a2, a4
	li	a4, 13
	sw	a1, 84(a2)
	bne	a3, a4, .LBB21_82
# %bb.80:
	lw	a1, 360(ra)
	lw	a2, 356(ra)
	lw	a3, 352(ra)
	lw	a4, 348(ra)
	sw	a1, 344(ra)
	sw	a2, 340(ra)
	sw	a3, 336(ra)
	sw	a4, 332(ra)
	ld	a3, %lo(img)(a0)
	lw	a2, 148(a3)
	addi	a1, a2, -1
	slli	a2, a2, 3
	ld	s0, 8(sp)                       # 8-byte Folded Reload
.LBB21_81:                              # =>This Inner Loop Header: Depth=1
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
	blt	a1, a4, .LBB21_81
	j	.LBB21_87
.LBB21_82:
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	andi	a1, a2, -5
	li	a0, 9
	ld	s0, 8(sp)                       # 8-byte Folded Reload
	bne	a1, a0, .LBB21_85
# %bb.83:
	bne	a2, a0, .LBB21_87
# %bb.84:
	addi	a0, ra, 332
	lui	a1, %hi(b4_intra_pred_modes)
	addi	a1, a1, %lo(b4_intra_pred_modes)
	li	a2, 16
	call	memcpy
	ld	ra, 64(sp)                      # 8-byte Folded Reload
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
	j	.LBB21_87
.LBB21_85:
	lui	a0, 8224
	addi	a0, a0, 514
	sw	a0, 344(ra)
	sw	a0, 340(ra)
	sw	a0, 336(ra)
	sw	a0, 332(ra)
	lui	a0, %hi(img)
	ld	a4, %lo(img)(a0)
	lw	a2, 148(a4)
	addi	a1, a2, -1
	slli	a2, a2, 3
	li	a3, 2
.LBB21_86:                              # =>This Inner Loop Header: Depth=1
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
	blt	a1, a5, .LBB21_86
.LBB21_87:
	lw	a0, 72(ra)
	li	a1, 13
	bne	a0, a1, .LBB21_89
# %bb.88:
	addi	a0, ra, 332
	lui	a1, %hi(b8_intra_pred_modes8x8)
	addi	a1, a1, %lo(b8_intra_pred_modes8x8)
	li	a2, 16
	call	memcpy
	ld	ra, 64(sp)                      # 8-byte Folded Reload
	lui	a1, %hi(img)
	ld	a0, %lo(img)(a1)
	lw	a2, 148(a0)
	ld	a3, 104(a0)
	slli	a2, a2, 3
	add	a2, a3, a2
	ld	a2, 0(a2)
	lw	a0, 144(a0)
	add	a2, a2, a0
	lui	a3, %hi(b8_ipredmode8x8)
	addi	a0, a3, %lo(b8_ipredmode8x8)
	lb	a4, 3(a0)
	lbu	a5, 2(a0)
	lbu	a6, 1(a0)
	lbu	a3, %lo(b8_ipredmode8x8)(a3)
	sb	a4, 3(a2)
	sb	a5, 2(a2)
	sb	a6, 1(a2)
	sb	a3, 0(a2)
	ld	a2, %lo(img)(a1)
	lw	a3, 148(a2)
	ld	a4, 104(a2)
	slli	a3, a3, 3
	add	a3, a4, a3
	ld	a3, 8(a3)
	lw	a2, 144(a2)
	add	a2, a3, a2
	lbu	a3, 5(a0)
	lbu	a4, 4(a0)
	lb	a5, 7(a0)
	lbu	a6, 6(a0)
	sb	a3, 1(a2)
	sb	a4, 0(a2)
	sb	a5, 3(a2)
	sb	a6, 2(a2)
	ld	a2, %lo(img)(a1)
	lw	a3, 148(a2)
	ld	a4, 104(a2)
	slli	a3, a3, 3
	add	a3, a4, a3
	ld	a3, 16(a3)
	lw	a2, 144(a2)
	add	a2, a3, a2
	lb	a3, 11(a0)
	lbu	a4, 10(a0)
	lbu	a5, 8(a0)
	lbu	a6, 9(a0)
	sb	a3, 3(a2)
	sb	a4, 2(a2)
	sb	a5, 0(a2)
	sb	a6, 1(a2)
	ld	a1, %lo(img)(a1)
	lw	a2, 148(a1)
	ld	a3, 104(a1)
	slli	a2, a2, 3
	add	a2, a3, a2
	ld	a2, 24(a2)
	lw	a1, 144(a1)
	add	a1, a2, a1
	lbu	a2, 13(a0)
	lbu	a3, 12(a0)
	lb	a4, 15(a0)
	lbu	a0, 14(a0)
	sb	a2, 1(a1)
	sb	a3, 0(a1)
	sb	a4, 3(a1)
	sb	a0, 2(a1)
.LBB21_89:
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lui	a1, 22
	addiw	a3, a1, 84
	add	a3, a2, a3
	lw	a1, 24(a3)
	beqz	a1, .LBB21_92
# %bb.90:
	lw	a4, 416(ra)
	lui	a1, %hi(rdopt)
	ld	a5, %lo(rdopt)(a1)
	lw	a3, 0(a3)
	sw	a4, 1700(a5)
	sw	a3, 1696(a5)
	lw	a3, 344(ra)
	sw	a3, 1620(a5)
	lw	a3, 340(ra)
	sw	a3, 1616(a5)
	lw	a3, 336(ra)
	sw	a3, 1612(a5)
	lw	a3, 332(ra)
	sw	a3, 1608(a5)
	lw	a4, 148(a2)
	addi	a3, a4, -1
	slli	a4, a4, 3
.LBB21_91:                              # =>This Inner Loop Header: Depth=1
	ld	a5, %lo(rdopt)(a1)
	ld	a5, 1600(a5)
	add	a5, a5, a4
	ld	a5, 0(a5)
	lw	a2, 144(a2)
	add	a6, s0, a4
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
	blt	a3, a5, .LBB21_91
.LBB21_92:
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addi	a0, a0, -1
	seqz	a1, a0
	mv	a0, ra
	lui	a2, 2
	addiw	a2, a2, -1824
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
.LBB21_93:
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
	lui	s8, %hi(bestIntraFAdjust4x4Cr)
	addi	s8, s8, %lo(bestIntraFAdjust4x4Cr)
	lui	t2, %hi(bestIntraFAdjust8x8)
	addi	t2, t2, %lo(bestIntraFAdjust8x8)
	lui	t3, %hi(bestIntraFAdjust4x4)
	addi	t3, t3, %lo(bestIntraFAdjust4x4)
	lui	s7, %hi(bestInterFAdjust4x4Cr)
	addi	s7, s7, %lo(bestInterFAdjust4x4Cr)
	addi	t5, a0, -9
	li	t6, 2
	lui	t4, %hi(OffsetList4x4)
	addi	t4, t4, %lo(OffsetList4x4)
	li	s1, 64
	li	s3, 13
	lui	s4, %hi(OffsetList8x8)
	addi	s4, s4, %lo(OffsetList8x8)
	j	.LBB22_2
.LBB22_1:                               #   in Loop: Header=BB22_2 Depth=1
	addi	a3, a3, 1
	addi	s8, s8, 64
	addi	t2, t2, 64
	addi	t3, t3, 64
	addi	s7, s7, 64
	addi	a2, a2, 64
	li	t1, 16
	beq	a3, t1, .LBB22_72
.LBB22_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_5 Depth 2
	li	s9, 0
	li	s10, 0
	li	s11, 0
	slli	t1, a3, 2
	andi	ra, t1, 12
	slli	t1, a3, 61
	srli	s2, t1, 58
	j	.LBB22_5
.LBB22_3:                               #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s0
	sh	t1, 0(s5)
.LBB22_4:                               #   in Loop: Header=BB22_5 Depth=2
	addi	s11, s11, 1
	addi	s10, s10, 4
	addi	s9, s9, 1
	beq	s10, s1, .LBB22_1
.LBB22_5:                               #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	or	s5, s11, a3
	bgeu	t5, t6, .LBB22_15
# %bb.6:                                #   in Loop: Header=BB22_5 Depth=2
	lw	s0, 24(a7)
	add	t1, t3, s10
	lw	s6, 0(t1)
	andi	t1, s9, 3
	or	t1, t1, ra
	and	s5, s5, a5
	slli	t1, t1, 1
	beq	s0, a4, .LBB22_26
# %bb.7:                                #   in Loop: Header=BB22_5 Depth=2
	bne	s0, t6, .LBB22_33
# %bb.8:                                #   in Loop: Header=BB22_5 Depth=2
	add	s0, t4, t1
	lh	t1, 0(s0)
	add	t1, t1, s6
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s6, a6
	blt	a6, t1, .LBB22_10
# %bb.9:                                #   in Loop: Header=BB22_5 Depth=2
	mv	s6, t1
.LBB22_10:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s6
	sh	t1, 0(s0)
	bnez	s5, .LBB22_4
# %bb.11:                               #   in Loop: Header=BB22_5 Depth=2
	lw	t1, 0(t0)
	beqz	t1, .LBB22_4
# %bb.12:                               #   in Loop: Header=BB22_5 Depth=2
	add	t1, s8, s10
	lh	t1, 0(t1)
	lh	s5, 32(s0)
	add	t1, s5, t1
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s5, a6
	blt	a6, t1, .LBB22_14
.LBB22_13:                              #   in Loop: Header=BB22_5 Depth=2
	mv	s5, t1
.LBB22_14:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s5
	sh	t1, 32(s0)
	slli	t1, a3, 6
	lui	s5, %hi(bestIntraFAdjust4x4Cr)
	addi	s5, s5, %lo(bestIntraFAdjust4x4Cr)
	add	t1, s5, t1
	slli	s5, s11, 2
	add	t1, t1, s5
	addi	s6, t1, 1024
	addi	s5, s0, 64
	j	.LBB22_70
.LBB22_15:                              #   in Loop: Header=BB22_5 Depth=2
	bne	a0, s3, .LBB22_23
# %bb.16:                               #   in Loop: Header=BB22_5 Depth=2
	lw	s6, 24(a7)
	add	t1, t2, s10
	lw	s0, 0(t1)
	andi	t1, s9, 7
	or	t1, t1, s2
	and	s5, s5, a5
	slli	t1, t1, 1
	beq	s6, a4, .LBB22_42
# %bb.17:                               #   in Loop: Header=BB22_5 Depth=2
	bne	s6, t6, .LBB22_47
# %bb.18:                               #   in Loop: Header=BB22_5 Depth=2
	add	s6, s4, t1
	lh	t1, 0(s6)
	add	t1, t1, s0
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s0, a6
	blt	a6, t1, .LBB22_20
# %bb.19:                               #   in Loop: Header=BB22_5 Depth=2
	mv	s0, t1
.LBB22_20:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s0
	sh	t1, 0(s6)
	bnez	s5, .LBB22_4
# %bb.21:                               #   in Loop: Header=BB22_5 Depth=2
	lw	t1, 0(t0)
	beqz	t1, .LBB22_4
# %bb.22:                               #   in Loop: Header=BB22_5 Depth=2
	andi	t1, s9, 3
	or	t1, t1, ra
	add	s0, s8, s10
	lh	s5, 0(s0)
	slli	t1, t1, 1
	add	s0, t4, t1
	lh	t1, 32(s0)
	add	t1, t1, s5
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s5, a6
	bge	a6, t1, .LBB22_13
	j	.LBB22_14
.LBB22_23:                              #   in Loop: Header=BB22_5 Depth=2
	lw	t1, 24(a7)
	bne	t1, a4, .LBB22_40
# %bb.24:                               #   in Loop: Header=BB22_5 Depth=2
	beqz	a1, .LBB22_54
# %bb.25:                               #   in Loop: Header=BB22_5 Depth=2
	andi	t1, s9, 7
	or	t1, t1, s2
	slli	t1, t1, 1
	add	t1, s4, t1
	addi	s0, t1, 512
	lui	t1, %hi(bestInterFAdjust8x8)
	addi	t1, t1, %lo(bestInterFAdjust8x8)
	j	.LBB22_55
.LBB22_26:                              #   in Loop: Header=BB22_5 Depth=2
	add	s0, t4, t1
	lh	t1, 192(s0)
	add	t1, t1, s6
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s6, a6
	blt	a6, t1, .LBB22_28
# %bb.27:                               #   in Loop: Header=BB22_5 Depth=2
	mv	s6, t1
.LBB22_28:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s6
	sh	t1, 192(s0)
	bnez	s5, .LBB22_4
# %bb.29:                               #   in Loop: Header=BB22_5 Depth=2
	lw	t1, 0(t0)
	beqz	t1, .LBB22_4
# %bb.30:                               #   in Loop: Header=BB22_5 Depth=2
	add	t1, s8, s10
	lh	t1, 0(t1)
	lh	s5, 224(s0)
	add	t1, s5, t1
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s5, a6
	blt	a6, t1, .LBB22_32
.LBB22_31:                              #   in Loop: Header=BB22_5 Depth=2
	mv	s5, t1
.LBB22_32:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s5
	sh	t1, 224(s0)
	slli	t1, a3, 6
	lui	s5, %hi(bestIntraFAdjust4x4Cr)
	addi	s5, s5, %lo(bestIntraFAdjust4x4Cr)
	add	t1, s5, t1
	slli	s5, s11, 2
	add	t1, t1, s5
	addi	s6, t1, 1024
	addi	s5, s0, 256
	j	.LBB22_70
.LBB22_33:                              #   in Loop: Header=BB22_5 Depth=2
	add	s0, t4, t1
	lh	t1, 96(s0)
	add	t1, t1, s6
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s6, a6
	blt	a6, t1, .LBB22_35
# %bb.34:                               #   in Loop: Header=BB22_5 Depth=2
	mv	s6, t1
.LBB22_35:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s6
	sh	t1, 96(s0)
	bnez	s5, .LBB22_4
# %bb.36:                               #   in Loop: Header=BB22_5 Depth=2
	lw	t1, 0(t0)
	beqz	t1, .LBB22_4
# %bb.37:                               #   in Loop: Header=BB22_5 Depth=2
	add	t1, s8, s10
	lh	t1, 0(t1)
	lh	s5, 128(s0)
	add	t1, s5, t1
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s5, a6
	blt	a6, t1, .LBB22_39
# %bb.38:                               #   in Loop: Header=BB22_5 Depth=2
	mv	s5, t1
.LBB22_39:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s5
	sh	t1, 128(s0)
	slli	t1, a3, 6
	lui	s5, %hi(bestIntraFAdjust4x4Cr)
	addi	s5, s5, %lo(bestIntraFAdjust4x4Cr)
	add	t1, s5, t1
	slli	s5, s11, 2
	add	t1, t1, s5
	addi	s6, t1, 1024
	addi	s5, s0, 160
	j	.LBB22_70
.LBB22_40:                              #   in Loop: Header=BB22_5 Depth=2
	beqz	a1, .LBB22_62
# %bb.41:                               #   in Loop: Header=BB22_5 Depth=2
	andi	t1, s9, 7
	or	t1, t1, s2
	slli	t1, t1, 1
	add	t1, s4, t1
	addi	s0, t1, 384
	lui	t1, %hi(bestInterFAdjust8x8)
	addi	t1, t1, %lo(bestInterFAdjust8x8)
	j	.LBB22_63
.LBB22_42:                              #   in Loop: Header=BB22_5 Depth=2
	add	s6, s4, t1
	lh	t1, 256(s6)
	add	t1, t1, s0
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s0, a6
	blt	a6, t1, .LBB22_44
# %bb.43:                               #   in Loop: Header=BB22_5 Depth=2
	mv	s0, t1
.LBB22_44:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s0
	sh	t1, 256(s6)
	bnez	s5, .LBB22_4
# %bb.45:                               #   in Loop: Header=BB22_5 Depth=2
	lw	t1, 0(t0)
	beqz	t1, .LBB22_4
# %bb.46:                               #   in Loop: Header=BB22_5 Depth=2
	andi	t1, s9, 3
	or	t1, t1, ra
	add	s0, s8, s10
	lh	s5, 0(s0)
	slli	t1, t1, 1
	add	s0, t4, t1
	lh	t1, 224(s0)
	add	t1, t1, s5
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s5, a6
	bge	a6, t1, .LBB22_31
	j	.LBB22_32
.LBB22_47:                              #   in Loop: Header=BB22_5 Depth=2
	add	s6, s4, t1
	lh	t1, 128(s6)
	add	t1, t1, s0
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s0, a6
	blt	a6, t1, .LBB22_49
# %bb.48:                               #   in Loop: Header=BB22_5 Depth=2
	mv	s0, t1
.LBB22_49:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s0
	sh	t1, 128(s6)
	bnez	s5, .LBB22_4
# %bb.50:                               #   in Loop: Header=BB22_5 Depth=2
	lw	t1, 0(t0)
	beqz	t1, .LBB22_4
# %bb.51:                               #   in Loop: Header=BB22_5 Depth=2
	andi	t1, s9, 3
	or	t1, t1, ra
	add	s0, s8, s10
	lh	s6, 0(s0)
	slli	t1, t1, 1
	add	s5, t4, t1
	lh	t1, 128(s5)
	add	t1, t1, s6
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s6, a6
	blt	a6, t1, .LBB22_53
# %bb.52:                               #   in Loop: Header=BB22_5 Depth=2
	mv	s6, t1
.LBB22_53:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s6
	sh	t1, 128(s5)
	addi	s6, s0, 1024
	addi	s5, s5, 160
	j	.LBB22_70
.LBB22_54:                              #   in Loop: Header=BB22_5 Depth=2
	andi	t1, s9, 3
	or	t1, t1, ra
	slli	t1, t1, 1
	add	t1, t4, t1
	addi	s0, t1, 384
	lui	t1, %hi(bestInterFAdjust4x4)
	addi	t1, t1, %lo(bestInterFAdjust4x4)
.LBB22_55:                              #   in Loop: Header=BB22_5 Depth=2
	add	t1, t1, a2
	add	t1, t1, s10
	lh	t1, 0(t1)
	lh	s6, 0(s0)
	add	t1, s6, t1
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s6, a6
	blt	a6, t1, .LBB22_57
# %bb.56:                               #   in Loop: Header=BB22_5 Depth=2
	mv	s6, t1
.LBB22_57:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s6
	and	s5, s5, a5
	sh	t1, 0(s0)
	bnez	s5, .LBB22_4
# %bb.58:                               #   in Loop: Header=BB22_5 Depth=2
	lw	t1, 0(t0)
	beqz	t1, .LBB22_4
# %bb.59:                               #   in Loop: Header=BB22_5 Depth=2
	andi	t1, s9, 3
	or	t1, t1, ra
	add	s0, s7, s10
	lh	s5, 0(s0)
	slli	t1, t1, 1
	add	s0, t4, t1
	lh	t1, 416(s0)
	add	t1, t1, s5
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s5, a6
	blt	a6, t1, .LBB22_61
# %bb.60:                               #   in Loop: Header=BB22_5 Depth=2
	mv	s5, t1
.LBB22_61:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s5
	sh	t1, 416(s0)
	slli	t1, a3, 6
	lui	s5, %hi(bestInterFAdjust4x4Cr)
	addi	s5, s5, %lo(bestInterFAdjust4x4Cr)
	add	t1, s5, t1
	slli	s5, s11, 2
	add	t1, t1, s5
	addi	s6, t1, 1024
	addi	s5, s0, 448
	j	.LBB22_70
.LBB22_62:                              #   in Loop: Header=BB22_5 Depth=2
	andi	t1, s9, 3
	or	t1, t1, ra
	slli	t1, t1, 1
	add	t1, t4, t1
	addi	s0, t1, 288
	lui	t1, %hi(bestInterFAdjust4x4)
	addi	t1, t1, %lo(bestInterFAdjust4x4)
.LBB22_63:                              #   in Loop: Header=BB22_5 Depth=2
	add	t1, t1, a2
	add	t1, t1, s10
	lh	t1, 0(t1)
	lh	s6, 0(s0)
	add	t1, s6, t1
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s6, a6
	blt	a6, t1, .LBB22_65
# %bb.64:                               #   in Loop: Header=BB22_5 Depth=2
	mv	s6, t1
.LBB22_65:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s6
	and	s5, s5, a5
	sh	t1, 0(s0)
	bnez	s5, .LBB22_4
# %bb.66:                               #   in Loop: Header=BB22_5 Depth=2
	lw	t1, 0(t0)
	beqz	t1, .LBB22_4
# %bb.67:                               #   in Loop: Header=BB22_5 Depth=2
	andi	t1, s9, 3
	or	t1, t1, ra
	add	s0, s7, s10
	lh	s5, 0(s0)
	slli	t1, t1, 1
	add	s0, t4, t1
	lh	t1, 320(s0)
	add	t1, t1, s5
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s5, a6
	blt	a6, t1, .LBB22_69
# %bb.68:                               #   in Loop: Header=BB22_5 Depth=2
	mv	s5, t1
.LBB22_69:                              #   in Loop: Header=BB22_5 Depth=2
	slti	t1, t1, 0
	addi	t1, t1, -1
	and	t1, t1, s5
	sh	t1, 320(s0)
	slli	t1, a3, 6
	lui	s5, %hi(bestInterFAdjust4x4Cr)
	addi	s5, s5, %lo(bestInterFAdjust4x4Cr)
	add	t1, s5, t1
	slli	s5, s11, 2
	add	t1, t1, s5
	addi	s6, t1, 1024
	addi	s5, s0, 352
.LBB22_70:                              #   in Loop: Header=BB22_5 Depth=2
	lh	t1, 0(s6)
	lh	s0, 0(s5)
	add	t1, s0, t1
	slli	t1, t1, 48
	srai	t1, t1, 48
	mv	s0, a6
	blt	a6, t1, .LBB22_3
# %bb.71:                               #   in Loop: Header=BB22_5 Depth=2
	mv	s0, t1
	j	.LBB22_3
.LBB22_72:
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
	mv	s1, a3
	mv	s2, a2
	addiw	a5, a1, -1
	li	a6, 3
	lui	a3, %hi(img)
	mv	s7, a1
	bltu	a5, a6, .LBB23_2
# %bb.1:
	li	s7, 4
.LBB23_2:
	lui	a5, %hi(input)
	ld	a5, %lo(input)(a5)
	ld	a3, %lo(img)(a3)
	andi	s3, a0, -2
	slli	s7, s7, 3
	add	a5, a5, s7
	lw	a6, 152(a5)
	lw	a2, 148(a5)
	slli	a5, a0, 1
	andi	a7, a5, 2
	addw	t0, a6, s3
	sd	t0, 16(sp)                      # 8-byte Folded Spill
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	sd	a7, 32(sp)                      # 8-byte Folded Spill
	addw	s4, a2, a7
	bltz	s2, .LBB23_32
# %bb.3:
	lui	a7, 8
	add	a7, a3, a7
	lw	t0, 12(a3)
	ld	s6, -1192(a7)
	lw	a3, 24(a3)
	li	a7, 528
	mul	a7, t0, a7
	li	t0, 1
	add	s6, s6, a7
	bne	a3, t0, .LBB23_40
# %bb.4:
	blez	a6, .LBB23_48
# %bb.5:
	andi	a5, a5, 2
	sd	a5, 8(sp)                       # 8-byte Folded Spill
	andi	a0, a0, 1
	slli	a0, a0, 4
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	lui	a5, %hi(img)
	lui	a7, %hi(direct_ref_idx)
	li	t0, 2
	lui	t1, %hi(enc_picture)
	lui	t2, 2
	addiw	a0, t2, -1712
	li	t4, 1
	lui	t5, 22
	li	t6, 264
	j	.LBB23_7
.LBB23_6:                               #   in Loop: Header=BB23_7 Depth=1
	addi	s3, s3, 1
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	bge	s3, a2, .LBB23_48
.LBB23_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_11 Depth 2
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	blez	a2, .LBB23_6
# %bb.8:                                #   in Loop: Header=BB23_7 Depth=1
	ld	a3, %lo(img)(a5)
	lw	a3, 148(a3)
	add	a3, s3, a3
	slli	s7, a3, 3
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 0(sp)                       # 8-byte Folded Reload
	ld	s10, 8(sp)                      # 8-byte Folded Reload
	j	.LBB23_11
.LBB23_9:                               #   in Loop: Header=BB23_11 Depth=2
	ld	a2, 24(t3)
	ld	a2, 8(a2)
	ld	a3, 0(t3)
	add	a2, a2, s7
	ld	a2, 0(a2)
	ld	a3, 8(a3)
	add	a2, a2, ra
	ld	a2, 0(a2)
	add	a3, a3, s7
	ld	a3, 0(a3)
	sh	zero, 0(a2)
	sh	zero, 2(a2)
	add	a3, a3, s11
	li	t3, -1
	sb	t3, 0(a3)
	ld	a3, %lo(enc_picture)(t1)
.LBB23_10:                              #   in Loop: Header=BB23_11 Depth=2
	add	a3, a3, t2
	ld	a2, -1704(a3)
	ld	a2, 8(a2)
	add	a2, a2, s7
	ld	a2, 0(a2)
	add	a2, a2, ra
	sd	t3, 0(a2)
	addi	s10, s10, 1
	addi	s9, s9, 8
	addi	s8, s8, 1
	bge	s10, s4, .LBB23_6
.LBB23_11:                              #   Parent Loop BB23_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s0, %lo(img)(a5)
	lw	a3, 144(s0)
	addw	s11, s8, a3
	beqz	a1, .LBB23_18
# %bb.12:                               #   in Loop: Header=BB23_11 Depth=2
	ori	a3, s2, 2
	slli	ra, s11, 3
	slli	s5, s3, 3
	bne	a3, t0, .LBB23_19
.LBB23_13:                              #   in Loop: Header=BB23_11 Depth=2
	ld	t3, %lo(enc_picture)(t1)
	add	t3, t3, a0
	ld	a3, 24(t3)
	ld	a3, 0(a3)
	add	a3, a3, s7
	ld	a3, 0(a3)
	add	a3, a3, ra
	ld	a3, 0(a3)
	bne	a1, t4, .LBB23_20
# %bb.14:                               #   in Loop: Header=BB23_11 Depth=2
	bne	s2, t0, .LBB23_20
# %bb.15:                               #   in Loop: Header=BB23_11 Depth=2
	lhu	a6, 476(s6)
	beqz	a6, .LBB23_20
# %bb.16:                               #   in Loop: Header=BB23_11 Depth=2
	beq	a6, t4, .LBB23_22
# %bb.17:                               #   in Loop: Header=BB23_11 Depth=2
	addiw	a6, t5, -760
	j	.LBB23_23
.LBB23_18:                              #   in Loop: Header=BB23_11 Depth=2
	lui	a2, %hi(direct_pdir)
	ld	a2, %lo(direct_pdir)(a2)
	ld	a3, %lo(direct_ref_idx)(a7)
	add	a2, a2, s7
	ld	a2, 0(a2)
	ld	a4, 0(a3)
	slli	a6, s11, 1
	ld	a3, 8(a3)
	add	a2, a2, a6
	add	a4, a4, s7
	ld	a4, 0(a4)
	add	a3, a3, s7
	ld	a3, 0(a3)
	lh	s2, 0(a2)
	add	a4, a4, s11
	lbu	s1, 0(a4)
	add	a3, a3, s11
	lbu	a4, 0(a3)
	ori	a3, s2, 2
	slli	ra, s11, 3
	slli	s5, s3, 3
	beq	a3, t0, .LBB23_13
.LBB23_19:                              #   in Loop: Header=BB23_11 Depth=2
	ld	a3, %lo(enc_picture)(t1)
	add	a3, a3, a0
	ld	a6, 24(a3)
	ld	a6, 0(a6)
	ld	a3, 0(a3)
	add	a6, a6, s7
	ld	a6, 0(a6)
	ld	a3, 0(a3)
	add	a6, a6, ra
	ld	a6, 0(a6)
	add	a3, a3, s7
	ld	a3, 0(a3)
	sh	zero, 0(a6)
	sh	zero, 2(a6)
	add	a3, a3, s11
	li	s0, -1
	sb	s0, 0(a3)
	ld	a3, %lo(enc_picture)(t1)
	j	.LBB23_21
.LBB23_20:                              #   in Loop: Header=BB23_11 Depth=2
	add	s0, s0, t5
	ld	a6, -776(s0)
	add	a6, a6, s5
	ld	a6, 0(a6)
	add	a6, a6, s9
	ld	a6, 0(a6)
	ld	a6, 0(a6)
	slli	s0, s1, 3
	add	a6, a6, s0
	ld	a6, 0(a6)
	slli	s0, a1, 3
	add	a6, a6, s0
	ld	a6, 0(a6)
	ld	t3, 0(t3)
	lh	s0, 0(a6)
	ld	t3, 0(t3)
	sh	s0, 0(a3)
	lh	a6, 2(a6)
	add	t3, t3, s7
	ld	t3, 0(t3)
	sh	a6, 2(a3)
	add	t3, t3, s11
	sb	s1, 0(t3)
	ld	a3, %lo(enc_picture)(t1)
	add	a6, a3, t2
	ld	a6, -1712(a6)
	ld	a6, 0(a6)
	add	a6, a6, s7
	ld	a6, 0(a6)
	lw	t3, 428(s6)
	add	a6, a6, s11
	lbu	a6, 0(a6)
	mul	t3, t3, t6
	add	t3, a3, t3
	slli	a6, a6, 3
	add	a6, t3, a6
	ld	s0, 24(a6)
.LBB23_21:                              #   in Loop: Header=BB23_11 Depth=2
	add	t3, a3, a0
	ld	a6, 8(t3)
	ld	a6, 0(a6)
	add	a6, a6, s7
	ld	a6, 0(a6)
	add	a6, a6, ra
	addiw	a2, s2, -1
	sd	s0, 0(a6)
	bltu	t4, a2, .LBB23_9
	j	.LBB23_24
.LBB23_22:                              #   in Loop: Header=BB23_11 Depth=2
	addiw	a6, t5, -768
.LBB23_23:                              #   in Loop: Header=BB23_11 Depth=2
	add	a6, s0, a6
	ld	a6, 0(a6)
	add	a6, a6, s5
	ld	a6, 0(a6)
	add	a6, a6, s9
	ld	a6, 0(a6)
	ld	a6, 0(a6)
	ld	a6, 0(a6)
	ld	a6, 8(a6)
	ld	t3, 0(t3)
	lh	s0, 0(a6)
	ld	t3, 0(t3)
	sh	s0, 0(a3)
	lh	a6, 2(a6)
	add	t3, t3, s7
	ld	t3, 0(t3)
	sh	a6, 2(a3)
	add	t3, t3, s11
	sb	zero, 0(t3)
	ld	a3, %lo(enc_picture)(t1)
	add	a6, a3, t2
	ld	a6, -1704(a6)
	lw	t3, 428(s6)
	ld	a6, 0(a6)
	mul	t3, t3, t6
	add	t3, a3, t3
	add	a6, a6, s7
	ld	a6, 0(a6)
	ld	t3, 24(t3)
	add	a6, a6, ra
	sd	t3, 0(a6)
.LBB23_24:                              #   in Loop: Header=BB23_11 Depth=2
	add	a3, a3, a0
	ld	a2, 24(a3)
	ld	a2, 8(a2)
	add	a2, a2, s7
	ld	a2, 0(a2)
	add	a2, a2, ra
	ld	s0, 0(a2)
	bne	a1, t4, .LBB23_29
# %bb.25:                               #   in Loop: Header=BB23_11 Depth=2
	bne	s2, t0, .LBB23_29
# %bb.26:                               #   in Loop: Header=BB23_11 Depth=2
	lhu	a6, 476(s6)
	beqz	a6, .LBB23_29
# %bb.27:                               #   in Loop: Header=BB23_11 Depth=2
	beq	a6, t4, .LBB23_30
# %bb.28:                               #   in Loop: Header=BB23_11 Depth=2
	addiw	t3, t5, -760
	j	.LBB23_31
.LBB23_29:                              #   in Loop: Header=BB23_11 Depth=2
	ld	a2, %lo(img)(a5)
	add	a2, a2, t5
	ld	a2, -776(a2)
	add	a2, a2, s5
	ld	a2, 0(a2)
	add	a2, a2, s9
	ld	a2, 0(a2)
	ld	a2, 8(a2)
	slli	a6, a4, 3
	add	a2, a2, a6
	ld	a2, 0(a2)
	slli	a6, a1, 3
	add	a2, a2, a6
	ld	a2, 0(a2)
	ld	a3, 0(a3)
	lh	a6, 0(a2)
	ld	a3, 8(a3)
	sh	a6, 0(s0)
	lh	a2, 2(a2)
	add	a3, a3, s7
	ld	a3, 0(a3)
	sh	a2, 2(s0)
	add	a3, a3, s11
	sb	a4, 0(a3)
	ld	a3, %lo(enc_picture)(t1)
	add	a2, a3, t2
	ld	a2, -1712(a2)
	ld	a2, 8(a2)
	add	a2, a2, s7
	ld	a2, 0(a2)
	lw	a6, 428(s6)
	add	a2, a2, s11
	lbu	a2, 0(a2)
	addiw	a6, a6, 1
	mul	a6, a6, t6
	add	a6, a3, a6
	slli	a2, a2, 3
	add	a2, a6, a2
	ld	t3, 24(a2)
	j	.LBB23_10
.LBB23_30:                              #   in Loop: Header=BB23_11 Depth=2
	addiw	t3, t5, -768
.LBB23_31:                              #   in Loop: Header=BB23_11 Depth=2
	ld	a2, %lo(img)(a5)
	add	a2, a2, t3
	ld	a2, 0(a2)
	add	a2, a2, s5
	ld	a2, 0(a2)
	add	a2, a2, s9
	ld	a2, 0(a2)
	ld	a2, 8(a2)
	ld	a2, 0(a2)
	ld	a2, 8(a2)
	ld	a3, 0(a3)
	lh	a6, 0(a2)
	ld	a3, 8(a3)
	sh	a6, 0(s0)
	lh	a2, 2(a2)
	add	a3, a3, s7
	ld	a3, 0(a3)
	sh	a2, 2(s0)
	add	a3, a3, s11
	sb	zero, 0(a3)
	lw	a2, 428(s6)
	ld	a3, %lo(enc_picture)(t1)
	addiw	a2, a2, 1
	mul	a2, a2, t6
	add	a2, a3, a2
	ld	t3, 24(a2)
	j	.LBB23_10
.LBB23_32:
	blez	a6, .LBB23_48
# %bb.33:
	lw	a0, 148(a3)
	add	s3, a0, s3
	lui	s0, %hi(enc_picture)
	lui	s5, 2
	addiw	s6, s5, -1712
	li	s8, -1
	lui	s9, %hi(input)
	lui	s10, %hi(img)
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	j	.LBB23_35
.LBB23_34:                              #   in Loop: Header=BB23_35 Depth=1
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	ld	a2, %lo(input)(s9)
	add	a1, a1, s11
	ld	a1, 0(a1)
	add	a2, a2, s7
	lw	a2, 148(a2)
	add	a0, a1, a0
	li	a1, 255
	call	memset
	ld	a0, %lo(enc_picture)(s0)
	add	a0, a0, s5
	ld	a0, -1712(a0)
	ld	a0, 8(a0)
	ld	a1, %lo(img)(s10)
	ld	a2, %lo(input)(s9)
	add	a0, a0, s11
	ld	a0, 0(a0)
	lw	a1, 144(a1)
	add	a2, a2, s7
	lw	a2, 148(a2)
	addw	a1, a1, s1
	add	a0, a0, a1
	li	a1, 255
	call	memset
	ld	a0, %lo(enc_picture)(s0)
	add	a0, a0, s5
	ld	a0, -1688(a0)
	ld	a1, %lo(img)(s10)
	ld	a0, 0(a0)
	lw	a1, 144(a1)
	add	a0, a0, s11
	ld	a2, %lo(input)(s9)
	ld	a0, 0(a0)
	addw	a1, a1, s1
	slli	a1, a1, 3
	add	a2, a2, s7
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
	ld	a1, %lo(img)(s10)
	ld	a0, 8(a0)
	lw	a1, 144(a1)
	add	a0, a0, s11
	ld	a2, %lo(input)(s9)
	ld	a0, 0(a0)
	addw	a1, a1, s1
	slli	a1, a1, 3
	add	a2, a2, s7
	lw	a2, 148(a2)
	add	a0, a0, a1
	ld	a0, 0(a0)
	slliw	a2, a2, 1
	slli	a2, a2, 1
	li	a1, 0
	call	memset
	ld	a3, %lo(img)(s10)
	lw	a0, 148(a3)
	addi	s3, s3, 1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	addw	a0, a0, a1
	bge	s3, a0, .LBB23_48
.LBB23_35:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_39 Depth 2
	lw	a2, 144(a3)
	ld	a1, %lo(enc_picture)(s0)
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	addw	a0, a2, a0
	add	a1, a1, s6
	slli	s11, s3, 3
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	blez	a3, .LBB23_34
# %bb.36:                               #   in Loop: Header=BB23_35 Depth=1
	addw	a3, a2, s4
	addi	a2, a0, 1
	blt	a3, a2, .LBB23_38
# %bb.37:                               #   in Loop: Header=BB23_35 Depth=1
	mv	a2, a3
.LBB23_38:                              #   in Loop: Header=BB23_35 Depth=1
	ld	a3, 8(a1)
	ld	a4, 0(a3)
	ld	a3, 8(a3)
	add	a4, a4, s11
	add	a3, a3, s11
	ld	a5, 0(a3)
	ld	a4, 0(a4)
	slli	a6, a0, 3
	add	a3, a5, a6
	add	a4, a4, a6
	slli	a2, a2, 3
	add	a2, a5, a2
.LBB23_39:                              #   Parent Loop BB23_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	s8, 0(a4)
	sd	s8, 0(a3)
	addi	a3, a3, 8
	addi	a4, a4, 8
	bne	a3, a2, .LBB23_39
	j	.LBB23_34
.LBB23_40:
	blez	a6, .LBB23_48
# %bb.41:
	andi	a2, a5, 2
	addi	a2, a2, 1
	andi	a0, a0, 1
	blt	s4, a2, .LBB23_43
# %bb.42:
	mv	a2, s4
.LBB23_43:
	slli	s4, a0, 4
	slli	s2, a2, 3
	lui	s8, %hi(img)
	lui	s9, %hi(enc_picture)
	lui	a0, 2
	addiw	s11, a0, -1704
	slli	s0, s1, 3
	slli	s10, a1, 3
	j	.LBB23_45
.LBB23_44:                              #   in Loop: Header=BB23_45 Depth=1
	addi	s3, s3, 1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	bge	s3, a0, .LBB23_48
.LBB23_45:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_47 Depth 2
	ld	a0, %lo(enc_picture)(s9)
	ld	a1, %lo(img)(s8)
	lui	a2, 2
	add	a0, a0, a2
	ld	a0, -1712(a0)
	lw	a2, 148(a1)
	ld	a0, 0(a0)
	add	a2, s3, a2
	slli	s5, a2, 3
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	add	a0, a0, s5
	ld	a0, 0(a0)
	lw	a1, 144(a1)
	add	a2, a2, s7
	lw	a2, 148(a2)
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	addw	a1, a1, a3
	add	a0, a0, a1
	mv	a1, s1
	call	memset
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	blez	a0, .LBB23_44
# %bb.46:                               #   in Loop: Header=BB23_45 Depth=1
	ld	a0, %lo(img)(s8)
	ld	a1, %lo(enc_picture)(s9)
	lui	a2, 22
	add	a2, a0, a2
	ld	a2, -776(a2)
	add	a3, a1, s11
	ld	a4, 16(a3)
	lw	a5, 144(a0)
	slli	a0, s3, 3
	add	a0, a2, a0
	ld	a2, 0(a4)
	ld	a4, 0(a0)
	ld	a0, 0(a3)
	lw	a3, 428(s6)
	add	a2, a2, s5
	ld	a6, 0(a2)
	ld	a0, 0(a0)
	li	a2, 264
	mul	a2, a3, a2
	add	a1, a1, s0
	add	a1, a1, a2
	add	a0, a0, s5
	ld	a2, 0(a0)
	ld	a0, 24(a1)
	add	a1, a4, s4
	slli	a5, a5, 3
	add	a3, s4, a5
	add	a2, a2, a3
	add	a3, s4, a5
	add	a3, a6, a3
	add	a4, a4, s2
.LBB23_47:                              #   Parent Loop BB23_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a5, 0(a1)
	ld	a5, 0(a5)
	add	a5, a5, s0
	ld	a5, 0(a5)
	add	a5, a5, s10
	ld	a5, 0(a5)
	lh	a6, 0(a5)
	ld	a7, 0(a3)
	sh	a6, 0(a7)
	lh	a5, 2(a5)
	sh	a5, 2(a7)
	sd	a0, 0(a2)
	addi	a1, a1, 8
	addi	a2, a2, 8
	addi	a3, a3, 8
	bne	a1, a4, .LBB23_47
	j	.LBB23_44
.LBB23_48:
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
	addi	sp, sp, -64
	sd	s0, 56(sp)                      # 8-byte Folded Spill
	sd	s1, 48(sp)                      # 8-byte Folded Spill
	sd	s2, 40(sp)                      # 8-byte Folded Spill
	sd	s3, 32(sp)                      # 8-byte Folded Spill
	sd	s4, 24(sp)                      # 8-byte Folded Spill
	sd	s5, 16(sp)                      # 8-byte Folded Spill
	sd	s6, 8(sp)                       # 8-byte Folded Spill
	sd	s7, 0(sp)                       # 8-byte Folded Spill
	lui	a7, %hi(img)
	ld	a7, %lo(img)(a7)
	lui	t0, 22
	addiw	t0, t0, -784
	add	a7, a7, t0
	ld	t0, 8(a7)
	ld	a7, 0(a7)
	andi	t2, a1, -2
	addiw	t1, t2, 2
	beqz	a6, .LBB24_8
# %bb.1:
	beqz	a5, .LBB24_13
# %bb.2:
	li	a6, 1
	beq	a5, a6, .LBB24_11
# %bb.3:
	li	a6, 2
	bne	a5, a6, .LBB24_16
# %bb.4:
	slli	a5, a1, 1
	andi	a6, a5, 2
	addi	t3, a6, 1
	slli	a5, t2, 3
	slli	a0, a0, 7
	slli	t4, t2, 4
	add	a0, a0, t4
	andi	a1, a1, 1
	slli	a1, a1, 3
	or	a0, a0, a1
	addi	t4, a0, 64
	lui	a1, %hi(all_mv8x8)
	addi	a1, a1, %lo(all_mv8x8)
	addi	t2, t2, 1
	lui	t5, %hi(pred_mv8x8)
	addi	t5, t5, %lo(pred_mv8x8)
	blt	t1, t2, .LBB24_6
# %bb.5:
	mv	t2, t1
.LBB24_6:
	add	a0, t0, a5
	add	a7, a7, a5
	add	a1, a1, t4
	add	a5, t5, t4
	slli	t2, t2, 3
	add	t0, t0, t2
	slli	a6, a6, 3
	slli	a3, a3, 3
	slli	a2, a2, 3
	slli	a4, a4, 3
	slli	t1, t3, 3
.LBB24_7:                               # =>This Inner Loop Header: Depth=1
	ld	t3, 0(a0)
	add	t2, t3, a6
	ld	t4, 0(t2)
	ld	t5, 0(t4)
	ld	t2, 0(a7)
	add	t5, t5, a3
	ld	t5, 0(t5)
	add	t6, t2, a6
	ld	t6, 0(t6)
	add	t5, t5, a2
	ld	t5, 0(t5)
	ld	s0, 0(t6)
	lh	s1, 0(t5)
	add	s0, s0, a3
	ld	s0, 0(s0)
	sh	s1, -64(a1)
	lh	t5, 2(t5)
	add	s0, s0, a2
	ld	s0, 0(s0)
	ld	t4, 8(t4)
	sh	t5, -62(a1)
	lh	t5, 0(s0)
	add	t4, t4, a4
	ld	t4, 0(t4)
	sh	t5, -64(a5)
	lh	t5, 2(s0)
	add	t4, t4, a2
	ld	t4, 0(t4)
	ld	t6, 8(t6)
	sh	t5, -62(a5)
	lh	t5, 0(t4)
	add	t6, t6, a4
	ld	t6, 0(t6)
	sh	t5, 0(a1)
	lh	t4, 2(t4)
	add	t6, t6, a2
	ld	t5, 0(t6)
	add	t3, t3, t1
	ld	t3, 0(t3)
	sh	t4, 2(a1)
	lh	t4, 0(t5)
	ld	t6, 0(t3)
	sh	t4, 0(a5)
	add	t6, t6, a3
	ld	t4, 0(t6)
	add	t2, t2, t1
	ld	t2, 0(t2)
	lh	t5, 2(t5)
	add	t4, t4, a2
	ld	t4, 0(t4)
	ld	t6, 0(t2)
	sh	t5, 2(a5)
	lh	t5, 0(t4)
	add	t6, t6, a3
	ld	t6, 0(t6)
	sh	t5, -60(a1)
	lh	t4, 2(t4)
	add	t6, t6, a2
	ld	t5, 0(t6)
	ld	t3, 8(t3)
	sh	t4, -58(a1)
	lh	t4, 0(t5)
	add	t3, t3, a4
	ld	t3, 0(t3)
	sh	t4, -60(a5)
	lh	t4, 2(t5)
	add	t3, t3, a2
	ld	t3, 0(t3)
	ld	t2, 8(t2)
	sh	t4, -58(a5)
	lh	t4, 0(t3)
	add	t2, t2, a4
	ld	t2, 0(t2)
	sh	t4, 4(a1)
	lh	t3, 2(t3)
	add	t2, t2, a2
	ld	t2, 0(t2)
	sh	t3, 6(a1)
	lh	t3, 0(t2)
	sh	t3, 4(a5)
	lh	t2, 2(t2)
	sh	t2, 6(a5)
	addi	a0, a0, 8
	addi	a7, a7, 8
	addi	a1, a1, 16
	addi	a5, a5, 16
	bne	a0, t0, .LBB24_7
	j	.LBB24_15
.LBB24_8:
	bltz	a5, .LBB24_15
# %bb.9:
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
	lui	s0, %hi(pred_mv8x8)
	addi	s0, s0, %lo(pred_mv8x8)
	lh	s1, 0(a2)
	ld	t6, 0(t6)
	slli	s2, t2, 4
	add	s3, a4, s2
	slli	a0, a6, 2
	add	t6, t6, t3
	ld	t6, 0(t6)
	add	s4, s3, a0
	sh	s1, 0(s4)
	lh	s1, 2(a2)
	ld	t6, 32(t6)
	addi	s5, a6, 1
	slli	a2, s5, 3
	add	a5, a5, a2
	ld	a5, 0(a5)
	add	a6, s0, t5
	sh	s1, 2(s4)
	lh	t5, 0(t6)
	ld	a5, 0(a5)
	add	s2, a6, s2
	add	s0, s2, a0
	sh	t5, 0(s0)
	add	a5, a5, t3
	ld	a5, 0(a5)
	add	t4, t4, a2
	ld	t4, 0(t4)
	lh	t5, 2(t6)
	ld	t6, 32(a5)
	ld	t4, 0(t4)
	sh	t5, 2(s0)
	lh	t5, 0(t6)
	slli	a5, s5, 2
	add	t3, t4, t3
	ld	t3, 0(t3)
	add	s3, s3, a5
	sh	t5, 0(s3)
	lh	t4, 2(t6)
	ld	t3, 32(t3)
	sh	t4, 2(s3)
	lh	t4, 0(t3)
	add	s2, s2, a5
	sh	t4, 0(s2)
	lh	t3, 2(t3)
	addi	t2, t2, 1
	sh	t3, 2(s2)
	bge	t2, t1, .LBB24_15
# %bb.10:
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
	j	.LBB24_15
.LBB24_11:
	slli	a3, t2, 3
	add	a5, t0, a3
	ld	t4, 0(a5)
	slli	a1, a1, 1
	andi	a5, a1, 2
	slli	a1, a5, 3
	add	a6, t4, a1
	ld	a6, 0(a6)
	ld	a6, 8(a6)
	slli	t6, a4, 3
	add	a6, a6, t6
	ld	a6, 0(a6)
	slli	t5, a2, 3
	add	a6, a6, t5
	ld	s0, 0(a6)
	add	a3, a7, a3
	ld	a6, 0(a3)
	lh	s1, 0(s0)
	slli	s2, a0, 7
	add	a3, a6, a1
	ld	a3, 0(a3)
	lui	t3, %hi(all_mv8x8)
	addi	t3, t3, %lo(all_mv8x8)
	add	s3, t3, s2
	slli	s4, t2, 4
	ld	s5, 8(a3)
	add	s3, s3, s4
	addi	s3, s3, 64
	slli	a3, a5, 2
	add	s5, s5, t6
	ld	s5, 0(s5)
	add	s6, s3, a3
	sh	s1, 0(s6)
	lh	s0, 2(s0)
	add	s5, s5, t5
	ld	s1, 0(s5)
	sh	s0, 2(s6)
	lh	s0, 0(s1)
	addi	s5, a5, 1
	slli	a5, s5, 3
	add	t4, t4, a5
	ld	s6, 0(t4)
	lui	t4, %hi(pred_mv8x8)
	addi	t4, t4, %lo(pred_mv8x8)
	add	s2, t4, s2
	add	s2, s2, s4
	ld	s4, 8(s6)
	addi	s2, s2, 64
	add	s6, s2, a3
	sh	s0, 0(s6)
	add	s4, s4, t6
	ld	s0, 0(s4)
	lh	s1, 2(s1)
	add	a6, a6, a5
	ld	a6, 0(a6)
	add	s0, s0, t5
	ld	s0, 0(s0)
	ld	s4, 8(a6)
	sh	s1, 2(s6)
	lh	s1, 0(s0)
	slli	a6, s5, 2
	add	t6, s4, t6
	ld	t6, 0(t6)
	add	s3, s3, a6
	sh	s1, 0(s3)
	lh	s0, 2(s0)
	add	t5, t6, t5
	ld	t5, 0(t5)
	sh	s0, 2(s3)
	lh	t6, 0(t5)
	add	s2, s2, a6
	sh	t6, 0(s2)
	lh	t5, 2(t5)
	addi	t2, t2, 1
	sh	t5, 2(s2)
	bge	t2, t1, .LBB24_15
# %bb.12:
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
	j	.LBB24_15
.LBB24_13:
	slli	a4, t2, 3
	add	a5, t0, a4
	ld	a6, 0(a5)
	slli	a1, a1, 1
	andi	t3, a1, 2
	slli	a1, t3, 3
	add	a5, a6, a1
	ld	a5, 0(a5)
	ld	a5, 0(a5)
	slli	t6, a0, 7
	lui	a0, %hi(all_mv8x8)
	addi	a0, a0, %lo(all_mv8x8)
	slli	t4, a3, 3
	add	a5, a5, t4
	ld	a5, 0(a5)
	add	a4, a7, a4
	ld	s0, 0(a4)
	slli	t5, a2, 3
	add	a5, a5, t5
	ld	a4, 0(a5)
	add	a5, s0, a1
	ld	s1, 0(a5)
	add	a5, a0, t6
	lui	s2, %hi(pred_mv8x8)
	addi	s2, s2, %lo(pred_mv8x8)
	lh	s3, 0(a4)
	ld	s1, 0(s1)
	slli	s4, t2, 4
	add	s5, a5, s4
	slli	a0, t3, 2
	add	s1, s1, t4
	ld	s1, 0(s1)
	add	s6, s5, a0
	sh	s3, 0(s6)
	lh	s3, 2(a4)
	add	s1, s1, t5
	ld	s1, 0(s1)
	addi	s7, t3, 1
	slli	a4, s7, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	add	t3, s2, t6
	sh	s3, 2(s6)
	lh	t6, 0(s1)
	ld	a6, 0(a6)
	add	s4, t3, s4
	add	s2, s4, a0
	sh	t6, 0(s2)
	add	a6, a6, t4
	ld	a6, 0(a6)
	lh	t6, 2(s1)
	add	s0, s0, a4
	ld	s0, 0(s0)
	add	a6, a6, t5
	ld	s1, 0(a6)
	ld	s0, 0(s0)
	sh	t6, 2(s2)
	lh	t6, 0(s1)
	slli	a6, s7, 2
	add	t4, s0, t4
	ld	t4, 0(t4)
	add	s5, s5, a6
	sh	t6, 0(s5)
	lh	t6, 2(s1)
	add	t4, t4, t5
	ld	t4, 0(t4)
	sh	t6, 2(s5)
	lh	t5, 0(t4)
	add	s4, s4, a6
	sh	t5, 0(s4)
	lh	t4, 2(t4)
	addi	t2, t2, 1
	sh	t4, 2(s4)
	bge	t2, t1, .LBB24_15
# %bb.14:
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
.LBB24_15:
	ld	s0, 56(sp)                      # 8-byte Folded Reload
	ld	s1, 48(sp)                      # 8-byte Folded Reload
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	ld	s3, 32(sp)                      # 8-byte Folded Reload
	ld	s4, 24(sp)                      # 8-byte Folded Reload
	ld	s5, 16(sp)                      # 8-byte Folded Reload
	ld	s6, 8(sp)                       # 8-byte Folded Reload
	ld	s7, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB24_16:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 255
	ld	s0, 56(sp)                      # 8-byte Folded Reload
	ld	s1, 48(sp)                      # 8-byte Folded Reload
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	ld	s3, 32(sp)                      # 8-byte Folded Reload
	ld	s4, 24(sp)                      # 8-byte Folded Reload
	ld	s5, 16(sp)                      # 8-byte Folded Reload
	ld	s6, 8(sp)                       # 8-byte Folded Reload
	ld	s7, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
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
	addi	sp, sp, -48
	sd	s0, 40(sp)                      # 8-byte Folded Spill
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 8(sp)                       # 8-byte Folded Spill
	sd	s5, 0(sp)                       # 8-byte Folded Spill
	lui	a4, %hi(img)
	ld	a4, %lo(img)(a4)
	lui	a5, 22
	addiw	a5, a5, -784
	add	a4, a4, a5
	ld	a5, 8(a4)
	ld	a4, 0(a4)
	slli	a6, a1, 1
	lui	t0, 2
	add	a6, a2, a6
	add	t2, a6, t0
	lhu	a7, -2036(t2)
	add	a2, a2, a1
	add	t0, a2, t0
	lbu	t1, -2028(t0)
	andi	a6, a1, -2
	addiw	a2, a6, 2
	beqz	a3, .LBB25_8
# %bb.1:
	lh	t2, -2044(t2)
	beqz	a7, .LBB25_13
# %bb.2:
	lbu	t3, -2024(t0)
	li	a3, 1
	beq	a7, a3, .LBB25_11
# %bb.3:
	li	a3, 2
	bne	a7, a3, .LBB25_17
# %bb.4:
	slli	a3, a1, 1
	andi	a3, a3, 2
	addi	t4, a3, 1
	slli	a7, a6, 3
	slli	a0, a0, 7
	slli	t0, a6, 4
	add	a0, a0, t0
	andi	a1, a1, 1
	slli	a1, a1, 3
	or	a0, a0, a1
	addi	t0, a0, 64
	lui	a1, %hi(all_mv8x8)
	addi	a1, a1, %lo(all_mv8x8)
	addi	a6, a6, 1
	lui	t5, %hi(pred_mv8x8)
	addi	t5, t5, %lo(pred_mv8x8)
	blt	a2, a6, .LBB25_6
# %bb.5:
	mv	a6, a2
.LBB25_6:
	add	a0, a5, a7
	add	a4, a4, a7
	add	a1, a1, t0
	add	a2, t5, t0
	slli	a6, a6, 3
	add	a5, a5, a6
	slli	a3, a3, 3
	slli	a6, t1, 3
	slli	a7, t2, 3
	slli	t0, t3, 3
	slli	t1, t4, 3
.LBB25_7:                               # =>This Inner Loop Header: Depth=1
	ld	t3, 0(a0)
	add	t2, t3, a3
	ld	t4, 0(t2)
	ld	t5, 0(t4)
	ld	t2, 0(a4)
	add	t5, t5, a6
	ld	t5, 0(t5)
	lh	t6, -64(a1)
	add	s0, t2, a3
	ld	s0, 0(s0)
	add	t5, t5, a7
	ld	t5, 0(t5)
	ld	s1, 0(s0)
	sh	t6, 0(t5)
	lh	t6, -62(a1)
	add	s1, s1, a6
	ld	s1, 0(s1)
	sh	t6, 2(t5)
	lh	t5, -64(a2)
	add	s1, s1, a7
	ld	t6, 0(s1)
	ld	t4, 8(t4)
	sh	t5, 0(t6)
	lh	t5, -62(a2)
	add	t4, t4, t0
	ld	t4, 0(t4)
	sh	t5, 2(t6)
	lh	t5, 0(a1)
	add	t4, t4, a7
	ld	t4, 0(t4)
	ld	t6, 8(s0)
	sh	t5, 0(t4)
	lh	t5, 2(a1)
	add	t6, t6, t0
	ld	t6, 0(t6)
	sh	t5, 2(t4)
	lh	t4, 0(a2)
	add	t6, t6, a7
	ld	t5, 0(t6)
	add	t3, t3, t1
	ld	t3, 0(t3)
	sh	t4, 0(t5)
	lh	t4, 2(a2)
	ld	t6, 0(t3)
	sh	t4, 2(t5)
	add	t6, t6, a6
	ld	t4, 0(t6)
	lh	t5, -60(a1)
	add	t2, t2, t1
	ld	t2, 0(t2)
	add	t4, t4, a7
	ld	t4, 0(t4)
	ld	t6, 0(t2)
	sh	t5, 0(t4)
	lh	t5, -58(a1)
	add	t6, t6, a6
	ld	t6, 0(t6)
	sh	t5, 2(t4)
	lh	t4, -60(a2)
	add	t6, t6, a7
	ld	t5, 0(t6)
	ld	t3, 8(t3)
	sh	t4, 0(t5)
	lh	t4, -58(a2)
	add	t3, t3, t0
	ld	t3, 0(t3)
	sh	t4, 2(t5)
	lh	t4, 4(a1)
	add	t3, t3, a7
	ld	t3, 0(t3)
	ld	t2, 8(t2)
	sh	t4, 0(t3)
	lh	t4, 6(a1)
	add	t2, t2, t0
	ld	t2, 0(t2)
	sh	t4, 2(t3)
	lh	t3, 4(a2)
	add	t2, t2, a7
	ld	t2, 0(t2)
	sh	t3, 0(t2)
	lh	t3, 6(a2)
	sh	t3, 2(t2)
	addi	a0, a0, 8
	addi	a4, a4, 8
	addi	a1, a1, 16
	addi	a2, a2, 16
	bne	a0, a5, .LBB25_7
	j	.LBB25_16
.LBB25_8:
	slli	a7, a7, 48
	srai	a3, a7, 48
	bltz	a3, .LBB25_16
# %bb.9:
	slli	a7, a0, 7
	lui	t2, %hi(all_mv8x8)
	addi	t2, t2, %lo(all_mv8x8)
	slli	a0, a6, 3
	add	a3, a5, a0
	ld	t3, 0(a3)
	slli	a1, a1, 1
	andi	t0, a1, 2
	slli	a1, t0, 3
	add	a3, t3, a1
	ld	a3, 0(a3)
	add	t2, t2, a7
	add	a0, a4, a0
	ld	t4, 0(a0)
	ld	a3, 0(a3)
	slli	t5, a6, 4
	add	t6, t2, t5
	slli	a0, t1, 3
	add	a3, a3, a0
	ld	t1, 0(a3)
	slli	a3, t0, 2
	add	s0, t6, a3
	lh	s1, 0(s0)
	ld	s2, 32(t1)
	add	t1, t4, a1
	ld	t1, 0(t1)
	sh	s1, 0(s2)
	lh	s0, 2(s0)
	ld	s1, 0(t1)
	lui	t1, %hi(pred_mv8x8)
	addi	t1, t1, %lo(pred_mv8x8)
	add	t1, t1, a7
	sh	s0, 2(s2)
	add	s1, s1, a0
	ld	a7, 0(s1)
	add	t5, t1, t5
	add	s0, t5, a3
	lh	s1, 0(s0)
	ld	a7, 32(a7)
	sh	s1, 0(a7)
	addi	s1, t0, 1
	slli	t0, s1, 3
	add	t3, t3, t0
	ld	t3, 0(t3)
	lh	s0, 2(s0)
	ld	t3, 0(t3)
	sh	s0, 2(a7)
	slli	a7, s1, 2
	add	t6, t6, a7
	add	t3, t3, a0
	ld	t3, 0(t3)
	lh	s0, 0(t6)
	add	t4, t4, t0
	ld	t4, 0(t4)
	ld	t3, 32(t3)
	ld	t4, 0(t4)
	sh	s0, 0(t3)
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
	bge	a6, a2, .LBB25_16
# %bb.10:
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
	add	t2, t2, a6
	add	t3, t2, a3
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
	add	a6, t1, a6
	add	a3, a6, a3
	lh	a4, 0(a3)
	ld	a1, 32(a1)
	add	a5, a5, t0
	ld	a5, 0(a5)
	sh	a4, 0(a1)
	lh	a3, 2(a3)
	ld	a4, 0(a5)
	sh	a3, 2(a1)
	add	t2, t2, a7
	add	a4, a4, a0
	ld	a1, 0(a4)
	lh	a3, 0(t2)
	add	a2, a2, t0
	ld	a2, 0(a2)
	ld	a1, 32(a1)
	ld	a2, 0(a2)
	sh	a3, 0(a1)
	lh	a3, 2(t2)
	add	a0, a2, a0
	ld	a0, 0(a0)
	sh	a3, 2(a1)
	add	a6, a6, a7
	lh	a1, 0(a6)
	ld	a0, 32(a0)
	sh	a1, 0(a0)
	j	.LBB25_15
.LBB25_11:
	slli	a1, a1, 1
	andi	t6, a1, 2
	slli	t4, a6, 3
	add	a1, a5, t4
	ld	t5, 0(a1)
	slli	s0, a0, 7
	lui	t1, %hi(all_mv8x8)
	addi	t1, t1, %lo(all_mv8x8)
	slli	t0, t6, 3
	add	a1, t5, t0
	ld	a1, 0(a1)
	add	a3, t1, s0
	slli	s1, a6, 4
	add	a3, a3, s1
	ld	s2, 8(a1)
	addi	s3, a3, 64
	slli	a7, t6, 2
	slli	a1, t3, 3
	add	s2, s2, a1
	ld	t3, 0(s2)
	add	s2, s3, a7
	lh	s4, 0(s2)
	slli	a3, t2, 3
	add	t3, t3, a3
	ld	t2, 0(t3)
	add	t4, a4, t4
	ld	s5, 0(t4)
	sh	s4, 0(t2)
	lh	t3, 2(s2)
	add	t4, s5, t0
	ld	t4, 0(t4)
	sh	t3, 2(t2)
	ld	t2, 8(t4)
	lui	t4, %hi(pred_mv8x8)
	addi	t4, t4, %lo(pred_mv8x8)
	add	s0, t4, s0
	add	s0, s0, s1
	add	t2, t2, a1
	ld	t2, 0(t2)
	addi	s0, s0, 64
	add	s1, s0, a7
	lh	s2, 0(s1)
	add	t2, t2, a3
	ld	t2, 0(t2)
	addi	t6, t6, 1
	slli	t3, t6, 3
	add	t5, t5, t3
	ld	t5, 0(t5)
	sh	s2, 0(t2)
	lh	s1, 2(s1)
	ld	t5, 8(t5)
	sh	s1, 2(t2)
	add	t5, t5, a1
	ld	t5, 0(t5)
	slli	t2, t6, 2
	add	s3, s3, t2
	lh	t6, 0(s3)
	add	t5, t5, a3
	add	s5, s5, t3
	ld	s1, 0(s5)
	ld	t5, 0(t5)
	ld	s1, 8(s1)
	sh	t6, 0(t5)
	lh	t6, 2(s3)
	add	s1, s1, a1
	ld	s1, 0(s1)
	sh	t6, 2(t5)
	add	s0, s0, t2
	lh	t5, 0(s0)
	add	s1, s1, a3
	ld	t6, 0(s1)
	sh	t5, 0(t6)
	lh	t5, 2(s0)
	addi	a6, a6, 1
	sh	t5, 2(t6)
	bge	a6, a2, .LBB25_16
# %bb.12:
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
	j	.LBB25_16
.LBB25_13:
	slli	t3, a0, 7
	lui	a3, %hi(all_mv8x8)
	addi	a3, a3, %lo(all_mv8x8)
	add	a3, a3, t3
	slli	a0, a6, 3
	add	a7, a5, a0
	ld	t5, 0(a7)
	slli	a1, a1, 1
	andi	t6, a1, 2
	slli	t0, t6, 3
	add	a1, t5, t0
	ld	a1, 0(a1)
	add	a0, a4, a0
	ld	t4, 0(a0)
	slli	s0, a6, 4
	ld	a1, 0(a1)
	add	s1, a3, s0
	slli	a7, t6, 2
	slli	a0, t1, 3
	add	a1, a1, a0
	ld	t1, 0(a1)
	add	s2, s1, a7
	lh	s3, 0(s2)
	slli	a1, t2, 3
	add	t1, t1, a1
	ld	t1, 0(t1)
	add	t2, t4, t0
	ld	t2, 0(t2)
	sh	s3, 0(t1)
	lh	s2, 2(s2)
	ld	t2, 0(t2)
	lui	s3, %hi(pred_mv8x8)
	addi	s3, s3, %lo(pred_mv8x8)
	add	t3, s3, t3
	sh	s2, 2(t1)
	add	t2, t2, a0
	ld	t1, 0(t2)
	add	s0, t3, s0
	add	s2, s0, a7
	lh	s3, 0(s2)
	add	t1, t1, a1
	ld	t1, 0(t1)
	addi	t6, t6, 1
	slli	t2, t6, 3
	add	t5, t5, t2
	ld	t5, 0(t5)
	sh	s3, 0(t1)
	lh	s2, 2(s2)
	ld	t5, 0(t5)
	sh	s2, 2(t1)
	add	t5, t5, a0
	ld	t5, 0(t5)
	slli	t1, t6, 2
	add	s1, s1, t1
	lh	t6, 0(s1)
	add	t5, t5, a1
	add	t4, t4, t2
	ld	t4, 0(t4)
	ld	t5, 0(t5)
	ld	t4, 0(t4)
	sh	t6, 0(t5)
	lh	t6, 2(s1)
	add	t4, t4, a0
	ld	t4, 0(t4)
	sh	t6, 2(t5)
	add	s0, s0, t1
	lh	t5, 0(s0)
	add	t4, t4, a1
	ld	t4, 0(t4)
	sh	t5, 0(t4)
	lh	t5, 2(s0)
	addi	a6, a6, 1
	sh	t5, 2(t4)
	bge	a6, a2, .LBB25_16
# %bb.14:
	slli	a2, a6, 3
	add	a5, a5, a2
	ld	a5, 0(a5)
	add	t4, a5, t0
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
	add	t0, a2, t0
	ld	t0, 0(t0)
	sh	t5, 0(a4)
	lh	t4, 2(t4)
	ld	t0, 0(t0)
	sh	t4, 2(a4)
	add	t0, t0, a0
	ld	a4, 0(t0)
	add	a6, t3, a6
	add	a7, a6, a7
	lh	t0, 0(a7)
	add	a4, a4, a1
	add	a5, a5, t2
	ld	a5, 0(a5)
	ld	a4, 0(a4)
	ld	a5, 0(a5)
	sh	t0, 0(a4)
	lh	a7, 2(a7)
	add	a5, a5, a0
	ld	a5, 0(a5)
	sh	a7, 2(a4)
	add	a3, a3, t1
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
	add	a6, a6, t1
	lh	a2, 0(a6)
	add	a0, a0, a1
	ld	a0, 0(a0)
	sh	a2, 0(a0)
.LBB25_15:
	lh	a1, 2(a6)
	sh	a1, 2(a0)
.LBB25_16:
	ld	s0, 40(sp)                      # 8-byte Folded Reload
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	ld	s5, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB25_17:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 255
	ld	s0, 40(sp)                      # 8-byte Folded Reload
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	ld	s5, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
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
	and	s0, a5, a6
	slli	t5, a0, 7
	lui	s11, %hi(all_mv8x8)
	addi	s11, s11, %lo(all_mv8x8)
	slli	t6, t3, 4
	slli	a6, t4, 2
	addi	t2, t3, 1
	beqz	s0, .LBB26_10
# %bb.3:
	add	a3, s11, t5
	add	s0, a3, t6
	add	s0, s0, a6
	sh	zero, 6(s0)
	sh	zero, 4(s0)
	sh	zero, 2(s0)
	sh	zero, 0(s0)
	bge	t2, a1, .LBB26_12
# %bb.4:
	slli	t1, t2, 4
	add	a3, a3, t1
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
	lui	s0, %hi(pred_mv8x8)
	addi	s0, s0, %lo(pred_mv8x8)
	lh	s1, 0(a4)
	ld	t6, 0(t6)
	slli	s2, t3, 4
	add	s3, a5, s2
	slli	a0, t4, 2
	add	t6, t6, t2
	ld	t6, 0(t6)
	add	s4, s3, a0
	sh	s1, 0(s4)
	lh	s1, 2(a4)
	ld	t6, 32(t6)
	addi	t4, t4, 1
	slli	a4, t4, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	add	t1, s0, t1
	sh	s1, 2(s4)
	lh	s0, 0(t6)
	ld	a6, 0(a6)
	add	s2, t1, s2
	add	s1, s2, a0
	sh	s0, 0(s1)
	add	a6, a6, t2
	ld	a6, 0(a6)
	add	t5, t5, a4
	ld	t5, 0(t5)
	lh	t6, 2(t6)
	ld	s0, 32(a6)
	ld	t5, 0(t5)
	sh	t6, 2(s1)
	lh	t6, 0(s0)
	slli	a6, t4, 2
	add	t2, t5, t2
	ld	t2, 0(t2)
	add	s3, s3, a6
	sh	t6, 0(s3)
	lh	t4, 2(s0)
	ld	t2, 32(t2)
	sh	t4, 2(s3)
	lh	t4, 0(t2)
	add	s2, s2, a6
	sh	t4, 0(s2)
	lh	t2, 2(t2)
	addi	t3, t3, 1
	sh	t2, 2(s2)
	bge	t3, a1, .LBB26_17
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
	j	.LBB26_17
.LBB26_10:
	slli	s1, t3, 3
	add	s0, t0, s1
	ld	s4, 0(s0)
	slli	s0, t4, 3
	add	s2, s4, s0
	ld	s2, 0(s2)
	ld	s3, 0(s2)
	add	s1, a7, s1
	ld	s2, 0(s1)
	slli	s6, a3, 3
	add	s3, s3, s6
	ld	s1, 0(s3)
	slli	s5, a2, 3
	add	s3, s2, s0
	ld	s7, 0(s3)
	add	s1, s1, s5
	ld	s1, 0(s1)
	add	s3, s11, t5
	ld	s7, 0(s7)
	lui	s8, %hi(pred_mv8x8)
	addi	s8, s8, %lo(pred_mv8x8)
	lh	s9, 0(s1)
	add	s10, s3, t6
	add	s7, s7, s6
	ld	s7, 0(s7)
	add	s11, s10, a6
	sh	s9, 0(s11)
	lh	s9, 2(s1)
	add	s7, s7, s5
	ld	s7, 0(s7)
	addi	ra, t4, 1
	slli	s1, ra, 3
	add	s4, s4, s1
	ld	t1, 0(s4)
	add	s4, s8, t5
	sh	s9, 2(s11)
	lh	s8, 0(s7)
	ld	t1, 0(t1)
	add	s9, s4, t6
	add	s11, s9, a6
	sh	s8, 0(s11)
	add	t1, t1, s6
	ld	t1, 0(t1)
	lh	s7, 2(s7)
	add	s2, s2, s1
	ld	s2, 0(s2)
	add	t1, t1, s5
	ld	t1, 0(t1)
	ld	s8, 0(s2)
	sh	s7, 2(s11)
	lui	s11, %hi(all_mv8x8)
	addi	s11, s11, %lo(all_mv8x8)
	lh	s7, 0(t1)
	slli	s2, ra, 2
	add	s6, s8, s6
	ld	s6, 0(s6)
	add	s10, s10, s2
	sh	s7, 0(s10)
	lh	t1, 2(t1)
	add	s5, s6, s5
	ld	s5, 0(s5)
	sh	t1, 2(s10)
	lh	t1, 0(s5)
	add	s9, s9, s2
	sh	t1, 0(s9)
	lh	t1, 2(s5)
	sh	t1, 2(s9)
	bge	t2, a1, .LBB26_12
# %bb.11:
	slli	t1, t2, 3
	add	s5, t0, t1
	ld	s6, 0(s5)
	add	s5, s6, s0
	ld	s5, 0(s5)
	ld	s7, 0(s5)
	add	t1, a7, t1
	slli	s5, a3, 3
	add	s7, s7, s5
	ld	s7, 0(s7)
	ld	t1, 0(t1)
	slli	a3, a2, 3
	add	s7, s7, a3
	add	s0, t1, s0
	ld	s0, 0(s0)
	ld	s7, 0(s7)
	ld	s0, 0(s0)
	lh	s8, 0(s7)
	slli	s9, t2, 4
	add	s3, s3, s9
	add	s0, s0, s5
	ld	s0, 0(s0)
	add	s10, s3, a6
	sh	s8, 0(s10)
	lh	s7, 2(s7)
	add	s0, s0, a3
	ld	s0, 0(s0)
	add	s6, s6, s1
	ld	s6, 0(s6)
	sh	s7, 2(s10)
	lh	s7, 0(s0)
	ld	s6, 0(s6)
	add	s4, s4, s9
	add	s8, s4, a6
	sh	s7, 0(s8)
	add	s6, s6, s5
	ld	s6, 0(s6)
	add	t1, t1, s1
	ld	t1, 0(t1)
	lh	s0, 2(s0)
	add	s6, s6, a3
	ld	s1, 0(s6)
	ld	t1, 0(t1)
	sh	s0, 2(s8)
	lh	s0, 0(s1)
	add	t1, t1, s5
	ld	t1, 0(t1)
	add	s3, s3, s2
	sh	s0, 0(s3)
	lh	s0, 2(s1)
	add	a3, t1, a3
	ld	a3, 0(a3)
	sh	s0, 2(s3)
	lh	t1, 0(a3)
	add	s2, s4, s2
	sh	t1, 0(s2)
	lh	a3, 2(a3)
	sh	a3, 2(s2)
.LBB26_12:
	addiw	a5, a5, -1
	li	a3, 2
	bgeu	a5, a3, .LBB26_15
# %bb.13:
	slli	t3, t3, 3
	add	a3, t0, t3
	ld	t1, 0(a3)
	slli	a3, t4, 3
	add	a5, t1, a3
	ld	a5, 0(a5)
	ld	a5, 8(a5)
	slli	s0, a4, 3
	add	a5, a5, s0
	ld	a5, 0(a5)
	add	t3, a7, t3
	ld	t3, 0(t3)
	slli	s1, a2, 3
	add	a5, a5, s1
	ld	a5, 0(a5)
	add	s2, t3, a3
	ld	s2, 0(s2)
	lh	s3, 0(a5)
	ld	s2, 8(s2)
	add	s4, s11, t5
	add	s4, s4, t6
	addi	s4, s4, 64
	add	s2, s2, s0
	ld	s2, 0(s2)
	add	s5, s4, a6
	sh	s3, 0(s5)
	lh	a5, 2(a5)
	add	s2, s2, s1
	ld	s2, 0(s2)
	sh	a5, 2(s5)
	lh	s3, 0(s2)
	addi	s5, t4, 1
	slli	a5, s5, 3
	add	t1, t1, a5
	ld	t1, 0(t1)
	lui	t4, %hi(pred_mv8x8)
	addi	t4, t4, %lo(pred_mv8x8)
	add	t5, t4, t5
	add	t5, t5, t6
	ld	t1, 8(t1)
	addi	t5, t5, 64
	add	t6, t5, a6
	sh	s3, 0(t6)
	add	t1, t1, s0
	ld	t1, 0(t1)
	lh	s2, 2(s2)
	add	t3, t3, a5
	ld	t3, 0(t3)
	add	t1, t1, s1
	ld	t1, 0(t1)
	ld	s3, 8(t3)
	sh	s2, 2(t6)
	lh	t6, 0(t1)
	slli	t3, s5, 2
	add	s0, s3, s0
	ld	s0, 0(s0)
	add	s4, s4, t3
	sh	t6, 0(s4)
	lh	t1, 2(t1)
	add	s0, s0, s1
	ld	t6, 0(s0)
	sh	t1, 2(s4)
	lh	t1, 0(t6)
	add	t5, t5, t3
	sh	t1, 0(t5)
	lh	t1, 2(t6)
	sh	t1, 2(t5)
	bge	t2, a1, .LBB26_17
# %bb.14:
	slli	a1, t2, 3
	add	t0, t0, a1
	ld	t0, 0(t0)
	add	t1, t0, a3
	ld	t1, 0(t1)
	ld	t1, 8(t1)
	slli	a4, a4, 3
	add	t1, t1, a4
	ld	t1, 0(t1)
	add	a1, a7, a1
	slli	a2, a2, 3
	add	t1, t1, a2
	ld	a7, 0(t1)
	ld	a1, 0(a1)
	lh	t1, 0(a7)
	add	a3, a1, a3
	ld	a3, 0(a3)
	slli	a0, a0, 7
	add	t5, s11, a0
	slli	t2, t2, 4
	ld	a3, 8(a3)
	add	t5, t5, t2
	addi	t5, t5, 64
	add	t6, t5, a6
	add	a3, a3, a4
	ld	a3, 0(a3)
	sh	t1, 0(t6)
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
	add	t5, t5, t3
	sh	a3, 0(t5)
	lh	a3, 2(a5)
	add	a1, a1, a2
	ld	a1, 0(a1)
	sh	a3, 2(t5)
	lh	a2, 0(a1)
	add	a0, a0, t3
	sh	a2, 0(a0)
	lh	a1, 2(a1)
	sh	a1, 2(a0)
	j	.LBB26_17
.LBB26_15:
	add	t5, s11, t5
	add	t5, t5, t6
	add	t5, t5, a6
	sh	zero, 70(t5)
	sh	zero, 68(t5)
	sh	zero, 66(t5)
	sh	zero, 64(t5)
	bge	t2, a1, .LBB26_17
# %bb.16:
	slli	a0, a0, 7
	add	a0, s11, a0
	slli	t2, t2, 4
	add	a0, a0, t2
	add	a0, a0, a6
	sh	zero, 70(a0)
	sh	zero, 68(a0)
	sh	zero, 66(a0)
	sh	zero, 64(a0)
.LBB26_17:
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
	addi	sp, sp, -720
	sd	ra, 712(sp)                     # 8-byte Folded Spill
	sd	s0, 704(sp)                     # 8-byte Folded Spill
	sd	s1, 696(sp)                     # 8-byte Folded Spill
	sd	s2, 688(sp)                     # 8-byte Folded Spill
	sd	s3, 680(sp)                     # 8-byte Folded Spill
	sd	s4, 672(sp)                     # 8-byte Folded Spill
	sd	s5, 664(sp)                     # 8-byte Folded Spill
	sd	s6, 656(sp)                     # 8-byte Folded Spill
	sd	s7, 648(sp)                     # 8-byte Folded Spill
	sd	s8, 640(sp)                     # 8-byte Folded Spill
	sd	s9, 632(sp)                     # 8-byte Folded Spill
	sd	s10, 624(sp)                    # 8-byte Folded Spill
	sd	s11, 616(sp)                    # 8-byte Folded Spill
	lui	s0, %hi(input)
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a1, 1845(a0)
	li	a2, 2
	li	a0, 1
	beq	a1, a2, .LBB27_10
# %bb.1:                                # %.preheader
	li	a1, 0
	li	a2, 0
	li	s2, 0
	li	a3, 0
	li	a4, 0
	li	a0, -15
	srli	a0, a0, 1
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	lui	a0, 2
	addiw	a0, a0, -1504
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	s10, %hi(img)
	lui	s11, %hi(imgY_org)
	addi	s7, sp, 360
	addi	s9, sp, 104
.LBB27_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_3 Depth 2
                                        #       Child Loop BB27_4 Depth 3
                                        #         Child Loop BB27_5 Depth 4
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	li	s6, 0
	srli	a0, a1, 3
	slli	a5, a0, 6
	slli	a0, a0, 8
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	and	a6, a1, a3
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	slli	a1, a2, 3
	andi	a2, a1, 8
	slli	a1, a4, 2
	andi	a1, a1, 8
	sd	a2, 64(sp)                      # 8-byte Folded Spill
	slli	a2, a2, 1
	or	a0, a0, a2
	lui	a2, %hi(tr8x8)
	addi	a2, a2, %lo(tr8x8)
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	add	a2, a2, a3
	add	s1, a2, a0
	lui	a2, %hi(tr4x4)
	addi	a2, a2, %lo(tr4x4)
	add	a2, a2, a3
	add	s5, a2, a0
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	slli	a0, a4, 3
	andi	a0, a0, 8
	addi	a1, a1, 8
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	addi	s3, a0, 8
.LBB27_3:                               #   Parent Loop BB27_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_4 Depth 3
                                        #         Child Loop BB27_5 Depth 4
	sd	a6, 88(sp)                      # 8-byte Folded Spill
	ld	a0, %lo(img)(s10)
	lw	a0, 172(a0)
	slli	a0, a0, 3
	sd	a5, 96(sp)                      # 8-byte Folded Spill
	add	s8, a5, a0
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	mv	a0, s6
.LBB27_4:                               #   Parent Loop BB27_2 Depth=1
                                        #     Parent Loop BB27_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB27_5 Depth 4
	ld	a1, %lo(img)(s10)
	lw	a1, 168(a1)
	ld	a2, %lo(imgY_org)(s11)
	add	a3, s4, a1
	add	a1, a2, s8
	addiw	a2, a0, 16
	slli	a3, a3, 1
	mv	a4, s5
	mv	a5, s1
.LBB27_5:                               #   Parent Loop BB27_2 Depth=1
                                        #     Parent Loop BB27_3 Depth=2
                                        #       Parent Loop BB27_4 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld	a6, 0(a1)
	add	a6, a6, a3
	lhu	a7, 0(a6)
	lhu	t0, -4(a4)
	subw	t0, a7, t0
	slli	t1, s6, 2
	add	t2, s7, t1
	lhu	t3, -4(a5)
	sw	t0, 0(t2)
	lhu	t0, 2(a6)
	lhu	t2, -2(a4)
	subw	a7, a7, t3
	add	t3, s9, t1
	sw	a7, 0(t3)
	subw	a7, t0, t2
	addi	t2, t1, 4
	add	t3, s7, t2
	lhu	t4, -2(a5)
	sw	a7, 0(t3)
	lhu	a7, 4(a6)
	lhu	t3, 0(a4)
	subw	t0, t0, t4
	add	t2, s9, t2
	sw	t0, 0(t2)
	subw	t0, a7, t3
	addi	t2, t1, 8
	add	t3, s7, t2
	lhu	t4, 0(a5)
	sw	t0, 0(t3)
	lhu	a6, 6(a6)
	lhu	t0, 2(a4)
	subw	a7, a7, t4
	add	t2, s9, t2
	sw	a7, 0(t2)
	subw	a7, a6, t0
	lhu	t0, 2(a5)
	addi	t1, t1, 12
	add	t2, s7, t1
	sw	a7, 0(t2)
	subw	a6, a6, t0
	add	t1, s9, t1
	sw	a6, 0(t1)
	addiw	s6, s6, 4
	addi	a1, a1, 8
	addi	a5, a5, 32
	addi	a4, a4, 32
	bne	s6, a2, .LBB27_5
# %bb.6:                                #   in Loop: Header=BB27_4 Depth=3
	ld	a1, %lo(input)(s0)
	lw	a1, 24(a1)
	slli	a0, a0, 2
	add	a0, s7, a0
	call	SATD
	addw	s2, a0, s2
	addi	s4, s4, 4
	addi	s1, s1, 8
	addi	s5, s5, 8
	mv	a0, s6
	bltu	s4, s3, .LBB27_4
# %bb.7:                                #   in Loop: Header=BB27_3 Depth=2
	ld	a6, 88(sp)                      # 8-byte Folded Reload
	addi	a6, a6, 4
	ld	a5, 96(sp)                      # 8-byte Folded Reload
	addi	a5, a5, 32
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	addi	s1, s1, 128
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	addi	s5, s5, 128
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	bltu	a6, a0, .LBB27_3
# %bb.8:                                #   in Loop: Header=BB27_2 Depth=1
	ld	a0, %lo(input)(s0)
	lw	a1, 24(a0)
	addi	a0, sp, 104
	call	SATD8X8
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	addw	a3, a0, a3
	ld	a4, 24(sp)                      # 8-byte Folded Reload
	addiw	a4, a4, 1
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	xori	a2, a2, 1
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 4
	li	a0, 4
	bne	a4, a0, .LBB27_2
# %bb.9:
	slt	a0, a3, s2
.LBB27_10:
	ld	ra, 712(sp)                     # 8-byte Folded Reload
	ld	s0, 704(sp)                     # 8-byte Folded Reload
	ld	s1, 696(sp)                     # 8-byte Folded Reload
	ld	s2, 688(sp)                     # 8-byte Folded Reload
	ld	s3, 680(sp)                     # 8-byte Folded Reload
	ld	s4, 672(sp)                     # 8-byte Folded Reload
	ld	s5, 664(sp)                     # 8-byte Folded Reload
	ld	s6, 656(sp)                     # 8-byte Folded Reload
	ld	s7, 648(sp)                     # 8-byte Folded Reload
	ld	s8, 640(sp)                     # 8-byte Folded Reload
	ld	s9, 632(sp)                     # 8-byte Folded Reload
	ld	s10, 624(sp)                    # 8-byte Folded Reload
	ld	s11, 616(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 720
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
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	li	s4, 0
	lui	a1, 8
	add	a1, a0, a1
	ld	s2, -1192(a1)
	lw	s5, 12(a0)
	lui	a1, %hi(best_mode)
	lhu	s3, %lo(best_mode)(a1)
	lw	a1, 24(a0)
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	ld	s0, 104(a0)
	li	s6, 8
	lui	s7, %hi(rdopt)
	lui	s8, %hi(enc_picture)
	lui	s9, 2
	li	s10, 520
.LBB28_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(img)(s1)
	ld	a1, %lo(enc_picture)(s8)
	lw	a2, 156(a0)
	add	a1, a1, s9
	ld	a1, -1768(a1)
	ld	a3, %lo(rdopt)(s7)
	add	a2, s4, a2
	slli	a2, a2, 3
	add	a1, a1, a2
	lw	a2, 152(a0)
	ld	a1, 0(a1)
	add	a0, a3, s6
	slli	a2, a2, 1
	add	a1, a1, a2
	li	a2, 32
	call	memcpy
	addi	s6, s6, 32
	addi	s4, s4, 1
	bne	s6, s10, .LBB28_1
# %bb.2:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a2, 528
	lui	s4, 22
	addiw	a1, s4, 436
	add	a1, a0, a1
	lw	a3, 0(a1)
	mul	s1, s5, a2
	add	s1, s2, s1
	slli	a2, s3, 48
	srai	s5, a2, 48
	beqz	a3, .LBB28_6
# %bb.3:
	lw	a1, 12(a1)
	blez	a1, .LBB28_6
# %bb.4:                                # %.preheader1
	li	s6, 0
	li	s7, 0
	lui	s8, %hi(rdopt)
	lui	s9, %hi(enc_picture)
	lui	s10, 2
	lui	s11, 22
	lui	s2, %hi(img)
.LBB28_5:                               # =>This Inner Loop Header: Depth=1
	ld	a1, %lo(enc_picture)(s9)
	add	a1, a1, s10
	ld	a1, -1728(a1)
	ld	a2, %lo(rdopt)(s8)
	lw	a3, 164(a0)
	ld	a1, 0(a1)
	add	a2, a2, s6
	add	a3, s7, a3
	slli	a3, a3, 3
	add	a1, a1, a3
	ld	a1, 0(a1)
	lw	a3, 160(a0)
	add	a0, a0, s11
	lw	a4, 444(a0)
	addi	a0, a2, 520
	slli	a3, a3, 1
	add	a1, a1, a3
	slli	a2, a4, 1
	call	memcpy
	ld	a0, %lo(enc_picture)(s9)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s10
	ld	a0, -1728(a0)
	ld	a2, %lo(rdopt)(s8)
	lw	a3, 164(a1)
	ld	a0, 8(a0)
	add	a2, a2, s6
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
	ld	a0, %lo(img)(s2)
	add	a1, a0, s11
	lw	a1, 448(a1)
	addi	s7, s7, 1
	addi	s6, s6, 32
	blt	s7, a1, .LBB28_5
.LBB28_6:
	addiw	a2, s4, 84
	add	a2, a0, a2
	lui	a1, %hi(rdopt)
	ld	a1, %lo(rdopt)(a1)
	lw	a3, 0(a2)
	sw	s5, 1640(a1)
	sw	a3, 1696(a1)
	lw	a3, 364(s1)
	ld	a4, 368(s1)
	lw	a5, 72(s1)
	lw	a6, 468(s1)
	sw	a3, 1624(a1)
	sd	a4, 1632(a1)
	sw	a5, 1560(a1)
	sw	a6, 1704(a1)
	bnez	a5, .LBB28_9
# %bb.7:
	beqz	s3, .LBB28_9
# %bb.8:
	sw	zero, 1640(a1)
.LBB28_9:
	lw	a2, 344(a2)
	li	a3, -3
	blt	a2, a3, .LBB28_13
# %bb.10:                               # %.preheader
	li	s3, 0
	li	s4, -1
	lui	s5, %hi(rdopt)
	lui	s6, 3
	lui	s7, %hi(img)
	lui	s8, 22
.LBB28_11:                              # =>This Inner Loop Header: Depth=1
	ld	a1, %lo(rdopt)(s5)
	ld	a1, 1544(a1)
	add	a0, a0, s6
	ld	a0, 1848(a0)
	add	a1, a1, s3
	ld	a1, 0(a1)
	add	a0, a0, s3
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	ld	a2, 0(a0)
	ld	a0, 0(a1)
	ld	a1, 0(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(rdopt)(s5)
	ld	a1, %lo(img)(s7)
	ld	a0, 1544(a0)
	add	a1, a1, s6
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
	ld	a0, %lo(rdopt)(s5)
	ld	a1, %lo(img)(s7)
	ld	a0, 1544(a0)
	add	a1, a1, s6
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
	ld	a0, %lo(rdopt)(s5)
	ld	a1, %lo(img)(s7)
	ld	a0, 1544(a0)
	add	a1, a1, s6
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
	ld	a0, %lo(rdopt)(s5)
	ld	a1, %lo(img)(s7)
	ld	a0, 1544(a0)
	add	a1, a1, s6
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
	ld	a0, %lo(rdopt)(s5)
	ld	a1, %lo(img)(s7)
	ld	a0, 1544(a0)
	add	a1, a1, s6
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
	ld	a0, %lo(rdopt)(s5)
	ld	a1, %lo(img)(s7)
	ld	a0, 1544(a0)
	add	a1, a1, s6
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
	ld	a0, %lo(rdopt)(s5)
	ld	a1, %lo(img)(s7)
	ld	a0, 1544(a0)
	add	a1, a1, s6
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
	ld	a0, %lo(img)(s7)
	add	a1, a0, s8
	lw	a1, 428(a1)
	addiw	a1, a1, 3
	addi	s4, s4, 1
	addi	s3, s3, 8
	blt	s4, a1, .LBB28_11
# %bb.12:
	lui	a1, %hi(rdopt)
	ld	a1, %lo(rdopt)(a1)
.LBB28_13:
	ld	a1, 1552(a1)
	lui	s5, 3
	add	a0, a0, s5
	ld	a0, 1856(a0)
	ld	a1, 0(a1)
	ld	a2, 0(a0)
	ld	a0, 0(a1)
	ld	a1, 0(a2)
	li	a2, 72
	call	memcpy
	lui	s3, %hi(rdopt)
	ld	a0, %lo(rdopt)(s3)
	lui	s4, %hi(img)
	ld	a1, %lo(img)(s4)
	ld	a0, 1552(a0)
	add	a1, a1, s5
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
	add	a1, a1, s5
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
	add	a1, a1, s5
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
	add	a1, a1, s5
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
	add	a1, a1, s5
	ld	a1, 1856(a1)
	ld	a0, 16(a0)
	ld	a1, 16(a1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	li	a2, 72
	call	memcpy
	ld	a0, %lo(rdopt)(s3)
	ld	a1, 376(s1)
	sd	a1, 1568(a0)
	ld	a1, 384(s1)
	sd	a1, 1576(a0)
	ld	a1, 392(s1)
	sd	a1, 1584(a0)
	ld	a1, 400(s1)
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
	bne	a6, a5, .LBB28_15
# %bb.14:
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
	lh	a2, 476(s1)
	ld	a0, %lo(rdopt)(s3)
	ld	a1, %lo(img)(s4)
	sh	a2, 1564(a0)
	j	.LBB28_16
.LBB28_15:
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
.LBB28_16:
	lw	a2, 344(s1)
	sw	a2, 1620(a0)
	lw	a2, 340(s1)
	sw	a2, 1616(a0)
	lw	a2, 336(s1)
	sw	a2, 1612(a0)
	lw	a2, 332(s1)
	sw	a2, 1608(a0)
	lw	a2, 148(a1)
	addi	a0, a2, -1
	slli	a2, a2, 3
	lui	a3, %hi(rdopt)
	lui	a4, %hi(img)
.LBB28_17:                              # =>This Inner Loop Header: Depth=1
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
	blt	a0, a5, .LBB28_17
# %bb.18:
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
	mv	t6, a3
	mv	s2, a1
	beq	a0, a7, .LBB31_14
# %bb.1:
	li	a1, 2
	bne	a0, a1, .LBB31_20
# %bb.2:
	li	s5, 0
	slliw	a0, a2, 1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	addiw	a0, t6, 1
	li	a1, 1
	lui	a2, %hi(img)
	lui	t3, %hi(enc_picture)
	lui	a5, 2
	li	a6, -1
	addiw	a7, a5, -1704
	li	t0, 32
	lui	t1, 22
	slli	t2, s0, 3
	li	t5, 264
	mul	a3, a0, t5
	slli	t4, a4, 3
	mul	t5, t6, t5
	li	t6, 1
	j	.LBB31_4
.LBB31_3:                               #   in Loop: Header=BB31_4 Depth=1
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	andi	a0, a0, 1
	li	s5, 1
	li	t6, 0
	beqz	a0, .LBB31_68
.LBB31_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_8 Depth 2
	sd	t6, 32(sp)                      # 8-byte Folded Spill
	ld	s3, %lo(img)(a2)
	lw	s6, 148(s3)
	li	s3, 0
	li	s4, 0
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	or	s5, a0, s5
	addw	s6, s5, s6
	slli	s6, s6, 3
	j	.LBB31_8
.LBB31_5:                               #   in Loop: Header=BB31_8 Depth=2
	ld	a0, 0(s10)
	ld	a0, 8(a0)
	add	a0, a0, s6
	ld	a0, 0(a0)
	add	a0, a0, s8
	sb	a6, 0(a0)
	ld	a0, %lo(enc_picture)(t3)
	add	a0, a0, a7
	ld	t6, 16(a0)
	ld	a0, 0(a0)
	ld	t6, 8(t6)
	ld	a0, 8(a0)
	add	t6, t6, s6
	ld	t6, 0(t6)
	add	a0, a0, s6
	ld	a0, 0(a0)
	add	t6, t6, s7
	ld	s8, 0(t6)
	li	s9, 0
	add	a0, a0, s7
	sd	a6, 0(a0)
	sh	zero, 0(s8)
.LBB31_6:                               #   in Loop: Header=BB31_8 Depth=2
	sh	s9, 2(s8)
.LBB31_7:                               #   in Loop: Header=BB31_8 Depth=2
	addi	s4, s4, 8
	addi	s3, s3, 1
	beq	s4, t0, .LBB31_3
.LBB31_8:                               #   Parent Loop BB31_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s9, %lo(img)(a2)
	lw	s7, 144(s9)
	addw	s8, s3, s7
	slli	s7, s8, 3
	bne	s2, a1, .LBB31_10
# %bb.9:                                #   in Loop: Header=BB31_8 Depth=2
	ld	a0, %lo(enc_picture)(t3)
	add	a0, a0, a5
	ld	a0, -1712(a0)
	ld	a0, 0(a0)
	add	a0, a0, s6
	ld	a0, 0(a0)
	add	a0, a0, s8
	sb	a6, 0(a0)
	ld	s9, %lo(enc_picture)(t3)
	add	a0, s9, a7
	ld	t6, 16(a0)
	ld	a0, 0(a0)
	ld	t6, 0(t6)
	ld	a0, 0(a0)
	add	t6, t6, s6
	ld	t6, 0(t6)
	add	a0, a0, s6
	ld	a0, 0(a0)
	add	t6, t6, s7
	ld	t6, 0(t6)
	add	a0, a0, s7
	sd	a6, 0(a0)
	sh	zero, 0(t6)
	sh	zero, 2(t6)
	bnez	s1, .LBB31_12
	j	.LBB31_7
.LBB31_10:                              #   in Loop: Header=BB31_8 Depth=2
	add	s9, s9, t1
	ld	s9, -776(s9)
	slli	s10, s5, 3
	add	s9, s9, s10
	ld	s9, 0(s9)
	ld	s10, %lo(enc_picture)(t3)
	add	s9, s9, s4
	ld	s9, 0(s9)
	add	s10, s10, a5
	ld	s10, -1712(s10)
	ld	s9, 0(s9)
	ld	s10, 0(s10)
	add	s9, s9, t4
	ld	s9, 0(s9)
	add	s10, s10, s6
	ld	s10, 0(s10)
	ld	s11, 16(s9)
	add	s10, s10, s8
	sb	a4, 0(s10)
	ld	s9, %lo(enc_picture)(t3)
	addiw	s10, a5, -1712
	add	s10, s9, s10
	ld	ra, 24(s10)
	ld	ra, 0(ra)
	add	ra, ra, s6
	ld	ra, 0(ra)
	ld	a0, 8(s10)
	lh	t6, 0(s11)
	add	ra, ra, s7
	ld	ra, 0(ra)
	ld	a0, 0(a0)
	sh	t6, 0(ra)
	add	t6, t5, t4
	add	t6, s9, t6
	add	a0, a0, s6
	ld	a0, 0(a0)
	ld	t6, 24(t6)
	lh	s11, 2(s11)
	add	a0, a0, s7
	sd	t6, 0(a0)
	sh	s11, 2(ra)
	beqz	s1, .LBB31_7
# %bb.11:                               #   in Loop: Header=BB31_8 Depth=2
	beqz	s2, .LBB31_5
.LBB31_12:                              #   in Loop: Header=BB31_8 Depth=2
	add	s9, s9, a5
	ld	a0, -1712(s9)
	ld	a0, 8(a0)
	add	a0, a0, s6
	ld	a0, 0(a0)
	add	a0, a0, s8
	sb	s0, 0(a0)
	bltz	s0, .LBB31_7
# %bb.13:                               #   in Loop: Header=BB31_8 Depth=2
	ld	a0, %lo(img)(a2)
	add	a0, a0, t1
	ld	a0, -776(a0)
	slli	t6, s5, 3
	add	a0, a0, t6
	ld	a0, 0(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	ld	t6, %lo(enc_picture)(t3)
	ld	a0, 8(a0)
	add	s8, t6, a7
	ld	s9, 16(s8)
	add	a0, a0, t2
	ld	a0, 0(a0)
	ld	s9, 8(s9)
	ld	a0, 16(a0)
	add	s9, s9, s6
	ld	s9, 0(s9)
	ld	s10, 0(s8)
	lh	s11, 0(a0)
	add	s9, s9, s7
	ld	s8, 0(s9)
	ld	s9, 8(s10)
	add	s10, a3, t2
	add	t6, t6, s10
	sh	s11, 0(s8)
	add	s9, s9, s6
	ld	s10, 0(s9)
	ld	t6, 24(t6)
	lhu	s9, 2(a0)
	add	s7, s10, s7
	sd	t6, 0(s7)
	j	.LBB31_6
.LBB31_14:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	sd	t6, 8(sp)                       # 8-byte Folded Spill
	bne	s2, a7, .LBB31_32
# %bb.15:
	lw	a1, 148(a0)
	andi	s10, a2, 2
	addw	a4, a1, s10
	addi	a3, s10, 4
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	addw	a3, a3, a1
	bge	a4, a3, .LBB31_43
# %bb.16:
	slli	a3, a2, 1
	andi	s9, a3, 2
	slli	a3, a2, 4
	andi	a3, a3, 16
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	slli	a3, a2, 63
	srai	a3, a3, 63
	andi	s8, a3, -2
	mv	s5, s9
	addi	s9, s9, 3
	add	s10, s10, a1
	lui	s11, %hi(enc_picture)
	ld	s6, %lo(enc_picture)(s11)
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	slli	a2, a2, 3
	andi	a2, a2, 16
	slli	a1, a1, 3
	add	s3, a2, a1
	lui	s4, 2
	li	s7, 255
	j	.LBB31_18
.LBB31_17:                              #   in Loop: Header=BB31_18 Depth=1
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
	bge	s10, a1, .LBB31_46
.LBB31_18:                              # =>This Inner Loop Header: Depth=1
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
	blt	a0, a2, .LBB31_17
# %bb.19:                               #   in Loop: Header=BB31_18 Depth=1
	mv	a2, a0
	j	.LBB31_17
.LBB31_20:
	li	t2, 0
	slliw	a2, a2, 1
	addiw	t5, t6, 1
	lui	t3, %hi(img)
	li	a5, 1
	lui	a6, %hi(enc_picture)
	lui	a7, 2
	li	t0, -1
	addiw	t1, a7, -1704
	mv	a1, t6
	lui	a3, 22
	slli	t4, s0, 3
	li	t6, 264
	mul	t5, t5, t6
	sd	t5, 32(sp)                      # 8-byte Folded Spill
	mul	t6, a1, t6
	slli	s3, a4, 3
	j	.LBB31_22
.LBB31_21:                              #   in Loop: Header=BB31_22 Depth=1
	ld	t2, 24(sp)                      # 8-byte Folded Reload
	addi	t2, t2, 1
	li	a1, 4
	beq	t2, a1, .LBB31_68
.LBB31_22:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_26 Depth 2
	ld	s4, %lo(img)(t3)
	lw	s4, 148(s4)
	li	s7, 0
	addw	s4, s4, t2
	slli	s4, s4, 3
	sd	t2, 24(sp)                      # 8-byte Folded Spill
	slli	s5, t2, 3
	li	s6, 1
	j	.LBB31_26
.LBB31_23:                              #   in Loop: Header=BB31_26 Depth=2
	ld	a1, 0(s11)
	ld	a1, 8(a1)
	add	a1, a1, s4
	ld	a1, 0(a1)
	add	a1, a1, s9
	sb	t0, 0(a1)
	ld	a1, %lo(enc_picture)(a6)
	add	a1, a1, t1
	ld	t2, 16(a1)
	ld	a1, 0(a1)
	ld	t2, 8(t2)
	ld	a1, 8(a1)
	add	t2, t2, s4
	ld	t2, 0(t2)
	add	a1, a1, s4
	ld	a1, 0(a1)
	add	t2, t2, s7
	ld	s8, 0(t2)
	li	s9, 0
	add	a1, a1, s7
	sd	t0, 0(a1)
	sh	zero, 0(s8)
.LBB31_24:                              #   in Loop: Header=BB31_26 Depth=2
	sh	s9, 2(s8)
.LBB31_25:                              #   in Loop: Header=BB31_26 Depth=2
	andi	a1, s6, 1
	li	s7, 1
	li	s6, 0
	beqz	a1, .LBB31_21
.LBB31_26:                              #   Parent Loop BB31_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s10, %lo(img)(t3)
	lw	s9, 144(s10)
	or	s8, a2, s7
	addw	s9, s8, s9
	slli	s7, s9, 3
	bne	s2, a5, .LBB31_28
# %bb.27:                               #   in Loop: Header=BB31_26 Depth=2
	ld	a1, %lo(enc_picture)(a6)
	add	a1, a1, a7
	ld	a1, -1712(a1)
	ld	a1, 0(a1)
	add	a1, a1, s4
	ld	a1, 0(a1)
	add	a1, a1, s9
	sb	t0, 0(a1)
	ld	s10, %lo(enc_picture)(a6)
	add	a1, s10, t1
	ld	t2, 16(a1)
	ld	a1, 0(a1)
	ld	t2, 0(t2)
	ld	a1, 0(a1)
	add	t2, t2, s4
	ld	t2, 0(t2)
	add	a1, a1, s4
	ld	a1, 0(a1)
	add	t2, t2, s7
	ld	t2, 0(t2)
	add	a1, a1, s7
	sd	t0, 0(a1)
	sh	zero, 0(t2)
	sh	zero, 2(t2)
	bnez	s1, .LBB31_30
	j	.LBB31_25
.LBB31_28:                              #   in Loop: Header=BB31_26 Depth=2
	add	s10, s10, a3
	ld	s10, -776(s10)
	add	s10, s10, s5
	ld	s10, 0(s10)
	ld	s11, %lo(enc_picture)(a6)
	slli	ra, s8, 3
	add	s10, s10, ra
	ld	s10, 0(s10)
	add	s11, s11, a7
	ld	s11, -1712(s11)
	ld	s10, 0(s10)
	ld	s11, 0(s11)
	add	s10, s10, s3
	ld	s10, 0(s10)
	add	s11, s11, s4
	ld	s11, 0(s11)
	slli	ra, a0, 3
	add	s10, s10, ra
	ld	ra, 0(s10)
	add	s11, s11, s9
	sb	a4, 0(s11)
	ld	s10, %lo(enc_picture)(a6)
	addiw	s11, a7, -1712
	add	s11, s10, s11
	ld	t2, 24(s11)
	ld	t2, 0(t2)
	add	t2, t2, s4
	ld	t2, 0(t2)
	ld	a1, 8(s11)
	lh	t5, 0(ra)
	add	t2, t2, s7
	ld	t2, 0(t2)
	ld	a1, 0(a1)
	sh	t5, 0(t2)
	add	t5, t6, s3
	add	t5, s10, t5
	add	a1, a1, s4
	ld	a1, 0(a1)
	ld	t5, 24(t5)
	lh	ra, 2(ra)
	add	a1, a1, s7
	sd	t5, 0(a1)
	sh	ra, 2(t2)
	beqz	s1, .LBB31_25
# %bb.29:                               #   in Loop: Header=BB31_26 Depth=2
	beqz	s2, .LBB31_23
.LBB31_30:                              #   in Loop: Header=BB31_26 Depth=2
	add	s10, s10, a7
	ld	a1, -1712(s10)
	ld	a1, 8(a1)
	add	a1, a1, s4
	ld	a1, 0(a1)
	add	a1, a1, s9
	sb	s0, 0(a1)
	bltz	s0, .LBB31_25
# %bb.31:                               #   in Loop: Header=BB31_26 Depth=2
	ld	a1, %lo(img)(t3)
	add	a1, a1, a3
	ld	a1, -776(a1)
	add	a1, a1, s5
	ld	a1, 0(a1)
	slli	s8, s8, 3
	add	a1, a1, s8
	ld	a1, 0(a1)
	ld	t2, %lo(enc_picture)(a6)
	ld	a1, 8(a1)
	add	t5, t2, t1
	ld	s8, 16(t5)
	add	a1, a1, t4
	ld	a1, 0(a1)
	ld	s8, 8(s8)
	slli	s9, a0, 3
	add	a1, a1, s9
	ld	a1, 0(a1)
	add	s8, s8, s4
	ld	s8, 0(s8)
	ld	t5, 0(t5)
	lh	s9, 0(a1)
	add	s8, s8, s7
	ld	s8, 0(s8)
	ld	t5, 8(t5)
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	add	s10, s10, t4
	add	t2, t2, s10
	sh	s9, 0(s8)
	add	t5, t5, s4
	ld	t5, 0(t5)
	ld	t2, 24(t2)
	lhu	s9, 2(a1)
	add	t5, t5, s7
	sd	t2, 0(t5)
	j	.LBB31_24
.LBB31_32:
	lui	ra, 22
	add	a1, a0, ra
	lhu	a5, -750(a1)
	andi	a1, a2, 2
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	slli	a2, a2, 1
	andi	a2, a2, 2
	beqz	a5, .LBB31_44
# %bb.33:
	li	a4, 0
	lui	a5, %hi(enc_picture)
	ld	t5, %lo(enc_picture)(a5)
	lui	a6, 2
	lui	a7, %hi(img)
	addiw	t0, ra, -768
	addiw	t1, a6, -1704
	li	t2, 264
	mul	t2, t6, t2
	addiw	a3, ra, -760
	li	t3, 1
	li	t4, 32
	j	.LBB31_35
.LBB31_34:                              #   in Loop: Header=BB31_35 Depth=1
	ld	t6, 0(t6)
	ld	t6, 24(t6)
	add	t6, t6, a4
	ld	t6, 0(t6)
	ld	t6, 0(t6)
	ld	t6, 0(t6)
	ld	t6, 8(t6)
	addi	s3, s3, 24
	lh	s5, 0(t6)
	add	s6, s6, s3
	ld	s6, 0(s6)
	sh	s5, 0(s6)
	lh	t6, 2(t6)
	add	s3, s4, s3
	sd	s7, 0(s3)
	sh	t6, 2(s6)
	addi	a4, a4, 8
	addi	a1, a1, 1
	beq	a4, t4, .LBB31_46
.LBB31_35:                              # =>This Inner Loop Header: Depth=1
	add	t5, t5, a6
	ld	t5, -1712(t5)
	lw	t6, 148(a0)
	ld	t5, 0(t5)
	addw	t6, a1, t6
	lw	a0, 144(a0)
	slli	s4, t6, 3
	add	t5, t5, s4
	ld	t5, 0(t5)
	addw	s3, a0, a2
	add	t5, t5, s3
	sb	zero, 3(t5)
	sb	zero, 2(t5)
	sb	zero, 1(t5)
	sb	zero, 0(t5)
	ld	a0, %lo(img)(a7)
	add	t6, a0, t0
	lhu	s6, 18(t6)
	add	s5, a0, a3
	mv	t5, t6
	beq	s6, t3, .LBB31_37
# %bb.36:                               #   in Loop: Header=BB31_35 Depth=1
	mv	t5, s5
.LBB31_37:                              #   in Loop: Header=BB31_35 Depth=1
	ld	t5, 0(t5)
	ld	s6, 0(t5)
	ld	t5, %lo(enc_picture)(a5)
	add	s6, s6, a4
	ld	s6, 0(s6)
	add	s7, t5, t1
	ld	s8, 16(s7)
	ld	s6, 0(s6)
	ld	s8, 0(s8)
	ld	s6, 0(s6)
	add	s8, s8, s4
	ld	s9, 8(s6)
	ld	s6, 0(s8)
	ld	s7, 0(s7)
	slli	s3, s3, 3
	lh	s8, 0(s9)
	add	s10, s6, s3
	ld	s10, 0(s10)
	ld	s11, 0(s7)
	add	s7, t5, t2
	sh	s8, 0(s10)
	lh	s9, 2(s9)
	add	s4, s11, s4
	ld	s4, 0(s4)
	ld	s8, 24(s7)
	sh	s9, 2(s10)
	lhu	s10, 18(t6)
	add	s9, s4, s3
	sd	s8, 0(s9)
	mv	s9, t6
	beq	s10, t3, .LBB31_39
# %bb.38:                               #   in Loop: Header=BB31_35 Depth=1
	mv	s9, s5
.LBB31_39:                              #   in Loop: Header=BB31_35 Depth=1
	ld	s9, 0(s9)
	ld	s9, 8(s9)
	add	s9, s9, a4
	ld	s9, 0(s9)
	ld	s9, 0(s9)
	ld	s9, 0(s9)
	ld	s9, 8(s9)
	addi	s10, s3, 8
	lh	s11, 0(s9)
	add	ra, s6, s10
	ld	ra, 0(ra)
	sh	s11, 0(ra)
	lh	s9, 2(s9)
	sh	s9, 2(ra)
	lhu	s9, 18(t6)
	add	s10, s4, s10
	sd	s8, 0(s10)
	mv	s8, t6
	beq	s9, t3, .LBB31_41
# %bb.40:                               #   in Loop: Header=BB31_35 Depth=1
	mv	s8, s5
.LBB31_41:                              #   in Loop: Header=BB31_35 Depth=1
	ld	s8, 0(s8)
	ld	s8, 16(s8)
	add	s8, s8, a4
	ld	s8, 0(s8)
	ld	s8, 0(s8)
	ld	s8, 0(s8)
	ld	s8, 8(s8)
	addi	s9, s3, 16
	lh	s10, 0(s8)
	add	s11, s6, s9
	ld	s11, 0(s11)
	sh	s10, 0(s11)
	lh	s8, 2(s8)
	ld	s7, 24(s7)
	sh	s8, 2(s11)
	lhu	s8, 18(t6)
	add	s9, s4, s9
	sd	s7, 0(s9)
	beq	s8, t3, .LBB31_34
# %bb.42:                               #   in Loop: Header=BB31_35 Depth=1
	mv	t6, s5
	j	.LBB31_34
.LBB31_43:
	bnez	s1, .LBB31_48
	j	.LBB31_68
.LBB31_44:
	lui	a6, %hi(enc_picture)
	ld	t5, %lo(enc_picture)(a6)
	lui	a7, 2
	lui	t0, %hi(img)
	addiw	t1, a7, -1704
	li	t2, 264
	mul	t2, t6, t2
	slli	t3, a4, 3
	li	t4, 32
.LBB31_45:                              # =>This Inner Loop Header: Depth=1
	add	t5, t5, a7
	ld	t5, -1712(t5)
	lw	t6, 148(a0)
	ld	t5, 0(t5)
	addw	t6, a1, t6
	lw	a0, 144(a0)
	slli	t6, t6, 3
	add	t5, t5, t6
	ld	t5, 0(t5)
	addw	s5, a0, a2
	add	t5, t5, s5
	sb	a4, 3(t5)
	sb	a4, 2(t5)
	sb	a4, 1(t5)
	sb	a4, 0(t5)
	ld	a0, %lo(img)(t0)
	add	t5, a0, ra
	ld	t5, -776(t5)
	add	t5, t5, a5
	ld	s3, 0(t5)
	ld	t5, %lo(enc_picture)(a6)
	ld	s4, 0(s3)
	add	s6, t5, t1
	ld	s7, 16(s6)
	ld	s4, 0(s4)
	ld	s7, 0(s7)
	add	s4, s4, t3
	ld	s4, 0(s4)
	add	s7, s7, t6
	ld	s8, 8(s4)
	ld	s9, 8(s3)
	ld	s4, 0(s7)
	slli	s5, s5, 3
	lh	s7, 0(s8)
	ld	s9, 0(s9)
	add	s10, s4, s5
	ld	s10, 0(s10)
	add	s9, s9, t3
	ld	s9, 0(s9)
	sh	s7, 0(s10)
	lh	s7, 2(s8)
	ld	s6, 0(s6)
	ld	s8, 8(s9)
	ld	s9, 16(s3)
	sh	s7, 2(s10)
	addi	s7, s5, 8
	lh	s10, 0(s8)
	ld	s9, 0(s9)
	add	s11, s4, s7
	ld	s11, 0(s11)
	ld	s6, 0(s6)
	add	s9, s9, t3
	ld	s9, 0(s9)
	sh	s10, 0(s11)
	lh	s8, 2(s8)
	add	s10, t2, t3
	ld	s9, 8(s9)
	add	t6, s6, t6
	sh	s8, 2(s11)
	addi	s6, s5, 16
	lh	s8, 0(s9)
	ld	s3, 24(s3)
	add	s11, s4, s6
	ld	s11, 0(s11)
	add	s10, t5, s10
	ld	s3, 0(s3)
	ld	t6, 0(t6)
	sh	s8, 0(s11)
	lh	s8, 2(s9)
	add	s3, s3, t3
	ld	s3, 0(s3)
	ld	s9, 24(s10)
	sh	s8, 2(s11)
	add	s8, t6, s5
	ld	s3, 8(s3)
	sd	s9, 0(s8)
	add	s7, t6, s7
	addi	s5, s5, 24
	lh	s8, 0(s3)
	add	s4, s4, s5
	ld	s4, 0(s4)
	sd	s9, 0(s7)
	ld	s7, 24(s10)
	add	s6, t6, s6
	sh	s8, 0(s4)
	lh	s3, 2(s3)
	sd	s7, 0(s6)
	add	t6, t6, s5
	sd	s7, 0(t6)
	sh	s3, 2(s4)
	addi	a5, a5, 8
	addi	a1, a1, 1
	bne	a5, t4, .LBB31_45
.LBB31_46:
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	beqz	s1, .LBB31_68
# %bb.47:
	beqz	s2, .LBB31_59
.LBB31_48:
	lui	a3, 22
	add	a1, a0, a3
	lhu	a4, -750(a1)
	andi	a1, a2, 2
	slli	a2, a2, 1
	andi	a2, a2, 2
	beqz	a4, .LBB31_64
# %bb.49:
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
	j	.LBB31_51
.LBB31_50:                              #   in Loop: Header=BB31_51 Depth=1
	ld	t6, 0(t6)
	ld	t6, 24(t6)
	add	t6, t6, a4
	ld	t6, 0(t6)
	ld	t6, 8(t6)
	ld	t6, 0(t6)
	ld	t6, 8(t6)
	addi	s2, s2, 24
	lh	s0, 0(t6)
	add	s1, s1, s2
	ld	s1, 0(s1)
	sh	s0, 0(s1)
	lh	t6, 2(t6)
	add	s2, s3, s2
	sd	s4, 0(s2)
	sh	t6, 2(s1)
	addi	a4, a4, 8
	addi	a1, a1, 1
	beq	a4, t4, .LBB31_68
.LBB31_51:                              # =>This Inner Loop Header: Depth=1
	add	t5, t5, a6
	ld	t5, -1712(t5)
	lw	t6, 148(a0)
	ld	t5, 8(t5)
	addw	t6, a1, t6
	lw	a0, 144(a0)
	slli	s3, t6, 3
	add	t5, t5, s3
	ld	t5, 0(t5)
	addw	s2, a0, a2
	add	t5, t5, s2
	sb	zero, 3(t5)
	sb	zero, 2(t5)
	sb	zero, 1(t5)
	sb	zero, 0(t5)
	ld	a0, %lo(img)(a7)
	add	t6, a0, t0
	lhu	s1, 18(t6)
	add	s0, a0, a3
	mv	t5, t6
	beq	s1, t3, .LBB31_53
# %bb.52:                               #   in Loop: Header=BB31_51 Depth=1
	mv	t5, s0
.LBB31_53:                              #   in Loop: Header=BB31_51 Depth=1
	ld	t5, 0(t5)
	ld	s1, 0(t5)
	ld	t5, %lo(enc_picture)(a5)
	add	s1, s1, a4
	ld	s1, 0(s1)
	add	s4, t5, t1
	ld	s5, 16(s4)
	ld	s1, 8(s1)
	ld	s5, 8(s5)
	ld	s1, 0(s1)
	add	s5, s5, s3
	ld	s6, 8(s1)
	ld	s1, 0(s5)
	ld	s4, 0(s4)
	slli	s2, s2, 3
	lh	s5, 0(s6)
	add	s7, s1, s2
	ld	s7, 0(s7)
	ld	s8, 8(s4)
	add	s4, t5, t2
	sh	s5, 0(s7)
	lh	s6, 2(s6)
	add	s3, s8, s3
	ld	s3, 0(s3)
	ld	s5, 24(s4)
	sh	s6, 2(s7)
	lhu	s7, 18(t6)
	add	s6, s3, s2
	sd	s5, 0(s6)
	mv	s6, t6
	beq	s7, t3, .LBB31_55
# %bb.54:                               #   in Loop: Header=BB31_51 Depth=1
	mv	s6, s0
.LBB31_55:                              #   in Loop: Header=BB31_51 Depth=1
	ld	s6, 0(s6)
	ld	s6, 8(s6)
	add	s6, s6, a4
	ld	s6, 0(s6)
	ld	s6, 8(s6)
	ld	s6, 0(s6)
	ld	s6, 8(s6)
	addi	s7, s2, 8
	lh	s8, 0(s6)
	add	s9, s1, s7
	ld	s9, 0(s9)
	sh	s8, 0(s9)
	lh	s6, 2(s6)
	sh	s6, 2(s9)
	lhu	s6, 18(t6)
	add	s7, s3, s7
	sd	s5, 0(s7)
	mv	s5, t6
	beq	s6, t3, .LBB31_57
# %bb.56:                               #   in Loop: Header=BB31_51 Depth=1
	mv	s5, s0
.LBB31_57:                              #   in Loop: Header=BB31_51 Depth=1
	ld	s5, 0(s5)
	ld	s5, 16(s5)
	add	s5, s5, a4
	ld	s5, 0(s5)
	ld	s5, 8(s5)
	ld	s5, 0(s5)
	ld	s5, 8(s5)
	addi	s6, s2, 16
	lh	s7, 0(s5)
	add	s8, s1, s6
	ld	s8, 0(s8)
	sh	s7, 0(s8)
	lh	s5, 2(s5)
	ld	s4, 24(s4)
	sh	s5, 2(s8)
	lhu	s5, 18(t6)
	add	s6, s3, s6
	sd	s4, 0(s6)
	beq	s5, t3, .LBB31_50
# %bb.58:                               #   in Loop: Header=BB31_51 Depth=1
	mv	t6, s0
	j	.LBB31_50
.LBB31_59:
	lw	a1, 148(a0)
	andi	s6, a2, 2
	addw	a4, a1, s6
	addi	s0, s6, 4
	addw	a3, s0, a1
	bge	a4, a3, .LBB31_68
# %bb.60:
	slli	s1, a2, 1
	andi	s1, s1, 2
	slli	a3, a2, 4
	andi	s2, a3, 16
	slli	a3, a2, 63
	srai	a3, a3, 63
	andi	s3, a3, -2
	addi	s5, s1, 3
	add	s6, s6, a1
	lui	s7, %hi(enc_picture)
	ld	s11, %lo(enc_picture)(s7)
	slli	a2, a2, 3
	andi	a2, a2, 16
	slli	a1, a1, 3
	add	s4, a2, a1
	lui	s8, 2
	li	s9, 255
	lui	s10, %hi(img)
	j	.LBB31_62
.LBB31_61:                              #   in Loop: Header=BB31_62 Depth=1
	ld	s11, %lo(enc_picture)(s7)
	add	a0, s11, s8
	ld	a0, -1704(a0)
	ld	a0, 8(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	slli	a3, a1, 3
	add	a3, s2, a3
	add	a0, a0, a3
	subw	a1, s3, a1
	add	a1, a1, a2
	slli	a1, a1, 32
	srli	a1, a1, 29
	addi	a2, a1, 8
	li	a1, 255
	call	memset
	ld	a0, %lo(img)(s10)
	lw	a1, 148(a0)
	addi	s6, s6, 1
	addw	a1, s0, a1
	addi	s4, s4, 8
	bge	s6, a1, .LBB31_68
.LBB31_62:                              # =>This Inner Loop Header: Depth=1
	add	s11, s11, s8
	ld	a1, -1712(s11)
	ld	a2, 8(a1)
	lw	a1, 144(a0)
	add	a2, a2, s4
	ld	a2, 0(a2)
	addw	a0, a1, s1
	add	a2, a2, a0
	sb	s9, 3(a2)
	sb	s9, 2(a2)
	sb	s9, 1(a2)
	sb	s9, 0(a2)
	ld	a2, %lo(enc_picture)(s7)
	add	a2, a2, s8
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
	addw	a2, s5, a1
	sh	zero, 0(a3)
	blt	a0, a2, .LBB31_61
# %bb.63:                               #   in Loop: Header=BB31_62 Depth=1
	mv	a2, a0
	j	.LBB31_61
.LBB31_64:
	ld	t0, 8(sp)                       # 8-byte Folded Reload
	addiw	t0, t0, 1
	lui	a5, %hi(enc_picture)
	ld	t4, %lo(enc_picture)(a5)
	lui	a6, 2
	addiw	a7, a6, -1704
	li	t1, 264
	mul	t0, t0, t1
	slli	t1, s0, 3
	lui	t2, %hi(img)
	li	t3, 32
	j	.LBB31_66
.LBB31_65:                              #   in Loop: Header=BB31_66 Depth=1
	add	s5, a0, a3
	ld	s6, -776(s5)
	add	s6, s6, a4
	ld	s6, 0(s6)
	ld	s7, 0(s6)
	ld	s7, 8(s7)
	ld	s8, 16(s3)
	add	s7, s7, t1
	ld	s7, 0(s7)
	ld	s8, 8(s8)
	ld	s7, 8(s7)
	add	s8, s8, t5
	ld	s8, 0(s8)
	lh	s9, 0(s7)
	ld	s6, 8(s6)
	add	s10, s8, s4
	ld	s10, 0(s10)
	ld	s6, 8(s6)
	sh	s9, 0(s10)
	lh	s7, 2(s7)
	add	s6, s6, t1
	ld	s6, 0(s6)
	ld	s9, -776(s5)
	sh	s7, 2(s10)
	ld	s6, 8(s6)
	addi	s7, s4, 8
	add	s9, s9, a4
	ld	s9, 0(s9)
	lh	s10, 0(s6)
	add	s8, s8, s7
	ld	s8, 0(s8)
	ld	s9, 16(s9)
	add	s7, t6, s7
	sh	s10, 0(s8)
	ld	s9, 8(s9)
	lh	s6, 2(s6)
	ld	s10, 16(s3)
	ld	s5, -776(s5)
	add	s9, s9, t1
	ld	s9, 0(s9)
	ld	s10, 8(s10)
	add	s5, s5, a4
	ld	s5, 0(s5)
	sh	s6, 2(s8)
	ld	s6, 8(s9)
	add	s10, s10, t5
	ld	s5, 24(s5)
	ld	s8, 0(s10)
	addi	s9, s4, 16
	lh	s10, 0(s6)
	ld	s5, 8(s5)
	add	s8, s8, s9
	ld	s3, 16(s3)
	ld	s8, 0(s8)
	add	s5, s5, t1
	ld	s5, 0(s5)
	ld	s3, 8(s3)
	sh	s10, 0(s8)
	lh	s6, 2(s6)
	ld	s5, 8(s5)
	add	t5, s3, t5
	ld	t5, 0(t5)
	sh	s6, 2(s8)
	addi	s4, s4, 24
	lh	s3, 0(s5)
	add	t5, t5, s4
	ld	t5, 0(t5)
	sd	s2, 0(s7)
	ld	s1, 24(s1)
	add	s9, t6, s9
	sh	s3, 0(t5)
	lh	s2, 2(s5)
	sd	s1, 0(s9)
	add	t6, t6, s4
	sd	s1, 0(t6)
	sh	s2, 2(t5)
	addi	a4, a4, 8
	addi	a1, a1, 1
	beq	a4, t3, .LBB31_68
.LBB31_66:                              # =>This Inner Loop Header: Depth=1
	add	t4, t4, a6
	ld	t4, -1712(t4)
	lw	t5, 148(a0)
	ld	t4, 8(t4)
	addw	t5, a1, t5
	lw	a0, 144(a0)
	slli	t5, t5, 3
	add	t4, t4, t5
	ld	t4, 0(t4)
	addw	s4, a0, a2
	add	t4, t4, s4
	sb	s0, 3(t4)
	sb	s0, 2(t4)
	sb	s0, 1(t4)
	sb	s0, 0(t4)
	ld	t4, %lo(enc_picture)(a5)
	add	s3, t4, a7
	ld	a0, 0(s3)
	ld	a0, 8(a0)
	add	s1, t0, t1
	add	s1, t4, s1
	add	a0, a0, t5
	ld	t6, 0(a0)
	ld	s2, 24(s1)
	ld	a0, %lo(img)(t2)
	slli	s4, s4, 3
	add	s5, t6, s4
	sd	s2, 0(s5)
	bgez	s0, .LBB31_65
# %bb.67:                               #   in Loop: Header=BB31_66 Depth=1
	sd	s2, 8(s5)
	ld	t5, 24(s1)
	sd	t5, 16(s5)
	sd	t5, 24(s5)
	addi	a4, a4, 8
	addi	a1, a1, 1
	bne	a4, t3, .LBB31_66
.LBB31_68:
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
