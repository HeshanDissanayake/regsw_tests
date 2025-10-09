	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"stats.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function calcSNR
.LCPI0_0:
	.quad	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
.LCPI0_1:
	.quad	0x40efc02000000000              # double 65025
.LCPI0_2:
	.quad	0x4024000000000000              # double 10
	.text
	.globl	calcSNR
	.p2align	2
	.type	calcSNR,@function
calcSNR:                                # @calcSNR
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	fsd	fs0, 48(sp)                     # 8-byte Folded Spill
	fsd	fs1, 40(sp)                     # 8-byte Folded Spill
	fsd	fs2, 32(sp)                     # 8-byte Folded Spill
	fsd	fs3, 24(sp)                     # 8-byte Folded Spill
	fsd	fs4, 16(sp)                     # 8-byte Folded Spill
	fsd	fs5, 8(sp)                      # 8-byte Folded Spill
	mv	s0, a1
	mv	s1, a0
	lui	a0, %hi(horizontal_size)
	lui	a1, %hi(pict_struct)
	lw	a1, %lo(pict_struct)(a1)
	lui	a2, %hi(vertical_size)
	lw	a2, %lo(vertical_size)(a2)
	lw	s4, %lo(horizontal_size)(a0)
	addi	a0, a1, -3
	snez	a0, a0
	sraw	s3, a2, a0
	addi	a1, a1, -2
	lui	a0, %hi(width)
	lw	a0, %lo(width)(a0)
	snez	a1, a1
	addi	a1, a1, -1
	fmv.d.x	fs0, zero
	and	s5, a1, a0
	fmv.d	fa5, fs0
	fmv.d	fa4, fs0
	fmv.d	fa3, fs0
	blez	s3, .LBB0_6
# %bb.1:
	fmv.d	fa5, fs0
	fmv.d	fa4, fs0
	fmv.d	fa3, fs0
	blez	s4, .LBB0_6
# %bb.2:
	ld	a3, 0(s1)
	li	a0, 0
	li	a1, 0
	ld	a2, 0(s0)
	add	a3, a3, s5
	lui	a4, %hi(width2)
	lw	a4, %lo(width2)(a4)
	add	a5, a2, s5
	fmv.d.x	fa3, zero
	add	a6, s5, s4
	fmv.d	fa4, fa3
	fmv.d	fa5, fa3
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	mul	a7, a4, a0
	add	a7, a6, a7
	add	a7, a2, a7
	mv	t0, a3
	mv	t1, a5
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t2, 0(t0)
	lbu	t3, 0(t1)
	fcvt.d.wu	fa2, t2
	fadd.d	fa5, fa5, fa2
	fmadd.d	fa4, fa2, fa2, fa4
	fcvt.d.wu	fa1, t3
	fsub.d	fa2, fa2, fa1
	fmadd.d	fa3, fa2, fa2, fa3
	addi	t1, t1, 1
	addi	t0, t0, 1
	bne	t1, a7, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	add	a3, a3, a4
	add	a5, a5, a4
	addiw	a1, a1, 1
	addi	a0, a0, 1
	bne	a1, s3, .LBB0_3
.LBB0_6:
	mul	a0, s3, s4
	fcvt.d.w	fa2, a0
	fdiv.d	fs1, fa3, fa2
	feq.d	a0, fs1, fs0
	beqz	a0, .LBB0_8
# %bb.7:
	lui	a0, %hi(.LCPI0_0)
	fld	fs1, %lo(.LCPI0_0)(a0)
