	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"refbuf.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	PutPel_14                       # -- Begin function PutPel_14
	.p2align	2
	.type	PutPel_14,@function
PutPel_14:                              # @PutPel_14
# %bb.0:
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a0, a0, a2
	sh	a3, 0(a0)
	ret
.Lfunc_end0:
	.size	PutPel_14, .Lfunc_end0-PutPel_14
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	PutPel_11                       # -- Begin function PutPel_11
	.p2align	2
	.type	PutPel_11,@function
PutPel_11:                              # @PutPel_11
# %bb.0:
	slli	a1, a1, 1
	add	a0, a0, a1
	sh	a2, 0(a0)
	ret
.Lfunc_end1:
	.size	PutPel_11, .Lfunc_end1-PutPel_11
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FastLine16Y_11                  # -- Begin function FastLine16Y_11
	.p2align	2
	.type	FastLine16Y_11,@function
FastLine16Y_11:                         # @FastLine16Y_11
# %bb.0:
	mul	a1, a4, a1
	addw	a1, a1, a2
	slli	a1, a1, 1
	add	a0, a0, a1
	ret
.Lfunc_end2:
	.size	FastLine16Y_11, .Lfunc_end2-FastLine16Y_11
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UMVLine16Y_11                   # -- Begin function UMVLine16Y_11
	.p2align	2
	.type	UMVLine16Y_11,@function
UMVLine16Y_11:                          # @UMVLine16Y_11
# %bb.0:
	addiw	a3, a3, -1
	blt	a3, a1, .LBB3_2
# %bb.1:
	mv	a3, a1
.LBB3_2:
	sgtz	a1, a3
	negw	a1, a1
	and	a1, a1, a3
	mulw	a5, a1, a4
	slli	a5, a5, 1
	add	a1, a0, a5
	bltz	a2, .LBB3_14
# %bb.3:
	addiw	a3, a4, -16
	bge	a3, a2, .LBB3_25
# %bb.4:
	slli	a3, a2, 32
	bge	a2, a4, .LBB3_7
# %bb.5:
	srli	a6, a3, 31
	add	a0, a0, a6
	add	a0, a0, a5
	slli	a5, a4, 32
	srli	a5, a5, 31
	sub	a6, a5, a6
	lui	a5, %hi(line)
	addi	a5, a5, %lo(line)
	add	a6, a5, a6
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	lh	a7, 0(a0)
	sh	a7, 0(a5)
	addi	a5, a5, 2
	addi	a0, a0, 2
	bne	a5, a6, .LBB3_6
.LBB3_7:
	addiw	a2, a2, 16
	bge	a4, a2, .LBB3_24
# %bb.8:
	srli	a5, a3, 32
	slli	a0, a4, 1
	blt	a5, a4, .LBB3_10
# %bb.9:
	mv	a4, a5
.LBB3_10:
	add	a1, a1, a0
	slli	a5, a4, 1
	srli	a3, a3, 31
	sub	a5, a5, a3
	addi	a4, a4, 1
	lui	a0, %hi(line)
	addi	a0, a0, %lo(line)
	bltu	a2, a4, .LBB3_12
# %bb.11:
	mv	a4, a2
.LBB3_12:
	lhu	a1, -2(a1)
	add	a5, a0, a5
	slli	a2, a4, 1
	sub	a3, a0, a3
	add	a2, a3, a2
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	sh	a1, 0(a5)
	addi	a5, a5, 2
	bne	a5, a2, .LBB3_13
	j	.LBB3_23
.LBB3_14:
	addiw	a3, a2, 16
	srai	a4, a3, 63
	and	a4, a4, a3
	addi	a0, a2, 1
	blt	a0, a4, .LBB3_16
# %bb.15:
	mv	a4, a0
.LBB3_16:
	lhu	a0, 0(a1)
	slli	a6, a4, 1
	slli	a4, a2, 1
	lui	a5, %hi(line)
	addi	a5, a5, %lo(line)
	sub	a7, a5, a4
	add	a6, a7, a6
.LBB3_17:                               # =>This Inner Loop Header: Depth=1
	sh	a0, 0(a5)
	addi	a5, a5, 2
	bne	a5, a6, .LBB3_17
# %bb.18:
	li	a0, -15
	blt	a2, a0, .LBB3_24
