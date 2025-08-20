	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jidctint.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_idct_islow                 # -- Begin function jpeg_idct_islow
	.p2align	2
	.type	jpeg_idct_islow,@function
jpeg_idct_islow:                        # @jpeg_idct_islow
# %bb.0:
	addi	sp, sp, -432
	sd	ra, 424(sp)                     # 8-byte Folded Spill
	sd	s0, 416(sp)                     # 8-byte Folded Spill
	sd	s1, 408(sp)                     # 8-byte Folded Spill
	sd	s2, 400(sp)                     # 8-byte Folded Spill
	sd	s3, 392(sp)                     # 8-byte Folded Spill
	sd	s4, 384(sp)                     # 8-byte Folded Spill
	sd	s5, 376(sp)                     # 8-byte Folded Spill
	sd	s6, 368(sp)                     # 8-byte Folded Spill
	sd	s7, 360(sp)                     # 8-byte Folded Spill
	sd	s8, 352(sp)                     # 8-byte Folded Spill
	sd	s9, 344(sp)                     # 8-byte Folded Spill
	sd	s10, 336(sp)                    # 8-byte Folded Spill
	sd	s11, 328(sp)                    # 8-byte Folded Spill
	sd	a4, 32(sp)                      # 8-byte Folded Spill
	lui	a5, 1048575
	addiw	a4, a5, 900
	sd	a4, 56(sp)                      # 8-byte Folded Spill
	lui	a6, 1048574
	addiw	a4, a6, 819
	sd	a4, 48(sp)                      # 8-byte Folded Spill
	lui	a7, 1048572
	addiw	a4, a7, 315
	sd	a4, 64(sp)                      # 8-byte Folded Spill
	lui	t0, 1048571
	addiw	a4, t0, -515
	sd	a4, 40(sp)                      # 8-byte Folded Spill
	lui	t1, 6
	addiw	t1, t1, 596
	lui	t2, 4
	addiw	t2, t2, 435
	lui	t3, 3
	addiw	a6, t3, 11
	lui	t5, 2
	addiw	t0, t5, 1441
	addiw	t4, t5, -1922
	lui	t6, 1
	addiw	t6, t6, -1650
	ld	t3, 424(a0)
	ld	a1, 88(a1)
	addi	s0, sp, 72
	addi	a2, a2, 64
	addi	s1, sp, 104
	ld	a7, 64(sp)                      # 8-byte Folded Reload
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lhu	s2, -48(a2)
	lhu	s3, -32(a2)
	or	s4, s2, s3
	slli	s4, s4, 48
	bnez	s4, .LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	s3, -16(a2)
	bnez	s3, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	s3, 0(a2)
	bnez	s3, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	s3, 16(a2)
	bnez	s3, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	s3, 32(a2)
	bnez	s3, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	s3, 48(a2)
	beqz	s3, .LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	li	s3, 0
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	lw	s4, 64(a1)
	lh	s5, 32(a2)
	lw	s6, 192(a1)
	slli	s3, s3, 48
	srai	s3, s3, 48
	mulw	s3, s4, s3
	mulw	s4, s6, s5
	add	s5, s4, s3
	addi	s6, t6, 1987
	mul	s5, s5, s6
	addi	s6, a7, 932
	mul	s4, s4, s6
	add	s4, s5, s4
	lh	s6, -64(a2)
	lw	s7, 0(a1)
	lh	s8, 0(a2)
	lw	s9, 128(a1)
	mul	s3, s3, t4
	add	s3, s5, s3
	mulw	s5, s7, s6
	mulw	s6, s9, s8
	add	s7, s6, s5
	slli	s7, s7, 13
	sub	s5, s5, s6
	slli	s5, s5, 13
	add	s6, s7, s3
	sub	s3, s7, s3
	add	s7, s5, s4
	sub	s4, s5, s4
	lh	s5, 48(a2)
	lw	s8, 224(a1)
	lh	s9, 16(a2)
	lw	s10, 160(a1)
	lh	s11, -16(a2)
	lw	ra, 96(a1)
	mulw	s5, s8, s5
	mulw	s8, s10, s9
	lw	s9, 32(a1)
	mulw	s10, ra, s11
	slli	s2, s2, 48
	srai	s2, s2, 48
	mulw	s2, s9, s2
	add	s9, s2, s5
	add	s11, s10, s8
	add	ra, s10, s5
	add	a4, s2, s8
	add	a0, a4, ra
	mul	a0, a0, t0
	mul	s5, s5, t6
	mul	s8, s8, t2
	mul	s10, s10, t1
	mul	s2, s2, a6
	ld	a5, 48(sp)                      # 8-byte Folded Reload
	mul	s9, s9, a5
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	mul	s11, s11, a5
	mul	ra, ra, a7
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	mul	a4, a4, a5
	add	ra, a0, ra
	add	a0, a0, a4
	add	s5, s9, s5
	add	s5, s5, ra
	add	s8, s11, s8
	add	s8, s8, a0
	add	s10, s11, s10
	add	s10, s10, ra
	add	s2, s9, s2
	add	a0, s2, a0
	addi	a4, s6, 1024
	add	s2, a4, a0
	srli	s2, s2, 11
	sw	s2, 0(s0)
	sub	a4, a4, a0
	srli	a4, a4, 11
	sw	a4, 224(s0)
	addi	a0, s7, 1024
	add	a4, a0, s10
	srli	a4, a4, 11
	sw	a4, 32(s0)
	sub	a0, a0, s10
	srli	a0, a0, 11
	sw	a0, 192(s0)
	addi	a0, s4, 1024
	add	a4, a0, s8
	srli	a4, a4, 11
	sw	a4, 64(s0)
	sub	a0, a0, s8
	srli	a0, a0, 11
	sw	a0, 160(s0)
	addi	a0, s3, 1024
	add	a4, a0, s5
	srli	a4, a4, 11
	sw	a4, 96(s0)
	sub	a0, a0, s5
	srli	s2, a0, 11
	li	s3, 128
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	add	s3, s0, s3
	sw	s2, 0(s3)
	addi	s0, s0, 4
	addi	a1, a1, 4
	addi	a2, a2, 2
	bne	s0, s1, .LBB0_1
	j	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	lh	s2, -64(a2)
	lw	s3, 0(a1)
	mul	s2, s2, s3
	slli	s2, s2, 2
	sw	s2, 0(s0)
	sw	s2, 32(s0)
	sw	s2, 64(s0)
	sw	s2, 96(s0)
	sw	s2, 128(s0)
	sw	s2, 160(s0)
	sw	s2, 192(s0)
	li	s3, 224
	j	.LBB0_9
