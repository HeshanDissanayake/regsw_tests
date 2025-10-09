	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"quantize.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	quant_intra                     # -- Begin function quant_intra
	.p2align	2
	.type	quant_intra,@function
quant_intra:                            # @quant_intra
# %bb.0:
	lh	a5, 0(a0)
	li	a6, 8
	srlw	a6, a6, a2
	li	a7, 4
	srlw	a2, a7, a2
	bltz	a5, .LBB0_2
# %bb.1:
	add	a2, a2, a5
	divuw	a2, a2, a6
	j	.LBB0_3
.LBB0_2:
	subw	a2, a2, a5
	divuw	a2, a2, a6
	negw	a2, a2
.LBB0_3:
	sh	a2, 0(a1)
	lui	a2, %hi(mpeg1)
	lw	a5, %lo(mpeg1)(a2)
	slli	a2, a4, 1
	add	a4, a2, a4
	addi	a4, a4, 2
	sraiw	a4, a4, 2
	beqz	a5, .LBB0_10
# %bb.4:                                # %.preheader1
	addi	a5, a1, 2
	addi	a3, a3, 1
	addi	a0, a0, 2
	addi	a1, a1, 128
	j	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	sh	a7, 0(a5)
	addi	a5, a5, 2
	addi	a3, a3, 1
	addi	a0, a0, 2
	beq	a5, a1, .LBB0_18
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	lh	a6, 0(a0)
	lbu	a7, 0(a3)
	srai	t0, a6, 63
	xor	t1, a6, t0
	subw	t0, t1, t0
	slli	t0, t0, 5
	srli	t1, a7, 1
	add	t0, t0, t1
	divuw	a7, t0, a7
	add	a7, a7, a4
	divw	a7, a7, a2
	li	t0, 255
	blt	a7, t0, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	li	a7, 255
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	bgez	a6, .LBB0_5
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	neg	a7, a7
	j	.LBB0_5
.LBB0_10:                               # %.preheader
	addi	a5, a1, 2
	addi	a3, a3, 1
	addi	a0, a0, 2
	addi	a1, a1, 128
	li	a6, 255
	j	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	sh	t0, 0(a5)
	addi	a5, a5, 2
	addi	a3, a3, 1
	addi	a0, a0, 2
	beq	a5, a1, .LBB0_18
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	lh	a7, 0(a0)
	lbu	t0, 0(a3)
	srai	t1, a7, 63
	xor	t2, a7, t1
	subw	t1, t2, t1
	slli	t1, t1, 5
	srli	t2, t0, 1
	add	t1, t1, t2
	divuw	t0, t1, t0
	add	t0, t0, a4
	divw	t1, t0, a2
	li	t2, 2047
	mv	t0, t1
	bgeu	t1, t2, .LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	bge	a6, t1, .LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_12 Depth=1
	bgez	a7, .LBB0_11
	j	.LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=1
	li	t0, 2047
	blt	a6, t1, .LBB0_14
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=1
	mv	t0, t1
	bgez	a7, .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=1
	neg	t0, t0
	j	.LBB0_11
.LBB0_18:
	li	a0, 1
	ret
.Lfunc_end0:
	.size	quant_intra, .Lfunc_end0-quant_intra
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	quant_non_intra                 # -- Begin function quant_non_intra
	.p2align	2
	.type	quant_non_intra,@function
quant_non_intra:                        # @quant_non_intra
# %bb.0:
	lui	a4, %hi(mpeg1)
	lw	a6, %lo(mpeg1)(a4)
	lui	a4, 16
	addiw	a4, a4, -1
	slli	a5, a3, 1
	li	a3, 0
	beqz	a6, .LBB1_9
# %bb.1:                                # %.preheader1
	addi	a6, a1, 128
	j	.LBB1_3
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	addi	a1, a1, 2
	addi	a2, a2, 1
	addi	a0, a0, 2
	beq	a1, a6, .LBB1_19
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	lh	t0, 0(a0)
	lbu	a7, 0(a2)
	srai	t1, t0, 63
	xor	t2, t0, t1
	subw	t1, t2, t1
	slli	t1, t1, 5
	srli	t2, a7, 1
	add	t1, t1, t2
	divuw	a7, t1, a7
	divw	a7, a7, a5
	li	t1, 255
	bge	a7, t1, .LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	bltz	t0, .LBB1_7
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
	and	t0, a7, a4
	sh	a7, 0(a1)
	beqz	t0, .LBB1_2
	j	.LBB1_8
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	li	a7, 255
	bgez	t0, .LBB1_5
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=1
	negw	a7, a7
	and	t0, a7, a4
	sh	a7, 0(a1)
	beqz	t0, .LBB1_2
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=1
	li	a3, 1
	j	.LBB1_2
