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
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	blez	a5, .LBB0_62
# %bb.1:
	mv	s11, a4
	mv	s1, a2
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	bnez	a3, .LBB0_3
# %bb.2:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	sd	a0, 8(sp)                       # 8-byte Folded Spill
.LBB0_3:
	lui	a0, %hi(width)
	lw	s9, %lo(width)(a0)
	blez	s9, .LBB0_62
# %bb.4:                                # %.preheader
	li	s2, 0
	sd	zero, 96(sp)                    # 8-byte Folded Spill
	snez	a0, a3
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lui	s8, %hi(width2)
	lui	s0, %hi(chrom_width2)
	sd	s11, 64(sp)                     # 8-byte Folded Spill
	j	.LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	lui	a0, %hi(height2)
	lw	a5, %lo(height2)(a0)
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	addiw	a0, a0, 16
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	bge	a0, a5, .LBB0_62
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	blez	s9, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	li	s3, 0
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	ori	a1, a0, 8
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	srliw	a0, a0, 1
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	sext.w	s2, s2
	j	.LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_12 Depth=2
	lw	a1, 60(s7)
	lw	t3, 36(s7)
	lw	t2, 32(s7)
	slliw	s6, s9, 1
	srai	t3, t3, 1
	sext.w	s4, s3
	li	a5, 8
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	mv	a0, s5
	mv	a2, s1
	li	a3, 0
	mv	a4, s6
	mv	a6, s4
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	mv	a7, s9
	mv	t4, s10
	call	pred
	lw	a1, 68(s7)
	lw	t3, 52(s7)
	lw	t2, 48(s7)
	srai	t3, t3, 1
	li	a3, 1
	li	a5, 8
	mv	a0, s5
	mv	a2, s1
	mv	a4, s6
	mv	a6, s4
	mv	a7, s9
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=2
	mv	t4, s10
	call	pred
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(width)
	lw	s9, %lo(width)(a0)
	addiw	a0, s3, 16
	addi	s3, s3, 16
	addi	s2, s2, 1
	bge	a0, s9, .LBB0_5
.LBB0_12:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	li	a0, 96
	mul	s7, s2, a0
	add	s7, s11, s7
	lwu	s5, 0(s7)
	lui	a0, %hi(pict_struct)
	lw	s4, %lo(pict_struct)(a0)
	andi	a0, s5, 1
	bnez	a0, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(pict_type)
	lw	a0, %lo(pict_type)(a0)
	lw	s6, 4(s7)
	andi	a2, s5, 8
	li	a1, 2
	beq	a0, a1, .LBB0_24
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	bnez	a2, .LBB0_24
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=2
	li	s10, 0
	j	.LBB0_46
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, 0(s1)
	addi	s4, s4, -2
	snez	a1, s4
	lw	a2, %lo(width2)(s8)
	addiw	a1, a1, -1
	and	s6, a1, s9
	add	a0, a0, s3
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	mulw	a1, a2, a1
	add	a0, a0, a1
	add	s6, a0, s6
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	s6, s6, a0
	li	a1, 128
	li	a2, 16
	mv	a0, s6
	call	memset
	lw	a0, %lo(width2)(s8)
	add	a0, s6, a0
	li	a1, 128
	li	a2, 16
	call	memset
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	li	s4, 8
	li	s9, 8
	li	a1, 3
	bne	a0, a1, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=2
	li	s9, 16
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=2
	li	a1, 1
	beq	a0, a1, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=2
	li	s4, 16
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=2
	addi	a1, a0, -3
	snez	a1, a1
	srlw	s5, s3, a1
	addi	a0, a0, -1
	lui	a1, %hi(pict_struct)
	lw	a1, %lo(pict_struct)(a1)
	seqz	a0, a0
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	srlw	s7, a2, a0
	ld	a0, 8(s1)
	addi	a1, a1, -2
	lui	a2, %hi(chrom_width)
	lw	a2, %lo(chrom_width)(a2)
	snez	a1, a1
	addi	a1, a1, -1
	lw	a3, %lo(chrom_width2)(s0)
	and	a1, a1, a2
	add	a0, a0, s5
	add	a0, a0, a1
	mulw	s6, a3, s7
	add	s6, a0, s6
	mv	s10, s4