.LBB0_8:
	fdiv.d	fa4, fa4, fa2
	lui	a0, %hi(statfile)
	lui	a1, %hi(.LCPI0_1)
	fld	fa3, %lo(.LCPI0_1)(a1)
	ld	s2, %lo(statfile)(a0)
	fdiv.d	fa5, fa5, fa2
	fnmsub.d	fs2, fa5, fa5, fa4
	fdiv.d	fa0, fa3, fs1
	call	log10
	lui	a0, %hi(.LCPI0_2)
	fld	fs3, %lo(.LCPI0_2)(a0)
	fmul.d	fs4, fa0, fs3
	fdiv.d	fa0, fs2, fs1
	call	log10
	fmul.d	fa5, fa0, fs3
	fmv.x.d	a5, fa5
	fmv.x.d	a2, fs2
	fmv.x.d	a3, fs1
	fmv.x.d	a4, fs4
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	a0, s2
	call	fprintf
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	addi	a1, a0, -3
	snez	a1, a1
	sraw	s4, s4, a1
	addi	a0, a0, -1
	seqz	a0, a0
	sraw	s3, s3, a0
	sraw	s5, s5, a1
	fmv.d	fa5, fs0
	fmv.d	fa4, fs0
	fmv.d	fa3, fs0
	blez	s3, .LBB0_14
# %bb.9:
	fmv.d	fa5, fs0
	fmv.d	fa4, fs0
	fmv.d	fa3, fs0
	blez	s4, .LBB0_14
# %bb.10:
	ld	a3, 8(s1)
	li	a0, 0
	li	a1, 0
	ld	a2, 8(s0)
	add	a3, a3, s5
	lui	a4, %hi(chrom_width2)
	lw	a4, %lo(chrom_width2)(a4)
	add	a5, a2, s5
	fmv.d.x	fa3, zero
	add	a6, s5, s4
	fmv.d	fa4, fa3
	fmv.d	fa5, fa3
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	mul	a7, a4, a0
	add	a7, a6, a7
	add	a7, a2, a7
	mv	t0, a3
	mv	t1, a5
.LBB0_12:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t2, 0(t0)
	lbu	t3, 0(t1)
	fcvt.d.wu	fa2, t2
	fadd.d	fa5, fa5, fa2
	fmadd.d	fa4, fa2, fa2, fa4
	fcvt.d.wu	fa1, t3
	fsub.d	fa2, fa2, fa1
	fmadd.d	fa3, fa2, fa2, fa3
	addi	t1, t1, 1
	addi	t0, t0, 1
	bne	t1, a7, .LBB0_12
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	add	a3, a3, a4
	add	a5, a5, a4
	addiw	a1, a1, 1
	addi	a0, a0, 1
	bne	a1, s3, .LBB0_11
.LBB0_14:
	mul	a0, s3, s4
	fcvt.d.w	fs1, a0
	fdiv.d	fs2, fa3, fs1
	feq.d	a0, fs2, fs0
	beqz	a0, .LBB0_16
# %bb.15:
	lui	a0, %hi(.LCPI0_0)
	fld	fs2, %lo(.LCPI0_0)(a0)
.LBB0_16:
	fdiv.d	fa4, fa4, fs1
	lui	a0, %hi(statfile)
	lui	a1, %hi(.LCPI0_1)
	fld	fa3, %lo(.LCPI0_1)(a1)
	ld	s2, %lo(statfile)(a0)
	fdiv.d	fa5, fa5, fs1
	fnmsub.d	fs3, fa5, fa5, fa4
	fdiv.d	fa0, fa3, fs2
	call	log10
	lui	a0, %hi(.LCPI0_2)
	fld	fs4, %lo(.LCPI0_2)(a0)
	fmul.d	fs5, fa0, fs4
	fdiv.d	fa0, fs3, fs2
	call	log10
	fmul.d	fa5, fa0, fs4
	fmv.x.d	a5, fa5
	fmv.x.d	a2, fs3
	fmv.x.d	a3, fs2
	fmv.x.d	a4, fs5
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	mv	a0, s2
	call	fprintf
	fmv.d	fa5, fs0
	fmv.d	fa4, fs0
	fmv.d	fa3, fs0
	blez	s3, .LBB0_22
# %bb.17:
	fmv.d	fa5, fs0
	fmv.d	fa4, fs0
	fmv.d	fa3, fs0
	blez	s4, .LBB0_22
