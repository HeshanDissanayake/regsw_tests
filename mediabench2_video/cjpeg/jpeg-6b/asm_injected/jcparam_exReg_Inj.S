	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jcparam.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function jpeg_add_quant_table
.LCPI0_0:
	.quad	-6640827866535438581            # 0xa3d70a3d70a3d70b
	.text
	.globl	jpeg_add_quant_table
	.p2align	2
	.type	jpeg_add_quant_table,@function
jpeg_add_quant_table:                   # @jpeg_add_quant_table
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s3, a0
	lw	a0, 36(a0)
	li	a5, 100
	mv	s2, a4
	mv	s0, a3
	mv	s1, a2
	mv	s4, a1
	bne	a0, a5, .LBB0_12
# %bb.1:
	li	a0, 4
	bgeu	s4, a0, .LBB0_13
.LBB0_2:
	slli	s4, s4, 3
	add	s4, s3, s4
	ld	a0, 96(s4)
	beqz	a0, .LBB0_14
.LBB0_3:
	beqz	s2, .LBB0_15
.LBB0_4:                                # %.preheader1
	addi	a1, a0, 128
	lui	a2, %hi(.LCPI0_0)
	ld	a2, %lo(.LCPI0_0)(a2)
	lui	a3, 8
	addiw	a3, a3, -1
	lui	a4, 6
	addiw	a4, a4, 973
	mv	a5, a0
	j	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	sh	a7, 0(a5)
	addi	a5, a5, 2
	addi	s1, s1, 4
	beq	a5, a1, .LBB0_21
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	lwu	a6, 0(s1)
	mul	a6, a6, s0
	addi	a7, a6, 50
	mulh	t0, a7, a2
	add	a7, t0, a7
	srli	t0, a7, 63
	srai	a7, a7, 6
	add	a7, a7, t0
	blez	a7, .LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	bge	a7, a3, .LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	bge	a4, a6, .LBB0_5
	j	.LBB0_11
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	li	a7, 1
	blt	a7, a3, .LBB0_8
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	mv	a7, a3
	bge	a4, a6, .LBB0_5
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	li	a7, 255
	j	.LBB0_5
.LBB0_12:
	ld	a1, 0(s3)
	sw	a0, 44(a1)
	ld	a0, 0(s3)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s3
	jalr	a2
	li	a0, 4
	bltu	s4, a0, .LBB0_2
.LBB0_13:
	ld	a0, 0(s3)
	sw	s4, 44(a0)
	ld	a1, 0(s3)
	ld	a1, 0(a1)
	li	a2, 31
	sw	a2, 40(a0)
	mv	a0, s3
	jalr	a1
	slli	s4, s4, 3
	add	s4, s3, s4
	ld	a0, 96(s4)
	bnez	a0, .LBB0_3
.LBB0_14:
	mv	a0, s3
	call	jpeg_alloc_quant_table
	sd	a0, 96(s4)
	bnez	s2, .LBB0_4
.LBB0_15:                               # %.preheader
	lui	a1, %hi(.LCPI0_0)
	ld	a1, %lo(.LCPI0_0)(a1)
	addi	a2, a0, 128
	lui	a3, 8
	addiw	a3, a3, -1
	mv	a4, a0
	j	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	sh	a5, 0(a4)
	addi	a4, a4, 2
	addi	s1, s1, 4
	beq	a4, a2, .LBB0_21
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	lwu	a5, 0(s1)
	mul	a5, a5, s0
	addi	a5, a5, 50
	mulh	a6, a5, a1
	add	a5, a6, a5
	srli	a6, a5, 63
	srai	a5, a5, 6
	add	a5, a5, a6
	blez	a5, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	blt	a5, a3, .LBB0_16
	j	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_17 Depth=1
	li	a5, 1
	blt	a5, a3, .LBB0_16
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=1
	mv	a5, a3
	j	.LBB0_16
