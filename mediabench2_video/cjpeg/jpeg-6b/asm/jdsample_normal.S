	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jdsample.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_upsampler                 # -- Begin function jinit_upsampler
	.p2align	2
	.type	jinit_upsampler,@function
jinit_upsampler:                        # @jinit_upsampler
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
	li	a2, 256
	mv	a0, s0
	jalr	a3
	mv	s1, a0
	sd	a0, 608(s0)
	lui	a0, %hi(start_pass_upsample)
	addi	a0, a0, %lo(start_pass_upsample)
	lw	a1, 392(s0)
	sd	a0, 0(s1)
	lui	a0, %hi(sep_upsample)
	addi	a0, a0, %lo(sep_upsample)
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
	lw	a0, 100(s0)
	beqz	a0, .LBB0_4
# %bb.3:
	lw	a0, 416(s0)
	slti	a0, a0, 2
	xori	s2, a0, 1
	lw	a0, 56(s0)
	bgtz	a0, .LBB0_5
	j	.LBB0_28
.LBB0_4:
	li	s2, 0
	lw	a0, 56(s0)
	blez	a0, .LBB0_28
.LBB0_5:
	ld	a0, 304(s0)
	li	s3, 0
	li	s4, 0
	addi	s5, s1, 104
	addi	s6, s1, 24
	addi	s7, a0, 36
	li	s8, 192
	lui	s9, %hi(noop_upsample)
	addi	s9, s9, %lo(noop_upsample)
	lui	s10, %hi(fullsize_upsample)
	addi	s10, s10, %lo(fullsize_upsample)
	j	.LBB0_10
.LBB0_6:                                #   in Loop: Header=BB0_10 Depth=1
	add	a0, s1, s3
	lui	a1, %hi(h2v1_upsample)
	addi	a1, a1, %lo(h2v1_upsample)
.LBB0_7:                                #   in Loop: Header=BB0_10 Depth=1
	sd	a1, 104(a0)
.LBB0_8:                                #   in Loop: Header=BB0_10 Depth=1
	ld	a0, 8(s0)
	ld	s11, 16(a0)
	lwu	a0, 136(s0)
	lw	a1, 408(s0)
	call	jround_up
	lw	a3, 412(s0)
	sext.w	a2, a0
	li	a1, 1
	mv	a0, s0
	jalr	s11
	mv	a7, s6
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	add	a7, a7, s3
	sd	a0, 0(a7)
	lw	a0, 56(s0)
	addi	s4, s4, 1
	addi	s3, s3, 8
	addi	s8, s8, 4
	addi	s7, s7, 96
	bge	s4, a0, .LBB0_28
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(s7)
	lw	a0, -24(s7)
	lw	a5, 416(s0)
	lw	a6, -28(s7)
	mul	a0, a0, a4
	divw	a1, a0, a5
	lw	a3, 408(s0)
	lw	a2, 412(s0)
	add	a0, s1, s8
	sw	a1, 0(a0)
	lw	t0, 12(s7)
	mv	a7, s5
	mv	a0, s9
	beqz	t0, .LBB0_9
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	mul	a0, a4, a6
	divw	a4, a0, a5
	bne	a4, a3, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	mv	a7, s5
	mv	a0, s10
	beq	a1, a2, .LBB0_9
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	slliw	a0, a4, 1
	bne	a0, a3, .LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
	bne	a1, a2, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_10 Depth=1
	beqz	s2, .LBB0_6
# %bb.16:                               #   in Loop: Header=BB0_10 Depth=1
	lw	a0, 4(s7)
	li	a1, 3
	bltu	a0, a1, .LBB0_6
# %bb.17:                               #   in Loop: Header=BB0_10 Depth=1
	add	a0, s1, s3
	lui	a1, %hi(h2v1_fancy_upsample)
	addi	a1, a1, %lo(h2v1_fancy_upsample)
	j	.LBB0_7
.LBB0_18:                               #   in Loop: Header=BB0_10 Depth=1
	bne	a0, a3, .LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_10 Depth=1
	slliw	a0, a1, 1
	bne	a0, a2, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_10 Depth=1
	beqz	s2, .LBB0_26
