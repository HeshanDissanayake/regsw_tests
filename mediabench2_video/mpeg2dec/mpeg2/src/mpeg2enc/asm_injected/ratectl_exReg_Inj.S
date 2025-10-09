	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"ratectl.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_init_seq
.LCPI0_0:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI0_1:
	.quad	0x4064000000000000              # double 160
.LCPI0_2:
	.quad	0x405cc00000000000              # double 115
.LCPI0_3:
	.quad	0x404e000000000000              # double 60
.LCPI0_4:
	.quad	0x4045000000000000              # double 42
.LCPI0_5:
	.quad	0x4024000000000000              # double 10
.LCPI0_6:
	.quad	0x403f000000000000              # double 31
.LCPI0_7:
	.quad	0x402c000000000000              # double 14
	.text
	.globl	rc_init_seq
	.p2align	2
	.type	rc_init_seq,@function
rc_init_seq:                            # @rc_init_seq
# %bb.0:
	lui	a1, %hi(r)
	lw	a0, %lo(r)(a1)
	bnez	a0, .LBB0_2
# %bb.1:
	lui	a0, %hi(bit_rate)
	fld	fa5, %lo(bit_rate)(a0)
	lui	a0, %hi(frame_rate)
	fld	fa4, %lo(frame_rate)(a0)
	lui	a0, %hi(.LCPI0_0)
	fld	fa3, %lo(.LCPI0_0)(a0)
	fadd.d	fa5, fa5, fa5
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa3
	fcvt.w.d	a0, fa5, rdn
	sw	a0, %lo(r)(a1)
.LBB0_2:
	lui	a1, %hi(avg_act)
	fld	fa5, %lo(avg_act)(a1)
	fmv.d.x	fa4, zero
	feq.d	a2, fa5, fa4
	beqz	a2, .LBB0_4
# %bb.3:
	lui	a2, 16505
	slli	a2, a2, 36
	sd	a2, %lo(avg_act)(a1)
.LBB0_4:
	lui	a1, %hi(Xi)
	lw	a2, %lo(Xi)(a1)
	lui	a3, %hi(R)
	sw	zero, %lo(R)(a3)
	beqz	a2, .LBB0_12
# %bb.5:
	lui	a1, %hi(Xp)
	lw	a2, %lo(Xp)(a1)
	beqz	a2, .LBB0_13
.LBB0_6:
	lui	a1, %hi(Xb)
	lw	a2, %lo(Xb)(a1)
	beqz	a2, .LBB0_14
.LBB0_7:
	lui	a1, %hi(d0i)
	lw	a2, %lo(d0i)(a1)
	beqz	a2, .LBB0_15
.LBB0_8:
	lui	a1, %hi(d0p)
	lw	a2, %lo(d0p)(a1)
	beqz	a2, .LBB0_16
.LBB0_9:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(d0b)
	lw	a1, %lo(d0b)(s0)
	bnez	a1, .LBB0_11
# %bb.10:
	lui	a1, %hi(.LCPI0_7)
	fld	fa5, %lo(.LCPI0_7)(a1)
	lui	a1, %hi(.LCPI0_6)
	fld	fa4, %lo(.LCPI0_6)(a1)
	lui	a1, %hi(.LCPI0_0)
	fld	fa3, %lo(.LCPI0_0)(a1)
	fcvt.d.w	fa2, a0
	fmul.d	fa5, fa2, fa5
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa3
	fcvt.w.d	a0, fa5, rdn
	sw	a0, %lo(d0b)(s0)
.LBB0_11:
	lui	s1, %hi(statfile)
	ld	a3, %lo(statfile)(s1)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	li	a1, 39
	li	a2, 1
	call	fwrite
	ld	a0, %lo(statfile)(s1)
	lui	a1, %hi(Xi)
	lw	a2, %lo(Xi)(a1)
	lui	a1, %hi(Xp)
	lw	a3, %lo(Xp)(a1)
	lui	a1, %hi(Xb)
	lw	a4, %lo(Xb)(a1)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	call	fprintf
	ld	a0, %lo(statfile)(s1)
	lui	a1, %hi(r)
	lw	a2, %lo(r)(a1)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	call	fprintf
	ld	a0, %lo(statfile)(s1)
	lui	a1, %hi(d0i)
	lw	a2, %lo(d0i)(a1)
	lui	a1, %hi(d0p)
	lw	a3, %lo(d0p)(a1)
	lw	a4, %lo(d0b)(s0)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	call	fprintf
	ld	a0, %lo(statfile)(s1)
	lui	a1, %hi(avg_act)
	ld	a2, %lo(avg_act)(a1)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	fprintf
.LBB0_12:
	lui	a2, %hi(bit_rate)
	fld	fa5, %lo(bit_rate)(a2)
	lui	a2, %hi(.LCPI0_1)
	fld	fa4, %lo(.LCPI0_1)(a2)
	lui	a2, %hi(.LCPI0_2)
	fld	fa3, %lo(.LCPI0_2)(a2)
	lui	a2, %hi(.LCPI0_0)
	fld	fa2, %lo(.LCPI0_0)(a2)
	fmul.d	fa5, fa5, fa4
	fdiv.d	fa5, fa5, fa3
	fadd.d	fa5, fa5, fa2
	fcvt.w.d	a2, fa5, rdn
	sw	a2, %lo(Xi)(a1)
	lui	a1, %hi(Xp)
	lw	a2, %lo(Xp)(a1)
	bnez	a2, .LBB0_6
.LBB0_13:
	lui	a2, %hi(bit_rate)
	fld	fa5, %lo(bit_rate)(a2)
	lui	a2, %hi(.LCPI0_3)
	fld	fa4, %lo(.LCPI0_3)(a2)
	lui	a2, %hi(.LCPI0_2)
	fld	fa3, %lo(.LCPI0_2)(a2)
	lui	a2, %hi(.LCPI0_0)
	fld	fa2, %lo(.LCPI0_0)(a2)
	fmul.d	fa5, fa5, fa4
	fdiv.d	fa5, fa5, fa3
	fadd.d	fa5, fa5, fa2
	fcvt.w.d	a2, fa5, rdn
	sw	a2, %lo(Xp)(a1)
	lui	a1, %hi(Xb)
	lw	a2, %lo(Xb)(a1)
	bnez	a2, .LBB0_7
.LBB0_14:
	lui	a2, %hi(bit_rate)
	fld	fa5, %lo(bit_rate)(a2)
	lui	a2, %hi(.LCPI0_4)
	fld	fa4, %lo(.LCPI0_4)(a2)
	lui	a2, %hi(.LCPI0_2)
	fld	fa3, %lo(.LCPI0_2)(a2)
	lui	a2, %hi(.LCPI0_0)
	fld	fa2, %lo(.LCPI0_0)(a2)
	fmul.d	fa5, fa5, fa4
	fdiv.d	fa5, fa5, fa3
	fadd.d	fa5, fa5, fa2
	fcvt.w.d	a2, fa5, rdn
	sw	a2, %lo(Xb)(a1)
	lui	a1, %hi(d0i)
	lw	a2, %lo(d0i)(a1)
	bnez	a2, .LBB0_8
.LBB0_15:
	lui	a2, %hi(.LCPI0_5)
	fld	fa5, %lo(.LCPI0_5)(a2)
	lui	a2, %hi(.LCPI0_6)
	fld	fa4, %lo(.LCPI0_6)(a2)
	lui	a2, %hi(.LCPI0_0)
	fld	fa3, %lo(.LCPI0_0)(a2)
	fcvt.d.w	fa2, a0
	fmul.d	fa5, fa2, fa5
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa3
	fcvt.w.d	a2, fa5, rdn
	sw	a2, %lo(d0i)(a1)
	lui	a1, %hi(d0p)
	lw	a2, %lo(d0p)(a1)
	bnez	a2, .LBB0_9
.LBB0_16:
	lui	a2, %hi(.LCPI0_5)
	fld	fa5, %lo(.LCPI0_5)(a2)
	lui	a2, %hi(.LCPI0_6)
	fld	fa4, %lo(.LCPI0_6)(a2)
	lui	a2, %hi(.LCPI0_0)
	fld	fa3, %lo(.LCPI0_0)(a2)
	fcvt.d.w	fa2, a0
	fmul.d	fa5, fa2, fa5
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa3
	fcvt.w.d	a2, fa5, rdn
	sw	a2, %lo(d0p)(a1)
	j	.LBB0_9
