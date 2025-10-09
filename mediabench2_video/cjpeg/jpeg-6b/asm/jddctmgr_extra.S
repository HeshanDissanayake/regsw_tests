	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jddctmgr.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_inverse_dct               # -- Begin function jinit_inverse_dct
	.p2align	2
	.type	jinit_inverse_dct,@function
jinit_inverse_dct:                      # @jinit_inverse_dct
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 128
	mv	a0, s0
	jalr	a3
	lw	a1, 56(s0)
	sd	a0, 600(s0)
	lui	a2, %hi(start_pass)
	addi	a2, a2, %lo(start_pass)
	sd	a2, 0(a0)
	blez	a1, .LBB0_3
# %bb.1:
	ld	a1, 304(s0)
	li	s1, 0
	addi	s2, a0, 88
	addi	s3, a1, 88
	li	s4, -1
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 256
	mv	a0, s0
	jalr	a3
	sd	a0, 0(s3)
	li	a2, 256
	li	a1, 0
	call	memset
	sw	s4, 0(s2)
	lw	a0, 56(s0)
	addi	s1, s1, 1
	addi	s2, s2, 4
	addi	s3, s3, 96
	blt	s1, a0, .LBB0_2
.LBB0_3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	jinit_inverse_dct, .Lfunc_end0-jinit_inverse_dct
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function start_pass
.LCPI1_0:
	.quad	0x3ff63150b14861ef              # double 1.3870398450000001
.LCPI1_1:
	.quad	0x3ff4e7ae914d6fca              # double 1.3065629649999999
.LCPI1_2:
	.quad	0x3ff2d062ef6c11aa              # double 1.1758756020000001
.LCPI1_3:
	.quad	0x3fe92469c0a7bf3b              # double 0.785694958
.LCPI1_4:
	.quad	0x3fe1517a7bc720bb              # double 0.54119609999999996
.LCPI1_5:
	.quad	0x3fd1a855de72ab5d              # double 0.275899379
	.text
	.p2align	2
	.type	start_pass,@function
start_pass:                             # @start_pass
# %bb.0:
	addi	sp, sp, -160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
	fsd	fs0, 48(sp)                     # 8-byte Folded Spill
	fsd	fs1, 40(sp)                     # 8-byte Folded Spill
	fsd	fs2, 32(sp)                     # 8-byte Folded Spill
	fsd	fs3, 24(sp)                     # 8-byte Folded Spill
	fsd	fs4, 16(sp)                     # 8-byte Folded Spill
	fsd	fs5, 8(sp)                      # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 56(a0)
	blez	a0, .LBB1_25