# %bb.19:
	bgtz	a3, .LBB3_21
# %bb.20:
	li	a3, 1
.LBB3_21:
	lui	a0, %hi(line)
	addi	a0, a0, %lo(line)
	sub	a2, a0, a4
	slli	a3, a3, 1
	sub	a3, a3, a4
	add	a3, a0, a3
.LBB3_22:                               # =>This Inner Loop Header: Depth=1
	lh	a4, 0(a1)
	sh	a4, 0(a2)
	addi	a2, a2, 2
	addi	a1, a1, 2
	bne	a2, a3, .LBB3_22
.LBB3_23:
	ret
.LBB3_24:
	lui	a0, %hi(line)
	addi	a0, a0, %lo(line)
	ret
.LBB3_25:
	slli	a0, a2, 1
	add	a0, a1, a0
	ret
.Lfunc_end3:
	.size	UMVLine16Y_11, .Lfunc_end3-UMVLine16Y_11
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FastLineX                       # -- Begin function FastLineX
	.p2align	2
	.type	FastLineX,@function
FastLineX:                              # @FastLineX
# %bb.0:
	mulw	a0, a5, a2
	slli	a0, a0, 1
	slli	a3, a3, 1
	add	a1, a1, a3
	add	a0, a1, a0
	ret
.Lfunc_end4:
	.size	FastLineX, .Lfunc_end4-FastLineX
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UMVLineX                        # -- Begin function UMVLineX
	.p2align	2
	.type	UMVLineX,@function
UMVLineX:                               # @UMVLineX
# %bb.0:
	addiw	a4, a4, -1
	blt	a4, a2, .LBB5_2
# %bb.1:
	mv	a4, a2
.LBB5_2:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	sgtz	a2, a4
	negw	a2, a2
	and	a2, a2, a4
	mulw	a2, a2, a5
	slli	a2, a2, 1
	add	s0, a1, a2
	bltz	a3, .LBB5_11
# %bb.3:
	subw	a2, a5, a0
	slli	s2, a3, 1
	add	a1, s0, s2
	bge	a2, a3, .LBB5_19
# %bb.4:
	mv	s3, a0
	subw	a0, a5, a3
	sgtz	a2, a0
	neg	a2, a2
	and	a0, a2, a0
	slli	a2, a0, 1
	lui	s1, %hi(line)
	addi	s1, s1, %lo(line)
	mv	a0, s1
	mv	s4, a3
	mv	s5, a5
	call	memcpy
	mv	a0, s5
	mv	a2, s4
	mv	a1, s5
	blt	s4, s5, .LBB5_6
# %bb.5:
	mv	a1, a2
.LBB5_6:
	addw	a3, a2, s3
	bge	a1, a3, .LBB5_20
# %bb.7:
	slli	a4, a0, 1
	add	s0, s0, a4
	blt	a2, a0, .LBB5_9
# %bb.8:
	mv	a0, a2
.LBB5_9:
	lhu	a2, -2(s0)
	subw	a1, a3, a1
	slli	a0, a0, 1
	sub	a0, a0, s2
	lui	s1, %hi(line)
	addi	s1, s1, %lo(line)
	add	a0, s1, a0
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	sh	a2, 0(a0)
	addiw	a1, a1, -1
	addi	a0, a0, 2
	bnez	a1, .LBB5_10
	j	.LBB5_20
.LBB5_11:
	addw	a1, a3, a0
	blez	a0, .LBB5_16
# %bb.12:
	srai	a2, a1, 63
	and	a2, a2, a1
	addi	a0, a3, 1
	blt	a0, a2, .LBB5_14
# %bb.13:
	mv	a2, a0
.LBB5_14:
	lhu	a0, 0(s0)
	slli	a4, a2, 1
	slli	a5, a3, 1
	lui	a2, %hi(line)
	addi	a2, a2, %lo(line)
	sub	a5, a2, a5
	add	a4, a5, a4
.LBB5_15:                               # =>This Inner Loop Header: Depth=1
	sh	a0, 0(a2)
	addi	a2, a2, 2
	bne	a2, a4, .LBB5_15
.LBB5_16:
	negw	a0, a3
	li	a2, 15
	blt	a0, a2, .LBB5_18
