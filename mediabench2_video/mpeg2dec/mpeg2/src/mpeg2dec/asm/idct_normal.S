	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"idct.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Fast_IDCT                       # -- Begin function Fast_IDCT
	.p2align	2
	.type	Fast_IDCT,@function
Fast_IDCT:                              # @Fast_IDCT
# %bb.0:
	addi	sp, sp, -80
	sd	s0, 72(sp)                      # 8-byte Folded Spill
	sd	s1, 64(sp)                      # 8-byte Folded Spill
	sd	s2, 56(sp)                      # 8-byte Folded Spill
	sd	s3, 48(sp)                      # 8-byte Folded Spill
	sd	s4, 40(sp)                      # 8-byte Folded Spill
	sd	s5, 32(sp)                      # 8-byte Folded Spill
	sd	s6, 24(sp)                      # 8-byte Folded Spill
	sd	s7, 16(sp)                      # 8-byte Folded Spill
	sd	s8, 8(sp)                       # 8-byte Folded Spill
	sd	s9, 0(sp)                       # 8-byte Folded Spill
	lui	a1, 1048575
	addiw	a1, a1, 79
	lui	a2, 1
	addiw	a2, a2, -1820
	addi	a3, a0, 8
	addi	a4, a0, 136
	li	a5, 565
	addi	a6, a1, 611
	addi	a7, a2, 132
	li	t0, -799
	li	t1, 1108
	addi	t2, a1, 233
	li	t3, 1568
	li	t4, 181
	j	.LBB0_3
.LBB0_1:                                #   in Loop: Header=BB0_3 Depth=1
	slli	s5, s5, 48
	srai	s5, s5, 48
	slli	s5, s5, 11
	addi	s5, s5, 128
	add	s6, s2, s3
	mul	s6, s6, a5
	mul	s3, s3, a2
	add	s3, s6, s3
	mul	s2, s2, a6
	add	s2, s6, s2
	add	s6, s4, s1
	mul	s6, s6, a7
	mul	s1, s1, t0
	add	s1, s6, s1
	mul	s4, s4, a1
	add	s4, s6, s4
	add	s6, s5, s0
	subw	s0, s5, s0
	add	s5, t5, t6
	mul	s5, s5, t1
	mul	t6, t6, t2
	add	t6, s5, t6
	mul	t5, t5, t3
	add	t5, s5, t5
	add	s5, s1, s3
	subw	s1, s3, s1
	add	s3, s4, s2
	subw	s2, s2, s4
	add	s4, s6, t5
	subw	s6, s6, t5
	add	s7, s0, t6
	subw	s8, s0, t6
	add	t5, s1, s2
	mul	t5, t5, t4
	addi	t5, t5, 128
	sraiw	s9, t5, 8
	subw	t5, s1, s2
	mul	t5, t5, t4
	addi	t5, t5, 128
	sraiw	s2, t5, 8
	add	t5, s4, s5
	srliw	t5, t5, 8
	add	t6, s9, s7
	srliw	t6, t6, 8
	add	s0, s2, s8
	srliw	s0, s0, 8
	add	s1, s6, s3
	srliw	s1, s1, 8
	subw	s3, s6, s3
	srliw	s3, s3, 8
	subw	s2, s8, s2
	srliw	s2, s2, 8
	subw	s6, s7, s9
	srli	s6, s6, 8
	sh	s6, 4(a3)
	subw	s4, s4, s5
	srli	s4, s4, 8
	sh	s4, 6(a3)
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	sh	s2, 2(a3)
	sh	s3, 0(a3)
	sh	s1, -2(a3)
	sh	s0, -4(a3)
	sh	t6, -6(a3)
	sh	t5, -8(a3)
	addi	a3, a3, 16
	beq	a3, a4, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lh	s0, 0(a3)
	lh	t6, 4(a3)
	lh	t5, -4(a3)
	slliw	s0, s0, 11
	lh	s3, -6(a3)
	lh	s2, 6(a3)
	or	s4, t6, t5
	lh	s1, 2(a3)
	or	s6, s0, s4
	or	s5, s3, s2
	lh	s4, -2(a3)
	or	s7, s5, s1
	lhu	s5, -8(a3)
	or	s6, s6, s7
	or	s6, s6, s4
	bnez	s6, .LBB0_1
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	slli	s2, s5, 3
	sh	s2, 6(a3)
	sh	s2, 4(a3)
	mv	s3, s2
	mv	s1, s2
	mv	s0, s2
	mv	t6, s2
	mv	t5, s2
	j	.LBB0_2
