	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jidctfst.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_idct_ifast                 # -- Begin function jpeg_idct_ifast
	.p2align	2
	.type	jpeg_idct_ifast,@function
jpeg_idct_ifast:                        # @jpeg_idct_ifast
# %bb.0:
	addi	sp, sp, -336
	sd	s0, 328(sp)                     # 8-byte Folded Spill
	sd	s1, 320(sp)                     # 8-byte Folded Spill
	sd	s2, 312(sp)                     # 8-byte Folded Spill
	sd	s3, 304(sp)                     # 8-byte Folded Spill
	sd	s4, 296(sp)                     # 8-byte Folded Spill
	sd	s5, 288(sp)                     # 8-byte Folded Spill
	sd	s6, 280(sp)                     # 8-byte Folded Spill
	sd	s7, 272(sp)                     # 8-byte Folded Spill
	sd	s8, 264(sp)                     # 8-byte Folded Spill
	li	a5, 1
	slli	a5, a5, 40
	addi	a5, a5, -669
	addi	a6, sp, 8
	ld	a0, 424(a0)
	ld	a1, 88(a1)
	addi	a2, a2, 64
	addi	a7, sp, 40
	li	t0, 362
	li	t1, 473
	li	t2, 277
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lhu	t3, -48(a2)
	lhu	t4, -32(a2)
	or	t5, t3, t4
	slli	t5, t5, 48
	bnez	t5, .LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t4, -16(a2)
	bnez	t4, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t4, 0(a2)
	bnez	t4, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t4, 16(a2)
	bnez	t4, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t4, 32(a2)
	bnez	t4, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t4, 48(a2)
	beqz	t4, .LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	li	t4, 0
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	lh	t5, -64(a2)
	lw	t6, 0(a1)
	mul	t5, t6, t5
	slli	t4, t4, 48
	lw	t6, 64(a1)
	lh	s0, 0(a2)
	lw	s1, 128(a1)
	lh	s2, 32(a2)
	lw	s3, 192(a1)
	srai	t4, t4, 48
	mul	t4, t6, t4
	mul	t6, s1, s0
	mul	s0, s3, s2
	add	s1, t6, t5
	subw	t5, t5, t6
	add	t6, s0, t4
	subw	t4, t4, s0
	mul	t4, t4, t0
	srli	t4, t4, 8
	subw	t4, t4, t6
	add	s0, t6, s1
	subw	s1, s1, t6
	add	t6, t4, t5
	subw	t5, t5, t4
	slli	t3, t3, 48
	srai	t3, t3, 48
	lw	t4, 32(a1)
	lh	s2, -16(a2)
	lw	s3, 96(a1)
	lh	s4, 16(a2)
	lw	s5, 160(a1)
	lh	s6, 48(a2)
	lw	s7, 224(a1)
	mul	t3, t4, t3
	mul	t4, s3, s2
	mul	s2, s5, s4
	mul	s3, s7, s6
	add	s4, s2, t4
	subw	t4, s2, t4
	add	s2, s3, t3
	subw	t3, t3, s3
	add	s3, s2, s4
	subw	s2, s2, s4
	mul	s2, s2, t0
	srli	s2, s2, 8
	addw	s4, t3, t4
	mul	s4, s4, t1
	srli	s4, s4, 8
	mul	t3, t3, t2
	srli	t3, t3, 8
	subw	t3, t3, s4
	mul	t4, t4, a5
	srli	t4, t4, 8
	subw	t4, t4, s3
	add	t4, t4, s4
	subw	s2, s2, t4
	add	t3, s2, t3
	add	s4, s3, s0
	sw	s4, 0(a6)
	subw	s0, s0, s3
	sw	s0, 224(a6)
	add	s0, t4, t6
	sw	s0, 32(a6)
	subw	t6, t6, t4
	sw	t6, 192(a6)
	add	t4, s2, t5
	sw	t4, 64(a6)
	subw	t4, t5, s2
	sw	t4, 160(a6)
	add	t4, t3, s1
	sw	t4, 128(a6)
	subw	t3, s1, t3
	li	t4, 96
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	add	t4, a6, t4
	sw	t3, 0(t4)
	addi	a6, a6, 4
	addi	a1, a1, 4
	addi	a2, a2, 2
	bne	a6, a7, .LBB0_1
	j	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	lh	t3, -64(a2)
	lw	t4, 0(a1)
	mul	t3, t4, t3
	sw	t3, 0(a6)
	sw	t3, 32(a6)
	sw	t3, 64(a6)
	sw	t3, 96(a6)
	sw	t3, 128(a6)
	sw	t3, 160(a6)
	sw	t3, 192(a6)
	li	t4, 224
	j	.LBB0_9
