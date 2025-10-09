	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"mode_decision.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	rc_store_diff                   # -- Begin function rc_store_diff
	.p2align	2
	.type	rc_store_diff,@function
rc_store_diff:                          # @rc_store_diff
# %bb.0:
	lui	a3, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(a3)
	li	a3, 0
	slli	a1, a1, 3
	add	a1, a4, a1
	ld	a4, 0(a1)
	ld	a5, 8(a1)
	ld	a6, 16(a1)
	ld	a7, 24(a1)
	ld	t0, 32(a1)
	ld	t1, 40(a1)
	ld	t2, 48(a1)
	ld	t3, 56(a1)
	ld	t4, 64(a1)
	ld	t5, 72(a1)
	ld	t6, 80(a1)
	regsw_c	x9, 0x121(x18)		# 100100100100100100001
	ld	x1, 88(a1)
	ld	x2, 96(a1)
	ld	x3, 104(a1)
	ld	x4, 112(a1)
	ld	x5, 120(a1)
	slli	x6, a0, 1
	add	a0, a4, x6
	regsw_c	x18, 0x249(x4)		# 001001001001001001001
	add	a1, a5, x6
	add	a4, a6, x6
	add	a5, a7, x6
	add	a6, t0, x6
	add	a7, t1, x6
	add	t0, t2, x6
	add	t1, t3, x6
	regsw_c	x18, 0x6ff(x4)		# 001001001011011111111
	add	t2, t4, x6
	add	t3, t5, x6
	add	t4, t6, x6
	add	t5, x1, x6
	add	t6, x2, x6
	add	x1, x3, x6
	add	x2, x4, x6
	regsw_c	x13, 0x0(x30)		# 111100110100000000000
	add	x3, x5, x6
	lui	x4, %hi(diffy+512)
	addi	x4, x4, %lo(diffy+512)
	li	x5, 32
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	regsw_c	x9, 0x536(x19)		# 100110100110100110110
	add	x6, a0, a3
	lhu	x6, 0(x6)
	add	x7, a2, a3
	lhu	x8, 0(x7)
	add	x9, a1, a3
	lhu	x9, 0(x9)
	lhu	x10, 32(x7)
	regsw_c	x31, 0x1b4(x29)		# 111011111100110110100
	subw	x6, x6, x8
	sw	x6, -512(x4)
	subw	x6, x9, x10
	add	x8, a4, a3
	lhu	x8, 0(x8)
	lhu	x9, 64(x7)
	add	x10, a5, a3
	regsw_c	x7, 0x6fc(x27)		# 110110011111011111100
	lhu	x10, 0(x10)
	lhu	x11, 96(x7)
	sw	x6, -448(x4)
	subw	x6, x8, x9
	sw	x6, -384(x4)
	subw	x6, x10, x11
	add	x8, a6, a3
	regsw_c	x9, 0x59f(x27)		# 110110100110110011111
	lhu	x8, 0(x8)
	lhu	x9, 128(x7)
	add	x10, a7, a3
	lhu	x10, 0(x10)
	lhu	x11, 160(x7)
	sw	x6, -320(x4)
	subw	x6, x8, x9
	regsw_c	x25, 0x5a6(x15)		# 011111100110110100110
	sw	x6, -256(x4)
	subw	x6, x10, x11
	add	x8, t0, a3
	lhu	x8, 0(x8)
	lhu	x9, 192(x7)
	add	x10, t1, a3
	lhu	x10, 0(x10)
	regsw_c	x30, 0x7e6(x25)		# 110011111011111100110
	lhu	x11, 224(x7)
	sw	x6, -192(x4)
	subw	x6, x8, x9
	sw	x6, -128(x4)
	subw	x6, x10, x11
	add	x8, t2, a3
	lhu	x8, 0(x8)
	regsw_c	x13, 0x4fb(x26)		# 110100110110011111011
	lhu	x9, 256(x7)
	add	x10, t3, a3
	lhu	x10, 0(x10)
	lhu	x11, 288(x7)
	sw	x6, -64(x4)
	subw	x6, x8, x9
	sw	x6, 0(x4)
	regsw_c	x13, 0x536(x30)		# 111100110110100110110
	subw	x6, x10, x11
	add	x8, t4, a3
	lhu	x8, 0(x8)
	lhu	x9, 320(x7)
	add	x10, t5, a3
	lhu	x10, 0(x10)
	lhu	x11, 352(x7)
	regsw_c	x23, 0x736(x15)		# 011111011111100110110
	sw	x6, 64(x4)
	subw	x6, x8, x9
	sw	x6, 128(x4)
	subw	x6, x10, x11
	add	x8, t6, a3
	lhu	x8, 0(x8)
	lhu	x9, 384(x7)
	regsw_c	x12, 0x7df(x27)		# 110110110011111011111
	add	x10, x1, a3
	lhu	x10, 0(x10)
	lhu	x11, 416(x7)
	sw	x6, 192(x4)
	subw	x6, x8, x9
	sw	x6, 256(x4)
	subw	x6, x10, x11
	regsw_c	x13, 0x5b3(x27)		# 110110110110110110011
	add	x8, x2, a3
	lhu	x8, 0(x8)
	lhu	x9, 448(x7)
	add	x10, x3, a3
	lhu	x10, 0(x10)
	lhu	x7, 480(x7)
	sw	x6, 320(x4)
	regsw_c	x30, 0x631(x29)		# 111011111011000110001
	subw	x6, x8, x9
	sw	x6, 384(x4)
	subw	x6, x10, x7
	sw	x6, 448(x4)
	addi	a3, a3, 2
	addi	x4, x4, 4
	bne	a3, x5, .LBB0_1
# %bb.2:
	ret
.Lfunc_end0:
	.size	rc_store_diff, .Lfunc_end0-rc_store_diff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	update_rc                       # -- Begin function update_rc
	.p2align	2
	.type	update_rc,@function
update_rc:                              # @update_rc
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	s2, %hi(img)
	ld	a2, %lo(img)(s2)
	lw	a2, 24(a2)
	bnez	a2, .LBB1_10
# %bb.1:
	mv	s1, a1
	mv	s0, a0
	call	calc_MAD
	ld	a0, %lo(img)(s2)
	lui	a1, 22
	addiw	a2, a1, 256
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	add	a2, a0, a2
	ld	a3, 40(a2)
	lw	a4, 12(a0)
	addi	a1, a1, 2047
	lw	a5, 1873(a1)
	lw	a6, 64(a2)
	slli	a4, a4, 3
	add	a3, a3, a4
	fsd	fa0, 0(a3)
	bge	a5, a6, .LBB1_10
# %bb.2:
	fld	fa5, 0(a2)
	fadd.d	fa5, fa0, fa5
	fsd	fa5, 0(a2)
	li	a3, 10
	li	a2, 1
	beq	s1, a3, .LBB1_5
# %bb.3:
	lw	a3, 364(s0)
	bnez	a3, .LBB1_5
# %bb.4:
	lw	a3, 488(s0)
	li	a2, 0
	sw	zero, 8(s0)
	sw	a3, 12(s0)
	sw	a3, 40(a0)
.LBB1_5:
	sw	a2, 496(s0)
	lw	a0, 1509(a1)
	beqz	a0, .LBB1_10
# %bb.6:
	lw	a1, 424(s0)
	lw	a0, 8(s0)
	beqz	a1, .LBB1_8
# %bb.7:
	lui	a1, %hi(DELTA_QP2)
	addi	a1, a1, %lo(DELTA_QP2)
	lui	a2, %hi(QP2)
	addi	a2, a2, %lo(QP2)
	j	.LBB1_9
.LBB1_8:
	lui	a1, %hi(DELTA_QP)
	addi	a1, a1, %lo(DELTA_QP)
	lui	a2, %hi(QP)
	addi	a2, a2, %lo(QP)
.LBB1_9:
	lw	a3, 12(s0)
	sw	a0, 0(a1)
	sw	a3, 0(a2)
.LBB1_10:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	update_rc, .Lfunc_end1-update_rc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function fast_mode_intra_decision
.LCPI2_0:
	.quad	0x3f65555555555555              # double 0.0026041666666666665
.LCPI2_1:
	.quad	0x3f90000000000000              # double 0.015625
	.text
	.globl	fast_mode_intra_decision
	.p2align	2
	.type	fast_mode_intra_decision,@function
fast_mode_intra_decision:               # @fast_mode_intra_decision
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	fsd	fs0, 80(sp)                     # 8-byte Folded Spill
	lui	s1, %hi(img)
	ld	a1, %lo(img)(s1)
	lw	a3, 12(a1)
	fmv.d	fs0, fa0
	mv	s0, a0
	li	a1, -1
	li	a2, -1
	addi	a4, sp, 8
	mv	a0, a3
	li	a3, 0
	call	getNeighbour
	ld	a0, %lo(img)(s1)
	lw	a0, 12(a0)
	addi	a4, sp, 32
	li	a1, -1
	li	a2, 0
	li	a3, 0
	call	getNeighbour
	ld	a0, %lo(img)(s1)
	lw	a0, 12(a0)
	li	a2, -1
	addi	a4, sp, 56
	li	a1, 0
	li	a3, 0
	call	getNeighbour
	lui	a0, %hi(.LCPI2_0)
	ld	a1, %lo(img)(s1)
	fld	fa5, %lo(.LCPI2_0)(a0)
	lui	a0, 22
	addiw	a0, a0, 176
	add	a0, a1, a0
	lw	a2, 8(a0)
	lw	a3, 140(a1)
	fmul.d	fa5, fs0, fa5
	addiw	a2, a2, -1
	fmv.d.x	fa4, zero
	beq	a3, a2, .LBB2_9
# %bb.1:
	lw	a0, 0(a0)
	lw	a2, 136(a1)
	addiw	a0, a0, -1
	beq	a2, a0, .LBB2_9
# %bb.2:
	lw	a0, 32(sp)
	beqz	a0, .LBB2_9
# %bb.3:
	lw	a0, 56(sp)
	beqz	a0, .LBB2_9
# %bb.4:
	lw	a2, 172(a1)
	li	a0, 0
	lui	a3, %hi(imgY_org)
	ld	a3, %lo(imgY_org)(a3)
	slli	a2, a2, 3
	lui	a4, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a4)
	add	a2, a3, a2
	lui	a3, 2
	addiw	a3, a3, -1768
	add	a3, a4, a3
	lw	a4, 156(a1)
	ld	a5, 0(a3)
	ld	a6, 0(a2)
	lw	a7, 168(a1)
	slli	a4, a4, 3
	add	a4, a5, a4
	lw	t0, 152(a1)
	ld	t1, -8(a4)
	slli	a5, a7, 1
	add	a6, a6, a5
	slli	a7, t0, 1
	add	t0, t1, a7
	addi	t1, a4, 128
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	lhu	t2, 0(a6)
	lhu	t3, 0(t0)
	ld	t4, 0(a2)
	sub	t2, t2, t3
	ld	t3, 0(a4)
	srai	t5, t2, 63
	add	t4, t4, a5
	lhu	t4, 0(t4)
	add	t3, t3, a7
	lhu	t3, -2(t3)
	xor	t2, t2, t5
	sub	a0, a0, t5
	add	a0, a0, t2
	sub	t4, t4, t3
	srai	t2, t4, 63
	xor	t3, t4, t2
	sub	t2, t3, t2
	add	a0, a0, t2
	addi	a4, a4, 8
	addi	a2, a2, 8
	addi	t0, t0, 2
	addi	a6, a6, 2
	bne	a4, t1, .LBB2_5
# %bb.6:
	lui	a2, %hi(imgUV_org)
	ld	a4, %lo(imgUV_org)(a2)
	lw	a5, 180(a1)
	ld	a6, 0(a4)
	li	a2, 0
	slli	a5, a5, 3
	ld	a7, 40(a3)
	add	a3, a6, a5
	lw	a6, 164(a1)
	ld	t2, 0(a3)
	ld	t0, 0(a7)
	lw	t1, 176(a1)
	slli	a6, a6, 3
	addi	t3, a6, -8
	add	t4, t0, t3
	ld	a4, 8(a4)
	lw	t5, 160(a1)
	ld	a7, 8(a7)
	ld	t4, 0(t4)
	add	a1, a4, a5
	addiw	t6, t5, -1
	add	t3, a7, t3
	ld	t3, 0(t3)
	add	a4, a7, a6
	add	a5, t0, a6
	regsw_c	x0, 0x10(x16)		# 100000000000000010000
	ld	x1, 0(a1)
	slli	a7, t5, 1
	add	a6, t3, a7
	add	a7, t4, a7
	slli	t0, t1, 1
	add	t1, x1, t0
	add	t2, t2, t0
	slli	t3, t6, 1
	li	t4, 64
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	lhu	t5, 0(t2)
	lhu	t6, 0(a7)
	sub	t5, t5, t6
	add	t6, a3, a2
	ld	t6, 0(t6)
	regsw_c	x8, 0x36(x19)		# 100110100000000110110
	add	x1, a5, a2
	ld	x1, 0(x1)
	srai	x2, t5, 63
	add	t6, t6, t0
	lhu	t6, 0(t6)
	add	x1, x1, t3
	lhu	x1, 0(x1)
	regsw_c	x16, 0x224(x4)		# 001001000001000100100
	xor	t5, t5, x2
	sub	a0, a0, x2
	add	a0, a0, t5
	sub	t5, t6, x1
	lhu	t6, 0(t1)
	lhu	x1, 0(a6)
	srai	x2, t5, 63
	regsw_c	x19, 0x134(x4)		# 001001001100100110100
	xor	t5, t5, x2
	sub	t5, t5, x2
	sub	t6, t6, x1
	srai	x1, t6, 63
	add	x2, a1, a2
	ld	x2, 0(x2)
	add	x3, a4, a2
	regsw_c	x29, 0x5b1(x24)		# 110001110110110110001
	ld	x3, 0(x3)
	xor	t6, t6, x1
	add	x2, x2, t0
	lhu	x2, 0(x2)
	add	x3, x3, t3
	lhu	x3, 0(x3)
	sub	t6, t6, x1
	add	a0, a0, t6
	add	a0, a0, t5
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	sub	t5, x2, x3
	srai	t6, t5, 63
	xor	t5, t5, t6
	sub	t5, t5, t6
	add	a0, a0, t5
	addi	a2, a2, 8
	addi	a6, a6, 2
	addi	a7, a7, 2
	addi	t1, t1, 2
	addi	t2, t2, 2
	bne	a2, t4, .LBB2_7
# %bb.8:
	lui	a1, %hi(.LCPI2_1)
	fld	fa4, %lo(.LCPI2_1)(a1)
	fcvt.d.l	fa3, a0
	fmul.d	fa4, fa3, fa4
.LBB2_9:
	fle.d	a0, fa5, fa4
	beqz	a0, .LBB2_11
# %bb.10:
	li	a0, 1
	sh	a0, 0(s0)
