	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"loopFilter.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	DeblockFrame                    # -- Begin function DeblockFrame
	.p2align	2
	.type	DeblockFrame,@function
DeblockFrame:                           # @DeblockFrame
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lui	a0, 22
	addiw	s4, a0, 192
	add	s4, s0, s4
	lw	a0, 0(s4)
	beqz	a0, .LBB0_3
# %bb.1:                                # %.preheader
	mv	s1, a2
	mv	s2, a1
	li	s3, 0
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mv	a0, s0
	mv	a1, s2
	mv	a2, s1
	mv	a3, s3
	call	DeblockMb
	lw	a0, 0(s4)
	addiw	s3, s3, 1
	bltu	s3, a0, .LBB0_2
.LBB0_3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	DeblockFrame, .Lfunc_end0-DeblockFrame
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	DeblockMb                       # -- Begin function DeblockMb
	.p2align	2
	.type	DeblockMb,@function
DeblockMb:                              # @DeblockMb
# %bb.0:
	addi	sp, sp, -224
	sd	ra, 216(sp)                     # 8-byte Folded Spill
	sd	s0, 208(sp)                     # 8-byte Folded Spill
	sd	s1, 200(sp)                     # 8-byte Folded Spill
	sd	s2, 192(sp)                     # 8-byte Folded Spill
	sd	s3, 184(sp)                     # 8-byte Folded Spill
	sd	s4, 176(sp)                     # 8-byte Folded Spill
	sd	s5, 168(sp)                     # 8-byte Folded Spill
	sd	s6, 160(sp)                     # 8-byte Folded Spill
	sd	s7, 152(sp)                     # 8-byte Folded Spill
	sd	s8, 144(sp)                     # 8-byte Folded Spill
	sd	s9, 136(sp)                     # 8-byte Folded Spill
	sd	s10, 128(sp)                    # 8-byte Folded Spill
	sd	s11, 120(sp)                    # 8-byte Folded Spill
	mv	s0, a3
	mv	s1, a2
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	mv	s3, a0
	lui	a0, 22
	addiw	a0, a0, 108
	add	a2, s3, a0
	lui	a0, 8
	add	s2, s3, a0
	li	a0, 1
	sw	a0, 88(sp)
	slli	a1, a0, 32
	addi	a1, a1, 1
	sd	a1, 80(sp)
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	sw	a0, 240(a2)
	addi	a1, sp, 100
	addi	a2, sp, 96
	mv	a0, a3
	call	get_mb_pos
	lw	a0, 100(sp)
	ld	s9, -1192(s2)
	lw	a2, 96(sp)
	li	a1, 528
	mul	a1, s0, a1
	add	s9, s9, a1
	lw	a3, 72(s9)
	lw	a1, 468(s9)
	li	a4, 13
	bne	a3, a4, .LBB1_3
# %bb.1:
	beqz	a1, .LBB1_37
# %bb.2:
	li	a3, 0
	j	.LBB1_4
.LBB1_3:
	seqz	a3, a1
.LBB1_4:
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	lw	a1, 0(a1)
	snez	a4, a2
	sd	a4, 40(sp)                      # 8-byte Folded Spill
	sw	a3, 92(sp)
	sw	a3, 84(sp)
	beqz	a1, .LBB1_7
# %bb.5:
	li	a3, 16
	bne	a2, a3, .LBB1_7
# %bb.6:
	lw	a2, 424(s9)
	seqz	a2, a2
	sd	a2, 40(sp)                      # 8-byte Folded Spill
.LBB1_7:
	lw	a2, 28(s3)
	beqz	a2, .LBB1_15
.LBB1_8:
	li	a2, 2
	sd	a2, 64(sp)                      # 8-byte Folded Spill
.LBB1_9:
	lw	a2, 508(s9)
	li	a3, 1
	beq	a2, a3, .LBB1_36
# %bb.10:
	li	a3, 2
	bne	a2, a3, .LBB1_17
# %bb.11:
	lw	s2, 448(s9)
	beqz	a1, .LBB1_14
# %bb.12:
	andi	a0, s0, 1
	beqz	a0, .LBB1_14
# %bb.13:
	lw	a0, 424(s9)
	li	a1, 1
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	beqz	a0, .LBB1_18
.LBB1_14:
	lw	a0, 452(s9)
	snez	a0, a0
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	j	.LBB1_18
.LBB1_15:
	li	a2, 4
	sd	a2, 64(sp)                      # 8-byte Folded Spill
	beqz	a1, .LBB1_9
# %bb.16:
	lw	a2, 424(s9)
	bnez	a2, .LBB1_8
	j	.LBB1_9
.LBB1_17:
	snez	s2, a0
.LBB1_18:
	sw	s0, 12(s3)
	call	CheckAvailabilityOfNeighbors
	li	s5, 0
	snez	a0, s2
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	li	s2, 1
	j	.LBB1_20
.LBB1_19:                               #   in Loop: Header=BB1_20 Depth=1
	andi	a0, s2, 1
	li	s5, 1
	li	s2, 0
	beqz	a0, .LBB1_36
.LBB1_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_25 Depth 2
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	and	a0, s5, a0
	li	s10, 1
	bnez	a0, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
	not	a0, s5
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	and	s10, a0, a1
.LBB1_22:                               #   in Loop: Header=BB1_20 Depth=1
	li	s6, 0
	li	s11, 0
	slli	s4, s5, 4
	lui	a0, %hi(chroma_edge)
	addi	a0, a0, %lo(chroma_edge)
	add	a0, a0, s4
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	li	s4, 16
	j	.LBB1_25
.LBB1_23:                               #   in Loop: Header=BB1_25 Depth=2
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	sw	s7, 240(a0)
.LBB1_24:                               #   in Loop: Header=BB1_25 Depth=2
	addi	s11, s11, 4
	addiw	s6, s6, 1
	beq	s11, s4, .LBB1_19
.LBB1_25:                               #   Parent Loop BB1_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	snez	s8, s11
	or	a0, s8, s10
	beqz	a0, .LBB1_24
# %bb.26:                               #   in Loop: Header=BB1_25 Depth=2
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	lw	a0, 328(a0)
	add	a0, s11, a0
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	lbu	s7, 0(a0)
	addi	a0, sp, 104
	mv	a1, s3
	mv	a2, s0
	mv	a3, s5
	mv	a4, s6
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	call	GetStrength
	lbu	a0, 104(sp)
	lbu	a1, 105(sp)
	add	a0, a0, a1
	lbu	a1, 106(sp)
	lbu	a2, 107(sp)
	lbu	a3, 108(sp)
	lbu	a4, 109(sp)
	lbu	a5, 110(sp)
	add	a1, a1, a2
	add	a0, a0, a1
	add	a3, a3, a4
	add	a3, a3, a5
	lbu	a1, 111(sp)
	lbu	a2, 112(sp)
	lbu	a4, 113(sp)
	lbu	a5, 114(sp)
	add	a0, a0, a3
	add	a1, a1, a2
	add	a1, a1, a4
	add	a1, a1, a5
	lbu	a2, 115(sp)
	lbu	a3, 116(sp)
	add	a0, a0, a1
	lbu	a1, 117(sp)
	lbu	a4, 118(sp)
	add	a2, a2, a3
	lbu	a3, 119(sp)
	add	a1, a2, a1
	add	a1, a1, a4
	addw	a0, a0, a1
	or	a0, a0, a3
	beqz	a0, .LBB1_31
