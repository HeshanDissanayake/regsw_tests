	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"ratectrl.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitializeRateControl           # -- Begin function InitializeRateControl
	.p2align	2
	.type	InitializeRateControl,@function
InitializeRateControl:                  # @InitializeRateControl
# %bb.0:
	lui	a0, %hi(B_prev)
	sw	zero, %lo(B_prev)(a0)
	ret
.Lfunc_end0:
	.size	InitializeRateControl, .Lfunc_end0-InitializeRateControl
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	UpdateRateControl               # -- Begin function UpdateRateControl
	.p2align	2
	.type	UpdateRateControl,@function
UpdateRateControl:                      # @UpdateRateControl
# %bb.0:
	fcvt.s.w	fa5, a0
	lui	a0, %hi(B_prev)
	fsw	fa5, %lo(B_prev)(a0)
	ret
.Lfunc_end1:
	.size	UpdateRateControl, .Lfunc_end1-UpdateRateControl
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitializeQuantizer             # -- Begin function InitializeQuantizer
	.p2align	2
	.type	InitializeQuantizer,@function
InitializeQuantizer:                    # @InitializeQuantizer
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	fsd	fs0, 8(sp)                      # 8-byte Folded Spill
	li	a1, 1
	bne	a0, a1, .LBB2_8
# %bb.1:
	fmv.s	fs0, fa2
	lui	a0, %hi(B_prev)
	flw	fa3, %lo(B_prev)(a0)
	fdiv.s	fa4, fa0, fa1
	lui	a0, %hi(B_target)
	fmv.w.x	fa5, zero
	feq.s	a1, fa3, fa5
	fsw	fa4, %lo(B_target)(a0)
	bnez	a1, .LBB2_3
# %bb.2:
	fsub.s	fa5, fa3, fa4
	fadd.s	fa4, fa4, fa4
	fdiv.s	fa5, fa5, fa4
.LBB2_3:
	lui	a0, %hi(global_adj)
	lui	a1, 260096
	fmv.w.x	fa4, a1
	fadd.s	fa4, fa5, fa4
	lui	a1, 258048
	fmv.w.x	fa3, a1
	fmadd.s	fa4, fs0, fa4, fa3
	fcvt.w.s	s0, fa4, rtz
	li	a1, 31
	fsw	fa5, %lo(global_adj)(a0)
	blt	s0, a1, .LBB2_5
# %bb.4:
	li	s0, 31
.LBB2_5:
	bgtz	s0, .LBB2_7
# %bb.6:
	li	s0, 1
.LBB2_7:
	fcvt.d.s	fa5, fa5
	fmv.x.d	a1, fa5
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	printf
	fcvt.d.s	fa5, fs0
	fmv.x.d	a1, fa5
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	mv	a2, s0
	call	printf
	lui	a0, %hi(stdout)
	lui	a1, %hi(B_target)
	flw	fa5, %lo(B_target)(a1)
	ld	a0, %lo(stdout)(a0)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	call	fprintf
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	fld	fs0, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB2_8:
	bnez	a0, .LBB2_10
# %bb.9:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	li	a1, 58
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.LBB2_10:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 52
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.Lfunc_end2:
	.size	InitializeQuantizer, .Lfunc_end2-InitializeQuantizer
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function UpdateQuantizer
.LCPI3_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	UpdateQuantizer
	.p2align	2
	.type	UpdateQuantizer,@function
UpdateQuantizer:                        # @UpdateQuantizer
# %bb.0:
	mv	a5, a0
	li	a0, 16
	beqz	a1, .LBB3_3
# %bb.1:
	li	a0, 1
	bne	a1, a0, .LBB3_6
# %bb.2:
	lui	a0, %hi(B_target)
	flw	fa5, %lo(B_target)(a0)
	fcvt.s.w	fa4, a5
	mul	a0, a3, a2
	fcvt.s.w	fa3, a0
	fdiv.s	fa5, fa5, fa3
	fmul.s	fa5, fa5, fa4
	fcvt.s.w	fa4, a4
	fsub.s	fa5, fa4, fa5
	lui	a0, 267264
	fmv.w.x	fa4, a0
	fmul.s	fa5, fa5, fa4
	lui	a0, %hi(global_adj)
	flw	fa4, %lo(global_adj)(a0)
	fdiv.s	fa5, fa5, fa1
	lui	a0, 260096
	fmv.w.x	fa3, a0
	fadd.s	fa4, fa4, fa3
	lui	a0, %hi(.LCPI3_0)
	fld	fa3, %lo(.LCPI3_0)(a0)
	fadd.s	fa5, fa4, fa5
	fmul.s	fa5, fa5, fa0
	fcvt.d.s	fa5, fa5
	fadd.d	fa5, fa5, fa3
	fcvt.w.d	a0, fa5, rtz
.LBB3_3:
	li	a1, 31
	bge	a0, a1, .LBB3_7
.LBB3_4:
	blez	a0, .LBB3_8
.LBB3_5:
	ret
.LBB3_6:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	li	a1, 46
	li	a2, 1
	call	fwrite
	li	a0, 16
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	li	a1, 31
	blt	a0, a1, .LBB3_4
.LBB3_7:
	li	a0, 31
	bgtz	a0, .LBB3_5
.LBB3_8:
	li	a0, 1
	ret
.Lfunc_end3:
	.size	UpdateQuantizer, .Lfunc_end3-UpdateQuantizer
                                        # -- End function
	.option	pop
	.type	B_prev,@object                  # @B_prev
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
B_prev:
	.word	0x00000000                      # float 0
	.size	B_prev, 4

	.type	B_target,@object                # @B_target
	.p2align	2, 0x0
B_target:
	.word	0x00000000                      # float 0
	.size	B_target, 4

	.type	global_adj,@object              # @global_adj
	.p2align	2, 0x0
global_adj:
	.word	0x00000000                      # float 0
	.size	global_adj, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"No need to call InititializeQuantizer() for Intra picture\n"
	.size	.L.str, 59

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Error (InitializePictureRate): picture type unkown.\n"
	.size	.L.str.1, 53

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Global adj = %.2f\n"
	.size	.L.str.2, 19

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"meanQP = %.2f   newQP = %d\n"
	.size	.L.str.3, 28

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Target no. of bits: %.2f\n"
	.size	.L.str.4, 26

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Error (UpdateQuantizer): picture type unkown.\n"
	.size	.L.str.5, 47

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
