	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"quant.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Quant                           # -- Begin function Quant
	.p2align	2
	.type	Quant,@function
Quant:                                  # @Quant
# %bb.0:
	beqz	a2, .LBB0_14
# %bb.1:
	addiw	a3, a3, -3
	li	a4, 2
	bgeu	a3, a4, .LBB0_17
# %bb.2:
	lw	a3, 0(a0)
	addiw	a5, a3, -2040
	li	a6, 8
	li	a4, 1
	blt	a3, a6, .LBB0_4
# %bb.3:
	li	a4, 254
.LBB0_4:
	li	a6, -2032
	bltu	a5, a6, .LBB0_6
# %bb.5:
	slli	a4, a3, 1
	srli	a4, a4, 61
	addw	a3, a3, a4
	srli	a4, a3, 3
.LBB0_6:
	sw	a4, 0(a1)
	slli	a2, a2, 1
	addi	a3, a1, 4
	addi	a0, a0, 4
	addi	a1, a1, 256
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	sw	a4, 0(a3)
	addi	a3, a3, 4
	addi	a0, a0, 4
	beq	a3, a1, .LBB0_16
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	lw	a5, 0(a0)
	sraiw	a4, a5, 31
	xor	a6, a5, a4
	subw	a4, a6, a4
	divw	a4, a4, a2
	bltz	a5, .LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	li	a5, -127
	bge	a5, a4, .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	li	a5, 127
	blt	a4, a5, .LBB0_7
	j	.LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	negw	a4, a4
	li	a5, -127
	blt	a5, a4, .LBB0_10
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	li	a4, -127
	li	a5, 127
	blt	a4, a5, .LBB0_7
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	li	a4, 127
	j	.LBB0_7
.LBB0_14:                               # %.preheader
	addi	a2, a1, 256
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a0)
	sw	a3, 0(a1)
	addi	a1, a1, 4
	addi	a0, a0, 4
	bne	a1, a2, .LBB0_15
.LBB0_16:
	ret
.LBB0_17:
	srliw	a3, a2, 31
	add	a3, a2, a3
	sraiw	a3, a3, 1
	neg	a3, a3
	slli	a2, a2, 1
	addi	a4, a1, 256
	j	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=1
	sw	a5, 0(a1)
	addi	a1, a1, 4
	addi	a0, a0, 4
	beq	a1, a4, .LBB0_16
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a0)
	sraiw	a5, a6, 31
	xor	a7, a6, a5
	subw	a5, a5, a3
	subw	a5, a7, a5
	divw	a5, a5, a2
	bltz	a6, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	li	a6, -127
	bge	a6, a5, .LBB0_23
.LBB0_21:                               #   in Loop: Header=BB0_19 Depth=1
	li	a6, 127
	blt	a5, a6, .LBB0_18
	j	.LBB0_24
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=1
	negw	a5, a5
	li	a6, -127
	blt	a6, a5, .LBB0_21
.LBB0_23:                               #   in Loop: Header=BB0_19 Depth=1
	li	a5, -127
	li	a6, 127
	blt	a5, a6, .LBB0_18
.LBB0_24:                               #   in Loop: Header=BB0_19 Depth=1
	li	a5, 127
	j	.LBB0_18
.Lfunc_end0:
	.size	Quant, .Lfunc_end0-Quant
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Dequant                         # -- Begin function Dequant
	.p2align	2
	.type	Dequant,@function
Dequant:                                # @Dequant
# %bb.0:
	beqz	a2, .LBB1_7
# %bb.1:
	lui	a4, 524288
	addiw	a4, a4, 1
	and	a5, a2, a4
	li	a4, 1
	bne	a5, a4, .LBB1_10
# %bb.2:                                # %.preheader1
	addi	a4, a1, 256
	mv	a5, a0
	mv	a6, a1
	j	.LBB1_4
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	sw	a7, 0(a6)
	addi	a6, a6, 4
	addi	a5, a5, 4
	beq	a6, a4, .LBB1_15
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	lw	a7, 0(a5)
	beqz	a7, .LBB1_3
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	sraiw	t0, a7, 31
	xor	a7, a7, t0
	sub	a7, a7, t0
	slli	a7, a7, 1
	addi	a7, a7, 1
	mul	a7, a7, a2
	sw	a7, 0(a6)
	lw	t0, 0(a5)
	bgez	t0, .LBB1_3
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	negw	a7, a7
	j	.LBB1_3
.LBB1_7:                                # %.preheader
	addi	a2, a1, 256
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a0)
	sw	a3, 0(a1)
	addi	a1, a1, 4
	addi	a0, a0, 4
	bne	a1, a2, .LBB1_8
.LBB1_9:
	ret
.LBB1_10:                               # %.preheader3
	addi	a5, a1, 256
	mv	a6, a0
	mv	a7, a1
	j	.LBB1_12
.LBB1_11:                               #   in Loop: Header=BB1_12 Depth=1
	sw	t0, 0(a7)
	addi	a7, a7, 4
	addi	a6, a6, 4
	beq	a7, a5, .LBB1_15
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	lw	t0, 0(a6)
	beqz	t0, .LBB1_11
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=1
	sraiw	t1, t0, 31
	xor	t0, t0, t1
	subw	t0, t0, t1
	slli	t0, t0, 1
	addi	t0, t0, 1
	mul	t1, t0, a2
	addi	t0, t1, -1
	sw	t0, 0(a7)
	lw	t2, 0(a6)
	bgez	t2, .LBB1_11
# %bb.14:                               #   in Loop: Header=BB1_12 Depth=1
	subw	t0, a4, t1
	j	.LBB1_11
.LBB1_15:
	addiw	a3, a3, -3
	li	a2, 1
	bltu	a2, a3, .LBB1_9
# %bb.16:
	lw	a0, 0(a0)
	slli	a0, a0, 3
	sw	a0, 0(a1)
	ret
.Lfunc_end1:
	.size	Dequant, .Lfunc_end1-Dequant
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