# %bb.21:                               #   in Loop: Header=BB0_10 Depth=1
	lw	a0, 4(s7)
	li	a1, 3
	bltu	a0, a1, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_10 Depth=1
	add	a0, s1, s3
	lui	a1, %hi(h2v2_fancy_upsample)
	addi	a1, a1, %lo(h2v2_fancy_upsample)
	sd	a1, 104(a0)
	li	a0, 1
	sw	a0, 16(s1)
	j	.LBB0_8
.LBB0_23:                               #   in Loop: Header=BB0_10 Depth=1
	divw	a0, a3, a4
	mul	a4, a0, a4
	subw	a3, a3, a4
	bnez	a3, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_10 Depth=1
	divw	a3, a2, a1
	mul	a1, a3, a1
	subw	a2, a2, a1
	beqz	a2, .LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_10 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 38
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB0_8
.LBB0_26:                               #   in Loop: Header=BB0_10 Depth=1
	add	a0, s1, s3
	lui	a1, %hi(h2v2_upsample)
	addi	a1, a1, %lo(h2v2_upsample)
	j	.LBB0_7
.LBB0_27:                               #   in Loop: Header=BB0_10 Depth=1
	add	a1, s1, s3
	lui	a2, %hi(int_upsample)
	addi	a2, a2, %lo(int_upsample)
	sd	a2, 104(a1)
	add	a1, s1, s4
	sb	a0, 232(a1)
	sb	a3, 242(a1)
	j	.LBB0_8
.LBB0_28:
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
	.size	jinit_upsampler, .Lfunc_end0-jinit_upsampler
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_pass_upsample
	.type	start_pass_upsample,@function
start_pass_upsample:                    # @start_pass_upsample
# %bb.0:
	ld	a1, 608(a0)
	lw	a2, 412(a0)
	lw	a0, 140(a0)
	sw	a2, 184(a1)
	sw	a0, 188(a1)
	ret
.Lfunc_end1:
	.size	start_pass_upsample, .Lfunc_end1-start_pass_upsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function sep_upsample
	.type	sep_upsample,@function
sep_upsample:                           # @sep_upsample
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
	mv	s1, a0
	ld	s5, 608(a0)
	lw	a3, 184(s5)
	lw	a0, 412(a0)
	mv	s2, a5
	mv	s0, a2
	bge	a3, a0, .LBB2_7
# %bb.1:
	lw	a1, 188(s5)
	subw	s3, a0, a3
	bgeu	s3, a1, .LBB2_12
.LBB2_2:
	lwu	a0, 0(s2)
	subw	a1, a6, a0
	bltu	s3, a1, .LBB2_4
.LBB2_3:
	mv	s3, a1
.LBB2_4:
	ld	a1, 616(s1)
	ld	a5, 8(a1)
	addi	a1, s5, 24
	slli	a0, a0, 3
	add	a4, a4, a0
	mv	a0, s1
	mv	a2, a3
	mv	a3, a4
	mv	a4, s3
	jalr	a5
	lw	a0, 0(s2)
	add	a0, a0, s3
	sw	a0, 0(s2)
	lw	a0, 188(s5)
	lw	a1, 184(s5)
	lw	a2, 412(s1)
	subw	a0, a0, s3
	sw	a0, 188(s5)
	addw	a0, a1, s3
	sw	a0, 184(s5)
	blt	a0, a2, .LBB2_6
# %bb.5:
	lw	a0, 0(s0)
	addi	a0, a0, 1
	sw	a0, 0(s0)
.LBB2_6:
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
.LBB2_7:
	mv	s3, a1
	lw	a1, 56(s1)
	blez	a1, .LBB2_11
# %bb.8:
	mv	s6, a6
	mv	s7, a4
	ld	s4, 304(s1)
	li	s8, 0
	addi	s9, s5, 104
	addi	s10, s5, 192
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	lw	a0, 0(s0)
	lw	a1, 0(s10)
	ld	a4, 0(s9)
	ld	a2, 0(s3)
	mul	a0, a1, a0
	slli	a0, a0, 32
	srli	a0, a0, 29
	add	a2, a2, a0
	addi	a3, s9, -80
	mv	a0, s1
	mv	a1, s4
	jalr	a4
	addi	s8, s8, 1
	lw	a0, 56(s1)
	addi	s4, s4, 96
	addi	s9, s9, 8
	addi	s10, s10, 4
	addi	s3, s3, 8
	blt	s8, a0, .LBB2_9
