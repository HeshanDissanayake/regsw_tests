	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"predict.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	predict                         # -- Begin function predict
	.p2align	2
	.type	predict,@function
predict:                                # @predict
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
	lui	a5, %hi(height2)
	lw	a5, %lo(height2)(a5)
	sd	a4, 88(sp)                      # 8-byte Folded Spill
	sd	a3, 56(sp)                      # 8-byte Folded Spill
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	blez	a5, .LBB0_61
# %bb.1:
	mv	s2, a2
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB0_3
# %bb.2:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	sd	a0, 8(sp)                       # 8-byte Folded Spill
.LBB0_3:
	lui	a0, %hi(width)
	lw	s10, %lo(width)(a0)
	blez	s10, .LBB0_61
# %bb.4:                                # %.preheader
	li	s3, 0
	sd	zero, 96(sp)                    # 8-byte Folded Spill
	lui	s11, %hi(pict_struct)
	lui	s0, %hi(width2)
	lui	s9, %hi(chrom_width2)
	j	.LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	lui	a0, %hi(height2)
	lw	a5, %lo(height2)(a0)
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	addiw	a0, a0, 16
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	bge	a0, a5, .LBB0_61
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	blez	s10, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	li	s4, 0
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	ori	a1, a0, 8
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	srliw	a0, a0, 1
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	sext.w	s3, s3
	j	.LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_12 Depth=2
	lw	a1, 60(s8)
	lw	t3, 36(s8)
	lw	t2, 32(s8)
	slliw	s1, s10, 1
	srai	t3, t3, 1
	sext.w	s5, s4
	li	a5, 8
	ld	s6, 72(sp)                      # 8-byte Folded Reload
	mv	a0, s6
	mv	a2, s2
	li	a3, 0
	mv	a4, s1
	mv	a6, s5
	ld	s7, 64(sp)                      # 8-byte Folded Reload
	mv	a7, s7
	mv	t4, s11
	call	pred
	lw	a1, 68(s8)
	lw	t3, 52(s8)
	lw	t2, 48(s8)
	srai	t3, t3, 1
	li	a3, 1
	li	a5, 8
	mv	a0, s6
	mv	a2, s2
	mv	a4, s1
	mv	a6, s5
	mv	a7, s7
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=2
	mv	t4, s11
	call	pred
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(width)
	lw	s10, %lo(width)(a0)
	addiw	a0, s4, 16
	addi	s4, s4, 16
	addi	s3, s3, 1
	lui	s11, %hi(pict_struct)
	bge	a0, s10, .LBB0_5
.LBB0_12:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	li	a0, 96
	mul	s8, s3, a0
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	add	s8, a0, s8
	lwu	s6, 0(s8)
	lw	s5, %lo(pict_struct)(s11)
	andi	a0, s6, 1
	bnez	a0, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(pict_type)
	lw	a0, %lo(pict_type)(a0)
	lw	s1, 4(s8)
	andi	a2, s6, 8
	li	a1, 2
	beq	a0, a1, .LBB0_24
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	bnez	a2, .LBB0_24
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=2
	li	s11, 0
	andi	a0, s6, 4
	beqz	a0, .LBB0_11
	j	.LBB0_50
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, 0(s2)
	addi	s5, s5, -2
	snez	a1, s5
	lw	a2, %lo(width2)(s0)
	addiw	a1, a1, -1
	and	s5, a1, s10
	add	a0, a0, s4
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	mulw	a1, a2, a1
	add	a0, a0, a1
	add	s5, a0, s5
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	s5, s5, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s5
	call	memset
	lw	a0, %lo(width2)(s0)
	add	a0, s5, a0
	li	a1, 128
	li	a2, 16
	call	memset
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	li	s1, 8
	li	s7, 8
	li	a1, 3
	bne	a0, a1, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=2
	li	s7, 16
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=2
	li	a1, 1
	beq	a0, a1, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=2
	li	s1, 16
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=2
	addi	a1, a0, -3
	snez	a1, a1
	srlw	s6, s4, a1
	addi	a0, a0, -1
	lw	a1, %lo(pict_struct)(s11)
	seqz	a0, a0
	ld	a2, 8(s2)
	lui	a3, %hi(chrom_width)
	lw	a3, %lo(chrom_width)(a3)
	addi	a1, a1, -2
	snez	a1, a1
	addi	a1, a1, -1
	and	a1, a1, a3
	lw	a3, %lo(chrom_width2)(s9)
	ld	a4, 96(sp)                      # 8-byte Folded Reload
	srlw	s8, a4, a0
	add	a2, a2, s6
	add	a1, a2, a1
	mulw	s5, a3, s8
	add	s5, a1, s5
	mv	s10, s1
