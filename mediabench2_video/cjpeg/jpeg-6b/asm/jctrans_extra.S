	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jctrans.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_write_coefficients         # -- Begin function jpeg_write_coefficients
	.p2align	2
	.type	jpeg_write_coefficients,@function
jpeg_write_coefficients:                # @jpeg_write_coefficients
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 36(a0)
	li	a2, 100
	mv	s1, a1
	beq	a0, a2, .LBB0_2
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
	mv	a0, s0
	li	a1, 0
	call	jpeg_suppress_tables
	ld	a0, 0(s0)
	ld	a1, 32(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 40(s0)
	ld	a1, 16(a0)
	mv	a0, s0
	jalr	a1
	li	s2, 1
	sw	s2, 56(s0)
	li	a1, 1
	mv	a0, s0
	call	jinit_c_master_control
	lw	a0, 260(s0)
	beqz	a0, .LBB0_4
# %bb.3:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB0_7
.LBB0_4:
	lw	a0, 308(s0)
	beqz	a0, .LBB0_6
# %bb.5:
	mv	a0, s0
	call	jinit_phuff_encoder
	j	.LBB0_7
.LBB0_6:
	mv	a0, s0
	call	jinit_huff_encoder
.LBB0_7:
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 120
	mv	a0, s0
	jalr	a3
	mv	s2, a0
	ld	a0, 8(s0)
	sd	s2, 456(s0)
	lui	a1, %hi(start_pass_coef)
	addi	a1, a1, %lo(start_pass_coef)
	sd	a1, 0(s2)
	ld	a3, 8(a0)
	lui	a0, %hi(compress_output)
	addi	a0, a0, %lo(compress_output)
	sd	a0, 8(s2)
	sd	s1, 32(s2)
	li	a1, 1
	li	a2, 1280
	mv	a0, s0
	jalr	a3
	mv	s1, a0
	li	a1, 1280
	call	jzero_far
	sd	s1, 40(s2)
	addi	a0, s1, 128
	sd	a0, 48(s2)
	addi	a0, s1, 256
	sd	a0, 56(s2)
	addi	a0, s1, 384
	sd	a0, 64(s2)
	addi	a0, s1, 512
	sd	a0, 72(s2)
	addi	a0, s1, 640
	sd	a0, 80(s2)
	addi	a0, s1, 768
	sd	a0, 88(s2)
	addi	a0, s1, 896
	sd	a0, 96(s2)
	addi	a0, s1, 1024
	sd	a0, 104(s2)
	addi	a0, s1, 1152
	sd	a0, 112(s2)
	mv	a0, s0
	call	jinit_marker_writer
	ld	a0, 8(s0)
	ld	a1, 48(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 464(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	sw	zero, 304(s0)
	li	a0, 103
	sw	a0, 36(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	jpeg_write_coefficients, .Lfunc_end0-jpeg_write_coefficients
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_copy_critical_parameters   # -- Begin function jpeg_copy_critical_parameters
	.p2align	2
	.type	jpeg_copy_critical_parameters,@function
jpeg_copy_critical_parameters:          # @jpeg_copy_critical_parameters
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
	mv	s0, a1
	lw	a1, 36(a1)
	li	a2, 100
	mv	s1, a0
	beq	a1, a2, .LBB1_2
# %bb.1:
	ld	a0, 0(s0)
	sw	a1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	li	a2, 20
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_2:
	ld	a0, 48(s1)
	sd	a0, 48(s0)
	ld	a0, 56(s1)
	sd	a0, 56(s0)
	mv	a0, s0
	call	jpeg_set_defaults
	lw	a1, 60(s1)
	mv	a0, s0
	call	jpeg_set_colorspace
	lw	a0, 296(s1)
	lw	a2, 392(s1)
	ld	a1, 200(s1)
	sw	a0, 72(s0)
	sw	a2, 268(s0)
	addi	s2, s1, 200
	beqz	a1, .LBB1_6
# %bb.3:
	ld	a0, 96(s0)
	bnez	a0, .LBB1_5
# %bb.4:
	mv	a0, s0
	call	jpeg_alloc_quant_table
	sd	a0, 96(s0)
	ld	a1, 0(s2)
.LBB1_5:
	li	a2, 128
	call	memcpy
	ld	a0, 96(s0)
	sw	zero, 128(a0)
.LBB1_6:
	ld	a1, 208(s1)
	beqz	a1, .LBB1_10
# %bb.7:
	ld	a0, 104(s0)
	bnez	a0, .LBB1_9
# %bb.8:
	mv	a0, s0
	call	jpeg_alloc_quant_table
	sd	a0, 104(s0)
	ld	a1, 208(s1)
.LBB1_9:
	li	a2, 128
	call	memcpy
	ld	a0, 104(s0)
	sw	zero, 128(a0)
.LBB1_10:
	ld	a1, 216(s1)
	beqz	a1, .LBB1_14
# %bb.11:
	ld	a0, 112(s0)
	bnez	a0, .LBB1_13
# %bb.12:
	mv	a0, s0
	call	jpeg_alloc_quant_table
	sd	a0, 112(s0)
	ld	a1, 216(s1)
.LBB1_13:
	li	a2, 128
	call	memcpy
	ld	a0, 112(s0)
	sw	zero, 128(a0)
.LBB1_14:
	ld	a1, 224(s1)
	beqz	a1, .LBB1_18
# %bb.15:
	ld	a0, 120(s0)
	bnez	a0, .LBB1_17
# %bb.16:
	mv	a0, s0
	call	jpeg_alloc_quant_table
	sd	a0, 120(s0)
	ld	a1, 224(s1)
.LBB1_17:
	li	a2, 128
	call	memcpy
	ld	a0, 120(s0)
	sw	zero, 128(a0)
.LBB1_18:
	sd	s1, 0(sp)                       # 8-byte Folded Spill
	lw	a0, 56(s1)
	addiw	a1, a0, -11
	li	a2, -11
	sw	a0, 76(s0)
	bltu	a2, a1, .LBB1_20
# %bb.19:
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
	blez	a0, .LBB1_30
.LBB1_20:
	li	s3, 0
	ld	s4, 88(s0)
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	ld	s5, 304(a0)
	li	s6, 3
	li	s7, 52
	li	s8, 44
	j	.LBB1_22
.LBB1_21:                               #   in Loop: Header=BB1_22 Depth=1
	lw	a0, 76(s0)
	addiw	s3, s3, 1
	addi	s5, s5, 96
	addi	s4, s4, 96
	bge	s3, a0, .LBB1_30
.LBB1_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_28 Depth 2
	lw	a0, 0(s5)
	sw	a0, 0(s4)
	ld	a0, 8(s5)
	sd	a0, 8(s4)
	lw	s9, 16(s5)
	sw	s9, 16(s4)
	bltu	s6, s9, .LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_22 Depth=1
	slli	a0, s9, 3
	add	a0, s2, a0
	ld	s10, 0(a0)
	bnez	s10, .LBB1_25
.LBB1_24:                               #   in Loop: Header=BB1_22 Depth=1
	ld	a0, 0(s0)
	sw	s9, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s7, 40(a0)
	mv	a0, s0
	jalr	a1
	slli	a0, s9, 3
	add	a0, s2, a0
	ld	s10, 0(a0)
.LBB1_25:                               #   in Loop: Header=BB1_22 Depth=1
	ld	s11, 80(s5)
	beqz	s11, .LBB1_21
# %bb.26:                               # %.preheader
                                        #   in Loop: Header=BB1_22 Depth=1
	addi	s1, s10, 128
	j	.LBB1_28
.LBB1_27:                               #   in Loop: Header=BB1_28 Depth=2
	addi	s10, s10, 2
	addi	s11, s11, 2
	beq	s10, s1, .LBB1_21
.LBB1_28:                               #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a0, 0(s11)
	lhu	a1, 0(s10)
	beq	a0, a1, .LBB1_27
# %bb.29:                               #   in Loop: Header=BB1_28 Depth=2
	ld	a0, 0(s0)
	sw	s9, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s8, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB1_27
.LBB1_30:
	ld	a2, 0(sp)                       # 8-byte Folded Reload
	lw	a0, 372(a2)
	beqz	a0, .LBB1_34
# %bb.31:
	lbu	a1, 376(a2)
	li	a0, 1
	bne	a1, a0, .LBB1_33
# %bb.32:
	lbu	a1, 377(a2)
	sb	a0, 292(s0)
	sb	a1, 293(s0)
.LBB1_33:
	lbu	a0, 378(a2)
	sb	a0, 294(s0)
	lw	a0, 380(a2)
	sw	a0, 296(s0)
.LBB1_34:
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
	.size	jpeg_copy_critical_parameters, .Lfunc_end1-jpeg_copy_critical_parameters
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_coef
	.type	start_pass_coef,@function
start_pass_coef:                        # @start_pass_coef
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s1, 456(a0)
	li	s2, 2
	mv	a0, s1
	beq	a1, s2, .LBB2_2
# %bb.1:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 4
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 456(s0)
.LBB2_2:
	lw	a1, 324(s0)
	sw	zero, 16(s1)
	blt	a1, s2, .LBB2_4
# %bb.3:
	li	a1, 1
	j	.LBB2_7
.LBB2_4:
	lw	a2, 320(s0)
	lw	a3, 16(a0)
	ld	a1, 328(s0)
	addiw	a2, a2, -1
	bgeu	a3, a2, .LBB2_6
# %bb.5:
	lw	a1, 12(a1)
	j	.LBB2_7
.LBB2_6:
	lw	a1, 72(a1)
.LBB2_7:
	sw	a1, 28(a0)
	sw	zero, 20(a0)
	sw	zero, 24(a0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	start_pass_coef, .Lfunc_end2-start_pass_coef
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function compress_output
	.type	compress_output,@function
compress_output:                        # @compress_output
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
	mv	s0, a0
	ld	s1, 456(a0)
	lw	s4, 360(a0)
	lw	a1, 324(a0)
	lw	s5, 320(a0)
	addi	s2, a0, 328
	blez	a1, .LBB3_3
# %bb.1:
	li	s3, 0
	addi	s6, sp, 80
	mv	s7, s2
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s7)
	ld	a1, 8(s0)
	lw	a2, 4(a0)
	ld	a3, 32(s1)
	ld	a5, 64(a1)
	slli	a2, a2, 3
	add	a2, a3, a2
	lw	a4, 16(s1)
	lw	a3, 12(a0)
	ld	a1, 0(a2)
	mulw	a2, a3, a4
	mv	a0, s0
	li	a4, 0
	jalr	a5
	lw	a1, 324(s0)
	sd	a0, 0(s6)
	addi	s3, s3, 1
	addi	s6, s6, 8
	addi	s7, s7, 8
	blt	s3, a1, .LBB3_2
.LBB3_3:
	lw	s3, 24(s1)
	lw	a0, 28(s1)
	bge	s3, a0, .LBB3_34
# %bb.4:
	addiw	s4, s4, -1
	addiw	s5, s5, -1
	lw	s10, 20(s1)
	lw	a1, 360(s0)
	addi	s6, s1, 40
	addi	s7, sp, 8
	addi	s8, sp, 80
	mv	s9, sp
	j	.LBB3_7
.LBB3_5:                                #   in Loop: Header=BB3_7 Depth=1
	lw	a0, 28(s1)
.LBB3_6:                                #   in Loop: Header=BB3_7 Depth=1
	li	s10, 0
	addi	s3, s3, 1
	sw	zero, 20(s1)
	bge	s3, a0, .LBB3_33
.LBB3_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
                                        #       Child Loop BB3_11 Depth 3
                                        #         Child Loop BB3_27 Depth 4
                                        #           Child Loop BB3_28 Depth 5
                                        #         Child Loop BB3_17 Depth 4
                                        #           Child Loop BB3_20 Depth 5
                                        #           Child Loop BB3_24 Depth 5
	bgeu	s10, a1, .LBB3_6
.LBB3_8:                                #   Parent Loop BB3_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_11 Depth 3
                                        #         Child Loop BB3_27 Depth 4
                                        #           Child Loop BB3_28 Depth 5
                                        #         Child Loop BB3_17 Depth 4
                                        #           Child Loop BB3_20 Depth 5
                                        #           Child Loop BB3_24 Depth 5
	lw	a0, 324(s0)
	blez	a0, .LBB3_30
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=2
	li	a1, 0
	li	a2, 0
	j	.LBB3_11
.LBB3_10:                               #   in Loop: Header=BB3_11 Depth=3
	addi	a1, a1, 1
	beq	a1, a0, .LBB3_30
.LBB3_11:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_27 Depth 4
                                        #           Child Loop BB3_28 Depth 5
                                        #         Child Loop BB3_17 Depth 4
                                        #           Child Loop BB3_20 Depth 5
                                        #           Child Loop BB3_24 Depth 5
	slli	t1, a1, 3
	add	a3, s2, t1
	ld	a5, 0(a3)
	lw	a4, 52(a5)
	mv	a6, a4
	bltu	s10, s4, .LBB3_13
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=3
	lw	a6, 68(a5)
.LBB3_13:                               #   in Loop: Header=BB3_11 Depth=3
	lw	a3, 56(a5)
	blez	a3, .LBB3_10
# %bb.14:                               #   in Loop: Header=BB3_11 Depth=3
	blez	a6, .LBB3_25
# %bb.15:                               #   in Loop: Header=BB3_11 Depth=3
	li	a7, 0
	mul	t2, a4, s10
	lw	t0, 16(s1)
	add	t1, s8, t1
	slli	t2, t2, 32
	srli	t4, t2, 32
	addi	t2, a6, -1
	slli	t2, t2, 32
	srli	t2, t2, 29
	add	t2, s7, t2
	addi	t3, a4, -1
	slli	t4, t4, 7
	j	.LBB3_17
.LBB3_16:                               #   in Loop: Header=BB3_17 Depth=4
	addi	a7, a7, 1
	beq	a7, a3, .LBB3_10
.LBB3_17:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_20 Depth 5
                                        #           Child Loop BB3_24 Depth 5
	add	t5, a7, s3
	bltu	t0, s5, .LBB3_19
# %bb.18:                               #   in Loop: Header=BB3_17 Depth=4
	lw	t6, 72(a5)
	bge	t5, t6, .LBB3_22
.LBB3_19:                               #   in Loop: Header=BB3_17 Depth=4
	ld	t6, 0(t1)
	slli	t5, t5, 3
	add	t5, t6, t5
	ld	t6, 0(t5)
	add	t6, t6, t4
	slli	n1, a2, 3
	add	t5, s9, n1
	addw	a2, a6, a2
	add	n1, t2, n1
.LBB3_20:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        #         Parent Loop BB3_17 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	sd	t6, 0(t5)
	addi	t6, t6, 128
	addi	t5, t5, 8
	bne	t5, n1, .LBB3_20
# %bb.21:                               #   in Loop: Header=BB3_17 Depth=4
	mv	n1, a6
	bge	a6, a4, .LBB3_16
	j	.LBB3_23
.LBB3_22:                               #   in Loop: Header=BB3_17 Depth=4
	li	n1, 0
	blez	a4, .LBB3_16
.LBB3_23:                               #   in Loop: Header=BB3_17 Depth=4
	slli	n2, a2, 3
	add	t5, s9, n2
	add	t6, s6, n2
	add	a2, a4, a2
	subw	a2, a2, n1
	subw	n1, t3, n1
	slli	n1, n1, 32
	srli	n1, n1, 29
	add	n2, s7, n2
	add	n1, n2, n1
.LBB3_24:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        #         Parent Loop BB3_17 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	n2, -8(t5)
	ld	n3, 0(t6)
	lh	n2, 0(n2)
	sd	n3, 0(t5)
	sh	n2, 0(n3)
	addi	t5, t5, 8
	addi	t6, t6, 8
	bne	t5, n1, .LBB3_24
	j	.LBB3_16
.LBB3_25:                               #   in Loop: Header=BB3_11 Depth=3
	blez	a4, .LBB3_10
# %bb.26:                               # %.preheader
                                        #   in Loop: Header=BB3_11 Depth=3
	li	a5, 0
	addi	a4, a4, -1
	slli	a4, a4, 32
	srli	a4, a4, 29
	add	a4, s7, a4
.LBB3_27:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_28 Depth 5
	slli	t0, a2, 3
	add	a6, s9, t0
	add	a7, s6, t0
	add	t0, a4, t0
.LBB3_28:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        #         Parent Loop BB3_27 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	t1, -8(a6)
	ld	t2, 0(a7)
	lh	t1, 0(t1)
	sd	t2, 0(a6)
	sh	t1, 0(t2)
	addiw	a2, a2, 1
	addi	a6, a6, 8
	addi	a7, a7, 8
	bne	a6, t0, .LBB3_28
# %bb.29:                               #   in Loop: Header=BB3_27 Depth=4
	addiw	a5, a5, 1
	bne	a5, a3, .LBB3_27
	j	.LBB3_10
.LBB3_30:                               #   in Loop: Header=BB3_8 Depth=2
	ld	a0, 496(s0)
	ld	a2, 8(a0)
	mv	a1, sp
	mv	a0, s0
	jalr	a2
	beqz	a0, .LBB3_32
# %bb.31:                               #   in Loop: Header=BB3_8 Depth=2
	lw	a1, 360(s0)
	addiw	s10, s10, 1
	bltu	s10, a1, .LBB3_8
	j	.LBB3_5
.LBB3_32:
	sw	s3, 24(s1)
	sw	s10, 20(s1)
	j	.LBB3_40
.LBB3_33:
	lw	a1, 324(s0)
.LBB3_34:
	lw	a2, 16(s1)
	ld	a0, 456(s0)
	addi	a2, a2, 1
	li	a3, 2
	sw	a2, 16(s1)
	blt	a1, a3, .LBB3_36
# %bb.35:
	li	a1, 1
	j	.LBB3_39
.LBB3_36:
	lw	a2, 320(s0)
	lw	a3, 16(a0)
	ld	a1, 328(s0)
	addiw	a2, a2, -1
	bgeu	a3, a2, .LBB3_38
# %bb.37:
	lw	a1, 12(a1)
	j	.LBB3_39
.LBB3_38:
	lw	a1, 72(a1)
.LBB3_39:
	sw	a1, 28(a0)
	sw	zero, 20(a0)
	sw	zero, 24(a0)
	li	a0, 1
.LBB3_40:
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
	addi	sp, sp, 208
	ret
.Lfunc_end3:
	.size	compress_output, .Lfunc_end3-compress_output
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
