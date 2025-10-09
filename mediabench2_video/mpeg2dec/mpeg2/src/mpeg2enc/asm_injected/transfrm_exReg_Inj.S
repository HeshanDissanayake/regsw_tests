	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"transfrm.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	transform                       # -- Begin function transform
	.p2align	2
	.type	transform,@function
transform:                              # @transform
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
	lui	a4, %hi(height2)
	lw	a4, %lo(height2)(a4)
	sd	a2, 8(sp)                       # 8-byte Folded Spill
	blez	a4, .LBB0_30
# %bb.1:
	mv	s2, a1
	mv	s3, a0
	lui	a0, %hi(width)
	lw	a1, %lo(width)(a0)
	blez	a1, .LBB0_30
# %bb.2:                                # %.preheader
	mv	s0, a3
	li	s6, 0
	li	s4, 0
	lui	s5, %hi(block_count)
	li	s7, 3
	lui	s8, %hi(pict_struct)
	j	.LBB0_5
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	lui	a0, %hi(height2)
	lw	a4, %lo(height2)(a0)
	mv	s6, a2
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	addiw	s4, s4, 16
	bge	s4, a4, .LBB0_30
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_14 Depth 3
	blez	a1, .LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, %lo(block_count)(s5)
	blez	a0, .LBB0_27
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	li	s10, 0
	sext.w	a2, s6
	j	.LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_10 Depth=2
	lui	a1, %hi(width)
	lw	a1, %lo(width)(a1)
	ld	a2, 16(sp)                      # 8-byte Folded Reload
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=2
	addi	a2, a2, 1
	addiw	s10, s10, 16
	addi	s6, s6, 1
	bge	s10, a1, .LBB0_3
.LBB0_10:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_14 Depth 3
	blez	a0, .LBB0_9
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	li	s1, 0
	li	s11, 0
	li	a1, 96
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	mul	s9, a2, a1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	add	s9, a1, s9
	j	.LBB0_14
