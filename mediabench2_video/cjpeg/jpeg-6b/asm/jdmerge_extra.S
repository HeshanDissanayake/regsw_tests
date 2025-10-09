	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdmerge.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_merged_upsampler          # -- Begin function jinit_merged_upsampler
	.p2align	2
	.type	jinit_merged_upsampler,@function
jinit_merged_upsampler:                 # @jinit_merged_upsampler
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 88
	mv	a0, s0
	jalr	a3
	mv	s1, a0
	sd	a0, 608(s0)
	lui	a0, %hi(start_pass_merged_upsample)
	addi	a0, a0, %lo(start_pass_merged_upsample)
	lw	a1, 136(s0)
	lw	a2, 144(s0)
	sd	a0, 0(s1)
	lw	a3, 412(s0)
	sw	zero, 16(s1)
	mul	a0, a2, a1
	li	a1, 2
	sw	a0, 76(s1)
	bne	a3, a1, .LBB0_2
# %bb.1:
	ld	a1, 8(s0)
	lui	a2, %hi(merged_2v_upsample)
	addi	a2, a2, %lo(merged_2v_upsample)
	sd	a2, 8(s1)
	lui	a2, %hi(h2v2_merged_upsample)
	addi	a2, a2, %lo(h2v2_merged_upsample)
	ld	a3, 8(a1)
	sd	a2, 24(s1)
	slli	a0, a0, 32
	srli	a2, a0, 32
	li	a1, 1
	mv	a0, s0
	jalr	a3
	j	.LBB0_3
.LBB0_2:
	li	a0, 0
	lui	a1, %hi(merged_1v_upsample)
	addi	a1, a1, %lo(merged_1v_upsample)
	sd	a1, 8(s1)
	lui	a1, %hi(h2v1_merged_upsample)
	addi	a1, a1, %lo(h2v1_merged_upsample)
	sd	a1, 24(s1)