.LBB0_11:
	addi	a0, t3, 128
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 32
	srli	a1, a1, 32
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	addi	a2, sp, 88
	addi	a1, a3, 64
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	addi	a1, t6, 1987
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 932
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	lui	s2, 32
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	mv	t3, t2
	mv	t2, t1
	ld	s3, 0(a3)
	lwu	s1, -12(a2)
	lwu	s4, -8(a2)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	add	s3, s3, a1
	bnez	s1, .LBB0_20
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	bnez	s4, .LBB0_20
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	lw	s4, -4(a2)
	bnez	s4, .LBB0_19
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	lw	s4, 0(a2)
	bnez	s4, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=1
	lw	s4, 4(a2)
	bnez	s4, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=1
	lw	s4, 8(a2)
	bnez	s4, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_12 Depth=1
	lw	s4, 12(a2)
	beqz	s4, .LBB0_22
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=1
	li	s4, 0
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=1
	lwu	s9, 8(a2)
	add	s5, s9, s4
	lw	s10, -16(a2)
	lw	s11, 0(a2)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	mul	ra, s5, a1
	mul	s4, s4, t4
	add	s4, ra, s4
	add	s5, s11, s10
	lwu	a5, 12(a2)
	lwu	a1, -4(a2)
	lwu	s8, 4(a2)
	slli	s5, s5, 13
	add	s6, a5, s1
	add	s0, a1, a5
	add	s7, s8, s1
	add	a4, s0, s7
	mul	a4, a4, t0
	mv	a7, t4
	mv	t4, a6
	mul	a6, s1, a6
	mv	t5, t0
	ld	t0, 48(sp)                      # 8-byte Folded Reload
	mul	s1, s6, t0
	ld	t0, 56(sp)                      # 8-byte Folded Reload
	mul	s6, s7, t0
	add	t0, a4, s6
	add	a6, s1, a6
	add	s6, a6, t0
	add	s7, s5, s2
	add	s7, s7, s4
	add	a6, s7, s6
	slli	a6, a6, 36
	srli	a6, a6, 54
	add	a6, a0, a6
	lbu	a6, 0(a6)
	ld	t1, 8(sp)                       # 8-byte Folded Reload
	mul	s9, s9, t1
	add	s9, ra, s9
	subw	s10, s10, s11
	sb	a6, 0(s3)
	slli	s10, s10, 13
	subw	a6, s7, s6
	add	s6, a1, s8
	mv	t1, t2
	mul	a1, a1, t2
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	mul	s6, s6, s7
	ld	t2, 64(sp)                      # 8-byte Folded Reload
	mul	s0, s0, t2
	slli	a6, a6, 36
	srli	a6, a6, 54
	add	a6, a0, a6
	lbu	a6, 0(a6)
	add	a4, a4, s0
	add	a1, s6, a1
	add	a1, a1, a4
	sb	a6, 7(s3)
	add	a6, s10, s2
	add	a6, a6, s9
	add	s0, a6, a1
	slli	s0, s0, 36
	srli	s0, s0, 54
	add	s0, a0, s0
	lbu	s0, 0(s0)
	sb	s0, 1(s3)
	subw	a1, a6, a1
	slli	a1, a1, 36
	srli	a1, a1, 54
	add	a1, a0, a1
	lbu	a1, 0(a1)
	mv	t2, t3
	mul	a6, s8, t3
	add	a6, s6, a6
	add	a6, a6, t0
	sb	a1, 6(s3)
	add	s10, s10, s2
	subw	a1, s10, s9
	add	t0, a1, a6
	slli	t0, t0, 36
	srli	t0, t0, 54
	add	t0, a0, t0
	lbu	t0, 0(t0)
	sb	t0, 2(s3)
	mv	t0, t5
	subw	a1, a1, a6
	mv	a6, t4
	mv	t4, a7
	slli	a1, a1, 36
	srli	a1, a1, 54
	add	a1, a0, a1
	lbu	a1, 0(a1)
	mul	a5, a5, t6
	add	a5, s1, a5
	add	a4, a5, a4
	sb	a1, 5(s3)
	add	s5, s5, s2
	subw	a1, s5, s4
	add	a5, a1, a4
	slli	a5, a5, 36
	srli	a5, a5, 54
	add	a5, a0, a5
	lbu	a5, 0(a5)
	sb	a5, 3(s3)
	subw	a1, a1, a4
	slli	a1, a1, 36
	srli	a1, a1, 54
	add	a1, a0, a1
	lbu	s4, 0(a1)
	li	s5, 4
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=1
	add	s3, s3, s5
	sb	s4, 0(s3)
	addi	a3, a3, 8
	addi	a2, a2, 32
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	bne	a3, a1, .LBB0_12
	j	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=1
	lw	s4, -16(a2)
	addi	s4, s4, 16
	slli	s4, s4, 49
	srli	s4, s4, 54
	add	s4, a0, s4
	lbu	s4, 0(s4)
	sb	s4, 0(s3)
	sb	s4, 1(s3)
	sb	s4, 2(s3)
	sb	s4, 3(s3)
	sb	s4, 4(s3)
	sb	s4, 5(s3)
	sb	s4, 6(s3)
	li	s5, 7
	mv	t1, t2
	mv	t2, t3
	j	.LBB0_21
.LBB0_23:
	ld	ra, 424(sp)                     # 8-byte Folded Reload
	ld	s0, 416(sp)                     # 8-byte Folded Reload
	ld	s1, 408(sp)                     # 8-byte Folded Reload
	ld	s2, 400(sp)                     # 8-byte Folded Reload
	ld	s3, 392(sp)                     # 8-byte Folded Reload
	ld	s4, 384(sp)                     # 8-byte Folded Reload
	ld	s5, 376(sp)                     # 8-byte Folded Reload
	ld	s6, 368(sp)                     # 8-byte Folded Reload
	ld	s7, 360(sp)                     # 8-byte Folded Reload
	ld	s8, 352(sp)                     # 8-byte Folded Reload
	ld	s9, 344(sp)                     # 8-byte Folded Reload
	ld	s10, 336(sp)                    # 8-byte Folded Reload
	ld	s11, 328(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 432
	ret
.Lfunc_end0:
	.size	jpeg_idct_islow, .Lfunc_end0-jpeg_idct_islow
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
