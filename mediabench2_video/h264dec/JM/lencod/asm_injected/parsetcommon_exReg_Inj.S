	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"parsetcommon.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	AllocPPS                        # -- Begin function AllocPPS
	.p2align	2
	.type	AllocPPS,@function
AllocPPS:                               # @AllocPPS
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	li	a0, 240
	li	a1, 1
	call	calloc
	beqz	a0, .LBB0_2
# %bb.1:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB0_2:
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	s0, a0
	mv	a0, a1
	call	no_mem_exit
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	AllocPPS, .Lfunc_end0-AllocPPS
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	AllocSPS                        # -- Begin function AllocSPS
	.p2align	2
	.type	AllocSPS,@function
AllocSPS:                               # @AllocSPS
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, 1
	addiw	a0, a0, -1964
	li	a1, 1
	call	calloc
	beqz	a0, .LBB1_2
# %bb.1:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB1_2:
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	mv	s0, a0
	mv	a0, a1
	call	no_mem_exit
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	AllocSPS, .Lfunc_end1-AllocSPS
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FreePPS                         # -- Begin function FreePPS
	.p2align	2
	.type	FreePPS,@function
FreePPS:                                # @FreePPS
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	beqz	a0, .LBB2_4
# %bb.1:
	ld	a1, 176(a0)
	beqz	a1, .LBB2_3
# %bb.2:
	mv	s0, a0
	mv	a0, a1
	call	free
	mv	a0, s0
.LBB2_3:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.LBB2_4:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FreePPS)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FreePPS)
	li	a2, 76
	call	__assert_fail
.Lfunc_end2:
	.size	FreePPS, .Lfunc_end2-FreePPS
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FreeSPS                         # -- Begin function FreeSPS
	.p2align	2
	.type	FreeSPS,@function
FreeSPS:                                # @FreeSPS
# %bb.0:
	beqz	a0, .LBB3_2
# %bb.1:
	tail	free
.LBB3_2:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FreeSPS)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FreeSPS)
	li	a2, 98
	call	__assert_fail
.Lfunc_end3:
	.size	FreeSPS, .Lfunc_end3-FreeSPS
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AllocPPS: PPS"
	.size	.L.str, 14

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"AllocSPS: SPS"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"pps != NULL"
	.size	.L.str.2, 12

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"src/parsetcommon.c"
	.size	.L.str.3, 19

	.type	.L__PRETTY_FUNCTION__.FreePPS,@object # @__PRETTY_FUNCTION__.FreePPS
.L__PRETTY_FUNCTION__.FreePPS:
	.asciz	"void FreePPS(pic_parameter_set_rbsp_t *)"
	.size	.L__PRETTY_FUNCTION__.FreePPS, 41

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"sps != NULL"
	.size	.L.str.4, 12

	.type	.L__PRETTY_FUNCTION__.FreeSPS,@object # @__PRETTY_FUNCTION__.FreeSPS
.L__PRETTY_FUNCTION__.FreeSPS:
	.asciz	"void FreeSPS(seq_parameter_set_rbsp_t *)"
	.size	.L__PRETTY_FUNCTION__.FreeSPS, 41

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