.LBB0_21:
	sw	zero, 128(a0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	jpeg_add_quant_table, .Lfunc_end0-jpeg_add_quant_table
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function jpeg_set_linear_quality
.LCPI1_0:
	.quad	-6640827866535438581            # 0xa3d70a3d70a3d70b
	.text
	.globl	jpeg_set_linear_quality
	.p2align	2
	.type	jpeg_set_linear_quality,@function
jpeg_set_linear_quality:                # @jpeg_set_linear_quality
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s2, a0
	lw	a0, 36(a0)
	li	a3, 100
	mv	s1, a2
	mv	s0, a1
	bne	a0, a3, .LBB1_11
# %bb.1:
	ld	a0, 96(s2)
	beqz	a0, .LBB1_12
.LBB1_2:
	addi	a1, a0, 128
	beqz	s1, .LBB1_13
.LBB1_3:                                # %.preheader5
	lui	a2, %hi(jpeg_set_linear_quality.std_luminance_quant_tbl)
	addi	a2, a2, %lo(jpeg_set_linear_quality.std_luminance_quant_tbl)
	lui	a3, %hi(.LCPI1_0)
	ld	a3, %lo(.LCPI1_0)(a3)
	lui	a4, 8
	addiw	a4, a4, -1
	lui	a5, 6
	addiw	a5, a5, 973
	mv	a6, a0
	j	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=1
	sh	t0, 0(a6)
	addi	a6, a6, 2
	addi	a2, a2, 4
	beq	a6, a1, .LBB1_19
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	lwu	a7, 0(a2)
	mul	a7, a7, s0
	addi	t0, a7, 50
	mulh	t1, t0, a3
	add	t0, t1, t0
	srli	t1, t0, 63
	srai	t0, t0, 6
	add	t0, t0, t1
	blez	t0, .LBB1_8
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	bge	t0, a4, .LBB1_9
.LBB1_7:                                #   in Loop: Header=BB1_5 Depth=1
	bge	a5, a7, .LBB1_4
	j	.LBB1_10
.LBB1_8:                                #   in Loop: Header=BB1_5 Depth=1
	li	t0, 1
	blt	t0, a4, .LBB1_7
.LBB1_9:                                #   in Loop: Header=BB1_5 Depth=1
	mv	t0, a4
	bge	a5, a7, .LBB1_4
.LBB1_10:                               #   in Loop: Header=BB1_5 Depth=1
	li	t0, 255
	j	.LBB1_4
.LBB1_11:
	ld	a1, 0(s2)
	sw	a0, 44(a1)
	ld	a0, 0(s2)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s2
	jalr	a2
	ld	a0, 96(s2)
	bnez	a0, .LBB1_2
.LBB1_12:
	mv	a0, s2
	call	jpeg_alloc_quant_table
	sd	a0, 96(s2)
	addi	a1, a0, 128
	bnez	s1, .LBB1_3
.LBB1_13:                               # %.preheader3
	lui	a2, %hi(.LCPI1_0)
	ld	a2, %lo(.LCPI1_0)(a2)
	lui	a3, %hi(jpeg_set_linear_quality.std_luminance_quant_tbl)
	addi	a3, a3, %lo(jpeg_set_linear_quality.std_luminance_quant_tbl)
	lui	a4, 8
	addiw	a4, a4, -1
	mv	a5, a0
	j	.LBB1_15
.LBB1_14:                               #   in Loop: Header=BB1_15 Depth=1
	sh	a6, 0(a5)
	addi	a5, a5, 2
	addi	a3, a3, 4
	beq	a5, a1, .LBB1_19
.LBB1_15:                               # =>This Inner Loop Header: Depth=1
	lwu	a6, 0(a3)
	mul	a6, a6, s0
	addi	a6, a6, 50
	mulh	a7, a6, a2
	add	a6, a7, a6
	srli	a7, a6, 63
	srai	a6, a6, 6
	add	a6, a6, a7
	blez	a6, .LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=1
	blt	a6, a4, .LBB1_14
	j	.LBB1_18
.LBB1_17:                               #   in Loop: Header=BB1_15 Depth=1
	li	a6, 1
	blt	a6, a4, .LBB1_14
.LBB1_18:                               #   in Loop: Header=BB1_15 Depth=1
	mv	a6, a4
	j	.LBB1_14
.LBB1_19:
	lw	a1, 36(s2)
	li	a2, 100
	sw	zero, 128(a0)
	bne	a1, a2, .LBB1_30
# %bb.20:
	ld	a0, 104(s2)
	beqz	a0, .LBB1_31
.LBB1_21:
	addi	a1, a0, 128
	beqz	s1, .LBB1_32
.LBB1_22:                               # %.preheader1
	lui	a2, %hi(jpeg_set_linear_quality.std_chrominance_quant_tbl)
	addi	a2, a2, %lo(jpeg_set_linear_quality.std_chrominance_quant_tbl)
	lui	a3, %hi(.LCPI1_0)
	ld	a3, %lo(.LCPI1_0)(a3)
	lui	a4, 8
	addiw	a4, a4, -1
	lui	a5, 6
	addiw	a5, a5, 973
	mv	a6, a0
	j	.LBB1_24
.LBB1_23:                               #   in Loop: Header=BB1_24 Depth=1
	sh	t0, 0(a6)
	addi	a6, a6, 2
	addi	a2, a2, 4
	beq	a6, a1, .LBB1_38
.LBB1_24:                               # =>This Inner Loop Header: Depth=1
	lwu	a7, 0(a2)
	mul	a7, a7, s0
	addi	t0, a7, 50
	mulh	t1, t0, a3
	add	t0, t1, t0
	srli	t1, t0, 63
	srai	t0, t0, 6
	add	t0, t0, t1
	blez	t0, .LBB1_27
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=1
	bge	t0, a4, .LBB1_28
.LBB1_26:                               #   in Loop: Header=BB1_24 Depth=1
	bge	a5, a7, .LBB1_23
	j	.LBB1_29
.LBB1_27:                               #   in Loop: Header=BB1_24 Depth=1
	li	t0, 1
	blt	t0, a4, .LBB1_26
.LBB1_28:                               #   in Loop: Header=BB1_24 Depth=1
	mv	t0, a4
	bge	a5, a7, .LBB1_23
.LBB1_29:                               #   in Loop: Header=BB1_24 Depth=1
	li	t0, 255
	j	.LBB1_23
.LBB1_30:
	ld	a0, 0(s2)
	sw	a1, 44(a0)
	ld	a1, 0(s2)
	ld	a1, 0(a1)
	li	a2, 20
	sw	a2, 40(a0)
	mv	a0, s2
	jalr	a1
	ld	a0, 104(s2)
	bnez	a0, .LBB1_21
.LBB1_31:
	mv	a0, s2
	call	jpeg_alloc_quant_table
	sd	a0, 104(s2)
	addi	a1, a0, 128
	bnez	s1, .LBB1_22
.LBB1_32:                               # %.preheader
	lui	a2, %hi(.LCPI1_0)
	ld	a2, %lo(.LCPI1_0)(a2)
	lui	a3, %hi(jpeg_set_linear_quality.std_chrominance_quant_tbl)
	addi	a3, a3, %lo(jpeg_set_linear_quality.std_chrominance_quant_tbl)
	lui	a4, 8
	addiw	a4, a4, -1
	mv	a5, a0
	j	.LBB1_34
.LBB1_33:                               #   in Loop: Header=BB1_34 Depth=1
	sh	a6, 0(a5)
	addi	a5, a5, 2
	addi	a3, a3, 4
	beq	a5, a1, .LBB1_38
.LBB1_34:                               # =>This Inner Loop Header: Depth=1
	lwu	a6, 0(a3)
	mul	a6, a6, s0
	addi	a6, a6, 50
	mulh	a7, a6, a2
	add	a6, a7, a6
	srli	a7, a6, 63
	srai	a6, a6, 6
	add	a6, a6, a7
	blez	a6, .LBB1_36
# %bb.35:                               #   in Loop: Header=BB1_34 Depth=1
	blt	a6, a4, .LBB1_33
	j	.LBB1_37
.LBB1_36:                               #   in Loop: Header=BB1_34 Depth=1
	li	a6, 1
	blt	a6, a4, .LBB1_33
.LBB1_37:                               #   in Loop: Header=BB1_34 Depth=1
	mv	a6, a4
	j	.LBB1_33
.LBB1_38:
	sw	zero, 128(a0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	jpeg_set_linear_quality, .Lfunc_end1-jpeg_set_linear_quality
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_quality_scaling            # -- Begin function jpeg_quality_scaling
	.p2align	2
	.type	jpeg_quality_scaling,@function
jpeg_quality_scaling:                   # @jpeg_quality_scaling
# %bb.0:
	mv	a1, a0
	blez	a0, .LBB2_4
# %bb.1:
	li	a2, 100
	bge	a1, a2, .LBB2_5
.LBB2_2:
	li	a2, 49
	blt	a2, a0, .LBB2_6
.LBB2_3:
	slli	a1, a1, 48
	srli	a1, a1, 48
	lui	a0, 1
	addi	a0, a0, 904
	divuw	a0, a0, a1
	ret
.LBB2_4:
	li	a1, 1
	li	a2, 100
	blt	a1, a2, .LBB2_2
.LBB2_5:
	li	a1, 100
	li	a2, 49
	bge	a2, a0, .LBB2_3
.LBB2_6:
	slli	a1, a1, 1
	li	a0, 200
	subw	a0, a0, a1
	ret
.Lfunc_end2:
	.size	jpeg_quality_scaling, .Lfunc_end2-jpeg_quality_scaling
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_set_quality                # -- Begin function jpeg_set_quality
	.p2align	2
	.type	jpeg_set_quality,@function
jpeg_set_quality:                       # @jpeg_set_quality
# %bb.0:
	mv	a3, a1
	blez	a1, .LBB3_4
# %bb.1:
	li	a4, 100
	bge	a3, a4, .LBB3_5
.LBB3_2:
	li	a4, 49
	blt	a4, a1, .LBB3_6
.LBB3_3:
	slli	a3, a3, 48
	srli	a3, a3, 48
	lui	a1, 1
	addi	a1, a1, 904
	divuw	a1, a1, a3
	tail	jpeg_set_linear_quality
.LBB3_4:
	li	a3, 1
	li	a4, 100
	blt	a3, a4, .LBB3_2
.LBB3_5:
	li	a3, 100
	li	a4, 49
	bge	a4, a1, .LBB3_3
.LBB3_6:
	slli	a3, a3, 1
	li	a1, 200
	subw	a1, a1, a3
	tail	jpeg_set_linear_quality
.Lfunc_end3:
	.size	jpeg_set_quality, .Lfunc_end3-jpeg_set_quality
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_set_defaults               # -- Begin function jpeg_set_defaults
	.p2align	2
	.type	jpeg_set_defaults,@function
jpeg_set_defaults:                      # @jpeg_set_defaults
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	li	a1, 100
	beq	a0, a1, .LBB4_2
# %bb.1:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB4_2:
	ld	a0, 88(s0)
	bnez	a0, .LBB4_4
# %bb.3:
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a2, 960
	mv	a0, s0
	li	a1, 0
	jalr	a3
	sd	a0, 88(s0)
.LBB4_4:
	li	a0, 8
	sw	a0, 72(s0)
	li	a1, 50
	li	a2, 1
	mv	a0, s0
	call	jpeg_set_linear_quality
	ld	a0, 128(s0)
	bnez	a0, .LBB4_6
# %bb.5:
	mv	a0, s0
	call	jpeg_alloc_huff_table
	sd	a0, 128(s0)
.LBB4_6:
	lui	a1, %hi(std_huff_tables.bits_dc_luminance)
	addi	a1, a1, %lo(std_huff_tables.bits_dc_luminance)
	li	a2, 17
	call	memcpy
	ld	a0, 128(s0)
	addi	a0, a0, 17
	lui	a1, %hi(std_huff_tables.val_dc_chrominance)
	addi	a1, a1, %lo(std_huff_tables.val_dc_chrominance)
	li	a2, 12
	call	memcpy
	ld	a1, 128(s0)
	ld	a0, 160(s0)
	sw	zero, 276(a1)
	bnez	a0, .LBB4_8
# %bb.7:
	mv	a0, s0
	call	jpeg_alloc_huff_table
	sd	a0, 160(s0)
.LBB4_8:
	lui	a1, %hi(std_huff_tables.bits_ac_luminance)
	addi	a1, a1, %lo(std_huff_tables.bits_ac_luminance)
	li	a2, 17
	call	memcpy
	ld	a0, 160(s0)
	addi	a0, a0, 17
	lui	a1, %hi(std_huff_tables.val_ac_luminance)
	addi	a1, a1, %lo(std_huff_tables.val_ac_luminance)
	li	a2, 162
	call	memcpy
	ld	a1, 160(s0)
	ld	a0, 136(s0)
	sw	zero, 276(a1)
	bnez	a0, .LBB4_10
# %bb.9:
	mv	a0, s0
	call	jpeg_alloc_huff_table
	sd	a0, 136(s0)
.LBB4_10:
	lui	a1, %hi(std_huff_tables.bits_dc_chrominance)
	addi	a1, a1, %lo(std_huff_tables.bits_dc_chrominance)
	li	a2, 17
	call	memcpy
	ld	a0, 136(s0)
	addi	a0, a0, 17
	lui	a1, %hi(std_huff_tables.val_dc_chrominance)
	addi	a1, a1, %lo(std_huff_tables.val_dc_chrominance)
	li	a2, 12
	call	memcpy
	ld	a1, 136(s0)
	ld	a0, 168(s0)
	sw	zero, 276(a1)
	bnez	a0, .LBB4_12
# %bb.11:
	mv	a0, s0
	call	jpeg_alloc_huff_table
	sd	a0, 168(s0)
.LBB4_12:
	lui	a1, %hi(std_huff_tables.bits_ac_chrominance)
	addi	a1, a1, %lo(std_huff_tables.bits_ac_chrominance)
	li	a2, 17
	call	memcpy
	ld	a0, 168(s0)
	addi	a0, a0, 17
	lui	a1, %hi(std_huff_tables.val_ac_chrominance)
	addi	a1, a1, %lo(std_huff_tables.val_ac_chrominance)
	li	a2, 162
	call	memcpy
	ld	a0, 168(s0)
	sw	zero, 276(a0)
	addi	a0, s0, 192
	addi	s1, s0, 208
	addi	s2, s0, 224
	li	a2, 16
	li	a1, 0
	call	memset
	li	a1, 1
	li	a2, 16
	mv	a0, s1
	call	memset
	li	a1, 5
	li	a2, 16
	mv	a0, s2
	call	memset
	lw	a0, 72(s0)
	sw	zero, 240(s0)
	sd	zero, 248(s0)
	sd	zero, 256(s0)
	slti	a0, a0, 9
	xori	a0, a0, 1
	sw	a0, 264(s0)
	sw	zero, 268(s0)
	sw	zero, 272(s0)
	sw	zero, 276(s0)
	sw	zero, 280(s0)
	sw	zero, 284(s0)
	li	a0, 257
	sh	a0, 292(s0)
	sb	zero, 294(s0)
	lui	a0, 16
	addi	a0, a0, 1
	sw	a0, 296(s0)
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	jpeg_default_colorspace
.Lfunc_end4:
	.size	jpeg_set_defaults, .Lfunc_end4-jpeg_set_defaults
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_default_colorspace         # -- Begin function jpeg_default_colorspace
	.p2align	2
	.type	jpeg_default_colorspace,@function
jpeg_default_colorspace:                # @jpeg_default_colorspace
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 60(a0)
	li	a1, 5
	bltu	a1, a0, .LBB5_21
# %bb.1:
	slli	a0, a0, 2
	lui	a1, %hi(.LJTI5_0)
	addi	a1, a1, %lo(.LJTI5_0)
	add	a0, a0, a1
	lw	a0, 0(a0)
	jr	a0
.LBB5_2:
	lw	a0, 36(s0)
	li	a1, 100
	beq	a0, a1, .LBB5_4
# %bb.3:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB5_4:
	li	a0, 3
	sw	a0, 80(s0)
	sw	zero, 300(s0)
	ld	a1, 88(s0)
	li	a2, 1
	sw	a2, 288(s0)
	sw	a0, 76(s0)
	sw	a2, 0(a1)
	slli	a3, a2, 33
	addi	a3, a3, 2
	sd	a3, 8(a1)
	sd	zero, 16(a1)
	sw	zero, 24(a1)
	li	a3, 2
	sw	a3, 96(a1)
	slli	a3, a2, 32
	addi	a3, a3, 1
	sd	a3, 104(a1)
	sd	a3, 112(a1)
	sw	a2, 120(a1)
	sw	a0, 192(a1)
	sd	a3, 200(a1)
	sd	a3, 208(a1)
	sw	a2, 216(a1)
.LBB5_5:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB5_6:
	lw	a0, 36(s0)
	li	a1, 100
	beq	a0, a1, .LBB5_8
# %bb.7:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB5_8:
	li	a0, 4
	sw	a0, 80(s0)
	sw	zero, 288(s0)
	li	a1, 1
	ld	a2, 88(s0)
	sw	a1, 300(s0)
	sw	a0, 76(s0)
	li	a0, 67
	sw	a0, 0(a2)
	slli	a1, a1, 32
	addi	a1, a1, 1
	sd	a1, 8(a2)
	sd	zero, 16(a2)
	sw	zero, 24(a2)
	li	a0, 77
	sw	a0, 96(a2)
	sd	a1, 104(a2)
	sd	zero, 112(a2)
	sw	zero, 120(a2)
	li	a0, 89
	sw	a0, 192(a2)
	sd	a1, 200(a2)
	sd	zero, 208(a2)
	sw	zero, 216(a2)
	li	a0, 75
	sw	a0, 288(a2)
	sd	a1, 296(a2)
	sd	zero, 304(a2)
	sw	zero, 312(a2)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB5_9:
	lw	a0, 36(s0)
	li	a1, 100
	beq	a0, a1, .LBB5_11
# %bb.10:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB5_11:
	lw	a0, 56(s0)
	sw	zero, 80(s0)
	sw	zero, 288(s0)
	sw	zero, 300(s0)
	addiw	a1, a0, -11
	li	a2, -11
	sw	a0, 76(s0)
	bltu	a2, a1, .LBB5_13
# %bb.12:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	li	a2, 26
	sw	a2, 40(a1)
	li	a1, 10
	sw	a1, 48(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 76(s0)
	blez	a0, .LBB5_5
.LBB5_13:
	ld	a2, 88(s0)
	li	a1, 0
	addi	a2, a2, 12
	li	a3, 3
	slli	a3, a3, 37
	slli	a0, a0, 32
	mulhu	a0, a0, a3
	add	a0, a2, a0
	li	a3, 1
	slli	a3, a3, 32
	addi	a3, a3, 1
.LBB5_14:                               # =>This Inner Loop Header: Depth=1
	sw	a1, -12(a2)
	sd	a3, -4(a2)
	sd	zero, 4(a2)
	sw	zero, 12(a2)
	addi	a2, a2, 96
	addi	a1, a1, 1
	bne	a2, a0, .LBB5_14
	j	.LBB5_5
.LBB5_15:
	lw	a0, 36(s0)
	li	a1, 100
	beq	a0, a1, .LBB5_17
# %bb.16:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB5_17:
	li	a0, 1
	sw	a0, 80(s0)
	ld	a1, 88(s0)
	sw	zero, 300(s0)
	sw	a0, 288(s0)
	sw	a0, 76(s0)
	sw	a0, 0(a1)
	slli	a0, a0, 32
	addi	a0, a0, 1
	sd	a0, 8(a1)
	sd	zero, 16(a1)
	sw	zero, 24(a1)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB5_18:
	lw	a0, 36(s0)
	li	a1, 100
	beq	a0, a1, .LBB5_20
# %bb.19:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB5_20:
	li	a0, 5
	sw	a0, 80(s0)
	sw	zero, 288(s0)
	li	a0, 1
	ld	a1, 88(s0)
	sw	a0, 300(s0)
	li	a2, 4
	sw	a2, 76(s0)
	sw	a0, 0(a1)
	slli	a3, a0, 33
	addi	a3, a3, 2
	sd	a3, 8(a1)
	sd	zero, 16(a1)
	sw	zero, 24(a1)
	li	a4, 2
	sw	a4, 96(a1)
	slli	a4, a0, 32
	addi	a4, a4, 1
	sd	a4, 104(a1)
	sd	a4, 112(a1)
	sw	a0, 120(a1)
	li	a5, 3
	sw	a5, 192(a1)
	sd	a4, 200(a1)
	sd	a4, 208(a1)
	sw	a0, 216(a1)
	sw	a2, 288(a1)
	sd	a3, 296(a1)
	sd	zero, 304(a1)
	sw	zero, 312(a1)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB5_21:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 9
	sw	a1, 40(a0)
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	jr	t1
.Lfunc_end5:
	.size	jpeg_default_colorspace, .Lfunc_end5-jpeg_default_colorspace
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_9
	.word	.LBB5_15
	.word	.LBB5_2
	.word	.LBB5_2
	.word	.LBB5_6
	.word	.LBB5_18
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	jpeg_set_colorspace             # -- Begin function jpeg_set_colorspace
	.p2align	2
	.type	jpeg_set_colorspace,@function
jpeg_set_colorspace:                    # @jpeg_set_colorspace
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	li	a2, 100
	mv	s1, a1
	beq	a0, a2, .LBB6_2
# %bb.1:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB6_2:
	sw	s1, 80(s0)
	sw	zero, 288(s0)
	li	a0, 5
	sw	zero, 300(s0)
	bltu	a0, s1, .LBB6_15
# %bb.3:
	slli	s1, s1, 2
	lui	a0, %hi(.LJTI6_0)
	addi	a0, a0, %lo(.LJTI6_0)
	add	a0, s1, a0
	lw	a0, 0(a0)
	jr	a0
.LBB6_4:
	lw	a0, 56(s0)
	addiw	a1, a0, -11
	li	a2, -11
	sw	a0, 76(s0)
	bltu	a2, a1, .LBB6_6
# %bb.5:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	li	a2, 26
	sw	a2, 40(a1)
	li	a1, 10
	sw	a1, 48(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 76(s0)
	blez	a0, .LBB6_14
.LBB6_6:
	ld	a2, 88(s0)
	li	a1, 0
	addi	a2, a2, 12
	li	a3, 3
	slli	a3, a3, 37
	slli	a0, a0, 32
	mulhu	a0, a0, a3
	add	a0, a2, a0
	li	a3, 1
	slli	a3, a3, 32
	addi	a3, a3, 1
.LBB6_7:                                # =>This Inner Loop Header: Depth=1
	sw	a1, -12(a2)
	sd	a3, -4(a2)
	sd	zero, 4(a2)
	sw	zero, 12(a2)
	addi	a2, a2, 96
	addi	a1, a1, 1
	bne	a2, a0, .LBB6_7
	j	.LBB6_14
.LBB6_8:
	li	a0, 1
	sw	a0, 300(s0)
	ld	a1, 88(s0)
	li	a2, 4
	sw	a2, 76(s0)
	li	a2, 67
	sw	a2, 0(a1)
	slli	a0, a0, 32
	addi	a0, a0, 1
	sd	a0, 8(a1)
	sd	zero, 16(a1)
	sw	zero, 24(a1)
	li	a2, 77
	sw	a2, 96(a1)
	sd	a0, 104(a1)
	sd	zero, 112(a1)
	sw	zero, 120(a1)
	li	a2, 89
	sw	a2, 192(a1)
	sd	a0, 200(a1)
	sd	zero, 208(a1)
	sw	zero, 216(a1)
	li	a2, 75
	sw	a2, 288(a1)
	sd	a0, 296(a1)
	j	.LBB6_13
.LBB6_9:
	li	a0, 1
	sw	a0, 300(s0)
	ld	a1, 88(s0)
	li	a2, 3
	sw	a2, 76(s0)
	li	a2, 82
	sw	a2, 0(a1)
	slli	a0, a0, 32
	addi	a0, a0, 1
	sd	a0, 8(a1)
	sd	zero, 16(a1)
	sw	zero, 24(a1)
	li	a2, 71
	sw	a2, 96(a1)
	sd	a0, 104(a1)
	sd	zero, 112(a1)
	sw	zero, 120(a1)
	li	a2, 66
	sw	a2, 192(a1)
	sd	a0, 200(a1)
	sd	zero, 208(a1)
	sw	zero, 216(a1)
	j	.LBB6_14
.LBB6_10:
	li	a0, 1
	ld	a1, 88(s0)
	sw	a0, 288(s0)
	li	a2, 3
	sw	a2, 76(s0)
	sw	a0, 0(a1)
	slli	a3, a0, 33
	addi	a3, a3, 2
	sd	a3, 8(a1)
	sd	zero, 16(a1)
	sw	zero, 24(a1)
	li	a3, 2
	sw	a3, 96(a1)
	slli	a3, a0, 32
	addi	a3, a3, 1
	sd	a3, 104(a1)
	sd	a3, 112(a1)
	sw	a0, 120(a1)
	sw	a2, 192(a1)
	sd	a3, 200(a1)
	sd	a3, 208(a1)
	sw	a0, 216(a1)
	j	.LBB6_14
.LBB6_11:
	ld	a0, 88(s0)
	li	a1, 1
	sw	a1, 288(s0)
	sw	a1, 76(s0)
	sw	a1, 0(a0)
	slli	a1, a1, 32
	addi	a1, a1, 1
	sd	a1, 8(a0)
	sd	zero, 16(a0)
	sw	zero, 24(a0)
	j	.LBB6_14
.LBB6_12:
	li	a0, 1
	ld	a1, 88(s0)
	sw	a0, 300(s0)
	li	a2, 4
	sw	a2, 76(s0)
	sw	a0, 0(a1)
	slli	a3, a0, 33
	addi	a3, a3, 2
	sd	a3, 8(a1)
	sd	zero, 16(a1)
	sw	zero, 24(a1)
	li	a4, 2
	sw	a4, 96(a1)
	slli	a4, a0, 32
	addi	a4, a4, 1
	sd	a4, 104(a1)
	sd	a4, 112(a1)
	sw	a0, 120(a1)
	li	a5, 3
	sw	a5, 192(a1)
	sd	a4, 200(a1)
	sd	a4, 208(a1)
	sw	a0, 216(a1)
	sw	a2, 288(a1)
	sd	a3, 296(a1)
.LBB6_13:
	sd	zero, 304(a1)
	sw	zero, 312(a1)
.LBB6_14:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB6_15:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 10
	sw	a1, 40(a0)
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	jr	t1
.Lfunc_end6:
	.size	jpeg_set_colorspace, .Lfunc_end6-jpeg_set_colorspace
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI6_0:
	.word	.LBB6_4
	.word	.LBB6_11
	.word	.LBB6_9
	.word	.LBB6_10
	.word	.LBB6_8
	.word	.LBB6_12
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	jpeg_simple_progression         # -- Begin function jpeg_simple_progression
	.p2align	2
	.type	jpeg_simple_progression,@function
jpeg_simple_progression:                # @jpeg_simple_progression
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	lw	s1, 76(s0)
	li	a1, 100
	beq	a0, a1, .LBB7_2
# %bb.1:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB7_2:
	li	a0, 3
	bne	s1, a0, .LBB7_4
# %bb.3:
	lw	a1, 80(s0)
	li	s2, 10
	beq	a1, a0, .LBB7_6
	j	.LBB7_7
.LBB7_4:
	li	a0, 5
	blt	s1, a0, .LBB7_7
# %bb.5:
	li	a0, 6
	mulw	s2, s1, a0
.LBB7_6:
	ld	a0, 504(s0)
	bnez	a0, .LBB7_8
	j	.LBB7_9
.LBB7_7:
	slliw	s2, s1, 2
	addi	s2, s2, 2
	ld	a0, 504(s0)
	beqz	a0, .LBB7_9
.LBB7_8:
	lw	a1, 512(s0)
	bge	a1, s2, .LBB7_12
.LBB7_9:
	li	a1, 10
	mv	a0, s2
	blt	a1, s2, .LBB7_11
# %bb.10:
	li	a0, 10
.LBB7_11:
	ld	a1, 8(s0)
	ld	a3, 0(a1)
	sw	a0, 512(s0)
	li	a1, 36
	mul	a2, a0, a1
	mv	a0, s0
	li	a1, 0
	jalr	a3
	sd	a0, 504(s0)
.LBB7_12:
	sd	a0, 248(s0)
	li	a3, 3
	sw	s2, 240(s0)
	bne	s1, a3, .LBB7_15
# %bb.13:
	lw	a5, 80(s0)
	sw	a3, 0(a0)
	sw	zero, 4(a0)
	li	a2, 1
	sw	a2, 8(a0)
	li	a1, 2
	sw	a1, 12(a0)
	sw	zero, 24(a0)
	sw	zero, 20(a0)
	sw	zero, 28(a0)
	sw	a2, 32(a0)
	sw	a2, 36(a0)
	sw	zero, 40(a0)
	sw	a2, 56(a0)
	li	a4, 5
	sw	a4, 60(a0)
	sw	zero, 64(a0)
	sw	a1, 68(a0)
	sw	a2, 72(a0)
	bne	a5, a3, .LBB7_20
# %bb.14:
	li	a1, 0
	addi	t4, a0, 204
	li	a3, 2
	sw	a3, 76(a0)
	sw	a2, 92(a0)
	li	a4, 63
	sw	a4, 96(a0)
	sw	zero, 100(a0)
	sw	a2, 104(a0)
	sw	a2, 108(a0)
	sw	a2, 112(a0)
	sw	a2, 128(a0)
	sw	a4, 132(a0)
	sw	zero, 136(a0)
	sw	a2, 140(a0)
	sw	a2, 144(a0)
	sw	zero, 148(a0)
	li	a5, 6
	sw	a5, 164(a0)
	sw	a4, 168(a0)
	sw	zero, 172(a0)
	sw	a3, 176(a0)
	sw	a2, 180(a0)
	sw	zero, 184(a0)
	sw	a2, 200(a0)
	li	a2, 356
	li	a4, 352
	li	a5, 348
	li	a6, 344
	li	a7, 328
	li	t0, 324
	li	t1, 320
	li	t2, 316
	li	t3, 312
	li	t5, 308
	li	t6, 292
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	li	x1, 288
	li	x2, 284
	li	x3, 280
	li	x4, 276
	li	x5, 272
	li	x6, 256
	li	x7, 252
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	li	x8, 248
	li	x9, 244
	li	x10, 236
	li	x11, 240
	li	x12, 228
	li	x13, 224
	li	x14, 220
	regsw_c	x8, 0x0(x18)		# 100100100000000000000
	li	x15, 216
	li	x16, 212
	li	x17, 208
	j	.LBB7_21
.LBB7_15:
	li	a1, 5
	bge	s1, a1, .LBB7_22
# %bb.16:
	sw	s1, 0(a0)
	blez	s1, .LBB7_19
# %bb.17:
	li	a1, 0
	addi	a2, a0, 4
	slli	a3, s1, 2
	add	a3, a2, a3
.LBB7_18:                               # =>This Inner Loop Header: Depth=1
	sw	a1, 0(a2)
	addi	a2, a2, 4
	addi	a1, a1, 1
	bne	a2, a3, .LBB7_18
.LBB7_19:
	sw	zero, 24(a0)
	sw	zero, 20(a0)
	sw	zero, 28(a0)
	li	a1, 1
	sw	a1, 32(a0)
	addi	a0, a0, 36
	j	.LBB7_24
.LBB7_20:
	li	a3, 0
	sw	a2, 76(a0)
	sw	a2, 92(a0)
	sw	a4, 96(a0)
	sw	zero, 100(a0)
	sw	a1, 104(a0)
	sw	a2, 108(a0)
	sw	a1, 112(a0)
	sw	a2, 128(a0)
	sw	a4, 132(a0)
	sw	zero, 136(a0)
	sw	a1, 140(a0)
	sw	a2, 144(a0)
	sw	zero, 148(a0)
	li	a4, 6
	sw	a4, 164(a0)
	li	a5, 63
	sw	a5, 168(a0)
	sw	zero, 172(a0)
	sw	a1, 176(a0)
	sw	a2, 180(a0)
	sw	a2, 184(a0)
	sw	a4, 200(a0)
	sw	a5, 204(a0)
	sw	zero, 208(a0)
	sw	a1, 212(a0)
	sw	a2, 216(a0)
	sw	a1, 220(a0)
	sw	a4, 236(a0)
	sw	a5, 240(a0)
	sw	zero, 244(a0)
	sw	a1, 248(a0)
	sw	a2, 252(a0)
	sw	zero, 256(a0)
	sw	a2, 272(a0)
	sw	a5, 276(a0)
	sw	a1, 280(a0)
	sw	a2, 284(a0)
	sw	a2, 288(a0)
	sw	a2, 292(a0)
	sw	a2, 308(a0)
	sw	a5, 312(a0)
	sw	a1, 316(a0)
	sw	a2, 320(a0)
	sw	a2, 324(a0)
	sw	a1, 328(a0)
	sw	a2, 344(a0)
	addi	t4, a0, 348
	li	a2, 500
	li	a4, 496
	li	a5, 492
	li	a6, 488
	li	a7, 472
	li	t0, 468
	li	t1, 464
	li	t2, 460
	li	t3, 456
	li	t5, 452
	li	t6, 436
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	li	x1, 432
	li	x2, 428
	li	x3, 424
	li	x4, 420
	li	x5, 416
	li	x6, 400
	li	x7, 396
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	li	x8, 392
	li	x9, 388
	li	x10, 380
	li	x11, 384
	li	x12, 372
	li	x13, 368
	li	x14, 364
	regsw_c	x8, 0x0(x18)		# 100100100000000000000
	li	x15, 360
	li	x16, 356
	li	x17, 352
.LBB7_21:
	regsw_c	x26, 0xac(x16)		# 100001101000010101100
	li	x18, 63
	sw	x18, 0(t4)
	add	x17, a0, x17
	li	t4, 2
	sw	t4, 0(x17)
	add	x16, a0, x16
	li	x17, 1
	regsw_c	x24, 0x755(x14)		# 011101100011101010101
	sw	x17, 0(x16)
	add	x15, a0, x15
	li	x16, 3
	sw	x16, 0(x15)
	add	x14, a0, x14
	sw	zero, 0(x14)
	add	x13, a0, x13
	regsw_c	x21, 0x2aa(x14)		# 011101010101010101010
	sw	x17, 0(x13)
	add	x12, a0, x12
	sw	t4, 0(x12)
	add	x11, a0, x11
	sw	zero, 0(x11)
	add	x10, a0, x10
	sw	zero, 0(x10)
	regsw_c	x26, 0x55d(x21)		# 101011101010101011101
	add	x9, a0, x9
	sw	x17, 0(x9)
	add	x8, a0, x8
	sw	zero, 0(x8)
	add	x7, a0, x7
	sw	x17, 0(x7)
	add	x6, a0, x6
	regsw_c	x23, 0x2eb(x10)		# 010101011101011101011
	sw	a3, 0(x6)
	add	x5, a0, x5
	sw	x17, 0(x5)
	add	x4, a0, x4
	sw	x18, 0(x4)
	add	x3, a0, x3
	sw	x17, 0(x3)
	regsw_c	x10, 0x608(x21)		# 101010101011000001000
	add	x2, a0, x2
	sw	zero, 0(x2)
	add	x1, a0, x1
	sw	x17, 0(x1)
	add	t6, a0, t6
	sw	x17, 0(t6)
	add	t5, a0, t5
	regsw_c	x2, 0x40(x4)		# 001000001000001000000
	sw	x17, 0(t5)
	add	t3, a0, t3
	sw	x18, 0(t3)
	add	t2, a0, t2
	sw	x17, 0(t2)
	add	t1, a0, t1
	sw	zero, 0(t1)
	add	t0, a0, t0
	regsw_c	x0, 0x41(x4)		# 001000000000001000001
	sw	x17, 0(t0)
	add	a7, a0, a7
	sw	a1, 0(a7)
	add	a6, a0, a6
	sw	x17, 0(a6)
	add	a5, a0, a5
	sw	x18, 0(a5)
	add	a4, a0, a4
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sw	x17, 0(a4)
	add	a0, a0, a2
	sw	zero, 0(a0)
	j	.LBB7_41
.LBB7_22:                               # %.preheader8
	li	a1, 0
	li	a2, 1
.LBB7_23:                               # =>This Inner Loop Header: Depth=1
	sw	a2, 0(a0)
	sw	a1, 4(a0)
	sw	zero, 20(a0)
	sw	zero, 24(a0)
	sw	zero, 28(a0)
	sw	a2, 32(a0)
	addiw	a1, a1, 1
	addi	a0, a0, 36
	bne	s1, a1, .LBB7_23
.LBB7_24:
	blez	s1, .LBB7_34
# %bb.25:                               # %.preheader6
	li	a1, 0
	li	a2, 1
	li	a3, 5
	li	a4, 2
.LBB7_26:                               # =>This Inner Loop Header: Depth=1
	sw	a2, 0(a0)
	sw	a1, 4(a0)
	sw	a2, 20(a0)
	sw	a3, 24(a0)
	sw	zero, 28(a0)
	sw	a4, 32(a0)
	addiw	a1, a1, 1
	addi	a0, a0, 36
	bne	s1, a1, .LBB7_26
# %bb.27:                               # %.preheader5
	li	a1, 0
	li	a2, 1
	li	a3, 6
	li	a4, 63
	li	a5, 2
.LBB7_28:                               # =>This Inner Loop Header: Depth=1
	sw	a2, 0(a0)
	sw	a1, 4(a0)
	sw	a3, 20(a0)
	sw	a4, 24(a0)
	sw	zero, 28(a0)
	sw	a5, 32(a0)
	addiw	a1, a1, 1
	addi	a0, a0, 36
	bne	s1, a1, .LBB7_28
# %bb.29:                               # %.preheader4
	li	a1, 0
	li	a2, 1
	li	a3, 63
	li	a4, 2
.LBB7_30:                               # =>This Inner Loop Header: Depth=1
	sw	a2, 0(a0)
	sw	a1, 4(a0)
	sw	a2, 20(a0)
	sw	a3, 24(a0)
	sw	a4, 28(a0)
	sw	a2, 32(a0)
	addiw	a1, a1, 1
	addi	a0, a0, 36
	bne	s1, a1, .LBB7_30
# %bb.31:
	li	a1, 5
	bge	s1, a1, .LBB7_36
# %bb.32:
	li	a1, 0
	addi	a2, a0, 4
	sw	s1, 0(a0)
	mv	a3, s1
.LBB7_33:                               # =>This Inner Loop Header: Depth=1
	sw	a1, 0(a2)
	addi	a3, a3, -1
	addi	a1, a1, 1
	addi	a2, a2, 4
	bnez	a3, .LBB7_33
	j	.LBB7_35
.LBB7_34:
	sw	s1, 0(a0)
.LBB7_35:
	sw	zero, 24(a0)
	sw	zero, 20(a0)
	li	a1, 1
	sw	a1, 28(a0)
	sw	zero, 32(a0)
	addi	a0, a0, 36
	j	.LBB7_38
.LBB7_36:                               # %.preheader2
	li	a1, 0
	li	a2, 1
.LBB7_37:                               # =>This Inner Loop Header: Depth=1
	sw	a2, 0(a0)
	sw	a1, 4(a0)
	sw	zero, 20(a0)
	sw	zero, 24(a0)
	sw	a2, 28(a0)
	sw	zero, 32(a0)
	addiw	a1, a1, 1
	addi	a0, a0, 36
	bne	s1, a1, .LBB7_37
.LBB7_38:
	blez	s1, .LBB7_41
# %bb.39:                               # %.preheader
	li	a1, 0
	li	a2, 1
	li	a3, 63
.LBB7_40:                               # =>This Inner Loop Header: Depth=1
	sw	a2, 0(a0)
	sw	a1, 4(a0)
	sw	a2, 20(a0)
	sw	a3, 24(a0)
	sw	a2, 28(a0)
	sw	zero, 32(a0)
	addiw	a1, a1, 1
	addi	a0, a0, 36
	bne	s1, a1, .LBB7_40
.LBB7_41:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end7:
	.size	jpeg_simple_progression, .Lfunc_end7-jpeg_simple_progression
                                        # -- End function
	.option	pop
	.type	jpeg_set_linear_quality.std_luminance_quant_tbl,@object # @jpeg_set_linear_quality.std_luminance_quant_tbl
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
jpeg_set_linear_quality.std_luminance_quant_tbl:
	.word	16                              # 0x10
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	16                              # 0x10
	.word	24                              # 0x18
	.word	40                              # 0x28
	.word	51                              # 0x33
	.word	61                              # 0x3d
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	14                              # 0xe
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	58                              # 0x3a
	.word	60                              # 0x3c
	.word	55                              # 0x37
	.word	14                              # 0xe
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	24                              # 0x18
	.word	40                              # 0x28
	.word	57                              # 0x39
	.word	69                              # 0x45
	.word	56                              # 0x38
	.word	14                              # 0xe
	.word	17                              # 0x11
	.word	22                              # 0x16
	.word	29                              # 0x1d
	.word	51                              # 0x33
	.word	87                              # 0x57
	.word	80                              # 0x50
	.word	62                              # 0x3e
	.word	18                              # 0x12
	.word	22                              # 0x16
	.word	37                              # 0x25
	.word	56                              # 0x38
	.word	68                              # 0x44
	.word	109                             # 0x6d
	.word	103                             # 0x67
	.word	77                              # 0x4d
	.word	24                              # 0x18
	.word	35                              # 0x23
	.word	55                              # 0x37
	.word	64                              # 0x40
	.word	81                              # 0x51
	.word	104                             # 0x68
	.word	113                             # 0x71
	.word	92                              # 0x5c
	.word	49                              # 0x31
	.word	64                              # 0x40
	.word	78                              # 0x4e
	.word	87                              # 0x57
	.word	103                             # 0x67
	.word	121                             # 0x79
	.word	120                             # 0x78
	.word	101                             # 0x65
	.word	72                              # 0x48
	.word	92                              # 0x5c
	.word	95                              # 0x5f
	.word	98                              # 0x62
	.word	112                             # 0x70
	.word	100                             # 0x64
	.word	103                             # 0x67
	.word	99                              # 0x63
	.size	jpeg_set_linear_quality.std_luminance_quant_tbl, 256

	.type	jpeg_set_linear_quality.std_chrominance_quant_tbl,@object # @jpeg_set_linear_quality.std_chrominance_quant_tbl
	.p2align	2, 0x0
jpeg_set_linear_quality.std_chrominance_quant_tbl:
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	47                              # 0x2f
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	18                              # 0x12
	.word	21                              # 0x15
	.word	26                              # 0x1a
	.word	66                              # 0x42
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	56                              # 0x38
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	47                              # 0x2f
	.word	66                              # 0x42
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.word	99                              # 0x63
	.size	jpeg_set_linear_quality.std_chrominance_quant_tbl, 256

	.type	std_huff_tables.bits_dc_luminance,@object # @std_huff_tables.bits_dc_luminance
std_huff_tables.bits_dc_luminance:
	.asciz	"\000\000\001\005\001\001\001\001\001\001\000\000\000\000\000\000"
	.size	std_huff_tables.bits_dc_luminance, 17

	.type	std_huff_tables.bits_dc_chrominance,@object # @std_huff_tables.bits_dc_chrominance
std_huff_tables.bits_dc_chrominance:
	.asciz	"\000\000\003\001\001\001\001\001\001\001\001\001\000\000\000\000"
	.size	std_huff_tables.bits_dc_chrominance, 17

	.type	std_huff_tables.val_dc_chrominance,@object # @std_huff_tables.val_dc_chrominance
std_huff_tables.val_dc_chrominance:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013"
	.size	std_huff_tables.val_dc_chrominance, 12

	.type	std_huff_tables.bits_ac_luminance,@object # @std_huff_tables.bits_ac_luminance
std_huff_tables.bits_ac_luminance:
	.ascii	"\000\000\002\001\003\003\002\004\003\005\005\004\004\000\000\001}"
	.size	std_huff_tables.bits_ac_luminance, 17

	.type	std_huff_tables.val_ac_luminance,@object # @std_huff_tables.val_ac_luminance
std_huff_tables.val_ac_luminance:
	.ascii	"\001\002\003\000\004\021\005\022!1A\006\023Qa\007\"q\0242\201\221\241\b#B\261\301\025R\321\360$3br\202\t\n\026\027\030\031\032%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\203\204\205\206\207\210\211\212\222\223\224\225\226\227\230\231\232\242\243\244\245\246\247\250\251\252\262\263\264\265\266\267\270\271\272\302\303\304\305\306\307\310\311\312\322\323\324\325\326\327\330\331\332\341\342\343\344\345\346\347\350\351\352\361\362\363\364\365\366\367\370\371\372"
	.size	std_huff_tables.val_ac_luminance, 162

	.type	std_huff_tables.bits_ac_chrominance,@object # @std_huff_tables.bits_ac_chrominance
std_huff_tables.bits_ac_chrominance:
	.ascii	"\000\000\002\001\002\004\004\003\004\007\005\004\004\000\001\002w"
	.size	std_huff_tables.bits_ac_chrominance, 17

	.type	std_huff_tables.val_ac_chrominance,@object # @std_huff_tables.val_ac_chrominance
std_huff_tables.val_ac_chrominance:
	.ascii	"\000\001\002\003\021\004\005!1\006\022AQ\007aq\023\"2\201\b\024B\221\241\261\301\t#3R\360\025br\321\n\026$4\341%\361\027\030\031\032&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\202\203\204\205\206\207\210\211\212\222\223\224\225\226\227\230\231\232\242\243\244\245\246\247\250\251\252\262\263\264\265\266\267\270\271\272\302\303\304\305\306\307\310\311\312\322\323\324\325\326\327\330\331\332\342\343\344\345\346\347\350\351\352\362\363\364\365\366\367\370\371\372"
	.size	std_huff_tables.val_ac_chrominance, 162

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
