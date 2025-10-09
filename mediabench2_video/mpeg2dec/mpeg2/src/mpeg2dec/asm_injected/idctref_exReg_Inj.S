	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"idctref.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Initialize_Reference_IDCT
.LCPI0_0:
	.quad	4600040671590431693             # 0x3fd6a09e667f3bcd
.LCPI0_1:
	.quad	4602505748364614832             # 0x3fdf6297cff75cb0
.LCPI0_2:
	.quad	4601160832390177187             # 0x3fda9b66290ea1a3
.LCPI0_3:
	.quad	4598675751706716361             # 0x3fd1c73b39ae68c9
.LCPI0_4:
	.quad	4591693290275448333             # 0x3fb8f8b83c69a60d
.LCPI0_5:
	.quad	-4631678746579327480            # 0xbfb8f8b83c69a608
.LCPI0_6:
	.quad	-4624696285148059450            # 0xbfd1c73b39ae68c6
.LCPI0_7:
	.quad	-4622211204464598620            # 0xbfda9b66290ea1a4
.LCPI0_8:
	.quad	-4620866288490160976            # 0xbfdf6297cff75cb0
.LCPI0_9:
	.quad	4601993186954612038             # 0x3fdd906bcf328d46
.LCPI0_10:
	.quad	4596061832144136548             # 0x3fc87de2a6aea964
.LCPI0_11:
	.quad	-4627310204710639262            # 0xbfc87de2a6aea962
.LCPI0_12:
	.quad	-4621378849900163770            # 0xbfdd906bcf328d46
.LCPI0_13:
	.quad	-4621378849900163769            # 0xbfdd906bcf328d47
.LCPI0_14:
	.quad	-4627310204710639251            # 0xbfc87de2a6aea96d
.LCPI0_15:
	.quad	4596061832144136551             # 0x3fc87de2a6aea967
.LCPI0_16:
	.quad	4601993186954612036             # 0x3fdd906bcf328d44
.LCPI0_17:
	.quad	-4624696285148059448            # 0xbfd1c73b39ae68c8
.LCPI0_18:
	.quad	4598675751706716357             # 0x3fd1c73b39ae68c5
.LCPI0_19:
	.quad	4591693290275448349             # 0x3fb8f8b83c69a61d
.LCPI0_20:
	.quad	-4622211204464598622            # 0xbfda9b66290ea1a2
.LCPI0_21:
	.quad	-4623331365264344116            # 0xbfd6a09e667f3bcc
.LCPI0_22:
	.quad	-4623331365264344114            # 0xbfd6a09e667f3bce
.LCPI0_23:
	.quad	4600040671590431691             # 0x3fd6a09e667f3bcb
.LCPI0_24:
	.quad	4600040671590431694             # 0x3fd6a09e667f3bce
.LCPI0_25:
	.quad	-4623331365264344123            # 0xbfd6a09e667f3bc5
.LCPI0_26:
	.quad	-4623331365264344119            # 0xbfd6a09e667f3bc9
.LCPI0_27:
	.quad	4600040671590431684             # 0x3fd6a09e667f3bc4
.LCPI0_28:
	.quad	4591693290275448332             # 0x3fb8f8b83c69a60c
.LCPI0_29:
	.quad	4601160832390177189             # 0x3fda9b66290ea1a5
.LCPI0_30:
	.quad	-4631678746579327486            # 0xbfb8f8b83c69a602
.LCPI0_31:
	.quad	4602505748364614834             # 0x3fdf6297cff75cb2
.LCPI0_32:
	.quad	-4624696285148059454            # 0xbfd1c73b39ae68c2
.LCPI0_33:
	.quad	-4627310204710639259            # 0xbfc87de2a6aea965
.LCPI0_34:
	.quad	-4627310204710639247            # 0xbfc87de2a6aea971
.LCPI0_35:
	.quad	-4621378849900163773            # 0xbfdd906bcf328d43
.LCPI0_36:
	.quad	4596061832144136543             # 0x3fc87de2a6aea95f
.LCPI0_37:
	.quad	-4620866288490160974            # 0xbfdf6297cff75cb2
.LCPI0_38:
	.quad	-4622211204464598623            # 0xbfda9b66290ea1a1
.LCPI0_39:
	.quad	4598675751706716354             # 0x3fd1c73b39ae68c2
.LCPI0_40:
	.quad	-4631678746579327466            # 0xbfb8f8b83c69a616
	.text
	.globl	Initialize_Reference_IDCT
	.p2align	2
	.type	Initialize_Reference_IDCT,@function