.LBB1_9:                                # %.preheader
	addi	a6, a1, 128
	li	a7, 255
	j	.LBB1_11
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=1
	addi	a1, a1, 2
	addi	a2, a2, 1
	addi	a0, a0, 2
	beq	a1, a6, .LBB1_19
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	lh	t0, 0(a0)
	lbu	t1, 0(a2)
	srai	t2, t0, 63
	xor	t3, t0, t2
	subw	t2, t3, t2
	slli	t2, t2, 5
	srli	t3, t1, 1
	add	t2, t2, t3
	divuw	t1, t2, t1
	divw	t2, t1, a5
	li	t3, 2047
	mv	t1, t2
	bgeu	t2, t3, .LBB1_15
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	bge	a7, t2, .LBB1_16
.LBB1_13:                               #   in Loop: Header=BB1_11 Depth=1
	bltz	t0, .LBB1_17
.LBB1_14:                               #   in Loop: Header=BB1_11 Depth=1
	and	t0, t1, a4
	sh	t1, 0(a1)
	beqz	t0, .LBB1_10
	j	.LBB1_18
.LBB1_15:                               #   in Loop: Header=BB1_11 Depth=1
	li	t1, 2047
	blt	a7, t2, .LBB1_13
.LBB1_16:                               #   in Loop: Header=BB1_11 Depth=1
	mv	t1, t2
	bgez	t0, .LBB1_14
.LBB1_17:                               #   in Loop: Header=BB1_11 Depth=1
	negw	t1, t1
	and	t0, t1, a4
	sh	t1, 0(a1)
	beqz	t0, .LBB1_10
.LBB1_18:                               #   in Loop: Header=BB1_11 Depth=1
	li	a3, 1
	j	.LBB1_10
.LBB1_19:
	mv	a0, a3
	ret
.Lfunc_end1:
	.size	quant_non_intra, .Lfunc_end1-quant_non_intra
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	iquant_intra                    # -- Begin function iquant_intra
	.p2align	2
	.type	iquant_intra,@function
iquant_intra:                           # @iquant_intra
# %bb.0:
	lui	a5, %hi(mpeg1)
	lhu	a6, 0(a0)
	lw	a5, %lo(mpeg1)(a5)
	li	a7, 3
	subw	a2, a7, a2
	sllw	a2, a6, a2
	sh	a2, 0(a1)
	beqz	a5, .LBB2_7
# %bb.1:                                # %.preheader
	addi	a2, a1, 2
	addi	a3, a3, 1
	addi	a0, a0, 2
	addi	a1, a1, 128
	j	.LBB2_3
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	sh	a5, 0(a2)
	addi	a2, a2, 2
	addi	a3, a3, 1
	addi	a0, a0, 2
	beq	a2, a1, .LBB2_15
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	lh	a5, 0(a0)
	lbu	a6, 0(a3)
	mul	a5, a5, a4
	mulw	a5, a5, a6
	sraiw	a6, a5, 31
	srliw	a6, a6, 28
	add	a6, a5, a6
	sraiw	a6, a6, 4
	andi	a7, a6, 1
	seqz	a7, a7
	addiw	t0, a5, -16
	sltiu	t0, t0, -31
	and	a7, t0, a7
	slti	a5, a5, 16
	addi	a5, a5, -1
	ori	a5, a5, 1
	neg	a7, a7
	and	a5, a7, a5
	add	a5, a5, a6
	li	a6, -2048
	blt	a6, a5, .LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	li	a5, -2048
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	li	a6, 2047
	blt	a5, a6, .LBB2_2
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	li	a5, 2047
	j	.LBB2_2
.LBB2_7:
	slli	a2, a2, 48
	srai	a2, a2, 48
	addi	a5, a1, 2
	addi	a3, a3, 1
	addi	a0, a0, 2
	addi	a6, a1, 128
	j	.LBB2_9
.LBB2_8:                                #   in Loop: Header=BB2_9 Depth=1
	sh	a7, 0(a5)
	add	a2, a7, a2
	addi	a5, a5, 2
	addi	a3, a3, 1
	addi	a0, a0, 2
	beq	a5, a6, .LBB2_13
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	lh	a7, 0(a0)
	lbu	t0, 0(a3)
	mul	a7, a7, a4
	mul	a7, a7, t0
	sraiw	t0, a7, 31
	srliw	t0, t0, 28
	add	a7, a7, t0
	sraiw	a7, a7, 4
	li	t0, -2048
	blt	t0, a7, .LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	li	a7, -2048