.LBB0_21:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	li	a1, 128
	mv	a0, s6
	mv	a2, s9
	call	memset
	lw	a0, %lo(chrom_width2)(s0)
	addiw	s10, s10, -1
	add	s6, s6, a0
	bnez	s10, .LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a1, %hi(pict_struct)
	lw	a1, %lo(pict_struct)(a1)
	ld	a2, 16(s1)
	lui	a3, %hi(chrom_width)
	lw	a3, %lo(chrom_width)(a3)
	addi	a1, a1, -2
	snez	a1, a1
	addi	a1, a1, -1
	and	a1, a1, a3
	add	a2, a2, s5
	mulw	a0, a0, s7
	add	a0, a2, a0
	add	s6, a0, a1
.LBB0_23:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	li	a1, 128
	mv	a0, s6
	mv	a2, s9
	call	memset
	lw	a0, %lo(chrom_width2)(s0)
	addiw	s4, s4, -1
	add	s6, s6, a0
	bnez	s4, .LBB0_23
	j	.LBB0_11
.LBB0_24:                               #   in Loop: Header=BB0_12 Depth=2
	addi	a1, s7, 72
	li	a3, 3
	bne	s4, a3, .LBB0_30
# %bb.25:                               #   in Loop: Header=BB0_12 Depth=2
	li	a0, 2
	beq	s6, a0, .LBB0_42
# %bb.26:                               #   in Loop: Header=BB0_12 Depth=2
	beqz	a2, .LBB0_42
# %bb.27:                               #   in Loop: Header=BB0_12 Depth=2
	li	a0, 3
	beq	s6, a0, .LBB0_57
# %bb.28:                               #   in Loop: Header=BB0_12 Depth=2
	li	a0, 1
	bne	s6, a0, .LBB0_59
# %bb.29:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a1, 56(s7)
	lw	t3, 28(s7)
	lw	t2, 24(s7)
	slliw	a4, s9, 1
	sd	a4, 32(sp)                      # 8-byte Folded Spill
	srai	t3, t3, 1
	sext.w	a6, s3
	sd	a6, 40(sp)                      # 8-byte Folded Spill
	li	a5, 8
	ld	s11, 80(sp)                     # 8-byte Folded Reload
	mv	a0, s11
	mv	a2, s1
	li	a3, 0
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	li	t4, 0
	call	pred
	lw	a1, 64(s7)
	lw	t3, 44(s7)
	lw	t2, 40(s7)
	srai	t3, t3, 1
	li	a3, 1
	li	a5, 8
	li	s10, 1
	mv	a0, s11
	mv	a2, s1
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	ld	s11, 64(sp)                     # 8-byte Folded Reload
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	li	t4, 0
	call	pred
	j	.LBB0_46
.LBB0_30:                               #   in Loop: Header=BB0_12 Depth=2
	addi	a0, a0, -2
	seqz	a0, a0
	addi	a5, s4, -2
	ld	a4, 56(sp)                      # 8-byte Folded Reload
	and	s10, a4, a0
	seqz	s11, a5
	beqz	s10, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a4, 56(s7)
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	bne	a4, s11, .LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, 80(sp)                      # 8-byte Folded Reload
.LBB0_33:                               #   in Loop: Header=BB0_12 Depth=2
	li	a4, 1
	beq	s6, a4, .LBB0_43
# %bb.34:                               #   in Loop: Header=BB0_12 Depth=2
	beqz	a2, .LBB0_43