.LBB0_21:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	li	a1, 128
	mv	a0, s5
	mv	a2, s7
	call	memset
	lw	a0, %lo(chrom_width2)(s9)
	addiw	s10, s10, -1
	add	s5, s5, a0
	bnez	s10, .LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a1, %lo(pict_struct)(s11)
	ld	a2, 16(s2)
	lui	a3, %hi(chrom_width)
	lw	a3, %lo(chrom_width)(a3)
	addi	a1, a1, -2
	snez	a1, a1
	addi	a1, a1, -1
	and	a1, a1, a3
	add	a2, a2, s6
	mulw	a0, a0, s8
	add	a0, a2, a0
	add	s5, a0, a1
.LBB0_23:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	li	a1, 128
	mv	a0, s5
	mv	a2, s7
	call	memset
	lw	a0, %lo(chrom_width2)(s9)
	addiw	s1, s1, -1
	add	s5, s5, a0
	bnez	s1, .LBB0_23
	j	.LBB0_11
.LBB0_24:                               #   in Loop: Header=BB0_12 Depth=2
	addi	a1, s8, 72
	li	a3, 3
	bne	s5, a3, .LBB0_30
# %bb.25:                               #   in Loop: Header=BB0_12 Depth=2
	li	a0, 2
	beq	s1, a0, .LBB0_42
# %bb.26:                               #   in Loop: Header=BB0_12 Depth=2
	beqz	a2, .LBB0_42
# %bb.27:                               #   in Loop: Header=BB0_12 Depth=2
	li	a0, 3
	beq	s1, a0, .LBB0_48
# %bb.28:                               #   in Loop: Header=BB0_12 Depth=2
	li	a0, 1
	bne	s1, a0, .LBB0_46
# %bb.29:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a1, 56(s8)
	lw	t3, 28(s8)
	lw	t2, 24(s8)
	slliw	a4, s10, 1
	sd	a4, 32(sp)                      # 8-byte Folded Spill
	srai	t3, t3, 1
	sext.w	a6, s4
	sd	a6, 40(sp)                      # 8-byte Folded Spill
	li	a5, 8
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	mv	a2, s2
	li	a3, 0
	ld	s7, 64(sp)                      # 8-byte Folded Reload
	mv	a7, s7
	li	t4, 0
	call	pred
	lw	a1, 64(s8)
	lw	t3, 44(s8)
	lw	t2, 40(s8)
	srai	t3, t3, 1
	li	a3, 1
	li	a5, 8
	li	s11, 1
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	mv	a2, s2
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	mv	a7, s7
	li	t4, 0
	call	pred
	andi	a0, s6, 4
	beqz	a0, .LBB0_11
	j	.LBB0_50
.LBB0_30:                               #   in Loop: Header=BB0_12 Depth=2
	addi	a0, a0, -2
	seqz	a0, a0
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	snez	a4, a3
	addi	a3, s5, -2
	and	s11, a4, a0
	seqz	s7, a3
	beqz	s11, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a4, 56(s8)
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	bne	a4, s7, .LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, 80(sp)                      # 8-byte Folded Reload
.LBB0_33:                               #   in Loop: Header=BB0_12 Depth=2
	li	a4, 1
	beq	s1, a4, .LBB0_43
# %bb.34:                               #   in Loop: Header=BB0_12 Depth=2
	beqz	a2, .LBB0_43
# %bb.35:                               #   in Loop: Header=BB0_12 Depth=2
	li	a2, 3
	beq	s1, a2, .LBB0_60
