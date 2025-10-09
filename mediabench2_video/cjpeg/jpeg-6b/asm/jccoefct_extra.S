	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jccoefct.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_c_coef_controller         # -- Begin function jinit_c_coef_controller
	.p2align	2
	.type	jinit_c_coef_controller,@function
jinit_c_coef_controller:                # @jinit_c_coef_controller
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	mv	s2, a1
	li	a1, 1
	li	a2, 192
	mv	a0, s0
	jalr	a3
	mv	s1, a0
	sd	a0, 456(s0)
	lui	a0, %hi(start_pass_coef)
	addi	a0, a0, %lo(start_pass_coef)
	sd	a0, 0(s1)
	beqz	s2, .LBB0_4
# %bb.1:
	lw	a0, 76(s0)
	blez	a0, .LBB0_5
# %bb.2:
	ld	s4, 88(s0)
	li	s2, 0
	addi	s3, s1, 112
	addi	s4, s4, 28
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 8(s0)
	ld	s5, 40(a0)
	lwu	a0, 0(s4)
	lw	a1, -20(s4)
	call	jround_up
	lwu	a2, 4(s4)
	lw	a1, -16(s4)
	mv	s1, a0
	mv	a0, a2
	call	jround_up
	lw	a5, -16(s4)
	sext.w	a3, s1
	sext.w	a4, a0
	li	a1, 1
	mv	a0, s0
	li	a2, 0
	jalr	s5
	lw	a1, 76(s0)
	sd	a0, 0(s3)
	addi	s2, s2, 1
	addi	s3, s3, 8
	addi	s4, s4, 96
	blt	s2, a1, .LBB0_3
	j	.LBB0_5
.LBB0_4:
	ld	a0, 8(s0)
	ld	a3, 8(a0)
	li	a1, 1
	li	a2, 1280
	mv	a0, s0
	jalr	a3
	sd	a0, 32(s1)
	addi	a1, a0, 128
	sd	a1, 40(s1)
	addi	a1, a0, 256
	sd	a1, 48(s1)
	addi	a1, a0, 384
	sd	a1, 56(s1)
	addi	a1, a0, 512
	sd	a1, 64(s1)
	addi	a1, a0, 640
	sd	a1, 72(s1)
	addi	a1, a0, 768
	sd	a1, 80(s1)
	addi	a1, a0, 896
	sd	a1, 88(s1)
	addi	a1, a0, 1024
	sd	a1, 96(s1)
	addi	a0, a0, 1152
	sd	a0, 104(s1)
	sd	zero, 112(s1)
.LBB0_5:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	jinit_c_coef_controller, .Lfunc_end0-jinit_c_coef_controller
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_coef
	.type	start_pass_coef,@function
start_pass_coef:                        # @start_pass_coef
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	ld	s0, 456(a0)
	lw	a2, 324(a0)
	li	a3, 2
	sw	zero, 16(s0)
	blt	a2, a3, .LBB1_2
# %bb.1:
	li	a2, 1
	j	.LBB1_5
.LBB1_2:
	lw	a3, 320(a0)
	ld	a2, 328(a0)
	li	a4, 1
	bne	a3, a4, .LBB1_4
# %bb.3:
	lw	a2, 72(a2)
	j	.LBB1_5
.LBB1_4:
	lw	a2, 12(a2)
.LBB1_5:
	sw	a2, 28(s0)
	sw	zero, 20(s0)
	li	a2, 3
	sw	zero, 24(s0)
	beq	a1, a2, .LBB1_14
# %bb.6:
	li	a2, 2
	beq	a1, a2, .LBB1_11
# %bb.7:
	bnez	a1, .LBB1_18
# %bb.8:
	ld	a1, 112(s0)
	beqz	a1, .LBB1_10
# %bb.9:
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 4
	sw	a3, 40(a1)
	jalr	a2
.LBB1_10:
	lui	a0, %hi(compress_data)
	addi	a0, a0, %lo(compress_data)
	j	.LBB1_17
.LBB1_11:
	ld	a1, 112(s0)
	bnez	a1, .LBB1_13
# %bb.12:
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 4
	sw	a3, 40(a1)
	jalr	a2
.LBB1_13:
	lui	a0, %hi(compress_output)
	addi	a0, a0, %lo(compress_output)
	j	.LBB1_17
.LBB1_14:
	ld	a1, 112(s0)
	bnez	a1, .LBB1_16
