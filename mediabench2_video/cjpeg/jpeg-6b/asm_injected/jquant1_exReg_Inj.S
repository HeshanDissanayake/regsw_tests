	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jquant1.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_1pass_quantizer           # -- Begin function jinit_1pass_quantizer
	.p2align	2
	.type	jinit_1pass_quantizer,@function
jinit_1pass_quantizer:                  # @jinit_1pass_quantizer
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	sd	s6, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 152
	li	s1, 1
	mv	a0, s0
	jalr	a3
	sd	a0, 624(s0)
	lui	a1, %hi(start_pass_1_quant)
	addi	a1, a1, %lo(start_pass_1_quant)
	sd	a1, 0(a0)
	lui	a1, %hi(finish_pass_1_quant)
	addi	a1, a1, %lo(finish_pass_1_quant)
	sd	a1, 16(a0)
	lui	a1, %hi(new_color_map_1_quant)
	addi	a1, a1, %lo(new_color_map_1_quant)
	lw	a2, 144(s0)
	sd	a1, 24(a0)
	sd	zero, 112(a0)
	li	a1, 5
	sd	zero, 80(a0)
	bge	a2, a1, .LBB0_17
# %bb.1:
	lw	s1, 120(s0)
	li	a0, 257
	bge	s1, a0, .LBB0_18
.LBB0_2:
	lw	s5, 144(s0)
	li	a0, 2
	blt	s5, a0, .LBB0_19
.LBB0_3:                                # %.preheader9
	addi	a1, s5, -1
	li	a2, 1
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	mv	s6, a2
	addi	a2, a2, 1
	mv	a3, a1
	mv	a0, a2
.LBB0_5:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	a3, a3, -1
	mul	a0, a0, a2
	bnez	a3, .LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	bge	s1, a0, .LBB0_4
# %bb.7:
	ld	s2, 624(s0)
	sext.w	a1, s6
	li	s4, 1
	bltu	s4, a1, .LBB0_9
.LBB0_8:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 56
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB0_9:
	addi	s3, s2, 60
	blez	s5, .LBB0_15
# %bb.10:
	slli	a0, s5, 2
	add	a0, a0, s2
	addi	a0, a0, 60
	li	s4, 1
	mv	a1, s3
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	sw	s6, 0(a1)
	addi	a1, a1, 4
	mul	s4, s4, s6
	bne	a1, a0, .LBB0_11
# %bb.12:
	lw	a0, 64(s0)
	addi	a0, a0, -2
	seqz	a0, a0
	slli	a0, a0, 2
	add	a3, s3, a0
	lw	a4, 0(a3)
	divw	a0, s4, a4
	addiw	a4, a4, 1
	mul	a2, a0, a4
	blt	s1, a2, .LBB0_15
# %bb.13:
	li	a0, 1
	bne	s5, a0, .LBB0_44
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	sw	a4, 0(a3)
	lw	a0, 64(s0)
	addi	a0, a0, -2
	seqz	a0, a0
	slli	a0, a0, 2
	add	a3, s3, a0
	lw	a4, 0(a3)
	mv	s4, a2
	divw	a0, a2, a4
	addiw	a4, a4, 1
	mul	a2, a0, a4
	bge	s1, a2, .LBB0_14
.LBB0_15:
	lw	a1, 144(s0)
	ld	a0, 0(s0)
	li	a2, 3
	sw	s4, 44(a0)
	bne	a1, a2, .LBB0_22
# %bb.16:
	lw	a1, 60(s2)
	sw	a1, 48(a0)
	lw	a1, 64(s2)
	sw	a1, 52(a0)
	lw	a1, 68(s2)
	sw	a1, 56(a0)
	li	a1, 94
	mv	a2, a0
	j	.LBB0_23