.LBB0_5:
	lui	a3, %hi(iclp)
	ld	a3, %lo(iclp)(a3)
	addi	a4, a0, 64
	addi	a0, a0, 80
	lui	a5, 2
	li	a6, 565
	addi	a7, a1, 611
	addi	t0, a2, 132
	li	t1, -799
	li	t2, 1108
	addi	t3, a1, 233
	li	t4, 1568
	li	t5, 181
	j	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	slli	s6, s6, 8
	add	s6, s6, a5
	add	s7, s1, s5
	mul	s7, s7, a6
	addi	s7, s7, 4
	mul	s5, s5, a2
	add	s5, s7, s5
	srai	s5, s5, 3
	mul	s1, s1, a7
	add	s1, s7, s1
	srai	s1, s1, 3
	add	s7, s4, s3
	mul	s7, s7, t0
	ori	s7, s7, 4
	mul	s3, s3, t1
	add	s3, s7, s3
	srai	s3, s3, 3
	mul	s4, s4, a1
	add	s4, s7, s4
	srai	s4, s4, 3
	add	s7, s6, s2
	subw	s2, s6, s2
	add	s6, t6, s0
	mul	s6, s6, t2
	addi	s6, s6, 4
	mul	s0, s0, t3
	add	s0, s6, s0
	srai	s8, s0, 3
	mul	t6, t6, t4
	add	t6, s6, t6
	srai	s6, t6, 3
	add	t6, s3, s5
	subw	s3, s5, s3
	subw	s5, s1, s4
	add	s0, s7, s6
	add	s9, s2, s8
	subw	s2, s2, s8
	add	s8, s3, s5
	subw	s3, s3, s5
	add	s5, s0, t6
	sraiw	s5, s5, 14
	slli	s5, s5, 1
	add	s5, a3, s5
	lh	s5, 0(s5)
	mul	s8, s8, t5
	addi	s8, s8, 128
	sraiw	s8, s8, 8
	sh	s5, -64(a4)
	add	s5, s9, s8
	sraiw	s5, s5, 14
	slli	s5, s5, 1
	add	s5, a3, s5
	lh	s5, 0(s5)
	mul	s3, s3, t5
	addi	s3, s3, 128
	sraiw	s3, s3, 8
	sh	s5, -48(a4)
	add	s5, s2, s3
	sraiw	s5, s5, 14
	slli	s5, s5, 1
	add	s5, a3, s5
	lh	s5, 0(s5)
	add	s1, s4, s1
	subw	s4, s7, s6
	sh	s5, -32(a4)
	add	s5, s4, s1
	sraiw	s5, s5, 14
	slli	s5, s5, 1
	add	s5, a3, s5
	lh	s5, 0(s5)
	sh	s5, -16(a4)
	subw	s1, s4, s1
	sraiw	s1, s1, 14
	slli	s1, s1, 1
	add	s1, a3, s1
	lh	s1, 0(s1)
	sh	s1, 0(a4)
	subw	s1, s2, s3
	sraiw	s1, s1, 14
	slli	s1, s1, 1
	add	s1, a3, s1
	lh	s1, 0(s1)
	sh	s1, 16(a4)
	subw	s1, s9, s8
	sraiw	s1, s1, 14
	slli	s1, s1, 1
	add	s1, a3, s1
	lh	s1, 0(s1)
	sh	s1, 32(a4)
	subw	s0, s0, t6
	sraiw	t6, s0, 14
	slli	t6, t6, 1
	add	t6, a3, t6
	lh	t6, 0(t6)
	sh	t6, 48(a4)
	addi	a4, a4, 2
	beq	a4, a0, .LBB0_9
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	lh	s1, 0(a4)
	lh	s0, 32(a4)
	lh	t6, -32(a4)
	slliw	s2, s1, 8
	lh	s5, -48(a4)
	lh	s1, 48(a4)
	or	s4, s0, t6
	lh	s3, 16(a4)
	or	s7, s2, s4
	or	s6, s5, s1
	lh	s4, -16(a4)
	or	s8, s6, s3
	lh	s6, -64(a4)
	or	s7, s7, s8
	or	s7, s7, s4
	bnez	s7, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addi	t6, s6, 32
	srai	t6, t6, 6
	slli	t6, t6, 1
	add	t6, a3, t6
	lh	t6, 0(t6)
	sh	t6, 48(a4)
	sh	t6, 32(a4)
	sh	t6, 16(a4)
	sh	t6, 0(a4)
	sh	t6, -16(a4)
	sh	t6, -32(a4)
	sh	t6, -48(a4)
	sh	t6, -64(a4)
	addi	a4, a4, 2
	bne	a4, a0, .LBB0_7
.LBB0_9:
	ld	s0, 72(sp)                      # 8-byte Folded Reload
	ld	s1, 64(sp)                      # 8-byte Folded Reload
	ld	s2, 56(sp)                      # 8-byte Folded Reload
	ld	s3, 48(sp)                      # 8-byte Folded Reload
	ld	s4, 40(sp)                      # 8-byte Folded Reload
	ld	s5, 32(sp)                      # 8-byte Folded Reload
	ld	s6, 24(sp)                      # 8-byte Folded Reload
	ld	s7, 16(sp)                      # 8-byte Folded Reload
	ld	s8, 8(sp)                       # 8-byte Folded Reload
	ld	s9, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	Fast_IDCT, .Lfunc_end0-Fast_IDCT
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Initialize_Fast_IDCT            # -- Begin function Initialize_Fast_IDCT
	.p2align	2
	.type	Initialize_Fast_IDCT,@function
Initialize_Fast_IDCT:                   # @Initialize_Fast_IDCT
# %bb.0:
	lui	a0, %hi(iclip)
	addi	a0, a0, %lo(iclip)
	addi	a1, a0, 1024
	lui	a2, %hi(iclp)
	sd	a1, %lo(iclp)(a2)
	li	a1, -512
	addi	a2, a0, 2047
	addi	a2, a2, 1
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	sh	a3, 0(a0)
	addi	a0, a0, 2
	addiw	a1, a1, 1
	beq	a0, a2, .LBB1_6
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	li	a4, 255
	mv	a3, a1
	bge	a1, a4, .LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	li	a4, -256
	blt	a4, a3, .LBB1_1
	j	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	li	a3, 255
	li	a4, -256
	blt	a4, a3, .LBB1_1
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	li	a3, -256
	j	.LBB1_1
.LBB1_6:
	ret
.Lfunc_end1:
	.size	Initialize_Fast_IDCT, .Lfunc_end1-Initialize_Fast_IDCT
                                        # -- End function
	.option	pop
	.type	iclip,@object                   # @iclip
	.local	iclip
	.comm	iclip,2048,2
	.type	iclp,@object                    # @iclp
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
iclp:
	.quad	0
	.size	iclp, 8

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