# %bb.27:                               #   in Loop: Header=BB1_25 Depth=2
	addi	a0, sp, 80
	add	a0, a0, s11
	lw	a0, 0(a0)
	beqz	a0, .LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_25 Depth=2
	lw	a4, 512(s9)
	lw	a5, 516(s9)
	lw	a0, 52(s3)
	sd	zero, 16(sp)
	sd	zero, 8(sp)
	addi	a1, sp, 104
	sd	a0, 0(sp)
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	mv	a2, s3
	mv	a3, s0
	mv	a6, s5
	mv	a7, s6
	call	EdgeLoop
.LBB1_29:                               #   in Loop: Header=BB1_25 Depth=2
	beqz	s1, .LBB1_31
# %bb.30:                               #   in Loop: Header=BB1_25 Depth=2
	ld	a0, 0(s1)
	lw	a4, 512(s9)
	lw	a5, 516(s9)
	lw	a2, 56(s3)
	sd	zero, 16(sp)
	li	s4, 1
	sd	s4, 8(sp)
	addi	a1, sp, 104
	sd	a2, 0(sp)
	mv	a2, s3
	mv	a3, s0
	mv	a6, s5
	mv	a7, s7
	call	EdgeLoop
	ld	a0, 8(s1)
	lw	a4, 512(s9)
	lw	a5, 516(s9)
	lw	a2, 56(s3)
	sd	s4, 16(sp)
	sd	s4, 8(sp)
	li	s4, 16
	addi	a1, sp, 104
	sd	a2, 0(sp)
	mv	a2, s3
	mv	a3, s0
	mv	a6, s5
	mv	a7, s7
	call	EdgeLoop
.LBB1_31:                               #   in Loop: Header=BB1_25 Depth=2
	or	a0, s2, s8
	andi	a0, a0, 1
	bnez	a0, .LBB1_24
# %bb.32:                               #   in Loop: Header=BB1_25 Depth=2
	lw	a0, 424(s9)
	bnez	a0, .LBB1_24
# %bb.33:                               #   in Loop: Header=BB1_25 Depth=2
	lui	a0, %hi(mixedModeEdgeFlag)
	lbu	a0, %lo(mixedModeEdgeFlag)(a0)
	beqz	a0, .LBB1_24
# %bb.34:                               #   in Loop: Header=BB1_25 Depth=2
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	li	a1, 2
	sw	a1, 240(a0)
	addi	a0, sp, 104
	li	a3, 1
	li	a4, 4
	mv	a1, s3
	mv	a2, s0
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	call	GetStrength
	lw	a4, 512(s9)
	lw	a5, 516(s9)
	lw	a0, 52(s3)
	sd	zero, 16(sp)
	sd	zero, 8(sp)
	addi	a1, sp, 104
	li	a6, 1
	li	a7, 4
	sd	a0, 0(sp)
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	mv	a2, s3
	mv	a3, s0
	call	EdgeLoop
	li	s7, 1
	beqz	s1, .LBB1_23
# %bb.35:                               #   in Loop: Header=BB1_25 Depth=2
	ld	a0, 0(s1)
	lw	a4, 512(s9)
	lw	a5, 516(s9)
	lw	a2, 56(s3)
	sd	zero, 16(sp)
	sd	s7, 8(sp)
	addi	a1, sp, 104
	li	a6, 1
	li	a7, 4
	sd	a2, 0(sp)
	mv	a2, s3
	mv	a3, s0
	call	EdgeLoop
	ld	a0, 8(s1)
	lw	a4, 512(s9)
	lw	a5, 516(s9)
	lw	a2, 56(s3)
	sd	s7, 16(sp)
	sd	s7, 8(sp)
	addi	a1, sp, 104
	li	a6, 1
	li	a7, 4
	sd	a2, 0(sp)
	mv	a2, s3
	mv	a3, s0
	call	EdgeLoop
	j	.LBB1_23
.LBB1_36:
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	sw	zero, 240(a0)
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 208(sp)                     # 8-byte Folded Reload
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 192(sp)                     # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	ld	s5, 168(sp)                     # 8-byte Folded Reload
	ld	s6, 160(sp)                     # 8-byte Folded Reload
	ld	s7, 152(sp)                     # 8-byte Folded Reload
	ld	s8, 144(sp)                     # 8-byte Folded Reload
	ld	s9, 136(sp)                     # 8-byte Folded Reload
	ld	s10, 128(sp)                    # 8-byte Folded Reload
	ld	s11, 120(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 224
	ret
.LBB1_37:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.DeblockMb)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.DeblockMb)
	li	a2, 127
	call	__assert_fail
.Lfunc_end1:
	.size	DeblockMb, .Lfunc_end1-DeblockMb
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	GetStrength                     # -- Begin function GetStrength
	.p2align	2
	.type	GetStrength,@function
GetStrength:                            # @GetStrength
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
	sd	a5, 32(sp)                      # 8-byte Folded Spill
	mv	s10, a4
	mv	s2, a3
	mv	s4, a1
	mv	s5, a0
	lui	a0, 22
	addiw	a0, a0, 108
	lui	a1, 8
	addiw	s6, a1, -1192
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	add	s6, s4, s6
	lui	a3, 2
	addiw	a3, a3, -1704
	add	a1, a1, a3
	ld	a5, 16(a1)
	ld	a1, 0(a1)
	ld	s0, 0(s6)
	li	a3, 528
	sd	a2, 64(sp)                      # 8-byte Folded Spill
	mul	a3, a2, a3
	slli	s1, a4, 2
	li	a4, 4
	sd	s1, 48(sp)                      # 8-byte Folded Spill
	blt	s10, a4, .LBB2_2
# %bb.1:
	li	a2, 1
	sd	a2, 48(sp)                      # 8-byte Folded Spill
.LBB2_2:
	li	s3, 0
	add	a0, s4, a0
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	ld	a0, 0(a5)
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	ld	a0, 8(a5)
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	ld	a0, 0(a1)
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	ld	a0, 8(a1)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	add	s0, s0, a3
	addi	s7, s2, -1
	li	s9, 16
	lui	a0, 6
	addiw	a0, a0, 1536
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	j	.LBB2_6
.LBB2_3:                                #   in Loop: Header=BB2_6 Depth=1
	li	a0, 3
	beqz	s10, .LBB2_13
.LBB2_4:                                #   in Loop: Header=BB2_6 Depth=1
	sb	a0, 0(s5)
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=1
	addi	s9, s9, -1
	addi	s5, s5, 1
	addi	s3, s3, 1
	beqz	s9, .LBB2_45
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	mv	s8, s1
	mv	s11, s3
	beqz	s2, .LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	mv	s8, s3
	ld	s11, 48(sp)                     # 8-byte Folded Reload
