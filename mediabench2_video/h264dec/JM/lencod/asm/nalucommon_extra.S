	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"nalucommon.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	AllocNALU                       # -- Begin function AllocNALU
	.p2align	2
	.type	AllocNALU,@function
AllocNALU:                              # @AllocNALU
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	li	a0, 1
	li	a1, 32
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB0_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
.LBB0_2:
	sw	s1, 8(s0)
	li	a1, 1
	mv	a0, s1
	call	calloc
	sd	a0, 24(s0)
	bnez	a0, .LBB0_4
# %bb.3:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB0_4:
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	AllocNALU, .Lfunc_end0-AllocNALU
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FreeNALU                        # -- Begin function FreeNALU
	.p2align	2
	.type	FreeNALU,@function
FreeNALU:                               # @FreeNALU
# %bb.0:
	beqz	a0, .LBB1_4
# %bb.1:
	ld	a1, 24(a0)
	beqz	a1, .LBB1_3
# %bb.2:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	mv	a0, a1
	call	free
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
.LBB1_3:
	tail	free
.LBB1_4:
	ret
.Lfunc_end1:
	.size	FreeNALU, .Lfunc_end1-FreeNALU
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AllocNALU: n"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"AllocNALU: n->buf"
	.size	.L.str.1, 18

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