.LBB0_12:                               #   in Loop: Header=BB0_14 Depth=3
	addw	a3, a4, a3
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=3
	sltiu	a4, s11, 4
	addi	a2, a2, 1
	addi	a4, a4, -1
	and	a2, a4, a2
	slli	a2, a2, 3
	add	a4, s3, a2
	ld	a4, 0(a4)
	add	a2, s2, a2
	ld	a2, 0(a2)
	add	a4, a4, a3
	add	a2, a2, a3
	mul	a0, s6, a0
	lbu	a3, 0(a2)
	lbu	a5, 0(a4)
	addw	a0, s11, a0
	slli	a0, a0, 7
	add	a0, s0, a0
	subw	a3, a3, a5
	sh	a3, 0(a0)
	lbu	a3, 1(a2)
	lbu	a5, 1(a4)
	subw	a3, a3, a5
	sh	a3, 2(a0)
	lbu	a3, 2(a2)
	lbu	a5, 2(a4)
	subw	a3, a3, a5
	sh	a3, 4(a0)
	lbu	a3, 3(a2)
	lbu	a5, 3(a4)
	subw	a3, a3, a5
	sh	a3, 6(a0)
	lbu	a3, 4(a2)
	lbu	a5, 4(a4)
	subw	a3, a3, a5
	sh	a3, 8(a0)
	lbu	a3, 5(a2)
	lbu	a5, 5(a4)
	subw	a3, a3, a5
	sh	a3, 10(a0)
	lbu	a3, 6(a2)
	lbu	a5, 6(a4)
	subw	a3, a3, a5
	sh	a3, 12(a0)
	lbu	a3, 7(a2)
	lbu	a5, 7(a4)
	subw	a3, a3, a5
	sh	a3, 14(a0)
	add	a2, a2, a1
	add	a4, a4, a1
	lbu	a3, 0(a2)
	lbu	a5, 0(a4)
	subw	a3, a3, a5
	sh	a3, 16(a0)
	lbu	a3, 1(a2)
	lbu	a5, 1(a4)
	subw	a3, a3, a5
	sh	a3, 18(a0)
	lbu	a3, 2(a2)
	lbu	a5, 2(a4)
	subw	a3, a3, a5
	sh	a3, 20(a0)
	lbu	a3, 3(a2)
	lbu	a5, 3(a4)
	subw	a3, a3, a5
	sh	a3, 22(a0)
	lbu	a3, 4(a2)
	lbu	a5, 4(a4)
	subw	a3, a3, a5
	sh	a3, 24(a0)
	lbu	a3, 5(a2)
	lbu	a5, 5(a4)
	subw	a3, a3, a5
	sh	a3, 26(a0)
	lbu	a3, 6(a2)
	lbu	a5, 6(a4)
	subw	a3, a3, a5
	sh	a3, 28(a0)
	lbu	a3, 7(a2)
	lbu	a5, 7(a4)
	subw	a3, a3, a5
	sh	a3, 30(a0)
	add	a2, a2, a1
	add	a4, a4, a1
	lbu	a3, 0(a2)
	lbu	a5, 0(a4)
	subw	a3, a3, a5
	sh	a3, 32(a0)
	lbu	a3, 1(a2)
	lbu	a5, 1(a4)
	subw	a3, a3, a5
	sh	a3, 34(a0)
	lbu	a3, 2(a2)
	lbu	a5, 2(a4)
	subw	a3, a3, a5
	sh	a3, 36(a0)
	lbu	a3, 3(a2)
	lbu	a5, 3(a4)
	subw	a3, a3, a5
	sh	a3, 38(a0)
	lbu	a3, 4(a2)
	lbu	a5, 4(a4)
	subw	a3, a3, a5
	sh	a3, 40(a0)
	lbu	a3, 5(a2)
	lbu	a5, 5(a4)
	subw	a3, a3, a5
	sh	a3, 42(a0)
	lbu	a3, 6(a2)
	lbu	a5, 6(a4)
	subw	a3, a3, a5
	sh	a3, 44(a0)
	lbu	a3, 7(a2)
	lbu	a5, 7(a4)
	subw	a3, a3, a5
	sh	a3, 46(a0)
	add	a2, a2, a1
	add	a4, a4, a1
	lbu	a3, 0(a2)
	lbu	a5, 0(a4)
	subw	a3, a3, a5
	sh	a3, 48(a0)
	lbu	a3, 1(a2)
	lbu	a5, 1(a4)
	subw	a3, a3, a5
	sh	a3, 50(a0)
	lbu	a3, 2(a2)
	lbu	a5, 2(a4)
	subw	a3, a3, a5
	sh	a3, 52(a0)
	lbu	a3, 3(a2)
	lbu	a5, 3(a4)
	subw	a3, a3, a5
	sh	a3, 54(a0)
	lbu	a3, 4(a2)
	lbu	a5, 4(a4)
	subw	a3, a3, a5
	sh	a3, 56(a0)
	lbu	a3, 5(a2)
	lbu	a5, 5(a4)
	subw	a3, a3, a5
	sh	a3, 58(a0)
	lbu	a3, 6(a2)
	lbu	a5, 6(a4)
	subw	a3, a3, a5
	sh	a3, 60(a0)
	lbu	a3, 7(a2)
	lbu	a5, 7(a4)
	subw	a3, a3, a5
	sh	a3, 62(a0)
	add	a2, a2, a1
	add	a4, a4, a1
	lbu	a3, 0(a2)
	lbu	a5, 0(a4)
	subw	a3, a3, a5
	sh	a3, 64(a0)
	lbu	a3, 1(a2)
	lbu	a5, 1(a4)
	subw	a3, a3, a5
	sh	a3, 66(a0)
	lbu	a3, 2(a2)
	lbu	a5, 2(a4)
	subw	a3, a3, a5
	sh	a3, 68(a0)
	lbu	a3, 3(a2)
	lbu	a5, 3(a4)
	subw	a3, a3, a5
	sh	a3, 70(a0)
	lbu	a3, 4(a2)
	lbu	a5, 4(a4)
	subw	a3, a3, a5
	sh	a3, 72(a0)
	lbu	a3, 5(a2)
	lbu	a5, 5(a4)
	subw	a3, a3, a5
	sh	a3, 74(a0)
	lbu	a3, 6(a2)
	lbu	a5, 6(a4)
	subw	a3, a3, a5
	sh	a3, 76(a0)
	lbu	a3, 7(a2)
	lbu	a5, 7(a4)
	subw	a3, a3, a5
	sh	a3, 78(a0)
	add	a2, a2, a1
	add	a4, a4, a1
	lbu	a3, 0(a2)
	lbu	a5, 0(a4)
	subw	a3, a3, a5
	sh	a3, 80(a0)
	lbu	a3, 1(a2)
	lbu	a5, 1(a4)
	subw	a3, a3, a5
	sh	a3, 82(a0)
	lbu	a3, 2(a2)
	lbu	a5, 2(a4)
	subw	a3, a3, a5
	sh	a3, 84(a0)
	lbu	a3, 3(a2)
	lbu	a5, 3(a4)
	subw	a3, a3, a5
	sh	a3, 86(a0)
	lbu	a3, 4(a2)
	lbu	a5, 4(a4)
	subw	a3, a3, a5
	sh	a3, 88(a0)
	lbu	a3, 5(a2)
	lbu	a5, 5(a4)
	subw	a3, a3, a5
	sh	a3, 90(a0)
	lbu	a3, 6(a2)
	lbu	a5, 6(a4)
	subw	a3, a3, a5
	sh	a3, 92(a0)
	lbu	a3, 7(a2)
	lbu	a5, 7(a4)
	subw	a3, a3, a5
	sh	a3, 94(a0)
	add	a2, a2, a1
	add	a4, a4, a1
	lbu	a3, 0(a2)
	lbu	a5, 0(a4)
	subw	a3, a3, a5
	sh	a3, 96(a0)
	lbu	a3, 1(a2)
	lbu	a5, 1(a4)
	subw	a3, a3, a5
	sh	a3, 98(a0)
	lbu	a3, 2(a2)
	lbu	a5, 2(a4)
	subw	a3, a3, a5
	sh	a3, 100(a0)
	lbu	a3, 3(a2)
	lbu	a5, 3(a4)
	subw	a3, a3, a5
	sh	a3, 102(a0)
	lbu	a3, 4(a2)
	lbu	a5, 4(a4)
	subw	a3, a3, a5
	sh	a3, 104(a0)
	lbu	a3, 5(a2)
	lbu	a5, 5(a4)
	subw	a3, a3, a5
	sh	a3, 106(a0)
	lbu	a3, 6(a2)
	lbu	a5, 6(a4)
	subw	a3, a3, a5
	sh	a3, 108(a0)
	lbu	a3, 7(a2)
	lbu	a5, 7(a4)
	subw	a3, a3, a5
	sh	a3, 110(a0)
	add	a2, a2, a1
	add	a1, a4, a1
	lbu	a3, 0(a2)
	lbu	a4, 0(a1)
	subw	a3, a3, a4
	sh	a3, 112(a0)
	lbu	a3, 1(a2)
	lbu	a4, 1(a1)
	subw	a3, a3, a4
	sh	a3, 114(a0)
	lbu	a3, 2(a2)
	lbu	a4, 2(a1)
	subw	a3, a3, a4
	sh	a3, 116(a0)
	lbu	a3, 3(a2)
	lbu	a4, 3(a1)
	subw	a3, a3, a4
	sh	a3, 118(a0)
	lbu	a3, 4(a2)
	lbu	a4, 4(a1)
	subw	a3, a3, a4
	sh	a3, 120(a0)
	lbu	a3, 5(a2)
	lbu	a4, 5(a1)
	subw	a3, a3, a4
	sh	a3, 122(a0)
	lbu	a3, 6(a2)
	lbu	a4, 6(a1)
	subw	a3, a3, a4
	sh	a3, 124(a0)
	lbu	a2, 7(a2)
	lbu	a1, 7(a1)
	subw	a2, a2, a1
	sh	a2, 126(a0)
	call	fdct
	lw	a0, %lo(block_count)(s5)
	addiw	s11, s11, 1
	addi	s1, s1, 4
	bge	s11, a0, .LBB0_8
