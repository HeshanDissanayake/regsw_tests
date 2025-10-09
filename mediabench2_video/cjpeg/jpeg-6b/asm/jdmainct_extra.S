	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdmainct.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_d_main_controller         # -- Begin function jinit_d_main_controller
	.p2align	2
	.type	jinit_d_main_controller,@function
jinit_d_main_controller:                # @jinit_d_main_controller
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
	sd	s8, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	mv	s2, a1
	li	a1, 1
	li	a2, 136
	mv	a0, s0
	jalr	a3
	mv	s1, a0
	sd	a0, 552(s0)
	lui	a0, %hi(start_pass_main)
	addi	a0, a0, %lo(start_pass_main)
	sd	a0, 0(s1)
	beqz	s2, .LBB0_2
# %bb.1:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 4
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_2:
	ld	a0, 608(s0)
	lw	a0, 16(a0)
	lw	s2, 416(s0)
	beqz	a0, .LBB0_9
# %bb.3:
	li	a0, 1
	blt	a0, s2, .LBB0_5
# %bb.4:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 47
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	s2, 416(s0)
.LBB0_5:
	ld	a0, 8(s0)
	lw	a1, 56(s0)
	ld	s3, 552(s0)
	ld	a3, 0(a0)
	slliw	a2, a1, 1
	slli	a2, a2, 3
	li	a1, 1
	mv	a0, s0
	jalr	a3
	lw	a1, 56(s0)
	sd	a0, 104(s3)
	slli	a2, a1, 3
	add	a0, a0, a2
	sd	a0, 112(s3)
	blez	a1, .LBB0_8
# %bb.6:
	ld	a0, 304(s0)
	li	s4, 0
	li	s5, 0
	addi	s2, s2, 4
	addi	s6, a0, 36
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s6)
	lw	a1, 0(s6)
	lw	a2, 416(s0)
	ld	a3, 8(s0)
	mul	a0, a1, a0
	divw	s7, a0, a2
	ld	a3, 0(a3)
	mulw	s8, s7, s2
	slliw	a2, s8, 1
	slli	a2, a2, 3
	li	a1, 1
	mv	a0, s0
	jalr	a3
	ld	a1, 104(s3)
	slli	s7, s7, 3
	add	a0, a0, s7
	add	a1, a1, s4
	sd	a0, 0(a1)
	ld	a1, 112(s3)
	slli	s8, s8, 3
	add	a0, a0, s8
	add	a2, a1, s4
	lw	a1, 56(s0)
	sd	a0, 0(a2)
	addi	s5, s5, 1
	addi	s4, s4, 8
	addi	s6, s6, 96
	blt	s5, a1, .LBB0_7
.LBB0_8:
	lw	s2, 416(s0)
	addi	s2, s2, 2
	bgtz	a1, .LBB0_10
	j	.LBB0_12
.LBB0_9:
	lw	a1, 56(s0)
	blez	a1, .LBB0_12
.LBB0_10:
	ld	s4, 304(s0)
	li	s3, 0
	addi	s1, s1, 16
	addi	s4, s4, 28
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s4)
	lw	a1, 8(s4)
	ld	a2, 8(s0)
	lw	a3, 416(s0)
	lw	a4, 0(s4)
	mul	a0, a1, a0
	ld	a5, 16(a2)
	divw	a0, a0, a3
	mulw	a2, a4, a1
	mulw	a3, a0, s2
	li	a1, 1
	mv	a0, s0
	jalr	a5
	lw	a1, 56(s0)
	sd	a0, 0(s1)
	addi	s3, s3, 1
	addi	s1, s1, 8
	addi	s4, s4, 96
	blt	s3, a1, .LBB0_11
.LBB0_12:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	ld	s8, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	jinit_d_main_controller, .Lfunc_end0-jinit_d_main_controller
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_main
	.type	start_pass_main,@function
start_pass_main:                        # @start_pass_main
# %bb.0:
	ld	a2, 552(a0)
	li	a3, 2
	beq	a1, a3, .LBB1_16
# %bb.1:
	bnez	a1, .LBB1_17
# %bb.2:
	ld	a1, 608(a0)
	lw	a1, 16(a1)
	beqz	a1, .LBB1_19