# %bb.18:
	ld	a3, 16(s1)
	li	a0, 0
	li	a1, 0
	ld	a2, 16(s0)
	add	a3, a3, s5
	lui	a4, %hi(chrom_width2)
	lw	a4, %lo(chrom_width2)(a4)
	add	a5, a2, s5
	fmv.d.x	fa3, zero
	add	s4, s5, s4
	fmv.d	fa4, fa3
	fmv.d	fa5, fa3
.LBB0_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
	mul	a6, a4, a0
	add	a6, s4, a6
	add	a6, a2, a6
	mv	a7, a3
	mv	t0, a5
.LBB0_20:                               #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t1, 0(a7)
	lbu	t2, 0(t0)
	fcvt.d.wu	fa2, t1
	fadd.d	fa5, fa5, fa2
	fmadd.d	fa4, fa2, fa2, fa4
	fcvt.d.wu	fa1, t2
	fsub.d	fa2, fa2, fa1
	fmadd.d	fa3, fa2, fa2, fa3
	addi	t0, t0, 1
	addi	a7, a7, 1
	bne	t0, a6, .LBB0_20
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=1
	add	a3, a3, a4
	add	a5, a5, a4
	addiw	a1, a1, 1
	addi	a0, a0, 1
	bne	a1, s3, .LBB0_19
.LBB0_22:
	fdiv.d	fs2, fa3, fs1
	feq.d	a0, fs2, fs0
	beqz	a0, .LBB0_24
# %bb.23:
	lui	a0, %hi(.LCPI0_0)
	fld	fs2, %lo(.LCPI0_0)(a0)
.LBB0_24:
	fdiv.d	fa4, fa4, fs1
	lui	a0, %hi(statfile)
	lui	a1, %hi(.LCPI0_1)
	fld	fa3, %lo(.LCPI0_1)(a1)
	ld	s0, %lo(statfile)(a0)
	fdiv.d	fa5, fa5, fs1
	fnmsub.d	fs0, fa5, fa5, fa4
	fdiv.d	fa0, fa3, fs2
	call	log10
	lui	a0, %hi(.LCPI0_2)
	fld	fs1, %lo(.LCPI0_2)(a0)
	fmul.d	fs3, fa0, fs1
	fdiv.d	fa0, fs0, fs2
	call	log10
	fmul.d	fa5, fa0, fs1
	fmv.x.d	a5, fa5
	fmv.x.d	a2, fs0
	fmv.x.d	a3, fs2
	fmv.x.d	a4, fs3
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	mv	a0, s0
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	fld	fs0, 48(sp)                     # 8-byte Folded Reload
	fld	fs1, 40(sp)                     # 8-byte Folded Reload
	fld	fs2, 32(sp)                     # 8-byte Folded Reload
	fld	fs3, 24(sp)                     # 8-byte Folded Reload
	fld	fs4, 16(sp)                     # 8-byte Folded Reload
	fld	fs5, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	tail	fprintf
.Lfunc_end0:
	.size	calcSNR, .Lfunc_end0-calcSNR
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function stats
.LCPI1_0:
	.quad	0x4059000000000000              # double 100
	.text
	.globl	stats
	.p2align	2
	.type	stats,@function