.LBB0_14:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	a2, s11, 1
	bltu	s7, s11, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=3
	lw	a4, %lo(pict_struct)(s8)
	slli	a3, a2, 3
	bne	a4, s7, .LBB0_25
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=3
	lw	a1, 8(s9)
	beqz	a1, .LBB0_25
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=3
	lui	a1, %hi(width)
	lw	a1, %lo(width)(a1)
	or	a3, a3, s10
	srliw	a4, s11, 1
	or	a4, a4, s4
	j	.LBB0_22
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=3
	lui	a1, %hi(chroma_format)
	lw	a1, %lo(chroma_format)(a1)
	addi	a3, a1, -3
	snez	a3, a3
	srlw	a3, s10, a3
	lw	a4, %lo(pict_struct)(s8)
	addi	a5, a1, -1
	seqz	a5, a5
	srlw	a5, s4, a5
	andi	a6, s11, 8
	bne	a4, s7, .LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=3
	lw	a7, 8(s9)
	beqz	a7, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=3
	li	a7, 1
	beq	a1, a7, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=3
	add	a3, a3, a6
	lui	a1, %hi(chrom_width)
	lw	a1, %lo(chrom_width)(a1)
	slli	a4, s11, 62
	srli	a4, a4, 63
	or	a4, a5, a4
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=3
	mul	a4, a1, a4
	addw	a3, a3, a4
	slliw	a1, a1, 1
	j	.LBB0_13
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=3
	lui	a1, %hi(chrom_width2)
	lw	a1, %lo(chrom_width2)(a1)
	add	a3, a3, a6
	andi	a6, s1, 8
	add	a5, a5, a6
	mul	a5, a1, a5
	addw	a3, a3, a5
	li	a5, 2
	bne	a4, a5, .LBB0_13
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=3
	lui	a4, %hi(chrom_width)
	lw	a4, %lo(chrom_width)(a4)
	j	.LBB0_12
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=3
	lui	a1, %hi(width2)
	lw	a1, %lo(width2)(a1)
	or	a3, a3, s10
	andi	a5, s1, 8
	or	a5, a5, s4
	mul	a5, a1, a5
	addw	a3, a3, a5
	li	a5, 2
	bne	a4, a5, .LBB0_13