# %bb.36:                               #   in Loop: Header=BB0_12 Depth=2
	li	a1, 2
	bne	s1, a1, .LBB0_46
# %bb.37:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a1, 56(s8)
	lw	t2, 24(s8)
	lw	t3, 28(s8)
	slliw	a4, s10, 1
	sext.w	a6, s4
	li	a5, 8
	mv	a2, s2
	mv	a3, s7
	sd	a4, 40(sp)                      # 8-byte Folded Spill
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	li	t4, 0
	call	pred
	lw	a1, 64(s8)
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	beq	a1, s7, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, 72(sp)                      # 8-byte Folded Reload
.LBB0_39:                               #   in Loop: Header=BB0_12 Depth=2
	bnez	s11, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, 80(sp)                      # 8-byte Folded Reload
.LBB0_41:                               #   in Loop: Header=BB0_12 Depth=2
	lw	t2, 40(s8)
	lw	t3, 44(s8)
	li	a5, 8
	mv	a2, s2
	mv	a3, s7
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	ld	a7, 48(sp)                      # 8-byte Folded Reload
	j	.LBB0_45
.LBB0_42:                               #   in Loop: Header=BB0_12 Depth=2
	lw	t2, 24(s8)
	lw	t3, 28(s8)
	sext.w	a6, s4
	li	a5, 16
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	li	a1, 0
	mv	a2, s2
	li	a3, 0
	mv	a4, s10
	j	.LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a1, 56(s8)
	lw	t2, 24(s8)
	lw	t3, 28(s8)
	slliw	a4, s10, 1
	sext.w	a6, s4
	li	a5, 16
	mv	a2, s2
	mv	a3, s7
.LBB0_44:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a7, 96(sp)                      # 8-byte Folded Reload
.LBB0_45:                               #   in Loop: Header=BB0_12 Depth=2
	li	t4, 0
	call	pred
	li	s11, 1
	andi	a0, s6, 4
	beqz	a0, .LBB0_11
	j	.LBB0_50
.LBB0_46:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	li	s11, 1
	bnez	a0, .LBB0_49
# %bb.47:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	li	a1, 20
	li	a2, 1
	li	s11, 1
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	fwrite
	andi	a0, s6, 4
	beqz	a0, .LBB0_11
	j	.LBB0_50
.LBB0_48:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a0, 28(s8)
	lw	s11, 24(s8)
	srai	s7, a0, 1
	addi	a0, sp, 104
	mv	a2, s11
	mv	a3, s7
	call	calc_DMV
	slliw	a4, s10, 1
	sd	a4, 40(sp)                      # 8-byte Folded Spill
	sext.w	a6, s4
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	li	a5, 8
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	li	a1, 0
	mv	a2, s2
	li	a3, 0
	ld	a7, 64(sp)                      # 8-byte Folded Reload
	mv	t2, s11
	mv	t3, s7
	li	t4, 0
	call	pred
	lw	t3, 28(s8)
	lw	t2, 24(s8)
	srai	t3, t3, 1
	li	a1, 1
	li	a3, 1
	li	a5, 8
	li	s11, 1
	ld	s7, 80(sp)                      # 8-byte Folded Reload
	mv	a0, s7
	mv	a2, s2
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	ld	a7, 64(sp)                      # 8-byte Folded Reload
	li	t4, 0
	call	pred
	lw	t2, 104(sp)
	lw	t3, 108(sp)
	li	a1, 1
	li	a5, 8
	li	t4, 1
	mv	a0, s7
	mv	a2, s2
	li	a3, 0
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	mv	a6, s7
	ld	a7, 64(sp)                      # 8-byte Folded Reload
	call	pred
	lw	t2, 112(sp)
	lw	t3, 116(sp)
	li	a3, 1
	li	a5, 8
	li	t4, 1
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	li	a1, 0
	mv	a2, s2
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	mv	a6, s7
	ld	a7, 64(sp)                      # 8-byte Folded Reload
	call	pred
.LBB0_49:                               #   in Loop: Header=BB0_12 Depth=2
	andi	a0, s6, 4
	beqz	a0, .LBB0_11