.LBB2_8:                                #   in Loop: Header=BB2_6 Depth=1
	addw	a1, s7, s8
	subw	a2, s11, s2
	li	a3, 1
	addi	a4, sp, 72
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	call	getNeighbour
	lw	a0, 76(sp)
	ld	a1, 0(s6)
	li	a2, 528
	mul	a0, a0, a2
	add	a0, a1, a0
	lw	a3, 424(s0)
	lw	a4, 424(a0)
	lw	a1, 80(sp)
	lw	a5, 24(s4)
	lwu	a2, 84(sp)
	xor	a6, a3, a4
	snez	a6, a6
	addiw	a5, a5, -3
	lui	a7, %hi(mixedModeEdgeFlag)
	sb	a6, %lo(mixedModeEdgeFlag)(a7)
	li	a6, 1
	bgeu	a6, a5, .LBB2_3
# %bb.9:                                #   in Loop: Header=BB2_6 Depth=1
	li	a5, 3
	bnez	s10, .LBB2_19
# %bb.10:                               #   in Loop: Header=BB2_6 Depth=1
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	lw	a6, 0(a6)
	beqz	a6, .LBB2_16
# %bb.11:                               #   in Loop: Header=BB2_6 Depth=1
	beqz	s2, .LBB2_18
# %bb.12:                               #   in Loop: Header=BB2_6 Depth=1
	or	a3, a4, a3
	seqz	a3, a3
	beqz	a3, .LBB2_19
	j	.LBB2_18
.LBB2_13:                               #   in Loop: Header=BB2_6 Depth=1
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	lw	a1, 0(a1)
	beqz	a1, .LBB2_26
# %bb.14:                               #   in Loop: Header=BB2_6 Depth=1
	beqz	s2, .LBB2_28
# %bb.15:                               #   in Loop: Header=BB2_6 Depth=1
	or	a3, a4, a3
	seqz	a1, a3
	beqz	a1, .LBB2_4
	j	.LBB2_28
.LBB2_16:                               #   in Loop: Header=BB2_6 Depth=1
	lw	a3, 28(s4)
	beqz	a3, .LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_6 Depth=1
	bnez	s2, .LBB2_19
.LBB2_18:                               #   in Loop: Header=BB2_6 Depth=1
	li	a5, 4
.LBB2_19:                               #   in Loop: Header=BB2_6 Depth=1
	sb	a5, 0(s5)
	lw	a3, 72(a0)
	li	a4, 14
	bltu	a4, a3, .LBB2_21
# %bb.20:                               #   in Loop: Header=BB2_6 Depth=1
	ld	a4, 56(sp)                      # 8-byte Folded Reload
	srl	a3, a4, a3
	andi	a3, a3, 1
	bnez	a3, .LBB2_5
.LBB2_21:                               #   in Loop: Header=BB2_6 Depth=1
	lw	a3, 72(s0)
	li	a4, 14
	bltu	a4, a3, .LBB2_23
# %bb.22:                               #   in Loop: Header=BB2_6 Depth=1
	ld	a4, 56(sp)                      # 8-byte Folded Reload
	srl	a3, a4, a3
	andi	a3, a3, 1
	bnez	a3, .LBB2_5
.LBB2_23:                               #   in Loop: Header=BB2_6 Depth=1
	andi	a3, s11, -4
	ld	a4, 368(s0)
	sraiw	s8, s8, 2
	addw	s11, a3, s8
	li	a3, 1
	sllw	a3, a3, s11
	and	a3, a4, a3
	bnez	a3, .LBB2_25
# %bb.24:                               #   in Loop: Header=BB2_6 Depth=1
	andi	a2, a2, -4
	ld	a0, 368(a0)
	srli	a1, a1, 2
	add	a1, a2, a1
	li	a2, 1
	sllw	a1, a2, a1
	and	a0, a0, a1
	beqz	a0, .LBB2_29
.LBB2_25:                               #   in Loop: Header=BB2_6 Depth=1
	li	a0, 2
	j	.LBB2_4
.LBB2_26:                               #   in Loop: Header=BB2_6 Depth=1
	lw	a1, 28(s4)
	beqz	a1, .LBB2_28
# %bb.27:                               #   in Loop: Header=BB2_6 Depth=1
	bnez	s2, .LBB2_4
.LBB2_28:                               #   in Loop: Header=BB2_6 Depth=1
	li	a0, 4
	j	.LBB2_4
.LBB2_29:                               #   in Loop: Header=BB2_6 Depth=1
	lui	a0, %hi(mixedModeEdgeFlag)
	lbu	a0, %lo(mixedModeEdgeFlag)(a0)
	beqz	a0, .LBB2_31
.LBB2_30:                               #   in Loop: Header=BB2_6 Depth=1
	li	a0, 1
	j	.LBB2_4
.LBB2_31:                               #   in Loop: Header=BB2_6 Depth=1
	addi	a1, sp, 100
	addi	a2, sp, 96
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	call	get_mb_block_pos
	lw	a0, 96(sp)
	lw	a1, 100(sp)
	slli	a0, a0, 2
	srli	a2, s11, 2
	addw	a0, a0, a2
	slliw	a1, a1, 2
	lw	a2, 92(sp)
	lw	a3, 88(sp)
	andi	a4, s8, 3
	or	a1, a1, a4
	srai	a2, a2, 2
	srai	a5, a3, 2
	slli	a4, a0, 3
	ld	a6, 24(sp)                      # 8-byte Folded Reload
	add	a0, a6, a4
	ld	a0, 0(a0)
	slli	a3, a1, 3
	slli	a1, a2, 3
	add	a2, a6, a1
	ld	a2, 0(a2)
	add	a0, a0, a3
	ld	a6, 0(a0)
	slli	a0, a5, 3
	add	a2, a2, a0
	ld	a7, 16(sp)                      # 8-byte Folded Reload
	add	a5, a7, a4
	ld	a5, 0(a5)
	add	a7, a7, a1
	ld	t0, 0(a7)
	ld	a7, 0(a2)
	add	a5, a5, a3
	ld	a5, 0(a5)
	add	t0, t0, a0
	ld	a2, 0(t0)
	bne	a6, a7, .LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_6 Depth=1
	beq	a5, a2, .LBB2_35
.LBB2_33:                               #   in Loop: Header=BB2_6 Depth=1
	bne	a6, a2, .LBB2_30
# %bb.34:                               #   in Loop: Header=BB2_6 Depth=1
	bne	a5, a7, .LBB2_30
.LBB2_35:                               #   in Loop: Header=BB2_6 Depth=1
	sb	zero, 0(s5)
	ld	t1, 8(sp)                       # 8-byte Folded Reload
	add	a2, t1, a4
	ld	a2, 0(a2)
	add	a2, a2, a3
	ld	t0, 0(a2)
	lh	a2, 0(t0)
	bne	a6, a5, .LBB2_40
