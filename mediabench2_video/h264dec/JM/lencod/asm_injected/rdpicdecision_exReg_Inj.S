	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"rdpicdecision.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	rd_pic_decision                 # -- Begin function rd_pic_decision
	.p2align	2
	.type	rd_pic_decision,@function
rd_pic_decision:                        # @rd_pic_decision
# %bb.0:
	fcvt.d.w	fa5, a0
	fmadd.d	fa5, fa5, fa2, fa0
	fcvt.d.w	fa4, a1
	fmadd.d	fa4, fa4, fa2, fa1
	flt.d	a0, fa5, fa4
	feq.d	a1, fa4, fa5
	fle.d	a2, fa0, fa1
	and	a1, a2, a1
	or	a0, a0, a1
	xori	a0, a0, 1
	ret
.Lfunc_end0:
	.size	rd_pic_decision, .Lfunc_end0-rd_pic_decision
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function picture_coding_decision
.LCPI1_0:
	.quad	0x4008000000000000              # double 3
.LCPI1_1:
	.quad	0x3fe5c28f5c28f5c3              # double 0.68000000000000005
	.text
	.globl	picture_coding_decision
	.p2align	2
	.type	picture_coding_decision,@function
picture_coding_decision:                # @picture_coding_decision
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	lw	a3, 1244(a3)
	mv	s0, a1
	mv	s1, a0
	beqz	a3, .LBB1_2
# %bb.1:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, %hi(.LCPI1_0)
	fld	fa5, %lo(.LCPI1_0)(a1)
	lw	s2, 24(a0)
	addi	a2, a2, -12
	fcvt.d.w	fa4, a2
	fdiv.d	fa0, fa4, fa5
	call	exp2
	lui	a0, %hi(.LCPI1_1)
	fld	fa5, %lo(.LCPI1_1)(a0)
	fmul.d	fa5, fa0, fa5
	andi	a0, s2, -3
	addi	a0, a0, -1
	seqz	a0, a0
	addi	a0, a0, 1
	fcvt.d.wu	fa4, a0
	fmul.d	fa5, fa5, fa4
	j	.LBB1_3
.LBB1_2:
	lui	a0, %hi(.LCPI1_0)
	fld	fa5, %lo(.LCPI1_0)(a0)
	addi	a2, a2, -12
	fcvt.d.w	fa4, a2
	fdiv.d	fa0, fa4, fa5
	call	exp2
	lui	a0, %hi(.LCPI1_1)
	fld	fa5, %lo(.LCPI1_1)(a0)
	fmul.d	fa5, fa0, fa5
.LBB1_3:
	flw	fa4, 812(s1)
	flw	fa3, 816(s1)
	flw	fa2, 820(s1)
	fadd.s	fa4, fa4, fa3
	flw	fa3, 812(s0)
	flw	fa1, 816(s0)
	fadd.s	fa4, fa4, fa2
	flw	fa2, 820(s0)
	fcvt.d.s	fa0, fa4
	fadd.s	fa3, fa3, fa1
	lw	a0, 808(s1)
	fadd.s	fa3, fa3, fa2
	lw	a1, 808(s0)
	fcvt.d.s	fa2, fa3
	fcvt.d.w	fa1, a0
	fmadd.d	fa1, fa1, fa5, fa0
	fcvt.d.w	fa0, a1
	fmadd.d	fa5, fa0, fa5, fa2
	flt.d	a0, fa1, fa5
	feq.d	a1, fa5, fa1
	fle.s	a2, fa4, fa3
	and	a1, a2, a1
	or	a0, a0, a1
	xori	a0, a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	picture_coding_decision, .Lfunc_end1-picture_coding_decision
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