# %bb.10:
	lw	a0, 412(s1)
	mv	a4, s7
	mv	a6, s6
.LBB2_11:
	li	a3, 0
	sw	zero, 184(s5)
	lw	a1, 188(s5)
	subw	s3, a0, zero
	bltu	s3, a1, .LBB2_2
.LBB2_12:
	mv	s3, a1
	lwu	a0, 0(s2)
	subw	a1, a6, a0
	bgeu	s3, a1, .LBB2_3
	j	.LBB2_4
.Lfunc_end2:
	.size	sep_upsample, .Lfunc_end2-sep_upsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function noop_upsample
	.type	noop_upsample,@function
noop_upsample:                          # @noop_upsample
# %bb.0:
	sd	zero, 0(a3)
	ret
.Lfunc_end3:
	.size	noop_upsample, .Lfunc_end3-noop_upsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function fullsize_upsample
	.type	fullsize_upsample,@function
fullsize_upsample:                      # @fullsize_upsample
# %bb.0:
	sd	a2, 0(a3)
	ret
.Lfunc_end4:
	.size	fullsize_upsample, .Lfunc_end4-fullsize_upsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function h2v1_fancy_upsample
	.type	h2v1_fancy_upsample,@function
h2v1_fancy_upsample:                    # @h2v1_fancy_upsample
# %bb.0:
	lw	a4, 412(a0)
	blez	a4, .LBB5_7
# %bb.1:
	ld	a3, 0(a3)
	li	a4, 0
	li	a5, 2
	j	.LBB5_3
.LBB5_2:                                #   in Loop: Header=BB5_3 Depth=1
	lbu	t1, 0(a7)
	lbu	a7, -1(a7)
	slli	t2, t1, 1
	add	a7, a7, t1
	add	a7, a7, t2
	addi	a7, a7, 1
	srli	a7, a7, 2
	sb	a7, 0(a6)
	sb	t1, 3(t0)
	lw	a6, 412(a0)
	addi	a4, a4, 1
	bge	a4, a6, .LBB5_7
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
	slli	a6, a4, 3
	add	a7, a2, a6
	ld	t1, 0(a7)
	add	a6, a3, a6
	ld	t0, 0(a6)
	lbu	a6, 0(t1)
	sb	a6, 0(t0)
	lbu	a7, 1(t1)
	slli	t2, a6, 1
	add	a6, a6, a7
	add	a6, t2, a6
	addi	a6, a6, 2
	srli	a6, a6, 2
	sb	a6, 1(t0)
	lw	t2, 40(a1)
	addi	a7, t1, 1
	addi	a6, t0, 2
	beq	t2, a5, .LBB5_2
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	addi	t2, t2, -3
	slli	t2, t2, 32
	srli	t0, t2, 32
	add	t0, t1, t0
	addi	t0, t0, 2
.LBB5_5:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t1, 0(a7)
	lbu	t2, -1(a7)
	slli	t3, t1, 1
	add	t1, t3, t1
	add	t2, t2, t1
	addi	t2, t2, 1
	srli	t2, t2, 2
	sb	t2, 0(a6)
	lbu	t2, 1(a7)
	addi	a7, a7, 1
	add	t1, t1, t2
	addi	t1, t1, 2
	srli	t1, t1, 2
	sb	t1, 1(a6)
	addi	a6, a6, 2
	bne	a7, t0, .LBB5_5
# %bb.6:                                # %.loopexit
                                        #   in Loop: Header=BB5_3 Depth=1
	addi	t0, a6, -2
	j	.LBB5_2
.LBB5_7:
	ret
.Lfunc_end5:
	.size	h2v1_fancy_upsample, .Lfunc_end5-h2v1_fancy_upsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function h2v1_upsample
	.type	h2v1_upsample,@function
h2v1_upsample:                          # @h2v1_upsample
# %bb.0:
	lw	a4, 412(a0)
	blez	a4, .LBB6_7