# %bb.15:
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 4
	sw	a3, 40(a1)
	jalr	a2
.LBB1_16:
	lui	a0, %hi(compress_first_pass)
	addi	a0, a0, %lo(compress_first_pass)
.LBB1_17:
	sd	a0, 8(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB1_18:
	ld	a1, 0(a0)
	ld	t1, 0(a1)
	li	a2, 4
	sw	a2, 40(a1)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	jr	t1
.Lfunc_end1:
	.size	start_pass_coef, .Lfunc_end1-start_pass_coef
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function compress_data
	.type	compress_data,@function
compress_data:                          # @compress_data
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
	mv	s0, a0
	ld	s2, 456(a0)
	lw	s1, 24(s2)
	lw	a0, 28(s2)
	mv	s7, a1
	mv	a1, s2
	bge	s1, a0, .LBB2_31
# %bb.1:
	lw	a1, 360(s0)
	lw	s10, 320(s0)
	addiw	a1, a1, -1
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	lw	s6, 20(s2)
	addiw	s10, s10, -1
	addi	a1, s0, 328
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	addi	s5, s2, 32
	sd	s10, 40(sp)                     # 8-byte Folded Spill
	j	.LBB2_4
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	lw	a0, 28(s2)
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	li	s6, 0
	addiw	s1, s1, 1
	sw	zero, 20(s2)
	bge	s1, a0, .LBB2_30
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
                                        #       Child Loop BB2_10 Depth 3
                                        #         Child Loop BB2_17 Depth 4
                                        #           Child Loop BB2_25 Depth 5
                                        #           Child Loop BB2_22 Depth 5
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	bltu	a1, s6, .LBB2_3
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	slliw	a0, s1, 3
	sd	a0, 0(sp)                       # 8-byte Folded Spill
.LBB2_6:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_10 Depth 3
                                        #         Child Loop BB2_17 Depth 4
                                        #           Child Loop BB2_25 Depth 5
                                        #           Child Loop BB2_22 Depth 5
	lw	a0, 324(s0)
	blez	a0, .LBB2_27
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=2
	li	a4, 0
	li	s11, 0
	sd	s6, 8(sp)                       # 8-byte Folded Spill
	j	.LBB2_10
.LBB2_8:                                #   in Loop: Header=BB2_10 Depth=3
	lw	a0, 324(s0)
	ld	s6, 8(sp)                       # 8-byte Folded Reload
	ld	a4, 32(sp)                      # 8-byte Folded Reload
.LBB2_9:                                #   in Loop: Header=BB2_10 Depth=3
	addi	a4, a4, 1
	bge	a4, a0, .LBB2_27
.LBB2_10:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_17 Depth 4
                                        #           Child Loop BB2_25 Depth 5
                                        #           Child Loop BB2_22 Depth 5
	li	a1, 52
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	bltu	s6, a2, .LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=3
	li	a1, 68
.LBB2_12:                               #   in Loop: Header=BB2_10 Depth=3
	slli	a2, a4, 3
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	ld	s3, 0(a2)
	lw	a2, 56(s3)
	blez	a2, .LBB2_9
# %bb.13:                               #   in Loop: Header=BB2_10 Depth=3
	sd	a4, 32(sp)                      # 8-byte Folded Spill
	add	a1, s3, a1
	lw	a0, 64(s3)
	lw	s4, 0(a1)
	li	s8, 0
	mulw	s9, a0, s6
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	sd	s9, 48(sp)                      # 8-byte Folded Spill
	j	.LBB2_17
.LBB2_14:                               #   in Loop: Header=BB2_17 Depth=4
	mv	s1, s7
	mv	s2, s10
	mv	s7, s9
	ld	s10, 40(sp)                     # 8-byte Folded Reload
.LBB2_15:                               #   in Loop: Header=BB2_17 Depth=4
	ld	s9, 48(sp)                      # 8-byte Folded Reload
.LBB2_16:                               #   in Loop: Header=BB2_17 Depth=4
	lw	a0, 56(s3)
	addw	s11, a1, s11
	addiw	s8, s8, 1
	addiw	s6, s6, 8
	bge	s8, a0, .LBB2_8
.LBB2_17:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        #       Parent Loop BB2_10 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_25 Depth 5
                                        #           Child Loop BB2_22 Depth 5
	lw	a0, 16(s2)
	bltu	a0, s10, .LBB2_19
# %bb.18:                               #   in Loop: Header=BB2_17 Depth=4
	lw	a0, 72(s3)
	addw	a1, s8, s1
	bge	a1, a0, .LBB2_23
.LBB2_19:                               #   in Loop: Header=BB2_17 Depth=4
	ld	a0, 488(s0)
	lw	a1, 4(s3)
	ld	a7, 8(a0)
	slli	a1, a1, 3
	add	a1, s7, a1
	ld	a2, 0(a1)
	slli	a0, s11, 3
	add	a0, s5, a0
	ld	a3, 0(a0)
	mv	a0, s0
	mv	a1, s3
	mv	a4, s6
	mv	a5, s9
	mv	a6, s4
	jalr	a7
	lw	a1, 52(s3)
	bge	s4, a1, .LBB2_16
# %bb.20:                               #   in Loop: Header=BB2_17 Depth=4
	addw	a0, s11, s4
	slli	a0, a0, 3
	add	a0, s5, a0
	ld	a0, 0(a0)
	subw	a1, a1, s4
	slli	a1, a1, 7
	call	jzero_far
	lw	a1, 52(s3)
	bge	s4, a1, .LBB2_16
# %bb.21:                               #   in Loop: Header=BB2_17 Depth=4
	add	a0, s4, s11
	slli	a0, a0, 3
	add	a0, s5, a0
	add	a2, s11, a1
	slli	a2, a2, 3
	add	a2, s5, a2
.LBB2_22:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        #       Parent Loop BB2_10 Depth=3
                                        #         Parent Loop BB2_17 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a3, -8(a0)
	lh	a3, 0(a3)
	ld	a4, 0(a0)
	addi	a0, a0, 8
	sh	a3, 0(a4)
	bne	a0, a2, .LBB2_22
	j	.LBB2_16
.LBB2_23:                               #   in Loop: Header=BB2_17 Depth=4
	mv	s9, s7
	mv	s10, s2
	mv	s7, s1
	slli	s1, s11, 3
	add	s2, s5, s1
	lw	a1, 52(s3)
	ld	a0, 0(s2)
	slli	a1, a1, 7
	call	jzero_far
	lw	a1, 52(s3)
	blez	a1, .LBB2_14
# %bb.24:                               #   in Loop: Header=BB2_17 Depth=4
	ld	a0, -8(s2)
	lhu	a0, 0(a0)
	slli	a2, a1, 3
	mv	a4, s5
	add	s1, s5, s1
	add	a2, s1, a2
.LBB2_25:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        #       Parent Loop BB2_10 Depth=3
                                        #         Parent Loop BB2_17 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a3, 0(s2)
	addi	s2, s2, 8
	sh	a0, 0(a3)
	bne	s2, a2, .LBB2_25
# %bb.26:                               #   in Loop: Header=BB2_17 Depth=4
	mv	s1, s7
	mv	s2, s10
	mv	s7, s9
	ld	s10, 40(sp)                     # 8-byte Folded Reload
	mv	s5, a4
	j	.LBB2_15
.LBB2_27:                               #   in Loop: Header=BB2_6 Depth=2
	ld	a0, 496(s0)
	ld	a2, 8(a0)
	mv	a0, s0
	mv	a1, s5
	jalr	a2
	beqz	a0, .LBB2_29
# %bb.28:                               #   in Loop: Header=BB2_6 Depth=2
	addiw	s6, s6, 1
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	bgeu	a0, s6, .LBB2_6
	j	.LBB2_2
.LBB2_29:
	sw	s1, 24(s2)
	sw	s6, 20(s2)
	j	.LBB2_37
.LBB2_30:
	ld	a1, 456(s0)
.LBB2_31:
	lw	a0, 16(s2)
	lw	a2, 324(s0)
	addi	a0, a0, 1
	li	a3, 2
	sw	a0, 16(s2)
	blt	a2, a3, .LBB2_33
# %bb.32:
	li	a0, 1
	j	.LBB2_36
.LBB2_33:
	lw	a2, 320(s0)
	lw	a3, 16(a1)
	ld	a0, 328(s0)
	addiw	a2, a2, -1
	bgeu	a3, a2, .LBB2_35
# %bb.34:
	lw	a0, 12(a0)
	j	.LBB2_36
.LBB2_35:
	lw	a0, 72(a0)
.LBB2_36:
	sw	a0, 28(a1)
	sw	zero, 20(a1)
	sw	zero, 24(a1)
	li	a0, 1
.LBB2_37:
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
.Lfunc_end2:
	.size	compress_data, .Lfunc_end2-compress_data
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function compress_first_pass
	.type	compress_first_pass,@function
compress_first_pass:                    # @compress_first_pass
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
	mv	s0, a0
	lw	a0, 76(a0)
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	blez	a0, .LBB3_31
# %bb.1:
	lw	a0, 320(s0)
	ld	s9, 456(s0)
	ld	s2, 88(s0)
	li	a1, 0
	addiw	s10, a0, -1
	addi	a0, s9, 112
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	j	.LBB3_3
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	lw	a0, 76(s0)
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 1
	addi	s2, s2, 96
	bge	a1, a0, .LBB3_31
.LBB3_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
                                        #     Child Loop BB3_12 Depth 2
                                        #       Child Loop BB3_13 Depth 3
                                        #     Child Loop BB3_30 Depth 2
                                        #     Child Loop BB3_24 Depth 2
                                        #       Child Loop BB3_25 Depth 3
                                        #         Child Loop BB3_26 Depth 4
                                        #     Child Loop BB3_21 Depth 2
	ld	a0, 8(s0)
	ld	a5, 64(a0)
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	slli	s8, a1, 3
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	add	a0, a0, s8
	lw	a2, 16(s9)
	lw	a3, 12(s2)
	ld	a1, 0(a0)
	mulw	a2, a3, a2
	li	a4, 1
	mv	a0, s0
	jalr	a5
	lw	a1, 16(s9)
	mv	s3, a0
	bgeu	a1, s10, .LBB3_5
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	lw	s1, 12(s2)
	j	.LBB3_7
.LBB3_5:                                #   in Loop: Header=BB3_3 Depth=1
	lw	a0, 32(s2)
	lw	s1, 12(s2)
	remuw	a0, a0, s1
	beqz	a0, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_3 Depth=1
	mv	s1, a0
.LBB3_7:                                #   in Loop: Header=BB3_3 Depth=1
	lw	s4, 28(s2)
	lw	a0, 8(s2)
	remuw	a1, s4, a0
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	blez	a1, .LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_3 Depth=1
	subw	a1, a0, a1
.LBB3_9:                                #   in Loop: Header=BB3_3 Depth=1
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	blez	s1, .LBB3_17
# %bb.10:                               #   in Loop: Header=BB3_3 Depth=1
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	add	s8, a0, s8
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	blez	a1, .LBB3_15
# %bb.11:                               # %.preheader3
                                        #   in Loop: Header=BB3_3 Depth=1
	li	s11, 0
	slli	a0, s4, 32
	srli	a0, a0, 32
	slli	a1, a1, 32
	srli	a2, a1, 32
	srli	s5, a1, 25
	slli	a2, a2, 7
	slli	s9, a0, 7
	add	s10, a2, s9
.LBB3_12:                               #   Parent Loop BB3_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_13 Depth 3
	ld	a0, 488(s0)
	slli	a1, s11, 3
	add	a1, s3, a1
	ld	s7, 0(a1)
	ld	a7, 8(a0)
	ld	a2, 0(s8)
	slliw	a4, s11, 3
	mv	a0, s0
	mv	a1, s2
	mv	a3, s7
	li	a5, 0
	mv	a6, s4
	jalr	a7
	add	s6, s7, s9
	mv	a0, s6
	mv	a1, s5
	call	jzero_far
	lhu	a0, -128(s6)
	add	s7, s7, s10
.LBB3_13:                               #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sh	a0, 0(s6)
	addi	s6, s6, 128
	bne	s6, s7, .LBB3_13
# %bb.14:                               #   in Loop: Header=BB3_12 Depth=2
	addi	s11, s11, 1
	bne	s11, s1, .LBB3_12
	j	.LBB3_17
.LBB3_15:                               # %.preheader5
                                        #   in Loop: Header=BB3_3 Depth=1
	li	s5, 0
	slli	s6, s1, 3
	add	s6, s3, s6
	mv	s7, s3
.LBB3_16:                               #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 488(s0)
	ld	a3, 0(s7)
	ld	a7, 8(a0)
	ld	a2, 0(s8)
	mv	a0, s0
	mv	a1, s2
	mv	a4, s5
	li	a5, 0
	mv	a6, s4
	jalr	a7
	addi	s7, s7, 8
	addiw	s5, s5, 8
	bne	s7, s6, .LBB3_16
.LBB3_17:                               #   in Loop: Header=BB3_3 Depth=1
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	lw	a0, 16(s9)
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	bne	a0, s10, .LBB3_2
# %bb.18:                               #   in Loop: Header=BB3_3 Depth=1
	lw	a0, 12(s2)
	bge	s1, a0, .LBB3_2
# %bb.19:                               #   in Loop: Header=BB3_3 Depth=1
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	addw	a0, a0, s4
	slli	a1, a0, 32
	srli	s4, a1, 25
	ld	s11, 32(sp)                     # 8-byte Folded Reload
	bgeu	a0, s11, .LBB3_22
# %bb.20:                               #   in Loop: Header=BB3_3 Depth=1
	slli	a0, s1, 3
	add	s3, s3, a0
.LBB3_21:                               #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s3)
	mv	a1, s4
	call	jzero_far
	lw	a0, 12(s2)
	addi	s1, s1, 1
	addi	s3, s3, 8
	blt	s1, a0, .LBB3_21
	j	.LBB3_2
.LBB3_22:                               #   in Loop: Header=BB3_3 Depth=1
	blez	s11, .LBB3_29
# %bb.23:                               #   in Loop: Header=BB3_3 Depth=1
	divuw	s6, a0, s11
	addiw	s7, s11, -1
	slli	s11, s11, 7
	slli	s7, s7, 7
.LBB3_24:                               #   Parent Loop BB3_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_25 Depth 3
                                        #         Child Loop BB3_26 Depth 4
	slli	a0, s1, 3
	add	a0, s3, a0
	ld	s5, 0(a0)
	ld	s8, -8(a0)
	mv	a0, s5
	mv	a1, s4
	call	jzero_far
	li	a0, 0
	li	a1, 0
	mv	a2, s5
.LBB3_25:                               #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_24 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_26 Depth 4
	add	a3, s8, s7
	lhu	a3, 0(a3)
	mul	a4, s11, a0
	add	a4, s11, a4
	add	a4, s5, a4
	mv	a5, a2
.LBB3_26:                               #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_24 Depth=2
                                        #       Parent Loop BB3_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sh	a3, 0(a5)
	addi	a5, a5, 128
	bne	a5, a4, .LBB3_26
# %bb.27:                               #   in Loop: Header=BB3_25 Depth=3
	add	s8, s8, s11
	addiw	a1, a1, 1
	add	a2, a2, s11
	addi	a0, a0, 1
	bltu	a1, s6, .LBB3_25
# %bb.28:                               #   in Loop: Header=BB3_24 Depth=2
	lw	a0, 12(s2)
	addi	s1, s1, 1
	blt	s1, a0, .LBB3_24
	j	.LBB3_2
.LBB3_29:                               # %.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	slli	a0, s1, 3
	add	s3, s3, a0
.LBB3_30:                               #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s3)
	mv	a1, s4
	call	jzero_far
	lw	a0, 12(s2)
	addi	s1, s1, 1
	addi	s3, s3, 8
	blt	s1, a0, .LBB3_30
	j	.LBB3_2
.LBB3_31:
	mv	a0, s0
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
	tail	compress_output
.Lfunc_end3:
	.size	compress_first_pass, .Lfunc_end3-compress_first_pass
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function compress_output
	.type	compress_output,@function
compress_output:                        # @compress_output
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
	lw	a1, 324(a0)
	ld	s2, 456(a0)
	addi	s3, a0, 328
	blez	a1, .LBB4_3
# %bb.1:
	li	s1, 0
	addi	s4, s2, 112
	mv	s5, sp
	mv	s6, s3
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s6)
	ld	a1, 8(s0)
	lw	a2, 4(a0)
	ld	a5, 64(a1)
	slli	a2, a2, 3
	add	a2, s4, a2
	lw	a4, 16(s2)
	lw	a3, 12(a0)
	ld	a1, 0(a2)
	mulw	a2, a3, a4
	mv	a0, s0
	li	a4, 0
	jalr	a5
	lw	a1, 324(s0)
	sd	a0, 0(s5)
	addi	s1, s1, 1
	addi	s5, s5, 8
	addi	s6, s6, 8
	blt	s1, a1, .LBB4_2
