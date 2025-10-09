	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"idct.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	idct                            # -- Begin function idct
	.p2align	2
	.type	idct,@function
idct:                                   # @idct
# %bb.0:
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
	slli	n6, n6, 48
	srai	n6, n6, 48
	slli	n6, n6, 11
	addi	n6, n6, 128
	add	n7, n3, n4
	mul	n7, n7, a5
	mul	n4, n4, a2
	add	n4, n7, n4
	mul	n3, n3, a6
	add	n3, n7, n3
	add	n7, n5, n2
	mul	n7, n7, a7
	mul	n2, n2, t0
	add	n2, n7, n2
	mul	n5, n5, a1
	add	n5, n7, n5
	add	n7, n6, n1
	subw	n1, n6, n1
	add	n6, t5, t6
	mul	n6, n6, t1
	mul	t6, t6, t2
	add	t6, n6, t6
	mul	t5, t5, t3
	add	t5, n6, t5
	add	n6, n2, n4
	subw	n2, n4, n2
	add	n4, n5, n3
	subw	n3, n3, n5
	add	n5, n7, t5
	subw	n7, n7, t5
	add	n8, n1, t6
	subw	n9, n1, t6
	add	t5, n2, n3
	mul	t5, t5, t4
	addi	t5, t5, 128
	sraiw	n10, t5, 8
	subw	t5, n2, n3
	mul	t5, t5, t4
	addi	t5, t5, 128
	sraiw	n3, t5, 8
	add	t5, n5, n6
	srliw	t5, t5, 8
	add	t6, n10, n8
	srliw	t6, t6, 8
	add	n1, n3, n9
	srliw	n1, n1, 8
	add	n2, n7, n4
	srliw	n2, n2, 8
	subw	n4, n7, n4
	srliw	n4, n4, 8
	subw	n3, n9, n3
	srliw	n3, n3, 8
	subw	n7, n8, n10
	srli	n7, n7, 8
	sh	n7, 4(a3)
	subw	n5, n5, n6
	srli	n5, n5, 8
	sh	n5, 6(a3)
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	sh	n3, 2(a3)
	sh	n4, 0(a3)
	sh	n2, -2(a3)
	sh	n1, -4(a3)
	sh	t6, -6(a3)
	sh	t5, -8(a3)
	addi	a3, a3, 16
	beq	a3, a4, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lh	n1, 0(a3)
	lh	t6, 4(a3)
	lh	t5, -4(a3)
	slliw	n1, n1, 11
	lh	n4, -6(a3)
	lh	n3, 6(a3)
	or	n5, t6, t5
	lh	n2, 2(a3)
	or	n7, n1, n5
	or	n6, n4, n3
	lh	n5, -2(a3)
	or	n8, n6, n2
	lhu	n6, -8(a3)
	or	n7, n7, n8
	or	n7, n7, n5
	bnez	n7, .LBB0_1
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	slli	n3, n6, 3
	sh	n3, 6(a3)
	sh	n3, 4(a3)
	mv	n4, n3
	mv	n2, n3
	mv	n1, n3
	mv	t6, n3
	mv	t5, n3
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
	slli	n7, n7, 8
	add	n7, n7, a5
	add	n8, n5, n6
	mul	n8, n8, a6
	addi	n8, n8, 4
	mul	n6, n6, a2
	add	n6, n8, n6
	srai	n6, n6, 3
	mul	n5, n5, a7
	add	n5, n8, n5
	srai	n5, n5, 3
	add	n8, n4, n3
	mul	n8, n8, t0
	ori	n8, n8, 4
	mul	n3, n3, t1
	add	n3, n8, n3
	srai	n3, n3, 3
	mul	n4, n4, a1
	add	n4, n8, n4
	srai	n4, n4, 3
	add	n8, n7, n2
	subw	n2, n7, n2
	add	n7, t6, n1
	mul	n7, n7, t2
	addi	n7, n7, 4
	mul	n1, n1, t3
	add	n1, n7, n1
	srai	n1, n1, 3
	mul	t6, t6, t4
	add	t6, n7, t6
	srai	t6, t6, 3
	add	n7, n3, n6
	subw	n3, n6, n3
	subw	n6, n5, n4
	add	n9, n8, t6
	add	n10, n2, n1
	subw	n1, n2, n1
	add	n2, n3, n6
	subw	n3, n3, n6
	add	n6, n9, n7
	sraiw	n6, n6, 14
	slli	n6, n6, 1
	add	n6, a3, n6
	lh	n6, 0(n6)
	mul	n2, n2, t5
	addi	n2, n2, 128
	sraiw	n2, n2, 8
	sh	n6, -64(a4)
	add	n6, n10, n2
	sraiw	n6, n6, 14
	slli	n6, n6, 1
	add	n6, a3, n6
	lh	n6, 0(n6)
	mul	n3, n3, t5
	addi	n3, n3, 128
	sraiw	n3, n3, 8
	sh	n6, -48(a4)
	add	n6, n1, n3
	sraiw	n6, n6, 14
	slli	n6, n6, 1
	add	n6, a3, n6
	lh	n6, 0(n6)
	add	n4, n4, n5
	subw	t6, n8, t6
	sh	n6, -32(a4)
	add	n5, t6, n4
	sraiw	n5, n5, 14
	slli	n5, n5, 1
	add	n5, a3, n5
	lh	n5, 0(n5)
	sh	n5, -16(a4)
	subw	t6, t6, n4
	sraiw	t6, t6, 14
	slli	t6, t6, 1
	add	t6, a3, t6
	lh	t6, 0(t6)
	sh	t6, 0(a4)
	subw	t6, n1, n3
	sraiw	t6, t6, 14
	slli	t6, t6, 1
	add	t6, a3, t6
	lh	t6, 0(t6)
	sh	t6, 16(a4)
	subw	t6, n10, n2
	sraiw	t6, t6, 14
	slli	t6, t6, 1
	add	t6, a3, t6
	lh	t6, 0(t6)
	sh	t6, 32(a4)
	subw	t6, n9, n7
	sraiw	t6, t6, 14
	slli	t6, t6, 1
	add	t6, a3, t6
	lh	t6, 0(t6)
	sh	t6, 48(a4)
	addi	a4, a4, 2
	beq	a4, a0, .LBB0_9
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	lh	n2, 0(a4)
	lh	n1, 32(a4)
	lh	t6, -32(a4)
	slliw	n2, n2, 8
	lh	n6, -48(a4)
	lh	n5, 48(a4)
	or	n4, n1, t6
	lh	n3, 16(a4)
	or	n8, n2, n4
	or	n7, n6, n5
	lh	n4, -16(a4)
	or	n9, n7, n3
	lh	n7, -64(a4)
	or	n8, n8, n9
	or	n8, n8, n4
	bnez	n8, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addi	t6, n7, 32
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
	ret
.Lfunc_end0:
	.size	idct, .Lfunc_end0-idct
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_idct                       # -- Begin function init_idct
	.p2align	2
	.type	init_idct,@function
init_idct:                              # @init_idct
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
	.size	init_idct, .Lfunc_end1-init_idct
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
