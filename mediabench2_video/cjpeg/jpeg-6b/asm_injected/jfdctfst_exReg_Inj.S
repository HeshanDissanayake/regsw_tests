	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jfdctfst.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_fdct_ifast                 # -- Begin function jpeg_fdct_ifast
	.p2align	2
	.type	jpeg_fdct_ifast,@function
jpeg_fdct_ifast:                        # @jpeg_fdct_ifast
# %bb.0:
	addi	a1, a0, 256
	li	a2, 181
	li	a3, 98
	li	a4, 139
	li	a5, 334
	mv	a6, a0
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a7, 0(a6)
	lw	t0, 28(a6)
	lw	t1, 4(a6)
	lw	t2, 24(a6)
	add	t3, t0, a7
	subw	a7, a7, t0
	add	t0, t2, t1
	lw	t4, 8(a6)
	lw	t5, 20(a6)
	lw	t6, 12(a6)
	regsw_c	x0, 0x8c(x16)		# 100000000000010001100
	lw	x1, 16(a6)
	subw	t1, t1, t2
	add	t2, t5, t4
	subw	t4, t4, t5
	add	t5, x1, t6
	subw	t6, t6, x1
	add	x1, t5, t3
	subw	t3, t3, t5
	add	t5, t2, t0
	subw	t0, t0, t2
	regsw_c	x4, 0x0(x8)		# 010000010000000000000
	add	t2, x1, t5
	sw	t2, 0(a6)
	subw	t2, x1, t5
	sw	t2, 16(a6)
	addw	t0, t0, t3
	mul	t0, t0, a2
	srli	t0, t0, 8
	add	t2, t3, t0
	sw	t2, 8(a6)
	subw	t0, t3, t0
	sw	t0, 24(a6)
	addw	t6, t6, t4
	addw	t0, t4, t1
	addw	t1, t1, a7
	subw	t2, t6, t1
	mul	t2, t2, a3
	srli	t2, t2, 8
	mul	t3, t6, a4
	srli	t3, t3, 8
	add	t3, t2, t3
	mul	t1, t1, a5
	srli	t1, t1, 8
	add	t1, t2, t1
	mul	t0, t0, a2
	srli	t0, t0, 8
	add	t2, a7, t0
	subw	a7, a7, t0
	add	t0, t3, a7
	sw	t0, 20(a6)
	subw	a7, a7, t3
	sw	a7, 12(a6)
	add	a7, t1, t2
	sw	a7, 4(a6)
	subw	a7, t2, t1
	sw	a7, 28(a6)
	addi	a6, a6, 32
	bne	a6, a1, .LBB0_1
# %bb.2:                                # %.preheader
	addi	a1, a0, 32
	li	a2, 181
	li	a3, 98
	li	a4, 139
	li	a5, 334
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a0)
	lw	a7, 224(a0)
	lw	t0, 32(a0)
	lw	t1, 192(a0)
	add	t2, a7, a6
	subw	a6, a6, a7
	add	a7, t1, t0
	lw	t3, 64(a0)
	lw	t4, 160(a0)
	lw	t5, 96(a0)
	lw	t6, 128(a0)
	subw	t0, t0, t1
	add	t1, t4, t3
	subw	t3, t3, t4
	add	t4, t6, t5
	subw	t5, t5, t6
	add	t6, t4, t2
	subw	t2, t2, t4
	add	t4, t1, a7
	subw	a7, a7, t1
	add	t1, t6, t4
	sw	t1, 0(a0)
	subw	t6, t6, t4
	sw	t6, 128(a0)
	addw	a7, a7, t2
	mul	a7, a7, a2
	srli	a7, a7, 8
	add	t1, t2, a7
	sw	t1, 64(a0)
	subw	a7, t2, a7
	sw	a7, 192(a0)
	addw	t5, t5, t3
	addw	a7, t3, t0
	addw	t0, t0, a6
	subw	t1, t5, t0
	mul	t1, t1, a3
	srli	t1, t1, 8
	mul	t2, t5, a4
	srli	t2, t2, 8
	add	t2, t1, t2
	mul	t0, t0, a5
	srli	t0, t0, 8
	add	t0, t1, t0
	mul	a7, a7, a2
	srli	a7, a7, 8
	add	t1, a6, a7
	subw	a6, a6, a7
	add	a7, t2, a6
	sw	a7, 160(a0)
	subw	a6, a6, t2
	sw	a6, 96(a0)
	add	a6, t0, t1
	sw	a6, 32(a0)
	subw	a6, t1, t0
	sw	a6, 224(a0)
	addi	a0, a0, 4
	bne	a0, a1, .LBB0_3
# %bb.4:
	ret
.Lfunc_end0:
	.size	jpeg_fdct_ifast, .Lfunc_end0-jpeg_fdct_ifast
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