# %bb.1:
	ld	a1, 0(a3)
	li	a3, 0
	j	.LBB6_3
.LBB6_2:                                #   in Loop: Header=BB6_3 Depth=1
	addi	a3, a3, 1
	bge	a3, a4, .LBB6_7
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
	lwu	a5, 136(a0)
	beqz	a5, .LBB6_2
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	slli	a6, a3, 3
	add	a4, a1, a6
	ld	a4, 0(a4)
	add	a6, a2, a6
	ld	a6, 0(a6)
	add	a5, a4, a5
.LBB6_5:                                #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a7, 0(a6)
	addi	a6, a6, 1
	sb	a7, 0(a4)
	addi	t0, a4, 2
	sb	a7, 1(a4)
	mv	a4, t0
	bltu	t0, a5, .LBB6_5
# %bb.6:                                #   in Loop: Header=BB6_3 Depth=1
	lw	a4, 412(a0)
	j	.LBB6_2
.LBB6_7:
	ret
.Lfunc_end6:
	.size	h2v1_upsample, .Lfunc_end6-h2v1_upsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function h2v2_fancy_upsample
	.type	h2v2_fancy_upsample,@function
h2v2_fancy_upsample:                    # @h2v2_fancy_upsample
# %bb.0:
	lw	a4, 412(a0)
	blez	a4, .LBB7_14
# %bb.1:
	addi	sp, sp, -32
	sd	s0, 24(sp)                      # 8-byte Folded Spill
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	sd	s3, 0(sp)                       # 8-byte Folded Spill
	ld	a3, 0(a3)
	li	a4, 0
	li	a5, 0
	addi	a6, a3, 8
	li	a7, 2
	j	.LBB7_4
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	mv	t4, t2
.LBB7_3:                                #   in Loop: Header=BB7_4 Depth=1
	slli	t2, t0, 1
	add	t4, t4, t0
	add	t2, t4, t2
	addi	t2, t2, 8
	srli	t2, t2, 4
	sb	t2, 0(t1)
	slli	t0, t0, 2
	addi	t0, t0, 7
	srli	t0, t0, 4
	sb	t0, 3(t3)
	lw	t0, 412(a0)
	addiw	a5, a5, 2
	addi	a4, a4, 1
	bge	a5, t0, .LBB7_13
.LBB7_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
                                        #     Child Loop BB7_11 Depth 2
	slli	t0, a4, 3
	add	t0, a2, t0
	ld	t6, 0(t0)
	ld	s0, -8(t0)
	lbu	t2, 0(t6)
	lbu	t3, 0(s0)
	slli	t1, a5, 3
	add	t4, a3, t1
	ld	t5, 0(t4)
	add	t3, t2, t3
	lbu	s1, 1(t6)
	lbu	s2, 1(s0)
	slli	t2, t2, 1
	add	t4, t2, t3
	slli	t2, s1, 1
	add	s1, s1, s2
	add	t2, t2, s1
	slli	t3, t4, 2
	addi	t3, t3, 8
	srli	t3, t3, 4
	sb	t3, 0(t5)
	slli	t3, t4, 1
	add	s1, t4, t2
	add	t3, t3, s1
	addi	t3, t3, 7
	srli	t3, t3, 4
	sb	t3, 1(t5)
	lw	s2, 40(a1)
	addi	t3, t5, 2
	beq	s2, a7, .LBB7_8
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	addi	s0, s0, 2
	addi	s1, t6, 2
	addi	s2, s2, -3
	slli	s2, s2, 32
	srli	t5, s2, 32
	add	t5, t6, t5
	addi	t5, t5, 3
.LBB7_6:                                #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s2, 0(s1)
	mv	t6, t2
	lbu	t2, 0(s0)
	addi	s3, s1, 1
	slli	s1, s2, 1
	addi	s0, s0, 1
	add	t2, s2, t2
	add	t2, s1, t2
	slli	s1, t6, 1
	add	s1, s1, t6
	add	t4, t4, s1
	addi	t4, t4, 8
	srli	t4, t4, 4
	sb	t4, 0(t3)
	add	s1, s1, t2
	addi	s1, s1, 7
	srli	s1, s1, 4
	sb	s1, 1(t3)
	addi	t3, t3, 2
	mv	t4, t6
	mv	s1, s3
	bne	s3, t5, .LBB7_6