# %bb.26:                               #   in Loop: Header=BB0_14 Depth=3
	lui	a4, %hi(width)
	lw	a4, %lo(width)(a4)
	j	.LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_5 Depth=1
	li	a2, 16
	mv	a0, a1
	blt	a2, a1, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_5 Depth=1
	li	a0, 16
.LBB0_29:                               #   in Loop: Header=BB0_5 Depth=1
	addi	a0, a0, -1
	srliw	a0, a0, 4
	add	a0, s6, a0
	addi	s6, a0, 1
	j	.LBB0_4
.LBB0_30:
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
.Lfunc_end0:
	.size	transform, .Lfunc_end0-transform
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	itransform                      # -- Begin function itransform
	.p2align	2
	.type	itransform,@function
itransform:                             # @itransform
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
	lui	a4, %hi(height2)
	lw	a4, %lo(height2)(a4)
	sd	a2, 8(sp)                       # 8-byte Folded Spill
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	blez	a4, .LBB1_31
# %bb.1:
	lui	a0, %hi(width)
	lw	a1, %lo(width)(a0)
	blez	a1, .LBB1_31
# %bb.2:                                # %.preheader
	mv	s0, a3
	li	s4, 0
	li	s5, 0
	addi	s6, a3, 128
	lui	s7, %hi(block_count)
	li	s9, 3
	lui	s8, %hi(clp)
	j	.LBB1_5
.LBB1_3:                                #   in Loop: Header=BB1_5 Depth=1
	lui	a0, %hi(height2)
	lw	a4, %lo(height2)(a0)
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=1
	addiw	s5, s5, 16
	bge	s5, a4, .LBB1_31
.LBB1_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_25 Depth 4
	blez	a1, .LBB1_4
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	lw	a0, %lo(block_count)(s7)
	blez	a0, .LBB1_28
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=1
	li	s11, 0
	sext.w	s4, s4
	j	.LBB1_9
.LBB1_8:                                #   in Loop: Header=BB1_9 Depth=2
	addiw	s11, s11, 16
	addi	s4, s4, 1
	bge	s11, a1, .LBB1_3
.LBB1_9:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_25 Depth 4
	blez	a0, .LBB1_8
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=2
	li	s1, 0
	li	a1, 96
	mul	a1, s4, a1
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	add	a1, a2, a1
	sd	a1, 16(sp)                      # 8-byte Folded Spill
.LBB1_11:                               #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_25 Depth 4
	andi	a1, s1, 1
	bltu	s9, s1, .LBB1_15
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=3
	lui	a2, %hi(pict_struct)
	lw	a2, %lo(pict_struct)(a2)
	slli	a3, a1, 3
	bne	a2, s9, .LBB1_21
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=3
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	lw	a4, 8(a4)
	beqz	a4, .LBB1_21
# %bb.14:                               #   in Loop: Header=BB1_11 Depth=3
	lui	a2, %hi(width)
	lw	a2, %lo(width)(a2)
	or	a3, a3, s11
	srliw	a4, s1, 1
	or	a4, a4, s5
	mul	a4, a2, a4
	addw	s2, a3, a4
	slliw	s10, a2, 1
	j	.LBB1_24
