	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jcprepct.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_c_prep_controller         # -- Begin function jinit_c_prep_controller
	.p2align	2
	.type	jinit_c_prep_controller,@function
jinit_c_prep_controller:                # @jinit_c_prep_controller
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
	mv	s0, a0
	beqz	a1, .LBB0_2
# %bb.1:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 4
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_2:
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 112
	mv	a0, s0
	jalr	a3
	ld	a1, 480(s0)
	lw	a1, 16(a1)
	mv	s4, a0
	sd	a0, 448(s0)
	lui	a0, %hi(start_pass_prep)
	addi	a0, a0, %lo(start_pass_prep)
	sd	a0, 0(s4)
	beqz	a1, .LBB0_9
# %bb.3:
	lui	a0, %hi(pre_process_context)
	addi	a0, a0, %lo(pre_process_context)
	ld	a1, 8(s0)
	lw	s2, 316(s0)
	sd	a0, 8(s4)
	lw	a0, 76(s0)
	ld	a3, 0(a1)
	slli	a1, s2, 2
	addw	s10, a1, s2
	mulw	a2, a0, s10
	slli	a2, a2, 3
	li	a1, 1
	mv	a0, s0
	jalr	a3
	lw	a1, 76(s0)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	blez	a1, .LBB0_14
# %bb.4:
	ld	s7, 88(s0)
	slli	a0, s2, 1
	addw	s5, a0, s2
	slli	a0, s5, 3
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	addi	s6, s4, 16
	blez	s2, .LBB0_12
# %bb.5:
	li	s8, 0
	slli	a0, s2, 34
	srli	s9, a0, 29
	slli	a2, s10, 3
	slli	a0, s2, 33
	srli	s11, a0, 29
	slli	s2, s2, 3
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	sd	a2, 16(sp)                      # 8-byte Folded Spill
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	mul	a0, a2, s8
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	add	a0, s3, a0
	ld	a1, 8(s0)
	lwu	a2, 28(s7)
	lw	a3, 312(s0)
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	add	s1, s1, a0
	lw	a0, 8(s7)
	ld	a4, 16(a1)
	mul	a1, a2, a3
	slli	a1, a1, 3
	div	a2, a1, a0
	sext.w	a2, a2
	li	a1, 1
	mv	a0, s0
	mv	s10, s5
	mv	a3, s5
	jalr	a4
	mv	s5, a0
	add	s3, s4, s3
	mv	a0, s3
	mv	a1, s5
	mv	a2, s2
	call	memcpy
	mv	a0, s4
.LBB0_7:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a1, s5, s11
	ld	a1, 0(a1)
	sd	a1, 0(a0)
	ld	a1, 0(s5)
	add	a2, a0, s9
	sd	a1, 0(a2)
	addi	a0, a0, 8
	addi	s5, s5, 8
	bne	a0, s1, .LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	slli	a0, s8, 3
	add	a0, s6, a0
	lw	a1, 76(s0)
	sd	s3, 0(a0)
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	add	s4, s4, a2
	addi	s8, s8, 1
	addi	s7, s7, 96
	mv	s5, s10
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	blt	s8, a1, .LBB0_6
	j	.LBB0_14
.LBB0_9:
	lw	a0, 76(s0)
	lui	a1, %hi(pre_process_data)
	addi	a1, a1, %lo(pre_process_data)
	sd	a1, 8(s4)
	blez	a0, .LBB0_14
# %bb.10:
	ld	s2, 88(s0)
	li	s1, 0
	addi	s4, s4, 16
	addi	s2, s2, 28
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 8(s0)
	lwu	a1, 0(s2)
	lw	a2, 312(s0)
	ld	a4, 16(a0)
	lw	a0, -20(s2)
	mul	a1, a1, a2
	lw	a3, 316(s0)
	slli	a1, a1, 3
	div	a2, a1, a0
	sext.w	a2, a2
	li	a1, 1
	mv	a0, s0
	jalr	a4
	lw	a1, 76(s0)
	sd	a0, 0(s4)
	addi	s1, s1, 1
	addi	s4, s4, 8
	addi	s2, s2, 96
	blt	s1, a1, .LBB0_11
	j	.LBB0_14
