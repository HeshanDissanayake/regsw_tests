	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jcdctmgr.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_forward_dct               # -- Begin function jinit_forward_dct
	.p2align	2
	.type	jinit_forward_dct,@function
jinit_forward_dct:                      # @jinit_forward_dct
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 96
	li	s1, 1
	mv	a0, s0
	jalr	a3
	lw	a1, 276(s0)
	sd	a0, 488(s0)
	lui	a2, %hi(start_pass_fdctmgr)
	addi	a2, a2, %lo(start_pass_fdctmgr)
	li	a3, 2
	sd	a2, 0(a0)
	beq	a1, a3, .LBB0_5
# %bb.1:
	beq	a1, s1, .LBB0_4
# %bb.2:
	bnez	a1, .LBB0_6
# %bb.3:
	lui	a1, %hi(forward_DCT)
	addi	a1, a1, %lo(forward_DCT)
	sd	a1, 8(a0)
	lui	a1, %hi(jpeg_fdct_islow)
	addi	a1, a1, %lo(jpeg_fdct_islow)
	sd	a1, 16(a0)
	j	.LBB0_7
.LBB0_4:
	lui	a1, %hi(forward_DCT)
	addi	a1, a1, %lo(forward_DCT)
	sd	a1, 8(a0)
	lui	a1, %hi(jpeg_fdct_ifast)
	addi	a1, a1, %lo(jpeg_fdct_ifast)
	sd	a1, 16(a0)
	j	.LBB0_7
.LBB0_5:
	lui	a1, %hi(forward_DCT_float)
	addi	a1, a1, %lo(forward_DCT_float)
	sd	a1, 8(a0)
	lui	a1, %hi(jpeg_fdct_float)
	addi	a1, a1, %lo(jpeg_fdct_float)
	sd	a1, 56(a0)
	j	.LBB0_7
.LBB0_6:
	ld	a1, 0(s0)
	ld	a2, 0(a1)
	li	a3, 48
	sw	a3, 40(a1)
	mv	s1, a0
	mv	a0, s0
	jalr	a2
	mv	a0, s1