# %bb.36:                               #   in Loop: Header=BB2_6 Depth=1
	add	a5, t1, a1
	ld	a5, 0(a5)
	add	a5, a5, a0
	ld	a7, 0(a5)
	lh	a5, 0(a7)
	lh	a6, 2(t0)
	ld	t0, 0(sp)                       # 8-byte Folded Reload
	add	a4, t0, a4
	ld	a4, 0(a4)
	add	a1, t0, a1
	ld	t0, 0(a1)
	lh	a1, 2(a7)
	add	a3, a4, a3
	ld	a4, 0(a3)
	add	a0, t0, a0
	ld	t0, 0(a0)
	sub	t1, a6, a1
	sraiw	t2, t1, 31
	lh	a3, 0(a4)
	lh	a7, 0(t0)
	lh	a0, 2(a4)
	lh	a4, 2(t0)
	xor	t0, t1, t2
	subw	t0, t0, t2
	ld	t1, 32(sp)                      # 8-byte Folded Reload
	bge	t0, t1, .LBB2_42
# %bb.37:                               #   in Loop: Header=BB2_6 Depth=1
	sub	t0, a2, a5
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	subw	t0, t0, t1
	sub	t1, a3, a7
	sraiw	t2, t1, 31
	xor	t1, t1, t2
	subw	t1, t1, t2
	or	t0, t1, t0
	li	t1, 3
	bltu	t1, t0, .LBB2_42
# %bb.38:                               #   in Loop: Header=BB2_6 Depth=1
	sub	t0, a0, a4
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	subw	t0, t0, t1
	ld	t1, 32(sp)                      # 8-byte Folded Reload
	bge	t0, t1, .LBB2_42
# %bb.39:                               #   in Loop: Header=BB2_6 Depth=1
	li	a0, 0
	j	.LBB2_4
.LBB2_40:                               #   in Loop: Header=BB2_6 Depth=1
	ld	t2, 0(sp)                       # 8-byte Folded Reload
	add	a4, t2, a4
	ld	a4, 0(a4)
	add	a3, a4, a3
	ld	a3, 0(a3)
	lh	a5, 2(t0)
	lh	a4, 0(a3)
	bne	a6, a7, .LBB2_43
# %bb.41:                               #   in Loop: Header=BB2_6 Depth=1
	add	a6, t1, a1
	ld	a6, 0(a6)
	add	a6, a6, a0
	ld	a6, 0(a6)
	lh	a7, 0(a6)
	sub	a2, a2, a7
	add	a1, t2, a1
	j	.LBB2_44
.LBB2_42:                               #   in Loop: Header=BB2_6 Depth=1
	sub	a2, a2, a7
	sraiw	a7, a2, 31
	xor	a2, a2, a7
	subw	a2, a2, a7
	sub	a4, a6, a4
	sraiw	a6, a4, 31
	xor	a4, a4, a6
	subw	a4, a4, a6
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	slt	a4, a4, a6
	sub	a3, a3, a5
	sraiw	a5, a3, 31
	xor	a3, a3, a5
	subw	a3, a3, a5
	or	a2, a2, a3
	sltiu	a2, a2, 4
	sub	a0, a0, a1
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	slt	a0, a0, a6
	and	a0, a4, a0
	and	a0, a0, a2
	xori	a0, a0, 1
	j	.LBB2_4
.LBB2_43:                               #   in Loop: Header=BB2_6 Depth=1
	add	a6, t2, a1
	ld	a6, 0(a6)
	add	a6, a6, a0
	ld	a6, 0(a6)
	lh	a7, 0(a6)
	sub	a2, a2, a7
	add	a1, t1, a1
.LBB2_44:                               #   in Loop: Header=BB2_6 Depth=1
	ld	a1, 0(a1)
	sraiw	a7, a2, 31
	xor	a2, a2, a7
	lh	a6, 2(a6)
	add	a0, a1, a0
	ld	a0, 0(a0)
	subw	a1, a2, a7
	sub	a2, a5, a6
	sraiw	a5, a2, 31
	lh	a6, 0(a0)
	xor	a2, a2, a5
	subw	a2, a2, a5
	ld	a7, 32(sp)                      # 8-byte Folded Reload
	slt	a2, a2, a7
	sub	a4, a4, a6
	sraiw	a5, a4, 31
	xor	a4, a4, a5
	lh	a3, 2(a3)
	lh	a0, 2(a0)
	subw	a4, a4, a5
	or	a1, a4, a1
	sltiu	a1, a1, 4
	sub	a3, a3, a0
	sraiw	a0, a3, 31
	xor	a3, a3, a0
	subw	a3, a3, a0
	slt	a0, a3, a7
	and	a0, a2, a0
	and	a0, a0, a1
	xori	a0, a0, 1
	j	.LBB2_4
.LBB2_45:
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
.Lfunc_end2:
	.size	GetStrength, .Lfunc_end2-GetStrength
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	EdgeLoop                        # -- Begin function EdgeLoop
	.p2align	2
	.type	EdgeLoop,@function
EdgeLoop:                               # @EdgeLoop
# %bb.0:
	addi	sp, sp, -256
	sd	ra, 248(sp)                     # 8-byte Folded Spill
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	sd	s1, 232(sp)                     # 8-byte Folded Spill
	sd	s2, 224(sp)                     # 8-byte Folded Spill
	sd	s3, 216(sp)                     # 8-byte Folded Spill
	sd	s4, 208(sp)                     # 8-byte Folded Spill
	sd	s5, 200(sp)                     # 8-byte Folded Spill
	sd	s6, 192(sp)                     # 8-byte Folded Spill
	sd	s7, 184(sp)                     # 8-byte Folded Spill
	sd	s8, 176(sp)                     # 8-byte Folded Spill
	sd	s9, 168(sp)                     # 8-byte Folded Spill
	sd	s10, 160(sp)                    # 8-byte Folded Spill
	sd	s11, 152(sp)                    # 8-byte Folded Spill
	ld	t0, 264(sp)
	mv	s0, a6
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	sd	a4, 56(sp)                      # 8-byte Folded Spill
	mv	s3, a3
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	lui	a0, 22
	addiw	a1, a0, 420
	sd	t0, 96(sp)                      # 8-byte Folded Spill
	bnez	t0, .LBB3_2
# %bb.1:
	addiw	a0, a0, 372
	j	.LBB3_3
.LBB3_2:
	addiw	a0, a0, 376
.LBB3_3:
	add	a0, a2, a0
	lw	a0, 0(a0)
	add	a3, a2, a1
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	sd	a3, 0(sp)                       # 8-byte Folded Spill
	beqz	a1, .LBB3_6