.LBB0_12:                               # %.preheader
	li	s4, 0
	slli	s2, s2, 3
	ld	s3, 32(sp)                      # 8-byte Folded Reload
	add	s3, s3, s2
	slli	s10, s10, 3
	addi	s7, s7, 28
	ld	s1, 24(sp)                      # 8-byte Folded Reload
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 8(s0)
	lwu	a1, 0(s7)
	lw	a2, 312(s0)
	lw	a3, -20(s7)
	ld	a4, 16(a0)
	mul	a0, a1, a2
	slli	a0, a0, 3
	div	a2, a0, a3
	sext.w	a2, a2
	li	a1, 1
	mv	a0, s0
	mv	a3, s5
	jalr	a4
	mv	a1, a0
	mv	a0, s3
	mv	a2, s1
	call	memcpy
	sd	s3, 0(s6)
	lw	a0, 76(s0)
	addi	s4, s4, 1
	addi	s6, s6, 8
	add	s3, s3, s10
	addi	s7, s7, 96
	blt	s4, a0, .LBB0_13
.LBB0_14:
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
.Lfunc_end0:
	.size	jinit_c_prep_controller, .Lfunc_end0-jinit_c_prep_controller
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_prep
	.type	start_pass_prep,@function
start_pass_prep:                        # @start_pass_prep
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s1, 448(a0)
	beqz	a1, .LBB1_2
# %bb.1:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 4
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_2:
	lw	a0, 52(s0)
	lw	a1, 316(s0)
	sw	a0, 96(s1)
	sw	zero, 100(s1)
	sw	zero, 104(s1)
	slli	a1, a1, 1
	sw	a1, 108(s1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	start_pass_prep, .Lfunc_end1-start_pass_prep
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function pre_process_context
	.type	pre_process_context,@function
pre_process_context:                    # @pre_process_context
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
	mv	s0, a5
	lw	a5, 0(a5)
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	bgeu	a5, a6, .LBB2_31
# %bb.1:
	mv	s3, a3
	mv	s4, a2
	mv	s6, a0
	lw	a0, 316(a0)
	ld	s7, 448(s6)
	slli	a1, a0, 1
	addw	a0, a1, a0
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	addi	s5, s7, 16
	j	.LBB2_4
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	add	a0, a1, a0
	sw	a0, 108(s7)
	lw	a4, 0(s0)
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	bgeu	a4, a0, .LBB2_31
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_21 Depth 2
                                        #       Child Loop BB2_23 Depth 3
                                        #     Child Loop BB2_12 Depth 2
                                        #       Child Loop BB2_14 Depth 3
	lwu	a0, 0(s4)
	sext.w	a1, a0
	bgeu	a1, s3, .LBB2_16
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	lw	a2, 108(s7)
	lw	a3, 100(s7)
	subw	a1, s3, a0
	subw	s8, a2, a3
	bltu	s8, a1, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	mv	s8, a1
.LBB2_7:                                #   in Loop: Header=BB2_4 Depth=1
	ld	a1, 472(s6)
	ld	a5, 8(a1)
	slli	a0, a0, 3
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	add	a1, a1, a0
	mv	a0, s6
	mv	a2, s5
	mv	a4, s8
	jalr	a5
	lw	a0, 96(s7)
	lw	a1, 52(s6)
	bne	a0, a1, .LBB2_25
# %bb.8:                                #   in Loop: Header=BB2_4 Depth=1
	lw	a1, 76(s6)
	blez	a1, .LBB2_25
# %bb.9:                                #   in Loop: Header=BB2_4 Depth=1
	lw	a0, 316(s6)
	blez	a0, .LBB2_25
# %bb.10:                               # %.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	li	s10, 0
	j	.LBB2_12
.LBB2_11:                               #   in Loop: Header=BB2_12 Depth=2
	addi	s10, s10, 1
	bge	s10, a1, .LBB2_25
.LBB2_12:                               #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_14 Depth 3
	blez	a0, .LBB2_11
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=2
	li	s1, 0
	slli	s2, s10, 3
	add	s2, s5, s2
	li	s9, -1
.LBB2_14:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s2)
	lw	a5, 48(s6)
	li	a4, 1
	li	a1, 0
	mv	a2, a0
	mv	a3, s9
	call	jcopy_sample_rows
	lw	a0, 316(s6)
	addiw	s1, s1, 1
	addiw	s9, s9, -1
	blt	s1, a0, .LBB2_14
# %bb.15:                               #   in Loop: Header=BB2_12 Depth=2
	lw	a1, 76(s6)
	j	.LBB2_11
.LBB2_16:                               #   in Loop: Header=BB2_4 Depth=1
	lw	a0, 96(s7)
	bnez	a0, .LBB2_31
# %bb.17:                               #   in Loop: Header=BB2_4 Depth=1
	lw	a1, 100(s7)
	lw	a0, 108(s7)
	bge	a1, a0, .LBB2_26
