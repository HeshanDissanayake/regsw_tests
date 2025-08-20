	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdcoefct.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_d_coef_controller         # -- Begin function jinit_d_coef_controller
	.p2align	2
	.type	jinit_d_coef_controller,@function
jinit_d_coef_controller:                # @jinit_d_coef_controller
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
	mv	s1, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	mv	s2, a1
	li	a1, 1
	li	a2, 224
	mv	a0, s1
	jalr	a3
	mv	s0, a0
	sd	a0, 560(s1)
	lui	a0, %hi(start_input_pass)
	addi	a0, a0, %lo(start_input_pass)
	sd	a0, 0(s0)
	lui	a0, %hi(start_output_pass)
	addi	a0, a0, %lo(start_output_pass)
	sd	a0, 16(s0)
	sd	zero, 216(s0)
	beqz	s2, .LBB0_5
# %bb.1:
	lw	a0, 56(s1)
	blez	a0, .LBB0_4
# %bb.2:
	ld	s6, 304(s1)
	li	s4, 0
	addi	s5, s0, 136
	addi	s6, s6, 28
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	a0, 312(s1)
	lw	a2, -16(s6)
	ld	a1, 8(s1)
	seqz	a3, a0
	slli	a4, a2, 1
	ld	s7, 40(a1)
	lwu	a0, 0(s6)
	lw	a1, -20(s6)
	addi	a3, a3, -1
	and	a3, a3, a4
	addw	s2, a2, a3
	call	jround_up
	lwu	a2, 4(s6)
	lw	a1, -16(s6)
	mv	s3, a0
	mv	a0, a2
	call	jround_up
	sext.w	a3, s3
	sext.w	a4, a0
	li	a1, 1
	li	a2, 1
	mv	a0, s1
	mv	a5, s2
	jalr	s7
	lw	a1, 56(s1)
	sd	a0, 0(s5)
	addi	s4, s4, 1
	addi	s5, s5, 8
	addi	s6, s6, 96
	blt	s4, a1, .LBB0_3
.LBB0_4:
	addi	a1, s0, 136
	lui	a0, %hi(consume_data)
	addi	a0, a0, %lo(consume_data)
	sd	a0, 8(s0)
	lui	a0, %hi(decompress_data)
	addi	a0, a0, %lo(decompress_data)
	j	.LBB0_6
.LBB0_5:
	ld	a0, 8(s1)
	ld	a3, 8(a0)
	li	a1, 1
	li	a2, 1280
	mv	a0, s1
	jalr	a3
	li	a1, 0
	addi	a2, a0, 128
	sd	a2, 64(s0)
	addi	a2, a0, 256
	sd	a2, 72(s0)
	addi	a2, a0, 384
	sd	a2, 80(s0)
	addi	a2, a0, 512
	sd	a2, 88(s0)
	addi	a2, a0, 640
	sd	a2, 96(s0)
	addi	a2, a0, 768
	sd	a2, 104(s0)
	addi	a2, a0, 896
	sd	a2, 112(s0)
	addi	a2, a0, 1024
	sd	a2, 120(s0)
	sd	a0, 56(s0)
	addi	a0, a0, 1152
	sd	a0, 128(s0)
	lui	a0, %hi(dummy_consume_data)
	addi	a0, a0, %lo(dummy_consume_data)
	sd	a0, 8(s0)
	lui	a0, %hi(decompress_onepass)
	addi	a0, a0, %lo(decompress_onepass)
.LBB0_6:
	sd	a0, 24(s0)
	sd	a1, 32(s0)
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
.Lfunc_end0:
	.size	jinit_d_coef_controller, .Lfunc_end0-jinit_d_coef_controller
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_input_pass
	.type	start_input_pass,@function
start_input_pass:                       # @start_input_pass
# %bb.0:
	lw	a2, 432(a0)
	ld	a1, 560(a0)
	li	a3, 2
	sw	zero, 176(a0)
	blt	a2, a3, .LBB1_2
# %bb.1:
	li	a0, 1
	sw	a0, 48(a1)
	sd	zero, 40(a1)
	ret
.LBB1_2:
	lw	a2, 420(a0)
	ld	a0, 440(a0)
	li	a3, 1
	bne	a2, a3, .LBB1_4
# %bb.3:
	lw	a0, 72(a0)
	sw	a0, 48(a1)
	sd	zero, 40(a1)
	ret
.LBB1_4:
	lw	a0, 12(a0)
	sw	a0, 48(a1)
	sd	zero, 40(a1)
	ret
.Lfunc_end1:
	.size	start_input_pass, .Lfunc_end1-start_input_pass
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_output_pass
	.type	start_output_pass,@function
start_output_pass:                      # @start_output_pass
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	ld	s1, 560(a0)
	ld	a1, 32(s1)
	beqz	a1, .LBB2_23
# %bb.1:
	lw	a1, 104(a0)
	beqz	a1, .LBB2_21
# %bb.2:
	lw	a1, 312(a0)
	beqz	a1, .LBB2_21
# %bb.3:
	ld	a1, 192(a0)
	beqz	a1, .LBB2_21
# %bb.4:
	ld	a1, 216(s1)
	beqz	a1, .LBB2_6
# %bb.5:
	lw	a2, 56(a0)
	bgtz	a2, .LBB2_7
	j	.LBB2_21
.LBB2_6:
	ld	a1, 8(a0)
	lw	a2, 56(a0)
	ld	a3, 0(a1)
	li	a1, 24
	mul	a2, a2, a1
	li	a1, 1
	mv	s0, a0
	jalr	a3
	mv	a1, a0
	mv	a0, s0
	sd	a1, 216(s1)
	lw	a2, 56(s0)
	blez	a2, .LBB2_21
.LBB2_7:
	ld	a5, 304(a0)
	li	a2, 0
	li	a3, 0
	li	a4, 0
	addi	a5, a5, 80
	addi	a1, a1, 12
	j	.LBB2_9