# %bb.35:                               #   in Loop: Header=BB0_12 Depth=2
	li	a2, 3
	beq	s6, a2, .LBB0_58
# %bb.36:                               #   in Loop: Header=BB0_12 Depth=2
	li	a1, 2
	bne	s6, a1, .LBB0_60
# %bb.37:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a1, 56(s7)
	lw	t2, 24(s7)
	lw	t3, 28(s7)
	slliw	a4, s9, 1
	sext.w	a6, s3
	li	a5, 8
	mv	a2, s1
	mv	a3, s11
	sd	a4, 40(sp)                      # 8-byte Folded Spill
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	li	t4, 0
	call	pred
	lw	a1, 64(s7)
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	beq	a1, s11, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, 88(sp)                      # 8-byte Folded Reload
.LBB0_39:                               #   in Loop: Header=BB0_12 Depth=2
	bnez	s10, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, 80(sp)                      # 8-byte Folded Reload
.LBB0_41:                               #   in Loop: Header=BB0_12 Depth=2
	lw	t2, 40(s7)
	lw	t3, 44(s7)
	li	a5, 8
	mv	a2, s1
	mv	a3, s11
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	ld	a7, 48(sp)                      # 8-byte Folded Reload
	j	.LBB0_44
.LBB0_42:                               #   in Loop: Header=BB0_12 Depth=2
	lw	t2, 24(s7)
	lw	t3, 28(s7)
	sext.w	a6, s3
	li	a5, 16
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	li	a1, 0
	mv	a2, s1
	li	a3, 0
	mv	a4, s9
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	li	t4, 0
	call	pred
	li	s10, 1
	j	.LBB0_46
.LBB0_43:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a1, 56(s7)
	lw	t2, 24(s7)
	lw	t3, 28(s7)
	slliw	a4, s9, 1
	sext.w	a6, s3
	li	a5, 16
	mv	a2, s1
	mv	a3, s11
	ld	a7, 96(sp)                      # 8-byte Folded Reload
.LBB0_44:                               #   in Loop: Header=BB0_12 Depth=2
	li	t4, 0
	call	pred
	li	s10, 1
.LBB0_45:                               #   in Loop: Header=BB0_12 Depth=2
	ld	s11, 64(sp)                     # 8-byte Folded Reload
.LBB0_46:                               #   in Loop: Header=BB0_12 Depth=2
	andi	a0, s5, 4
	beqz	a0, .LBB0_11
# %bb.47:                               #   in Loop: Header=BB0_12 Depth=2
	li	a0, 3
	bne	s4, a0, .LBB0_50
# %bb.48:                               #   in Loop: Header=BB0_12 Depth=2
	li	a0, 2
	bne	s6, a0, .LBB0_9
# %bb.49:                               #   in Loop: Header=BB0_12 Depth=2
	lw	t2, 32(s7)
	lw	t3, 36(s7)
	sext.w	a6, s3
	li	a5, 16
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	li	a1, 0
	mv	a2, s1
	li	a3, 0
	mv	a4, s9
	j	.LBB0_53
.LBB0_50:                               #   in Loop: Header=BB0_12 Depth=2
	addi	s4, s4, -2
	seqz	a3, s4
	li	a0, 2
	beq	s6, a0, .LBB0_54
# %bb.51:                               #   in Loop: Header=BB0_12 Depth=2
	li	a0, 1
	bne	s6, a0, .LBB0_55
# %bb.52:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a1, 60(s7)
	lw	t2, 32(s7)
	lw	t3, 36(s7)
	slliw	a4, s9, 1
	sext.w	a6, s3
	li	a5, 16
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	mv	a2, s1
.LBB0_53:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	j	.LBB0_10
.LBB0_54:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a1, 60(s7)
	lw	t2, 32(s7)
	lw	t3, 36(s7)
	slliw	s9, s9, 1
	sext.w	s4, s3
	li	a5, 8
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	mv	a0, s5
	mv	a2, s1
	mv	s6, a3
	mv	a4, s9
	mv	a6, s4
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	mv	t4, s10
	call	pred
	lw	a1, 68(s7)
	lw	t2, 48(s7)
	lw	t3, 52(s7)
	li	a5, 8
	mv	a0, s5
	mv	a2, s1
	mv	a3, s6
	mv	a4, s9
	mv	a6, s4
	ld	a7, 48(sp)                      # 8-byte Folded Reload
	j	.LBB0_10