.LBB1_15:                               #   in Loop: Header=BB1_11 Depth=3
	lui	a2, %hi(chroma_format)
	lw	a5, %lo(chroma_format)(a2)
	addi	a2, a5, -3
	snez	a2, a2
	srlw	a4, s11, a2
	lui	a2, %hi(pict_struct)
	lw	a2, %lo(pict_struct)(a2)
	addi	a3, a5, -1
	seqz	a3, a3
	srlw	a3, s5, a3
	andi	a6, s1, 8
	bne	a2, s9, .LBB1_19
# %bb.16:                               #   in Loop: Header=BB1_11 Depth=3
	ld	a7, 16(sp)                      # 8-byte Folded Reload
	lw	a7, 8(a7)
	beqz	a7, .LBB1_19
# %bb.17:                               #   in Loop: Header=BB1_11 Depth=3
	li	a7, 1
	beq	a5, a7, .LBB1_19
# %bb.18:                               #   in Loop: Header=BB1_11 Depth=3
	add	a4, a4, a6
	lui	a2, %hi(chrom_width)
	lw	a2, %lo(chrom_width)(a2)
	slli	a5, s1, 62
	srli	a5, a5, 63
	or	a3, a3, a5
	mul	a3, a2, a3
	addw	s2, a4, a3
	slliw	s10, a2, 1
	j	.LBB1_24
.LBB1_19:                               #   in Loop: Header=BB1_11 Depth=3
	add	a4, a4, a6
	lui	a5, %hi(chrom_width2)
	lw	s10, %lo(chrom_width2)(a5)
	slli	a5, s1, 2
	andi	a5, a5, 8
	add	a3, a3, a5
	mul	a3, s10, a3
	addw	s2, a4, a3
	li	a3, 2
	bne	a2, a3, .LBB1_24
# %bb.20:                               #   in Loop: Header=BB1_11 Depth=3
	lui	a2, %hi(chrom_width)
	lw	a2, %lo(chrom_width)(a2)
	j	.LBB1_23
.LBB1_21:                               #   in Loop: Header=BB1_11 Depth=3
	or	a3, a3, s11
	lui	a4, %hi(width2)
	lw	s10, %lo(width2)(a4)
	slli	a4, s1, 2
	andi	a4, a4, 8
	or	a4, a4, s5
	mul	a4, s10, a4
	addw	s2, a3, a4
	li	a3, 2
	bne	a2, a3, .LBB1_24
# %bb.22:                               #   in Loop: Header=BB1_11 Depth=3
	lui	a2, %hi(width)
	lw	a2, %lo(width)(a2)
.LBB1_23:                               #   in Loop: Header=BB1_11 Depth=3
	addw	s2, a2, s2
.LBB1_24:                               #   in Loop: Header=BB1_11 Depth=3
	sltiu	a2, s1, 4
	addi	a1, a1, 1
	addi	a2, a2, -1
	and	s3, a2, a1
	mul	a0, a0, s4
	addw	a0, a0, s1
	slli	a0, a0, 7
	add	a0, s0, a0
	call	idct
	slli	s3, s3, 3
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	add	a0, a0, s3
	lw	a1, %lo(block_count)(s7)
	ld	a2, 0(a0)
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	add	s3, a0, s3
	ld	a3, 0(s3)
	mul	a0, a1, s4
	addw	a0, a0, s1
	slli	a4, a0, 7
	add	a0, s0, a4
	add	a1, a3, s2
	addi	a1, a1, 3
	add	a2, a2, s2
	addi	a2, a2, 3
	add	a3, s6, a4
