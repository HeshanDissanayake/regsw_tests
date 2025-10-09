	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jcsample.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_downsampler               # -- Begin function jinit_downsampler
	.p2align	2
	.type	jinit_downsampler,@function
jinit_downsampler:                      # @jinit_downsampler
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
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 104
	mv	a0, s0
	jalr	a3
	mv	s1, a0
	sd	a0, 480(s0)
	lui	a0, %hi(start_pass_downsample)
	addi	a0, a0, %lo(start_pass_downsample)
	lw	a1, 268(s0)
	sd	a0, 0(s1)
	lui	a0, %hi(sep_downsample)
	addi	a0, a0, %lo(sep_downsample)
	sd	a0, 8(s1)
	sw	zero, 16(s1)
	beqz	a1, .LBB0_2
# %bb.1:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 25
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_2:
	lw	a0, 76(s0)
	blez	a0, .LBB0_24
# %bb.3:
	ld	s4, 88(s0)
	li	s2, 0
	addi	s3, s1, 24
	addi	s4, s4, 12
	li	s5, 1
	lui	s6, %hi(fullsize_downsample)
	addi	s6, s6, %lo(fullsize_downsample)
	lui	s7, %hi(fullsize_smooth_downsample)
	addi	s7, s7, %lo(fullsize_smooth_downsample)
	lui	s8, %hi(h2v1_downsample)
	addi	s8, s8, %lo(h2v1_downsample)
	lui	s11, %hi(int_downsample)
	addi	s11, s11, %lo(int_downsample)
	li	s9, 38
	li	s10, 1
	j	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_7 Depth=1
	remw	a1, a2, a1
	beqz	a1, .LBB0_17
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s9, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 76(s0)
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	addi	s2, s2, 1
	addi	s3, s3, 8
	addi	s4, s4, 96
	bge	s2, a0, .LBB0_21
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -4(s4)
	lw	a2, 312(s0)
	bne	a1, a2, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	lw	a3, 0(s4)
	lw	a4, 316(s0)
	bne	a3, a4, .LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	lw	a1, 272(s0)
	beqz	a1, .LBB0_19
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	sd	s7, 0(s3)
	sw	s5, 16(s1)
	j	.LBB0_6
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	slliw	a3, a1, 1
	bne	a3, a2, .LBB0_4
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	lw	a3, 0(s4)
	lw	a4, 316(s0)
	bne	a3, a4, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	li	s10, 0
	sd	s8, 0(s3)
	j	.LBB0_6
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	slliw	a3, a3, 1
	bne	a3, a4, .LBB0_4
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	lw	a1, 272(s0)
	beqz	a1, .LBB0_20
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	lui	a1, %hi(h2v2_smooth_downsample)
	addi	a1, a1, %lo(h2v2_smooth_downsample)
	sd	a1, 0(s3)
	sw	s5, 16(s1)
	j	.LBB0_6
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	lw	a1, 316(s0)
	lw	a2, 0(s4)
	remw	a1, a1, a2
	bnez	a1, .LBB0_5
# %bb.18:                               #   in Loop: Header=BB0_7 Depth=1
	li	s10, 0
	sd	s11, 0(s3)
	j	.LBB0_6
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	sd	s6, 0(s3)
	j	.LBB0_6
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=1
	lui	a1, %hi(h2v2_downsample)
	addi	a1, a1, %lo(h2v2_downsample)
	sd	a1, 0(s3)
	j	.LBB0_6
.LBB0_21:
	lw	a0, 272(s0)
	beqz	a0, .LBB0_24
# %bb.22:
	bnez	s10, .LBB0_24
# %bb.23:
	ld	a0, 0(s0)
	ld	t1, 8(a0)
	li	a1, 99
	sw	a1, 40(a0)
	mv	a0, s0
	li	a1, 0
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
	jr	t1
.LBB0_24:
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
.Lfunc_end0:
	.size	jinit_downsampler, .Lfunc_end0-jinit_downsampler
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_downsample
	.type	start_pass_downsample,@function
start_pass_downsample:                  # @start_pass_downsample
# %bb.0:
	ret
.Lfunc_end1:
	.size	start_pass_downsample, .Lfunc_end1-start_pass_downsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function sep_downsample
	.type	sep_downsample,@function
sep_downsample:                         # @sep_downsample
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
	lw	a0, 76(a0)
	blez	a0, .LBB2_3