# %bb.7:                                # %.loopexit1
                                        #   in Loop: Header=BB7_4 Depth=1
	addi	t5, t3, -2
	j	.LBB7_9
.LBB7_8:                                #   in Loop: Header=BB7_4 Depth=1
	mv	t6, t4
.LBB7_9:                                #   in Loop: Header=BB7_4 Depth=1
	slli	t4, t2, 1
	add	t6, t6, t2
	add	t4, t6, t4
	addi	t4, t4, 8
	srli	t4, t4, 4
	sb	t4, 0(t3)
	slli	t2, t2, 2
	addi	t2, t2, 7
	srli	t2, t2, 4
	sb	t2, 3(t5)
	ld	t4, 0(t0)
	ld	t5, 8(t0)
	lbu	t0, 0(t4)
	lbu	t2, 0(t5)
	add	t1, a6, t1
	ld	t3, 0(t1)
	add	t2, t0, t2
	lbu	t1, 1(t4)
	lbu	t6, 1(t5)
	slli	t0, t0, 1
	add	t2, t0, t2
	slli	t0, t1, 1
	add	t1, t1, t6
	add	t0, t0, t1
	slli	t1, t2, 2
	addi	t1, t1, 8
	srli	t1, t1, 4
	sb	t1, 0(t3)
	slli	t1, t2, 1
	add	t6, t2, t0
	add	t1, t1, t6
	addi	t1, t1, 7
	srli	t1, t1, 4
	sb	t1, 1(t3)
	lw	s0, 40(a1)
	addi	t1, t3, 2
	beq	s0, a7, .LBB7_2
# %bb.10:                               #   in Loop: Header=BB7_4 Depth=1
	addi	t5, t5, 2
	addi	t6, t4, 2
	addi	s0, s0, -3
	slli	s0, s0, 32
	srli	s0, s0, 32
	add	t3, t4, s0
	addi	t3, t3, 3
.LBB7_11:                               #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s0, 0(t6)
	mv	t4, t0
	lbu	t0, 0(t5)
	addi	s1, t6, 1
	slli	t6, s0, 1
	addi	t5, t5, 1
	add	t0, s0, t0
	add	t0, t6, t0
	slli	t6, t4, 1
	add	t6, t6, t4
	add	t2, t2, t6
	addi	t2, t2, 8
	srli	t2, t2, 4
	sb	t2, 0(t1)
	add	t6, t6, t0
	addi	t6, t6, 7
	srli	t6, t6, 4
	sb	t6, 1(t1)
	addi	t1, t1, 2
	mv	t2, t4
	mv	t6, s1
	bne	s1, t3, .LBB7_11
# %bb.12:                               # %.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	addi	t3, t1, -2
	j	.LBB7_3
.LBB7_13:
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	ld	s2, 8(sp)                       # 8-byte Folded Reload
	ld	s3, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
.LBB7_14:
	ret
.Lfunc_end7:
	.size	h2v2_fancy_upsample, .Lfunc_end7-h2v2_fancy_upsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function h2v2_upsample
	.type	h2v2_upsample,@function
h2v2_upsample:                          # @h2v2_upsample
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
	lw	a0, 412(a0)
	blez	a0, .LBB8_8
# %bb.1:
	mv	s1, a2
	ld	s2, 0(a3)
	li	s3, 0
	li	s5, 0
	li	s4, 0
	j	.LBB8_4
.LBB8_2:                                #   in Loop: Header=BB8_4 Depth=1
	li	a5, 0
.LBB8_3:                                #   in Loop: Header=BB8_4 Depth=1
	ori	a3, s4, 1
	sext.w	a1, s5
	li	a4, 1
	mv	a0, s2
	mv	a2, s2
	call	jcopy_sample_rows
	lw	a0, 412(s0)
	addi	s3, s3, 1
	addiw	a1, s5, 2
	addi	s5, s5, 2
	addiw	s4, s4, 2
	bge	a1, a0, .LBB8_8
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
	lwu	a1, 136(s0)
	beqz	a1, .LBB8_2
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=1
	slli	a0, s5, 3
	add	a0, s2, a0
	ld	a0, 0(a0)
	slli	a2, s3, 3
	add	a2, s1, a2
	ld	a2, 0(a2)
	add	a1, a0, a1
