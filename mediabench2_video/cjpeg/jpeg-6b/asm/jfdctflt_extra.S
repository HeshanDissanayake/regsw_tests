	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jfdctflt.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function jpeg_fdct_float
.LCPI0_0:
	.word	0x3f3504f3                      # float 0.707106769
.LCPI0_1:
	.word	0x3ec3ef15                      # float 0.382683426
.LCPI0_2:
	.word	0x3f0a8bd4                      # float 0.541196108
.LCPI0_3:
	.word	0x3fa73d75                      # float 1.30656302
	.text
	.globl	jpeg_fdct_float
	.p2align	2
	.type	jpeg_fdct_float,@function
jpeg_fdct_float:                        # @jpeg_fdct_float
# %bb.0:
	lui	a1, %hi(.LCPI0_0)
	flw	fa5, %lo(.LCPI0_0)(a1)
	lui	a1, %hi(.LCPI0_1)
	flw	fa4, %lo(.LCPI0_1)(a1)
	lui	a1, %hi(.LCPI0_2)
	flw	fa3, %lo(.LCPI0_2)(a1)
	lui	a1, %hi(.LCPI0_3)
	flw	fa2, %lo(.LCPI0_3)(a1)
	addi	a1, a0, 256
	mv	a2, a0
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	flw	fa1, 0(a2)
	flw	fa0, 28(a2)
	flw	ft0, 4(a2)
	flw	ft1, 24(a2)
	fadd.s	ft2, fa1, fa0
	fsub.s	fa1, fa1, fa0
	fadd.s	fa0, ft0, ft1
	flw	ft3, 8(a2)
	flw	ft4, 20(a2)
	flw	ft5, 12(a2)
	flw	ft6, 16(a2)
	fsub.s	ft0, ft0, ft1
	fadd.s	ft1, ft3, ft4
	fsub.s	ft3, ft3, ft4
	fadd.s	ft4, ft5, ft6
	fsub.s	ft5, ft5, ft6
	fadd.s	ft6, ft2, ft4
	fsub.s	ft2, ft2, ft4
	fadd.s	ft4, fa0, ft1
	fsub.s	fa0, fa0, ft1
	fadd.s	ft1, ft4, ft6
	fsw	ft1, 0(a2)
	fsub.s	ft1, ft6, ft4
	fsw	ft1, 16(a2)
	fadd.s	fa0, fa0, ft2
	fmul.s	fa0, fa0, fa5
	fadd.s	ft1, ft2, fa0
	fsw	ft1, 8(a2)
	fsub.s	fa0, ft2, fa0
	fsw	fa0, 24(a2)
	fadd.s	fa0, ft3, ft5
	fadd.s	ft1, ft0, ft3
	fadd.s	ft0, fa1, ft0
	fsub.s	ft2, fa0, ft0
	fmul.s	ft2, ft2, fa4
	fmadd.s	fa0, fa0, fa3, ft2
	fmadd.s	ft0, ft0, fa2, ft2
	fmul.s	ft1, ft1, fa5
	fadd.s	ft2, fa1, ft1
	fsub.s	fa1, fa1, ft1
	fadd.s	ft1, fa1, fa0
	fsw	ft1, 20(a2)
	fsub.s	fa1, fa1, fa0
	fsw	fa1, 12(a2)
	fadd.s	fa1, ft2, ft0
	fsw	fa1, 4(a2)
	fsub.s	fa1, ft2, ft0
	fsw	fa1, 28(a2)
	addi	a2, a2, 32
	bne	a2, a1, .LBB0_1
# %bb.2:                                # %.preheader
	lui	a1, %hi(.LCPI0_0)
	flw	fa5, %lo(.LCPI0_0)(a1)
	lui	a1, %hi(.LCPI0_1)
	flw	fa4, %lo(.LCPI0_1)(a1)
	lui	a1, %hi(.LCPI0_2)
	flw	fa3, %lo(.LCPI0_2)(a1)
	lui	a1, %hi(.LCPI0_3)
	flw	fa2, %lo(.LCPI0_3)(a1)
	addi	a1, a0, 32
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	flw	fa1, 0(a0)
	flw	fa0, 224(a0)
	flw	ft0, 32(a0)
	flw	ft1, 192(a0)
	fadd.s	ft2, fa1, fa0
	fsub.s	fa1, fa1, fa0
	fadd.s	fa0, ft0, ft1
	flw	ft3, 64(a0)
	flw	ft4, 160(a0)
	flw	ft5, 96(a0)
	flw	ft6, 128(a0)
	fsub.s	ft0, ft0, ft1
	fadd.s	ft1, ft3, ft4
	fsub.s	ft3, ft3, ft4
	fadd.s	ft4, ft5, ft6
	fsub.s	ft5, ft5, ft6
	fadd.s	ft6, ft2, ft4
	fsub.s	ft2, ft2, ft4
	fadd.s	ft4, fa0, ft1
	fsub.s	fa0, fa0, ft1
	fadd.s	ft1, ft4, ft6
	fsw	ft1, 0(a0)
	fsub.s	ft1, ft6, ft4
	fsw	ft1, 128(a0)
	fadd.s	fa0, fa0, ft2
	fmul.s	fa0, fa0, fa5
	fadd.s	ft1, ft2, fa0
	fsw	ft1, 64(a0)
	fsub.s	fa0, ft2, fa0
	fsw	fa0, 192(a0)
	fadd.s	fa0, ft3, ft5
	fadd.s	ft1, ft0, ft3
	fadd.s	ft0, fa1, ft0
	fsub.s	ft2, fa0, ft0
	fmul.s	ft2, ft2, fa4
	fmadd.s	fa0, fa0, fa3, ft2
	fmadd.s	ft0, ft0, fa2, ft2
	fmul.s	ft1, ft1, fa5
	fadd.s	ft2, fa1, ft1
	fsub.s	fa1, fa1, ft1
	fadd.s	ft1, fa1, fa0
	fsw	ft1, 160(a0)
	fsub.s	fa1, fa1, fa0
	fsw	fa1, 96(a0)
	fadd.s	fa1, ft2, ft0
	fsw	fa1, 32(a0)
	fsub.s	fa1, ft2, ft0
	fsw	fa1, 224(a0)
	addi	a0, a0, 4
	bne	a0, a1, .LBB0_3
# %bb.4:
	ret
.Lfunc_end0:
	.size	jpeg_fdct_float, .Lfunc_end0-jpeg_fdct_float
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