.LBB0_17:
	ld	a0, 0(s0)
	slli	s1, s1, 34
	addi	a1, s1, 55
	sd	a1, 40(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lw	s1, 120(s0)
	li	a0, 257
	blt	s1, a0, .LBB0_2
.LBB0_18:
	ld	a0, 0(s0)
	li	a1, 1
	slli	a1, a1, 40
	addi	a1, a1, 57
	sd	a1, 40(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lw	s1, 120(s0)
	lw	s5, 144(s0)
	li	a0, 2
	bge	s5, a0, .LBB0_3
.LBB0_19:
	mv	s6, s1
	bgtz	s1, .LBB0_21
# %bb.20:
	li	s6, 1
.LBB0_21:
	addi	a0, s6, 1
	ld	s2, 624(s0)
	sext.w	a1, s6
	li	s4, 1
	bgeu	s4, a1, .LBB0_8
	j	.LBB0_9
.LBB0_22:
	ld	a2, 0(s0)
	li	a1, 95
.LBB0_23:
	sw	a1, 40(a0)
	ld	a2, 8(a2)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	ld	a0, 8(s0)
	ld	a4, 16(a0)
	lw	a3, 144(s0)
	sext.w	s1, s4
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a4
	lw	a4, 144(s0)
	blez	a4, .LBB0_39
# %bb.24:
	li	a1, 0
	mv	a2, s4
	j	.LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_27 Depth=1
	lw	a4, 144(s0)
.LBB0_26:                               #   in Loop: Header=BB0_27 Depth=1
	addi	a1, a1, 1
	bge	a1, a4, .LBB0_39
.LBB0_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #       Child Loop BB0_33 Depth 3
                                        #         Child Loop BB0_34 Depth 4
	slli	a3, a1, 2
	add	a3, s3, a3
	lw	a3, 0(a3)
	mv	t1, a2
	divw	a2, a2, a3
	blez	a3, .LBB0_26
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	blez	a2, .LBB0_36
# %bb.29:                               #   in Loop: Header=BB0_27 Depth=1
	li	a4, 0
	li	a5, 0
	addiw	a6, a3, -1
	srliw	a7, a6, 1
	slli	t0, a1, 3
	add	t0, a0, t0
	sext.w	t1, t1
	j	.LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_31 Depth=2
	addi	a4, a4, 1
	add	a5, a5, a2
	beq	a4, a3, .LBB0_25
.LBB0_31:                               #   Parent Loop BB0_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_33 Depth 3
                                        #         Child Loop BB0_34 Depth 4
	mulw	t2, a2, a4
	bge	t2, s1, .LBB0_30
# %bb.32:                               #   in Loop: Header=BB0_31 Depth=2
	li	t2, 0
	mul	t3, a2, a4
	add	t3, a2, t3
	slli	t4, a4, 8
	sub	t4, t4, a4
	add	t4, t4, a7
	divu	t4, t4, a6
	mv	t5, a5
.LBB0_33:                               #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_34 Depth 4
	mul	t6, t1, t2
	add	t6, t3, t6
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, t5
.LBB0_34:                               #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        #       Parent Loop BB0_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	regsw_c	x28, 0x480(x19)		# 100111110010010000000
	ld	x2, 0(t0)
	add	x2, x2, x1
	addi	x1, x1, 1
	sb	t4, 0(x2)
	bne	x1, t6, .LBB0_34
# %bb.35:                               #   in Loop: Header=BB0_33 Depth=3
	add	t5, t5, t1
	addi	t2, t2, 1
	blt	t5, s1, .LBB0_33
	j	.LBB0_30
.LBB0_36:                               #   in Loop: Header=BB0_27 Depth=1
	blez	s1, .LBB0_26
# %bb.37:                               # %.preheader
                                        #   in Loop: Header=BB0_27 Depth=1
	li	a3, 0
.LBB0_38:                               #   Parent Loop BB0_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addw	a3, a3, t1
	blt	a3, s1, .LBB0_38
	j	.LBB0_26
.LBB0_39:
	sd	a0, 32(s2)
	sw	s4, 40(s2)
	mv	a0, s0
	call	create_colorindex
	lw	a0, 112(s0)
	li	a1, 2
	bne	a0, a1, .LBB0_43
# %bb.40:
	lw	a0, 144(s0)
	blez	a0, .LBB0_43
# %bb.41:
	lw	a0, 136(s0)
	li	s2, 0
	ld	a1, 624(s0)
	addi	a0, a0, 2
	slli	a0, a0, 32
	srli	s1, a0, 31
	addi	s3, a1, 112
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 8(s0)
	ld	a3, 8(a0)
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a3
	lw	a1, 144(s0)
	sd	a0, 0(s3)
	addi	s2, s2, 1
	addi	s3, s3, 8
	blt	s2, a1, .LBB0_42
.LBB0_43:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB0_44:                               # %.preheader7
	addi	s5, s5, -1
	lui	a0, %hi(select_ncolors.RGB_order+4)
	addi	a0, a0, %lo(select_ncolors.RGB_order+4)
	li	a1, 2
	j	.LBB0_47
.LBB0_45:                               #   in Loop: Header=BB0_47 Depth=1
	lw	a2, 64(s0)
	mv	s4, a6
.LBB0_46:                               #   in Loop: Header=BB0_47 Depth=1
	addi	a2, a2, -2
	seqz	a2, a2
	slli	a2, a2, 2
	add	a3, s3, a2
	lw	a4, 0(a3)
	divw	a2, s4, a4
	addiw	a4, a4, 1
	mul	a2, a2, a4
	blt	s1, a2, .LBB0_15
.LBB0_47:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_48 Depth 2
	sw	a4, 0(a3)
	li	a3, 1
	mv	a4, a0
	mv	a5, s5
	mv	s4, a2
.LBB0_48:                               #   Parent Loop BB0_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, 64(s0)
	mv	a6, a3
	bne	a2, a1, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_48 Depth=2
	lw	a6, 0(a4)
.LBB0_50:                               #   in Loop: Header=BB0_48 Depth=2
	slli	a6, a6, 2
	add	a7, s3, a6
	lw	t0, 0(a7)
	divw	a6, s4, t0
	addiw	t0, t0, 1
	mul	a6, a6, t0
	blt	s1, a6, .LBB0_46
# %bb.51:                               #   in Loop: Header=BB0_48 Depth=2
	sw	t0, 0(a7)
	addi	a5, a5, -1
	addi	a4, a4, 4
	addiw	a3, a3, 1
	mv	s4, a6
	bnez	a5, .LBB0_48
	j	.LBB0_45
.Lfunc_end0:
	.size	jinit_1pass_quantizer, .Lfunc_end0-jinit_1pass_quantizer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_1_quant
	.type	start_pass_1_quant,@function
start_pass_1_quant:                     # @start_pass_1_quant
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s1, 624(a0)
	ld	a1, 32(s1)
	lw	a2, 40(s1)
	lw	a0, 112(a0)
	sd	a1, 160(s0)
	li	a1, 2
	sw	a2, 156(s0)
	beq	a0, a1, .LBB1_7
# %bb.1:
	li	a1, 1
	beq	a0, a1, .LBB1_5
# %bb.2:
	bnez	a0, .LBB1_9
# %bb.3:
	lw	a0, 144(s0)
	li	a1, 3
	bne	a0, a1, .LBB1_23
# %bb.4:
	lui	a0, %hi(color_quantize3)
	addi	a0, a0, %lo(color_quantize3)
	j	.LBB1_24
.LBB1_5:
	lw	a0, 144(s0)
	li	a1, 3
	beq	a0, a1, .LBB1_10
# %bb.6:
	lui	a0, %hi(quantize_ord_dither)
	addi	a0, a0, %lo(quantize_ord_dither)
	lw	a1, 56(s1)
	sd	a0, 8(s1)
	sw	zero, 76(s1)
	bnez	a1, .LBB1_12
	j	.LBB1_11
.LBB1_7:
	ld	a0, 112(s1)
	lui	a1, %hi(quantize_fs_dither)
	addi	a1, a1, %lo(quantize_fs_dither)
	sd	a1, 8(s1)
	sw	zero, 144(s1)
	addi	s2, s1, 112
	beqz	a0, .LBB1_25
# %bb.8:
	lw	a1, 144(s0)
	j	.LBB1_28
.LBB1_9:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 48
	sw	a1, 40(a0)
	mv	a0, s0
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	jr	t1
.LBB1_10:
	lui	a0, %hi(quantize3_ord_dither)
	addi	a0, a0, %lo(quantize3_ord_dither)
	lw	a1, 56(s1)
	sd	a0, 8(s1)
	sw	zero, 76(s1)
	bnez	a1, .LBB1_12
.LBB1_11:
	mv	a0, s0
	call	create_colorindex
.LBB1_12:
	ld	a0, 80(s1)
	bnez	a0, .LBB1_31
# %bb.13:
	lw	a1, 144(s0)
	blez	a1, .LBB1_31
# %bb.14:
	ld	a0, 624(s0)
	li	s1, 0
	addi	s2, a0, 60
	addi	s3, a0, 80
	lui	a0, %hi(base_dither_matrix)
	addi	a0, a0, %lo(base_dither_matrix)
	addi	s4, a0, 7
	li	s5, 255
	addi	s6, a0, 263
	j	.LBB1_17
.LBB1_15:                               #   in Loop: Header=BB1_17 Depth=1
	ld	a0, 0(a2)
	beqz	a0, .LBB1_20
.LBB1_16:                               #   in Loop: Header=BB1_17 Depth=1
	slli	a2, s1, 3
	add	a2, s3, a2
	addi	s1, s1, 1
	sd	a0, 0(a2)
	bge	s1, a1, .LBB1_31
.LBB1_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_18 Depth 2
                                        #     Child Loop BB1_21 Depth 2
	slli	a0, s1, 2
	add	a0, s2, a0
	lw	s7, 0(a0)
	mv	a0, s1
	mv	a3, s2
	mv	a2, s3
	beqz	s1, .LBB1_20
.LBB1_18:                               #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a4, 0(a3)
	beq	s7, a4, .LBB1_15
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=2
	addi	a2, a2, 8
	addi	a0, a0, -1
	addi	a3, a3, 4
	bnez	a0, .LBB1_18
.LBB1_20:                               #   in Loop: Header=BB1_17 Depth=1
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 1024
	mv	a0, s0
	jalr	a3
	slli	s7, s7, 9
	addi	a1, s7, -512
	addi	a2, a0, 32
	mv	a3, s4
.LBB1_21:                               #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a4, -7(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, -32(a2)
	lbu	a4, -6(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, -28(a2)
	lbu	a4, -5(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, -24(a2)
	lbu	a4, -4(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, -20(a2)
	lbu	a4, -3(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, -16(a2)
	lbu	a4, -2(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, -12(a2)
	lbu	a4, -1(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, -8(a2)
	lbu	a4, 0(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, -4(a2)
	lbu	a4, 1(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, 0(a2)
	lbu	a4, 2(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, 4(a2)
	lbu	a4, 3(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, 8(a2)
	lbu	a4, 4(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, 12(a2)
	lbu	a4, 5(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, 16(a2)
	lbu	a4, 6(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, 20(a2)
	lbu	a4, 7(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, 24(a2)
	lbu	a4, 8(a3)
	slli	a4, a4, 1
	sub	a4, s5, a4
	slli	a5, a4, 8
	sub	a5, a5, a4
	div	a4, a5, a1
	sw	a4, 28(a2)
	addi	a3, a3, 16
	addi	a2, a2, 64
	bne	a3, s6, .LBB1_21
# %bb.22:                               #   in Loop: Header=BB1_17 Depth=1
	lw	a1, 144(s0)
	j	.LBB1_16
.LBB1_23:
	lui	a0, %hi(color_quantize)
	addi	a0, a0, %lo(color_quantize)
.LBB1_24:
	sd	a0, 8(s1)
	j	.LBB1_31
.LBB1_25:
	lw	a0, 144(s0)
	blez	a0, .LBB1_31
# %bb.26:
	lw	a0, 136(s0)
	li	s3, 0
	addi	a0, a0, 2
	slli	a0, a0, 32
	srli	s1, a0, 31
	mv	s4, s2
.LBB1_27:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 8(s0)
	ld	a3, 8(a0)
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a3
	lw	a1, 144(s0)
	sd	a0, 0(s4)
	addi	s3, s3, 1
	addi	s4, s4, 8
	blt	s3, a1, .LBB1_27
.LBB1_28:
	blez	a1, .LBB1_31
# %bb.29:                               # %.preheader2
	lw	a0, 136(s0)
	li	s3, 0
	addi	a0, a0, 2
	slli	a0, a0, 32
	srli	s1, a0, 31
.LBB1_30:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s2)
	mv	a1, s1
	call	jzero_far
	lw	a0, 144(s0)
	addi	s3, s3, 1
	addi	s2, s2, 8
	blt	s3, a0, .LBB1_30
.LBB1_31:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end1:
	.size	start_pass_1_quant, .Lfunc_end1-start_pass_1_quant
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_pass_1_quant
	.type	finish_pass_1_quant,@function
finish_pass_1_quant:                    # @finish_pass_1_quant
# %bb.0:
	ret
.Lfunc_end2:
	.size	finish_pass_1_quant, .Lfunc_end2-finish_pass_1_quant
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function new_color_map_1_quant
	.type	new_color_map_1_quant,@function
new_color_map_1_quant:                  # @new_color_map_1_quant
# %bb.0:
	ld	a1, 0(a0)
	ld	t1, 0(a1)
	li	a2, 46
	sw	a2, 40(a1)
	jr	t1
.Lfunc_end3:
	.size	new_color_map_1_quant, .Lfunc_end3-new_color_map_1_quant
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function create_colorindex
	.type	create_colorindex,@function
create_colorindex:                      # @create_colorindex
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	s1, 112(a0)
	ld	s2, 624(a0)
	addi	a0, s1, -1
	seqz	a0, a0
	sw	a0, 56(s2)
	ld	a0, 8(s0)
	ld	a4, 16(a0)
	lw	a3, 144(s0)
	li	a0, 1
	li	a2, 766
	beq	s1, a0, .LBB4_2
# %bb.1:
	li	a2, 256
.LBB4_2:
	li	a1, 1
	mv	a0, s0
	jalr	a4
	lw	a1, 144(s0)
	sd	a0, 48(s2)
	blez	a1, .LBB4_15
# %bb.3:
	li	a0, 0
	lw	a1, 40(s2)
	addi	a2, s2, 60
	li	a3, 1
	li	a4, 510
	li	a5, 256
	li	a6, -255
	j	.LBB4_5
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	lw	a7, 144(s0)
	addi	a0, a0, 1
	bge	a0, a7, .LBB4_15
.LBB4_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #       Child Loop BB4_11 Depth 3
                                        #     Child Loop BB4_14 Depth 2
	slli	a7, a0, 2
	add	a7, a2, a7
	lw	t2, 0(a7)
	ld	t3, 48(s2)
	slli	a7, a0, 3
	bne	s1, a3, .LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	add	t3, t3, a7
	ld	t0, 0(t3)
	addi	t0, t0, 255
	sd	t0, 0(t3)
	ld	t3, 48(s2)
.LBB4_7:                                #   in Loop: Header=BB4_5 Depth=1
	li	t0, 0
	li	t1, 0
	divw	a1, a1, t2
	add	a7, t3, a7
	ld	a7, 0(a7)
	addiw	t3, t2, -1
	addi	t4, t3, 255
	slliw	t2, t3, 1
	div	t4, t4, t2
	addi	t3, t3, 765
	j	.LBB4_9
.LBB4_8:                                #   in Loop: Header=BB4_9 Depth=2
	mul	t5, t1, a1
	add	t6, a7, t0
	addi	t0, t0, 1
	sb	t5, 0(t6)
	beq	t0, a5, .LBB4_12
.LBB4_9:                                #   Parent Loop BB4_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_11 Depth 3
	sext.w	t5, t4
	bge	t5, t0, .LBB4_8
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=2
	mul	t5, t1, a4
	add	t5, t3, t5
.LBB4_11:                               #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	div	t4, t5, t2
	sext.w	t6, t4
	addiw	t1, t1, 1
	addi	t5, t5, 510
	blt	t6, t0, .LBB4_11
	j	.LBB4_8
.LBB4_12:                               #   in Loop: Header=BB4_5 Depth=1
	bne	s1, a3, .LBB4_4
# %bb.13:                               #   in Loop: Header=BB4_5 Depth=1
	lbu	t0, 0(a7)
	li	t1, 0
	addi	t2, a7, 256
	addi	t3, a7, -1
.LBB4_14:                               #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	t4, t3, t1
	sb	t0, 0(t4)
	lbu	t4, 255(a7)
	sb	t4, 0(t2)
	addi	t1, t1, -1
	addi	t2, t2, 1
	bne	t1, a6, .LBB4_14
	j	.LBB4_4
.LBB4_15:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	create_colorindex, .Lfunc_end4-create_colorindex
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function color_quantize3
	.type	color_quantize3,@function
color_quantize3:                        # @color_quantize3
# %bb.0:
	blez	a3, .LBB5_6
# %bb.1:
	lw	a7, 136(a0)
	beqz	a7, .LBB5_6
# %bb.2:
	ld	a0, 624(a0)
	ld	a6, 48(a0)
	li	a0, 0
	ld	a4, 0(a6)
	ld	a5, 8(a6)
	ld	a6, 16(a6)
	addi	a7, a7, -1
	slli	a7, a7, 32
	srli	a7, a7, 32
	addi	a7, a7, 1
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	slli	t0, a0, 3
	add	t1, a1, t0
	add	t0, a2, t0
	ld	t2, 0(t0)
	ld	t0, 0(t1)
	add	t1, t2, a7
.LBB5_4:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, 0(t0)
	lbu	t4, 1(t0)
	add	t3, a4, t3
	lbu	t5, 2(t0)
	lbu	t3, 0(t3)
	add	t4, a5, t4
	lbu	t4, 0(t4)
	add	t5, a6, t5
	lbu	t5, 0(t5)
	add	t3, t4, t3
	add	t3, t3, t5
	addi	t4, t2, 1
	sb	t3, 0(t2)
	addi	t0, t0, 3
	mv	t2, t4
	bne	t4, t1, .LBB5_4
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	addi	a0, a0, 1
	bne	a0, a3, .LBB5_3
.LBB5_6:
	ret
.Lfunc_end5:
	.size	color_quantize3, .Lfunc_end5-color_quantize3
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function color_quantize
	.type	color_quantize,@function
color_quantize:                         # @color_quantize
# %bb.0:
	blez	a3, .LBB6_12
# %bb.1:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lwu	s1, 136(a0)
	beqz	s1, .LBB6_11
# %bb.2:
	mv	s0, a2
	lw	a2, 144(a0)
	blez	a2, .LBB6_9
# %bb.3:
	ld	a0, 624(a0)
	ld	a0, 48(a0)
	li	a4, 0
.LBB6_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
                                        #       Child Loop BB6_6 Depth 3
	slli	a6, a4, 3
	add	a5, a1, a6
	ld	a5, 0(a5)
	add	a6, s0, a6
	ld	t0, 0(a6)
	li	a6, 0
	mv	a7, s1
	mv	t1, a5
.LBB6_5:                                #   Parent Loop BB6_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_6 Depth 3
	li	t2, 0
	mul	t3, a2, a6
	add	t3, a2, t3
	add	t3, a5, t3
	mv	t4, a0
	mv	t5, t1
.LBB6_6:                                #   Parent Loop BB6_4 Depth=1
                                        #     Parent Loop BB6_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t6, 0(t4)
	regsw_c	x17, 0x2(x16)		# 100001000100000000010
	lbu	x1, 0(t5)
	add	t6, t6, x1
	lbu	t6, 0(t6)
	addi	x1, t5, 1
	add	t2, t2, t6
	addi	t4, t4, 8
	mv	t5, x1
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	bne	x1, t3, .LBB6_6
# %bb.7:                                #   in Loop: Header=BB6_5 Depth=2
	add	t1, t1, a2
	sb	t2, 0(t0)
	addi	t0, t0, 1
	addiw	a7, a7, -1
	addi	a6, a6, 1
	bnez	a7, .LBB6_5
# %bb.8:                                #   in Loop: Header=BB6_4 Depth=1
	addi	a4, a4, 1
	bne	a4, a3, .LBB6_4
	j	.LBB6_11
.LBB6_9:
	slli	a3, a3, 3
	add	s2, s0, a3
.LBB6_10:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s0)
	li	a1, 0
	mv	a2, s1
	call	memset
	addi	s0, s0, 8
	bne	s0, s2, .LBB6_10
.LBB6_11:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
.LBB6_12:
	ret
.Lfunc_end6:
	.size	color_quantize, .Lfunc_end6-color_quantize
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function quantize3_ord_dither
	.type	quantize3_ord_dither,@function
quantize3_ord_dither:                   # @quantize3_ord_dither
# %bb.0:
	blez	a3, .LBB7_6
# %bb.1:
	lw	t1, 136(a0)
	ld	a0, 624(a0)
	beqz	t1, .LBB7_7
# %bb.2:
	ld	a7, 48(a0)
	li	a4, 0
	ld	a5, 0(a7)
	ld	a6, 8(a7)
	ld	a7, 16(a7)
	lw	t0, 76(a0)
	addi	t1, t1, -1
	slli	t1, t1, 32
	srli	t1, t1, 32
	addi	t1, t1, 1
.LBB7_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	li	t2, 0
	slli	t4, a4, 3
	add	t3, a1, t4
	ld	t3, 0(t3)
	add	t4, a2, t4
	ld	t6, 0(t4)
	ld	t4, 80(a0)
	ld	t5, 88(a0)
	regsw_c	x2, 0x3e0(x18)		# 100100001001111100000
	ld	x1, 96(a0)
	slli	x2, t0, 6
	add	t4, t4, x2
	add	t5, t5, x2
	add	x1, x1, x2
	add	x2, t6, t1
.LBB7_4:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x11, 0x5ee(x18)		# 100100101110111101110
	lbu	x3, 0(t3)
	slli	x4, t2, 2
	add	x5, t4, x4
	lw	x5, 0(x5)
	addw	x3, x5, x3
	add	x3, a5, x3
	lbu	x3, 0(x3)
	regsw_c	x29, 0x1f7(x18)		# 100101110100111110111
	lbu	x5, 1(t3)
	add	x6, t5, x4
	lw	x6, 0(x6)
	lbu	x7, 2(t3)
	add	x4, x1, x4
	lw	x4, 0(x4)
	addw	x5, x6, x5
	regsw_c	x15, 0x3bf(x23)		# 101110111101110111111
	add	x5, a6, x5
	lbu	x5, 0(x5)
	addw	x4, x4, x7
	add	x4, a7, x4
	lbu	x4, 0(x4)
	add	x3, x5, x3
	add	x3, x3, x4
	regsw_c	x16, 0x13(x16)		# 100001000000000010011
	addi	x4, t6, 1
	sb	x3, 0(t6)
	addi	t2, t2, 1
	andi	t2, t2, 15
	addi	t3, t3, 3
	mv	t6, x4
	bne	x4, x2, .LBB7_4
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=1
	addi	t0, t0, 1
	andi	t0, t0, 15
	addi	a4, a4, 1
	sw	t0, 76(a0)
	bne	a4, a3, .LBB7_3
.LBB7_6:
	ret
.LBB7_7:
	lw	a1, 76(a0)
.LBB7_8:                                # =>This Inner Loop Header: Depth=1
	addi	a1, a1, 1
	addiw	a3, a3, -1
	andi	a1, a1, 15
	bnez	a3, .LBB7_8
# %bb.9:
	sw	a1, 76(a0)
	ret
.Lfunc_end7:
	.size	quantize3_ord_dither, .Lfunc_end7-quantize3_ord_dither
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function quantize_ord_dither
	.type	quantize_ord_dither,@function
quantize_ord_dither:                    # @quantize_ord_dither
# %bb.0:
	blez	a3, .LBB8_14
# %bb.1:
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
	mv	s0, a2
	mv	s2, a1
	lw	a1, 136(a0)
	lw	s4, 144(a0)
	ld	s3, 624(a0)
	slli	s1, a1, 32
	srli	s1, s1, 32
	slli	a3, a3, 32
	blez	s4, .LBB8_9
# %bb.2:
	srli	s5, a3, 32
	beqz	a1, .LBB8_11
# %bb.3:
	li	s6, 0
	addi	s7, s3, 80
	addi	a1, a1, -1
	slli	a1, a1, 32
	srli	a1, a1, 32
	addi	s8, a1, 1
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
                                        #       Child Loop BB8_6 Depth 3
	slli	s10, s6, 3
	add	s9, s0, s10
	ld	a0, 0(s9)
	mv	a1, s1
	call	jzero_far
	lw	a0, 76(s3)
	li	a1, 0
	add	a2, s2, s10
	slli	a3, a0, 6
.LBB8_5:                                #   Parent Loop BB8_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_6 Depth 3
	li	a4, 0
	ld	a7, 0(a2)
	ld	a5, 0(s9)
	ld	a6, 48(s3)
	slli	t0, a1, 3
	add	t1, s7, t0
	ld	t1, 0(t1)
	add	a6, a6, t0
	ld	a6, 0(a6)
	add	a7, a7, a1
	add	t0, t1, a3
	add	t1, a5, s8
.LBB8_6:                                #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	t2, 0(a7)
	slli	t3, a4, 2
	add	t3, t0, t3
	lw	t3, 0(t3)
	addw	t2, t3, t2
	add	t2, a6, t2
	lbu	t2, 0(t2)
	lbu	t3, 0(a5)
	add	t2, t3, t2
	sb	t2, 0(a5)
	add	a7, a7, s4
	addi	a5, a5, 1
	addi	a4, a4, 1
	andi	a4, a4, 15
	bne	a5, t1, .LBB8_6
# %bb.7:                                #   in Loop: Header=BB8_5 Depth=2
	addi	a1, a1, 1
	bne	a1, s4, .LBB8_5
# %bb.8:                                #   in Loop: Header=BB8_4 Depth=1
	addi	a0, a0, 1
	andi	a0, a0, 15
	addi	s6, s6, 1
	sw	a0, 76(s3)
	bne	s6, s5, .LBB8_4
	j	.LBB8_13
.LBB8_9:
	srli	a3, a3, 29
	add	s2, s0, a3
.LBB8_10:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s0)
	mv	a1, s1
	call	jzero_far
	lw	a0, 76(s3)
	addi	a0, a0, 1
	andi	a0, a0, 15
	addi	s0, s0, 8
	sw	a0, 76(s3)
	bne	s0, s2, .LBB8_10
	j	.LBB8_13
.LBB8_11:                               # %.preheader
	slli	s2, s5, 3
	add	s2, s0, s2
.LBB8_12:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s0)
	mv	a1, s1
	call	jzero_far
	lw	a0, 76(s3)
	addi	a0, a0, 1
	andi	a0, a0, 15
	addi	s0, s0, 8
	sw	a0, 76(s3)
	bne	s0, s2, .LBB8_12
.LBB8_13:
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
.LBB8_14:
	ret
.Lfunc_end8:
	.size	quantize_ord_dither, .Lfunc_end8-quantize_ord_dither
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function quantize_fs_dither
	.type	quantize_fs_dither,@function
quantize_fs_dither:                     # @quantize_fs_dither
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
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	blez	a3, .LBB9_14
# %bb.1:
	mv	s7, a2
	lw	a2, 136(a0)
	lw	s6, 144(a0)
	ld	s4, 624(a0)
	slli	a1, a2, 32
	srli	a1, a1, 32
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	blez	s6, .LBB9_12
# %bb.2:
	addi	s5, s4, 112
	addi	a3, a2, 1
	slli	a3, a3, 32
	srli	a3, a3, 32
	beqz	a2, .LBB9_15
# %bb.3:                                # %.preheader4
	li	s1, 0
	ld	s8, 424(a0)
	addi	a2, a2, -1
	mul	a0, a2, s6
	slli	a0, a0, 32
	srli	s9, a0, 32
	slli	a2, a2, 32
	srli	s3, a2, 32
	negw	s11, s6
	addi	s10, s3, 1
	slli	s2, a3, 1
	sd	s7, 8(sp)                       # 8-byte Folded Spill
.LBB9_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
                                        #       Child Loop BB9_9 Depth 3
	mv	s0, s7
	slli	s7, s1, 3
	add	s0, s0, s7
	ld	a0, 0(s0)
	call	jzero_far
	li	a0, 0
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a1, a1, s7
.LBB9_5:                                #   Parent Loop BB9_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_9 Depth 3
	ld	a3, 0(a1)
	lw	a4, 144(s4)
	ld	a2, 0(s0)
	add	a3, a3, a0
	slli	t1, a0, 3
	beqz	a4, .LBB9_7
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=2
	add	a4, s5, t1
	ld	a4, 0(a4)
	add	a3, a3, s9
	add	a2, a2, s3
	add	a4, a4, s2
	li	a5, -1
	mv	a6, s11
	j	.LBB9_8
.LBB9_7:                                #   in Loop: Header=BB9_5 Depth=2
	add	a4, s5, t1
	ld	a4, 0(a4)
	li	a5, 1
	mv	a6, s6
.LBB9_8:                                #   in Loop: Header=BB9_5 Depth=2
	ld	t0, 48(s4)
	ld	t2, 32(s4)
	li	t5, 0
	li	t4, 0
	li	a7, 0
	add	t0, t0, t1
	ld	t0, 0(t0)
	add	t1, t2, t1
	ld	t1, 0(t1)
	slli	t2, a5, 1
	mul	t3, s10, a5
	add	t3, a2, t3
.LBB9_9:                                #   Parent Loop BB9_4 Depth=1
                                        #     Parent Loop BB9_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	t6, a4
	add	a4, a4, t2
	regsw_c	x2, 0x2a(x18)		# 100100001000000101010
	lh	x1, 0(a4)
	lbu	x2, 0(a3)
	add	t5, t5, x1
	addi	t5, t5, 8
	sraiw	t5, t5, 4
	add	x2, s8, x2
	add	t5, x2, t5
	lbu	t5, 0(t5)
	regsw_c	x9, 0x66e(x19)		# 100110100111001101110
	add	x1, t0, t5
	lbu	x1, 0(x1)
	lbu	x2, 0(a2)
	add	x2, x2, x1
	sb	x2, 0(a2)
	add	x1, t1, x1
	lbu	x1, 0(x1)
	regsw_c	x4, 0x12(x21)		# 101010010000000010010
	sub	x1, t5, x1
	slli	t5, x1, 1
	add	a7, x1, a7
	add	a7, t5, a7
	sh	a7, 0(t6)
	slli	a7, x1, 2
	add	t4, x1, t4
	add	a7, a7, t4
	regsw_c	x16, 0x80(x8)		# 010001000000010000000
	slli	t4, x1, 3
	sub	t5, t4, x1
	add	a2, a2, a5
	add	a3, a3, a6
	mv	t4, x1
	bne	a2, t3, .LBB9_9
# %bb.10:                               #   in Loop: Header=BB9_5 Depth=2
	addi	a0, a0, 1
	sh	a7, 0(a4)
	bne	a0, s6, .LBB9_5
# %bb.11:                               #   in Loop: Header=BB9_4 Depth=1
	lw	a0, 144(s4)
	seqz	a0, a0
	addi	s1, s1, 1
	sw	a0, 144(s4)
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	bne	s1, a0, .LBB9_4
	j	.LBB9_14
.LBB9_12:
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 32
	srli	a0, a0, 29
	add	s0, s7, a0
.LBB9_13:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s7)
	call	jzero_far
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	lw	a0, 144(s4)
	seqz	a0, a0
	addi	s7, s7, 8
	sw	a0, 144(s4)
	bne	s7, s0, .LBB9_13
.LBB9_14:
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
.LBB9_15:
	li	s0, 0
	slli	s6, s6, 3
	add	s6, s6, s4
	addi	s2, s6, 112
	slli	s3, a3, 1
	j	.LBB9_17
.LBB9_16:                               #   in Loop: Header=BB9_17 Depth=1
	seqz	a0, a0
	addi	s0, s0, 1
	sw	a0, 144(s4)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	beq	s0, a0, .LBB9_14
.LBB9_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_18 Depth 2
                                        #     Child Loop BB9_19 Depth 2
	slli	a0, s0, 3
	add	a0, s7, a0
	ld	a0, 0(a0)
	call	jzero_far
	lw	a0, 144(s4)
	mv	a1, s5
	mv	a2, s5
	beqz	a0, .LBB9_19
.LBB9_18:                               #   Parent Loop BB9_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a2, 0(a1)
	add	a2, a2, s3
	addi	a1, a1, 8
	sh	zero, 0(a2)
	bne	a1, s2, .LBB9_18
	j	.LBB9_16
.LBB9_19:                               #   Parent Loop BB9_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, 0(a2)
	addi	a2, a2, 8
	sh	zero, 0(a1)
	bne	a2, s2, .LBB9_19
	j	.LBB9_16
.Lfunc_end9:
	.size	quantize_fs_dither, .Lfunc_end9-quantize_fs_dither
                                        # -- End function
	.option	pop
	.type	base_dither_matrix,@object      # @base_dither_matrix
	.section	.rodata,"a",@progbits
base_dither_matrix:
	.ascii	"\000\3000\360\f\314<\374\003\3033\363\017\317?\377"
	.ascii	"\200@\260p\214L\274|\203C\263s\217O\277\177"
	.ascii	" \340\020\320,\354\034\334#\343\023\323/\357\037\337"
	.ascii	"\240`\220P\254l\234\\\243c\223S\257o\237_"
	.ascii	"\b\3108\370\004\3044\364\013\313;\373\007\3077\367"
	.ascii	"\210H\270x\204D\264t\213K\273{\207G\267w"
	.ascii	"(\350\030\330$\344\024\324+\353\033\333'\347\027\327"
	.ascii	"\250h\230X\244d\224T\253k\233[\247g\227W"
	.ascii	"\002\3022\362\016\316>\376\001\3011\361\r\315=\375"
	.ascii	"\202B\262r\216N\276~\201A\261q\215M\275}"
	.ascii	"\"\342\022\322.\356\036\336!\341\021\321-\355\035\335"
	.ascii	"\242b\222R\256n\236^\241a\221Q\255m\235]"
	.ascii	"\n\312:\372\006\3066\366\t\3119\371\005\3055\365"
	.ascii	"\212J\272z\206F\266v\211I\271y\205E\265u"
	.ascii	"*\352\032\332&\346\026\326)\351\031\331%\345\025\325"
	.ascii	"\252j\232Z\246f\226V\251i\231Y\245e\225U"
	.size	base_dither_matrix, 256

	.type	select_ncolors.RGB_order,@object # @select_ncolors.RGB_order
	.p2align	2, 0x0
select_ncolors.RGB_order:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.size	select_ncolors.RGB_order, 12

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
