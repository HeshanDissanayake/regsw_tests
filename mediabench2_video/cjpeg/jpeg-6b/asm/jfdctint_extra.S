	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jfdctint.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_fdct_islow                 # -- Begin function jpeg_fdct_islow
	.p2align	2
	.type	jpeg_fdct_islow,@function
jpeg_fdct_islow:                        # @jpeg_fdct_islow
# %bb.0:
	lui	a1, 1048575
	addiw	a1, a1, 900
	lui	a2, 1048574
	addiw	a2, a2, 819
	lui	a3, 1048572
	addiw	a3, a3, 315
	lui	a4, 1048571
	addiw	a4, a4, -515
	lui	a5, 6
	addiw	a5, a5, 596
	lui	a6, 4
	addiw	a6, a6, 435
	lui	a7, 3
	addiw	a7, a7, 11
	lui	t1, 2
	addiw	t0, t1, 1441
	addiw	t1, t1, -1922
	lui	t2, 1
	addiw	t2, t2, -1650
	addi	t4, a0, 256
	addi	t3, t2, 1987
	lui	t5, 1033439
	slli	t5, t5, 9
	srli	t5, t5, 21
	mv	t6, a0
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	n1, 0(t6)
	lw	n2, 28(t6)
	lw	n3, 4(t6)
	lw	n4, 24(t6)
	addw	n5, n2, n1
	subw	n1, n1, n2
	addw	n2, n4, n3
	lw	n6, 8(t6)
	lw	n7, 20(t6)
	lw	n8, 12(t6)
	lw	n9, 16(t6)
	subw	n3, n3, n4
	addw	n4, n7, n6
	subw	n6, n6, n7
	addw	n7, n9, n8
	subw	n8, n8, n9
	add	n9, n7, n5
	sub	n5, n5, n7
	add	n7, n4, n2
	sub	n2, n2, n4
	add	n4, n9, n7
	slli	n4, n4, 2
	sw	n4, 0(t6)
	subw	n4, n9, n7
	slli	n4, n4, 2
	sw	n4, 16(t6)
	add	n4, n5, n2
	mul	n4, n4, t3
	mul	n5, n5, t1
	addi	n4, n4, 1024
	add	n5, n4, n5
	srli	n5, n5, 11
	sw	n5, 8(t6)
	mul	n2, n2, t5
	add	n2, n4, n2
	srli	n2, n2, 11
	sw	n2, 24(t6)
	add	n2, n8, n1
	add	n4, n6, n3
	add	n5, n8, n3
	add	n7, n6, n1
	add	n9, n5, n7
	mul	n9, n9, t0
	mul	n8, n8, t2
	mul	n6, n6, a6
	mul	n3, n3, a5
	mul	n1, n1, a7
	mul	n2, n2, a2
	mul	n4, n4, a4
	mul	n5, n5, a3
	mul	n7, n7, a1
	add	n5, n9, n5
	add	n7, n9, n7
	addi	n2, n2, 1024
	add	n8, n2, n8
	add	n8, n8, n5
	srli	n8, n8, 11
	sw	n8, 28(t6)
	addi	n4, n4, 1024
	add	n6, n4, n6
	add	n6, n6, n7
	srli	n6, n6, 11
	sw	n6, 20(t6)
	add	n3, n4, n3
	add	n3, n3, n5
	srli	n3, n3, 11
	sw	n3, 12(t6)
	add	n1, n2, n1
	add	n1, n1, n7
	srli	n1, n1, 11
	sw	n1, 4(t6)
	addi	t6, t6, 32
	bne	t6, t4, .LBB0_1
# %bb.2:                                # %.preheader
	addi	t4, a0, 32
	lui	t5, 4
	lui	t6, 564192
	srli	t6, t6, 17
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	n1, 0(a0)
	lw	n2, 224(a0)
	lw	n3, 32(a0)
	lw	n4, 192(a0)
	addw	n5, n2, n1
	subw	n1, n1, n2
	addw	n2, n4, n3
	lw	n6, 64(a0)
	lw	n7, 160(a0)
	lw	n8, 96(a0)
	lw	n9, 128(a0)
	subw	n3, n3, n4
	addw	n4, n7, n6
	subw	n6, n6, n7
	addw	n7, n9, n8
	subw	n8, n8, n9
	add	n9, n7, n5
	sub	n5, n5, n7
	add	n7, n4, n2
	sub	n2, n2, n4
	add	n4, n7, n9
	addi	n4, n4, 2
	srli	n4, n4, 2
	sw	n4, 0(a0)
	sub	n4, n9, n7
	addi	n4, n4, 2
	srli	n4, n4, 2
	sw	n4, 128(a0)
	add	n4, n5, n2
	mul	n4, n4, t3
	mul	n5, n5, t1
	add	n4, n4, t5
	add	n5, n4, n5
	srli	n5, n5, 15
	sw	n5, 64(a0)
	mul	n2, n2, t6
	add	n2, n4, n2
	srli	n2, n2, 15
	sw	n2, 192(a0)
	add	n2, n8, n1
	add	n4, n6, n3
	add	n5, n8, n3
	add	n7, n6, n1
	add	n9, n5, n7
	mul	n9, n9, t0
	mul	n8, n8, t2
	mul	n6, n6, a6
	mul	n3, n3, a5
	mul	n1, n1, a7
	mul	n2, n2, a2
	mul	n4, n4, a4
	mul	n5, n5, a3
	mul	n7, n7, a1
	add	n5, n9, n5
	add	n7, n9, n7
	add	n2, n2, t5
	add	n8, n2, n8
	add	n8, n8, n5
	srli	n8, n8, 15
	sw	n8, 224(a0)
	add	n4, n4, t5
	add	n6, n4, n6
	add	n6, n6, n7
	srli	n6, n6, 15
	sw	n6, 160(a0)
	add	n3, n4, n3
	add	n3, n3, n5
	srli	n3, n3, 15
	sw	n3, 96(a0)
	add	n1, n2, n1
	add	n1, n1, n7
	srli	n1, n1, 15
	sw	n1, 32(a0)
	addi	a0, a0, 4
	bne	a0, t4, .LBB0_3
# %bb.4:
	ret
.Lfunc_end0:
	.size	jpeg_fdct_islow, .Lfunc_end0-jpeg_fdct_islow
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