.LBB0_11:
	addi	a0, a0, 128
	slli	a1, a4, 32
	srli	a1, a1, 32
	addi	a2, sp, 24
	addi	a4, a3, 64
	li	a6, 362
	li	a7, 473
	slli	a7, a7, 32
	li	t0, 277
	slli	t0, t0, 32
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	lw	t2, -12(a2)
	lw	t5, -8(a2)
	ld	t1, 0(a3)
	or	t3, t2, t5
	add	t1, t1, a1
	bnez	t3, .LBB0_19
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	lw	t3, -4(a2)
	bnez	t3, .LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	lw	t3, 0(a2)
	bnez	t3, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	lw	t3, 4(a2)
	bnez	t3, .LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=1
	lw	t3, 8(a2)
	bnez	t3, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=1
	lw	t3, 12(a2)
	beqz	t3, .LBB0_21
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=1
	li	t5, 0
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=1
	lw	t4, -16(a2)
	lw	t6, 0(a2)
	lw	s0, 8(a2)
	add	t3, t6, t4
	subw	t6, t4, t6
	add	t4, s0, t5
	subw	t5, t5, s0
	slli	t5, t5, 32
	srli	t5, t5, 32
	mul	t5, t5, a6
	srli	t5, t5, 8
	subw	s0, t5, t4
	lw	s1, 4(a2)
	lw	s2, -4(a2)
	lw	s3, 12(a2)
	add	s4, t4, t3
	add	t5, s0, t6
	add	s5, s2, s1
	add	s6, s3, t2
	add	s7, s6, s5
	add	s8, s7, s4
	slli	s8, s8, 49
	srli	s8, s8, 54
	add	s8, a0, s8
	lbu	s8, 0(s8)
	subw	t6, t6, s0
	subw	s0, s1, s2
	subw	t2, t2, s3
	sb	s8, 0(t1)
	slli	s1, s0, 32
	srli	s1, s1, 32
	mul	s1, s1, a5
	srli	s1, s1, 8
	subw	s1, s1, s7
	subw	s2, s4, s7
	add	s0, t2, s0
	slli	s0, s0, 32
	slli	s2, s2, 49
	srli	s2, s2, 54
	add	s2, a0, s2
	lbu	s2, 0(s2)
	mulhu	s0, s0, a7
	srli	s0, s0, 8
	add	s1, s1, s0
	sb	s2, 7(t1)
	add	s2, s1, t5
	slli	s2, s2, 49
	srli	s2, s2, 54
	add	s2, a0, s2
	lbu	s2, 0(s2)
	subw	s3, s6, s5
	slli	s3, s3, 32
	srli	s3, s3, 32
	sb	s2, 1(t1)
	subw	t5, t5, s1
	slli	t5, t5, 49
	srli	t5, t5, 54
	add	t5, a0, t5
	lbu	t5, 0(t5)
	mul	s2, s3, a6
	srli	s2, s2, 8
	subw	s1, s2, s1
	sb	t5, 6(t1)
	add	t5, s1, t6
	slli	t5, t5, 49
	srli	t5, t5, 54
	add	t5, a0, t5
	lbu	t5, 0(t5)
	subw	t3, t3, t4
	slli	t2, t2, 32
	mulhu	t2, t2, t0
	sb	t5, 2(t1)
	subw	t6, t6, s1
	slli	t6, t6, 49
	srli	t6, t6, 54
	add	t6, a0, t6
	lbu	t4, 0(t6)
	srli	t2, t2, 8
	subw	t2, t2, s0
	add	t2, s1, t2
	sb	t4, 5(t1)
	add	t4, t2, t3
	slli	t4, t4, 49
	srli	t4, t4, 54
	add	t4, a0, t4
	lbu	t4, 0(t4)
	sb	t4, 4(t1)
	subw	t2, t3, t2
	slli	t2, t2, 49
	srli	t2, t2, 54
	add	t2, a0, t2
	lbu	t2, 0(t2)
	li	t3, 3
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=1
	add	t1, t1, t3
	sb	t2, 0(t1)
	addi	a3, a3, 8
	addi	a2, a2, 32
	bne	a3, a4, .LBB0_12
	j	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=1
	lwu	t2, -16(a2)
	slli	t2, t2, 49
	srli	t2, t2, 54
	add	t2, a0, t2
	lbu	t2, 0(t2)
	sb	t2, 0(t1)
	sb	t2, 1(t1)
	sb	t2, 2(t1)
	sb	t2, 3(t1)
	sb	t2, 4(t1)
	sb	t2, 5(t1)
	sb	t2, 6(t1)
	li	t3, 7
	j	.LBB0_20
.LBB0_22:
	ld	s0, 328(sp)                     # 8-byte Folded Reload
	ld	s1, 320(sp)                     # 8-byte Folded Reload
	ld	s2, 312(sp)                     # 8-byte Folded Reload
	ld	s3, 304(sp)                     # 8-byte Folded Reload
	ld	s4, 296(sp)                     # 8-byte Folded Reload
	ld	s5, 288(sp)                     # 8-byte Folded Reload
	ld	s6, 280(sp)                     # 8-byte Folded Reload
	ld	s7, 272(sp)                     # 8-byte Folded Reload
	ld	s8, 264(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 336
	ret
.Lfunc_end0:
	.size	jpeg_idct_ifast, .Lfunc_end0-jpeg_idct_ifast
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