.LBB0_50:                               #   in Loop: Header=BB0_12 Depth=2
	li	a0, 3
	bne	s5, a0, .LBB0_53
# %bb.51:                               #   in Loop: Header=BB0_12 Depth=2
	li	a0, 2
	bne	s1, a0, .LBB0_9
# %bb.52:                               #   in Loop: Header=BB0_12 Depth=2
	lw	t2, 32(s8)
	lw	t3, 36(s8)
	sext.w	a6, s4
	li	a5, 16
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	li	a1, 0
	mv	a2, s2
	li	a3, 0
	mv	a4, s10
	j	.LBB0_56
.LBB0_53:                               #   in Loop: Header=BB0_12 Depth=2
	addi	s5, s5, -2
	seqz	a3, s5
	li	a0, 2
	beq	s1, a0, .LBB0_57
# %bb.54:                               #   in Loop: Header=BB0_12 Depth=2
	li	a0, 1
	bne	s1, a0, .LBB0_58
# %bb.55:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a1, 60(s8)
	lw	t2, 32(s8)
	lw	t3, 36(s8)
	slliw	a4, s10, 1
	sext.w	a6, s4
	li	a5, 16
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	mv	a2, s2
.LBB0_56:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	j	.LBB0_10
.LBB0_57:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a1, 60(s8)
	lw	t2, 32(s8)
	lw	t3, 36(s8)
	slliw	s1, s10, 1
	sext.w	s7, s4
	li	a5, 8
	ld	s6, 72(sp)                      # 8-byte Folded Reload
	mv	a0, s6
	mv	a2, s2
	mv	s5, a3
	mv	a4, s1
	mv	a6, s7
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	mv	t4, s11
	call	pred
	lw	a1, 68(s8)
	lw	t2, 48(s8)
	lw	t3, 52(s8)
	li	a5, 8
	mv	a0, s6
	mv	a2, s2
	mv	a3, s5
	mv	a4, s1
	mv	a6, s7
	ld	a7, 48(sp)                      # 8-byte Folded Reload
	j	.LBB0_10
.LBB0_58:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	bnez	a0, .LBB0_11
# %bb.59:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	li	a1, 20
	li	a2, 1
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	fwrite
	j	.LBB0_11
.LBB0_60:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a2, 24(s8)
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	lw	s11, 28(s8)
	snez	a0, a3
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	addi	a0, sp, 104
	mv	a3, s11
	call	calc_DMV
	slliw	a4, s10, 1
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	sext.w	a6, s4
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	li	a5, 16
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	mv	a1, s7
	mv	a2, s2
	mv	a3, s7
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	ld	t2, 16(sp)                      # 8-byte Folded Reload
	mv	t3, s11
	li	t4, 0
	call	pred
	lw	t2, 104(sp)
	lw	t3, 108(sp)
	li	a5, 16
	li	t4, 1
	li	s11, 1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s7
	ld	a4, 24(sp)                      # 8-byte Folded Reload
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	call	pred
	andi	a0, s6, 4
	beqz	a0, .LBB0_11
	j	.LBB0_50
.LBB0_61:
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
.Lfunc_end0:
	.size	predict, .Lfunc_end0-predict
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function pred
	.type	pred,@function