.LBB4_3:
	lw	s4, 24(s2)
	lw	a0, 28(s2)
	bge	s4, a0, .LBB4_22
# %bb.4:
	lw	s7, 20(s2)
	lw	a1, 360(s0)
	addi	s1, s2, 32
	addi	s5, s2, 40
	mv	s6, sp
	j	.LBB4_7
.LBB4_5:                                #   in Loop: Header=BB4_7 Depth=1
	lw	a0, 28(s2)
.LBB4_6:                                #   in Loop: Header=BB4_7 Depth=1
	li	s7, 0
	addi	s4, s4, 1
	sw	zero, 20(s2)
	bge	s4, a0, .LBB4_21
.LBB4_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #       Child Loop BB4_12 Depth 3
                                        #         Child Loop BB4_15 Depth 4
                                        #           Child Loop BB4_16 Depth 5
	bgeu	s7, a1, .LBB4_6
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB4_7 Depth=1
	slli	s8, s4, 3
.LBB4_9:                                #   Parent Loop BB4_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_12 Depth 3
                                        #         Child Loop BB4_15 Depth 4
                                        #           Child Loop BB4_16 Depth 5
	lw	a0, 324(s0)
	blez	a0, .LBB4_18
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=2
	li	a1, 0
	li	a2, 0
	j	.LBB4_12
