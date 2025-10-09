	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdpostct.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_d_post_controller         # -- Begin function jinit_d_post_controller
	.p2align	2
	.type	jinit_d_post_controller,@function
jinit_d_post_controller:                # @jinit_d_post_controller
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	mv	s2, a1
	li	a1, 1
	li	a2, 48
	mv	a0, s1
	jalr	a3
	mv	s0, a0
	sd	a0, 568(s1)
	sd	zero, 16(a0)
	sd	zero, 24(a0)
	lw	a0, 108(s1)
	lui	a1, %hi(start_pass_dpost)
	addi	a1, a1, %lo(start_pass_dpost)
	sd	a1, 0(s0)
	beqz	a0, .LBB0_4
# %bb.1:
	lwu	a1, 412(s1)
	lw	a2, 136(s1)
	lw	a3, 144(s1)
	ld	a0, 8(s1)
	sw	a1, 32(s0)
	mulw	s3, a3, a2
	beqz	s2, .LBB0_3
# %bb.2:
	ld	s2, 32(a0)
	lwu	a0, 140(s1)
	call	jround_up
	lw	a5, 32(s0)
	sext.w	a4, a0
	li	a1, 1
	mv	a0, s1
	li	a2, 0
	mv	a3, s3
	jalr	s2
	sd	a0, 16(s0)
	j	.LBB0_4
.LBB0_3:
	ld	a4, 16(a0)
	sext.w	a3, a1
	li	a1, 1
	mv	a0, s1
	mv	a2, s3
	jalr	a4
	sd	a0, 24(s0)
.LBB0_4:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	jinit_d_post_controller, .Lfunc_end0-jinit_d_post_controller
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_dpost
	.type	start_pass_dpost,@function
start_pass_dpost:                       # @start_pass_dpost
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	ld	s0, 568(a0)
	li	a2, 3
	beq	a1, a2, .LBB1_9
# %bb.1:
	li	a2, 2
	beq	a1, a2, .LBB1_6
# %bb.2:
	bnez	a1, .LBB1_12
# %bb.3:
	lw	a1, 108(a0)
	beqz	a1, .LBB1_13
# %bb.4:
	ld	a1, 24(s0)
	lui	a2, %hi(post_process_1pass)
	addi	a2, a2, %lo(post_process_1pass)
	sd	a2, 8(s0)
	bnez	a1, .LBB1_15
# %bb.5:
	ld	a1, 8(a0)
	ld	a5, 56(a1)
	ld	a1, 16(s0)
	lw	a3, 32(s0)
	li	a4, 1
	li	a2, 0
	jalr	a5
	sd	a0, 24(s0)
	j	.LBB1_15
.LBB1_6:
	ld	a1, 16(s0)
	bnez	a1, .LBB1_8
# %bb.7:
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 4
	sw	a3, 40(a1)
	jalr	a2
.LBB1_8:
	lui	a0, %hi(post_process_2pass)
	addi	a0, a0, %lo(post_process_2pass)
	j	.LBB1_14
.LBB1_9:
	ld	a1, 16(s0)
	bnez	a1, .LBB1_11
# %bb.10:
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 4
	sw	a3, 40(a1)
	jalr	a2
.LBB1_11:
	lui	a0, %hi(post_process_prepass)
	addi	a0, a0, %lo(post_process_prepass)
	j	.LBB1_14
.LBB1_12:
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 4
	sw	a3, 40(a1)
	jalr	a2
	j	.LBB1_15
.LBB1_13:
	ld	a0, 608(a0)
	ld	a0, 8(a0)
.LBB1_14:
	sd	a0, 8(s0)