stats:                                  # @stats
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	sd	s4, 80(sp)                      # 8-byte Folded Spill
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	sd	s7, 56(sp)                      # 8-byte Folded Spill
	sd	s8, 48(sp)                      # 8-byte Folded Spill
	sd	s9, 40(sp)                      # 8-byte Folded Spill
	sd	s10, 32(sp)                     # 8-byte Folded Spill
	sd	s11, 24(sp)                     # 8-byte Folded Spill
	fsd	fs0, 16(sp)                     # 8-byte Folded Spill
	fsd	fs1, 8(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(mb_width)
	lw	a0, %lo(mb_width)(a0)
	lui	s7, %hi(mb_height2)
	lw	a1, %lo(mb_height2)(s7)
	mulw	s9, a1, a0
	blez	s9, .LBB1_16
# %bb.1:
	lui	a0, %hi(mbinfo)
	lui	a1, %hi(block_count)
	lw	a1, %lo(block_count)(a1)
	ld	a0, %lo(mbinfo)(a0)
	blez	a1, .LBB1_17
# %bb.2:                                # %.preheader5
	li	a2, 0
	li	s1, 0
	li	s2, 0
	li	s0, 0
	li	s6, 0
	li	s4, 0
	li	s5, 0
	li	s3, 0
	li	a3, 96
	j	.LBB1_5
.LBB1_3:                                #   in Loop: Header=BB1_5 Depth=1
	slli	a4, a4, 61
	srli	a4, a4, 63
	addw	s1, a4, s1
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=1
	addi	a2, a2, 1
	beq	a2, s9, .LBB1_29
.LBB1_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	mul	a4, a2, a3
	add	a4, a0, a4
	lw	a5, 20(a4)
	beqz	a5, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	addiw	s3, s3, 1
	j	.LBB1_10
.LBB1_7:                                #   in Loop: Header=BB1_5 Depth=1
	lwu	a5, 0(a4)
	andi	a6, a5, 1
	bnez	a6, .LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_5 Depth=1
	andi	a5, a5, 2
	seqz	a5, a5
	addw	s4, a5, s4
	j	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_5 Depth=1
	addiw	s5, s5, 1
.LBB1_10:                               #   in Loop: Header=BB1_5 Depth=1
	lw	a5, 16(a4)
	li	a6, 0
.LBB1_11:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srlw	a7, a5, a6
	andi	a7, a7, 1
	addiw	a6, a6, 1
	addw	s6, a7, s6
	bne	a1, a6, .LBB1_11
# %bb.12:                               #   in Loop: Header=BB1_5 Depth=1
	lwu	a4, 0(a4)
	andi	a5, a4, 8
	beqz	a5, .LBB1_3
# %bb.13:                               #   in Loop: Header=BB1_5 Depth=1
	andi	a4, a4, 4
	bnez	a4, .LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_5 Depth=1
	addiw	s2, s2, 1
	j	.LBB1_4
.LBB1_15:                               #   in Loop: Header=BB1_5 Depth=1
	addiw	s0, s0, 1
	j	.LBB1_4
.LBB1_16:
	li	s3, 0
	li	s5, 0
	li	s4, 0
	li	s6, 0
	li	s0, 0
	li	s2, 0
	li	s1, 0
	j	.LBB1_29
.LBB1_17:                               # %.preheader7
	li	s1, 0
	li	s2, 0
	li	s0, 0
	li	s4, 0
	li	s5, 0
	li	s3, 0
	li	a1, 96
	mul	a1, s9, a1
	add	a1, a0, a1
	j	.LBB1_20
.LBB1_18:                               #   in Loop: Header=BB1_20 Depth=1
	slli	a2, a2, 61
	srli	a2, a2, 63
	addw	s1, a2, s1
.LBB1_19:                               #   in Loop: Header=BB1_20 Depth=1
	addi	a0, a0, 96
	beq	a0, a1, .LBB1_28
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	lw	a2, 20(a0)
	beqz	a2, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
	lw	a2, 0(a0)
	addiw	s3, s3, 1
	andi	a3, a2, 8
	beqz	a3, .LBB1_18
	j	.LBB1_25
.LBB1_22:                               #   in Loop: Header=BB1_20 Depth=1
	lwu	a2, 0(a0)
	andi	a3, a2, 1
	bnez	a3, .LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_20 Depth=1
	andi	a3, a2, 2
	seqz	a3, a3
	addw	s4, a3, s4
	andi	a3, a2, 8
	beqz	a3, .LBB1_18
	j	.LBB1_25
.LBB1_24:                               #   in Loop: Header=BB1_20 Depth=1
	addiw	s5, s5, 1
	andi	a3, a2, 8
	beqz	a3, .LBB1_18
.LBB1_25:                               #   in Loop: Header=BB1_20 Depth=1
	andi	a2, a2, 4
	bnez	a2, .LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_20 Depth=1
	addiw	s2, s2, 1
	j	.LBB1_19
.LBB1_27:                               #   in Loop: Header=BB1_20 Depth=1
	addiw	s0, s0, 1
	j	.LBB1_19
.LBB1_28:
	li	s6, 0
.LBB1_29:
	lui	s8, %hi(statfile)
	ld	a3, %lo(statfile)(s8)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	li	a1, 21
	li	a2, 1
	li	s10, 1
	call	fwrite
	lui	a0, %hi(.LCPI1_0)
	fld	fs0, %lo(.LCPI1_0)(a0)
	ld	a0, %lo(statfile)(s8)
	fcvt.d.w	fa5, s5
	fmul.d	fa5, fa5, fs0
	fcvt.d.w	fs1, s9
	fdiv.d	fa5, fa5, fs1
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	mv	a2, s5
	call	fprintf
	lui	a0, %hi(block_count)
	lw	a1, %lo(block_count)(a0)
	ld	a0, %lo(statfile)(s8)
	fcvt.d.w	fa5, s6
	fmul.d	fa5, fa5, fs0
	mul	a1, a1, s9
	fcvt.d.w	fa4, a1
	fdiv.d	fa5, fa5, fa4
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	mv	a2, s6
	call	fprintf
	ld	a0, %lo(statfile)(s8)
	fcvt.d.w	fa5, s4
	fmul.d	fa5, fa5, fs0
	fdiv.d	fa5, fa5, fs1
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	mv	a2, s4
	call	fprintf
	ld	a0, %lo(statfile)(s8)
	fcvt.d.w	fa5, s3
	fmul.d	fa5, fa5, fs0
	fdiv.d	fa5, fa5, fs1
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	mv	a2, s3
	call	fprintf
	ld	a0, %lo(statfile)(s8)
	fcvt.d.w	fa5, s2
	fmul.d	fa5, fa5, fs0
	fdiv.d	fa5, fa5, fs1
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.8)
	addi	a1, a1, %lo(.L.str.8)
	mv	a2, s2
	call	fprintf
	ld	a0, %lo(statfile)(s8)
	fcvt.d.w	fa5, s1
	fmul.d	fa5, fa5, fs0
	fdiv.d	fa5, fa5, fs1
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	mv	a2, s1
	call	fprintf
	ld	a0, %lo(statfile)(s8)
	fcvt.d.w	fa5, s0
	fmul.d	fa5, fa5, fs0
	fdiv.d	fa5, fa5, fs1
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.10)
	addi	a1, a1, %lo(.L.str.10)
	mv	a2, s0
	call	fprintf
	ld	a3, %lo(statfile)(s8)
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	li	a1, 22
	li	a2, 1
	call	fwrite
	lw	a0, %lo(mb_height2)(s7)
	blez	a0, .LBB1_54