pred:                                   # @pred
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
	sd	t4, 0(sp)                       # 8-byte Folded Spill
	li	t0, 0
	li	t1, 16
	seqz	a3, a3
	seqz	a1, a1
	addi	t4, a1, -1
	addi	a3, a3, -1
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi	t0, t0, 1
	li	a1, 3
	beq	t0, a1, .LBB1_64
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
                                        #       Child Loop BB1_31 Depth 3
                                        #     Child Loop BB1_61 Depth 2
                                        #       Child Loop BB1_62 Depth 3
                                        #     Child Loop BB1_43 Depth 2
                                        #       Child Loop BB1_44 Depth 3
                                        #     Child Loop BB1_55 Depth 2
                                        #       Child Loop BB1_56 Depth 3
                                        #     Child Loop BB1_21 Depth 2
                                        #       Child Loop BB1_22 Depth 3
                                        #     Child Loop BB1_49 Depth 2
                                        #       Child Loop BB1_50 Depth 3
                                        #     Child Loop BB1_12 Depth 2
                                        #       Child Loop BB1_13 Depth 3
                                        #     Child Loop BB1_36 Depth 2
                                        #       Child Loop BB1_37 Depth 3
	li	a1, 1
	bne	t0, a1, .LBB1_7
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	lui	a1, %hi(chroma_format)
	lw	s1, %lo(chroma_format)(a1)
	li	a1, 3
	beq	s1, a1, .LBB1_7
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	li	a1, 1
	bne	s1, a1, .LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	sraiw	a5, a5, 1
	sraiw	a7, a7, 1
	srliw	s1, t3, 31
	add	t3, t3, s1
	sraiw	t3, t3, 1
.LBB1_6:                                #   in Loop: Header=BB1_2 Depth=1
	sraiw	t1, t1, 1
	sraiw	a6, a6, 1
	srliw	s1, t2, 31
	add	t2, t2, s1
	sraiw	t2, t2, 1
	sraiw	a4, a4, 1
.LBB1_7:                                #   in Loop: Header=BB1_2 Depth=1
	slli	s1, t0, 3
	add	s2, a0, s1
	ld	s3, 0(s2)
	sraiw	s4, a4, 1
	and	s5, t4, s4
	add	s1, a2, s1
	ld	s2, 0(s1)
	and	s7, a3, s4
	sraiw	s1, t2, 1
	sraiw	s4, t3, 1
	add	s4, s4, a7
	mulw	s8, s4, a4
	add	s4, s5, s8
	addw	s6, s1, a6
	add	s4, s4, s6
	add	s4, s3, s4
	mulw	s9, a4, a7
	add	s1, s7, s9
	add	s1, s1, a6
	or	s10, t3, t2
	andi	s10, s10, 1
	add	s1, s2, s1
	bnez	s10, .LBB1_15
# %bb.8:                                #   in Loop: Header=BB1_2 Depth=1
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	beqz	a1, .LBB1_33
# %bb.9:                                #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.10:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.11:                               #   in Loop: Header=BB1_2 Depth=1
	li	s2, 0
	li	s7, 0
	add	s5, s5, s8
	add	s6, s6, t1
	add	s5, s5, s6
.LBB1_12:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_13 Depth 3
	mul	s6, a4, s2
	add	s6, s5, s6
	add	s6, s3, s6
	mv	s8, s1
	mv	s9, s4
.LBB1_13:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	s10, 0(s8)
	lbu	s11, 0(s9)
	add	s10, s10, s11
	addi	s10, s10, 1
	srli	s10, s10, 1
	sb	s10, 0(s8)
	addi	s9, s9, 1
	addi	s8, s8, 1
	bne	s9, s6, .LBB1_13
# %bb.14:                               #   in Loop: Header=BB1_12 Depth=2
	add	s4, s4, a4
	add	s1, s1, a4
	addiw	s7, s7, 1
	addi	s2, s2, 1
	bne	s7, a5, .LBB1_12
	j	.LBB1_1
.LBB1_15:                               #   in Loop: Header=BB1_2 Depth=1
	andi	s11, t2, 1
	andi	s10, t3, 1
	bnez	s11, .LBB1_24
# %bb.16:                               #   in Loop: Header=BB1_2 Depth=1
	beqz	s10, .LBB1_24
# %bb.17:                               #   in Loop: Header=BB1_2 Depth=1
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	beqz	a1, .LBB1_46
# %bb.18:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.19:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.20:                               #   in Loop: Header=BB1_2 Depth=1
	li	s2, 0
	li	s7, 0
	add	s5, s5, a4
	add	s5, s5, s8
	add	s6, s5, s6
	add	s5, s3, s6
	add	s6, s6, t1
.LBB1_21:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_22 Depth 3
	mul	s8, a4, s2
	add	s8, s6, s8
	add	s8, s3, s8
	mv	s9, s1
	mv	s10, s4
	mv	s11, s5