Initialize_Reference_IDCT:              # @Initialize_Reference_IDCT
# %bb.0:
	lui	a0, %hi(.LCPI0_0)
	ld	a4, %lo(.LCPI0_0)(a0)
	lui	a0, %hi(c)
	sd	a4, %lo(c)(a0)
	addi	a0, a0, %lo(c)
	sd	a4, 8(a0)
	sd	a4, 16(a0)
	sd	a4, 24(a0)
	sd	a4, 32(a0)
	sd	a4, 40(a0)
	sd	a4, 48(a0)
	sd	a4, 56(a0)
	lui	a1, %hi(.LCPI0_1)
	ld	a1, %lo(.LCPI0_1)(a1)
	lui	a2, %hi(.LCPI0_2)
	ld	a5, %lo(.LCPI0_2)(a2)
	lui	a2, %hi(.LCPI0_3)
	ld	a6, %lo(.LCPI0_3)(a2)
	lui	a2, %hi(.LCPI0_4)
	ld	a2, %lo(.LCPI0_4)(a2)
	sd	a1, 64(a0)
	sd	a5, 72(a0)
	sd	a6, 80(a0)
	sd	a2, 88(a0)
	lui	a3, %hi(.LCPI0_5)
	ld	a7, %lo(.LCPI0_5)(a3)
	lui	a3, %hi(.LCPI0_6)
	ld	a3, %lo(.LCPI0_6)(a3)
	lui	t0, %hi(.LCPI0_7)
	ld	t0, %lo(.LCPI0_7)(t0)
	lui	t1, %hi(.LCPI0_8)
	ld	t1, %lo(.LCPI0_8)(t1)
	sd	a7, 96(a0)
	sd	a3, 104(a0)
	sd	t0, 112(a0)
	sd	t1, 120(a0)
	lui	a3, %hi(.LCPI0_9)
	ld	a3, %lo(.LCPI0_9)(a3)
	lui	t0, %hi(.LCPI0_10)
	lui	t2, %hi(.LCPI0_11)
	ld	t2, %lo(.LCPI0_11)(t2)
	ld	t0, %lo(.LCPI0_10)(t0)
	lui	t3, %hi(.LCPI0_12)
	ld	t3, %lo(.LCPI0_12)(t3)
	sd	t2, 144(a0)
	lui	t2, %hi(.LCPI0_14)
	ld	t2, %lo(.LCPI0_14)(t2)
	sd	t3, 152(a0)
	lui	t3, %hi(.LCPI0_15)
	ld	t3, %lo(.LCPI0_15)(t3)
	sd	t2, 168(a0)
	lui	t2, %hi(.LCPI0_13)
	ld	t2, %lo(.LCPI0_13)(t2)
	sd	t3, 176(a0)
	lui	t3, %hi(.LCPI0_16)
	ld	t3, %lo(.LCPI0_16)(t3)
	sd	a3, 128(a0)
	sd	t0, 136(a0)
	sd	t2, 160(a0)
	sd	t3, 184(a0)
	sd	a5, 192(a0)
	lui	a5, %hi(.LCPI0_18)
	ld	a5, %lo(.LCPI0_18)(a5)
	sd	a7, 200(a0)
	lui	a7, %hi(.LCPI0_17)
	ld	a7, %lo(.LCPI0_17)(a7)
	sd	a5, 224(a0)
	lui	a5, %hi(.LCPI0_19)
	ld	a5, %lo(.LCPI0_19)(a5)
	sd	t1, 208(a0)
	sd	a7, 216(a0)
	sd	a1, 232(a0)
	sd	a5, 240(a0)
	lui	a5, %hi(.LCPI0_21)
	ld	a5, %lo(.LCPI0_21)(a5)
	sd	a4, 256(a0)
	lui	a4, %hi(.LCPI0_22)
	ld	a4, %lo(.LCPI0_22)(a4)
	sd	a5, 264(a0)
	lui	a5, %hi(.LCPI0_23)
	ld	a5, %lo(.LCPI0_23)(a5)
	sd	a4, 272(a0)
	lui	a4, %hi(.LCPI0_24)
	ld	a4, %lo(.LCPI0_24)(a4)
	sd	a5, 280(a0)
	lui	a5, %hi(.LCPI0_25)
	ld	a5, %lo(.LCPI0_25)(a5)
	sd	a4, 288(a0)
	lui	a4, %hi(.LCPI0_26)
	ld	a4, %lo(.LCPI0_26)(a4)
	sd	a5, 296(a0)
	lui	a5, %hi(.LCPI0_27)
	ld	a5, %lo(.LCPI0_27)(a5)
	sd	a4, 304(a0)
	lui	a4, %hi(.LCPI0_20)
	ld	a4, %lo(.LCPI0_20)(a4)
	sd	a5, 312(a0)
	lui	a5, %hi(.LCPI0_28)
	ld	a5, %lo(.LCPI0_28)(a5)
	sd	a4, 248(a0)
	sd	a6, 320(a0)
	sd	t1, 328(a0)
	sd	a5, 336(a0)
	lui	a5, %hi(.LCPI0_29)
	ld	a5, %lo(.LCPI0_29)(a5)
	sd	a4, 352(a0)
	lui	a4, %hi(.LCPI0_30)
	ld	a4, %lo(.LCPI0_30)(a4)
	lui	a6, %hi(.LCPI0_31)
	ld	a6, %lo(.LCPI0_31)(a6)
	lui	t1, %hi(.LCPI0_32)
	ld	t1, %lo(.LCPI0_32)(t1)
	sd	a5, 344(a0)
	sd	a4, 360(a0)
	sd	a6, 368(a0)
	sd	t1, 376(a0)
	lui	a4, %hi(.LCPI0_33)
	ld	a4, %lo(.LCPI0_33)(a4)
	sd	t0, 384(a0)
	sd	t2, 392(a0)
	sd	t3, 400(a0)
	sd	a4, 408(a0)
	lui	a4, %hi(.LCPI0_34)
	ld	a4, %lo(.LCPI0_34)(a4)
	lui	a6, %hi(.LCPI0_35)
	ld	a6, %lo(.LCPI0_35)(a6)
	lui	t0, %hi(.LCPI0_36)
	ld	t0, %lo(.LCPI0_36)(t0)
	sd	a4, 416(a0)
	sd	a3, 424(a0)
	sd	a6, 432(a0)
	sd	t0, 440(a0)
	lui	a3, %hi(.LCPI0_37)
	ld	a3, %lo(.LCPI0_37)(a3)
	sd	a2, 448(a0)
	sd	a7, 456(a0)
	sd	a5, 464(a0)
	sd	a3, 472(a0)
	lui	a2, %hi(.LCPI0_38)
	ld	a2, %lo(.LCPI0_38)(a2)
	lui	a3, %hi(.LCPI0_39)
	ld	a3, %lo(.LCPI0_39)(a3)
	lui	a4, %hi(.LCPI0_40)
	ld	a4, %lo(.LCPI0_40)(a4)
	sd	a1, 480(a0)
	sd	a2, 488(a0)
	sd	a3, 496(a0)
	sd	a4, 504(a0)
	ret
