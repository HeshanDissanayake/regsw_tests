	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"nalu.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	RBSPtoNALU                      # -- Begin function RBSPtoNALU
	.p2align	2
	.type	RBSPtoNALU,@function
RBSPtoNALU:                             # @RBSPtoNALU
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	beqz	a1, .LBB0_5
# %bb.1:
	mv	a1, a0
	li	a0, 4
	bgeu	a4, a0, .LBB0_6
# %bb.2:
	mv	s1, a5
	addiw	a0, a3, -1
	li	a5, 10
	bgeu	a0, a5, .LBB0_7
# %bb.3:
	lui	a0, 16
	addiw	a0, a0, -1536
	bge	a2, a0, .LBB0_8
# %bb.4:
	sw	zero, 20(s0)
	sw	a4, 16(s0)
	sw	a3, 12(s0)
	snez	a0, a6
	addi	a0, a0, 3
	ld	a5, 24(s0)
	sw	a0, 0(s0)
	slli	a4, a4, 5
	or	a3, a4, a3
	sb	a3, 0(a5)
	ld	a0, 24(s0)
	addi	a0, a0, 1
	mv	s2, a2
	call	memcpy
	ld	a0, 24(s0)
	addi	a0, a0, 1
	li	a1, 0
	mv	a2, s2
	mv	a3, s1
	call	RBSPtoEBSP
	addiw	a0, a0, 1
	sw	a0, 4(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB0_5:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.RBSPtoNALU)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.RBSPtoNALU)
	li	a2, 53
	call	__assert_fail
.LBB0_6:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.RBSPtoNALU)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.RBSPtoNALU)
	li	a2, 54
	call	__assert_fail
.LBB0_7:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.RBSPtoNALU)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.RBSPtoNALU)
	li	a2, 55
	call	__assert_fail
.LBB0_8:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.RBSPtoNALU)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.RBSPtoNALU)
	li	a2, 56
	call	__assert_fail
.Lfunc_end0:
	.size	RBSPtoNALU, .Lfunc_end0-RBSPtoNALU
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"nalu != NULL"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/nalu.c"
	.size	.L.str.1, 11

	.type	.L__PRETTY_FUNCTION__.RBSPtoNALU,@object # @__PRETTY_FUNCTION__.RBSPtoNALU
.L__PRETTY_FUNCTION__.RBSPtoNALU:
	.asciz	"int RBSPtoNALU(unsigned char *, NALU_t *, int, int, int, int, int)"
	.size	.L__PRETTY_FUNCTION__.RBSPtoNALU, 67

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"nal_reference_idc <=3 && nal_reference_idc >=0"
	.size	.L.str.2, 47

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"nal_unit_type > 0 && nal_unit_type <= 10"
	.size	.L.str.3, 41

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"rbsp_size < MAXRBSPSIZE"
	.size	.L.str.4, 24

	.type	WriteNALU,@object               # @WriteNALU
	.section	.sbss,"aw",@nobits
	.globl	WriteNALU
	.p2align	3, 0x0
WriteNALU:
	.quad	0
	.size	WriteNALU, 8

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
