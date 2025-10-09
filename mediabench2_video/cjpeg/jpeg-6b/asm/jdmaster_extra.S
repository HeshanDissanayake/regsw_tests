	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdmaster.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_calc_output_dimensions     # -- Begin function jpeg_calc_output_dimensions
	.p2align	2
	.type	jpeg_calc_output_dimensions,@function
jpeg_calc_output_dimensions:            # @jpeg_calc_output_dimensions
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	li	a1, 202
	beq	a0, a1, .LBB0_2
# %bb.1:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 20
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB0_2:
	lw	a1, 68(s0)
	lw	a2, 72(s0)
	slliw	a0, a1, 3
	bgeu	a2, a0, .LBB0_9
# %bb.3:
	slliw	a0, a1, 2
	bgeu	a2, a0, .LBB0_10
# %bb.4:
	lw	a0, 48(s0)
	slliw	a1, a1, 1
	bgeu	a2, a1, .LBB0_11
# %bb.5:
	lw	a2, 52(s0)
	sw	a0, 136(s0)
	lw	a1, 56(s0)
	sw	a2, 140(s0)
	li	a3, 8
	sw	a3, 416(s0)
	addi	s1, s0, 304
	blez	a1, .LBB0_23
# %bb.6:                                # %.preheader
	ld	a0, 304(s0)
	sgtz	a2, a1
	addi	a4, a0, 36
	addi	a5, a1, -1
	li	a6, 3
	slli	a6, a6, 37
	slli	a5, a5, 32
	mulhu	a5, a5, a6
	add	a5, a5, a0
	addi	a5, a5, 132
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	sw	a3, 0(a4)
	addi	a4, a4, 96
	bne	a4, a5, .LBB0_7
# %bb.8:
	bnez	a2, .LBB0_21
	j	.LBB0_23
.LBB0_9:
	li	s2, 1
	li	s1, 8
	lw	a0, 48(s0)
	j	.LBB0_12
.LBB0_10:
	li	s2, 2
	li	s1, 4
	lw	a0, 48(s0)
	j	.LBB0_12
.LBB0_11:
	li	s2, 4
	li	s1, 2
.LBB0_12:
	slli	a0, a0, 32
	srli	a0, a0, 32
	mv	a1, s1
	call	jdiv_round_up
	lwu	a1, 52(s0)
	sw	a0, 136(s0)
	mv	a0, a1
	mv	a1, s1
	call	jdiv_round_up
	lw	a1, 56(s0)
	sw	a0, 140(s0)
	sw	s2, 416(s0)
	addi	s1, s0, 304
	blez	a1, .LBB0_23
# %bb.13:
	lw	a3, 408(s0)
	ld	a0, 304(s0)
	li	a2, 0
	mulw	a3, a3, s2
	li	a4, 4
	mv	a5, a0
	j	.LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=1
	mv	t0, a7
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=1
	sw	t0, 36(a5)
	addiw	a2, a2, 1
	addi	a5, a5, 96
	beq	a2, a1, .LBB0_20
.LBB0_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	lw	a6, 8(a5)
	slli	a6, a6, 1
	mv	t0, s2
.LBB0_17:                               #   Parent Loop BB0_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a7, t0
	mulw	t0, t0, a6
	blt	a3, t0, .LBB0_14
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	lw	t1, 12(a5)
	lw	t2, 412(s0)
	slliw	t0, a7, 1
	mulw	t1, t0, t1
	mulw	t2, t2, s2
	blt	t2, t1, .LBB0_14
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	blt	a7, a4, .LBB0_17
	j	.LBB0_15
.LBB0_20:
	li	a2, 1
	beqz	a2, .LBB0_23
.LBB0_21:
	li	s2, 0
	addi	s3, a0, 36
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s3)
	lw	a1, 0(s3)
	lwu	a2, 48(s0)
	lw	a3, 408(s0)
	mulw	a0, a1, a0
	mul	a0, a0, a2
	slliw	a1, a3, 3
	call	jdiv_round_up
	lw	a1, -24(s3)
	lw	a2, 0(s3)
	lwu	a3, 52(s0)
	lw	a4, 412(s0)
	sw	a0, 4(s3)
	mulw	a0, a2, a1
	mul	a0, a0, a3
	slliw	a1, a4, 3
	call	jdiv_round_up
	lw	a1, 56(s0)
	sw	a0, 8(s3)
	addiw	s2, s2, 1
	addi	s3, s3, 96
	blt	s2, a1, .LBB0_22