.LBB2_11:
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	fld	fs0, 80(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end2:
	.size	fast_mode_intra_decision, .Lfunc_end2-fast_mode_intra_decision
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_enc_mb_params              # -- Begin function init_enc_mb_params
	.p2align	2
	.type	init_enc_mb_params,@function
init_enc_mb_params:                     # @init_enc_mb_params
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	a4, %hi(img)
	ld	s1, %lo(img)(a4)
	lh	a5, 428(a0)
	lui	a4, 22
	addiw	a4, a4, 108
	add	a4, s1, a4
	lw	s2, 0(a4)
	mv	s0, a1
	sh	a5, 50(a1)
	addi	a5, a5, 1
	sh	a5, 52(a1)
	beqz	s2, .LBB3_2
# %bb.1:
	lw	a0, 424(a0)
	snez	a1, a0
	j	.LBB3_3
.LBB3_2:
	li	a1, 0
.LBB3_3:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lui	a5, 1048560
	sw	a5, 56(s0)
	addi	a0, a0, 2047
	lw	a5, 1845(a0)
	sh	a1, 54(s0)
	sh	a5, 46(s0)
	addi	a5, a5, -2
	lw	a6, 937(a0)
	snez	a1, a5
	sh	a1, 38(s0)
	li	a5, 1
	sh	a5, 40(s0)
	bne	a6, a5, .LBB3_6
# %bb.4:
	sh	zero, 48(s0)
	seqz	a5, a2
	sh	a5, 20(s0)
	beqz	a2, .LBB3_7
.LBB3_5:
	li	a0, 0
	li	a1, 0
	sh	zero, 34(s0)
	sh	zero, 32(s0)
	sh	zero, 30(s0)
	sh	zero, 28(s0)
	sh	zero, 26(s0)
	sh	zero, 24(s0)
	sh	zero, 22(s0)
	j	.LBB3_9
.LBB3_6:
	lw	a5, 1005(a0)
	snez	a5, a5
	sh	a5, 48(s0)
	seqz	a5, a2
	sh	a5, 20(s0)
	bnez	a2, .LBB3_5
.LBB3_7:
	lw	a2, 949(a0)
	lw	a5, 953(a0)
	snez	a2, a2
	sh	a2, 22(s0)
	lw	a2, 957(a0)
	snez	a5, a5
	sh	a5, 24(s0)
	lw	a6, 961(a0)
	snez	a2, a2
	lw	a5, 965(a0)
	sh	a2, 26(s0)
	snez	a2, a6
	sh	a2, 28(s0)
	snez	a2, a5
	lw	a5, 969(a0)
	and	a2, a2, a1
	sh	a2, 30(s0)
	lw	a7, 973(a0)
	snez	a0, a5
	and	a0, a0, a1
	sh	a0, 32(s0)
	snez	a5, a7
	and	a1, a5, a1
	sh	a1, 34(s0)
	li	a5, 1
	bnez	a6, .LBB3_10
# %bb.8:
	bnez	a2, .LBB3_10
.LBB3_9:
	or	a5, a0, a1
.LBB3_10:
	lw	a0, 24(s1)
	sh	a5, 36(s0)
	addi	a1, a0, -4
	seqz	a2, a1
	li	a1, 3
	sh	a2, 44(s0)
	bne	a0, a1, .LBB3_24
# %bb.11:
	lui	a2, %hi(si_frame_indicator)
	lw	a2, %lo(si_frame_indicator)(a2)
	beqz	a2, .LBB3_24
# %bb.12:
	sw	zero, 20(s0)
	sw	zero, 24(s0)
	sw	zero, 28(s0)
	sw	zero, 32(s0)
	sw	zero, 44(s0)
	lw	a7, 152(s1)
	lw	t1, 156(s1)
	sh	zero, 48(s0)
	sh	zero, 36(s0)
	addiw	a2, a7, 15
	addiw	a5, t1, 15
	mv	t0, a7
	blt	a2, a7, .LBB3_14
# %bb.13:
	mv	t0, a2
.LBB3_14:
	lui	a6, %hi(lrec)
	mv	a2, t1
	blt	a5, t1, .LBB3_16
# %bb.15:
	mv	a2, a5
.LBB3_16:
	ld	a5, %lo(lrec)(a6)
	slli	a6, a7, 2
	sub	a7, t0, a7
	addi	a7, a7, 1
	li	t0, -16
.LBB3_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
	mv	t2, t1
	slli	t1, t1, 3
	add	t1, a5, t1
	ld	t1, 0(t1)
	add	t1, t1, a6
	mv	t3, a7
.LBB3_18:                               #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t4, 0(t1)
	bne	t4, t0, .LBB3_22
# %bb.19:                               #   in Loop: Header=BB3_18 Depth=2
	addi	t3, t3, -1
	addi	t1, t1, 4
	bnez	t3, .LBB3_18
# %bb.20:                               #   in Loop: Header=BB3_17 Depth=1
	addi	t1, t2, 1
	bne	t2, a2, .LBB3_17
# %bb.21:
	li	a5, 0
	li	a2, 1
	j	.LBB3_23
.LBB3_22:
	li	a2, 0
	li	a5, 1
.LBB3_23:
	sh	a5, 38(s0)
	sh	a2, 40(s0)
.LBB3_24:
	bne	a0, a1, .LBB3_38
# %bb.25:
	lui	a1, %hi(sp2_frame_indicator)
	lw	a1, %lo(sp2_frame_indicator)(a1)
	beqz	a1, .LBB3_38
# %bb.26:
	lw	a6, 152(s1)
	lw	t0, 156(s1)
	addiw	a1, a6, 15
	addiw	a2, t0, 15
	mv	a7, a6
	blt	a1, a6, .LBB3_28
# %bb.27:
	mv	a7, a1
.LBB3_28:
	lui	a5, %hi(lrec)
	mv	a1, t0
	blt	a2, t0, .LBB3_30
# %bb.29:
	mv	a1, a2
.LBB3_30:
	ld	a2, %lo(lrec)(a5)
	slli	a5, a6, 2
	sub	a6, a7, a6
	addi	a6, a6, 1
	li	a7, -16
.LBB3_31:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_32 Depth 2
	mv	t1, t0
	slli	t0, t0, 3
	add	t0, a2, t0
	ld	t0, 0(t0)
	add	t0, t0, a5
	mv	t2, a6
.LBB3_32:                               #   Parent Loop BB3_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t3, 0(t0)
	bne	t3, a7, .LBB3_36
# %bb.33:                               #   in Loop: Header=BB3_32 Depth=2
	addi	t2, t2, -1
	addi	t0, t0, 4
	bnez	t2, .LBB3_32
# %bb.34:                               #   in Loop: Header=BB3_31 Depth=1
	addi	t0, t1, 1
	bne	t1, a1, .LBB3_31
# %bb.35:
	sh	zero, 48(s0)
	sw	zero, 20(s0)
	sw	zero, 24(s0)
	sw	zero, 28(s0)
	sw	zero, 32(s0)
	sw	zero, 36(s0)
	sw	zero, 44(s0)
	li	a1, 1
	j	.LBB3_37
.LBB3_36:
	li	a1, 0
	sh	zero, 46(s0)
	sh	zero, 48(s0)
	sh	zero, 20(s0)
.LBB3_37:
	sh	a1, 40(s0)
.LBB3_38:
	beqz	a3, .LBB3_41
# %bb.39:
	lw	a1, 96(a4)
	beqz	a1, .LBB3_41
# %bb.40:
	ld	a1, 284(a4)
	lw	a0, 40(s1)
	ld	a1, 40(a1)
	ld	a2, 292(a4)
	slli	a3, a0, 3
	add	a1, a1, a3
	fld	fa5, 0(a1)
	ld	a1, 40(a2)
	fsd	fa5, 0(s0)
	add	a1, a1, a3
	fld	fa5, 0(a1)
	ld	a1, 300(a4)
	fsd	fa5, 8(s0)
	addi	a1, a1, 40
	j	.LBB3_42
.LBB3_41:
	ld	a1, 284(a4)
	slli	a2, a0, 3
	add	a1, a1, a2
	lw	a0, 40(s1)
	ld	a1, 0(a1)
	ld	a3, 292(a4)
	slli	a5, a0, 3
	add	a1, a1, a5
	fld	fa5, 0(a1)
	add	a3, a3, a2
	ld	a1, 0(a3)
	fsd	fa5, 0(s0)
	add	a1, a1, a5
	fld	fa5, 0(a1)
	ld	a1, 300(a4)
	fsd	fa5, 8(s0)
	add	a1, a1, a2
.LBB3_42:
	ld	a1, 0(a1)
	slli	a0, a0, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	sw	a0, 16(s0)
	lui	a0, 22
	addiw	a0, a0, -752
	add	a0, s1, a0
	li	a2, 30
	li	a1, 0
	call	memset
	beqz	s2, .LBB3_62
# %bb.43:
	lhu	a1, 54(s0)
	lh	a7, 50(s0)
	lh	a0, 52(s0)
	beqz	a1, .LBB3_67
# %bb.44:
	blt	a0, a7, .LBB3_86
# %bb.45:
	lui	a1, %hi(listXsize)
	addi	a1, a1, %lo(listXsize)
	lui	a2, %hi(listX)
	addi	a2, a2, %lo(listX)
	lui	a3, 524288
	addiw	a3, a3, 1
	li	a4, 1
	lui	a5, 2
	j	.LBB3_47
.LBB3_46:                               #   in Loop: Header=BB3_47 Depth=1
	addi	a7, a6, 1
	beq	a6, a0, .LBB3_86
.LBB3_47:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_61 Depth 2
                                        #     Child Loop BB3_57 Depth 2
                                        #     Child Loop BB3_59 Depth 2
                                        #     Child Loop BB3_53 Depth 2
	mv	a6, a7
	slli	a7, a7, 2
	add	a7, a1, a7
	lw	t0, 0(a7)
	blez	t0, .LBB3_46
# %bb.48:                               #   in Loop: Header=BB3_47 Depth=1
	slli	t0, a6, 3
	lw	t1, 12(s1)
	add	t0, a2, t0
	ld	t0, 0(t0)
	andi	t2, t1, 1
	and	t1, t1, a3
	bnez	t2, .LBB3_55
# %bb.49:                               #   in Loop: Header=BB3_47 Depth=1
	bne	t1, a4, .LBB3_58
# %bb.50:                               # %.preheader13
                                        #   in Loop: Header=BB3_47 Depth=1
	li	t1, 0
	j	.LBB3_53
.LBB3_51:                               #   in Loop: Header=BB3_53 Depth=2
	li	t3, 2
.LBB3_52:                               #   in Loop: Header=BB3_53 Depth=2
	add	t2, t2, a5
	sw	t3, -1784(t2)
	lw	t2, 0(a7)
	addi	t1, t1, 1
	addi	t0, t0, 8
	bge	t1, t2, .LBB3_46
.LBB3_53:                               #   Parent Loop BB3_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t2, 0(t0)
	lw	t3, 0(t2)
	beq	t3, a4, .LBB3_51
# %bb.54:                               #   in Loop: Header=BB3_53 Depth=2
	addi	t3, t3, -2
	snez	t3, t3
	addi	t3, t3, -1
	andi	t3, t3, -2
	j	.LBB3_52
.LBB3_55:                               #   in Loop: Header=BB3_47 Depth=1
	bne	t1, a4, .LBB3_60
# %bb.56:                               # %.preheader17
                                        #   in Loop: Header=BB3_47 Depth=1
	li	t1, 0
.LBB3_57:                               #   Parent Loop BB3_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t2, 0(t0)
	lw	t3, 0(t2)
	add	t2, t2, a5
	addi	t3, t3, -1
	seqz	t3, t3
	slli	t3, t3, 1
	sw	t3, -1784(t2)
	lw	t2, 0(a7)
	addi	t1, t1, 1
	addi	t0, t0, 8
	blt	t1, t2, .LBB3_57
	j	.LBB3_46
.LBB3_58:                               # %.preheader15
                                        #   in Loop: Header=BB3_47 Depth=1
	li	t1, 0
.LBB3_59:                               #   Parent Loop BB3_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t2, 0(t0)
	lw	t3, 0(t2)
	add	t2, t2, a5
	addi	t3, t3, -2
	snez	t3, t3
	addi	t3, t3, -1
	andi	t3, t3, -2
	sw	t3, -1784(t2)
	lw	t2, 0(a7)
	addi	t1, t1, 1
	addi	t0, t0, 8
	blt	t1, t2, .LBB3_59
	j	.LBB3_46
.LBB3_60:                               # %.preheader19
                                        #   in Loop: Header=BB3_47 Depth=1
	li	t1, 0
.LBB3_61:                               #   Parent Loop BB3_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t2, 0(t0)
	add	t2, t2, a5
	sw	zero, -1784(t2)
	lw	t2, 0(a7)
	addi	t1, t1, 1
	addi	t0, t0, 8
	blt	t1, t2, .LBB3_61
	j	.LBB3_46
.LBB3_62:
	lui	a0, %hi(listXsize)
	lw	a1, %lo(listXsize)(a0)
	blez	a1, .LBB3_77
# %bb.63:
	lui	a0, %hi(listX)
	lw	a2, 28(s1)
	ld	a0, %lo(listX)(a0)
	slli	a1, a1, 3
	add	a1, a0, a1
	li	a3, 1
	beq	a2, a3, .LBB3_73
# %bb.64:
	li	a3, 2
	bne	a2, a3, .LBB3_75
# %bb.65:                               # %.preheader9
	lui	a2, 2
.LBB3_66:                               # =>This Inner Loop Header: Depth=1
	ld	a3, 0(a0)
	lw	a4, 0(a3)
	add	a3, a3, a2
	addi	a4, a4, -2
	snez	a4, a4
	slli	a4, a4, 1
	addi	a0, a0, 8
	sw	a4, -1784(a3)
	bne	a0, a1, .LBB3_66
	j	.LBB3_77
.LBB3_67:
	blt	a0, a7, .LBB3_86
# %bb.68:
	lui	a1, %hi(listXsize)
	addi	a1, a1, %lo(listXsize)
	lui	a2, %hi(listX)
	addi	a2, a2, %lo(listX)
	lui	a3, 2
	j	.LBB3_70
.LBB3_69:                               #   in Loop: Header=BB3_70 Depth=1
	addi	a7, a4, 1
	beq	a4, a0, .LBB3_86
.LBB3_70:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_72 Depth 2
	mv	a4, a7
	slli	a5, a7, 2
	add	a5, a1, a5
	lw	a6, 0(a5)
	blez	a6, .LBB3_69
# %bb.71:                               #   in Loop: Header=BB3_70 Depth=1
	slli	a6, a4, 3
	add	a6, a2, a6
	ld	a6, 0(a6)
	li	a7, 0
.LBB3_72:                               #   Parent Loop BB3_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a6)
	add	t0, t0, a3
	sw	zero, -1784(t0)
	lw	t0, 0(a5)
	addi	a7, a7, 1
	addi	a6, a6, 8
	blt	a7, t0, .LBB3_72
	j	.LBB3_69
.LBB3_73:                               # %.preheader7
	lui	a2, 2
.LBB3_74:                               # =>This Inner Loop Header: Depth=1
	ld	a3, 0(a0)
	lw	a4, 0(a3)
	add	a3, a3, a2
	addi	a4, a4, -1
	seqz	a4, a4
	addi	a4, a4, -1
	andi	a4, a4, -2
	addi	a0, a0, 8
	sw	a4, -1784(a3)
	bne	a0, a1, .LBB3_74
	j	.LBB3_77
.LBB3_75:                               # %.preheader5
	lui	a2, 2
.LBB3_76:                               # =>This Inner Loop Header: Depth=1
	ld	a3, 0(a0)
	add	a3, a3, a2
	addi	a0, a0, 8
	sw	zero, -1784(a3)
	bne	a0, a1, .LBB3_76
.LBB3_77:
	lui	a0, %hi(listXsize+4)
	lw	a1, %lo(listXsize+4)(a0)
	blez	a1, .LBB3_86
# %bb.78:
	lui	a0, %hi(listX+8)
	lw	a2, 28(s1)
	ld	a0, %lo(listX+8)(a0)
	slli	a1, a1, 3
	add	a1, a0, a1
	li	a3, 1
	beq	a2, a3, .LBB3_82
# %bb.79:
	li	a3, 2
	bne	a2, a3, .LBB3_84
# %bb.80:                               # %.preheader3
	lui	a2, 2
.LBB3_81:                               # =>This Inner Loop Header: Depth=1
	ld	a3, 0(a0)
	lw	a4, 0(a3)
	add	a3, a3, a2
	addi	a4, a4, -2
	snez	a4, a4
	slli	a4, a4, 1
	addi	a0, a0, 8
	sw	a4, -1784(a3)
	bne	a0, a1, .LBB3_81
	j	.LBB3_86
.LBB3_82:                               # %.preheader1
	lui	a2, 2
.LBB3_83:                               # =>This Inner Loop Header: Depth=1
	ld	a3, 0(a0)
	lw	a4, 0(a3)
	add	a3, a3, a2
	addi	a4, a4, -1
	seqz	a4, a4
	addi	a4, a4, -1
	andi	a4, a4, -2
	addi	a0, a0, 8
	sw	a4, -1784(a3)
	bne	a0, a1, .LBB3_83
	j	.LBB3_86
.LBB3_84:                               # %.preheader
	lui	a2, 2
.LBB3_85:                               # =>This Inner Loop Header: Depth=1
	ld	a3, 0(a0)
	add	a3, a3, a2
	addi	a0, a0, 8
	sw	zero, -1784(a3)
	bne	a0, a1, .LBB3_85
.LBB3_86:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	init_enc_mb_params, .Lfunc_end3-init_enc_mb_params
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function list_prediction_cost
.LCPI4_0:
	.quad	0x4010000000000000              # double 4
	.text
	.globl	list_prediction_cost
	.p2align	2
	.type	list_prediction_cost,@function
list_prediction_cost:                   # @list_prediction_cost
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
	mv	s11, a3
	mv	s3, a0
	slti	a0, a0, 2
	slli	a3, s3, 1
	neg	a0, a0
	and	a0, a0, a3
	add	a0, s11, a0
	lh	a0, 50(a0)
	li	a3, 1
	sd	a2, 8(sp)                       # 8-byte Folded Spill
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	blt	a3, s3, .LBB4_29
# %bb.1:
	slli	a0, a0, 2
	lui	s5, %hi(listXsize)
	addi	s5, s5, %lo(listXsize)
	add	s5, s5, a0
	lw	a0, 0(s5)
	blez	a0, .LBB4_49
# %bb.2:
	li	s4, 0
	li	s6, 0
	slli	s7, s3, 2
	add	s7, a4, s7
	add	a5, a5, s3
	sd	a5, 0(sp)                       # 8-byte Folded Spill
	lui	s9, %hi(img)
	ld	s2, 8(sp)                       # 8-byte Folded Reload
	slli	s2, s2, 3
	slli	s10, s3, 3
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	slli	s1, s1, 2
	li	s8, 3
	j	.LBB4_5
.LBB4_3:                                #   in Loop: Header=BB4_5 Depth=1
	beqz	s0, .LBB4_19
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	lw	a0, 0(s5)
	addi	s6, s6, 1
	slli	a1, s6, 48
	srai	s4, a1, 48
	bge	s4, a0, .LBB4_49
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	slli	s0, s6, 48
	beqz	s0, .LBB4_9
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	bnez	s3, .LBB4_9
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	ld	a0, %lo(img)(s9)
	lui	a1, 22
	add	a0, a0, a1
	lhu	a0, 472(a0)
	beqz	a0, .LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_5 Depth=1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	li	a1, 0
	mv	a2, s4
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	call	CheckReliabilityOfRef
	beqz	a0, .LBB4_4
.LBB4_9:                                #   in Loop: Header=BB4_5 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a2, 1296(a0)
	bnez	a2, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_5 Depth=1
	lw	a1, 1300(a0)
	beqz	a1, .LBB4_19
.LBB4_11:                               #   in Loop: Header=BB4_5 Depth=1
	ld	a1, %lo(img)(s9)
	lw	a1, 24(a1)
	beq	a1, s8, .LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_5 Depth=1
	bnez	a1, .LBB4_19
.LBB4_13:                               #   in Loop: Header=BB4_5 Depth=1
	beqz	a2, .LBB4_15
# %bb.14:                               #   in Loop: Header=BB4_5 Depth=1
	bnez	a1, .LBB4_17
	j	.LBB4_3
.LBB4_15:                               #   in Loop: Header=BB4_5 Depth=1
	lw	a1, 1300(a0)
	beqz	a1, .LBB4_4
# %bb.16:                               #   in Loop: Header=BB4_5 Depth=1
	ld	a1, %lo(img)(s9)
	lw	a1, 24(a1)
	beqz	a1, .LBB4_3
.LBB4_17:                               #   in Loop: Header=BB4_5 Depth=1
	bnez	s0, .LBB4_4
# %bb.18:                               #   in Loop: Header=BB4_5 Depth=1
	bne	a1, s8, .LBB4_4
.LBB4_19:                               #   in Loop: Header=BB4_5 Depth=1
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	beqz	a0, .LBB4_22
# %bb.20:                               #   in Loop: Header=BB4_5 Depth=1
	lw	a0, 0(s5)
	li	a1, 2
	bge	a0, a1, .LBB4_25
# %bb.21:                               #   in Loop: Header=BB4_5 Depth=1
	li	a0, 0
	j	.LBB4_26
.LBB4_22:                               #   in Loop: Header=BB4_5 Depth=1
	blez	s4, .LBB4_24
# %bb.23:                               #   in Loop: Header=BB4_5 Depth=1
	li	s4, 1
.LBB4_24:                               #   in Loop: Header=BB4_5 Depth=1
	fld	fa5, 8(s11)
	fadd.d	fa5, fa5, fa5
	fcvt.d.w	fa4, s4
	fmul.d	fa5, fa5, fa4
	fcvt.w.d	a0, fa5, rtz
	j	.LBB4_27
.LBB4_25:                               #   in Loop: Header=BB4_5 Depth=1
	lui	a0, %hi(refbits)
	ld	a0, %lo(refbits)(a0)
	srai	a1, s0, 48
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
.LBB4_26:                               #   in Loop: Header=BB4_5 Depth=1
	lw	a1, 16(s11)
	mul	a0, a0, a1
	sraiw	a0, a0, 16
.LBB4_27:                               #   in Loop: Header=BB4_5 Depth=1
	lui	a1, %hi(motion_cost)
	ld	a1, %lo(motion_cost)(a1)
	add	a1, a1, s2
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	srai	s0, s0, 48
	slli	s0, s0, 3
	add	a1, a1, s0
	ld	a1, 0(a1)
	add	a1, a1, s1
	lw	a1, 0(a1)
	lw	a2, 0(s7)
	addw	a0, a1, a0
	bge	a0, a2, .LBB4_4
# %bb.28:                               #   in Loop: Header=BB4_5 Depth=1
	sw	a0, 0(s7)
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	sb	s6, 0(a0)
	j	.LBB4_4
.LBB4_29:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 1089(a1)
	li	a2, 2
	bne	s3, a2, .LBB4_34
# %bb.30:
	beqz	a1, .LBB4_38
# %bb.31:
	slli	a0, a0, 2
	lui	a1, %hi(listXsize)
	addi	a1, a1, %lo(listXsize)
	add	a1, a1, a0
	lw	a3, 0(a1)
	lw	a0, 16(s11)
	li	a2, 2
	bge	a3, a2, .LBB4_40
# %bb.32:
	lw	a6, 4(a1)
	mul	a1, zero, a0
	sraiw	a1, a1, 16
	blt	a6, a2, .LBB4_41
.LBB4_33:
	lui	a2, %hi(refbits)
	lbu	a3, 1(a5)
	ld	a2, %lo(refbits)(a2)
	slli	a3, a3, 2
	add	a2, a2, a3
	lw	a2, 0(a2)
	j	.LBB4_42
.LBB4_34:
	beqz	a1, .LBB4_39
# %bb.35:
	slli	a0, a0, 2
	lui	a1, %hi(listXsize)
	addi	a1, a1, %lo(listXsize)
	add	a1, a1, a0
	lw	a3, 0(a1)
	lw	a0, 16(s11)
	li	a2, 2
	bge	a3, a2, .LBB4_44
# %bb.36:
	lw	a5, 4(a1)
	mul	a1, zero, a0
	sraiw	a1, a1, 16
	blt	a5, a2, .LBB4_45
.LBB4_37:
	lui	a2, %hi(refbits)
	ld	a2, %lo(refbits)(a2)
	lw	a2, 0(a2)
	j	.LBB4_46
.LBB4_38:
	lbu	a0, 0(a5)
	lbu	a1, 1(a5)
	fld	fa5, 8(s11)
	snez	a0, a0
	snez	a1, a1
	add	a0, a1, a0
	fcvt.d.wu	fa4, a0
	fmul.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa5
	fcvt.w.d	a1, fa5, rtz
	j	.LBB4_43
.LBB4_39:
	fld	fa5, 8(s11)
	lui	a0, %hi(.LCPI4_0)
	fld	fa4, %lo(.LCPI4_0)(a0)
	fmul.d	fa5, fa5, fa4
	fcvt.w.d	a1, fa5, rtz
	j	.LBB4_47
.LBB4_40:
	lui	a3, %hi(refbits)
	lbu	a6, 0(a5)
	ld	a3, %lo(refbits)(a3)
	slli	a6, a6, 2
	add	a3, a3, a6
	lw	a3, 0(a3)
	lw	a6, 4(a1)
	mul	a1, a3, a0
	sraiw	a1, a1, 16
	bge	a6, a2, .LBB4_33
.LBB4_41:
	li	a2, 0
.LBB4_42:
	mul	a0, a2, a0
	sraiw	a0, a0, 16
	add	a1, a0, a1
.LBB4_43:
	sw	a1, 8(a4)
	lbu	a2, 0(a5)
	lbu	a3, 1(a5)
	lw	a5, 16(s11)
	addi	s0, a4, 8
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	mv	a4, a5
	call	BIDPartitionCost
	j	.LBB4_48
.LBB4_44:
	lui	a3, %hi(refbits)
	ld	a3, %lo(refbits)(a3)
	lw	a3, 0(a3)
	lw	a5, 4(a1)
	mul	a1, a3, a0
	sraiw	a1, a1, 16
	bge	a5, a2, .LBB4_37
.LBB4_45:
	li	a2, 0
.LBB4_46:
	mul	a0, a2, a0
	sraiw	a0, a0, 16
	add	a1, a0, a1
.LBB4_47:
	slli	s0, s3, 2
	add	s0, a4, s0
	sw	a1, 0(s0)
	lw	a4, 16(s11)
	not	a5, s3
	andi	a5, a5, 1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	li	a2, 0
	li	a3, 0
	call	BPredPartitionCost
.LBB4_48:
	lw	a1, 0(s0)
	add	a0, a1, a0
	sw	a0, 0(s0)
.LBB4_49:
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
	addi	sp, sp, 128
	ret
.Lfunc_end4:
	.size	list_prediction_cost, .Lfunc_end4-list_prediction_cost
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	compute_ref_cost                # -- Begin function compute_ref_cost
	.p2align	2
	.type	compute_ref_cost,@function
compute_ref_cost:                       # @compute_ref_cost
# %bb.0:
	slli	a2, a2, 1
	add	a2, a0, a2
	lh	a2, 50(a2)
	slli	a2, a2, 2
	lui	a3, %hi(listXsize)
	addi	a3, a3, %lo(listXsize)
	add	a2, a3, a2
	lw	a2, 0(a2)
	lw	a0, 16(a0)
	li	a3, 2
	bge	a2, a3, .LBB5_2
# %bb.1:
	mul	a0, zero, a0
	sraiw	a0, a0, 16
	ret
.LBB5_2:
	lui	a2, %hi(refbits)
	ld	a2, %lo(refbits)(a2)
	slli	a1, a1, 2
	add	a1, a2, a1
	lw	a1, 0(a1)
	mul	a0, a1, a0
	sraiw	a0, a0, 16
	ret
.Lfunc_end5:
	.size	compute_ref_cost, .Lfunc_end5-compute_ref_cost
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	determine_prediction_list       # -- Begin function determine_prediction_list
	.p2align	2
	.type	determine_prediction_list,@function
determine_prediction_list:              # @determine_prediction_list
# %bb.0:
	li	a6, 1
	bne	a0, a6, .LBB6_19
# %bb.1:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 1264(a0)
	beqz	a0, .LBB6_19
# %bb.2:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	t0, 22
	lw	a7, 0(a1)
	lw	a6, 4(a1)
	addiw	t0, t0, -750
	add	a0, a0, t0
	sh	zero, 0(a0)
	sh	zero, 0(a5)
	blt	a6, a7, .LBB6_6
# %bb.3:
	lw	t0, 8(a1)
	blt	t0, a7, .LBB6_6
# %bb.4:
	lw	t0, 12(a1)
	blt	t0, a7, .LBB6_6
# %bb.5:
	lw	t0, 16(a1)
	bge	t0, a7, .LBB6_29
.LBB6_6:
	lw	t0, 8(a1)
	blt	a7, a6, .LBB6_10
# %bb.7:
	blt	t0, a6, .LBB6_10
# %bb.8:
	lw	t1, 12(a1)
	blt	t1, a6, .LBB6_10
# %bb.9:
	lw	t1, 16(a1)
	bge	t1, a6, .LBB6_28
.LBB6_10:
	lw	t1, 12(a1)
	blt	a7, t0, .LBB6_14
# %bb.11:
	blt	a6, t0, .LBB6_14
# %bb.12:
	blt	t1, t0, .LBB6_14
# %bb.13:
	lw	t2, 16(a1)
	bge	t2, t0, .LBB6_27
.LBB6_14:
	lw	t2, 16(a1)
	lw	t3, 0(a4)
	li	a1, 2
	sh	a1, 0(a3)
	blt	t0, t1, .LBB6_25
# %bb.15:
	blt	a7, t1, .LBB6_25
# %bb.16:
	blt	a6, t1, .LBB6_25
# %bb.17:
	blt	t2, t1, .LBB6_25
# %bb.18:
	add	t1, t3, t1
	sw	t1, 0(a4)
	li	a1, 1
	sh	a1, 0(a5)
	sh	a1, 0(a0)
	sb	zero, 1(a2)
	sb	zero, 0(a2)
	ret
.LBB6_19:
	lw	a2, 0(a1)
	lw	a0, 4(a1)
	blt	a0, a2, .LBB6_21
# %bb.20:
	lw	a5, 8(a1)
	bge	a5, a2, .LBB6_26
.LBB6_21:
	lw	a1, 8(a1)
	blt	a2, a0, .LBB6_24
# %bb.22:
	blt	a1, a0, .LBB6_24
# %bb.23:
	lw	a1, 0(a4)
	li	a2, 1
	sh	a2, 0(a3)
	add	a0, a1, a0
	sw	a0, 0(a4)
	ret
.LBB6_24:
	lw	a0, 0(a4)
	li	a2, 2
	sh	a2, 0(a3)
	add	a0, a0, a1
	sw	a0, 0(a4)
	ret
.LBB6_25:
	add	t2, t3, t2
	sw	t2, 0(a4)
	sh	a1, 0(a5)
	sb	zero, 1(a2)
	sb	zero, 0(a2)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a2, 22
	add	a0, a0, a2
	sh	a1, -750(a0)
	ret
.LBB6_26:
	lw	a0, 0(a4)
	sh	zero, 0(a3)
	add	a0, a0, a2
	sw	a0, 0(a4)
	ret
.LBB6_27:
	lw	a0, 0(a4)
	li	a1, 2
	sh	a1, 0(a3)
	add	a0, a0, t0
	sw	a0, 0(a4)
	ret
.LBB6_28:
	lw	a0, 0(a4)
	li	a1, 1
	sh	a1, 0(a3)
	add	a0, a0, a6
	sw	a0, 0(a4)
	ret
.LBB6_29:
	lw	a0, 0(a4)
	sh	zero, 0(a3)
	add	a0, a0, a7
	sw	a0, 0(a4)
	ret
.Lfunc_end6:
	.size	determine_prediction_list, .Lfunc_end6-determine_prediction_list
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	compute_mode_RD_cost            # -- Begin function compute_mode_RD_cost
	.p2align	2
	.type	compute_mode_RD_cost,@function
compute_mode_RD_cost:                   # @compute_mode_RD_cost
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
	lui	t0, %hi(input)
	ld	t0, %lo(input)(t0)
	addi	t0, t0, 2047
	lw	t0, 1845(t0)
	sd	a7, 8(sp)                       # 8-byte Folded Spill
	mv	s7, a6
	mv	s0, a5
	mv	s1, a4
	mv	s2, a3
	mv	s3, a2
	mv	s4, a1
	mv	s6, a0
	li	a0, 2
	addiw	s8, s6, -1
	bne	t0, a0, .LBB7_8
# %bb.1:
	li	a1, 3
	li	a0, 1
	bltu	s8, a1, .LBB7_9
# %bb.2:
	bnez	s6, .LBB7_5
# %bb.3:
	beqz	s7, .LBB7_5
# %bb.4:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1156(a0)
	j	.LBB7_7
.LBB7_5:
	li	a0, 8
	bne	s6, a0, .LBB7_8
# %bb.6:
	lhu	a0, 28(s3)
.LBB7_7:
	snez	a0, a0
	j	.LBB7_9
.LBB7_8:
	li	a0, 0
.LBB7_9:
	sw	a0, 468(s4)
	mv	a0, s6
	call	SetModesAndRefframeForBlocks
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 416(s4)
	lui	a2, 22
	add	a0, a0, a2
	sw	zero, 96(a0)
	beqz	a1, .LBB7_12
# %bb.10:
	lw	a0, 72(s4)
	li	a1, 14
	bltu	a1, a0, .LBB7_36
# %bb.11:
	lui	a1, 6
	addiw	a1, a1, 1536
	srl	a0, a1, a0
	andi	a0, a0, 1
	beqz	a0, .LBB7_36
.LBB7_12:
	seqz	a0, s6
	snez	a1, s7
	and	s7, a0, a1
	lui	s10, %hi(input)
	li	s11, 1
	li	s5, 2
	li	s9, 8
	lui	a0, 2
	addiw	a0, a0, -1508
	sd	a0, 16(sp)                      # 8-byte Folded Spill
.LBB7_13:                               # =>This Inner Loop Header: Depth=1
	fld	fa0, 0(s3)
	mv	a0, s6
	mv	a1, s2
	mv	a2, s1
	mv	a3, s0
	call	RDCost_for_macroblocks
	ld	a1, %lo(input)(s10)
	beqz	a0, .LBB7_25
# %bb.14:                               #   in Loop: Header=BB7_13 Depth=1
	addi	a0, a1, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB7_20
# %bb.15:                               #   in Loop: Header=BB7_13 Depth=1
	lui	a2, %hi(pred)
	addi	a2, a2, %lo(pred)
	bne	s6, s9, .LBB7_19
# %bb.16:                               #   in Loop: Header=BB7_13 Depth=1
	lw	a0, 468(s4)
	lui	a2, %hi(tr8x8)
	addi	a2, a2, %lo(tr8x8)
	beq	a0, s11, .LBB7_18
# %bb.17:                               #   in Loop: Header=BB7_13 Depth=1
	lui	a2, %hi(tr4x4)
	addi	a2, a2, %lo(tr4x4)
.LBB7_18:                               #   in Loop: Header=BB7_13 Depth=1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	a2, a2, a0
.LBB7_19:                               #   in Loop: Header=BB7_13 Depth=1
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lw	a0, 168(a1)
	lw	a1, 172(a1)
	call	rc_store_diff
.LBB7_20:                               #   in Loop: Header=BB7_13 Depth=1
	mv	a0, s6
	call	store_macroblock_parameters
	ld	a1, %lo(input)(s10)
	bnez	s6, .LBB7_25
# %bb.21:                               #   in Loop: Header=BB7_13 Depth=1
	addi	a0, a1, 2047
	lw	a2, 1089(a0)
	bne	a2, s5, .LBB7_25
# %bb.22:                               #   in Loop: Header=BB7_13 Depth=1
	addi	a0, a0, 1089
	lw	a0, 1176(a0)
	beqz	a0, .LBB7_25
# %bb.23:                               #   in Loop: Header=BB7_13 Depth=1
	lw	a0, 364(s4)
	bnez	a0, .LBB7_25
# %bb.24:                               #   in Loop: Header=BB7_13 Depth=1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	sh	s11, 0(a0)
.LBB7_25:                               #   in Loop: Header=BB7_13 Depth=1
	addi	a0, a1, 2047
	lw	a1, 1845(a0)
	bne	a1, s11, .LBB7_34
# %bb.26:                               #   in Loop: Header=BB7_13 Depth=1
	bgeu	s5, s8, .LBB7_31
# %bb.27:                               #   in Loop: Header=BB7_13 Depth=1
	beqz	s7, .LBB7_29
# %bb.28:                               #   in Loop: Header=BB7_13 Depth=1
	lui	a1, %hi(active_sps)
	ld	a1, %lo(active_sps)(a1)
	lw	a1, 1156(a1)
	bnez	a1, .LBB7_31
	j	.LBB7_33
.LBB7_29:                               #   in Loop: Header=BB7_13 Depth=1
	bne	s6, s9, .LBB7_33
# %bb.30:                               #   in Loop: Header=BB7_13 Depth=1
	lhu	a1, 28(s3)
	beqz	a1, .LBB7_33
.LBB7_31:                               #   in Loop: Header=BB7_13 Depth=1
	lw	a1, 468(s4)
	bnez	a1, .LBB7_33
# %bb.32:                               #   in Loop: Header=BB7_13 Depth=1
	sw	s11, 468(s4)
	j	.LBB7_13
.LBB7_33:
	sw	zero, 468(s4)
.LBB7_34:
	beqz	s7, .LBB7_36
# %bb.35:
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	lhu	a1, 0(a1)
	beqz	a1, .LBB7_37
.LBB7_36:
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
	addi	sp, sp, 128
	ret
.LBB7_37:
	lhu	a1, 20(s3)
	beqz	a1, .LBB7_36
# %bb.38:
	lw	a1, 364(s4)
	beqz	a1, .LBB7_36
# %bb.39:
	andi	a1, a1, 15
	li	a2, 15
	beq	a1, a2, .LBB7_36
# %bb.40:
	lw	a0, 1097(a0)
	bnez	a0, .LBB7_36
# %bb.41:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	fld	fa0, 0(s3)
	add	a0, a0, a1
	li	a1, 1
	sw	a1, 96(a0)
	li	a0, 0
	mv	a1, s2
	mv	a2, s1
	mv	a3, s0
	call	RDCost_for_macroblocks
	beqz	a0, .LBB7_36
# %bb.42:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB7_44
# %bb.43:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lw	a0, 168(a1)
	lw	a1, 172(a1)
	lui	a2, %hi(pred)
	addi	a2, a2, %lo(pred)
	call	rc_store_diff
.LBB7_44:
	li	a0, 0
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
	addi	sp, sp, 128
	tail	store_macroblock_parameters
.Lfunc_end7:
	.size	compute_mode_RD_cost, .Lfunc_end7-compute_mode_RD_cost
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function submacroblock_mode_decision
.LCPI8_0:
	.quad	0x46293e5939a08cea              # double 1.0E+30
	.text
	.globl	submacroblock_mode_decision
	.p2align	2
	.type	submacroblock_mode_decision,@function
submacroblock_mode_decision:            # @submacroblock_mode_decision
# %bb.0:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)                    # 8-byte Folded Spill
	sd	s0, 2016(sp)                    # 8-byte Folded Spill
	sd	s1, 2008(sp)                    # 8-byte Folded Spill
	sd	s2, 2000(sp)                    # 8-byte Folded Spill
	sd	s3, 1992(sp)                    # 8-byte Folded Spill
	sd	s4, 1984(sp)                    # 8-byte Folded Spill
	sd	s5, 1976(sp)                    # 8-byte Folded Spill
	sd	s6, 1968(sp)                    # 8-byte Folded Spill
	sd	s7, 1960(sp)                    # 8-byte Folded Spill
	sd	s8, 1952(sp)                    # 8-byte Folded Spill
	sd	s9, 1944(sp)                    # 8-byte Folded Spill
	sd	s10, 1936(sp)                   # 8-byte Folded Spill
	sd	s11, 1928(sp)                   # 8-byte Folded Spill
	fsd	fs0, 1920(sp)                   # 8-byte Folded Spill
	fsd	fs1, 1912(sp)                   # 8-byte Folded Spill
	addi	sp, sp, -1840
	sd	a7, 248(sp)                     # 8-byte Folded Spill
	mv	s10, a6
	sd	a5, 304(sp)                     # 8-byte Folded Spill
	mv	t0, a3
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	mv	s7, a0
	addi	a3, sp, 2047
	addi	a3, a3, 1661
	lui	a0, 1
	add	a0, sp, a0
	ld	a7, -208(a0)
	sh	zero, 42(a3)
	li	a0, -256
	sh	a0, 40(a3)
	sw	zero, 20(a3)
	sd	zero, 12(a3)
	lui	a0, 524288
	lui	a1, %hi(img)
	ld	s0, %lo(img)(a1)
	addiw	a0, a0, -1
	sd	a0, 4(a3)
	sw	zero, 0(a3)
	beqz	a7, .LBB8_2
# %bb.1:
	lui	a0, 4
	addiw	a0, a0, 1864
	lui	a1, 7
	j	.LBB8_3
.LBB8_2:
	lui	a0, 3
	addiw	a0, a0, 1864
	lui	a1, 5
.LBB8_3:
	addiw	s2, a1, 840
	srliw	a1, s10, 31
	lw	a3, 12(s0)
	ld	a4, 128(s0)
	add	a5, s10, a1
	andi	a1, a5, -2
	slli	a3, a3, 3
	add	a3, a4, a3
	ld	a3, 0(a3)
	subw	a1, s10, a1
	slliw	s1, a1, 1
	slli	t1, s1, 3
	add	a3, a3, t1
	ld	a3, 0(a3)
	slliw	a5, a5, 2
	andi	a6, a5, -8
	add	a3, a3, a6
	sw	zero, 0(a3)
	lw	a3, 12(s0)
	slli	a3, a3, 3
	add	a3, a4, a3
	ld	a3, 0(a3)
	addi	a5, s1, 1
	slli	t2, a5, 3
	add	a3, a3, t2
	ld	a3, 0(a3)
	add	a3, a3, a6
	sw	zero, 0(a3)
	lw	a3, 12(s0)
	slli	a3, a3, 3
	add	a3, a4, a3
	ld	a3, 0(a3)
	sd	t1, 296(sp)                     # 8-byte Folded Spill
	add	a3, a3, t1
	ld	a3, 0(a3)
	sd	a6, 160(sp)                     # 8-byte Folded Spill
	srai	a5, a6, 2
	sd	a5, 272(sp)                     # 8-byte Folded Spill
	addi	a5, a5, 1
	slli	a5, a5, 2
	add	a3, a3, a5
	sw	zero, 0(a3)
	lw	a3, 12(s0)
	slli	a3, a3, 3
	add	a3, a4, a3
	ld	a3, 0(a3)
	sd	t2, 288(sp)                     # 8-byte Folded Spill
	add	a3, a3, t2
	ld	a3, 0(a3)
	sd	a5, 280(sp)                     # 8-byte Folded Spill
	add	a3, a3, a5
	sw	zero, 0(a3)
	li	a3, 5
	sd	a3, 544(sp)                     # 8-byte Folded Spill
	beqz	a7, .LBB8_5
# %bb.4:
	li	a3, 2
	sd	a3, 544(sp)                     # 8-byte Folded Spill
.LBB8_5:
	sd	t0, 264(sp)                     # 8-byte Folded Spill
	seqz	a3, a7
	add	s5, s0, a0
	slliw	s8, a1, 3
	sd	a7, 408(sp)                     # 8-byte Folded Spill
	beqz	a7, .LBB8_7
# %bb.6:
	li	a0, 1
	sw	a0, 468(a2)
.LBB8_7:
	lui	a0, 1
	add	a0, sp, a0
	ld	a0, -216(a0)
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	lui	a0, 1
	add	a0, sp, a0
	ld	a0, -224(a0)
	sd	a0, 552(sp)                     # 8-byte Folded Spill
	addi	a0, a3, 2
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	add	a0, s0, s2
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	slli	a3, a3, 1
	sd	a3, 64(sp)                      # 8-byte Folded Spill
	lui	a0, 3
	addiw	s4, a0, 312
	lui	s11, 2
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	addiw	s9, s11, -2020
	lui	s6, 1
	addiw	s6, s6, 4
	call	store_coding_state
	sd	zero, 416(sp)                   # 8-byte Folded Spill
	sd	zero, 424(sp)                   # 8-byte Folded Spill
	sd	zero, 440(sp)                   # 8-byte Folded Spill
	sd	zero, 432(sp)                   # 8-byte Folded Spill
	sd	zero, 448(sp)                   # 8-byte Folded Spill
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	seqz	s3, a0
	addi	a0, s7, 20
	sd	a0, 536(sp)                     # 8-byte Folded Spill
	slli	a0, s10, 1
	andi	a1, a0, 2
	sd	a1, 512(sp)                     # 8-byte Folded Spill
	andi	a1, s10, 2
	sd	a1, 504(sp)                     # 8-byte Folded Spill
	sd	s7, 528(sp)                     # 8-byte Folded Spill
	addi	a1, s7, 50
	sd	a1, 168(sp)                     # 8-byte Folded Spill
	ld	a3, 120(sp)                     # 8-byte Folded Reload
	add	a0, a3, a0
	addiw	a1, s11, -2044
	add	a1, a0, a1
	sd	a1, 480(sp)                     # 8-byte Folded Spill
	addiw	a1, s11, -2036
	add	a0, a0, a1
	sd	a0, 472(sp)                     # 8-byte Folded Spill
	add	a0, a3, s10
	addiw	a1, s11, -2028
	add	a1, a0, a1
	sd	a1, 464(sp)                     # 8-byte Folded Spill
	addiw	a1, s11, -2024
	add	a0, a0, a1
	sd	a0, 456(sp)                     # 8-byte Folded Spill
	slli	a0, s10, 2
	andi	a0, a0, 24
	add	a0, a0, s1
	li	a1, 51
	sllw	a0, a1, a0
	not	a0, a0
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	add	a0, a3, s9
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	addiw	a0, s11, -996
	add	a0, a3, a0
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	addi	s7, sp, 1656
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	slli	a0, a1, 6
	slli	s11, s8, 2
	addi	a2, s8, 1
	sd	a2, 392(sp)                     # 8-byte Folded Spill
	addi	a2, s8, 2
	sd	a2, 384(sp)                     # 8-byte Folded Spill
	addi	a2, s8, 3
	sd	a2, 376(sp)                     # 8-byte Folded Spill
	addi	a2, s8, 4
	sd	a2, 368(sp)                     # 8-byte Folded Spill
	addi	a2, s8, 5
	sd	a2, 360(sp)                     # 8-byte Folded Spill
	addi	a2, s8, 6
	sd	a2, 352(sp)                     # 8-byte Folded Spill
	addi	a2, s8, 7
	sd	a2, 344(sp)                     # 8-byte Folded Spill
	add	a4, a0, s11
	addi	s1, sp, 2047
	addi	s1, s1, 633
	add	s1, a4, s1
	sd	s5, 112(sp)                     # 8-byte Folded Spill
	add	s5, a4, s5
	add	a5, a3, a0
	add	s6, s11, s6
	sd	s6, 400(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(mprRGB)
	addi	a2, a2, %lo(mprRGB)
	add	a2, a2, a0
	sd	a2, 232(sp)                     # 8-byte Folded Spill
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	addi	a0, a0, 16
	lui	a2, %hi(rec_resG)
	addi	a2, a2, %lo(rec_resG)
	add	a2, a2, a0
	sd	a2, 224(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(resTrans_R)
	addi	a2, a2, %lo(resTrans_R)
	add	a2, a2, a0
	sd	a2, 216(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(resTrans_B)
	addi	a2, a2, %lo(resTrans_B)
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	add	a0, a2, a0
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	sd	a5, 240(sp)                     # 8-byte Folded Spill
	addi	a0, a5, 512
	sd	a0, 336(sp)                     # 8-byte Folded Spill
	slli	a2, a1, 5
	sd	s8, 520(sp)                     # 8-byte Folded Spill
	slli	a0, s8, 1
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	add	a2, a2, a0
	add	a0, a3, s9
	add	a0, a2, a0
	addi	a0, a0, 512
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	add	s4, a2, s4
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	addi	s4, s4, 14
	sd	s4, 136(sp)                     # 8-byte Folded Spill
	sd	s9, 40(sp)                      # 8-byte Folded Spill
	add	a0, a3, s9
	add	a0, a4, a0
	addi	a0, a0, 1052
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	addi	a1, a1, 8
	sd	a1, 328(sp)                     # 8-byte Folded Spill
	add	s0, s2, s0
	add	s0, a4, s0
	addi	s6, s0, 1024
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	add	s7, s7, a4
	fmv.d.x	fs0, zero
	lui	a0, %hi(.LCPI8_0)
	fld	fs1, %lo(.LCPI8_0)(a0)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 488(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(b8_mode_table)
	addi	a2, a2, %lo(b8_mode_table)
	lui	a0, 22
	addiw	a0, a0, 100
	sd	a0, 320(sp)                     # 8-byte Folded Spill
	lui	s0, %hi(si_frame_indicator)
	li	s2, 3
	sd	s10, 496(sp)                    # 8-byte Folded Spill
	ld	s4, 408(sp)                     # 8-byte Folded Reload
	addi	t0, sp, 2047
	addi	t0, t0, 1661
	j	.LBB8_11
.LBB8_8:                                #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(cs_b8)
	ld	a0, %lo(cs_b8)(a0)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	s8, x11
	call	store_coding_state
	fmv.d	fs1, fs0
	sd	s8, 488(sp)                     # 8-byte Folded Spill
.LBB8_9:                                #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	call	reset_coding_state
	addi	t0, sp, 2047
	addi	t0, t0, 1661
	lui	a2, %hi(b8_mode_table)
	addi	a2, a2, %lo(b8_mode_table)
.LBB8_10:                               #   in Loop: Header=BB8_11 Depth=1
	addi	s3, s3, 1
	ld	a0, 544(sp)                     # 8-byte Folded Reload
	bltu	s3, a0, .LBB8_11
	j	.LBB8_116
.LBB8_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_68 Depth 2
                                        #     Child Loop BB8_70 Depth 2
                                        #     Child Loop BB8_72 Depth 2
                                        #     Child Loop BB8_74 Depth 2
                                        #     Child Loop BB8_76 Depth 2
                                        #     Child Loop BB8_78 Depth 2
                                        #     Child Loop BB8_80 Depth 2
                                        #     Child Loop BB8_82 Depth 2
                                        #     Child Loop BB8_84 Depth 2
                                        #     Child Loop BB8_92 Depth 2
                                        #     Child Loop BB8_87 Depth 2
	slli	a0, s3, 2
	add	a0, a2, a0
	lw	s8, 0(a0)
	ld	a0, 552(sp)                     # 8-byte Folded Reload
	sw	zero, 0(a0)
	slli	a0, s8, 1
	ld	a1, 536(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lhu	a0, 0(a0)
	beqz	a0, .LBB8_10
# %bb.12:                               #   in Loop: Header=BB8_11 Depth=1
	beqz	s4, .LBB8_15
# %bb.13:                               #   in Loop: Header=BB8_11 Depth=1
	snez	a0, s3
	addi	a1, s3, -5
	snez	a1, a1
	and	a0, a0, a1
	bnez	a0, .LBB8_15
# %bb.14:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1156(a0)
	beqz	a0, .LBB8_10
.LBB8_15:                               #   in Loop: Header=BB8_11 Depth=1
	sext.w	a0, s3
	sd	zero, 28(t0)
	li	a1, 5
	beq	a0, a1, .LBB8_17
# %bb.16:                               #   in Loop: Header=BB8_11 Depth=1
	bnez	a0, .LBB8_22
.LBB8_17:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	bnez	a0, .LBB8_51
# %bb.18:                               #   in Loop: Header=BB8_11 Depth=1
	sw	zero, 24(t0)
	addi	a1, sp, 2047
	addi	a1, a1, 1685
	mv	a0, s10
	call	Get_Direct_Cost8x8
	lui	a1, 524288
	addiw	a1, a1, -1
	beq	a0, a1, .LBB8_20
# %bb.19:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a2, 248(sp)                     # 8-byte Folded Reload
	lw	a2, 0(a2)
	bne	a2, a1, .LBB8_37
.LBB8_20:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a2, 524288
	addi	a2, a2, -1
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a3)
	addi	t0, sp, 2047
	addi	t0, t0, 1661
	bnez	s4, .LBB8_39
# %bb.21:                               #   in Loop: Header=BB8_11 Depth=1
	mv	a1, a0
	j	.LBB8_50
.LBB8_22:                               #   in Loop: Header=BB8_11 Depth=1
	mv	s9, s10
	ld	s10, 528(sp)                    # 8-byte Folded Reload
	lw	a2, 16(s10)
	mv	a0, s8
	mv	a1, s9
	addi	s4, sp, 2047
	addi	s4, s4, 1661
	call	PartitionMotionSearch
	lui	a0, 524288
	addi	a0, a0, -1
	sd	a0, 312(sp)                     # 8-byte Folded Spill
	sw	a0, 4(s4)
	addi	a0, sp, 560
	li	a2, 72
	mv	a1, s10
	call	memcpy
	addi	a3, sp, 560
	addi	a4, sp, 2047
	addi	a4, a4, 1665
	addi	a5, sp, 2047
	addi	a5, a5, 1701
	li	a0, 0
	mv	a1, s9
	mv	a2, s8
	call	list_prediction_cost
	addi	t0, sp, 2047
	addi	t0, t0, 1661
	lui	a7, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a7)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a3, 2
	add	a0, a0, a3
	ld	a0, -1712(a0)
	lw	a2, 148(a1)
	ld	a0, 0(a0)
	lw	a1, 144(a1)
	ld	a5, 504(sp)                     # 8-byte Folded Reload
	addw	a5, a2, a5
	slli	s4, a5, 3
	add	a0, a0, s4
	ld	a0, 0(a0)
	lbu	s9, 40(t0)
	ld	a2, 512(sp)                     # 8-byte Folded Reload
	addw	t4, a1, a2
	add	a0, a0, t4
	sb	s9, 0(a0)
	ld	a0, %lo(enc_picture)(a7)
	addiw	a1, a3, -1712
	add	a3, a0, a1
	lh	a2, 50(s10)
	ld	a4, 8(a3)
	li	t1, 264
	mul	a2, a2, t1
	ld	a4, 0(a4)
	add	a2, a0, a2
	slli	a0, s9, 3
	add	a2, a2, a0
	add	a4, a4, s4
	ld	a4, 0(a4)
	ld	a6, 24(a2)
	slli	a2, t4, 3
	add	a4, a4, a2
	sd	a6, 0(a4)
	ld	a3, 0(a3)
	ld	a3, 0(a3)
	add	a3, a3, s4
	ld	a3, 0(a3)
	addi	t5, t4, 1
	add	a3, a3, t5
	sb	s9, 0(a3)
	ld	a3, %lo(enc_picture)(a7)
	add	a4, a3, a1
	ld	a6, 8(a4)
	lh	a7, 50(s10)
	ld	a6, 0(a6)
	addiw	t6, a5, 2
	mul	a7, a7, t1
	add	a3, a3, a7
	add	a6, a6, s4
	ld	a6, 0(a6)
	add	a3, a3, a0
	ld	a7, 24(a3)
	slli	a3, t5, 3
	add	a6, a6, a3
	regsw_c	x4, 0x0(x16)		# 100000010000000000000
	addi	x1, a5, 1
	sd	a7, 0(a6)
	bge	x1, t6, .LBB8_24
# %bb.23:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a4, 0(a4)
	ld	a4, 0(a4)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	slli	a5, x1, 3
	add	a4, a4, a5
	ld	a4, 0(a4)
	add	a4, a4, t4
	sb	s9, 0(a4)
	lui	t2, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(t2)
	add	a1, a4, a1
	ld	a6, 8(a1)
	ld	t1, 168(sp)                     # 8-byte Folded Reload
	lh	a7, 0(t1)
	ld	a6, 0(a6)
	li	t3, 264
	mul	a7, a7, t3
	add	a4, a4, a7
	add	a4, a4, a0
	add	a6, a6, a5
	ld	a6, 0(a6)
	ld	a4, 24(a4)
	add	a2, a6, a2
	sd	a4, 0(a2)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	add	a1, a1, a5
	ld	a1, 0(a1)
	add	a1, a1, t5
	sb	s9, 0(a1)
	ld	a1, %lo(enc_picture)(t2)
	lui	a2, 2
	add	a2, a1, a2
	ld	a2, -1704(a2)
	lh	a4, 0(t1)
	ld	a2, 0(a2)
	mul	a4, a4, t3
	add	a1, a1, a4
	add	a0, a1, a0
	add	a2, a2, a5
	ld	a1, 0(a2)
	ld	a0, 24(a0)
	add	a1, a1, a3
	sd	a0, 0(a1)
.LBB8_24:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB8_29
# %bb.25:                               #   in Loop: Header=BB8_11 Depth=1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sd	x1, 176(sp)                     # 8-byte Folded Spill
	sd	t6, 184(sp)                     # 8-byte Folded Spill
	sd	t5, 192(sp)                     # 8-byte Folded Spill
	sd	t4, 200(sp)                     # 8-byte Folded Spill
	ld	a0, 312(sp)                     # 8-byte Folded Reload
	sw	a0, 8(t0)
	sw	a0, 12(t0)
	addi	a0, sp, 560
	li	a2, 72
	ld	s9, 528(sp)                     # 8-byte Folded Reload
	mv	a1, s9
	addi	s10, sp, 2047
	addi	s10, s10, 1661
	call	memcpy
	li	a0, 1
	addi	a3, sp, 560
	addi	a4, sp, 2047
	addi	a4, a4, 1665
	addi	a5, sp, 2047
	addi	a5, a5, 1701
	ld	a1, 496(sp)                     # 8-byte Folded Reload
	mv	a2, s8
	call	list_prediction_cost
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	lw	a4, 16(s9)
	beqz	a0, .LBB8_30
# %bb.26:                               #   in Loop: Header=BB8_11 Depth=1
	lh	a0, 50(s9)
	slli	a0, a0, 2
	lui	a1, %hi(listXsize)
	addi	a1, a1, %lo(listXsize)
	add	a1, a1, a0
	lw	a0, 0(a1)
	li	a2, 2
	bge	a0, a2, .LBB8_31
# %bb.27:                               #   in Loop: Header=BB8_11 Depth=1
	li	a0, 0
	addi	a5, sp, 2047
	addi	a5, a5, 1661
	lw	a1, 4(a1)
	lbu	a3, 41(a5)
	li	a2, 2
	blt	a1, a2, .LBB8_32
.LBB8_28:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a1, %hi(refbits)
	ld	a1, %lo(refbits)(a1)
	slli	a2, a3, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	j	.LBB8_33
.LBB8_29:                               #   in Loop: Header=BB8_11 Depth=1
	lw	a0, 4(t0)
	sh	zero, 42(t0)
	ld	a1, 552(sp)                     # 8-byte Folded Reload
	sw	a0, 0(a1)
	j	.LBB8_36
.LBB8_30:                               #   in Loop: Header=BB8_11 Depth=1
	lbu	a2, 40(s10)
	lbu	a3, 41(s10)
	fld	fa5, 8(s9)
	snez	a0, a2
	snez	a1, a3
	add	a0, a1, a0
	fcvt.d.wu	fa4, a0
	fmul.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa5
	fcvt.w.d	s9, fa5, rtz
	j	.LBB8_34
.LBB8_31:                               #   in Loop: Header=BB8_11 Depth=1
	addi	a5, sp, 2047
	addi	a5, a5, 1661
	lbu	a0, 40(a5)
	lui	a2, %hi(refbits)
	ld	a2, %lo(refbits)(a2)
	slli	a0, a0, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a1, 4(a1)
	lbu	a3, 41(a5)
	li	a2, 2
	bge	a1, a2, .LBB8_28
.LBB8_32:                               #   in Loop: Header=BB8_11 Depth=1
	li	a1, 0
.LBB8_33:                               #   in Loop: Header=BB8_11 Depth=1
	mul	a0, a0, a4
	sraiw	s9, a0, 16
	lbu	a2, 40(a5)
	mul	a0, a1, a4
	sraiw	a0, a0, 16
	add	s9, a0, s9
	addi	s10, sp, 2047
	addi	s10, s10, 1661
.LBB8_34:                               #   in Loop: Header=BB8_11 Depth=1
	mv	a0, s8
	ld	a1, 496(sp)                     # 8-byte Folded Reload
	call	BIDPartitionCost
	add	a0, a0, s9
	sw	a0, 12(s10)
	addi	a1, sp, 2047
	addi	a1, a1, 1665
	addi	a2, sp, 2047
	addi	a2, a2, 1701
	addi	a3, sp, 2047
	addi	a3, a3, 1703
	addi	a5, sp, 2047
	addi	a5, a5, 1659
	mv	a0, s8
	ld	a4, 552(sp)                     # 8-byte Folded Reload
	call	determine_prediction_list
	lui	a1, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a1)
	lui	a2, 2
	add	a0, a0, a2
	ld	a0, -1712(a0)
	ld	a0, 0(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	lbu	s9, 40(s10)
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	add	a0, a0, a5
	sb	s9, 0(a0)
	ld	a0, %lo(enc_picture)(a1)
	add	a0, a0, a2
	ld	a0, -1712(a0)
	ld	a0, 8(a0)
	add	a0, a0, s4
	ld	a1, 0(a0)
	lbu	a0, 41(s10)
	lui	a4, %hi(enc_picture)
	add	a1, a1, a5
	sb	a0, 0(a1)
	ld	a1, %lo(enc_picture)(a4)
	add	a1, a1, a2
	ld	a1, -1712(a1)
	ld	a1, 0(a1)
	add	a1, a1, s4
	ld	a1, 0(a1)
	ld	a6, 192(sp)                     # 8-byte Folded Reload
	add	a1, a1, a6
	sb	s9, 0(a1)
	ld	a1, %lo(enc_picture)(a4)
	add	a1, a1, a2
	ld	a1, -1712(a1)
	ld	a1, 8(a1)
	add	a1, a1, s4
	ld	a1, 0(a1)
	add	a1, a1, a6
	sb	a0, 0(a1)
	addi	t0, sp, 2047
	addi	t0, t0, 1661
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	ld	a7, 176(sp)                     # 8-byte Folded Reload
	bge	a7, a1, .LBB8_36
# %bb.35:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a1, %lo(enc_picture)(a4)
	add	a1, a1, a2
	ld	a1, -1712(a1)
	ld	a1, 0(a1)
	lui	a3, 2
	slli	a2, a7, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	add	a1, a1, a5
	sb	s9, 0(a1)
	ld	a1, %lo(enc_picture)(a4)
	add	a1, a1, a3
	ld	a1, -1712(a1)
	ld	a1, 8(a1)
	add	a1, a1, a2
	ld	a1, 0(a1)
	add	a1, a1, a5
	sb	a0, 0(a1)
	ld	a1, %lo(enc_picture)(a4)
	add	a1, a1, a3
	ld	a1, -1712(a1)
	ld	a1, 0(a1)
	add	a1, a1, a2
	ld	a1, 0(a1)
	add	a1, a1, a6
	sb	s9, 0(a1)
	ld	a1, %lo(enc_picture)(a4)
	add	a1, a1, a3
	ld	a1, -1712(a1)
	ld	a1, 8(a1)
	add	a1, a1, a2
	ld	a1, 0(a1)
	add	a1, a1, a6
	sb	a0, 0(a1)
.LBB8_36:                               #   in Loop: Header=BB8_11 Depth=1
	ld	s10, 496(sp)                    # 8-byte Folded Reload
	ld	s4, 408(sp)                     # 8-byte Folded Reload
	j	.LBB8_52
.LBB8_37:                               #   in Loop: Header=BB8_11 Depth=1
	add	a2, a2, a0
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a3)
	beqz	s4, .LBB8_49
# %bb.38:                               #   in Loop: Header=BB8_11 Depth=1
	addi	t0, sp, 2047
	addi	t0, t0, 1661
	lw	a2, 24(t0)
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	lw	a3, 0(a3)
	add	a2, a3, a2
.LBB8_39:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a3)
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	addi	a2, a2, 2047
	lw	a3, 1845(a2)
	li	a4, 2
	beq	a3, a4, .LBB8_47
# %bb.40:                               #   in Loop: Header=BB8_11 Depth=1
	li	a4, 1
	bne	a3, a4, .LBB8_48
# %bb.41:                               #   in Loop: Header=BB8_11 Depth=1
	lw	a3, 24(t0)
	blt	a3, a0, .LBB8_46
# %bb.42:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a5, 528(sp)                     # 8-byte Folded Reload
	lhu	a4, 30(a5)
	beqz	a4, .LBB8_46
# %bb.43:                               #   in Loop: Header=BB8_11 Depth=1
	lhu	a4, 32(a5)
	beqz	a4, .LBB8_46
# %bb.44:                               #   in Loop: Header=BB8_11 Depth=1
	lhu	a4, 34(a5)
	beqz	a4, .LBB8_46
# %bb.45:                               #   in Loop: Header=BB8_11 Depth=1
	mv	a3, a0
.LBB8_46:                               #   in Loop: Header=BB8_11 Depth=1
	mv	a0, a3
	j	.LBB8_48
.LBB8_47:                               #   in Loop: Header=BB8_11 Depth=1
	lw	a0, 24(t0)
.LBB8_48:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a3, 552(sp)                     # 8-byte Folded Reload
	sw	a0, 0(a3)
	lw	a0, 1845(a2)
	li	a2, 2
	beq	a0, a2, .LBB8_50
	j	.LBB8_51
.LBB8_49:                               #   in Loop: Header=BB8_11 Depth=1
	mv	a1, a0
	addi	t0, sp, 2047
	addi	t0, t0, 1661
.LBB8_50:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 552(sp)                     # 8-byte Folded Reload
	sw	a1, 0(a0)
.LBB8_51:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, %hi(direct_ref_idx)
	ld	a1, %lo(direct_ref_idx)(a1)
	lw	a2, 148(a0)
	ld	a3, 0(a1)
	lw	a0, 144(a0)
	ld	a4, 504(sp)                     # 8-byte Folded Reload
	addw	a2, a2, a4
	slli	a2, a2, 3
	add	a3, a3, a2
	ld	a3, 0(a3)
	ld	a1, 8(a1)
	ld	a4, 512(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a4
	add	a3, a3, a0
	lui	a4, %hi(direct_pdir)
	ld	a4, %lo(direct_pdir)(a4)
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	s9, 0(a3)
	add	a2, a4, a2
	ld	a2, 0(a2)
	add	a1, a1, a0
	lbu	a1, 0(a1)
	slli	a0, a0, 1
	add	a0, a2, a0
	lh	a0, 0(a0)
	sb	s9, 40(t0)
	sb	a1, 41(t0)
	sh	a0, 42(t0)
.LBB8_52:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	beqz	a0, .LBB8_54
# %bb.53:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 528(sp)                     # 8-byte Folded Reload
	fld	fa0, 0(a0)
	lh	a4, 42(t0)
	lbu	a6, 41(t0)
	addi	a0, sp, 2047
	addi	a0, a0, 1661
	addi	a1, sp, 2047
	addi	a1, a1, 1689
	mv	a2, s10
	mv	a3, s8
	mv	a5, s9
	call	RDCost_for_8x8blocks
	addi	t0, sp, 2047
	addi	t0, t0, 1661
	fmv.d	fs0, fa0
	j	.LBB8_58
.LBB8_54:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 552(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
	lui	a1, 524288
	addiw	a1, a1, -1
	beq	a0, a1, .LBB8_58
# %bb.55:                               #   in Loop: Header=BB8_11 Depth=1
	lh	a1, 42(t0)
	sgtz	a2, a1
	slli	a2, a2, 1
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	add	a2, a3, a2
	lh	a2, 0(a2)
	slli	a2, a2, 2
	lui	a3, %hi(listXsize)
	addi	a3, a3, %lo(listXsize)
	add	a2, a3, a2
	lw	a3, 0(a2)
	ld	a2, 528(sp)                     # 8-byte Folded Reload
	lw	s4, 16(a2)
	li	a2, 0
	li	a4, 2
	blt	a3, a4, .LBB8_57
# %bb.56:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(refbits)
	ld	s10, %lo(refbits)(a0)
	mv	a0, s8
	call	B8Mode2Value
	addi	t0, sp, 2047
	addi	t0, t0, 1661
	slli	a0, a0, 2
	add	a0, s10, a0
	ld	s10, 496(sp)                    # 8-byte Folded Reload
	lw	a2, 0(a0)
	ld	a0, 552(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
.LBB8_57:                               #   in Loop: Header=BB8_11 Depth=1
	mul	a1, a2, s4
	sraiw	a1, a1, 16
	add	a0, a0, a1
	addi	a0, a0, -1
	ld	a1, 552(sp)                     # 8-byte Folded Reload
	sw	a0, 0(a1)
	ld	s4, 408(sp)                     # 8-byte Folded Reload
.LBB8_58:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	beqz	a0, .LBB8_63
# %bb.59:                               #   in Loop: Header=BB8_11 Depth=1
	flt.d	a1, fs0, fs1
	beqz	a1, .LBB8_63
# %bb.60:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 552(sp)                     # 8-byte Folded Reload
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	lw	x11, 0(a0)
.LBB8_61:                               #   in Loop: Header=BB8_11 Depth=1
	lh	a0, 42(t0)
	lbu	a1, 41(t0)
	ld	a2, 480(sp)                     # 8-byte Folded Reload
	sh	s8, 0(a2)
	ld	a2, 472(sp)                     # 8-byte Folded Reload
	sh	a0, 0(a2)
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	sb	s9, 0(a0)
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	sb	a1, 0(a0)
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lui	a0, 8
	add	a0, a1, a0
	lw	a2, 12(a1)
	ld	a0, -1192(a0)
	li	a3, 528
	mul	a2, a2, a3
	add	a0, a0, a2
	slli	a2, s10, 2
	add	a0, a0, a2
	sw	s8, 376(a0)
	lw	a0, 0(t0)
	sd	a0, 448(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB8_65
# %bb.62:                               #   in Loop: Header=BB8_11 Depth=1
	lw	a0, 12(a1)
	ld	a2, 128(a1)
	slli	a0, a0, 3
	add	a0, a2, a0
	ld	a0, 0(a0)
	ld	a2, 296(sp)                     # 8-byte Folded Reload
	add	a2, a0, a2
	ld	a2, 0(a2)
	ld	a3, 288(sp)                     # 8-byte Folded Reload
	add	a0, a0, a3
	ld	a0, 0(a0)
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 2
	add	a4, a2, a3
	lw	a4, 0(a4)
	sd	a4, 416(sp)                     # 8-byte Folded Spill
	add	a3, a0, a3
	lw	a3, 0(a3)
	sd	a3, 424(sp)                     # 8-byte Folded Spill
	ld	a3, 280(sp)                     # 8-byte Folded Reload
	add	a2, a2, a3
	lw	a2, 0(a2)
	sd	a2, 432(sp)                     # 8-byte Folded Spill
	add	a0, a0, a3
	lw	a0, 0(a0)
	sd	a0, 440(sp)                     # 8-byte Folded Spill
	j	.LBB8_66
.LBB8_63:                               #   in Loop: Header=BB8_11 Depth=1
	bnez	a0, .LBB8_9
# %bb.64:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 552(sp)                     # 8-byte Folded Reload
	regsw_c	x4, 0x0(x16)		# 100000010000000000000
	lw	x11, 0(a0)
	ld	a0, 488(sp)                     # 8-byte Folded Reload
	bge	x11, a0, .LBB8_9
	j	.LBB8_61
.LBB8_65:                               #   in Loop: Header=BB8_11 Depth=1
	sd	zero, 416(sp)                   # 8-byte Folded Spill
	sd	zero, 424(sp)                   # 8-byte Folded Spill
	sd	zero, 440(sp)                   # 8-byte Folded Spill
	sd	zero, 432(sp)                   # 8-byte Folded Spill
.LBB8_66:                               #   in Loop: Header=BB8_11 Depth=1
	ld	t5, 520(sp)                     # 8-byte Folded Reload
	ld	t6, 400(sp)                     # 8-byte Folded Reload
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	ld	x1, 392(sp)                     # 8-byte Folded Reload
	ld	x2, 384(sp)                     # 8-byte Folded Reload
	ld	x3, 376(sp)                     # 8-byte Folded Reload
	ld	x4, 368(sp)                     # 8-byte Folded Reload
	ld	x5, 360(sp)                     # 8-byte Folded Reload
	ld	x6, 352(sp)                     # 8-byte Folded Reload
	ld	x7, 344(sp)                     # 8-byte Folded Reload
	regsw_c	x8, 0x0(x18)		# 100100100000000000000
	ld	x8, 336(sp)                     # 8-byte Folded Reload
	ld	x9, 328(sp)                     # 8-byte Folded Reload
	lui	x10, %hi(lrec)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a2, 1089(a0)
	ld	a0, 320(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	beqz	a2, .LBB8_85
# %bb.67:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a6, %hi(cbp_blk8x8)
	lw	a2, %lo(cbp_blk8x8)(a6)
	lw	a3, 28(t0)
	lui	a4, 3
	addiw	a4, a4, 1848
	add	a4, a1, a4
	ld	a5, 256(sp)                     # 8-byte Folded Reload
	and	a2, a2, a5
	or	a2, a2, a3
	sw	a2, %lo(cbp_blk8x8)(a6)
	ld	a2, 0(a4)
	slli	a3, s10, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	ld	t1, 264(sp)                     # 8-byte Folded Reload
	ld	a4, 0(t1)
	ld	a3, 0(a2)
	ld	a5, 0(a4)
	ld	a6, 0(a3)
	addi	a7, a5, 260
.LBB8_68:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t0, 0(a6)
	sw	t0, 0(a5)
	addi	a5, a5, 4
	addi	a6, a6, 4
	bne	a5, a7, .LBB8_68
# %bb.69:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a4, 8(a4)
	ld	a3, 8(a3)
	addi	a5, a4, 260
.LBB8_70:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a6, 0(a3)
	sw	a6, 0(a4)
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a4, a5, .LBB8_70
# %bb.71:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a4, 8(t1)
	ld	a3, 8(a2)
	ld	a5, 0(a4)
	ld	a6, 0(a3)
	addi	a7, a5, 260
.LBB8_72:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t0, 0(a6)
	sw	t0, 0(a5)
	addi	a5, a5, 4
	addi	a6, a6, 4
	bne	a5, a7, .LBB8_72
# %bb.73:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a4, 8(a4)
	ld	a3, 8(a3)
	addi	a5, a4, 260
.LBB8_74:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a6, 0(a3)
	sw	a6, 0(a4)
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a4, a5, .LBB8_74
# %bb.75:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a4, 16(t1)
	ld	a3, 16(a2)
	ld	a5, 0(a4)
	ld	a6, 0(a3)
	addi	a7, a5, 260
.LBB8_76:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t0, 0(a6)
	sw	t0, 0(a5)
	addi	a5, a5, 4
	addi	a6, a6, 4
	bne	a5, a7, .LBB8_76
# %bb.77:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a4, 8(a4)
	ld	a3, 8(a3)
	addi	a5, a4, 260
.LBB8_78:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a6, 0(a3)
	sw	a6, 0(a4)
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a4, a5, .LBB8_78
# %bb.79:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a3, 24(t1)
	ld	a2, 24(a2)
	ld	a4, 0(a3)
	ld	a5, 0(a2)
	addi	a6, a4, 260
.LBB8_80:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a7, 0(a5)
	sw	a7, 0(a4)
	addi	a4, a4, 4
	addi	a5, a5, 4
	bne	a4, a6, .LBB8_80
# %bb.81:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a3, 8(a3)
	ld	a2, 8(a2)
	addi	a4, a3, 260
.LBB8_82:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a5, 0(a2)
	sw	a5, 0(a3)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a4, .LBB8_82
# %bb.83:                               #   in Loop: Header=BB8_11 Depth=1
	lw	a7, 360(a0)
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	ld	a5, 232(sp)                     # 8-byte Folded Reload
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	beqz	a7, .LBB8_90
.LBB8_84:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a1, a4, s11
	lw	a7, -16(a1)
	add	t0, a6, s11
	sw	a7, 4(t0)
	add	a7, a3, s11
	lw	t1, -16(a7)
	sw	t1, 1028(t0)
	add	t1, a2, s11
	lw	t2, -16(t1)
	add	t3, a6, t6
	sw	t2, -2048(t3)
	add	t2, a5, s11
	lw	t4, 0(t2)
	sw	t4, -1024(t3)
	lw	t4, 1024(t2)
	sw	t4, 0(t3)
	addi	t4, t2, 2047
	lw	t5, 1(t4)
	sw	t5, 1024(t3)
	lw	t5, -12(a1)
	sw	t5, 8(t0)
	lw	t5, -12(a7)
	sw	t5, 1032(t0)
	lw	t5, -12(t1)
	sw	t5, -2044(t3)
	lw	t5, 4(t2)
	sw	t5, -1020(t3)
	lw	t5, 1028(t2)
	sw	t5, 4(t3)
	lw	t5, 5(t4)
	sw	t5, 1028(t3)
	lw	t5, -8(a1)
	sw	t5, 12(t0)
	lw	t5, -8(a7)
	sw	t5, 1036(t0)
	lw	t5, -8(t1)
	sw	t5, -2040(t3)
	lw	t5, 8(t2)
	sw	t5, -1016(t3)
	lw	t5, 1032(t2)
	sw	t5, 8(t3)
	lw	t5, 9(t4)
	sw	t5, 1032(t3)
	lw	t5, -4(a1)
	sw	t5, 16(t0)
	lw	t5, -4(a7)
	sw	t5, 1040(t0)
	lw	t5, -4(t1)
	sw	t5, -2036(t3)
	lw	t5, 12(t2)
	sw	t5, -1012(t3)
	lw	t5, 1036(t2)
	sw	t5, 12(t3)
	lw	t5, 13(t4)
	sw	t5, 1036(t3)
	lw	t5, 0(a1)
	sw	t5, 20(t0)
	lw	t5, 0(a7)
	sw	t5, 1044(t0)
	lw	t5, 0(t1)
	sw	t5, -2032(t3)
	lw	t5, 16(t2)
	sw	t5, -1008(t3)
	lw	t5, 1040(t2)
	sw	t5, 16(t3)
	lw	t5, 17(t4)
	sw	t5, 1040(t3)
	lw	t5, 4(a1)
	sw	t5, 24(t0)
	lw	t5, 4(a7)
	sw	t5, 1048(t0)
	lw	t5, 4(t1)
	sw	t5, -2028(t3)
	lw	t5, 20(t2)
	sw	t5, -1004(t3)
	lw	t5, 1044(t2)
	sw	t5, 20(t3)
	lw	t5, 21(t4)
	sw	t5, 1044(t3)
	lw	t5, 8(a1)
	sw	t5, 28(t0)
	lw	t5, 8(a7)
	sw	t5, 1052(t0)
	lw	t5, 8(t1)
	sw	t5, -2024(t3)
	lw	t5, 24(t2)
	sw	t5, -1000(t3)
	lw	t5, 1048(t2)
	sw	t5, 24(t3)
	lw	t5, 25(t4)
	sw	t5, 1048(t3)
	lw	a1, 12(a1)
	sw	a1, 32(t0)
	lw	a1, 12(a7)
	sw	a1, 1056(t0)
	lw	a1, 12(t1)
	sw	a1, -2020(t3)
	lw	a1, 28(t2)
	sw	a1, -996(t3)
	lw	a1, 1052(t2)
	sw	a1, 28(t3)
	lw	a1, 29(t4)
	sw	a1, 1052(t3)
	addi	a6, a6, 64
	addi	a5, a5, 64
	addi	a4, a4, 64
	addi	a3, a3, 64
	addi	a2, a2, 64
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bne	a6, x8, .LBB8_84
.LBB8_85:                               #   in Loop: Header=BB8_11 Depth=1
	lw	a0, 0(a0)
	li	a7, 512
	beqz	a0, .LBB8_88
# %bb.86:                               # %.preheader2
                                        #   in Loop: Header=BB8_11 Depth=1
	li	a0, 0
.LBB8_87:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a1, s1, a0
	add	a2, s5, a0
	lw	a3, 28(a2)
	lw	a4, 24(a2)
	lw	a5, 20(a2)
	lw	a6, 16(a2)
	sw	a3, 28(a1)
	sw	a4, 24(a1)
	sw	a5, 20(a1)
	sw	a6, 16(a1)
	lw	a3, 12(a2)
	lw	a4, 8(a2)
	lw	a5, 4(a2)
	lw	a2, 0(a2)
	sw	a3, 12(a1)
	sw	a4, 8(a1)
	sw	a5, 4(a1)
	sw	a2, 0(a1)
	add	a1, s6, a0
	lw	a2, -1024(a1)
	add	a3, s7, a0
	lw	a4, 0(a1)
	lw	a5, -1020(a1)
	sw	a2, -1024(a3)
	lw	a2, 4(a1)
	sw	a4, 0(a3)
	sw	a5, -1020(a3)
	lw	a4, -1016(a1)
	sw	a2, 4(a3)
	lw	a2, 8(a1)
	lw	a5, -1012(a1)
	sw	a4, -1016(a3)
	lw	a4, 12(a1)
	sw	a2, 8(a3)
	sw	a5, -1012(a3)
	lw	a2, -1008(a1)
	sw	a4, 12(a3)
	lw	a4, 16(a1)
	lw	a5, -1004(a1)
	sw	a2, -1008(a3)
	lw	a2, 20(a1)
	sw	a4, 16(a3)
	sw	a5, -1004(a3)
	lw	a4, -1000(a1)
	sw	a2, 20(a3)
	lw	a2, 24(a1)
	lw	a5, -996(a1)
	sw	a4, -1000(a3)
	lw	a1, 28(a1)
	sw	a2, 24(a3)
	sw	a5, -996(a3)
	addi	a0, a0, 64
	sw	a1, 28(a3)
	bne	a0, a7, .LBB8_87
.LBB8_88:                               #   in Loop: Header=BB8_11 Depth=1
	li	a0, 2
	bge	a0, s10, .LBB8_8
# %bb.89:                               #   in Loop: Header=BB8_11 Depth=1
	fmv.d	fs1, fs0
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	sd	x11, 488(sp)                    # 8-byte Folded Spill
	j	.LBB8_9
.LBB8_90:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a2, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a2)
	lui	a3, 2
	add	a2, a2, a3
	ld	a2, -1768(a2)
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	add	a3, a1, a3
	ld	a4, 128(sp)                     # 8-byte Folded Reload
	ld	a5, 144(sp)                     # 8-byte Folded Reload
	ld	a6, 160(sp)                     # 8-byte Folded Reload
	j	.LBB8_92
.LBB8_91:                               #   in Loop: Header=BB8_92 Depth=2
	addi	a6, a6, 1
	addi	a5, a5, 32
	addi	a3, a3, 32
	addi	a4, a4, 64
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	beq	a6, x9, .LBB8_85
.LBB8_92:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a7, 156(a1)
	add	a7, a6, a7
	slli	a7, a7, 3
	lw	t1, 152(a1)
	add	t0, a2, a7
	ld	t0, 0(t0)
	add	t3, t1, t5
	slli	t2, t3, 1
	add	t2, t0, t2
	lh	t2, 0(t2)
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	ld	t4, %lo(lrec)(x10)
	sh	t2, -512(a5)
	lh	t2, -14(a3)
	sh	t2, 0(a5)
	lw	t2, 24(a1)
	add	a7, t4, a7
	bne	t2, s2, .LBB8_95
# %bb.93:                               #   in Loop: Header=BB8_92 Depth=2
	lw	t4, %lo(si_frame_indicator)(s0)
	bnez	t4, .LBB8_95
# %bb.94:                               #   in Loop: Header=BB8_92 Depth=2
	ld	t1, 0(a7)
	slli	t3, t3, 2
	add	t1, t1, t3
	lw	t1, 0(t1)
	sw	t1, -28(a4)
	lw	t1, 152(a1)
	lw	t2, 24(a1)
.LBB8_95:                               #   in Loop: Header=BB8_92 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	t3, t1, x1
	slli	t4, t3, 1
	add	t4, t0, t4
	lh	t4, 0(t4)
	sh	t4, -510(a5)
	lh	t4, -12(a3)
	sh	t4, 2(a5)
	bne	t2, s2, .LBB8_98
# %bb.96:                               #   in Loop: Header=BB8_92 Depth=2
	lw	t4, %lo(si_frame_indicator)(s0)
	bnez	t4, .LBB8_98
# %bb.97:                               #   in Loop: Header=BB8_92 Depth=2
	ld	t1, 0(a7)
	slli	t3, t3, 2
	add	t1, t1, t3
	lw	t1, 0(t1)
	sw	t1, -24(a4)
	lw	t1, 152(a1)
	lw	t2, 24(a1)
.LBB8_98:                               #   in Loop: Header=BB8_92 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	t3, t1, x2
	slli	t4, t3, 1
	add	t4, t0, t4
	lh	t4, 0(t4)
	sh	t4, -508(a5)
	lh	t4, -10(a3)
	sh	t4, 4(a5)
	bne	t2, s2, .LBB8_101
# %bb.99:                               #   in Loop: Header=BB8_92 Depth=2
	lw	t4, %lo(si_frame_indicator)(s0)
	bnez	t4, .LBB8_101
# %bb.100:                              #   in Loop: Header=BB8_92 Depth=2
	ld	t1, 0(a7)
	slli	t3, t3, 2
	add	t1, t1, t3
	lw	t1, 0(t1)
	sw	t1, -20(a4)
	lw	t1, 152(a1)
	lw	t2, 24(a1)
.LBB8_101:                              #   in Loop: Header=BB8_92 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	t3, t1, x3
	slli	t4, t3, 1
	add	t4, t0, t4
	lh	t4, 0(t4)
	sh	t4, -506(a5)
	lh	t4, -8(a3)
	sh	t4, 6(a5)
	bne	t2, s2, .LBB8_104
# %bb.102:                              #   in Loop: Header=BB8_92 Depth=2
	lw	t4, %lo(si_frame_indicator)(s0)
	bnez	t4, .LBB8_104
# %bb.103:                              #   in Loop: Header=BB8_92 Depth=2
	ld	t1, 0(a7)
	slli	t3, t3, 2
	add	t1, t1, t3
	lw	t1, 0(t1)
	sw	t1, -16(a4)
	lw	t1, 152(a1)
	lw	t2, 24(a1)
.LBB8_104:                              #   in Loop: Header=BB8_92 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	t3, t1, x4
	slli	t4, t3, 1
	add	t4, t0, t4
	lh	t4, 0(t4)
	sh	t4, -504(a5)
	lh	t4, -6(a3)
	sh	t4, 8(a5)
	bne	t2, s2, .LBB8_107
# %bb.105:                              #   in Loop: Header=BB8_92 Depth=2
	lw	t4, %lo(si_frame_indicator)(s0)
	bnez	t4, .LBB8_107
# %bb.106:                              #   in Loop: Header=BB8_92 Depth=2
	ld	t1, 0(a7)
	slli	t3, t3, 2
	add	t1, t1, t3
	lw	t1, 0(t1)
	sw	t1, -12(a4)
	lw	t1, 152(a1)
	lw	t2, 24(a1)
.LBB8_107:                              #   in Loop: Header=BB8_92 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	t3, t1, x5
	slli	t4, t3, 1
	add	t4, t0, t4
	lh	t4, 0(t4)
	sh	t4, -502(a5)
	lh	t4, -4(a3)
	sh	t4, 10(a5)
	bne	t2, s2, .LBB8_110
# %bb.108:                              #   in Loop: Header=BB8_92 Depth=2
	lw	t4, %lo(si_frame_indicator)(s0)
	bnez	t4, .LBB8_110
# %bb.109:                              #   in Loop: Header=BB8_92 Depth=2
	ld	t1, 0(a7)
	slli	t3, t3, 2
	add	t1, t1, t3
	lw	t1, 0(t1)
	sw	t1, -8(a4)
	lw	t1, 152(a1)
	lw	t2, 24(a1)
.LBB8_110:                              #   in Loop: Header=BB8_92 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	t3, t1, x6
	slli	t4, t3, 1
	add	t4, t0, t4
	lh	t4, 0(t4)
	sh	t4, -500(a5)
	lh	t4, -2(a3)
	sh	t4, 12(a5)
	bne	t2, s2, .LBB8_113
# %bb.111:                              #   in Loop: Header=BB8_92 Depth=2
	lw	t4, %lo(si_frame_indicator)(s0)
	bnez	t4, .LBB8_113
# %bb.112:                              #   in Loop: Header=BB8_92 Depth=2
	ld	t1, 0(a7)
	slli	t3, t3, 2
	add	t1, t1, t3
	lw	t1, 0(t1)
	sw	t1, -4(a4)
	lw	t1, 152(a1)
	lw	t2, 24(a1)
.LBB8_113:                              #   in Loop: Header=BB8_92 Depth=2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	t1, t1, x7
	slli	t3, t1, 1
	add	t0, t0, t3
	lh	t0, 0(t0)
	sh	t0, -498(a5)
	lh	t0, 0(a3)
	sh	t0, 14(a5)
	bne	t2, s2, .LBB8_91
# %bb.114:                              #   in Loop: Header=BB8_92 Depth=2
	lw	t0, %lo(si_frame_indicator)(s0)
	bnez	t0, .LBB8_91
# %bb.115:                              #   in Loop: Header=BB8_92 Depth=2
	ld	a7, 0(a7)
	slli	t1, t1, 2
	add	a7, a7, t1
	lw	a7, 0(a7)
	sw	a7, 0(a4)
	j	.LBB8_91
.LBB8_116:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 12(a0)
	ld	a2, 128(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	add	a1, a1, a4
	ld	a1, 0(a1)
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 2
	add	a1, a1, a3
	ld	a5, 416(sp)                     # 8-byte Folded Reload
	sw	a5, 0(a1)
	lw	a1, 12(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a5, 288(sp)                     # 8-byte Folded Reload
	add	a1, a1, a5
	ld	a1, 0(a1)
	add	a1, a1, a3
	ld	a3, 424(sp)                     # 8-byte Folded Reload
	sw	a3, 0(a1)
	lw	a1, 12(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	add	a1, a1, a4
	ld	a1, 0(a1)
	ld	a3, 280(sp)                     # 8-byte Folded Reload
	add	a1, a1, a3
	ld	a4, 432(sp)                     # 8-byte Folded Reload
	sw	a4, 0(a1)
	lw	a0, 12(a0)
	slli	a0, a0, 3
	add	a0, a2, a0
	ld	a0, 0(a0)
	add	a0, a0, a5
	ld	a0, 0(a0)
	add	a0, a0, a3
	ld	a1, 440(sp)                     # 8-byte Folded Reload
	sw	a1, 0(a0)
	beqz	s4, .LBB8_119
# %bb.117:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s4, 480(sp)                     # 8-byte Folded Reload
	ld	s5, 472(sp)                     # 8-byte Folded Reload
	ld	s6, 464(sp)                     # 8-byte Folded Reload
	ld	s7, 456(sp)                     # 8-byte Folded Reload
	ld	s8, 104(sp)                     # 8-byte Folded Reload
	ld	s3, 448(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB8_124
# %bb.118:
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a1)
	ld	a2, 488(sp)                     # 8-byte Folded Reload
	add	a0, a0, a2
	sw	a0, 0(a1)
	j	.LBB8_120
.LBB8_119:
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a1)
	ld	a2, 488(sp)                     # 8-byte Folded Reload
	add	a0, a0, a2
	sw	a0, 0(a1)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s4, 480(sp)                     # 8-byte Folded Reload
	ld	s5, 472(sp)                     # 8-byte Folded Reload
	ld	s6, 464(sp)                     # 8-byte Folded Reload
	ld	s7, 456(sp)                     # 8-byte Folded Reload
	ld	s8, 104(sp)                     # 8-byte Folded Reload
	ld	s3, 448(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB8_124
.LBB8_120:
	lh	a0, 0(s4)
	lh	a3, 0(s5)
	sd	zero, 28(t0)
	lui	a1, 16
	addiw	a1, a1, -3
	and	a1, a3, a1
	snez	a1, a1
	addi	a1, a1, -1
	and	a4, a1, a0
	addi	a1, a3, -1
	slli	a1, a1, 48
	srli	a1, a1, 48
	lbu	a6, 0(s6)
	lbu	a7, 0(s7)
	sltiu	a1, a1, 2
	neg	a5, a1
	and	a5, a5, a0
	addi	a0, sp, 560
	addi	a1, sp, 2047
	addi	a1, a1, 1689
	mv	a2, s10
	addi	s1, sp, 2047
	addi	s1, s1, 1661
	call	LumaResidualCoding8x8
	lui	a1, %hi(cbp_blk8x8)
	lw	a2, %lo(cbp_blk8x8)(a1)
	lui	s0, %hi(img)
	ld	a3, %lo(img)(s0)
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	and	a2, a2, a4
	lw	a4, 28(s1)
	lui	s1, 3
	add	a3, a3, s1
	ld	a3, 1848(a3)
	or	a2, a2, a4
	sw	a2, %lo(cbp_blk8x8)(a1)
	slli	s2, s10, 3
	add	a3, a3, s2
	ld	a1, 0(a3)
	ld	s9, 264(sp)                     # 8-byte Folded Reload
	ld	a2, 0(s9)
	ld	a1, 0(a1)
	ld	a3, 0(a2)
	ld	a1, 0(a1)
	mv	s3, a0
	li	a2, 260
	mv	a0, a3
	call	memcpy
	ld	a0, %lo(img)(s0)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 0(s9)
	ld	a2, 0(a0)
	ld	a0, 8(a1)
	ld	a1, 8(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s0)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 8(s9)
	ld	a2, 8(a0)
	ld	a0, 0(a1)
	ld	a1, 0(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s0)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 8(s9)
	ld	a2, 8(a0)
	ld	a0, 8(a1)
	ld	a1, 8(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s0)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 16(s9)
	ld	a2, 16(a0)
	ld	a0, 0(a1)
	ld	a1, 0(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s0)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 16(s9)
	ld	a2, 16(a0)
	ld	a0, 8(a1)
	ld	a1, 8(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s0)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 24(s9)
	ld	a2, 24(a0)
	ld	a0, 0(a1)
	ld	a1, 0(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s0)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 24(s9)
	ld	a2, 24(a0)
	ld	a0, 8(a1)
	ld	a1, 8(a2)
	li	a2, 260
	call	memcpy
	ld	t1, %lo(img)(s0)
	lui	a0, 22
	add	a0, t1, a0
	lw	a0, 460(a0)
	bnez	a0, .LBB8_121
	j	.LBB8_159
.LBB8_121:
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	lui	a2, %hi(mprRGB)
	addi	a2, a2, %lo(mprRGB)
	add	a1, a2, a1
	ld	a4, 56(sp)                      # 8-byte Folded Reload
	lui	a2, %hi(rec_resG)
	addi	a2, a2, %lo(rec_resG)
	add	a2, a2, a4
	lui	a3, %hi(resTrans_R)
	addi	a3, a3, %lo(resTrans_R)
	add	a3, a3, a4
	lui	a5, %hi(resTrans_B)
	addi	a5, a5, %lo(resTrans_B)
	add	a4, a5, a4
	addi	a5, a0, 512
	ld	t6, 400(sp)                     # 8-byte Folded Reload
.LBB8_122:                              # =>This Inner Loop Header: Depth=1
	add	a6, a2, s11
	lw	a7, -16(a6)
	add	t0, a0, s11
	sw	a7, 4(t0)
	add	a7, a3, s11
	lw	t1, -16(a7)
	sw	t1, 1028(t0)
	add	t1, a4, s11
	lw	t2, -16(t1)
	add	t3, a0, t6
	sw	t2, -2048(t3)
	add	t2, a1, s11
	lw	t4, 0(t2)
	sw	t4, -1024(t3)
	lw	t4, 1024(t2)
	sw	t4, 0(t3)
	addi	t4, t2, 2047
	lw	t5, 1(t4)
	sw	t5, 1024(t3)
	lw	t5, -12(a6)
	sw	t5, 8(t0)
	lw	t5, -12(a7)
	sw	t5, 1032(t0)
	lw	t5, -12(t1)
	sw	t5, -2044(t3)
	lw	t5, 4(t2)
	sw	t5, -1020(t3)
	lw	t5, 1028(t2)
	sw	t5, 4(t3)
	lw	t5, 5(t4)
	sw	t5, 1028(t3)
	lw	t5, -8(a6)
	sw	t5, 12(t0)
	lw	t5, -8(a7)
	sw	t5, 1036(t0)
	lw	t5, -8(t1)
	sw	t5, -2040(t3)
	lw	t5, 8(t2)
	sw	t5, -1016(t3)
	lw	t5, 1032(t2)
	sw	t5, 8(t3)
	lw	t5, 9(t4)
	sw	t5, 1032(t3)
	lw	t5, -4(a6)
	sw	t5, 16(t0)
	lw	t5, -4(a7)
	sw	t5, 1040(t0)
	lw	t5, -4(t1)
	sw	t5, -2036(t3)
	lw	t5, 12(t2)
	sw	t5, -1012(t3)
	lw	t5, 1036(t2)
	sw	t5, 12(t3)
	lw	t5, 13(t4)
	sw	t5, 1036(t3)
	lw	t5, 0(a6)
	sw	t5, 20(t0)
	lw	t5, 0(a7)
	sw	t5, 1044(t0)
	lw	t5, 0(t1)
	sw	t5, -2032(t3)
	lw	t5, 16(t2)
	sw	t5, -1008(t3)
	lw	t5, 1040(t2)
	sw	t5, 16(t3)
	lw	t5, 17(t4)
	sw	t5, 1040(t3)
	lw	t5, 4(a6)
	sw	t5, 24(t0)
	lw	t5, 4(a7)
	sw	t5, 1048(t0)
	lw	t5, 4(t1)
	sw	t5, -2028(t3)
	lw	t5, 20(t2)
	sw	t5, -1004(t3)
	lw	t5, 1044(t2)
	sw	t5, 20(t3)
	lw	t5, 21(t4)
	sw	t5, 1044(t3)
	lw	t5, 8(a6)
	sw	t5, 28(t0)
	lw	t5, 8(a7)
	sw	t5, 1052(t0)
	lw	t5, 8(t1)
	sw	t5, -2024(t3)
	lw	t5, 24(t2)
	sw	t5, -1000(t3)
	lw	t5, 1048(t2)
	sw	t5, 24(t3)
	lw	t5, 25(t4)
	sw	t5, 1048(t3)
	lw	a6, 12(a6)
	sw	a6, 32(t0)
	lw	a6, 12(a7)
	sw	a6, 1056(t0)
	lw	a6, 12(t1)
	sw	a6, -2020(t3)
	lw	a6, 28(t2)
	sw	a6, -996(t3)
	lw	a6, 1052(t2)
	sw	a6, 28(t3)
	lw	a6, 29(t4)
	sw	a6, 1052(t3)
	addi	a0, a0, 64
	addi	a1, a1, 64
	addi	a2, a2, 64
	addi	a3, a3, 64
	addi	a4, a4, 64
	bne	a0, a5, .LBB8_122
.LBB8_123:
	ld	s0, 112(sp)                     # 8-byte Folded Reload
.LBB8_124:
	beqz	s3, .LBB8_126
# %bb.125:
	li	a0, 1
	lui	a1, %hi(cbp8x8)
	lw	a2, %lo(cbp8x8)(a1)
	lui	a3, %hi(cnt_nonz_8x8)
	lw	a4, %lo(cnt_nonz_8x8)(a3)
	sllw	a0, a0, s10
	or	a0, a2, a0
	sw	a0, %lo(cbp8x8)(a1)
	add	a4, a4, s3
	sw	a4, %lo(cnt_nonz_8x8)(a3)
.LBB8_126:
	ld	a0, 408(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB8_130
# %bb.127:
	lh	a2, 0(s4)
	lbu	a3, 0(s6)
	lbu	a4, 0(s7)
	lh	a5, 0(s5)
	li	a0, 0
	mv	a1, s10
	ld	a6, 304(sp)                     # 8-byte Folded Reload
	call	StoreNewMotionVectorsBlock8x8
.LBB8_128:
	lh	a1, 0(s4)
	lh	a2, 0(s5)
	lbu	a3, 0(s6)
	lbu	a4, 0(s7)
	mv	a0, s10
	call	SetRefAndMotionVectors
	li	a0, 2
	blt	a0, s10, .LBB8_156
# %bb.129:
	lui	a0, %hi(cs_b8)
	ld	a0, %lo(cs_b8)(a0)
	call	reset_coding_state
	j	.LBB8_156
.LBB8_130:
	li	a0, 2
	blt	a0, s10, .LBB8_155
# %bb.131:
	lui	a1, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a1)
	lui	a0, %hi(img)
	ld	a4, %lo(img)(a0)
	lui	a3, 2
	add	a2, a2, a3
	lw	a5, 156(a4)
	ld	a2, -1768(a2)
	slli	a5, a5, 3
	add	a2, a2, a5
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	slli	a5, a5, 3
	add	a2, a2, a5
	ld	a2, 0(a2)
	lw	a4, 152(a4)
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	add	a6, s8, a6
	lh	a7, 14(a6)
	slli	a4, a4, 1
	add	a2, a2, a4
	sh	a7, 14(a2)
	lh	a4, 12(a6)
	sh	a4, 12(a2)
	lh	a4, 10(a6)
	sh	a4, 10(a2)
	lh	a4, 8(a6)
	sh	a4, 8(a2)
	lh	a4, 6(a6)
	sh	a4, 6(a2)
	lh	a4, 4(a6)
	sh	a4, 4(a2)
	lh	a4, 2(a6)
	sh	a4, 2(a2)
	lh	a4, 0(a6)
	sh	a4, 0(a2)
	ld	a6, %lo(img)(a0)
	lw	a7, 24(a6)
	li	a4, 3
	lui	a2, %hi(si_frame_indicator)
	bne	a7, a4, .LBB8_134
# %bb.132:
	lw	a7, %lo(si_frame_indicator)(a2)
	bnez	a7, .LBB8_134
# %bb.133:
	lui	a7, %hi(lrec)
	lw	t0, 156(a6)
	ld	a7, %lo(lrec)(a7)
	slli	t0, t0, 3
	add	a5, a7, a5
	add	a5, a5, t0
	ld	a5, 0(a5)
	lw	a6, 152(a6)
	ld	a7, 96(sp)                      # 8-byte Folded Reload
	ld	t0, 88(sp)                      # 8-byte Folded Reload
	add	a7, t0, a7
	lw	t0, 12(a7)
	slli	a6, a6, 2
	add	a5, a5, a6
	sw	t0, 12(a5)
	lw	a6, 8(a7)
	sw	a6, 8(a5)
	lw	a6, 4(a7)
	sw	a6, 4(a5)
	lw	a6, 0(a7)
	sw	a6, 0(a5)
	lui	a5, %hi(img)
	ld	a6, %lo(img)(a5)
.LBB8_134:
	ld	a1, %lo(enc_picture)(a1)
	add	a1, a1, a3
	ld	a5, -1768(a1)
	lw	a7, 156(a6)
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	addi	a1, a1, 1
	slli	a3, a1, 3
	add	a5, a5, a3
	slli	a7, a7, 3
	add	a5, a5, a7
	ld	a5, 0(a5)
	lw	a6, 152(a6)
	slli	a7, a1, 5
	add	a7, s8, a7
	lh	t0, 14(a7)
	slli	a6, a6, 1
	add	a5, a5, a6
	sh	t0, 14(a5)
	lh	a6, 12(a7)
	sh	a6, 12(a5)
	lh	a6, 10(a7)
	sh	a6, 10(a5)
	lh	a6, 8(a7)
	sh	a6, 8(a5)
	lh	a6, 6(a7)
	sh	a6, 6(a5)
	lh	a6, 4(a7)
	sh	a6, 4(a5)
	lh	a6, 2(a7)
	sh	a6, 2(a5)
	lh	a6, 0(a7)
	sh	a6, 0(a5)
	ld	a7, %lo(img)(a0)
	lw	a0, 24(a7)
	bne	a0, a4, .LBB8_137
# %bb.135:
	lw	a0, %lo(si_frame_indicator)(a2)
	bnez	a0, .LBB8_137
# %bb.136:
	lui	a0, %hi(lrec)
	ld	a0, %lo(lrec)(a0)
	lw	a2, 156(a7)
	add	a0, a0, a3
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	lw	a2, 152(a7)
	slli	a1, a1, 6
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	add	a1, a3, a1
	lw	a3, 12(a1)
	slli	a2, a2, 2
	add	a0, a0, a2
	sw	a3, 12(a0)
	lw	a2, 8(a1)
	sw	a2, 8(a0)
	lw	a2, 4(a1)
	sw	a2, 4(a0)
	lw	a1, 0(a1)
	sw	a1, 0(a0)
	lui	a0, %hi(img)
	ld	a7, %lo(img)(a0)
.LBB8_137:
	lui	a0, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a0)
	lui	a1, 2
	add	a2, a2, a1
	ld	a2, -1768(a2)
	lw	a3, 156(a7)
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	addi	a5, a5, 2
	slli	a6, a5, 3
	add	a2, a2, a6
	slli	a3, a3, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	lw	a3, 152(a7)
	slli	a4, a5, 5
	add	a4, s8, a4
	lh	a7, 14(a4)
	slli	a3, a3, 1
	add	a2, a2, a3
	sh	a7, 14(a2)
	lh	a3, 12(a4)
	sh	a3, 12(a2)
	lh	a3, 10(a4)
	sh	a3, 10(a2)
	lh	a3, 8(a4)
	sh	a3, 8(a2)
	lh	a3, 6(a4)
	sh	a3, 6(a2)
	lh	a3, 4(a4)
	sh	a3, 4(a2)
	lh	a3, 2(a4)
	sh	a3, 2(a2)
	lh	a3, 0(a4)
	sh	a3, 0(a2)
	lui	a2, %hi(img)
	ld	a7, %lo(img)(a2)
	lw	t0, 24(a7)
	li	a4, 3
	lui	a3, %hi(si_frame_indicator)
	bne	t0, a4, .LBB8_140
# %bb.138:
	lw	t0, %lo(si_frame_indicator)(a3)
	bnez	t0, .LBB8_140
# %bb.139:
	lui	t0, %hi(lrec)
	ld	t0, %lo(lrec)(t0)
	lw	t1, 156(a7)
	add	a6, t0, a6
	slli	t1, t1, 3
	add	a6, a6, t1
	ld	a6, 0(a6)
	lw	a7, 152(a7)
	slli	a5, a5, 6
	ld	t0, 88(sp)                      # 8-byte Folded Reload
	add	a5, t0, a5
	lw	t0, 12(a5)
	slli	a7, a7, 2
	add	a6, a6, a7
	sw	t0, 12(a6)
	lw	a7, 8(a5)
	sw	a7, 8(a6)
	lw	a7, 4(a5)
	sw	a7, 4(a6)
	lw	a5, 0(a5)
	sw	a5, 0(a6)
	lui	a5, %hi(img)
	ld	a7, %lo(img)(a5)
.LBB8_140:
	ld	a0, %lo(enc_picture)(a0)
	add	a0, a0, a1
	ld	a5, -1768(a0)
	lw	a6, 156(a7)
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 3
	slli	a1, a0, 3
	add	a5, a5, a1
	slli	a6, a6, 3
	add	a5, a5, a6
	ld	a5, 0(a5)
	lw	a6, 152(a7)
	slli	a7, a0, 5
	add	a7, s8, a7
	lh	t0, 14(a7)
	slli	a6, a6, 1
	add	a5, a5, a6
	sh	t0, 14(a5)
	lh	a6, 12(a7)
	sh	a6, 12(a5)
	lh	a6, 10(a7)
	sh	a6, 10(a5)
	lh	a6, 8(a7)
	sh	a6, 8(a5)
	lh	a6, 6(a7)
	sh	a6, 6(a5)
	lh	a6, 4(a7)
	sh	a6, 4(a5)
	lh	a6, 2(a7)
	sh	a6, 2(a5)
	lh	a6, 0(a7)
	sh	a6, 0(a5)
	ld	a2, %lo(img)(a2)
	lw	a5, 24(a2)
	bne	a5, a4, .LBB8_143
# %bb.141:
	lw	a3, %lo(si_frame_indicator)(a3)
	bnez	a3, .LBB8_143
# %bb.142:
	lui	a3, %hi(lrec)
	ld	a3, %lo(lrec)(a3)
	lw	a4, 156(a2)
	add	a1, a3, a1
	slli	a4, a4, 3
	add	a1, a1, a4
	ld	a1, 0(a1)
	lw	a2, 152(a2)
	slli	a0, a0, 6
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	add	a0, a3, a0
	lw	a3, 12(a0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a3, 12(a1)
	lw	a2, 8(a0)
	sw	a2, 8(a1)
	lw	a2, 4(a0)
	sw	a2, 4(a1)
	lw	a0, 0(a0)
	sw	a0, 0(a1)
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
.LBB8_143:
	lui	a0, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a0)
	lui	a1, 2
	add	a3, a3, a1
	ld	a3, -1768(a3)
	lw	a4, 156(a2)
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	addi	a5, a5, 4
	slli	a6, a5, 3
	add	a3, a3, a6
	slli	a4, a4, 3
	add	a3, a3, a4
	ld	a3, 0(a3)
	lw	a2, 152(a2)
	slli	a4, a5, 5
	add	a4, s8, a4
	lh	a7, 14(a4)
	slli	a2, a2, 1
	add	a2, a3, a2
	sh	a7, 14(a2)
	lh	a3, 12(a4)
	sh	a3, 12(a2)
	lh	a3, 10(a4)
	sh	a3, 10(a2)
	lh	a3, 8(a4)
	sh	a3, 8(a2)
	lh	a3, 6(a4)
	sh	a3, 6(a2)
	lh	a3, 4(a4)
	sh	a3, 4(a2)
	lh	a3, 2(a4)
	sh	a3, 2(a2)
	lh	a3, 0(a4)
	sh	a3, 0(a2)
	lui	a2, %hi(img)
	ld	a7, %lo(img)(a2)
	lw	t0, 24(a7)
	li	a4, 3
	lui	a3, %hi(si_frame_indicator)
	bne	t0, a4, .LBB8_146
# %bb.144:
	lw	t0, %lo(si_frame_indicator)(a3)
	bnez	t0, .LBB8_146
# %bb.145:
	lui	t0, %hi(lrec)
	ld	t0, %lo(lrec)(t0)
	lw	t1, 156(a7)
	add	a6, t0, a6
	slli	t1, t1, 3
	add	a6, a6, t1
	ld	a6, 0(a6)
	lw	a7, 152(a7)
	slli	a5, a5, 6
	ld	t0, 88(sp)                      # 8-byte Folded Reload
	add	a5, t0, a5
	lw	t0, 12(a5)
	slli	a7, a7, 2
	add	a6, a6, a7
	sw	t0, 12(a6)
	lw	a7, 8(a5)
	sw	a7, 8(a6)
	lw	a7, 4(a5)
	sw	a7, 4(a6)
	lw	a5, 0(a5)
	sw	a5, 0(a6)
	lui	a5, %hi(img)
	ld	a7, %lo(img)(a5)
.LBB8_146:
	ld	a0, %lo(enc_picture)(a0)
	add	a0, a0, a1
	ld	a5, -1768(a0)
	lw	a6, 156(a7)
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 5
	slli	a1, a0, 3
	add	a5, a5, a1
	slli	a6, a6, 3
	add	a5, a5, a6
	ld	a5, 0(a5)
	lw	a6, 152(a7)
	slli	a7, a0, 5
	add	a7, s8, a7
	lh	t0, 14(a7)
	slli	a6, a6, 1
	add	a5, a5, a6
	sh	t0, 14(a5)
	lh	a6, 12(a7)
	sh	a6, 12(a5)
	lh	a6, 10(a7)
	sh	a6, 10(a5)
	lh	a6, 8(a7)
	sh	a6, 8(a5)
	lh	a6, 6(a7)
	sh	a6, 6(a5)
	lh	a6, 4(a7)
	sh	a6, 4(a5)
	lh	a6, 2(a7)
	sh	a6, 2(a5)
	lh	a6, 0(a7)
	sh	a6, 0(a5)
	ld	a2, %lo(img)(a2)
	lw	a5, 24(a2)
	bne	a5, a4, .LBB8_149
# %bb.147:
	lw	a3, %lo(si_frame_indicator)(a3)
	bnez	a3, .LBB8_149
# %bb.148:
	lui	a3, %hi(lrec)
	ld	a3, %lo(lrec)(a3)
	lw	a4, 156(a2)
	add	a1, a3, a1
	slli	a4, a4, 3
	add	a1, a1, a4
	ld	a1, 0(a1)
	lw	a2, 152(a2)
	slli	a0, a0, 6
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	add	a0, a3, a0
	lw	a3, 12(a0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a3, 12(a1)
	lw	a2, 8(a0)
	sw	a2, 8(a1)
	lw	a2, 4(a0)
	sw	a2, 4(a1)
	lw	a0, 0(a0)
	sw	a0, 0(a1)
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
.LBB8_149:
	lui	a0, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a0)
	lui	a1, 2
	add	a3, a3, a1
	ld	a3, -1768(a3)
	lw	a4, 156(a2)
	ld	a5, 160(sp)                     # 8-byte Folded Reload
	addi	a5, a5, 6
	slli	a6, a5, 3
	add	a3, a3, a6
	slli	a4, a4, 3
	add	a3, a3, a4
	ld	a3, 0(a3)
	lw	a2, 152(a2)
	slli	a4, a5, 5
	add	a4, s8, a4
	lh	a7, 14(a4)
	slli	a2, a2, 1
	add	a2, a3, a2
	sh	a7, 14(a2)
	lh	a3, 12(a4)
	sh	a3, 12(a2)
	lh	a3, 10(a4)
	sh	a3, 10(a2)
	lh	a3, 8(a4)
	sh	a3, 8(a2)
	lh	a3, 6(a4)
	sh	a3, 6(a2)
	lh	a3, 4(a4)
	sh	a3, 4(a2)
	lh	a3, 2(a4)
	sh	a3, 2(a2)
	lh	a3, 0(a4)
	sh	a3, 0(a2)
	lui	a2, %hi(img)
	ld	a7, %lo(img)(a2)
	lw	t0, 24(a7)
	li	a4, 3
	lui	a3, %hi(si_frame_indicator)
	bne	t0, a4, .LBB8_152
# %bb.150:
	lw	t0, %lo(si_frame_indicator)(a3)
	bnez	t0, .LBB8_152
# %bb.151:
	lui	t0, %hi(lrec)
	ld	t0, %lo(lrec)(t0)
	lw	t1, 156(a7)
	add	a6, t0, a6
	slli	t1, t1, 3
	add	a6, a6, t1
	ld	a6, 0(a6)
	lw	a7, 152(a7)
	slli	a5, a5, 6
	ld	t0, 88(sp)                      # 8-byte Folded Reload
	add	a5, t0, a5
	lw	t0, 12(a5)
	slli	a7, a7, 2
	add	a6, a6, a7
	sw	t0, 12(a6)
	lw	a7, 8(a5)
	sw	a7, 8(a6)
	lw	a7, 4(a5)
	sw	a7, 4(a6)
	lw	a5, 0(a5)
	sw	a5, 0(a6)
	lui	a5, %hi(img)
	ld	a7, %lo(img)(a5)
.LBB8_152:
	ld	a0, %lo(enc_picture)(a0)
	add	a0, a0, a1
	ld	a5, -1768(a0)
	lw	a6, 156(a7)
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	addi	a0, a0, 7
	slli	a1, a0, 3
	add	a5, a5, a1
	slli	a6, a6, 3
	add	a5, a5, a6
	ld	a5, 0(a5)
	lw	a6, 152(a7)
	slli	a7, a0, 5
	add	a7, s8, a7
	lh	t0, 14(a7)
	slli	a6, a6, 1
	add	a5, a5, a6
	sh	t0, 14(a5)
	lh	a6, 12(a7)
	sh	a6, 12(a5)
	lh	a6, 10(a7)
	sh	a6, 10(a5)
	lh	a6, 8(a7)
	sh	a6, 8(a5)
	lh	a6, 6(a7)
	sh	a6, 6(a5)
	lh	a6, 4(a7)
	sh	a6, 4(a5)
	lh	a6, 2(a7)
	sh	a6, 2(a5)
	lh	a6, 0(a7)
	sh	a6, 0(a5)
	ld	a2, %lo(img)(a2)
	lw	a5, 24(a2)
	bne	a5, a4, .LBB8_128
# %bb.153:
	lw	a3, %lo(si_frame_indicator)(a3)
	bnez	a3, .LBB8_128
# %bb.154:
	lui	a3, %hi(lrec)
	ld	a3, %lo(lrec)(a3)
	lw	a4, 156(a2)
	add	a1, a3, a1
	slli	a4, a4, 3
	add	a1, a1, a4
	ld	a1, 0(a1)
	lw	a2, 152(a2)
	slli	a0, a0, 6
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	add	a0, a3, a0
	lw	a3, 12(a0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a3, 12(a1)
	lw	a2, 8(a0)
	sw	a2, 8(a1)
	lw	a2, 4(a0)
	sw	a2, 4(a1)
	lw	a0, 0(a0)
	sw	a0, 0(a1)
	j	.LBB8_128
.LBB8_155:
	lh	a1, 0(s4)
	lh	a2, 0(s5)
	lbu	a3, 0(s6)
	lbu	a4, 0(s7)
	mv	a0, s10
	call	SetRefAndMotionVectors
.LBB8_156:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 100(a0)
	beqz	a0, .LBB8_158
# %bb.157:
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 11
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	addi	a0, a1, 1024
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 10
	add	a2, s0, a2
	ld	t5, 96(sp)                      # 8-byte Folded Reload
	add	a3, t5, s11
	add	a4, a2, a3
	addi	a3, sp, 2047
	addi	a3, a3, 633
	add	a5, a3, t5
	add	a5, a5, s11
	lw	a6, 28(a5)
	lw	a7, 24(a5)
	lw	t0, 20(a5)
	lw	t1, 16(a5)
	sw	a6, 28(a4)
	sw	a7, 24(a4)
	sw	t0, 20(a4)
	sw	t1, 16(a4)
	lw	a6, 12(a5)
	lw	a7, 8(a5)
	lw	t0, 4(a5)
	lw	a5, 0(a5)
	sw	a6, 12(a4)
	sw	a7, 8(a4)
	sw	t0, 4(a4)
	sw	a5, 0(a4)
	add	a4, t5, s11
	add	a5, a1, a4
	addi	a4, sp, 632
	add	a6, a4, t5
	add	a6, a6, s11
	lw	a7, 0(a6)
	lw	t0, 4(a6)
	lw	t1, 8(a6)
	lw	t2, 12(a6)
	sw	a7, 0(a5)
	sw	t0, 4(a5)
	sw	t1, 8(a5)
	sw	t2, 12(a5)
	lw	a7, 16(a6)
	lw	t0, 20(a6)
	lw	t1, 24(a6)
	lw	a6, 28(a6)
	sw	a7, 16(a5)
	sw	t0, 20(a5)
	sw	t1, 24(a5)
	sw	a6, 28(a5)
	add	a5, t5, s11
	add	a5, a0, a5
	addi	t4, sp, 1656
	add	a6, t4, t5
	add	a6, a6, s11
	lw	a7, 28(a6)
	lw	t0, 24(a6)
	lw	t1, 20(a6)
	lw	t2, 16(a6)
	sw	a7, 28(a5)
	sw	t0, 24(a5)
	sw	t1, 20(a5)
	sw	t2, 16(a5)
	lw	a7, 12(a6)
	lw	t0, 8(a6)
	lw	t1, 4(a6)
	lw	a6, 0(a6)
	sw	a7, 12(a5)
	sw	t0, 8(a5)
	sw	t1, 4(a5)
	sw	a6, 0(a5)
	addi	a5, t5, 64
	add	a6, a5, s11
	add	a6, a2, a6
	add	a7, a3, a5
	add	a7, a7, s11
	lw	t0, 28(a7)
	lw	t1, 24(a7)
	lw	t2, 20(a7)
	lw	t3, 16(a7)
	sw	t0, 28(a6)
	sw	t1, 24(a6)
	sw	t2, 20(a6)
	sw	t3, 16(a6)
	lw	t0, 12(a7)
	lw	t1, 8(a7)
	lw	t2, 4(a7)
	lw	a7, 0(a7)
	sw	t0, 12(a6)
	sw	t1, 8(a6)
	sw	t2, 4(a6)
	sw	a7, 0(a6)
	add	a6, a5, s11
	add	a6, a1, a6
	add	a7, a4, a5
	add	a7, a7, s11
	lw	t0, 28(a7)
	lw	t1, 24(a7)
	lw	t2, 20(a7)
	lw	t3, 16(a7)
	sw	t0, 28(a6)
	sw	t1, 24(a6)
	sw	t2, 20(a6)
	sw	t3, 16(a6)
	lw	t0, 12(a7)
	lw	t1, 8(a7)
	lw	t2, 4(a7)
	lw	a7, 0(a7)
	sw	t0, 12(a6)
	sw	t1, 8(a6)
	sw	t2, 4(a6)
	sw	a7, 0(a6)
	add	a6, a5, s11
	add	a6, a0, a6
	add	a5, t4, a5
	add	a5, a5, s11
	lw	a7, 28(a5)
	lw	t0, 24(a5)
	lw	t1, 20(a5)
	lw	t2, 16(a5)
	sw	a7, 28(a6)
	sw	t0, 24(a6)
	sw	t1, 20(a6)
	sw	t2, 16(a6)
	lw	a7, 12(a5)
	lw	t0, 8(a5)
	lw	t1, 4(a5)
	lw	a5, 0(a5)
	sw	a7, 12(a6)
	sw	t0, 8(a6)
	sw	t1, 4(a6)
	sw	a5, 0(a6)
	addi	a5, t5, 128
	add	a6, a5, s11
	add	a6, a2, a6
	add	a7, a3, a5
	add	a7, a7, s11
	lw	t0, 28(a7)
	lw	t1, 24(a7)
	lw	t2, 20(a7)
	lw	t3, 16(a7)
	sw	t0, 28(a6)
	sw	t1, 24(a6)
	sw	t2, 20(a6)
	sw	t3, 16(a6)
	lw	t0, 12(a7)
	lw	t1, 8(a7)
	lw	t2, 4(a7)
	lw	a7, 0(a7)
	sw	t0, 12(a6)
	sw	t1, 8(a6)
	sw	t2, 4(a6)
	sw	a7, 0(a6)
	add	a6, a5, s11
	add	a6, a1, a6
	add	a7, a4, a5
	add	a7, a7, s11
	lw	t0, 28(a7)
	lw	t1, 24(a7)
	lw	t2, 20(a7)
	lw	t3, 16(a7)
	sw	t0, 28(a6)
	sw	t1, 24(a6)
	sw	t2, 20(a6)
	sw	t3, 16(a6)
	lw	t0, 12(a7)
	lw	t1, 8(a7)
	lw	t2, 4(a7)
	lw	a7, 0(a7)
	sw	t0, 12(a6)
	sw	t1, 8(a6)
	sw	t2, 4(a6)
	sw	a7, 0(a6)
	add	a6, a5, s11
	add	a6, a0, a6
	add	a5, t4, a5
	add	a5, a5, s11
	lw	a7, 28(a5)
	lw	t0, 24(a5)
	lw	t1, 20(a5)
	lw	t2, 16(a5)
	sw	a7, 28(a6)
	sw	t0, 24(a6)
	sw	t1, 20(a6)
	sw	t2, 16(a6)
	lw	a7, 12(a5)
	lw	t0, 8(a5)
	lw	t1, 4(a5)
	lw	a5, 0(a5)
	sw	a7, 12(a6)
	sw	t0, 8(a6)
	sw	t1, 4(a6)
	sw	a5, 0(a6)
	addi	a5, t5, 192
	add	a6, a5, s11
	add	a6, a2, a6
	add	a7, a3, a5
	add	a7, a7, s11
	lw	t0, 28(a7)
	lw	t1, 24(a7)
	lw	t2, 20(a7)
	lw	t3, 16(a7)
	sw	t0, 28(a6)
	sw	t1, 24(a6)
	sw	t2, 20(a6)
	sw	t3, 16(a6)
	lw	t0, 12(a7)
	lw	t1, 8(a7)
	lw	t2, 4(a7)
	lw	a7, 0(a7)
	sw	t0, 12(a6)
	sw	t1, 8(a6)
	sw	t2, 4(a6)
	sw	a7, 0(a6)
	add	a6, a5, s11
	add	a6, a1, a6
	add	a7, a4, a5
	add	a7, a7, s11
	lw	t0, 28(a7)
	lw	t1, 24(a7)
	lw	t2, 20(a7)
	lw	t3, 16(a7)
	sw	t0, 28(a6)
	sw	t1, 24(a6)
	sw	t2, 20(a6)
	sw	t3, 16(a6)
	lw	t0, 12(a7)
	lw	t1, 8(a7)
	lw	t2, 4(a7)
	lw	a7, 0(a7)
	sw	t0, 12(a6)
	sw	t1, 8(a6)
	sw	t2, 4(a6)
	sw	a7, 0(a6)
	add	a6, a5, s11
	add	a6, a0, a6
	add	a5, t4, a5
	add	a5, a5, s11
	lw	a7, 28(a5)
	lw	t0, 24(a5)
	lw	t1, 20(a5)
	lw	t2, 16(a5)
	sw	a7, 28(a6)
	sw	t0, 24(a6)
	sw	t1, 20(a6)
	sw	t2, 16(a6)
	lw	a7, 12(a5)
	lw	t0, 8(a5)
	lw	t1, 4(a5)
	lw	a5, 0(a5)
	sw	a7, 12(a6)
	sw	t0, 8(a6)
	sw	t1, 4(a6)
	sw	a5, 0(a6)
	addi	a5, t5, 256
	add	a6, a5, s11
	add	a6, a2, a6
	add	a7, a3, a5
	add	a7, a7, s11
	lw	t0, 28(a7)
	lw	t1, 24(a7)
	lw	t2, 20(a7)
	lw	t3, 16(a7)
	sw	t0, 28(a6)
	sw	t1, 24(a6)
	sw	t2, 20(a6)
	sw	t3, 16(a6)
	lw	t0, 12(a7)
	lw	t1, 8(a7)
	lw	t2, 4(a7)
	lw	a7, 0(a7)
	sw	t0, 12(a6)
	sw	t1, 8(a6)
	sw	t2, 4(a6)
	sw	a7, 0(a6)
	add	a6, a5, s11
	add	a6, a1, a6
	add	a7, a4, a5
	add	a7, a7, s11
	lw	t0, 28(a7)
	lw	t1, 24(a7)
	lw	t2, 20(a7)
	lw	t3, 16(a7)
	sw	t0, 28(a6)
	sw	t1, 24(a6)
	sw	t2, 20(a6)
	sw	t3, 16(a6)
	lw	t0, 12(a7)
	lw	t1, 8(a7)
	lw	t2, 4(a7)
	lw	a7, 0(a7)
	sw	t0, 12(a6)
	sw	t1, 8(a6)
	sw	t2, 4(a6)
	sw	a7, 0(a6)
	add	a6, a5, s11
	add	a6, a0, a6
	add	a5, t4, a5
	add	a5, a5, s11
	lw	a7, 28(a5)
	lw	t0, 24(a5)
	lw	t1, 20(a5)
	lw	t2, 16(a5)
	sw	a7, 28(a6)
	sw	t0, 24(a6)
	sw	t1, 20(a6)
	sw	t2, 16(a6)
	lw	a7, 12(a5)
	lw	t0, 8(a5)
	lw	t1, 4(a5)
	lw	a5, 0(a5)
	sw	a7, 12(a6)
	sw	t0, 8(a6)
	sw	t1, 4(a6)
	sw	a5, 0(a6)
	addi	a5, t5, 320
	add	a6, a5, s11
	add	a6, a2, a6
	add	a7, a3, a5
	add	a7, a7, s11
	lw	t0, 28(a7)
	lw	t1, 24(a7)
	lw	t2, 20(a7)
	lw	t3, 16(a7)
	sw	t0, 28(a6)
	sw	t1, 24(a6)
	sw	t2, 20(a6)
	sw	t3, 16(a6)
	lw	t0, 12(a7)
	lw	t1, 8(a7)
	lw	t2, 4(a7)
	lw	a7, 0(a7)
	sw	t0, 12(a6)
	sw	t1, 8(a6)
	sw	t2, 4(a6)
	sw	a7, 0(a6)
	add	a6, a5, s11
	add	a6, a1, a6
	add	a7, a4, a5
	add	a7, a7, s11
	lw	t0, 28(a7)
	lw	t1, 24(a7)
	lw	t2, 20(a7)
	lw	t3, 16(a7)
	sw	t0, 28(a6)
	sw	t1, 24(a6)
	sw	t2, 20(a6)
	sw	t3, 16(a6)
	lw	t0, 12(a7)
	lw	t1, 8(a7)
	lw	t2, 4(a7)
	lw	a7, 0(a7)
	sw	t0, 12(a6)
	sw	t1, 8(a6)
	sw	t2, 4(a6)
	sw	a7, 0(a6)
	add	a6, a5, s11
	add	a6, a0, a6
	add	a5, t4, a5
	add	a5, a5, s11
	lw	a7, 28(a5)
	lw	t0, 24(a5)
	lw	t1, 20(a5)
	lw	t2, 16(a5)
	sw	a7, 28(a6)
	sw	t0, 24(a6)
	sw	t1, 20(a6)
	sw	t2, 16(a6)
	lw	a7, 12(a5)
	lw	t0, 8(a5)
	lw	t1, 4(a5)
	lw	a5, 0(a5)
	sw	a7, 12(a6)
	sw	t0, 8(a6)
	sw	t1, 4(a6)
	sw	a5, 0(a6)
	addi	a5, t5, 384
	add	a6, a5, s11
	add	a6, a2, a6
	add	a7, a3, a5
	add	a7, a7, s11
	lw	t0, 28(a7)
	lw	t1, 24(a7)
	lw	t2, 20(a7)
	lw	t3, 16(a7)
	sw	t0, 28(a6)
	sw	t1, 24(a6)
	sw	t2, 20(a6)
	sw	t3, 16(a6)
	lw	t0, 12(a7)
	lw	t1, 8(a7)
	lw	t2, 4(a7)
	lw	a7, 0(a7)
	sw	t0, 12(a6)
	sw	t1, 8(a6)
	sw	t2, 4(a6)
	sw	a7, 0(a6)
	add	a6, a5, s11
	add	a6, a1, a6
	add	a7, a4, a5
	add	a7, a7, s11
	lw	t0, 28(a7)
	lw	t1, 24(a7)
	lw	t2, 20(a7)
	lw	t3, 16(a7)
	sw	t0, 28(a6)
	sw	t1, 24(a6)
	sw	t2, 20(a6)
	sw	t3, 16(a6)
	lw	t0, 12(a7)
	lw	t1, 8(a7)
	lw	t2, 4(a7)
	lw	a7, 0(a7)
	sw	t0, 12(a6)
	sw	t1, 8(a6)
	sw	t2, 4(a6)
	sw	a7, 0(a6)
	add	a6, a5, s11
	add	a6, a0, a6
	add	a5, t4, a5
	add	a5, a5, s11
	lw	a7, 28(a5)
	lw	t0, 24(a5)
	lw	t1, 20(a5)
	lw	t2, 16(a5)
	sw	a7, 28(a6)
	sw	t0, 24(a6)
	sw	t1, 20(a6)
	sw	t2, 16(a6)
	lw	a7, 12(a5)
	lw	t0, 8(a5)
	lw	t1, 4(a5)
	lw	a5, 0(a5)
	sw	a7, 12(a6)
	sw	t0, 8(a6)
	sw	t1, 4(a6)
	sw	a5, 0(a6)
	addi	a5, t5, 448
	add	a6, a5, s11
	add	a2, a2, a6
	add	a3, a3, a5
	add	a3, a3, s11
	lw	a6, 28(a3)
	lw	a7, 24(a3)
	lw	t0, 20(a3)
	lw	t1, 16(a3)
	sw	a6, 28(a2)
	sw	a7, 24(a2)
	sw	t0, 20(a2)
	sw	t1, 16(a2)
	lw	a6, 12(a3)
	lw	a7, 8(a3)
	lw	t0, 4(a3)
	lw	a3, 0(a3)
	sw	a6, 12(a2)
	sw	a7, 8(a2)
	sw	t0, 4(a2)
	sw	a3, 0(a2)
	add	a2, a5, s11
	add	a1, a1, a2
	add	a4, a4, a5
	add	a4, a4, s11
	lw	a2, 28(a4)
	lw	a3, 24(a4)
	lw	a6, 20(a4)
	lw	a7, 16(a4)
	sw	a2, 28(a1)
	sw	a3, 24(a1)
	sw	a6, 20(a1)
	sw	a7, 16(a1)
	lw	a2, 12(a4)
	lw	a3, 8(a4)
	lw	a6, 4(a4)
	lw	a4, 0(a4)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a6, 4(a1)
	sw	a4, 0(a1)
	add	a1, a5, s11
	add	a0, a0, a1
	add	a5, t4, a5
	add	a5, a5, s11
	lw	a1, 28(a5)
	lw	a2, 24(a5)
	lw	a3, 20(a5)
	lw	a4, 16(a5)
	sw	a1, 28(a0)
	sw	a2, 24(a0)
	sw	a3, 20(a0)
	sw	a4, 16(a0)
	lw	a1, 12(a5)
	lw	a2, 8(a5)
	lw	a3, 4(a5)
	lw	a4, 0(a5)
	sw	a1, 12(a0)
	sw	a2, 8(a0)
	sw	a3, 4(a0)
	sw	a4, 0(a0)
.LBB8_158:
	addi	sp, sp, 1840
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	ld	s1, 2008(sp)                    # 8-byte Folded Reload
	ld	s2, 2000(sp)                    # 8-byte Folded Reload
	ld	s3, 1992(sp)                    # 8-byte Folded Reload
	ld	s4, 1984(sp)                    # 8-byte Folded Reload
	ld	s5, 1976(sp)                    # 8-byte Folded Reload
	ld	s6, 1968(sp)                    # 8-byte Folded Reload
	ld	s7, 1960(sp)                    # 8-byte Folded Reload
	ld	s8, 1952(sp)                    # 8-byte Folded Reload
	ld	s9, 1944(sp)                    # 8-byte Folded Reload
	ld	s10, 1936(sp)                   # 8-byte Folded Reload
	ld	s11, 1928(sp)                   # 8-byte Folded Reload
	fld	fs0, 1920(sp)                   # 8-byte Folded Reload
	fld	fs1, 1912(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 2032
	ret
.LBB8_159:                              # %.preheader
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 3
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a3, 120(sp)                     # 8-byte Folded Reload
	add	a1, a1, a3
	addi	a1, a1, 1024
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	add	a2, a4, a2
	add	a2, a3, a2
	addi	a3, a0, 64
	lui	a4, %hi(enc_picture)
	lui	a5, 2
	lui	a6, %hi(si_frame_indicator)
	li	a7, 3
	lui	t0, %hi(lrec)
	ld	t4, 32(sp)                      # 8-byte Folded Reload
	j	.LBB8_161
.LBB8_160:                              #   in Loop: Header=BB8_161 Depth=1
	addi	a0, a0, 8
	addi	a1, a1, 64
	addi	t4, t4, 32
	addi	a2, a2, 32
	bne	a0, a3, .LBB8_161
	j	.LBB8_123
.LBB8_161:                              # =>This Inner Loop Header: Depth=1
	ld	t2, %lo(enc_picture)(a4)
	lw	t3, 156(t1)
	add	t2, t2, a5
	ld	t2, -1768(t2)
	slli	t3, t3, 3
	add	t3, t3, a0
	lw	t1, 152(t1)
	add	t2, t2, t3
	ld	t2, 0(t2)
	ld	t3, 520(sp)                     # 8-byte Folded Reload
	addw	t1, t1, t3
	slli	t1, t1, 1
	add	t1, t2, t1
	lh	t2, 14(t1)
	sh	t2, 14(a2)
	lh	t2, 12(t1)
	sh	t2, 12(a2)
	lh	t2, 10(t1)
	sh	t2, 10(a2)
	lh	t2, 8(t1)
	sh	t2, 8(a2)
	lh	t2, 6(t1)
	sh	t2, 6(a2)
	lh	t2, 4(t1)
	sh	t2, 4(a2)
	lh	t2, 2(t1)
	sh	t2, 2(a2)
	lh	t1, 0(t1)
	sh	t1, 0(a2)
	ld	t1, %lo(img)(s0)
	add	t1, t1, t4
	lh	t2, 14(t1)
	sh	t2, 526(a2)
	lh	t2, 12(t1)
	sh	t2, 524(a2)
	lh	t2, 10(t1)
	sh	t2, 522(a2)
	lh	t2, 8(t1)
	sh	t2, 520(a2)
	lh	t2, 6(t1)
	sh	t2, 518(a2)
	lh	t2, 4(t1)
	sh	t2, 516(a2)
	lh	t2, 2(t1)
	sh	t2, 514(a2)
	lh	t1, 0(t1)
	sh	t1, 512(a2)
	ld	t1, %lo(img)(s0)
	lw	t2, 24(t1)
	bne	t2, a7, .LBB8_160
# %bb.162:                              #   in Loop: Header=BB8_161 Depth=1
	lw	t2, %lo(si_frame_indicator)(a6)
	bnez	t2, .LBB8_160
# %bb.163:                              #   in Loop: Header=BB8_161 Depth=1
	lw	t2, 156(t1)
	ld	t3, %lo(lrec)(t0)
	slli	t2, t2, 3
	add	t3, t3, a0
	lw	t1, 152(t1)
	add	t2, t3, t2
	ld	t2, 0(t2)
	ld	t3, 520(sp)                     # 8-byte Folded Reload
	addw	t1, t1, t3
	slli	t1, t1, 2
	add	t1, t2, t1
	lw	t2, 28(t1)
	sw	t2, 28(a1)
	lw	t2, 24(t1)
	sw	t2, 24(a1)
	lw	t2, 20(t1)
	sw	t2, 20(a1)
	lw	t2, 16(t1)
	sw	t2, 16(a1)
	lw	t2, 12(t1)
	sw	t2, 12(a1)
	lw	t2, 8(t1)
	sw	t2, 8(a1)
	lw	t2, 4(t1)
	sw	t2, 4(a1)
	lw	t1, 0(t1)
	sw	t1, 0(a1)
	ld	t1, %lo(img)(s0)
	j	.LBB8_160
.Lfunc_end8:
	.size	submacroblock_mode_decision, .Lfunc_end8-submacroblock_mode_decision
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function encode_one_macroblock
.LCPI9_0:
	.quad	0x7fefffffffffffff              # double 1.7976931348623157E+308
.LCPI9_1:
	.quad	5055640609639927018             # 0x46293e5939a08cea
.LCPI9_2:
	.quad	0x4010000000000000              # double 4
.LCPI9_3:
	.quad	0x3fdffe5c91d14e3c              # double 0.49990000000000001
.LCPI9_4:
	.quad	0x4030000000000000              # double 16
	.text
	.globl	encode_one_macroblock
	.p2align	2
	.type	encode_one_macroblock,@function
encode_one_macroblock:                  # @encode_one_macroblock
# %bb.0:
	addi	sp, sp, -704
	sd	ra, 696(sp)                     # 8-byte Folded Spill
	sd	s0, 688(sp)                     # 8-byte Folded Spill
	sd	s1, 680(sp)                     # 8-byte Folded Spill
	sd	s2, 672(sp)                     # 8-byte Folded Spill
	sd	s3, 664(sp)                     # 8-byte Folded Spill
	sd	s4, 656(sp)                     # 8-byte Folded Spill
	sd	s5, 648(sp)                     # 8-byte Folded Spill
	sd	s6, 640(sp)                     # 8-byte Folded Spill
	sd	s7, 632(sp)                     # 8-byte Folded Spill
	sd	s8, 624(sp)                     # 8-byte Folded Spill
	sd	s9, 616(sp)                     # 8-byte Folded Spill
	sd	s10, 608(sp)                    # 8-byte Folded Spill
	sd	s11, 600(sp)                    # 8-byte Folded Spill
	fsd	fs0, 592(sp)                    # 8-byte Folded Spill
	fsd	fs1, 584(sp)                    # 8-byte Folded Spill
	fsd	fs2, 576(sp)                    # 8-byte Folded Spill
	fsd	fs3, 568(sp)                    # 8-byte Folded Spill
	fsd	fs4, 560(sp)                    # 8-byte Folded Spill
	fsd	fs5, 552(sp)                    # 8-byte Folded Spill
	fsd	fs6, 544(sp)                    # 8-byte Folded Spill
	sw	zero, 460(sp)
	sw	zero, 456(sp)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	sw	zero, 452(sp)
	sw	zero, 448(sp)
	lui	a1, 8
	lw	s9, 24(a0)
	addiw	a1, a1, -1192
	li	a2, 1
	li	a3, 2
	li	s0, 1
	beq	s9, a3, .LBB9_6
# %bb.1:
	li	a3, 3
	beq	s9, a3, .LBB9_3
# %bb.2:
	bnez	s9, .LBB9_5
.LBB9_3:
	lw	a3, 140(a0)
	lw	a4, 88(a0)
	bne	a3, a4, .LBB9_5
# %bb.4:
	lw	a4, 92(a0)
	xor	a3, a3, a4
	snez	s0, a3
	j	.LBB9_6
.LBB9_5:
	li	s0, 0
.LBB9_6:
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	addi	a3, a3, 2047
	lw	a4, 1533(a3)
	add	a1, a0, a1
	bne	a4, a2, .LBB9_12
# %bb.7:
	lw	a2, 1089(a3)
	li	a3, 3
	bne	a2, a3, .LBB9_12
# %bb.8:
	li	a3, 1
	beqz	s9, .LBB9_13
# %bb.9:
	li	a2, 3
	beq	s9, a2, .LBB9_13
# %bb.10:
	li	a2, 1
	bne	s9, a2, .LBB9_12
# %bb.11:
	lui	a2, 22
	addiw	a2, a2, 204
	add	a2, a0, a2
	lw	a2, 0(a2)
	sgtz	a3, a2
	j	.LBB9_13
.LBB9_12:
	li	a3, 0
.LBB9_13:
	sd	a3, 208(sp)                     # 8-byte Folded Spill
	addi	s3, s9, -3
	lw	a0, 12(a0)
	ld	s1, 0(a1)
	addi	s4, s9, -1
	li	s5, 528
	mul	s2, a0, s5
	call	FmoGetPreviousMBNr
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	addiw	a2, a2, -776
	add	a2, a1, a2
	bltz	a0, .LBB9_15
# %bb.14:
	lui	a3, 8
	addiw	a3, a3, -1192
	add	a3, a1, a3
	ld	a3, 0(a3)
	mul	a0, a0, s5
	add	a0, a3, a0
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	j	.LBB9_16
.LBB9_15:
	sd	zero, 32(sp)                    # 8-byte Folded Spill
.LBB9_16:
	ld	a0, 0(a2)
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	seqz	s5, s9
	seqz	s3, s3
	seqz	a2, s4
	sd	a2, 304(sp)                     # 8-byte Folded Spill
	ld	a0, 0(a0)
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	add	s10, s1, s2
	ld	a3, 104(a1)
	ld	a0, 0(a0)
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	addi	a0, a2, 2047
	lw	a0, 1917(a0)
	sh	zero, 446(sp)
	sh	zero, 444(sp)
	li	a1, 2
	sd	zero, 432(sp)
	sd	a3, 40(sp)                      # 8-byte Folded Spill
	beq	a0, a1, .LBB9_19
# %bb.17:
	li	a1, 1
	bne	a0, a1, .LBB9_20
# %bb.18:
	call	decide_intrabk_SAD
	j	.LBB9_20
.LBB9_19:
	call	simplified_decide_intrabk_SAD
.LBB9_20:
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	lw	a0, 12(a0)
	or	a1, s5, s3
	sd	a1, 160(sp)                     # 8-byte Folded Spill
	call	RandomIntra
	or	a0, a0, s0
	slli	s0, a0, 48
	srai	a2, s0, 48
	addi	a1, sp, 472
	mv	a0, s10
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	ld	a3, 304(sp)                     # 8-byte Folded Reload
	call	init_enc_mb_params
	sd	zero, 224(sp)                   # 8-byte Folded Spill
	sd	zero, 152(sp)                   # 8-byte Folded Spill
	sd	zero, 232(sp)                   # 8-byte Folded Spill
	sd	zero, 184(sp)                   # 8-byte Folded Spill
	sd	zero, 336(sp)                   # 8-byte Folded Spill
	srli	s0, s0, 48
	sd	s0, 256(sp)                     # 8-byte Folded Spill
	li	a0, 255
	sd	a0, 328(sp)                     # 8-byte Folded Spill
	li	s6, 1
	lui	a0, %hi(.LCPI9_0)
	fld	fs4, %lo(.LCPI9_0)(a0)
	lui	s0, %hi(input)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	lui	a0, 22
	addiw	a0, a0, -750
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	lui	a1, 3
	addiw	a0, a1, 312
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	li	s4, 2
	lui	a0, %hi(.LCPI9_3)
	fld	fs1, %lo(.LCPI9_3)(a0)
	lui	a0, %hi(.LCPI9_4)
	fld	fs2, %lo(.LCPI9_4)(a0)
	addiw	a0, a1, 884
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(resTrans_B)
	addi	a0, a0, %lo(resTrans_B)
	addi	a1, a0, 32
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(rec_resG)
	addi	a1, a1, %lo(rec_resG)
	addi	a1, a1, 32
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	addi	s11, a0, 1056
	lui	a0, %hi(resTrans_R)
	addi	a0, a0, %lo(resTrans_R)
	addi	a0, a0, 32
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(rec_resB)
	addi	a0, a0, %lo(rec_resB)
	addi	a0, a0, 32
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(rec_resR)
	addi	a0, a0, %lo(rec_resR)
	addi	a0, a0, 32
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	lui	a0, 1
	addiw	a0, a0, 696
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	li	s5, 32
	lui	a0, %hi(temp_imgY)
	addi	a0, a0, %lo(temp_imgY)
	addi	a0, a0, 16
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(temp_imgU)
	addi	a0, a0, %lo(temp_imgU)
	addi	a0, a0, 16
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(temp_imgV)
	addi	a0, a0, %lo(temp_imgV)
	addi	a0, a0, 16
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(.LCPI9_1)
	ld	a0, %lo(.LCPI9_1)(a0)
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(.LCPI9_2)
	fld	fs3, %lo(.LCPI9_2)(a0)
	lui	a0, 6
	addiw	a0, a0, 1536
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	li	a0, 1
	li	s8, 1
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	sd	s11, 168(sp)                    # 8-byte Folded Spill
	sd	s9, 296(sp)                     # 8-byte Folded Spill
	sd	s10, 240(sp)                    # 8-byte Folded Spill
	j	.LBB9_24
.LBB9_21:                               #   in Loop: Header=BB9_24 Depth=1
	ld	a3, 208(sp)                     # 8-byte Folded Reload
.LBB9_22:                               #   in Loop: Header=BB9_24 Depth=1
	ld	a5, 248(sp)                     # 8-byte Folded Reload
	andi	a0, s8, 1
	bnez	a0, .LBB9_23
	j	.LBB9_450
.LBB9_23:                               #   in Loop: Header=BB9_24 Depth=1
	lw	a0, 72(s10)
	addiw	a0, a0, -9
	andi	a0, a0, -6
	seqz	a0, a0
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	and	a1, a3, s8
	li	a0, 3
	li	s8, 0
	bnez	a1, .LBB9_24
	j	.LBB9_450
.LBB9_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_34 Depth 2
                                        #       Child Loop BB9_38 Depth 3
                                        #         Child Loop BB9_42 Depth 4
                                        #         Child Loop BB9_71 Depth 4
                                        #       Child Loop BB9_172 Depth 3
                                        #     Child Loop BB9_267 Depth 2
                                        #       Child Loop BB9_284 Depth 3
                                        #     Child Loop BB9_392 Depth 2
                                        #     Child Loop BB9_376 Depth 2
                                        #     Child Loop BB9_379 Depth 2
                                        #     Child Loop BB9_382 Depth 2
                                        #     Child Loop BB9_385 Depth 2
                                        #     Child Loop BB9_241 Depth 2
                                        #     Child Loop BB9_246 Depth 2
                                        #     Child Loop BB9_342 Depth 2
                                        #       Child Loop BB9_343 Depth 3
                                        #     Child Loop BB9_347 Depth 2
                                        #     Child Loop BB9_349 Depth 2
                                        #     Child Loop BB9_351 Depth 2
                                        #     Child Loop BB9_354 Depth 2
                                        #       Child Loop BB9_356 Depth 3
	beqz	a3, .LBB9_26
# %bb.25:                               #   in Loop: Header=BB9_24 Depth=1
	ld	a1, %lo(input)(s0)
	addi	a1, a1, 2047
	sw	a0, 1089(a1)
.LBB9_26:                               #   in Loop: Header=BB9_24 Depth=1
	sw	zero, 416(s10)
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	call	store_coding_state
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB9_28
# %bb.27:                               #   in Loop: Header=BB9_24 Depth=1
	ld	a5, 176(sp)                     # 8-byte Folded Reload
	lui	a6, %hi(mb_mode_table)
	addi	a6, a6, %lo(mb_mode_table)
	li	a7, 3
	j	.LBB9_219
.LBB9_28:                               #   in Loop: Header=BB9_24 Depth=1
	sd	s8, 192(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(best_mode)
	sh	s6, %lo(best_mode)(a0)
	bne	s9, s6, .LBB9_32
# %bb.29:                               #   in Loop: Header=BB9_24 Depth=1
	call	Get_Direct_Motion_Vectors
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	bne	a0, s4, .LBB9_32
# %bb.30:                               #   in Loop: Header=BB9_24 Depth=1
	lhu	a0, 492(sp)
	beqz	a0, .LBB9_32
# %bb.31:                               #   in Loop: Header=BB9_24 Depth=1
	lui	a0, %hi(best_mode)
	sh	zero, %lo(best_mode)(a0)
	sw	zero, 416(s10)
	lw	s1, 452(sp)
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	sd	a0, 464(sp)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	addi	a2, sp, 360
	addi	a3, sp, 464
	addi	a4, sp, 432
	li	a6, 1
	addi	a7, sp, 446
	li	a0, 0
	mv	a1, s10
	mv	a5, s1
	call	compute_mode_RD_cost
.LBB9_32:                               #   in Loop: Header=BB9_24 Depth=1
	lhu	a0, 446(sp)
	lh	s5, 522(sp)
	lw	s8, 488(sp)
	fld	fs5, 480(sp)
	lh	a1, 524(sp)
	sd	s5, 288(sp)                     # 8-byte Folded Spill
	slli	s5, s5, 2
	lui	a2, %hi(listXsize)
	addi	a2, a2, %lo(listXsize)
	add	s5, a2, s5
	fadd.d	fs6, fs5, fs5
	slli	a1, a1, 2
	add	a1, a2, a1
	sd	a1, 272(sp)                     # 8-byte Folded Spill
	fmul.d	fa5, fs5, fs3
	fld	fs0, 472(sp)
	fcvt.w.d	a1, fa5, rtz
	sd	a1, 264(sp)                     # 8-byte Folded Spill
	li	a2, 1
	lui	a1, 524288
	addiw	a5, a1, -1
	li	a7, 3
	j	.LBB9_34
.LBB9_33:                               #   in Loop: Header=BB9_34 Depth=2
	ld	a2, 320(sp)                     # 8-byte Folded Reload
	addi	a2, a2, 1
	li	a1, 4
	beq	a2, a1, .LBB9_196
.LBB9_34:                               #   Parent Loop BB9_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_38 Depth 3
                                        #         Child Loop BB9_42 Depth 4
                                        #         Child Loop BB9_71 Depth 4
                                        #       Child Loop BB9_172 Depth 3
	ld	a1, %lo(img)(s2)
	sd	a2, 320(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 1
	addi	a3, sp, 492
	add	a3, a3, a2
	lhu	a3, 0(a3)
	lui	a4, %hi(bi_pred_me)
	sh	zero, %lo(bi_pred_me)(a4)
	lui	a4, 22
	add	a2, a2, a4
	add	a1, a1, a2
	sh	zero, -752(a1)
	beqz	a3, .LBB9_33
# %bb.35:                               #   in Loop: Header=BB9_34 Depth=2
	bnez	a0, .LBB9_33
# %bb.36:                               #   in Loop: Header=BB9_34 Depth=2
	lui	s3, %hi(img)
	sd	a5, 248(sp)                     # 8-byte Folded Spill
	li	s2, 0
	sw	zero, 460(sp)
	li	a2, 1
	ld	s7, 320(sp)                     # 8-byte Folded Reload
	j	.LBB9_38
.LBB9_37:                               #   in Loop: Header=BB9_38 Depth=3
	li	a2, 0
	addi	a0, s7, -1
	snez	a0, a0
	not	a1, s2
	and	a0, a1, a0
	li	s2, 1
	beqz	a0, .LBB9_159
.LBB9_38:                               #   Parent Loop BB9_24 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_42 Depth 4
                                        #         Child Loop BB9_71 Depth 4
	sd	a2, 312(sp)                     # 8-byte Folded Spill
	sext.w	s9, s7
	mv	a0, s9
	mv	a1, s2
	mv	a2, s8
	call	PartitionMotionSearch
	lw	a0, 0(s5)
	slli	s11, s7, 3
	slli	s10, s2, 2
	blez	a0, .LBB9_65
# %bb.39:                               #   in Loop: Header=BB9_38 Depth=3
	ld	a1, %lo(img)(s3)
	li	s1, 0
	li	s6, 0
	lui	s4, 524288
	addiw	s4, s4, -1
	li	t5, 3
	j	.LBB9_42
.LBB9_40:                               #   in Loop: Header=BB9_42 Depth=4
	mv	s4, a0
	sd	a2, 336(sp)                     # 8-byte Folded Spill
.LBB9_41:                               #   in Loop: Header=BB9_42 Depth=4
	lw	a0, 0(s5)
	addi	s6, s6, 1
	slli	s1, s6, 48
	srai	s1, s1, 48
	bge	s1, a0, .LBB9_66
.LBB9_42:                               #   Parent Loop BB9_24 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        #       Parent Loop BB9_38 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli	s7, s6, 48
	beqz	s7, .LBB9_45
# %bb.43:                               #   in Loop: Header=BB9_42 Depth=4
	lui	a0, 22
	add	a0, a1, a0
	lhu	a0, 472(a0)
	beqz	a0, .LBB9_45
# %bb.44:                               #   in Loop: Header=BB9_42 Depth=4
	mv	a0, s2
	li	a1, 0
	mv	a2, s1
	mv	a3, s9
	call	CheckReliabilityOfRef
	li	t5, 3
	ld	a1, %lo(img)(s3)
	beqz	a0, .LBB9_41
.LBB9_45:                               #   in Loop: Header=BB9_42 Depth=4
	ld	a0, %lo(input)(s0)
	lw	a3, 1296(a0)
	bnez	a3, .LBB9_47
# %bb.46:                               #   in Loop: Header=BB9_42 Depth=4
	lw	a2, 1300(a0)
	beqz	a2, .LBB9_55
.LBB9_47:                               #   in Loop: Header=BB9_42 Depth=4
	lw	a2, 24(a1)
	beq	a2, t5, .LBB9_49
# %bb.48:                               #   in Loop: Header=BB9_42 Depth=4
	bnez	a2, .LBB9_55
.LBB9_49:                               #   in Loop: Header=BB9_42 Depth=4
	bnez	a3, .LBB9_51
# %bb.50:                               #   in Loop: Header=BB9_42 Depth=4
	lw	a3, 1300(a0)
	beqz	a3, .LBB9_41
.LBB9_51:                               #   in Loop: Header=BB9_42 Depth=4
	beqz	a2, .LBB9_54
# %bb.52:                               #   in Loop: Header=BB9_42 Depth=4
	bnez	s7, .LBB9_41
# %bb.53:                               #   in Loop: Header=BB9_42 Depth=4
	beq	a2, t5, .LBB9_55
	j	.LBB9_41
.LBB9_54:                               #   in Loop: Header=BB9_42 Depth=4
	bnez	s7, .LBB9_41
.LBB9_55:                               #   in Loop: Header=BB9_42 Depth=4
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	beqz	a0, .LBB9_58
# %bb.56:                               #   in Loop: Header=BB9_42 Depth=4
	lw	a0, 0(s5)
	li	a2, 2
	bge	a0, a2, .LBB9_61
# %bb.57:                               #   in Loop: Header=BB9_42 Depth=4
	li	a0, 0
	j	.LBB9_62
.LBB9_58:                               #   in Loop: Header=BB9_42 Depth=4
	blez	s1, .LBB9_60
# %bb.59:                               #   in Loop: Header=BB9_42 Depth=4
	li	s1, 1
.LBB9_60:                               #   in Loop: Header=BB9_42 Depth=4
	fcvt.d.w	fa5, s1
	fmul.d	fa5, fs6, fa5
	fcvt.w.d	a0, fa5, rtz
	j	.LBB9_63
.LBB9_61:                               #   in Loop: Header=BB9_42 Depth=4
	lui	a0, %hi(refbits)
	ld	a0, %lo(refbits)(a0)
	srai	a2, s7, 48
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
.LBB9_62:                               #   in Loop: Header=BB9_42 Depth=4
	mul	a0, a0, s8
	sraiw	a0, a0, 16
.LBB9_63:                               #   in Loop: Header=BB9_42 Depth=4
	lui	a2, %hi(motion_cost)
	ld	a2, %lo(motion_cost)(a2)
	add	a2, a2, s11
	ld	a2, 0(a2)
	ld	a2, 0(a2)
	srai	a3, s7, 48
	slli	a3, a3, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	add	a2, a2, s10
	lw	a2, 0(a2)
	addw	a0, a2, a0
	mv	a2, s6
	blt	a0, s4, .LBB9_40
# %bb.64:                               #   in Loop: Header=BB9_42 Depth=4
	mv	a0, s4
	ld	a2, 336(sp)                     # 8-byte Folded Reload
	j	.LBB9_40
.LBB9_65:                               #   in Loop: Header=BB9_38 Depth=3
	lui	s4, 524288
	addiw	s4, s4, -1
	li	t5, 3
.LBB9_66:                               #   in Loop: Header=BB9_38 Depth=3
	ld	a1, 296(sp)                     # 8-byte Folded Reload
	li	s6, 1
	bne	a1, s6, .LBB9_128
# %bb.67:                               #   in Loop: Header=BB9_38 Depth=3
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	lw	a2, 0(a1)
	ld	a3, %lo(input)(s0)
	addi	a1, a3, 2047
	blez	a2, .LBB9_91
# %bb.68:                               #   in Loop: Header=BB9_38 Depth=3
	ld	a4, %lo(img)(s3)
	lui	a5, %hi(motion_cost)
	ld	t0, %lo(motion_cost)(a5)
	lw	a5, 1296(a3)
	lui	a6, %hi(refbits)
	ld	a6, %lo(refbits)(a6)
	li	t1, 0
	li	a7, 0
	add	s11, t0, s11
	lui	s1, 524288
	addiw	s1, s1, -1
	ld	t4, 328(sp)                     # 8-byte Folded Reload
	j	.LBB9_71
.LBB9_69:                               #   in Loop: Header=BB9_71 Depth=4
	mv	s1, t0
	mv	t4, t1
.LBB9_70:                               #   in Loop: Header=BB9_71 Depth=4
	addi	a7, a7, 1
	slli	t0, a7, 48
	srai	t1, t0, 48
	bge	t1, a2, .LBB9_92
.LBB9_71:                               #   Parent Loop BB9_24 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        #       Parent Loop BB9_38 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli	t0, a7, 48
	bnez	a5, .LBB9_73
# %bb.72:                               #   in Loop: Header=BB9_71 Depth=4
	lw	t2, 1300(a3)
	beqz	t2, .LBB9_81
.LBB9_73:                               #   in Loop: Header=BB9_71 Depth=4
	lw	t2, 24(a4)
	beq	t2, t5, .LBB9_75
# %bb.74:                               #   in Loop: Header=BB9_71 Depth=4
	bnez	t2, .LBB9_81
.LBB9_75:                               #   in Loop: Header=BB9_71 Depth=4
	bnez	a5, .LBB9_77
# %bb.76:                               #   in Loop: Header=BB9_71 Depth=4
	lw	t3, 1300(a3)
	beqz	t3, .LBB9_70
.LBB9_77:                               #   in Loop: Header=BB9_71 Depth=4
	beqz	t2, .LBB9_80
# %bb.78:                               #   in Loop: Header=BB9_71 Depth=4
	bnez	t0, .LBB9_70
# %bb.79:                               #   in Loop: Header=BB9_71 Depth=4
	beq	t2, t5, .LBB9_81
	j	.LBB9_70
.LBB9_80:                               #   in Loop: Header=BB9_71 Depth=4
	bnez	t0, .LBB9_70
.LBB9_81:                               #   in Loop: Header=BB9_71 Depth=4
	lw	t2, 1089(a1)
	beqz	t2, .LBB9_84
# %bb.82:                               #   in Loop: Header=BB9_71 Depth=4
	bne	a2, s6, .LBB9_87
# %bb.83:                               #   in Loop: Header=BB9_71 Depth=4
	li	t1, 0
	j	.LBB9_88
.LBB9_84:                               #   in Loop: Header=BB9_71 Depth=4
	blez	t1, .LBB9_86
# %bb.85:                               #   in Loop: Header=BB9_71 Depth=4
	li	t1, 1
.LBB9_86:                               #   in Loop: Header=BB9_71 Depth=4
	fcvt.d.w	fa5, t1
	fmul.d	fa5, fs6, fa5
	fcvt.w.d	t1, fa5, rtz
	j	.LBB9_89
.LBB9_87:                               #   in Loop: Header=BB9_71 Depth=4
	srai	t1, t0, 48
	slli	t1, t1, 2
	add	t1, a6, t1
	lw	t1, 0(t1)
.LBB9_88:                               #   in Loop: Header=BB9_71 Depth=4
	mul	t1, t1, s8
	sraiw	t1, t1, 16
.LBB9_89:                               #   in Loop: Header=BB9_71 Depth=4
	ld	t2, 0(s11)
	ld	t2, 8(t2)
	srai	t0, t0, 48
	slli	t0, t0, 3
	add	t0, t2, t0
	ld	t0, 0(t0)
	add	t0, t0, s10
	lw	t0, 0(t0)
	addw	t0, t0, t1
	mv	t1, a7
	blt	t0, s1, .LBB9_69
# %bb.90:                               #   in Loop: Header=BB9_71 Depth=4
	mv	t0, s1
	mv	t1, t4
	j	.LBB9_69
.LBB9_91:                               #   in Loop: Header=BB9_38 Depth=3
	lui	s1, 524288
	addiw	s1, s1, -1
	ld	t4, 328(sp)                     # 8-byte Folded Reload
.LBB9_92:                               #   in Loop: Header=BB9_38 Depth=3
	lw	a1, 1089(a1)
	andi	a3, t4, 255
	sd	t4, 328(sp)                     # 8-byte Folded Spill
	beqz	a1, .LBB9_95
# %bb.93:                               #   in Loop: Header=BB9_38 Depth=3
	li	a1, 2
	bge	a0, a1, .LBB9_96
# %bb.94:                               #   in Loop: Header=BB9_38 Depth=3
	li	a0, 0
	j	.LBB9_97
.LBB9_95:                               #   in Loop: Header=BB9_38 Depth=3
	lui	s7, %hi(input)
	li	s0, 1
	ld	a2, 336(sp)                     # 8-byte Folded Reload
	andi	a0, a2, 255
	snez	a0, a0
	snez	a1, a3
	add	a0, a1, a0
	fcvt.d.wu	fa5, a0
	fmul.d	fa5, fs5, fa5
	fadd.d	fa5, fa5, fa5
	fcvt.w.d	s6, fa5, rtz
	j	.LBB9_101
.LBB9_96:                               #   in Loop: Header=BB9_38 Depth=3
	lui	a0, %hi(refbits)
	ld	a0, %lo(refbits)(a0)
	lbu	a1, 336(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
.LBB9_97:                               #   in Loop: Header=BB9_38 Depth=3
	lui	s7, %hi(input)
	lw	a1, 4(s5)
	li	s0, 1
	li	a2, 2
	bge	a1, a2, .LBB9_99
# %bb.98:                               #   in Loop: Header=BB9_38 Depth=3
	li	a1, 0
	j	.LBB9_100
.LBB9_99:                               #   in Loop: Header=BB9_38 Depth=3
	lui	a1, %hi(refbits)
	ld	a1, %lo(refbits)(a1)
	slli	a2, a3, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
.LBB9_100:                              #   in Loop: Header=BB9_38 Depth=3
	mul	a0, a0, s8
	sraiw	s6, a0, 16
	mul	a0, a1, s8
	sraiw	a0, a0, 16
	add	s6, a0, s6
	ld	a2, 336(sp)                     # 8-byte Folded Reload
.LBB9_101:                              #   in Loop: Header=BB9_38 Depth=3
	andi	a2, a2, 255
	mv	a0, s9
	mv	a1, s2
	mv	a4, s8
	call	BIDPartitionCost
	ld	a2, %lo(input)(s7)
	lw	a1, 1264(a2)
	mv	s11, a0
	lui	s7, 524288
	addiw	s7, s7, -1
	ld	a0, 320(sp)                     # 8-byte Folded Reload
	bne	a0, s0, .LBB9_107
# %bb.102:                              #   in Loop: Header=BB9_38 Depth=3
	mv	a0, s7
	beqz	a1, .LBB9_119
# %bb.103:                              #   in Loop: Header=BB9_38 Depth=3
	addi	a0, a2, 2047
	lw	a0, 1089(a0)
	ld	s7, 264(sp)                     # 8-byte Folded Reload
	lui	s0, %hi(input)
	beqz	a0, .LBB9_111
# %bb.104:                              #   in Loop: Header=BB9_38 Depth=3
	lw	a0, 0(s5)
	li	a1, 2
	bge	a0, a1, .LBB9_108
# %bb.105:                              #   in Loop: Header=BB9_38 Depth=3
	li	a0, 0
	lw	a1, 4(s5)
	li	a2, 2
	blt	a1, a2, .LBB9_109
.LBB9_106:                              #   in Loop: Header=BB9_38 Depth=3
	lui	a1, %hi(refbits)
	ld	a1, %lo(refbits)(a1)
	lw	a1, 0(a1)
	j	.LBB9_110
.LBB9_107:                              #   in Loop: Header=BB9_38 Depth=3
	mv	a0, s7
	j	.LBB9_119
.LBB9_108:                              #   in Loop: Header=BB9_38 Depth=3
	lui	a0, %hi(refbits)
	ld	a0, %lo(refbits)(a0)
	lw	a0, 0(a0)
	lw	a1, 4(s5)
	li	a2, 2
	bge	a1, a2, .LBB9_106
.LBB9_109:                              #   in Loop: Header=BB9_38 Depth=3
	li	a1, 0
.LBB9_110:                              #   in Loop: Header=BB9_38 Depth=3
	mul	a0, a0, s8
	sraiw	s7, a0, 16
	mul	a0, a1, s8
	sraiw	a0, a0, 16
	add	s7, a0, s7
.LBB9_111:                              #   in Loop: Header=BB9_38 Depth=3
	li	a0, 1
	mv	a1, s2
	li	a2, 0
	li	a3, 0
	mv	a4, s8
	li	a5, 0
	call	BPredPartitionCost
	ld	a1, %lo(input)(s0)
	addi	a1, a1, 2047
	lw	a1, 1089(a1)
	ld	s0, 264(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB9_118
# %bb.112:                              #   in Loop: Header=BB9_38 Depth=3
	lw	a1, 0(s5)
	li	a2, 2
	bge	a1, a2, .LBB9_115
# %bb.113:                              #   in Loop: Header=BB9_38 Depth=3
	li	a1, 0
	lw	a2, 4(s5)
	li	a3, 2
	blt	a2, a3, .LBB9_116
.LBB9_114:                              #   in Loop: Header=BB9_38 Depth=3
	lui	a2, %hi(refbits)
	ld	a2, %lo(refbits)(a2)
	lw	a2, 0(a2)
	j	.LBB9_117
.LBB9_115:                              #   in Loop: Header=BB9_38 Depth=3
	lui	a1, %hi(refbits)
	ld	a1, %lo(refbits)(a1)
	lw	a1, 0(a1)
	lw	a2, 4(s5)
	li	a3, 2
	bge	a2, a3, .LBB9_114
.LBB9_116:                              #   in Loop: Header=BB9_38 Depth=3
	li	a2, 0
.LBB9_117:                              #   in Loop: Header=BB9_38 Depth=3
	mul	a1, a1, s8
	sraiw	s0, a1, 16
	mul	a1, a2, s8
	sraiw	a1, a1, 16
	add	s0, a1, s0
.LBB9_118:                              #   in Loop: Header=BB9_38 Depth=3
	addw	s7, a0, s7
	li	a0, 1
	li	a5, 1
	mv	a1, s2
	li	a2, 0
	li	a3, 0
	mv	a4, s8
	call	BPredPartitionCost
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lw	a1, 1264(a1)
	addw	a0, a0, s0
.LBB9_119:                              #   in Loop: Header=BB9_38 Depth=3
	addw	a2, s11, s6
	li	s6, 1
	lui	s0, %hi(input)
	ld	a3, 320(sp)                     # 8-byte Folded Reload
	bne	a3, s6, .LBB9_126
# %bb.120:                              #   in Loop: Header=BB9_38 Depth=3
	beqz	a1, .LBB9_126
# %bb.121:                              #   in Loop: Header=BB9_38 Depth=3
	ld	a1, %lo(img)(s3)
	ld	a3, 280(sp)                     # 8-byte Folded Reload
	add	a1, a1, a3
	sh	zero, 0(a1)
	lui	a3, %hi(bi_pred_me)
	sh	zero, %lo(bi_pred_me)(a3)
	blt	s1, s4, .LBB9_138
# %bb.122:                              #   in Loop: Header=BB9_38 Depth=3
	blt	a2, s4, .LBB9_138
# %bb.123:                              #   in Loop: Header=BB9_38 Depth=3
	blt	s7, s4, .LBB9_138
# %bb.124:                              #   in Loop: Header=BB9_38 Depth=3
	blt	a0, s4, .LBB9_138
# %bb.125:                              #   in Loop: Header=BB9_38 Depth=3
	lw	a0, 460(sp)
	li	s11, 0
	add	a0, a0, s4
	sw	a0, 460(sp)
	ld	a2, 336(sp)                     # 8-byte Folded Reload
	j	.LBB9_155
.LBB9_126:                              #   in Loop: Header=BB9_38 Depth=3
	blt	s1, s4, .LBB9_135
# %bb.127:                              #   in Loop: Header=BB9_38 Depth=3
	blt	a2, s4, .LBB9_135
.LBB9_128:                              #   in Loop: Header=BB9_38 Depth=3
	lw	a0, 460(sp)
	li	s11, 0
	add	a0, a0, s4
	sw	a0, 460(sp)
.LBB9_129:                              #   in Loop: Header=BB9_38 Depth=3
	lbu	s4, 336(sp)                     # 8-byte Folded Reload
	lbu	s1, 328(sp)                     # 8-byte Folded Reload
	mv	a0, s9
	mv	a1, s11
	mv	a2, s2
	ld	a3, 288(sp)                     # 8-byte Folded Reload
	mv	a4, s4
	mv	a5, s1
	ld	a6, 304(sp)                     # 8-byte Folded Reload
	call	assign_enc_picture_params
	li	a0, 2
	beq	s9, a0, .LBB9_132
# %bb.130:                              #   in Loop: Header=BB9_38 Depth=3
	li	a7, 3
	bne	s9, a7, .LBB9_134
# %bb.131:                              #   in Loop: Header=BB9_38 Depth=3
	lbu	a0, 336(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(best8x8fwref)
	addi	a1, a1, %lo(best8x8fwref)
	addi	a1, a1, 24
	slli	a2, s2, 1
	addi	a3, a2, 4
	add	a4, a1, a3
	sh	a0, 0(a4)
	add	a1, a1, a2
	sh	a0, 0(a1)
	lui	a0, %hi(best8x8pdir)
	addi	a0, a0, %lo(best8x8pdir)
	addi	a0, a0, 24
	add	a1, a0, a3
	sh	s11, 0(a1)
	add	a0, a0, a2
	sh	s11, 0(a0)
	lbu	a0, 328(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(best8x8bwref)
	addi	a1, a1, %lo(best8x8bwref)
	addi	a1, a1, 24
	add	a3, a1, a3
	sh	a0, 0(a3)
	add	a1, a1, a2
	sh	a0, 0(a1)
	j	.LBB9_133
.LBB9_132:                              #   in Loop: Header=BB9_38 Depth=3
	lbu	a0, 336(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(best8x8fwref)
	addi	a1, a1, %lo(best8x8fwref)
	addi	a1, a1, 16
	addi	a2, s10, 2
	add	a3, a1, a2
	sh	a0, 0(a3)
	add	a1, a1, s10
	sh	a0, 0(a1)
	lui	a0, %hi(best8x8pdir)
	addi	a0, a0, %lo(best8x8pdir)
	addi	a0, a0, 16
	add	a1, a0, a2
	sh	s11, 0(a1)
	add	a0, a0, s10
	sh	s11, 0(a0)
	lbu	a0, 328(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(best8x8bwref)
	addi	a1, a1, %lo(best8x8bwref)
	addi	a1, a1, 16
	add	a2, a1, a2
	sh	a0, 0(a2)
	add	a1, a1, s10
	sh	a0, 0(a1)
	li	a7, 3
.LBB9_133:                              #   in Loop: Header=BB9_38 Depth=3
	ld	a2, 312(sp)                     # 8-byte Folded Reload
	j	.LBB9_157
.LBB9_134:                              #   in Loop: Header=BB9_38 Depth=3
	ld	s7, 336(sp)                     # 8-byte Folded Reload
	ld	s10, 328(sp)                    # 8-byte Folded Reload
	j	.LBB9_156
.LBB9_135:                              #   in Loop: Header=BB9_38 Depth=3
	lw	a0, 460(sp)
	blt	s4, s1, .LBB9_143
# %bb.136:                              #   in Loop: Header=BB9_38 Depth=3
	blt	a2, s1, .LBB9_143
# %bb.137:                              #   in Loop: Header=BB9_38 Depth=3
	add	a0, a0, s1
	sw	a0, 460(sp)
	li	s11, 1
	j	.LBB9_129
.LBB9_138:                              #   in Loop: Header=BB9_38 Depth=3
	blt	s4, s1, .LBB9_144
# %bb.139:                              #   in Loop: Header=BB9_38 Depth=3
	blt	a2, s1, .LBB9_144
# %bb.140:                              #   in Loop: Header=BB9_38 Depth=3
	blt	s7, s1, .LBB9_144
# %bb.141:                              #   in Loop: Header=BB9_38 Depth=3
	blt	a0, s1, .LBB9_144
# %bb.142:                              #   in Loop: Header=BB9_38 Depth=3
	lw	a0, 460(sp)
	add	a0, a0, s1
	sw	a0, 460(sp)
	li	s11, 1
	ld	a2, 336(sp)                     # 8-byte Folded Reload
	j	.LBB9_155
.LBB9_143:                              #   in Loop: Header=BB9_38 Depth=3
	add	a0, a0, a2
	sw	a0, 460(sp)
	li	s11, 2
	j	.LBB9_129
.LBB9_144:                              #   in Loop: Header=BB9_38 Depth=3
	blt	s4, a2, .LBB9_149
# %bb.145:                              #   in Loop: Header=BB9_38 Depth=3
	blt	s1, a2, .LBB9_149
# %bb.146:                              #   in Loop: Header=BB9_38 Depth=3
	blt	s7, a2, .LBB9_149
# %bb.147:                              #   in Loop: Header=BB9_38 Depth=3
	blt	a0, a2, .LBB9_149
# %bb.148:                              #   in Loop: Header=BB9_38 Depth=3
	lw	a0, 460(sp)
	add	a0, a0, a2
	sw	a0, 460(sp)
	li	s11, 2
	ld	a2, 336(sp)                     # 8-byte Folded Reload
	j	.LBB9_155
.LBB9_149:                              #   in Loop: Header=BB9_38 Depth=3
	lw	a3, 460(sp)
	blt	a2, s7, .LBB9_154
# %bb.150:                              #   in Loop: Header=BB9_38 Depth=3
	blt	s4, s7, .LBB9_154
# %bb.151:                              #   in Loop: Header=BB9_38 Depth=3
	blt	s1, s7, .LBB9_154
# %bb.152:                              #   in Loop: Header=BB9_38 Depth=3
	blt	a0, s7, .LBB9_154
# %bb.153:                              #   in Loop: Header=BB9_38 Depth=3
	li	a2, 0
	sd	zero, 328(sp)                   # 8-byte Folded Spill
	add	a3, a3, s7
	sw	a3, 460(sp)
	lui	a0, %hi(bi_pred_me)
	sh	s6, %lo(bi_pred_me)(a0)
	sh	s6, 0(a1)
	li	s11, 2
	j	.LBB9_155
.LBB9_154:                              #   in Loop: Header=BB9_38 Depth=3
	li	a2, 0
	sd	zero, 328(sp)                   # 8-byte Folded Spill
	add	a0, a3, a0
	sw	a0, 460(sp)
	li	s11, 2
	lui	a0, %hi(bi_pred_me)
	sh	s11, %lo(bi_pred_me)(a0)
	sh	s11, 0(a1)
.LBB9_155:                              #   in Loop: Header=BB9_38 Depth=3
	mv	s7, a2
	andi	s4, a2, 255
	ld	s10, 328(sp)                    # 8-byte Folded Reload
	andi	s1, s10, 255
	li	a0, 1
	mv	a1, s11
	mv	a2, s2
	ld	a3, 288(sp)                     # 8-byte Folded Reload
	mv	a4, s4
	mv	a5, s1
	ld	a6, 304(sp)                     # 8-byte Folded Reload
	call	assign_enc_picture_params
	li	a7, 3
.LBB9_156:                              #   in Loop: Header=BB9_38 Depth=3
	ld	a2, 312(sp)                     # 8-byte Folded Reload
	sd	s7, 336(sp)                     # 8-byte Folded Spill
	andi	a0, s7, 255
	lui	a1, %hi(best8x8fwref)
	addi	a1, a1, %lo(best8x8fwref)
	sh	a0, 14(a1)
	sh	a0, 12(a1)
	sh	a0, 10(a1)
	sh	a0, 8(a1)
	lui	a0, %hi(best8x8pdir)
	addi	a0, a0, %lo(best8x8pdir)
	sh	s11, 14(a0)
	sh	s11, 12(a0)
	sh	s11, 10(a0)
	sh	s11, 8(a0)
	sd	s10, 328(sp)                    # 8-byte Folded Spill
	andi	a0, s10, 255
	lui	a1, %hi(best8x8bwref)
	addi	a1, a1, %lo(best8x8bwref)
	sh	a0, 14(a1)
	sh	a0, 12(a1)
	sh	a0, 10(a1)
	sh	a0, 8(a1)
.LBB9_157:                              #   in Loop: Header=BB9_38 Depth=3
	ld	s7, 320(sp)                     # 8-byte Folded Reload
	sltiu	a0, s7, 2
	not	a1, a2
	or	a0, a0, a1
	andi	a0, a0, 1
	bnez	a0, .LBB9_37
# %bb.158:                              #   in Loop: Header=BB9_38 Depth=3
	mv	a1, s9
	mv	a2, s11
	mv	a3, s4
	mv	a4, s1
	call	SetRefAndMotionVectors
	li	a7, 3
	j	.LBB9_37
.LBB9_159:                              #   in Loop: Header=BB9_34 Depth=2
	ld	a1, %lo(input)(s0)
	addi	a0, a1, 2047
	lw	a2, 1089(a0)
	ld	s10, 240(sp)                    # 8-byte Folded Reload
	ld	a5, 248(sp)                     # 8-byte Folded Reload
	lui	s2, %hi(img)
	li	s4, 2
	beqz	a2, .LBB9_161
# %bb.160:                              #   in Loop: Header=BB9_34 Depth=2
	li	a0, 0
	ld	s9, 296(sp)                     # 8-byte Folded Reload
	ld	a3, 320(sp)                     # 8-byte Folded Reload
	beq	a3, s6, .LBB9_163
	j	.LBB9_193
.LBB9_161:                              #   in Loop: Header=BB9_34 Depth=2
	sw	zero, 468(s10)
	lw	a0, 1845(a0)
	beqz	a0, .LBB9_190
# %bb.162:                              #   in Loop: Header=BB9_34 Depth=2
	mv	a0, s9
	mv	s1, a5
	call	SetModesAndRefframeForBlocks
	li	a0, -1
	addi	a1, sp, 460
	call	TransformDecision
	mv	a5, s1
	li	a7, 3
	sw	a0, 468(s10)
	ld	a1, %lo(input)(s0)
	addi	a0, a1, 2047
	lw	a2, 1089(a0)
	li	a0, 0
	ld	s9, 296(sp)                     # 8-byte Folded Reload
	ld	a3, 320(sp)                     # 8-byte Folded Reload
	bne	a3, s6, .LBB9_193
.LBB9_163:                              #   in Loop: Header=BB9_34 Depth=2
	bne	a2, s4, .LBB9_193
# %bb.164:                              #   in Loop: Header=BB9_34 Depth=2
	beq	s9, a7, .LBB9_166
# %bb.165:                              #   in Loop: Header=BB9_34 Depth=2
	bnez	s9, .LBB9_167
.LBB9_166:                              #   in Loop: Header=BB9_34 Depth=2
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	sd	a0, 464(sp)
.LBB9_167:                              #   in Loop: Header=BB9_34 Depth=2
	mv	s3, a5
	sw	zero, 452(sp)
	bne	s9, s6, .LBB9_169
# %bb.168:                              #   in Loop: Header=BB9_34 Depth=2
	lui	a0, %hi(best8x8pdir)
	addi	a0, a0, %lo(best8x8pdir)
	sh	zero, 14(a0)
	sh	zero, 12(a0)
	sh	zero, 10(a0)
	sh	zero, 8(a0)
.LBB9_169:                              #   in Loop: Header=BB9_34 Depth=2
	sw	zero, 416(s10)
	addi	a0, a1, 2047
	lw	a0, 1845(a0)
	lw	s1, 452(sp)
	addi	a0, a0, -2
	seqz	a0, a0
	sw	a0, 468(s10)
	li	a0, 1
	call	SetModesAndRefframeForBlocks
	ld	a0, %lo(img)(s2)
	lui	a1, 22
	add	a0, a0, a1
	sw	zero, 96(a0)
	lw	a0, 416(s10)
	li	a7, 3
	beqz	a0, .LBB9_172
# %bb.170:                              #   in Loop: Header=BB9_34 Depth=2
	lw	a0, 72(s10)
	li	a1, 14
	bltu	a1, a0, .LBB9_180
# %bb.171:                              #   in Loop: Header=BB9_34 Depth=2
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	srl	a0, a1, a0
	andi	a0, a0, 1
	beqz	a0, .LBB9_180
.LBB9_172:                              #   Parent Loop BB9_24 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	li	a0, 1
	addi	a1, sp, 464
	addi	a2, sp, 432
	fmv.d	fa0, fs0
	mv	a3, s1
	call	RDCost_for_macroblocks
	ld	a1, %lo(input)(s0)
	beqz	a0, .LBB9_176
# %bb.173:                              #   in Loop: Header=BB9_172 Depth=3
	addi	a0, a1, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB9_175
# %bb.174:                              #   in Loop: Header=BB9_172 Depth=3
	ld	a1, %lo(img)(s2)
	lw	a0, 168(a1)
	lw	a1, 172(a1)
	lui	a2, %hi(pred)
	addi	a2, a2, %lo(pred)
	call	rc_store_diff
.LBB9_175:                              #   in Loop: Header=BB9_172 Depth=3
	li	a0, 1
	call	store_macroblock_parameters
	ld	a1, %lo(input)(s0)
.LBB9_176:                              #   in Loop: Header=BB9_172 Depth=3
	li	a7, 3
	addi	a0, a1, 2047
	lw	a0, 1845(a0)
	bne	a0, s6, .LBB9_180
# %bb.177:                              #   in Loop: Header=BB9_172 Depth=3
	lw	a0, 468(s10)
	bnez	a0, .LBB9_179
# %bb.178:                              #   in Loop: Header=BB9_172 Depth=3
	sw	s6, 468(s10)
	j	.LBB9_172
.LBB9_179:                              #   in Loop: Header=BB9_34 Depth=2
	sw	zero, 468(s10)
.LBB9_180:                              #   in Loop: Header=BB9_34 Depth=2
	beq	s9, a7, .LBB9_182
# %bb.181:                              #   in Loop: Header=BB9_34 Depth=2
	bnez	s9, .LBB9_189
.LBB9_182:                              #   in Loop: Header=BB9_34 Depth=2
	call	FindSkipModeMotionVector
	ld	a0, %lo(input)(s0)
	lui	a1, 1
	add	a0, a0, a1
	lw	a0, 216(a0)
	beqz	a0, .LBB9_191
# %bb.183:                              #   in Loop: Header=BB9_34 Depth=2
	lw	a0, 364(s10)
	li	a7, 3
	mv	a5, s3
	bnez	a0, .LBB9_188
# %bb.184:                              #   in Loop: Header=BB9_34 Depth=2
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	addiw	a1, a1, -1712
	add	a0, a0, a1
	ld	a2, %lo(img)(s2)
	ld	a1, 0(a0)
	lw	a3, 148(a2)
	ld	a4, 0(a1)
	slli	a1, a3, 3
	add	a4, a4, a1
	ld	a3, 0(a4)
	lw	a2, 144(a2)
	add	a3, a3, a2
	lbu	a3, 0(a3)
	bnez	a3, .LBB9_188
# %bb.185:                              #   in Loop: Header=BB9_34 Depth=2
	ld	a0, 24(a0)
	ld	a0, 0(a0)
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	lhu	a1, 0(a0)
	ld	a3, 120(sp)                     # 8-byte Folded Reload
	lhu	a2, 0(a3)
	bne	a1, a2, .LBB9_188
# %bb.186:                              #   in Loop: Header=BB9_34 Depth=2
	lhu	a0, 2(a0)
	lhu	a1, 2(a3)
	bne	a0, a1, .LBB9_188
# %bb.187:                              #   in Loop: Header=BB9_34 Depth=2
	lui	a0, %hi(best_mode)
	sh	zero, %lo(best_mode)(a0)
	li	a0, 1
	j	.LBB9_192
.LBB9_188:                              #   in Loop: Header=BB9_34 Depth=2
	li	a0, 0
	j	.LBB9_192
.LBB9_189:                              #   in Loop: Header=BB9_34 Depth=2
	li	a0, 0
	mv	a5, s3
	j	.LBB9_192
.LBB9_190:                              #   in Loop: Header=BB9_34 Depth=2
	ld	s9, 296(sp)                     # 8-byte Folded Reload
	j	.LBB9_193
.LBB9_191:                              #   in Loop: Header=BB9_34 Depth=2
	li	a7, 3
	mv	a5, s3
.LBB9_192:                              #   in Loop: Header=BB9_34 Depth=2
	fld	fs4, 464(sp)
	lui	a1, %hi(best_mode)
	lhu	a1, %lo(best_mode)(a1)
	sd	a1, 224(sp)                     # 8-byte Folded Spill
.LBB9_193:                              #   in Loop: Header=BB9_34 Depth=2
	bnez	a0, .LBB9_33
# %bb.194:                              #   in Loop: Header=BB9_34 Depth=2
	lw	a1, 460(sp)
	bge	a1, a5, .LBB9_33
# %bb.195:                              #   in Loop: Header=BB9_34 Depth=2
	lui	a0, %hi(best_mode)
	ld	a2, 320(sp)                     # 8-byte Folded Reload
	sh	a2, %lo(best_mode)(a0)
	lw	a0, 468(s10)
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	li	a0, 0
	mv	a5, a1
	j	.LBB9_33
.LBB9_196:                              #   in Loop: Header=BB9_24 Depth=1
	sh	a0, 446(sp)
	bnez	a0, .LBB9_205
# %bb.197:                              #   in Loop: Header=BB9_24 Depth=1
	lhu	a0, 508(sp)
	beqz	a0, .LBB9_205
# %bb.198:                              #   in Loop: Header=BB9_24 Depth=1
	sd	a5, 248(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(giRDOpt_B8OnlyFlag)
	sw	s6, %lo(giRDOpt_B8OnlyFlag)(a0)
	lui	a0, %hi(cs_mb)
	ld	a0, %lo(cs_mb)(a0)
	lui	a1, 524288
	addi	a1, a1, -1
	lui	a2, %hi(tr8x8)
	sw	a1, %lo(tr8x8)(a2)
	lui	a2, %hi(tr4x4)
	sw	a1, %lo(tr4x4)(a2)
	call	store_coding_state
	li	a0, -1
	sw	a0, 464(s10)
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a0, 1845(a0)
	lui	s8, %hi(best8x8mode)
	addi	s0, s8, %lo(best8x8mode)
	beqz	a0, .LBB9_200
# %bb.199:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a1, %hi(tr8x8)
	sw	zero, %lo(tr8x8)(a1)
	lui	a0, %hi(cofAC_8x8ts)
	ld	a0, %lo(cofAC_8x8ts)(a0)
	lui	s5, %hi(cofAC_8x8ts)
	lui	a2, %hi(cnt_nonz_8x8)
	sw	zero, %lo(cnt_nonz_8x8)(a2)
	lui	a2, %hi(cbp_blk8x8)
	sw	zero, %lo(cbp_blk8x8)(a2)
	lui	a2, %hi(cbp8x8)
	sw	zero, %lo(cbp8x8)(a2)
	ld	s1, 0(a0)
	addi	s4, a1, %lo(tr8x8)
	sw	zero, 456(sp)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	sd	s6, 16(sp)
	addi	a0, sp, 448
	sd	a0, 8(sp)
	addi	a0, sp, 360
	addi	a7, sp, 456
	addi	a1, sp, 460
	sd	a1, 0(sp)
	mv	a1, s4
	mv	a2, s10
	mv	a3, s1
	ld	s3, 304(sp)                     # 8-byte Folded Reload
	mv	a5, s3
	li	a6, 0
	call	submacroblock_mode_decision
	lui	s2, 2
	add	s2, s4, s2
	lh	a0, -2044(s2)
	lh	a1, -2036(s2)
	lbu	a2, -2028(s2)
	lbu	a3, -2024(s2)
	ld	a4, %lo(cofAC_8x8ts)(s5)
	lui	s11, %hi(best8x8pdir)
	addi	s11, s11, %lo(best8x8pdir)
	sh	a1, 64(s11)
	lui	s5, %hi(best8x8fwref)
	addi	s5, s5, %lo(best8x8fwref)
	sh	a2, 64(s5)
	lui	s7, %hi(best8x8bwref)
	addi	s7, s7, %lo(best8x8bwref)
	sh	a3, 64(s7)
	ld	s1, 8(a4)
	sh	a0, %lo(best8x8mode)(s8)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	sd	s6, 16(sp)
	addi	a0, sp, 448
	sd	a0, 8(sp)
	addi	a0, sp, 360
	li	a6, 1
	addi	a7, sp, 456
	addi	a1, sp, 460
	sd	a1, 0(sp)
	mv	a1, s4
	mv	a2, s10
	mv	a3, s1
	mv	a5, s3
	call	submacroblock_mode_decision
	lh	a0, -2042(s2)
	lh	a1, -2034(s2)
	lbu	a2, -2027(s2)
	lbu	a3, -2023(s2)
	lui	a4, %hi(cofAC_8x8ts)
	ld	a4, %lo(cofAC_8x8ts)(a4)
	lui	s8, %hi(cofAC_8x8ts)
	sh	a1, 66(s11)
	sh	a2, 66(s5)
	sh	a3, 66(s7)
	ld	s1, 16(a4)
	sh	a0, 2(s0)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	sd	s6, 16(sp)
	addi	a0, sp, 448
	sd	a0, 8(sp)
	addi	a0, sp, 360
	li	a6, 2
	addi	a7, sp, 456
	addi	a1, sp, 460
	sd	a1, 0(sp)
	mv	a1, s4
	mv	a2, s10
	mv	a3, s1
	mv	a5, s3
	call	submacroblock_mode_decision
	lh	a0, -2040(s2)
	lh	a1, -2032(s2)
	lbu	a2, -2026(s2)
	lbu	a3, -2022(s2)
	ld	a4, %lo(cofAC_8x8ts)(s8)
	sh	a1, 68(s11)
	sh	a2, 68(s5)
	sh	a3, 68(s7)
	ld	s1, 24(a4)
	sh	a0, 4(s0)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	sd	s6, 16(sp)
	addi	a0, sp, 448
	sd	a0, 8(sp)
	addi	a0, sp, 360
	li	a6, 3
	addi	a7, sp, 456
	addi	a1, sp, 460
	sd	a1, 0(sp)
	mv	a1, s4
	li	s4, 2
	mv	a2, s10
	mv	a3, s1
	lui	s1, %hi(input)
	mv	a5, s3
	call	submacroblock_mode_decision
	lh	a0, -2038(s2)
	lh	a1, -2030(s2)
	lbu	a2, -2025(s2)
	sh	a0, 6(s0)
	sh	a1, 70(s11)
	sh	a2, 70(s5)
	lbu	a0, -2021(s2)
	lui	a1, %hi(cbp8x8)
	lw	a1, %lo(cbp8x8)(a1)
	lui	a2, %hi(cbp_blk8x8)
	lw	a2, %lo(cbp_blk8x8)(a2)
	lui	a3, %hi(cnt_nonz_8x8)
	lw	a3, %lo(cnt_nonz_8x8)(a3)
	sh	a0, 70(s7)
	lui	a0, %hi(cbp8_8x8ts)
	sw	a1, %lo(cbp8_8x8ts)(a0)
	lui	a0, %hi(cbp_blk8_8x8ts)
	sd	a2, %lo(cbp_blk8_8x8ts)(a0)
	lui	a0, %hi(cnt_nonz8_8x8ts)
	sw	a3, %lo(cnt_nonz8_8x8ts)(a0)
	sw	zero, 468(s10)
	ld	a0, %lo(input)(s1)
	addi	a0, a0, 2047
	lw	a0, 1845(a0)
	beq	a0, s4, .LBB9_201
.LBB9_200:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a1, %hi(tr4x4)
	sw	zero, %lo(tr4x4)(a1)
	lui	a0, %hi(cofAC8x8)
	ld	a0, %lo(cofAC8x8)(a0)
	lui	s7, %hi(cofAC8x8)
	lui	a2, %hi(cnt_nonz_8x8)
	sw	zero, %lo(cnt_nonz_8x8)(a2)
	lui	a2, %hi(cbp_blk8x8)
	sw	zero, %lo(cbp_blk8x8)(a2)
	lui	a2, %hi(cbp8x8)
	sw	zero, %lo(cbp8x8)(a2)
	ld	s1, 0(a0)
	addi	s4, a1, %lo(tr4x4)
	sw	zero, 456(sp)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	sd	zero, 16(sp)
	lui	s5, %hi(best8x8mode)
	addi	a0, sp, 448
	sd	a0, 8(sp)
	addi	a0, sp, 360
	addi	a7, sp, 456
	addi	a1, sp, 460
	sd	a1, 0(sp)
	mv	a1, s4
	mv	a2, s10
	mv	a3, s1
	ld	s3, 304(sp)                     # 8-byte Folded Reload
	mv	a5, s3
	li	a6, 0
	call	submacroblock_mode_decision
	lui	s2, 2
	add	s2, s4, s2
	lh	a0, -2044(s2)
	lh	a1, -2036(s2)
	lbu	a2, -2028(s2)
	lbu	a3, -2024(s2)
	ld	a4, %lo(cofAC8x8)(s7)
	lui	s11, %hi(best8x8pdir)
	addi	s11, s11, %lo(best8x8pdir)
	sh	a1, 64(s11)
	lui	s7, %hi(best8x8fwref)
	addi	s7, s7, %lo(best8x8fwref)
	sh	a2, 64(s7)
	lui	s8, %hi(best8x8bwref)
	addi	s8, s8, %lo(best8x8bwref)
	sh	a3, 64(s8)
	ld	s1, 8(a4)
	sh	a0, %lo(best8x8mode)(s5)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	sd	zero, 16(sp)
	addi	a0, sp, 448
	sd	a0, 8(sp)
	addi	a0, sp, 360
	li	a6, 1
	addi	a7, sp, 456
	addi	a1, sp, 460
	sd	a1, 0(sp)
	mv	a1, s4
	mv	a2, s10
	mv	a3, s1
	mv	a5, s3
	call	submacroblock_mode_decision
	lh	a0, -2042(s2)
	lh	a1, -2034(s2)
	lbu	a2, -2027(s2)
	lbu	a3, -2023(s2)
	lui	a4, %hi(cofAC8x8)
	ld	a4, %lo(cofAC8x8)(a4)
	lui	s5, %hi(cofAC8x8)
	sh	a1, 66(s11)
	sh	a2, 66(s7)
	sh	a3, 66(s8)
	ld	s1, 16(a4)
	sh	a0, 2(s0)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	sd	zero, 16(sp)
	addi	a0, sp, 448
	sd	a0, 8(sp)
	addi	a0, sp, 360
	li	a6, 2
	addi	a7, sp, 456
	addi	a1, sp, 460
	sd	a1, 0(sp)
	mv	a1, s4
	mv	a2, s10
	mv	a3, s1
	mv	a5, s3
	call	submacroblock_mode_decision
	lh	a0, -2040(s2)
	lh	a1, -2032(s2)
	lbu	a2, -2026(s2)
	lbu	a3, -2022(s2)
	ld	a4, %lo(cofAC8x8)(s5)
	sh	a1, 68(s11)
	sh	a2, 68(s7)
	sh	a3, 68(s8)
	ld	s1, 24(a4)
	sh	a0, 4(s0)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	sd	zero, 16(sp)
	addi	a0, sp, 448
	sd	a0, 8(sp)
	addi	a0, sp, 360
	li	a6, 3
	addi	a7, sp, 456
	addi	a1, sp, 460
	sd	a1, 0(sp)
	mv	a1, s4
	li	s4, 2
	mv	a2, s10
	mv	a3, s1
	lui	s1, %hi(input)
	mv	a5, s3
	call	submacroblock_mode_decision
	lh	a0, -2038(s2)
	lh	a1, -2030(s2)
	lbu	a2, -2025(s2)
	lbu	a3, -2021(s2)
	sh	a0, 6(s0)
	sh	a1, 70(s11)
	sh	a2, 70(s7)
	sh	a3, 70(s8)
.LBB9_201:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a0, %hi(cs_mb)
	ld	a0, %lo(cs_mb)(a0)
	call	reset_coding_state
	ld	a0, %lo(input)(s1)
	addi	a1, a0, 2047
	lw	a1, 1861(a1)
	lui	s2, %hi(img)
	lui	s0, %hi(input)
	beqz	a1, .LBB9_203
# %bb.202:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a2, %lo(img)(s2)
	lw	a0, 168(a2)
	lw	a1, 172(a2)
	ld	a3, 144(sp)                     # 8-byte Folded Reload
	add	a2, a2, a3
	call	rc_store_diff
	ld	a0, %lo(input)(s0)
.LBB9_203:                              #   in Loop: Header=BB9_24 Depth=1
	addi	a2, a0, 2047
	lw	a0, 1089(a2)
	li	s5, 32
	ld	s8, 192(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB9_206
# %bb.204:                              #   in Loop: Header=BB9_24 Depth=1
	li	a7, 3
	ld	a5, 248(sp)                     # 8-byte Folded Reload
	ld	s11, 168(sp)                    # 8-byte Folded Reload
	j	.LBB9_215
.LBB9_205:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a0, 524288
	addi	a0, a0, -1
	lui	a1, %hi(tr4x4)
	sw	a0, %lo(tr4x4)(a1)
	ld	s11, 168(sp)                    # 8-byte Folded Reload
	li	s5, 32
	ld	s8, 192(sp)                     # 8-byte Folded Reload
	j	.LBB9_216
.LBB9_206:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a0, %hi(tr4x4)
	lw	a0, %lo(tr4x4)(a0)
	lui	a1, %hi(tr8x8)
	lw	a1, %lo(tr8x8)(a1)
	li	a7, 3
	ld	a5, 248(sp)                     # 8-byte Folded Reload
	ld	s11, 168(sp)                    # 8-byte Folded Reload
	blt	a0, a5, .LBB9_208
# %bb.207:                              #   in Loop: Header=BB9_24 Depth=1
	bge	a1, a5, .LBB9_215
.LBB9_208:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a3, %hi(best_mode)
	li	a4, 8
	sh	a4, %lo(best_mode)(a3)
	lw	a2, 1845(a2)
	beqz	a2, .LBB9_213
# %bb.209:                              #   in Loop: Header=BB9_24 Depth=1
	li	s0, 1
	beq	a2, s4, .LBB9_211
# %bb.210:                              #   in Loop: Header=BB9_24 Depth=1
	bge	a1, a0, .LBB9_212
.LBB9_211:                              #   in Loop: Header=BB9_24 Depth=1
	mv	a0, a1
	j	.LBB9_214
.LBB9_212:                              #   in Loop: Header=BB9_24 Depth=1
	blt	a0, a1, .LBB9_213
	j	.LBB9_386
.LBB9_213:                              #   in Loop: Header=BB9_24 Depth=1
	li	s0, 0
.LBB9_214:                              #   in Loop: Header=BB9_24 Depth=1
	sw	s0, 468(s10)
	mv	a5, a0
	lui	s0, %hi(input)
.LBB9_215:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a0, %hi(giRDOpt_B8OnlyFlag)
	sw	zero, %lo(giRDOpt_B8OnlyFlag)(a0)
.LBB9_216:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	addi	a0, a0, -2
	snez	a0, a0
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	beqz	a0, .LBB9_218
# %bb.217:                              #   in Loop: Header=BB9_24 Depth=1
	mv	s1, a5
	call	FindSkipModeMotionVector
	mv	a5, s1
	li	a7, 3
.LBB9_218:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a6, %hi(mb_mode_table)
	addi	a6, a6, %lo(mb_mode_table)
.LBB9_219:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a1, %lo(input)(s0)
	addi	a3, a1, 2047
	lw	a4, 1089(a3)
	ld	a0, %lo(img)(s2)
	ld	a2, 280(sp)                     # 8-byte Folded Reload
	add	a2, a0, a2
	beqz	a4, .LBB9_223
# %bb.220:                              #   in Loop: Header=BB9_24 Depth=1
	sd	a5, 248(sp)                     # 8-byte Folded Spill
	lhu	a5, 446(sp)
	beqz	a5, .LBB9_234
.LBB9_221:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a3, 208(sp)                     # 8-byte Folded Reload
.LBB9_222:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a7, %hi(gaaiMBAFF_NZCoeff)
	addi	a7, a7, %lo(gaaiMBAFF_NZCoeff)
	j	.LBB9_374
.LBB9_223:                              #   in Loop: Header=BB9_24 Depth=1
	lui	s3, %hi(input)
	lw	s1, 468(s10)
	lw	a0, 1186(a2)
	lw	s0, 472(s10)
	beqz	a0, .LBB9_225
# %bb.224:                              #   in Loop: Header=BB9_24 Depth=1
	li	a0, 0
	li	a1, 0
	li	a2, 0
	mv	s7, a5
	call	IntraChromaPrediction
	mv	a5, s7
.LBB9_225:                              #   in Loop: Header=BB9_24 Depth=1
	bne	s9, s6, .LBB9_231
# %bb.226:                              #   in Loop: Header=BB9_24 Depth=1
	lhu	a0, 492(sp)
	beqz	a0, .LBB9_231
# %bb.227:                              #   in Loop: Header=BB9_24 Depth=1
	mv	s7, a5
	lw	a0, 488(sp)
	call	Get_Direct_CostMB
	sw	a0, 460(sp)
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	mv	a1, a2
	beq	a0, a2, .LBB9_229
# %bb.228:                              #   in Loop: Header=BB9_24 Depth=1
	fld	fa5, 480(sp)
	fmadd.d	fa5, fa5, fs2, fs1
	fcvt.w.d	a1, fa5, rdn
	subw	a1, a0, a1
	sw	a1, 460(sp)
.LBB9_229:                              #   in Loop: Header=BB9_24 Depth=1
	bge	s7, a1, .LBB9_250
# %bb.230:                              #   in Loop: Header=BB9_24 Depth=1
	mv	a5, s7
	sw	s1, 468(s10)
	sw	s0, 472(s10)
.LBB9_231:                              #   in Loop: Header=BB9_24 Depth=1
	lhu	a0, 518(sp)
	beqz	a0, .LBB9_325
.LBB9_232:                              #   in Loop: Header=BB9_24 Depth=1
	fld	fa0, 472(sp)
	sw	s6, 468(s10)
	li	a0, 13
	sw	a0, 72(s10)
	addi	a0, sp, 460
	mv	s7, a5
	call	Mode_Decision_for_new_Intra8x8Macroblock
	lw	a1, 460(sp)
	bge	s7, a1, .LBB9_237
# %bb.233:                              #   in Loop: Header=BB9_24 Depth=1
	mv	a5, s7
	sw	s1, 468(s10)
	j	.LBB9_325
.LBB9_234:                              #   in Loop: Header=BB9_24 Depth=1
	bne	a4, s4, .LBB9_236
# %bb.235:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a5, 24(a0)
	bne	a5, s4, .LBB9_254
.LBB9_236:                              #   in Loop: Header=BB9_24 Depth=1
	lui	s2, %hi(input)
	ld	a5, 216(sp)                     # 8-byte Folded Reload
	sd	a5, 464(sp)
	lw	a5, 1210(a2)
	li	s0, 11
	bnez	a5, .LBB9_259
	j	.LBB9_255
.LBB9_237:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a2, %lo(img)(s2)
	lui	a1, 22
	add	a1, a2, a1
	lw	a1, 460(a1)
	beqz	a1, .LBB9_243
# %bb.238:                              #   in Loop: Header=BB9_24 Depth=1
	mv	s1, a0
	lui	a1, %hi(cbp_chroma_block)
	lw	a0, %lo(cbp_chroma_block)(a1)
	addi	a1, a1, %lo(cbp_chroma_block)
	lw	a2, 4(a1)
	lw	a3, 8(a1)
	lw	a4, 12(a1)
	lw	a5, 16(a1)
	lw	a6, 20(a1)
	lw	a7, 24(a1)
	lw	t0, 28(a1)
	lw	t1, 32(a1)
	lw	t2, 36(a1)
	lw	t3, 40(a1)
	lw	t4, 44(a1)
	lw	t5, 48(a1)
	lw	t6, 52(a1)
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	lw	x1, 56(a1)
	lw	x2, 60(a1)
	lw	x3, 64(a1)
	lw	x4, 68(a1)
	lw	x5, 72(a1)
	lw	x6, 76(a1)
	lw	x7, 80(a1)
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	lw	x8, 84(a1)
	lw	x9, 88(a1)
	lw	x10, 92(a1)
	lw	x11, 96(a1)
	lw	x12, 100(a1)
	lw	x13, 112(a1)
	lw	x14, 120(a1)
	regsw_c	x8, 0x1ff(x18)		# 100100100000111111111
	lw	x15, 124(a1)
	lw	x16, 116(a1)
	lw	x17, 104(a1)
	lw	a1, 108(a1)
	or	x14, x15, x14
	or	x13, x16, x13
	or	x13, x14, x13
	regsw_c	x21, 0x7f9(x4)		# 001001010111111111001
	or	a1, a1, x17
	or	a1, a1, x12
	or	a1, x13, a1
	or	x10, x11, x10
	or	x9, x10, x9
	or	x8, x9, x8
	or	a1, a1, x8
	regsw_c	x31, 0x67a(x31)		# 111111111111001111010
	or	x6, x7, x6
	or	x5, x6, x5
	or	x4, x5, x4
	or	x3, x4, x3
	or	a1, a1, x3
	or	x1, x2, x1
	or	t6, x1, t6
	or	t5, t6, t5
	or	t4, t5, t4
	or	t3, t4, t3
	or	a1, a1, t3
	or	t1, t2, t1
	or	t0, t1, t0
	or	a7, t0, a7
	or	a6, a7, a6
	or	a5, a6, a5
	or	a4, a5, a4
	or	a1, a1, a4
	or	a2, a3, a2
	or	a0, a2, a0
	or	a0, a1, a0
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB9_240
# %bb.239:                              #   in Loop: Header=BB9_24 Depth=1
	li	a1, 2
.LBB9_240:                              #   in Loop: Header=BB9_24 Depth=1
	li	a0, 0
	call	dct_chroma_DC
	mv	a1, a0
	li	a0, 1
	call	dct_chroma_DC
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	mv	a4, a0
	ld	a2, %lo(img)(s2)
	lui	a0, 2
	add	a1, a1, a0
	ld	a3, -1728(a1)
	sd	a4, 152(sp)                     # 8-byte Folded Spill
	slli	a1, a4, 4
	lw	a0, 152(a2)
	lw	a2, 156(a2)
	ld	a4, 0(a3)
	ld	a3, 8(a3)
	addi	a5, a0, 1
	addi	a6, a0, 2
	addi	a7, a0, 3
	addi	t0, a0, 4
	addi	t1, a0, 5
	addi	t2, a0, 6
	addi	t3, a0, 7
	addi	t4, a0, 8
	addi	t5, a0, 9
	addi	t6, a0, 10
	regsw_c	x9, 0x121(x18)		# 100100100100100100001
	addi	x1, a0, 11
	addi	x2, a0, 12
	addi	x3, a0, 13
	addi	x4, a0, 14
	addi	x5, a0, 15
	slli	x6, a2, 3
	add	a2, a4, x6
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	a3, a3, x6
	addi	a4, a2, 128
	slli	a5, a5, 1
	slli	a6, a6, 1
	slli	a7, a7, 1
	slli	t0, t0, 1
	slli	t1, t1, 1
	slli	t2, t2, 1
	slli	t3, t3, 1
	slli	t4, t4, 1
	slli	t5, t5, 1
	slli	t6, t6, 1
	regsw_c	x13, 0x5a4(x27)		# 110110110110110100100
	slli	x1, x1, 1
	slli	x2, x2, 1
	slli	x3, x3, 1
	slli	x4, x4, 1
	slli	x5, x5, 1
	ld	x6, 56(sp)                      # 8-byte Folded Reload
	ld	x7, 64(sp)                      # 8-byte Folded Reload
.LBB9_241:                              #   Parent Loop BB9_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x15, 0x51f(x18)		# 100100111110100011111
	ld	x8, 0(a2)
	slli	x9, a0, 1
	add	x10, x8, x9
	lh	x10, 0(x10)
	ld	x11, 0(a3)
	sh	x10, -16(x7)
	add	x9, x11, x9
	regsw_c	x29, 0x4f6(x25)		# 110011110110011110110
	lh	x9, 0(x9)
	sh	x9, -16(x6)
	add	x9, x8, a5
	lh	x9, 0(x9)
	sh	x9, -14(x7)
	add	x9, x11, a5
	lh	x9, 0(x9)
	regsw_c	x12, 0x7b3(x15)		# 011110110011110110011
	sh	x9, -14(x6)
	add	x9, x8, a6
	lh	x9, 0(x9)
	sh	x9, -12(x7)
	add	x9, x11, a6
	lh	x9, 0(x9)
	sh	x9, -12(x6)
	regsw_c	x7, 0x59e(x27)		# 110110011110110011110
	add	x9, x8, a7
	lh	x9, 0(x9)
	sh	x9, -10(x7)
	add	x9, x11, a7
	lh	x9, 0(x9)
	sh	x9, -10(x6)
	add	x9, x8, t0
	regsw_c	x29, 0x4f6(x25)		# 110011110110011110110
	lh	x9, 0(x9)
	sh	x9, -8(x7)
	add	x9, x11, t0
	lh	x9, 0(x9)
	sh	x9, -8(x6)
	add	x9, x8, t1
	lh	x9, 0(x9)
	regsw_c	x12, 0x7b3(x15)		# 011110110011110110011
	sh	x9, -6(x7)
	add	x9, x11, t1
	lh	x9, 0(x9)
	sh	x9, -6(x6)
	add	x9, x8, t2
	lh	x9, 0(x9)
	sh	x9, -4(x7)
	regsw_c	x7, 0x59e(x27)		# 110110011110110011110
	add	x9, x11, t2
	lh	x9, 0(x9)
	sh	x9, -4(x6)
	add	x9, x8, t3
	lh	x9, 0(x9)
	sh	x9, -2(x7)
	add	x9, x11, t3
	regsw_c	x29, 0x4f6(x25)		# 110011110110011110110
	lh	x9, 0(x9)
	sh	x9, -2(x6)
	add	x9, x8, t4
	lh	x9, 0(x9)
	sh	x9, 0(x7)
	add	x9, x11, t4
	lh	x9, 0(x9)
	regsw_c	x12, 0x7b3(x15)		# 011110110011110110011
	sh	x9, 0(x6)
	add	x9, x8, t5
	lh	x9, 0(x9)
	sh	x9, 2(x7)
	add	x9, x11, t5
	lh	x9, 0(x9)
	sh	x9, 2(x6)
	regsw_c	x7, 0x59f(x27)		# 110110011110110011111
	add	x9, x8, t6
	lh	x9, 0(x9)
	sh	x9, 4(x7)
	add	x9, x11, t6
	lh	x9, 0(x9)
	sh	x9, 4(x6)
	add	x9, x8, x1
	regsw_c	x31, 0x4fe(x25)		# 110011111110011111110
	lh	x9, 0(x9)
	sh	x9, 6(x7)
	add	x9, x11, x1
	lh	x9, 0(x9)
	sh	x9, 6(x6)
	add	x9, x8, x2
	lh	x9, 0(x9)
	regsw_c	x28, 0x7f3(x15)		# 011111110011111110011
	sh	x9, 8(x7)
	add	x9, x11, x2
	lh	x9, 0(x9)
	sh	x9, 8(x6)
	add	x9, x8, x3
	lh	x9, 0(x9)
	sh	x9, 10(x7)
	regsw_c	x7, 0x79f(x31)		# 111110011111110011111
	add	x9, x11, x3
	lh	x9, 0(x9)
	sh	x9, 10(x6)
	add	x9, x8, x4
	lh	x9, 0(x9)
	sh	x9, 12(x7)
	add	x9, x11, x4
	regsw_c	x31, 0x4fe(x25)		# 110011111110011111110
	lh	x9, 0(x9)
	sh	x9, 12(x6)
	add	x8, x8, x5
	lh	x8, 0(x8)
	sh	x8, 14(x7)
	add	x11, x11, x5
	lh	x8, 0(x11)
	regsw_c	x1, 0x580(x12)		# 011000000110110000000
	sh	x8, 14(x6)
	addi	a2, a2, 8
	addi	a3, a3, 8
	addi	x7, x7, 32
	addi	x6, x6, 32
	bne	a2, a4, .LBB9_241
# %bb.242:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a2, %lo(img)(s2)
	add	a0, a1, s1
.LBB9_243:                              #   in Loop: Header=BB9_24 Depth=1
	sw	a0, 364(s10)
	ld	a0, %lo(input)(s3)
	addi	a0, a0, 2047
	lw	a1, 1845(a0)
	beq	a1, s4, .LBB9_245
# %bb.244:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a1, 3
	add	a1, a2, a1
	ld	a3, 1848(a1)
	lui	a5, %hi(cofAC)
	ld	a4, %lo(cofAC)(a5)
	sd	a3, %lo(cofAC)(a5)
	sd	a4, 1848(a1)
.LBB9_245:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	lw	a3, 156(a2)
	lui	a4, 2
	add	a1, a1, a4
	ld	a1, -1768(a1)
	lw	a4, 152(a2)
	slli	a3, a3, 3
	add	a1, a1, a3
	addi	a3, a1, 128
	slli	a4, a4, 1
	ld	a5, 112(sp)                     # 8-byte Folded Reload
.LBB9_246:                              #   Parent Loop BB9_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a6, 0(a1)
	add	a6, a6, a4
	lh	a7, 0(a6)
	sh	a7, -16(a5)
	lh	a7, 2(a6)
	sh	a7, -14(a5)
	lh	a7, 4(a6)
	sh	a7, -12(a5)
	lh	a7, 6(a6)
	sh	a7, -10(a5)
	lh	a7, 8(a6)
	sh	a7, -8(a5)
	lh	a7, 10(a6)
	sh	a7, -6(a5)
	lh	a7, 12(a6)
	sh	a7, -4(a5)
	lh	a7, 14(a6)
	sh	a7, -2(a5)
	lh	a7, 16(a6)
	sh	a7, 0(a5)
	lh	a7, 18(a6)
	sh	a7, 2(a5)
	lh	a7, 20(a6)
	sh	a7, 4(a5)
	lh	a7, 22(a6)
	sh	a7, 6(a5)
	lh	a7, 24(a6)
	sh	a7, 8(a5)
	lh	a7, 26(a6)
	sh	a7, 10(a5)
	lh	a7, 28(a6)
	sh	a7, 12(a5)
	lh	a6, 30(a6)
	sh	a6, 14(a5)
	addi	a1, a1, 8
	addi	a5, a5, 32
	bne	a1, a3, .LBB9_246
# %bb.247:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a0, 1861(a0)
	beqz	a0, .LBB9_249
# %bb.248:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a0, 168(a2)
	lw	a1, 172(a2)
	ld	a3, 144(sp)                     # 8-byte Folded Reload
	add	a2, a2, a3
	call	rc_store_diff
.LBB9_249:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a5, 460(sp)
	lui	a0, %hi(best_mode)
	li	a1, 13
	sh	a1, %lo(best_mode)(a0)
	lw	s1, 468(s10)
	j	.LBB9_325
.LBB9_250:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a1, 1156(a0)
	ld	a0, %lo(input)(s3)
	addi	a0, a0, 2047
	beqz	a1, .LBB9_321
# %bb.251:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a2, 1845(a0)
	beqz	a2, .LBB9_321
# %bb.252:                              #   in Loop: Header=BB9_24 Depth=1
	li	a1, 1
	beq	a2, s4, .LBB9_322
# %bb.253:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a1, 448(sp)
	lw	a2, 456(sp)
	slt	a1, a1, a2
	j	.LBB9_322
.LBB9_254:                              #   in Loop: Header=BB9_24 Depth=1
	lui	s2, %hi(input)
	fsd	fs4, 464(sp)
	lui	a5, %hi(best_mode)
	ld	t0, 224(sp)                     # 8-byte Folded Reload
	sh	t0, %lo(best_mode)(a5)
	lw	a5, 1210(a2)
	li	s0, 11
	bnez	a5, .LBB9_259
.LBB9_255:                              #   in Loop: Header=BB9_24 Depth=1
	li	s0, 9
	ld	a5, 256(sp)                     # 8-byte Folded Reload
	bnez	a5, .LBB9_259
# %bb.256:                              #   in Loop: Header=BB9_24 Depth=1
	bne	a4, s4, .LBB9_259
# %bb.257:                              #   in Loop: Header=BB9_24 Depth=1
	addi	a3, a3, 1089
	lw	a3, 1180(a3)
	li	s0, 9
	beqz	a3, .LBB9_259
# %bb.258:                              #   in Loop: Header=BB9_24 Depth=1
	li	s0, 5
.LBB9_259:                              #   in Loop: Header=BB9_24 Depth=1
	sd	s8, 192(sp)                     # 8-byte Folded Spill
	lui	s8, %hi(img)
	lw	a3, 1264(a1)
	beqz	a3, .LBB9_261
# %bb.260:                              #   in Loop: Header=BB9_24 Depth=1
	sh	zero, 0(a2)
.LBB9_261:                              #   in Loop: Header=BB9_24 Depth=1
	sd	zero, 320(sp)                   # 8-byte Folded Spill
	li	a3, 5
	beq	s0, a3, .LBB9_264
# %bb.262:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a2, 1186(a2)
	beqz	a2, .LBB9_264
# %bb.263:                              #   in Loop: Header=BB9_24 Depth=1
	addi	a0, sp, 356
	addi	a1, sp, 352
	addi	a2, sp, 348
	call	IntraChromaPrediction
	li	a7, 3
	lui	a6, %hi(mb_mode_table)
	addi	a6, a6, %lo(mb_mode_table)
	ld	a0, %lo(img)(s8)
	ld	a1, %lo(input)(s2)
	li	a2, 3
	sd	a2, 320(sp)                     # 8-byte Folded Spill
.LBB9_264:                              #   in Loop: Header=BB9_24 Depth=1
	li	a2, 0
	sw	zero, 416(s10)
	j	.LBB9_267
.LBB9_265:                              #   in Loop: Header=BB9_267 Depth=2
	lw	a3, 416(s10)
	li	s5, 32
.LBB9_266:                              #   in Loop: Header=BB9_267 Depth=2
	addiw	a2, a3, 1
	sw	a2, 416(s10)
	ld	a4, 320(sp)                     # 8-byte Folded Reload
	bge	a3, a4, .LBB9_365
.LBB9_267:                              #   Parent Loop BB9_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_284 Depth 3
	lui	a3, 22
	add	a3, a0, a3
	lw	a3, 436(a3)
	beqz	a3, .LBB9_281
# %bb.268:                              #   in Loop: Header=BB9_267 Depth=2
	addi	a3, a1, 2047
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	beqz	a4, .LBB9_270
# %bb.269:                              #   in Loop: Header=BB9_267 Depth=2
	lw	a4, 977(a3)
	bnez	a4, .LBB9_273
.LBB9_270:                              #   in Loop: Header=BB9_267 Depth=2
	lw	a3, 1001(a3)
	bne	a3, s6, .LBB9_273
# %bb.271:                              #   in Loop: Header=BB9_267 Depth=2
	beqz	a2, .LBB9_281
# %bb.272:                              #   in Loop: Header=BB9_267 Depth=2
	mv	a3, a2
	j	.LBB9_266
.LBB9_273:                              #   in Loop: Header=BB9_267 Depth=2
	lw	a4, 356(sp)
	li	a3, 2
	bne	a2, a3, .LBB9_275
# %bb.274:                              #   in Loop: Header=BB9_267 Depth=2
	beqz	a4, .LBB9_266
.LBB9_275:                              #   in Loop: Header=BB9_267 Depth=2
	lw	a5, 352(sp)
	li	a3, 1
	bne	a2, a3, .LBB9_277
# %bb.276:                              #   in Loop: Header=BB9_267 Depth=2
	beqz	a5, .LBB9_266
.LBB9_277:                              #   in Loop: Header=BB9_267 Depth=2
	bne	a2, a7, .LBB9_281
# %bb.278:                              #   in Loop: Header=BB9_267 Depth=2
	beqz	a5, .LBB9_364
# %bb.279:                              #   in Loop: Header=BB9_267 Depth=2
	beqz	a4, .LBB9_364
# %bb.280:                              #   in Loop: Header=BB9_267 Depth=2
	lw	a2, 348(sp)
	beqz	a2, .LBB9_364
.LBB9_281:                              #   in Loop: Header=BB9_267 Depth=2
	li	s5, 0
	li	s3, 0
	j	.LBB9_284
.LBB9_282:                              #   in Loop: Header=BB9_284 Depth=3
	li	s6, 1
.LBB9_283:                              #   in Loop: Header=BB9_284 Depth=3
	addiw	s5, s5, 1
	bge	s5, s0, .LBB9_265
.LBB9_284:                              #   Parent Loop BB9_24 Depth=1
                                        #     Parent Loop BB9_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a2, 280(sp)                     # 8-byte Folded Reload
	add	a2, a0, a2
	slli	a3, s5, 2
	add	a4, a6, a3
	lw	a5, 1186(a2)
	lw	s1, 0(a4)
	beqz	a5, .LBB9_296
# %bb.285:                              #   in Loop: Header=BB9_284 Depth=3
	addi	a4, a1, 2047
	lw	a4, 1089(a4)
	bne	a4, s4, .LBB9_288
# %bb.286:                              #   in Loop: Header=BB9_284 Depth=3
	xori	a3, s9, 1
	or	a3, a3, s5
	sw	zero, 452(sp)
	beqz	a3, .LBB9_283
# %bb.287:                              #   in Loop: Header=BB9_284 Depth=3
	addi	a3, s9, -2
	snez	a3, a3
	addi	a4, s5, -1
	seqz	a4, a4
	and	a3, a3, a4
	beqz	a3, .LBB9_296
	j	.LBB9_283
.LBB9_288:                              #   in Loop: Header=BB9_284 Depth=3
	lw	a4, 1210(a2)
	beqz	a4, .LBB9_294
# %bb.289:                              #   in Loop: Header=BB9_284 Depth=3
	addi	a4, s5, -5
	bltu	a7, a4, .LBB9_295
# %bb.290:                              #   in Loop: Header=BB9_284 Depth=3
	lw	a2, 356(sp)
	addiw	a3, s5, -5
	or	a4, a3, a2
	sw	a3, 452(sp)
	beqz	a4, .LBB9_315
# %bb.291:                              #   in Loop: Header=BB9_284 Depth=3
	lw	a4, 352(sp)
	bne	a3, s6, .LBB9_316
# %bb.292:                              #   in Loop: Header=BB9_284 Depth=3
	bnez	a4, .LBB9_316
# %bb.293:                              #   in Loop: Header=BB9_284 Depth=3
	li	s5, 6
	j	.LBB9_283
.LBB9_294:                              #   in Loop: Header=BB9_284 Depth=3
	sw	zero, 452(sp)
	j	.LBB9_296
.LBB9_295:                              #   in Loop: Header=BB9_284 Depth=3
	lui	a4, %hi(mb_mode_table_RCT)
	addi	a4, a4, %lo(mb_mode_table_RCT)
	add	a3, a4, a3
	lw	s1, 0(a3)
.LBB9_296:                              #   in Loop: Header=BB9_284 Depth=3
	addi	a3, s1, -1
	li	a4, 1
	seqz	s6, a3
	li	s11, 1
	bne	s9, a4, .LBB9_302
# %bb.297:                              #   in Loop: Header=BB9_284 Depth=3
	bne	s1, a4, .LBB9_302
# %bb.298:                              #   in Loop: Header=BB9_284 Depth=3
	lw	a3, 1264(a1)
	lui	a4, %hi(best8x8pdir)
	addi	a4, a4, %lo(best8x8pdir)
	sh	s3, 14(a4)
	sh	s3, 12(a4)
	sh	s3, 10(a4)
	sh	s3, 8(a4)
	beqz	a3, .LBB9_301
# %bb.299:                              #   in Loop: Header=BB9_284 Depth=3
	bne	s3, s4, .LBB9_301
# %bb.300:                              #   in Loop: Header=BB9_284 Depth=3
	lh	a2, 0(a2)
	slti	a2, a2, 2
	subw	s3, s4, a2
.LBB9_301:                              #   in Loop: Header=BB9_284 Depth=3
	slti	a2, s3, 2
	subw	s5, s5, a2
	addiw	s3, s3, 1
	li	s6, 1
	li	s1, 1
.LBB9_302:                              #   in Loop: Header=BB9_284 Depth=3
	li	a2, 10
	blt	s1, a2, .LBB9_307
.LBB9_303:                              #   in Loop: Header=BB9_284 Depth=3
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	bnez	a2, .LBB9_307
# %bb.304:                              #   in Loop: Header=BB9_284 Depth=3
	lw	a2, 1936(a1)
	beqz	a2, .LBB9_307
# %bb.305:                              #   in Loop: Header=BB9_284 Depth=3
	lui	a2, %hi(best_mode)
	lh	a2, %lo(best_mode)(a2)
	blt	a7, a2, .LBB9_307
# %bb.306:                              #   in Loop: Header=BB9_284 Depth=3
	lw	a2, 364(s10)
	beqz	a2, .LBB9_282
.LBB9_307:                              #   in Loop: Header=BB9_284 Depth=3
	slli	s7, s1, 1
	addi	a2, sp, 492
	add	a2, a2, s7
	lhu	a2, 0(a2)
	beqz	a2, .LBB9_309
# %bb.308:                              #   in Loop: Header=BB9_284 Depth=3
	lw	s4, 452(sp)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	addi	a2, sp, 360
	addi	a3, sp, 464
	addi	a4, sp, 432
	addi	a7, sp, 446
	mv	a0, s1
	mv	a1, s10
	mv	a5, s4
	li	s4, 2
	ld	a6, 304(sp)                     # 8-byte Folded Reload
	call	compute_mode_RD_cost
	li	a7, 3
	lui	a6, %hi(mb_mode_table)
	addi	a6, a6, %lo(mb_mode_table)
	ld	a0, %lo(img)(s8)
	ld	a1, %lo(input)(s2)
.LBB9_309:                              #   in Loop: Header=BB9_284 Depth=3
	bne	s9, s11, .LBB9_282
# %bb.310:                              #   in Loop: Header=BB9_284 Depth=3
	lw	a2, 1264(a1)
	beqz	a2, .LBB9_282
# %bb.311:                              #   in Loop: Header=BB9_284 Depth=3
	bne	s3, s4, .LBB9_282
# %bb.312:                              #   in Loop: Header=BB9_284 Depth=3
	add	a2, a0, s7
	lui	a3, 22
	addiw	a3, a3, -752
	add	a2, a2, a3
	lh	a3, 0(a2)
	slti	a4, a3, 2
	and	a4, s6, a4
	li	s3, 2
	beqz	a4, .LBB9_282
# %bb.313:                              #   in Loop: Header=BB9_284 Depth=3
	lui	a4, %hi(best8x8pdir)
	addi	a4, a4, %lo(best8x8pdir)
	lhu	a4, 8(a4)
	li	s6, 1
	bne	a4, s4, .LBB9_283
# %bb.314:                              #   in Loop: Header=BB9_284 Depth=3
	addi	a3, a3, 1
	sh	a3, 0(a2)
	j	.LBB9_283
.LBB9_315:                              #   in Loop: Header=BB9_284 Depth=3
	li	s5, 5
	j	.LBB9_283
.LBB9_316:                              #   in Loop: Header=BB9_284 Depth=3
	li	s1, 10
	bne	a3, a7, .LBB9_320
# %bb.317:                              #   in Loop: Header=BB9_284 Depth=3
	li	s5, 8
	beqz	a4, .LBB9_283
# %bb.318:                              #   in Loop: Header=BB9_284 Depth=3
	beqz	a2, .LBB9_283
# %bb.319:                              #   in Loop: Header=BB9_284 Depth=3
	lw	a2, 348(sp)
	beqz	a2, .LBB9_283
.LBB9_320:                              #   in Loop: Header=BB9_284 Depth=3
	li	s11, 1
	li	s6, 0
	li	a2, 10
	bge	s1, a2, .LBB9_303
	j	.LBB9_307
.LBB9_321:                              #   in Loop: Header=BB9_24 Depth=1
	li	a1, 0
.LBB9_322:                              #   in Loop: Header=BB9_24 Depth=1
	sw	a1, 468(s10)
	lw	a0, 1861(a0)
	beqz	a0, .LBB9_324
# %bb.323:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a2, %lo(img)(s2)
	lw	a0, 168(a2)
	lw	a1, 172(a2)
	ld	a3, 144(sp)                     # 8-byte Folded Reload
	add	a2, a2, a3
	call	rc_store_diff
.LBB9_324:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a5, 460(sp)
	lui	a0, %hi(best_mode)
	sh	zero, %lo(best_mode)(a0)
	lhu	a0, 518(sp)
	bnez	a0, .LBB9_232
.LBB9_325:                              #   in Loop: Header=BB9_24 Depth=1
	lhu	a0, 510(sp)
	beqz	a0, .LBB9_328
# %bb.326:                              #   in Loop: Header=BB9_24 Depth=1
	fld	fa0, 472(sp)
	sw	zero, 468(s10)
	li	a0, 9
	sw	a0, 72(s10)
	addi	a0, sp, 460
	mv	s7, a5
	call	Mode_Decision_for_Intra4x4Macroblock
	lw	a1, 460(sp)
	bge	s7, a1, .LBB9_330
# %bb.327:                              #   in Loop: Header=BB9_24 Depth=1
	mv	a5, s7
	sw	s1, 468(s10)
	ld	a0, %lo(img)(s2)
	lui	a1, 3
	add	a0, a0, a1
	ld	a1, 1848(a0)
	lui	a3, %hi(cofAC)
	ld	a2, %lo(cofAC)(a3)
	sd	a1, %lo(cofAC)(a3)
	sd	a2, 1848(a0)
.LBB9_328:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	lhu	a0, 512(sp)
	bnez	a0, .LBB9_337
.LBB9_329:                              #   in Loop: Header=BB9_24 Depth=1
	lui	s0, %hi(input)
	andi	a0, s8, 1
	beqz	a0, .LBB9_450
	j	.LBB9_23
.LBB9_330:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a1, %lo(img)(s2)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 460(a1)
	beqz	a1, .LBB9_334
# %bb.331:                              #   in Loop: Header=BB9_24 Depth=1
	mv	s1, a0
	lui	a1, %hi(cbp_chroma_block)
	lw	a0, %lo(cbp_chroma_block)(a1)
	addi	a1, a1, %lo(cbp_chroma_block)
	lw	a2, 4(a1)
	lw	a3, 8(a1)
	lw	a4, 12(a1)
	lw	a5, 16(a1)
	lw	a6, 20(a1)
	lw	a7, 24(a1)
	lw	t0, 28(a1)
	lw	t1, 32(a1)
	lw	t2, 36(a1)
	lw	t3, 40(a1)
	lw	t4, 44(a1)
	lw	t5, 48(a1)
	lw	t6, 52(a1)
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	lw	x1, 56(a1)
	lw	x2, 60(a1)
	lw	x3, 64(a1)
	lw	x4, 68(a1)
	lw	x5, 72(a1)
	lw	x6, 76(a1)
	lw	x7, 80(a1)
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	lw	x8, 84(a1)
	lw	x9, 88(a1)
	lw	x10, 92(a1)
	lw	x11, 96(a1)
	lw	x12, 100(a1)
	lw	x13, 112(a1)
	lw	x14, 120(a1)
	regsw_c	x8, 0x1ff(x18)		# 100100100000111111111
	lw	x15, 124(a1)
	lw	x16, 116(a1)
	lw	x17, 104(a1)
	lw	a1, 108(a1)
	or	x14, x15, x14
	or	x13, x16, x13
	or	x13, x14, x13
	regsw_c	x21, 0x7f9(x4)		# 001001010111111111001
	or	a1, a1, x17
	or	a1, a1, x12
	or	a1, x13, a1
	or	x10, x11, x10
	or	x9, x10, x9
	or	x8, x9, x8
	or	a1, a1, x8
	regsw_c	x31, 0x67a(x31)		# 111111111111001111010
	or	x6, x7, x6
	or	x5, x6, x5
	or	x4, x5, x4
	or	x3, x4, x3
	or	a1, a1, x3
	or	x1, x2, x1
	or	t6, x1, t6
	or	t5, t6, t5
	or	t4, t5, t4
	or	t3, t4, t3
	or	a1, a1, t3
	or	t1, t2, t1
	or	t0, t1, t0
	or	a7, t0, a7
	or	a6, a7, a6
	or	a5, a6, a5
	or	a4, a5, a4
	or	a1, a1, a4
	or	a2, a3, a2
	or	a0, a2, a0
	or	a0, a1, a0
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB9_333
# %bb.332:                              #   in Loop: Header=BB9_24 Depth=1
	li	a1, 2
.LBB9_333:                              #   in Loop: Header=BB9_24 Depth=1
	li	a0, 0
	call	dct_chroma_DC
	mv	a1, a0
	li	a0, 1
	call	dct_chroma_DC
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	slli	a1, a0, 4
	add	a0, a1, s1
.LBB9_334:                              #   in Loop: Header=BB9_24 Depth=1
	sw	a0, 364(s10)
	ld	a0, %lo(input)(s3)
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB9_336
# %bb.335:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a2, %lo(img)(s2)
	lw	a0, 168(a2)
	lw	a1, 172(a2)
	ld	a3, 144(sp)                     # 8-byte Folded Reload
	add	a2, a2, a3
	call	rc_store_diff
.LBB9_336:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a5, 460(sp)
	lui	a0, %hi(best_mode)
	li	a1, 9
	sh	a1, %lo(best_mode)(a0)
	lw	s1, 468(s10)
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	lhu	a0, 512(sp)
	beqz	a0, .LBB9_329
.LBB9_337:                              #   in Loop: Header=BB9_24 Depth=1
	sw	zero, 468(s10)
	mv	s7, a5
	call	intrapred_luma_16x16
	addi	a0, sp, 452
	call	find_sad_16x16
	sw	a0, 460(sp)
	bge	a0, s7, .LBB9_362
# %bb.338:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a0, %lo(input)(s3)
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB9_340
# %bb.339:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a2, %lo(img)(s2)
	lw	a3, 452(sp)
	lw	a0, 168(a2)
	lw	a1, 172(a2)
	slli	a3, a3, 9
	ld	a4, 128(sp)                     # 8-byte Folded Reload
	add	a2, a2, a4
	add	a2, a2, a3
	call	rc_store_diff
.LBB9_340:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a0, %lo(img)(s2)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 460(a1)
	lui	a2, 3
	addiw	s0, a2, -1736
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x10, 64
	beqz	a1, .LBB9_345
# %bb.341:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a1, %hi(imgUV_org)
	ld	a5, %lo(imgUV_org)(a1)
	li	a1, 0
	lui	a2, %hi(imgY_org)
	ld	a2, %lo(imgY_org)(a2)
	ld	a3, 128(sp)                     # 8-byte Folded Reload
	add	a3, a0, a3
	ld	a4, 0(a5)
	ld	a5, 8(a5)
	add	a6, a0, s0
	lui	a7, 3
	addiw	a7, a7, 824
	add	a7, a0, a7
	lui	t0, %hi(resTrans_R)
	addi	t0, t0, %lo(resTrans_R)
	lui	t1, %hi(resTrans_B)
	addi	t1, t1, %lo(resTrans_B)
	lui	t2, %hi(resTrans_G)
	addi	t2, t2, %lo(resTrans_G)
.LBB9_342:                              #   Parent Loop BB9_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_343 Depth 3
	lw	t3, 156(a0)
	addw	t3, t3, a1
	slli	t5, t3, 3
	add	t3, a2, t5
	ld	t3, 0(t3)
	add	t4, a4, t5
	ld	t4, 0(t4)
	add	t5, a5, t5
	ld	t5, 0(t5)
	li	t6, 0
	regsw_c	x8, 0x0(x18)		# 100100100000000000000
	li	x1, 0
	mv	x2, a3
	mv	x3, a6
.LBB9_343:                              #   Parent Loop BB9_24 Depth=1
                                        #     Parent Loop BB9_342 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x29, 0x174(x19)		# 100111110100101110100
	lw	x4, 152(a0)
	add	x4, x1, x4
	slli	x4, x4, 1
	lw	x5, 452(sp)
	add	x6, t3, x4
	lhu	x6, 0(x6)
	lw	x7, 416(s10)
	regsw_c	x29, 0x5f5(x26)		# 110101110110111110101
	slli	x5, x5, 9
	add	x8, t4, x4
	lhu	x8, 0(x8)
	slli	x7, x7, 9
	add	x7, x3, x7
	lhu	x9, -2048(x7)
	add	x4, t5, x4
	regsw_c	x15, 0x5ff(x27)		# 110110111110111111111
	lhu	x4, 0(x4)
	lhu	x7, 0(x7)
	add	x5, x2, x5
	lhu	x5, 0(x5)
	sub	x8, x8, x9
	sub	x4, x4, x7
	sub	x4, x4, x8
	regsw_c	x29, 0x7fc(x17)		# 100011110111111111100
	add	x7, t0, t6
	sw	x4, 0(x7)
	srli	x4, x4, 1
	add	x4, x4, x8
	subw	x5, x6, x5
	subw	x5, x5, x4
	add	x6, t1, t6
	regsw_c	x15, 0xe3(x15)		# 011110111100011100011
	sw	x5, 0(x6)
	sraiw	x5, x5, 1
	add	x4, x5, x4
	add	x5, t2, t6
	sw	x4, 0(x5)
	add	x5, a7, t6
	sw	x4, 0(x5)
	regsw_c	x13, 0x440(x24)		# 110000110110001000000
	addi	x1, x1, 1
	addi	t6, t6, 4
	addi	x3, x3, 2
	addi	x2, x2, 2
	bne	t6, x10, .LBB9_343
# %bb.344:                              #   in Loop: Header=BB9_342 Depth=2
	addi	a1, a1, 1
	addi	a7, a7, 64
	addi	t2, t2, 64
	addi	t1, t1, 64
	addi	t0, t0, 64
	addi	a6, a6, 32
	addi	a3, a3, 32
	li	t3, 16
	bne	a1, t3, .LBB9_342
.LBB9_345:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a0, 452(sp)
	lui	a1, %hi(best_mode)
	li	a2, 10
	sh	a2, %lo(best_mode)(a1)
	call	dct_luma_16x16
	sw	a0, 364(s10)
	ld	a0, %lo(img)(s2)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 460(a1)
	beqz	a1, .LBB9_363
# %bb.346:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	ld	a2, 104(sp)                     # 8-byte Folded Reload
.LBB9_347:                              #   Parent Loop BB9_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a3, -60(a0)
	lw	a4, -32(a2)
	sw	a3, -32(a1)
	sw	a4, -60(a0)
	lw	a3, -56(a0)
	lw	a4, -28(a2)
	sw	a3, -28(a1)
	sw	a4, -56(a0)
	lw	a3, -52(a0)
	lw	a4, -24(a2)
	sw	a3, -24(a1)
	sw	a4, -52(a0)
	lw	a3, -48(a0)
	lw	a4, -20(a2)
	sw	a3, -20(a1)
	sw	a4, -48(a0)
	lw	a3, -44(a0)
	lw	a4, -16(a2)
	sw	a3, -16(a1)
	sw	a4, -44(a0)
	lw	a3, -40(a0)
	lw	a4, -12(a2)
	sw	a3, -12(a1)
	sw	a4, -40(a0)
	lw	a3, -36(a0)
	lw	a4, -8(a2)
	sw	a3, -8(a1)
	sw	a4, -36(a0)
	lw	a3, -32(a0)
	lw	a4, -4(a2)
	sw	a3, -4(a1)
	sw	a4, -32(a0)
	lw	a3, -28(a0)
	lw	a4, 0(a2)
	sw	a3, 0(a1)
	sw	a4, -28(a0)
	lw	a3, -24(a0)
	lw	a4, 4(a2)
	sw	a3, 4(a1)
	sw	a4, -24(a0)
	lw	a3, -20(a0)
	lw	a4, 8(a2)
	sw	a3, 8(a1)
	sw	a4, -20(a0)
	lw	a3, -16(a0)
	lw	a4, 12(a2)
	sw	a3, 12(a1)
	sw	a4, -16(a0)
	lw	a3, -12(a0)
	lw	a4, 16(a2)
	sw	a3, 16(a1)
	sw	a4, -12(a0)
	lw	a3, -8(a0)
	lw	a4, 20(a2)
	sw	a3, 20(a1)
	sw	a4, -8(a0)
	lw	a3, -4(a0)
	lw	a4, 24(a2)
	sw	a3, 24(a1)
	sw	a4, -4(a0)
	lw	a3, 0(a0)
	lw	a4, 28(a2)
	sw	a3, 28(a1)
	sw	a4, 0(a0)
	addi	a2, a2, 64
	addi	a1, a1, 64
	addi	a0, a0, 64
	bne	a2, s11, .LBB9_347
# %bb.348:                              #   in Loop: Header=BB9_24 Depth=1
	li	a0, 0
	li	a1, 0
	call	dct_chroma
	ld	a2, %lo(img)(s2)
	mv	a1, a0
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	add	a0, a2, a0
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	lui	a6, %hi(resTrans_R)
	addi	a6, a6, %lo(resTrans_R)
.LBB9_349:                              #   Parent Loop BB9_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a4, -60(a0)
	lw	a5, -32(a3)
	sw	a4, -32(a2)
	sw	a5, -60(a0)
	lw	a4, -56(a0)
	lw	a5, -28(a3)
	sw	a4, -28(a2)
	sw	a5, -56(a0)
	lw	a4, -52(a0)
	lw	a5, -24(a3)
	sw	a4, -24(a2)
	sw	a5, -52(a0)
	lw	a4, -48(a0)
	lw	a5, -20(a3)
	sw	a4, -20(a2)
	sw	a5, -48(a0)
	lw	a4, -44(a0)
	lw	a5, -16(a3)
	sw	a4, -16(a2)
	sw	a5, -44(a0)
	lw	a4, -40(a0)
	lw	a5, -12(a3)
	sw	a4, -12(a2)
	sw	a5, -40(a0)
	lw	a4, -36(a0)
	lw	a5, -8(a3)
	sw	a4, -8(a2)
	sw	a5, -36(a0)
	lw	a4, -32(a0)
	lw	a5, -4(a3)
	sw	a4, -4(a2)
	sw	a5, -32(a0)
	lw	a4, -28(a0)
	lw	a5, 0(a3)
	sw	a4, 0(a2)
	sw	a5, -28(a0)
	lw	a4, -24(a0)
	lw	a5, 4(a3)
	sw	a4, 4(a2)
	sw	a5, -24(a0)
	lw	a4, -20(a0)
	lw	a5, 8(a3)
	sw	a4, 8(a2)
	sw	a5, -20(a0)
	lw	a4, -16(a0)
	lw	a5, 12(a3)
	sw	a4, 12(a2)
	sw	a5, -16(a0)
	lw	a4, -12(a0)
	lw	a5, 16(a3)
	sw	a4, 16(a2)
	sw	a5, -12(a0)
	lw	a4, -8(a0)
	lw	a5, 20(a3)
	sw	a4, 20(a2)
	sw	a5, -8(a0)
	lw	a4, -4(a0)
	lw	a5, 24(a3)
	sw	a4, 24(a2)
	sw	a5, -4(a0)
	lw	a4, 0(a0)
	lw	a5, 28(a3)
	sw	a4, 28(a2)
	sw	a5, 0(a0)
	addi	a3, a3, 64
	addi	a2, a2, 64
	addi	a4, a6, 1056
	addi	a0, a0, 64
	bne	a3, a4, .LBB9_349
# %bb.350:                              #   in Loop: Header=BB9_24 Depth=1
	li	a0, 1
	call	dct_chroma
	ld	t0, %lo(img)(s2)
	mv	a3, a0
	lui	a0, 22
	addiw	a4, a0, 420
	add	a4, t0, a4
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	add	a0, t0, a0
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	lui	t4, %hi(rec_resR)
	addi	t4, t4, %lo(rec_resR)
.LBB9_351:                              #   Parent Loop BB9_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a2, -60(a0)
	sw	a2, -32(a1)
	lw	a2, -56(a0)
	sw	a2, -28(a1)
	lw	a2, -52(a0)
	sw	a2, -24(a1)
	lw	a2, -48(a0)
	sw	a2, -20(a1)
	lw	a2, -44(a0)
	sw	a2, -16(a1)
	lw	a2, -40(a0)
	sw	a2, -12(a1)
	lw	a2, -36(a0)
	sw	a2, -8(a1)
	lw	a2, -32(a0)
	sw	a2, -4(a1)
	lw	a2, -28(a0)
	sw	a2, 0(a1)
	lw	a2, -24(a0)
	sw	a2, 4(a1)
	lw	a2, -20(a0)
	sw	a2, 8(a1)
	lw	a2, -16(a0)
	sw	a2, 12(a1)
	lw	a2, -12(a0)
	sw	a2, 16(a1)
	lw	a2, -8(a0)
	sw	a2, 20(a1)
	lw	a2, -4(a0)
	sw	a2, 24(a1)
	lw	a2, 0(a0)
	sw	a2, 28(a1)
	addi	a1, a1, 64
	addi	a2, t4, 1056
	addi	a0, a0, 64
	bne	a1, a2, .LBB9_351
# %bb.352:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a1, 364(s10)
	li	a0, 0
	sd	a3, 152(sp)                     # 8-byte Folded Spill
	slli	a2, a3, 4
	add	a1, a1, a2
	sw	a1, 364(s10)
	lw	a1, 156(t0)
	lw	t1, 152(t0)
	lui	a2, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a2)
	lw	a2, 0(a4)
	lw	t2, 452(sp)
	lui	t3, 2
	addiw	a5, t3, -1768
	add	a3, a3, a5
	ld	a6, 40(a3)
	ld	a3, 0(a3)
	lw	a7, 416(s10)
	lw	a4, 4(a4)
	ld	a5, 0(a6)
	ld	a6, 8(a6)
	slli	a7, a7, 9
	add	a7, t0, a7
	add	s0, a7, s0
	addiw	t3, t3, 312
	add	a7, a7, t3
	slli	t2, t2, 9
	ld	t3, 128(sp)                     # 8-byte Folded Reload
	add	t0, t0, t3
	add	t0, t0, t2
	slli	t1, t1, 1
	lui	t2, %hi(rec_resG)
	addi	t2, t2, %lo(rec_resG)
	lui	t3, %hi(rec_resB)
	addi	t3, t3, %lo(rec_resB)
	j	.LBB9_354
.LBB9_353:                              #   in Loop: Header=BB9_354 Depth=2
	addi	a0, a0, 1
	addi	s0, s0, 32
	addi	a7, a7, 32
	addi	t0, t0, 32
	addi	t4, t4, 64
	addi	t3, t3, 64
	addi	t2, t2, 64
	li	t5, 16
	beq	a0, t5, .LBB9_363
.LBB9_354:                              #   Parent Loop BB9_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_356 Depth 3
	add	t5, a0, a1
	slli	t5, t5, 3
	add	t6, a3, t5
	regsw_c	x9, 0x502(x16)		# 100000100110100000010
	add	x1, a5, t5
	add	t5, a6, t5
	ld	x2, 0(t5)
	ld	x1, 0(x1)
	ld	x3, 0(t6)
	li	t5, 0
	add	t6, x2, t1
	regsw_c	x9, 0x100(x27)		# 110110100100100000000
	add	x1, x1, t1
	add	x2, x3, t1
	mv	x3, t2
	mv	x4, t3
	mv	x5, t4
	j	.LBB9_356
.LBB9_355:                              #   in Loop: Header=BB9_356 Depth=3
	regsw_c	x17, 0x5b0(x17)		# 100011000110110110000
	add	x7, t6, t5
	sh	x6, 0(x7)
	addi	t5, t5, 2
	addi	x5, x5, 4
	addi	x4, x4, 4
	addi	x3, x3, 4
	beq	t5, s5, .LBB9_353
.LBB9_356:                              #   Parent Loop BB9_24 Depth=1
                                        #     Parent Loop BB9_354 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x9, 0x5be(x27)		# 110110100110110111110
	lw	x8, 0(x4)
	lw	x6, 0(x3)
	add	x7, t0, t5
	lhu	x9, 0(x7)
	srai	x7, x8, 1
	subw	x7, x6, x7
	lw	x6, 0(x5)
	regsw_c	x27, 0x5e1(x31)		# 111111101110111100001
	add	x8, x8, x9
	addw	x8, x7, x8
	sgtz	x9, x8
	neg	x9, x9
	and	x9, x9, x8
	mv	x8, a2
	blt	a2, x9, .LBB9_358
# %bb.357:                              #   in Loop: Header=BB9_356 Depth=3
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x8, x9
.LBB9_358:                              #   in Loop: Header=BB9_356 Depth=3
	regsw_c	x25, 0x5bf(x25)		# 110011100110110111111
	add	x9, x2, t5
	sh	x8, 0(x9)
	add	x8, a7, t5
	lhu	x8, 0(x8)
	srli	x9, x6, 1
	subw	x7, x7, x9
	addw	x8, x7, x8
	regsw_c	x15, 0x40(x23)		# 101110111100001000000
	sgtz	x9, x8
	neg	x9, x9
	and	x9, x9, x8
	mv	x8, a4
	blt	a4, x9, .LBB9_360
# %bb.359:                              #   in Loop: Header=BB9_356 Depth=3
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x8, x9
.LBB9_360:                              #   in Loop: Header=BB9_356 Depth=3
	regsw_c	x25, 0x5fd(x25)		# 110011100110111111101
	add	x9, x1, t5
	sh	x8, 0(x9)
	add	x8, s0, t5
	lhu	x8, 0(x8)
	add	x6, x7, x6
	addw	x6, x6, x8
	sgtz	x7, x6
	regsw_c	x24, 0x200(x27)		# 110111100001000000000
	neg	x7, x7
	and	x7, x7, x6
	mv	x6, a4
	blt	a4, x7, .LBB9_355
# %bb.361:                              #   in Loop: Header=BB9_356 Depth=3
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x6, x7
	j	.LBB9_355
.LBB9_362:                              #   in Loop: Header=BB9_24 Depth=1
	mv	a5, s7
	sw	s1, 468(s10)
	sw	s0, 472(s10)
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	lui	s0, %hi(input)
	andi	a0, s8, 1
	beqz	a0, .LBB9_450
	j	.LBB9_23
.LBB9_363:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	lui	s0, %hi(input)
	mv	a5, s7
	andi	a0, s8, 1
	beqz	a0, .LBB9_450
	j	.LBB9_23
.LBB9_364:                              #   in Loop: Header=BB9_24 Depth=1
	li	a2, 4
	sw	a2, 416(s10)
.LBB9_365:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a2, 24(a0)
	bne	a2, s4, .LBB9_367
# %bb.366:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	lui	s2, %hi(img)
	lui	s0, %hi(input)
	ld	s11, 168(sp)                    # 8-byte Folded Reload
	lui	a7, %hi(gaaiMBAFF_NZCoeff)
	addi	a7, a7, %lo(gaaiMBAFF_NZCoeff)
	ld	s8, 192(sp)                     # 8-byte Folded Reload
	j	.LBB9_374
.LBB9_367:                              #   in Loop: Header=BB9_24 Depth=1
	addi	a2, a1, 2047
	addi	a2, a2, 1089
	lw	a3, 0(a2)
	lui	s2, %hi(img)
	lui	s0, %hi(input)
	ld	s11, 168(sp)                    # 8-byte Folded Reload
	lui	a7, %hi(gaaiMBAFF_NZCoeff)
	addi	a7, a7, %lo(gaaiMBAFF_NZCoeff)
	ld	s8, 192(sp)                     # 8-byte Folded Reload
	bne	a3, s4, .LBB9_373
# %bb.368:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a2, 1180(a2)
	beqz	a2, .LBB9_373
# %bb.369:                              #   in Loop: Header=BB9_24 Depth=1
	lw	a1, 0(a1)
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	li	a2, 99
	blt	a2, a1, .LBB9_374
# %bb.370:                              #   in Loop: Header=BB9_24 Depth=1
	fld	fa0, 432(sp)
	addi	a0, sp, 444
	call	fast_mode_intra_decision
	lhu	a1, 444(sp)
	ld	a0, %lo(img)(s2)
	beqz	a1, .LBB9_371
	j	.LBB9_221
.LBB9_371:                              #   in Loop: Header=BB9_24 Depth=1
	lui	s7, %hi(input)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 436(a0)
	beqz	a0, .LBB9_388
# %bb.372:                              #   in Loop: Header=BB9_24 Depth=1
	lui	s5, %hi(img)
	addi	a0, sp, 356
	addi	a1, sp, 352
	addi	a2, sp, 348
	call	IntraChromaPrediction
	li	s0, 3
	j	.LBB9_389
.LBB9_373:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a3, 208(sp)                     # 8-byte Folded Reload
.LBB9_374:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a1, 22
	addiw	a1, a1, 428
	add	a1, a0, a1
	lw	a2, 0(a1)
	li	a4, -3
	bge	a2, a4, .LBB9_375
	j	.LBB9_22
.LBB9_375:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a2, 128(a0)
	li	a3, 0
	li	a4, -1
.LBB9_376:                              #   Parent Loop BB9_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a5, 12(a0)
	slli	a5, a5, 3
	add	a5, a2, a5
	ld	a5, 0(a5)
	add	a6, a7, a3
	ld	a5, 0(a5)
	lw	a6, 0(a6)
	add	a5, a5, a3
	sw	a6, 0(a5)
	lw	a5, 0(a1)
	addiw	a6, a5, 3
	addi	a4, a4, 1
	addi	a3, a3, 4
	blt	a4, a6, .LBB9_376
# %bb.377:                              #   in Loop: Header=BB9_24 Depth=1
	li	a2, -3
	bge	a5, a2, .LBB9_378
	j	.LBB9_21
.LBB9_378:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a2, 128(a0)
	li	a3, 0
	li	a4, -1
.LBB9_379:                              #   Parent Loop BB9_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a5, 12(a0)
	slli	a5, a5, 3
	add	a5, a2, a5
	ld	a5, 0(a5)
	add	a6, a7, a3
	ld	a5, 8(a5)
	lw	a6, 48(a6)
	add	a5, a5, a3
	sw	a6, 0(a5)
	lw	a5, 0(a1)
	addiw	a6, a5, 3
	addi	a4, a4, 1
	addi	a3, a3, 4
	blt	a4, a6, .LBB9_379
# %bb.380:                              #   in Loop: Header=BB9_24 Depth=1
	li	a2, -3
	bge	a5, a2, .LBB9_381
	j	.LBB9_21
.LBB9_381:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a2, 128(a0)
	li	a3, 0
	li	a4, -1
.LBB9_382:                              #   Parent Loop BB9_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a5, 12(a0)
	slli	a5, a5, 3
	add	a5, a2, a5
	ld	a5, 0(a5)
	add	a6, a7, a3
	ld	a5, 16(a5)
	lw	a6, 96(a6)
	add	a5, a5, a3
	sw	a6, 0(a5)
	lw	a5, 0(a1)
	addiw	a6, a5, 3
	addi	a4, a4, 1
	addi	a3, a3, 4
	blt	a4, a6, .LBB9_382
# %bb.383:                              #   in Loop: Header=BB9_24 Depth=1
	li	a2, -3
	bge	a5, a2, .LBB9_384
	j	.LBB9_21
.LBB9_384:                              #   in Loop: Header=BB9_24 Depth=1
	ld	a2, 128(a0)
	li	a3, 0
	li	a4, -1
.LBB9_385:                              #   Parent Loop BB9_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a5, 12(a0)
	slli	a5, a5, 3
	add	a5, a2, a5
	ld	a5, 0(a5)
	add	a6, a7, a3
	ld	a5, 24(a5)
	lw	a6, 144(a6)
	add	a5, a5, a3
	sw	a6, 0(a5)
	lw	a5, 0(a1)
	addiw	a5, a5, 3
	addi	a4, a4, 1
	addi	a3, a3, 4
	blt	a4, a5, .LBB9_385
	j	.LBB9_21
.LBB9_386:                              #   in Loop: Header=BB9_24 Depth=1
	call	GetBestTransformP8x8
	beqz	a0, .LBB9_447
# %bb.387:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a0, %hi(tr8x8)
	lw	a0, %lo(tr8x8)(a0)
	li	a7, 3
	j	.LBB9_214
.LBB9_388:                              #   in Loop: Header=BB9_24 Depth=1
	lui	s5, %hi(img)
	li	s0, 0
.LBB9_389:                              #   in Loop: Header=BB9_24 Depth=1
	li	t0, 3
	lhu	s2, 512(sp)
	li	a4, 0
	sw	zero, 416(s10)
	j	.LBB9_392
.LBB9_390:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a6, 416(s10)
.LBB9_391:                              #   in Loop: Header=BB9_392 Depth=2
	addiw	a4, a6, 1
	sw	a4, 416(s10)
	bge	a6, s0, .LBB9_449
.LBB9_392:                              #   Parent Loop BB9_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(img)(s5)
	lui	a1, 22
	addiw	s3, a1, 436
	add	a0, a0, s3
	lw	a2, 0(a0)
	ld	a3, %lo(input)(s7)
	addi	a1, a3, 2047
	beqz	a2, .LBB9_405
# %bb.393:                              #   in Loop: Header=BB9_392 Depth=2
	ld	a5, 256(sp)                     # 8-byte Folded Reload
	beqz	a5, .LBB9_395
# %bb.394:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a5, 977(a1)
	bnez	a5, .LBB9_397
.LBB9_395:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a5, 1001(a1)
	bne	a5, s6, .LBB9_397
# %bb.396:                              #   in Loop: Header=BB9_392 Depth=2
	mv	a6, a4
	bnez	a4, .LBB9_391
	j	.LBB9_405
.LBB9_397:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a5, 356(sp)
	li	a6, 2
	bne	a4, a6, .LBB9_399
# %bb.398:                              #   in Loop: Header=BB9_392 Depth=2
	beqz	a5, .LBB9_391
.LBB9_399:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a7, 352(sp)
	li	a6, 1
	bne	a4, a6, .LBB9_401
# %bb.400:                              #   in Loop: Header=BB9_392 Depth=2
	beqz	a7, .LBB9_391
.LBB9_401:                              #   in Loop: Header=BB9_392 Depth=2
	bne	a4, t0, .LBB9_405
# %bb.402:                              #   in Loop: Header=BB9_392 Depth=2
	beqz	a7, .LBB9_448
# %bb.403:                              #   in Loop: Header=BB9_392 Depth=2
	beqz	a5, .LBB9_448
# %bb.404:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a4, 348(sp)
	beqz	a4, .LBB9_448
.LBB9_405:                              #   in Loop: Header=BB9_392 Depth=2
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	bnez	a4, .LBB9_409
# %bb.406:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a3, 1936(a3)
	beqz	a3, .LBB9_409
# %bb.407:                              #   in Loop: Header=BB9_392 Depth=2
	lui	a3, %hi(best_mode)
	lh	a3, %lo(best_mode)(a3)
	blt	t0, a3, .LBB9_409
# %bb.408:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a3, 364(s10)
	beqz	a3, .LBB9_416
.LBB9_409:                              #   in Loop: Header=BB9_392 Depth=2
	beqz	a2, .LBB9_414
# %bb.410:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a1, 1089(a1)
	bne	a1, s4, .LBB9_412
# %bb.411:                              #   in Loop: Header=BB9_392 Depth=2
	sw	zero, 452(sp)
	j	.LBB9_414
.LBB9_412:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a0, 24(a0)
	sw	zero, 452(sp)
	beqz	a0, .LBB9_414
# %bb.413:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a0, 356(sp)
	beqz	a0, .LBB9_416
.LBB9_414:                              #   in Loop: Header=BB9_392 Depth=2
	beqz	s2, .LBB9_416
# %bb.415:                              #   in Loop: Header=BB9_392 Depth=2
	lw	s1, 452(sp)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	li	a0, 10
	addi	a2, sp, 360
	addi	a3, sp, 464
	addi	a4, sp, 432
	addi	a7, sp, 446
	mv	a1, s10
	mv	a5, s1
	ld	a6, 304(sp)                     # 8-byte Folded Reload
	call	compute_mode_RD_cost
	li	t0, 3
.LBB9_416:                              #   in Loop: Header=BB9_392 Depth=2
	ld	a0, %lo(img)(s5)
	add	a0, a0, s3
	lw	a1, 0(a0)
	li	s1, 9
	beqz	a1, .LBB9_421
# %bb.417:                              #   in Loop: Header=BB9_392 Depth=2
	ld	a1, %lo(input)(s7)
	addi	a1, a1, 2047
	lw	a1, 1089(a1)
	beq	a1, s4, .LBB9_420
# %bb.418:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a0, 24(a0)
	beqz	a0, .LBB9_420
# %bb.419:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a0, 352(sp)
	sw	s6, 452(sp)
	li	s1, 10
	bnez	a0, .LBB9_421
	j	.LBB9_423
.LBB9_420:                              #   in Loop: Header=BB9_392 Depth=2
	sw	zero, 452(sp)
.LBB9_421:                              #   in Loop: Header=BB9_392 Depth=2
	slli	a0, s1, 1
	addi	a1, sp, 492
	add	a0, a1, a0
	lhu	a0, 0(a0)
	beqz	a0, .LBB9_423
# %bb.422:                              #   in Loop: Header=BB9_392 Depth=2
	lw	s4, 452(sp)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	addi	a2, sp, 360
	addi	a3, sp, 464
	addi	a4, sp, 432
	addi	a7, sp, 446
	mv	a0, s1
	mv	a1, s10
	mv	a5, s4
	li	s4, 2
	ld	a6, 304(sp)                     # 8-byte Folded Reload
	call	compute_mode_RD_cost
	li	t0, 3
.LBB9_423:                              #   in Loop: Header=BB9_392 Depth=2
	ld	a0, %lo(input)(s7)
	lui	a1, %hi(best_mode)
	lh	a1, %lo(best_mode)(a1)
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	bnez	a2, .LBB9_427
# %bb.424:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a2, 1936(a0)
	beqz	a2, .LBB9_427
# %bb.425:                              #   in Loop: Header=BB9_392 Depth=2
	blt	t0, a1, .LBB9_427
# %bb.426:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a2, 364(s10)
	beqz	a2, .LBB9_434
.LBB9_427:                              #   in Loop: Header=BB9_392 Depth=2
	ld	a2, %lo(img)(s5)
	add	a2, a2, s3
	lw	a3, 0(a2)
	li	s1, 13
	beqz	a3, .LBB9_432
# %bb.428:                              #   in Loop: Header=BB9_392 Depth=2
	addi	a3, a0, 2047
	lw	a3, 1089(a3)
	beq	a3, s4, .LBB9_431
# %bb.429:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a2, 24(a2)
	beqz	a2, .LBB9_431
# %bb.430:                              #   in Loop: Header=BB9_392 Depth=2
	sw	s4, 452(sp)
	li	s1, 10
	j	.LBB9_432
.LBB9_431:                              #   in Loop: Header=BB9_392 Depth=2
	sw	zero, 452(sp)
.LBB9_432:                              #   in Loop: Header=BB9_392 Depth=2
	slli	a2, s1, 1
	addi	a3, sp, 492
	add	a2, a3, a2
	lhu	a2, 0(a2)
	beqz	a2, .LBB9_434
# %bb.433:                              #   in Loop: Header=BB9_392 Depth=2
	lw	s4, 452(sp)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	addi	a2, sp, 360
	addi	a3, sp, 464
	addi	a4, sp, 432
	addi	a7, sp, 446
	mv	a0, s1
	mv	a1, s10
	mv	a5, s4
	li	s4, 2
	ld	a6, 304(sp)                     # 8-byte Folded Reload
	call	compute_mode_RD_cost
	li	t0, 3
	ld	a0, %lo(input)(s7)
	lui	a1, %hi(best_mode)
	lhu	a1, %lo(best_mode)(a1)
.LBB9_434:                              #   in Loop: Header=BB9_392 Depth=2
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	bnez	a2, .LBB9_438
# %bb.435:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a2, 1936(a0)
	beqz	a2, .LBB9_438
# %bb.436:                              #   in Loop: Header=BB9_392 Depth=2
	slli	a1, a1, 48
	srai	a1, a1, 48
	blt	t0, a1, .LBB9_438
# %bb.437:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a1, 364(s10)
	beqz	a1, .LBB9_390
.LBB9_438:                              #   in Loop: Header=BB9_392 Depth=2
	ld	a1, %lo(img)(s5)
	add	s3, a1, s3
	lw	a1, 0(s3)
	li	s1, 14
	beqz	a1, .LBB9_445
# %bb.439:                              #   in Loop: Header=BB9_392 Depth=2
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	beq	a0, s4, .LBB9_444
# %bb.440:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a0, 24(s3)
	beqz	a0, .LBB9_444
# %bb.441:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a0, 352(sp)
	sw	t0, 452(sp)
	beqz	a0, .LBB9_390
# %bb.442:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a0, 356(sp)
	beqz	a0, .LBB9_390
# %bb.443:                              #   in Loop: Header=BB9_392 Depth=2
	lw	a0, 348(sp)
	li	s1, 10
	bnez	a0, .LBB9_445
	j	.LBB9_390
.LBB9_444:                              #   in Loop: Header=BB9_392 Depth=2
	sw	zero, 452(sp)
.LBB9_445:                              #   in Loop: Header=BB9_392 Depth=2
	slli	a0, s1, 1
	addi	a1, sp, 492
	add	a0, a1, a0
	lhu	a0, 0(a0)
	beqz	a0, .LBB9_390
# %bb.446:                              #   in Loop: Header=BB9_392 Depth=2
	lw	s4, 452(sp)
	addi	a0, sp, 360
	addi	a1, sp, 472
	li	a2, 72
	call	memcpy
	addi	a2, sp, 360
	addi	a3, sp, 464
	addi	a4, sp, 432
	addi	a7, sp, 446
	mv	a0, s1
	mv	a1, s10
	mv	a5, s4
	li	s4, 2
	ld	a6, 304(sp)                     # 8-byte Folded Reload
	call	compute_mode_RD_cost
	li	t0, 3
	j	.LBB9_390
.LBB9_447:                              #   in Loop: Header=BB9_24 Depth=1
	lui	a0, %hi(tr4x4)
	lw	a0, %lo(tr4x4)(a0)
	li	s0, 0
	li	a7, 3
	j	.LBB9_214
.LBB9_448:                              #   in Loop: Header=BB9_24 Depth=1
	li	a0, 4
	sw	a0, 416(s10)
.LBB9_449:                              #   in Loop: Header=BB9_24 Depth=1
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	ld	a3, 208(sp)                     # 8-byte Folded Reload
	lui	s0, %hi(input)
	li	s5, 32
	j	.LBB9_222
.LBB9_450:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 1089(a0)
	beqz	a1, .LBB9_457
# %bb.451:
	lui	a1, %hi(cbp)
	lw	a2, %lo(cbp)(a1)
	li	a1, 1
	bnez	a2, .LBB9_455
# %bb.452:
	lui	a2, %hi(best_mode)
	lhu	a2, %lo(best_mode)(a2)
	li	a3, 10
	beq	a2, a3, .LBB9_455
# %bb.453:
	lw	a0, 1861(a0)
	bnez	a0, .LBB9_456
# %bb.454:
	lw	a0, 488(s10)
	sw	zero, 8(s10)
	sw	a0, 12(s10)
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	li	a1, 0
	sw	a0, 40(a2)
.LBB9_455:
	sw	a1, 496(s10)
.LBB9_456:
	mv	s4, a5
	call	set_stored_macroblock_parameters
	j	.LBB9_503
.LBB9_457:
	mv	s4, a5
	lui	s0, %hi(best_mode)
	lh	a0, %lo(best_mode)(s0)
	call	SetModesAndRefframeForBlocks
	lhu	a0, %lo(best_mode)(s0)
	li	a1, 13
	beq	a0, a1, .LBB9_465
# %bb.458:
	li	a1, 8
	bne	a0, a1, .LBB9_470
# %bb.459:
	lw	a0, 468(s10)
	beqz	a0, .LBB9_463
# %bb.460:
	lui	a0, %hi(cbp8_8x8ts)
	lw	a0, %lo(cbp8_8x8ts)(a0)
	bnez	a0, .LBB9_463
# %bb.461:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1845(a0)
	li	a1, 2
	beq	a0, a1, .LBB9_463
# %bb.462:
	sw	zero, 468(s10)
.LBB9_463:
	mv	a0, s10
	call	SetCoeffAndReconstruction8x8
	lui	a0, 8224
	addi	a0, a0, 514
	sw	a0, 344(s10)
	sw	a0, 340(s10)
	sw	a0, 336(s10)
	sw	a0, 332(s10)
	lui	a0, %hi(img)
	ld	a4, %lo(img)(a0)
	lw	a2, 148(a4)
	addi	a1, a2, -1
	slli	a2, a2, 3
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	li	a3, 2
.LBB9_464:                              # =>This Inner Loop Header: Depth=1
	ld	a5, 0(a2)
	lw	a4, 144(a4)
	add	a4, a5, a4
	sb	a3, 3(a4)
	sb	a3, 2(a4)
	sb	a3, 1(a4)
	sb	a3, 0(a4)
	ld	a4, %lo(img)(a0)
	lw	a5, 148(a4)
	addiw	a5, a5, 3
	addi	a1, a1, 1
	addi	a2, a2, 8
	blt	a1, a5, .LBB9_464
	j	.LBB9_481
.LBB9_465:
	lw	a0, 360(s10)
	lw	a1, 356(s10)
	lw	a2, 352(s10)
	lw	a3, 348(s10)
	sw	a0, 344(s10)
	sw	a1, 340(s10)
	sw	a2, 336(s10)
	sw	a3, 332(s10)
	lui	a0, %hi(img)
	ld	a3, %lo(img)(a0)
	lw	a2, 148(a3)
	addi	a1, a2, -1
	slli	a2, a2, 3
.LBB9_466:                              # =>This Inner Loop Header: Depth=1
	ld	a4, 104(a3)
	ld	a5, 112(a3)
	add	a4, a4, a2
	ld	a4, 0(a4)
	lw	a3, 144(a3)
	add	a5, a5, a2
	ld	a5, 0(a5)
	add	a4, a4, a3
	add	a3, a5, a3
	lbu	a5, 2(a3)
	lb	a6, 3(a3)
	lbu	a7, 0(a3)
	lbu	a3, 1(a3)
	sb	a5, 2(a4)
	sb	a6, 3(a4)
	sb	a7, 0(a4)
	sb	a3, 1(a4)
	ld	a3, %lo(img)(a0)
	lw	a4, 148(a3)
	addiw	a4, a4, 3
	addi	a1, a1, 1
	addi	a2, a2, 8
	blt	a1, a4, .LBB9_466
# %bb.467:
	lui	s0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(s0)
	lw	a1, 156(a3)
	lui	s1, 2
	add	a0, a0, s1
	ld	a0, -1768(a0)
	lw	a2, 152(a3)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a2, a2, 1
	add	a0, a0, a2
	li	a2, 32
	lui	s3, %hi(temp_imgY)
	addi	s3, s3, %lo(temp_imgY)
	mv	a1, s3
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	lui	s2, %hi(img)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 8(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 32
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 16(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 64
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 24(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 96
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 32(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 128
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 40(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 160
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 48(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 192
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 56(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 224
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 64(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 256
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 72(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 288
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 80(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 320
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 88(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 352
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 96(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 384
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 104(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 416
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 112(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 448
	li	a2, 32
	call	memcpy
	ld	a0, %lo(enc_picture)(s0)
	ld	a1, %lo(img)(s2)
	add	a0, a0, s1
	lw	a2, 156(a1)
	ld	a0, -1768(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	lw	a1, 152(a1)
	ld	a0, 120(a0)
	slli	a1, a1, 1
	add	a0, a0, a1
	addi	a1, s3, 480
	li	a2, 32
	call	memcpy
	ld	a0, %lo(img)(s2)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 460(a1)
	beqz	a1, .LBB9_470
# %bb.468:
	ld	a1, %lo(enc_picture)(s0)
	add	a1, a1, s1
	ld	a1, -1728(a1)
	lw	a5, 160(a0)
	lw	a0, 164(a0)
	ld	a2, 0(a1)
	ld	a1, 8(a1)
	addi	a6, a5, 1
	addi	a7, a5, 2
	addi	t0, a5, 3
	addi	t1, a5, 4
	addi	t2, a5, 5
	addi	t3, a5, 6
	addi	t4, a5, 7
	addi	t5, a5, 8
	addi	t6, a5, 9
	regsw_c	x9, 0x120(x18)		# 100100100100100100000
	addi	x1, a5, 10
	addi	x2, a5, 11
	addi	x3, a5, 12
	addi	x4, a5, 13
	addi	x5, a5, 14
	addi	x6, a5, 15
	slli	a3, a0, 3
	add	a0, a2, a3
	add	a1, a1, a3
	addi	a2, a0, 128
	lui	a3, %hi(temp_imgU)
	addi	a3, a3, %lo(temp_imgU)
	addi	a3, a3, 16
	lui	a4, %hi(temp_imgV)
	addi	a4, a4, %lo(temp_imgV)
	addi	a4, a4, 16
	slli	a5, a5, 1
	slli	a6, a6, 1
	slli	a7, a7, 1
	slli	t0, t0, 1
	slli	t1, t1, 1
	slli	t2, t2, 1
	slli	t3, t3, 1
	slli	t4, t4, 1
	slli	t5, t5, 1
	slli	t6, t6, 1
	regsw_c	x13, 0x5b0(x27)		# 110110110110110110000
	slli	x1, x1, 1
	slli	x2, x2, 1
	slli	x3, x3, 1
	slli	x4, x4, 1
	slli	x5, x5, 1
	slli	x6, x6, 1
.LBB9_469:                              # =>This Inner Loop Header: Depth=1
	regsw_c	x9, 0x4e6(x18)		# 100100100110011100110
	ld	x7, 0(a0)
	lh	x8, -16(a3)
	ld	x9, 0(a1)
	add	x10, x7, a5
	sh	x8, 0(x10)
	lh	x8, -16(a4)
	add	x10, x9, a5
	regsw_c	x12, 0x733(x14)		# 011100110011100110011
	sh	x8, 0(x10)
	lh	x8, -14(a3)
	add	x10, x7, a6
	sh	x8, 0(x10)
	lh	x8, -14(a4)
	add	x10, x9, a6
	sh	x8, 0(x10)
	regsw_c	x7, 0x19c(x19)		# 100110011100110011100
	lh	x8, -12(a3)
	add	x10, x7, a7
	sh	x8, 0(x10)
	lh	x8, -12(a4)
	add	x10, x9, a7
	sh	x8, 0(x10)
	lh	x8, -10(a3)
	regsw_c	x25, 0x4e6(x25)		# 110011100110011100110
	add	x10, x7, t0
	sh	x8, 0(x10)
	lh	x8, -10(a4)
	add	x10, x9, t0
	sh	x8, 0(x10)
	lh	x8, -8(a3)
	add	x10, x7, t1
	regsw_c	x12, 0x733(x14)		# 011100110011100110011
	sh	x8, 0(x10)
	lh	x8, -8(a4)
	add	x10, x9, t1
	sh	x8, 0(x10)
	lh	x8, -6(a3)
	add	x10, x7, t2
	sh	x8, 0(x10)
	regsw_c	x7, 0x19c(x19)		# 100110011100110011100
	lh	x8, -6(a4)
	add	x10, x9, t2
	sh	x8, 0(x10)
	lh	x8, -4(a3)
	add	x10, x7, t3
	sh	x8, 0(x10)
	lh	x8, -4(a4)
	regsw_c	x25, 0x4e6(x25)		# 110011100110011100110
	add	x10, x9, t3
	sh	x8, 0(x10)
	lh	x8, -2(a3)
	add	x10, x7, t4
	sh	x8, 0(x10)
	lh	x8, -2(a4)
	add	x10, x9, t4
	regsw_c	x12, 0x733(x14)		# 011100110011100110011
	sh	x8, 0(x10)
	lh	x8, 0(a3)
	add	x10, x7, t5
	sh	x8, 0(x10)
	lh	x8, 0(a4)
	add	x10, x9, t5
	sh	x8, 0(x10)
	regsw_c	x7, 0x19c(x19)		# 100110011100110011100
	lh	x8, 2(a3)
	add	x10, x7, t6
	sh	x8, 0(x10)
	lh	x8, 2(a4)
	add	x10, x9, t6
	sh	x8, 0(x10)
	lh	x8, 4(a3)
	regsw_c	x25, 0x6e7(x29)		# 111011100111011100111
	add	x10, x7, x1
	sh	x8, 0(x10)
	lh	x8, 4(a4)
	add	x10, x9, x1
	sh	x8, 0(x10)
	lh	x8, 6(a3)
	add	x10, x7, x2
	regsw_c	x14, 0x73b(x14)		# 011100111011100111011
	sh	x8, 0(x10)
	lh	x8, 6(a4)
	add	x10, x9, x2
	sh	x8, 0(x10)
	lh	x8, 8(a3)
	add	x10, x7, x3
	sh	x8, 0(x10)
	regsw_c	x23, 0x1dc(x19)		# 100111011100111011100
	lh	x8, 8(a4)
	add	x10, x9, x3
	sh	x8, 0(x10)
	lh	x8, 10(a3)
	add	x10, x7, x4
	sh	x8, 0(x10)
	lh	x8, 10(a4)
	regsw_c	x25, 0x6e7(x29)		# 111011100111011100111
	add	x10, x9, x4
	sh	x8, 0(x10)
	lh	x8, 12(a3)
	add	x10, x7, x5
	sh	x8, 0(x10)
	lh	x8, 12(a4)
	add	x10, x9, x5
	regsw_c	x14, 0x73b(x14)		# 011100111011100111011
	sh	x8, 0(x10)
	lh	x8, 14(a3)
	add	x7, x7, x6
	sh	x8, 0(x7)
	lh	x7, 14(a4)
	add	x9, x9, x6
	sh	x7, 0(x9)
	addi	a0, a0, 8
	addi	a1, a1, 8
	addi	a3, a3, 32
	addi	a4, a4, 32
	bne	a0, a2, .LBB9_469
.LBB9_470:
	lui	a0, %hi(best_mode)
	lhu	a0, %lo(best_mode)(a0)
	andi	a0, a0, -5
	li	a1, 9
	beq	a0, a1, .LBB9_481
# %bb.471:
	lui	a0, 8224
	addi	a0, a0, 514
	sw	a0, 344(s10)
	sw	a0, 340(s10)
	sw	a0, 336(s10)
	sw	a0, 332(s10)
	lui	a0, %hi(img)
	ld	a4, %lo(img)(a0)
	lw	a2, 148(a4)
	addi	a1, a2, -1
	slli	a2, a2, 3
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	li	a3, 2
.LBB9_472:                              # =>This Inner Loop Header: Depth=1
	ld	a5, 0(a2)
	lw	a4, 144(a4)
	add	a4, a5, a4
	sb	a3, 3(a4)
	sb	a3, 2(a4)
	sb	a3, 1(a4)
	sb	a3, 0(a4)
	ld	a4, %lo(img)(a0)
	lw	a5, 148(a4)
	addiw	a5, a5, 3
	addi	a1, a1, 1
	addi	a2, a2, 8
	blt	a1, a5, .LBB9_472
# %bb.473:
	lui	a0, %hi(best_mode)
	lhu	a0, %lo(best_mode)(a0)
	li	a1, 10
	beq	a0, a1, .LBB9_481
# %bb.474:
	addi	a0, a0, -1
	li	a1, 2
	bltu	a1, a0, .LBB9_476
# %bb.475:
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	sw	a0, 468(s10)
.LBB9_476:
	call	LumaResidualCoding
	lw	a0, 364(s10)
	bnez	a0, .LBB9_479
# %bb.477:
	lui	a0, %hi(best_mode)
	lhu	a0, %lo(best_mode)(a0)
	bnez	a0, .LBB9_479
# %bb.478:
	sw	zero, 468(s10)
.LBB9_479:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB9_481
# %bb.480:
	lui	a0, %hi(img)
	ld	a2, %lo(img)(a0)
	lw	a0, 168(a2)
	lw	a1, 172(a2)
	lui	a3, 3
	addiw	a3, a3, 312
	add	a2, a2, a3
	call	rc_store_diff
.LBB9_481:
	lbu	a0, 364(s10)
	andi	a0, a0, 15
	bnez	a0, .LBB9_484
# %bb.482:
	lw	a0, 72(s10)
	ori	a0, a0, 4
	li	a1, 13
	beq	a0, a1, .LBB9_484
# %bb.483:
	sw	zero, 468(s10)
.LBB9_484:
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lui	s0, 22
	add	a1, a0, s0
	lw	a1, 436(a1)
	beqz	a1, .LBB9_486
# %bb.485:
	li	a0, 0
	li	a1, 0
	li	a2, 0
	call	IntraChromaPrediction
	ld	a0, %lo(img)(s1)
.LBB9_486:
	addiw	a1, s0, 84
	add	a0, a0, a1
	sw	zero, 0(a0)
	sw	zero, 360(sp)
	lw	a1, 376(a0)
	ld	s0, 304(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB9_497
# %bb.487:
	lui	a1, %hi(best_mode)
	lhu	a1, %lo(best_mode)(a1)
	li	a2, 13
	bltu	a2, a1, .LBB9_497
# %bb.488:
	li	a2, 19
	slli	a2, a2, 9
	srl	a2, a2, a1
	andi	a2, a2, 1
	beqz	a2, .LBB9_497
# %bb.489:
	li	a0, 10
	bne	a1, a0, .LBB9_491
.LBB9_490:
	lw	a0, 364(s10)
	lw	a1, 452(sp)
	call	I16Offset
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	sw	a0, 84(a1)
.LBB9_491:
	mv	a0, s10
	mv	a1, s0
	call	SetMotionVectorsMB
	lui	a0, %hi(best_mode)
	lhu	a0, %lo(best_mode)(a0)
	addi	a0, a0, -1
	seqz	a0, a0
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	and	a0, a1, a0
	beqz	a0, .LBB9_500
# %bb.492:
	lw	a1, 364(s10)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	bnez	a1, .LBB9_501
# %bb.493:
	lui	a1, %hi(enc_picture)
	ld	a1, %lo(enc_picture)(a1)
	lui	a2, 2
	addiw	a2, a2, -1712
	add	a1, a1, a2
	ld	a2, 0(a1)
	lw	a3, 148(a0)
	ld	a4, 0(a2)
	slli	a2, a3, 3
	add	a4, a4, a2
	ld	a4, 0(a4)
	lw	a3, 144(a0)
	add	a4, a4, a3
	lbu	a4, 0(a4)
	bnez	a4, .LBB9_501
# %bb.494:
	ld	a1, 24(a1)
	ld	a1, 0(a1)
	add	a1, a1, a2
	ld	a1, 0(a1)
	slli	a3, a3, 3
	add	a1, a1, a3
	ld	a1, 0(a1)
	lhu	a2, 0(a1)
	ld	a4, 120(sp)                     # 8-byte Folded Reload
	lhu	a3, 0(a4)
	bne	a2, a3, .LBB9_501
# %bb.495:
	lhu	a1, 2(a1)
	lhu	a2, 2(a4)
	bne	a1, a2, .LBB9_501
# %bb.496:
	sw	zero, 72(s10)
	sw	zero, 468(s10)
	sd	zero, 376(s10)
	sd	zero, 384(s10)
	j	.LBB9_501
.LBB9_497:
	lw	a0, 352(a0)
	beqz	a0, .LBB9_499
# %bb.498:
	addi	a0, sp, 360
	call	ChromaResidualCoding
.LBB9_499:
	lui	a0, %hi(best_mode)
	lhu	a1, %lo(best_mode)(a0)
	li	a0, 10
	beq	a1, a0, .LBB9_490
	j	.LBB9_491
.LBB9_500:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
.LBB9_501:
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 108(a0)
	beqz	a0, .LBB9_503
# %bb.502:
	call	set_mbaff_parameters
.LBB9_503:
	lui	s0, %hi(input)
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB9_514
# %bb.504:
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	lw	a0, 24(a0)
	bnez	a0, .LBB9_514
# %bb.505:
	lui	a0, %hi(best_mode)
	lhu	s1, %lo(best_mode)(a0)
	call	calc_MAD
	ld	a0, %lo(img)(s2)
	lui	a1, 22
	addiw	a2, a1, 256
	add	a2, a0, a2
	lw	a1, 12(a0)
	ld	a3, 40(a2)
	slli	a1, a1, 3
	add	a1, a3, a1
	fsd	fa0, 0(a1)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a3, 1873(a1)
	lw	a4, 64(a2)
	bge	a3, a4, .LBB9_514
# %bb.506:
	fld	fa5, 0(a2)
	fadd.d	fa5, fa0, fa5
	fsd	fa5, 0(a2)
	li	a3, 10
	li	a2, 1
	beq	s1, a3, .LBB9_509
# %bb.507:
	lw	a3, 364(s10)
	bnez	a3, .LBB9_509
# %bb.508:
	lw	a3, 488(s10)
	li	a2, 0
	sw	zero, 8(s10)
	sw	a3, 12(s10)
	sw	a3, 40(a0)
.LBB9_509:
	sw	a2, 496(s10)
	lw	a0, 1509(a1)
	beqz	a0, .LBB9_514
# %bb.510:
	lw	a1, 424(s10)
	lw	a0, 8(s10)
	beqz	a1, .LBB9_512
# %bb.511:
	lui	a1, %hi(DELTA_QP2)
	addi	a1, a1, %lo(DELTA_QP2)
	lui	a2, %hi(QP2)
	addi	a2, a2, %lo(QP2)
	j	.LBB9_513
.LBB9_512:
	lui	a1, %hi(DELTA_QP)
	addi	a1, a1, %lo(DELTA_QP)
	lui	a2, %hi(QP)
	addi	a2, a2, %lo(QP)
.LBB9_513:
	sw	a0, 0(a1)
	lw	a0, 12(s10)
	sw	a0, 0(a2)
.LBB9_514:
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	beqz	a0, .LBB9_516
# %bb.515:
	fld	fa5, 464(sp)
	j	.LBB9_517
.LBB9_516:
	fcvt.d.w	fa5, s4
.LBB9_517:
	lui	a0, %hi(rdopt)
	ld	a0, %lo(rdopt)(a0)
	fsd	fa5, 0(a0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 108(a1)
	beqz	a1, .LBB9_520
# %bb.518:
	lbu	a0, 12(a0)
	andi	a0, a0, 1
	beqz	a0, .LBB9_520
# %bb.519:
	lw	a0, 72(s10)
	beqz	a0, .LBB9_530
.LBB9_520:
	lui	s0, %hi(input)
	ld	a0, %lo(input)(s0)
	addi	a1, a0, 2047
	lw	a1, 1533(a1)
	beqz	a1, .LBB9_522
# %bb.521:
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	call	update_refresh_map
	ld	a0, %lo(input)(s0)
.LBB9_522:
	addi	a0, a0, 2047
	lw	a0, 1917(a0)
	li	a1, 2
	beq	a0, a1, .LBB9_526
# %bb.523:
	li	a1, 1
	bne	a0, a1, .LBB9_525
# %bb.524:
	lh	a1, 522(sp)
	lui	a0, %hi(best_mode)
	lh	a0, %lo(best_mode)(a0)
	slli	a1, a1, 2
	lui	a2, %hi(listXsize)
	addi	a2, a2, %lo(listXsize)
	add	a1, a2, a1
	lw	a1, 0(a1)
	call	skip_intrabk_SAD
.LBB9_525:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 220(a0)
	bnez	a0, .LBB9_527
	j	.LBB9_529
.LBB9_526:
	lh	a1, 522(sp)
	lui	a0, %hi(best_mode)
	lh	a0, %lo(best_mode)(a0)
	slli	a1, a1, 2
	lui	a2, %hi(listXsize)
	addi	a2, a2, %lo(listXsize)
	add	a1, a2, a1
	lw	a1, 0(a1)
	call	simplified_skip_intrabk_SAD
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 220(a0)
	beqz	a0, .LBB9_529
.LBB9_527:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	li	a2, 1
	bltu	a2, a1, .LBB9_529
# %bb.528:
	lw	a1, 72(s10)
	addiw	a1, a1, -9
	lui	a2, 22
	add	a2, a0, a2
	lw	a0, 12(a0)
	ld	a2, -920(a2)
	andi	a1, a1, -6
	seqz	a1, a1
	slli	a0, a0, 2
	add	a0, a2, a0
	sw	a1, 0(a0)
.LBB9_529:
	ld	ra, 696(sp)                     # 8-byte Folded Reload
	ld	s0, 688(sp)                     # 8-byte Folded Reload
	ld	s1, 680(sp)                     # 8-byte Folded Reload
	ld	s2, 672(sp)                     # 8-byte Folded Reload
	ld	s3, 664(sp)                     # 8-byte Folded Reload
	ld	s4, 656(sp)                     # 8-byte Folded Reload
	ld	s5, 648(sp)                     # 8-byte Folded Reload
	ld	s6, 640(sp)                     # 8-byte Folded Reload
	ld	s7, 632(sp)                     # 8-byte Folded Reload
	ld	s8, 624(sp)                     # 8-byte Folded Reload
	ld	s9, 616(sp)                     # 8-byte Folded Reload
	ld	s10, 608(sp)                    # 8-byte Folded Reload
	ld	s11, 600(sp)                    # 8-byte Folded Reload
	fld	fs0, 592(sp)                    # 8-byte Folded Reload
	fld	fs1, 584(sp)                    # 8-byte Folded Reload
	fld	fs2, 576(sp)                    # 8-byte Folded Reload
	fld	fs3, 568(sp)                    # 8-byte Folded Reload
	fld	fs4, 560(sp)                    # 8-byte Folded Reload
	fld	fs5, 552(sp)                    # 8-byte Folded Reload
	fld	fs6, 544(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 704
	ret
.LBB9_530:
	li	a0, 1
	bne	s9, a0, .LBB9_534
# %bb.531:
	lw	a0, 364(s10)
	bnez	a0, .LBB9_520
# %bb.532:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	lw	a0, 72(a0)
	bnez	a0, .LBB9_520
# %bb.533:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	lw	a0, 364(a0)
	bnez	a0, .LBB9_520
	j	.LBB9_535
.LBB9_534:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	lw	a0, 72(a0)
	bnez	a0, .LBB9_520
.LBB9_535:
	call	field_flag_inference
	lh	a1, 526(sp)
	beq	a0, a1, .LBB9_520
# %bb.536:
	lui	a0, %hi(rdopt)
	ld	a0, %lo(rdopt)(a0)
	lui	a1, %hi(.LCPI9_1)
	ld	a1, %lo(.LCPI9_1)(a1)
	sd	a1, 0(a0)
	j	.LBB9_520
.Lfunc_end9:
	.size	encode_one_macroblock, .Lfunc_end9-encode_one_macroblock
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	check_for_SI16                  # -- Begin function check_for_SI16
	.p2align	2
	.type	check_for_SI16,@function
check_for_SI16:                         # @check_for_SI16
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a4, 152(a0)
	lw	a7, 156(a0)
	lui	a0, %hi(lrec)
	ld	a0, %lo(lrec)(a0)
	addiw	a1, a4, 15
	addiw	a2, a7, 15
	slli	a3, a4, 2
	addi	a4, a4, -1
	li	a5, -16
.LBB10_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_2 Depth 2
	mv	a6, a7
	slli	a7, a7, 3
	add	a7, a0, a7
	ld	a7, 0(a7)
	add	a7, a7, a3
	mv	t0, a4
.LBB10_2:                               #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t1, 0(a7)
	bne	t1, a5, .LBB10_6
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=2
	addi	t0, t0, 1
	addi	a7, a7, 4
	blt	t0, a1, .LBB10_2
# %bb.4:                                #   in Loop: Header=BB10_1 Depth=1
	addi	a7, a6, 1
	blt	a6, a2, .LBB10_1
# %bb.5:
	li	a0, 1
	ret
.LBB10_6:
	li	a0, 0
	ret
.Lfunc_end10:
	.size	check_for_SI16, .Lfunc_end10-check_for_SI16
                                        # -- End function
	.option	pop
	.type	b8_mode_table,@object           # @b8_mode_table
	.section	.rodata,"a",@progbits
	.globl	b8_mode_table
	.p2align	2, 0x0
b8_mode_table:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	0                               # 0x0
	.size	b8_mode_table, 24

	.type	mb_mode_table,@object           # @mb_mode_table
	.globl	mb_mode_table
	.p2align	2, 0x0
mb_mode_table:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	8                               # 0x8
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	14                              # 0xe
	.size	mb_mode_table, 36

	.type	mb_mode_table_RCT,@object       # @mb_mode_table_RCT
	.globl	mb_mode_table_RCT
	.p2align	2, 0x0
mb_mode_table_RCT:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	8                               # 0x8
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	13                              # 0xd
	.size	mb_mode_table_RCT, 44

	.type	.L__const.submacroblock_mode_decision.bmcost,@object # @__const.submacroblock_mode_decision.bmcost
	.p2align	2, 0x0
.L__const.submacroblock_mode_decision.bmcost:
	.word	2147483647                      # 0x7fffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	.L__const.submacroblock_mode_decision.bmcost, 20

	.type	temp_imgU,@object               # @temp_imgU
	.bss
	.globl	temp_imgU
	.p2align	1, 0x0
temp_imgU:
	.zero	512
	.size	temp_imgU, 512

	.type	temp_imgV,@object               # @temp_imgV
	.globl	temp_imgV
	.p2align	1, 0x0
temp_imgV:
	.zero	512
	.size	temp_imgV, 512

	.type	temp_imgY,@object               # @temp_imgY
	.globl	temp_imgY
	.p2align	1, 0x0
temp_imgY:
	.zero	512
	.size	temp_imgY, 512

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