.LBB4_11:                               #   in Loop: Header=BB4_12 Depth=3
	addi	a1, a1, 1
	beq	a1, a0, .LBB4_18
.LBB4_12:                               #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_15 Depth 4
                                        #           Child Loop BB4_16 Depth 5
	slli	a6, a1, 3
	add	a3, s3, a6
	ld	a4, 0(a3)
	lw	a3, 56(a4)
	blez	a3, .LBB4_11
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=3
	lw	a4, 52(a4)
	blez	a4, .LBB4_11
# %bb.14:                               #   in Loop: Header=BB4_12 Depth=3
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
.LBB4_15:                               #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        #       Parent Loop BB4_12 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_16 Depth 5
	slli	t1, a5, 3
	add	t1, a6, t1
	ld	t3, 0(t1)
	slli	t2, a2, 3
	add	t1, a7, t2
	add	t2, s1, t2
	add	t3, t3, t0
	addw	a2, a2, a4
.LBB4_16:                               #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        #       Parent Loop BB4_12 Depth=3
                                        #         Parent Loop BB4_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	sd	t3, 0(t2)
	addi	t3, t3, 128
	addi	t2, t2, 8
	bne	t2, t1, .LBB4_16
# %bb.17:                               #   in Loop: Header=BB4_15 Depth=4
	addi	a5, a5, 1
	bne	a5, a3, .LBB4_15
	j	.LBB4_11