# %bb.18:                               #   in Loop: Header=BB2_4 Depth=1
	lw	a1, 76(s6)
	blez	a1, .LBB2_28
# %bb.19:                               # %.preheader1
                                        #   in Loop: Header=BB2_4 Depth=1
	li	s1, 0
	j	.LBB2_21
.LBB2_20:                               #   in Loop: Header=BB2_21 Depth=2
	addi	s1, s1, 1
	bge	s1, a1, .LBB2_27
.LBB2_21:                               #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_23 Depth 3
	lw	s8, 100(s7)
	lw	s2, 108(s7)
	bge	s8, s2, .LBB2_20
# %bb.22:                               #   in Loop: Header=BB2_21 Depth=2
	slli	a0, s1, 3
	add	a0, s5, a0
	ld	s9, 0(a0)
	lw	s10, 48(s6)
	addiw	s11, s8, -1
.LBB2_23:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	li	a4, 1
	mv	a0, s9
	mv	a1, s11
	mv	a2, s9
	mv	a3, s8
	mv	a5, s10
	call	jcopy_sample_rows
	addiw	s8, s8, 1
	bne	s2, s8, .LBB2_23
# %bb.24:                               #   in Loop: Header=BB2_21 Depth=2
	lw	a1, 76(s6)
	j	.LBB2_20
.LBB2_25:                               #   in Loop: Header=BB2_4 Depth=1
	lw	a0, 0(s4)
	add	a0, a0, s8
	sw	a0, 0(s4)
	lw	a0, 100(s7)
	lw	a2, 96(s7)
	addw	a1, a0, s8
	lw	a0, 108(s7)
	sw	a1, 100(s7)
	subw	a2, a2, s8
	sw	a2, 96(s7)
.LBB2_26:                               #   in Loop: Header=BB2_4 Depth=1
	lw	a4, 0(s0)
	bne	a1, a0, .LBB2_3
	j	.LBB2_29
.LBB2_27:                               #   in Loop: Header=BB2_4 Depth=1
	lw	a0, 108(s7)
.LBB2_28:                               #   in Loop: Header=BB2_4 Depth=1
	sw	a0, 100(s7)
	lw	a4, 0(s0)
.LBB2_29:                               #   in Loop: Header=BB2_4 Depth=1
	ld	a0, 480(s6)
	ld	a5, 8(a0)
	lw	a2, 104(s7)
	mv	a0, s6
	mv	a1, s5
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	jalr	a5
	lw	a0, 0(s0)
	addi	a0, a0, 1
	sw	a0, 0(s0)
	lw	a0, 316(s6)
	lw	a1, 104(s7)
	addw	a2, a1, a0
	lw	a1, 100(s7)
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	slt	a3, a2, a4
	negw	a3, a3
	and	a2, a3, a2
	sw	a2, 104(s7)
	blt	a1, a4, .LBB2_2
# %bb.30:                               #   in Loop: Header=BB2_4 Depth=1
	li	a1, 0
	sw	zero, 100(s7)
	j	.LBB2_2
.LBB2_31:
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
.Lfunc_end2:
	.size	pre_process_context, .Lfunc_end2-pre_process_context
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function pre_process_data
	.type	pre_process_data,@function
pre_process_data:                       # @pre_process_data
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
	mv	s4, a2
	lw	a2, 0(a2)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	bgeu	a2, a3, .LBB3_29
# %bb.1:
	mv	s0, a6
	mv	s1, a5
	mv	s6, a4
	mv	s5, a3
	mv	s3, a0
	ld	s7, 448(a0)
	addi	s2, s7, 16
	sd	a6, 8(sp)                       # 8-byte Folded Spill
	sd	a4, 0(sp)                       # 8-byte Folded Spill
	j	.LBB3_3
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	lw	a2, 0(s4)
	bgeu	a2, s5, .LBB3_29
.LBB3_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
                                        #       Child Loop BB3_13 Depth 3
	lw	a0, 0(s1)
	bgeu	a0, s0, .LBB3_29
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	lw	a1, 316(s3)
	lw	a3, 100(s7)
	subw	a0, s5, a2
	subw	s8, a1, a3
	bltu	s8, a0, .LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	mv	s8, a0
.LBB3_6:                                #   in Loop: Header=BB3_3 Depth=1
	ld	a0, 472(s3)
	ld	a5, 8(a0)
	slli	a2, a2, 32
	srli	a1, a2, 29
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	mv	a0, s3
	mv	a2, s2
	mv	a4, s8
	jalr	a5
	lw	a0, 0(s4)
	add	a0, a0, s8
	sw	a0, 0(s4)
	lw	a0, 100(s7)
	lw	a2, 96(s7)
	addw	a0, a0, s8
	lw	a1, 316(s3)
	sw	a0, 100(s7)
	subw	a3, a2, s8
	sw	a3, 96(s7)
	bne	a2, s8, .LBB3_15
