	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdinput.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_input_controller          # -- Begin function jinit_input_controller
	.p2align	2
	.type	jinit_input_controller,@function
jinit_input_controller:                 # @jinit_input_controller
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a2, 48
	mv	a0, s0
	li	a1, 0
	jalr	a3
	sd	a0, 576(s0)
	lui	a1, %hi(consume_markers)
	addi	a1, a1, %lo(consume_markers)
	sd	a1, 0(a0)
	lui	a1, %hi(reset_input_controller)
	addi	a1, a1, %lo(reset_input_controller)
	sd	a1, 8(a0)
	lui	a1, %hi(start_input_pass)
	addi	a1, a1, %lo(start_input_pass)
	sd	a1, 16(a0)
	lui	a1, %hi(finish_input_pass)
	addi	a1, a1, %lo(finish_input_pass)
	sd	a1, 24(a0)
	sd	zero, 32(a0)
	li	a1, 1
	sw	a1, 40(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	jinit_input_controller, .Lfunc_end0-jinit_input_controller
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function consume_markers
	.type	consume_markers,@function
consume_markers:                        # @consume_markers
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
	ld	s1, 576(a0)
	lw	a1, 36(s1)
	li	a0, 2
	beqz	a1, .LBB1_2
.LBB1_1:
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
.LBB1_2:
	ld	a0, 584(s0)
	ld	a1, 8(a0)
	mv	a0, s0
	jalr	a1
	li	a1, 2
	beq	a0, a1, .LBB1_20
# %bb.3:
	li	a1, 1
	bne	a0, a1, .LBB1_1
# %bb.4:
	lw	a0, 40(s1)
	beqz	a0, .LBB1_29
# %bb.5:
	lw	a1, 52(s0)
	lui	a0, 16
	addiw	a2, a0, -36
	bltu	a2, a1, .LBB1_23
# %bb.6:
	lw	a1, 48(s0)
	addiw	a0, a0, -35
	bgeu	a1, a0, .LBB1_23
# %bb.7:
	lw	a0, 296(s0)
	li	a1, 8
	bne	a0, a1, .LBB1_24
.LBB1_8:
	lw	a0, 56(s0)
	li	a1, 11
	blt	a0, a1, .LBB1_10
.LBB1_9:
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
	lw	a0, 56(s0)
.LBB1_10:
	li	a1, 1
	slli	a2, a1, 32
	addi	a2, a2, 1
	sd	a2, 408(s0)
	blez	a0, .LBB1_34
# %bb.11:
	ld	s3, 304(s0)
	li	s2, 0
	addi	s3, s3, 12
	li	a1, 1
	li	s4, -4
	li	s5, 18
	li	s6, -5
	li	a2, 1
	j	.LBB1_13
.LBB1_12:                               #   in Loop: Header=BB1_13 Depth=1
	sw	a1, 412(s0)
	addiw	s2, s2, 1
	addi	s3, s3, 96
	bge	s2, a0, .LBB1_25
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	lw	a4, -4(s3)
	addiw	a3, a4, -5
	bltu	a3, s4, .LBB1_17
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	lw	a3, 0(s3)
	addiw	a5, a3, -5
	bgeu	s6, a5, .LBB1_17
# %bb.15:                               #   in Loop: Header=BB1_13 Depth=1
	bge	a4, a2, .LBB1_18
.LBB1_16:                               #   in Loop: Header=BB1_13 Depth=1
	sw	a2, 408(s0)
	blt	a3, a1, .LBB1_12
	j	.LBB1_19
.LBB1_17:                               #   in Loop: Header=BB1_13 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s5, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a2, 408(s0)
	lw	a4, -4(s3)
	lw	a1, 412(s0)
	lw	a3, 0(s3)
	lw	a0, 56(s0)
	blt	a4, a2, .LBB1_16
.LBB1_18:                               #   in Loop: Header=BB1_13 Depth=1
	mv	a2, a4
	sw	a4, 408(s0)
	blt	a3, a1, .LBB1_12
.LBB1_19:                               #   in Loop: Header=BB1_13 Depth=1
	mv	a1, a3
	j	.LBB1_12
.LBB1_20:
	lw	a0, 40(s1)
	li	a1, 1
	sw	a1, 36(s1)
	beqz	a0, .LBB1_32
# %bb.21:
	ld	a0, 584(s0)
	lw	a1, 28(a0)
	li	a0, 2
	beqz	a1, .LBB1_1
# %bb.22:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 59
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	li	a0, 2
	j	.LBB1_1
.LBB1_23:
	ld	a0, 0(s0)
	lui	a1, 16375
	slli	a1, a1, 22
	addi	a1, a1, 41
	sd	a1, 40(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 296(s0)
	li	a1, 8
	beq	a0, a1, .LBB1_8
.LBB1_24:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 15
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
	lw	a0, 56(s0)
	li	a1, 11
	bge	a0, a1, .LBB1_9
	j	.LBB1_10
.LBB1_25:
	li	s2, 8
	sw	s2, 416(s0)
	blez	a0, .LBB1_35
# %bb.26:
	ld	a0, 304(s0)
	li	s3, 0
	addi	s4, a0, 40
	li	s5, 1
.LBB1_27:                               # =>This Inner Loop Header: Depth=1
	lwu	a0, 48(s0)
	lw	a1, -32(s4)
	lw	a2, 408(s0)
	sw	s2, -4(s4)
	mul	a0, a1, a0
	slliw	a1, a2, 3
	call	jdiv_round_up
	lwu	a1, 52(s0)
	lw	a2, -28(s4)
	lw	a3, 412(s0)
	sw	a0, -12(s4)
	mul	a0, a2, a1
	slliw	a1, a3, 3
	call	jdiv_round_up
	lwu	a2, 48(s0)
	lw	a3, -32(s4)
	lw	a1, 408(s0)
	sw	a0, -8(s4)
	mul	a0, a3, a2
	call	jdiv_round_up
	lwu	a2, 52(s0)
	lw	a3, -28(s4)
	lw	a1, 412(s0)
	sw	a0, 0(s4)
	mul	a0, a3, a2
	call	jdiv_round_up
	sw	a0, 4(s4)
	lw	a0, 56(s0)
	sw	s5, 8(s4)
	sd	zero, 40(s4)
	addiw	s3, s3, 1
	addi	s4, s4, 96
	blt	s3, a0, .LBB1_27
# %bb.28:
	lw	a1, 412(s0)
	j	.LBB1_35
.LBB1_29:
	lw	a0, 32(s1)
	bnez	a0, .LBB1_31
# %bb.30:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 35
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_31:
	mv	a0, s0
	call	start_input_pass
	li	a0, 1
	j	.LBB1_1
.LBB1_32:
	lw	a2, 180(s0)
	lw	a1, 172(s0)
	li	a0, 2
	bge	a1, a2, .LBB1_1
# %bb.33:
	sw	a1, 180(s0)
	j	.LBB1_1
.LBB1_34:
	li	a0, 8
	sw	a0, 416(s0)
.LBB1_35:
	lwu	a0, 52(s0)
	slliw	a1, a1, 3
	call	jdiv_round_up
	lw	a2, 432(s0)
	lw	a3, 56(s0)
	sw	a0, 420(s0)
	li	a0, 1
	li	a1, 1
	blt	a2, a3, .LBB1_37
# %bb.36:
	lw	a1, 312(s0)
	snez	a1, a1
.LBB1_37:
	ld	a2, 576(s0)
	sw	a1, 32(a2)
	sw	zero, 40(s1)
	j	.LBB1_1
.Lfunc_end1:
	.size	consume_markers, .Lfunc_end1-consume_markers
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function reset_input_controller
	.type	reset_input_controller,@function
reset_input_controller:                 # @reset_input_controller
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 576(a0)
	sd	zero, 32(a0)
	ld	a1, 0(s0)
	lui	a2, %hi(consume_markers)
	addi	a2, a2, %lo(consume_markers)
	ld	a1, 32(a1)
	sd	a2, 0(a0)
	li	a2, 1
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 584(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	sd	zero, 192(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	reset_input_controller, .Lfunc_end2-reset_input_controller
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_input_pass
	.type	start_input_pass,@function
start_input_pass:                       # @start_input_pass
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
	lw	a1, 432(a0)
	li	a0, 1
	addi	s2, s0, 440
	bne	a1, a0, .LBB3_4
# %bb.1:
	ld	a1, 440(s0)
	lw	a2, 28(a1)
	lw	a3, 32(a1)
	sw	a2, 472(s0)
	sw	a3, 476(s0)
	sw	a0, 52(a1)
	slli	a4, a0, 32
	lw	a5, 36(a1)
	lw	a2, 12(a1)
	addi	a4, a4, 1
	sd	a4, 56(a1)
	sw	a5, 64(a1)
	remuw	a3, a3, a2
	sw	a0, 68(a1)
	beqz	a3, .LBB3_3
# %bb.2:
	mv	a2, a3
.LBB3_3:
	sw	a2, 72(a1)
	sw	a0, 480(s0)
	sw	zero, 484(s0)
	j	.LBB3_19
.LBB3_4:
	addiw	a0, a1, -5
	li	a2, -5
	bltu	a2, a0, .LBB3_6
# %bb.5:
	ld	a0, 0(s0)
	sw	a1, 44(a0)
	ld	a1, 0(s0)
	li	a2, 26
	sw	a2, 40(a0)
	li	a0, 4
	sw	a0, 48(a1)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
.LBB3_6:
	lw	a1, 408(s0)
	lwu	a0, 48(s0)
	slliw	a1, a1, 3
	call	jdiv_round_up
	lw	a1, 412(s0)
	lwu	a2, 52(s0)
	sw	a0, 472(s0)
	slliw	a1, a1, 3
	mv	a0, a2
	call	jdiv_round_up
	lw	a1, 432(s0)
	sw	a0, 476(s0)
	sw	zero, 480(s0)
	blez	a1, .LBB3_26
# %bb.7:
	li	s1, 0
	addi	s3, s0, 484
	li	s4, 11
	li	s5, 13
	li	s6, 1
	j	.LBB3_9
.LBB3_8:                                #   in Loop: Header=BB3_9 Depth=1
	lw	a0, 432(s0)
	addi	s1, s1, 1
	bge	s1, a0, .LBB3_18
.LBB3_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_17 Depth 2
	slli	a0, s1, 3
	add	a0, s2, a0
	ld	a0, 0(a0)
	lw	a2, 8(a0)
	lw	a1, 12(a0)
	sw	a2, 52(a0)
	sw	a1, 56(a0)
	lw	a3, 36(a0)
	lw	a4, 28(a0)
	mulw	s7, a1, a2
	sw	s7, 60(a0)
	mul	a5, a3, a2
	remuw	a3, a4, a2
	sw	a5, 64(a0)
	bnez	a3, .LBB3_13
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=1
	lw	a3, 32(a0)
	remuw	a3, a3, a1
	sw	a2, 68(a0)
	bnez	a3, .LBB3_14
.LBB3_11:                               #   in Loop: Header=BB3_9 Depth=1
	lw	a2, 480(s0)
	addw	a2, a2, s7
	sw	a1, 72(a0)
	bge	a2, s4, .LBB3_15
.LBB3_12:                               #   in Loop: Header=BB3_9 Depth=1
	bgtz	s7, .LBB3_16
	j	.LBB3_8
.LBB3_13:                               #   in Loop: Header=BB3_9 Depth=1
	mv	a2, a3
	lw	a3, 32(a0)
	remuw	a3, a3, a1
	sw	a2, 68(a0)
	beqz	a3, .LBB3_11
.LBB3_14:                               #   in Loop: Header=BB3_9 Depth=1
	lw	a2, 480(s0)
	addw	a2, a2, s7
	sw	a3, 72(a0)
	blt	a2, s4, .LBB3_12
.LBB3_15:                               #   in Loop: Header=BB3_9 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s5, 40(a0)
	mv	a0, s0
	jalr	a1
	blez	s7, .LBB3_8
.LBB3_16:                               #   in Loop: Header=BB3_9 Depth=1
	addi	s7, s7, 1
.LBB3_17:                               #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 480(s0)
	addi	a1, a0, 1
	sw	a1, 480(s0)
	slli	a0, a0, 2
	add	a0, s3, a0
	addiw	s7, s7, -1
	sw	s1, 0(a0)
	bltu	s6, s7, .LBB3_17
	j	.LBB3_8
.LBB3_18:
	blez	a0, .LBB3_26
.LBB3_19:
	li	s3, 0
	addi	s4, s0, 200
	li	s5, 3
	li	s6, 52
	j	.LBB3_23
.LBB3_20:                               #   in Loop: Header=BB3_23 Depth=1
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s6, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB3_21:                               #   in Loop: Header=BB3_23 Depth=1
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 132
	mv	a0, s0
	jalr	a3
	slli	s1, s1, 3
	add	s1, s4, s1
	ld	a1, 0(s1)
	mv	s1, a0
	li	a2, 132
	call	memcpy
	lw	a0, 432(s0)
	sd	s1, 80(s7)
.LBB3_22:                               #   in Loop: Header=BB3_23 Depth=1
	addi	s3, s3, 1
	addi	s2, s2, 8
	bge	s3, a0, .LBB3_26
.LBB3_23:                               # =>This Inner Loop Header: Depth=1
	ld	s7, 0(s2)
	ld	a1, 80(s7)
	bnez	a1, .LBB3_22
# %bb.24:                               #   in Loop: Header=BB3_23 Depth=1
	lw	s1, 16(s7)
	bltu	s5, s1, .LBB3_20
# %bb.25:                               #   in Loop: Header=BB3_23 Depth=1
	slli	a0, s1, 3
	add	a0, s4, a0
	ld	a0, 0(a0)
	bnez	a0, .LBB3_21
	j	.LBB3_20
.LBB3_26:
	ld	a0, 592(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 560(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 560(s0)
	ld	a0, 8(a0)
	ld	a1, 576(s0)
	sd	a0, 0(a1)
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
.Lfunc_end3:
	.size	start_input_pass, .Lfunc_end3-start_input_pass
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_input_pass
	.type	finish_input_pass,@function
finish_input_pass:                      # @finish_input_pass
# %bb.0:
	ld	a0, 576(a0)
	lui	a1, %hi(consume_markers)
	addi	a1, a1, %lo(consume_markers)
	sd	a1, 0(a0)
	ret
.Lfunc_end4:
	.size	finish_input_pass, .Lfunc_end4-finish_input_pass
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