.LBB1_22:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	ra, 0(s10)
	lbu	t6, 0(s11)
	lbu	t5, 0(s9)
	add	t6, ra, t6
	addi	t6, t6, 1
	srli	t6, t6, 1
	add	t5, t5, t6
	addi	t5, t5, 1
	srli	t5, t5, 1
	sb	t5, 0(s9)
	addi	s11, s11, 1
	addi	s10, s10, 1
	addi	s9, s9, 1
	bne	s11, s8, .LBB1_22
# %bb.23:                               #   in Loop: Header=BB1_21 Depth=2
	add	s4, s4, a4
	add	s1, s1, a4
	addiw	s7, s7, 1
	add	s5, s5, a4
	addi	s2, s2, 1
	bne	s7, a5, .LBB1_21
	j	.LBB1_1
.LBB1_24:                               #   in Loop: Header=BB1_2 Depth=1
	beqz	s11, .LBB1_39
# %bb.25:                               #   in Loop: Header=BB1_2 Depth=1
	bnez	s10, .LBB1_39
# %bb.26:                               #   in Loop: Header=BB1_2 Depth=1
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	beqz	a1, .LBB1_58
# %bb.27:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.28:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.29:                               #   in Loop: Header=BB1_2 Depth=1
	li	s4, 0
	li	s10, 0
	add	s5, s5, s8
	add	s5, s5, s6
	add	s3, s3, s5
	addi	s3, s3, 1
	add	s5, s7, a6
	add	s9, s9, t1
	add	s5, s5, s9
.LBB1_30:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_31 Depth 3
	mul	t5, a4, s4
	add	t5, s5, t5
	add	s6, s2, t5
	mv	s7, s3
	mv	s8, s1
.LBB1_31:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	t5, -1(s7)
	lbu	t6, 0(s7)
	lbu	s9, 0(s8)
	add	t5, t5, t6
	addi	t5, t5, 1
	srli	t5, t5, 1
	add	t5, s9, t5
	addi	t5, t5, 1
	srli	t5, t5, 1
	sb	t5, 0(s8)
	addi	s8, s8, 1
	addi	s7, s7, 1
	bne	s8, s6, .LBB1_31
# %bb.32:                               #   in Loop: Header=BB1_30 Depth=2
	add	s1, s1, a4
	addiw	s10, s10, 1
	add	s3, s3, a4
	addi	s4, s4, 1
	bne	s10, a5, .LBB1_30
	j	.LBB1_1
.LBB1_33:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.34:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.35:                               #   in Loop: Header=BB1_2 Depth=1
	li	s3, 0
	li	s5, 0
	add	s6, s7, a6
	add	s9, s9, t1
	add	s6, s6, s9
.LBB1_36:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_37 Depth 3
	mul	s7, a4, s3
	add	s7, s6, s7
	add	s7, s2, s7
	mv	s8, s4
	mv	s9, s1
.LBB1_37:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	s10, 0(s8)
	sb	s10, 0(s9)
	addi	s9, s9, 1
	addi	s8, s8, 1
	bne	s9, s7, .LBB1_37
# %bb.38:                               #   in Loop: Header=BB1_36 Depth=2
	add	s4, s4, a4
	add	s1, s1, a4
	addiw	s5, s5, 1
	addi	s3, s3, 1
	bne	s5, a5, .LBB1_36
	j	.LBB1_1
.LBB1_39:                               #   in Loop: Header=BB1_2 Depth=1
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	beqz	a1, .LBB1_52
# %bb.40:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.41:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.42:                               #   in Loop: Header=BB1_2 Depth=1
	li	s4, 0
	li	s10, 0
	addi	t5, s3, 1
	add	s5, s5, s8
	add	s5, s5, s6
	add	s3, s5, a4
	add	s3, t5, s3
	add	s5, t5, s5
	add	s6, s7, a6
	add	s9, s9, t1
	add	s6, s6, s9
.LBB1_43:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_44 Depth 3
	mul	t5, a4, s4
	add	t5, s6, t5
	add	s7, s2, t5
	mv	s8, s5
	mv	s9, s3
	mv	s11, s1