.Lfunc_end0:
	.size	rc_init_seq, .Lfunc_end0-rc_init_seq
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_init_GOP
.LCPI1_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	rc_init_GOP
	.p2align	2
	.type	rc_init_GOP,@function
rc_init_GOP:                            # @rc_init_GOP
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	add	a2, a0, a1
	lui	a3, %hi(bit_rate)
	fld	fa5, %lo(bit_rate)(a3)
	lui	a3, %hi(frame_rate)
	fld	fa4, %lo(frame_rate)(a3)
	addi	a2, a2, 1
	fcvt.d.w	fa3, a2
	fmul.d	fa5, fa5, fa3
	fdiv.d	fa5, fa5, fa4
	lui	a2, %hi(.LCPI1_0)
	fld	fa4, %lo(.LCPI1_0)(a2)
	lui	s0, %hi(R)
	lw	a3, %lo(R)(s0)
	lui	a2, %hi(fieldpic)
	lw	a2, %lo(fieldpic)(a2)
	fadd.d	fa5, fa5, fa4
	fcvt.w.d	a4, fa5, rdn
	add	a3, a3, a4
	sw	a3, %lo(R)(s0)
	beqz	a2, .LBB1_2
# %bb.1:
	slli	a0, a0, 1
	addi	a0, a0, 1
.LBB1_2:
	lui	s1, %hi(Np)
	sw	a0, %lo(Np)(s1)
	snez	a0, a2
	lui	s2, %hi(statfile)
	ld	a3, %lo(statfile)(s2)
	sllw	a0, a1, a0
	lui	s3, %hi(Nb)
	sw	a0, %lo(Nb)(s3)
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	li	a1, 43
	li	a2, 1
	call	fwrite
	ld	a0, %lo(statfile)(s2)
	lw	a2, %lo(R)(s0)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	call	fprintf
	ld	a0, %lo(statfile)(s2)
	lw	a2, %lo(Np)(s1)
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	call	fprintf
	ld	a0, %lo(statfile)(s2)
	lw	a2, %lo(Nb)(s3)
	lui	a1, %hi(.L.str.8)
	addi	a1, a1, %lo(.L.str.8)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	fprintf
.Lfunc_end1:
	.size	rc_init_GOP, .Lfunc_end1-rc_init_GOP
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_init_pict
.LCPI2_0:
	.quad	0x3ff6666666666666              # double 1.3999999999999999
.LCPI2_1:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI2_2:
	.quad	0x3ff0000000000000              # double 1
.LCPI2_3:
	.quad	0x4020000000000000              # double 8
	.text
	.globl	rc_init_pict
	.p2align	2
	.type	rc_init_pict,@function
rc_init_pict:                           # @rc_init_pict
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
	lui	a1, %hi(pict_type)
	lw	a1, %lo(pict_type)(a1)
	li	a2, 1
	mv	s0, a0
	beq	a1, a2, .LBB2_5
# %bb.1:
	li	a0, 2
	beq	a1, a0, .LBB2_4
# %bb.2:
	li	a0, 3
	bne	a1, a0, .LBB2_7
# %bb.3:
	lui	a0, %hi(R)
	lw	a0, %lo(R)(a0)
	lui	a1, %hi(Np)
	lw	a1, %lo(Np)(a1)
	fcvt.d.w	fa5, a0
	lui	a0, %hi(Nb)
	lw	a0, %lo(Nb)(a0)
	fcvt.d.w	fa4, a1
	lui	a1, %hi(.LCPI2_0)
	fld	fa3, %lo(.LCPI2_0)(a1)
	lui	a1, %hi(Xp)
	lw	a1, %lo(Xp)(a1)
	lui	a2, %hi(Xb)
	lw	a2, %lo(Xb)(a2)
	fmul.d	fa4, fa4, fa3
	fcvt.d.w	fa3, a1
	fmul.d	fa4, fa4, fa3
	fcvt.d.w	fa3, a2
	fdiv.d	fa4, fa4, fa3
	lui	a1, %hi(.LCPI2_1)
	fld	fa3, %lo(.LCPI2_1)(a1)
	fcvt.d.w	fa2, a0
	fadd.d	fa4, fa4, fa2
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa3
	fcvt.w.d	a0, fa5, rdn
	lui	a1, %hi(d0b)
	lw	a1, %lo(d0b)(a1)
	j	.LBB2_6
.LBB2_4:
	lui	a0, %hi(R)
	lw	a0, %lo(R)(a0)
	lui	a1, %hi(Np)
	lw	a1, %lo(Np)(a1)
	lui	a2, %hi(Nb)
	lw	a2, %lo(Nb)(a2)
	fcvt.d.w	fa5, a0
	fcvt.d.w	fa4, a1
	fcvt.d.w	fa3, a2
	lui	a0, %hi(Xb)
	lw	a0, %lo(Xb)(a0)
	lui	a1, %hi(Xp)
	lw	a1, %lo(Xp)(a1)
	lui	a2, %hi(.LCPI2_0)
	fld	fa2, %lo(.LCPI2_0)(a2)
	fcvt.d.w	fa1, a0
	fmul.d	fa3, fa3, fa1
	fcvt.d.w	fa1, a1
	fmul.d	fa2, fa1, fa2
	lui	a0, %hi(.LCPI2_1)
	fld	fa1, %lo(.LCPI2_1)(a0)
	fdiv.d	fa3, fa3, fa2
	fadd.d	fa4, fa3, fa4
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa1
	fcvt.w.d	a0, fa5, rdn
	lui	a1, %hi(d0p)
	lw	a1, %lo(d0p)(a1)
	j	.LBB2_6
.LBB2_5:
	lui	a0, %hi(R)
	lw	a0, %lo(R)(a0)
	lui	a1, %hi(Np)
	lw	a1, %lo(Np)(a1)
	lui	a2, %hi(Xp)
	lw	a2, %lo(Xp)(a2)
	lui	a3, %hi(Xi)
	lw	a3, %lo(Xi)(a3)
	fcvt.d.w	fa5, a0
	mul	a0, a2, a1
	fcvt.d.w	fa4, a0
	fcvt.d.w	fa3, a3
	fdiv.d	fa4, fa4, fa3
	lui	a0, %hi(.LCPI2_2)
	fld	fa2, %lo(.LCPI2_2)(a0)
	lui	a0, %hi(Nb)
	lw	a0, %lo(Nb)(a0)
	lui	a1, %hi(Xb)
	lw	a1, %lo(Xb)(a1)
	lui	a2, %hi(.LCPI2_0)
	fld	fa1, %lo(.LCPI2_0)(a2)
	fadd.d	fa4, fa4, fa2
	mul	a0, a1, a0
	fcvt.d.w	fa2, a0
	fmul.d	fa3, fa3, fa1
	lui	a0, %hi(.LCPI2_1)
	fld	fa1, %lo(.LCPI2_1)(a0)
	fdiv.d	fa3, fa2, fa3
	fadd.d	fa4, fa4, fa3
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa1
	fcvt.w.d	a0, fa5, rdn
	lui	a1, %hi(d0i)
	lw	a1, %lo(d0i)(a1)
.LBB2_6:
	lui	a2, %hi(T)
	sw	a0, %lo(T)(a2)
	lui	a2, %hi(d)
	sw	a1, %lo(d)(a2)
	j	.LBB2_8
.LBB2_7:
	lui	a0, %hi(T)
	lw	a0, %lo(T)(a0)
.LBB2_8:
	lui	a1, %hi(bit_rate)
	fld	fa5, %lo(bit_rate)(a1)
	lui	a1, %hi(frame_rate)
	fld	fa4, %lo(frame_rate)(a1)
	lui	a1, %hi(.LCPI2_3)
	fld	fa3, %lo(.LCPI2_3)(a1)
	lui	a1, %hi(.LCPI2_1)
	fld	fa2, %lo(.LCPI2_1)(a1)
	fmul.d	fa4, fa4, fa3
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa2
	fcvt.w.d	a1, fa5, rdn
	bge	a0, a1, .LBB2_10
# %bb.9:
	lui	a0, %hi(T)
	sw	a1, %lo(T)(a0)
.LBB2_10:
	call	bitcount
	lui	a1, %hi(height2)
	lw	a2, %lo(height2)(a1)
	lui	a1, %hi(S)
	sw	a0, %lo(S)(a1)
	lui	a0, %hi(Q)
	sw	zero, %lo(Q)(a0)
	sd	a2, 32(sp)                      # 8-byte Folded Spill
	blez	a2, .LBB2_44
