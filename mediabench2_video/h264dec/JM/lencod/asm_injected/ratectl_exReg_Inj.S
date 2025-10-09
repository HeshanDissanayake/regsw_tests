	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"ratectl.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	rc_alloc                        # -- Begin function rc_alloc
	.p2align	2
	.type	rc_alloc,@function
rc_alloc:                               # @rc_alloc
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lui	s2, 22
	addiw	a1, s2, 196
	add	s3, a0, a1
	lwu	s0, 0(s3)
	li	a1, 8
	mv	a0, s0
	call	calloc
	sd	a0, 100(s3)
	bnez	a0, .LBB0_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
	ld	a0, %lo(img)(s1)
	add	a0, a0, s2
	lw	s0, 196(a0)
.LBB0_2:
	lui	s1, %hi(input)
	ld	a0, %lo(input)(s1)
	addi	a0, a0, 2047
	lw	a0, 1873(a0)
	divuw	a0, s0, a0
	slli	a0, a0, 32
	srli	s0, a0, 32
	li	a1, 8
	mv	a0, s0
	call	calloc
	lui	a1, %hi(BUPFMAD)
	sd	a0, %lo(BUPFMAD)(a1)
	bnez	a0, .LBB0_4
# %bb.3:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	ld	a1, %lo(input)(s1)
	lui	a2, 22
	add	a0, a0, a2
	lw	a0, 196(a0)
	addi	a1, a1, 2047
	lw	a1, 1873(a1)
	divuw	a0, a0, a1
	slli	a0, a0, 32
	srli	s0, a0, 32
.LBB0_4:
	li	a1, 8
	mv	a0, s0
	call	calloc
	lui	a1, %hi(BUCFMAD)
	sd	a0, %lo(BUCFMAD)(a1)
	bnez	a0, .LBB0_6
# %bb.5:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lui	a2, 22
	add	a0, a0, a2
	lw	a0, 196(a0)
	addi	a1, a1, 2047
	lw	a1, 1873(a1)
	divuw	a0, a0, a1
	slli	a0, a0, 32
	srli	s0, a0, 32
.LBB0_6:
	li	a1, 8
	mv	a0, s0
	call	calloc
	lui	a1, %hi(FCBUCFMAD)
	sd	a0, %lo(FCBUCFMAD)(a1)
	bnez	a0, .LBB0_8
# %bb.7:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lui	a2, 22
	add	a0, a0, a2
	lw	a0, 196(a0)
	addi	a1, a1, 2047
	lw	a1, 1873(a1)
	divuw	a0, a0, a1
	slli	a0, a0, 32
	srli	s0, a0, 32
.LBB0_8:
	li	a1, 8
	mv	a0, s0
	call	calloc
	lui	a1, %hi(FCBUPFMAD)
	sd	a0, %lo(FCBUPFMAD)(a1)
	beqz	a0, .LBB0_10
# %bb.9:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB0_10:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	no_mem_exit
.Lfunc_end0:
	.size	rc_alloc, .Lfunc_end0-rc_alloc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	rc_free                         # -- Begin function rc_free
	.p2align	2
	.type	rc_free,@function
rc_free:                                # @rc_free
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lui	s1, 22
	add	a0, a0, s1
	ld	a0, 296(a0)
	beqz	a0, .LBB1_2
# %bb.1:
	call	free
	ld	a0, %lo(img)(s0)
	add	a0, a0, s1
	sd	zero, 296(a0)
.LBB1_2:
	lui	s0, %hi(BUPFMAD)
	ld	a0, %lo(BUPFMAD)(s0)
	beqz	a0, .LBB1_4
# %bb.3:
	call	free
	sd	zero, %lo(BUPFMAD)(s0)
.LBB1_4:
	lui	s0, %hi(BUCFMAD)
	ld	a0, %lo(BUCFMAD)(s0)
	beqz	a0, .LBB1_6
# %bb.5:
	call	free
	sd	zero, %lo(BUCFMAD)(s0)
.LBB1_6:
	lui	s0, %hi(FCBUCFMAD)
	ld	a0, %lo(FCBUCFMAD)(s0)
	beqz	a0, .LBB1_8
# %bb.7:
	call	free
	sd	zero, %lo(FCBUCFMAD)(s0)
.LBB1_8:
	lui	s0, %hi(FCBUPFMAD)
	ld	a0, %lo(FCBUPFMAD)(s0)
	beqz	a0, .LBB1_10
# %bb.9:
	call	free
	sd	zero, %lo(FCBUPFMAD)(s0)
.LBB1_10:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	rc_free, .Lfunc_end1-rc_free
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_init_seq
.LCPI2_0:
	.quad	0x40047ae147ae147b              # double 2.5600000000000001
.LCPI2_1:
	.quad	0x3fe999999999999a              # double 0.80000000000000004
.LCPI2_4:
	.quad	0x3fb999999999999a              # double 0.10000000000000001
.LCPI2_5:
	.quad	0x3fe3333333333333              # double 0.59999999999999998
.LCPI2_6:
	.quad	0x3fd3333333333333              # double 0.29999999999999999
.LCPI2_7:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI2_8:
	.quad	0x3ff3333333333333              # double 1.2
.LCPI2_9:
	.quad	0x4003333333333333              # double 2.3999999999999999
.LCPI2_10:
	.quad	0x3ff6666666666666              # double 1.3999999999999999
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.LCPI2_2:
	.quad	0x3fe0000000000000              # double 0.5
	.quad	0x3fd0000000000000              # double 0.25
.LCPI2_3:
	.quad	0x3fe0000000000000              # double 0.5
	.quad	0x3feccccccccccccd              # double 0.90000000000000002
	.text
	.globl	rc_init_seq
	.p2align	2
	.type	rc_init_seq,@function