.LBB1_44:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	t5, -1(s8)
	lbu	t6, 0(s8)
	lbu	ra, -1(s9)
	lbu	s0, 0(s9)
	lbu	a1, 0(s11)
	add	t5, t5, t6
	add	s0, ra, s0
	add	t5, t5, s0
	addi	t5, t5, 2
	srli	t5, t5, 2
	add	a1, a1, t5
	addi	a1, a1, 1
	srli	a1, a1, 1
	sb	a1, 0(s11)
	addi	s11, s11, 1
	addi	s9, s9, 1
	addi	s8, s8, 1
	bne	s11, s7, .LBB1_44
# %bb.45:                               #   in Loop: Header=BB1_43 Depth=2
	add	s1, s1, a4
	addiw	s10, s10, 1
	add	s3, s3, a4
	add	s5, s5, a4
	addi	s4, s4, 1
	bne	s10, a5, .LBB1_43
	j	.LBB1_1
.LBB1_46:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.47:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.48:                               #   in Loop: Header=BB1_2 Depth=1
	li	s10, 0
	li	s11, 0
	add	s5, s5, a4
	add	s5, s5, s8
	add	s5, s5, s6
	add	s3, s3, s5
	add	s5, s7, a6
	add	s9, s9, t1
	add	s5, s5, s9
.LBB1_49:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_50 Depth 3
	mul	t5, a4, s10
	add	t5, s5, t5
	add	s6, s2, t5
	mv	s7, s4
	mv	s8, s3
	mv	s9, s1
.LBB1_50:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	t5, 0(s7)
	lbu	t6, 0(s8)
	add	t5, t5, t6
	addi	t5, t5, 1
	srli	t5, t5, 1
	sb	t5, 0(s9)
	addi	s9, s9, 1
	addi	s8, s8, 1
	addi	s7, s7, 1
	bne	s9, s6, .LBB1_50
# %bb.51:                               #   in Loop: Header=BB1_49 Depth=2
	add	s4, s4, a4
	add	s1, s1, a4
	addiw	s11, s11, 1
	add	s3, s3, a4
	addi	s10, s10, 1
	bne	s11, a5, .LBB1_49
	j	.LBB1_1
.LBB1_52:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.53:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.54:                               #   in Loop: Header=BB1_2 Depth=1
	li	s4, 0
	li	s10, 0
	addi	a1, s3, 1
	add	s5, s5, s8
	add	s5, s5, s6
	add	s3, a1, s5
	add	s5, s5, a4
	add	s5, a1, s5
	add	s6, s7, a6
	add	s9, s9, t1
	add	s6, s6, s9
.LBB1_55:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_56 Depth 3
	mul	a1, a4, s4
	add	a1, s6, a1
	add	s7, s2, a1
	mv	s8, s5
	mv	s9, s3
	mv	s11, s1
.LBB1_56:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	a1, -1(s9)
	lbu	t5, 0(s9)
	lbu	t6, -1(s8)
	lbu	s0, 0(s8)
	add	a1, a1, t5
	add	t6, t6, s0
	add	a1, a1, t6
	addi	a1, a1, 2
	srli	a1, a1, 2
	sb	a1, 0(s11)
	addi	s11, s11, 1
	addi	s9, s9, 1
	addi	s8, s8, 1
	bne	s11, s7, .LBB1_56
# %bb.57:                               #   in Loop: Header=BB1_55 Depth=2
	add	s1, s1, a4
	addiw	s10, s10, 1
	add	s3, s3, a4
	add	s5, s5, a4
	addi	s4, s4, 1
	bne	s10, a5, .LBB1_55
	j	.LBB1_1
.LBB1_58:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.59:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.60:                               #   in Loop: Header=BB1_2 Depth=1
	li	s4, 0
	li	s10, 0
	add	s5, s5, s8
	add	s5, s5, s6
	add	s3, s3, s5
	addi	s3, s3, 1
	add	s5, s7, a6
	add	s9, s9, t1
	add	s5, s5, s9