.LBB4_18:                               #   in Loop: Header=BB4_9 Depth=2
	ld	a0, 496(s0)
	ld	a2, 8(a0)
	mv	a0, s0
	mv	a1, s1
	jalr	a2
	beqz	a0, .LBB4_20
# %bb.19:                               #   in Loop: Header=BB4_9 Depth=2
	lw	a1, 360(s0)
	addiw	s7, s7, 1
	bltu	s7, a1, .LBB4_9
	j	.LBB4_5
.LBB4_20:
	sw	s4, 24(s2)
	sw	s7, 20(s2)
	j	.LBB4_28
.LBB4_21:
	lw	a1, 324(s0)
.LBB4_22:
	lw	a2, 16(s2)
	ld	a0, 456(s0)
	addi	a2, a2, 1
	li	a3, 2
	sw	a2, 16(s2)
	blt	a1, a3, .LBB4_24
# %bb.23:
	li	a1, 1
	j	.LBB4_27
.LBB4_24:
	lw	a2, 320(s0)
	lw	a3, 16(a0)
	ld	a1, 328(s0)
	addiw	a2, a2, -1
	bgeu	a3, a2, .LBB4_26
# %bb.25:
	lw	a1, 12(a1)
	j	.LBB4_27
.LBB4_26:
	lw	a1, 72(a1)
.LBB4_27:
	sw	a1, 28(a0)
	sw	zero, 20(a0)
	sw	zero, 24(a0)
	li	a0, 1
.LBB4_28:
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
.Lfunc_end4:
	.size	compress_output, .Lfunc_end4-compress_output
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
