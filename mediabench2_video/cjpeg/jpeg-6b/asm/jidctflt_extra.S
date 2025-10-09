	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jidctflt.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function jpeg_idct_float
.LCPI0_0:
	.word	0x3fb504f3                      # float 1.41421354
.LCPI0_1:
	.word	0x3fec835e                      # float 1.84775901
.LCPI0_2:
	.word	0x3f8a8bd4                      # float 1.08239222
.LCPI0_3:
	.word	0xc0273d75                      # float -2.61312604
	.text
	.globl	jpeg_idct_float
	.p2align	2
	.type	jpeg_idct_float,@function
jpeg_idct_float:                        # @jpeg_idct_float
# %bb.0:
	addi	sp, sp, -256
	ld	a0, 424(a0)
	ld	a1, 88(a1)
	lui	a5, %hi(.LCPI0_0)
	flw	fa5, %lo(.LCPI0_0)(a5)
	lui	a5, %hi(.LCPI0_1)
	flw	fa4, %lo(.LCPI0_1)(a5)
	lui	a5, %hi(.LCPI0_2)
	flw	fa3, %lo(.LCPI0_2)(a5)
	lui	a5, %hi(.LCPI0_3)
	flw	fa2, %lo(.LCPI0_3)(a5)
	addi	a2, a2, 64
	mv	a5, sp
	addi	a6, sp, 32
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lhu	a7, -48(a2)
	lhu	t0, -32(a2)
	or	t1, a7, t0
	slli	t1, t1, 48
	bnez	t1, .LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t0, -16(a2)
	bnez	t0, .LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t0, 0(a2)
	bnez	t0, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t0, 16(a2)
	bnez	t0, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t0, 32(a2)
	bnez	t0, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	lhu	t0, 48(a2)
	beqz	t0, .LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	li	t0, 0
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	lh	t1, -64(a2)
	flw	fa1, 0(a1)
	fcvt.s.w	fa0, t1
	fmul.s	fa1, fa1, fa0
	flw	fa0, 64(a1)
	slli	t0, t0, 48
	srai	t0, t0, 48
	fcvt.s.w	ft0, t0
	fmul.s	fa0, fa0, ft0
	lh	t0, 0(a2)
	flw	ft0, 128(a1)
	lh	t1, 32(a2)
	flw	ft1, 192(a1)
	fcvt.s.w	ft2, t0
	fmul.s	ft0, ft0, ft2
	fcvt.s.w	ft2, t1
	fmul.s	ft1, ft1, ft2
	fadd.s	ft2, fa1, ft0
	fsub.s	fa1, fa1, ft0
	fadd.s	ft0, fa0, ft1
	fsub.s	fa0, fa0, ft1
	fmsub.s	fa0, fa0, fa5, ft0
	fadd.s	ft1, ft2, ft0
	fsub.s	ft0, ft2, ft0
	fadd.s	ft2, fa1, fa0
	fsub.s	fa1, fa1, fa0
	slli	a7, a7, 48
	srai	a7, a7, 48
	flw	fa0, 32(a1)
	lh	t0, -16(a2)
	flw	ft3, 96(a1)
	fcvt.s.w	ft4, a7
	fmul.s	fa0, fa0, ft4
	fcvt.s.w	ft4, t0
	fmul.s	ft3, ft3, ft4
	lh	a7, 16(a2)
	flw	ft4, 160(a1)
	lh	t0, 48(a2)
	flw	ft5, 224(a1)
	fcvt.s.w	ft6, a7
	fmul.s	ft4, ft4, ft6
	fcvt.s.w	ft6, t0
	fmul.s	ft5, ft5, ft6
	fadd.s	ft6, ft3, ft4
	fsub.s	ft3, ft4, ft3
	fadd.s	ft4, fa0, ft5
	fsub.s	fa0, fa0, ft5
	fadd.s	ft5, ft6, ft4
	fsub.s	ft4, ft4, ft6
	fmul.s	ft4, ft4, fa5
	fadd.s	ft6, ft3, fa0
	fmul.s	ft6, ft6, fa4
	fmsub.s	fa0, fa0, fa3, ft6
	fmadd.s	ft3, ft3, fa2, ft6
	fsub.s	ft3, ft3, ft5
	fsub.s	ft4, ft4, ft3
	fadd.s	fa0, fa0, ft4
	fadd.s	ft6, ft1, ft5
	fsw	ft6, 0(a5)
	fsub.s	ft1, ft1, ft5
	fsw	ft1, 224(a5)
	fadd.s	ft1, ft2, ft3
	fsw	ft1, 32(a5)
	fsub.s	ft1, ft2, ft3
	fsw	ft1, 192(a5)
	fadd.s	ft1, fa1, ft4
	fsw	ft1, 64(a5)
	fsub.s	fa1, fa1, ft4
	fsw	fa1, 160(a5)
	fadd.s	fa1, ft0, fa0
	fsw	fa1, 128(a5)
	fsub.s	fa1, ft0, fa0
	li	a7, 96
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	add	a7, a5, a7
	fsw	fa1, 0(a7)
	addi	a5, a5, 4
	addi	a1, a1, 4
	addi	a2, a2, 2
	bne	a5, a6, .LBB0_1
	j	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	lh	a7, -64(a2)
	flw	fa1, 0(a1)
	fcvt.s.w	fa0, a7
	fmul.s	fa1, fa1, fa0
	fsw	fa1, 0(a5)
	fsw	fa1, 32(a5)
	fsw	fa1, 64(a5)
	fsw	fa1, 96(a5)
	fsw	fa1, 128(a5)
	fsw	fa1, 160(a5)
	fsw	fa1, 192(a5)
	li	a7, 224
	j	.LBB0_9