.LBB2_8:                                #   in Loop: Header=BB2_9 Depth=1
	lw	a6, 56(a0)
	addi	a3, a3, 1
	addi	a2, a2, 256
	addi	a5, a5, 96
	addi	a1, a1, 24
	bge	a3, a6, .LBB2_19
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	ld	a6, 0(a5)
	beqz	a6, .LBB2_21
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	lhu	a7, 0(a6)
	beqz	a7, .LBB2_21
# %bb.11:                               #   in Loop: Header=BB2_9 Depth=1
	lhu	a7, 2(a6)
	beqz	a7, .LBB2_21
# %bb.12:                               #   in Loop: Header=BB2_9 Depth=1
	lhu	a7, 16(a6)
	beqz	a7, .LBB2_21
# %bb.13:                               #   in Loop: Header=BB2_9 Depth=1
	lhu	a7, 32(a6)
	beqz	a7, .LBB2_21
# %bb.14:                               #   in Loop: Header=BB2_9 Depth=1
	lhu	a7, 18(a6)
	beqz	a7, .LBB2_21
# %bb.15:                               #   in Loop: Header=BB2_9 Depth=1
	lhu	a6, 4(a6)
	beqz	a6, .LBB2_21
# %bb.16:                               #   in Loop: Header=BB2_9 Depth=1
	ld	a6, 192(a0)
	add	a6, a6, a2
	lw	a7, 0(a6)
	bltz	a7, .LBB2_21
# %bb.17:                               #   in Loop: Header=BB2_9 Depth=1
	lw	a7, 4(a6)
	sw	a7, -8(a1)
	lw	t0, 8(a6)
	sw	t0, -4(a1)
	lw	t1, 12(a6)
	sw	t1, 0(a1)
	lw	t2, 16(a6)
	sw	t2, 4(a1)
	lw	a6, 20(a6)
	or	t2, a6, t2
	or	t0, t1, t0
	or	t0, t2, t0
	or	a7, t0, a7
	sw	a6, 8(a1)
	beqz	a7, .LBB2_8
# %bb.18:                               #   in Loop: Header=BB2_9 Depth=1
	li	a4, 1
	j	.LBB2_8
.LBB2_19:
	beqz	a4, .LBB2_21
# %bb.20:
	lui	a1, %hi(decompress_smooth_data)
	addi	a1, a1, %lo(decompress_smooth_data)
	j	.LBB2_22
.LBB2_21:
	lui	a1, %hi(decompress_data)
	addi	a1, a1, %lo(decompress_data)
.LBB2_22:
	sd	a1, 24(s1)
.LBB2_23:
	sw	zero, 184(a0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	start_output_pass, .Lfunc_end2-start_output_pass
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function consume_data
	.type	consume_data,@function
consume_data:                           # @consume_data
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
	mv	s0, a0
	lw	a0, 432(a0)
	ld	s2, 560(s0)
	addi	s3, s0, 440
	blez	a0, .LBB3_3
# %bb.1:
	li	s1, 0
	addi	s4, s2, 136
	mv	s5, sp
	mv	s6, s3
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s6)
	ld	a1, 8(s0)
	lw	a2, 4(a0)
	ld	a5, 64(a1)
	slli	a2, a2, 3
	add	a2, s4, a2
	lw	a4, 176(s0)
	lw	a3, 12(a0)
	ld	a1, 0(a2)
	mulw	a2, a3, a4
	li	a4, 1
	mv	a0, s0
	jalr	a5
	lw	a1, 432(s0)
	sd	a0, 0(s5)
	addi	s1, s1, 1
	addi	s5, s5, 8
	addi	s6, s6, 8
	blt	s1, a1, .LBB3_2
.LBB3_3:
	lw	s4, 44(s2)
	lw	a0, 48(s2)
	bge	s4, a0, .LBB3_20
# %bb.4:
	lw	s7, 40(s2)
	lw	a1, 472(s0)
	addi	s1, s2, 56
	addi	s5, s2, 64
	mv	s6, sp
	j	.LBB3_7
.LBB3_5:                                #   in Loop: Header=BB3_7 Depth=1
	lw	a0, 48(s2)
.LBB3_6:                                #   in Loop: Header=BB3_7 Depth=1
	li	s7, 0
	addi	s4, s4, 1
	sw	zero, 40(s2)
	bge	s4, a0, .LBB3_20
.LBB3_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
                                        #       Child Loop BB3_12 Depth 3
                                        #         Child Loop BB3_15 Depth 4
                                        #           Child Loop BB3_16 Depth 5
	bgeu	s7, a1, .LBB3_6
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB3_7 Depth=1
	slli	s8, s4, 3
.LBB3_9:                                #   Parent Loop BB3_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_12 Depth 3
                                        #         Child Loop BB3_15 Depth 4
                                        #           Child Loop BB3_16 Depth 5
	lw	a0, 432(s0)
	blez	a0, .LBB3_18
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=2
	li	a1, 0
	li	a2, 0
	j	.LBB3_12
.LBB3_11:                               #   in Loop: Header=BB3_12 Depth=3
	addi	a1, a1, 1
	beq	a1, a0, .LBB3_18
.LBB3_12:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_15 Depth 4
                                        #           Child Loop BB3_16 Depth 5
	slli	a6, a1, 3
	add	a3, s3, a6
	ld	a4, 0(a3)
	lw	a3, 56(a4)
	blez	a3, .LBB3_11
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=3
	lw	a4, 52(a4)
	blez	a4, .LBB3_11
# %bb.14:                               #   in Loop: Header=BB3_12 Depth=3
	li	a5, 0
	add	a6, s6, a6
	ld	a6, 0(a6)
	mul	a7, a4, s7
	slli	a7, a7, 32
	srli	t0, a7, 32
	add	a6, a6, s8
	addi	a7, a4, -1
	slli	a7, a7, 32
	srli	a7, a7, 29
	add	a7, s5, a7
	slli	t0, t0, 7