.LBB0_7:
	sd	zero, 48(a0)
	sd	zero, 40(a0)
	sd	zero, 32(a0)
	sd	zero, 24(a0)
	sd	zero, 64(a0)
	sd	zero, 72(a0)
	sd	zero, 80(a0)
	sd	zero, 88(a0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	jinit_forward_dct, .Lfunc_end0-jinit_forward_dct
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function start_pass_fdctmgr
.LCPI1_0:
	.quad	0x4020000000000000              # double 8
.LCPI1_1:
	.quad	0x3ff0000000000000              # double 1
.LCPI1_2:
	.quad	0x3ff63150b14861ef              # double 1.3870398450000001
.LCPI1_3:
	.quad	0x3ff4e7ae914d6fca              # double 1.3065629649999999
.LCPI1_4:
	.quad	0x3ff2d062ef6c11aa              # double 1.1758756020000001
.LCPI1_5:
	.quad	0x3fe92469c0a7bf3b              # double 0.785694958
.LCPI1_6:
	.quad	0x3fe1517a7bc720bb              # double 0.54119609999999996
.LCPI1_7:
	.quad	0x3fd1a855de72ab5d              # double 0.275899379
	.text
	.p2align	2
	.type	start_pass_fdctmgr,@function
start_pass_fdctmgr:                     # @start_pass_fdctmgr
# %bb.0:
	addi	sp, sp, -176
	sd	ra, 168(sp)                     # 8-byte Folded Spill
	sd	s0, 160(sp)                     # 8-byte Folded Spill
	sd	s1, 152(sp)                     # 8-byte Folded Spill
	sd	s2, 144(sp)                     # 8-byte Folded Spill
	sd	s3, 136(sp)                     # 8-byte Folded Spill
	sd	s4, 128(sp)                     # 8-byte Folded Spill
	sd	s5, 120(sp)                     # 8-byte Folded Spill
	sd	s6, 112(sp)                     # 8-byte Folded Spill
	sd	s7, 104(sp)                     # 8-byte Folded Spill
	sd	s8, 96(sp)                      # 8-byte Folded Spill
	sd	s9, 88(sp)                      # 8-byte Folded Spill
	sd	s10, 80(sp)                     # 8-byte Folded Spill
	sd	s11, 72(sp)                     # 8-byte Folded Spill
	fsd	fs0, 64(sp)                     # 8-byte Folded Spill
	fsd	fs1, 56(sp)                     # 8-byte Folded Spill
	fsd	fs2, 48(sp)                     # 8-byte Folded Spill
	fsd	fs3, 40(sp)                     # 8-byte Folded Spill
	fsd	fs4, 32(sp)                     # 8-byte Folded Spill
	fsd	fs5, 24(sp)                     # 8-byte Folded Spill
	fsd	fs6, 16(sp)                     # 8-byte Folded Spill
	fsd	fs7, 8(sp)                      # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 76(a0)
	blez	a0, .LBB1_22
# %bb.1:
	ld	s5, 488(s0)
	li	s1, 0
	ld	s2, 88(s0)
	addi	s3, s0, 96
	addi	a0, s5, 64
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	addi	s5, s5, 24
	li	s6, 3
	li	s7, 52
	li	s8, 2
	li	s9, 1
	lui	a1, %hi(start_pass_fdctmgr.aanscalefactor)
	addi	a1, a1, %lo(start_pass_fdctmgr.aanscalefactor)
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
	lui	a0, %hi(.LCPI1_6)
	fld	fs6, %lo(.LCPI1_6)(a0)
	lui	a0, %hi(.LCPI1_7)
	fld	fs7, %lo(.LCPI1_7)(a0)
	addi	s11, a1, 64
	j	.LBB1_4
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 48
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	lw	a0, 76(s0)
	addiw	s1, s1, 1
	addi	s2, s2, 96
	bge	s1, a0, .LBB1_22
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_17 Depth 2
                                        #     Child Loop BB1_21 Depth 2
	lw	s4, 16(s2)
	bltu	s6, s4, .LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	slli	a0, s4, 3
	add	a0, s3, a0
	ld	s10, 0(a0)
	bnez	s10, .LBB1_7
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 0(s0)
	sw	s4, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s7, 40(a0)
	mv	a0, s0
	jalr	a1
	slli	a0, s4, 3
	add	a0, s3, a0
	ld	s10, 0(a0)
.LBB1_7:                                #   in Loop: Header=BB1_4 Depth=1
	lw	a0, 276(s0)
	beq	a0, s8, .LBB1_18
# %bb.8:                                #   in Loop: Header=BB1_4 Depth=1
	beq	a0, s9, .LBB1_14
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	bnez	a0, .LBB1_2
# %bb.10:                               #   in Loop: Header=BB1_4 Depth=1
	slli	s4, s4, 3
	add	s4, s5, s4
	ld	a0, 0(s4)
	bnez	a0, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 256
	mv	a0, s0
	jalr	a3
	sd	a0, 0(s4)
.LBB1_12:                               #   in Loop: Header=BB1_4 Depth=1
	addi	a1, a0, 256
.LBB1_13:                               #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a2, 0(s10)
	slli	a2, a2, 3
	sw	a2, 0(a0)
	addi	a0, a0, 4
	addi	s10, s10, 2
	bne	a0, a1, .LBB1_13
	j	.LBB1_3
.LBB1_14:                               #   in Loop: Header=BB1_4 Depth=1
	slli	s4, s4, 3
	add	s4, s5, s4
	ld	a0, 0(s4)
	bnez	a0, .LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 256
	mv	a0, s0
	jalr	a3
	sd	a0, 0(s4)
.LBB1_16:                               #   in Loop: Header=BB1_4 Depth=1
	addi	a1, a0, 256
	lui	a2, %hi(start_pass_fdctmgr.aanscales)
	addi	a2, a2, %lo(start_pass_fdctmgr.aanscales)
.LBB1_17:                               #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a3, 0(s10)
	lh	a4, 0(a2)
	mul	a3, a4, a3
	addi	a3, a3, 1024
	srli	a3, a3, 11
	sw	a3, 0(a0)
	addi	a0, a0, 4
	addi	a2, a2, 2
	addi	s10, s10, 2
	bne	a0, a1, .LBB1_17
	j	.LBB1_3
.LBB1_18:                               #   in Loop: Header=BB1_4 Depth=1
	slli	s4, s4, 3
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	add	s4, a0, s4
	ld	a0, 0(s4)
	bnez	a0, .LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 8(s0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 256
	mv	a0, s0
	jalr	a3
	sd	a0, 0(s4)
.LBB1_20:                               #   in Loop: Header=BB1_4 Depth=1
	addi	s10, s10, 8
	addi	a0, a0, 16
	lui	a1, %hi(start_pass_fdctmgr.aanscalefactor)
	addi	a1, a1, %lo(start_pass_fdctmgr.aanscalefactor)
.LBB1_21:                               #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a2, -8(s10)
	fld	fa5, 0(a1)
	fcvt.d.wu	fa4, a2
	fmul.d	fa4, fa5, fa4
	fmul.d	fa4, fa4, fs0
	lhu	a2, -6(s10)
	fdiv.d	fa4, fs1, fa4
	fcvt.s.d	fa4, fa4
	fsw	fa4, -16(a0)
	fcvt.d.wu	fa4, a2
	fmul.d	fa4, fa5, fa4
	fmul.d	fa4, fa4, fs2
	fmul.d	fa4, fa4, fs0
	lhu	a2, -4(s10)
	fdiv.d	fa4, fs1, fa4
	fcvt.s.d	fa4, fa4
	fsw	fa4, -12(a0)
	fcvt.d.wu	fa4, a2
	fmul.d	fa4, fa5, fa4
	fmul.d	fa4, fa4, fs3
	fmul.d	fa4, fa4, fs0
	lhu	a2, -2(s10)
	fdiv.d	fa4, fs1, fa4
	fcvt.s.d	fa4, fa4
	fsw	fa4, -8(a0)
	fcvt.d.wu	fa4, a2
	fmul.d	fa4, fa5, fa4
	fmul.d	fa4, fa4, fs4
	fmul.d	fa4, fa4, fs0
	lhu	a2, 0(s10)
	fdiv.d	fa4, fs1, fa4
	fcvt.s.d	fa4, fa4
	fsw	fa4, -4(a0)
	fcvt.d.wu	fa4, a2
	fmul.d	fa4, fa5, fa4
	fmul.d	fa4, fa4, fs0
	lhu	a2, 2(s10)
	fdiv.d	fa4, fs1, fa4
	fcvt.s.d	fa4, fa4
	fsw	fa4, 0(a0)
	fcvt.d.wu	fa4, a2
	fmul.d	fa4, fa5, fa4
	fmul.d	fa4, fa4, fs5
	fmul.d	fa4, fa4, fs0
	lhu	a2, 4(s10)
	fdiv.d	fa4, fs1, fa4
	fcvt.s.d	fa4, fa4
	fsw	fa4, 4(a0)
	fcvt.d.wu	fa4, a2
	fmul.d	fa4, fa5, fa4
	fmul.d	fa4, fa4, fs6
	fmul.d	fa4, fa4, fs0
	lhu	a2, 6(s10)
	fdiv.d	fa4, fs1, fa4
	fcvt.s.d	fa4, fa4
	fsw	fa4, 8(a0)
	fcvt.d.wu	fa4, a2
	fmul.d	fa5, fa5, fa4
	fmul.d	fa5, fa5, fs7
	fmul.d	fa5, fa5, fs0
	fdiv.d	fa5, fs1, fa5
	fcvt.s.d	fa5, fa5
	fsw	fa5, 12(a0)
	addi	a1, a1, 8
	addi	s10, s10, 16
	addi	a0, a0, 32
	bne	a1, s11, .LBB1_21
	j	.LBB1_3
.LBB1_22:
	ld	ra, 168(sp)                     # 8-byte Folded Reload
	ld	s0, 160(sp)                     # 8-byte Folded Reload
	ld	s1, 152(sp)                     # 8-byte Folded Reload
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	ld	s4, 128(sp)                     # 8-byte Folded Reload
	ld	s5, 120(sp)                     # 8-byte Folded Reload
	ld	s6, 112(sp)                     # 8-byte Folded Reload
	ld	s7, 104(sp)                     # 8-byte Folded Reload
	ld	s8, 96(sp)                      # 8-byte Folded Reload
	ld	s9, 88(sp)                      # 8-byte Folded Reload
	ld	s10, 80(sp)                     # 8-byte Folded Reload
	ld	s11, 72(sp)                     # 8-byte Folded Reload
	fld	fs0, 64(sp)                     # 8-byte Folded Reload
	fld	fs1, 56(sp)                     # 8-byte Folded Reload
	fld	fs2, 48(sp)                     # 8-byte Folded Reload
	fld	fs3, 40(sp)                     # 8-byte Folded Reload
	fld	fs4, 32(sp)                     # 8-byte Folded Reload
	fld	fs5, 24(sp)                     # 8-byte Folded Reload
	fld	fs6, 16(sp)                     # 8-byte Folded Reload
	fld	fs7, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 176
	ret
.Lfunc_end1:
	.size	start_pass_fdctmgr, .Lfunc_end1-start_pass_fdctmgr
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function forward_DCT
	.type	forward_DCT,@function
forward_DCT:                            # @forward_DCT
# %bb.0:
	beqz	a6, .LBB2_13
# %bb.1:
	addi	sp, sp, -352
	sd	ra, 344(sp)                     # 8-byte Folded Spill
	sd	s0, 336(sp)                     # 8-byte Folded Spill
	sd	s1, 328(sp)                     # 8-byte Folded Spill
	sd	s2, 320(sp)                     # 8-byte Folded Spill
	sd	s3, 312(sp)                     # 8-byte Folded Spill
	sd	s4, 304(sp)                     # 8-byte Folded Spill
	sd	s5, 296(sp)                     # 8-byte Folded Spill
	sd	s6, 288(sp)                     # 8-byte Folded Spill
	sd	s7, 280(sp)                     # 8-byte Folded Spill
	sd	s8, 272(sp)                     # 8-byte Folded Spill
	sd	s9, 264(sp)                     # 8-byte Folded Spill
	mv	s0, a5
	mv	s1, a3
	ld	a0, 488(a0)
	lw	a1, 16(a1)
	li	s2, 0
	ld	s3, 16(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	s4, 24(a0)
	slli	a4, a4, 32
	srli	a4, a4, 29
	add	s5, a2, a4
	slli	a6, a6, 32
	srli	s6, a6, 32
	mv	s7, a3
	j	.LBB2_3
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	addi	s2, s2, 1
	addi	s0, s0, 8
	addi	s7, s7, 128
	beq	s2, s6, .LBB2_12
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	ld	a1, 0(s5)
	slli	a0, s0, 32
	srli	a0, a0, 32
	add	a1, a1, a0
	lbu	a2, 0(a1)
	addi	a2, a2, -128
	sw	a2, 8(sp)
	lbu	a2, 1(a1)
	addi	a2, a2, -128
	sw	a2, 12(sp)
	lbu	a2, 2(a1)
	addi	a2, a2, -128
	sw	a2, 16(sp)
	lbu	a2, 3(a1)
	addi	a2, a2, -128
	sw	a2, 20(sp)
	lbu	a2, 4(a1)
	addi	a2, a2, -128
	sw	a2, 24(sp)
	lbu	a2, 5(a1)
	addi	a2, a2, -128
	sw	a2, 28(sp)
	lbu	a2, 6(a1)
	addi	a2, a2, -128
	sw	a2, 32(sp)
	lbu	a1, 7(a1)
	ld	a2, 8(s5)
	addi	a1, a1, -128
	sw	a1, 36(sp)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	addi	a1, a1, -128
	sw	a1, 40(sp)
	lbu	a1, 1(a2)
	addi	a1, a1, -128
	sw	a1, 44(sp)
	lbu	a1, 2(a2)
	addi	a1, a1, -128
	sw	a1, 48(sp)
	lbu	a1, 3(a2)
	addi	a1, a1, -128
	sw	a1, 52(sp)
	lbu	a1, 4(a2)
	addi	a1, a1, -128
	sw	a1, 56(sp)
	lbu	a1, 5(a2)
	addi	a1, a1, -128
	sw	a1, 60(sp)
	lbu	a1, 6(a2)
	addi	a1, a1, -128
	sw	a1, 64(sp)
	lbu	a1, 7(a2)
	ld	a2, 16(s5)
	addi	a1, a1, -128
	sw	a1, 68(sp)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	addi	a1, a1, -128
	sw	a1, 72(sp)
	lbu	a1, 1(a2)
	addi	a1, a1, -128
	sw	a1, 76(sp)
	lbu	a1, 2(a2)
	addi	a1, a1, -128
	sw	a1, 80(sp)
	lbu	a1, 3(a2)
	addi	a1, a1, -128
	sw	a1, 84(sp)
	lbu	a1, 4(a2)
	addi	a1, a1, -128
	sw	a1, 88(sp)
	lbu	a1, 5(a2)
	addi	a1, a1, -128
	sw	a1, 92(sp)
	lbu	a1, 6(a2)
	addi	a1, a1, -128
	sw	a1, 96(sp)
	lbu	a1, 7(a2)
	ld	a2, 24(s5)
	addi	a1, a1, -128
	sw	a1, 100(sp)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	addi	a1, a1, -128
	sw	a1, 104(sp)
	lbu	a1, 1(a2)
	addi	a1, a1, -128
	sw	a1, 108(sp)
	lbu	a1, 2(a2)
	addi	a1, a1, -128
	sw	a1, 112(sp)
	lbu	a1, 3(a2)
	addi	a1, a1, -128
	sw	a1, 116(sp)
	lbu	a1, 4(a2)
	addi	a1, a1, -128
	sw	a1, 120(sp)
	lbu	a1, 5(a2)
	addi	a1, a1, -128
	sw	a1, 124(sp)
	lbu	a1, 6(a2)
	addi	a1, a1, -128
	sw	a1, 128(sp)
	lbu	a1, 7(a2)
	ld	a2, 32(s5)
	addi	a1, a1, -128
	sw	a1, 132(sp)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	addi	a1, a1, -128
	sw	a1, 136(sp)
	lbu	a1, 1(a2)
	addi	a1, a1, -128
	sw	a1, 140(sp)
	lbu	a1, 2(a2)
	addi	a1, a1, -128
	sw	a1, 144(sp)
	lbu	a1, 3(a2)
	addi	a1, a1, -128
	sw	a1, 148(sp)
	lbu	a1, 4(a2)
	addi	a1, a1, -128
	sw	a1, 152(sp)
	lbu	a1, 5(a2)
	addi	a1, a1, -128
	sw	a1, 156(sp)
	lbu	a1, 6(a2)
	addi	a1, a1, -128
	sw	a1, 160(sp)
	lbu	a1, 7(a2)
	ld	a2, 40(s5)
	addi	a1, a1, -128
	sw	a1, 164(sp)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	addi	a1, a1, -128
	sw	a1, 168(sp)
	lbu	a1, 1(a2)
	addi	a1, a1, -128
	sw	a1, 172(sp)
	lbu	a1, 2(a2)
	addi	a1, a1, -128
	sw	a1, 176(sp)
	lbu	a1, 3(a2)
	addi	a1, a1, -128
	sw	a1, 180(sp)
	lbu	a1, 4(a2)
	addi	a1, a1, -128
	sw	a1, 184(sp)
	lbu	a1, 5(a2)
	addi	a1, a1, -128
	sw	a1, 188(sp)
	lbu	a1, 6(a2)
	addi	a1, a1, -128
	sw	a1, 192(sp)
	lbu	a1, 7(a2)
	ld	a2, 48(s5)
	addi	a1, a1, -128
	sw	a1, 196(sp)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	addi	a1, a1, -128
	sw	a1, 200(sp)
	lbu	a1, 1(a2)
	addi	a1, a1, -128
	sw	a1, 204(sp)
	lbu	a1, 2(a2)
	addi	a1, a1, -128
	sw	a1, 208(sp)
	lbu	a1, 3(a2)
	addi	a1, a1, -128
	sw	a1, 212(sp)
	lbu	a1, 4(a2)
	addi	a1, a1, -128
	sw	a1, 216(sp)
	lbu	a1, 5(a2)
	addi	a1, a1, -128
	sw	a1, 220(sp)
	lbu	a1, 6(a2)
	addi	a1, a1, -128
	sw	a1, 224(sp)
	lbu	a1, 7(a2)
	ld	a2, 56(s5)
	addi	a1, a1, -128
	sw	a1, 228(sp)
	add	a0, a2, a0
	lbu	a1, 0(a0)
	addi	a1, a1, -128
	sw	a1, 232(sp)
	lbu	a1, 1(a0)
	addi	a1, a1, -128
	sw	a1, 236(sp)
	lbu	a1, 2(a0)
	addi	a1, a1, -128
	sw	a1, 240(sp)
	lbu	a1, 3(a0)
	addi	a1, a1, -128
	sw	a1, 244(sp)
	lbu	a1, 4(a0)
	addi	a1, a1, -128
	sw	a1, 248(sp)
	lbu	a1, 5(a0)
	addi	a1, a1, -128
	sw	a1, 252(sp)
	lbu	a1, 6(a0)
	addi	a1, a1, -128
	sw	a1, 256(sp)
	lbu	a0, 7(a0)
	slli	a1, s2, 7
	add	a1, a1, s1
	addi	s8, a1, 128
	addi	a0, a0, -128
	sw	a0, 260(sp)
	addi	a0, sp, 8
	addi	s9, sp, 8
	jalr	s3
	mv	a0, s4
	mv	a1, s7
	j	.LBB2_6
.LBB2_4:                                #   in Loop: Header=BB2_6 Depth=2
	divw	a2, a3, a2
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=2
	sh	a2, 0(a1)
	addi	a1, a1, 2
	addi	s9, s9, 4
	addi	a0, a0, 4
	beq	a1, s8, .LBB2_2
.LBB2_6:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, 0(a0)
	lw	a3, 0(s9)
	srai	a4, a2, 1
	bltz	a3, .LBB2_9
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=2
	addw	a3, a3, a4
	bge	a3, a2, .LBB2_4
# %bb.8:                                #   in Loop: Header=BB2_6 Depth=2
	li	a2, 0
	j	.LBB2_5
.LBB2_9:                                #   in Loop: Header=BB2_6 Depth=2
	subw	a4, a4, a3
	bge	a4, a2, .LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_6 Depth=2
	negw	a2, zero
	j	.LBB2_5
.LBB2_11:                               #   in Loop: Header=BB2_6 Depth=2
	divw	a2, a4, a2
	negw	a2, a2
	j	.LBB2_5
.LBB2_12:
	ld	ra, 344(sp)                     # 8-byte Folded Reload
	ld	s0, 336(sp)                     # 8-byte Folded Reload
	ld	s1, 328(sp)                     # 8-byte Folded Reload
	ld	s2, 320(sp)                     # 8-byte Folded Reload
	ld	s3, 312(sp)                     # 8-byte Folded Reload
	ld	s4, 304(sp)                     # 8-byte Folded Reload
	ld	s5, 296(sp)                     # 8-byte Folded Reload
	ld	s6, 288(sp)                     # 8-byte Folded Reload
	ld	s7, 280(sp)                     # 8-byte Folded Reload
	ld	s8, 272(sp)                     # 8-byte Folded Reload
	ld	s9, 264(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 352
.LBB2_13:
	ret
.Lfunc_end2:
	.size	forward_DCT, .Lfunc_end2-forward_DCT
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function forward_DCT_float
.LCPI3_0:
	.word	0x46800100                      # float 16384.5
	.text
	.p2align	2
	.type	forward_DCT_float,@function
forward_DCT_float:                      # @forward_DCT_float
# %bb.0:
	beqz	a6, .LBB3_6
# %bb.1:
	addi	sp, sp, -368
	sd	ra, 360(sp)                     # 8-byte Folded Spill
	sd	s0, 352(sp)                     # 8-byte Folded Spill
	sd	s1, 344(sp)                     # 8-byte Folded Spill
	sd	s2, 336(sp)                     # 8-byte Folded Spill
	sd	s3, 328(sp)                     # 8-byte Folded Spill
	sd	s4, 320(sp)                     # 8-byte Folded Spill
	sd	s5, 312(sp)                     # 8-byte Folded Spill
	sd	s6, 304(sp)                     # 8-byte Folded Spill
	sd	s7, 296(sp)                     # 8-byte Folded Spill
	sd	s8, 288(sp)                     # 8-byte Folded Spill
	sd	s9, 280(sp)                     # 8-byte Folded Spill
	sd	s10, 272(sp)                    # 8-byte Folded Spill
	fsd	fs0, 264(sp)                    # 8-byte Folded Spill
	mv	s0, a5
	mv	s1, a3
	ld	a0, 488(a0)
	lw	a1, 16(a1)
	li	s2, 0
	ld	s3, 56(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	s4, 64(a0)
	slli	a4, a4, 32
	srli	a4, a4, 29
	add	s5, a2, a4
	lui	a0, %hi(.LCPI3_0)
	flw	fs0, %lo(.LCPI3_0)(a0)
	slli	a6, a6, 32
	srli	s6, a6, 32
	lui	s7, 1048572
	mv	s8, a3
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	ld	a1, 0(s5)
	slli	a0, s0, 32
	srli	a0, a0, 32
	add	a1, a1, a0
	lbu	a2, 0(a1)
	addi	a2, a2, -128
	fcvt.s.w	fa5, a2
	fsw	fa5, 8(sp)
	lbu	a2, 1(a1)
	addi	a2, a2, -128
	fcvt.s.w	fa5, a2
	fsw	fa5, 12(sp)
	lbu	a2, 2(a1)
	addi	a2, a2, -128
	fcvt.s.w	fa5, a2
	fsw	fa5, 16(sp)
	lbu	a2, 3(a1)
	addi	a2, a2, -128
	fcvt.s.w	fa5, a2
	fsw	fa5, 20(sp)
	lbu	a2, 4(a1)
	addi	a2, a2, -128
	fcvt.s.w	fa5, a2
	fsw	fa5, 24(sp)
	lbu	a2, 5(a1)
	addi	a2, a2, -128
	fcvt.s.w	fa5, a2
	fsw	fa5, 28(sp)
	lbu	a2, 6(a1)
	addi	a2, a2, -128
	fcvt.s.w	fa5, a2
	fsw	fa5, 32(sp)
	lbu	a1, 7(a1)
	ld	a2, 8(s5)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 36(sp)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 40(sp)
	lbu	a1, 1(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 44(sp)
	lbu	a1, 2(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 48(sp)
	lbu	a1, 3(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 52(sp)
	lbu	a1, 4(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 56(sp)
	lbu	a1, 5(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 60(sp)
	lbu	a1, 6(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 64(sp)
	lbu	a1, 7(a2)
	ld	a2, 16(s5)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 68(sp)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 72(sp)
	lbu	a1, 1(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 76(sp)
	lbu	a1, 2(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 80(sp)
	lbu	a1, 3(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 84(sp)
	lbu	a1, 4(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 88(sp)
	lbu	a1, 5(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 92(sp)
	lbu	a1, 6(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 96(sp)
	lbu	a1, 7(a2)
	ld	a2, 24(s5)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 100(sp)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 104(sp)
	lbu	a1, 1(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 108(sp)
	lbu	a1, 2(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 112(sp)
	lbu	a1, 3(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 116(sp)
	lbu	a1, 4(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 120(sp)
	lbu	a1, 5(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 124(sp)
	lbu	a1, 6(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 128(sp)
	lbu	a1, 7(a2)
	ld	a2, 32(s5)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 132(sp)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 136(sp)
	lbu	a1, 1(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 140(sp)
	lbu	a1, 2(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 144(sp)
	lbu	a1, 3(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 148(sp)
	lbu	a1, 4(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 152(sp)
	lbu	a1, 5(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 156(sp)
	lbu	a1, 6(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 160(sp)
	lbu	a1, 7(a2)
	ld	a2, 40(s5)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 164(sp)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 168(sp)
	lbu	a1, 1(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 172(sp)
	lbu	a1, 2(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 176(sp)
	lbu	a1, 3(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 180(sp)
	lbu	a1, 4(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 184(sp)
	lbu	a1, 5(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 188(sp)
	lbu	a1, 6(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 192(sp)
	lbu	a1, 7(a2)
	ld	a2, 48(s5)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 196(sp)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 200(sp)
	lbu	a1, 1(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 204(sp)
	lbu	a1, 2(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 208(sp)
	lbu	a1, 3(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 212(sp)
	lbu	a1, 4(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 216(sp)
	lbu	a1, 5(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 220(sp)
	lbu	a1, 6(a2)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 224(sp)
	lbu	a1, 7(a2)
	ld	a2, 56(s5)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 228(sp)
	add	a0, a2, a0
	lbu	a1, 0(a0)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 232(sp)
	lbu	a1, 1(a0)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 236(sp)
	lbu	a1, 2(a0)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 240(sp)
	lbu	a1, 3(a0)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 244(sp)
	lbu	a1, 4(a0)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 248(sp)
	lbu	a1, 5(a0)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 252(sp)
	lbu	a1, 6(a0)
	addi	a1, a1, -128
	fcvt.s.w	fa5, a1
	fsw	fa5, 256(sp)
	lbu	a0, 7(a0)
	slli	a1, s2, 7
	add	a1, a1, s1
	addi	s9, a1, 128
	addi	a0, a0, -128
	fcvt.s.w	fa5, a0
	fsw	fa5, 260(sp)
	addi	a0, sp, 8
	addi	s10, sp, 8
	jalr	s3
	mv	a0, s4
	mv	a1, s8
.LBB3_3:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	flw	fa5, 0(s10)
	flw	fa4, 0(a0)
	fmul.s	fa5, fa5, fa4
	fadd.s	fa5, fa5, fs0
	fcvt.w.s	a2, fa5, rtz
	add	a2, a2, s7
	sh	a2, 0(a1)
	addi	a1, a1, 2
	addi	a0, a0, 4
	addi	s10, s10, 4
	bne	a1, s9, .LBB3_3
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	addi	s2, s2, 1
	addi	s0, s0, 8
	addi	s8, s8, 128
	bne	s2, s6, .LBB3_2
# %bb.5:
	ld	ra, 360(sp)                     # 8-byte Folded Reload
	ld	s0, 352(sp)                     # 8-byte Folded Reload
	ld	s1, 344(sp)                     # 8-byte Folded Reload
	ld	s2, 336(sp)                     # 8-byte Folded Reload
	ld	s3, 328(sp)                     # 8-byte Folded Reload
	ld	s4, 320(sp)                     # 8-byte Folded Reload
	ld	s5, 312(sp)                     # 8-byte Folded Reload
	ld	s6, 304(sp)                     # 8-byte Folded Reload
	ld	s7, 296(sp)                     # 8-byte Folded Reload
	ld	s8, 288(sp)                     # 8-byte Folded Reload
	ld	s9, 280(sp)                     # 8-byte Folded Reload
	ld	s10, 272(sp)                    # 8-byte Folded Reload
	fld	fs0, 264(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 368
.LBB3_6:
	ret
.Lfunc_end3:
	.size	forward_DCT_float, .Lfunc_end3-forward_DCT_float
                                        # -- End function
	.option	pop
	.type	start_pass_fdctmgr.aanscales,@object # @start_pass_fdctmgr.aanscales
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
start_pass_fdctmgr.aanscales:
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
	.size	start_pass_fdctmgr.aanscales, 128

	.type	start_pass_fdctmgr.aanscalefactor,@object # @start_pass_fdctmgr.aanscalefactor
	.p2align	3, 0x0
start_pass_fdctmgr.aanscalefactor:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff63150b14861ef              # double 1.3870398450000001
	.quad	0x3ff4e7ae914d6fca              # double 1.3065629649999999
	.quad	0x3ff2d062ef6c11aa              # double 1.1758756020000001
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3fe92469c0a7bf3b              # double 0.785694958
	.quad	0x3fe1517a7bc720bb              # double 0.54119609999999996
	.quad	0x3fd1a855de72ab5d              # double 0.275899379
	.size	start_pass_fdctmgr.aanscalefactor, 64

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
