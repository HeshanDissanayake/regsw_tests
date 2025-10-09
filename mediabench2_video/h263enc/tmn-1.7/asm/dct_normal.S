	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"dct.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function Dct
.LCPI0_0:
	.word	0x3f3504f4                      # float 0.707106829
.LCPI0_1:
	.word	0x3eb504f4                      # float 0.353553414
.LCPI0_2:
	.word	0x3eec8360                      # float 0.461939812
.LCPI0_3:
	.word	0x3e43ef14                      # float 0.191341698
.LCPI0_4:
	.word	0xbeec8360                      # float -0.461939812
.LCPI0_5:
	.word	0x3efb14bd                      # float 0.490392596
.LCPI0_6:
	.word	0x3dc7c5c7                      # float 0.097545199
.LCPI0_7:
	.word	0x3e8e39d9                      # float 0.277785093
.LCPI0_8:
	.word	0x3ed4db31                      # float 0.415734798
.LCPI0_9:
	.word	0xbefb14bd                      # float -0.490392596
.LCPI0_10:
	.word	0xbe8e39d9                      # float -0.277785093
	.text
	.globl	Dct
	.p2align	2
	.type	Dct,@function
Dct:                                    # @Dct
# %bb.0:
	addi	sp, sp, -272
	fsd	fs0, 264(sp)                    # 8-byte Folded Spill
	lui	a2, %hi(.LCPI0_0)
	flw	fa5, %lo(.LCPI0_0)(a2)
	lui	a2, %hi(.LCPI0_1)
	flw	fa4, %lo(.LCPI0_1)(a2)
	lui	a2, %hi(.LCPI0_2)
	flw	fa3, %lo(.LCPI0_2)(a2)
	lui	a2, %hi(.LCPI0_3)
	flw	fa2, %lo(.LCPI0_3)(a2)
	lui	a2, %hi(.LCPI0_4)
	flw	fa1, %lo(.LCPI0_4)(a2)
	lui	a2, %hi(.LCPI0_5)
	flw	fa0, %lo(.LCPI0_5)(a2)
	lui	a2, %hi(.LCPI0_6)
	flw	ft0, %lo(.LCPI0_6)(a2)
	lui	a2, %hi(.LCPI0_7)
	flw	ft1, %lo(.LCPI0_7)(a2)
	lui	a2, %hi(.LCPI0_8)
	flw	ft2, %lo(.LCPI0_8)(a2)
	lui	a2, %hi(.LCPI0_9)
	flw	ft3, %lo(.LCPI0_9)(a2)
	lui	a2, %hi(.LCPI0_10)
	flw	ft4, %lo(.LCPI0_10)(a2)
	addi	a2, sp, 24
	addi	a3, a0, 16
	addi	a0, sp, 280
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a4, -16(a3)
	lw	a5, -12(a3)
	lw	a6, -8(a3)
	lw	a7, -4(a3)
	fcvt.s.w	ft5, a4
	fcvt.s.w	ft6, a5
	fcvt.s.w	ft7, a6
	fcvt.s.w	fa6, a7
	lw	a4, 0(a3)
	lw	a5, 4(a3)
	lw	a6, 8(a3)
	lw	a7, 12(a3)
	fcvt.s.w	fa7, a4
	fcvt.s.w	ft8, a5
	fcvt.s.w	ft9, a6
	fcvt.s.w	ft10, a7
	fadd.s	ft11, ft5, ft10
	fsub.s	ft5, ft5, ft10
	fadd.s	ft10, ft6, ft9
	fsub.s	ft6, ft6, ft9
	fadd.s	ft9, ft7, ft8
	fsub.s	ft7, ft7, ft8
	fadd.s	ft8, fa6, fa7
	fsub.s	fa6, fa6, fa7
	fadd.s	fa7, ft11, ft8
	fadd.s	fs0, ft10, ft9
	fsub.s	ft9, ft10, ft9
	fsub.s	ft8, ft11, ft8
	fsub.s	ft10, ft6, ft7
	fmul.s	ft10, ft10, fa5
	fadd.s	ft6, ft6, ft7
	fmul.s	ft6, ft6, fa5
	fadd.s	ft7, fa7, fs0
	fmul.s	ft7, ft7, fa4
	fsw	ft7, -16(a2)
	fsub.s	ft7, fa7, fs0
	fmul.s	ft7, ft7, fa4
	fsw	ft7, 0(a2)
	fmul.s	ft7, ft8, fa3
	fmadd.s	ft7, ft9, fa2, ft7
	fsw	ft7, -8(a2)
	fmul.s	ft7, ft9, fa1
	fmadd.s	ft7, ft8, fa2, ft7
	fsw	ft7, 8(a2)
	fadd.s	ft7, fa6, ft10
	fadd.s	fa7, ft6, ft5
	fsub.s	fa6, fa6, ft10
	fsub.s	ft5, ft5, ft6
	fmul.s	ft6, fa7, fa0
	fmadd.s	ft6, ft7, ft0, ft6
	fsw	ft6, -12(a2)
	fmul.s	ft6, ft5, ft1
	fmadd.s	ft6, fa6, ft2, ft6
	fsw	ft6, 4(a2)
	fmul.s	ft6, ft7, ft3
	fmadd.s	ft6, fa7, ft0, ft6
	fsw	ft6, 12(a2)
	fmul.s	ft6, fa6, ft4
	fmadd.s	ft5, ft5, ft2, ft6
	fsw	ft5, -4(a2)
	addi	a2, a2, 32
	addi	a3, a3, 32
	bne	a2, a0, .LBB0_1
