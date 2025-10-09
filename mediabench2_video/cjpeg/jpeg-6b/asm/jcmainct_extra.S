	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jcmainct.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_c_main_controller         # -- Begin function jinit_c_main_controller
	.p2align	2
	.type	jinit_c_main_controller,@function
jinit_c_main_controller:                # @jinit_c_main_controller
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	mv	s1, a1
	li	a1, 1
	li	a2, 112
	mv	a0, s0
	jalr	a3
	lw	a1, 256(s0)
	sd	a0, 440(s0)
	lui	a2, %hi(start_pass_main)
	addi	a2, a2, %lo(start_pass_main)
	sd	a2, 0(a0)
	beqz	a1, .LBB0_2
.LBB0_1:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB0_2:
	beqz	s1, .LBB0_4
# %bb.3:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 4
	sw	a1, 40(a0)
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	jr	t1
.LBB0_4:
	lw	a1, 76(s0)
	blez	a1, .LBB0_1
# %bb.5:
	ld	s3, 88(s0)
	li	s1, 0
	addi	s2, a0, 32
	addi	s3, s3, 28
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 8(s0)
	lw	a1, 0(s3)
	lw	a3, -16(s3)
	ld	a4, 16(a0)
	slliw	a2, a1, 3
	slliw	a3, a3, 3
	li	a1, 1
	mv	a0, s0
	jalr	a4
	lw	a1, 76(s0)
	sd	a0, 0(s2)
	addi	s1, s1, 1
	addi	s2, s2, 8
	addi	s3, s3, 96
	blt	s1, a1, .LBB0_6
	j	.LBB0_1
.Lfunc_end0:
	.size	jinit_c_main_controller, .Lfunc_end0-jinit_c_main_controller
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_main
	.type	start_pass_main,@function
start_pass_main:                        # @start_pass_main
# %bb.0:
	lw	a2, 256(a0)
	beqz	a2, .LBB1_2
# %bb.1:
	ret
.LBB1_2:
	ld	a2, 440(a0)
	sd	zero, 16(a2)
	sw	zero, 24(a2)
	sw	a1, 28(a2)
	beqz	a1, .LBB1_4
# %bb.3:
	ld	a1, 0(a0)
	ld	t1, 0(a1)
	li	a2, 4
	sw	a2, 40(a1)
	jr	t1
.LBB1_4:
	lui	a0, %hi(process_data_simple_main)
	addi	a0, a0, %lo(process_data_simple_main)
	sd	a0, 8(a2)
	ret
.Lfunc_end1:
	.size	start_pass_main, .Lfunc_end1-start_pass_main
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function process_data_simple_main
	.type	process_data_simple_main,@function
process_data_simple_main:               # @process_data_simple_main
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
	ld	s6, 440(a0)
	lw	a0, 16(s6)
	lw	a4, 320(s1)
	bgeu	a0, a4, .LBB2_16
# %bb.1:
	mv	s2, a3
	mv	s0, a2
	mv	s3, a1
	lw	a0, 20(s6)
	addi	s4, s6, 20
	li	a1, 7
	addi	s5, s6, 32
	bltu	a1, a0, .LBB2_3
# %bb.2:
	ld	a0, 448(s1)
	ld	a7, 8(a0)
	li	a6, 8
	mv	a0, s1
	mv	a1, s3
	mv	a2, s0
	mv	a3, s2
	mv	a4, s5
	mv	a5, s4
	jalr	a7
	lw	a0, 0(s4)
.LBB2_3:
	li	a1, 8
	bne	a0, a1, .LBB2_16
# %bb.4:
	ld	a0, 456(s1)
	ld	a2, 8(a0)
	mv	a0, s1
	mv	a1, s5
	jalr	a2
	lw	a1, 24(s6)
	beqz	a0, .LBB2_14
# %bb.5:
	beqz	a1, .LBB2_7
# %bb.6:
	lw	a0, 0(s0)
	addi	a0, a0, 1
	sw	a0, 0(s0)
	sw	zero, 24(s6)
.LBB2_7:
	lw	a0, 16(s6)
	lw	a1, 320(s1)
	sw	zero, 20(s6)
	addiw	a0, a0, 1
	sw	a0, 16(s6)
	bgeu	a0, a1, .LBB2_16
# %bb.8:                                # %.preheader
	li	s7, 8
	j	.LBB2_10
.LBB2_9:                                #   in Loop: Header=BB2_10 Depth=1
	lw	a0, 16(s6)
	lw	a1, 320(s1)
	sw	zero, 20(s6)
	addiw	a0, a0, 1
	sw	a0, 16(s6)
	bgeu	a0, a1, .LBB2_16
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 448(s1)
	ld	a7, 8(a0)
	li	a6, 8
	mv	a0, s1
	mv	a1, s3
	mv	a2, s0
	mv	a3, s2
	mv	a4, s5
	mv	a5, s4
	jalr	a7
	lw	a0, 0(s4)
	bne	a0, s7, .LBB2_16
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=1
	ld	a0, 456(s1)
	ld	a2, 8(a0)
	mv	a0, s1
	mv	a1, s5
	jalr	a2
	lw	a1, 24(s6)
	beqz	a0, .LBB2_14
# %bb.12:                               #   in Loop: Header=BB2_10 Depth=1
	beqz	a1, .LBB2_9
# %bb.13:                               #   in Loop: Header=BB2_10 Depth=1
	lw	a0, 0(s0)
	addi	a0, a0, 1
	sw	a0, 0(s0)
	sw	zero, 24(s6)
	j	.LBB2_9
.LBB2_14:
	seqz	a0, a1
	beqz	a0, .LBB2_16
# %bb.15:
	lw	a0, 0(s0)
	addi	a0, a0, -1
	sw	a0, 0(s0)
	li	a0, 1
	sw	a0, 24(s6)
.LBB2_16:
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
.Lfunc_end2:
	.size	process_data_simple_main, .Lfunc_end2-process_data_simple_main
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