.LBB1_25:                               #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld	a4, %lo(clp)(s8)
	lh	a5, 0(a0)
	lbu	a6, -3(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, -3(a1)
	ld	a4, %lo(clp)(s8)
	lh	a5, 2(a0)
	lbu	a6, -2(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, -2(a1)
	ld	a4, %lo(clp)(s8)
	lh	a5, 4(a0)
	lbu	a6, -1(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, -1(a1)
	ld	a4, %lo(clp)(s8)
	lh	a5, 6(a0)
	lbu	a6, 0(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 0(a1)
	ld	a4, %lo(clp)(s8)
	lh	a5, 8(a0)
	lbu	a6, 1(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 1(a1)
	ld	a4, %lo(clp)(s8)
	lh	a5, 10(a0)
	lbu	a6, 2(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 2(a1)
	ld	a4, %lo(clp)(s8)
	lh	a5, 12(a0)
	lbu	a6, 3(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 3(a1)
	ld	a4, %lo(clp)(s8)
	lh	a5, 14(a0)
	lbu	a6, 4(a2)
	add	a4, a4, a5
	add	a4, a4, a6
	lbu	a4, 0(a4)
	sb	a4, 4(a1)
	add	a1, a1, s10
	addi	a0, a0, 16
	add	a2, a2, s10
	bne	a0, a3, .LBB1_25
# %bb.26:                               #   in Loop: Header=BB1_11 Depth=3
	lw	a0, %lo(block_count)(s7)
	addiw	s1, s1, 1
	blt	s1, a0, .LBB1_11
# %bb.27:                               #   in Loop: Header=BB1_9 Depth=2
	lui	a1, %hi(width)
	lw	a1, %lo(width)(a1)
	j	.LBB1_8
.LBB1_28:                               #   in Loop: Header=BB1_5 Depth=1
	li	a2, 16
	mv	a0, a1
	blt	a2, a1, .LBB1_30
# %bb.29:                               #   in Loop: Header=BB1_5 Depth=1
	li	a0, 16
.LBB1_30:                               #   in Loop: Header=BB1_5 Depth=1
	addi	a0, a0, -1
	srliw	a0, a0, 4
	add	a0, s4, a0
	addi	s4, a0, 1
	j	.LBB1_4
.LBB1_31:
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
.Lfunc_end1:
	.size	itransform, .Lfunc_end1-itransform
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function dct_type_estimation
.LCPI2_0:
	.quad	0x3f80000000000000              # double 0.0078125
.LCPI2_1:
	.quad	0xbf80000000000000              # double -0.0078125
.LCPI2_2:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	dct_type_estimation
	.p2align	2
	.type	dct_type_estimation,@function
dct_type_estimation:                    # @dct_type_estimation
# %bb.0:
	lui	a3, %hi(height2)
	lw	a4, %lo(height2)(a3)
	blez	a4, .LBB2_22
# %bb.1:
	lui	a3, %hi(width)
	lw	a3, %lo(width)(a3)
	blez	a3, .LBB2_22
# %bb.2:                                # %.preheader1
	addi	sp, sp, -672
	sd	ra, 664(sp)                     # 8-byte Folded Spill
	sd	s0, 656(sp)                     # 8-byte Folded Spill
	sd	s1, 648(sp)                     # 8-byte Folded Spill
	sd	s2, 640(sp)                     # 8-byte Folded Spill
	sd	s3, 632(sp)                     # 8-byte Folded Spill
	sd	s4, 624(sp)                     # 8-byte Folded Spill
	sd	s5, 616(sp)                     # 8-byte Folded Spill
	sd	s6, 608(sp)                     # 8-byte Folded Spill
	sd	s7, 600(sp)                     # 8-byte Folded Spill
	sd	s8, 592(sp)                     # 8-byte Folded Spill
	sd	s9, 584(sp)                     # 8-byte Folded Spill
	sd	s10, 576(sp)                    # 8-byte Folded Spill
	sd	s11, 568(sp)                    # 8-byte Folded Spill
	fsd	fs0, 560(sp)                    # 8-byte Folded Spill
	fsd	fs1, 552(sp)                    # 8-byte Folded Spill
	fsd	fs2, 544(sp)                    # 8-byte Folded Spill
	fsd	fs3, 536(sp)                    # 8-byte Folded Spill
	li	s0, 0
	li	s1, 0
	addi	t5, sp, 296
	addi	t6, sp, 40
	addi	s4, sp, 552
	addi	s5, sp, 280
	lui	s6, %hi(frame_pred_dct)
	regsw_c	x1, 0x0(x16)		# 100000000100000000000
	lui	x1, %hi(pict_struct)
	li	s8, 96
	lui	s9, %hi(width)
	lui	x2, %hi(height2)
	lui	a5, %hi(.LCPI2_0)
	fld	fs0, %lo(.LCPI2_0)(a5)
	lui	a5, %hi(.LCPI2_1)
	fld	fs1, %lo(.LCPI2_1)(a5)
	lui	a5, %hi(.LCPI2_2)
	fld	fs2, %lo(.LCPI2_2)(a5)
	regsw_c	x8, 0x0(x16)		# 100000100000000000000
	li	x3, 3
	fmv.d.x	fs3, zero
	li	x4, 1
	j	.LBB2_5
.LBB2_3:                                #   in Loop: Header=BB2_5 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	lw	a4, %lo(height2)(x2)
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	addiw	s1, s1, 16
	bge	s1, a4, .LBB2_21
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
                                        #       Child Loop BB2_12 Depth 3
                                        #       Child Loop BB2_14 Depth 3
	blez	a3, .LBB2_4
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	li	s10, 0
	sext.w	s0, s0
	j	.LBB2_9
.LBB2_7:                                #   in Loop: Header=BB2_9 Depth=2
	add	s2, a2, s2
.LBB2_8:                                #   in Loop: Header=BB2_9 Depth=2
	sw	zero, 8(s2)
	lw	a3, %lo(width)(s9)
	addiw	s10, s10, 16
	addi	s0, s0, 1
	bge	s10, a3, .LBB2_3
.LBB2_9:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
                                        #       Child Loop BB2_14 Depth 3
	lw	a4, %lo(frame_pred_dct)(s6)
	mul	s2, s0, s8
	bnez	a4, .LBB2_7
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=2
	regsw_c	x16, 0x0(x8)		# 010001000000000000000
	lw	a4, %lo(pict_struct)(x1)
	bne	a4, x3, .LBB2_7
# %bb.11:                               #   in Loop: Header=BB2_9 Depth=2
	mul	a4, s1, a3
	addw	a4, s10, a4
	slli	a5, a3, 1
	mv	a6, t6
	mv	a7, t5
.LBB2_12:                               #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	t0, a1, a4
	lbu	t0, 0(t0)
	add	t1, a0, a4
	lbu	t1, 0(t1)
	add	t2, a4, a3
	add	t3, a1, t2
	lbu	t3, 0(t3)
	add	t2, a0, t2
	lbu	t2, 0(t2)
	subw	t0, t0, t1
	sh	t0, -16(a7)
	subw	t0, t3, t2
	addi	t1, a4, 1
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, -16(a6)
	subw	t0, t2, t3
	sh	t0, -14(a7)
	subw	t0, t4, t1
	addi	t1, a4, 2
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, -14(a6)
	subw	t0, t2, t3
	sh	t0, -12(a7)
	subw	t0, t4, t1
	addi	t1, a4, 3
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, -12(a6)
	subw	t0, t2, t3
	sh	t0, -10(a7)
	subw	t0, t4, t1
	addi	t1, a4, 4
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, -10(a6)
	subw	t0, t2, t3
	sh	t0, -8(a7)
	subw	t0, t4, t1
	addi	t1, a4, 5
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, -8(a6)
	subw	t0, t2, t3
	sh	t0, -6(a7)
	subw	t0, t4, t1
	addi	t1, a4, 6
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, -6(a6)
	subw	t0, t2, t3
	sh	t0, -4(a7)
	subw	t0, t4, t1
	addi	t1, a4, 7
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, -4(a6)
	subw	t0, t2, t3
	sh	t0, -2(a7)
	subw	t0, t4, t1
	addi	t1, a4, 8
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, -2(a6)
	subw	t0, t2, t3
	sh	t0, 0(a7)
	subw	t0, t4, t1
	addi	t1, a4, 9
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, 0(a6)
	subw	t0, t2, t3
	sh	t0, 2(a7)
	subw	t0, t4, t1
	addi	t1, a4, 10
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, 2(a6)
	subw	t0, t2, t3
	sh	t0, 4(a7)
	subw	t0, t4, t1
	addi	t1, a4, 11
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, 4(a6)
	subw	t0, t2, t3
	sh	t0, 6(a7)
	subw	t0, t4, t1
	addi	t1, a4, 12
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, 6(a6)
	subw	t0, t2, t3
	sh	t0, 8(a7)
	subw	t0, t4, t1
	addi	t1, a4, 13
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, 8(a6)
	subw	t0, t2, t3
	sh	t0, 10(a7)
	subw	t0, t4, t1
	addi	t1, a4, 14
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, 10(a6)
	subw	t0, t2, t3
	sh	t0, 12(a7)
	subw	t0, t4, t1
	addi	t1, a4, 15
	add	t2, a1, t1
	lbu	t2, 0(t2)
	add	t3, a0, t1
	lbu	t3, 0(t3)
	add	t1, t1, a3
	add	t4, a1, t1
	lbu	t4, 0(t4)
	add	t1, a0, t1
	lbu	t1, 0(t1)
	sh	t0, 12(a6)
	subw	t0, t2, t3
	sh	t0, 14(a7)
	subw	t0, t4, t1
	sh	t0, 14(a6)
	addw	a4, a4, a5
	addi	a7, a7, 32
	addi	a6, a6, 32
	bne	a7, s4, .LBB2_12
# %bb.13:                               # %.preheader
                                        #   in Loop: Header=BB2_9 Depth=2
	li	s3, 0
	li	a3, 0
	li	a4, 0
	li	s7, 0
	li	s11, 0
	addi	a5, sp, 24
	addi	a6, sp, 280
.LBB2_14:                               #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lh	a7, 0(a6)
	lh	t0, 0(a5)
	add	s11, s11, a7
	mul	t1, a7, a7
	add	a4, t1, a4
	add	s7, s7, t0
	mul	t1, t0, t0
	add	a3, t1, a3
	mul	a7, t0, a7
	add	s3, a7, s3
	addi	a5, a5, 2
	addi	a6, a6, 2
	bne	a5, s5, .LBB2_14
# %bb.15:                               #   in Loop: Header=BB2_9 Depth=2
	fcvt.d.wu	fa5, a4
	mul	a4, s11, s11
	fcvt.d.wu	fa4, a4
	fmul.d	fa4, fa4, fs0
	fsub.d	fa5, fa5, fa4
	fcvt.d.wu	fa4, a3
	mul	a3, s7, s7
	fcvt.d.wu	fa3, a3
	fmul.d	fa3, fa3, fs0
	fsub.d	fa4, fa4, fa3
	fmul.d	fa5, fa5, fa4
	flt.d	a3, fs3, fa5
	beqz	a3, .LBB2_18
# %bb.16:                               #   in Loop: Header=BB2_9 Depth=2
	fsqrt.d	fa0, fa5
	feq.d	a3, fa0, fa0
	beqz	a3, .LBB2_20
.LBB2_17:                               # %.split
                                        #   in Loop: Header=BB2_9 Depth=2
	fcvt.d.w	fa5, s3
	mul	a3, s7, s11
	fcvt.d.w	fa4, a3
	fmul.d	fa4, fa4, fs1
	fadd.d	fa5, fa5, fa4
	fdiv.d	fa5, fa5, fa0
	flt.d	a3, fs2, fa5
	add	s2, a2, s2
	bnez	a3, .LBB2_8
	j	.LBB2_19
.LBB2_18:                               #   in Loop: Header=BB2_9 Depth=2
	add	s2, a2, s2
.LBB2_19:                               #   in Loop: Header=BB2_9 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sw	x4, 8(s2)
	lw	a3, %lo(width)(s9)
	addiw	s10, s10, 16
	addi	s0, s0, 1
	blt	s10, a3, .LBB2_9
	j	.LBB2_3
.LBB2_20:                               # %call.sqrt
                                        #   in Loop: Header=BB2_9 Depth=2
	fmv.d	fa0, fa5
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	call	sqrt
	regsw_c	x9, 0x0(x18)		# 100100100100000000000
	li	x4, 1
	li	x3, 3
	lui	x2, %hi(height2)
	lui	x1, %hi(pict_struct)
	addi	t6, sp, 40
	addi	t5, sp, 296
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	j	.LBB2_17
.LBB2_21:
	ld	ra, 664(sp)                     # 8-byte Folded Reload
	ld	s0, 656(sp)                     # 8-byte Folded Reload
	ld	s1, 648(sp)                     # 8-byte Folded Reload
	ld	s2, 640(sp)                     # 8-byte Folded Reload
	ld	s3, 632(sp)                     # 8-byte Folded Reload
	ld	s4, 624(sp)                     # 8-byte Folded Reload
	ld	s5, 616(sp)                     # 8-byte Folded Reload
	ld	s6, 608(sp)                     # 8-byte Folded Reload
	ld	s7, 600(sp)                     # 8-byte Folded Reload
	ld	s8, 592(sp)                     # 8-byte Folded Reload
	ld	s9, 584(sp)                     # 8-byte Folded Reload
	ld	s10, 576(sp)                    # 8-byte Folded Reload
	ld	s11, 568(sp)                    # 8-byte Folded Reload
	fld	fs0, 560(sp)                    # 8-byte Folded Reload
	fld	fs1, 552(sp)                    # 8-byte Folded Reload
	fld	fs2, 544(sp)                    # 8-byte Folded Reload
	fld	fs3, 536(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 672
.LBB2_22:
	ret
.Lfunc_end2:
	.size	dct_type_estimation, .Lfunc_end2-dct_type_estimation
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