.LBB1_15:
	sw	zero, 40(s0)
	sw	zero, 36(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	start_pass_dpost, .Lfunc_end1-start_pass_dpost
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function post_process_1pass
	.type	post_process_1pass,@function
post_process_1pass:                     # @post_process_1pass
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s2, a0
	ld	s3, 568(a0)
	mv	s0, a5
	lw	a7, 0(a5)
	lw	a5, 32(s3)
	subw	a6, a6, a7
	mv	s1, a4
	bltu	a6, a5, .LBB2_2
# %bb.1:
	mv	a6, a5
.LBB2_2:
	ld	a4, 608(s2)
	ld	a7, 8(a4)
	ld	a4, 24(s3)
	sw	zero, 4(sp)
	addi	a5, sp, 4
	mv	a0, s2
	jalr	a7
	ld	a0, 624(s2)
	ld	a4, 8(a0)
	lwu	a0, 0(s0)
	ld	a1, 24(s3)
	lw	a3, 4(sp)
	slli	a0, a0, 3
	add	a2, s1, a0
	mv	a0, s2
	jalr	a4
	lw	a0, 4(sp)
	lw	a1, 0(s0)
	add	a0, a1, a0
	sw	a0, 0(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	post_process_1pass, .Lfunc_end2-post_process_1pass
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function post_process_prepass
	.type	post_process_prepass,@function
post_process_prepass:                   # @post_process_prepass
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
	mv	s1, a0
	ld	s3, 568(a0)
	lw	s4, 40(s3)
	mv	s0, a5
	addi	s2, s3, 40
	beqz	s4, .LBB3_2
# %bb.1:
	ld	a4, 24(s3)
	j	.LBB3_3
.LBB3_2:
	ld	a0, 8(s1)
	ld	t1, 56(a0)
	ld	a5, 16(s3)
	lw	a6, 36(s3)
	lw	a7, 32(s3)
	li	a4, 1
	mv	a0, s1
	mv	s4, a1
	mv	a1, a5
	mv	s5, a2
	mv	a2, a6
	mv	s6, a3
	mv	a3, a7
	jalr	t1
	mv	a1, s4
	mv	a2, s5
	mv	a3, s6
	lw	s4, 40(s3)
	mv	a4, a0
	sd	a0, 24(s3)
.LBB3_3:
	ld	a0, 608(s1)
	ld	a7, 8(a0)
	lw	a6, 32(s3)
	mv	a0, s1
	mv	a5, s2
	jalr	a7
	lw	a0, 40(s3)
	bgeu	s4, a0, .LBB3_5
# %bb.4:
	ld	a1, 624(s1)
	subw	s2, a0, s4
	ld	a0, 24(s3)
	ld	a4, 8(a1)
	slli	s4, s4, 32
	srli	a1, s4, 29
	add	a1, a0, a1
	mv	a0, s1
	li	a2, 0
	mv	a3, s2
	jalr	a4
	lw	a0, 0(s0)
	add	a0, a0, s2
	sw	a0, 0(s0)
	lw	a0, 40(s3)
.LBB3_5:
	lw	a1, 32(s3)
	bltu	a0, a1, .LBB3_7
# %bb.6:
	lw	a0, 36(s3)
	add	a0, a0, a1
	sw	a0, 36(s3)
	sw	zero, 40(s3)
.LBB3_7:
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
.Lfunc_end3:
	.size	post_process_prepass, .Lfunc_end3-post_process_prepass
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function post_process_2pass
	.type	post_process_2pass,@function
post_process_2pass:                     # @post_process_2pass
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	ld	s4, 568(a0)
	lw	a2, 40(s4)
	mv	s2, a6
	mv	s0, a5
	mv	s1, a4
	beqz	a2, .LBB4_2
# %bb.1:
	ld	a1, 24(s4)
	j	.LBB4_3
.LBB4_2:
	ld	a1, 8(a0)
	ld	a5, 56(a1)
	ld	a1, 16(s4)
	lw	a2, 36(s4)
	lw	a3, 32(s4)
	mv	s3, a0
	li	a4, 0
	jalr	a5
	lw	a2, 40(s4)
	mv	a1, a0
	mv	a0, s3
	sd	a1, 24(s4)
.LBB4_3:
	lw	a4, 32(s4)
	lwu	a3, 0(s0)
	subw	s3, a4, a2
	subw	a4, s2, a3
	bltu	s3, a4, .LBB4_5
# %bb.4:
	mv	s3, a4
.LBB4_5:
	lw	a4, 140(a0)
	lw	a5, 36(s4)
	subw	a4, a4, a5
	bltu	s3, a4, .LBB4_7
# %bb.6:
	mv	s3, a4
.LBB4_7:
	ld	a4, 624(a0)
	ld	a4, 8(a4)
	slli	a2, a2, 32
	srli	a2, a2, 29
	add	a1, a1, a2
	slli	a2, a3, 3
	add	a2, s1, a2
	mv	a3, s3
	jalr	a4
	lw	a0, 0(s0)
	add	a0, a0, s3
	sw	a0, 0(s0)
	lw	a1, 40(s4)
	lw	a0, 32(s4)
	addw	a1, a1, s3
	sw	a1, 40(s4)
	bltu	a1, a0, .LBB4_9
# %bb.8:
	lw	a1, 36(s4)
	add	a0, a1, a0
	sw	a0, 36(s4)
	sw	zero, 40(s4)
.LBB4_9:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end4:
	.size	post_process_2pass, .Lfunc_end4-post_process_2pass
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