# %bb.7:                                #   in Loop: Header=BB3_3 Depth=1
	bge	a0, a1, .LBB3_15
# %bb.8:                                #   in Loop: Header=BB3_3 Depth=1
	lw	a0, 76(s3)
	blez	a0, .LBB3_18
# %bb.9:                                # %.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	li	s6, 0
	j	.LBB3_11
.LBB3_10:                               #   in Loop: Header=BB3_11 Depth=2
	addi	s6, s6, 1
	bge	s6, a0, .LBB3_17
.LBB3_11:                               #   Parent Loop BB3_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_13 Depth 3
	lw	s8, 100(s7)
	lw	s0, 316(s3)
	bge	s8, s0, .LBB3_10
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=2
	slli	a0, s6, 3
	add	a0, s2, a0
	ld	s9, 0(a0)
	lw	s10, 48(s3)
	addiw	s11, s8, -1
.LBB3_13:                               #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	li	a4, 1
	mv	a0, s9
	mv	a1, s11
	mv	a2, s9
	mv	a3, s8
	mv	a5, s10
	call	jcopy_sample_rows
	addiw	s8, s8, 1
	bne	s0, s8, .LBB3_13
# %bb.14:                               #   in Loop: Header=BB3_11 Depth=2
	lw	a0, 76(s3)
	j	.LBB3_10
.LBB3_15:                               #   in Loop: Header=BB3_3 Depth=1
	beq	a0, a1, .LBB3_19
# %bb.16:                               #   in Loop: Header=BB3_3 Depth=1
	lw	a0, 96(s7)
	bnez	a0, .LBB3_2
	j	.LBB3_20
.LBB3_17:                               #   in Loop: Header=BB3_3 Depth=1
	lw	a1, 316(s3)
	ld	s0, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
.LBB3_18:                               #   in Loop: Header=BB3_3 Depth=1
	sw	a1, 100(s7)
.LBB3_19:                               #   in Loop: Header=BB3_3 Depth=1
	ld	a0, 480(s3)
	ld	a5, 8(a0)
	lw	a4, 0(s1)
	mv	a0, s3
	mv	a1, s2
	li	a2, 0
	mv	a3, s6
	jalr	a5
	sw	zero, 100(s7)
	lw	a0, 0(s1)
	addi	a0, a0, 1
	sw	a0, 0(s1)
	lw	a0, 96(s7)
	bnez	a0, .LBB3_2
.LBB3_20:                               #   in Loop: Header=BB3_3 Depth=1
	lw	a0, 0(s1)
	bgeu	a0, s0, .LBB3_2
# %bb.21:
	lw	a0, 76(s3)
	blez	a0, .LBB3_28
# %bb.22:
	ld	s2, 88(s3)
	li	s8, 0
	j	.LBB3_24
.LBB3_23:                               #   in Loop: Header=BB3_24 Depth=1
	addi	s8, s8, 1
	addi	s2, s2, 96
	bge	s8, a0, .LBB3_28
.LBB3_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_26 Depth 2
	lw	a1, 0(s1)
	lw	a2, 12(s2)
	mulw	s4, a2, a1
	mulw	a3, a2, s0
	bge	s4, a3, .LBB3_23
# %bb.25:                               #   in Loop: Header=BB3_24 Depth=1
	lw	a0, 28(s2)
	slli	a3, s8, 3
	add	a3, s6, a3
	ld	s5, 0(a3)
	slliw	s6, a0, 3
	addiw	s7, s4, -1
	subw	a0, s0, a1
	mul	s0, a2, a0
.LBB3_26:                               #   Parent Loop BB3_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a4, 1
	mv	a0, s5
	mv	a1, s7
	mv	a2, s5
	mv	a3, s4
	mv	a5, s6
	call	jcopy_sample_rows
	addiw	s0, s0, -1
	addiw	s4, s4, 1
	bnez	s0, .LBB3_26
# %bb.27:                               #   in Loop: Header=BB3_24 Depth=1
	lw	a0, 76(s3)
	ld	s0, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	j	.LBB3_23
.LBB3_28:
	sw	s0, 0(s1)
.LBB3_29:
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
.Lfunc_end3:
	.size	pre_process_data, .Lfunc_end3-pre_process_data
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