# %bb.17:
	li	a0, 15
.LBB5_18:
	slli	a0, a0, 1
	lui	s1, %hi(line)
	addi	s1, s1, %lo(line)
	add	a0, s1, a0
	sgtz	a2, a1
	neg	a2, a2
	and	a1, a2, a1
	slli	a2, a1, 1
	mv	a1, s0
	call	memcpy
	j	.LBB5_20
.LBB5_19:
	mv	s1, a1
.LBB5_20:
	mv	a0, s1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end5:
	.size	UMVLineX, .Lfunc_end5-UMVLineX
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UMVPelY_14                      # -- Begin function UMVPelY_14
	.p2align	2
	.type	UMVPelY_14,@function
UMVPelY_14:                             # @UMVPelY_14
# %bb.0:
	bltz	a1, .LBB6_6
# %bb.1:
	bge	a3, a1, .LBB6_3
# %bb.2:
	andi	a1, a1, 3
	addw	a1, a1, a3
.LBB6_3:
	bltz	a2, .LBB6_7
.LBB6_4:
	bge	a4, a2, .LBB6_8
# %bb.5:
	andi	a2, a2, 3
	addw	a2, a2, a4
	j	.LBB6_8
.LBB6_6:
	andi	a1, a1, 3
	bgez	a2, .LBB6_4
.LBB6_7:
	andi	a2, a2, 3
.LBB6_8:
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a0, a0, a2
	lhu	a0, 0(a0)
	ret
.Lfunc_end6:
	.size	UMVPelY_14, .Lfunc_end6-UMVPelY_14
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FastPelY_14                     # -- Begin function FastPelY_14
	.p2align	2
	.type	FastPelY_14,@function
FastPelY_14:                            # @FastPelY_14
# %bb.0:
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a0, a0, a2
	lhu	a0, 0(a0)
	ret
.Lfunc_end7:
	.size	FastPelY_14, .Lfunc_end7-FastPelY_14
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FastLine4X                      # -- Begin function FastLine4X
	.p2align	2
	.type	FastLine4X,@function
FastLine4X:                             # @FastLine4X
# %bb.0:
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a0, a0, a2
	ret
.Lfunc_end8:
	.size	FastLine4X, .Lfunc_end8-FastLine4X
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UMVLine4X                       # -- Begin function UMVLine4X
	.p2align	2
	.type	UMVLine4X,@function
UMVLine4X:                              # @UMVLine4X
# %bb.0:
	bltz	a1, .LBB9_3
# %bb.1:
	bge	a3, a1, .LBB9_4
# %bb.2:
	andi	a1, a1, 3
	addw	a1, a1, a3
	j	.LBB9_4
.LBB9_3:
	andi	a1, a1, 3
.LBB9_4:
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	andi	a1, a2, 3
	addw	a3, a1, a4
	li	a5, -4
	lui	a6, %hi(line4)
	addi	a6, a6, %lo(line4)
	li	a7, 60
	mv	t0, a2
	j	.LBB9_6
.LBB9_5:                                #   in Loop: Header=BB9_6 Depth=1
	slli	t3, t3, 1
	add	t3, a0, t3
	lh	t1, 0(t3)
	sh	t1, 0(a6)
	addi	a6, a6, 8
	addiw	t0, t0, 4
	bgeu	a5, a7, .LBB9_10
.LBB9_6:                                # =>This Inner Loop Header: Depth=1
	addi	a5, a5, 4
	add	t1, a5, a2
	mv	t2, a3
	blt	a4, t1, .LBB9_8
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=1
	mv	t2, t0
.LBB9_8:                                #   in Loop: Header=BB9_6 Depth=1
	mv	t3, a1
	bltz	t1, .LBB9_5
# %bb.9:                                #   in Loop: Header=BB9_6 Depth=1
	mv	t3, t2
	j	.LBB9_5
.LBB9_10:
	lui	a0, %hi(line4)
	addi	a0, a0, %lo(line4)
	ret
.Lfunc_end9:
	.size	UMVLine4X, .Lfunc_end9-UMVLine4X
                                        # -- End function
	.option	pop
	.type	line,@object                    # @line
	.local	line
	.comm	line,32,2
	.type	line4,@object                   # @line4
	.local	line4
	.comm	line4,128,2
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