.LBB2_11:                               #   in Loop: Header=BB2_9 Depth=1
	li	t0, 2047
	blt	a7, t0, .LBB2_8
# %bb.12:                               #   in Loop: Header=BB2_9 Depth=1
	li	a7, 2047
	j	.LBB2_8
.LBB2_13:
	andi	a2, a2, 1
	bnez	a2, .LBB2_15
# %bb.14:
	lh	a0, 126(a1)
	xori	a0, a0, 1
	sh	a0, 126(a1)
.LBB2_15:
	ret
.Lfunc_end2:
	.size	iquant_intra, .Lfunc_end2-iquant_intra
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	iquant_non_intra                # -- Begin function iquant_non_intra
	.p2align	2
	.type	iquant_non_intra,@function
iquant_non_intra:                       # @iquant_non_intra
# %bb.0:
	lui	a4, %hi(mpeg1)
	lw	a4, %lo(mpeg1)(a4)
	beqz	a4, .LBB3_11
# %bb.1:                                # %.preheader1
	addi	a4, a1, 128
	li	a5, -64
	j	.LBB3_3
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	sh	a6, 0(a1)
	addi	a1, a1, 2
	addi	a2, a2, 1
	addi	a0, a0, 2
	beq	a1, a4, .LBB3_21
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	lh	a6, 0(a0)
	beqz	a6, .LBB3_7
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	slli	a7, a6, 1
	slti	a6, a6, 1
	lbu	t0, 0(a2)
	negw	a6, a6
	ori	a6, a6, 1
	add	a6, a7, a6
	mul	a7, a3, t0
	mulw	a7, a6, a7
	sraiw	a6, a7, 31
	srliw	a6, a6, 27
	add	a6, a7, a6
	addiw	t0, a7, -32
	sraiw	a6, a6, 5
	bltu	a5, t0, .LBB3_7
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	andi	t0, a6, 1
	bnez	t0, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_3 Depth=1
	slti	a7, a7, 32
	addi	a7, a7, -1
	ori	a7, a7, 1
	add	a6, a7, a6
.LBB3_7:                                #   in Loop: Header=BB3_3 Depth=1
	li	a7, -2048
	blt	a7, a6, .LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_3 Depth=1
	li	a6, -2048
.LBB3_9:                                #   in Loop: Header=BB3_3 Depth=1
	li	a7, 2047
	blt	a6, a7, .LBB3_2
# %bb.10:                               #   in Loop: Header=BB3_3 Depth=1
	li	a6, 2047
	j	.LBB3_2
.LBB3_11:                               # %.preheader
	addi	a5, a1, 128
	mv	a6, a1
	j	.LBB3_13
.LBB3_12:                               #   in Loop: Header=BB3_13 Depth=1
	sh	a7, 0(a6)
	add	a4, a7, a4
	addi	a6, a6, 2
	addi	a2, a2, 1
	addi	a0, a0, 2
	beq	a6, a5, .LBB3_19
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	lh	a7, 0(a0)
	beqz	a7, .LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	slli	t0, a7, 1
	slti	a7, a7, 1
	lbu	t1, 0(a2)
	negw	a7, a7
	ori	a7, a7, 1
	add	a7, t0, a7
	mul	t0, a3, t1
	mul	a7, a7, t0
	sraiw	t0, a7, 31
	srliw	t0, t0, 27
	add	a7, a7, t0
	sraiw	a7, a7, 5
.LBB3_15:                               #   in Loop: Header=BB3_13 Depth=1
	li	t0, -2048
	blt	t0, a7, .LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_13 Depth=1
	li	a7, -2048
.LBB3_17:                               #   in Loop: Header=BB3_13 Depth=1
	li	t0, 2047
	blt	a7, t0, .LBB3_12
# %bb.18:                               #   in Loop: Header=BB3_13 Depth=1
	li	a7, 2047
	j	.LBB3_12
.LBB3_19:
	andi	a4, a4, 1
	bnez	a4, .LBB3_21
# %bb.20:
	lh	a0, 126(a1)
	xori	a0, a0, 1
	sh	a0, 126(a1)
.LBB3_21:
	ret
.Lfunc_end3:
	.size	iquant_non_intra, .Lfunc_end3-iquant_non_intra
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
