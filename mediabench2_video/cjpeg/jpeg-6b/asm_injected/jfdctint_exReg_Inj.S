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
	regsw_c	x9, 0x1ff(x18)		# 100100100100111111111
	lw	x1, 0(t6)
	lw	x2, 28(t6)
	lw	x3, 4(t6)
	lw	x4, 24(t6)
	addw	x5, x2, x1
	subw	x1, x1, x2
	addw	x2, x4, x3
	regsw_c	x9, 0x1ff(x18)		# 100100100100111111111
	lw	x6, 8(t6)
	lw	x7, 20(t6)
	lw	x8, 12(t6)
	lw	x9, 16(t6)
	subw	x3, x3, x4
	addw	x4, x7, x6
	subw	x6, x6, x7
	regsw_c	x31, 0x7ff(x31)		# 111111111111111111111
	addw	x7, x9, x8
	subw	x8, x8, x9
	add	x9, x7, x5
	sub	x5, x5, x7
	add	x7, x4, x2
	sub	x2, x2, x4
	add	x4, x9, x7
	regsw_c	x31, 0x47e(x24)		# 110001111110001111110
	slli	x4, x4, 2
	sw	x4, 0(t6)
	subw	x4, x9, x7
	slli	x4, x4, 2
	sw	x4, 16(t6)
	add	x4, x5, x2
	mul	x4, x4, t3
	regsw_c	x15, 0x477(x27)		# 110110111110001110111
	mul	x5, x5, t1
	addi	x4, x4, 1024
	add	x5, x4, x5
	srli	x5, x5, 11
	sw	x5, 8(t6)
	mul	x2, x2, t5
	add	x2, x4, x2
	regsw_c	x31, 0x7ff(x24)		# 110001111111111111111
	srli	x2, x2, 11
	sw	x2, 24(t6)
	add	x2, x8, x1
	add	x4, x6, x3
	add	x5, x8, x3
	add	x7, x6, x1
	add	x9, x5, x7
	regsw_c	x13, 0x5b6(x27)		# 110110110110110110110
	mul	x9, x9, t0
	mul	x8, x8, t2
	mul	x6, x6, a6
	mul	x3, x3, a5
	mul	x1, x1, a7
	mul	x2, x2, a2
	mul	x4, x4, a4
	regsw_c	x15, 0x7bf(x27)		# 110110111111110111111
	mul	x5, x5, a3
	mul	x7, x7, a1
	add	x5, x9, x5
	add	x7, x9, x7
	addi	x2, x2, 1024
	add	x8, x2, x8
	add	x8, x8, x5
	regsw_c	x29, 0x7f1(x24)		# 110001110111111110001
	srli	x8, x8, 11
	sw	x8, 28(t6)
	addi	x4, x4, 1024
	add	x6, x4, x6
	add	x6, x6, x7
	srli	x6, x6, 11
	sw	x6, 20(t6)
	regsw_c	x28, 0x3fe(x31)		# 111111110001111111110
	add	x3, x4, x3
	add	x3, x3, x5
	srli	x3, x3, 11
	sw	x3, 12(t6)
	add	x1, x2, x1
	add	x1, x1, x7
	srli	x1, x1, 11
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sw	x1, 4(t6)
	addi	t6, t6, 32
	bne	t6, t4, .LBB0_1
# %bb.2:                                # %.preheader
	addi	t4, a0, 32
	lui	t5, 4
	lui	t6, 564192
	srli	t6, t6, 17
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x9, 0x1ff(x18)		# 100100100100111111111
	lw	x1, 0(a0)
	lw	x2, 224(a0)
	lw	x3, 32(a0)
	lw	x4, 192(a0)
	addw	x5, x2, x1
	subw	x1, x1, x2
	addw	x2, x4, x3
	regsw_c	x9, 0x1ff(x18)		# 100100100100111111111
	lw	x6, 64(a0)
	lw	x7, 160(a0)
	lw	x8, 96(a0)
	lw	x9, 128(a0)
	subw	x3, x3, x4
	addw	x4, x7, x6
	subw	x6, x6, x7
	regsw_c	x31, 0x7ff(x31)		# 111111111111111111111
	addw	x7, x9, x8
	subw	x8, x8, x9
	add	x9, x7, x5
	sub	x5, x5, x7
	add	x7, x4, x2
	sub	x2, x2, x4
	add	x4, x7, x9
	regsw_c	x3, 0x7b1(x27)		# 110110001111110110001
	addi	x4, x4, 2
	srli	x4, x4, 2
	sw	x4, 0(a0)
	sub	x4, x9, x7
	addi	x4, x4, 2
	srli	x4, x4, 2
	sw	x4, 128(a0)
	regsw_c	x13, 0x5f1(x31)		# 111110110110111110001
	add	x4, x5, x2
	mul	x4, x4, t3
	mul	x5, x5, t1
	add	x4, x4, t5
	add	x5, x4, x5
	srli	x5, x5, 15
	sw	x5, 64(a0)
	regsw_c	x28, 0x3ff(x27)		# 110111110001111111111
	mul	x2, x2, t6
	add	x2, x4, x2
	srli	x2, x2, 15
	sw	x2, 192(a0)
	add	x2, x8, x1
	add	x4, x6, x3
	add	x5, x8, x3
	regsw_c	x29, 0x5b6(x31)		# 111111110110110110110
	add	x7, x6, x1
	add	x9, x5, x7
	mul	x9, x9, t0
	mul	x8, x8, t2
	mul	x6, x6, a6
	mul	x3, x3, a5
	mul	x1, x1, a7
	regsw_c	x13, 0x5fe(x27)		# 110110110110111111110
	mul	x2, x2, a2
	mul	x4, x4, a4
	mul	x5, x5, a3
	mul	x7, x7, a1
	add	x5, x9, x5
	add	x7, x9, x7
	add	x2, x2, t5
	regsw_c	x28, 0x3bf(x31)		# 111111110001110111111
	add	x8, x2, x8
	add	x8, x8, x5
	srli	x8, x8, 15
	sw	x8, 224(a0)
	add	x4, x4, t5
	add	x6, x4, x6
	add	x6, x6, x7
	regsw_c	x31, 0x78f(x24)		# 110001111111110001111
	srli	x6, x6, 15
	sw	x6, 160(a0)
	add	x3, x4, x3
	add	x3, x3, x5
	srli	x3, x3, 15
	sw	x3, 96(a0)
	add	x1, x2, x1
	regsw_c	x2, 0x0(x31)		# 111110001000000000000
	add	x1, x1, x7
	srli	x1, x1, 15
	sw	x1, 32(a0)
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