# %bb.11:
	lui	a0, %hi(width)
	lw	s6, %lo(width)(a0)
	blez	s6, .LBB2_44
# %bb.12:
	lui	a0, %hi(pict_struct)
	lw	a0, %lo(pict_struct)(a0)
	lui	a1, %hi(width2)
	lw	s1, %lo(width2)(a1)
	lui	a1, %hi(mbinfo)
	lui	a2, %hi(fieldpic)
	lw	a2, %lo(fieldpic)(a2)
	ld	a1, %lo(mbinfo)(a1)
	slliw	s7, s1, 3
	beqz	a2, .LBB2_24
# %bb.13:                               # %.preheader1
	li	s3, 0
	li	s4, 0
	addi	a1, a1, 80
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	add	s7, s0, s7
	slli	s8, s1, 4
	addi	a0, a0, -2
	lui	a1, %hi(.LCPI2_2)
	fld	fs2, %lo(.LCPI2_2)(a1)
	snez	s10, a0
	addiw	s10, s10, -1
	lui	s11, %hi(width)
	j	.LBB2_15
.LBB2_14:                               #   in Loop: Header=BB2_15 Depth=1
	addi	s3, s3, 16
	add	s7, s7, s8
	add	s0, s0, s8
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	bgeu	s3, a0, .LBB2_44
.LBB2_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_18 Depth 2
	blez	s6, .LBB2_14
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=1
	li	s9, 0
	li	a0, 96
	mul	s5, s4, a0
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	add	s5, a0, s5
	j	.LBB2_18
.LBB2_17:                               #   in Loop: Header=BB2_18 Depth=2
	fadd.d	fa5, fa0, fs2
	fsd	fa5, 0(s5)
	lw	s6, %lo(width)(s11)
	addi	s9, s9, 16
	addi	s5, s5, 96
	addiw	s4, s4, 1
	bge	s9, s6, .LBB2_14
.LBB2_18:                               #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	s6, s10, s6
	add	s6, s9, s6
	add	s2, s0, s6
	mv	a0, s2
	mv	a1, s1
	call	var_sblk
	fmv.d	fs1, fa0
	addi	a0, s2, 8
	mv	a1, s1
	call	var_sblk
	fmv.d	fs0, fa0
	flt.d	a0, fa0, fs1
	bnez	a0, .LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_18 Depth=2
	fmv.d	fs0, fs1
.LBB2_20:                               #   in Loop: Header=BB2_18 Depth=2
	add	s2, s7, s6
	mv	a0, s2
	mv	a1, s1
	call	var_sblk
	fmv.d	fs1, fa0
	flt.d	a0, fa0, fs0
	bnez	a0, .LBB2_22
# %bb.21:                               #   in Loop: Header=BB2_18 Depth=2
	fmv.d	fs1, fs0
.LBB2_22:                               #   in Loop: Header=BB2_18 Depth=2
	addi	a0, s2, 8
	mv	a1, s1
	call	var_sblk
	flt.d	a0, fa0, fs1
	bnez	a0, .LBB2_17
# %bb.23:                               #   in Loop: Header=BB2_18 Depth=2
	fmv.d	fa0, fs1
	j	.LBB2_17
.LBB2_24:                               # %.preheader
	li	s8, 0
	addi	a1, a1, 80
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	slli	a1, s1, 4
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	add	s11, s0, s7
	addi	a0, a0, -2
	snez	s9, a0
	lui	a0, %hi(.LCPI2_2)
	fld	fs3, %lo(.LCPI2_2)(a0)
	addiw	s9, s9, -1
	j	.LBB2_26
.LBB2_25:                               #   in Loop: Header=BB2_26 Depth=1
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	addi	a2, a2, 16
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	s0, s0, a0
	add	s11, s11, a0
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	bgeu	a2, a0, .LBB2_44
.LBB2_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_30 Depth 2
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	blez	s6, .LBB2_25
# %bb.27:                               #   in Loop: Header=BB2_26 Depth=1
	li	s7, 0
	li	a0, 96
	mul	s5, s8, a0
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	add	s5, a0, s5
	j	.LBB2_30
.LBB2_28:                               #   in Loop: Header=BB2_30 Depth=2
	lui	a0, %hi(prog_seq)
	lw	a0, %lo(prog_seq)(a0)
	beqz	a0, .LBB2_36
.LBB2_29:                               #   in Loop: Header=BB2_30 Depth=2
	fadd.d	fa5, fs0, fs3
	fsd	fa5, 0(s5)
	lui	a0, %hi(width)
	lw	s6, %lo(width)(a0)
	addi	s7, s7, 16
	addi	s5, s5, 96
	addiw	s8, s8, 1
	bge	s7, s6, .LBB2_25
.LBB2_30:                               #   Parent Loop BB2_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	s10, s9, s6
	add	s4, s7, s10
	add	s3, s0, s4
	mv	a0, s3
	mv	a1, s1
	call	var_sblk
	fmv.d	fs1, fa0
	addi	s2, s3, 8
	mv	a0, s2
	mv	a1, s1
	call	var_sblk
	fmv.d	fs0, fa0
	flt.d	a0, fa0, fs1
	bnez	a0, .LBB2_32
# %bb.31:                               #   in Loop: Header=BB2_30 Depth=2
	fmv.d	fs0, fs1
.LBB2_32:                               #   in Loop: Header=BB2_30 Depth=2
	add	s4, s11, s4
	mv	a0, s4
	mv	a1, s1
	call	var_sblk
	fmv.d	fs1, fa0
	flt.d	a0, fa0, fs0
	bnez	a0, .LBB2_34
# %bb.33:                               #   in Loop: Header=BB2_30 Depth=2
	fmv.d	fs1, fs0
.LBB2_34:                               #   in Loop: Header=BB2_30 Depth=2
	addi	a0, s4, 8
	mv	a1, s1
	call	var_sblk
	fmv.d	fs0, fa0
	flt.d	a0, fa0, fs1
	bnez	a0, .LBB2_28
# %bb.35:                               #   in Loop: Header=BB2_30 Depth=2
	fmv.d	fs0, fs1
	j	.LBB2_28
.LBB2_36:                               #   in Loop: Header=BB2_30 Depth=2
	slliw	s4, s6, 1
	mv	a0, s3
	mv	a1, s4
	call	var_sblk
	fmv.d	fs2, fa0
	flt.d	a0, fa0, fs0
	bnez	a0, .LBB2_38
# %bb.37:                               #   in Loop: Header=BB2_30 Depth=2
	fmv.d	fs2, fs0
.LBB2_38:                               #   in Loop: Header=BB2_30 Depth=2
	mv	a0, s2
	mv	a1, s4
	call	var_sblk
	fmv.d	fs1, fa0
	flt.d	a0, fa0, fs2
	bnez	a0, .LBB2_40
# %bb.39:                               #   in Loop: Header=BB2_30 Depth=2
	fmv.d	fs1, fs2
.LBB2_40:                               #   in Loop: Header=BB2_30 Depth=2
	add	s6, s7, s6
	add	s2, s6, s10
	add	s2, s0, s2
	mv	a0, s2
	mv	a1, s4
	call	var_sblk
	fmv.d	fs0, fa0
	flt.d	a0, fa0, fs1
	bnez	a0, .LBB2_42
# %bb.41:                               #   in Loop: Header=BB2_30 Depth=2
	fmv.d	fs0, fs1
.LBB2_42:                               #   in Loop: Header=BB2_30 Depth=2
	addi	a0, s2, 8
	mv	a1, s4
	call	var_sblk
	flt.d	a0, fa0, fs0
	beqz	a0, .LBB2_29
# %bb.43:                               #   in Loop: Header=BB2_30 Depth=2
	fmv.d	fs0, fa0
	j	.LBB2_29
.LBB2_44:
	lui	s0, %hi(statfile)
	ld	a3, %lo(statfile)(s0)
	lui	a0, %hi(actsum)
	sd	zero, %lo(actsum)(a0)
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	li	a1, 32
	li	a2, 1
	call	fwrite
	ld	a0, %lo(statfile)(s0)
	lui	a1, %hi(T)
	lw	a2, %lo(T)(a1)
	lui	a1, %hi(.L.str.10)
	addi	a1, a1, %lo(.L.str.10)
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
	addi	sp, sp, 176
	tail	fprintf
.Lfunc_end2:
	.size	rc_init_pict, .Lfunc_end2-rc_init_pict
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_update_pict
.LCPI3_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	rc_update_pict
	.p2align	2
	.type	rc_update_pict,@function