# %bb.1:
	mv	s1, a4
	mv	s2, a3
	mv	s3, a1
	li	s5, 0
	ld	s6, 480(s0)
	ld	s4, 88(s0)
	slli	a2, a2, 32
	srli	a2, a2, 32
	addi	s6, s6, 24
	slli	s7, a2, 3
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld	a2, 0(s3)
	lw	a0, 12(s4)
	add	a2, a2, s7
	ld	a3, 0(s2)
	mul	a0, a0, s1
	ld	a4, 0(s6)
	slli	a0, a0, 32
	srli	a0, a0, 29
	add	a3, a3, a0
	mv	a0, s0
	mv	a1, s4
	jalr	a4
	addi	s5, s5, 1
	lw	a0, 76(s0)
	addi	s4, s4, 96
	addi	s6, s6, 8
	addi	s2, s2, 8
	addi	s3, s3, 8
	blt	s5, a0, .LBB2_2
.LBB2_3:
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
	.size	sep_downsample, .Lfunc_end2-sep_downsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function fullsize_smooth_downsample
	.type	fullsize_smooth_downsample,@function
fullsize_smooth_downsample:             # @fullsize_smooth_downsample
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
	mv	s0, a1
	mv	s3, a0
	lw	s5, 28(a1)
	lw	a0, 316(a0)
	mv	s1, a3
	mv	s2, a2
	li	a1, -1
	slli	s5, s5, 3
	blt	a0, a1, .LBB3_4
# %bb.1:
	lwu	s6, 48(s3)
	subw	a1, s5, s6
	blez	a1, .LBB3_4
# %bb.2:
	addi	s7, s2, -8
	addi	a0, a0, 2
	not	a1, s6
	add	a1, s5, a1
	slli	a1, a1, 32
	srli	a1, a1, 32
	addi	s4, a1, 1
	slli	a0, a0, 32
	srli	a0, a0, 29
	add	a0, a0, s2
	addi	s8, a0, -8
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s7)
	add	a0, a0, s6
	lbu	a1, -1(a0)
	mv	a2, s4
	call	memset
	addi	s7, s7, 8
	bne	s7, s8, .LBB3_3
.LBB3_4:
	lw	a0, 12(s0)
	blez	a0, .LBB3_9
# %bb.5:
	lw	a2, 272(s3)
	li	a0, 0
	slli	a1, a2, 9
	lui	a3, 16
	sub	a1, a3, a1
	slli	a2, a2, 38
	srli	a2, a2, 32
	addi	s5, s5, -8
	slli	s5, s5, 32
	srli	a3, s5, 32
	addi	a3, a3, 7
	lui	a4, 8
.LBB3_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	slli	a5, a0, 3
	add	a6, s2, a5
	ld	t3, 0(a6)
	ld	t1, -8(a6)
	addi	a0, a0, 1
	slli	a6, a0, 3
	add	a6, s2, a6
	ld	a7, 0(a6)
	lbu	a6, 0(t1)
	lbu	t4, 0(t3)
	add	a5, s1, a5
	ld	a5, 0(a5)
	lbu	t2, 0(a7)
	add	a6, a6, t4
	lbu	t0, 1(t1)
	lbu	t5, 1(t3)
	lbu	t6, 1(a7)
	add	t2, t2, a6
	addi	a6, t3, 1
	add	t0, t0, t5
	add	t0, t6, t0
	slli	t5, t2, 1
	subw	t6, t4, t0
	subw	t5, t5, t6
	mul	t4, a1, t4
	mul	t5, t5, a2
	add	t4, t4, a4
	add	t4, t4, t5
	srli	t4, t4, 16
	sb	t4, 0(a5)
	addi	a5, a5, 1
	addi	a7, a7, 2
	addi	t1, t1, 2
	add	t3, t3, a3
.LBB3_7:                                #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	t4, t0
	lbu	t0, 0(t1)
	lbu	t5, 0(a7)
	lbu	t6, 1(a6)
	lbu	n1, 0(a6)
	addi	a6, a6, 1
	add	t0, t5, t0
	add	t0, t0, t6
	add	t2, t2, t4
	subw	t2, t2, n1
	add	t2, t2, t0
	mul	t5, a1, n1
	mul	t2, t2, a2
	add	t5, t5, a4
	add	t2, t5, t2
	srli	t2, t2, 16
	sb	t2, 0(a5)
	addi	a5, a5, 1
	addi	a7, a7, 1
	addi	t1, t1, 1
	mv	t2, t4
	bne	a6, t3, .LBB3_7