.LBB0_55:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	bnez	a0, .LBB0_11
# %bb.56:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	li	a1, 20
	li	a2, 1
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	fwrite
	j	.LBB0_11
.LBB0_57:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a0, 28(s7)
	lw	s11, 24(s7)
	srai	s10, a0, 1
	addi	a0, sp, 104
	mv	a2, s11
	mv	a3, s10
	call	calc_DMV
	slliw	a4, s9, 1
	sd	a4, 32(sp)                      # 8-byte Folded Spill
	sext.w	a6, s3
	sd	a6, 40(sp)                      # 8-byte Folded Spill
	li	a5, 8
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	li	a1, 0
	mv	a2, s1
	li	a3, 0
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	mv	t2, s11
	mv	t3, s10
	li	t4, 0
	call	pred
	lw	t3, 28(s7)
	lw	t2, 24(s7)
	srai	t3, t3, 1
	li	a1, 1
	li	a3, 1
	li	a5, 8
	li	s10, 1
	ld	s11, 80(sp)                     # 8-byte Folded Reload
	mv	a0, s11
	mv	a2, s1
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	li	t4, 0
	call	pred
	lw	t2, 104(sp)
	lw	t3, 108(sp)
	li	a1, 1
	li	a5, 8
	li	t4, 1
	mv	a0, s11
	mv	a2, s1
	li	a3, 0
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	call	pred
	lw	t2, 112(sp)
	lw	t3, 116(sp)
	li	a3, 1
	li	a5, 8
	li	t4, 1
	mv	a0, s11
	ld	s11, 64(sp)                     # 8-byte Folded Reload
	li	a1, 0
	mv	a2, s1
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	ld	a6, 40(sp)                      # 8-byte Folded Reload
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	call	pred
	j	.LBB0_46
.LBB0_58:                               #   in Loop: Header=BB0_12 Depth=2
	lw	s10, 24(s7)
	lw	a3, 28(s7)
	sd	a3, 16(sp)                      # 8-byte Folded Spill
	snez	a0, a5
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	addi	a0, sp, 104
	mv	a2, s10
	call	calc_DMV
	slliw	a4, s9, 1
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	sext.w	a6, s3
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	li	a5, 16
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	mv	a1, s11
	mv	a2, s1
	mv	a3, s11
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	mv	t2, s10
	ld	t3, 16(sp)                      # 8-byte Folded Reload
	li	t4, 0
	call	pred
	lw	t2, 104(sp)
	lw	t3, 108(sp)
	li	a5, 16
	li	t4, 1
	li	s10, 1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	mv	a2, s1
	mv	a3, s11
	ld	a4, 24(sp)                      # 8-byte Folded Reload
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	call	pred
	j	.LBB0_45