.LBB8_6:                                #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a3, 0(a2)
	addi	a2, a2, 1
	sb	a3, 0(a0)
	addi	a4, a0, 2
	sb	a3, 1(a0)
	mv	a0, a4
	bltu	a4, a1, .LBB8_6
# %bb.7:                                #   in Loop: Header=BB8_4 Depth=1
	lw	a5, 136(s0)
	j	.LBB8_3
.LBB8_8:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end8:
	.size	h2v2_upsample, .Lfunc_end8-h2v2_upsample
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function int_upsample
	.type	int_upsample,@function
int_upsample:                           # @int_upsample
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
	lw	a0, 412(a0)
	blez	a0, .LBB9_16
# %bb.1:
	mv	s3, a2
	ld	a2, 608(s0)
	lw	a1, 4(a1)
	add	a1, a2, a1
	lbu	a2, 232(a1)
	lbu	a1, 242(a1)
	ld	s1, 0(a3)
	andi	s4, a2, 255
	andi	s6, a1, 255
	addi	a1, s6, -1
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	beqz	s4, .LBB9_9
# %bb.2:
	li	s7, 0
	li	s9, 0
	li	s8, 0
	addi	a0, s4, -1
	slli	a0, a0, 32
	srli	a0, a0, 32
	addi	s10, a0, 1
	j	.LBB9_4
.LBB9_3:                                #   in Loop: Header=BB9_4 Depth=1
	lw	a0, 412(s0)
	addi	s7, s7, 1
	addw	a1, s9, s6
	add	s9, s9, s6
	add	s8, s8, s6
	bge	a1, a0, .LBB9_16
.LBB9_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
	lwu	s11, 136(s0)
	beqz	s11, .LBB9_7
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	slli	a0, s9, 3
	add	a0, s1, a0
	ld	s5, 0(a0)
	slli	a0, s7, 3
	add	a0, s3, a0
	ld	s2, 0(a0)
	add	s11, s5, s11
.LBB9_6:                                #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a1, 0(s2)
	mv	a0, s5
	mv	a2, s4
	call	memset
	add	s5, s5, s10
	addi	s2, s2, 1
	bltu	s5, s11, .LBB9_6
.LBB9_7:                                #   in Loop: Header=BB9_4 Depth=1
	li	a0, 2
	bltu	s6, a0, .LBB9_3
# %bb.8:                                #   in Loop: Header=BB9_4 Depth=1
	lw	a5, 136(s0)
	addiw	a3, s8, 1
	sext.w	a1, s9
	mv	a0, s1
	mv	a2, s1
	ld	a4, 0(sp)                       # 8-byte Folded Reload
	call	jcopy_sample_rows
	j	.LBB9_3
.LBB9_9:
	li	a1, 2
	bltu	s6, a1, .LBB9_13
# %bb.10:                               # %.preheader
	li	s3, 0
.LBB9_11:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 136(s0)
	bnez	a0, .LBB9_17
# %bb.12:                               #   in Loop: Header=BB9_11 Depth=1
	addiw	a3, s3, 1
	mv	a0, s1
	mv	a1, s3
	mv	a2, s1
	ld	a4, 0(sp)                       # 8-byte Folded Reload
	li	a5, 0
	call	jcopy_sample_rows
	lw	a0, 412(s0)
	addw	s3, s3, s6
	blt	s3, a0, .LBB9_11
	j	.LBB9_16
.LBB9_13:
	lw	a1, 136(s0)
	li	a2, 0
.LBB9_14:                               # =>This Inner Loop Header: Depth=1
	bnez	a1, .LBB9_17
# %bb.15:                               #   in Loop: Header=BB9_14 Depth=1
	addw	a2, a2, s6
	blt	a2, a0, .LBB9_14
.LBB9_16:
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
.LBB9_17:                               # =>This Inner Loop Header: Depth=1
	j	.LBB9_17
.Lfunc_end9:
	.size	int_upsample, .Lfunc_end9-int_upsample
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