# %bb.2:
	lui	a2, %hi(.LCPI0_0)
	flw	fa5, %lo(.LCPI0_0)(a2)
	lui	a2, %hi(.LCPI0_1)
	flw	fa4, %lo(.LCPI0_1)(a2)
	lui	a2, %hi(.LCPI0_2)
	flw	fa3, %lo(.LCPI0_2)(a2)
	lui	a2, %hi(.LCPI0_3)
	flw	fa2, %lo(.LCPI0_3)(a2)
	lui	a2, %hi(.LCPI0_4)
	flw	fa1, %lo(.LCPI0_4)(a2)
	lui	a2, %hi(.LCPI0_5)
	flw	fa0, %lo(.LCPI0_5)(a2)
	lui	a2, %hi(.LCPI0_6)
	flw	ft0, %lo(.LCPI0_6)(a2)
	lui	a2, %hi(.LCPI0_7)
	flw	ft1, %lo(.LCPI0_7)(a2)
	lui	a2, %hi(.LCPI0_8)
	flw	ft2, %lo(.LCPI0_8)(a2)
	lui	a2, %hi(.LCPI0_9)
	flw	ft3, %lo(.LCPI0_9)(a2)
	lui	a2, %hi(.LCPI0_10)
	flw	ft4, %lo(.LCPI0_10)(a2)
	addi	a2, sp, 136
	addi	a3, sp, 168
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	flw	ft5, -128(a2)
	flw	ft6, 96(a2)
	flw	ft7, -96(a2)
	flw	fa6, 64(a2)
	fadd.s	fa7, ft5, ft6
	fsub.s	ft5, ft5, ft6
	fadd.s	ft6, ft7, fa6
	flw	ft8, -64(a2)
	flw	ft9, 32(a2)
	flw	ft10, -32(a2)
	flw	ft11, 0(a2)
	fsub.s	ft7, ft7, fa6
	fadd.s	fa6, ft8, ft9
	fsub.s	ft8, ft8, ft9
	fadd.s	ft9, ft10, ft11
	fsub.s	ft10, ft10, ft11
	fadd.s	ft11, fa7, ft9
	fadd.s	fs0, ft6, fa6
	fsub.s	ft6, ft6, fa6
	fsub.s	fa6, fa7, ft9
	fsub.s	fa7, ft7, ft8
	fmul.s	fa7, fa7, fa5
	fadd.s	ft7, ft7, ft8
	fmul.s	ft7, ft7, fa5
	fadd.s	ft8, ft11, fs0
	fmul.s	ft8, ft8, fa4
	fsw	ft8, -128(a2)
	fsub.s	ft8, ft11, fs0
	fmul.s	ft8, ft8, fa4
	fsw	ft8, 0(a2)
	fmul.s	ft8, fa6, fa3
	fmadd.s	ft8, ft6, fa2, ft8
	fsw	ft8, -64(a2)
	fmul.s	ft6, ft6, fa1
	fmadd.s	ft6, fa6, fa2, ft6
	fsw	ft6, 64(a2)
	fadd.s	ft6, ft10, fa7
	fadd.s	fa6, ft7, ft5
	fsub.s	fa7, ft10, fa7
	fsub.s	ft5, ft5, ft7
	fmul.s	ft7, fa6, fa0
	fmadd.s	ft7, ft6, ft0, ft7
	fsw	ft7, -96(a2)
	fmul.s	ft7, ft5, ft1
	fmadd.s	ft7, fa7, ft2, ft7
	fsw	ft7, 32(a2)
	fmul.s	ft6, ft6, ft3
	fmadd.s	ft6, fa6, ft0, ft6
	fsw	ft6, 96(a2)
	fmul.s	ft6, fa7, ft4
	fmadd.s	ft5, ft5, ft2, ft6
	fsw	ft5, -32(a2)
	addi	a2, a2, 4
	bne	a2, a3, .LBB0_3
# %bb.4:                                # %.preheader
	addi	a2, sp, 24
	lui	a3, %hi(zigzag+16)
	addi	a3, a3, %lo(zigzag+16)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	flw	fa5, -16(a2)
	lw	a4, -16(a3)
	fcvt.w.s	a5, fa5, rtz
	slli	a4, a4, 2
	add	a4, a1, a4
	sw	a5, 0(a4)
	flw	fa5, -12(a2)
	lw	a4, -12(a3)
	fcvt.w.s	a5, fa5, rtz
	slli	a4, a4, 2
	add	a4, a1, a4
	sw	a5, 0(a4)
	flw	fa5, -8(a2)
	lw	a4, -8(a3)
	fcvt.w.s	a5, fa5, rtz
	slli	a4, a4, 2
	add	a4, a1, a4
	sw	a5, 0(a4)
	flw	fa5, -4(a2)
	lw	a4, -4(a3)
	fcvt.w.s	a5, fa5, rtz
	slli	a4, a4, 2
	add	a4, a1, a4
	sw	a5, 0(a4)
	flw	fa5, 0(a2)
	lw	a4, 0(a3)
	fcvt.w.s	a5, fa5, rtz
	slli	a4, a4, 2
	add	a4, a1, a4
	sw	a5, 0(a4)
	flw	fa5, 4(a2)
	lw	a4, 4(a3)
	fcvt.w.s	a5, fa5, rtz
	slli	a4, a4, 2
	add	a4, a1, a4
	sw	a5, 0(a4)
	flw	fa5, 8(a2)
	lw	a4, 8(a3)
	fcvt.w.s	a5, fa5, rtz
	slli	a4, a4, 2
	add	a4, a1, a4
	sw	a5, 0(a4)
	flw	fa5, 12(a2)
	lw	a4, 12(a3)
	fcvt.w.s	a5, fa5, rtz
	slli	a4, a4, 2
	add	a4, a1, a4
	sw	a5, 0(a4)
	addi	a2, a2, 32
	addi	a3, a3, 32
	bne	a2, a0, .LBB0_5