.LBB1_61:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_62 Depth 3
	mul	t5, a4, s4
	add	t5, s5, t5
	add	s6, s2, t5
	mv	s7, s3
	mv	s8, s1
.LBB1_62:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	t5, -1(s7)
	lbu	t6, 0(s7)
	add	t5, t5, t6
	addi	t5, t5, 1
	srli	t5, t5, 1
	sb	t5, 0(s8)
	addi	s8, s8, 1
	addi	s7, s7, 1
	bne	s8, s6, .LBB1_62
# %bb.63:                               #   in Loop: Header=BB1_61 Depth=2
	add	s1, s1, a4
	addiw	s10, s10, 1
	add	s3, s3, a4
	addi	s4, s4, 1
	bne	s10, a5, .LBB1_61
	j	.LBB1_1
.LBB1_64:
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
.Lfunc_end1:
	.size	pred, .Lfunc_end1-pred
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function calc_DMV
	.type	calc_DMV,@function
calc_DMV:                               # @calc_DMV
# %bb.0:
	lui	a4, %hi(pict_struct)
	lw	a5, %lo(pict_struct)(a4)
	li	a6, 3
	bne	a5, a6, .LBB2_3
# %bb.1:
	lui	a4, %hi(topfirst)
	lw	a4, %lo(topfirst)(a4)
	beqz	a4, .LBB2_6
# %bb.2:
	lw	a4, 0(a1)
	sgtz	a5, a2
	add	a6, a5, a2
	sraiw	a6, a6, 1
	add	a4, a4, a6
	sw	a4, 0(a0)
	lw	a4, 4(a1)
	sgtz	a6, a3
	add	a7, a6, a3
	sraiw	a7, a7, 1
	add	a4, a7, a4
	addi	a4, a4, -1
	sw	a4, 4(a0)
	slli	a4, a2, 1
	lw	a7, 0(a1)
	add	a2, a4, a2
	add	a2, a2, a5
	sraiw	a2, a2, 1
	add	a2, a7, a2
	sw	a2, 8(a0)
	slli	a2, a3, 1
	lw	a1, 4(a1)
	add	a2, a2, a3
	add	a2, a2, a6
	sraiw	a2, a2, 1
	add	a1, a2, a1
	addi	a1, a1, 1
	sw	a1, 12(a0)
	ret
.LBB2_3:
	lw	a5, 0(a1)
	sgtz	a6, a2
	add	a2, a6, a2
	sraiw	a2, a2, 1
	add	a2, a5, a2
	sw	a2, 0(a0)
	sgtz	a2, a3
	lw	a1, 4(a1)
	lw	a4, %lo(pict_struct)(a4)
	add	a2, a2, a3
	sraiw	a2, a2, 1
	li	a3, 1
	add	a1, a1, a2
	bne	a4, a3, .LBB2_5
# %bb.4:
	addi	a1, a1, -1
	sw	a1, 4(a0)
	ret
.LBB2_5:
	addi	a1, a1, 1
	sw	a1, 4(a0)
	ret
.LBB2_6:
	slli	a4, a2, 1
	add	a4, a4, a2
	lw	a5, 0(a1)
	sgtz	a6, a2
	add	a4, a4, a6
	sraiw	a4, a4, 1
	add	a4, a5, a4
	sw	a4, 0(a0)
	slli	a4, a3, 1
	add	a4, a4, a3
	lw	a5, 4(a1)
	sgtz	a7, a3
	add	a4, a4, a7
	sraiw	a4, a4, 1
	add	a4, a4, a5
	addi	a4, a4, -1
	sw	a4, 4(a0)
	lw	a4, 0(a1)
	add	a2, a6, a2
	sraiw	a2, a2, 1
	add	a2, a4, a2
	sw	a2, 8(a0)
	lw	a1, 4(a1)
	add	a3, a7, a3
	sraiw	a2, a3, 1
	add	a1, a2, a1
	addi	a1, a1, 1
	sw	a1, 12(a0)
	ret
.Lfunc_end2:
	.size	calc_DMV, .Lfunc_end2-calc_DMV
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid motion_type\n"
	.size	.L.str, 21

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