# %bb.3:
	lw	a1, 56(a0)
	lui	a3, %hi(process_data_context_main)
	addi	a3, a3, %lo(process_data_context_main)
	sd	a3, 8(a2)
	blez	a1, .LBB1_18
# %bb.4:
	lw	a3, 416(a0)
	li	a4, 0
	ld	a0, 304(a0)
	addi	a5, a2, 16
	addi	a6, a3, 2
	addi	a7, a3, -2
	j	.LBB1_6
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	addi	a4, a4, 1
	addi	a0, a0, 96
	beq	a4, a1, .LBB1_18
.LBB1_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_15 Depth 2
	lw	t0, 12(a0)
	lw	t1, 36(a0)
	ld	t2, 104(a2)
	mul	t1, t1, t0
	ld	t3, 112(a2)
	slli	t4, a4, 3
	add	t2, t2, t4
	ld	t0, 0(t2)
	add	t3, t3, t4
	ld	t3, 0(t3)
	add	t4, a5, t4
	ld	t2, 0(t4)
	divw	t1, t1, a3
	mulw	t4, t1, a6
	blez	t4, .LBB1_9
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	slli	t4, t4, 3
	add	t4, t0, t4
	mv	t5, t2
	mv	t6, t3
	mv	n1, t0
.LBB1_8:                                #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n2, 0(t5)
	sd	n2, 0(t6)
	sd	n2, 0(n1)
	addi	n1, n1, 8
	addi	t6, t6, 8
	addi	t5, t5, 8
	bne	n1, t4, .LBB1_8
.LBB1_9:                                #   in Loop: Header=BB1_6 Depth=1
	blez	t1, .LBB1_5
# %bb.10:                               #   in Loop: Header=BB1_6 Depth=1
	slliw	n1, t1, 1
	bgtz	n1, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_6 Depth=1
	li	n1, 1
.LBB1_12:                               #   in Loop: Header=BB1_6 Depth=1
	mulw	t6, t1, a3
	mulw	t4, t1, a7
	slli	n2, t4, 3
	add	t4, t2, n2
	add	t5, t3, n2
	slli	t6, t6, 3
	add	t3, t3, t6
	add	t6, t2, t6
	slli	n1, n1, 3
	add	n1, n2, n1
	add	t2, t2, n1
.LBB1_13:                               #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	n1, 0(t6)
	sd	n1, 0(t5)
	ld	n1, 0(t4)
	sd	n1, 0(t3)
	addi	t4, t4, 8
	addi	t5, t5, 8
	addi	t3, t3, 8
	addi	t6, t6, 8
	bne	t4, t2, .LBB1_13
# %bb.14:                               #   in Loop: Header=BB1_6 Depth=1
	ld	t2, 0(t0)
	slli	t1, t1, 3
	sub	t1, t0, t1
.LBB1_15:                               #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	t2, 0(t1)
	addi	t1, t1, 8
	bne	t1, t0, .LBB1_15
	j	.LBB1_5
.LBB1_16:
	lui	a0, %hi(process_data_crank_post)
	addi	a0, a0, %lo(process_data_crank_post)
	sd	a0, 8(a2)
	ret
.LBB1_17:
	ld	a1, 0(a0)
	ld	t1, 0(a1)
	li	a2, 4
	sw	a2, 40(a1)
	jr	t1
.LBB1_18:
	sd	zero, 120(a2)
	sw	zero, 132(a2)
	sd	zero, 96(a2)
	ret
.LBB1_19:
	lui	a0, %hi(process_data_simple_main)
	addi	a0, a0, %lo(process_data_simple_main)
	sd	a0, 8(a2)
	sd	zero, 96(a2)
	ret
.Lfunc_end1:
	.size	start_pass_main, .Lfunc_end1-start_pass_main
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function process_data_context_main
	.type	process_data_context_main,@function
process_data_context_main:              # @process_data_context_main
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s4, 552(a0)
	lw	a0, 96(s4)
	mv	s1, a3
	mv	s2, a2
	mv	s3, a1
	beqz	a0, .LBB2_2
# %bb.1:
	lw	a0, 124(s4)
	bnez	a0, .LBB2_4
	j	.LBB2_8
.LBB2_2:
	ld	a0, 560(s0)
	lw	a1, 120(s4)
	ld	a2, 24(a0)
	slli	a1, a1, 3
	add	a1, s4, a1
	ld	a1, 104(a1)
	mv	a0, s0
	jalr	a2
	beqz	a0, .LBB2_31