# %bb.1:
	ld	a0, 600(s0)
	li	s1, 0
	li	s10, 0
	li	s11, 0
	ld	s2, 304(s0)
	addi	s3, a0, 8
	addi	s4, a0, 88
	li	s6, 3
	li	s7, 1
	li	s8, 2
	lui	a0, %hi(.LCPI1_0)
	fld	fs0, %lo(.LCPI1_0)(a0)
	lui	a0, %hi(.LCPI1_1)
	fld	fs1, %lo(.LCPI1_1)(a0)
	lui	a0, %hi(.LCPI1_2)
	fld	fs2, %lo(.LCPI1_2)(a0)
	lui	a0, %hi(.LCPI1_3)
	fld	fs3, %lo(.LCPI1_3)(a0)
	lui	a0, %hi(.LCPI1_4)
	fld	fs4, %lo(.LCPI1_4)(a0)
	lui	a0, %hi(.LCPI1_5)
	fld	fs5, %lo(.LCPI1_5)(a0)
	li	s9, 4
	li	s5, 8
	j	.LBB1_4
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	lhu	a2, 0(a1)
	lhu	a3, 2(a1)
	fcvt.s.wu	fa5, a2
	fsw	fa5, 0(a0)
	fcvt.d.wu	fa5, a3
	lhu	a2, 4(a1)
	fmul.d	fa5, fa5, fs0
	fcvt.s.d	fa5, fa5
	fsw	fa5, 4(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 6(a1)
	fmul.d	fa5, fa5, fs1
	fcvt.s.d	fa5, fa5
	fsw	fa5, 8(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs2
	lhu	a2, 8(a1)
	fcvt.s.d	fa5, fa5
	lhu	a3, 10(a1)
	fsw	fa5, 12(a0)
	fcvt.s.wu	fa5, a2
	fsw	fa5, 16(a0)
	fcvt.d.wu	fa5, a3
	lhu	a2, 12(a1)
	fmul.d	fa5, fa5, fs3
	fcvt.s.d	fa5, fa5
	fsw	fa5, 20(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 14(a1)
	fmul.d	fa5, fa5, fs4
	fcvt.s.d	fa5, fa5
	fsw	fa5, 24(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 16(a1)
	fmul.d	fa5, fa5, fs5
	fcvt.s.d	fa5, fa5
	fsw	fa5, 28(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 18(a1)
	fmul.d	fa5, fa5, fs0
	fcvt.s.d	fa5, fa5
	fsw	fa5, 32(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs0
	lhu	a2, 20(a1)
	fmul.d	fa5, fa5, fs0
	fcvt.s.d	fa5, fa5
	fsw	fa5, 36(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs0
	lhu	a2, 22(a1)
	fmul.d	fa5, fa5, fs1
	fcvt.s.d	fa5, fa5
	fsw	fa5, 40(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs0
	lhu	a2, 24(a1)
	fmul.d	fa5, fa5, fs2
	fcvt.s.d	fa5, fa5
	fsw	fa5, 44(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 26(a1)
	fmul.d	fa5, fa5, fs0
	fcvt.s.d	fa5, fa5
	fsw	fa5, 48(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs0
	lhu	a2, 28(a1)
	fmul.d	fa5, fa5, fs3
	fcvt.s.d	fa5, fa5
	fsw	fa5, 52(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs0
	lhu	a2, 30(a1)
	fmul.d	fa5, fa5, fs4
	fcvt.s.d	fa5, fa5
	fsw	fa5, 56(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs0
	lhu	a2, 32(a1)
	fmul.d	fa5, fa5, fs5
	fcvt.s.d	fa5, fa5
	fsw	fa5, 60(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 34(a1)
	fmul.d	fa5, fa5, fs1
	fcvt.s.d	fa5, fa5
	fsw	fa5, 64(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs1
	lhu	a2, 36(a1)
	fmul.d	fa5, fa5, fs0
	fcvt.s.d	fa5, fa5
	fsw	fa5, 68(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs1
	lhu	a2, 38(a1)
	fmul.d	fa5, fa5, fs1
	fcvt.s.d	fa5, fa5
	fsw	fa5, 72(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs1
	lhu	a2, 40(a1)
	fmul.d	fa5, fa5, fs2
	fcvt.s.d	fa5, fa5
	fsw	fa5, 76(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 42(a1)
	fmul.d	fa5, fa5, fs1
	fcvt.s.d	fa5, fa5
	fsw	fa5, 80(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs1
	lhu	a2, 44(a1)
	fmul.d	fa5, fa5, fs3
	fcvt.s.d	fa5, fa5
	fsw	fa5, 84(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs1
	lhu	a2, 46(a1)
	fmul.d	fa5, fa5, fs4
	fcvt.s.d	fa5, fa5
	fsw	fa5, 88(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs1
	lhu	a2, 48(a1)
	fmul.d	fa5, fa5, fs5
	fcvt.s.d	fa5, fa5
	fsw	fa5, 92(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 50(a1)
	fmul.d	fa5, fa5, fs2
	fcvt.s.d	fa5, fa5
	fsw	fa5, 96(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs2
	lhu	a2, 52(a1)
	fmul.d	fa5, fa5, fs0
	fcvt.s.d	fa5, fa5
	fsw	fa5, 100(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs2
	lhu	a2, 54(a1)
	fmul.d	fa5, fa5, fs1
	fcvt.s.d	fa5, fa5
	fsw	fa5, 104(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs2
	lhu	a2, 56(a1)
	fmul.d	fa5, fa5, fs2
	fcvt.s.d	fa5, fa5
	fsw	fa5, 108(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 58(a1)
	fmul.d	fa5, fa5, fs2
	fcvt.s.d	fa5, fa5
	fsw	fa5, 112(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs2
	lhu	a2, 60(a1)
	fmul.d	fa5, fa5, fs3
	fcvt.s.d	fa5, fa5
	fsw	fa5, 116(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs2
	lhu	a2, 62(a1)
	fmul.d	fa5, fa5, fs4
	fcvt.s.d	fa5, fa5
	fsw	fa5, 120(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs2
	fmul.d	fa5, fa5, fs5
	lhu	a2, 64(a1)
	fcvt.s.d	fa5, fa5
	lhu	a3, 66(a1)
	fsw	fa5, 124(a0)
	fcvt.s.wu	fa5, a2
	fsw	fa5, 128(a0)
	fcvt.d.wu	fa5, a3
	lhu	a2, 68(a1)
	fmul.d	fa5, fa5, fs0
	fcvt.s.d	fa5, fa5
	fsw	fa5, 132(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 70(a1)
	fmul.d	fa5, fa5, fs1
	fcvt.s.d	fa5, fa5
	fsw	fa5, 136(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs2
	lhu	a2, 72(a1)
	fcvt.s.d	fa5, fa5
	lhu	a3, 74(a1)
	fsw	fa5, 140(a0)
	fcvt.s.wu	fa5, a2
	fsw	fa5, 144(a0)
	fcvt.d.wu	fa5, a3
	lhu	a2, 76(a1)
	fmul.d	fa5, fa5, fs3
	fcvt.s.d	fa5, fa5
	fsw	fa5, 148(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 78(a1)
	fmul.d	fa5, fa5, fs4
	fcvt.s.d	fa5, fa5
	fsw	fa5, 152(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 80(a1)
	fmul.d	fa5, fa5, fs5
	fcvt.s.d	fa5, fa5
	fsw	fa5, 156(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 82(a1)
	fmul.d	fa5, fa5, fs3
	fcvt.s.d	fa5, fa5
	fsw	fa5, 160(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs3
	lhu	a2, 84(a1)
	fmul.d	fa5, fa5, fs0
	fcvt.s.d	fa5, fa5
	fsw	fa5, 164(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs3
	lhu	a2, 86(a1)
	fmul.d	fa5, fa5, fs1
	fcvt.s.d	fa5, fa5
	fsw	fa5, 168(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs3
	lhu	a2, 88(a1)
	fmul.d	fa5, fa5, fs2
	fcvt.s.d	fa5, fa5
	fsw	fa5, 172(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 90(a1)
	fmul.d	fa5, fa5, fs3
	fcvt.s.d	fa5, fa5
	fsw	fa5, 176(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs3
	lhu	a2, 92(a1)
	fmul.d	fa5, fa5, fs3
	fcvt.s.d	fa5, fa5
	fsw	fa5, 180(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs3
	lhu	a2, 94(a1)
	fmul.d	fa5, fa5, fs4
	fcvt.s.d	fa5, fa5
	fsw	fa5, 184(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs3
	lhu	a2, 96(a1)
	fmul.d	fa5, fa5, fs5
	fcvt.s.d	fa5, fa5
	fsw	fa5, 188(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 98(a1)
	fmul.d	fa5, fa5, fs4
	fcvt.s.d	fa5, fa5
	fsw	fa5, 192(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs4
	lhu	a2, 100(a1)
	fmul.d	fa5, fa5, fs0
	fcvt.s.d	fa5, fa5
	fsw	fa5, 196(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs4
	lhu	a2, 102(a1)
	fmul.d	fa5, fa5, fs1
	fcvt.s.d	fa5, fa5
	fsw	fa5, 200(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs4
	lhu	a2, 104(a1)
	fmul.d	fa5, fa5, fs2
	fcvt.s.d	fa5, fa5
	fsw	fa5, 204(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 106(a1)
	fmul.d	fa5, fa5, fs4
	fcvt.s.d	fa5, fa5
	fsw	fa5, 208(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs4
	lhu	a2, 108(a1)
	fmul.d	fa5, fa5, fs3
	fcvt.s.d	fa5, fa5
	fsw	fa5, 212(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs4
	lhu	a2, 110(a1)
	fmul.d	fa5, fa5, fs4
	fcvt.s.d	fa5, fa5
	fsw	fa5, 216(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs4
	lhu	a2, 112(a1)
	fmul.d	fa5, fa5, fs5
	fcvt.s.d	fa5, fa5
	fsw	fa5, 220(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 114(a1)
	fmul.d	fa5, fa5, fs5
	fcvt.s.d	fa5, fa5
	fsw	fa5, 224(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs5
	lhu	a2, 116(a1)
	fmul.d	fa5, fa5, fs0
	fcvt.s.d	fa5, fa5
	fsw	fa5, 228(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs5
	lhu	a2, 118(a1)
	fmul.d	fa5, fa5, fs1
	fcvt.s.d	fa5, fa5
	fsw	fa5, 232(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs5
	lhu	a2, 120(a1)
	fmul.d	fa5, fa5, fs2
	fcvt.s.d	fa5, fa5
	fsw	fa5, 236(a0)
	fcvt.d.wu	fa5, a2
	lhu	a2, 122(a1)
	fmul.d	fa5, fa5, fs5
	fcvt.s.d	fa5, fa5
	fsw	fa5, 240(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs5
	lhu	a2, 124(a1)
	fmul.d	fa5, fa5, fs3
	fcvt.s.d	fa5, fa5
	fsw	fa5, 244(a0)
	fcvt.d.wu	fa5, a2
	fmul.d	fa5, fa5, fs5
	lhu	a1, 126(a1)
	fmul.d	fa5, fa5, fs4
	fcvt.s.d	fa5, fa5
	fsw	fa5, 248(a0)
	fcvt.d.wu	fa5, a1
	fmul.d	fa5, fa5, fs5
	fmul.d	fa5, fa5, fs5
	fcvt.s.d	fa5, fa5
	fsw	fa5, 252(a0)
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	lw	a0, 56(s0)
	addi	s1, s1, 1
	addi	s2, s2, 96
	bge	s1, a0, .LBB1_25
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
                                        #     Child Loop BB1_24 Depth 2
	lw	a0, 36(s2)
	blt	s6, a0, .LBB1_8
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	beq	a0, s7, .LBB1_13
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	bne	a0, s8, .LBB1_12
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	li	s10, 0
	lui	s11, %hi(jpeg_idct_2x2)
	addi	s11, s11, %lo(jpeg_idct_2x2)
	j	.LBB1_16
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=1
	beq	a0, s9, .LBB1_14
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	bne	a0, s5, .LBB1_12
# %bb.10:                               #   in Loop: Header=BB1_4 Depth=1
	lw	a0, 96(s0)
	bgeu	a0, s6, .LBB1_15
# %bb.11:                               #   in Loop: Header=BB1_4 Depth=1
	slli	a1, a0, 3
	lui	a2, %hi(.Lswitch.table.start_pass)
	addi	a2, a2, %lo(.Lswitch.table.start_pass)
	add	a1, a2, a1
	ld	s11, 0(a1)
	mv	s10, a0
	j	.LBB1_16
.LBB1_12:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 7
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
	j	.LBB1_16
.LBB1_13:                               #   in Loop: Header=BB1_4 Depth=1
	li	s10, 0
	lui	s11, %hi(jpeg_idct_1x1)
	addi	s11, s11, %lo(jpeg_idct_1x1)
	j	.LBB1_16
.LBB1_14:                               #   in Loop: Header=BB1_4 Depth=1
	li	s10, 0
	lui	s11, %hi(jpeg_idct_4x4)
	addi	s11, s11, %lo(jpeg_idct_4x4)
	j	.LBB1_16
.LBB1_15:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 48
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_16:                               #   in Loop: Header=BB1_4 Depth=1
	lw	a0, 48(s2)
	slli	a1, s1, 3
	add	a1, s3, a1
	sd	s11, 0(a1)
	beqz	a0, .LBB1_3
# %bb.17:                               #   in Loop: Header=BB1_4 Depth=1
	slli	a2, s1, 2
	add	a2, s4, a2
	lw	a0, 0(a2)
	beq	a0, s10, .LBB1_3
# %bb.18:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a1, 80(s2)
	beqz	a1, .LBB1_3
# %bb.19:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 88(s2)
	sw	s10, 0(a2)
	beqz	s10, .LBB1_23
# %bb.20:                               #   in Loop: Header=BB1_4 Depth=1
	beq	s10, s8, .LBB1_2
# %bb.21:                               # %.preheader1
                                        #   in Loop: Header=BB1_4 Depth=1
	addi	a2, a0, 256
	lui	a3, %hi(start_pass.aanscales)
	addi	a3, a3, %lo(start_pass.aanscales)
.LBB1_22:                               #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a4, 0(a1)
	lh	a5, 0(a3)
	mul	a4, a5, a4
	addi	a4, a4, 2047
	addi	a4, a4, 1
	srli	a4, a4, 12
	sw	a4, 0(a0)
	addi	a0, a0, 4
	addi	a3, a3, 2
	addi	a1, a1, 2
	bne	a0, a2, .LBB1_22
	j	.LBB1_3
.LBB1_23:                               # %.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	addi	a2, a0, 256
.LBB1_24:                               #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a3, 0(a1)
	sw	a3, 0(a0)
	addi	a0, a0, 4
	addi	a1, a1, 2
	bne	a0, a2, .LBB1_24
	j	.LBB1_3
.LBB1_25:
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	fld	fs0, 48(sp)                     # 8-byte Folded Reload
	fld	fs1, 40(sp)                     # 8-byte Folded Reload
	fld	fs2, 32(sp)                     # 8-byte Folded Reload
	fld	fs3, 24(sp)                     # 8-byte Folded Reload
	fld	fs4, 16(sp)                     # 8-byte Folded Reload
	fld	fs5, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 160
	ret
.Lfunc_end1:
	.size	start_pass, .Lfunc_end1-start_pass
                                        # -- End function
	.option	pop
	.type	start_pass.aanscales,@object    # @start_pass.aanscales
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
start_pass.aanscales:
	.half	16384                           # 0x4000
	.half	22725                           # 0x58c5
	.half	21407                           # 0x539f
	.half	19266                           # 0x4b42
	.half	16384                           # 0x4000
	.half	12873                           # 0x3249
	.half	8867                            # 0x22a3
	.half	4520                            # 0x11a8
	.half	22725                           # 0x58c5
	.half	31521                           # 0x7b21
	.half	29692                           # 0x73fc
	.half	26722                           # 0x6862
	.half	22725                           # 0x58c5
	.half	17855                           # 0x45bf
	.half	12299                           # 0x300b
	.half	6270                            # 0x187e
	.half	21407                           # 0x539f
	.half	29692                           # 0x73fc
	.half	27969                           # 0x6d41
	.half	25172                           # 0x6254
	.half	21407                           # 0x539f
	.half	16819                           # 0x41b3
	.half	11585                           # 0x2d41
	.half	5906                            # 0x1712
	.half	19266                           # 0x4b42
	.half	26722                           # 0x6862
	.half	25172                           # 0x6254
	.half	22654                           # 0x587e
	.half	19266                           # 0x4b42
	.half	15137                           # 0x3b21
	.half	10426                           # 0x28ba
	.half	5315                            # 0x14c3
	.half	16384                           # 0x4000
	.half	22725                           # 0x58c5
	.half	21407                           # 0x539f
	.half	19266                           # 0x4b42
	.half	16384                           # 0x4000
	.half	12873                           # 0x3249
	.half	8867                            # 0x22a3
	.half	4520                            # 0x11a8
	.half	12873                           # 0x3249
	.half	17855                           # 0x45bf
	.half	16819                           # 0x41b3
	.half	15137                           # 0x3b21
	.half	12873                           # 0x3249
	.half	10114                           # 0x2782
	.half	6967                            # 0x1b37
	.half	3552                            # 0xde0
	.half	8867                            # 0x22a3
	.half	12299                           # 0x300b
	.half	11585                           # 0x2d41
	.half	10426                           # 0x28ba
	.half	8867                            # 0x22a3
	.half	6967                            # 0x1b37
	.half	4799                            # 0x12bf
	.half	2446                            # 0x98e
	.half	4520                            # 0x11a8
	.half	6270                            # 0x187e
	.half	5906                            # 0x1712
	.half	5315                            # 0x14c3
	.half	4520                            # 0x11a8
	.half	3552                            # 0xde0
	.half	2446                            # 0x98e
	.half	1247                            # 0x4df
	.size	start_pass.aanscales, 128

	.type	.Lswitch.table.start_pass,@object # @switch.table.start_pass
	.p2align	3, 0x0
.Lswitch.table.start_pass:
	.quad	jpeg_idct_islow
	.quad	jpeg_idct_ifast
	.quad	jpeg_idct_float
	.size	.Lswitch.table.start_pass, 24

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
