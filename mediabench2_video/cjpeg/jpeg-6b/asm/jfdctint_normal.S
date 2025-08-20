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
	lw	s0, 0(t6)
	lw	s1, 28(t6)
	lw	s2, 4(t6)
	lw	s3, 24(t6)
	addw	s4, s1, s0
	subw	s0, s0, s1
	addw	s1, s3, s2
	lw	s5, 8(t6)
	lw	s6, 20(t6)
	lw	s7, 12(t6)
	lw	s8, 16(t6)
	subw	s2, s2, s3
	addw	s3, s6, s5
	subw	s5, s5, s6
	addw	s6, s8, s7
	subw	s7, s7, s8
	add	s8, s6, s4
	sub	s4, s4, s6
	add	s6, s3, s1
	sub	s1, s1, s3
	add	s3, s8, s6
	slli	s3, s3, 2
	sw	s3, 0(t6)
	subw	s3, s8, s6
	slli	s3, s3, 2
	sw	s3, 16(t6)
	add	s3, s4, s1
	mul	s3, s3, t3
	mul	s4, s4, t1
	addi	s3, s3, 1024
	add	s4, s3, s4
	srli	s4, s4, 11
	sw	s4, 8(t6)
	mul	s1, s1, t5
	add	s1, s3, s1
	srli	s1, s1, 11
	sw	s1, 24(t6)
	add	s1, s7, s0
	add	s3, s5, s2
	add	s4, s7, s2
	add	s6, s5, s0
	add	s8, s4, s6
	mul	s8, s8, t0
	mul	s7, s7, t2
	mul	s5, s5, a6
	mul	s2, s2, a5
	mul	s0, s0, a7
	mul	s1, s1, a2
	mul	s3, s3, a4
	mul	s4, s4, a3
	mul	s6, s6, a1
	add	s4, s8, s4
	add	s6, s8, s6
	addi	s1, s1, 1024
	add	s7, s1, s7
	add	s7, s7, s4
	srli	s7, s7, 11
	sw	s7, 28(t6)
	addi	s3, s3, 1024
	add	s5, s3, s5
	add	s5, s5, s6
	srli	s5, s5, 11
	sw	s5, 20(t6)
	add	s2, s3, s2
	add	s2, s2, s4
	srli	s2, s2, 11
	sw	s2, 12(t6)
	add	s0, s1, s0
	add	s0, s0, s6
	srli	s0, s0, 11
	sw	s0, 4(t6)
	addi	t6, t6, 32
	bne	t6, t4, .LBB0_1
# %bb.2:                                # %.preheader
	addi	t4, a0, 32
	lui	t5, 4
	lui	t6, 564192
	srli	t6, t6, 17
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	s0, 0(a0)
	lw	s1, 224(a0)
	lw	s2, 32(a0)
	lw	s3, 192(a0)
	addw	s4, s1, s0
	subw	s0, s0, s1
	addw	s1, s3, s2
	lw	s5, 64(a0)
	lw	s6, 160(a0)
	lw	s7, 96(a0)
	lw	s8, 128(a0)
	subw	s2, s2, s3
	addw	s3, s6, s5
	subw	s5, s5, s6
	addw	s6, s8, s7
	subw	s7, s7, s8
	add	s8, s6, s4
	sub	s4, s4, s6
	add	s6, s3, s1
	sub	s1, s1, s3
	add	s3, s6, s8
	addi	s3, s3, 2
	srli	s3, s3, 2
	sw	s3, 0(a0)
	sub	s3, s8, s6
	addi	s3, s3, 2
	srli	s3, s3, 2
	sw	s3, 128(a0)
	add	s3, s4, s1
	mul	s3, s3, t3
	mul	s4, s4, t1
	add	s3, s3, t5
	add	s4, s3, s4
	srli	s4, s4, 15
	sw	s4, 64(a0)
	mul	s1, s1, t6
	add	s1, s3, s1
	srli	s1, s1, 15
	sw	s1, 192(a0)
	add	s1, s7, s0
	add	s3, s5, s2
	add	s4, s7, s2
	add	s6, s5, s0
	add	s8, s4, s6
	mul	s8, s8, t0
	mul	s7, s7, t2
	mul	s5, s5, a6
	mul	s2, s2, a5
	mul	s0, s0, a7
	mul	s1, s1, a2
	mul	s3, s3, a4
	mul	s4, s4, a3
	mul	s6, s6, a1
	add	s4, s8, s4
	add	s6, s8, s6
	add	s1, s1, t5
	add	s7, s1, s7
	add	s7, s7, s4
	srli	s7, s7, 15
	sw	s7, 224(a0)
	add	s3, s3, t5
	add	s5, s3, s5
	add	s5, s5, s6
	srli	s5, s5, 15
	sw	s5, 160(a0)
	add	s2, s3, s2
	add	s2, s2, s4
	srli	s2, s2, 15
	sw	s2, 96(a0)
	add	s0, s1, s0
	add	s0, s0, s6
	srli	s0, s0, 15
	sw	s0, 32(a0)
	addi	a0, a0, 4
	bne	a0, t4, .LBB0_3
# %bb.4:
	ld	s0, 72(sp)                      # 8-byte Folded Reload
	ld	s1, 64(sp)                      # 8-byte Folded Reload
	ld	s2, 56(sp)                      # 8-byte Folded Reload
	ld	s3, 48(sp)                      # 8-byte Folded Reload
	ld	s4, 40(sp)                      # 8-byte Folded Reload
	ld	s5, 32(sp)                      # 8-byte Folded Reload
	ld	s6, 24(sp)                      # 8-byte Folded Reload
	ld	s7, 16(sp)                      # 8-byte Folded Reload
	ld	s8, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	jpeg_fdct_islow, .Lfunc_end0-jpeg_fdct_islow
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