rc_update_pict:                         # @rc_update_pict
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	call	bitcount
	lui	a1, %hi(S)
	lw	a2, %lo(S)(a1)
	lui	a3, %hi(R)
	lw	a4, %lo(R)(a3)
	subw	a0, a0, a2
	sw	a0, %lo(S)(a1)
	subw	a4, a4, a0
	sw	a4, %lo(R)(a3)
	lui	a1, %hi(Q)
	lw	a1, %lo(Q)(a1)
	lui	a2, %hi(.LCPI3_0)
	fld	fa5, %lo(.LCPI3_0)(a2)
	lui	a2, %hi(mb_width)
	lw	a2, %lo(mb_width)(a2)
	lui	a3, %hi(mb_height2)
	lw	a3, %lo(mb_height2)(a3)
	fcvt.d.w	fa4, a0
	fcvt.d.w	fa3, a1
	fmul.d	fa3, fa3, fa5
	mul	a1, a3, a2
	fcvt.d.w	fa2, a1
	lui	a1, %hi(T)
	lw	a2, %lo(T)(a1)
	lui	a3, %hi(d)
	lw	a4, %lo(d)(a3)
	fdiv.d	fa3, fa3, fa2
	fmadd.d	fa5, fa4, fa3, fa5
	fcvt.w.d	a1, fa5, rdn
	subw	a4, a4, a2
	add	a0, a4, a0
	lui	a2, %hi(actsum)
	fld	fa5, %lo(actsum)(a2)
	sw	a0, %lo(d)(a3)
	lui	a2, %hi(pict_type)
	lw	a2, %lo(pict_type)(a2)
	fdiv.d	fa5, fa5, fa2
	lui	a3, %hi(avg_act)
	li	a4, 3
	fsd	fa5, %lo(avg_act)(a3)
	beq	a2, a4, .LBB3_5
# %bb.1:
	li	a3, 2
	beq	a2, a3, .LBB3_4
# %bb.2:
	li	a3, 1
	bne	a2, a3, .LBB3_6
# %bb.3:
	lui	a2, %hi(Xi)
	sw	a1, %lo(Xi)(a2)
	lui	a1, %hi(d0i)
	sw	a0, %lo(d0i)(a1)
	j	.LBB3_6
.LBB3_4:
	lui	a2, %hi(Xp)
	lui	a3, %hi(Np)
	lw	a4, %lo(Np)(a3)
	sw	a1, %lo(Xp)(a2)
	lui	a1, %hi(d0p)
	sw	a0, %lo(d0p)(a1)
	addi	a4, a4, -1
	sw	a4, %lo(Np)(a3)
	j	.LBB3_6
.LBB3_5:
	lui	a2, %hi(Xb)
	lui	a3, %hi(Nb)
	lw	a4, %lo(Nb)(a3)
	sw	a1, %lo(Xb)(a2)
	lui	a1, %hi(d0b)
	sw	a0, %lo(d0b)(a1)
	addi	a4, a4, -1
	sw	a4, %lo(Nb)(a3)
.LBB3_6:
	lui	s0, %hi(statfile)
	ld	a3, %lo(statfile)(s0)
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	li	a1, 30
	li	a2, 1
	call	fwrite
	ld	a0, %lo(statfile)(s0)
	lui	a1, %hi(S)
	lw	a2, %lo(S)(a1)
	lui	a1, %hi(.L.str.12)
	addi	a1, a1, %lo(.L.str.12)
	call	fprintf
	lui	a0, %hi(Q)
	lw	a1, %lo(Q)(a0)
	lui	a0, %hi(mb_width)
	lw	a2, %lo(mb_width)(a0)
	lui	a0, %hi(mb_height2)
	lw	a3, %lo(mb_height2)(a0)
	ld	a0, %lo(statfile)(s0)
	fcvt.d.w	fa5, a1
	mul	a1, a3, a2
	fcvt.d.w	fa4, a1
	fdiv.d	fa5, fa5, fa4
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.13)
	addi	a1, a1, %lo(.L.str.13)
	call	fprintf
	ld	a0, %lo(statfile)(s0)
	lui	a1, %hi(R)
	lw	a2, %lo(R)(a1)
	lui	a1, %hi(.L.str.14)
	addi	a1, a1, %lo(.L.str.14)
	call	fprintf
	ld	a0, %lo(statfile)(s0)
	lui	a1, %hi(Xi)
	lw	a2, %lo(Xi)(a1)
	lui	a1, %hi(Xp)
	lw	a3, %lo(Xp)(a1)
	lui	a1, %hi(Xb)
	lw	a4, %lo(Xb)(a1)
	lui	a1, %hi(.L.str.15)
	addi	a1, a1, %lo(.L.str.15)
	call	fprintf
	ld	a0, %lo(statfile)(s0)
	lui	a1, %hi(d0i)
	lw	a2, %lo(d0i)(a1)
	lui	a1, %hi(d0p)
	lw	a3, %lo(d0p)(a1)
	lui	a1, %hi(d0b)
	lw	a4, %lo(d0b)(a1)
	lui	a1, %hi(.L.str.16)
	addi	a1, a1, %lo(.L.str.16)
	call	fprintf
	ld	a0, %lo(statfile)(s0)
	lui	a1, %hi(Np)
	lw	a2, %lo(Np)(a1)
	lui	a1, %hi(.L.str.17)
	addi	a1, a1, %lo(.L.str.17)
	call	fprintf
	ld	a0, %lo(statfile)(s0)
	lui	a1, %hi(Nb)
	lw	a2, %lo(Nb)(a1)
	lui	a1, %hi(.L.str.18)
	addi	a1, a1, %lo(.L.str.18)
	call	fprintf
	ld	a0, %lo(statfile)(s0)
	lui	a1, %hi(avg_act)
	ld	a2, %lo(avg_act)(a1)
	lui	a1, %hi(.L.str.19)
	addi	a1, a1, %lo(.L.str.19)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	fprintf
.Lfunc_end3:
	.size	rc_update_pict, .Lfunc_end3-rc_update_pict
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_start_mb
.LCPI4_0:
	.quad	0x403f000000000000              # double 31
.LCPI4_1:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	rc_start_mb
	.p2align	2
	.type	rc_start_mb,@function
rc_start_mb:                            # @rc_start_mb
# %bb.0:
	lui	a0, %hi(q_scale_type)
	lw	a0, %lo(q_scale_type)(a0)
	lui	a1, %hi(d)
	lw	a1, %lo(d)(a1)
	fcvt.d.w	fa5, a1
	beqz	a0, .LBB4_6
# %bb.1:
	fadd.d	fa5, fa5, fa5
	lui	a0, %hi(.LCPI4_0)
	fld	fa4, %lo(.LCPI4_0)(a0)
	lui	a0, %hi(r)
	lw	a0, %lo(r)(a0)
	lui	a1, %hi(.LCPI4_1)
	fld	fa3, %lo(.LCPI4_1)(a1)
	fmul.d	fa5, fa5, fa4
	fcvt.d.w	fa4, a0
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa3
	fcvt.w.d	a0, fa5, rdn
	bgtz	a0, .LBB4_3
# %bb.2:
	li	a0, 1
.LBB4_3:
	li	a1, 112
	blt	a0, a1, .LBB4_5
# %bb.4:
	li	a0, 112
.LBB4_5:
	lui	a1, %hi(map_non_linear_mquant)
	addi	a1, a1, %lo(map_non_linear_mquant)
	add	a0, a1, a0
	lbu	a0, 0(a0)
	lui	a1, %hi(non_linear_mquant_table)
	addi	a1, a1, %lo(non_linear_mquant_table)
	add	a0, a1, a0
	lbu	a0, 0(a0)
	ret
.LBB4_6:
	lui	a0, %hi(.LCPI4_0)
	fld	fa4, %lo(.LCPI4_0)(a0)
	lui	a0, %hi(r)
	lw	a0, %lo(r)(a0)
	lui	a1, %hi(.LCPI4_1)
	fld	fa3, %lo(.LCPI4_1)(a1)
	fmul.d	fa5, fa5, fa4
	fcvt.d.w	fa4, a0
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa3
	fcvt.w.d	a0, fa5, rdn
	slliw	a0, a0, 1
	li	a1, 2
	bge	a1, a0, .LBB4_9
# %bb.7:
	li	a1, 62
	bge	a0, a1, .LBB4_10