# %bb.3:
	lw	a0, 132(s4)
	li	a1, 1
	sw	a1, 96(s4)
	addi	a0, a0, 1
	sw	a0, 132(s4)
	lw	a0, 124(s4)
	beqz	a0, .LBB2_8
.LBB2_4:
	li	a1, 1
	beq	a0, a1, .LBB2_22
# %bb.5:
	li	a1, 2
	bne	a0, a1, .LBB2_31
# %bb.6:
	ld	a0, 568(s0)
	lw	a1, 120(s4)
	ld	a7, 8(a0)
	slli	a1, a1, 3
	add	a1, s4, a1
	ld	a1, 104(a1)
	lw	a3, 128(s4)
	addi	a2, s4, 100
	mv	a0, s0
	mv	a4, s3
	mv	a5, s2
	mv	a6, s1
	jalr	a7
	lw	a0, 100(s4)
	lw	a1, 128(s4)
	bltu	a0, a1, .LBB2_31
# %bb.7:
	sw	zero, 124(s4)
	lw	a0, 0(s2)
	bgeu	a0, s1, .LBB2_31
.LBB2_8:
	lw	a0, 416(s0)
	lw	a1, 132(s4)
	lw	a2, 420(s0)
	sw	zero, 100(s4)
	addi	a3, a0, -1
	sw	a3, 128(s4)
	bne	a1, a2, .LBB2_21
# %bb.9:
	lw	a1, 56(s0)
	blez	a1, .LBB2_21
# %bb.10:
	ld	a2, 552(s0)
	lw	a5, 120(a2)
	ld	a3, 304(s0)
	li	a4, 0
	slli	a5, a5, 3
	add	a5, a2, a5
	j	.LBB2_12
.LBB2_11:                               #   in Loop: Header=BB2_12 Depth=1
	addi	a4, a4, 1
	addi	a3, a3, 96
	beq	a4, a1, .LBB2_21
.LBB2_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_20 Depth 2
	lw	a6, 12(a3)
	lw	a7, 36(a3)
	lw	t0, 44(a3)
	mulw	a7, a7, a6
	remuw	t0, t0, a7
	mv	a6, a7
	bnez	t0, .LBB2_15
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=1
	divw	a7, a7, a0
	beqz	a4, .LBB2_16
.LBB2_14:                               #   in Loop: Header=BB2_12 Depth=1
	bgtz	a7, .LBB2_17
	j	.LBB2_11
.LBB2_15:                               #   in Loop: Header=BB2_12 Depth=1
	mv	a6, t0
	divw	a7, a7, a0
	bnez	a4, .LBB2_14
.LBB2_16:                               #   in Loop: Header=BB2_12 Depth=1
	addi	t0, a6, -1
	divw	t0, t0, a7
	addi	t0, t0, 1
	sw	t0, 128(a2)
	blez	a7, .LBB2_11
.LBB2_17:                               #   in Loop: Header=BB2_12 Depth=1
	slliw	a7, a7, 1
	bgtz	a7, .LBB2_19
# %bb.18:                               #   in Loop: Header=BB2_12 Depth=1
	li	a7, 1
.LBB2_19:                               #   in Loop: Header=BB2_12 Depth=1
	ld	t0, 104(a5)
	slli	t1, a4, 3
	add	t0, t0, t1
	ld	t1, 0(t0)
	slli	t2, a6, 3
	add	a6, t1, t2
	ld	t0, -8(a6)
	slli	a7, a7, 3
	add	a7, t2, a7
	add	a7, t1, a7
.LBB2_20:                               #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	t0, 0(a6)
	addi	a6, a6, 8
	bne	a6, a7, .LBB2_20
	j	.LBB2_11
.LBB2_21:
	li	a0, 1
	sw	a0, 124(s4)
.LBB2_22:
	ld	a0, 568(s0)
	lw	a1, 120(s4)
	ld	a7, 8(a0)
	slli	a1, a1, 3
	add	a1, s4, a1
	ld	a1, 104(a1)
	lw	a3, 128(s4)
	addi	a2, s4, 100
	mv	a0, s0
	mv	a4, s3
	mv	a5, s2
	mv	a6, s1
	jalr	a7
	lw	a0, 100(s4)
	lw	a1, 128(s4)
	bltu	a0, a1, .LBB2_31