# %bb.30:                               # %.preheader3
	li	s0, 0
	li	s1, 0
	lui	s2, %hi(mb_width)
	li	s3, 96
	lui	s4, %hi(mbinfo)
	li	s5, 3
	lui	s6, %hi(mb_height2)
	j	.LBB1_33
.LBB1_31:                               #   in Loop: Header=BB1_33 Depth=1
	addw	s1, s1, s7
.LBB1_32:                               #   in Loop: Header=BB1_33 Depth=1
	ld	a1, %lo(statfile)(s8)
	li	a0, 10
	call	putc
	lw	a0, %lo(mb_height2)(s6)
	addiw	s0, s0, 1
	bge	s0, a0, .LBB1_54
.LBB1_33:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_37 Depth 2
	lw	a0, %lo(mb_width)(s2)
	blez	a0, .LBB1_32
# %bb.34:                               #   in Loop: Header=BB1_33 Depth=1
	li	s7, 0
	mul	s9, s1, s3
	j	.LBB1_37
.LBB1_35:                               #   in Loop: Header=BB1_37 Depth=2
	ld	a1, %lo(statfile)(s8)
	li	a0, 81
.LBB1_36:                               #   in Loop: Header=BB1_37 Depth=2
	call	putc
	ld	a1, %lo(statfile)(s8)
	li	a0, 32
	call	putc
	lw	a0, %lo(mb_width)(s2)
	addiw	s7, s7, 1
	addi	s9, s9, 96
	bge	s7, a0, .LBB1_31