.LBB4_8:
	lui	a1, %hi(prev_mquant)
	sw	a0, %lo(prev_mquant)(a1)
	ret
.LBB4_9:
	li	a0, 2
	li	a1, 62
	blt	a0, a1, .LBB4_8
.LBB4_10:
	li	a0, 62
	lui	a1, %hi(prev_mquant)
	sw	a0, %lo(prev_mquant)(a1)
	ret
.Lfunc_end4:
	.size	rc_start_mb, .Lfunc_end4-rc_start_mb
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_calc_mquant
.LCPI5_0:
	.quad	0x403f000000000000              # double 31
.LCPI5_1:
	.quad	0x4000000000000000              # double 2
.LCPI5_2:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	rc_calc_mquant
	.p2align	2
	.type	rc_calc_mquant,@function
rc_calc_mquant:                         # @rc_calc_mquant
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(d)
	lw	s1, %lo(d)(a1)
	mv	s0, a0
	call	bitcount
	lui	a1, %hi(T)
	lui	a2, %hi(mb_width)
	lw	a2, %lo(mb_width)(a2)
	lui	a3, %hi(mb_height2)
	lw	a3, %lo(mb_height2)(a3)
	lw	a1, %lo(T)(a1)
	lui	a4, %hi(S)
	lw	a4, %lo(S)(a4)
	mul	a2, a3, a2
	divw	a1, a1, a2
	mul	a1, a1, s0
	add	a0, a0, s1
	add	a1, a4, a1
	subw	a0, a0, a1
	fcvt.d.w	fa5, a0
	lui	a0, %hi(.LCPI5_0)
	fld	fa4, %lo(.LCPI5_0)(a0)
	lui	a0, %hi(r)
	lui	a1, %hi(mbinfo)
	ld	a1, %lo(mbinfo)(a1)
	lw	a0, %lo(r)(a0)
	li	a2, 96
	mul	a2, s0, a2
	add	a1, a1, a2
	fld	fa3, 80(a1)
	lui	a1, %hi(actsum)
	fld	fa2, %lo(actsum)(a1)
	fmul.d	fa5, fa5, fa4
	fcvt.d.w	fa4, a0
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa4, fa3, fa2
	lui	a0, %hi(avg_act)
	fld	fa2, %lo(avg_act)(a0)
	lui	a0, %hi(.LCPI5_1)
	fld	fa1, %lo(.LCPI5_1)(a0)
	lui	a0, %hi(q_scale_type)
	lw	a0, %lo(q_scale_type)(a0)
	fsd	fa4, %lo(actsum)(a1)
	fmadd.d	fa4, fa3, fa1, fa2
	fmadd.d	fa3, fa2, fa1, fa3
	fdiv.d	fa4, fa4, fa3
	beqz	a0, .LBB5_6
# %bb.1:
	lui	a0, %hi(.LCPI5_2)
	fld	fa3, %lo(.LCPI5_2)(a0)
	fadd.d	fa5, fa5, fa5
	fmadd.d	fa5, fa5, fa4, fa3
	fcvt.w.d	a0, fa5, rdn
	bgtz	a0, .LBB5_3
# %bb.2:
	li	a0, 1
.LBB5_3:
	li	a1, 112
	blt	a0, a1, .LBB5_5
# %bb.4:
	li	a0, 112
.LBB5_5:
	lui	a1, %hi(map_non_linear_mquant)
	addi	a1, a1, %lo(map_non_linear_mquant)
	add	a0, a1, a0
	lbu	a0, 0(a0)
	lui	a1, %hi(non_linear_mquant_table)
	addi	a1, a1, %lo(non_linear_mquant_table)
	add	a0, a1, a0
	lbu	a0, 0(a0)
	j	.LBB5_15
.LBB5_6:
	lui	a0, %hi(.LCPI5_2)
	fld	fa3, %lo(.LCPI5_2)(a0)
	fmadd.d	fa5, fa5, fa4, fa3
	fcvt.w.d	a0, fa5, rdn
	slliw	a1, a0, 1
	li	a2, 2
	mv	a0, a1
	bge	a2, a1, .LBB5_9
# %bb.7:
	li	a2, 62
	bge	a0, a2, .LBB5_10
.LBB5_8:
	li	a2, 8
	bge	a1, a2, .LBB5_11
	j	.LBB5_14
.LBB5_9:
	li	a0, 2
	li	a2, 62
	blt	a0, a2, .LBB5_8
.LBB5_10:
	li	a0, 62
	li	a2, 8
	blt	a1, a2, .LBB5_14
.LBB5_11:
	lui	a1, %hi(prev_mquant)
	lw	a1, %lo(prev_mquant)(a1)
	subw	a2, a0, a1
	addiw	a2, a2, 4
	li	a3, 9
	bltu	a2, a3, .LBB5_13
# %bb.12:
	mv	a1, a0
.LBB5_13:
	mv	a0, a1
.LBB5_14:
	lui	a1, %hi(prev_mquant)
	sw	a0, %lo(prev_mquant)(a1)