.LBB0_3:
	sd	a0, 64(s1)
	ld	a0, 8(s0)
	ld	s2, 608(s0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 1024
	li	s1, 1
	mv	a0, s0
	jalr	a3
	ld	a1, 8(s0)
	ld	a3, 0(a1)
	sd	a0, 32(s2)
	li	a1, 1
	li	a2, 1024
	mv	a0, s0
	jalr	a3
	ld	a1, 8(s0)
	ld	a3, 0(a1)
	sd	a0, 40(s2)
	slli	s1, s1, 11
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a3
	ld	a1, 8(s0)
	ld	a3, 0(a1)
	sd	a0, 48(s2)
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	jalr	a3
	sd	a0, 56(s2)
	ld	a1, 32(s2)
	ld	a2, 40(s2)
	ld	a3, 48(s2)
	add	s1, a0, s1
	lui	a4, 713
	addiw	a4, a4, -768
	lui	a5, 1463
	addiw	a5, a5, -1792
	lui	a6, 1044955
	addiw	a6, a6, -256
	lui	a7, 1045713
	addiw	a7, a7, -1152
	lui	t0, 1048570
	addiw	t0, t0, 2022
	lui	t1, 1048565
	addiw	t1, t1, -1746
	lui	t2, 28
	addiw	t2, t2, 1442
	lui	t3, 22
	addiw	t3, t3, 1769
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	srli	t4, a7, 16
	sw	t4, 0(a1)
	srli	t4, a6, 16
	sw	t4, 0(a2)
	sd	a5, 0(a3)
	sd	a4, 0(a0)
	addi	a0, a0, 8
	addi	a3, a3, 8
	addi	a2, a2, 4
	addi	a1, a1, 4
	add	a4, a4, t0
	add	a5, a5, t1
	add	a6, a6, t2
	add	a7, a7, t3
	bne	a0, s1, .LBB0_4
# %bb.5:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	jinit_merged_upsampler, .Lfunc_end0-jinit_merged_upsampler
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_merged_upsample
	.type	start_pass_merged_upsample,@function
start_pass_merged_upsample:             # @start_pass_merged_upsample
# %bb.0:
	ld	a1, 608(a0)
	lw	a0, 140(a0)
	sw	zero, 72(a1)
	sw	a0, 80(a1)
	ret
.Lfunc_end1:
	.size	start_pass_merged_upsample, .Lfunc_end1-start_pass_merged_upsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function merged_2v_upsample
	.type	merged_2v_upsample,@function
merged_2v_upsample:                     # @merged_2v_upsample
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	ld	s2, 608(a0)
	lw	a3, 72(s2)
	mv	s1, a5
	mv	s0, a2
	beqz	a3, .LBB2_2
# %bb.1:
	lwu	a1, 0(s1)
	lw	a5, 76(s2)
	addi	a0, s2, 64
	slli	a1, a1, 3
	add	a2, a4, a1
	li	a4, 1
	li	s3, 1
	li	a1, 0
	li	a3, 0
	call	jcopy_sample_rows
	sw	zero, 72(s2)
	j	.LBB2_10
.LBB2_2:
	lwu	a2, 0(s1)
	lw	a3, 80(s2)
	subw	a5, a6, a2
	bltu	a3, a5, .LBB2_4
# %bb.3:
	mv	a3, a5
.LBB2_4:
	li	a5, 2
	mv	s3, a3
	bltu	a3, a5, .LBB2_6
# %bb.5:
	li	s3, 2
.LBB2_6:
	slli	a6, a2, 3
	add	a6, a4, a6
	ld	a6, 0(a6)
	sd	a6, 8(sp)
	bltu	a3, a5, .LBB2_8
# %bb.7:
	addi	a2, a2, 1
	slli	a2, a2, 32
	srli	a2, a2, 29
	add	a2, a4, a2
	ld	a3, 0(a2)
	j	.LBB2_9
.LBB2_8:
	ld	a3, 64(s2)
	li	a2, 1
	sw	a2, 72(s2)
.LBB2_9:
	ld	a4, 24(s2)
	lw	a2, 0(s0)
	sd	a3, 16(sp)
	addi	a3, sp, 8
	jalr	a4
.LBB2_10:
	lw	a0, 0(s1)
	add	a0, a0, s3
	sw	a0, 0(s1)
	lw	a0, 80(s2)
	lw	a1, 72(s2)
	subw	a0, a0, s3
	sw	a0, 80(s2)
	bnez	a1, .LBB2_12
# %bb.11:
	lw	a0, 0(s0)
	addi	a0, a0, 1
	sw	a0, 0(s0)
.LBB2_12:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end2:
	.size	merged_2v_upsample, .Lfunc_end2-merged_2v_upsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function h2v2_merged_upsample
	.type	h2v2_merged_upsample,@function
h2v2_merged_upsample:                   # @h2v2_merged_upsample
# %bb.0:
	ld	t0, 608(a0)
	ld	a4, 424(a0)
	ld	a7, 32(t0)
	ld	a5, 40(t0)
	ld	a6, 48(t0)
	ld	t0, 56(t0)
	ld	t1, 0(a1)
	slli	t3, a2, 1
	slli	t2, a2, 33
	srli	t2, t2, 29
	add	t2, t1, t2
	ld	t2, 0(t2)
	addi	t3, t3, 1
	slli	t3, t3, 32
	srli	t3, t3, 29
	add	t1, t1, t3
	ld	t1, 0(t1)
	ld	t3, 8(a1)
	slli	a2, a2, 32
	ld	a1, 16(a1)
	srli	a2, a2, 29
	add	t3, t3, a2
	ld	t3, 0(t3)
	add	a1, a1, a2
	ld	t4, 0(a1)
	lwu	t5, 136(a0)
	ld	a2, 0(a3)
	ld	a1, 8(a3)
	srli	a3, t5, 1
	beqz	a3, .LBB3_4
# %bb.1:
	addi	a3, a3, -1
	li	t5, 3
	slli	t5, t5, 33
	slli	a3, a3, 32
	mulhu	a3, a3, t5
	add	a3, a3, a2
	addi	a3, a3, 6
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	lbu	t5, 0(t4)
	lbu	t6, 0(t3)
	slli	n1, t5, 2
	add	n1, a7, n1
	slli	n2, t6, 3
	add	n2, t0, n2
	ld	n2, 0(n2)
	slli	t5, t5, 3
	add	t5, a6, t5
	ld	t5, 0(t5)
	lw	n1, 0(n1)
	lbu	n3, 0(t2)
	add	t5, t5, n2
	srli	t5, t5, 16
	addw	n2, n1, n3
	add	n2, a4, n2
	lbu	n2, 0(n2)
	slli	t6, t6, 2
	add	t6, a5, t6
	lw	t6, 0(t6)
	sb	n2, 0(a2)
	addw	n2, n3, t5
	add	n2, a4, n2
	lbu	n2, 0(n2)
	sb	n2, 1(a2)
	addw	n2, t6, n3
	add	n2, a4, n2
	lbu	n2, 0(n2)
	sb	n2, 2(a2)
	lbu	n2, 1(t2)
	addw	n3, n1, n2
	add	n3, a4, n3
	lbu	n3, 0(n3)
	sb	n3, 3(a2)
	addw	n3, n2, t5
	add	n3, a4, n3
	lbu	n3, 0(n3)
	sb	n3, 4(a2)
	addw	n2, t6, n2
	add	n2, a4, n2
	lbu	n2, 0(n2)
	sb	n2, 5(a2)
	lbu	n2, 0(t1)
	addw	n3, n1, n2
	add	n3, a4, n3
	lbu	n3, 0(n3)
	sb	n3, 0(a1)
	addw	n3, n2, t5
	add	n3, a4, n3
	lbu	n3, 0(n3)
	sb	n3, 1(a1)
	addw	n2, t6, n2
	add	n2, a4, n2
	lbu	n2, 0(n2)
	sb	n2, 2(a1)
	lbu	n2, 1(t1)
	addw	n1, n1, n2
	add	n1, a4, n1
	lbu	n1, 0(n1)
	sb	n1, 3(a1)
	addw	t5, n2, t5
	add	t5, a4, t5
	lbu	t5, 0(t5)
	addi	t3, t3, 1
	addi	t4, t4, 1
	sb	t5, 4(a1)
	addw	t5, t6, n2
	add	t5, a4, t5
	lbu	t5, 0(t5)
	addi	t2, t2, 2
	addi	a2, a2, 6
	addi	t1, t1, 2
	sb	t5, 5(a1)
	addi	a1, a1, 6
	bne	a2, a3, .LBB3_2
# %bb.3:
	lw	t5, 136(a0)
.LBB3_4:
	andi	t5, t5, 1
	beqz	t5, .LBB3_6
# %bb.5:
	lbu	a0, 0(t4)
	lbu	a3, 0(t3)
	slli	t3, a0, 2
	add	a7, a7, t3
	slli	t3, a3, 3
	add	t0, t0, t3
	ld	t0, 0(t0)
	slli	a0, a0, 3
	add	a0, a6, a0
	ld	a0, 0(a0)
	lw	a6, 0(a7)
	lbu	a7, 0(t2)
	add	a0, a0, t0
	srli	a0, a0, 16
	addw	t0, a6, a7
	add	t0, a4, t0
	lbu	t0, 0(t0)
	slli	a3, a3, 2
	add	a3, a5, a3
	lw	a3, 0(a3)
	sb	t0, 0(a2)
	addw	a5, a7, a0
	add	a5, a4, a5
	lbu	a5, 0(a5)
	sb	a5, 1(a2)
	addw	a5, a3, a7
	add	a5, a4, a5
	lbu	a5, 0(a5)
	sb	a5, 2(a2)
	lbu	a2, 0(t1)
	addw	a5, a6, a2
	add	a5, a4, a5
	lbu	a5, 0(a5)
	sb	a5, 0(a1)
	addw	a0, a2, a0
	add	a0, a4, a0
	lbu	a0, 0(a0)
	sb	a0, 1(a1)
	addw	a2, a3, a2
	add	a2, a4, a2
	lbu	a0, 0(a2)
	sb	a0, 2(a1)
.LBB3_6:
	ret
.Lfunc_end3:
	.size	h2v2_merged_upsample, .Lfunc_end3-h2v2_merged_upsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function merged_1v_upsample
	.type	merged_1v_upsample,@function
merged_1v_upsample:                     # @merged_1v_upsample
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	ld	a3, 608(a0)
	mv	s0, a5
	mv	s1, a2
	lwu	a5, 0(a5)
	ld	a6, 24(a3)
	lw	a2, 0(a2)
	slli	a3, a5, 3
	add	a3, a4, a3
	jalr	a6
	lw	a0, 0(s0)
	addi	a0, a0, 1
	sw	a0, 0(s0)
	lw	a0, 0(s1)
	addi	a0, a0, 1
	sw	a0, 0(s1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	merged_1v_upsample, .Lfunc_end4-merged_1v_upsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function h2v1_merged_upsample
	.type	h2v1_merged_upsample,@function
h2v1_merged_upsample:                   # @h2v1_merged_upsample
# %bb.0:
	ld	t0, 608(a0)
	ld	a4, 424(a0)
	ld	a7, 32(t0)
	ld	a5, 40(t0)
	ld	a6, 48(t0)
	ld	t0, 56(t0)
	ld	t1, 0(a1)
	slli	a2, a2, 32
	srli	t2, a2, 29
	ld	t3, 8(a1)
	add	t1, t1, t2
	ld	a1, 16(a1)
	ld	a2, 0(t1)
	add	t3, t3, t2
	ld	t1, 0(t3)
	add	a1, a1, t2
	lwu	t3, 136(a0)
	ld	t2, 0(a1)
	ld	a1, 0(a3)
	srli	a3, t3, 1
	beqz	a3, .LBB5_4
# %bb.1:
	addi	a3, a3, -1
	li	t3, 3
	slli	t3, t3, 33
	slli	a3, a3, 32
	mulhu	a3, a3, t3
	add	a3, a3, a1
	addi	a3, a3, 6
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	lbu	t3, 0(t2)
	lbu	t4, 0(t1)
	slli	t5, t3, 2
	add	t5, a7, t5
	slli	t6, t4, 3
	add	t6, t0, t6
	ld	t6, 0(t6)
	slli	t3, t3, 3
	add	t3, a6, t3
	ld	t3, 0(t3)
	lw	t5, 0(t5)
	lbu	n1, 0(a2)
	add	t3, t3, t6
	srli	t3, t3, 16
	addw	t6, t5, n1
	add	t6, a4, t6
	lbu	t6, 0(t6)
	slli	t4, t4, 2
	add	t4, a5, t4
	lw	t4, 0(t4)
	sb	t6, 0(a1)
	addw	t6, n1, t3
	add	t6, a4, t6
	lbu	t6, 0(t6)
	sb	t6, 1(a1)
	addw	t6, t4, n1
	add	t6, a4, t6
	lbu	t6, 0(t6)
	sb	t6, 2(a1)
	lbu	t6, 1(a2)
	addw	t5, t5, t6
	add	t5, a4, t5
	lbu	t5, 0(t5)
	sb	t5, 3(a1)
	addw	t3, t6, t3
	add	t3, a4, t3
	lbu	t3, 0(t3)
	sb	t3, 4(a1)
	addw	t4, t4, t6
	add	t4, a4, t4
	lbu	t3, 0(t4)
	addi	t1, t1, 1
	addi	t2, t2, 1
	sb	t3, 5(a1)
	addi	a1, a1, 6
	addi	a2, a2, 2
	bne	a1, a3, .LBB5_2
# %bb.3:
	lw	t3, 136(a0)
.LBB5_4:
	andi	t3, t3, 1
	beqz	t3, .LBB5_6
# %bb.5:
	lbu	a0, 0(t2)
	lbu	a3, 0(t1)
	slli	t1, a0, 2
	add	a7, a7, t1
	slli	t1, a3, 3
	add	t0, t0, t1
	ld	t0, 0(t0)
	slli	a0, a0, 3
	add	a0, a6, a0
	ld	a0, 0(a0)
	lw	a6, 0(a7)
	lbu	a2, 0(a2)
	add	a0, a0, t0
	srli	a0, a0, 16
	addw	a6, a6, a2
	add	a6, a4, a6
	lbu	a6, 0(a6)
	slli	a3, a3, 2
	add	a3, a5, a3
	lw	a3, 0(a3)
	sb	a6, 0(a1)
	addw	a0, a2, a0
	add	a0, a4, a0
	lbu	a0, 0(a0)
	sb	a0, 1(a1)
	addw	a2, a3, a2
	add	a2, a4, a2
	lbu	a0, 0(a2)
	sb	a0, 2(a1)
.LBB5_6:
	ret
.Lfunc_end5:
	.size	h2v1_merged_upsample, .Lfunc_end5-h2v1_merged_upsample
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