# %bb.8:                                #   in Loop: Header=BB3_6 Depth=1
	lbu	a6, 0(a6)
	slli	t0, t0, 1
	subw	a7, t4, a6
	add	a7, t0, a7
	mul	a6, a1, a6
	mul	a7, a7, a2
	add	a6, a6, a4
	add	a6, a6, a7
	srli	a6, a6, 16
	sb	a6, 0(a5)
	lw	a5, 12(s0)
	blt	a0, a5, .LBB3_6
.LBB3_9:
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
.Lfunc_end3:
	.size	fullsize_smooth_downsample, .Lfunc_end3-fullsize_smooth_downsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function fullsize_downsample
	.type	fullsize_downsample,@function
fullsize_downsample:                    # @fullsize_downsample
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	lw	a4, 316(a0)
	lw	a5, 48(a0)
	mv	s0, a3
	mv	a0, a2
	mv	s2, a1
	li	a1, 0
	mv	a2, a3
	li	a3, 0
	call	jcopy_sample_rows
	lw	a0, 316(s1)
	blez	a0, .LBB4_4
# %bb.1:
	lw	a1, 28(s2)
	lwu	s2, 48(s1)
	slli	a1, a1, 3
	subw	a2, a1, s2
	blez	a2, .LBB4_4
# %bb.2:
	not	a2, s2
	add	a1, a1, a2
	slli	a1, a1, 32
	srli	a1, a1, 32
	addi	s1, a1, 1
	slli	a0, a0, 3
	add	s3, s0, a0
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s0)
	add	a0, a0, s2
	lbu	a1, -1(a0)
	mv	a2, s1
	call	memset
	addi	s0, s0, 8
	bne	s0, s3, .LBB4_3
.LBB4_4:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end4:
	.size	fullsize_downsample, .Lfunc_end4-fullsize_downsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function h2v1_downsample
	.type	h2v1_downsample,@function
h2v1_downsample:                        # @h2v1_downsample
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
	mv	s0, a1
	lw	a1, 316(a0)
	lw	s4, 28(s0)
	mv	s1, a3
	mv	s2, a2
	blez	a1, .LBB5_4
# %bb.1:
	lwu	s5, 48(a0)
	slli	a0, s4, 4
	subw	a2, a0, s5
	blez	a2, .LBB5_4
# %bb.2:
	not	a2, s5
	add	a0, a0, a2
	slli	a0, a0, 32
	srli	a0, a0, 32
	addi	s3, a0, 1
	slli	a1, a1, 3
	add	s6, s2, a1
	mv	s7, s2
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s7)
	add	a0, a0, s5
	lbu	a1, -1(a0)
	mv	a2, s3
	call	memset
	addi	s7, s7, 8
	bne	s7, s6, .LBB5_3
.LBB5_4:
	lw	a0, 12(s0)
	blez	a0, .LBB5_10
# %bb.5:
	slliw	a1, s4, 3
	beqz	a1, .LBB5_10
# %bb.6:                                # %.preheader
	li	a0, 0
	addi	a1, a1, -8
	slli	a1, a1, 32
	srli	a1, a1, 31
	addi	a1, a1, 16
.LBB5_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
	slli	a2, a0, 3
	add	a3, s1, a2
	add	a2, s2, a2
	ld	a2, 0(a2)
	ld	a5, 0(a3)
	li	a3, 0
	add	a4, a2, a1
.LBB5_8:                                #   Parent Loop BB5_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a6, 0(a2)
	lbu	a7, 1(a2)
	add	a6, a3, a6
	add	a6, a6, a7
	srli	a6, a6, 1
	sb	a6, 0(a5)
	addi	a5, a5, 1
	addi	a2, a2, 2
	xori	a3, a3, 1
	bne	a2, a4, .LBB5_8
# %bb.9:                                #   in Loop: Header=BB5_7 Depth=1
	lw	a2, 12(s0)
	addi	a0, a0, 1
	blt	a0, a2, .LBB5_7
.LBB5_10:
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
.Lfunc_end5:
	.size	h2v1_downsample, .Lfunc_end5-h2v1_downsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function h2v2_smooth_downsample
	.type	h2v2_smooth_downsample,@function
h2v2_smooth_downsample:                 # @h2v2_smooth_downsample
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
	mv	s0, a1
	mv	s3, a0
	lw	a0, 316(a0)
	lw	s5, 28(a1)
	li	a1, -1
	mv	s1, a3
	mv	s2, a2
	blt	a0, a1, .LBB6_4