# %bb.4:
	lw	a1, 16(a3)
	slli	a3, s0, 4
	lui	a4, %hi(.L__const.EdgeLoop.pelnum_cr)
	addi	a4, a4, %lo(.L__const.EdgeLoop.pelnum_cr)
	add	a3, a4, a3
	slli	a1, a1, 2
	add	a1, a3, a1
	lw	a1, 0(a1)
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	bgtz	a1, .LBB3_7
.LBB3_5:
	ld	ra, 248(sp)                     # 8-byte Folded Reload
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	ld	s1, 232(sp)                     # 8-byte Folded Reload
	ld	s2, 224(sp)                     # 8-byte Folded Reload
	ld	s3, 216(sp)                     # 8-byte Folded Reload
	ld	s4, 208(sp)                     # 8-byte Folded Reload
	ld	s5, 200(sp)                     # 8-byte Folded Reload
	ld	s6, 192(sp)                     # 8-byte Folded Reload
	ld	s7, 184(sp)                     # 8-byte Folded Reload
	ld	s8, 176(sp)                     # 8-byte Folded Reload
	ld	s9, 168(sp)                     # 8-byte Folded Reload
	ld	s10, 160(sp)                    # 8-byte Folded Reload
	ld	s11, 152(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 256
	ret
.LBB3_6:
	li	a1, 16
	sd	a1, 88(sp)                      # 8-byte Folded Spill
.LBB3_7:
	lui	a1, 8
	addiw	s5, a1, -1192
	ld	a1, 272(sp)
	ld	a3, 96(sp)                      # 8-byte Folded Reload
	snez	a3, a3
	slliw	a5, a7, 2
	li	a6, 4
	li	a4, 1
	sd	a5, 80(sp)                      # 8-byte Folded Spill
	sd	a5, 40(sp)                      # 8-byte Folded Spill
	blt	a7, a6, .LBB3_9
# %bb.8:
	li	a5, 1
	sd	a5, 40(sp)                      # 8-byte Folded Spill
.LBB3_9:
	li	s1, 0
	li	s2, 0
	sd	zero, 8(sp)                     # 8-byte Folded Spill
	sd	zero, 16(sp)                    # 8-byte Folded Spill
	ld	s4, 256(sp)
	add	s5, a2, s5
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	addi	s5, a0, -8
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	subw	s6, a4, a0
	addi	s9, s0, -1
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	addi	a0, a0, -8
	seqz	a0, a0
	and	s10, a3, a0
	slli	a1, a1, 2
	lui	a0, 22
	addiw	a0, a0, 452
	add	a0, a2, a0
	add	a0, a0, a1
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	li	a0, 528
	mul	s11, s3, a0
	j	.LBB3_12
.LBB3_10:                               #   in Loop: Header=BB3_12 Depth=1
	lw	a5, 508(a1)
	beqz	a5, .LBB3_21
.LBB3_11:                               #   in Loop: Header=BB3_12 Depth=1
	addiw	s2, s2, 1
	addiw	s1, s1, 2
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	beq	a0, s2, .LBB3_5
.LBB3_12:                               # =>This Inner Loop Header: Depth=1
	ld	s7, 80(sp)                      # 8-byte Folded Reload
	mv	s8, s2
	beqz	s0, .LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=1
	mv	s7, s2
	ld	s8, 40(sp)                      # 8-byte Folded Reload
.LBB3_14:                               #   in Loop: Header=BB3_12 Depth=1
	addi	a4, sp, 104
	mv	a0, s3
	mv	a1, s7
	mv	a2, s8
	mv	a3, s6
	call	getNeighbour
	addw	a1, s9, s7
	subw	a2, s8, s0
	addi	a4, sp, 128
	mv	a0, s3
	mv	a3, s6
	call	getNeighbour
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	ld	a2, 0(a0)
	add	a1, a2, s11
	lw	a0, 132(sp)
	lw	a3, 424(a1)
	li	a4, 528
	mul	a0, a0, a4
	add	a2, a2, a0
	beqz	a3, .LBB3_18
# %bb.15:                               #   in Loop: Header=BB3_12 Depth=1
	li	a4, 1
	lui	a0, %hi(fieldModeFilteringFlag)
	sb	a4, %lo(fieldModeFilteringFlag)(a0)
	mv	a0, s2
	beqz	s10, .LBB3_20
# %bb.16:                               #   in Loop: Header=BB3_12 Depth=1
	lw	a0, 424(a2)
	li	a4, 1
	bnez	a0, .LBB3_19
# %bb.17:                               #   in Loop: Header=BB3_12 Depth=1
	slliw	a0, s2, 1
	li	a4, 1
	j	.LBB3_20
.LBB3_18:                               #   in Loop: Header=BB3_12 Depth=1
	lw	a0, 424(a2)
	snez	a4, a0
	lui	a0, %hi(fieldModeFilteringFlag)
	sb	a4, %lo(fieldModeFilteringFlag)(a0)
	mv	a0, s2
	beqz	s10, .LBB3_20
.LBB3_19:                               #   in Loop: Header=BB3_12 Depth=1
	andi	a0, s1, -4
	andi	a5, s2, 1
	or	a0, a0, a5
.LBB3_20:                               #   in Loop: Header=BB3_12 Depth=1
	lw	a5, 128(sp)
	beqz	a5, .LBB3_10
.LBB3_21:                               #   in Loop: Header=BB3_12 Depth=1
	beqz	s0, .LBB3_39
# %bb.22:                               #   in Loop: Header=BB3_12 Depth=1
	mv	t2, s4
	mv	t4, s4
	beqz	a4, .LBB3_24
# %bb.23:                               #   in Loop: Header=BB3_12 Depth=1
	lw	a4, 424(a2)
	seqz	a3, a3
	sllw	t2, s4, a3
	seqz	a3, a4
	sllw	t4, s4, a3
.LBB3_24:                               #   in Loop: Header=BB3_12 Depth=1
	lw	a2, 12(a2)
	ld	a3, 96(sp)                      # 8-byte Folded Reload
	beqz	a3, .LBB3_40
.LBB3_25:                               #   in Loop: Header=BB3_12 Depth=1
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	lw	a3, 0(a3)
	addw	a2, a3, a2
	li	a4, 51
	blt	a2, a4, .LBB3_27
# %bb.26:                               #   in Loop: Header=BB3_12 Depth=1
	li	a2, 51
.LBB3_27:                               #   in Loop: Header=BB3_12 Depth=1
	lw	a1, 12(a1)
	addw	a1, a1, a3
	blt	a1, a4, .LBB3_29
# %bb.28:                               #   in Loop: Header=BB3_12 Depth=1
	li	a1, 51
.LBB3_29:                               #   in Loop: Header=BB3_12 Depth=1
	sgtz	a3, a2
	neg	a3, a3
	and	a2, a3, a2
	lui	a4, %hi(QP_SCALE_CR)
	addi	a4, a4, %lo(QP_SCALE_CR)
	add	a2, a4, a2
	lbu	a2, 0(a2)
	sgtz	a3, a1
	neg	a3, a3
	and	a1, a3, a1
	add	a1, a4, a1
	lbu	a1, 0(a1)
	add	a1, a2, a1
	addi	a1, a1, 1
	srli	a1, a1, 1
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	addw	a3, a1, a3
	li	a2, 51
	blt	a3, a2, .LBB3_31
.LBB3_30:                               #   in Loop: Header=BB3_12 Depth=1
	li	a3, 51
.LBB3_31:                               #   in Loop: Header=BB3_12 Depth=1
	ld	a4, 64(sp)                      # 8-byte Folded Reload
	addw	a1, a1, a4
	bge	a1, a2, .LBB3_33
# %bb.32:                               #   in Loop: Header=BB3_12 Depth=1
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	add	a0, a2, a0
	lbu	n1, 0(a0)
	bnez	n1, .LBB3_34
	j	.LBB3_11
.LBB3_33:                               #   in Loop: Header=BB3_12 Depth=1
	li	a1, 51
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	add	a0, a2, a0
	lbu	n1, 0(a0)
	beqz	n1, .LBB3_11
.LBB3_34:                               #   in Loop: Header=BB3_12 Depth=1
	lw	a0, 124(sp)
	slli	a0, a0, 3
	lw	a2, 148(sp)
	ld	a5, 32(sp)                      # 8-byte Folded Reload
	add	a0, a5, a0
	ld	a0, 0(a0)
	lw	a4, 120(sp)
	slli	a2, a2, 3
	add	a2, a5, a2
	lw	a5, 144(sp)
	ld	a6, 0(a2)
	slli	a2, a4, 1
	add	a2, a0, a2
	slli	a5, a5, 1
	add	a6, a6, a5
	sgtz	a0, a3
	neg	a5, a0
	and	a5, a5, a3
	lui	a0, %hi(ALPHA_TABLE)
	addi	a0, a0, %lo(ALPHA_TABLE)
	add	a0, a0, a5
	lbu	a0, 0(a0)
	lhu	t3, 0(a6)
	lhu	a7, 0(a2)
	sllw	n4, a0, s5
	sub	n2, a7, t3
	sraiw	a0, n2, 31
	xor	a3, n2, a0
	subw	n5, a3, a0
	bge	n5, n4, .LBB3_11
# %bb.35:                               #   in Loop: Header=BB3_12 Depth=1
	sgtz	a0, a1
	neg	a0, a0
	and	a0, a0, a1
	lui	a1, %hi(BETA_TABLE)
	addi	a1, a1, %lo(BETA_TABLE)
	add	a0, a1, a0
	lbu	a0, 0(a0)
	sllw	n6, a0, s5
	negw	t0, t4
	slli	n3, t2, 1
	add	a0, a2, n3
	lhu	a4, 0(a0)
	slli	a3, t0, 1
	add	a3, a6, a3
	lhu	a1, 0(a3)
	sub	t1, a7, a4
	sraiw	t5, t1, 31
	xor	t1, t1, t5
	subw	t1, t1, t5
	subw	t1, t1, n6
	sub	t5, t3, a1
	sraiw	t6, t5, 31
	xor	t5, t5, t6
	subw	t5, t5, t6
	subw	t5, t5, n6
	and	t1, t1, t5
	bgez	t1, .LBB3_11
# %bb.36:                               #   in Loop: Header=BB3_12 Depth=1
	slli	t1, a5, 2
	lui	t5, %hi(CLIP_TAB)
	addi	t5, t5, %lo(CLIP_TAB)
	add	a5, t5, a5
	add	t1, a5, t1
	slliw	a5, t0, 1
	slli	a5, a5, 1
	add	t5, a6, a5
	lhu	t0, 0(t5)
	slliw	a5, t2, 1
	slli	a5, a5, 1
	add	t6, a2, a5
	lhu	a5, 0(t6)
	add	t1, t1, n1
	lbu	n7, 0(t1)
	add	t1, a7, t3
	ld	n8, 96(sp)                      # 8-byte Folded Reload
	ld	n11, 16(sp)                     # 8-byte Folded Reload
	beqz	n8, .LBB3_41
# %bb.37:                               #   in Loop: Header=BB3_12 Depth=1
	li	t2, 4
	bne	n1, t2, .LBB3_44
# %bb.38:                               #   in Loop: Header=BB3_12 Depth=1
	slli	a0, a4, 1
	add	a7, a7, a1
	add	a0, a7, a0
	addi	a0, a0, 2
	srli	a0, a0, 2
	sh	a0, 0(a2)
	slli	a1, a1, 1
	add	a4, t3, a4
	add	a1, a4, a1
	addi	a1, a1, 2
	srli	a1, a1, 2
	sh	a1, 0(a6)
	j	.LBB3_11
.LBB3_39:                               #   in Loop: Header=BB3_12 Depth=1
	li	t2, 1
	li	t4, 1
	lw	a2, 12(a2)
	ld	a3, 96(sp)                      # 8-byte Folded Reload
	bnez	a3, .LBB3_25
.LBB3_40:                               #   in Loop: Header=BB3_12 Depth=1
	lw	a1, 12(a1)
	add	a1, a2, a1
	addi	a1, a1, 1
	sraiw	a1, a1, 1
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	addw	a3, a1, a3
	li	a2, 51
	bge	a3, a2, .LBB3_30
	j	.LBB3_31
.LBB3_41:                               #   in Loop: Header=BB3_12 Depth=1
	sub	n8, a7, a5
	sraiw	n9, n8, 31
	xor	n8, n8, n9
	subw	n8, n8, n9
	slt	n11, n8, n6
	sub	n8, t3, t0
	sraiw	n9, n8, 31
	xor	n8, n8, n9
	subw	n8, n8, n9
	slt	n6, n8, n6
	sd	n6, 8(sp)                       # 8-byte Folded Spill
	li	n6, 4
	bne	n1, n6, .LBB3_44
# %bb.42:                               #   in Loop: Header=BB3_12 Depth=1
	srliw	n1, n4, 2
	addi	n1, n1, 2
	sltu	n2, n5, n1
	and	n11, n11, n2
	add	n1, t1, a4
	beqz	n11, .LBB3_74
# %bb.43:                               #   in Loop: Header=BB3_12 Depth=1
	slli	n4, n1, 1
	add	n5, a1, a5
	add	n4, n5, n4
	addi	n4, n4, 4
	srli	n4, n4, 3
	j	.LBB3_75
.LBB3_44:                               #   in Loop: Header=BB3_12 Depth=1
	sllw	t2, n7, s5
	ld	t4, 96(sp)                      # 8-byte Folded Reload
	bnez	t4, .LBB3_46
# %bb.45:                               #   in Loop: Header=BB3_12 Depth=1
	ld	t4, 8(sp)                       # 8-byte Folded Reload
	add	t4, t4, t2
	addw	t4, t4, n11
	j	.LBB3_47
.LBB3_46:                               #   in Loop: Header=BB3_12 Depth=1
	addiw	t4, t2, 1
.LBB3_47:                               #   in Loop: Header=BB3_12 Depth=1
	slli	n2, n2, 2
	sub	t5, a1, a4
	add	t5, t5, n2
	addi	t5, t5, 4
	srai	t5, t5, 3
	mv	t6, t5
	bge	t5, t4, .LBB3_57
# %bb.48:                               #   in Loop: Header=BB3_12 Depth=1
	negw	t4, t4
	bge	t5, t4, .LBB3_58
.LBB3_49:                               #   in Loop: Header=BB3_12 Depth=1
	addw	t3, t4, t3
	ld	t5, 96(sp)                      # 8-byte Folded Reload
	beqz	t5, .LBB3_59
.LBB3_50:                               #   in Loop: Header=BB3_12 Depth=1
	bltz	t3, .LBB3_72
# %bb.51:                               #   in Loop: Header=BB3_12 Depth=1
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	lw	a0, 4(a0)
	blt	t3, a0, .LBB3_53
# %bb.52:                               #   in Loop: Header=BB3_12 Depth=1
	mv	t3, a0
.LBB3_53:                               #   in Loop: Header=BB3_12 Depth=1
	subw	a0, a7, t4
	sh	t3, 0(a6)
	sd	n11, 16(sp)                     # 8-byte Folded Spill
	bltz	a0, .LBB3_73
.LBB3_54:                               #   in Loop: Header=BB3_12 Depth=1
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	lw	a1, 4(a1)
	blt	a0, a1, .LBB3_56
# %bb.55:                               #   in Loop: Header=BB3_12 Depth=1
	mv	a0, a1
.LBB3_56:                               #   in Loop: Header=BB3_12 Depth=1
	sh	a0, 0(a2)
	j	.LBB3_11
.LBB3_57:                               #   in Loop: Header=BB3_12 Depth=1
	mv	t6, t4
	negw	t4, t4
	blt	t5, t4, .LBB3_49
.LBB3_58:                               #   in Loop: Header=BB3_12 Depth=1
	mv	t4, t6
	addw	t3, t6, t3
	ld	t5, 96(sp)                      # 8-byte Folded Reload
	bnez	t5, .LBB3_50
.LBB3_59:                               #   in Loop: Header=BB3_12 Depth=1
	bltz	t3, .LBB3_85
# %bb.60:                               #   in Loop: Header=BB3_12 Depth=1
	ld	t5, 0(sp)                       # 8-byte Folded Reload
	lw	t5, 0(t5)
	blt	t3, t5, .LBB3_62
# %bb.61:                               #   in Loop: Header=BB3_12 Depth=1
	mv	t3, t5
.LBB3_62:                               #   in Loop: Header=BB3_12 Depth=1
	subw	a7, a7, t4
	sh	t3, 0(a6)
	bltz	a7, .LBB3_86
.LBB3_63:                               #   in Loop: Header=BB3_12 Depth=1
	ld	a6, 0(sp)                       # 8-byte Folded Reload
	lw	a6, 0(a6)
	blt	a7, a6, .LBB3_65
# %bb.64:                               #   in Loop: Header=BB3_12 Depth=1
	mv	a7, a6
.LBB3_65:                               #   in Loop: Header=BB3_12 Depth=1
	sh	a7, 0(a2)
	addi	t1, t1, 1
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	bnez	a2, .LBB3_87
.LBB3_66:                               #   in Loop: Header=BB3_12 Depth=1
	beqz	n11, .LBB3_92
.LBB3_67:                               #   in Loop: Header=BB3_12 Depth=1
	srli	a1, t1, 1
	slli	a4, a4, 1
	sub	a5, a5, a4
	add	a1, a5, a1
	srai	a1, a1, 1
	mv	a2, a1
	blt	a1, t2, .LBB3_69
# %bb.68:                               #   in Loop: Header=BB3_12 Depth=1
	mv	a2, t2
.LBB3_69:                               #   in Loop: Header=BB3_12 Depth=1
	negw	a3, t2
	blt	a1, a3, .LBB3_71
# %bb.70:                               #   in Loop: Header=BB3_12 Depth=1
	mv	a3, a2
.LBB3_71:                               #   in Loop: Header=BB3_12 Depth=1
	lh	a1, 0(a0)
	add	a1, a1, a3
	sh	a1, 0(a0)
	li	a0, 1
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	j	.LBB3_11
.LBB3_72:                               #   in Loop: Header=BB3_12 Depth=1
	subw	a0, a7, t4
	sh	zero, 0(a6)
	sd	n11, 16(sp)                     # 8-byte Folded Spill
	bgez	a0, .LBB3_54
.LBB3_73:                               #   in Loop: Header=BB3_12 Depth=1
	sh	zero, 0(a2)
	j	.LBB3_11
.LBB3_74:                               #   in Loop: Header=BB3_12 Depth=1
	slli	n4, a4, 1
	add	n5, a7, a1
	add	n4, n5, n4
	addi	n4, n4, 2
	srli	n4, n4, 2
.LBB3_75:                               #   in Loop: Header=BB3_12 Depth=1
	slli	n5, t4, 1
	negw	t4, t4
	subw	t4, t4, n5
	slli	t4, t4, 1
	add	t4, a6, t4
	lhu	t4, 0(t4)
	addw	t2, n3, t2
	slli	t2, t2, 1
	add	t2, a2, t2
	lhu	t2, 0(t2)
	ld	n3, 8(sp)                       # 8-byte Folded Reload
	and	n3, n3, n2
	sh	n4, 0(a2)
	sd	n3, 8(sp)                       # 8-byte Folded Spill
	beqz	n3, .LBB3_93
# %bb.76:                               #   in Loop: Header=BB3_12 Depth=1
	add	a2, t1, a1
	slli	a2, a2, 1
	add	n2, a4, t0
	add	a2, n2, a2
	addi	a2, a2, 4
	srli	a2, a2, 3
	sh	a2, 0(a6)
	beqz	n11, .LBB3_78
.LBB3_77:                               #   in Loop: Header=BB3_12 Depth=1
	add	a2, a7, t3
	add	a2, a2, a4
	add	a2, a2, a5
	addi	a2, a2, 2
	srli	a4, a2, 2
.LBB3_78:                               #   in Loop: Header=BB3_12 Depth=1
	sh	a4, 0(a0)
	mv	a0, a1
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	beqz	a2, .LBB3_80
# %bb.79:                               #   in Loop: Header=BB3_12 Depth=1
	add	a7, a7, t3
	add	a7, a7, a1
	add	a7, a7, t0
	addi	a0, a7, 2
	srli	a0, a0, 2
.LBB3_80:                               #   in Loop: Header=BB3_12 Depth=1
	sh	a0, 0(a3)
	beqz	n11, .LBB3_82
# %bb.81:                               #   in Loop: Header=BB3_12 Depth=1
	add	t2, t2, a5
	slli	t2, t2, 1
	add	a5, n1, a5
	add	a5, a5, t2
	addi	a5, a5, 4
	srli	a5, a5, 3
.LBB3_82:                               #   in Loop: Header=BB3_12 Depth=1
	sd	n11, 16(sp)                     # 8-byte Folded Spill
	sh	a5, 0(t6)
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	beqz	a0, .LBB3_84
# %bb.83:                               #   in Loop: Header=BB3_12 Depth=1
	add	t4, t4, t0
	slli	t4, t4, 1
	add	a1, a1, t1
	add	a1, a1, t0
	add	a1, a1, t4
	addi	a1, a1, 4
	srli	t0, a1, 3
.LBB3_84:                               #   in Loop: Header=BB3_12 Depth=1
	sh	t0, 0(t5)
	j	.LBB3_11
.LBB3_85:                               #   in Loop: Header=BB3_12 Depth=1
	subw	a7, a7, t4
	sh	zero, 0(a6)
	bgez	a7, .LBB3_63
.LBB3_86:                               #   in Loop: Header=BB3_12 Depth=1
	sh	zero, 0(a2)
	addi	t1, t1, 1
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	beqz	a2, .LBB3_66
.LBB3_87:                               #   in Loop: Header=BB3_12 Depth=1
	srli	a2, t1, 1
	slli	a1, a1, 1
	sub	a1, t0, a1
	add	a1, a1, a2
	srai	a1, a1, 1
	mv	a2, a1
	blt	a1, t2, .LBB3_89
# %bb.88:                               #   in Loop: Header=BB3_12 Depth=1
	mv	a2, t2
.LBB3_89:                               #   in Loop: Header=BB3_12 Depth=1
	negw	a6, t2
	blt	a1, a6, .LBB3_91
# %bb.90:                               #   in Loop: Header=BB3_12 Depth=1
	mv	a6, a2
.LBB3_91:                               #   in Loop: Header=BB3_12 Depth=1
	lh	a1, 0(a3)
	add	a1, a1, a6
	sh	a1, 0(a3)
	bnez	n11, .LBB3_67
.LBB3_92:                               #   in Loop: Header=BB3_12 Depth=1
	sd	zero, 16(sp)                    # 8-byte Folded Spill
	j	.LBB3_11
.LBB3_93:                               #   in Loop: Header=BB3_12 Depth=1
	slli	a2, a1, 1
	add	n2, t3, a4
	add	a2, n2, a2
	addi	a2, a2, 2
	srli	a2, a2, 2
	sh	a2, 0(a6)
	bnez	n11, .LBB3_77
	j	.LBB3_78
.Lfunc_end3:
	.size	EdgeLoop, .Lfunc_end3-EdgeLoop
                                        # -- End function
	.option	pop
	.type	ALPHA_TABLE,@object             # @ALPHA_TABLE
	.data
	.globl	ALPHA_TABLE
ALPHA_TABLE:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\004\005\006\007\b\t\n\f\r\017\021\024\026\031\034 $(-28?GPZeq\177\220\242\266\313\342\377\377"
	.size	ALPHA_TABLE, 52

	.type	BETA_TABLE,@object              # @BETA_TABLE
	.globl	BETA_TABLE
BETA_TABLE:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\002\002\003\003\003\003\004\004\004\006\006\007\007\b\b\t\t\n\n\013\013\f\f\r\r\016\016\017\017\020\020\021\021\022\022"
	.size	BETA_TABLE, 52

	.type	CLIP_TAB,@object                # @CLIP_TAB
	.globl	CLIP_TAB
CLIP_TAB:
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\001\001\001"
	.ascii	"\000\000\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\002\003\003"
	.ascii	"\000\001\002\003\003"
	.ascii	"\000\002\002\003\003"
	.ascii	"\000\002\002\004\004"
	.ascii	"\000\002\003\004\004"
	.ascii	"\000\002\003\004\004"
	.ascii	"\000\003\003\005\005"
	.ascii	"\000\003\004\006\006"
	.ascii	"\000\003\004\006\006"
	.ascii	"\000\004\005\007\007"
	.ascii	"\000\004\005\b\b"
	.ascii	"\000\004\006\t\t"
	.ascii	"\000\005\007\n\n"
	.ascii	"\000\006\b\013\013"
	.ascii	"\000\006\b\r\r"
	.ascii	"\000\007\n\016\016"
	.ascii	"\000\b\013\020\020"
	.ascii	"\000\t\f\022\022"
	.ascii	"\000\n\r\024\024"
	.ascii	"\000\013\017\027\027"
	.ascii	"\000\r\021\031\031"
	.size	CLIP_TAB, 260

	.type	chroma_edge,@object             # @chroma_edge
	.globl	chroma_edge
chroma_edge:
	.asciz	"\377\000\000"
	.ascii	"\377\377\377\001"
	.ascii	"\377\001\001\002"
	.ascii	"\377\377\377\003"
	.asciz	"\377\000\000"
	.ascii	"\377\377\001\001"
	.ascii	"\377\001\002\002"
	.ascii	"\377\377\003\003"
	.size	chroma_edge, 32

	.type	.L__const.DeblockMb.filterNon8x8LumaEdgesFlag,@object # @__const.DeblockMb.filterNon8x8LumaEdgesFlag
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
.L__const.DeblockMb.filterNon8x8LumaEdgesFlag:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	.L__const.DeblockMb.filterNon8x8LumaEdgesFlag, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MbQ->luma_transform_size_8x8_flag"
	.size	.L.str, 34

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/loopFilter.c"
	.size	.L.str.1, 17

	.type	.L__PRETTY_FUNCTION__.DeblockMb,@object # @__PRETTY_FUNCTION__.DeblockMb
.L__PRETTY_FUNCTION__.DeblockMb:
	.asciz	"void DeblockMb(ImageParameters *, unsigned short **, unsigned short ***, int)"
	.size	.L__PRETTY_FUNCTION__.DeblockMb, 78

	.type	mixedModeEdgeFlag,@object       # @mixedModeEdgeFlag
	.section	.sbss,"aw",@nobits
	.globl	mixedModeEdgeFlag
mixedModeEdgeFlag:
	.byte	0                               # 0x0
	.size	mixedModeEdgeFlag, 1

	.type	ININT_STRENGTH,@object          # @ININT_STRENGTH
	.data
	.globl	ININT_STRENGTH
	.p2align	2, 0x0
ININT_STRENGTH:
	.word	67372036                        # 0x4040404
	.word	50529027                        # 0x3030303
	.word	50529027                        # 0x3030303
	.word	50529027                        # 0x3030303
	.size	ININT_STRENGTH, 16

	.type	BLK_NUM,@object                 # @BLK_NUM
	.globl	BLK_NUM
BLK_NUM:
	.ascii	"\000\004\b\f"
	.ascii	"\001\005\t\r"
	.ascii	"\002\006\n\016"
	.ascii	"\003\007\013\017"
	.ascii	"\000\001\002\003"
	.ascii	"\004\005\006\007"
	.ascii	"\b\t\n\013"
	.ascii	"\f\r\016\017"
	.size	BLK_NUM, 32

	.type	BLK_4_TO_8,@object              # @BLK_4_TO_8
	.globl	BLK_4_TO_8
BLK_4_TO_8:
	.ascii	"\000\000\001\001\000\000\001\001\002\002\003\003\002\002\003\003"
	.size	BLK_4_TO_8, 16

	.type	.L__const.EdgeLoop.pelnum_cr,@object # @__const.EdgeLoop.pelnum_cr
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
.L__const.EdgeLoop.pelnum_cr:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	16                              # 0x10
	.size	.L__const.EdgeLoop.pelnum_cr, 32

	.type	fieldModeFilteringFlag,@object  # @fieldModeFilteringFlag
	.section	.sbss,"aw",@nobits
	.globl	fieldModeFilteringFlag
fieldModeFilteringFlag:
	.byte	0                               # 0x0
	.size	fieldModeFilteringFlag, 1

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