# %bb.23:
	lw	a2, 416(s0)
	lw	a3, 132(s4)
	li	a4, 1
	addi	a0, a2, 1
	addi	a1, a2, 2
	bne	a3, a4, .LBB2_30
# %bb.24:
	lw	a3, 56(s0)
	blez	a3, .LBB2_30
# %bb.25:
	ld	a4, 304(s0)
	ld	a5, 552(s0)
	li	a6, 0
	j	.LBB2_27
.LBB2_26:                               #   in Loop: Header=BB2_27 Depth=1
	addi	a6, a6, 1
	addi	a4, a4, 96
	beq	a6, a3, .LBB2_30
.LBB2_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_29 Depth 2
	lw	a7, 12(a4)
	lw	t0, 36(a4)
	mul	a7, t0, a7
	divw	t2, a7, a2
	blez	t2, .LBB2_26
# %bb.28:                               #   in Loop: Header=BB2_27 Depth=1
	ld	a7, 104(a5)
	ld	t0, 112(a5)
	slli	t1, a6, 3
	add	a7, a7, t1
	ld	a7, 0(a7)
	add	t0, t0, t1
	ld	t0, 0(t0)
	mulw	t3, t2, a0
	mulw	t1, t2, a1
	slli	t1, t1, 3
	slli	t4, t2, 3
	neg	t2, t4
	slli	t3, t3, 3
	add	t4, t0, t4
.LBB2_29:                               #   Parent Loop BB2_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	t5, a7, t3
	ld	t5, 0(t5)
	add	t6, a7, t2
	sd	t5, 0(t6)
	add	t5, t0, t3
	ld	t5, 0(t5)
	add	t6, t0, t2
	sd	t5, 0(t6)
	ld	t5, 0(a7)
	add	t6, a7, t1
	sd	t5, 0(t6)
	ld	t5, 0(t0)
	add	t6, t0, t1
	sd	t5, 0(t6)
	addi	t0, t0, 8
	addi	a7, a7, 8
	bne	t0, t4, .LBB2_29
	j	.LBB2_26
.LBB2_30:
	lw	a2, 120(s4)
	xori	a2, a2, 1
	sw	a2, 120(s4)
	sw	zero, 96(s4)
	sw	a0, 100(s4)
	sw	a1, 128(s4)
	li	a0, 2
	sw	a0, 124(s4)
.LBB2_31:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	process_data_context_main, .Lfunc_end2-process_data_context_main
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function process_data_simple_main
	.type	process_data_simple_main,@function
process_data_simple_main:               # @process_data_simple_main
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	ld	s4, 552(a0)
	lw	a4, 96(s4)
	mv	s0, a3
	mv	s1, a2
	mv	s2, a1
	addi	a1, s4, 16
	bnez	a4, .LBB3_3
# %bb.1:
	ld	a2, 560(a0)
	ld	a2, 24(a2)
	mv	s3, a0
	mv	s5, a1
	jalr	a2
	beqz	a0, .LBB3_5
# %bb.2:
	li	a0, 1
	sw	a0, 96(s4)
	mv	a0, s3
	mv	a1, s5
.LBB3_3:
	ld	a2, 568(a0)
	lw	s3, 416(a0)
	ld	a7, 8(a2)
	addi	a2, s4, 100
	mv	a3, s3
	mv	a4, s2
	mv	a5, s1
	mv	a6, s0
	jalr	a7
	lw	a0, 100(s4)
	bltu	a0, s3, .LBB3_5
# %bb.4:
	sd	zero, 96(s4)
.LBB3_5:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end3:
	.size	process_data_simple_main, .Lfunc_end3-process_data_simple_main
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function process_data_crank_post
	.type	process_data_crank_post,@function
process_data_crank_post:                # @process_data_crank_post
# %bb.0:
	ld	a4, 568(a0)
	ld	t1, 8(a4)
	mv	a6, a3
	mv	a5, a2
	mv	a4, a1
	li	a1, 0
	li	a2, 0
	li	a3, 0
	jr	t1
.Lfunc_end4:
	.size	process_data_crank_post, .Lfunc_end4-process_data_crank_post
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