# %bb.1:
	lwu	s6, 48(s3)
	slli	a1, s5, 4
	subw	a2, a1, s6
	blez	a2, .LBB6_4
# %bb.2:
	addi	s7, s2, -8
	addi	a0, a0, 2
	not	a2, s6
	add	a1, a1, a2
	slli	a1, a1, 32
	srli	a1, a1, 32
	addi	s4, a1, 1
	slli	a0, a0, 32
	srli	a0, a0, 29
	add	a0, a0, s2
	addi	s8, a0, -8
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s7)
	add	a0, a0, s6
	lbu	a1, -1(a0)
	mv	a2, s4
	call	memset
	addi	s7, s7, 8
	bne	s7, s8, .LBB6_3
.LBB6_4:
	lw	a0, 12(s0)
	blez	a0, .LBB6_9
# %bb.5:
	lw	a3, 272(s3)
	li	a0, 0
	li	a1, 0
	slli	s5, s5, 3
	addi	a2, a3, -204
	li	a4, -80
	mul	a2, a2, a4
	addi	a2, a2, 64
	slli	a2, a2, 32
	srli	a2, a2, 32
	slli	a3, a3, 36
	srli	a3, a3, 32
	addi	s5, s5, -8
	slli	s5, s5, 32
	srli	a4, s5, 32
	addi	a4, a4, 7
	lui	a5, 8
.LBB6_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
	slli	a6, a0, 3
	add	a6, s1, a6
	ld	t3, 0(a6)
	slli	a6, a1, 3
	add	a6, s2, a6
	ld	t2, 0(a6)
	ld	t1, 8(a6)
	ld	t0, -8(a6)
	addi	a1, a1, 2
	slli	a6, a1, 3
	lbu	a7, 0(t2)
	lbu	t4, 1(t2)
	lbu	t5, 0(t1)
	lbu	t6, 1(t1)
	add	a6, s2, a6
	ld	n1, 0(a6)
	add	a7, t5, a7
	add	t4, t4, t6
	add	t4, a7, t4
	lbu	a6, 0(t0)
	lbu	t5, 1(t0)
	lbu	t6, 0(n1)
	lbu	n2, 1(n1)
	lbu	n3, 2(t2)
	lbu	n4, 2(t1)
	add	t5, a6, t5
	add	a7, a7, t5
	add	n2, t6, n2
	add	a7, a7, n2
	add	n3, n3, n4
	lbu	t5, 2(t0)
	add	a7, a7, n3
	lbu	n2, 2(n1)
	slli	a7, a7, 1
	add	a6, a6, t5
	add	a6, t6, a6
	add	a6, a6, n2
	add	a6, a7, a6
	mul	a7, t4, a2
	mul	a6, a6, a3
	add	a7, a7, a5
	add	a6, a7, a6
	srli	a6, a6, 16
	sb	a6, 0(t3)
	addi	a6, t3, 1
	addi	a7, n1, 3
	addi	t2, t2, 3
	addi	t1, t1, 3
	addi	t0, t0, 3
	add	t3, t3, a4
.LBB6_7:                                #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t4, -1(t2)
	lbu	t5, 0(t2)
	lbu	t6, -1(t1)
	lbu	n1, 0(t1)
	lbu	n2, -1(t0)
	lbu	n3, 0(t0)
	add	t4, t5, t4
	add	t6, t6, n1
	add	t4, t4, t6
	add	n2, n3, n2
	lbu	t5, -1(a7)
	lbu	t6, 0(a7)
	lbu	n1, -2(t2)
	lbu	n3, 1(t2)
	lbu	n4, -2(t1)
	add	t5, t5, t6
	add	t5, n2, t5
	add	n1, n1, n3
	add	n1, n1, n4
	add	t5, t5, n1
	lbu	t6, 1(t1)
	lbu	n1, -2(t0)
	lbu	n2, 1(t0)
	lbu	n3, -2(a7)
	add	t5, t5, t6
	lbu	t6, 1(a7)
	add	n1, n2, n1
	add	n1, n1, n3
	slli	t5, t5, 1
	add	t6, n1, t6
	add	t5, t6, t5
	mul	t4, t4, a2
	mul	t5, t5, a3
	add	t4, t4, a5
	add	t4, t4, t5
	srli	t4, t4, 16
	sb	t4, 0(a6)
	addi	a6, a6, 1
	addi	a7, a7, 2
	addi	t2, t2, 2
	addi	t1, t1, 2
	addi	t0, t0, 2
	bne	a6, t3, .LBB6_7
