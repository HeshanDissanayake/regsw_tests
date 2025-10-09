	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jcomapi.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_abort                      # -- Begin function jpeg_abort
	.p2align	2
	.type	jpeg_abort,@function
jpeg_abort:                             # @jpeg_abort
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	beqz	a0, .LBB0_3
# %bb.1:
	ld	a2, 72(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	lw	a0, 32(s0)
	beqz	a0, .LBB0_4
# %bb.2:
	li	a0, 200
	sw	a0, 36(s0)
	sd	zero, 400(s0)
.LBB0_3:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB0_4:
	li	a0, 100
	sw	a0, 36(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	jpeg_abort, .Lfunc_end0-jpeg_abort
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_destroy                    # -- Begin function jpeg_destroy
	.p2align	2
	.type	jpeg_destroy,@function
jpeg_destroy:                           # @jpeg_destroy
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	beqz	a0, .LBB1_2
# %bb.1:
	ld	a1, 80(a0)
	mv	a0, s0
	jalr	a1
.LBB1_2:
	sd	zero, 8(s0)
	sw	zero, 36(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	jpeg_destroy, .Lfunc_end1-jpeg_destroy
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_alloc_quant_table          # -- Begin function jpeg_alloc_quant_table
	.p2align	2
	.type	jpeg_alloc_quant_table,@function
jpeg_alloc_quant_table:                 # @jpeg_alloc_quant_table
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	ld	a1, 8(a0)
	ld	a3, 0(a1)
	li	a2, 132
	li	a1, 0
	jalr	a3
	sw	zero, 128(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	jpeg_alloc_quant_table, .Lfunc_end2-jpeg_alloc_quant_table
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_alloc_huff_table           # -- Begin function jpeg_alloc_huff_table
	.p2align	2
	.type	jpeg_alloc_huff_table,@function
jpeg_alloc_huff_table:                  # @jpeg_alloc_huff_table
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	ld	a1, 8(a0)
	ld	a3, 0(a1)
	li	a2, 280
	li	a1, 0
	jalr	a3
	sw	zero, 276(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	jpeg_alloc_huff_table, .Lfunc_end3-jpeg_alloc_huff_table
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
