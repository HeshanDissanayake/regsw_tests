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
	addi	sp, sp, -256
	lui	a5, 1048575
	addiw	a5, a5, 900
	lui	a6, 1048574
	addiw	a6, a6, 819
	lui	a7, 1048572
	addiw	a7, a7, 315
	lui	t0, 1048571
	addiw	t0, t0, -515
	lui	t1, 6
	addiw	t1, t1, 596
	lui	t2, 4
	addiw	t2, t2, 435
	lui	t3, 3
	addiw	t3, t3, 11
	lui	t5, 2
	addiw	t4, t5, 1441
	addiw	t5, t5, -1922
	lui	t6, 1
	addiw	t6, t6, -1650
	mv	n1, sp
	ld	a0, 424(a0)
	ld	a1, 88(a1)
	addi	a2, a2, 64
	addi	n2, sp, 32
	addi	n3, t6, 1987
	addi	n4, a7, 932
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lhu	n5, -48(a2)
	lhu	n6, -32(a2)
	or	n7, n5, n6
	slli	n7, n7, 48
	bnez	n7, .LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	n6, -16(a2)
	bnez	n6, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	n6, 0(a2)
	bnez	n6, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	n6, 16(a2)
	bnez	n6, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	n6, 32(a2)
	bnez	n6, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	n6, 48(a2)
	beqz	n6, .LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	li	n6, 0
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	lw	n7, 64(a1)
	lh	n8, 32(a2)
	lw	n9, 192(a1)
	slli	n6, n6, 48
	srai	n6, n6, 48
	mulw	n6, n7, n6
	mulw	n7, n9, n8
	add	n8, n7, n6
	mul	n8, n8, n3
	mul	n7, n7, n4
	add	n7, n8, n7
	lh	n9, -64(a2)
	lw	n10, 0(a1)
	lh	n11, 0(a2)
	lw	n12, 128(a1)
	mul	n6, n6, t5
	add	n6, n8, n6
	mulw	n8, n10, n9
	mulw	n9, n12, n11
	add	n10, n9, n8
	slli	n10, n10, 13
	sub	n8, n8, n9
	slli	n8, n8, 13
	add	n9, n10, n6
	sub	n6, n10, n6
	add	n10, n8, n7
	sub	n7, n8, n7
	lh	n8, 48(a2)
	lw	n11, 224(a1)
	lh	n12, 16(a2)
	lw	n13, 160(a1)
	lh	n14, -16(a2)
	lw	n15, 96(a1)
	mulw	n8, n11, n8
	mulw	n11, n13, n12
	lw	n12, 32(a1)
	mulw	n13, n15, n14
	slli	n5, n5, 48
	srai	n5, n5, 48
	mulw	n5, n12, n5
	add	n12, n5, n8
	add	n14, n13, n11
	add	n15, n13, n8
	add	n16, n5, n11
	add	n17, n16, n15
	mul	n17, n17, t4
	mul	n8, n8, t6
	mul	n11, n11, t2
	mul	n13, n13, t1
	mul	n5, n5, t3
	mul	n12, n12, a6
	mul	n14, n14, t0
	mul	n15, n15, a7
	mul	n16, n16, a5
	add	n15, n17, n15
	add	n16, n17, n16
	add	n8, n12, n8
	add	n8, n8, n15
	add	n11, n14, n11
	add	n11, n11, n16
	add	n13, n14, n13
	add	n13, n13, n15
	add	n5, n12, n5
	add	n5, n5, n16
	addi	n9, n9, 1024
	add	n12, n9, n5
	srli	n12, n12, 11
	sw	n12, 0(n1)
	sub	n5, n9, n5
	srli	n5, n5, 11
	sw	n5, 224(n1)
	addi	n5, n10, 1024
	add	n9, n5, n13
	srli	n9, n9, 11
	sw	n9, 32(n1)
	sub	n5, n5, n13
	srli	n5, n5, 11
	sw	n5, 192(n1)
	addi	n5, n7, 1024
	add	n7, n5, n11
	srli	n7, n7, 11
	sw	n7, 64(n1)
	sub	n5, n5, n11
	srli	n5, n5, 11
	sw	n5, 160(n1)
	addi	n5, n6, 1024
	add	n6, n5, n8
	srli	n6, n6, 11
	sw	n6, 96(n1)
	sub	n5, n5, n8
	srli	n5, n5, 11
	li	n6, 128
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	add	n6, n1, n6
	sw	n5, 0(n6)
	addi	n1, n1, 4
	addi	a1, a1, 4
	addi	a2, a2, 2
	bne	n1, n2, .LBB0_1
	j	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	lh	n5, -64(a2)
	lw	n6, 0(a1)
	mul	n5, n5, n6
	slli	n5, n5, 2
	sw	n5, 0(n1)
	sw	n5, 32(n1)
	sw	n5, 64(n1)
	sw	n5, 96(n1)
	sw	n5, 128(n1)
	sw	n5, 160(n1)
	sw	n5, 192(n1)
	li	n6, 224
	j	.LBB0_9