# %bb.8:                                #   in Loop: Header=BB6_6 Depth=1
	lbu	t3, -1(t2)
	lbu	t4, 0(t2)
	lbu	t5, 0(t1)
	lbu	t6, -1(t1)
	add	t4, t5, t4
	add	t3, t3, t6
	add	t3, t4, t3
	lbu	t5, -1(t0)
	lbu	t6, 0(t0)
	lbu	n1, -1(a7)
	lbu	n2, 0(a7)
	lbu	t2, -2(t2)
	lbu	t1, -2(t1)
	add	t5, t5, t6
	add	t4, t4, t5
	add	n1, n1, n2
	add	t2, n1, t2
	add	t2, t4, t2
	lbu	t0, -2(t0)
	lbu	a7, -2(a7)
	add	t1, t2, t1
	slli	t1, t1, 1
	add	t6, n2, t6
	add	a7, t0, a7
	add	a7, t6, a7
	add	a7, t1, a7
	mul	t0, t3, a2
	mul	a7, a7, a3
	add	t0, t0, a5
	add	a7, t0, a7
	srli	a7, a7, 16
	sb	a7, 0(a6)
	lw	a6, 12(s0)
	addi	a0, a0, 1
	blt	a0, a6, .LBB6_6
.LBB6_9:
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
.Lfunc_end6:
	.size	h2v2_smooth_downsample, .Lfunc_end6-h2v2_smooth_downsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function h2v2_downsample
	.type	h2v2_downsample,@function
h2v2_downsample:                        # @h2v2_downsample
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
	mv	s0, a1
	lw	a1, 316(a0)
	lw	s4, 28(s0)
	mv	s1, a3
	mv	s2, a2
	blez	a1, .LBB7_4
# %bb.1:
	lwu	s5, 48(a0)
	slli	a0, s4, 4
	subw	a2, a0, s5
	blez	a2, .LBB7_4
# %bb.2:
	not	a2, s5
	add	a0, a0, a2
	slli	a0, a0, 32
	srli	a0, a0, 32
	addi	s3, a0, 1
	slli	a1, a1, 3
	add	s6, s2, a1
	mv	s7, s2
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s7)
	add	a0, a0, s5
	lbu	a1, -1(a0)
	mv	a2, s3
	call	memset
	addi	s7, s7, 8
	bne	s7, s6, .LBB7_3
.LBB7_4:
	lw	a0, 12(s0)
	blez	a0, .LBB7_10
# %bb.5:
	slliw	a2, s4, 3
	beqz	a2, .LBB7_10
# %bb.6:                                # %.preheader
	li	a0, 0
	li	a1, 0
	addi	a2, a2, -8
	slli	a2, a2, 32
	srli	a2, a2, 31
	addi	a2, a2, 16
.LBB7_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
	slli	a3, a0, 3
	add	a4, s1, a3
	slli	a3, a1, 3
	add	a5, s2, a3
	ld	a3, 0(a5)
	ld	a7, 0(a4)
	ld	a4, 8(a5)
	add	a5, a3, a2
	li	a6, 1
.LBB7_8:                                #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t0, 0(a3)
	lbu	t1, 1(a3)
	lbu	t2, 0(a4)
	lbu	t3, 1(a4)
	add	t0, a6, t0
	add	t1, t1, t2
	add	t0, t0, t1
	add	t0, t0, t3
	srli	t0, t0, 2
	sb	t0, 0(a7)
	addi	a7, a7, 1
	xori	a6, a6, 3
	addi	a3, a3, 2
	addi	a4, a4, 2
	bne	a3, a5, .LBB7_8
# %bb.9:                                #   in Loop: Header=BB7_7 Depth=1
	lw	a3, 12(s0)
	addi	a0, a0, 1
	addi	a1, a1, 2
	blt	a0, a3, .LBB7_7
.LBB7_10:
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
.Lfunc_end7:
	.size	h2v2_downsample, .Lfunc_end7-h2v2_downsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function int_downsample
	.type	int_downsample,@function
int_downsample:                         # @int_downsample
# %bb.0:
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
	mv	s0, a1
	lw	a1, 28(a1)
	lw	a4, 312(a0)
	lw	a5, 8(s0)
	lw	s6, 316(a0)
	lw	s7, 12(s0)
	mv	s1, a3
	mv	s2, a2
	slliw	s4, a1, 3
	divw	s5, a4, a5
	mv	a1, s7
	blez	s6, .LBB8_5