.LBB0_59:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	li	s10, 1
	bnez	a0, .LBB0_46
	j	.LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	li	s10, 1
	ld	s11, 64(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB0_46
.LBB0_61:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	li	a1, 20
	li	a2, 1
	li	s10, 1
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	fwrite
	j	.LBB0_46
.LBB0_62:
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
	li	t0, 0
	li	t1, 16
	li	t5, 1
	lui	t6, %hi(chroma_format)
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x1, 3
	seqz	a3, a3
	seqz	a1, a1
	addi	a1, a1, -1
	addi	a3, a3, -1
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi	t0, t0, 1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	beq	t0, x1, .LBB1_64
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
	bne	t0, t5, .LBB1_7
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x16, 0x0(x17)		# 100011000000000000000
	lw	x2, %lo(chroma_format)(t6)
	beq	x2, x1, .LBB1_7
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bne	x2, t5, .LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	sraiw	a5, a5, 1
	sraiw	a7, a7, 1
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	srliw	x2, t3, 31
	add	t3, t3, x2
	sraiw	t3, t3, 1
.LBB1_6:                                #   in Loop: Header=BB1_2 Depth=1
	sraiw	t1, t1, 1
	sraiw	a6, a6, 1
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	srliw	x2, t2, 31
	add	t2, t2, x2
	sraiw	t2, t2, 1
	sraiw	a4, a4, 1
.LBB1_7:                                #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x29, 0x16e(x18)		# 100101110100101101110
	slli	x2, t0, 3
	add	x3, a0, x2
	ld	x4, 0(x3)
	sraiw	x5, a4, 1
	and	x6, a1, x5
	add	x2, a2, x2
	ld	x3, 0(x2)
	regsw_c	x9, 0x5be(x22)		# 101100100110110111110
	and	x8, a3, x5
	sraiw	x2, t2, 1
	sraiw	x5, t3, 1
	add	x5, x5, a7
	mulw	x9, x5, a4
	add	x5, x6, x9
	addw	x7, x2, a6
	regsw_c	x25, 0x7a6(x31)		# 111111100111110100110
	add	x5, x5, x7
	add	x5, x4, x5
	mulw	x10, a4, a7
	add	x2, x8, x10
	add	x2, x2, a6
	or	x11, t3, t2
	andi	x11, x11, 1
	regsw_c	x0, 0x0(x29)		# 111010000000000000000
	add	x2, x3, x2
	bnez	x11, .LBB1_15
# %bb.8:                                #   in Loop: Header=BB1_2 Depth=1
	beqz	t4, .LBB1_33
# %bb.9:                                #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.10:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.11:                               #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x15, 0x5c0(x18)		# 100100111110111000000
	li	x3, 0
	li	x8, 0
	add	x6, x6, x9
	add	x7, x7, t1
	add	x6, x6, x7
.LBB1_12:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_13 Depth 3
	regsw_c	x31, 0x580(x23)		# 101111111110110000000
	mul	x7, a4, x3
	add	x7, x6, x7
	add	x7, x4, x7
	mv	x9, x2
	mv	x10, x5
.LBB1_13:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x15, 0x59e(x27)		# 110110111110110011110
	lbu	x11, 0(x9)
	lbu	x12, 0(x10)
	add	x11, x11, x12
	addi	x11, x11, 1
	srli	x11, x11, 1
	sb	x11, 0(x9)
	addi	x10, x10, 1
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	addi	x9, x9, 1
	bne	x10, x7, .LBB1_13
# %bb.14:                               #   in Loop: Header=BB1_12 Depth=2
	regsw_c	x13, 0x480(x27)		# 110110110110010000000
	add	x5, x5, a4
	add	x2, x2, a4
	addiw	x8, x8, 1
	addi	x3, x3, 1
	bne	x8, a5, .LBB1_12
	j	.LBB1_1
.LBB1_15:                               #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x4, 0x0(x18)		# 100100010000000000000
	andi	x12, t2, 1
	andi	x11, t3, 1
	bnez	x12, .LBB1_24
# %bb.16:                               #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x11, .LBB1_24
# %bb.17:                               #   in Loop: Header=BB1_2 Depth=1
	beqz	t4, .LBB1_46
# %bb.18:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.19:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.20:                               #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x13, 0x7fe(x18)		# 100100110111111111110
	li	x3, 0
	li	x8, 0
	add	x6, x6, a4
	add	x6, x6, x9
	add	x7, x6, x7
	add	x6, x4, x7
	add	x7, x7, t1
.LBB1_21:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_22 Depth 3
	regsw_c	x31, 0x5b0(x23)		# 101111111110110110000
	mul	x9, a4, x3
	add	x9, x7, x9
	add	x9, x4, x9
	mv	x10, x2
	mv	x11, x5
	mv	x12, x6
.LBB1_22:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x13, 0x7b7(x27)		# 110110110111110110111
	lbu	x13, 0(x11)
	lbu	x14, 0(x12)
	lbu	x15, 0(x10)
	add	x13, x13, x14
	addi	x13, x13, 1
	srli	x13, x13, 1
	add	x13, x15, x13
	regsw_c	x7, 0x5b3(x27)		# 110110011110110110011
	addi	x13, x13, 1
	srli	x13, x13, 1
	sb	x13, 0(x10)
	addi	x12, x12, 1
	addi	x11, x11, 1
	addi	x10, x10, 1
	bne	x12, x9, .LBB1_22
# %bb.23:                               #   in Loop: Header=BB1_21 Depth=2
	regsw_c	x13, 0x590(x27)		# 110110110110110010000
	add	x5, x5, a4
	add	x2, x2, a4
	addiw	x8, x8, 1
	add	x6, x6, a4
	addi	x3, x3, 1
	bne	x8, a5, .LBB1_21
	j	.LBB1_1
.LBB1_24:                               #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x12, .LBB1_39
# %bb.25:                               #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bnez	x11, .LBB1_39
# %bb.26:                               #   in Loop: Header=BB1_2 Depth=1
	beqz	t4, .LBB1_58
# %bb.27:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.28:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.29:                               #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x15, 0x7f6(x18)		# 100100111111111110110
	li	x5, 0
	li	x11, 0
	add	x6, x6, x9
	add	x6, x6, x7
	add	x4, x4, x6
	addi	x4, x4, 1
	add	x6, x8, a6
	regsw_c	x16, 0x0(x27)		# 110111000000000000000
	add	x10, x10, t1
	add	x6, x6, x10
.LBB1_30:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_31 Depth 3
	regsw_c	x31, 0x580(x23)		# 101111111110110000000
	mul	x7, a4, x5
	add	x7, x6, x7
	add	x7, x3, x7
	mv	x8, x4
	mv	x9, x2
.LBB1_31:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x13, 0x7b7(x27)		# 110110110111110110111
	lbu	x10, -1(x8)
	lbu	x12, 0(x8)
	lbu	x13, 0(x9)
	add	x10, x10, x12
	addi	x10, x10, 1
	srli	x10, x10, 1
	add	x10, x13, x10
	regsw_c	x7, 0x598(x27)		# 110110011110110011000
	addi	x10, x10, 1
	srli	x10, x10, 1
	sb	x10, 0(x9)
	addi	x9, x9, 1
	addi	x8, x8, 1
	bne	x9, x7, .LBB1_31
# %bb.32:                               #   in Loop: Header=BB1_30 Depth=2
	regsw_c	x13, 0x480(x27)		# 110110110110010000000
	add	x2, x2, a4
	addiw	x11, x11, 1
	add	x4, x4, a4
	addi	x5, x5, 1
	bne	x11, a5, .LBB1_30
	j	.LBB1_1
.LBB1_33:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.34:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.35:                               #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x13, 0x5c0(x18)		# 100100110110111000000
	li	x4, 0
	li	x6, 0
	add	x7, x8, a6
	add	x10, x10, t1
	add	x7, x7, x10
.LBB1_36:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_37 Depth 3
	regsw_c	x31, 0x580(x23)		# 101111111110110000000
	mul	x8, a4, x4
	add	x8, x7, x8
	add	x8, x3, x8
	mv	x9, x5
	mv	x10, x2
.LBB1_37:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x29, 0x4c0(x25)		# 110011110110011000000
	lbu	x11, 0(x9)
	sb	x11, 0(x10)
	addi	x10, x10, 1
	addi	x9, x9, 1
	bne	x10, x8, .LBB1_37
# %bb.38:                               #   in Loop: Header=BB1_36 Depth=2
	regsw_c	x13, 0x480(x27)		# 110110110110010000000
	add	x5, x5, a4
	add	x2, x2, a4
	addiw	x6, x6, 1
	addi	x4, x4, 1
	bne	x6, a5, .LBB1_36
	j	.LBB1_1
.LBB1_39:                               #   in Loop: Header=BB1_2 Depth=1
	beqz	t4, .LBB1_52
# %bb.40:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.41:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.42:                               #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x13, 0x7f7(x18)		# 100100110111111110111
	li	x5, 0
	li	x11, 0
	addi	x12, x4, 1
	add	x6, x6, x9
	add	x6, x6, x7
	add	x4, x6, a4
	add	x4, x12, x4
	regsw_c	x13, 0x600(x31)		# 111110110111000000000
	add	x6, x12, x6
	add	x7, x8, a6
	add	x10, x10, t1
	add	x7, x7, x10
.LBB1_43:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_44 Depth 3
	regsw_c	x31, 0x5b0(x23)		# 101111111110110110000
	mul	x8, a4, x5
	add	x8, x7, x8
	add	x8, x3, x8
	mv	x9, x6
	mv	x10, x4
	mv	x12, x2
.LBB1_44:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x13, 0x5bf(x27)		# 110110110110110111111
	lbu	x13, -1(x9)
	lbu	x14, 0(x9)
	lbu	x15, -1(x10)
	lbu	x16, 0(x10)
	lbu	x17, 0(x12)
	add	x13, x13, x14
	add	x15, x15, x16
	regsw_c	x13, 0x7b3(x31)		# 111110110111110110011
	add	x13, x13, x15
	addi	x13, x13, 2
	srli	x13, x13, 2
	add	x13, x17, x13
	addi	x13, x13, 1
	srli	x13, x13, 1
	sb	x13, 0(x12)
	regsw_c	x12, 0x600(x27)		# 110110110011000000000
	addi	x12, x12, 1
	addi	x10, x10, 1
	addi	x9, x9, 1
	bne	x12, x8, .LBB1_44
# %bb.45:                               #   in Loop: Header=BB1_43 Depth=2
	regsw_c	x13, 0x590(x27)		# 110110110110110010000
	add	x2, x2, a4
	addiw	x11, x11, 1
	add	x4, x4, a4
	add	x6, x6, a4
	addi	x5, x5, 1
	bne	x11, a5, .LBB1_43
	j	.LBB1_1
.LBB1_46:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.47:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.48:                               #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x13, 0x7fe(x18)		# 100100110111111111110
	li	x11, 0
	li	x12, 0
	add	x6, x6, a4
	add	x6, x6, x9
	add	x6, x6, x7
	add	x4, x4, x6
	add	x6, x8, a6
	regsw_c	x16, 0x0(x27)		# 110111000000000000000
	add	x10, x10, t1
	add	x6, x6, x10
.LBB1_49:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_50 Depth 3
	regsw_c	x31, 0x5b0(x23)		# 101111111110110110000
	mul	x7, a4, x11
	add	x7, x6, x7
	add	x7, x3, x7
	mv	x8, x5
	mv	x9, x4
	mv	x10, x2
.LBB1_50:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x15, 0x59e(x27)		# 110110111110110011110
	lbu	x13, 0(x8)
	lbu	x14, 0(x9)
	add	x13, x13, x14
	addi	x13, x13, 1
	srli	x13, x13, 1
	sb	x13, 0(x10)
	addi	x10, x10, 1
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x9, x9, 1
	addi	x8, x8, 1
	bne	x10, x7, .LBB1_50
# %bb.51:                               #   in Loop: Header=BB1_49 Depth=2
	regsw_c	x13, 0x590(x27)		# 110110110110110010000
	add	x5, x5, a4
	add	x2, x2, a4
	addiw	x12, x12, 1
	add	x4, x4, a4
	addi	x11, x11, 1
	bne	x12, a5, .LBB1_49
	j	.LBB1_1
.LBB1_52:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.53:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.54:                               #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x13, 0x7fe(x18)		# 100100110111111111110
	li	x5, 0
	li	x11, 0
	addi	x12, x4, 1
	add	x6, x6, x9
	add	x6, x6, x7
	add	x4, x12, x6
	add	x6, x6, a4
	regsw_c	x13, 0x600(x31)		# 111110110111000000000
	add	x6, x12, x6
	add	x7, x8, a6
	add	x10, x10, t1
	add	x7, x7, x10
.LBB1_55:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_56 Depth 3
	regsw_c	x31, 0x5b0(x23)		# 101111111110110110000
	mul	x8, a4, x5
	add	x8, x7, x8
	add	x8, x3, x8
	mv	x9, x6
	mv	x10, x4
	mv	x12, x2
.LBB1_56:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x13, 0x5ff(x27)		# 110110110110111111111
	lbu	x13, -1(x10)
	lbu	x14, 0(x10)
	lbu	x15, -1(x9)
	lbu	x16, 0(x9)
	add	x13, x13, x14
	add	x15, x15, x16
	add	x13, x13, x15
	regsw_c	x7, 0x5b3(x27)		# 110110011110110110011
	addi	x13, x13, 2
	srli	x13, x13, 2
	sb	x13, 0(x12)
	addi	x12, x12, 1
	addi	x10, x10, 1
	addi	x9, x9, 1
	bne	x12, x8, .LBB1_56
# %bb.57:                               #   in Loop: Header=BB1_55 Depth=2
	regsw_c	x13, 0x590(x27)		# 110110110110110010000
	add	x2, x2, a4
	addiw	x11, x11, 1
	add	x4, x4, a4
	add	x6, x6, a4
	addi	x5, x5, 1
	bne	x11, a5, .LBB1_55
	j	.LBB1_1
.LBB1_58:                               #   in Loop: Header=BB1_2 Depth=1
	blez	a5, .LBB1_1
# %bb.59:                               #   in Loop: Header=BB1_2 Depth=1
	blez	t1, .LBB1_1
# %bb.60:                               #   in Loop: Header=BB1_2 Depth=1
	regsw_c	x15, 0x7f6(x18)		# 100100111111111110110
	li	x5, 0
	li	x11, 0
	add	x6, x6, x9
	add	x6, x6, x7
	add	x4, x4, x6
	addi	x4, x4, 1
	add	x6, x8, a6
	regsw_c	x16, 0x0(x27)		# 110111000000000000000
	add	x10, x10, t1
	add	x6, x6, x10
.LBB1_61:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_62 Depth 3
	regsw_c	x31, 0x580(x23)		# 101111111110110000000
	mul	x7, a4, x5
	add	x7, x6, x7
	add	x7, x3, x7
	mv	x8, x4
	mv	x9, x2
.LBB1_62:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x15, 0x59e(x27)		# 110110111110110011110
	lbu	x10, -1(x8)
	lbu	x12, 0(x8)
	add	x10, x10, x12
	addi	x10, x10, 1
	srli	x10, x10, 1
	sb	x10, 0(x9)
	addi	x9, x9, 1
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	addi	x8, x8, 1
	bne	x9, x7, .LBB1_62
# %bb.63:                               #   in Loop: Header=BB1_61 Depth=2
	regsw_c	x13, 0x480(x27)		# 110110110110010000000
	add	x2, x2, a4
	addiw	x11, x11, 1
	add	x4, x4, a4
	addi	x5, x5, 1
	bne	x11, a5, .LBB1_61
	j	.LBB1_1
.LBB1_64:
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