.LBB0_11:
	addi	a0, a0, 128
	slli	a1, a4, 32
	srli	a1, a1, 32
	addi	a2, sp, 16
	addi	a4, a3, 64
	addi	n1, t6, 1987
	addi	n2, a7, 932
	lui	n3, 32
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	ld	n4, 0(a3)
	lwu	n5, -12(a2)
	lwu	n6, -8(a2)
	add	n4, n4, a1
	bnez	n5, .LBB0_20
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	bnez	n6, .LBB0_20
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	lw	n6, -4(a2)
	bnez	n6, .LBB0_19
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	lw	n6, 0(a2)
	bnez	n6, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=1
	lw	n6, 4(a2)
	bnez	n6, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=1
	lw	n6, 8(a2)
	bnez	n6, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_12 Depth=1
	lw	n6, 12(a2)
	beqz	n6, .LBB0_22
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=1
	li	n6, 0
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=1
	lwu	n7, 8(a2)
	add	n8, n7, n6
	lw	n9, -16(a2)
	lw	n10, 0(a2)
	mul	n8, n8, n1
	mul	n6, n6, t5
	add	n6, n8, n6
	add	n11, n10, n9
	lwu	n12, 12(a2)
	lwu	n13, -4(a2)
	lwu	n14, 4(a2)
	slli	n11, n11, 13
	add	n15, n12, n5
	add	n16, n13, n12
	add	n17, n14, n5
	add	n18, n16, n17
	mul	n18, n18, t4
	mul	n5, n5, t3
	mul	n15, n15, a6
	mul	n17, n17, a5
	add	n17, n18, n17
	add	n5, n15, n5
	add	n5, n5, n17
	add	n19, n11, n3
	add	n19, n19, n6
	add	n20, n19, n5
	slli	n20, n20, 36
	srli	n20, n20, 54
	add	n20, a0, n20
	lbu	n20, 0(n20)
	mul	n7, n7, n2
	add	n7, n8, n7
	subw	n8, n9, n10
	sb	n20, 0(n4)
	slli	n8, n8, 13
	subw	n5, n19, n5
	add	n9, n13, n14
	mul	n10, n13, t1
	mul	n9, n9, t0
	mul	n13, n16, a7
	slli	n5, n5, 36
	srli	n5, n5, 54
	add	n5, a0, n5
	lbu	n5, 0(n5)
	add	n13, n18, n13
	add	n10, n9, n10
	add	n10, n10, n13
	sb	n5, 7(n4)
	add	n5, n8, n3
	add	n5, n5, n7
	add	n16, n5, n10
	slli	n16, n16, 36
	srli	n16, n16, 54
	add	n16, a0, n16
	lbu	n16, 0(n16)
	sb	n16, 1(n4)
	subw	n5, n5, n10
	slli	n5, n5, 36
	srli	n5, n5, 54
	add	n5, a0, n5
	lbu	n5, 0(n5)
	mul	n10, n14, t2
	add	n9, n9, n10
	add	n9, n9, n17
	sb	n5, 6(n4)
	add	n8, n8, n3
	subw	n5, n8, n7
	add	n7, n5, n9
	slli	n7, n7, 36
	srli	n7, n7, 54
	add	n7, a0, n7
	lbu	n7, 0(n7)
	sb	n7, 2(n4)
	subw	n5, n5, n9
	slli	n5, n5, 36
	srli	n5, n5, 54
	add	n5, a0, n5
	lbu	n5, 0(n5)
	mul	n7, n12, t6
	add	n7, n15, n7
	add	n7, n7, n13
	sb	n5, 5(n4)
	add	n11, n11, n3
	subw	n5, n11, n6
	add	n6, n5, n7
	slli	n6, n6, 36
	srli	n6, n6, 54
	add	n6, a0, n6
	lbu	n6, 0(n6)
	sb	n6, 3(n4)
	subw	n5, n5, n7
	slli	n5, n5, 36
	srli	n5, n5, 54
	add	n5, a0, n5
	lbu	n5, 0(n5)
	li	n6, 4
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=1
	add	n4, n4, n6
	sb	n5, 0(n4)
	addi	a3, a3, 8
	addi	a2, a2, 32
	bne	a3, a4, .LBB0_12
	j	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=1
	lw	n5, -16(a2)
	addi	n5, n5, 16
	slli	n5, n5, 49
	srli	n5, n5, 54
	add	n5, a0, n5
	lbu	n5, 0(n5)
	sb	n5, 0(n4)
	sb	n5, 1(n4)
	sb	n5, 2(n4)
	sb	n5, 3(n4)
	sb	n5, 4(n4)
	sb	n5, 5(n4)
	sb	n5, 6(n4)
	li	n6, 7
	j	.LBB0_21
.LBB0_23:
	addi	sp, sp, 256
	ret
.Lfunc_end0:
	.size	jpeg_idct_islow, .Lfunc_end0-jpeg_idct_islow
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