# %bb.1:
	lwu	s8, 48(a0)
	mul	a0, s5, s4
	subw	a2, a0, s8
	mv	a1, s7
	blez	a2, .LBB8_5
# %bb.2:
	not	a1, s8
	add	a0, a0, a1
	slli	a0, a0, 32
	srli	a0, a0, 32
	addi	s3, a0, 1
	slli	s9, s6, 3
	add	s9, s2, s9
	mv	s10, s2
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s10)
	add	a0, a0, s8
	lbu	a1, -1(a0)
	mv	a2, s3
	call	memset
	addi	s10, s10, 8
	bne	s10, s9, .LBB8_3
# %bb.4:
	lw	a1, 12(s0)
.LBB8_5:
	blez	a1, .LBB8_21
# %bb.6:
	beqz	s4, .LBB8_21
# %bb.7:
	divw	a2, s6, s7
	mulw	a0, a2, s5
	srliw	a1, a0, 31
	add	a1, a0, a1
	sraiw	a1, a1, 1
	blez	a2, .LBB8_17
# %bb.8:
	blez	s5, .LBB8_19
# %bb.9:
	li	a3, 0
	li	a4, 0
	addi	a5, s5, -1
	slli	a5, a5, 32
	srli	a5, a5, 32
	addi	a5, a5, 1
.LBB8_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_11 Depth 2
                                        #       Child Loop BB8_12 Depth 3
                                        #         Child Loop BB8_13 Depth 4
	slli	a6, a3, 3
	add	a6, s1, a6
	ld	a6, 0(a6)
	li	a7, 0
	li	t0, 0
	slli	t1, a4, 3
	add	t1, s2, t1
.LBB8_11:                               #   Parent Loop BB8_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_12 Depth 3
                                        #         Child Loop BB8_13 Depth 4
	li	t3, 0
	li	t2, 0
	slli	t4, a7, 32
	srli	t4, t4, 32
.LBB8_12:                               #   Parent Loop BB8_10 Depth=1
                                        #     Parent Loop BB8_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_13 Depth 4
	slli	t5, t3, 3
	add	t5, t1, t5
	ld	t5, 0(t5)
	add	t6, t5, t4
	add	n1, a5, t4
	add	t5, t5, n1
.LBB8_13:                               #   Parent Loop BB8_10 Depth=1
                                        #     Parent Loop BB8_11 Depth=2
                                        #       Parent Loop BB8_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lbu	n1, 0(t6)
	addi	n2, t6, 1
	add	t2, t2, n1
	mv	t6, n2
	bne	n2, t5, .LBB8_13
# %bb.14:                               #   in Loop: Header=BB8_12 Depth=3
	addi	t3, t3, 1
	bne	t3, a2, .LBB8_12
# %bb.15:                               #   in Loop: Header=BB8_11 Depth=2
	add	t2, t2, a1
	div	t2, t2, a0
	sb	t2, 0(a6)
	addi	a6, a6, 1
	addiw	t0, t0, 1
	add	a7, a7, s5
	bne	t0, s4, .LBB8_11
# %bb.16:                               #   in Loop: Header=BB8_10 Depth=1
	lw	a6, 12(s0)
	addi	a3, a3, 1
	add	a4, a4, a2
	blt	a3, a6, .LBB8_10
	j	.LBB8_21
.LBB8_17:
	li	s5, 0
	div	s2, a1, a0
	slli	s4, s4, 32
	srli	s3, s4, 32
.LBB8_18:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s1)
	mv	a1, s2
	mv	a2, s3
	call	memset
	lw	a0, 12(s0)
	addi	s5, s5, 1
	addi	s1, s1, 8
	blt	s5, a0, .LBB8_18
	j	.LBB8_21
.LBB8_19:
	li	s5, 0
	div	s2, a1, a0
	slli	s4, s4, 32
	srli	s3, s4, 32
.LBB8_20:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s1)
	mv	a1, s2
	mv	a2, s3
	call	memset
	lw	a0, 12(s0)
	addi	s5, s5, 1
	addi	s1, s1, 8
	blt	s5, a0, .LBB8_20
.LBB8_21:
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
	ret
.Lfunc_end8:
	.size	int_downsample, .Lfunc_end8-int_downsample
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