# %bb.6:
	li	a0, 0
	fld	fs0, 264(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 272
	ret
.Lfunc_end0:
	.size	Dct, .Lfunc_end0-Dct
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function init_idctref
.LCPI1_0:
	.quad	4600040671590431693             # 0x3fd6a09e667f3bcd
.LCPI1_1:
	.quad	4602505748364614832             # 0x3fdf6297cff75cb0
.LCPI1_2:
	.quad	4601160832390177187             # 0x3fda9b66290ea1a3
.LCPI1_3:
	.quad	4598675751706716361             # 0x3fd1c73b39ae68c9
.LCPI1_4:
	.quad	4591693290275448333             # 0x3fb8f8b83c69a60d
.LCPI1_5:
	.quad	-4631678746579327480            # 0xbfb8f8b83c69a608
.LCPI1_6:
	.quad	-4624696285148059450            # 0xbfd1c73b39ae68c6
.LCPI1_7:
	.quad	-4622211204464598620            # 0xbfda9b66290ea1a4
.LCPI1_8:
	.quad	-4620866288490160976            # 0xbfdf6297cff75cb0
.LCPI1_9:
	.quad	4601993186954612038             # 0x3fdd906bcf328d46
.LCPI1_10:
	.quad	4596061832144136548             # 0x3fc87de2a6aea964
.LCPI1_11:
	.quad	-4627310204710639262            # 0xbfc87de2a6aea962
.LCPI1_12:
	.quad	-4621378849900163770            # 0xbfdd906bcf328d46
.LCPI1_13:
	.quad	-4621378849900163769            # 0xbfdd906bcf328d47
.LCPI1_14:
	.quad	-4627310204710639251            # 0xbfc87de2a6aea96d
.LCPI1_15:
	.quad	4596061832144136551             # 0x3fc87de2a6aea967
.LCPI1_16:
	.quad	4601993186954612036             # 0x3fdd906bcf328d44
.LCPI1_17:
	.quad	-4624696285148059448            # 0xbfd1c73b39ae68c8
.LCPI1_18:
	.quad	4598675751706716357             # 0x3fd1c73b39ae68c5
.LCPI1_19:
	.quad	4591693290275448349             # 0x3fb8f8b83c69a61d
.LCPI1_20:
	.quad	-4622211204464598622            # 0xbfda9b66290ea1a2
.LCPI1_21:
	.quad	-4623331365264344116            # 0xbfd6a09e667f3bcc
.LCPI1_22:
	.quad	-4623331365264344114            # 0xbfd6a09e667f3bce
.LCPI1_23:
	.quad	4600040671590431691             # 0x3fd6a09e667f3bcb
.LCPI1_24:
	.quad	4600040671590431694             # 0x3fd6a09e667f3bce
.LCPI1_25:
	.quad	-4623331365264344123            # 0xbfd6a09e667f3bc5
.LCPI1_26:
	.quad	-4623331365264344119            # 0xbfd6a09e667f3bc9
.LCPI1_27:
	.quad	4600040671590431684             # 0x3fd6a09e667f3bc4
.LCPI1_28:
	.quad	4591693290275448332             # 0x3fb8f8b83c69a60c
.LCPI1_29:
	.quad	4601160832390177189             # 0x3fda9b66290ea1a5
.LCPI1_30:
	.quad	-4631678746579327486            # 0xbfb8f8b83c69a602
.LCPI1_31:
	.quad	4602505748364614834             # 0x3fdf6297cff75cb2
.LCPI1_32:
	.quad	-4624696285148059454            # 0xbfd1c73b39ae68c2
.LCPI1_33:
	.quad	-4627310204710639259            # 0xbfc87de2a6aea965
.LCPI1_34:
	.quad	-4627310204710639247            # 0xbfc87de2a6aea971
.LCPI1_35:
	.quad	-4621378849900163773            # 0xbfdd906bcf328d43
.LCPI1_36:
	.quad	4596061832144136543             # 0x3fc87de2a6aea95f
.LCPI1_37:
	.quad	-4620866288490160974            # 0xbfdf6297cff75cb2
.LCPI1_38:
	.quad	-4622211204464598623            # 0xbfda9b66290ea1a1
.LCPI1_39:
	.quad	4598675751706716354             # 0x3fd1c73b39ae68c2
.LCPI1_40:
	.quad	-4631678746579327466            # 0xbfb8f8b83c69a616
	.text
	.globl	init_idctref
	.p2align	2
	.type	init_idctref,@function
init_idctref:                           # @init_idctref
# %bb.0:
	lui	a0, %hi(.LCPI1_0)
	ld	a6, %lo(.LCPI1_0)(a0)
	lui	a0, %hi(c)
	sd	a6, %lo(c)(a0)
	addi	a0, a0, %lo(c)
	sd	a6, 8(a0)
	sd	a6, 16(a0)
	sd	a6, 24(a0)
	sd	a6, 32(a0)
	sd	a6, 40(a0)
	sd	a6, 48(a0)
	sd	a6, 56(a0)
	lui	a1, %hi(.LCPI1_1)
	ld	a1, %lo(.LCPI1_1)(a1)
	lui	a2, %hi(.LCPI1_2)
	ld	t0, %lo(.LCPI1_2)(a2)
	lui	a2, %hi(.LCPI1_3)
	ld	a4, %lo(.LCPI1_3)(a2)
	lui	a2, %hi(.LCPI1_4)
	ld	a2, %lo(.LCPI1_4)(a2)
	sd	a1, 64(a0)
	sd	t0, 72(a0)
	sd	a4, 80(a0)
	sd	a2, 88(a0)
	lui	a3, %hi(.LCPI1_5)
	ld	t3, %lo(.LCPI1_5)(a3)
	lui	a3, %hi(.LCPI1_6)
	ld	a3, %lo(.LCPI1_6)(a3)
	lui	a5, %hi(.LCPI1_7)
	ld	a5, %lo(.LCPI1_7)(a5)
	lui	a7, %hi(.LCPI1_8)
	ld	a7, %lo(.LCPI1_8)(a7)
	sd	t3, 96(a0)
	sd	a3, 104(a0)
	sd	a5, 112(a0)
	sd	a7, 120(a0)
	lui	a3, %hi(.LCPI1_9)
	ld	a3, %lo(.LCPI1_9)(a3)
	lui	a5, %hi(.LCPI1_10)
	lui	t1, %hi(.LCPI1_11)
	ld	t1, %lo(.LCPI1_11)(t1)
	ld	a5, %lo(.LCPI1_10)(a5)
	lui	t2, %hi(.LCPI1_12)
	ld	t2, %lo(.LCPI1_12)(t2)
	sd	t1, 144(a0)
	lui	t1, %hi(.LCPI1_14)
	ld	t1, %lo(.LCPI1_14)(t1)
	sd	t2, 152(a0)
	lui	t2, %hi(.LCPI1_15)
	ld	t2, %lo(.LCPI1_15)(t2)
	sd	t1, 168(a0)
	lui	t1, %hi(.LCPI1_13)
	ld	t1, %lo(.LCPI1_13)(t1)
	sd	t2, 176(a0)
	lui	t2, %hi(.LCPI1_16)
	ld	t2, %lo(.LCPI1_16)(t2)
	sd	a3, 128(a0)
	sd	a5, 136(a0)
	sd	t1, 160(a0)
	sd	t2, 184(a0)
	sd	t0, 192(a0)
	lui	t0, %hi(.LCPI1_18)
	ld	t4, %lo(.LCPI1_18)(t0)
	sd	t3, 200(a0)
	lui	t0, %hi(.LCPI1_17)
	ld	t0, %lo(.LCPI1_17)(t0)
	sd	t4, 224(a0)
	lui	t3, %hi(.LCPI1_19)
	ld	t3, %lo(.LCPI1_19)(t3)
	sd	a7, 208(a0)
	sd	t0, 216(a0)
	sd	a1, 232(a0)
	sd	t3, 240(a0)
	lui	t3, %hi(.LCPI1_21)
	ld	t3, %lo(.LCPI1_21)(t3)
	sd	a6, 256(a0)
	lui	a6, %hi(.LCPI1_22)
	ld	a6, %lo(.LCPI1_22)(a6)
	sd	t3, 264(a0)
	lui	t3, %hi(.LCPI1_23)
	ld	t3, %lo(.LCPI1_23)(t3)
	sd	a6, 272(a0)
	lui	a6, %hi(.LCPI1_24)
	ld	a6, %lo(.LCPI1_24)(a6)
	sd	t3, 280(a0)
	lui	t3, %hi(.LCPI1_25)
	ld	t3, %lo(.LCPI1_25)(t3)
	sd	a6, 288(a0)
	lui	a6, %hi(.LCPI1_26)
	ld	a6, %lo(.LCPI1_26)(a6)
	sd	t3, 296(a0)
	lui	t3, %hi(.LCPI1_27)
	ld	t3, %lo(.LCPI1_27)(t3)
	sd	a6, 304(a0)
	lui	a6, %hi(.LCPI1_20)
	ld	a6, %lo(.LCPI1_20)(a6)
	sd	t3, 312(a0)
	lui	t3, %hi(.LCPI1_28)
	ld	t3, %lo(.LCPI1_28)(t3)
	sd	a6, 248(a0)
	sd	a4, 320(a0)
	sd	a7, 328(a0)
	sd	t3, 336(a0)
	lui	a4, %hi(.LCPI1_29)
	ld	a4, %lo(.LCPI1_29)(a4)
	sd	a6, 352(a0)
	lui	a6, %hi(.LCPI1_30)
	ld	a6, %lo(.LCPI1_30)(a6)
	lui	a7, %hi(.LCPI1_31)
	ld	a7, %lo(.LCPI1_31)(a7)
	lui	t3, %hi(.LCPI1_32)
	ld	t3, %lo(.LCPI1_32)(t3)
	sd	a4, 344(a0)
	sd	a6, 360(a0)
	sd	a7, 368(a0)
	sd	t3, 376(a0)
	lui	a6, %hi(.LCPI1_33)
	ld	a6, %lo(.LCPI1_33)(a6)
	sd	a5, 384(a0)
	sd	t1, 392(a0)
	sd	t2, 400(a0)
	sd	a6, 408(a0)
	lui	a5, %hi(.LCPI1_34)
	ld	a5, %lo(.LCPI1_34)(a5)
	lui	a6, %hi(.LCPI1_35)
	ld	a6, %lo(.LCPI1_35)(a6)
	lui	a7, %hi(.LCPI1_36)
	ld	a7, %lo(.LCPI1_36)(a7)
	sd	a5, 416(a0)
	sd	a3, 424(a0)
	sd	a6, 432(a0)
	sd	a7, 440(a0)
	lui	a3, %hi(.LCPI1_37)
	ld	a3, %lo(.LCPI1_37)(a3)
	sd	a2, 448(a0)
	sd	t0, 456(a0)
	sd	a4, 464(a0)
	sd	a3, 472(a0)
	lui	a2, %hi(.LCPI1_38)
	ld	a2, %lo(.LCPI1_38)(a2)
	lui	a3, %hi(.LCPI1_39)
	ld	a3, %lo(.LCPI1_39)(a3)
	lui	a4, %hi(.LCPI1_40)
	ld	a4, %lo(.LCPI1_40)(a4)
	sd	a1, 480(a0)
	sd	a2, 488(a0)
	sd	a3, 496(a0)
	sd	a4, 504(a0)
	ret
.Lfunc_end1:
	.size	init_idctref, .Lfunc_end1-init_idctref
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function idctref
.LCPI2_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	idctref
	.p2align	2
	.type	idctref,@function
idctref:                                # @idctref
# %bb.0:
	addi	sp, sp, -1232
	fsd	fs0, 1224(sp)                   # 8-byte Folded Spill
	fsd	fs1, 1216(sp)                   # 8-byte Folded Spill
	fsd	fs2, 1208(sp)                   # 8-byte Folded Spill
	fsd	fs3, 1200(sp)                   # 8-byte Folded Spill
	fsd	fs4, 1192(sp)                   # 8-byte Folded Spill
	fsd	fs5, 1184(sp)                   # 8-byte Folded Spill
	fsd	fs6, 1176(sp)                   # 8-byte Folded Spill
	fsd	fs7, 1168(sp)                   # 8-byte Folded Spill
	fsd	fs8, 1160(sp)                   # 8-byte Folded Spill
	fsd	fs9, 1152(sp)                   # 8-byte Folded Spill
	fsd	fs10, 1144(sp)                  # 8-byte Folded Spill
	fsd	fs11, 1136(sp)                  # 8-byte Folded Spill
	lui	a2, %hi(zigzag)
	lw	a3, %lo(zigzag)(a2)
	addi	a2, a2, %lo(zigzag)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	lw	a4, 4(a2)
	sw	a3, 368(sp)
	slli	a4, a4, 2
	lw	a3, 8(a2)
	add	a4, a0, a4
	lw	a4, 0(a4)
	lw	a5, 12(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 16(a2)
	sw	a4, 372(sp)
	sw	a3, 376(sp)
	sw	a5, 380(sp)
	slli	a6, a6, 2
	lw	a3, 20(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 24(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 28(a2)
	sw	a4, 384(sp)
	sw	a3, 388(sp)
	sw	a5, 392(sp)
	slli	a6, a6, 2
	lw	a3, 32(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 36(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 40(a2)
	sw	a4, 396(sp)
	sw	a3, 400(sp)
	sw	a5, 404(sp)
	slli	a6, a6, 2
	lw	a3, 44(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 48(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 52(a2)
	sw	a4, 408(sp)
	sw	a3, 412(sp)
	sw	a5, 416(sp)
	slli	a6, a6, 2
	lw	a3, 56(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 60(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 64(a2)
	sw	a4, 420(sp)
	sw	a3, 424(sp)
	sw	a5, 428(sp)
	slli	a6, a6, 2
	lw	a3, 68(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 72(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 76(a2)
	sw	a4, 432(sp)
	sw	a3, 436(sp)
	sw	a5, 440(sp)
	slli	a6, a6, 2
	lw	a3, 80(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 84(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 88(a2)
	sw	a4, 444(sp)
	sw	a3, 448(sp)
	sw	a5, 452(sp)
	slli	a6, a6, 2
	lw	a3, 92(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 96(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 100(a2)
	sw	a4, 456(sp)
	sw	a3, 460(sp)
	sw	a5, 464(sp)
	slli	a6, a6, 2
	lw	a3, 104(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 108(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 112(a2)
	sw	a4, 468(sp)
	sw	a3, 472(sp)
	sw	a5, 476(sp)
	slli	a6, a6, 2
	lw	a3, 116(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 120(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 124(a2)
	sw	a4, 480(sp)
	sw	a3, 484(sp)
	sw	a5, 488(sp)
	slli	a6, a6, 2
	lw	a3, 128(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 132(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 136(a2)
	sw	a4, 492(sp)
	sw	a3, 496(sp)
	sw	a5, 500(sp)
	slli	a6, a6, 2
	lw	a3, 140(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 144(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 148(a2)
	sw	a4, 504(sp)
	sw	a3, 508(sp)
	sw	a5, 512(sp)
	slli	a6, a6, 2
	lw	a3, 152(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 156(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 160(a2)
	sw	a4, 516(sp)
	sw	a3, 520(sp)
	sw	a5, 524(sp)
	slli	a6, a6, 2
	lw	a3, 164(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 168(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 172(a2)
	sw	a4, 528(sp)
	sw	a3, 532(sp)
	sw	a5, 536(sp)
	slli	a6, a6, 2
	lw	a3, 176(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 180(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 184(a2)
	sw	a4, 540(sp)
	sw	a3, 544(sp)
	sw	a5, 548(sp)
	slli	a6, a6, 2
	lw	a3, 188(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 192(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 196(a2)
	sw	a4, 552(sp)
	sw	a3, 556(sp)
	sw	a5, 560(sp)
	slli	a6, a6, 2
	lw	a3, 200(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 204(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 208(a2)
	sw	a4, 564(sp)
	sw	a3, 568(sp)
	sw	a5, 572(sp)
	slli	a6, a6, 2
	lw	a3, 212(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 216(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 220(a2)
	sw	a4, 576(sp)
	sw	a3, 580(sp)
	sw	a5, 584(sp)
	slli	a6, a6, 2
	lw	a3, 224(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 228(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	lw	a6, 232(a2)
	sw	a4, 588(sp)
	sw	a3, 592(sp)
	sw	a5, 596(sp)
	slli	a6, a6, 2
	lw	a3, 236(a2)
	add	a6, a0, a6
	lw	a4, 0(a6)
	lw	a5, 240(a2)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	slli	a5, a5, 2
	add	a5, a0, a5
	lw	a5, 0(a5)
	sw	a4, 600(sp)
	lw	a4, 244(a2)
	sw	a3, 604(sp)
	sw	a5, 608(sp)
	lw	a3, 248(a2)
	slli	a4, a4, 2
	add	a4, a0, a4
	lw	a4, 0(a4)
	slli	a3, a3, 2
	add	a3, a0, a3
	lw	a3, 0(a3)
	lw	a5, 252(a2)
	sw	a4, 612(sp)
	addi	a2, sp, 384
	sw	a3, 616(sp)
	slli	a5, a5, 2
	add	a0, a0, a5
	lw	a0, 0(a0)
	lui	a3, %hi(c)
	fld	fa5, %lo(c)(a3)
	fsd	fa5, 360(sp)                    # 8-byte Folded Spill
	addi	a3, a3, %lo(c)
	fld	fa5, 64(a3)
	fsd	fa5, 352(sp)                    # 8-byte Folded Spill
	fld	fa5, 128(a3)
	fsd	fa5, 344(sp)                    # 8-byte Folded Spill
	fld	fa5, 192(a3)
	fsd	fa5, 336(sp)                    # 8-byte Folded Spill
	fld	fa5, 256(a3)
	fsd	fa5, 328(sp)                    # 8-byte Folded Spill
	fld	fa5, 320(a3)
	fsd	fa5, 320(sp)                    # 8-byte Folded Spill
	fld	fa5, 384(a3)
	fsd	fa5, 312(sp)                    # 8-byte Folded Spill
	fld	fa5, 448(a3)
	fsd	fa5, 304(sp)                    # 8-byte Folded Spill
	fld	fa5, 8(a3)
	fsd	fa5, 296(sp)                    # 8-byte Folded Spill
	fld	fa5, 72(a3)
	fsd	fa5, 288(sp)                    # 8-byte Folded Spill
	fld	fa5, 136(a3)
	fsd	fa5, 280(sp)                    # 8-byte Folded Spill
	fld	fa5, 200(a3)
	fsd	fa5, 272(sp)                    # 8-byte Folded Spill
	fld	fa5, 264(a3)
	fsd	fa5, 264(sp)                    # 8-byte Folded Spill
	fld	fa5, 328(a3)
	fsd	fa5, 256(sp)                    # 8-byte Folded Spill
	fld	fa5, 392(a3)
	fsd	fa5, 248(sp)                    # 8-byte Folded Spill
	fld	fa5, 456(a3)
	fsd	fa5, 240(sp)                    # 8-byte Folded Spill
	fld	fa5, 16(a3)
	fsd	fa5, 232(sp)                    # 8-byte Folded Spill
	fld	fa5, 80(a3)
	fsd	fa5, 224(sp)                    # 8-byte Folded Spill
	fld	fa5, 144(a3)
	fsd	fa5, 216(sp)                    # 8-byte Folded Spill
	fld	fa5, 208(a3)
	fsd	fa5, 208(sp)                    # 8-byte Folded Spill
	fld	fa5, 272(a3)
	fsd	fa5, 200(sp)                    # 8-byte Folded Spill
	fld	fa5, 336(a3)
	fsd	fa5, 192(sp)                    # 8-byte Folded Spill
	fld	fa5, 400(a3)
	fsd	fa5, 184(sp)                    # 8-byte Folded Spill
	fld	fa5, 464(a3)
	fsd	fa5, 176(sp)                    # 8-byte Folded Spill
	fld	fa5, 24(a3)
	fsd	fa5, 168(sp)                    # 8-byte Folded Spill
	fld	fa5, 88(a3)
	fsd	fa5, 160(sp)                    # 8-byte Folded Spill
	fld	fa5, 152(a3)
	fsd	fa5, 152(sp)                    # 8-byte Folded Spill
	fld	fa5, 216(a3)
	fsd	fa5, 144(sp)                    # 8-byte Folded Spill
	fld	fa5, 280(a3)
	fsd	fa5, 136(sp)                    # 8-byte Folded Spill
	fld	fa5, 344(a3)
	fsd	fa5, 128(sp)                    # 8-byte Folded Spill
	fld	fa5, 408(a3)
	fsd	fa5, 120(sp)                    # 8-byte Folded Spill
	fld	fa5, 472(a3)
	fsd	fa5, 112(sp)                    # 8-byte Folded Spill
	fld	fa5, 32(a3)
	fsd	fa5, 104(sp)                    # 8-byte Folded Spill
	fld	fa5, 96(a3)
	fsd	fa5, 96(sp)                     # 8-byte Folded Spill
	fld	fa5, 160(a3)
	fsd	fa5, 88(sp)                     # 8-byte Folded Spill
	fld	fa5, 224(a3)
	fsd	fa5, 80(sp)                     # 8-byte Folded Spill
	fld	fa5, 288(a3)
	fsd	fa5, 72(sp)                     # 8-byte Folded Spill
	fld	fa5, 352(a3)
	fsd	fa5, 64(sp)                     # 8-byte Folded Spill
	fld	fa5, 416(a3)
	fsd	fa5, 56(sp)                     # 8-byte Folded Spill
	fld	fa5, 480(a3)
	fsd	fa5, 48(sp)                     # 8-byte Folded Spill
	fld	fa5, 40(a3)
	fsd	fa5, 40(sp)                     # 8-byte Folded Spill
	fld	fa5, 104(a3)
	fsd	fa5, 32(sp)                     # 8-byte Folded Spill
	fld	fa5, 168(a3)
	fsd	fa5, 24(sp)                     # 8-byte Folded Spill
	fld	ft7, 232(a3)
	fld	fa6, 296(a3)
	fld	fa7, 360(a3)
	fld	ft8, 424(a3)
	fld	ft9, 488(a3)
	fld	ft10, 48(a3)
	fld	ft11, 112(a3)
	fld	fs0, 176(a3)
	fld	fs1, 240(a3)
	fld	fs2, 304(a3)
	fld	fs3, 368(a3)
	fld	fs4, 432(a3)
	fld	fs5, 496(a3)
	fld	fs6, 56(a3)
	fld	fs7, 120(a3)
	fld	fs8, 184(a3)
	fld	fs9, 248(a3)
	fld	fs10, 312(a3)
	fld	fs11, 376(a3)
	fld	fa4, 440(a3)
	fld	fa3, 504(a3)
	sw	a0, 620(sp)
	addi	a0, sp, 656
	addi	a3, sp, 1168
	fmv.d.x	fa5, zero
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	lw	a4, -16(a2)
	lw	a5, -12(a2)
	fcvt.d.w	fa2, a4
	lw	a4, -8(a2)
	lw	a6, -4(a2)
	fcvt.d.w	fa1, a5
	lw	a5, 0(a2)
	fcvt.d.w	fa0, a4
	fcvt.d.w	ft0, a6
	lw	a4, 4(a2)
	fcvt.d.w	ft1, a5
	fld	ft2, 360(sp)                    # 8-byte Folded Reload
	fmadd.d	ft3, ft2, fa2, fa5
	fcvt.d.w	ft2, a4
	lw	a4, 8(a2)
	fld	ft4, 352(sp)                    # 8-byte Folded Reload
	fmadd.d	ft3, ft4, fa1, ft3
	fld	ft4, 344(sp)                    # 8-byte Folded Reload
	fmadd.d	ft3, ft4, fa0, ft3
	fld	ft4, 336(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft4, ft0, ft3
	fcvt.d.w	ft3, a4
	lw	a4, 12(a2)
	fld	ft5, 328(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft5, ft1, ft4
	fld	ft5, 320(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft5, ft2, ft4
	fld	ft5, 312(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft5, ft3, ft4
	fcvt.d.w	ft5, a4
	fld	ft6, 304(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft5, ft4
	fsd	ft4, -32(a0)
	fld	ft4, 296(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft4, fa2, fa5
	fld	ft6, 288(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa1, ft4
	fld	ft6, 280(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa0, ft4
	fld	ft6, 272(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft0, ft4
	fld	ft6, 264(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft1, ft4
	fld	ft6, 256(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft2, ft4
	fld	ft6, 248(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft3, ft4
	fld	ft6, 240(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft5, ft4
	fsd	ft4, -24(a0)
	fld	ft4, 232(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft4, fa2, fa5
	fld	ft6, 224(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa1, ft4
	fld	ft6, 216(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa0, ft4
	fld	ft6, 208(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft0, ft4
	fld	ft6, 200(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft1, ft4
	fld	ft6, 192(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft2, ft4
	fld	ft6, 184(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft3, ft4
	fld	ft6, 176(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft5, ft4
	fsd	ft4, -16(a0)
	fld	ft4, 168(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft4, fa2, fa5
	fld	ft6, 160(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa1, ft4
	fld	ft6, 152(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa0, ft4
	fld	ft6, 144(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft0, ft4
	fld	ft6, 136(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft1, ft4
	fld	ft6, 128(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft2, ft4
	fld	ft6, 120(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft3, ft4
	fld	ft6, 112(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft5, ft4
	fsd	ft4, -8(a0)
	fld	ft4, 104(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft4, fa2, fa5
	fld	ft6, 96(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa1, ft4
	fld	ft6, 88(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa0, ft4
	fld	ft6, 80(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft0, ft4
	fld	ft6, 72(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft1, ft4
	fld	ft6, 64(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft2, ft4
	fld	ft6, 56(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft3, ft4
	fld	ft6, 48(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft5, ft4
	fsd	ft4, 0(a0)
	fld	ft4, 40(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft4, fa2, fa5
	fld	ft6, 32(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa1, ft4
	fld	ft6, 24(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa0, ft4
	fmadd.d	ft4, ft7, ft0, ft4
	fmadd.d	ft4, fa6, ft1, ft4
	fmadd.d	ft4, fa7, ft2, ft4
	fmadd.d	ft4, ft8, ft3, ft4
	fmadd.d	ft4, ft9, ft5, ft4
	fsd	ft4, 8(a0)
	fmadd.d	ft4, ft10, fa2, fa5
	fmadd.d	ft4, ft11, fa1, ft4
	fmadd.d	ft4, fs0, fa0, ft4
	fmadd.d	ft4, fs1, ft0, ft4
	fmadd.d	ft4, fs2, ft1, ft4
	fmadd.d	ft4, fs3, ft2, ft4
	fmadd.d	ft4, fs4, ft3, ft4
	fmadd.d	ft4, fs5, ft5, ft4
	fsd	ft4, 16(a0)
	fmadd.d	fa2, fs6, fa2, fa5
	fmadd.d	fa2, fs7, fa1, fa2
	fmadd.d	fa2, fs8, fa0, fa2
	fmadd.d	fa2, fs9, ft0, fa2
	fmadd.d	fa2, fs10, ft1, fa2
	fmadd.d	fa2, fs11, ft2, fa2
	fmadd.d	fa2, fa4, ft3, fa2
	fmadd.d	fa2, fa3, ft5, fa2
	fsd	fa2, 24(a0)
	addi	a0, a0, 64
	addi	a2, a2, 32
	bne	a0, a3, .LBB2_1
# %bb.2:
	lui	a0, %hi(c)
	fld	fa4, %lo(c)(a0)
	fsd	fa4, 360(sp)                    # 8-byte Folded Spill
	addi	a0, a0, %lo(c)
	fld	fa4, 64(a0)
	fsd	fa4, 352(sp)                    # 8-byte Folded Spill
	fld	fa4, 128(a0)
	fsd	fa4, 344(sp)                    # 8-byte Folded Spill
	fld	fa4, 192(a0)
	fsd	fa4, 336(sp)                    # 8-byte Folded Spill
	fld	fa4, 256(a0)
	fsd	fa4, 328(sp)                    # 8-byte Folded Spill
	fld	fa4, 320(a0)
	fsd	fa4, 320(sp)                    # 8-byte Folded Spill
	fld	fa4, 384(a0)
	fsd	fa4, 312(sp)                    # 8-byte Folded Spill
	fld	fa4, 448(a0)
	fsd	fa4, 304(sp)                    # 8-byte Folded Spill
	fld	fa4, 8(a0)
	fsd	fa4, 296(sp)                    # 8-byte Folded Spill
	fld	fa4, 72(a0)
	fsd	fa4, 288(sp)                    # 8-byte Folded Spill
	fld	fa4, 136(a0)
	fsd	fa4, 280(sp)                    # 8-byte Folded Spill
	fld	fa4, 200(a0)
	fsd	fa4, 272(sp)                    # 8-byte Folded Spill
	fld	fa4, 264(a0)
	fsd	fa4, 264(sp)                    # 8-byte Folded Spill
	fld	fa4, 328(a0)
	fsd	fa4, 256(sp)                    # 8-byte Folded Spill
	fld	fa4, 392(a0)
	fsd	fa4, 248(sp)                    # 8-byte Folded Spill
	fld	fa4, 456(a0)
	fsd	fa4, 240(sp)                    # 8-byte Folded Spill
	fld	fa4, 16(a0)
	fsd	fa4, 232(sp)                    # 8-byte Folded Spill
	fld	fa4, 80(a0)
	fsd	fa4, 224(sp)                    # 8-byte Folded Spill
	fld	fa4, 144(a0)
	fsd	fa4, 216(sp)                    # 8-byte Folded Spill
	fld	fa4, 208(a0)
	fsd	fa4, 208(sp)                    # 8-byte Folded Spill
	fld	fa4, 272(a0)
	fsd	fa4, 200(sp)                    # 8-byte Folded Spill
	fld	fa4, 336(a0)
	fsd	fa4, 192(sp)                    # 8-byte Folded Spill
	fld	fa4, 400(a0)
	fsd	fa4, 184(sp)                    # 8-byte Folded Spill
	fld	fa4, 464(a0)
	fsd	fa4, 176(sp)                    # 8-byte Folded Spill
	fld	fa4, 24(a0)
	fsd	fa4, 168(sp)                    # 8-byte Folded Spill
	fld	fa4, 88(a0)
	fsd	fa4, 160(sp)                    # 8-byte Folded Spill
	fld	fa4, 152(a0)
	fsd	fa4, 152(sp)                    # 8-byte Folded Spill
	fld	fa4, 216(a0)
	fsd	fa4, 144(sp)                    # 8-byte Folded Spill
	fld	fa4, 280(a0)
	fsd	fa4, 136(sp)                    # 8-byte Folded Spill
	fld	fa4, 344(a0)
	fsd	fa4, 128(sp)                    # 8-byte Folded Spill
	fld	fa4, 408(a0)
	fsd	fa4, 120(sp)                    # 8-byte Folded Spill
	fld	fa4, 472(a0)
	fsd	fa4, 112(sp)                    # 8-byte Folded Spill
	lui	a2, %hi(.LCPI2_0)
	fld	fa4, 32(a0)
	fsd	fa4, 104(sp)                    # 8-byte Folded Spill
	fld	fa4, 96(a0)
	fsd	fa4, 96(sp)                     # 8-byte Folded Spill
	fld	fa4, 160(a0)
	fsd	fa4, 88(sp)                     # 8-byte Folded Spill
	fld	fa4, 224(a0)
	fsd	fa4, 80(sp)                     # 8-byte Folded Spill
	fld	fa4, 288(a0)
	fsd	fa4, 72(sp)                     # 8-byte Folded Spill
	fld	fa4, 352(a0)
	fsd	fa4, 64(sp)                     # 8-byte Folded Spill
	fld	fa4, 416(a0)
	fsd	fa4, 56(sp)                     # 8-byte Folded Spill
	fld	fa4, 480(a0)
	fsd	fa4, 48(sp)                     # 8-byte Folded Spill
	fld	fa4, 40(a0)
	fsd	fa4, 40(sp)                     # 8-byte Folded Spill
	fld	fa4, 104(a0)
	fsd	fa4, 32(sp)                     # 8-byte Folded Spill
	fld	fa4, 168(a0)
	fsd	fa4, 24(sp)                     # 8-byte Folded Spill
	fld	fa4, 232(a0)
	fsd	fa4, 16(sp)                     # 8-byte Folded Spill
	fld	fa6, 296(a0)
	fld	fa7, 360(a0)
	fld	ft8, 424(a0)
	fld	ft9, 488(a0)
	fld	ft10, 48(a0)
	fld	ft11, 112(a0)
	fld	fs0, 176(a0)
	fld	fs1, 240(a0)
	fld	fs2, 304(a0)
	fld	fs3, 368(a0)
	fld	fs4, 432(a0)
	fld	fs5, 496(a0)
	fld	fs6, 56(a0)
	fld	fs7, 120(a0)
	fld	fs8, 184(a0)
	fld	fs9, 248(a0)
	fld	fs10, 312(a0)
	fld	fs11, 376(a0)
	fld	fa4, 440(a0)
	fld	fa3, 504(a0)
	fld	fa2, %lo(.LCPI2_0)(a2)
	addi	a0, a1, 128
	addi	a2, sp, 880
	addi	a1, a1, 160
	li	a3, 255
	li	a4, -256
	j	.LBB2_4
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	sw	a6, 96(a0)
	addi	a0, a0, 4
	addi	a2, a2, 8
	beq	a0, a1, .LBB2_36
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	fld	fa1, 192(a2)
	fld	fa0, 128(a2)
	fld	ft0, 64(a2)
	fld	ft1, 0(a2)
	fld	ft5, -256(a2)
	fld	ft4, -192(a2)
	fld	ft3, -128(a2)
	fld	ft2, -64(a2)
	fld	ft6, 360(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft6, ft5, fa5
	fld	ft7, 352(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft4, ft6
	fld	ft7, 344(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft3, ft6
	fld	ft7, 336(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft2, ft6
	fld	ft7, 328(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft1, ft6
	fld	ft7, 320(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft0, ft6
	fld	ft7, 312(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa0, ft6
	fld	ft7, 304(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa1, ft6
	fadd.d	ft6, ft6, fa2
	fcvt.w.d	a5, ft6, rdn
	blt	a5, a3, .LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	li	a5, 255
.LBB2_6:                                #   in Loop: Header=BB2_4 Depth=1
	blt	a4, a5, .LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_4 Depth=1
	li	a5, -256
.LBB2_8:                                #   in Loop: Header=BB2_4 Depth=1
	fld	ft6, 296(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft6, ft5, fa5
	fld	ft7, 288(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft4, ft6
	fld	ft7, 280(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft3, ft6
	fld	ft7, 272(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft2, ft6
	fld	ft7, 264(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft1, ft6
	fld	ft7, 256(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft0, ft6
	fld	ft7, 248(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa0, ft6
	fld	ft7, 240(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa1, ft6
	fadd.d	ft6, ft6, fa2
	fcvt.w.d	a6, ft6, rdn
	sw	a5, -128(a0)
	blt	a6, a3, .LBB2_10
# %bb.9:                                #   in Loop: Header=BB2_4 Depth=1
	li	a6, 255
.LBB2_10:                               #   in Loop: Header=BB2_4 Depth=1
	blt	a4, a6, .LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_4 Depth=1
	li	a6, -256
.LBB2_12:                               #   in Loop: Header=BB2_4 Depth=1
	fld	ft6, 232(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft6, ft5, fa5
	fld	ft7, 224(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft4, ft6
	fld	ft7, 216(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft3, ft6
	fld	ft7, 208(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft2, ft6
	fld	ft7, 200(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft1, ft6
	fld	ft7, 192(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft0, ft6
	fld	ft7, 184(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa0, ft6
	fld	ft7, 176(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa1, ft6
	fadd.d	ft6, ft6, fa2
	fcvt.w.d	a5, ft6, rdn
	sw	a6, -96(a0)
	blt	a5, a3, .LBB2_14
# %bb.13:                               #   in Loop: Header=BB2_4 Depth=1
	li	a5, 255
.LBB2_14:                               #   in Loop: Header=BB2_4 Depth=1
	blt	a4, a5, .LBB2_16
# %bb.15:                               #   in Loop: Header=BB2_4 Depth=1
	li	a5, -256
.LBB2_16:                               #   in Loop: Header=BB2_4 Depth=1
	fld	ft6, 168(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft6, ft5, fa5
	fld	ft7, 160(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft4, ft6
	fld	ft7, 152(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft3, ft6
	fld	ft7, 144(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft2, ft6
	fld	ft7, 136(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft1, ft6
	fld	ft7, 128(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft0, ft6
	fld	ft7, 120(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa0, ft6
	fld	ft7, 112(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa1, ft6
	fadd.d	ft6, ft6, fa2
	fcvt.w.d	a6, ft6, rdn
	sw	a5, -64(a0)
	blt	a6, a3, .LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_4 Depth=1
	li	a6, 255
.LBB2_18:                               #   in Loop: Header=BB2_4 Depth=1
	blt	a4, a6, .LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_4 Depth=1
	li	a6, -256
.LBB2_20:                               #   in Loop: Header=BB2_4 Depth=1
	fld	ft6, 104(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft6, ft5, fa5
	fld	ft7, 96(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft4, ft6
	fld	ft7, 88(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft3, ft6
	fld	ft7, 80(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft2, ft6
	fld	ft7, 72(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft1, ft6
	fld	ft7, 64(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft0, ft6
	fld	ft7, 56(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa0, ft6
	fld	ft7, 48(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa1, ft6
	fadd.d	ft6, ft6, fa2
	fcvt.w.d	a5, ft6, rdn
	sw	a6, -32(a0)
	blt	a5, a3, .LBB2_22
# %bb.21:                               #   in Loop: Header=BB2_4 Depth=1
	li	a5, 255
.LBB2_22:                               #   in Loop: Header=BB2_4 Depth=1
	blt	a4, a5, .LBB2_24
# %bb.23:                               #   in Loop: Header=BB2_4 Depth=1
	li	a5, -256
.LBB2_24:                               #   in Loop: Header=BB2_4 Depth=1
	fld	ft6, 40(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft6, ft5, fa5
	fld	ft7, 32(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft4, ft6
	fld	ft7, 24(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft3, ft6
	fld	ft7, 16(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft2, ft6
	fmadd.d	ft6, fa6, ft1, ft6
	fmadd.d	ft6, fa7, ft0, ft6
	fmadd.d	ft6, ft8, fa0, ft6
	fmadd.d	ft6, ft9, fa1, ft6
	fadd.d	ft6, ft6, fa2
	fcvt.w.d	a6, ft6, rdn
	sw	a5, 0(a0)
	blt	a6, a3, .LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_4 Depth=1
	li	a6, 255
.LBB2_26:                               #   in Loop: Header=BB2_4 Depth=1
	blt	a4, a6, .LBB2_28
# %bb.27:                               #   in Loop: Header=BB2_4 Depth=1
	li	a6, -256
.LBB2_28:                               #   in Loop: Header=BB2_4 Depth=1
	fmadd.d	ft6, ft10, ft5, fa5
	fmadd.d	ft6, ft11, ft4, ft6
	fmadd.d	ft6, fs0, ft3, ft6
	fmadd.d	ft6, fs1, ft2, ft6
	fmadd.d	ft6, fs2, ft1, ft6
	fmadd.d	ft6, fs3, ft0, ft6
	fmadd.d	ft6, fs4, fa0, ft6
	fmadd.d	ft6, fs5, fa1, ft6
	fadd.d	ft6, ft6, fa2
	fcvt.w.d	a5, ft6, rdn
	sw	a6, 32(a0)
	blt	a5, a3, .LBB2_30
# %bb.29:                               #   in Loop: Header=BB2_4 Depth=1
	li	a5, 255
.LBB2_30:                               #   in Loop: Header=BB2_4 Depth=1
	blt	a4, a5, .LBB2_32
# %bb.31:                               #   in Loop: Header=BB2_4 Depth=1
	li	a5, -256
.LBB2_32:                               #   in Loop: Header=BB2_4 Depth=1
	fmadd.d	ft5, fs6, ft5, fa5
	fmadd.d	ft4, fs7, ft4, ft5
	fmadd.d	ft3, fs8, ft3, ft4
	fmadd.d	ft2, fs9, ft2, ft3
	fmadd.d	ft1, fs10, ft1, ft2
	fmadd.d	ft0, fs11, ft0, ft1
	fmadd.d	fa0, fa4, fa0, ft0
	fmadd.d	fa1, fa3, fa1, fa0
	fadd.d	fa1, fa1, fa2
	fcvt.w.d	a6, fa1, rdn
	sw	a5, 64(a0)
	bge	a6, a3, .LBB2_34
# %bb.33:                               #   in Loop: Header=BB2_4 Depth=1
	blt	a4, a6, .LBB2_3
	j	.LBB2_35
.LBB2_34:                               #   in Loop: Header=BB2_4 Depth=1
	li	a6, 255
	blt	a4, a6, .LBB2_3
.LBB2_35:                               #   in Loop: Header=BB2_4 Depth=1
	li	a6, -256
	j	.LBB2_3
.LBB2_36:
	fld	fs0, 1224(sp)                   # 8-byte Folded Reload
	fld	fs1, 1216(sp)                   # 8-byte Folded Reload
	fld	fs2, 1208(sp)                   # 8-byte Folded Reload
	fld	fs3, 1200(sp)                   # 8-byte Folded Reload
	fld	fs4, 1192(sp)                   # 8-byte Folded Reload
	fld	fs5, 1184(sp)                   # 8-byte Folded Reload
	fld	fs6, 1176(sp)                   # 8-byte Folded Reload
	fld	fs7, 1168(sp)                   # 8-byte Folded Reload
	fld	fs8, 1160(sp)                   # 8-byte Folded Reload
	fld	fs9, 1152(sp)                   # 8-byte Folded Reload
	fld	fs10, 1144(sp)                  # 8-byte Folded Reload
	fld	fs11, 1136(sp)                  # 8-byte Folded Reload
	addi	sp, sp, 1232
	ret
.Lfunc_end2:
	.size	idctref, .Lfunc_end2-idctref
                                        # -- End function
	.option	pop
	.type	zigzag,@object                  # @zigzag
	.data
	.globl	zigzag
	.p2align	2, 0x0
zigzag:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	26                              # 0x1a
	.word	29                              # 0x1d
	.word	42                              # 0x2a
	.word	3                               # 0x3
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	17                              # 0x11
	.word	25                              # 0x19
	.word	30                              # 0x1e
	.word	41                              # 0x29
	.word	43                              # 0x2b
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	31                              # 0x1f
	.word	40                              # 0x28
	.word	44                              # 0x2c
	.word	53                              # 0x35
	.word	10                              # 0xa
	.word	19                              # 0x13
	.word	23                              # 0x17
	.word	32                              # 0x20
	.word	39                              # 0x27
	.word	45                              # 0x2d
	.word	52                              # 0x34
	.word	54                              # 0x36
	.word	20                              # 0x14
	.word	22                              # 0x16
	.word	33                              # 0x21
	.word	38                              # 0x26
	.word	46                              # 0x2e
	.word	51                              # 0x33
	.word	55                              # 0x37
	.word	60                              # 0x3c
	.word	21                              # 0x15
	.word	34                              # 0x22
	.word	37                              # 0x25
	.word	47                              # 0x2f
	.word	50                              # 0x32
	.word	56                              # 0x38
	.word	59                              # 0x3b
	.word	61                              # 0x3d
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	57                              # 0x39
	.word	58                              # 0x3a
	.word	62                              # 0x3e
	.word	63                              # 0x3f
	.size	zigzag, 256

	.type	c,@object                       # @c
	.local	c
	.comm	c,512,8
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