.LBB1_37:                               #   Parent Loop BB1_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, %lo(mbinfo)(s4)
	add	a1, a1, s9
	lw	a2, 20(a1)
	lw	s11, 0(a1)
	li	a0, 83
	bnez	a2, .LBB1_50
# %bb.38:                               #   in Loop: Header=BB1_37 Depth=2
	andi	a2, s11, 1
	li	a0, 73
	bnez	a2, .LBB1_50
# %bb.39:                               #   in Loop: Header=BB1_37 Depth=2
	slli	a2, s11, 60
	srli	a2, a2, 62
	blt	s10, a2, .LBB1_43
# %bb.40:                               #   in Loop: Header=BB1_37 Depth=2
	li	a0, 48
	beqz	a2, .LBB1_50
# %bb.41:                               #   in Loop: Header=BB1_37 Depth=2
	lw	a1, 4(a1)
	li	a0, 98
	beq	a1, s10, .LBB1_50
# %bb.42:                               #   in Loop: Header=BB1_37 Depth=2
	li	a0, 66
	j	.LBB1_50
.LBB1_43:                               #   in Loop: Header=BB1_37 Depth=2
	bne	a2, s5, .LBB1_46
# %bb.44:                               #   in Loop: Header=BB1_37 Depth=2
	lw	a1, 4(a1)
	li	a0, 100
	beq	a1, s10, .LBB1_50
# %bb.45:                               #   in Loop: Header=BB1_37 Depth=2
	li	a0, 68
	j	.LBB1_50
.LBB1_46:                               #   in Loop: Header=BB1_37 Depth=2
	lw	a1, 4(a1)
	li	a0, 112
	beq	a1, s5, .LBB1_48
# %bb.47:                               #   in Loop: Header=BB1_37 Depth=2
	li	a0, 70
.LBB1_48:                               #   in Loop: Header=BB1_37 Depth=2
	bne	a1, s10, .LBB1_50
# %bb.49:                               #   in Loop: Header=BB1_37 Depth=2
	li	a0, 102
.LBB1_50:                               #   in Loop: Header=BB1_37 Depth=2
	ld	a1, %lo(statfile)(s8)
	call	putc
	andi	a0, s11, 16
	bnez	a0, .LBB1_35
# %bb.51:                               #   in Loop: Header=BB1_37 Depth=2
	ld	a1, %lo(statfile)(s8)
	andi	a0, s11, 3
	beqz	a0, .LBB1_53
# %bb.52:                               #   in Loop: Header=BB1_37 Depth=2
	li	a0, 32
	j	.LBB1_36
.LBB1_53:                               #   in Loop: Header=BB1_37 Depth=2
	li	a0, 78
	j	.LBB1_36
.LBB1_54:
	ld	a3, %lo(statfile)(s8)
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	li	a1, 13
	li	a2, 1
	call	fwrite
	lui	s2, %hi(mb_height2)
	lw	a0, %lo(mb_height2)(s2)
	blez	a0, .LBB1_64
# %bb.55:                               # %.preheader1
	li	s3, 0
	li	s4, 0
	lui	s5, %hi(mb_width)
	lui	s6, %hi(mbinfo)
	lui	s8, %hi(statfile)
	lui	s0, %hi(.L.str.13)
	addi	s0, s0, %lo(.L.str.13)
	li	s9, 2
	lui	s1, %hi(.L.str.14)
	addi	s1, s1, %lo(.L.str.14)
	j	.LBB1_57