.LBB5_15:
	lui	a1, %hi(Q)
	lw	a2, %lo(Q)(a1)
	add	a2, a2, a0
	sw	a2, %lo(Q)(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end5:
	.size	rc_calc_mquant, .Lfunc_end5-rc_calc_mquant
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	vbv_end_of_picture              # -- Begin function vbv_end_of_picture
	.p2align	2
	.type	vbv_end_of_picture,@function
vbv_end_of_picture:                     # @vbv_end_of_picture
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	call	bitcount
	addi	a0, a0, 7
	andi	a0, a0, -8
	lui	a1, %hi(bitcnt_EOP)
	sw	a0, %lo(bitcnt_EOP)(a1)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end6:
	.size	vbv_end_of_picture, .Lfunc_end6-vbv_end_of_picture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function calc_vbv_delay
.LCPI7_0:
	.quad	0xc0f5f90000000000              # double -9.0E+4
.LCPI7_1:
	.quad	0x40f5f90000000000              # double 9.0E+4
.LCPI7_2:
	.quad	0x41107ac000000000              # double 2.7E+5
.LCPI7_3:
	.quad	0x4105f90000000000              # double 1.8E+5
.LCPI7_4:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	calc_vbv_delay
	.p2align	2
	.type	calc_vbv_delay,@function
calc_vbv_delay:                         # @calc_vbv_delay
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	fsd	fs0, 8(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(pict_type)
	lw	a0, %lo(pict_type)(a0)
	li	a1, 3
	bne	a0, a1, .LBB7_5
# %bb.1:
	lui	a0, %hi(prog_seq)
	lw	a0, %lo(prog_seq)(a0)
	beqz	a0, .LBB7_9
# %bb.2:
	lui	a0, %hi(repeatfirst)
	lw	a0, %lo(repeatfirst)(a0)
	beqz	a0, .LBB7_15
# %bb.3:
	lui	a0, %hi(topfirst)
	lw	a0, %lo(topfirst)(a0)
	lui	a1, %hi(frame_rate)
	fld	fa5, %lo(frame_rate)(a1)
	beqz	a0, .LBB7_17
# %bb.4:
	lui	a0, %hi(.LCPI7_2)
	fld	fa4, %lo(.LCPI7_2)(a0)
	fdiv.d	fs0, fa4, fa5
	j	.LBB7_28
.LBB7_5:
	lui	a0, %hi(fieldpic)
	lw	a0, %lo(fieldpic)(a0)
	beqz	a0, .LBB7_11
# %bb.6:
	lui	a0, %hi(pict_struct)
	lw	a0, %lo(pict_struct)(a0)
	lui	a1, %hi(topfirst)
	lw	a1, %lo(topfirst)(a1)
	addi	a0, a0, -1
	seqz	a0, a0
	beq	a1, a0, .LBB7_10
# %bb.7:
	lui	a0, %hi(calc_vbv_delay.next_ip_delay)
	fld	fa3, %lo(calc_vbv_delay.next_ip_delay)(a0)
	lui	a1, %hi(frame_rate)
	fld	fa5, %lo(frame_rate)(a1)
	lui	a1, %hi(.LCPI7_0)
	fld	fa2, %lo(.LCPI7_0)(a1)
	lui	a1, %hi(prog_seq)
	lw	a1, %lo(prog_seq)(a1)
	fadd.d	fa4, fa5, fa5
	fdiv.d	fa2, fa2, fa4
	fadd.d	fs0, fa3, fa2
	bnez	a1, .LBB7_12
# %bb.8:
	lui	a1, %hi(.LCPI7_1)
	fld	fa3, %lo(.LCPI7_1)(a1)
	fdiv.d	fa4, fa3, fa4
	j	.LBB7_27
.LBB7_9:
	lui	a0, %hi(fieldpic)
	lw	a0, %lo(fieldpic)(a0)
	beqz	a0, .LBB7_18
.LBB7_10:
	lui	a0, %hi(frame_rate)
	fld	fa5, %lo(frame_rate)(a0)
	lui	a0, %hi(.LCPI7_1)
	fld	fa4, %lo(.LCPI7_1)(a0)
	fadd.d	fa3, fa5, fa5
	fdiv.d	fs0, fa4, fa3
	j	.LBB7_28
.LBB7_11:
	lui	a0, %hi(calc_vbv_delay.next_ip_delay)
	lui	a1, %hi(prog_seq)
	lw	a1, %lo(prog_seq)(a1)
	fld	fs0, %lo(calc_vbv_delay.next_ip_delay)(a0)
	beqz	a1, .LBB7_20
.LBB7_12:
	lui	a0, %hi(repeatfirst)
	lw	a0, %lo(repeatfirst)(a0)
	beqz	a0, .LBB7_16
# %bb.13:
	lui	a0, %hi(topfirst)
	lw	a0, %lo(topfirst)(a0)
	lui	a1, %hi(frame_rate)
	fld	fa5, %lo(frame_rate)(a1)
	beqz	a0, .LBB7_22
# %bb.14:
	lui	a0, %hi(.LCPI7_2)
	fld	fa4, %lo(.LCPI7_2)(a0)
	fdiv.d	fa4, fa4, fa5
	j	.LBB7_26
.LBB7_15:
	lui	a0, %hi(frame_rate)
	fld	fa5, %lo(frame_rate)(a0)
	lui	a0, %hi(.LCPI7_1)
	fld	fa4, %lo(.LCPI7_1)(a0)
	fdiv.d	fs0, fa4, fa5
	j	.LBB7_28
.LBB7_16:
	lui	a0, %hi(frame_rate)
	fld	fa5, %lo(frame_rate)(a0)
	lui	a0, %hi(.LCPI7_1)
	fld	fa4, %lo(.LCPI7_1)(a0)
	fdiv.d	fa4, fa4, fa5
	j	.LBB7_26
.LBB7_17:
	lui	a0, %hi(.LCPI7_3)
	fld	fa4, %lo(.LCPI7_3)(a0)
	fdiv.d	fs0, fa4, fa5
	j	.LBB7_28
.LBB7_18:
	lui	a0, %hi(repeatfirst)
	lw	a0, %lo(repeatfirst)(a0)
	lui	a1, %hi(frame_rate)
	fld	fa5, %lo(frame_rate)(a1)
	fadd.d	fa4, fa5, fa5
	beqz	a0, .LBB7_23
# %bb.19:
	lui	a0, %hi(.LCPI7_2)
	fld	fa3, %lo(.LCPI7_2)(a0)
	fdiv.d	fs0, fa3, fa4
	j	.LBB7_28
.LBB7_20:
	lui	a0, %hi(repeatfirst)
	lw	a0, %lo(repeatfirst)(a0)
	lui	a1, %hi(frame_rate)
	fld	fa5, %lo(frame_rate)(a1)
	fadd.d	fa4, fa5, fa5
	beqz	a0, .LBB7_24
# %bb.21:
	lui	a0, %hi(.LCPI7_2)
	fld	fa3, %lo(.LCPI7_2)(a0)
	j	.LBB7_25
.LBB7_22:
	lui	a0, %hi(.LCPI7_3)
	fld	fa4, %lo(.LCPI7_3)(a0)
	fdiv.d	fa4, fa4, fa5
	j	.LBB7_26
.LBB7_23:
	lui	a0, %hi(.LCPI7_3)
	fld	fa3, %lo(.LCPI7_3)(a0)
	fdiv.d	fs0, fa3, fa4
	j	.LBB7_28
.LBB7_24:
	lui	a0, %hi(.LCPI7_3)
	fld	fa3, %lo(.LCPI7_3)(a0)
.LBB7_25:
	fdiv.d	fa4, fa3, fa4
.LBB7_26:
	lui	a0, %hi(calc_vbv_delay.next_ip_delay)
.LBB7_27:
	fsd	fa4, %lo(calc_vbv_delay.next_ip_delay)(a0)
.LBB7_28:
	lui	a0, %hi(calc_vbv_delay.decoding_time)
	fld	fa4, %lo(calc_vbv_delay.decoding_time)(a0)
	fmv.d.x	fa3, zero
	feq.d	a0, fa4, fa3
	beqz	a0, .LBB7_31
# %bb.29:
	lui	a0, %hi(vbv_buffer_size)
	lw	a0, %lo(vbv_buffer_size)(a0)
	slli	a1, a0, 11
	slli	a0, a0, 14
	lui	a2, %hi(.LCPI7_1)
	fld	fa3, %lo(.LCPI7_1)(a2)
	lui	a2, %hi(bit_rate)
	fld	fa2, %lo(bit_rate)(a2)
	lui	a2, %hi(fieldpic)
	lw	a2, %lo(fieldpic)(a2)
	subw	a0, a0, a1
	fcvt.d.w	fa1, a0
	fmul.d	fa1, fa1, fa3
	fdiv.d	fs0, fa1, fa2
	beqz	a2, .LBB7_31
# %bb.30:
	lui	a0, %hi(.LCPI7_4)
	fld	fa2, %lo(.LCPI7_4)(a0)
	fdiv.d	fa5, fa3, fa5
	fadd.d	fa5, fa5, fa2
	fcvt.w.d	a0, fa5, rtz
	fcvt.d.w	fa5, a0
	lui	a0, %hi(calc_vbv_delay.next_ip_delay)
	fsd	fa5, %lo(calc_vbv_delay.next_ip_delay)(a0)
.LBB7_31:
	lui	a0, %hi(low_delay)
	lw	a0, %lo(low_delay)(a0)
	bnez	a0, .LBB7_34
# %bb.32:
	lui	a0, %hi(bitcnt_EOP)
	lw	a0, %lo(bitcnt_EOP)(a0)
	lui	a1, %hi(.LCPI7_1)
	fld	fa5, %lo(.LCPI7_1)(a1)
	lui	a1, %hi(bit_rate)
	fld	fa3, %lo(bit_rate)(a1)
	fcvt.d.w	fa2, a0
	fmul.d	fa5, fa2, fa5
	fdiv.d	fa5, fa5, fa3
	flt.d	a0, fa4, fa5
	beqz	a0, .LBB7_34
# %bb.33:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB7_44
.LBB7_34:
	fadd.d	fs0, fs0, fa4
	lui	s2, %hi(calc_vbv_delay.decoding_time)
	fsd	fs0, %lo(calc_vbv_delay.decoding_time)(s2)
	call	bitcount
	lui	a1, %hi(.LCPI7_1)
	fld	fa5, %lo(.LCPI7_1)(a1)
	lui	a1, %hi(bit_rate)
	fld	fa4, %lo(bit_rate)(a1)
	fcvt.d.w	fa3, a0
	fmul.d	fa3, fa3, fa5
	fdiv.d	fa3, fa3, fa4
	fsub.d	fa3, fs0, fa3
	lui	s4, %hi(bitcnt_EOP)
	lw	a0, %lo(bitcnt_EOP)(s4)
	fcvt.w.d	s0, fa3, rtz
	lui	s3, %hi(vbv_delay)
	fld	fa3, %lo(calc_vbv_delay.decoding_time)(s2)
	fcvt.d.w	fa2, a0
	lui	a0, %hi(vbv_buffer_size)
	lw	a0, %lo(vbv_buffer_size)(a0)
	fmul.d	fa2, fa2, fa5
	fdiv.d	fa2, fa2, fa4
	fsub.d	fa3, fa3, fa2
	slli	a0, a0, 14
	fcvt.d.w	fa2, a0
	fmul.d	fa5, fa2, fa5
	fdiv.d	fa5, fa5, fa4
	flt.d	a0, fa5, fa3
	sw	s0, %lo(vbv_delay)(s3)
	beqz	a0, .LBB7_36
# %bb.35:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	beqz	a0, .LBB7_43
.LBB7_36:
	lui	a0, %hi(statfile)
	ld	s1, %lo(statfile)(a0)
	call	bitcount
	lw	a5, %lo(bitcnt_EOP)(s4)
	ld	a4, %lo(calc_vbv_delay.decoding_time)(s2)
	mv	a3, a0
	lui	a1, %hi(.L.str.22)
	addi	a1, a1, %lo(.L.str.22)
	mv	a0, s1
	mv	a2, s0
	call	fprintf
	lw	a2, %lo(vbv_delay)(s3)
	bltz	a2, .LBB7_40
# %bb.37:
	srliw	a0, a2, 16
	beqz	a0, .LBB7_42
# %bb.38:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	lui	s0, 16
	addi	s0, s0, -1
	bnez	a0, .LBB7_41
# %bb.39:
	lui	a1, %hi(.L.str.24)
	addi	a1, a1, %lo(.L.str.24)
	j	.LBB7_46
.LBB7_40:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	li	s0, 0
	beqz	a0, .LBB7_45
.LBB7_41:
	lui	a0, %hi(vbv_delay)
	sw	s0, %lo(vbv_delay)(a0)
.LBB7_42:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	fld	fs0, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB7_43:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	li	a1, 20
	li	a2, 1
	call	fwrite
	lui	a0, %hi(vbv_delay)
	lw	s0, %lo(vbv_delay)(a0)
	j	.LBB7_36
.LBB7_44:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	fmv.x.d	a2, fa4
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.20)
	addi	a1, a1, %lo(.L.str.20)
	call	fprintf
	lui	a0, %hi(calc_vbv_delay.decoding_time)
	fld	fa4, %lo(calc_vbv_delay.decoding_time)(a0)
	j	.LBB7_34
.LBB7_45:
	lui	a1, %hi(.L.str.23)
	addi	a1, a1, %lo(.L.str.23)
.LBB7_46:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	call	fprintf
	j	.LBB7_41
.Lfunc_end7:
	.size	calc_vbv_delay, .Lfunc_end7-calc_vbv_delay
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function var_sblk
.LCPI8_0:
	.quad	0x3f90000000000000              # double 0.015625
	.text
	.p2align	2
	.type	var_sblk,@function
var_sblk:                               # @var_sblk
# %bb.0:
	lbu	a2, 0(a0)
	lbu	a3, 1(a0)
	mul	a4, a2, a2
	add	a2, a2, a3
	lbu	a5, 2(a0)
	lbu	a6, 3(a0)
	mul	a3, a3, a3
	add	a3, a3, a4
	mul	a4, a5, a5
	add	a5, a5, a6
	add	a2, a2, a5
	mul	a5, a6, a6
	lbu	a6, 4(a0)
	add	a4, a5, a4
	lbu	a5, 5(a0)
	add	a3, a4, a3
	mul	a4, a6, a6
	lbu	a7, 6(a0)
	add	a6, a6, a5
	mul	a5, a5, a5
	add	a4, a5, a4
	add	a6, a6, a7
	add	a2, a2, a6
	mul	a5, a7, a7
	add	a4, a5, a4
	lbu	a5, 7(a0)
	add	a0, a0, a1
	lbu	a6, 0(a0)
	add	a3, a4, a3
	mul	a4, a5, a5
	lbu	a7, 1(a0)
	add	a5, a5, a6
	mul	a6, a6, a6
	add	a4, a6, a4
	add	a5, a5, a7
	add	a2, a2, a5
	mul	a5, a7, a7
	lbu	a6, 2(a0)
	add	a4, a5, a4
	lbu	a5, 3(a0)
	add	a3, a4, a3
	mul	a4, a6, a6
	lbu	a7, 4(a0)
	add	a6, a6, a5
	mul	a5, a5, a5
	add	a4, a5, a4
	add	a6, a6, a7
	lbu	a5, 5(a0)
	mul	a7, a7, a7
	add	a4, a7, a4
	add	a7, a0, a1
	add	a6, a6, a5
	add	a2, a2, a6
	mul	a5, a5, a5
	lbu	a6, 6(a0)
	add	a4, a5, a4
	lbu	a0, 7(a0)
	add	a3, a4, a3
	mul	a4, a6, a6
	lbu	a5, 0(a7)
	add	a6, a6, a0
	mul	a0, a0, a0
	add	a0, a0, a4
	add	a6, a6, a5
	lbu	a4, 1(a7)
	mul	a5, a5, a5
	add	a0, a5, a0
	lbu	a5, 2(a7)
	add	a6, a6, a4
	mul	a4, a4, a4
	add	a0, a4, a0
	add	a6, a6, a5
	add	a2, a2, a6
	mul	a4, a5, a5
	lbu	a5, 3(a7)
	add	a0, a4, a0
	lbu	a4, 4(a7)
	add	a0, a0, a3
	mul	a3, a5, a5
	lbu	a6, 5(a7)
	add	a5, a5, a4
	mul	a4, a4, a4
	add	a3, a4, a3
	add	a5, a5, a6
	mul	a4, a6, a6
	lbu	a6, 6(a7)
	add	a3, a4, a3
	add	a4, a7, a1
	lbu	a7, 7(a7)
	add	a5, a5, a6
	mul	a6, a6, a6
	add	a3, a6, a3
	add	a5, a5, a7
	add	a2, a2, a5
	mul	a5, a7, a7
	lbu	a6, 0(a4)
	add	a3, a5, a3
	lbu	a5, 1(a4)
	add	a0, a3, a0
	mul	a3, a6, a6
	lbu	a7, 2(a4)
	add	a6, a6, a5
	mul	a5, a5, a5
	add	a3, a5, a3
	add	a6, a6, a7
	lbu	a5, 3(a4)
	mul	a7, a7, a7
	add	a3, a7, a3
	lbu	a7, 4(a4)
	add	a6, a6, a5
	mul	a5, a5, a5
	add	a3, a5, a3
	add	a6, a6, a7
	add	a2, a2, a6
	mul	a5, a7, a7
	add	a3, a5, a3
	lbu	a5, 5(a4)
	lbu	a6, 6(a4)
	add	a7, a4, a1
	add	a0, a3, a0
	mul	a3, a5, a5
	add	a5, a5, a6
	lbu	a4, 7(a4)
	mul	a6, a6, a6
	add	a3, a6, a3
	lbu	a6, 0(a7)
	add	a5, a5, a4
	mul	a4, a4, a4
	add	a3, a4, a3
	add	a5, a5, a6
	lbu	a4, 1(a7)
	mul	a6, a6, a6
	add	a3, a6, a3
	lbu	a6, 2(a7)
	add	a5, a5, a4
	mul	a4, a4, a4
	add	a3, a4, a3
	add	a5, a5, a6
	add	a2, a2, a5
	mul	a4, a6, a6
	lbu	a5, 3(a7)
	add	a3, a4, a3
	lbu	a4, 4(a7)
	add	a0, a3, a0
	mul	a3, a5, a5
	lbu	a6, 5(a7)
	add	a5, a5, a4
	mul	a4, a4, a4
	add	a3, a4, a3
	add	a5, a5, a6
	lbu	a4, 6(a7)
	mul	a6, a6, a6
	add	a3, a6, a3
	addi	a6, a7, 8
	add	a5, a5, a4
	mul	a4, a4, a4
	lbu	a7, 7(a7)
	add	a3, a4, a3
	add	a6, a6, a1
	lbu	a4, -8(a6)
	add	a5, a5, a7
	mul	a7, a7, a7
	add	a3, a7, a3
	add	a5, a5, a4
	add	a2, a2, a5
	mul	a4, a4, a4
	lbu	a5, -7(a6)
	add	a3, a4, a3
	lbu	a4, -6(a6)
	add	a0, a3, a0
	mul	a3, a5, a5
	lbu	a7, -5(a6)
	add	a5, a5, a4
	mul	a4, a4, a4
	add	a3, a4, a3
	add	a5, a5, a7
	lbu	a4, -4(a6)
	mul	a7, a7, a7
	add	a3, a7, a3
	lbu	a7, -3(a6)
	add	a5, a5, a4
	mul	a4, a4, a4
	add	a3, a4, a3
	add	a5, a5, a7
	add	a2, a2, a5
	mul	a4, a7, a7
	lbu	a5, -2(a6)
	lbu	a7, -1(a6)
	add	a3, a4, a3
	add	a0, a3, a0
	mul	a3, a5, a5
	add	a5, a5, a7
	add	a6, a6, a1
	lbu	a4, -8(a6)
	mul	a7, a7, a7
	add	a3, a7, a3
	lbu	a7, -7(a6)
	add	a5, a5, a4
	mul	a4, a4, a4
	add	a3, a4, a3
	add	a5, a5, a7
	lbu	a4, -6(a6)
	mul	a7, a7, a7
	add	a3, a7, a3
	lbu	a7, -5(a6)
	add	a5, a5, a4
	mul	a4, a4, a4
	add	a3, a4, a3
	add	a5, a5, a7
	add	a2, a2, a5
	mul	a4, a7, a7
	lbu	a5, -4(a6)
	lbu	a7, -3(a6)
	add	a3, a4, a3
	add	a0, a3, a0
	mul	a3, a5, a5
	add	a5, a5, a7
	lbu	a4, -2(a6)
	mul	a7, a7, a7
	add	a3, a7, a3
	lbu	a7, -1(a6)
	add	a5, a5, a4
	mul	a4, a4, a4
	add	a3, a4, a3
	add	a5, a5, a7
	add	a1, a6, a1
	lbu	a4, -8(a1)
	mul	a6, a7, a7
	add	a3, a6, a3
	lbu	a6, -7(a1)
	add	a5, a5, a4
	mul	a4, a4, a4
	add	a3, a4, a3
	add	a5, a5, a6
	add	a2, a2, a5
	mul	a4, a6, a6
	lbu	a5, -6(a1)
	lbu	a6, -5(a1)
	add	a3, a4, a3
	add	a0, a3, a0
	mul	a3, a5, a5
	add	a5, a5, a6
	lbu	a4, -4(a1)
	mul	a6, a6, a6
	add	a3, a6, a3
	lbu	a6, -3(a1)
	add	a5, a5, a4
	mul	a4, a4, a4
	add	a3, a4, a3
	add	a5, a5, a6
	lbu	a4, -2(a1)
	mul	a6, a6, a6
	add	a3, a6, a3
	lbu	a1, -1(a1)
	add	a5, a5, a4
	mul	a4, a4, a4
	add	a3, a4, a3
	add	a5, a5, a1
	add	a2, a2, a5
	mul	a1, a1, a1
	lui	a4, %hi(.LCPI8_0)
	fld	fa5, %lo(.LCPI8_0)(a4)
	add	a1, a1, a3
	add	a0, a1, a0
	fcvt.d.wu	fa4, a0
	fmul.d	fa4, fa4, fa5
	fcvt.d.wu	fa3, a2
	fmul.d	fa5, fa3, fa5
	fnmsub.d	fa0, fa5, fa5, fa4
	ret
.Lfunc_end8:
	.size	var_sblk, .Lfunc_end8-var_sblk
                                        # -- End function
	.option	pop
	.type	r,@object                       # @r
	.section	.sbss,"aw",@nobits
	.globl	r
	.p2align	2, 0x0
r:
	.word	0                               # 0x0
	.size	r, 4

	.type	avg_act,@object                 # @avg_act
	.globl	avg_act
	.p2align	3, 0x0
avg_act:
	.quad	0x0000000000000000              # double 0
	.size	avg_act, 8

	.type	R,@object                       # @R
	.p2align	2, 0x0
R:
	.word	0                               # 0x0
	.size	R, 4

	.type	Xi,@object                      # @Xi
	.globl	Xi
	.p2align	2, 0x0
Xi:
	.word	0                               # 0x0
	.size	Xi, 4

	.type	Xp,@object                      # @Xp
	.globl	Xp
	.p2align	2, 0x0
Xp:
	.word	0                               # 0x0
	.size	Xp, 4

	.type	Xb,@object                      # @Xb
	.globl	Xb
	.p2align	2, 0x0
Xb:
	.word	0                               # 0x0
	.size	Xb, 4

	.type	d0i,@object                     # @d0i
	.globl	d0i
	.p2align	2, 0x0
d0i:
	.word	0                               # 0x0
	.size	d0i, 4

	.type	d0p,@object                     # @d0p
	.globl	d0p
	.p2align	2, 0x0
d0p:
	.word	0                               # 0x0
	.size	d0p, 4

	.type	d0b,@object                     # @d0b
	.globl	d0b
	.p2align	2, 0x0
d0b:
	.word	0                               # 0x0
	.size	d0b, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nrate control: sequence initialization\n"
	.size	.L.str, 40

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" initial global complexity measures (I,P,B): Xi=%d, Xp=%d, Xb=%d\n"
	.size	.L.str.1, 66

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" reaction parameter: r=%d\n"
	.size	.L.str.2, 27

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" initial virtual buffer fullness (I,P,B): d0i=%d, d0p=%d, d0b=%d\n"
	.size	.L.str.3, 66

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" initial average activity: avg_act=%.1f\n"
	.size	.L.str.4, 41

	.type	Np,@object                      # @Np
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
Np:
	.word	0                               # 0x0
	.size	Np, 4

	.type	Nb,@object                      # @Nb
	.p2align	2, 0x0
Nb:
	.word	0                               # 0x0
	.size	Nb, 4

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"\nrate control: new group of pictures (GOP)\n"
	.size	.L.str.5, 44

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" target number of bits for GOP: R=%d\n"
	.size	.L.str.6, 38

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" number of P pictures in GOP: Np=%d\n"
	.size	.L.str.7, 37

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	" number of B pictures in GOP: Nb=%d\n"
	.size	.L.str.8, 37

	.type	T,@object                       # @T
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
T:
	.word	0                               # 0x0
	.size	T, 4

	.type	d,@object                       # @d
	.p2align	2, 0x0
d:
	.word	0                               # 0x0
	.size	d, 4

	.type	S,@object                       # @S
	.p2align	2, 0x0
S:
	.word	0                               # 0x0
	.size	S, 4

	.type	Q,@object                       # @Q
	.p2align	2, 0x0
Q:
	.word	0                               # 0x0
	.size	Q, 4

	.type	actsum,@object                  # @actsum
	.p2align	3, 0x0
actsum:
	.quad	0x0000000000000000              # double 0
	.size	actsum, 8

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"\nrate control: start of picture\n"
	.size	.L.str.9, 33

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	" target number of bits: T=%d\n"
	.size	.L.str.10, 30

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\nrate control: end of picture\n"
	.size	.L.str.11, 31

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	" actual number of bits: S=%d\n"
	.size	.L.str.12, 30

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	" average quantization parameter Q=%.1f\n"
	.size	.L.str.13, 40

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	" remaining number of bits in GOP: R=%d\n"
	.size	.L.str.14, 40

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	" global complexity measures (I,P,B): Xi=%d, Xp=%d, Xb=%d\n"
	.size	.L.str.15, 58

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	" virtual buffer fullness (I,P,B): d0i=%d, d0p=%d, d0b=%d\n"
	.size	.L.str.16, 58

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	" remaining number of P pictures in GOP: Np=%d\n"
	.size	.L.str.17, 47

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	" remaining number of B pictures in GOP: Nb=%d\n"
	.size	.L.str.18, 47

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	" average activity: avg_act=%.1f\n"
	.size	.L.str.19, 33

	.type	prev_mquant,@object             # @prev_mquant
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
prev_mquant:
	.word	0                               # 0x0
	.size	prev_mquant, 4

	.type	bitcnt_EOP,@object              # @bitcnt_EOP
	.p2align	2, 0x0
bitcnt_EOP:
	.word	0                               # 0x0
	.size	bitcnt_EOP, 4

	.type	calc_vbv_delay.next_ip_delay,@object # @calc_vbv_delay.next_ip_delay
	.p2align	3, 0x0
calc_vbv_delay.next_ip_delay:
	.quad	0x0000000000000000              # double 0
	.size	calc_vbv_delay.next_ip_delay, 8

	.type	calc_vbv_delay.decoding_time,@object # @calc_vbv_delay.decoding_time
	.p2align	3, 0x0
calc_vbv_delay.decoding_time:
	.quad	0x0000000000000000              # double 0
	.size	calc_vbv_delay.decoding_time, 8

	.type	.L.str.20,@object               # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"vbv_delay underflow! (decoding_time=%.1f, t_EOP=%.1f\n)"
	.size	.L.str.20, 55

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"vbv_delay overflow!\n"
	.size	.L.str.21, 21

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"\nvbv_delay=%d (bitcount=%d, decoding_time=%.2f, bitcnt_EOP=%d)\n"
	.size	.L.str.22, 64

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"vbv_delay underflow: %d\n"
	.size	.L.str.23, 25

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"vbv_delay overflow: %d\n"
	.size	.L.str.24, 24

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