.Lfunc_end0:
	.size	Initialize_Reference_IDCT, .Lfunc_end0-Initialize_Reference_IDCT
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Reference_IDCT
.LCPI1_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	Reference_IDCT
	.p2align	2
	.type	Reference_IDCT,@function
Reference_IDCT:                         # @Reference_IDCT
# %bb.0:
	addi	sp, sp, -960
	fsd	fs0, 952(sp)                    # 8-byte Folded Spill
	fsd	fs1, 944(sp)                    # 8-byte Folded Spill
	fsd	fs2, 936(sp)                    # 8-byte Folded Spill
	fsd	fs3, 928(sp)                    # 8-byte Folded Spill
	fsd	fs4, 920(sp)                    # 8-byte Folded Spill
	fsd	fs5, 912(sp)                    # 8-byte Folded Spill
	fsd	fs6, 904(sp)                    # 8-byte Folded Spill
	fsd	fs7, 896(sp)                    # 8-byte Folded Spill
	fsd	fs8, 888(sp)                    # 8-byte Folded Spill
	fsd	fs9, 880(sp)                    # 8-byte Folded Spill
	fsd	fs10, 872(sp)                   # 8-byte Folded Spill
	fsd	fs11, 864(sp)                   # 8-byte Folded Spill
	lui	a1, %hi(c)
	fld	fa5, %lo(c)(a1)
	fsd	fa5, 344(sp)                    # 8-byte Folded Spill
	addi	a1, a1, %lo(c)
	fld	fa5, 64(a1)
	fsd	fa5, 336(sp)                    # 8-byte Folded Spill
	fld	fa5, 128(a1)
	fsd	fa5, 328(sp)                    # 8-byte Folded Spill
	fld	fa5, 192(a1)
	fsd	fa5, 320(sp)                    # 8-byte Folded Spill
	fld	fa5, 256(a1)
	fsd	fa5, 312(sp)                    # 8-byte Folded Spill
	fld	fa5, 320(a1)
	fsd	fa5, 304(sp)                    # 8-byte Folded Spill
	fld	fa5, 384(a1)
	fsd	fa5, 296(sp)                    # 8-byte Folded Spill
	fld	fa5, 448(a1)
	fsd	fa5, 288(sp)                    # 8-byte Folded Spill
	fld	fa5, 8(a1)
	fsd	fa5, 280(sp)                    # 8-byte Folded Spill
	fld	fa5, 72(a1)
	fsd	fa5, 272(sp)                    # 8-byte Folded Spill
	fld	fa5, 136(a1)
	fsd	fa5, 264(sp)                    # 8-byte Folded Spill
	fld	fa5, 200(a1)
	fsd	fa5, 256(sp)                    # 8-byte Folded Spill
	fld	fa5, 264(a1)
	fsd	fa5, 248(sp)                    # 8-byte Folded Spill
	fld	fa5, 328(a1)
	fsd	fa5, 240(sp)                    # 8-byte Folded Spill
	fld	fa5, 392(a1)
	fsd	fa5, 232(sp)                    # 8-byte Folded Spill
	fld	fa5, 456(a1)
	fsd	fa5, 224(sp)                    # 8-byte Folded Spill
	fld	fa5, 16(a1)
	fsd	fa5, 216(sp)                    # 8-byte Folded Spill
	fld	fa5, 80(a1)
	fsd	fa5, 208(sp)                    # 8-byte Folded Spill
	fld	fa5, 144(a1)
	fsd	fa5, 200(sp)                    # 8-byte Folded Spill
	fld	fa5, 208(a1)
	fsd	fa5, 192(sp)                    # 8-byte Folded Spill
	fld	fa5, 272(a1)
	fsd	fa5, 184(sp)                    # 8-byte Folded Spill
	fld	fa5, 336(a1)
	fsd	fa5, 176(sp)                    # 8-byte Folded Spill
	fld	fa5, 400(a1)
	fsd	fa5, 168(sp)                    # 8-byte Folded Spill
	fld	fa5, 464(a1)
	fsd	fa5, 160(sp)                    # 8-byte Folded Spill
	fld	fa5, 24(a1)
	fsd	fa5, 152(sp)                    # 8-byte Folded Spill
	fld	fa5, 88(a1)
	fsd	fa5, 144(sp)                    # 8-byte Folded Spill
	fld	fa5, 152(a1)
	fsd	fa5, 136(sp)                    # 8-byte Folded Spill
	fld	fa5, 216(a1)
	fsd	fa5, 128(sp)                    # 8-byte Folded Spill
	fld	fa5, 280(a1)
	fsd	fa5, 120(sp)                    # 8-byte Folded Spill
	fld	fa5, 344(a1)
	fsd	fa5, 112(sp)                    # 8-byte Folded Spill
	fld	fa5, 408(a1)
	fsd	fa5, 104(sp)                    # 8-byte Folded Spill
	fld	fa5, 472(a1)
	fsd	fa5, 96(sp)                     # 8-byte Folded Spill
	fld	fa5, 32(a1)
	fsd	fa5, 88(sp)                     # 8-byte Folded Spill
	fld	fa5, 96(a1)
	fsd	fa5, 80(sp)                     # 8-byte Folded Spill
	fld	fa5, 160(a1)
	fsd	fa5, 72(sp)                     # 8-byte Folded Spill
	fld	fa5, 224(a1)
	fsd	fa5, 64(sp)                     # 8-byte Folded Spill
	fld	fa5, 288(a1)
	fsd	fa5, 56(sp)                     # 8-byte Folded Spill
	fld	fa5, 352(a1)
	fsd	fa5, 48(sp)                     # 8-byte Folded Spill
	fld	fa5, 416(a1)
	fsd	fa5, 40(sp)                     # 8-byte Folded Spill
	fld	fa5, 480(a1)
	fsd	fa5, 32(sp)                     # 8-byte Folded Spill
	fld	fa5, 40(a1)
	fsd	fa5, 24(sp)                     # 8-byte Folded Spill
	fld	fa5, 104(a1)
	fsd	fa5, 16(sp)                     # 8-byte Folded Spill
	fld	fa5, 168(a1)
	fsd	fa5, 8(sp)                      # 8-byte Folded Spill
	fld	ft7, 232(a1)
	fld	fa6, 296(a1)
	fld	fa7, 360(a1)
	fld	ft8, 424(a1)
	fld	ft9, 488(a1)
	fld	ft10, 48(a1)
	fld	ft11, 112(a1)
	fld	fs0, 176(a1)
	fld	fs1, 240(a1)
	fld	fs2, 304(a1)
	fld	fs3, 368(a1)
	fld	fs4, 432(a1)
	fld	fs5, 496(a1)
	fld	fs6, 56(a1)
	fld	fs7, 120(a1)
	fld	fs8, 184(a1)
	fld	fs9, 248(a1)
	fld	fs10, 312(a1)
	fld	fs11, 376(a1)
	fld	fa4, 440(a1)
	fld	fa3, 504(a1)
	addi	a1, a0, 8
	addi	a2, sp, 384
	addi	a3, a0, 136
	fmv.d.x	fa5, zero
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lh	a4, -8(a1)
	lh	a5, -6(a1)
	fcvt.d.w	fa2, a4
	lh	a4, -4(a1)
	lh	a6, -2(a1)
	fcvt.d.w	fa1, a5
	lh	a5, 0(a1)
	fcvt.d.w	fa0, a4
	fcvt.d.w	ft0, a6
	lh	a4, 2(a1)
	fcvt.d.w	ft1, a5
	fld	ft2, 344(sp)                    # 8-byte Folded Reload
	fmadd.d	ft3, ft2, fa2, fa5
	fcvt.d.w	ft2, a4
	lh	a4, 4(a1)
	fld	ft4, 336(sp)                    # 8-byte Folded Reload
	fmadd.d	ft3, ft4, fa1, ft3
	fld	ft4, 328(sp)                    # 8-byte Folded Reload
	fmadd.d	ft3, ft4, fa0, ft3
	fld	ft4, 320(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft4, ft0, ft3
	fcvt.d.w	ft3, a4
	lh	a4, 6(a1)
	fld	ft5, 312(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft5, ft1, ft4
	fld	ft5, 304(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft5, ft2, ft4
	fld	ft5, 296(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft5, ft3, ft4
	fcvt.d.w	ft5, a4
	fld	ft6, 288(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft5, ft4
	fsd	ft4, -32(a2)
	fld	ft4, 280(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft4, fa2, fa5
	fld	ft6, 272(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa1, ft4
	fld	ft6, 264(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa0, ft4
	fld	ft6, 256(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft0, ft4
	fld	ft6, 248(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft1, ft4
	fld	ft6, 240(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft2, ft4
	fld	ft6, 232(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft3, ft4
	fld	ft6, 224(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft5, ft4
	fsd	ft4, -24(a2)
	fld	ft4, 216(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft4, fa2, fa5
	fld	ft6, 208(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa1, ft4
	fld	ft6, 200(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa0, ft4
	fld	ft6, 192(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft0, ft4
	fld	ft6, 184(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft1, ft4
	fld	ft6, 176(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft2, ft4
	fld	ft6, 168(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft3, ft4
	fld	ft6, 160(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft5, ft4
	fsd	ft4, -16(a2)
	fld	ft4, 152(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft4, fa2, fa5
	fld	ft6, 144(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa1, ft4
	fld	ft6, 136(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa0, ft4
	fld	ft6, 128(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft0, ft4
	fld	ft6, 120(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft1, ft4
	fld	ft6, 112(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft2, ft4
	fld	ft6, 104(sp)                    # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft3, ft4
	fld	ft6, 96(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft5, ft4
	fsd	ft4, -8(a2)
	fld	ft4, 88(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft4, fa2, fa5
	fld	ft6, 80(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa1, ft4
	fld	ft6, 72(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa0, ft4
	fld	ft6, 64(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft0, ft4
	fld	ft6, 56(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft1, ft4
	fld	ft6, 48(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft2, ft4
	fld	ft6, 40(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft3, ft4
	fld	ft6, 32(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, ft5, ft4
	fsd	ft4, 0(a2)
	fld	ft4, 24(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft4, fa2, fa5
	fld	ft6, 16(sp)                     # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa1, ft4
	fld	ft6, 8(sp)                      # 8-byte Folded Reload
	fmadd.d	ft4, ft6, fa0, ft4
	fmadd.d	ft4, ft7, ft0, ft4
	fmadd.d	ft4, fa6, ft1, ft4
	fmadd.d	ft4, fa7, ft2, ft4
	fmadd.d	ft4, ft8, ft3, ft4
	fmadd.d	ft4, ft9, ft5, ft4
	fsd	ft4, 8(a2)
	fmadd.d	ft4, ft10, fa2, fa5
	fmadd.d	ft4, ft11, fa1, ft4
	fmadd.d	ft4, fs0, fa0, ft4
	fmadd.d	ft4, fs1, ft0, ft4
	fmadd.d	ft4, fs2, ft1, ft4
	fmadd.d	ft4, fs3, ft2, ft4
	fmadd.d	ft4, fs4, ft3, ft4
	fmadd.d	ft4, fs5, ft5, ft4
	fsd	ft4, 16(a2)
	fmadd.d	fa2, fs6, fa2, fa5
	fmadd.d	fa2, fs7, fa1, fa2
	fmadd.d	fa2, fs8, fa0, fa2
	fmadd.d	fa2, fs9, ft0, fa2
	fmadd.d	fa2, fs10, ft1, fa2
	fmadd.d	fa2, fs11, ft2, fa2
	fmadd.d	fa2, fa4, ft3, fa2
	fmadd.d	fa2, fa3, ft5, fa2
	fsd	fa2, 24(a2)
	addi	a1, a1, 16
	addi	a2, a2, 64
	bne	a1, a3, .LBB1_1
# %bb.2:
	lui	a1, %hi(c)
	fld	fa4, %lo(c)(a1)
	fsd	fa4, 344(sp)                    # 8-byte Folded Spill
	addi	a1, a1, %lo(c)
	fld	fa4, 64(a1)
	fsd	fa4, 336(sp)                    # 8-byte Folded Spill
	fld	fa4, 128(a1)
	fsd	fa4, 328(sp)                    # 8-byte Folded Spill
	fld	fa4, 192(a1)
	fsd	fa4, 320(sp)                    # 8-byte Folded Spill
	fld	fa4, 256(a1)
	fsd	fa4, 312(sp)                    # 8-byte Folded Spill
	fld	fa4, 320(a1)
	fsd	fa4, 304(sp)                    # 8-byte Folded Spill
	fld	fa4, 384(a1)
	fsd	fa4, 296(sp)                    # 8-byte Folded Spill
	fld	fa4, 448(a1)
	fsd	fa4, 288(sp)                    # 8-byte Folded Spill
	fld	fa4, 8(a1)
	fsd	fa4, 280(sp)                    # 8-byte Folded Spill
	fld	fa4, 72(a1)
	fsd	fa4, 272(sp)                    # 8-byte Folded Spill
	fld	fa4, 136(a1)
	fsd	fa4, 264(sp)                    # 8-byte Folded Spill
	fld	fa4, 200(a1)
	fsd	fa4, 256(sp)                    # 8-byte Folded Spill
	fld	fa4, 264(a1)
	fsd	fa4, 248(sp)                    # 8-byte Folded Spill
	fld	fa4, 328(a1)
	fsd	fa4, 240(sp)                    # 8-byte Folded Spill
	fld	fa4, 392(a1)
	fsd	fa4, 232(sp)                    # 8-byte Folded Spill
	fld	fa4, 456(a1)
	fsd	fa4, 224(sp)                    # 8-byte Folded Spill
	fld	fa4, 16(a1)
	fsd	fa4, 216(sp)                    # 8-byte Folded Spill
	fld	fa4, 80(a1)
	fsd	fa4, 208(sp)                    # 8-byte Folded Spill
	fld	fa4, 144(a1)
	fsd	fa4, 200(sp)                    # 8-byte Folded Spill
	fld	fa4, 208(a1)
	fsd	fa4, 192(sp)                    # 8-byte Folded Spill
	fld	fa4, 272(a1)
	fsd	fa4, 184(sp)                    # 8-byte Folded Spill
	fld	fa4, 336(a1)
	fsd	fa4, 176(sp)                    # 8-byte Folded Spill
	fld	fa4, 400(a1)
	fsd	fa4, 168(sp)                    # 8-byte Folded Spill
	fld	fa4, 464(a1)
	fsd	fa4, 160(sp)                    # 8-byte Folded Spill
	fld	fa4, 24(a1)
	fsd	fa4, 152(sp)                    # 8-byte Folded Spill
	fld	fa4, 88(a1)
	fsd	fa4, 144(sp)                    # 8-byte Folded Spill
	fld	fa4, 152(a1)
	fsd	fa4, 136(sp)                    # 8-byte Folded Spill
	fld	fa4, 216(a1)
	fsd	fa4, 128(sp)                    # 8-byte Folded Spill
	fld	fa4, 280(a1)
	fsd	fa4, 120(sp)                    # 8-byte Folded Spill
	fld	fa4, 344(a1)
	fsd	fa4, 112(sp)                    # 8-byte Folded Spill
	fld	fa4, 408(a1)
	fsd	fa4, 104(sp)                    # 8-byte Folded Spill
	fld	fa4, 472(a1)
	fsd	fa4, 96(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(.LCPI1_0)
	fld	fa4, 32(a1)
	fsd	fa4, 88(sp)                     # 8-byte Folded Spill
	fld	fa4, 96(a1)
	fsd	fa4, 80(sp)                     # 8-byte Folded Spill
	fld	fa4, 160(a1)
	fsd	fa4, 72(sp)                     # 8-byte Folded Spill
	fld	fa4, 224(a1)
	fsd	fa4, 64(sp)                     # 8-byte Folded Spill
	fld	fa4, 288(a1)
	fsd	fa4, 56(sp)                     # 8-byte Folded Spill
	fld	fa4, 352(a1)
	fsd	fa4, 48(sp)                     # 8-byte Folded Spill
	fld	fa4, 416(a1)
	fsd	fa4, 40(sp)                     # 8-byte Folded Spill
	fld	fa4, 480(a1)
	fsd	fa4, 32(sp)                     # 8-byte Folded Spill
	fld	fa4, 40(a1)
	fsd	fa4, 24(sp)                     # 8-byte Folded Spill
	fld	fa4, 104(a1)
	fsd	fa4, 16(sp)                     # 8-byte Folded Spill
	fld	fa4, 168(a1)
	fsd	fa4, 8(sp)                      # 8-byte Folded Spill
	fld	fa4, 232(a1)
	fsd	fa4, 0(sp)                      # 8-byte Folded Spill
	fld	fa6, 296(a1)
	fld	fa7, 360(a1)
	fld	ft8, 424(a1)
	fld	ft9, 488(a1)
	fld	ft10, 48(a1)
	fld	ft11, 112(a1)
	fld	fs0, 176(a1)
	fld	fs1, 240(a1)
	fld	fs2, 304(a1)
	fld	fs3, 368(a1)
	fld	fs4, 432(a1)
	fld	fs5, 496(a1)
	fld	fs6, 56(a1)
	fld	fs7, 120(a1)
	fld	fs8, 184(a1)
	fld	fs9, 248(a1)
	fld	fs10, 312(a1)
	fld	fs11, 376(a1)
	fld	fa4, 440(a1)
	fld	fa3, 504(a1)
	fld	fa2, %lo(.LCPI1_0)(a2)
	addi	a1, a0, 64
	addi	a2, sp, 608
	addi	a0, a0, 80
	li	a3, 255
	li	a4, -256
	j	.LBB1_4
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	sh	a6, 48(a1)
	addi	a1, a1, 2
	addi	a2, a2, 8
	beq	a1, a0, .LBB1_36
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	fld	fa1, 192(a2)
	fld	fa0, 128(a2)
	fld	ft0, 64(a2)
	fld	ft1, 0(a2)
	fld	ft5, -256(a2)
	fld	ft4, -192(a2)
	fld	ft3, -128(a2)
	fld	ft2, -64(a2)
	fld	ft6, 344(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft6, ft5, fa5
	fld	ft7, 336(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft4, ft6
	fld	ft7, 328(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft3, ft6
	fld	ft7, 320(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft2, ft6
	fld	ft7, 312(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft1, ft6
	fld	ft7, 304(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft0, ft6
	fld	ft7, 296(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa0, ft6
	fld	ft7, 288(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa1, ft6
	fadd.d	ft6, ft6, fa2
	fcvt.w.d	a5, ft6, rdn
	blt	a5, a3, .LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	li	a5, 255
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=1
	blt	a4, a5, .LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	li	a5, -256
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=1
	fld	ft6, 280(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft6, ft5, fa5
	fld	ft7, 272(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft4, ft6
	fld	ft7, 264(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft3, ft6
	fld	ft7, 256(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft2, ft6
	fld	ft7, 248(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft1, ft6
	fld	ft7, 240(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft0, ft6
	fld	ft7, 232(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa0, ft6
	fld	ft7, 224(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa1, ft6
	fadd.d	ft6, ft6, fa2
	fcvt.w.d	a6, ft6, rdn
	sh	a5, -64(a1)
	blt	a6, a3, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	li	a6, 255
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=1
	blt	a4, a6, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_4 Depth=1
	li	a6, -256
.LBB1_12:                               #   in Loop: Header=BB1_4 Depth=1
	fld	ft6, 216(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft6, ft5, fa5
	fld	ft7, 208(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft4, ft6
	fld	ft7, 200(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft3, ft6
	fld	ft7, 192(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft2, ft6
	fld	ft7, 184(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft1, ft6
	fld	ft7, 176(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft0, ft6
	fld	ft7, 168(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa0, ft6
	fld	ft7, 160(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa1, ft6
	fadd.d	ft6, ft6, fa2
	fcvt.w.d	a5, ft6, rdn
	sh	a6, -48(a1)
	blt	a5, a3, .LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_4 Depth=1
	li	a5, 255
.LBB1_14:                               #   in Loop: Header=BB1_4 Depth=1
	blt	a4, a5, .LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_4 Depth=1
	li	a5, -256
.LBB1_16:                               #   in Loop: Header=BB1_4 Depth=1
	fld	ft6, 152(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft6, ft5, fa5
	fld	ft7, 144(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft4, ft6
	fld	ft7, 136(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft3, ft6
	fld	ft7, 128(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft2, ft6
	fld	ft7, 120(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft1, ft6
	fld	ft7, 112(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft0, ft6
	fld	ft7, 104(sp)                    # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa0, ft6
	fld	ft7, 96(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa1, ft6
	fadd.d	ft6, ft6, fa2
	fcvt.w.d	a6, ft6, rdn
	sh	a5, -32(a1)
	blt	a6, a3, .LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_4 Depth=1
	li	a6, 255
.LBB1_18:                               #   in Loop: Header=BB1_4 Depth=1
	blt	a4, a6, .LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_4 Depth=1
	li	a6, -256
.LBB1_20:                               #   in Loop: Header=BB1_4 Depth=1
	fld	ft6, 88(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft6, ft5, fa5
	fld	ft7, 80(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft4, ft6
	fld	ft7, 72(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft3, ft6
	fld	ft7, 64(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft2, ft6
	fld	ft7, 56(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft1, ft6
	fld	ft7, 48(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft0, ft6
	fld	ft7, 40(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa0, ft6
	fld	ft7, 32(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, fa1, ft6
	fadd.d	ft6, ft6, fa2
	fcvt.w.d	a5, ft6, rdn
	sh	a6, -16(a1)
	blt	a5, a3, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_4 Depth=1
	li	a5, 255
.LBB1_22:                               #   in Loop: Header=BB1_4 Depth=1
	blt	a4, a5, .LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_4 Depth=1
	li	a5, -256
.LBB1_24:                               #   in Loop: Header=BB1_4 Depth=1
	fld	ft6, 24(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft6, ft5, fa5
	fld	ft7, 16(sp)                     # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft4, ft6
	fld	ft7, 8(sp)                      # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft3, ft6
	fld	ft7, 0(sp)                      # 8-byte Folded Reload
	fmadd.d	ft6, ft7, ft2, ft6
	fmadd.d	ft6, fa6, ft1, ft6
	fmadd.d	ft6, fa7, ft0, ft6
	fmadd.d	ft6, ft8, fa0, ft6
	fmadd.d	ft6, ft9, fa1, ft6
	fadd.d	ft6, ft6, fa2
	fcvt.w.d	a6, ft6, rdn
	sh	a5, 0(a1)
	blt	a6, a3, .LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_4 Depth=1
	li	a6, 255
.LBB1_26:                               #   in Loop: Header=BB1_4 Depth=1
	blt	a4, a6, .LBB1_28
# %bb.27:                               #   in Loop: Header=BB1_4 Depth=1
	li	a6, -256
.LBB1_28:                               #   in Loop: Header=BB1_4 Depth=1
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
	sh	a6, 16(a1)
	blt	a5, a3, .LBB1_30
# %bb.29:                               #   in Loop: Header=BB1_4 Depth=1
	li	a5, 255
.LBB1_30:                               #   in Loop: Header=BB1_4 Depth=1
	blt	a4, a5, .LBB1_32
# %bb.31:                               #   in Loop: Header=BB1_4 Depth=1
	li	a5, -256
.LBB1_32:                               #   in Loop: Header=BB1_4 Depth=1
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
	sh	a5, 32(a1)
	bge	a6, a3, .LBB1_34
# %bb.33:                               #   in Loop: Header=BB1_4 Depth=1
	blt	a4, a6, .LBB1_3
	j	.LBB1_35
.LBB1_34:                               #   in Loop: Header=BB1_4 Depth=1
	li	a6, 255
	blt	a4, a6, .LBB1_3
.LBB1_35:                               #   in Loop: Header=BB1_4 Depth=1
	li	a6, -256
	j	.LBB1_3
.LBB1_36:
	fld	fs0, 952(sp)                    # 8-byte Folded Reload
	fld	fs1, 944(sp)                    # 8-byte Folded Reload
	fld	fs2, 936(sp)                    # 8-byte Folded Reload
	fld	fs3, 928(sp)                    # 8-byte Folded Reload
	fld	fs4, 920(sp)                    # 8-byte Folded Reload
	fld	fs5, 912(sp)                    # 8-byte Folded Reload
	fld	fs6, 904(sp)                    # 8-byte Folded Reload
	fld	fs7, 896(sp)                    # 8-byte Folded Reload
	fld	fs8, 888(sp)                    # 8-byte Folded Reload
	fld	fs9, 880(sp)                    # 8-byte Folded Reload
	fld	fs10, 872(sp)                   # 8-byte Folded Reload
	fld	fs11, 864(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 960
	ret
.Lfunc_end1:
	.size	Reference_IDCT, .Lfunc_end1-Reference_IDCT
                                        # -- End function
	.option	pop
	.type	c,@object                       # @c
	.local	c
	.comm	c,512,8
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