.LBB1_56:                               #   in Loop: Header=BB1_57 Depth=1
	ld	a1, %lo(statfile)(s8)
	li	a0, 10
	call	putc
	lw	a0, %lo(mb_height2)(s2)
	addiw	s3, s3, 1
	bge	s3, a0, .LBB1_64
.LBB1_57:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_62 Depth 2
	lw	a0, %lo(mb_width)(s5)
	blez	a0, .LBB1_56
# %bb.58:                               #   in Loop: Header=BB1_57 Depth=1
	ld	a0, %lo(mbinfo)(s6)
	li	a1, 96
	mul	s7, s4, a1
	add	a0, a0, s7
	lw	a2, 12(a0)
	ld	a0, %lo(statfile)(s8)
	mv	a1, s0
	call	fprintf
	lw	a0, %lo(mb_width)(s5)
	addiw	s4, s4, 1
	blt	a0, s9, .LBB1_56
# %bb.59:                               # %.preheader
                                        #   in Loop: Header=BB1_57 Depth=1
	addi	s10, s7, 12
	addi	s11, s7, 108
	li	s7, 1
	j	.LBB1_62
.LBB1_60:                               #   in Loop: Header=BB1_62 Depth=2
	li	a1, 3
	li	a2, 1
	mv	a0, s1
	call	fwrite
.LBB1_61:                               #   in Loop: Header=BB1_62 Depth=2
	lw	a0, %lo(mb_width)(s5)
	addiw	s4, s4, 1
	addiw	s7, s7, 1
	addi	s10, s10, 96
	addi	s11, s11, 96
	bge	s7, a0, .LBB1_56
.LBB1_62:                               #   Parent Loop BB1_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(mbinfo)(s6)
	add	a1, a0, s11
	lw	a2, 0(a1)
	add	a0, a0, s10
	lw	a0, 0(a0)
	ld	a3, %lo(statfile)(s8)
	beq	a2, a0, .LBB1_60
# %bb.63:                               #   in Loop: Header=BB1_62 Depth=2
	mv	a0, a3
	mv	a1, s0
	call	fprintf
	j	.LBB1_61
.LBB1_64:
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	fld	fs0, 16(sp)                     # 8-byte Folded Reload
	fld	fs1, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end1:
	.size	stats, .Lfunc_end1-stats
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Y: variance=%4.4g, MSE=%3.3g (%3.3g dB), SNR=%3.3g dB\n"
	.size	.L.str, 55

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"U: variance=%4.4g, MSE=%3.3g (%3.3g dB), SNR=%3.3g dB\n"
	.size	.L.str.1, 55

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"V: variance=%4.4g, MSE=%3.3g (%3.3g dB), SNR=%3.3g dB\n"
	.size	.L.str.2, 55

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\npicture statistics:\n"
	.size	.L.str.3, 22

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" # of intra coded macroblocks:  %4d (%.1f%%)\n"
	.size	.L.str.4, 46

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" # of coded blocks:             %4d (%.1f%%)\n"
	.size	.L.str.5, 46

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" # of not coded macroblocks:    %4d (%.1f%%)\n"
	.size	.L.str.6, 46

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" # of skipped macroblocks:      %4d (%.1f%%)\n"
	.size	.L.str.7, 46

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	" # of forw. pred. macroblocks:  %4d (%.1f%%)\n"
	.size	.L.str.8, 46

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" # of backw. pred. macroblocks: %4d (%.1f%%)\n"
	.size	.L.str.9, 46

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	" # of interpolated macroblocks: %4d (%.1f%%)\n"
	.size	.L.str.10, 46

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\nmacroblock_type map:\n"
	.size	.L.str.11, 23

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\nmquant map:\n"
	.size	.L.str.12, 14

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%3d"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"   "
	.size	.L.str.14, 4

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