rc_init_seq:                            # @rc_init_seq
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	fsd	fs0, 8(sp)                      # 8-byte Folded Spill
	fsd	fs1, 0(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(Xp)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	sw	zero, %lo(Xp)(a0)
	lui	a0, %hi(Xb)
	sw	zero, %lo(Xb)(a0)
	addi	s0, a1, 2047
	lw	a0, 1865(s0)
	fcvt.d.w	fs0, a0
	lui	a0, %hi(bit_rate)
	fsd	fs0, %lo(bit_rate)(a0)
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lui	a0, 22
	addiw	s3, a0, 272
	lw	a0, 1244(a1)
	add	s3, a2, s3
	flw	fa5, 48(a2)
	lw	a1, 20(a1)
	addi	a3, a0, 1
	fcvt.s.w	fa4, a3
	fmul.s	fa5, fa5, fa4
	addi	a1, a1, 1
	fcvt.s.w	fa4, a1
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fs1, fa5
	lui	a1, %hi(frame_rate)
	lw	s1, 60(a2)
	lw	s2, 52(a2)
	fsd	fs1, %lo(frame_rate)(a1)
	lui	a1, %hi(PreviousBit_Rate)
	fsd	fs0, %lo(PreviousBit_Rate)(a1)
	mul	a2, s2, s1
	sraiw	a3, a2, 31
	lw	a1, 1873(s0)
	srliw	a3, a3, 24
	add	a2, a2, a3
	sraiw	a2, a2, 8
	sw	a2, 48(s3)
	bge	a2, a1, .LBB2_2
# %bb.1:
	sw	a2, 1873(s0)
	j	.LBB2_4
.LBB2_2:
	bge	a1, a2, .LBB2_4
# %bb.3:
	divw	s4, a2, a1
	lui	a1, %hi(TotalNumberofBasicUnit)
	sw	s4, %lo(TotalNumberofBasicUnit)(a1)
	j	.LBB2_5
.LBB2_4:
	lui	a1, %hi(TotalNumberofBasicUnit)
	lw	s4, %lo(TotalNumberofBasicUnit)(a1)
.LBB2_5:
	lui	a1, %hi(MINVALUE)
	lui	a2, %hi(.LCPI2_0)
	fld	fa5, %lo(.LCPI2_0)(a2)
	li	a2, 1025
	slli	a2, a2, 52
	sd	a2, %lo(MINVALUE)(a1)
	fmul.d	fa5, fs0, fa5
	lui	a1, %hi(BufferSize)
	fsd	fa5, %lo(BufferSize)(a1)
	lui	a1, %hi(CurrentBufferFullness)
	lui	a2, %hi(.LCPI2_1)
	fld	fa4, %lo(.LCPI2_1)(a2)
	sd	zero, %lo(CurrentBufferFullness)(a1)
	lui	a1, %hi(GOPTargetBufferLevel)
	sd	zero, %lo(GOPTargetBufferLevel)(a1)
	fmul.d	fa5, fa5, fa4
	lui	a1, %hi(InitialDelayOffset)
	fsd	fa5, %lo(InitialDelayOffset)(a1)
	lui	a1, %hi(m_windowSize)
	sw	zero, %lo(m_windowSize)(a1)
	lui	a1, %hi(MADm_windowSize)
	sw	zero, %lo(MADm_windowSize)(a1)
	sd	zero, 0(s3)
	sw	zero, 8(s3)
	lui	a1, %hi(R)
	sw	zero, %lo(R)(a1)
	sgtz	a0, a0
	slli	a0, a0, 3
	lui	a1, %hi(.LCPI2_2)
	addi	a1, a1, %lo(.LCPI2_2)
	add	a1, a1, a0
	fld	fa5, 0(a1)
	lui	a1, %hi(.LCPI2_3)
	addi	a1, a1, %lo(.LCPI2_3)
	add	a0, a1, a0
	fld	fa4, 0(a0)
	lui	a0, %hi(GAMMAP)
	fsd	fa5, %lo(GAMMAP)(a0)
	lui	a0, %hi(BETAP)
	fsd	fa4, %lo(BETAP)(a0)
	lui	a0, %hi(PPreHeader)
	sw	zero, %lo(PPreHeader)(a0)
	lui	a0, %hi(Pm_X1)
	fsd	fs0, %lo(Pm_X1)(a0)
	lui	a0, %hi(Pm_X2)
	sd	zero, %lo(Pm_X2)(a0)
	lui	a0, %hi(PMADPictureC1)
	li	a1, 1023
	slli	a1, a1, 52
	sd	a1, %lo(PMADPictureC1)(a0)
	lui	a0, %hi(PMADPictureC2)
	sd	zero, %lo(PMADPictureC2)(a0)
	lui	a0, %hi(Pm_rgQp)
	addi	a0, a0, %lo(Pm_rgQp)
	li	a2, 160
	li	a1, 0
	call	memset
	lui	a0, %hi(Pm_rgRp)
	addi	a0, a0, %lo(Pm_rgRp)
	li	a2, 160
	li	a1, 0
	call	memset
	lui	a0, %hi(PPictureMAD)
	addi	a0, a0, %lo(PPictureMAD)
	li	a2, 168
	li	a1, 0
	call	memset
	lui	a0, %hi(PDuantQp)
	li	a1, 2
	sw	a1, %lo(PDuantQp)(a0)
	lui	a0, %hi(PAveHeaderBits1)
	sw	zero, %lo(PAveHeaderBits1)(a0)
	lui	a0, %hi(PAveHeaderBits3)
	sw	zero, %lo(PAveHeaderBits3)(a0)
	slti	a0, s4, 9
	addi	a0, a0, 1
	lui	a1, %hi(DDquant)
	sw	a0, %lo(DDquant)(a1)
	slli	a0, s2, 1
	srli	a0, a0, 60
	add	a0, s2, a0
	sraiw	a0, a0, 4
	lui	a1, %hi(MBPerRow)
	sw	a0, %lo(MBPerRow)(a1)
	sw	zero, 40(s3)
	lui	a0, %hi(RC_MAX_QUANT)
	li	a1, 51
	sw	a1, %lo(RC_MAX_QUANT)(a0)
	lui	a0, %hi(RC_MIN_QUANT)
	li	a1, 176
	sw	zero, %lo(RC_MIN_QUANT)(a0)
	beq	s2, a1, .LBB2_8
# %bb.6:
	li	a0, 352
	bne	s2, a0, .LBB2_9
# %bb.7:
	lui	a0, %hi(.LCPI2_7)
	fld	fa4, %lo(.LCPI2_7)(a0)
	lui	a0, %hi(.LCPI2_8)
	fld	fa5, %lo(.LCPI2_8)(a0)
	lui	a0, %hi(.LCPI2_5)
	fld	fa3, %lo(.LCPI2_5)(a0)
	lw	a0, 1869(s0)
	bnez	a0, .LBB2_15
	j	.LBB2_10
.LBB2_8:
	lui	a0, %hi(.LCPI2_4)
	fld	fa4, %lo(.LCPI2_4)(a0)
	lui	a0, %hi(.LCPI2_5)
	fld	fa5, %lo(.LCPI2_5)(a0)
	lui	a0, %hi(.LCPI2_6)
	fld	fa3, %lo(.LCPI2_6)(a0)
	lw	a0, 1869(s0)
	bnez	a0, .LBB2_15
	j	.LBB2_10
.LBB2_9:
	lui	a0, %hi(.LCPI2_5)
	fld	fa4, %lo(.LCPI2_5)(a0)
	lui	a0, %hi(.LCPI2_9)
	fld	fa5, %lo(.LCPI2_9)(a0)
	lui	a0, %hi(.LCPI2_10)
	fld	fa3, %lo(.LCPI2_10)(a0)
	lw	a0, 1869(s0)
	bnez	a0, .LBB2_15
.LBB2_10:
	fcvt.d.w	fa2, s2
	fmul.d	fa2, fs1, fa2
	fcvt.d.w	fa1, s1
	fmul.d	fa2, fa2, fa1
	fdiv.d	fa2, fs0, fa2
	fle.d	a1, fa2, fa4
	li	a0, 35
	bnez	a1, .LBB2_14
# %bb.11:
	fle.d	a1, fa2, fa3
	li	a0, 25
	bnez	a1, .LBB2_14
# %bb.12:
	fle.d	a1, fa2, fa5
	li	a0, 10
	beqz	a1, .LBB2_14
# %bb.13:
	li	a0, 20
.LBB2_14:
	sw	a0, 1869(s0)
.LBB2_15:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	fld	fs0, 8(sp)                      # 8-byte Folded Reload
	fld	fs1, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end2:
	.size	rc_init_seq, .Lfunc_end2-rc_init_seq
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_init_GOP
.LCPI3_0:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI3_1:
	.quad	0x402e000000000000              # double 15
	.text
	.globl	rc_init_GOP
	.p2align	2
	.type	rc_init_GOP,@function
rc_init_GOP:                            # @rc_init_GOP
# %bb.0:
	lui	a2, %hi(R)
	lw	a3, %lo(R)(a2)
	lui	a4, %hi(bit_rate)
	fld	fa4, %lo(bit_rate)(a4)
	lui	a4, %hi(frame_rate)
	fld	fa3, %lo(frame_rate)(a4)
	fcvt.d.w	fa5, a3
	fdiv.d	fa2, fa4, fa3
	fadd.d	fa2, fa2, fa5
	lui	a4, %hi(InitialDelayOffset)
	fld	fa1, %lo(InitialDelayOffset)(a4)
	fcvt.l.d	a4, fa2, rtz
	lui	a5, %hi(LowerBound)
	sd	a4, %lo(LowerBound)(a5)
	fadd.d	fa5, fa1, fa5
	fcvt.l.d	a4, fa5, rtz
	lui	a5, %hi(.LCPI3_0)
	fld	fa2, %lo(.LCPI3_0)(a5)
	add	a5, a0, a1
	addi	a5, a5, 1
	fcvt.d.w	fa5, a5
	fmul.d	fa4, fa4, fa5
	fdiv.d	fa4, fa4, fa3
	fadd.d	fa4, fa4, fa2
	fcvt.w.d	a5, fa4, rdn
	add	a3, a3, a5
	lui	a5, %hi(UpperBound1)
	sw	a3, %lo(R)(a2)
	lui	a2, %hi(Np)
	sw	a0, %lo(Np)(a2)
	lui	a2, %hi(Nb)
	sw	a1, %lo(Nb)(a2)
	lui	a1, %hi(GOPOverdue)
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	sw	zero, %lo(GOPOverdue)(a1)
	lui	a1, 22
	addiw	a1, a1, 280
	add	a1, a2, a1
	li	a2, 1
	sw	a2, 44(a1)
	lui	a2, %hi(TotalPFrame)
	sw	a0, %lo(TotalPFrame)(a2)
	lw	a2, 0(a1)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	sd	a4, %lo(UpperBound1)(a5)
	addi	a3, a2, 1
	sw	a3, 0(a1)
	addi	a0, a0, 2047
	beqz	a2, .LBB3_5
# %bb.1:
	lw	a2, 1505(a0)
	li	a3, 2
	beq	a2, a3, .LBB3_3
# %bb.2:
	lw	a0, 1509(a0)
	beqz	a0, .LBB3_20
.LBB3_3:
	lw	a0, 36(a1)
	lw	a2, 4(a1)
	li	a3, 1
	bne	a0, a3, .LBB3_6
# %bb.4:
	lui	a0, %hi(FrameQPBuffer)
	lw	a0, %lo(FrameQPBuffer)(a0)
	add	a2, a2, a0
	j	.LBB3_7
.LBB3_5:
	lw	a0, 1869(a0)
	lui	a2, %hi(MyInitialQp)
	sw	a0, %lo(MyInitialQp)(a2)
	addi	a2, a0, -1
	lui	a3, %hi(PreviousQp2)
	sw	a2, %lo(PreviousQp2)(a3)
	lui	a2, %hi(QPLastGOP)
	sw	a0, %lo(QPLastGOP)(a2)
	j	.LBB3_16
.LBB3_6:
	lui	a0, %hi(FieldQPBuffer)
	lw	a0, %lo(FieldQPBuffer)(a0)
	add	a2, a2, a0
	sw	a2, 4(a1)
.LBB3_7:
	lui	a3, %hi(QPLastPFrame)
	sw	a0, %lo(QPLastPFrame)(a3)
.LBB3_8:
	fcvt.d.w	fa4, a2
	lw	a2, 8(a1)
	lui	a3, %hi(.LCPI3_0)
	fld	fa3, %lo(.LCPI3_0)(a3)
	lui	a3, %hi(.LCPI3_1)
	fld	fa2, %lo(.LCPI3_1)(a3)
	fcvt.d.w	fa1, a2
	fdiv.d	fa4, fa4, fa1
	fadd.d	fa4, fa4, fa3
	fdiv.d	fa5, fa5, fa2
	fadd.d	fa5, fa5, fa3
	fcvt.w.d	a2, fa5, rtz
	li	a4, 2
	fcvt.w.d	a3, fa4, rtz
	blt	a2, a4, .LBB3_10
# %bb.9:
	li	a2, 2
.LBB3_10:
	subw	a4, a3, a2
	lui	a2, %hi(QPLastGOP)
	lw	a3, %lo(QPLastGOP)(a2)
	addiw	a0, a0, -2
	slt	a0, a0, a4
	subw	a4, a4, a0
	addiw	a0, a3, -2
	bge	a4, a0, .LBB3_17
# %bb.11:
	addiw	a3, a3, 2
	bge	a3, a0, .LBB3_18
.LBB3_12:
	lui	a0, %hi(RC_MAX_QUANT)
	lw	a4, %lo(RC_MAX_QUANT)(a0)
	bge	a4, a3, .LBB3_19
.LBB3_13:
	lui	a0, %hi(RC_MIN_QUANT)
	lw	a0, %lo(RC_MIN_QUANT)(a0)
	blt	a4, a0, .LBB3_15
.LBB3_14:
	mv	a0, a4
.LBB3_15:
	lui	a3, %hi(PAverageQp)
	sw	a0, %lo(PAverageQp)(a3)
	lui	a3, %hi(MyInitialQp)
	sw	a0, %lo(MyInitialQp)(a3)
	sw	a0, %lo(QPLastGOP)(a2)
	lui	a2, %hi(Pm_Qp)
	sw	a0, %lo(Pm_Qp)(a2)
	lui	a2, %hi(PreviousQp2)
	lw	a3, %lo(PreviousQp2)(a2)
	lui	a4, %hi(PAveFrameQP)
	sw	a0, %lo(PAveFrameQP)(a4)
	lui	a4, %hi(PreviousQp1)
	sw	a3, %lo(PreviousQp1)(a4)
	addi	a0, a0, -1
	sw	a0, %lo(PreviousQp2)(a2)
.LBB3_16:
	sw	zero, 4(a1)
	sw	zero, 8(a1)
	lui	a0, %hi(NumberofBFrames)
	sw	zero, %lo(NumberofBFrames)(a0)
	ret
.LBB3_17:
	mv	a0, a4
	addiw	a3, a3, 2
	blt	a3, a4, .LBB3_12
.LBB3_18:
	mv	a3, a0
	lui	a0, %hi(RC_MAX_QUANT)
	lw	a4, %lo(RC_MAX_QUANT)(a0)
	blt	a4, a3, .LBB3_13
.LBB3_19:
	mv	a4, a3
	lui	a0, %hi(RC_MIN_QUANT)
	lw	a0, %lo(RC_MIN_QUANT)(a0)
	bge	a3, a0, .LBB3_14
	j	.LBB3_15
.LBB3_20:
	lw	a2, 4(a1)
	lui	a0, %hi(QPLastPFrame)
	lw	a0, %lo(QPLastPFrame)(a0)
	j	.LBB3_8
.Lfunc_end3:
	.size	rc_init_GOP, .Lfunc_end3-rc_init_GOP
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_init_pict
.LCPI4_0:
	.quad	0x3ff8000000000000              # double 1.5
.LCPI4_1:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI4_2:
	.quad	0x3fc0000000000000              # double 0.125
.LCPI4_3:
	.quad	0x401c000000000000              # double 7
.LCPI4_4:
	.quad	0x3ff0000000000000              # double 1
.LCPI4_5:
	.quad	0x3fe3333333333333              # double 0.59999999999999998
	.text
	.globl	rc_init_pict
	.p2align	2
	.type	rc_init_pict,@function
rc_init_pict:                           # @rc_init_pict
# %bb.0:
	lui	a3, %hi(input)
	ld	t0, %lo(input)(a3)
	addi	a5, t0, 2047
	lw	a6, 1509(a5)
	lui	a3, %hi(img)
	ld	a4, %lo(img)(a3)
	lui	a3, 22
	addiw	a3, a3, 236
	add	a3, a4, a3
	beqz	a6, .LBB4_2
# %bb.1:
	lw	a7, 84(a3)
	lw	t1, 96(a3)
	divw	a7, a7, t1
	lui	t1, %hi(TotalNumberofBasicUnit)
	sw	a7, %lo(TotalNumberofBasicUnit)(t1)
.LBB4_2:
	lw	a7, 1877(a5)
	li	t1, 1
	sw	zero, 92(a3)
	bne	a7, t1, .LBB4_6
# %bb.3:
	lw	a7, 40(a3)
	li	t1, 59
	beq	a7, t1, .LBB4_16
# %bb.4:
	li	t1, 58
	bne	a7, t1, .LBB4_6
# %bb.5:
	lui	a7, %hi(bit_rate)
	fld	fa5, %lo(bit_rate)(a7)
	lui	t1, %hi(.LCPI4_0)
	fld	fa4, %lo(.LCPI4_0)(t1)
	fmul.d	fa5, fa5, fa4
	fsd	fa5, %lo(bit_rate)(a7)
.LBB4_6:
	or	a7, a1, a0
	beqz	a7, .LBB4_68
.LBB4_7:
	beqz	a2, .LBB4_68
# %bb.8:
	lw	a2, 24(a4)
	li	t1, 1
	beq	a2, t1, .LBB4_17
# %bb.9:
	bnez	a2, .LBB4_75
# %bb.10:
	lui	a2, %hi(PreviousBit_Rate)
	fld	fa5, %lo(PreviousBit_Rate)(a2)
	lui	a2, %hi(bit_rate)
	fld	fa4, %lo(bit_rate)(a2)
	feq.d	a2, fa5, fa4
	bnez	a2, .LBB4_12
# %bb.11:
	lui	a2, %hi(Np)
	lw	a2, %lo(Np)(a2)
	lui	t1, %hi(Nb)
	lw	t1, %lo(Nb)(t1)
	fsub.d	fa5, fa4, fa5
	add	a2, t1, a2
	fcvt.d.w	fa4, a2
	fmul.d	fa5, fa5, fa4
	lui	a2, %hi(frame_rate)
	fld	fa4, %lo(frame_rate)(a2)
	lui	a2, %hi(.LCPI4_1)
	fld	fa3, %lo(.LCPI4_1)(a2)
	lui	a2, %hi(R)
	lw	t1, %lo(R)(a2)
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa3
	fcvt.w.d	t2, fa5, rdn
	add	t1, t1, t2
	sw	t1, %lo(R)(a2)
.LBB4_12:
	lw	a2, 96(a3)
	lw	t1, 84(a3)
	bne	a2, t1, .LBB4_22
# %bb.13:
	lw	t2, 52(a3)
	li	t3, 1
	bne	t2, t3, .LBB4_38
.LBB4_14:
	lui	t2, %hi(CurrentBufferFullness)
	fld	fa5, %lo(CurrentBufferFullness)(t2)
	lui	t2, %hi(GOPTargetBufferLevel)
	fld	fa4, %lo(GOPTargetBufferLevel)(t2)
	lui	t2, %hi(TotalPFrame)
	lw	t2, %lo(TotalPFrame)(t2)
	fsub.d	fa4, fa5, fa4
	addi	t2, t2, -1
.LBB4_15:
	fcvt.d.w	fa3, t2
	fdiv.d	fa4, fa4, fa3
	lui	t2, %hi(DeltaP)
	fsd	fa4, %lo(DeltaP)(t2)
	fsub.d	fa5, fa5, fa4
	j	.LBB4_43
.LBB4_16:
	lui	a7, %hi(bit_rate)
	fld	fa5, %lo(bit_rate)(a7)
	lui	a7, %hi(PreviousBit_Rate)
	fsd	fa5, %lo(PreviousBit_Rate)(a7)
	or	a7, a1, a0
	bnez	a7, .LBB4_7
	j	.LBB4_68
.LBB4_17:
	lui	a0, %hi(PreviousBit_Rate)
	fld	fa5, %lo(PreviousBit_Rate)(a0)
	lui	a0, %hi(bit_rate)
	fld	fa4, %lo(bit_rate)(a0)
	feq.d	a0, fa5, fa4
	bnez	a0, .LBB4_19
# %bb.18:
	lui	a0, %hi(Np)
	lw	a0, %lo(Np)(a0)
	lui	a2, %hi(Nb)
	lw	a2, %lo(Nb)(a2)
	fsub.d	fa5, fa4, fa5
	add	a0, a2, a0
	fcvt.d.w	fa4, a0
	fmul.d	fa5, fa5, fa4
	lui	a0, %hi(frame_rate)
	fld	fa4, %lo(frame_rate)(a0)
	lui	a0, %hi(.LCPI4_1)
	fld	fa3, %lo(.LCPI4_1)(a0)
	lui	a0, %hi(R)
	lw	a2, %lo(R)(a0)
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa3
	fcvt.w.d	a5, fa5, rdn
	add	a2, a2, a5
	sw	a2, %lo(R)(a0)
.LBB4_19:
	lw	a5, 40(a3)
	lw	a0, 36(a3)
	li	a2, 1
	bne	a5, a2, .LBB4_26
# %bb.20:
	bne	a0, a2, .LBB4_26
# %bb.21:
	lui	a0, %hi(Wp)
	fld	fa4, %lo(Wp)(a0)
	lui	a0, %hi(Wb)
	fld	fa5, %lo(Wb)(a0)
	lui	a0, %hi(AWp)
	fsd	fa4, %lo(AWp)(a0)
	j	.LBB4_74
.LBB4_22:
	lw	t2, 40(a3)
	blez	t2, .LBB4_36
# %bb.23:
	bnez	a6, .LBB4_29
# %bb.24:
	lw	t2, 1505(a5)
	li	t3, 2
	beq	t2, t3, .LBB4_29
# %bb.25:
	lui	t2, %hi(TotalNumberofBasicUnit)
	lw	t2, %lo(TotalNumberofBasicUnit)(t2)
	j	.LBB4_33
.LBB4_26:
	li	a2, 2
	blt	a0, a2, .LBB4_75
# %bb.27:
	lui	a2, %hi(Wb)
	fld	fa5, %lo(Wb)(a2)
	li	a2, 7
	bltu	a2, a0, .LBB4_72
# %bb.28:
	addi	a2, a0, -1
	fcvt.d.wu	fa4, a2
	lui	a2, %hi(AWb)
	fld	fa3, %lo(AWb)(a2)
	fmul.d	fa5, fa5, fa4
	fcvt.d.wu	fa4, a0
	fdiv.d	fa5, fa5, fa4
	fdiv.d	fa4, fa3, fa4
	j	.LBB4_73
.LBB4_29:
	lw	t3, 76(a3)
	lui	t2, %hi(TotalNumberofBasicUnit)
	lw	t2, %lo(TotalNumberofBasicUnit)(t2)
	li	t4, 1
	bne	t3, t4, .LBB4_33
# %bb.30:
	blez	t2, .LBB4_36
# %bb.31:
	lui	t4, %hi(FCBUCFMAD)
	lui	t3, %hi(FCBUPFMAD)
	ld	t3, %lo(FCBUPFMAD)(t3)
	ld	t4, %lo(FCBUCFMAD)(t4)
	slli	t2, t2, 3
	add	t2, t3, t2
.LBB4_32:                               # =>This Inner Loop Header: Depth=1
	fld	fa5, 0(t4)
	fsd	fa5, 0(t3)
	addi	t3, t3, 8
	addi	t4, t4, 8
	bne	t3, t2, .LBB4_32
	j	.LBB4_36
.LBB4_33:
	blez	t2, .LBB4_36
# %bb.34:
	lui	t4, %hi(BUCFMAD)
	lui	t3, %hi(BUPFMAD)
	ld	t3, %lo(BUPFMAD)(t3)
	ld	t4, %lo(BUCFMAD)(t4)
	slli	t2, t2, 3
	add	t2, t3, t2
.LBB4_35:                               # =>This Inner Loop Header: Depth=1
	fld	fa5, 0(t4)
	fsd	fa5, 0(t3)
	addi	t3, t3, 8
	addi	t4, t4, 8
	bne	t3, t2, .LBB4_35
.LBB4_36:
	lw	t2, 44(a3)
	li	t3, 1
	bne	t2, t3, .LBB4_39
# %bb.37:
	lw	t2, 52(a3)
	beq	t2, t3, .LBB4_14
.LBB4_38:
	li	t3, 2
	bge	t2, t3, .LBB4_42
	j	.LBB4_44
.LBB4_39:
	li	t3, 2
	blt	t2, t3, .LBB4_44
# %bb.40:
	lw	t2, 52(a3)
	beqz	t2, .LBB4_86
# %bb.41:
	blez	t2, .LBB4_44
.LBB4_42:
	lui	t2, %hi(DeltaP)
	fld	fa5, %lo(DeltaP)(t2)
	lui	t2, %hi(TargetBufferLevel)
	fld	fa4, %lo(TargetBufferLevel)(t2)
	fsub.d	fa5, fa4, fa5
.LBB4_43:
	lui	t2, %hi(TargetBufferLevel)
	fsd	fa5, %lo(TargetBufferLevel)(t2)
.LBB4_44:
	lw	t2, 40(a3)
	li	t3, 1
	bne	t2, t3, .LBB4_46
# %bb.45:
	lui	t3, %hi(Wp)
	fld	fa5, %lo(Wp)(t3)
	j	.LBB4_51
.LBB4_46:
	addiw	t3, t2, -2
	li	t4, 5
	bltu	t4, t3, .LBB4_48
# %bb.47:
	lui	t3, %hi(Wp)
	fld	fa5, %lo(Wp)(t3)
	addi	t3, t2, -1
	fcvt.d.wu	fa4, t3
	lui	t3, %hi(AWp)
	fld	fa3, %lo(AWp)(t3)
	fmul.d	fa5, fa5, fa4
	fcvt.d.wu	fa4, t2
	fdiv.d	fa5, fa5, fa4
	fdiv.d	fa4, fa3, fa4
	j	.LBB4_50
.LBB4_48:
	li	t3, 2
	blt	t2, t3, .LBB4_52
# %bb.49:
	lui	t3, %hi(Wp)
	fld	fa5, %lo(Wp)(t3)
	lui	t3, %hi(.LCPI4_2)
	fld	fa4, %lo(.LCPI4_2)(t3)
	lui	t3, %hi(AWp)
	fld	fa3, %lo(AWp)(t3)
	lui	t3, %hi(.LCPI4_3)
	fld	fa2, %lo(.LCPI4_3)(t3)
	fmul.d	fa5, fa5, fa4
	fmul.d	fa3, fa3, fa2
	fmul.d	fa4, fa3, fa4
.LBB4_50:
	fadd.d	fa5, fa5, fa4
.LBB4_51:
	lui	t3, %hi(AWp)
	fsd	fa5, %lo(AWp)(t3)
.LBB4_52:
	lw	t0, 1244(t0)
	blez	t0, .LBB4_54
# %bb.53:
	lui	t3, %hi(AWp)
	fld	fa5, %lo(AWp)(t3)
	addi	t3, t0, 1
	fcvt.d.wu	fa4, t3
	fmul.d	fa4, fa5, fa4
	lui	t3, %hi(bit_rate)
	fld	fa3, %lo(bit_rate)(t3)
	lui	t3, %hi(frame_rate)
	lui	t4, %hi(AWb)
	fld	fa2, %lo(AWb)(t4)
	fld	fa1, %lo(frame_rate)(t3)
	fmul.d	fa4, fa4, fa3
	fcvt.d.wu	fa0, t0
	fmadd.d	fa5, fa2, fa0, fa5
	fmul.d	fa5, fa1, fa5
	lui	t3, %hi(TargetBufferLevel)
	fld	fa2, %lo(TargetBufferLevel)(t3)
	fdiv.d	fa5, fa4, fa5
	fdiv.d	fa4, fa3, fa1
	fsub.d	fa5, fa5, fa4
	fadd.d	fa5, fa2, fa5
	fsd	fa5, %lo(TargetBufferLevel)(t3)
.LBB4_54:
	bne	a2, t1, .LBB4_56
# %bb.55:
	bgtz	t2, .LBB4_60
	j	.LBB4_62
.LBB4_56:
	lw	a2, 44(a3)
	li	t1, 1
	bne	a2, t1, .LBB4_59
# %bb.57:
	blez	t2, .LBB4_62
# %bb.58:
	lui	a2, %hi(R)
	lw	a2, %lo(R)(a2)
	lui	t1, %hi(Wp)
	fld	fa5, %lo(Wp)(t1)
	fcvt.d.w	fa4, a2
	lui	a2, %hi(Np)
	lw	a2, %lo(Np)(a2)
	fmul.d	fa4, fa5, fa4
	lui	t1, %hi(Nb)
	lw	t1, %lo(Nb)(t1)
	fcvt.d.w	fa3, a2
	lui	a2, %hi(Wb)
	fld	fa2, %lo(Wb)(a2)
	fcvt.d.w	fa1, t1
	lui	a2, %hi(.LCPI4_1)
	fld	fa0, %lo(.LCPI4_1)(a2)
	fmul.d	fa2, fa2, fa1
	fmadd.d	fa5, fa3, fa5, fa2
	fdiv.d	fa5, fa4, fa5
	fadd.d	fa5, fa5, fa0
	lui	a2, %hi(bit_rate)
	fld	fa4, %lo(bit_rate)(a2)
	lui	a2, %hi(frame_rate)
	fld	fa3, %lo(frame_rate)(a2)
	lui	a2, %hi(GAMMAP)
	lui	t1, %hi(CurrentBufferFullness)
	fld	fa2, %lo(CurrentBufferFullness)(t1)
	lui	t1, %hi(TargetBufferLevel)
	fld	fa1, %lo(TargetBufferLevel)(t1)
	fld	ft0, %lo(GAMMAP)(a2)
	fcvt.w.d	a2, fa5, rdn
	fdiv.d	fa5, fa4, fa3
	fsub.d	fa4, fa2, fa1
	fnmsub.d	fa5, ft0, fa4, fa5
	fadd.d	fa5, fa5, fa0
	fcvt.w.d	t1, fa5, rdn
	sgtz	t2, t1
	neg	t2, t2
	and	t1, t2, t1
	lui	t2, %hi(BETAP)
	fld	fa5, %lo(BETAP)(t2)
	lui	t2, %hi(.LCPI4_4)
	fld	fa4, %lo(.LCPI4_4)(t2)
	lui	t2, %hi(T1)
	sd	t1, %lo(T1)(t2)
	fcvt.d.w	fa3, a2
	fsub.d	fa4, fa4, fa5
	fcvt.d.lu	fa2, t1
	fmul.d	fa4, fa4, fa2
	fmadd.d	fa5, fa5, fa3, fa4
	fadd.d	fa5, fa5, fa0
	fcvt.w.d	a2, fa5, rdn
	j	.LBB4_61
.LBB4_59:
	li	t1, 2
	blt	a2, t1, .LBB4_62
.LBB4_60:
	lui	a2, %hi(R)
	lw	a2, %lo(R)(a2)
	lui	t1, %hi(Wp)
	fld	fa5, %lo(Wp)(t1)
	fcvt.d.w	fa4, a2
	lui	a2, %hi(Np)
	lw	a2, %lo(Np)(a2)
	fmul.d	fa4, fa5, fa4
	lui	t1, %hi(Nb)
	lw	t1, %lo(Nb)(t1)
	fcvt.d.w	fa3, a2
	lui	a2, %hi(Wb)
	fld	fa2, %lo(Wb)(a2)
	fcvt.d.w	fa1, t1
	lui	a2, %hi(.LCPI4_1)
	fld	fa0, %lo(.LCPI4_1)(a2)
	fmul.d	fa2, fa2, fa1
	fmadd.d	fa5, fa3, fa5, fa2
	fdiv.d	fa5, fa4, fa5
	fadd.d	fa5, fa5, fa0
	lui	a2, %hi(bit_rate)
	fld	fa4, %lo(bit_rate)(a2)
	lui	a2, %hi(frame_rate)
	fld	fa3, %lo(frame_rate)(a2)
	lui	a2, %hi(GAMMAP)
	lui	t1, %hi(CurrentBufferFullness)
	fld	fa2, %lo(CurrentBufferFullness)(t1)
	lui	t1, %hi(TargetBufferLevel)
	fld	fa1, %lo(TargetBufferLevel)(t1)
	fld	ft0, %lo(GAMMAP)(a2)
	fcvt.l.d	a2, fa5, rdn
	fdiv.d	fa5, fa4, fa3
	fsub.d	fa4, fa2, fa1
	fnmsub.d	fa5, ft0, fa4, fa5
	fadd.d	fa5, fa5, fa0
	fcvt.l.d	t1, fa5, rdn
	sgtz	t2, t1
	neg	t2, t2
	and	t1, t2, t1
	lui	t2, %hi(BETAP)
	fld	fa5, %lo(BETAP)(t2)
	lui	t2, %hi(.LCPI4_4)
	fld	fa4, %lo(.LCPI4_4)(t2)
	lui	t2, %hi(T1)
	sd	t1, %lo(T1)(t2)
	fcvt.d.l	fa3, a2
	fsub.d	fa4, fa4, fa5
	fcvt.d.lu	fa2, t1
	fmul.d	fa4, fa4, fa2
	fmadd.d	fa5, fa5, fa3, fa4
	fadd.d	fa5, fa5, fa0
	fcvt.l.d	a2, fa5, rdn
.LBB4_61:
	lui	t1, %hi(T)
	sd	a2, %lo(T)(t1)
.LBB4_62:
	fcvt.d.w	fa5, t0
	lui	a2, %hi(.LCPI4_4)
	fld	fa4, %lo(.LCPI4_4)(a2)
	fmv.d.x	fa3, zero
	fneg.d	fa3, fa3
	lui	t0, %hi(T)
	ld	t1, %lo(T)(t0)
	fmadd.d	fa5, fa5, fa3, fa4
	lui	a2, %hi(LowerBound)
	ld	a2, %lo(LowerBound)(a2)
	fcvt.d.l	fa4, t1
	fmul.d	fa5, fa5, fa4
	fcvt.l.d	t1, fa5, rtz
	bge	t1, a2, .LBB4_65
# %bb.63:
	lui	t1, %hi(UpperBound2)
	ld	t1, %lo(UpperBound2)(t1)
	bge	a2, t1, .LBB4_66
.LBB4_64:
	sd	a2, %lo(T)(t0)
	bnez	a1, .LBB4_67
	j	.LBB4_69
.LBB4_65:
	mv	a2, t1
	lui	t1, %hi(UpperBound2)
	ld	t1, %lo(UpperBound2)(t1)
	blt	a2, t1, .LBB4_64
.LBB4_66:
	mv	a2, t1
	sd	t1, %lo(T)(t0)
	beqz	a1, .LBB4_69
.LBB4_67:
	lui	a0, %hi(T_field)
	sw	a2, %lo(T_field)(a0)
.LBB4_68:
	bnez	a7, .LBB4_75
	j	.LBB4_79
.LBB4_69:
	beqz	a0, .LBB4_68
# %bb.70:
	bnez	a6, .LBB4_67
# %bb.71:
	lw	a0, 1505(a5)
	li	a5, 2
	bne	a0, a5, .LBB4_68
	j	.LBB4_67
.LBB4_72:
	lui	a0, %hi(.LCPI4_2)
	fld	fa4, %lo(.LCPI4_2)(a0)
	lui	a0, %hi(AWb)
	fld	fa3, %lo(AWb)(a0)
	lui	a0, %hi(.LCPI4_3)
	fld	fa2, %lo(.LCPI4_3)(a0)
	fmul.d	fa5, fa5, fa4
	fmul.d	fa3, fa3, fa2
	fmul.d	fa4, fa3, fa4
.LBB4_73:
	fadd.d	fa5, fa5, fa4
.LBB4_74:
	lui	a0, %hi(AWb)
	fsd	fa5, %lo(AWb)(a0)
.LBB4_75:
	lw	a0, 96(a3)
	lw	a2, 84(a3)
	sw	zero, 0(a3)
	sw	zero, 4(a3)
	bge	a0, a2, .LBB4_79
# %bb.76:
	lui	a0, %hi(TotalFrameQP)
	sw	zero, %lo(TotalFrameQP)(a0)
	sw	zero, 8(a3)
	sw	zero, 12(a3)
	lw	a2, 76(a3)
	lui	a0, %hi(TotalNumberofBasicUnit)
	lw	a0, %lo(TotalNumberofBasicUnit)(a0)
	sd	zero, 20(a3)
	beqz	a2, .LBB4_78
# %bb.77:
	srliw	a2, a0, 31
	addw	a0, a0, a2
	srli	a0, a0, 1
.LBB4_78:
	lui	a2, %hi(NumberofBasicUnit)
	sw	a0, %lo(NumberofBasicUnit)(a2)
.LBB4_79:
	lw	a0, 24(a4)
	beqz	a0, .LBB4_81
.LBB4_80:
	ret
.LBB4_81:
	lw	a0, 96(a3)
	lw	a2, 84(a3)
	bge	a0, a2, .LBB4_80
# %bb.82:
	lw	a0, 76(a3)
	li	a2, 1
	bne	a0, a2, .LBB4_80
# %bb.83:
	lui	a0, %hi(T_field)
	beqz	a1, .LBB4_85
# %bb.84:
	lw	a0, %lo(T_field)(a0)
	lui	a1, %hi(.LCPI4_5)
	fld	fa5, %lo(.LCPI4_5)(a1)
	lui	a1, %hi(bits_topfield)
	sw	zero, %lo(bits_topfield)(a1)
	fcvt.d.w	fa4, a0
	fmul.d	fa5, fa4, fa5
	fcvt.l.d	a0, fa5, rtz
	lui	a1, %hi(T)
	sd	a0, %lo(T)(a1)
	ret
.LBB4_85:
	lw	a0, %lo(T_field)(a0)
	lui	a1, %hi(bits_topfield)
	lw	a1, %lo(bits_topfield)(a1)
	subw	a0, a0, a1
	sw	zero, 8(a3)
	sw	zero, 12(a3)
	lui	a1, %hi(TotalNumberofBasicUnit)
	lw	a1, %lo(TotalNumberofBasicUnit)(a1)
	lui	a2, %hi(T)
	sd	a0, %lo(T)(a2)
	sd	zero, 20(a3)
	srliw	a0, a1, 31
	add	a0, a1, a0
	sraiw	a0, a0, 1
	lui	a1, %hi(NumberofBasicUnit)
	sw	a0, %lo(NumberofBasicUnit)(a1)
	ret
.LBB4_86:
	lui	t2, %hi(CurrentBufferFullness)
	fld	fa5, %lo(CurrentBufferFullness)(t2)
	lui	t2, %hi(GOPTargetBufferLevel)
	fld	fa4, %lo(GOPTargetBufferLevel)(t2)
	lui	t2, %hi(TotalPFrame)
	lw	t2, %lo(TotalPFrame)(t2)
	fsub.d	fa4, fa5, fa4
	j	.LBB4_15
.Lfunc_end4:
	.size	rc_init_pict, .Lfunc_end4-rc_init_pict
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function calc_MAD
.LCPI5_0:
	.quad	0x3f70000000000000              # double 0.00390625
	.text
	.globl	calc_MAD
	.p2align	2
	.type	calc_MAD,@function
calc_MAD:                               # @calc_MAD
# %bb.0:
	li	a2, 0
	lui	a1, %hi(diffy)
	addi	a1, a1, %lo(diffy)
	addi	a0, a1, 32
	addi	a1, a1, 1056
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	lw	a3, -32(a0)
	sraiw	a4, a3, 31
	lw	a5, -28(a0)
	xor	a3, a3, a4
	subw	a4, a4, a2
	subw	a3, a3, a4
	sraiw	a2, a5, 31
	lw	a4, -24(a0)
	xor	a5, a5, a2
	subw	a5, a5, a2
	add	a3, a5, a3
	sraiw	a2, a4, 31
	lw	a5, -20(a0)
	xor	a4, a4, a2
	subw	a4, a4, a2
	add	a3, a4, a3
	sraiw	a2, a5, 31
	lw	a4, -16(a0)
	xor	a5, a5, a2
	subw	a5, a5, a2
	add	a3, a5, a3
	sraiw	a2, a4, 31
	lw	a5, -12(a0)
	xor	a4, a4, a2
	subw	a4, a4, a2
	add	a3, a4, a3
	sraiw	a2, a5, 31
	lw	a4, -8(a0)
	xor	a5, a5, a2
	subw	a5, a5, a2
	add	a3, a5, a3
	sraiw	a2, a4, 31
	lw	a5, -4(a0)
	xor	a4, a4, a2
	subw	a4, a4, a2
	add	a3, a4, a3
	sraiw	a2, a5, 31
	lw	a4, 0(a0)
	xor	a5, a5, a2
	subw	a5, a5, a2
	add	a3, a5, a3
	sraiw	a2, a4, 31
	lw	a5, 4(a0)
	xor	a4, a4, a2
	subw	a4, a4, a2
	add	a3, a4, a3
	sraiw	a2, a5, 31
	lw	a4, 8(a0)
	xor	a5, a5, a2
	subw	a5, a5, a2
	add	a3, a5, a3
	sraiw	a2, a4, 31
	lw	a5, 12(a0)
	xor	a4, a4, a2
	subw	a4, a4, a2
	add	a3, a4, a3
	sraiw	a2, a5, 31
	lw	a4, 16(a0)
	xor	a5, a5, a2
	subw	a5, a5, a2
	add	a3, a5, a3
	sraiw	a2, a4, 31
	lw	a5, 20(a0)
	xor	a4, a4, a2
	subw	a4, a4, a2
	add	a3, a4, a3
	sraiw	a2, a5, 31
	lw	a4, 24(a0)
	xor	a5, a5, a2
	subw	a5, a5, a2
	add	a3, a5, a3
	sraiw	a2, a4, 31
	lw	a5, 28(a0)
	xor	a4, a4, a2
	subw	a4, a4, a2
	add	a2, a4, a3
	sraiw	a3, a5, 31
	xor	a5, a5, a3
	subw	a5, a5, a3
	addi	a0, a0, 64
	add	a2, a5, a2
	bne	a0, a1, .LBB5_1
# %bb.2:
	lui	a0, %hi(.LCPI5_0)
	fld	fa5, %lo(.LCPI5_0)(a0)
	fcvt.d.wu	fa4, a2
	fmul.d	fa0, fa4, fa5
	ret
.Lfunc_end5:
	.size	calc_MAD, .Lfunc_end5-calc_MAD
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_update_pict
.LCPI6_0:
	.quad	0x3feccccccccccccd              # double 0.90000000000000002
	.text
	.globl	rc_update_pict
	.p2align	2
	.type	rc_update_pict,@function
rc_update_pict:                         # @rc_update_pict
# %bb.0:
	lui	a1, %hi(R)
	lw	a2, %lo(R)(a1)
	lui	a3, %hi(bit_rate)
	fld	fa5, %lo(bit_rate)(a3)
	lui	a3, %hi(frame_rate)
	fld	fa4, %lo(frame_rate)(a3)
	subw	a2, a2, a0
	sw	a2, %lo(R)(a1)
	fcvt.d.w	fa3, a0
	fdiv.d	fa5, fa5, fa4
	lui	a0, %hi(CurrentBufferFullness)
	fld	fa4, %lo(CurrentBufferFullness)(a0)
	fsub.d	fa2, fa3, fa5
	lui	a1, %hi(LowerBound)
	ld	a2, %lo(LowerBound)(a1)
	fadd.d	fa4, fa4, fa2
	fsub.d	fa5, fa5, fa3
	fcvt.l.d	a3, fa5, rtz
	add	a2, a2, a3
	sd	a2, %lo(LowerBound)(a1)
	lui	a1, %hi(UpperBound1)
	ld	a2, %lo(UpperBound1)(a1)
	fsd	fa4, %lo(CurrentBufferFullness)(a0)
	lui	a0, %hi(.LCPI6_0)
	fld	fa5, %lo(.LCPI6_0)(a0)
	add	a2, a2, a3
	sd	a2, %lo(UpperBound1)(a1)
	fcvt.d.l	fa4, a2
	fmul.d	fa5, fa4, fa5
	fcvt.l.d	a0, fa5, rtz
	lui	a1, %hi(UpperBound2)
	sd	a0, %lo(UpperBound2)(a1)
	ret
.Lfunc_end6:
	.size	rc_update_pict, .Lfunc_end6-rc_update_pict
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rc_update_pict_frame
.LCPI7_0:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI7_1:
	.quad	0x3ff5d14e3bcd35a8              # double 1.3635999999999999
	.text
	.globl	rc_update_pict_frame
	.p2align	2
	.type	rc_update_pict_frame,@function
rc_update_pict_frame:                   # @rc_update_pict_frame
# %bb.0:
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	lui	a1, 22
	addiw	a1, a1, 236
	add	a1, a2, a1
	lw	a3, 96(a1)
	lw	a4, 84(a1)
	bne	a3, a4, .LBB7_2
# %bb.1:
	lui	a3, %hi(m_Qc)
	lw	a3, %lo(m_Qc)(a3)
	lui	a4, %hi(.LCPI7_0)
	fld	fa5, %lo(.LCPI7_0)(a4)
	mul	a0, a3, a0
	lw	a2, 24(a2)
	fcvt.d.w	fa4, a0
	fadd.d	fa5, fa4, fa5
	fcvt.w.d	a0, fa5, rdn
	li	a3, 1
	bne	a2, a3, .LBB7_9
	j	.LBB7_11
.LBB7_2:
	lw	a2, 24(a2)
	li	a3, 1
	beq	a2, a3, .LBB7_7
# %bb.3:
	bnez	a2, .LBB7_8
# %bb.4:
	lw	a2, 76(a1)
	lw	a3, 88(a1)
	xori	a4, a2, 1
	or	a3, a3, a4
	beqz	a3, .LBB7_12
# %bb.5:
	beqz	a2, .LBB7_12
# %bb.6:
	li	a0, 0
	j	.LBB7_13
.LBB7_7:
	lui	a2, %hi(m_Qc)
	lw	a2, %lo(m_Qc)(a2)
	lui	a3, %hi(.LCPI7_0)
	fld	fa5, %lo(.LCPI7_0)(a3)
	mul	a0, a2, a0
	fcvt.d.w	fa4, a0
	fadd.d	fa5, fa4, fa5
	fcvt.w.d	a0, fa5, rdn
	j	.LBB7_11
.LBB7_8:
	li	a0, 0
	li	a3, 1
	beq	a2, a3, .LBB7_11
.LBB7_9:
	beqz	a2, .LBB7_13
.LBB7_10:
	ret
.LBB7_11:
	lui	a2, %hi(Nb)
	lw	a3, %lo(Nb)(a2)
	lui	a4, %hi(Xb)
	sw	a0, %lo(Xb)(a4)
	addi	a3, a3, -1
	sw	a3, %lo(Nb)(a2)
	lw	a2, 36(a1)
	fcvt.d.w	fa5, a0
	lui	a0, %hi(.LCPI7_1)
	fld	fa4, %lo(.LCPI7_1)(a0)
	addi	a2, a2, 1
	sw	a2, 36(a1)
	lui	a0, %hi(NumberofBFrames)
	lw	a1, %lo(NumberofBFrames)(a0)
	fdiv.d	fa5, fa5, fa4
	lui	a2, %hi(Wb)
	fsd	fa5, %lo(Wb)(a2)
	addi	a1, a1, 1
	sw	a1, %lo(NumberofBFrames)(a0)
	ret
.LBB7_12:
	lui	a2, %hi(TotalFrameQP)
	lw	a2, %lo(TotalFrameQP)(a2)
	lui	a3, %hi(TotalNumberofBasicUnit)
	lw	a3, %lo(TotalNumberofBasicUnit)(a3)
	lui	a4, %hi(.LCPI7_0)
	fld	fa5, %lo(.LCPI7_0)(a4)
	divw	a2, a2, a3
	mul	a0, a2, a0
	fcvt.d.w	fa4, a0
	fadd.d	fa5, fa4, fa5
	fcvt.w.d	a0, fa5, rdn
.LBB7_13:
	lw	a2, 76(a1)
	lw	a3, 88(a1)
	xori	a4, a2, 1
	or	a4, a3, a4
	beqz	a4, .LBB7_18
# %bb.14:
	beqz	a2, .LBB7_18
# %bb.15:
	beqz	a3, .LBB7_10
# %bb.16:
	li	a0, 1
	bne	a2, a0, .LBB7_10
# %bb.17:
	sw	zero, 88(a1)
	ret
.LBB7_18:
	lui	a2, %hi(Np)
	lw	a3, %lo(Np)(a2)
	lui	a4, %hi(Xp)
	sw	a0, %lo(Xp)(a4)
	addi	a3, a3, -1
	sw	a3, %lo(Np)(a2)
	lw	a2, 0(a1)
	fcvt.d.w	fa5, a0
	lui	a0, %hi(Pm_Hp)
	sw	a2, %lo(Pm_Hp)(a0)
	lw	a0, 40(a1)
	lui	a2, %hi(Wp)
	lw	a3, 52(a1)
	fsd	fa5, %lo(Wp)(a2)
	addi	a0, a0, 1
	sw	a0, 40(a1)
	addi	a3, a3, 1
	sw	a3, 52(a1)
	ret
.Lfunc_end7:
	.size	rc_update_pict_frame, .Lfunc_end7-rc_update_pict_frame
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	setbitscount                    # -- Begin function setbitscount
	.p2align	2
	.type	setbitscount,@function
setbitscount:                           # @setbitscount
# %bb.0:
	lui	a1, %hi(bits_topfield)
	sw	a0, %lo(bits_topfield)(a1)
	ret
.Lfunc_end8:
	.size	setbitscount, .Lfunc_end8-setbitscount
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function updateQuantizationParameter
.LCPI9_0:
	.quad	0x4010000000000000              # double 4
.LCPI9_1:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI9_2:
	.quad	0x3ff2000000000000              # double 1.125
.LCPI9_3:
	.quad	0x3fe5000000000000              # double 0.65625
.LCPI9_4:
	.quad	0x3fe8000000000000              # double 0.75
.LCPI9_5:
	.quad	0x3feb000000000000              # double 0.84375
.LCPI9_6:
	.quad	0x3fee000000000000              # double 0.9375
.LCPI9_7:
	.quad	0x3ff1000000000000              # double 1.0625
	.text
	.globl	updateQuantizationParameter
	.p2align	2
	.type	updateQuantizationParameter,@function
updateQuantizationParameter:            # @updateQuantizationParameter
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	fsd	fs0, 24(sp)                     # 8-byte Folded Spill
	fsd	fs1, 16(sp)                     # 8-byte Folded Spill
	fsd	fs2, 8(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(img)
	ld	a3, %lo(img)(a1)
	lui	a1, 22
	addiw	a2, a1, 244
	add	a2, a3, a2
	lw	a1, 88(a2)
	lw	a4, 76(a2)
	bne	a1, a4, .LBB9_5
# %bb.1:
	beqz	a0, .LBB9_9
.LBB9_2:
	lw	a0, 24(a3)
	beqz	a0, .LBB9_36
# %bb.3:
	li	a1, 1
	beq	a0, a1, .LBB9_30
# %bb.4:
	li	a1, 2
	beq	a0, a1, .LBB9_8
	j	.LBB9_37
.LBB9_5:
	lw	a1, 24(a3)
	beqz	a1, .LBB9_21
# %bb.6:
	li	a3, 1
	beq	a1, a3, .LBB9_14
# %bb.7:
	li	a0, 2
	bne	a1, a0, .LBB9_155
.LBB9_8:
	lui	a0, %hi(MyInitialQp)
	lw	a1, %lo(MyInitialQp)(a0)
	j	.LBB9_229
.LBB9_9:
	lw	a0, 68(a2)
	beqz	a0, .LBB9_2
# %bb.10:
	lw	a0, 24(a3)
	bnez	a0, .LBB9_155
# %bb.11:
	lw	a0, 80(a2)
	bnez	a0, .LBB9_155
# %bb.12:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 1505(a0)
	lui	a0, %hi(m_Qc)
	lw	a0, %lo(m_Qc)(a0)
	li	a3, 1
	bne	a1, a3, .LBB9_153
# %bb.13:
	lw	a1, 40(a2)
	add	a1, a1, a0
	sw	a1, 40(a2)
	lui	a1, %hi(PreviousQp2)
	lw	a2, %lo(PreviousQp2)(a1)
	addi	a2, a2, 1
	lui	a3, %hi(PreviousQp1)
	sw	a2, %lo(PreviousQp1)(a3)
	sw	a0, %lo(PreviousQp2)(a1)
	lui	a1, %hi(Pm_Qp)
	addi	a1, a1, %lo(Pm_Qp)
	j	.LBB9_154
.LBB9_14:
	beqz	a0, .LBB9_58
.LBB9_15:
	lui	a0, %hi(input)
	ld	a1, %lo(input)(a0)
	lw	a0, 1244(a1)
	li	a4, 1
	addi	a3, a1, 2047
	bne	a0, a4, .LBB9_42
# %bb.16:
	lw	a0, 1505(a3)
	li	a1, 2
	beq	a0, a1, .LBB9_18
# %bb.17:
	lw	a0, 1509(a3)
	beqz	a0, .LBB9_158
.LBB9_18:
	lw	a0, 68(a2)
	bnez	a0, .LBB9_158
# %bb.19:
	lw	a1, 72(a2)
	lui	a0, %hi(PreviousQp2)
	lw	a2, %lo(PreviousQp2)(a0)
	lui	a3, %hi(PreviousQp1)
	li	a4, 1
	sw	a2, %lo(PreviousQp1)(a3)
	beq	a1, a4, .LBB9_156
# %bb.20:
	lui	a1, %hi(FieldQPBuffer)
	addi	a1, a1, %lo(FieldQPBuffer)
	j	.LBB9_157
.LBB9_21:
	lw	a1, 80(a2)
	li	a3, 1
	bne	a1, a3, .LBB9_23
# %bb.22:
	lw	a4, 68(a2)
	beq	a4, a3, .LBB9_8
.LBB9_23:
	lw	a6, 36(a2)
	bne	a6, a3, .LBB9_25
# %bb.24:
	lw	a3, 44(a2)
	beqz	a3, .LBB9_95
.LBB9_25:
	lui	a1, %hi(Pm_X1)
	fld	fa5, %lo(Pm_X1)(a1)
	lui	a1, %hi(m_X1)
	fsd	fa5, %lo(m_X1)(a1)
	lui	a1, %hi(Pm_X2)
	fld	fa4, %lo(Pm_X2)(a1)
	lui	a1, %hi(PPreHeader)
	lw	a1, %lo(PPreHeader)(a1)
	lui	a3, %hi(m_X2)
	fsd	fa4, %lo(m_X2)(a3)
	lui	a3, %hi(m_Hp)
	sw	a1, %lo(m_Hp)(a3)
	lui	a1, %hi(Pm_Qp)
	lw	a7, %lo(Pm_Qp)(a1)
	lui	a1, %hi(PDuantQp)
	lw	a1, %lo(PDuantQp)(a1)
	lui	a3, %hi(m_Qp)
	sw	a7, %lo(m_Qp)(a3)
	lui	a3, %hi(DuantQp)
	sw	a1, %lo(DuantQp)(a3)
	lui	a1, %hi(PMADPictureC1)
	fld	fa3, %lo(PMADPictureC1)(a1)
	lui	a1, %hi(PMADPictureC2)
	fld	fa2, %lo(PMADPictureC2)(a1)
	lw	a4, 68(a2)
	lui	a1, %hi(TotalNumberofBasicUnit)
	lw	a3, %lo(TotalNumberofBasicUnit)(a1)
	lui	a1, %hi(MADPictureC1)
	fsd	fa3, %lo(MADPictureC1)(a1)
	lui	a1, %hi(MADPictureC2)
	fsd	fa2, %lo(MADPictureC2)(a1)
	mv	a5, a3
	beqz	a4, .LBB9_27
# %bb.26:
	srliw	a1, a3, 31
	add	a1, a3, a1
	sraiw	a5, a1, 1
.LBB9_27:
	lui	a1, %hi(NumberofBasicUnit)
	lw	t0, %lo(NumberofBasicUnit)(a1)
	bne	t0, a5, .LBB9_59
# %bb.28:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a3, 1505(a1)
	li	a6, 2
	bne	a3, a6, .LBB9_91
# %bb.29:
	bnez	a4, .LBB9_145
	j	.LBB9_93
.LBB9_30:
	lui	a0, %hi(input)
	ld	a3, %lo(input)(a0)
	lw	a0, 1244(a3)
	addi	a3, a3, 2047
	bne	a0, a1, .LBB9_50
# %bb.31:
	lw	a0, 1505(a3)
	li	a1, 2
	beq	a0, a1, .LBB9_33
# %bb.32:
	lw	a0, 1509(a3)
	beqz	a0, .LBB9_163
.LBB9_33:
	lw	a0, 68(a2)
	bnez	a0, .LBB9_163
# %bb.34:
	lw	a1, 72(a2)
	lui	a0, %hi(PreviousQp2)
	lw	a2, %lo(PreviousQp2)(a0)
	lui	a3, %hi(PreviousQp1)
	li	a4, 1
	sw	a2, %lo(PreviousQp1)(a3)
	beq	a1, a4, .LBB9_161
# %bb.35:
	lui	a1, %hi(FieldQPBuffer)
	addi	a1, a1, %lo(FieldQPBuffer)
	j	.LBB9_162
.LBB9_36:
	lw	a0, 44(a2)
	beqz	a0, .LBB9_62
.LBB9_37:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 1505(a0)
	li	a4, 2
	beq	a1, a4, .LBB9_39
# %bb.38:
	lw	a0, 1509(a0)
	beqz	a0, .LBB9_67
.LBB9_39:
	lw	a0, 68(a2)
	bnez	a0, .LBB9_67
# %bb.40:
	lw	a1, 72(a2)
	lw	a0, 40(a2)
	li	a4, 1
	beq	a1, a4, .LBB9_65
# %bb.41:
	lui	a1, %hi(FieldQPBuffer)
	addi	a1, a1, %lo(FieldQPBuffer)
	j	.LBB9_66
.LBB9_42:
	lui	a1, %hi(NumberofBFrames)
	lw	a1, %lo(NumberofBFrames)(a1)
	addi	a1, a1, 1
	remw	a4, a1, a0
	mv	a1, a0
	beqz	a4, .LBB9_44
# %bb.43:
	mv	a1, a4
.LBB9_44:
	li	a4, 1
	bne	a1, a4, .LBB9_210
# %bb.45:
	lw	a4, 1505(a3)
	li	a5, 2
	beq	a4, a5, .LBB9_47
# %bb.46:
	lw	a3, 1509(a3)
	beqz	a3, .LBB9_210
.LBB9_47:
	lw	a3, 68(a2)
	bnez	a3, .LBB9_210
# %bb.48:
	lw	a3, 72(a2)
	lui	a2, %hi(PreviousQp2)
	lw	a4, %lo(PreviousQp2)(a2)
	lui	a5, %hi(PreviousQp1)
	li	a6, 1
	sw	a4, %lo(PreviousQp1)(a5)
	beq	a3, a6, .LBB9_208
# %bb.49:
	lui	a3, %hi(FieldQPBuffer)
	addi	a3, a3, %lo(FieldQPBuffer)
	j	.LBB9_209
.LBB9_50:
	lui	a1, %hi(NumberofBFrames)
	lw	a1, %lo(NumberofBFrames)(a1)
	addi	a1, a1, 1
	remw	a4, a1, a0
	mv	a1, a0
	beqz	a4, .LBB9_52
# %bb.51:
	mv	a1, a4
.LBB9_52:
	li	a4, 1
	bne	a1, a4, .LBB9_217
# %bb.53:
	lw	a4, 1505(a3)
	li	a5, 2
	beq	a4, a5, .LBB9_55
# %bb.54:
	lw	a3, 1509(a3)
	beqz	a3, .LBB9_217
.LBB9_55:
	lw	a3, 68(a2)
	bnez	a3, .LBB9_217
# %bb.56:
	lw	a3, 72(a2)
	lui	a2, %hi(PreviousQp2)
	lw	a4, %lo(PreviousQp2)(a2)
	lui	a5, %hi(PreviousQp1)
	li	a6, 1
	sw	a4, %lo(PreviousQp1)(a5)
	beq	a3, a6, .LBB9_215
# %bb.57:
	lui	a3, %hi(FieldQPBuffer)
	addi	a3, a3, %lo(FieldQPBuffer)
	j	.LBB9_216
.LBB9_58:
	lw	a0, 68(a2)
	bnez	a0, .LBB9_155
	j	.LBB9_15
.LBB9_59:
	lw	a1, 0(a2)
	lw	a5, 4(a2)
	lui	t1, %hi(T)
	ld	t2, %lo(T)(t1)
	addw	a1, a5, a1
	lui	a5, %hi(TotalBasicUnitBits)
	sw	a1, %lo(TotalBasicUnitBits)(a5)
	sub	a1, t2, a1
	sd	a1, %lo(T)(t1)
	sw	zero, 0(a2)
	sw	zero, 4(a2)
	bltz	a1, .LBB9_103
# %bb.60:
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	addi	a2, a2, 2047
	lw	a5, 1505(a2)
	li	a6, 2
	bne	a5, a6, .LBB9_121
# %bb.61:
	li	a2, 1
	beq	a4, a2, .LBB9_123
	j	.LBB9_128
.LBB9_62:
	lui	a0, %hi(MyInitialQp)
	lw	a1, %lo(MyInitialQp)(a0)
	lui	a0, %hi(m_Qc)
	sw	a1, %lo(m_Qc)(a0)
	lw	a0, 68(a2)
	bnez	a0, .LBB9_230
# %bb.63:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	beqz	a0, .LBB9_120
# %bb.64:
	lw	a0, 40(a2)
	add	a0, a0, a1
	sw	a0, 40(a2)
	j	.LBB9_119
.LBB9_65:
	lui	a1, %hi(FrameQPBuffer)
	addi	a1, a1, %lo(FrameQPBuffer)
.LBB9_66:
	lw	a1, 0(a1)
	add	a0, a0, a1
	sw	a0, 40(a2)
	lui	a0, %hi(Pm_Qp)
	sw	a1, %lo(Pm_Qp)(a0)
.LBB9_67:
	lui	a0, %hi(Pm_X1)
	fld	fa5, %lo(Pm_X1)(a0)
	lui	a0, %hi(m_X1)
	fsd	fa5, %lo(m_X1)(a0)
	lui	a0, %hi(Pm_X2)
	fld	fa4, %lo(Pm_X2)(a0)
	lui	a0, %hi(PPreHeader)
	lw	a0, %lo(PPreHeader)(a0)
	lui	a1, %hi(m_X2)
	fsd	fa4, %lo(m_X2)(a1)
	lui	a1, %hi(m_Hp)
	sw	a0, %lo(m_Hp)(a1)
	lui	a1, %hi(Pm_Qp)
	lw	a1, %lo(Pm_Qp)(a1)
	lui	a2, %hi(PDuantQp)
	lw	a2, %lo(PDuantQp)(a2)
	lui	a4, %hi(m_Qp)
	sw	a1, %lo(m_Qp)(a4)
	lui	a4, %hi(DuantQp)
	sw	a2, %lo(DuantQp)(a4)
	lui	a4, %hi(PMADPictureC1)
	fld	fa3, %lo(PMADPictureC1)(a4)
	lui	a4, %hi(PMADPictureC2)
	fld	fa2, %lo(PMADPictureC2)(a4)
	lui	a4, %hi(MADPictureC1)
	fsd	fa3, %lo(MADPictureC1)(a4)
	lui	a4, %hi(MADPictureC2)
	fsd	fa2, %lo(MADPictureC2)(a4)
	lui	a4, %hi(PPictureMAD)
	fld	fa1, %lo(PPictureMAD)(a4)
	lui	a5, %hi(PreviousPictureMAD)
	lui	a4, %hi(T)
	ld	a4, %lo(T)(a4)
	fsd	fa1, %lo(PreviousPictureMAD)(a5)
	fmadd.d	fa3, fa3, fa1, fa2
	lui	a5, %hi(CurrentFrameMAD)
	fsd	fa3, %lo(CurrentFrameMAD)(a5)
	bltz	a4, .LBB9_76
# %bb.68:
	lui	a1, %hi(bit_rate)
	lui	a2, %hi(MINVALUE)
	fld	fa2, %lo(MINVALUE)(a2)
	lui	a2, %hi(frame_rate)
	fld	fa1, %lo(frame_rate)(a2)
	fld	fa0, %lo(bit_rate)(a1)
	subw	a4, a4, a0
	fmul.d	fa2, fa2, fa1
	fdiv.d	fa2, fa0, fa2
	fcvt.w.d	a0, fa2, rtz
	blt	a0, a4, .LBB9_70
# %bb.69:
	mv	a4, a0
.LBB9_70:
	fmul.d	fa2, fa5, fa3
	fmv.d.x	fs2, zero
	feq.d	a0, fa4, fs2
	fcvt.d.w	fs1, a4
	bnez	a0, .LBB9_79
# %bb.71:
	lui	a0, %hi(.LCPI9_0)
	fld	fa1, %lo(.LCPI9_0)(a0)
	fmul.d	fa0, fa3, fa2
	fmul.d	fa4, fa4, fa1
	fmul.d	fa4, fa4, fa3
	fmul.d	fa4, fa4, fs1
	fmadd.d	fs0, fa0, fa5, fa4
	flt.d	a0, fs0, fs2
	bnez	a0, .LBB9_79
# %bb.72:
	fsqrt.d	fa0, fs0
	feq.d	a0, fa0, fa0
	beqz	a0, .LBB9_277
.LBB9_73:                               # %.split
	lui	a0, %hi(m_X1)
	fld	fa4, %lo(m_X1)(a0)
	lui	a0, %hi(CurrentFrameMAD)
	fld	fa5, %lo(CurrentFrameMAD)(a0)
	fnmsub.d	fa3, fa4, fa5, fa0
	fle.d	a0, fa3, fs2
	bnez	a0, .LBB9_78
# %bb.74:
	lui	a0, %hi(m_X2)
	fld	fa4, %lo(m_X2)(a0)
	fadd.d	fa4, fa4, fa4
	fsqrt.d	fa0, fs0
	feq.d	a0, fa0, fa0
	fmul.d	fs1, fa5, fa4
	beqz	a0, .LBB9_278
.LBB9_75:                               # %.split14
	lui	a0, %hi(m_X1)
	fld	fa5, %lo(m_X1)(a0)
	lui	a0, %hi(CurrentFrameMAD)
	fld	fa4, %lo(CurrentFrameMAD)(a0)
	fnmsub.d	fa5, fa5, fa4, fa0
	fdiv.d	fa5, fs1, fa5
	j	.LBB9_80
.LBB9_76:
	lui	a0, %hi(RC_MAX_QUANT)
	lw	a0, %lo(RC_MAX_QUANT)(a0)
	addw	a1, a2, a1
	blt	a1, a0, .LBB9_116
# %bb.77:
	mv	a1, a0
	j	.LBB9_116
.LBB9_78:
	fmul.d	fa2, fa4, fa5
.LBB9_79:
	fdiv.d	fa5, fa2, fs1
.LBB9_80:
	fcvt.s.d	fa4, fa5
	fcvt.d.s	fa5, fa4
	lui	a0, %hi(m_Qstep)
	lui	a1, 258560
	fmv.w.x	fa3, a1
	flt.s	a1, fa4, fa3
	fsd	fa5, %lo(m_Qstep)(a0)
	beqz	a1, .LBB9_82
# %bb.81:
	li	a0, 0
	j	.LBB9_107
.LBB9_82:
	lui	a0, 275968
	fmv.w.x	fa3, a0
	flt.s	a1, fa3, fa4
	li	a0, 51
	bnez	a1, .LBB9_107
# %bb.83:
	lui	a0, 260352
	fmv.w.x	fa3, a0
	flt.s	a0, fa3, fa4
	beqz	a0, .LBB9_86
# %bb.84:                               # %.preheader
	lui	a0, %hi(.LCPI9_1)
	fld	fa4, %lo(.LCPI9_1)(a0)
	lui	a0, %hi(.LCPI9_2)
	fld	fa3, %lo(.LCPI9_2)(a0)
	li	a0, 0
.LBB9_85:                               # =>This Inner Loop Header: Depth=1
	fmul.d	fa5, fa5, fa4
	flt.d	a1, fa3, fa5
	addi	a0, a0, 6
	bnez	a1, .LBB9_85
.LBB9_86:
	lui	a1, %hi(.LCPI9_3)
	fld	fa4, %lo(.LCPI9_3)(a1)
	fle.d	a1, fa5, fa4
	bnez	a1, .LBB9_105
# %bb.87:
	lui	a1, %hi(.LCPI9_4)
	fld	fa4, %lo(.LCPI9_4)(a1)
	fle.d	a2, fa5, fa4
	li	a1, 1
	bnez	a2, .LBB9_106
# %bb.88:
	lui	a1, %hi(.LCPI9_5)
	fld	fa4, %lo(.LCPI9_5)(a1)
	fle.d	a2, fa5, fa4
	li	a1, 2
	bnez	a2, .LBB9_106
# %bb.89:
	lui	a1, %hi(.LCPI9_6)
	fld	fa4, %lo(.LCPI9_6)(a1)
	fle.d	a2, fa5, fa4
	li	a1, 3
	bnez	a2, .LBB9_106
# %bb.90:
	lui	a1, %hi(.LCPI9_7)
	fld	fa4, %lo(.LCPI9_7)(a1)
	fle.d	a1, fa5, fa4
	xori	a1, a1, 1
	addi	a1, a1, 4
	j	.LBB9_106
.LBB9_91:
	bnez	a4, .LBB9_145
# %bb.92:
	lw	a1, 1509(a1)
	beqz	a1, .LBB9_145
.LBB9_93:
	lw	a1, 72(a2)
	lw	a6, 44(a2)
	li	a3, 1
	bne	a1, a3, .LBB9_142
# %bb.94:
	lui	a1, %hi(FrameQPBuffer)
	lw	a1, %lo(FrameQPBuffer)(a1)
	lui	a3, %hi(FrameAveHeaderBits)
	addi	a3, a3, %lo(FrameAveHeaderBits)
	bgtz	a6, .LBB9_143
	j	.LBB9_144
.LBB9_95:
	lw	a3, 68(a2)
	beqz	a3, .LBB9_98
# %bb.96:
	li	a4, 1
	bne	a3, a4, .LBB9_155
# %bb.97:
	bnez	a1, .LBB9_155
.LBB9_98:
	lui	a1, %hi(MyInitialQp)
	lw	a1, %lo(MyInitialQp)(a1)
	lui	a4, %hi(m_Qc)
	sw	a1, %lo(m_Qc)(a4)
	sw	zero, 0(a2)
	sw	zero, 4(a2)
	lui	a4, %hi(NumberofBasicUnit)
	lw	a5, %lo(NumberofBasicUnit)(a4)
	addiw	a5, a5, -1
	or	a0, a0, a5
	sw	a5, %lo(NumberofBasicUnit)(a4)
	bnez	a0, .LBB9_102
# %bb.99:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	beqz	a0, .LBB9_262
.LBB9_100:
	lw	a0, 40(a2)
	add	a0, a0, a1
	sw	a0, 40(a2)
	lui	a0, %hi(PreviousQp2)
	lw	a2, %lo(PreviousQp2)(a0)
	lui	a3, %hi(PreviousQp1)
	sw	a2, %lo(PreviousQp1)(a3)
	sw	a1, %lo(PreviousQp2)(a0)
	lui	a2, %hi(PAveHeaderBits3)
	addi	a2, a2, %lo(PAveHeaderBits3)
	lui	a0, %hi(PAveFrameQP)
	addi	a0, a0, %lo(PAveFrameQP)
.LBB9_101:
	lui	a3, %hi(PAveHeaderBits2)
	lw	a3, %lo(PAveHeaderBits2)(a3)
	sw	a1, 0(a0)
	sw	a3, 0(a2)
.LBB9_102:
	lui	a0, %hi(TotalFrameQP)
	lw	a2, %lo(TotalFrameQP)(a0)
	lui	a3, %hi(Pm_Qp)
	sw	a1, %lo(Pm_Qp)(a3)
	add	a2, a2, a1
	sw	a2, %lo(TotalFrameQP)(a0)
	j	.LBB9_230
.LBB9_103:
	lui	a1, %hi(GOPOverdue)
	lw	a5, %lo(GOPOverdue)(a1)
	li	a1, 1
	bne	a5, a1, .LBB9_173
# %bb.104:
	li	a1, 2
	j	.LBB9_174
.LBB9_105:
	li	a1, 0
.LBB9_106:
	addw	a0, a1, a0
.LBB9_107:
	lui	a1, %hi(m_Qp)
	lw	a1, %lo(m_Qp)(a1)
	lui	a2, %hi(DuantQp)
	lw	a2, %lo(DuantQp)(a2)
	lui	a4, %hi(m_Qc)
	addw	a3, a2, a1
	sw	a0, %lo(m_Qc)(a4)
	blt	a3, a0, .LBB9_111
# %bb.108:
	mv	a3, a0
	lui	a0, %hi(RC_MAX_QUANT)
	lw	a0, %lo(RC_MAX_QUANT)(a0)
	bge	a3, a0, .LBB9_112
.LBB9_109:
	subw	a0, a1, a2
	blt	a3, a0, .LBB9_113
.LBB9_110:
	mv	a0, a3
	lui	a1, %hi(RC_MIN_QUANT)
	lw	a1, %lo(RC_MIN_QUANT)(a1)
	bge	a3, a1, .LBB9_114
	j	.LBB9_115
.LBB9_111:
	lui	a0, %hi(RC_MAX_QUANT)
	lw	a0, %lo(RC_MAX_QUANT)(a0)
	blt	a3, a0, .LBB9_109
.LBB9_112:
	mv	a3, a0
	subw	a0, a1, a2
	bge	a3, a0, .LBB9_110
.LBB9_113:
	lui	a1, %hi(RC_MIN_QUANT)
	lw	a1, %lo(RC_MIN_QUANT)(a1)
	blt	a0, a1, .LBB9_115
.LBB9_114:
	mv	a1, a0
.LBB9_115:
	lui	a0, %hi(img)
	ld	a3, %lo(img)(a0)
.LBB9_116:
	lui	a0, 22
	addiw	a0, a0, 284
	add	a3, a3, a0
	lui	a0, %hi(m_Qc)
	sw	a1, %lo(m_Qc)(a0)
	lw	a0, 28(a3)
	bnez	a0, .LBB9_230
# %bb.117:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	beqz	a0, .LBB9_120
# %bb.118:
	lw	a0, 0(a3)
	add	a0, a0, a1
	sw	a0, 0(a3)
.LBB9_119:
	lui	a0, %hi(PreviousQp2)
	lw	a2, %lo(PreviousQp2)(a0)
	lui	a3, %hi(PreviousQp1)
	sw	a2, %lo(PreviousQp1)(a3)
	sw	a1, %lo(PreviousQp2)(a0)
	lui	a0, %hi(Pm_Qp)
	sw	a1, %lo(Pm_Qp)(a0)
	j	.LBB9_230
.LBB9_120:
	lui	a0, %hi(FrameQPBuffer)
	sw	a1, %lo(FrameQPBuffer)(a0)
	j	.LBB9_230
.LBB9_121:
	li	a5, 1
	bne	a4, a5, .LBB9_128
# %bb.122:
	lw	a2, 1509(a2)
	beqz	a2, .LBB9_128
.LBB9_123:
	lui	a2, %hi(FCBUPFMAD)
	ld	a2, %lo(FCBUPFMAD)(a2)
	subw	a4, a3, t0
	slli	a5, a4, 3
	add	a5, a2, a5
	fld	fa1, 0(a5)
	fmadd.d	fa1, fa3, fa1, fa2
	lui	a5, %hi(CurrentFrameMAD)
	fsd	fa1, %lo(CurrentFrameMAD)(a5)
	lui	a5, %hi(TotalBUMAD)
	sd	zero, %lo(TotalBUMAD)(a5)
	blez	t0, .LBB9_133
# %bb.124:
	slli	a5, a3, 3
	addi	a6, a3, -1
	add	a5, a5, a2
	blt	a4, a6, .LBB9_126
# %bb.125:
	mv	a4, a6
.LBB9_126:
	addi	a5, a5, -8
	slli	a4, a4, 3
	add	a2, a4, a2
	addi	a2, a2, -8
	fmv.d.x	fa0, zero
	lui	a4, %hi(CurrentBUMAD)
	lui	a6, %hi(TotalBUMAD)
.LBB9_127:                              # =>This Inner Loop Header: Depth=1
	fld	ft0, 0(a5)
	fmadd.d	ft0, fa3, ft0, fa2
	fsd	ft0, %lo(CurrentBUMAD)(a4)
	fmadd.d	fa0, ft0, ft0, fa0
	addi	a5, a5, -8
	fsd	fa0, %lo(TotalBUMAD)(a6)
	bne	a5, a2, .LBB9_127
	j	.LBB9_134
.LBB9_128:
	lui	a2, %hi(BUPFMAD)
	ld	a2, %lo(BUPFMAD)(a2)
	subw	a4, a3, t0
	slli	a5, a4, 3
	add	a5, a2, a5
	fld	fa1, 0(a5)
	fmadd.d	fa1, fa3, fa1, fa2
	lui	a5, %hi(CurrentFrameMAD)
	fsd	fa1, %lo(CurrentFrameMAD)(a5)
	lui	a5, %hi(TotalBUMAD)
	sd	zero, %lo(TotalBUMAD)(a5)
	blez	t0, .LBB9_133
# %bb.129:
	slli	a5, a3, 3
	addi	a6, a3, -1
	add	a5, a5, a2
	blt	a4, a6, .LBB9_131
# %bb.130:
	mv	a4, a6
.LBB9_131:
	addi	a5, a5, -8
	slli	a4, a4, 3
	add	a2, a4, a2
	addi	a2, a2, -8
	fmv.d.x	fa0, zero
	lui	a4, %hi(CurrentBUMAD)
	lui	a6, %hi(TotalBUMAD)
.LBB9_132:                              # =>This Inner Loop Header: Depth=1
	fld	ft0, 0(a5)
	fmadd.d	ft0, fa3, ft0, fa2
	fsd	ft0, %lo(CurrentBUMAD)(a4)
	fmadd.d	fa0, ft0, ft0, fa0
	addi	a5, a5, -8
	fsd	fa0, %lo(TotalBUMAD)(a6)
	bne	a5, a2, .LBB9_132
	j	.LBB9_134
.LBB9_133:
	fmv.d.x	fa0, zero
.LBB9_134:
	fcvt.d.l	fa3, a1
	fmul.d	fa3, fa1, fa3
	fmul.d	fa3, fa1, fa3
	fdiv.d	fa3, fa3, fa0
	fcvt.w.d	a1, fa3, rtz
	lui	a2, %hi(PAveHeaderBits2)
	lw	a2, %lo(PAveHeaderBits2)(a2)
	lui	a4, %hi(MINVALUE)
	fld	fa3, %lo(MINVALUE)(a4)
	lui	a4, %hi(frame_rate)
	fld	fa2, %lo(frame_rate)(a4)
	subw	a1, a1, a2
	lui	a2, %hi(bit_rate)
	fld	fa0, %lo(bit_rate)(a2)
	fmul.d	fa3, fa3, fa2
	fcvt.d.w	fa2, a3
	fmul.d	fa3, fa3, fa2
	fdiv.d	fa3, fa0, fa3
	fcvt.w.d	a2, fa3, rtz
	blt	a2, a1, .LBB9_136
# %bb.135:
	mv	a1, a2
.LBB9_136:
	fmul.d	fa3, fa5, fa1
	fmv.d.x	fs2, zero
	feq.d	a2, fa4, fs2
	fcvt.d.w	fs1, a1
	bnez	a2, .LBB9_196
# %bb.137:
	lui	a1, %hi(.LCPI9_0)
	fld	fa2, %lo(.LCPI9_0)(a1)
	fmul.d	fa0, fa1, fa3
	fmul.d	fa4, fa4, fa2
	fmul.d	fa4, fa4, fa1
	fmul.d	fa4, fa4, fs1
	fmadd.d	fs0, fa0, fa5, fa4
	flt.d	a1, fs0, fs2
	bnez	a1, .LBB9_196
# %bb.138:
	fsqrt.d	fa0, fs0
	feq.d	a1, fa0, fa0
	beqz	a1, .LBB9_279
.LBB9_139:                              # %.split16
	lui	a1, %hi(m_X1)
	fld	fa4, %lo(m_X1)(a1)
	lui	a1, %hi(CurrentFrameMAD)
	fld	fa5, %lo(CurrentFrameMAD)(a1)
	fnmsub.d	fa3, fa4, fa5, fa0
	fle.d	a1, fa3, fs2
	bnez	a1, .LBB9_195
# %bb.140:
	lui	a1, %hi(m_X2)
	fld	fa4, %lo(m_X2)(a1)
	fadd.d	fa4, fa4, fa4
	fsqrt.d	fa0, fs0
	feq.d	a1, fa0, fa0
	fmul.d	fs1, fa5, fa4
	beqz	a1, .LBB9_280
.LBB9_141:                              # %.split18
	lui	a1, %hi(m_X1)
	fld	fa5, %lo(m_X1)(a1)
	lui	a1, %hi(CurrentFrameMAD)
	fld	fa4, %lo(CurrentFrameMAD)(a1)
	fnmsub.d	fa5, fa5, fa4, fa0
	fdiv.d	fa5, fs1, fa5
	j	.LBB9_197
.LBB9_142:
	lui	a1, %hi(FieldQPBuffer)
	lw	a1, %lo(FieldQPBuffer)(a1)
	lui	a3, %hi(FieldAveHeaderBits)
	addi	a3, a3, %lo(FieldAveHeaderBits)
	blez	a6, .LBB9_144
.LBB9_143:
	lw	a6, 40(a2)
	add	a6, a6, a1
	sw	a6, 40(a2)
.LBB9_144:
	lw	a2, 0(a3)
	lui	a3, %hi(PAveFrameQP)
	sw	a1, %lo(PAveFrameQP)(a3)
	lui	a1, %hi(PAveHeaderBits3)
	sw	a2, %lo(PAveHeaderBits3)(a1)
.LBB9_145:
	lui	a1, %hi(T)
	ld	a1, %lo(T)(a1)
	lui	a2, %hi(PAveFrameQP)
	lw	a2, %lo(PAveFrameQP)(a2)
	blez	a1, .LBB9_147
# %bb.146:
	lui	a0, %hi(m_Qc)
	sw	a2, %lo(m_Qc)(a0)
	mv	a1, a2
	j	.LBB9_152
.LBB9_147:
	lui	a1, %hi(RC_MAX_QUANT)
	lw	a3, %lo(RC_MAX_QUANT)(a1)
	addiw	a1, a2, 2
	blt	a1, a3, .LBB9_149
# %bb.148:
	mv	a1, a3
.LBB9_149:
	lui	a3, %hi(m_Qc)
	sw	a1, %lo(m_Qc)(a3)
	bnez	a0, .LBB9_151
# %bb.150:
	bnez	a4, .LBB9_152
.LBB9_151:
	lui	a0, %hi(GOPOverdue)
	li	a3, 1
	sw	a3, %lo(GOPOverdue)(a0)
.LBB9_152:
	lui	a0, %hi(TotalFrameQP)
	lw	a3, %lo(TotalFrameQP)(a0)
	add	a3, a3, a1
	sw	a3, %lo(TotalFrameQP)(a0)
	addi	a5, a5, -1
	lui	a0, %hi(NumberofBasicUnit)
	sw	a5, %lo(NumberofBasicUnit)(a0)
	lui	a0, %hi(Pm_Qp)
	sw	a2, %lo(Pm_Qp)(a0)
	j	.LBB9_230
.LBB9_153:
	lui	a1, %hi(FieldQPBuffer)
	addi	a1, a1, %lo(FieldQPBuffer)
.LBB9_154:
	sw	a0, 0(a1)
.LBB9_155:
	lui	a0, %hi(m_Qc)
	lw	a1, %lo(m_Qc)(a0)
	j	.LBB9_230
.LBB9_156:
	lui	a1, %hi(FrameQPBuffer)
	addi	a1, a1, %lo(FrameQPBuffer)
.LBB9_157:
	lw	a1, 0(a1)
	sw	a1, %lo(PreviousQp2)(a0)
.LBB9_158:
	lui	a0, %hi(PreviousQp1)
	lw	a0, %lo(PreviousQp1)(a0)
	lui	a1, %hi(PreviousQp2)
	lw	a1, %lo(PreviousQp2)(a1)
	bne	a0, a1, .LBB9_160
# %bb.159:
	addiw	a0, a0, 2
	lui	a1, %hi(RC_MAX_QUANT)
	lw	a1, %lo(RC_MAX_QUANT)(a1)
	blt	a0, a1, .LBB9_227
	j	.LBB9_168
.LBB9_160:
	add	a0, a1, a0
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	addi	a0, a0, 1
	lui	a1, %hi(RC_MAX_QUANT)
	lw	a1, %lo(RC_MAX_QUANT)(a1)
	blt	a0, a1, .LBB9_227
	j	.LBB9_168
.LBB9_161:
	lui	a1, %hi(FrameQPBuffer)
	addi	a1, a1, %lo(FrameQPBuffer)
.LBB9_162:
	lw	a1, 0(a1)
	sw	a1, %lo(PreviousQp2)(a0)
.LBB9_163:
	lui	a0, %hi(PreviousQp1)
	lw	a2, %lo(PreviousQp1)(a0)
	lui	a0, %hi(PreviousQp2)
	lw	a1, %lo(PreviousQp2)(a0)
	mv	a0, a2
	blt	a2, a1, .LBB9_169
# %bb.164:
	addiw	a0, a1, 2
	bge	a1, a2, .LBB9_170
.LBB9_165:
	blt	a2, a0, .LBB9_171
.LBB9_166:
	mv	a0, a2
	addiw	a1, a1, 1
	bge	a1, a2, .LBB9_172
.LBB9_167:
	lui	a1, %hi(RC_MAX_QUANT)
	lw	a1, %lo(RC_MAX_QUANT)(a1)
	blt	a0, a1, .LBB9_227
.LBB9_168:
	mv	a0, a1
	lui	a1, %hi(RC_MIN_QUANT)
	lw	a1, %lo(RC_MIN_QUANT)(a1)
	bge	a0, a1, .LBB9_228
	j	.LBB9_229
.LBB9_169:
	addiw	a0, a0, 2
	blt	a1, a2, .LBB9_165
.LBB9_170:
	mv	a2, a1
	bge	a1, a0, .LBB9_166
.LBB9_171:
	addiw	a1, a1, 1
	blt	a1, a0, .LBB9_167
.LBB9_172:
	mv	a0, a1
	lui	a1, %hi(RC_MAX_QUANT)
	lw	a1, %lo(RC_MAX_QUANT)(a1)
	blt	a0, a1, .LBB9_227
	j	.LBB9_168
.LBB9_173:
	lui	a1, %hi(DDquant)
	lw	a1, %lo(DDquant)(a1)
.LBB9_174:
	lui	t1, %hi(RC_MAX_QUANT)
	lw	t1, %lo(RC_MAX_QUANT)(t1)
	addw	a1, a1, a7
	blt	a1, t1, .LBB9_176
# %bb.175:
	mv	a1, t1
.LBB9_176:
	lui	a7, %hi(input)
	ld	t1, %lo(input)(a7)
	addi	t2, t1, 2047
	lw	t4, 1873(t2)
	lui	a7, %hi(MBPerRow)
	lw	t5, %lo(MBPerRow)(a7)
	lui	a7, %hi(PAveFrameQP)
	lw	a7, %lo(PAveFrameQP)(a7)
	li	t3, 3
	blt	t4, t5, .LBB9_178
# %bb.177:
	li	t3, 6
.LBB9_178:
	addw	t3, a7, t3
	snez	t4, a4
	blt	a1, t3, .LBB9_180
# %bb.179:
	mv	a1, t3
.LBB9_180:
	lui	t5, %hi(TotalFrameQP)
	lw	t3, %lo(TotalFrameQP)(t5)
	lui	t6, %hi(m_Qc)
	sw	a1, %lo(m_Qc)(t6)
	add	t3, t3, a1
	sw	t3, %lo(TotalFrameQP)(t5)
	addiw	t0, t0, -1
	lui	t5, %hi(NumberofBasicUnit)
	snez	a0, a0
	and	a0, a0, t4
	sw	t0, %lo(NumberofBasicUnit)(t5)
	bnez	a0, .LBB9_192
# %bb.181:
	bnez	t0, .LBB9_192
# %bb.182:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	beqz	a0, .LBB9_257
.LBB9_183:
	fcvt.d.w	fa5, t3
	fcvt.d.w	fa4, a3
	lui	a0, %hi(.LCPI9_1)
	fld	fa3, %lo(.LCPI9_1)(a0)
	lw	a3, 1228(t1)
	lw	a0, 44(a2)
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa3
	addiw	a3, a3, -2
	fcvt.w.d	a7, fa5, rtz
	bne	a0, a3, .LBB9_185
# %bb.184:
	lui	a3, %hi(QPLastPFrame)
	sw	a7, %lo(QPLastPFrame)(a3)
.LBB9_185:
	lw	a3, 40(a2)
	add	a3, a3, a7
	li	a4, 1
	sw	a3, 40(a2)
	beq	a5, a4, .LBB9_188
# %bb.186:
	beqz	a0, .LBB9_267
# %bb.187:
	blez	a0, .LBB9_190
.LBB9_188:
	lui	a0, %hi(PreviousQp2)
	lw	a0, %lo(PreviousQp2)(a0)
	addi	a0, a0, 1
.LBB9_189:
	lui	a2, %hi(PreviousQp1)
	sw	a0, %lo(PreviousQp1)(a2)
	lui	a0, %hi(PreviousQp2)
	sw	a7, %lo(PreviousQp2)(a0)
.LBB9_190:
	lui	a0, %hi(PAveFrameQP)
	sw	a7, %lo(PAveFrameQP)(a0)
	lui	a0, %hi(PAveHeaderBits3)
	addi	a0, a0, %lo(PAveHeaderBits3)
.LBB9_191:
	lui	a2, %hi(PAveHeaderBits2)
	lw	a2, %lo(PAveHeaderBits2)(a2)
	sw	a2, 0(a0)
.LBB9_192:
	li	a0, 1
	beq	a5, a0, .LBB9_194
# %bb.193:
	mv	a7, a1
.LBB9_194:
	lui	a0, %hi(Pm_Qp)
	sw	a7, %lo(Pm_Qp)(a0)
	j	.LBB9_230
.LBB9_195:
	fmul.d	fa3, fa4, fa5
.LBB9_196:
	fdiv.d	fa5, fa3, fs1
.LBB9_197:
	fcvt.s.d	fa4, fa5
	fcvt.d.s	fa5, fa4
	lui	a1, %hi(m_Qstep)
	lui	a2, 258560
	fmv.w.x	fa3, a2
	flt.s	a2, fa4, fa3
	fsd	fa5, %lo(m_Qstep)(a1)
	beqz	a2, .LBB9_199
# %bb.198:
	li	a2, 0
	j	.LBB9_233
.LBB9_199:
	lui	a1, 275968
	fmv.w.x	fa3, a1
	flt.s	a1, fa3, fa4
	li	a2, 51
	bnez	a1, .LBB9_233
# %bb.200:
	lui	a1, 260352
	fmv.w.x	fa3, a1
	flt.s	a1, fa3, fa4
	beqz	a1, .LBB9_203
# %bb.201:                              # %.preheader1
	lui	a1, %hi(.LCPI9_1)
	fld	fa4, %lo(.LCPI9_1)(a1)
	lui	a1, %hi(.LCPI9_2)
	fld	fa3, %lo(.LCPI9_2)(a1)
	li	a1, 0
.LBB9_202:                              # =>This Inner Loop Header: Depth=1
	fmul.d	fa5, fa5, fa4
	flt.d	a2, fa3, fa5
	addi	a1, a1, 6
	bnez	a2, .LBB9_202
.LBB9_203:
	lui	a2, %hi(.LCPI9_3)
	fld	fa4, %lo(.LCPI9_3)(a2)
	fle.d	a2, fa5, fa4
	bnez	a2, .LBB9_231
# %bb.204:
	lui	a2, %hi(.LCPI9_4)
	fld	fa4, %lo(.LCPI9_4)(a2)
	fle.d	a3, fa5, fa4
	li	a2, 1
	bnez	a3, .LBB9_232
# %bb.205:
	lui	a2, %hi(.LCPI9_5)
	fld	fa4, %lo(.LCPI9_5)(a2)
	fle.d	a3, fa5, fa4
	li	a2, 2
	bnez	a3, .LBB9_232
# %bb.206:
	lui	a2, %hi(.LCPI9_6)
	fld	fa4, %lo(.LCPI9_6)(a2)
	fle.d	a3, fa5, fa4
	li	a2, 3
	bnez	a3, .LBB9_232
# %bb.207:
	lui	a2, %hi(.LCPI9_7)
	fld	fa4, %lo(.LCPI9_7)(a2)
	fle.d	a2, fa5, fa4
	xori	a2, a2, 1
	addi	a2, a2, 4
	j	.LBB9_232
.LBB9_208:
	lui	a3, %hi(FrameQPBuffer)
	addi	a3, a3, %lo(FrameQPBuffer)
.LBB9_209:
	lw	a3, 0(a3)
	sw	a3, %lo(PreviousQp2)(a2)
.LBB9_210:
	lui	a2, %hi(PreviousQp2)
	lw	a3, %lo(PreviousQp2)(a2)
	lui	a2, %hi(PreviousQp1)
	lw	a2, %lo(PreviousQp1)(a2)
	subw	a3, a3, a2
	slli	a5, a0, 1
	li	a4, -3
	subw	a6, a4, a5
	bge	a6, a3, .LBB9_222
# %bb.211:
	negw	a5, a5
	addiw	a6, a5, -2
	li	a4, -2
	beq	a3, a6, .LBB9_222
# %bb.212:
	addiw	a6, a5, -1
	li	a4, -1
	beq	a3, a6, .LBB9_222
# %bb.213:
	beq	a3, a5, .LBB9_221
.LBB9_214:
	ori	a4, a5, 1
	xor	a4, a3, a4
	snez	a4, a4
	addi	a4, a4, 1
	j	.LBB9_222
.LBB9_215:
	lui	a3, %hi(FrameQPBuffer)
	addi	a3, a3, %lo(FrameQPBuffer)
.LBB9_216:
	lw	a3, 0(a3)
	sw	a3, %lo(PreviousQp2)(a2)
.LBB9_217:
	lui	a2, %hi(PreviousQp2)
	lw	a3, %lo(PreviousQp2)(a2)
	lui	a2, %hi(PreviousQp1)
	lw	a2, %lo(PreviousQp1)(a2)
	subw	a3, a3, a2
	slli	a5, a0, 1
	li	a4, -3
	subw	a6, a4, a5
	bge	a6, a3, .LBB9_222
# %bb.218:
	negw	a5, a5
	addiw	a6, a5, -2
	li	a4, -2
	beq	a3, a6, .LBB9_222
# %bb.219:
	addiw	a6, a5, -1
	li	a4, -1
	beq	a3, a6, .LBB9_222
# %bb.220:
	bne	a3, a5, .LBB9_214
.LBB9_221:
	li	a4, 0
.LBB9_222:
	addi	a6, a1, -1
	slliw	a1, a6, 1
	negw	a5, a1
	mul	a3, a3, a6
	addi	a0, a0, -1
	divw	a0, a3, a0
	blt	a0, a5, .LBB9_224
# %bb.223:
	mv	a5, a0
.LBB9_224:
	add	a0, a4, a2
	blt	a1, a5, .LBB9_226
# %bb.225:
	mv	a1, a5
.LBB9_226:
	addw	a0, a1, a0
	lui	a1, %hi(RC_MAX_QUANT)
	lw	a1, %lo(RC_MAX_QUANT)(a1)
	bge	a0, a1, .LBB9_168
.LBB9_227:
	lui	a1, %hi(RC_MIN_QUANT)
	lw	a1, %lo(RC_MIN_QUANT)(a1)
	blt	a0, a1, .LBB9_229
.LBB9_228:
	mv	a1, a0
.LBB9_229:
	lui	a0, %hi(m_Qc)
	sw	a1, %lo(m_Qc)(a0)
.LBB9_230:
	sext.w	a0, a1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	fld	fs0, 24(sp)                     # 8-byte Folded Reload
	fld	fs1, 16(sp)                     # 8-byte Folded Reload
	fld	fs2, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB9_231:
	li	a2, 0
.LBB9_232:
	addw	a2, a2, a1
.LBB9_233:
	lui	a1, %hi(m_Qp)
	lw	a1, %lo(m_Qp)(a1)
	lui	a3, %hi(DDquant)
	lw	a4, %lo(DDquant)(a3)
	addw	t0, a4, a1
	blt	t0, a2, .LBB9_235
# %bb.234:
	mv	t0, a2
.LBB9_235:
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	addi	a3, a2, 2047
	lw	a6, 1873(a3)
	lui	a5, %hi(MBPerRow)
	lw	a7, %lo(MBPerRow)(a5)
	lui	a5, %hi(PAveFrameQP)
	lw	a5, %lo(PAveFrameQP)(a5)
	li	t1, 3
	blt	a6, a7, .LBB9_251
# %bb.236:
	li	t1, 6
	addw	t1, a5, t1
	bge	t1, t0, .LBB9_252
.LBB9_237:
	lui	t0, %hi(RC_MAX_QUANT)
	lw	t0, %lo(RC_MAX_QUANT)(t0)
	blt	t1, t0, .LBB9_253
.LBB9_238:
	mv	t1, t0
	subw	a1, a1, a4
	bge	t0, a1, .LBB9_254
.LBB9_239:
	li	a4, -3
	blt	a6, a7, .LBB9_255
.LBB9_240:
	li	a4, -6
	addw	a4, a5, a4
	bge	a1, a4, .LBB9_256
.LBB9_241:
	lui	a1, %hi(RC_MIN_QUANT)
	lw	a1, %lo(RC_MIN_QUANT)(a1)
	blt	a4, a1, .LBB9_243
.LBB9_242:
	mv	a1, a4
.LBB9_243:
	lui	a5, %hi(TotalFrameQP)
	lw	a4, %lo(TotalFrameQP)(a5)
	lui	a6, %hi(m_Qc)
	sw	a1, %lo(m_Qc)(a6)
	add	a4, a4, a1
	lui	a6, %hi(NumberofBasicUnit)
	lw	a7, %lo(NumberofBasicUnit)(a6)
	sw	a4, %lo(TotalFrameQP)(a5)
	lui	a5, %hi(Pm_Qp)
	sw	a1, %lo(Pm_Qp)(a5)
	addiw	a7, a7, -1
	sw	a7, %lo(NumberofBasicUnit)(a6)
	bnez	a7, .LBB9_230
# %bb.244:
	lui	a5, %hi(img)
	ld	a5, %lo(img)(a5)
	lw	a6, 24(a5)
	bnez	a6, .LBB9_230
# %bb.245:
	lui	a6, 22
	addiw	a6, a6, 284
	add	a5, a5, a6
	beqz	a0, .LBB9_247
# %bb.246:
	lw	a0, 28(a5)
	bnez	a0, .LBB9_230
.LBB9_247:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	beqz	a0, .LBB9_269
.LBB9_248:
	lui	a0, %hi(TotalNumberofBasicUnit)
	lw	a0, %lo(TotalNumberofBasicUnit)(a0)
	fcvt.d.w	fa5, a4
	fcvt.d.w	fa4, a0
	lui	a0, %hi(.LCPI9_1)
	fld	fa3, %lo(.LCPI9_1)(a0)
	lw	a0, 1228(a2)
	lw	a2, 4(a5)
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa3
	addiw	a3, a0, -2
	fcvt.w.d	a0, fa5, rtz
	bne	a2, a3, .LBB9_250
# %bb.249:
	lui	a2, %hi(QPLastPFrame)
	sw	a0, %lo(QPLastPFrame)(a2)
.LBB9_250:
	lw	a2, 0(a5)
	add	a2, a2, a0
	sw	a2, 0(a5)
	lui	a2, %hi(PreviousQp2)
	lw	a3, %lo(PreviousQp2)(a2)
	lui	a4, %hi(PreviousQp1)
	sw	a3, %lo(PreviousQp1)(a4)
	sw	a0, %lo(PreviousQp2)(a2)
	lui	a2, %hi(PAveHeaderBits2)
	lw	a2, %lo(PAveHeaderBits2)(a2)
	lui	a3, %hi(PAveFrameQP)
	sw	a0, %lo(PAveFrameQP)(a3)
	lui	a0, %hi(PAveHeaderBits3)
	sw	a2, %lo(PAveHeaderBits3)(a0)
	j	.LBB9_230
.LBB9_251:
	addw	t1, a5, t1
	blt	t1, t0, .LBB9_237
.LBB9_252:
	mv	t1, t0
	lui	t0, %hi(RC_MAX_QUANT)
	lw	t0, %lo(RC_MAX_QUANT)(t0)
	bge	t1, t0, .LBB9_238
.LBB9_253:
	subw	a1, a1, a4
	blt	t1, a1, .LBB9_239
.LBB9_254:
	mv	a1, t1
	li	a4, -3
	bge	a6, a7, .LBB9_240
.LBB9_255:
	addw	a4, a5, a4
	blt	a1, a4, .LBB9_241
.LBB9_256:
	mv	a4, a1
	lui	a1, %hi(RC_MIN_QUANT)
	lw	a1, %lo(RC_MIN_QUANT)(a1)
	bge	a4, a1, .LBB9_242
	j	.LBB9_243
.LBB9_257:
	lw	a0, 1505(t2)
	li	t0, 2
	beq	a0, t0, .LBB9_260
# %bb.258:
	li	t0, 1
	beq	a0, t0, .LBB9_183
# %bb.259:
	lw	a0, 1509(t2)
	beqz	a0, .LBB9_192
.LBB9_260:
	lui	a0, %hi(.LCPI9_1)
	fld	fa5, %lo(.LCPI9_1)(a0)
	fcvt.d.w	fa4, t3
	fcvt.d.w	fa3, a3
	fdiv.d	fa4, fa4, fa3
	fadd.d	fa5, fa4, fa5
	fcvt.w.d	a0, fa5, rtz
	beqz	a4, .LBB9_274
# %bb.261:
	lui	a2, %hi(FieldQPBuffer)
	sw	a0, %lo(FieldQPBuffer)(a2)
	lui	a0, %hi(FieldAveHeaderBits)
	addi	a0, a0, %lo(FieldAveHeaderBits)
	j	.LBB9_191
.LBB9_262:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a4, 1505(a0)
	li	a5, 2
	beq	a4, a5, .LBB9_265
# %bb.263:
	li	a5, 1
	beq	a4, a5, .LBB9_100
# %bb.264:
	lw	a0, 1509(a0)
	beqz	a0, .LBB9_102
.LBB9_265:
	beqz	a3, .LBB9_275
# %bb.266:
	lui	a0, %hi(FieldQPBuffer)
	addi	a0, a0, %lo(FieldQPBuffer)
	lui	a2, %hi(FieldAveHeaderBits)
	addi	a2, a2, %lo(FieldAveHeaderBits)
	j	.LBB9_101
.LBB9_267:
	li	a0, 2
	blt	a6, a0, .LBB9_190
# %bb.268:
	lui	a0, %hi(PreviousQp2)
	lw	a0, %lo(PreviousQp2)(a0)
	j	.LBB9_189
.LBB9_269:
	lw	a0, 1505(a3)
	li	a6, 2
	beq	a0, a6, .LBB9_272
# %bb.270:
	li	a6, 1
	beq	a0, a6, .LBB9_248
# %bb.271:
	lw	a0, 1509(a3)
	beqz	a0, .LBB9_230
.LBB9_272:
	lw	a2, 28(a5)
	lui	a0, %hi(TotalNumberofBasicUnit)
	lw	a0, %lo(TotalNumberofBasicUnit)(a0)
	lui	a3, %hi(.LCPI9_1)
	fld	fa5, %lo(.LCPI9_1)(a3)
	fcvt.d.w	fa4, a4
	fcvt.d.w	fa3, a0
	fdiv.d	fa4, fa4, fa3
	fadd.d	fa5, fa4, fa5
	fcvt.w.d	a0, fa5, rtz
	beqz	a2, .LBB9_276
# %bb.273:
	lui	a2, %hi(PAveHeaderBits2)
	lw	a2, %lo(PAveHeaderBits2)(a2)
	lui	a3, %hi(FieldQPBuffer)
	sw	a0, %lo(FieldQPBuffer)(a3)
	lui	a0, %hi(FieldAveHeaderBits)
	sw	a2, %lo(FieldAveHeaderBits)(a0)
	j	.LBB9_230
.LBB9_274:
	lui	a2, %hi(FrameQPBuffer)
	sw	a0, %lo(FrameQPBuffer)(a2)
	lui	a0, %hi(FrameAveHeaderBits)
	addi	a0, a0, %lo(FrameAveHeaderBits)
	j	.LBB9_191
.LBB9_275:
	lui	a0, %hi(FrameQPBuffer)
	addi	a0, a0, %lo(FrameQPBuffer)
	lui	a2, %hi(FrameAveHeaderBits)
	addi	a2, a2, %lo(FrameAveHeaderBits)
	j	.LBB9_101
.LBB9_276:
	lui	a2, %hi(PAveHeaderBits2)
	lw	a2, %lo(PAveHeaderBits2)(a2)
	lui	a3, %hi(FrameQPBuffer)
	sw	a0, %lo(FrameQPBuffer)(a3)
	lui	a0, %hi(FrameAveHeaderBits)
	sw	a2, %lo(FrameAveHeaderBits)(a0)
	j	.LBB9_230
.LBB9_277:                              # %call.sqrt
	fmv.d	fa0, fs0
	call	sqrt
	j	.LBB9_73
.LBB9_278:                              # %call.sqrt15
	fmv.d	fa0, fs0
	call	sqrt
	j	.LBB9_75
.LBB9_279:                              # %call.sqrt17
	fmv.d	fa0, fs0
	mv	s0, a0
	call	sqrt
	mv	a0, s0
	j	.LBB9_139
.LBB9_280:                              # %call.sqrt19
	fmv.d	fa0, fs0
	mv	s0, a0
	call	sqrt
	mv	a0, s0
	j	.LBB9_141
.Lfunc_end9:
	.size	updateQuantizationParameter, .Lfunc_end9-updateQuantizationParameter
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Qstep2QP
.LCPI10_0:
	.quad	0x3fe4000000000000              # double 0.625
.LCPI10_1:
	.quad	0x406c000000000000              # double 224
.LCPI10_2:
	.quad	0x3ff2000000000000              # double 1.125
.LCPI10_3:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI10_4:
	.quad	0x3fe5000000000000              # double 0.65625
.LCPI10_5:
	.quad	0x3fe8000000000000              # double 0.75
.LCPI10_6:
	.quad	0x3feb000000000000              # double 0.84375
.LCPI10_7:
	.quad	0x3fee000000000000              # double 0.9375
.LCPI10_8:
	.quad	0x3ff1000000000000              # double 1.0625
	.text
	.globl	Qstep2QP
	.p2align	2
	.type	Qstep2QP,@function
Qstep2QP:                               # @Qstep2QP
# %bb.0:
	lui	a0, %hi(.LCPI10_0)
	fld	fa5, %lo(.LCPI10_0)(a0)
	flt.d	a0, fa0, fa5
	beqz	a0, .LBB10_2
# %bb.1:
	li	a0, 0
	ret
.LBB10_2:
	lui	a0, %hi(.LCPI10_1)
	fld	fa5, %lo(.LCPI10_1)(a0)
	flt.d	a1, fa5, fa0
	li	a0, 51
	bnez	a1, .LBB10_13
# %bb.3:
	lui	a0, %hi(.LCPI10_2)
	fld	fa5, %lo(.LCPI10_2)(a0)
	flt.d	a0, fa5, fa0
	beqz	a0, .LBB10_6
# %bb.4:                                # %.preheader
	lui	a0, %hi(.LCPI10_3)
	fld	fa4, %lo(.LCPI10_3)(a0)
	li	a0, 0
.LBB10_5:                               # =>This Inner Loop Header: Depth=1
	fmul.d	fa0, fa0, fa4
	flt.d	a1, fa5, fa0
	addi	a0, a0, 6
	bnez	a1, .LBB10_5
.LBB10_6:
	lui	a1, %hi(.LCPI10_4)
	fld	fa5, %lo(.LCPI10_4)(a1)
	fle.d	a1, fa0, fa5
	bnez	a1, .LBB10_11
# %bb.7:
	lui	a1, %hi(.LCPI10_5)
	fld	fa5, %lo(.LCPI10_5)(a1)
	fle.d	a2, fa0, fa5
	li	a1, 1
	bnez	a2, .LBB10_12
# %bb.8:
	lui	a1, %hi(.LCPI10_6)
	fld	fa5, %lo(.LCPI10_6)(a1)
	fle.d	a2, fa0, fa5
	li	a1, 2
	bnez	a2, .LBB10_12
# %bb.9:
	lui	a1, %hi(.LCPI10_7)
	fld	fa5, %lo(.LCPI10_7)(a1)
	fle.d	a2, fa0, fa5
	li	a1, 3
	bnez	a2, .LBB10_12
# %bb.10:
	lui	a1, %hi(.LCPI10_8)
	fld	fa5, %lo(.LCPI10_8)(a1)
	fle.d	a1, fa0, fa5
	xori	a1, a1, 1
	addi	a1, a1, 4
	j	.LBB10_12
.LBB10_11:
	li	a1, 0
.LBB10_12:
	addw	a0, a1, a0
.LBB10_13:
	ret
.Lfunc_end10:
	.size	Qstep2QP, .Lfunc_end10-Qstep2QP
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function updateRCModel
.LCPI11_0:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI11_1:
	.quad	0x4034000000000000              # double 20
	.text
	.globl	updateRCModel
	.p2align	2
	.type	updateRCModel,@function
updateRCModel:                          # @updateRCModel
# %bb.0:
	addi	sp, sp, -224
	sd	ra, 216(sp)                     # 8-byte Folded Spill
	sd	s0, 208(sp)                     # 8-byte Folded Spill
	sd	s1, 200(sp)                     # 8-byte Folded Spill
	sd	s2, 192(sp)                     # 8-byte Folded Spill
	sd	s3, 184(sp)                     # 8-byte Folded Spill
	sd	s4, 176(sp)                     # 8-byte Folded Spill
	sd	s5, 168(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	beqz	a1, .LBB11_2
.LBB11_1:
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 208(sp)                     # 8-byte Folded Reload
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 192(sp)                     # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	ld	s5, 168(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 224
	ret
.LBB11_2:
	lui	a1, 22
	addiw	a1, a1, 236
	add	a1, a0, a1
	lw	a2, 96(a1)
	lw	a3, 84(a1)
	bne	a2, a3, .LBB11_6
# %bb.3:
	blez	a2, .LBB11_9
# %bb.4:
	ld	a3, 60(a1)
	slli	a4, a2, 3
	add	a4, a3, a4
	fmv.d.x	fa5, zero
.LBB11_5:                               # =>This Inner Loop Header: Depth=1
	fld	fa4, 0(a3)
	addi	a3, a3, 8
	fadd.d	fa5, fa5, fa4
	bne	a3, a4, .LBB11_5
	j	.LBB11_10
.LBB11_6:
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	addi	a5, a3, 2047
	lw	a3, 1509(a5)
	fcvt.d.w	fa5, a2
	beqz	a3, .LBB11_8
# %bb.7:
	lw	a2, 76(a1)
	beqz	a2, .LBB11_11
.LBB11_8:
	fld	fa4, 20(a1)
	fdiv.d	fa5, fa4, fa5
	j	.LBB11_12
.LBB11_9:
	fmv.d.x	fa5, zero
.LBB11_10:
	fcvt.d.w	fa4, a2
	lw	s2, 40(a1)
	fdiv.d	fa5, fa5, fa4
	lui	a2, %hi(CurrentFrameMAD)
	fsd	fa5, %lo(CurrentFrameMAD)(a2)
	j	.LBB11_24
.LBB11_11:
	fld	fa4, 20(a1)
	lui	a2, %hi(.LCPI11_0)
	fld	fa3, %lo(.LCPI11_0)(a2)
	fdiv.d	fa5, fa4, fa5
	fmul.d	fa5, fa5, fa3
.LBB11_12:
	lui	a2, %hi(TotalNumberofBasicUnit)
	lw	a2, %lo(TotalNumberofBasicUnit)(a2)
	lui	a4, %hi(NumberofBasicUnit)
	lw	a6, %lo(NumberofBasicUnit)(a4)
	lui	a4, %hi(CurrentFrameMAD)
	fsd	fa5, %lo(CurrentFrameMAD)(a4)
	sd	zero, 20(a1)
	subw	a4, a2, a6
	lui	a7, %hi(CodedBasicUnit)
	sw	a4, %lo(CodedBasicUnit)(a7)
	blez	a4, .LBB11_16
# %bb.13:
	lui	t1, %hi(PAveHeaderBits1)
	lw	a7, %lo(PAveHeaderBits1)(t1)
	lw	t0, 8(a1)
	addi	t2, a4, -1
	mul	a7, a7, t2
	add	a7, a7, t0
	fcvt.d.w	fa3, a7
	fcvt.d.wu	fa2, a4
	lui	a7, %hi(.LCPI11_0)
	fld	fa4, %lo(.LCPI11_0)(a7)
	lui	a7, %hi(PAveHeaderBits3)
	lw	t0, %lo(PAveHeaderBits3)(a7)
	fdiv.d	fa3, fa3, fa2
	fadd.d	fa3, fa3, fa4
	fcvt.w.d	a7, fa3, rtz
	sw	a7, %lo(PAveHeaderBits1)(t1)
	beqz	t0, .LBB11_15
# %bb.14:
	mul	a7, a4, a7
	mul	t0, t0, a6
	add	a7, a7, t0
	fcvt.d.w	fa3, a7
	fcvt.d.w	fa2, a2
	fdiv.d	fa3, fa3, fa2
	fadd.d	fa4, fa3, fa4
	fcvt.w.d	a7, fa4, rtz
.LBB11_15:
	lui	t0, %hi(PAveHeaderBits2)
	sw	a7, %lo(PAveHeaderBits2)(t0)
.LBB11_16:
	lw	a5, 1505(a5)
	li	a7, 2
	beq	a5, a7, .LBB11_18
# %bb.17:
	beqz	a3, .LBB11_20
.LBB11_18:
	lw	a3, 76(a1)
	li	a5, 1
	bne	a3, a5, .LBB11_20
# %bb.19:
	lui	a3, %hi(FCBUCFMAD)
	addi	a3, a3, %lo(FCBUCFMAD)
	j	.LBB11_21
.LBB11_20:
	lui	a3, %hi(BUCFMAD)
	addi	a3, a3, %lo(BUCFMAD)
.LBB11_21:
	ld	a5, 0(a3)
	not	a3, a6
	addw	a7, a2, a3
	lw	a3, 40(a1)
	slli	a7, a7, 3
	add	a5, a5, a7
	fsd	fa5, 0(a5)
	bnez	a6, .LBB11_23
# %bb.22:
	addi	a3, a3, -1
.LBB11_23:
	mul	a2, a3, a2
	addw	s2, a2, a4
.LBB11_24:
	lui	a2, %hi(Pm_rgQp)
	addi	a3, a2, %lo(Pm_rgQp)
	fld	fa5, 144(a3)
	lui	a5, %hi(Pm_rgRp)
	addi	a4, a5, %lo(Pm_rgRp)
	fld	fa4, 144(a4)
	fsd	fa5, 152(a3)
	lui	s3, %hi(m_rgQp)
	addi	s3, s3, %lo(m_rgQp)
	fsd	fa5, 152(s3)
	fsd	fa4, 152(a4)
	fld	fa5, 136(a3)
	lui	s4, %hi(m_rgRp)
	addi	s4, s4, %lo(m_rgRp)
	fsd	fa4, 152(s4)
	fld	fa4, 136(a4)
	fsd	fa5, 144(a3)
	fsd	fa5, 144(s3)
	fld	fa5, 128(a3)
	fsd	fa4, 144(a4)
	fsd	fa4, 144(s4)
	fld	fa4, 128(a4)
	fsd	fa5, 136(a3)
	fsd	fa5, 136(s3)
	fld	fa5, 120(a3)
	fsd	fa4, 136(a4)
	fsd	fa4, 136(s4)
	fld	fa4, 120(a4)
	fsd	fa5, 128(a3)
	fsd	fa5, 128(s3)
	fld	fa5, 112(a3)
	fsd	fa4, 128(a4)
	fsd	fa4, 128(s4)
	fld	fa4, 112(a4)
	fsd	fa5, 120(a3)
	fsd	fa5, 120(s3)
	fld	fa5, 104(a3)
	fsd	fa4, 120(a4)
	fsd	fa4, 120(s4)
	fld	fa4, 104(a4)
	fsd	fa5, 112(a3)
	fsd	fa5, 112(s3)
	fld	fa5, 96(a3)
	fsd	fa4, 112(a4)
	fsd	fa4, 112(s4)
	fld	fa4, 96(a4)
	fsd	fa5, 104(a3)
	fsd	fa5, 104(s3)
	fld	fa5, 88(a3)
	fsd	fa4, 104(a4)
	fsd	fa4, 104(s4)
	fld	fa4, 88(a4)
	fsd	fa5, 96(a3)
	fsd	fa5, 96(s3)
	fld	fa5, 80(a3)
	fsd	fa4, 96(a4)
	fsd	fa4, 96(s4)
	fld	fa4, 80(a4)
	fsd	fa5, 88(a3)
	fsd	fa5, 88(s3)
	fld	fa5, 72(a3)
	fsd	fa4, 88(a4)
	fsd	fa4, 88(s4)
	fld	fa4, 72(a4)
	fsd	fa5, 80(a3)
	fsd	fa5, 80(s3)
	fld	fa5, 64(a3)
	fsd	fa4, 80(a4)
	fsd	fa4, 80(s4)
	fld	fa4, 64(a4)
	fsd	fa5, 72(a3)
	fsd	fa5, 72(s3)
	fld	fa5, 56(a3)
	fsd	fa4, 72(a4)
	fsd	fa4, 72(s4)
	fld	fa4, 56(a4)
	fsd	fa5, 64(a3)
	fsd	fa5, 64(s3)
	fld	fa5, 48(a3)
	fsd	fa4, 64(a4)
	fsd	fa4, 64(s4)
	fld	fa4, 48(a4)
	fsd	fa5, 56(a3)
	fsd	fa5, 56(s3)
	fld	fa5, 40(a3)
	fsd	fa4, 56(a4)
	fsd	fa4, 56(s4)
	fld	fa4, 40(a4)
	fsd	fa5, 48(a3)
	fsd	fa5, 48(s3)
	fld	fa5, 32(a3)
	fsd	fa4, 48(a4)
	fsd	fa4, 48(s4)
	fld	fa4, 32(a4)
	fsd	fa5, 40(a3)
	fsd	fa5, 40(s3)
	fld	fa5, 24(a3)
	fsd	fa4, 40(a4)
	fsd	fa4, 40(s4)
	fld	fa4, 24(a4)
	fsd	fa5, 32(a3)
	fsd	fa5, 32(s3)
	fld	fa5, 16(a3)
	fsd	fa4, 32(a4)
	fsd	fa4, 32(s4)
	fld	fa4, 16(a4)
	fsd	fa5, 24(a3)
	fsd	fa5, 24(s3)
	fld	fa5, 8(a3)
	fsd	fa4, 24(a4)
	fsd	fa4, 24(s4)
	fld	fa4, 8(a4)
	fsd	fa5, 16(a3)
	fsd	fa5, 16(s3)
	fld	fa5, %lo(Pm_rgQp)(a2)
	fsd	fa4, 16(a4)
	fsd	fa4, 16(s4)
	fld	fa4, %lo(Pm_rgRp)(a5)
	fsd	fa5, 8(a3)
	lui	a3, %hi(m_Qc)
	lw	a5, %lo(m_Qc)(a3)
	fsd	fa4, 8(a4)
	lui	a3, 174763
	addiw	a3, a3, -1365
	mul	a3, a5, a3
	srli	a4, a3, 63
	srli	a3, a3, 32
	add	a3, a3, a4
	li	a4, 6
	mul	a6, a3, a4
	subw	a6, a5, a6
	slli	a6, a6, 3
	lui	a7, %hi(QP2Qstep.QP2QSTEP)
	addi	a7, a7, %lo(QP2Qstep.QP2QSTEP)
	add	a6, a7, a6
	lw	a7, 0(a1)
	fsd	fa5, 8(s3)
	fld	fa5, 0(a6)
	fsd	fa4, 8(s4)
	lui	a6, %hi(PPreHeader)
	sw	a7, %lo(PPreHeader)(a6)
	blt	a5, a4, .LBB11_26
.LBB11_25:                              # =>This Inner Loop Header: Depth=1
	addiw	a3, a3, -1
	fadd.d	fa5, fa5, fa5
	bnez	a3, .LBB11_25
.LBB11_26:
	lw	a3, 96(a1)
	lw	a4, 84(a1)
	lui	a1, %hi(CurrentFrameMAD)
	fld	fa4, %lo(CurrentFrameMAD)(a1)
	fsd	fa5, %lo(Pm_rgQp)(a2)
	lui	a1, 22
	beq	a3, a4, .LBB11_28
# %bb.27:
	addiw	a1, a1, 248
	j	.LBB11_29
.LBB11_28:
	addiw	a1, a1, 240
.LBB11_29:
	add	a0, a0, a1
	lw	a0, 0(a0)
	fcvt.d.w	fa3, a0
	fdiv.d	fa3, fa3, fa4
	lui	a0, %hi(Pm_rgRp)
	fsd	fa3, %lo(Pm_rgRp)(a0)
	lui	a0, %hi(m_rgQp)
	fsd	fa5, %lo(m_rgQp)(a0)
	lui	a0, %hi(m_rgRp)
	fsd	fa3, %lo(m_rgRp)(a0)
	lui	a0, %hi(Pm_X1)
	fld	fa3, %lo(Pm_X1)(a0)
	lui	a0, %hi(m_X1)
	lui	a1, %hi(Pm_X2)
	lui	a2, %hi(PreviousFrameMAD)
	fld	fa5, %lo(PreviousFrameMAD)(a2)
	fld	fa2, %lo(Pm_X2)(a1)
	fsd	fa3, %lo(m_X1)(a0)
	lui	a0, %hi(m_X2)
	flt.d	a1, fa5, fa4
	fsd	fa2, %lo(m_X2)(a0)
	beqz	a1, .LBB11_31
# %bb.30:
	fdiv.d	fa5, fa5, fa4
	j	.LBB11_32
.LBB11_31:
	fdiv.d	fa5, fa4, fa5
.LBB11_32:
	lui	a0, %hi(.LCPI11_1)
	fld	fa4, %lo(.LCPI11_1)(a0)
	fmul.d	fa5, fa5, fa4
	fcvt.w.d	s1, fa5, rtz
	blez	s1, .LBB11_42
# %bb.33:
	bge	s1, s2, .LBB11_43
.LBB11_34:
	lui	s5, %hi(m_windowSize)
	lw	a0, %lo(m_windowSize)(s5)
	addiw	a0, a0, 1
	bge	s1, a0, .LBB11_44
.LBB11_35:
	li	a0, 20
	blt	s1, a0, .LBB11_37
.LBB11_36:
	li	s1, 20
.LBB11_37:
	sw	s1, %lo(m_windowSize)(s5)
	lui	s0, %hi(m_rgRejected)
	addi	s0, s0, %lo(m_rgRejected)
	li	a2, 80
	mv	a0, s0
	li	a1, 0
	call	memset
	mv	a0, s1
	call	RCModelEstimator
	lw	a0, %lo(m_windowSize)(s5)
	blez	a0, .LBB11_45
# %bb.38:
	slli	s1, a0, 32
	srli	s1, s1, 32
	lui	a1, %hi(m_X1)
	fld	fa5, %lo(m_X1)(a1)
	lui	a1, %hi(m_X2)
	fld	fa3, %lo(m_X2)(a1)
	slli	a2, a0, 3
	addi	a1, sp, 8
	add	a2, a1, a2
	fmv.d.x	fa4, zero
.LBB11_39:                              # =>This Inner Loop Header: Depth=1
	fld	fa2, 0(s3)
	fdiv.d	fa1, fa5, fa2
	fld	fa0, 0(s4)
	fmul.d	fa2, fa2, fa2
	fdiv.d	fa2, fa3, fa2
	fadd.d	fa2, fa1, fa2
	fsub.d	fa2, fa2, fa0
	fsd	fa2, 0(a1)
	fmadd.d	fa4, fa2, fa2, fa4
	addi	a1, a1, 8
	addi	s4, s4, 8
	addi	s3, s3, 8
	bne	a1, a2, .LBB11_39
# %bb.40:
	li	a1, 2
	bne	a0, a1, .LBB11_47
# %bb.41:
	fmv.d.x	fa0, zero
	j	.LBB11_49
.LBB11_42:
	li	s1, 1
	blt	s1, s2, .LBB11_34
.LBB11_43:
	mv	s1, s2
	lui	s5, %hi(m_windowSize)
	lw	a0, %lo(m_windowSize)(s5)
	addiw	a0, a0, 1
	blt	s2, a0, .LBB11_35
.LBB11_44:
	mv	s1, a0
	li	a0, 20
	bge	s1, a0, .LBB11_36
	j	.LBB11_37
.LBB11_45:
	fcvt.d.w	fa5, a0
	fmv.d.x	fa4, zero
	fdiv.d	fa0, fa4, fa5
	fsqrt.d	fa5, fa0
	feq.d	a1, fa5, fa5
	bnez	a1, .LBB11_54
# %bb.46:                               # %call.sqrt
	mv	s0, a0
	call	sqrt
	mv	a0, s0
	j	.LBB11_54
.LBB11_47:
	fcvt.d.w	fa5, a0
	fdiv.d	fa5, fa4, fa5
	fsqrt.d	fa0, fa5
	feq.d	a1, fa0, fa0
	beqz	a1, .LBB11_53
# %bb.48:                               # %.split21
	blez	a0, .LBB11_54
.LBB11_49:
	slli	a2, s1, 3
	addi	a1, sp, 8
	add	a2, a1, a2
	li	a3, 1
	j	.LBB11_51
.LBB11_50:                              #   in Loop: Header=BB11_51 Depth=1
	addi	a1, a1, 8
	addi	s0, s0, 4
	beq	a1, a2, .LBB11_54
.LBB11_51:                              # =>This Inner Loop Header: Depth=1
	fld	fa5, 0(a1)
	fabs.d	fa5, fa5
	flt.d	a4, fa0, fa5
	beqz	a4, .LBB11_50
# %bb.52:                               #   in Loop: Header=BB11_51 Depth=1
	sw	a3, 0(s0)
	j	.LBB11_50
.LBB11_53:                              # %call.sqrt22
	fmv.d	fa0, fa5
	mv	s3, a0
	call	sqrt
	mv	a0, s3
	bgtz	s3, .LBB11_49
.LBB11_54:
	lui	a1, %hi(m_rgRejected)
	sw	zero, %lo(m_rgRejected)(a1)
	call	RCModelEstimator
	li	a0, 2
	bge	s2, a0, .LBB11_57
# %bb.55:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 24(a0)
	bnez	a0, .LBB11_1
# %bb.56:
	lui	a0, %hi(CurrentFrameMAD)
	fld	fa5, %lo(CurrentFrameMAD)(a0)
	lui	a0, %hi(PPictureMAD)
	fsd	fa5, %lo(PPictureMAD)(a0)
	j	.LBB11_1
.LBB11_57:
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 208(sp)                     # 8-byte Folded Reload
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 192(sp)                     # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	ld	s5, 168(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 224
	tail	updateMADModel
.Lfunc_end11:
	.size	updateRCModel, .Lfunc_end11-updateRCModel
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ComputeFrameMAD                 # -- Begin function ComputeFrameMAD
	.p2align	2
	.type	ComputeFrameMAD,@function
ComputeFrameMAD:                        # @ComputeFrameMAD
# %bb.0:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lui	a0, 22
	addiw	a0, a0, 296
	add	a1, a1, a0
	lw	a0, 24(a1)
	blez	a0, .LBB12_4
# %bb.1:
	ld	a1, 0(a1)
	slli	a2, a0, 3
	add	a2, a1, a2
	fmv.d.x	fa5, zero
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	fld	fa4, 0(a1)
	addi	a1, a1, 8
	fadd.d	fa5, fa5, fa4
	bne	a1, a2, .LBB12_2
# %bb.3:
	fcvt.d.w	fa4, a0
	fdiv.d	fa0, fa5, fa4
	ret
.LBB12_4:
	fmv.d.x	fa5, zero
	fcvt.d.w	fa4, a0
	fdiv.d	fa0, fa5, fa4
	ret
.Lfunc_end12:
	.size	ComputeFrameMAD, .Lfunc_end12-ComputeFrameMAD
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	QP2Qstep                        # -- Begin function QP2Qstep
	.p2align	2
	.type	QP2Qstep,@function
QP2Qstep:                               # @QP2Qstep
# %bb.0:
	lui	a1, 174763
	addiw	a1, a1, -1365
	mul	a1, a0, a1
	srli	a2, a1, 63
	srli	a1, a1, 32
	add	a1, a1, a2
	li	a2, 6
	mul	a3, a1, a2
	subw	a3, a0, a3
	slli	a3, a3, 3
	lui	a4, %hi(QP2Qstep.QP2QSTEP)
	addi	a4, a4, %lo(QP2Qstep.QP2QSTEP)
	add	a3, a4, a3
	fld	fa0, 0(a3)
	blt	a0, a2, .LBB13_2
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	addiw	a1, a1, -1
	fadd.d	fa0, fa0, fa0
	bnez	a1, .LBB13_1
.LBB13_2:
	ret
.Lfunc_end13:
	.size	QP2Qstep, .Lfunc_end13-QP2Qstep
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function RCModelEstimator
.LCPI14_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI14_1:
	.quad	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	RCModelEstimator
	.p2align	2
	.type	RCModelEstimator,@function
RCModelEstimator:                       # @RCModelEstimator
# %bb.0:
	blez	a0, .LBB14_16
# %bb.1:
	slli	a3, a0, 2
	lui	a2, %hi(m_rgRejected)
	addi	a2, a2, %lo(m_rgRejected)
	add	a3, a2, a3
	mv	a1, a0
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	snez	a4, a4
	addi	a2, a2, 4
	subw	a1, a1, a4
	bne	a2, a3, .LBB14_2
# %bb.3:
	lui	a2, %hi(m_X2)
	sd	zero, %lo(m_X2)(a2)
	lui	a2, %hi(m_X1)
	sd	zero, %lo(m_X1)(a2)
	blez	a0, .LBB14_15
# %bb.4:
	slli	a2, a0, 2
	lui	a3, %hi(m_rgRejected)
	addi	a3, a3, %lo(m_rgRejected)
	add	a4, a3, a2
	fmv.d.x	fa5, zero
	lui	a5, %hi(m_rgQp)
	addi	a5, a5, %lo(m_rgQp)
	j	.LBB14_6
.LBB14_5:                               #   in Loop: Header=BB14_6 Depth=1
	addi	a3, a3, 4
	addi	a5, a5, 8
	beq	a3, a4, .LBB14_8
.LBB14_6:                               # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a3)
	bnez	a6, .LBB14_5
# %bb.7:                                #   in Loop: Header=BB14_6 Depth=1
	fld	fa5, 0(a5)
	j	.LBB14_5
.LBB14_8:
	blez	a0, .LBB14_15
# %bb.9:
	li	t1, 0
	fcvt.d.w	fa4, a1
	lui	a3, %hi(m_rgRejected)
	addi	a3, a3, %lo(m_rgRejected)
	add	a4, a3, a2
	fmv.d.x	fa1, zero
	lui	a5, %hi(m_rgRp)
	addi	a5, a5, %lo(m_rgRp)
	lui	a6, %hi(m_rgQp)
	addi	a6, a6, %lo(m_rgQp)
	lui	a7, %hi(m_X1)
	j	.LBB14_12
.LBB14_10:                              #   in Loop: Header=BB14_12 Depth=1
	beqz	t2, .LBB14_14
.LBB14_11:                              #   in Loop: Header=BB14_12 Depth=1
	addi	a5, a5, 8
	addi	a3, a3, 4
	addi	a6, a6, 8
	mv	t1, t0
	beq	a3, a4, .LBB14_21
.LBB14_12:                              # =>This Inner Loop Header: Depth=1
	fld	fa3, 0(a6)
	lw	t2, 0(a3)
	feq.d	t0, fa3, fa5
	snez	t3, t2
	or	t3, t3, t0
	li	t0, 1
	beqz	t3, .LBB14_10
# %bb.13:                               #   in Loop: Header=BB14_12 Depth=1
	mv	t0, t1
	j	.LBB14_10
.LBB14_14:                              #   in Loop: Header=BB14_12 Depth=1
	fld	fa2, 0(a5)
	fmul.d	fa3, fa3, fa2
	fdiv.d	fa3, fa3, fa4
	fadd.d	fa1, fa1, fa3
	fsd	fa1, %lo(m_X1)(a7)
	j	.LBB14_11
.LBB14_15:
	fmv.d.x	fa5, zero
	j	.LBB14_17
.LBB14_16:
	lui	a0, %hi(m_X2)
	sd	zero, %lo(m_X2)(a0)
	lui	a0, %hi(m_X1)
	fmv.d.x	fa5, zero
	sd	zero, %lo(m_X1)(a0)
.LBB14_17:
	fmv.d	fa1, fa5
.LBB14_18:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 24(a0)
	beqz	a0, .LBB14_20
# %bb.19:
	ret
.LBB14_20:
	lui	a0, %hi(Pm_X1)
	fsd	fa1, %lo(Pm_X1)(a0)
	lui	a0, %hi(Pm_X2)
	fsd	fa5, %lo(Pm_X2)(a0)
	ret
.LBB14_21:
	fmv.d.x	fa5, zero
	blez	a1, .LBB14_18
# %bb.22:
	beqz	t0, .LBB14_18
# %bb.23:
	blez	a0, .LBB14_28
# %bb.24:
	lui	a0, %hi(m_rgRejected)
	addi	a0, a0, %lo(m_rgRejected)
	add	a2, a0, a2
	lui	a1, %hi(.LCPI14_0)
	fld	fa0, %lo(.LCPI14_0)(a1)
	fmv.d.x	fa5, zero
	lui	a1, %hi(m_rgRp)
	addi	a1, a1, %lo(m_rgRp)
	lui	a3, %hi(m_rgQp)
	addi	a3, a3, %lo(m_rgQp)
	fmv.d	fa2, fa5
	fmv.d	fa1, fa5
	fmv.d	fa3, fa5
	fmv.d	fa4, fa5
	j	.LBB14_26
.LBB14_25:                              #   in Loop: Header=BB14_26 Depth=1
	addi	a1, a1, 8
	addi	a0, a0, 4
	addi	a3, a3, 8
	beq	a0, a2, .LBB14_29
.LBB14_26:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a0)
	bnez	a4, .LBB14_25
# %bb.27:                               #   in Loop: Header=BB14_26 Depth=1
	fld	ft0, 0(a3)
	fadd.d	fa4, fa4, fa0
	fdiv.d	ft1, fa0, ft0
	fadd.d	fa3, fa3, ft1
	fld	ft1, 0(a1)
	fmul.d	ft2, ft0, ft0
	fdiv.d	ft2, fa0, ft2
	fadd.d	fa1, fa1, ft2
	fmadd.d	fa2, ft0, ft1, fa2
	fadd.d	fa5, fa5, ft1
	j	.LBB14_25
.LBB14_28:
	fmv.d.x	fa4, zero
	fmv.d	fa3, fa4
	fmv.d	fa1, fa4
	fmv.d	fa2, fa4
	fmv.d	fa5, fa4
.LBB14_29:
	fneg.d	fa0, fa3
	lui	a0, %hi(.LCPI14_1)
	fld	ft0, %lo(.LCPI14_1)(a0)
	fmul.d	fa0, fa3, fa0
	fmadd.d	fa0, fa4, fa1, fa0
	fabs.d	ft1, fa0
	flt.d	a0, ft0, ft1
	beqz	a0, .LBB14_31
# %bb.30:
	fneg.d	ft0, fa5
	fmul.d	ft0, fa3, ft0
	fmadd.d	fa1, fa2, fa1, ft0
	fdiv.d	fa1, fa1, fa0
	lui	a0, %hi(m_X1)
	fsd	fa1, %lo(m_X1)(a0)
	fneg.d	fa2, fa2
	fmul.d	fa3, fa3, fa2
	fmadd.d	fa5, fa5, fa4, fa3
	fdiv.d	fa5, fa5, fa0
	lui	a0, %hi(m_X2)
	fsd	fa5, %lo(m_X2)(a0)
	j	.LBB14_18
.LBB14_31:
	fdiv.d	fa1, fa2, fa4
	lui	a0, %hi(m_X1)
	fsd	fa1, %lo(m_X1)(a0)
	lui	a0, %hi(m_X2)
	sd	zero, %lo(m_X2)(a0)
	fmv.d.x	fa5, zero
	j	.LBB14_18
.Lfunc_end14:
	.size	RCModelEstimator, .Lfunc_end14-RCModelEstimator
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function updateMADModel
.LCPI15_0:
	.quad	0x4034000000000000              # double 20
	.text
	.globl	updateMADModel
	.p2align	2
	.type	updateMADModel,@function
updateMADModel:                         # @updateMADModel
# %bb.0:
	addi	sp, sp, -240
	sd	ra, 232(sp)                     # 8-byte Folded Spill
	sd	s0, 224(sp)                     # 8-byte Folded Spill
	sd	s1, 216(sp)                     # 8-byte Folded Spill
	sd	s2, 208(sp)                     # 8-byte Folded Spill
	sd	s3, 200(sp)                     # 8-byte Folded Spill
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	sd	s5, 184(sp)                     # 8-byte Folded Spill
	sd	s6, 176(sp)                     # 8-byte Folded Spill
	sd	s7, 168(sp)                     # 8-byte Folded Spill
	fsd	fs0, 160(sp)                    # 8-byte Folded Spill
	lui	a0, %hi(img)
	ld	s3, %lo(img)(a0)
	lui	a0, 22
	addiw	s4, a0, 276
	add	s4, s3, s4
	lw	s1, 0(s4)
	blez	s1, .LBB15_8
# %bb.1:
	lw	s5, 56(s4)
	lw	s6, 44(s4)
	lui	a0, %hi(TotalNumberofBasicUnit)
	lw	s2, %lo(TotalNumberofBasicUnit)(a0)
	lui	a0, %hi(CodedBasicUnit)
	lw	s7, %lo(CodedBasicUnit)(a0)
	lui	s0, %hi(ReferenceMAD)
	addi	s0, s0, %lo(ReferenceMAD)
	addi	a0, s0, 8
	li	a2, 152
	mv	a1, s0
	call	memmove
	lui	a0, %hi(PPictureMAD)
	addi	a2, a0, %lo(PPictureMAD)
	fld	fa5, 144(a2)
	fsd	fa5, 152(a2)
	lui	a1, %hi(PictureMAD)
	fld	fa4, 136(a2)
	addi	a3, a1, %lo(PictureMAD)
	fsd	fa5, 152(a3)
	fld	fa5, 128(a2)
	fsd	fa4, 144(a2)
	fsd	fa4, 144(a3)
	fld	fa4, 120(a2)
	fsd	fa5, 136(a2)
	fsd	fa5, 136(a3)
	fld	fa5, 112(a2)
	fsd	fa4, 128(a2)
	fsd	fa4, 128(a3)
	fld	fa4, 104(a2)
	fsd	fa5, 120(a2)
	fsd	fa5, 120(a3)
	fld	fa5, 96(a2)
	fsd	fa4, 112(a2)
	fsd	fa4, 112(a3)
	fld	fa4, 88(a2)
	fsd	fa5, 104(a2)
	fsd	fa5, 104(a3)
	fld	fa5, 80(a2)
	fsd	fa4, 96(a2)
	fsd	fa4, 96(a3)
	fld	fa4, 72(a2)
	fsd	fa5, 88(a2)
	fsd	fa5, 88(a3)
	fld	fa5, 64(a2)
	fsd	fa4, 80(a2)
	fsd	fa4, 80(a3)
	fld	fa4, 56(a2)
	fsd	fa5, 72(a2)
	fsd	fa5, 72(a3)
	fld	fa5, 48(a2)
	fsd	fa4, 64(a2)
	fsd	fa4, 64(a3)
	fld	fa4, 40(a2)
	fsd	fa5, 56(a2)
	fsd	fa5, 56(a3)
	fld	fa5, 32(a2)
	fsd	fa4, 48(a2)
	fsd	fa4, 48(a3)
	fld	fa4, 24(a2)
	fsd	fa5, 40(a2)
	fsd	fa5, 40(a3)
	fld	fa3, 16(a2)
	fsd	fa4, 32(a2)
	fsd	fa4, 32(a3)
	fld	fa4, 8(a2)
	fsd	fa3, 24(a2)
	fld	fa5, %lo(PPictureMAD)(a0)
	fsd	fa3, 24(a3)
	fsd	fa4, 16(a2)
	fsd	fa4, 16(a3)
	fsd	fa5, 8(a2)
	fsd	fa5, 8(a3)
	beq	s5, s6, .LBB15_3
# %bb.2:
	mul	s1, s2, s1
	add	s1, s1, s7
.LBB15_3:
	lui	a2, %hi(CurrentFrameMAD)
	fld	fs0, %lo(CurrentFrameMAD)(a2)
	fsd	fs0, %lo(PPictureMAD)(a0)
	fsd	fs0, %lo(PictureMAD)(a1)
	beq	s5, s6, .LBB15_11
# %bb.4:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 1505(a0)
	li	a2, 2
	beq	a1, a2, .LBB15_6
# %bb.5:
	lw	a0, 1509(a0)
	beqz	a0, .LBB15_9
.LBB15_6:
	lw	a0, 36(s4)
	li	a1, 1
	bne	a0, a1, .LBB15_9
# %bb.7:
	lui	a0, %hi(FCBUPFMAD)
	addi	a0, a0, %lo(FCBUPFMAD)
	j	.LBB15_10
.LBB15_8:
	ld	ra, 232(sp)                     # 8-byte Folded Reload
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	ld	s1, 216(sp)                     # 8-byte Folded Reload
	ld	s2, 208(sp)                     # 8-byte Folded Reload
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	ld	s4, 192(sp)                     # 8-byte Folded Reload
	ld	s5, 184(sp)                     # 8-byte Folded Reload
	ld	s6, 176(sp)                     # 8-byte Folded Reload
	ld	s7, 168(sp)                     # 8-byte Folded Reload
	fld	fs0, 160(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 240
	ret
.LBB15_9:
	lui	a0, %hi(BUPFMAD)
	addi	a0, a0, %lo(BUPFMAD)
.LBB15_10:
	lui	a1, %hi(NumberofBasicUnit)
	lw	a1, %lo(NumberofBasicUnit)(a1)
	ld	a0, 0(a0)
	not	a1, a1
	addw	a1, s2, a1
	slli	a1, a1, 3
	add	a0, a0, a1
	fld	fa5, 0(a0)
.LBB15_11:
	lui	a0, %hi(ReferenceMAD)
	fsd	fa5, %lo(ReferenceMAD)(a0)
	lui	a0, %hi(PMADPictureC1)
	fld	fa4, %lo(PMADPictureC1)(a0)
	lui	a0, %hi(MADPictureC1)
	lui	a1, %hi(PMADPictureC2)
	lui	a2, %hi(PreviousFrameMAD)
	fld	fa5, %lo(PreviousFrameMAD)(a2)
	fld	fa3, %lo(PMADPictureC2)(a1)
	fsd	fa4, %lo(MADPictureC1)(a0)
	lui	a0, %hi(MADPictureC2)
	flt.d	a1, fa5, fs0
	fsd	fa3, %lo(MADPictureC2)(a0)
	beqz	a1, .LBB15_13
# %bb.12:
	fdiv.d	fa5, fa5, fs0
	j	.LBB15_14
.LBB15_13:
	fdiv.d	fa5, fs0, fa5
.LBB15_14:
	lui	a0, %hi(.LCPI15_0)
	fld	fa4, %lo(.LCPI15_0)(a0)
	fmul.d	fa5, fa5, fa4
	fcvt.w.d	a0, fa5, rtz
	addiw	s5, s1, -1
	bge	s5, a0, .LBB15_35
# %bb.15:
	blez	s5, .LBB15_36
.LBB15_16:
	lui	a0, %hi(MADm_windowSize)
	lw	s4, %lo(MADm_windowSize)(a0)
	addiw	a1, s4, 1
	bge	s5, a1, .LBB15_37
.LBB15_17:
	li	a1, 20
	mv	s1, s5
	blt	s5, a1, .LBB15_19
.LBB15_18:
	li	s1, 20
.LBB15_19:
	sw	s1, %lo(MADm_windowSize)(a0)
	lui	s2, %hi(PictureRejected)
	addi	s2, s2, %lo(PictureRejected)
	li	a2, 80
	mv	a0, s2
	li	a1, 0
	call	memset
	lw	a0, 24(s3)
	bnez	a0, .LBB15_21
# %bb.20:
	lui	a0, %hi(PreviousFrameMAD)
	fsd	fs0, %lo(PreviousFrameMAD)(a0)
.LBB15_21:
	mv	a0, s1
	call	MADModelEstimator
	fmv.d.x	fa0, zero
	fmv.d	fa5, fa0
	bltz	s4, .LBB15_26
# %bb.22:
	lui	a0, %hi(MADPictureC1)
	lui	a1, %hi(MADPictureC2)
	mv	a2, s1
	bgtz	s1, .LBB15_24
# %bb.23:
	li	a2, 1
.LBB15_24:
	fld	fa4, %lo(MADPictureC1)(a0)
	fld	fa3, %lo(MADPictureC2)(a1)
	slli	a1, a2, 3
	mv	a0, sp
	add	a1, a0, a1
	fmv.d.x	fa5, zero
	lui	a2, %hi(PictureMAD)
	addi	a2, a2, %lo(PictureMAD)
.LBB15_25:                              # =>This Inner Loop Header: Depth=1
	fld	fa2, 0(s0)
	fld	fa1, 0(a2)
	fmadd.d	fa2, fa4, fa2, fa3
	fsub.d	fa2, fa2, fa1
	fsd	fa2, 0(a0)
	fmadd.d	fa5, fa2, fa2, fa5
	addi	a0, a0, 8
	addi	a2, a2, 8
	addi	s0, s0, 8
	bne	a0, a1, .LBB15_25
.LBB15_26:
	li	a0, 2
	beq	s5, a0, .LBB15_28
# %bb.27:
	fcvt.d.w	fa4, s1
	fdiv.d	fa5, fa5, fa4
	fsqrt.d	fa0, fa5
	feq.d	a0, fa0, fa0
	beqz	a0, .LBB15_38
.LBB15_28:
	bltz	s4, .LBB15_39
.LBB15_29:
	li	a0, 1
	mv	a1, s1
	bgtz	s1, .LBB15_31
# %bb.30:
	li	a1, 1
.LBB15_31:
	slli	a2, a1, 3
	mv	a1, sp
	add	a2, a1, a2
	j	.LBB15_33
.LBB15_32:                              #   in Loop: Header=BB15_33 Depth=1
	addi	a1, a1, 8
	addi	s2, s2, 4
	beq	a1, a2, .LBB15_39
.LBB15_33:                              # =>This Inner Loop Header: Depth=1
	fld	fa5, 0(a1)
	fabs.d	fa5, fa5
	flt.d	a3, fa0, fa5
	beqz	a3, .LBB15_32
# %bb.34:                               #   in Loop: Header=BB15_33 Depth=1
	sw	a0, 0(s2)
	j	.LBB15_32
.LBB15_35:
	mv	s5, a0
	bgtz	a0, .LBB15_16
.LBB15_36:
	li	s5, 1
	lui	a0, %hi(MADm_windowSize)
	lw	s4, %lo(MADm_windowSize)(a0)
	addiw	a1, s4, 1
	blt	s5, a1, .LBB15_17
.LBB15_37:
	mv	s5, a1
	li	a1, 20
	mv	s1, s5
	bge	s5, a1, .LBB15_18
	j	.LBB15_19
.LBB15_38:                              # %call.sqrt
	fmv.d	fa0, fa5
	call	sqrt
	bgez	s4, .LBB15_29
.LBB15_39:
	lui	a0, %hi(PictureRejected)
	sw	zero, %lo(PictureRejected)(a0)
	mv	a0, s1
	ld	ra, 232(sp)                     # 8-byte Folded Reload
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	ld	s1, 216(sp)                     # 8-byte Folded Reload
	ld	s2, 208(sp)                     # 8-byte Folded Reload
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	ld	s4, 192(sp)                     # 8-byte Folded Reload
	ld	s5, 184(sp)                     # 8-byte Folded Reload
	ld	s6, 176(sp)                     # 8-byte Folded Reload
	ld	s7, 168(sp)                     # 8-byte Folded Reload
	fld	fs0, 160(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 240
	tail	MADModelEstimator
.Lfunc_end15:
	.size	updateMADModel, .Lfunc_end15-updateMADModel
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function MADModelEstimator
.LCPI16_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI16_1:
	.quad	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	MADModelEstimator
	.p2align	2
	.type	MADModelEstimator,@function
MADModelEstimator:                      # @MADModelEstimator
# %bb.0:
	blez	a0, .LBB16_16
# %bb.1:
	slli	a3, a0, 2
	lui	a2, %hi(PictureRejected)
	addi	a2, a2, %lo(PictureRejected)
	add	a3, a2, a3
	mv	a1, a0
.LBB16_2:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a2)
	snez	a4, a4
	addi	a2, a2, 4
	subw	a1, a1, a4
	bne	a2, a3, .LBB16_2
# %bb.3:
	lui	a2, %hi(MADPictureC2)
	sd	zero, %lo(MADPictureC2)(a2)
	lui	a2, %hi(MADPictureC1)
	sd	zero, %lo(MADPictureC1)(a2)
	blez	a0, .LBB16_15
# %bb.4:
	slli	a2, a0, 2
	lui	a3, %hi(PictureRejected)
	addi	a3, a3, %lo(PictureRejected)
	add	a4, a3, a2
	fmv.d.x	fa5, zero
	lui	a5, %hi(PictureMAD)
	addi	a5, a5, %lo(PictureMAD)
	j	.LBB16_6
.LBB16_5:                               #   in Loop: Header=BB16_6 Depth=1
	addi	a3, a3, 4
	addi	a5, a5, 8
	beq	a3, a4, .LBB16_8
.LBB16_6:                               # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a3)
	bnez	a6, .LBB16_5
# %bb.7:                                #   in Loop: Header=BB16_6 Depth=1
	fld	fa5, 0(a5)
	j	.LBB16_5
.LBB16_8:
	blez	a0, .LBB16_15
# %bb.9:
	li	t1, 0
	fcvt.d.w	fa3, a1
	lui	a3, %hi(PictureRejected)
	addi	a3, a3, %lo(PictureRejected)
	add	a4, a3, a2
	fmv.d.x	fa4, zero
	lui	a5, %hi(ReferenceMAD)
	addi	a5, a5, %lo(ReferenceMAD)
	lui	a6, %hi(PictureMAD)
	addi	a6, a6, %lo(PictureMAD)
	lui	a7, %hi(MADPictureC1)
	j	.LBB16_12
.LBB16_10:                              #   in Loop: Header=BB16_12 Depth=1
	beqz	t2, .LBB16_14
.LBB16_11:                              #   in Loop: Header=BB16_12 Depth=1
	addi	a5, a5, 8
	addi	a3, a3, 4
	addi	a6, a6, 8
	mv	t1, t0
	beq	a3, a4, .LBB16_21
.LBB16_12:                              # =>This Inner Loop Header: Depth=1
	fld	fa2, 0(a6)
	lw	t2, 0(a3)
	feq.d	t0, fa2, fa5
	snez	t3, t2
	or	t3, t3, t0
	li	t0, 1
	beqz	t3, .LBB16_10
# %bb.13:                               #   in Loop: Header=BB16_12 Depth=1
	mv	t0, t1
	j	.LBB16_10
.LBB16_14:                              #   in Loop: Header=BB16_12 Depth=1
	fld	fa1, 0(a5)
	fmul.d	fa1, fa1, fa3
	fdiv.d	fa2, fa2, fa1
	fadd.d	fa4, fa4, fa2
	fsd	fa4, %lo(MADPictureC1)(a7)
	j	.LBB16_11
.LBB16_15:
	fmv.d.x	fa1, zero
	j	.LBB16_17
.LBB16_16:
	lui	a0, %hi(MADPictureC2)
	sd	zero, %lo(MADPictureC2)(a0)
	lui	a0, %hi(MADPictureC1)
	fmv.d.x	fa1, zero
	sd	zero, %lo(MADPictureC1)(a0)
.LBB16_17:
	fmv.d	fa4, fa1
.LBB16_18:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 24(a0)
	beqz	a0, .LBB16_20
# %bb.19:
	ret
.LBB16_20:
	lui	a0, %hi(PMADPictureC1)
	fsd	fa4, %lo(PMADPictureC1)(a0)
	lui	a0, %hi(PMADPictureC2)
	fsd	fa1, %lo(PMADPictureC2)(a0)
	ret
.LBB16_21:
	fmv.d.x	fa1, zero
	blez	a1, .LBB16_18
# %bb.22:
	beqz	t0, .LBB16_18
# %bb.23:
	blez	a0, .LBB16_28
# %bb.24:
	lui	a0, %hi(PictureRejected)
	addi	a0, a0, %lo(PictureRejected)
	add	a2, a0, a2
	lui	a1, %hi(.LCPI16_0)
	fld	fa0, %lo(.LCPI16_0)(a1)
	fmv.d.x	fa5, zero
	lui	a1, %hi(PictureMAD)
	addi	a1, a1, %lo(PictureMAD)
	lui	a3, %hi(ReferenceMAD)
	addi	a3, a3, %lo(ReferenceMAD)
	fmv.d	fa2, fa5
	fmv.d	fa1, fa5
	fmv.d	fa4, fa5
	fmv.d	fa3, fa5
	j	.LBB16_26
.LBB16_25:                              #   in Loop: Header=BB16_26 Depth=1
	addi	a1, a1, 8
	addi	a0, a0, 4
	addi	a3, a3, 8
	beq	a0, a2, .LBB16_29
.LBB16_26:                              # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a0)
	bnez	a4, .LBB16_25
# %bb.27:                               #   in Loop: Header=BB16_26 Depth=1
	fld	ft0, 0(a3)
	fld	ft1, 0(a1)
	fadd.d	fa3, fa3, fa0
	fadd.d	fa4, fa4, ft0
	fmadd.d	fa1, ft0, ft0, fa1
	fadd.d	fa2, fa2, ft1
	fmadd.d	fa5, ft1, ft0, fa5
	j	.LBB16_25
.LBB16_28:
	fmv.d.x	fa3, zero
	fmv.d	fa4, fa3
	fmv.d	fa1, fa3
	fmv.d	fa2, fa3
	fmv.d	fa5, fa3
.LBB16_29:
	fneg.d	fa0, fa4
	lui	a0, %hi(.LCPI16_1)
	fld	ft0, %lo(.LCPI16_1)(a0)
	fmul.d	fa0, fa4, fa0
	fmadd.d	fa0, fa3, fa1, fa0
	fabs.d	ft1, fa0
	flt.d	a0, ft0, ft1
	beqz	a0, .LBB16_31
# %bb.30:
	fneg.d	ft0, fa5
	fmul.d	ft0, fa4, ft0
	fmadd.d	fa1, fa2, fa1, ft0
	fdiv.d	fa1, fa1, fa0
	lui	a0, %hi(MADPictureC2)
	fsd	fa1, %lo(MADPictureC2)(a0)
	fneg.d	fa2, fa2
	fmul.d	fa4, fa4, fa2
	fmadd.d	fa5, fa5, fa3, fa4
	fdiv.d	fa4, fa5, fa0
	lui	a0, %hi(MADPictureC1)
	fsd	fa4, %lo(MADPictureC1)(a0)
	j	.LBB16_18
.LBB16_31:
	fdiv.d	fa4, fa2, fa4
	lui	a0, %hi(MADPictureC1)
	fsd	fa4, %lo(MADPictureC1)(a0)
	lui	a0, %hi(MADPictureC2)
	sd	zero, %lo(MADPictureC2)(a0)
	fmv.d.x	fa1, zero
	j	.LBB16_18
.Lfunc_end16:
	.size	MADModelEstimator, .Lfunc_end16-MADModelEstimator
                                        # -- End function
	.option	pop
	.type	THETA,@object                   # @THETA
	.section	.rodata,"a",@progbits
	.globl	THETA
	.p2align	3, 0x0
THETA:
	.quad	0x3ff5d14e3bcd35a8              # double 1.3635999999999999
	.size	THETA, 8

	.type	Switch,@object                  # @Switch
	.globl	Switch
	.p2align	2, 0x0
Switch:
	.word	0                               # 0x0
	.size	Switch, 4

	.type	Iprev_bits,@object              # @Iprev_bits
	.section	.sbss,"aw",@nobits
	.globl	Iprev_bits
	.p2align	2, 0x0
Iprev_bits:
	.word	0                               # 0x0
	.size	Iprev_bits, 4

	.type	Pprev_bits,@object              # @Pprev_bits
	.globl	Pprev_bits
	.p2align	2, 0x0
Pprev_bits:
	.word	0                               # 0x0
	.size	Pprev_bits, 4

	.type	OMEGA,@object                   # @OMEGA
	.section	.rodata,"a",@progbits
	.globl	OMEGA
	.p2align	3, 0x0
OMEGA:
	.quad	0x3feccccccccccccd              # double 0.90000000000000002
	.size	OMEGA, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rc_alloc: img->MADofMB"
	.size	.L.str, 23

	.type	BUPFMAD,@object                 # @BUPFMAD
	.section	.sbss,"aw",@nobits
	.globl	BUPFMAD
	.p2align	3, 0x0
BUPFMAD:
	.quad	0
	.size	BUPFMAD, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"rc_alloc: img->BUPFMAD"
	.size	.L.str.1, 23

	.type	BUCFMAD,@object                 # @BUCFMAD
	.section	.sbss,"aw",@nobits
	.globl	BUCFMAD
	.p2align	3, 0x0
BUCFMAD:
	.quad	0
	.size	BUCFMAD, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"rc_alloc: img->BUCFMAD"
	.size	.L.str.2, 23

	.type	FCBUCFMAD,@object               # @FCBUCFMAD
	.section	.sbss,"aw",@nobits
	.globl	FCBUCFMAD
	.p2align	3, 0x0
FCBUCFMAD:
	.quad	0
	.size	FCBUCFMAD, 8

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"rc_alloc: img->FCBUCFMAD"
	.size	.L.str.3, 25

	.type	FCBUPFMAD,@object               # @FCBUPFMAD
	.section	.sbss,"aw",@nobits
	.globl	FCBUPFMAD
	.p2align	3, 0x0
FCBUPFMAD:
	.quad	0
	.size	FCBUPFMAD, 8

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"rc_alloc: img->FCBUPFMAD"
	.size	.L.str.4, 25

	.type	Xp,@object                      # @Xp
	.section	.sbss,"aw",@nobits
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

	.type	bit_rate,@object                # @bit_rate
	.globl	bit_rate
	.p2align	3, 0x0
bit_rate:
	.quad	0x0000000000000000              # double 0
	.size	bit_rate, 8

	.type	frame_rate,@object              # @frame_rate
	.globl	frame_rate
	.p2align	3, 0x0
frame_rate:
	.quad	0x0000000000000000              # double 0
	.size	frame_rate, 8

	.type	PreviousBit_Rate,@object        # @PreviousBit_Rate
	.globl	PreviousBit_Rate
	.p2align	3, 0x0
PreviousBit_Rate:
	.quad	0x0000000000000000              # double 0
	.size	PreviousBit_Rate, 8

	.type	TotalNumberofBasicUnit,@object  # @TotalNumberofBasicUnit
	.globl	TotalNumberofBasicUnit
	.p2align	2, 0x0
TotalNumberofBasicUnit:
	.word	0                               # 0x0
	.size	TotalNumberofBasicUnit, 4

	.type	MINVALUE,@object                # @MINVALUE
	.globl	MINVALUE
	.p2align	3, 0x0
MINVALUE:
	.quad	0x0000000000000000              # double 0
	.size	MINVALUE, 8

	.type	BufferSize,@object              # @BufferSize
	.globl	BufferSize
	.p2align	3, 0x0
BufferSize:
	.quad	0x0000000000000000              # double 0
	.size	BufferSize, 8

	.type	CurrentBufferFullness,@object   # @CurrentBufferFullness
	.globl	CurrentBufferFullness
	.p2align	3, 0x0
CurrentBufferFullness:
	.quad	0x0000000000000000              # double 0
	.size	CurrentBufferFullness, 8

	.type	GOPTargetBufferLevel,@object    # @GOPTargetBufferLevel
	.globl	GOPTargetBufferLevel
	.p2align	3, 0x0
GOPTargetBufferLevel:
	.quad	0x0000000000000000              # double 0
	.size	GOPTargetBufferLevel, 8

	.type	InitialDelayOffset,@object      # @InitialDelayOffset
	.globl	InitialDelayOffset
	.p2align	3, 0x0
InitialDelayOffset:
	.quad	0x0000000000000000              # double 0
	.size	InitialDelayOffset, 8

	.type	m_windowSize,@object            # @m_windowSize
	.globl	m_windowSize
	.p2align	2, 0x0
m_windowSize:
	.word	0                               # 0x0
	.size	m_windowSize, 4

	.type	MADm_windowSize,@object         # @MADm_windowSize
	.globl	MADm_windowSize
	.p2align	2, 0x0
MADm_windowSize:
	.word	0                               # 0x0
	.size	MADm_windowSize, 4

	.type	R,@object                       # @R
	.p2align	2, 0x0
R:
	.word	0                               # 0x0
	.size	R, 4

	.type	GAMMAP,@object                  # @GAMMAP
	.globl	GAMMAP
	.p2align	3, 0x0
GAMMAP:
	.quad	0x0000000000000000              # double 0
	.size	GAMMAP, 8

	.type	BETAP,@object                   # @BETAP
	.globl	BETAP
	.p2align	3, 0x0
BETAP:
	.quad	0x0000000000000000              # double 0
	.size	BETAP, 8

	.type	PPreHeader,@object              # @PPreHeader
	.globl	PPreHeader
	.p2align	2, 0x0
PPreHeader:
	.word	0                               # 0x0
	.size	PPreHeader, 4

	.type	Pm_X1,@object                   # @Pm_X1
	.globl	Pm_X1
	.p2align	3, 0x0
Pm_X1:
	.quad	0x0000000000000000              # double 0
	.size	Pm_X1, 8

	.type	Pm_X2,@object                   # @Pm_X2
	.globl	Pm_X2
	.p2align	3, 0x0
Pm_X2:
	.quad	0x0000000000000000              # double 0
	.size	Pm_X2, 8

	.type	PMADPictureC1,@object           # @PMADPictureC1
	.globl	PMADPictureC1
	.p2align	3, 0x0
PMADPictureC1:
	.quad	0x0000000000000000              # double 0
	.size	PMADPictureC1, 8

	.type	PMADPictureC2,@object           # @PMADPictureC2
	.globl	PMADPictureC2
	.p2align	3, 0x0
PMADPictureC2:
	.quad	0x0000000000000000              # double 0
	.size	PMADPictureC2, 8

	.type	Pm_rgQp,@object                 # @Pm_rgQp
	.bss
	.globl	Pm_rgQp
	.p2align	3, 0x0
Pm_rgQp:
	.zero	160
	.size	Pm_rgQp, 160

	.type	Pm_rgRp,@object                 # @Pm_rgRp
	.globl	Pm_rgRp
	.p2align	3, 0x0
Pm_rgRp:
	.zero	160
	.size	Pm_rgRp, 160

	.type	PPictureMAD,@object             # @PPictureMAD
	.globl	PPictureMAD
	.p2align	3, 0x0
PPictureMAD:
	.zero	168
	.size	PPictureMAD, 168

	.type	PDuantQp,@object                # @PDuantQp
	.section	.sbss,"aw",@nobits
	.globl	PDuantQp
	.p2align	2, 0x0
PDuantQp:
	.word	0                               # 0x0
	.size	PDuantQp, 4

	.type	PAveHeaderBits1,@object         # @PAveHeaderBits1
	.globl	PAveHeaderBits1
	.p2align	2, 0x0
PAveHeaderBits1:
	.word	0                               # 0x0
	.size	PAveHeaderBits1, 4

	.type	PAveHeaderBits3,@object         # @PAveHeaderBits3
	.globl	PAveHeaderBits3
	.p2align	2, 0x0
PAveHeaderBits3:
	.word	0                               # 0x0
	.size	PAveHeaderBits3, 4

	.type	DDquant,@object                 # @DDquant
	.globl	DDquant
	.p2align	2, 0x0
DDquant:
	.word	0                               # 0x0
	.size	DDquant, 4

	.type	MBPerRow,@object                # @MBPerRow
	.globl	MBPerRow
	.p2align	2, 0x0
MBPerRow:
	.word	0                               # 0x0
	.size	MBPerRow, 4

	.type	RC_MAX_QUANT,@object            # @RC_MAX_QUANT
	.globl	RC_MAX_QUANT
	.p2align	2, 0x0
RC_MAX_QUANT:
	.word	0                               # 0x0
	.size	RC_MAX_QUANT, 4

	.type	RC_MIN_QUANT,@object            # @RC_MIN_QUANT
	.globl	RC_MIN_QUANT
	.p2align	2, 0x0
RC_MIN_QUANT:
	.word	0                               # 0x0
	.size	RC_MIN_QUANT, 4

	.type	LowerBound,@object              # @LowerBound
	.globl	LowerBound
	.p2align	3, 0x0
LowerBound:
	.quad	0                               # 0x0
	.size	LowerBound, 8

	.type	UpperBound1,@object             # @UpperBound1
	.globl	UpperBound1
	.p2align	3, 0x0
UpperBound1:
	.quad	0                               # 0x0
	.size	UpperBound1, 8

	.type	Np,@object                      # @Np
	.p2align	2, 0x0
Np:
	.word	0                               # 0x0
	.size	Np, 4

	.type	Nb,@object                      # @Nb
	.p2align	2, 0x0
Nb:
	.word	0                               # 0x0
	.size	Nb, 4

	.type	GOPOverdue,@object              # @GOPOverdue
	.globl	GOPOverdue
	.p2align	2, 0x0
GOPOverdue:
	.word	0                               # 0x0
	.size	GOPOverdue, 4

	.type	TotalPFrame,@object             # @TotalPFrame
	.globl	TotalPFrame
	.p2align	2, 0x0
TotalPFrame:
	.word	0                               # 0x0
	.size	TotalPFrame, 4

	.type	MyInitialQp,@object             # @MyInitialQp
	.globl	MyInitialQp
	.p2align	2, 0x0
MyInitialQp:
	.word	0                               # 0x0
	.size	MyInitialQp, 4

	.type	PreviousQp2,@object             # @PreviousQp2
	.globl	PreviousQp2
	.p2align	2, 0x0
PreviousQp2:
	.word	0                               # 0x0
	.size	PreviousQp2, 4

	.type	QPLastGOP,@object               # @QPLastGOP
	.globl	QPLastGOP
	.p2align	2, 0x0
QPLastGOP:
	.word	0                               # 0x0
	.size	QPLastGOP, 4

	.type	FrameQPBuffer,@object           # @FrameQPBuffer
	.globl	FrameQPBuffer
	.p2align	2, 0x0
FrameQPBuffer:
	.word	0                               # 0x0
	.size	FrameQPBuffer, 4

	.type	QPLastPFrame,@object            # @QPLastPFrame
	.globl	QPLastPFrame
	.p2align	2, 0x0
QPLastPFrame:
	.word	0                               # 0x0
	.size	QPLastPFrame, 4

	.type	FieldQPBuffer,@object           # @FieldQPBuffer
	.globl	FieldQPBuffer
	.p2align	2, 0x0
FieldQPBuffer:
	.word	0                               # 0x0
	.size	FieldQPBuffer, 4

	.type	PAverageQp,@object              # @PAverageQp
	.globl	PAverageQp
	.p2align	2, 0x0
PAverageQp:
	.word	0                               # 0x0
	.size	PAverageQp, 4

	.type	Pm_Qp,@object                   # @Pm_Qp
	.globl	Pm_Qp
	.p2align	2, 0x0
Pm_Qp:
	.word	0                               # 0x0
	.size	Pm_Qp, 4

	.type	PAveFrameQP,@object             # @PAveFrameQP
	.globl	PAveFrameQP
	.p2align	2, 0x0
PAveFrameQP:
	.word	0                               # 0x0
	.size	PAveFrameQP, 4

	.type	PreviousQp1,@object             # @PreviousQp1
	.globl	PreviousQp1
	.p2align	2, 0x0
PreviousQp1:
	.word	0                               # 0x0
	.size	PreviousQp1, 4

	.type	NumberofBFrames,@object         # @NumberofBFrames
	.globl	NumberofBFrames
	.p2align	2, 0x0
NumberofBFrames:
	.word	0                               # 0x0
	.size	NumberofBFrames, 4

	.type	TargetBufferLevel,@object       # @TargetBufferLevel
	.globl	TargetBufferLevel
	.p2align	3, 0x0
TargetBufferLevel:
	.quad	0x0000000000000000              # double 0
	.size	TargetBufferLevel, 8

	.type	DeltaP,@object                  # @DeltaP
	.globl	DeltaP
	.p2align	3, 0x0
DeltaP:
	.quad	0x0000000000000000              # double 0
	.size	DeltaP, 8

	.type	Wp,@object                      # @Wp
	.globl	Wp
	.p2align	3, 0x0
Wp:
	.quad	0x0000000000000000              # double 0
	.size	Wp, 8

	.type	AWp,@object                     # @AWp
	.globl	AWp
	.p2align	3, 0x0
AWp:
	.quad	0x0000000000000000              # double 0
	.size	AWp, 8

	.type	AWb,@object                     # @AWb
	.globl	AWb
	.p2align	3, 0x0
AWb:
	.quad	0x0000000000000000              # double 0
	.size	AWb, 8

	.type	Wb,@object                      # @Wb
	.globl	Wb
	.p2align	3, 0x0
Wb:
	.quad	0x0000000000000000              # double 0
	.size	Wb, 8

	.type	T,@object                       # @T
	.globl	T
	.p2align	3, 0x0
T:
	.quad	0                               # 0x0
	.size	T, 8

	.type	T1,@object                      # @T1
	.globl	T1
	.p2align	3, 0x0
T1:
	.quad	0                               # 0x0
	.size	T1, 8

	.type	UpperBound2,@object             # @UpperBound2
	.globl	UpperBound2
	.p2align	3, 0x0
UpperBound2:
	.quad	0                               # 0x0
	.size	UpperBound2, 8

	.type	T_field,@object                 # @T_field
	.p2align	2, 0x0
T_field:
	.word	0                               # 0x0
	.size	T_field, 4

	.type	TotalFrameQP,@object            # @TotalFrameQP
	.globl	TotalFrameQP
	.p2align	2, 0x0
TotalFrameQP:
	.word	0                               # 0x0
	.size	TotalFrameQP, 4

	.type	NumberofBasicUnit,@object       # @NumberofBasicUnit
	.globl	NumberofBasicUnit
	.p2align	2, 0x0
NumberofBasicUnit:
	.word	0                               # 0x0
	.size	NumberofBasicUnit, 4

	.type	bits_topfield,@object           # @bits_topfield
	.p2align	2, 0x0
bits_topfield:
	.word	0                               # 0x0
	.size	bits_topfield, 4

	.type	diffy,@object                   # @diffy
	.bss
	.globl	diffy
	.p2align	2, 0x0
diffy:
	.zero	1024
	.size	diffy, 1024

	.type	m_Qc,@object                    # @m_Qc
	.section	.sbss,"aw",@nobits
	.globl	m_Qc
	.p2align	2, 0x0
m_Qc:
	.word	0                               # 0x0
	.size	m_Qc, 4

	.type	Pm_Hp,@object                   # @Pm_Hp
	.globl	Pm_Hp
	.p2align	2, 0x0
Pm_Hp:
	.word	0                               # 0x0
	.size	Pm_Hp, 4

	.type	m_X1,@object                    # @m_X1
	.globl	m_X1
	.p2align	3, 0x0
m_X1:
	.quad	0x0000000000000000              # double 0
	.size	m_X1, 8

	.type	m_X2,@object                    # @m_X2
	.globl	m_X2
	.p2align	3, 0x0
m_X2:
	.quad	0x0000000000000000              # double 0
	.size	m_X2, 8

	.type	m_Hp,@object                    # @m_Hp
	.globl	m_Hp
	.p2align	2, 0x0
m_Hp:
	.word	0                               # 0x0
	.size	m_Hp, 4

	.type	m_Qp,@object                    # @m_Qp
	.globl	m_Qp
	.p2align	2, 0x0
m_Qp:
	.word	0                               # 0x0
	.size	m_Qp, 4

	.type	DuantQp,@object                 # @DuantQp
	.globl	DuantQp
	.p2align	2, 0x0
DuantQp:
	.word	0                               # 0x0
	.size	DuantQp, 4

	.type	MADPictureC1,@object            # @MADPictureC1
	.globl	MADPictureC1
	.p2align	3, 0x0
MADPictureC1:
	.quad	0x0000000000000000              # double 0
	.size	MADPictureC1, 8

	.type	MADPictureC2,@object            # @MADPictureC2
	.globl	MADPictureC2
	.p2align	3, 0x0
MADPictureC2:
	.quad	0x0000000000000000              # double 0
	.size	MADPictureC2, 8

	.type	PreviousPictureMAD,@object      # @PreviousPictureMAD
	.globl	PreviousPictureMAD
	.p2align	3, 0x0
PreviousPictureMAD:
	.quad	0x0000000000000000              # double 0
	.size	PreviousPictureMAD, 8

	.type	CurrentFrameMAD,@object         # @CurrentFrameMAD
	.globl	CurrentFrameMAD
	.p2align	3, 0x0
CurrentFrameMAD:
	.quad	0x0000000000000000              # double 0
	.size	CurrentFrameMAD, 8

	.type	m_Qstep,@object                 # @m_Qstep
	.globl	m_Qstep
	.p2align	3, 0x0
m_Qstep:
	.quad	0x0000000000000000              # double 0
	.size	m_Qstep, 8

	.type	PAveHeaderBits2,@object         # @PAveHeaderBits2
	.globl	PAveHeaderBits2
	.p2align	2, 0x0
PAveHeaderBits2:
	.word	0                               # 0x0
	.size	PAveHeaderBits2, 4

	.type	FrameAveHeaderBits,@object      # @FrameAveHeaderBits
	.globl	FrameAveHeaderBits
	.p2align	2, 0x0
FrameAveHeaderBits:
	.word	0                               # 0x0
	.size	FrameAveHeaderBits, 4

	.type	FieldAveHeaderBits,@object      # @FieldAveHeaderBits
	.globl	FieldAveHeaderBits
	.p2align	2, 0x0
FieldAveHeaderBits:
	.word	0                               # 0x0
	.size	FieldAveHeaderBits, 4

	.type	TotalBasicUnitBits,@object      # @TotalBasicUnitBits
	.globl	TotalBasicUnitBits
	.p2align	2, 0x0
TotalBasicUnitBits:
	.word	0                               # 0x0
	.size	TotalBasicUnitBits, 4

	.type	TotalBUMAD,@object              # @TotalBUMAD
	.globl	TotalBUMAD
	.p2align	3, 0x0
TotalBUMAD:
	.quad	0x0000000000000000              # double 0
	.size	TotalBUMAD, 8

	.type	CurrentBUMAD,@object            # @CurrentBUMAD
	.globl	CurrentBUMAD
	.p2align	3, 0x0
CurrentBUMAD:
	.quad	0x0000000000000000              # double 0
	.size	CurrentBUMAD, 8

	.type	CodedBasicUnit,@object          # @CodedBasicUnit
	.globl	CodedBasicUnit
	.p2align	2, 0x0
CodedBasicUnit:
	.word	0                               # 0x0
	.size	CodedBasicUnit, 4

	.type	m_rgQp,@object                  # @m_rgQp
	.bss
	.globl	m_rgQp
	.p2align	3, 0x0
m_rgQp:
	.zero	168
	.size	m_rgQp, 168

	.type	m_rgRp,@object                  # @m_rgRp
	.globl	m_rgRp
	.p2align	3, 0x0
m_rgRp:
	.zero	168
	.size	m_rgRp, 168

	.type	PreviousFrameMAD,@object        # @PreviousFrameMAD
	.section	.sbss,"aw",@nobits
	.globl	PreviousFrameMAD
	.p2align	3, 0x0
PreviousFrameMAD:
	.quad	0x0000000000000000              # double 0
	.size	PreviousFrameMAD, 8

	.type	m_rgRejected,@object            # @m_rgRejected
	.bss
	.globl	m_rgRejected
	.p2align	2, 0x0
m_rgRejected:
	.zero	84
	.size	m_rgRejected, 84

	.type	PictureMAD,@object              # @PictureMAD
	.globl	PictureMAD
	.p2align	3, 0x0
PictureMAD:
	.zero	168
	.size	PictureMAD, 168

	.type	ReferenceMAD,@object            # @ReferenceMAD
	.globl	ReferenceMAD
	.p2align	3, 0x0
ReferenceMAD:
	.zero	168
	.size	ReferenceMAD, 168

	.type	PictureRejected,@object         # @PictureRejected
	.globl	PictureRejected
	.p2align	2, 0x0
PictureRejected:
	.zero	84
	.size	PictureRejected, 84

	.type	QP2Qstep.QP2QSTEP,@object       # @QP2Qstep.QP2QSTEP
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
QP2Qstep.QP2QSTEP:
	.quad	0x3fe4000000000000              # double 0.625
	.quad	0x3fe6000000000000              # double 0.6875
	.quad	0x3fea000000000000              # double 0.8125
	.quad	0x3fec000000000000              # double 0.875
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff2000000000000              # double 1.125
	.size	QP2Qstep.QP2QSTEP, 48

	.type	PreAveMBHeader,@object          # @PreAveMBHeader
	.section	.sbss,"aw",@nobits
	.globl	PreAveMBHeader
	.p2align	2, 0x0
PreAveMBHeader:
	.word	0                               # 0x0
	.size	PreAveMBHeader, 4

	.type	CurAveMBHeader,@object          # @CurAveMBHeader
	.globl	CurAveMBHeader
	.p2align	2, 0x0
CurAveMBHeader:
	.word	0                               # 0x0
	.size	CurAveMBHeader, 4

	.type	AverageMADPreviousFrame,@object # @AverageMADPreviousFrame
	.globl	AverageMADPreviousFrame
	.p2align	3, 0x0
AverageMADPreviousFrame:
	.quad	0x0000000000000000              # double 0
	.size	AverageMADPreviousFrame, 8

	.type	diffyy,@object                  # @diffyy
	.bss
	.globl	diffyy
	.p2align	2, 0x0
diffyy:
	.zero	1024
	.size	diffyy, 1024

	.type	diffy8,@object                  # @diffy8
	.globl	diffy8
	.p2align	2, 0x0
diffy8:
	.zero	1024
	.size	diffy8, 1024

	.type	BitRate,@object                 # @BitRate
	.section	.sbss,"aw",@nobits
	.globl	BitRate
	.p2align	3, 0x0
BitRate:
	.quad	0
	.size	BitRate, 8

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