.LBB3_15:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_12 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_16 Depth 5
	slli	t1, a5, 3
	add	t1, a6, t1
	ld	t3, 0(t1)
	slli	t2, a2, 3
	add	t1, a7, t2
	add	t2, s1, t2
	add	t3, t3, t0
	addw	a2, a2, a4
.LBB3_16:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_12 Depth=3
                                        #         Parent Loop BB3_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	sd	t3, 0(t2)
	addi	t3, t3, 128
	addi	t2, t2, 8
	bne	t2, t1, .LBB3_16
# %bb.17:                               #   in Loop: Header=BB3_15 Depth=4
	addi	a5, a5, 1
	bne	a5, a3, .LBB3_15
	j	.LBB3_11
.LBB3_18:                               #   in Loop: Header=BB3_9 Depth=2
	ld	a0, 592(s0)
	ld	a2, 8(a0)
	mv	a0, s0
	mv	a1, s1
	jalr	a2
	beqz	a0, .LBB3_23
# %bb.19:                               #   in Loop: Header=BB3_9 Depth=2
	lw	a1, 472(s0)
	addiw	s7, s7, 1
	bltu	s7, a1, .LBB3_9
	j	.LBB3_5
.LBB3_20:
	lw	a1, 176(s0)
	lw	a2, 420(s0)
	addiw	a1, a1, 1
	sw	a1, 176(s0)
	bgeu	a1, a2, .LBB3_24
# %bb.21:
	lw	a3, 432(s0)
	ld	a0, 560(s0)
	li	a4, 2
	blt	a3, a4, .LBB3_25
# %bb.22:
	li	a1, 1
	j	.LBB3_28
.LBB3_23:
	sw	s4, 44(s2)
	sw	s7, 40(s2)
	j	.LBB3_29
.LBB3_24:
	ld	a0, 576(s0)
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	li	a0, 4
	j	.LBB3_29
.LBB3_25:
	ld	a3, 440(s0)
	addiw	a2, a2, -1
	bgeu	a1, a2, .LBB3_27
# %bb.26:
	lw	a1, 12(a3)
	j	.LBB3_28
.LBB3_27:
	lw	a1, 72(a3)
.LBB3_28:
	sw	a1, 48(a0)
	sd	zero, 40(a0)
	li	a0, 3
.LBB3_29:
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
	addi	sp, sp, 112
	ret
.Lfunc_end3:
	.size	consume_data, .Lfunc_end3-consume_data
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function decompress_data
	.type	decompress_data,@function