.LBB0_23:
	lw	a3, 64(s0)
	addiw	a0, a3, -1
	li	a4, 4
	mv	a2, a1
	bltu	a4, a0, .LBB0_25
# %bb.24:
	slli	a0, a0, 2
	lui	a2, %hi(.Lswitch.table.jpeg_calc_output_dimensions)
	addi	a2, a2, %lo(.Lswitch.table.jpeg_calc_output_dimensions)
	add	a0, a2, a0
	lw	a2, 0(a0)
.LBB0_25:
	lw	a5, 108(s0)
	sw	a2, 144(s0)
	li	a0, 1
	mv	a4, a2
	beqz	a5, .LBB0_27
# %bb.26:
	li	a4, 1
.LBB0_27:
	lw	a5, 100(s0)
	sw	a4, 148(s0)
	bnez	a5, .LBB0_29
# %bb.28:
	lw	a4, 392(s0)
	beqz	a4, .LBB0_30
.LBB0_29:
	sw	a0, 152(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB0_30:
	li	a4, 2
	bne	a3, a4, .LBB0_29
# %bb.31:
	li	a3, 3
	bne	a1, a3, .LBB0_29
# %bb.32:
	lw	a1, 60(s0)
	bne	a1, a3, .LBB0_29
# %bb.33:
	li	a1, 3
	bne	a2, a1, .LBB0_29
# %bb.34:
	ld	a1, 0(s1)
	lw	a2, 8(a1)
	li	a3, 2
	bne	a2, a3, .LBB0_29
# %bb.35:
	lw	a2, 104(a1)
	li	a0, 1
	bne	a2, a0, .LBB0_29
# %bb.36:
	lw	a2, 200(a1)
	li	a0, 1
	bne	a2, a0, .LBB0_29
# %bb.37:
	lw	a2, 12(a1)
	li	a3, 2
	blt	a3, a2, .LBB0_29
# %bb.38:
	lw	a2, 108(a1)
	li	a0, 1
	bne	a2, a0, .LBB0_29
# %bb.39:
	lw	a2, 204(a1)
	li	a0, 1
	bne	a2, a0, .LBB0_29
# %bb.40:
	lw	a2, 36(a1)
	lw	a3, 416(s0)
	bne	a2, a3, .LBB0_29
# %bb.41:
	lw	a3, 132(a1)
	bne	a3, a2, .LBB0_29
# %bb.42:
	lw	a1, 228(a1)
	bne	a1, a2, .LBB0_29
# %bb.43:
	lw	a0, 412(s0)
	j	.LBB0_29
.Lfunc_end0:
	.size	jpeg_calc_output_dimensions, .Lfunc_end0-jpeg_calc_output_dimensions
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_new_colormap               # -- Begin function jpeg_new_colormap
	.p2align	2
	.type	jpeg_new_colormap,@function
jpeg_new_colormap:                      # @jpeg_new_colormap
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lw	a1, 36(a0)
	ld	s1, 544(a0)
	li	a2, 207
	beq	a1, a2, .LBB1_2
# %bb.1:
	ld	a2, 0(a0)
	sw	a1, 44(a2)
	ld	a1, 0(a0)
	ld	a1, 0(a1)
	li	a3, 20
	sw	a3, 40(a2)
	mv	s0, a0
	jalr	a1
	mv	a0, s0
.LBB1_2:
	lw	a1, 108(a0)
	beqz	a1, .LBB1_6
# %bb.3:
	lw	a1, 128(a0)
	beqz	a1, .LBB1_6
# %bb.4:
	ld	a1, 160(a0)
	beqz	a1, .LBB1_6
# %bb.5:
	ld	a1, 40(s1)
	ld	a2, 24(a1)
	sd	a1, 624(a0)
	jalr	a2
	sw	zero, 16(s1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB1_6:
	ld	a1, 0(a0)
	ld	t1, 0(a1)
	li	a2, 46
	sw	a2, 40(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	jr	t1
.Lfunc_end1:
	.size	jpeg_new_colormap, .Lfunc_end1-jpeg_new_colormap
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_master_decompress         # -- Begin function jinit_master_decompress
	.p2align	2
	.type	jinit_master_decompress,@function
jinit_master_decompress:                # @jinit_master_decompress
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 48
	mv	a0, s1
	jalr	a3
	mv	s0, a0
	sd	a0, 544(s1)
	lui	a0, %hi(prepare_for_output_pass)
	addi	a0, a0, %lo(prepare_for_output_pass)
	sd	a0, 0(s0)
	lui	a0, %hi(finish_output_pass)
	addi	a0, a0, %lo(finish_output_pass)
	sd	a0, 8(s0)
	sw	zero, 16(s0)
	mv	a0, s1
	call	jpeg_calc_output_dimensions
	ld	a0, 8(s1)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 1408
	mv	a0, s1
	jalr	a3
	mv	s2, a0
	addi	s3, a0, 256
	sd	s3, 424(s1)
	li	a2, 256
	li	s4, 256
	li	a1, 0
	call	memset
	li	a0, 0
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	add	a1, s3, a0
	sb	a0, 0(a1)
	addi	a0, a0, 1
	bne	a0, s4, .LBB2_1
# %bb.2:
	addi	a0, s2, 512
	li	a1, 255
	li	a2, 384
	call	memset
	addi	a0, s2, 896
	li	a2, 384
	li	a1, 0
	call	memset
	ld	a1, 424(s1)
	addi	a0, s2, 1280
	li	a2, 128
	call	memcpy
	lwu	a0, 136(s1)
	lw	a1, 144(s1)
	mul	a0, a1, a0
	srli	a0, a0, 32
	beqz	a0, .LBB2_4
# %bb.3:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 70
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB2_4:
	lw	a1, 100(s1)
	li	a0, 0
	sw	zero, 24(s0)
	bnez	a1, .LBB2_20
# %bb.5:
	lw	a0, 392(s1)
	bnez	a0, .LBB2_19
# %bb.6:
	lw	a1, 60(s1)
	li	a0, 3
	bne	a1, a0, .LBB2_19
# %bb.7:
	lw	a1, 56(s1)
	bne	a1, a0, .LBB2_19
# %bb.8:
	lw	a0, 64(s1)
	li	a1, 2
	bne	a0, a1, .LBB2_19
# %bb.9:
	lw	a0, 144(s1)
	li	a1, 3
	bne	a0, a1, .LBB2_19
# %bb.10:
	ld	a0, 304(s1)
	lw	a1, 8(a0)
	li	a2, 2
	bne	a1, a2, .LBB2_19
# %bb.11:
	lw	a2, 104(a0)
	li	a1, 1
	bne	a2, a1, .LBB2_19
# %bb.12:
	lw	a2, 200(a0)
	bne	a2, a1, .LBB2_19
# %bb.13:
	lw	a1, 12(a0)
	li	a2, 2
	blt	a2, a1, .LBB2_19
# %bb.14:
	lw	a2, 108(a0)
	li	a1, 1
	bne	a2, a1, .LBB2_19
# %bb.15:
	lw	a2, 204(a0)
	bne	a2, a1, .LBB2_19
# %bb.16:
	lw	a1, 36(a0)
	lw	a2, 416(s1)
	bne	a1, a2, .LBB2_19
# %bb.17:
	lw	a2, 132(a0)
	bne	a2, a1, .LBB2_19
# %bb.18:
	lw	a0, 228(a0)
	xor	a0, a0, a1
	seqz	a0, a0
	j	.LBB2_20
.LBB2_19:
	li	a0, 0
.LBB2_20:
	sd	zero, 32(s0)
	sd	zero, 40(s0)
	lw	a1, 108(s1)
	sw	a0, 28(s0)
	beqz	a1, .LBB2_28
# %bb.21:
	lw	a0, 88(s1)
	bnez	a0, .LBB2_23
# %bb.22:
	sw	zero, 124(s1)
	sd	zero, 128(s1)
.LBB2_23:
	lw	a0, 92(s1)
	beqz	a0, .LBB2_25
# %bb.24:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 47
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB2_25:
	lw	a0, 144(s1)
	li	a1, 3
	bne	a0, a1, .LBB2_29
# %bb.26:
	ld	a0, 160(s1)
	beqz	a0, .LBB2_55
# %bb.27:
	li	a0, 1
	sw	a0, 128(s1)
	j	.LBB2_30
.LBB2_28:
	sw	zero, 124(s1)
	sd	zero, 128(s1)
	j	.LBB2_35
.LBB2_29:
	li	a0, 1
	sw	a0, 124(s1)
	sd	zero, 128(s1)
	sd	zero, 160(s1)
.LBB2_30:
	lw	a0, 124(s1)
	beqz	a0, .LBB2_32
# %bb.31:
	mv	a0, s1
	call	jinit_1pass_quantizer
	ld	a0, 624(s1)
	sd	a0, 32(s0)
.LBB2_32:
	lw	a0, 132(s1)
	bnez	a0, .LBB2_34
# %bb.33:
	lw	a0, 128(s1)
	beqz	a0, .LBB2_35
.LBB2_34:
	mv	a0, s1
	call	jinit_2pass_quantizer
	ld	a0, 624(s1)
	sd	a0, 40(s0)
.LBB2_35:
	lw	a0, 92(s1)
	beqz	a0, .LBB2_48
# %bb.36:
	mv	a0, s1
	call	jinit_inverse_dct
	lw	a0, 316(s1)
	beqz	a0, .LBB2_52
.LBB2_37:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 1
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
	ld	a0, 576(s1)
	lw	a0, 32(a0)
	li	a1, 1
	bnez	a0, .LBB2_39
.LBB2_38:
	lw	a0, 88(s1)
	snez	a1, a0
.LBB2_39:
	mv	a0, s1
	call	jinit_d_coef_controller
	lw	a0, 92(s1)
	bnez	a0, .LBB2_41
# %bb.40:
	mv	a0, s1
	li	a1, 0
	call	jinit_d_main_controller
.LBB2_41:
	ld	a0, 8(s1)
	ld	a1, 48(a0)
	mv	a0, s1
	jalr	a1
	ld	a0, 576(s1)
	ld	a1, 16(a0)
	mv	a0, s1
	jalr	a1
	ld	a0, 16(s1)
	beqz	a0, .LBB2_47
# %bb.42:
	lw	a1, 88(s1)
	bnez	a1, .LBB2_47
# %bb.43:
	ld	a1, 576(s1)
	lw	a1, 32(a1)
	beqz	a1, .LBB2_47
# %bb.44:
	lw	a2, 312(s1)
	lw	a1, 56(s1)
	beqz	a2, .LBB2_46
# %bb.45:
	slli	a2, a1, 1
	add	a1, a2, a1
	addiw	a1, a1, 2
.LBB2_46:
	lwu	a2, 420(s1)
	sd	zero, 8(a0)
	mul	a1, a1, a2
	lw	a2, 132(s1)
	sd	a1, 16(a0)
	sw	zero, 24(a0)
	lw	a1, 24(s0)
	seqz	a2, a2
	xori	a2, a2, 3
	sw	a2, 28(a0)
	addi	a1, a1, 1
	sw	a1, 24(s0)
.LBB2_47:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB2_48:
	lw	a0, 28(s0)
	beqz	a0, .LBB2_50
# %bb.49:
	mv	a0, s1
	call	jinit_merged_upsampler
	j	.LBB2_51
.LBB2_50:
	mv	a0, s1
	call	jinit_color_deconverter
	mv	a0, s1
	call	jinit_upsampler
.LBB2_51:
	lw	a1, 132(s1)
	mv	a0, s1
	call	jinit_d_post_controller
	mv	a0, s1
	call	jinit_inverse_dct
	lw	a0, 316(s1)
	bnez	a0, .LBB2_37
.LBB2_52:
	lw	a0, 312(s1)
	beqz	a0, .LBB2_54
# %bb.53:
	mv	a0, s1
	call	jinit_phuff_decoder
	ld	a0, 576(s1)
	lw	a0, 32(a0)
	li	a1, 1
	bnez	a0, .LBB2_39
	j	.LBB2_38
.LBB2_54:
	mv	a0, s1
	call	jinit_huff_decoder
	ld	a0, 576(s1)
	lw	a0, 32(a0)
	li	a1, 1
	bnez	a0, .LBB2_39
	j	.LBB2_38
.LBB2_55:
	lw	a0, 116(s1)
	beqz	a0, .LBB2_57
# %bb.56:
	li	a0, 1
	sw	a0, 132(s1)
	j	.LBB2_30
.LBB2_57:
	li	a0, 1
	sw	a0, 124(s1)
	j	.LBB2_30
.Lfunc_end2:
	.size	jinit_master_decompress, .Lfunc_end2-jinit_master_decompress
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function prepare_for_output_pass
	.type	prepare_for_output_pass,@function
prepare_for_output_pass:                # @prepare_for_output_pass
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s2, 544(a0)
	lw	a0, 16(s2)
	beqz	a0, .LBB3_3
# %bb.1:
	ld	a0, 624(s0)
	ld	a2, 0(a0)
	sw	zero, 16(s2)
	mv	a0, s0
	li	a1, 0
	jalr	a2
	ld	a0, 568(s0)
	ld	a2, 0(a0)
	li	a1, 2
	li	s1, 2
	mv	a0, s0
	jalr	a2
.LBB3_2:
	ld	a0, 552(s0)
	ld	a2, 0(a0)
	mv	a0, s0
	mv	a1, s1
	jalr	a2
	j	.LBB3_6
.LBB3_3:
	lw	a0, 108(s0)
	beqz	a0, .LBB3_5
# %bb.4:
	ld	a0, 160(s0)
	beqz	a0, .LBB3_16
.LBB3_5:
	ld	a0, 600(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 560(s0)
	ld	a1, 16(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 92(s0)
	beqz	a0, .LBB3_11
.LBB3_6:
	ld	a0, 16(s0)
	beqz	a0, .LBB3_10
# %bb.7:
	lw	a1, 24(s2)
	lw	a2, 16(s2)
	sw	a1, 24(a0)
	lw	a3, 88(s0)
	seqz	a2, a2
	subw	a1, a1, a2
	addi	a1, a1, 2
	sw	a1, 28(a0)
	beqz	a3, .LBB3_10
# %bb.8:
	ld	a2, 576(s0)
	lw	a2, 36(a2)
	bnez	a2, .LBB3_10
# %bb.9:
	lw	a2, 132(s0)
	seqz	a2, a2
	subw	a1, a1, a2
	addi	a1, a1, 2
	sw	a1, 28(a0)
.LBB3_10:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB3_11:
	lw	a0, 28(s2)
	bnez	a0, .LBB3_13
# %bb.12:
	ld	a0, 616(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
.LBB3_13:
	ld	a0, 608(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 108(s0)
	beqz	a0, .LBB3_15
# %bb.14:
	ld	a0, 624(s0)
	ld	a2, 0(a0)
	lw	a1, 16(s2)
	mv	a0, s0
	jalr	a2
.LBB3_15:
	ld	a0, 568(s0)
	lw	a1, 16(s2)
	ld	a2, 0(a0)
	seqz	a0, a1
	addi	a0, a0, -1
	andi	a1, a0, 3
	mv	a0, s0
	jalr	a2
	li	s1, 0
	j	.LBB3_2
.LBB3_16:
	lw	a0, 116(s0)
	beqz	a0, .LBB3_19
# %bb.17:
	lw	a0, 132(s0)
	beqz	a0, .LBB3_19
# %bb.18:
	ld	a0, 40(s2)
	sd	a0, 624(s0)
	li	a0, 1
	sw	a0, 16(s2)
	j	.LBB3_5
.LBB3_19:
	lw	a0, 124(s0)
	beqz	a0, .LBB3_21
# %bb.20:
	ld	a0, 32(s2)
	sd	a0, 624(s0)
	j	.LBB3_5
.LBB3_21:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 46
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB3_5
.Lfunc_end3:
	.size	prepare_for_output_pass, .Lfunc_end3-prepare_for_output_pass
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_output_pass
	.type	finish_output_pass,@function
finish_output_pass:                     # @finish_output_pass
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lw	a1, 108(a0)
	ld	s0, 544(a0)
	beqz	a1, .LBB4_2
# %bb.1:
	ld	a1, 624(a0)
	ld	a1, 16(a1)
	jalr	a1
.LBB4_2:
	lw	a0, 24(s0)
	addi	a0, a0, 1
	sw	a0, 24(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end4:
	.size	finish_output_pass, .Lfunc_end4-finish_output_pass
                                        # -- End function
	.option	pop
	.type	.Lswitch.table.jpeg_calc_output_dimensions,@object # @switch.table.jpeg_calc_output_dimensions
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.jpeg_calc_output_dimensions:
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.size	.Lswitch.table.jpeg_calc_output_dimensions, 20

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