.LBB0_11:
	addi	a0, a0, 128
	slli	a1, a4, 32
	lui	a2, %hi(.LCPI0_0)
	flw	fa5, %lo(.LCPI0_0)(a2)
	lui	a2, %hi(.LCPI0_1)
	flw	fa4, %lo(.LCPI0_1)(a2)
	lui	a2, %hi(.LCPI0_2)
	flw	fa3, %lo(.LCPI0_2)(a2)
	lui	a2, %hi(.LCPI0_3)
	flw	fa2, %lo(.LCPI0_3)(a2)
	srli	a1, a1, 32
	mv	a2, sp
	addi	a4, sp, 256
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	ld	a5, 0(a3)
	flw	fa0, 0(a2)
	flw	ft0, 16(a2)
	flw	ft1, 8(a2)
	flw	ft2, 24(a2)
	add	a5, a5, a1
	fadd.s	fa1, fa0, ft0
	fsub.s	ft3, fa0, ft0
	fadd.s	fa0, ft1, ft2
	fsub.s	ft0, ft1, ft2
	fmsub.s	ft1, ft0, fa5, fa0
	flw	ft0, 20(a2)
	flw	ft2, 12(a2)
	flw	ft4, 4(a2)
	flw	ft5, 28(a2)
	fadd.s	ft6, fa1, fa0
	fadd.s	ft7, ft0, ft2
	fsub.s	ft2, ft0, ft2
	fadd.s	fa6, ft4, ft5
	fsub.s	ft0, ft4, ft5
	fadd.s	ft4, ft7, fa6
	fadd.s	ft5, ft6, ft4
	fcvt.l.s	a6, ft5, rtz
	fadd.s	ft5, ft3, ft1
	addi	a6, a6, 4
	slli	a6, a6, 51
	srli	a6, a6, 54
	add	a6, a0, a6
	lbu	a6, 0(a6)
	fsub.s	ft6, ft6, ft4
	fcvt.l.s	a7, ft6, rtz
	fadd.s	ft6, ft2, ft0
	fmul.s	ft6, ft6, fa4
	fmadd.s	ft2, ft2, fa2, ft6
	sb	a6, 0(a5)
	addi	a7, a7, 4
	slli	a7, a7, 51
	srli	a6, a7, 54
	add	a6, a0, a6
	lbu	a6, 0(a6)
	fsub.s	ft2, ft2, ft4
	fadd.s	ft4, ft5, ft2
	fcvt.l.s	a7, ft4, rtz
	sb	a6, 7(a5)
	addi	a7, a7, 4
	slli	a7, a7, 51
	srli	a6, a7, 54
	add	a6, a0, a6
	lbu	a6, 0(a6)
	fsub.s	ft1, ft3, ft1
	sb	a6, 1(a5)
	fsub.s	ft3, ft5, ft2
	fcvt.l.s	a6, ft3, rtz
	addi	a6, a6, 4
	slli	a6, a6, 51
	srli	a6, a6, 54
	add	a6, a0, a6
	lbu	a6, 0(a6)
	fsub.s	ft3, fa6, ft7
	fmul.s	ft3, ft3, fa5
	fsub.s	ft2, ft3, ft2
	sb	a6, 6(a5)
	fadd.s	ft3, ft1, ft2
	fcvt.l.s	a6, ft3, rtz
	addi	a6, a6, 4
	slli	a6, a6, 51
	srli	a6, a6, 54
	add	a6, a0, a6
	lbu	a6, 0(a6)
	sb	a6, 2(a5)
	fsub.s	ft1, ft1, ft2
	fcvt.l.s	a6, ft1, rtz
	addi	a6, a6, 4
	slli	a6, a6, 51
	srli	a6, a6, 54
	add	a6, a0, a6
	lbu	a6, 0(a6)
	fsub.s	fa1, fa1, fa0
	fmsub.s	fa0, ft0, fa3, ft6
	fadd.s	fa0, fa0, ft2
	sb	a6, 5(a5)
	fadd.s	ft0, fa1, fa0
	fcvt.l.s	a6, ft0, rtz
	addi	a6, a6, 4
	slli	a6, a6, 51
	srli	a6, a6, 54
	add	a6, a0, a6
	lbu	a6, 0(a6)
	sb	a6, 4(a5)
	fsub.s	fa1, fa1, fa0
	fcvt.l.s	a6, fa1, rtz
	addi	a6, a6, 4
	slli	a6, a6, 51
	srli	a6, a6, 54
	add	a6, a0, a6
	lbu	a6, 0(a6)
	sb	a6, 3(a5)
	addi	a2, a2, 32
	addi	a3, a3, 8
	bne	a2, a4, .LBB0_12
# %bb.13:
	addi	sp, sp, 256
	ret
.Lfunc_end0:
	.size	jpeg_idct_float, .Lfunc_end0-jpeg_idct_float
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