decompress_data:                        # @decompress_data
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
	mv	s0, a0
	lw	a0, 420(a0)
	ld	s1, 560(s0)
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	addiw	a0, a0, -1
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	j	.LBB4_2
.LBB4_1:                                #   in Loop: Header=BB4_2 Depth=1
	ld	a0, 576(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	beqz	a0, .LBB4_22
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	lw	a0, 172(s0)
	lw	a1, 180(s0)
	blt	a0, a1, .LBB4_1
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	bne	a0, a1, .LBB4_5
# %bb.4:                                #   in Loop: Header=BB4_2 Depth=1
	lw	a0, 176(s0)
	lw	a1, 184(s0)
	bgeu	a1, a0, .LBB4_1
.LBB4_5:
	lw	a0, 56(s0)
	blez	a0, .LBB4_21
# %bb.6:
	ld	s2, 304(s0)
	li	s8, 0
	addi	s9, s1, 136
	j	.LBB4_8
.LBB4_7:                                #   in Loop: Header=BB4_8 Depth=1
	lw	a0, 56(s0)
	addi	s8, s8, 1
	addi	s2, s2, 96
	bge	s8, a0, .LBB4_21
.LBB4_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
                                        #       Child Loop BB4_20 Depth 3
	lw	a0, 48(s2)
	beqz	a0, .LBB4_7
# %bb.9:                                #   in Loop: Header=BB4_8 Depth=1
	ld	a0, 8(s0)
	ld	a5, 64(a0)
	slli	s1, s8, 3
	add	a0, s9, s1
	lw	a2, 184(s0)
	lw	a3, 12(s2)
	ld	a1, 0(a0)
	mulw	a2, a3, a2
	mv	a0, s0
	li	a4, 0
	jalr	a5
	lw	a1, 184(s0)
	mv	s3, a0
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	bgeu	a1, a0, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_8 Depth=1
	lwu	s10, 12(s2)
	j	.LBB4_13
.LBB4_11:                               #   in Loop: Header=BB4_8 Depth=1
	lwu	a0, 32(s2)
	lwu	s10, 12(s2)
	remu	a0, a0, s10
	beqz	a0, .LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_8 Depth=1
	mv	s10, a0
.LBB4_13:                               #   in Loop: Header=BB4_8 Depth=1
	sext.w	a0, s10
	blez	a0, .LBB4_7
# %bb.14:                               #   in Loop: Header=BB4_8 Depth=1
	lw	a0, 28(s2)
	beqz	a0, .LBB4_7
# %bb.15:                               #   in Loop: Header=BB4_8 Depth=1
	ld	a0, 600(s0)
	add	a0, a0, s1
	ld	s11, 8(a0)
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	add	s1, a0, s1
	ld	s4, 0(s1)
	li	s1, 0
	li	a0, 1
	j	.LBB4_18
.LBB4_16:                               #   in Loop: Header=BB4_18 Depth=2
	lw	a1, 36(s2)
.LBB4_17:                               #   in Loop: Header=BB4_18 Depth=2
	slli	a1, a1, 3
	addi	s1, s1, 1
	add	s4, s4, a1
	beq	s1, s10, .LBB4_7
.LBB4_18:                               #   Parent Loop BB4_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_20 Depth 3
	beqz	a0, .LBB4_16
# %bb.19:                               #   in Loop: Header=BB4_18 Depth=2
	slli	a0, s1, 3
	add	a0, s3, a0
	ld	s5, 0(a0)
	li	s6, 0
	li	s7, 0
.LBB4_20:                               #   Parent Loop BB4_8 Depth=1
                                        #     Parent Loop BB4_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a0, s0
	mv	a1, s2
	mv	a2, s5
	mv	a3, s4
	mv	a4, s6
	jalr	s11
	lw	a1, 36(s2)
	lw	a0, 28(s2)
	addi	s5, s5, 128
	addiw	s7, s7, 1
	addw	s6, a1, s6
	bltu	s7, a0, .LBB4_20
	j	.LBB4_17
.LBB4_21:
	lw	a0, 184(s0)
	lw	a1, 420(s0)
	addiw	a0, a0, 1
	sw	a0, 184(s0)
	sltu	a0, a0, a1
	li	a1, 4
	sub	a0, a1, a0
.LBB4_22:
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
.Lfunc_end4:
	.size	decompress_data, .Lfunc_end4-decompress_data
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function dummy_consume_data
	.type	dummy_consume_data,@function
dummy_consume_data:                     # @dummy_consume_data
# %bb.0:
	li	a0, 0
	ret
.Lfunc_end5:
	.size	dummy_consume_data, .Lfunc_end5-dummy_consume_data
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function decompress_onepass
	.type	decompress_onepass,@function
decompress_onepass:                     # @decompress_onepass
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
	mv	s0, a0
	ld	a2, 560(a0)
	lw	a3, 44(a2)
	lw	a0, 48(a2)
	lw	s9, 420(s0)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	sd	a3, 48(sp)                      # 8-byte Folded Spill
	bge	a3, a0, .LBB6_26
# %bb.1:
	lw	a1, 472(s0)
	addiw	s2, a1, -1
	lw	s5, 40(a2)
	addiw	s9, s9, -1
	sd	s9, 64(sp)                      # 8-byte Folded Spill
	addi	a1, a2, 56
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	addi	s4, s0, 440
	mv	a1, a2
	sd	a2, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
.LBB6_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
                                        #       Child Loop BB6_9 Depth 3
                                        #         Child Loop BB6_16 Depth 4
                                        #           Child Loop BB6_19 Depth 5
	bgeu	s2, s5, .LBB6_4
	j	.LBB6_24
.LBB6_3:                                #   in Loop: Header=BB6_4 Depth=2
	addiw	s5, s5, 1
	bltu	s2, s5, .LBB6_23
.LBB6_4:                                #   Parent Loop BB6_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_9 Depth 3
                                        #         Child Loop BB6_16 Depth 4
                                        #           Child Loop BB6_19 Depth 5
	lw	a1, 480(s0)
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	a0, 0(s1)
	slli	a1, a1, 7
	call	jzero_far
	ld	a0, 592(s0)
	ld	a2, 8(a0)
	mv	a0, s0
	mv	a1, s1
	jalr	a2
	beqz	a0, .LBB6_29
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=2
	lw	a1, 432(s0)
	blez	a1, .LBB6_3
# %bb.6:                                #   in Loop: Header=BB6_4 Depth=2
	li	s6, 0
	li	s1, 0
	sd	s5, 40(sp)                      # 8-byte Folded Spill
	j	.LBB6_9
.LBB6_7:                                #   in Loop: Header=BB6_9 Depth=3
	lw	a0, 60(s3)
	addw	s1, a0, s1
.LBB6_8:                                #   in Loop: Header=BB6_9 Depth=3
	addi	s6, s6, 1
	bge	s6, a1, .LBB6_3
.LBB6_9:                                #   Parent Loop BB6_2 Depth=1
                                        #     Parent Loop BB6_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_16 Depth 4
                                        #           Child Loop BB6_19 Depth 5
	slli	a0, s6, 3
	add	a0, s4, a0
	ld	s3, 0(a0)
	lw	a0, 48(s3)
	beqz	a0, .LBB6_7
# %bb.10:                               #   in Loop: Header=BB6_9 Depth=3
	li	a2, 52
	bltu	s5, s2, .LBB6_12
# %bb.11:                               #   in Loop: Header=BB6_9 Depth=3
	li	a2, 68
.LBB6_12:                               #   in Loop: Header=BB6_9 Depth=3
	lw	a0, 56(s3)
	blez	a0, .LBB6_8
# %bb.13:                               #   in Loop: Header=BB6_9 Depth=3
	add	a2, s3, a2
	lw	a2, 0(a2)
	blez	a2, .LBB6_22
# %bb.14:                               #   in Loop: Header=BB6_9 Depth=3
	lw	a1, 4(s3)
	ld	a3, 600(s0)
	li	s8, 0
	slli	a4, a1, 3
	add	a3, a3, a4
	lw	a1, 36(s3)
	ld	a5, 32(sp)                      # 8-byte Folded Reload
	add	a4, a5, a4
	ld	s4, 0(a4)
	lw	a4, 64(s3)
	ld	a5, 48(sp)                      # 8-byte Folded Reload
	mulw	a5, a1, a5
	slli	a5, a5, 3
	add	s4, s4, a5
	ld	s10, 8(a3)
	mulw	s11, a4, s5
	slli	a2, a2, 3
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	add	s9, s9, a2
	j	.LBB6_16
.LBB6_15:                               #   in Loop: Header=BB6_16 Depth=4
	lw	a2, 52(s3)
	addw	s1, a2, s1
	slli	a2, a1, 3
	addiw	s8, s8, 1
	add	s4, s4, a2
	bge	s8, a0, .LBB6_21
.LBB6_16:                               #   Parent Loop BB6_2 Depth=1
                                        #     Parent Loop BB6_4 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_19 Depth 5
	lw	a2, 176(s0)
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	bltu	a2, a3, .LBB6_18
# %bb.17:                               #   in Loop: Header=BB6_16 Depth=4
	lw	a2, 72(s3)
	ld	a3, 48(sp)                      # 8-byte Folded Reload
	addw	a3, s8, a3
	bge	a3, a2, .LBB6_15
.LBB6_18:                               #   in Loop: Header=BB6_16 Depth=4
	slli	s2, s1, 3
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	add	s7, s7, s2
	add	s2, s9, s2
	mv	s5, s11
.LBB6_19:                               #   Parent Loop BB6_2 Depth=1
                                        #     Parent Loop BB6_4 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        #         Parent Loop BB6_16 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a2, 0(s7)
	mv	a0, s0
	mv	a1, s3
	mv	a3, s4
	mv	a4, s5
	jalr	s10
	lw	a1, 36(s3)
	addi	s7, s7, 8
	addw	s5, a1, s5
	bne	s7, s2, .LBB6_19
# %bb.20:                               #   in Loop: Header=BB6_16 Depth=4
	lw	a0, 56(s3)
	j	.LBB6_15
.LBB6_21:                               #   in Loop: Header=BB6_9 Depth=3
	lw	a1, 432(s0)
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	j	.LBB6_8
.LBB6_22:                               #   in Loop: Header=BB6_9 Depth=3
	lw	a2, 52(s3)
	mul	a0, a2, a0
	addw	s1, s1, a0
	j	.LBB6_8
.LBB6_23:                               #   in Loop: Header=BB6_2 Depth=1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	lw	a0, 48(a1)
.LBB6_24:                               #   in Loop: Header=BB6_2 Depth=1
	li	s5, 0
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	addiw	a2, a2, 1
	sw	zero, 40(a1)
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	blt	a2, a0, .LBB6_2
# %bb.25:
	lw	s9, 420(s0)
.LBB6_26:
	lw	a0, 184(s0)
	lw	a1, 176(s0)
	addi	a0, a0, 1
	sw	a0, 184(s0)
	addiw	a1, a1, 1
	sw	a1, 176(s0)
	bgeu	a1, s9, .LBB6_30
# %bb.27:
	lw	a2, 432(s0)
	ld	a0, 560(s0)
	li	a3, 2
	blt	a2, a3, .LBB6_31
# %bb.28:
	li	a1, 1
	j	.LBB6_34
.LBB6_29:
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	sw	a2, 44(a1)
	sw	s5, 40(a1)
	j	.LBB6_35
.LBB6_30:
	ld	a0, 576(s0)
	ld	a1, 24(a0)
	mv	a0, s0
	jalr	a1
	li	a0, 4
	j	.LBB6_35
.LBB6_31:
	ld	a2, 440(s0)
	addiw	s9, s9, -1
	bgeu	a1, s9, .LBB6_33
# %bb.32:
	lw	a1, 12(a2)
	j	.LBB6_34
.LBB6_33:
	lw	a1, 72(a2)
.LBB6_34:
	sw	a1, 48(a0)
	sd	zero, 40(a0)
	li	a0, 3
.LBB6_35:
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
	addi	sp, sp, 176
	ret
.Lfunc_end6:
	.size	decompress_onepass, .Lfunc_end6-decompress_onepass
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function decompress_smooth_data
	.type	decompress_smooth_data,@function
decompress_smooth_data:                 # @decompress_smooth_data
# %bb.0:
	addi	sp, sp, -480
	sd	ra, 472(sp)                     # 8-byte Folded Spill
	sd	s0, 464(sp)                     # 8-byte Folded Spill
	sd	s1, 456(sp)                     # 8-byte Folded Spill
	sd	s2, 448(sp)                     # 8-byte Folded Spill
	sd	s3, 440(sp)                     # 8-byte Folded Spill
	sd	s4, 432(sp)                     # 8-byte Folded Spill
	sd	s5, 424(sp)                     # 8-byte Folded Spill
	sd	s6, 416(sp)                     # 8-byte Folded Spill
	sd	s7, 408(sp)                     # 8-byte Folded Spill
	sd	s8, 400(sp)                     # 8-byte Folded Spill
	sd	s9, 392(sp)                     # 8-byte Folded Spill
	sd	s10, 384(sp)                    # 8-byte Folded Spill
	sd	s11, 376(sp)                    # 8-byte Folded Spill
	mv	s4, a0
	lw	a0, 420(a0)
	ld	a2, 560(s4)
	sd	a2, 8(sp)                       # 8-byte Folded Spill
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	addiw	a0, a0, -1
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	j	.LBB7_2
.LBB7_1:                                #   in Loop: Header=BB7_2 Depth=1
	ld	a1, 0(a0)
	mv	a0, s4
	jalr	a1
	beqz	a0, .LBB7_89
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	lw	a1, 172(s4)
	lw	a2, 180(s4)
	blt	a2, a1, .LBB7_6
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	ld	a0, 576(s4)
	lw	a3, 36(a0)
	bnez	a3, .LBB7_6
# %bb.4:                                #   in Loop: Header=BB7_2 Depth=1
	bne	a1, a2, .LBB7_1
# %bb.5:                                #   in Loop: Header=BB7_2 Depth=1
	lw	a1, 524(s4)
	lw	a2, 184(s4)
	lw	a3, 176(s4)
	seqz	a1, a1
	addw	a1, a2, a1
	bgeu	a1, a3, .LBB7_1
.LBB7_6:
	lw	a0, 56(s4)
	blez	a0, .LBB7_88
# %bb.7:
	sd	zero, 24(sp)                    # 8-byte Folded Spill
	ld	s9, 304(s4)
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	addi	a0, a0, 136
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 168(sp)                     # 8-byte Folded Spill
	j	.LBB7_9
.LBB7_8:                                #   in Loop: Header=BB7_9 Depth=1
	lw	a0, 56(s4)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 1
	addi	s9, s9, 96
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	bge	a1, a0, .LBB7_88
.LBB7_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
                                        #       Child Loop BB7_28 Depth 3
	lw	a0, 48(s9)
	beqz	a0, .LBB7_8
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=1
	lw	s1, 184(s4)
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	bltu	s1, a0, .LBB7_15
# %bb.11:                               #   in Loop: Header=BB7_9 Depth=1
	lw	a1, 32(s9)
	lw	a0, 12(s9)
	remuw	a1, a1, a0
	mv	a3, a0
	beqz	a1, .LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_9 Depth=1
	mv	a3, a1
.LBB7_13:                               #   in Loop: Header=BB7_9 Depth=1
	sd	a3, 64(sp)                      # 8-byte Folded Spill
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	slli	s0, s0, 3
	beqz	s1, .LBB7_16
.LBB7_14:                               #   in Loop: Header=BB7_9 Depth=1
	ld	a1, 8(s4)
	ld	a5, 64(a1)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a1, a1, s0
	ld	a1, 0(a1)
	addw	a3, a0, a3
	addi	a2, s1, -1
	mulw	a2, a0, a2
	mv	a0, s4
	li	a4, 0
	jalr	a5
	lw	a1, 12(s9)
	slli	a1, a1, 3
	add	a0, a0, a1
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	bgtz	a0, .LBB7_17
	j	.LBB7_8
.LBB7_15:                               #   in Loop: Header=BB7_9 Depth=1
	lw	a0, 12(s9)
	slliw	a3, a0, 1
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	slli	s0, s0, 3
	bnez	s1, .LBB7_14
.LBB7_16:                               #   in Loop: Header=BB7_9 Depth=1
	ld	a0, 8(s4)
	ld	a5, 64(a0)
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	a0, a0, s0
	ld	a1, 0(a0)
	mv	a0, s4
	li	a2, 0
	li	a4, 0
	jalr	a5
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	blez	a0, .LBB7_8
.LBB7_17:                               #   in Loop: Header=BB7_9 Depth=1
	ld	a0, 600(s4)
	li	t0, 0
	add	a0, a0, s0
	ld	a1, 80(s9)
	ld	a0, 8(a0)
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	add	s0, a0, s0
	ld	a0, 0(s0)
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	lhu	a0, 4(a1)
	lhu	a2, 18(a1)
	lhu	a3, 32(a1)
	lhu	a4, 16(a1)
	ld	a5, 8(sp)                       # 8-byte Folded Reload
	ld	s8, 216(a5)
	lhu	a5, 2(a1)
	lhu	a1, 0(a1)
	ld	a6, 24(sp)                      # 8-byte Folded Reload
	li	a7, 24
	mul	a6, a6, a7
	add	s8, s8, a6
	ld	a6, 64(sp)                      # 8-byte Folded Reload
	addiw	a6, a6, -1
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	li	a6, 36
	mul	a6, a1, a6
	sd	a6, 192(sp)                     # 8-byte Folded Spill
	slli	a6, a5, 7
	sd	a6, 160(sp)                     # 8-byte Folded Spill
	slli	a5, a5, 8
	sd	a5, 152(sp)                     # 8-byte Folded Spill
	slli	a5, a4, 7
	sd	a5, 144(sp)                     # 8-byte Folded Spill
	slli	a4, a4, 8
	sd	a4, 136(sp)                     # 8-byte Folded Spill
	slli	a4, a1, 3
	add	a4, a4, a1
	sd	a4, 184(sp)                     # 8-byte Folded Spill
	slli	a4, a3, 7
	sd	a4, 128(sp)                     # 8-byte Folded Spill
	slli	a3, a3, 8
	sd	a3, 120(sp)                     # 8-byte Folded Spill
	slli	a3, a1, 2
	add	a1, a3, a1
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	slli	a1, a2, 7
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 8
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	slli	a1, a0, 7
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	slli	a0, a0, 8
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s9, 176(sp)                     # 8-byte Folded Spill
	j	.LBB7_19
.LBB7_18:                               #   in Loop: Header=BB7_19 Depth=2
	slli	a0, a0, 3
	ld	t0, 72(sp)                      # 8-byte Folded Reload
	addi	t0, t0, 1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	add	a1, a1, a0
	sd	a1, 208(sp)                     # 8-byte Folded Spill
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	beq	t0, a0, .LBB7_8
.LBB7_19:                               #   Parent Loop BB7_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_28 Depth 3
	slli	a2, t0, 3
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	add	a2, a0, a2
	ld	s5, 0(a2)
	or	a0, s1, t0
	sext.w	a1, a0
	mv	a0, s5
	beqz	a1, .LBB7_21
# %bb.20:                               #   in Loop: Header=BB7_19 Depth=2
	ld	a0, -8(a2)
.LBB7_21:                               #   in Loop: Header=BB7_19 Depth=2
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	bltu	s1, a1, .LBB7_23
# %bb.22:                               #   in Loop: Header=BB7_19 Depth=2
	mv	a1, s5
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	beq	t0, a3, .LBB7_24
.LBB7_23:                               #   in Loop: Header=BB7_19 Depth=2
	ld	a1, 8(a2)
.LBB7_24:                               #   in Loop: Header=BB7_19 Depth=2
	sd	t0, 72(sp)                      # 8-byte Folded Spill
	lh	s3, 0(a0)
	lw	a2, 28(s9)
	lh	s10, 0(s5)
	lh	s0, 0(a1)
	li	s11, 0
	li	s6, 0
	addiw	s2, a2, -1
	addi	s7, a0, 128
	addi	s1, a1, 128
	sd	s0, 224(sp)                     # 8-byte Folded Spill
	sd	s10, 240(sp)                    # 8-byte Folded Spill
	sd	s3, 232(sp)                     # 8-byte Folded Spill
	j	.LBB7_28
.LBB7_25:                               #   in Loop: Header=BB7_28 Depth=3
	negw	a1, a2
.LBB7_26:                               #   in Loop: Header=BB7_28 Depth=3
	sh	a1, 252(sp)
.LBB7_27:                               #   in Loop: Header=BB7_28 Depth=3
	addi	a2, sp, 248
	ld	s4, 168(sp)                     # 8-byte Folded Reload
	mv	a0, s4
	mv	a1, s9
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	mv	a4, s6
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	jalr	a5
	lw	a0, 36(s9)
	addi	s5, s5, 128
	addw	s6, a0, s6
	addiw	s11, s11, 1
	addi	s7, s7, 128
	addi	s1, s1, 128
	bltu	s2, s11, .LBB7_18
.LBB7_28:                               #   Parent Loop BB7_9 Depth=1
                                        #     Parent Loop BB7_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sd	s3, 216(sp)                     # 8-byte Folded Spill
	ld	s3, 232(sp)                     # 8-byte Folded Reload
	mv	s4, s10
	ld	s10, 240(sp)                    # 8-byte Folded Reload
	mv	s9, s0
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	addi	a1, sp, 248
	li	a2, 1
	mv	a0, s5
	call	jcopy_block_row
	bgeu	s11, s2, .LBB7_30
# %bb.29:                               #   in Loop: Header=BB7_28 Depth=3
	lh	a0, 0(s7)
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	lh	a0, 128(s5)
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	lh	a0, 0(s1)
	sd	a0, 224(sp)                     # 8-byte Folded Spill
.LBB7_30:                               #   in Loop: Header=BB7_28 Depth=3
	lw	a0, 4(s8)
	beqz	a0, .LBB7_42
# %bb.31:                               #   in Loop: Header=BB7_28 Depth=3
	lhu	a1, 250(sp)
	bnez	a1, .LBB7_42
# %bb.32:                               #   in Loop: Header=BB7_28 Depth=3
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	subw	a1, s4, a1
	ld	a2, 192(sp)                     # 8-byte Folded Reload
	mul	a1, a2, a1
	bltz	a1, .LBB7_36
# %bb.33:                               #   in Loop: Header=BB7_28 Depth=3
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	divu	a1, a1, a2
	blez	a0, .LBB7_41
# %bb.34:                               #   in Loop: Header=BB7_28 Depth=3
	sext.w	a2, a1
	li	a3, 1
	sllw	a0, a3, a0
	blt	a2, a0, .LBB7_41
# %bb.35:                               #   in Loop: Header=BB7_28 Depth=3
	addi	a1, a0, -1
	j	.LBB7_41
.LBB7_36:                               #   in Loop: Header=BB7_28 Depth=3
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	sub	a1, a2, a1
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	divu	a1, a1, a2
	sext.w	a4, a1
	li	a2, 1
	sllw	a3, a2, a0
	mv	a2, a1
	blt	a4, a3, .LBB7_38
# %bb.37:                               #   in Loop: Header=BB7_28 Depth=3
	addi	a2, a3, -1
.LBB7_38:                               #   in Loop: Header=BB7_28 Depth=3
	bgtz	a0, .LBB7_40
# %bb.39:                               #   in Loop: Header=BB7_28 Depth=3
	mv	a2, a1
.LBB7_40:                               #   in Loop: Header=BB7_28 Depth=3
	negw	a1, a2
.LBB7_41:                               #   in Loop: Header=BB7_28 Depth=3
	sh	a1, 250(sp)
.LBB7_42:                               #   in Loop: Header=BB7_28 Depth=3
	lw	a0, 8(s8)
	beqz	a0, .LBB7_54
# %bb.43:                               #   in Loop: Header=BB7_28 Depth=3
	lhu	a1, 264(sp)
	bnez	a1, .LBB7_54
# %bb.44:                               #   in Loop: Header=BB7_28 Depth=3
	subw	a1, s3, s0
	ld	a2, 192(sp)                     # 8-byte Folded Reload
	mul	a1, a2, a1
	bltz	a1, .LBB7_48
# %bb.45:                               #   in Loop: Header=BB7_28 Depth=3
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	divu	a1, a1, a2
	blez	a0, .LBB7_53
# %bb.46:                               #   in Loop: Header=BB7_28 Depth=3
	sext.w	a2, a1
	li	a3, 1
	sllw	a0, a3, a0
	blt	a2, a0, .LBB7_53
# %bb.47:                               #   in Loop: Header=BB7_28 Depth=3
	addi	a1, a0, -1
	j	.LBB7_53
.LBB7_48:                               #   in Loop: Header=BB7_28 Depth=3
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	sub	a1, a2, a1
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	divu	a1, a1, a2
	sext.w	a4, a1
	li	a2, 1
	sllw	a3, a2, a0
	mv	a2, a1
	blt	a4, a3, .LBB7_50
# %bb.49:                               #   in Loop: Header=BB7_28 Depth=3
	addi	a2, a3, -1
.LBB7_50:                               #   in Loop: Header=BB7_28 Depth=3
	bgtz	a0, .LBB7_52
# %bb.51:                               #   in Loop: Header=BB7_28 Depth=3
	mv	a2, a1
.LBB7_52:                               #   in Loop: Header=BB7_28 Depth=3
	negw	a1, a2
.LBB7_53:                               #   in Loop: Header=BB7_28 Depth=3
	sh	a1, 264(sp)
.LBB7_54:                               #   in Loop: Header=BB7_28 Depth=3
	lw	a0, 12(s8)
	beqz	a0, .LBB7_66
# %bb.55:                               #   in Loop: Header=BB7_28 Depth=3
	lhu	a1, 280(sp)
	bnez	a1, .LBB7_66
# %bb.56:                               #   in Loop: Header=BB7_28 Depth=3
	slli	a1, s10, 1
	add	a2, s3, s0
	subw	a2, a2, a1
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	mul	a1, a1, a2
	bltz	a1, .LBB7_60
# %bb.57:                               #   in Loop: Header=BB7_28 Depth=3
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	divu	a1, a1, a2
	blez	a0, .LBB7_65
# %bb.58:                               #   in Loop: Header=BB7_28 Depth=3
	sext.w	a2, a1
	li	a3, 1
	sllw	a0, a3, a0
	blt	a2, a0, .LBB7_65
# %bb.59:                               #   in Loop: Header=BB7_28 Depth=3
	addi	a1, a0, -1
	j	.LBB7_65
.LBB7_60:                               #   in Loop: Header=BB7_28 Depth=3
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	sub	a1, a2, a1
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	divu	a1, a1, a2
	sext.w	a4, a1
	li	a2, 1
	sllw	a3, a2, a0
	mv	a2, a1
	blt	a4, a3, .LBB7_62
# %bb.61:                               #   in Loop: Header=BB7_28 Depth=3
	addi	a2, a3, -1
.LBB7_62:                               #   in Loop: Header=BB7_28 Depth=3
	bgtz	a0, .LBB7_64
# %bb.63:                               #   in Loop: Header=BB7_28 Depth=3
	mv	a2, a1
.LBB7_64:                               #   in Loop: Header=BB7_28 Depth=3
	negw	a1, a2
.LBB7_65:                               #   in Loop: Header=BB7_28 Depth=3
	sh	a1, 280(sp)
.LBB7_66:                               #   in Loop: Header=BB7_28 Depth=3
	lw	a0, 16(s8)
	beqz	a0, .LBB7_78
# %bb.67:                               #   in Loop: Header=BB7_28 Depth=3
	lhu	a1, 266(sp)
	bnez	a1, .LBB7_78
# %bb.68:                               #   in Loop: Header=BB7_28 Depth=3
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	add	s9, s9, a1
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	subw	a1, a1, s9
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	mul	a1, a2, a1
	bltz	a1, .LBB7_72
# %bb.69:                               #   in Loop: Header=BB7_28 Depth=3
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	divu	a1, a1, a2
	blez	a0, .LBB7_77
# %bb.70:                               #   in Loop: Header=BB7_28 Depth=3
	sext.w	a2, a1
	li	a3, 1
	sllw	a0, a3, a0
	blt	a2, a0, .LBB7_77
# %bb.71:                               #   in Loop: Header=BB7_28 Depth=3
	addi	a1, a0, -1
	j	.LBB7_77
.LBB7_72:                               #   in Loop: Header=BB7_28 Depth=3
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	sub	a1, a2, a1
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	divu	a1, a1, a2
	sext.w	a4, a1
	li	a2, 1
	sllw	a3, a2, a0
	mv	a2, a1
	blt	a4, a3, .LBB7_74
# %bb.73:                               #   in Loop: Header=BB7_28 Depth=3
	addi	a2, a3, -1
.LBB7_74:                               #   in Loop: Header=BB7_28 Depth=3
	bgtz	a0, .LBB7_76
# %bb.75:                               #   in Loop: Header=BB7_28 Depth=3
	mv	a2, a1
.LBB7_76:                               #   in Loop: Header=BB7_28 Depth=3
	negw	a1, a2
.LBB7_77:                               #   in Loop: Header=BB7_28 Depth=3
	sh	a1, 266(sp)
.LBB7_78:                               #   in Loop: Header=BB7_28 Depth=3
	lw	a0, 20(s8)
	ld	s9, 176(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB7_27
# %bb.79:                               #   in Loop: Header=BB7_28 Depth=3
	lhu	a1, 252(sp)
	bnez	a1, .LBB7_27
# %bb.80:                               #   in Loop: Header=BB7_28 Depth=3
	slli	a1, s10, 1
	ld	a2, 240(sp)                     # 8-byte Folded Reload
	add	s4, s4, a2
	subw	a1, s4, a1
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	mul	a1, a2, a1
	bltz	a1, .LBB7_84
# %bb.81:                               #   in Loop: Header=BB7_28 Depth=3
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	add	a1, a1, a2
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	divu	a1, a1, a2
	blez	a0, .LBB7_26
# %bb.82:                               #   in Loop: Header=BB7_28 Depth=3
	sext.w	a2, a1
	li	a3, 1
	sllw	a0, a3, a0
	blt	a2, a0, .LBB7_26
# %bb.83:                               #   in Loop: Header=BB7_28 Depth=3
	addi	a1, a0, -1
	j	.LBB7_26
.LBB7_84:                               #   in Loop: Header=BB7_28 Depth=3
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	sub	a1, a2, a1
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	divu	a1, a1, a2
	sext.w	a4, a1
	li	a2, 1
	sllw	a3, a2, a0
	mv	a2, a1
	blt	a4, a3, .LBB7_86
# %bb.85:                               #   in Loop: Header=BB7_28 Depth=3
	addi	a2, a3, -1
.LBB7_86:                               #   in Loop: Header=BB7_28 Depth=3
	bgtz	a0, .LBB7_25
# %bb.87:                               #   in Loop: Header=BB7_28 Depth=3
	mv	a2, a1
	j	.LBB7_25
.LBB7_88:
	lw	a0, 184(s4)
	lw	a1, 420(s4)
	addiw	a0, a0, 1
	sw	a0, 184(s4)
	sltu	a0, a0, a1
	li	a1, 4
	sub	a0, a1, a0
.LBB7_89:
	ld	ra, 472(sp)                     # 8-byte Folded Reload
	ld	s0, 464(sp)                     # 8-byte Folded Reload
	ld	s1, 456(sp)                     # 8-byte Folded Reload
	ld	s2, 448(sp)                     # 8-byte Folded Reload
	ld	s3, 440(sp)                     # 8-byte Folded Reload
	ld	s4, 432(sp)                     # 8-byte Folded Reload
	ld	s5, 424(sp)                     # 8-byte Folded Reload
	ld	s6, 416(sp)                     # 8-byte Folded Reload
	ld	s7, 408(sp)                     # 8-byte Folded Reload
	ld	s8, 400(sp)                     # 8-byte Folded Reload
	ld	s9, 392(sp)                     # 8-byte Folded Reload
	ld	s10, 384(sp)                    # 8-byte Folded Reload
	ld	s11, 376(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 480
	ret
.Lfunc_end7:
	.size	decompress_smooth_data, .Lfunc_end7-decompress_smooth_data
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
