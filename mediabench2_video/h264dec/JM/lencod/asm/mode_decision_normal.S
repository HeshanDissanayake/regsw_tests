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
	lui	a4, %hi(diffy)
	addi	a4, a4, %lo(diffy)
	slli	a0, a0, 1
	li	a5, 16
	mv	a6, a4
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	slli	a7, a3, 2
	add	a7, a7, a4
	addi	a7, a7, 1024
	slli	t0, a3, 1
	mv	t1, a1
	mv	t2, a2
	mv	t3, a6
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t4, 0(t1)
	add	t5, t0, a0
	add	t4, t4, t5
	lhu	t4, 0(t4)
	lhu	t5, 0(t2)
	subw	t4, t4, t5
	sw	t4, 0(t3)
	addi	t3, t3, 64
	addi	t2, t2, 32
	addi	t1, t1, 8
	bne	t3, a7, .LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	addi	a3, a3, 1
	addi	a6, a6, 4
	addi	a2, a2, 2
	bne	a3, a5, .LBB0_1
# %bb.4:
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
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
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
	ld	s1, 0(a1)
	slli	a7, t5, 1
	add	a6, t3, a7
	add	a7, t4, a7
	slli	t0, t1, 1
	add	t1, s1, t0
	add	t2, t2, t0
	slli	t3, t6, 1
	li	t4, 64
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	lhu	t5, 0(t2)
	lhu	t6, 0(a7)
	sub	t5, t5, t6
	add	t6, a3, a2
	ld	t6, 0(t6)
	add	s1, a5, a2
	ld	s1, 0(s1)
	srai	s2, t5, 63
	add	t6, t6, t0
	lhu	t6, 0(t6)
	add	s1, s1, t3
	lhu	s1, 0(s1)
	xor	t5, t5, s2
	sub	a0, a0, s2
	add	a0, a0, t5
	sub	t6, t6, s1
	lhu	t5, 0(t1)
	lhu	s1, 0(a6)
	srai	s2, t6, 63
	xor	t6, t6, s2
	sub	t6, t6, s2
	sub	t5, t5, s1
	srai	s1, t5, 63
	add	s2, a1, a2
	ld	s2, 0(s2)
	add	s3, a4, a2
	ld	s3, 0(s3)
	xor	t5, t5, s1
	add	s2, s2, t0
	lhu	s2, 0(s2)
	add	s3, s3, t3
	lhu	s3, 0(s3)
	sub	t5, t5, s1
	add	a0, a0, t5
	add	a0, a0, t6
	sub	t5, s2, s3
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
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	fld	fs0, 80(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
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
	beqz	s2, .LBB3_56
# %bb.43:
	lhu	a1, 54(s0)
	lh	t1, 50(s0)
	lh	a0, 52(s0)
	beqz	a1, .LBB3_72
# %bb.44:
	blt	a0, t1, .LBB3_73
# %bb.45:
	lui	a1, %hi(listXsize)
	addi	a1, a1, %lo(listXsize)
	lui	a2, %hi(listX)
	addi	a2, a2, %lo(listX)
	lui	a3, 524288
	addiw	a3, a3, 1
	lui	a4, 2
	addiw	a4, a4, -1784
	li	a5, 2
	li	a6, -2
	li	a7, 1
	j	.LBB3_47
.LBB3_46:                               #   in Loop: Header=BB3_47 Depth=1
	addi	t1, t0, 1
	beq	t0, a0, .LBB3_73
.LBB3_47:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_50 Depth 2
	mv	t0, t1
	slli	t1, t1, 2
	add	t1, a1, t1
	lw	t2, 0(t1)
	blez	t2, .LBB3_46
# %bb.48:                               #   in Loop: Header=BB3_47 Depth=1
	slli	t2, t0, 3
	lw	t5, 12(s1)
	add	t2, a2, t2
	ld	t2, 0(t2)
	li	t3, 0
	andi	t4, t5, 1
	and	t5, t5, a3
	j	.LBB3_50
.LBB3_49:                               #   in Loop: Header=BB3_50 Depth=2
	lw	t6, 0(t1)
	addi	t3, t3, 1
	addi	t2, t2, 8
	bge	t3, t6, .LBB3_46
.LBB3_50:                               #   Parent Loop BB3_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s0, 0(t2)
	add	t6, s0, a4
	sw	zero, 0(t6)
	bnez	t4, .LBB3_53
# %bb.51:                               #   in Loop: Header=BB3_50 Depth=2
	lw	s2, 0(s0)
	bne	s2, a5, .LBB3_53
# %bb.52:                               #   in Loop: Header=BB3_50 Depth=2
	sw	a6, 0(t6)
.LBB3_53:                               #   in Loop: Header=BB3_50 Depth=2
	bne	t5, a7, .LBB3_49
# %bb.54:                               #   in Loop: Header=BB3_50 Depth=2
	lw	s0, 0(s0)
	bne	s0, a7, .LBB3_49
# %bb.55:                               #   in Loop: Header=BB3_50 Depth=2
	sw	a5, 0(t6)
	j	.LBB3_49
.LBB3_56:
	lui	a0, %hi(listXsize)
	lw	a2, %lo(listXsize)(a0)
	blez	a2, .LBB3_64
# %bb.57:
	lui	a0, %hi(listX)
	ld	a0, %lo(listX)(a0)
	lw	a1, 28(s1)
	slli	a2, a2, 3
	add	a2, a0, a2
	lui	a3, 2
	addiw	a3, a3, -1784
	li	a4, 2
	li	a5, 1
	j	.LBB3_60
.LBB3_58:                               #   in Loop: Header=BB3_60 Depth=1
	sw	a7, 0(a6)
.LBB3_59:                               #   in Loop: Header=BB3_60 Depth=1
	addi	a0, a0, 8
	beq	a0, a2, .LBB3_64
.LBB3_60:                               # =>This Inner Loop Header: Depth=1
	ld	a7, 0(a0)
	add	a6, a7, a3
	sw	zero, 0(a6)
	beq	a1, a4, .LBB3_63
# %bb.61:                               #   in Loop: Header=BB3_60 Depth=1
	bne	a1, a5, .LBB3_59
# %bb.62:                               #   in Loop: Header=BB3_60 Depth=1
	lw	t0, 0(a7)
	li	a7, -2
	bne	t0, a5, .LBB3_58
	j	.LBB3_59
.LBB3_63:                               #   in Loop: Header=BB3_60 Depth=1
	lw	t0, 0(a7)
	li	a7, 2
	bne	t0, a7, .LBB3_58
	j	.LBB3_59
.LBB3_64:
	lui	a0, %hi(listXsize+4)
	lw	a2, %lo(listXsize+4)(a0)
	blez	a2, .LBB3_73
# %bb.65:
	lui	a0, %hi(listX+8)
	ld	a0, %lo(listX+8)(a0)
	lw	a1, 28(s1)
	slli	a2, a2, 3
	add	a2, a0, a2
	lui	a3, 2
	addiw	a3, a3, -1784
	li	a4, 1
	li	a5, 2
	j	.LBB3_68
.LBB3_66:                               #   in Loop: Header=BB3_68 Depth=1
	sw	a7, 0(a6)
.LBB3_67:                               #   in Loop: Header=BB3_68 Depth=1
	addi	a0, a0, 8
	beq	a0, a2, .LBB3_73
.LBB3_68:                               # =>This Inner Loop Header: Depth=1
	ld	a7, 0(a0)
	add	a6, a7, a3
	sw	zero, 0(a6)
	beq	a1, a4, .LBB3_71
# %bb.69:                               #   in Loop: Header=BB3_68 Depth=1
	bne	a1, a5, .LBB3_67
# %bb.70:                               #   in Loop: Header=BB3_68 Depth=1
	lw	t0, 0(a7)
	li	a7, 2
	bne	t0, a7, .LBB3_66
	j	.LBB3_67
.LBB3_71:                               #   in Loop: Header=BB3_68 Depth=1
	lw	t0, 0(a7)
	li	a7, -2
	bne	t0, a4, .LBB3_66
	j	.LBB3_67
.LBB3_72:
	bge	a0, t1, .LBB3_74
.LBB3_73:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB3_74:
	lui	a1, %hi(listXsize)
	addi	a1, a1, %lo(listXsize)
	lui	a2, %hi(listX)
	addi	a2, a2, %lo(listX)
	lui	a3, 2
	j	.LBB3_76
.LBB3_75:                               #   in Loop: Header=BB3_76 Depth=1
	addi	t1, a4, 1
	beq	a4, a0, .LBB3_73
.LBB3_76:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_78 Depth 2
	mv	a4, t1
	slli	a5, t1, 2
	add	a5, a1, a5
	lw	a6, 0(a5)
	blez	a6, .LBB3_75
# %bb.77:                               #   in Loop: Header=BB3_76 Depth=1
	slli	a6, a4, 3
	add	a6, a2, a6
	ld	a6, 0(a6)
	li	a7, 0
.LBB3_78:                               #   Parent Loop BB3_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t0, 0(a6)
	add	t0, t0, a3
	sw	zero, -1784(t0)
	lw	t0, 0(a5)
	addi	a7, a7, 1
	addi	a6, a6, 8
	blt	a7, t0, .LBB3_78
	j	.LBB3_75
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
	sd	a7, 0(sp)                       # 8-byte Folded Spill
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
	bltu	a1, a0, .LBB7_42
# %bb.11:
	lui	a1, 6
	addiw	a1, a1, 1536
	srl	a0, a1, a0
	andi	a0, a0, 1
	beqz	a0, .LBB7_42
.LBB7_12:
	seqz	a0, s6
	snez	a1, s7
	and	a0, a0, a1
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	lui	s10, %hi(input)
	li	s11, 1
	li	s5, 2
	lui	a0, 2
	addiw	a0, a0, -1508
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	s9, %hi(diffy)
	addi	s9, s9, %lo(diffy)
	li	s7, 16
.LBB7_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_23 Depth 2
                                        #       Child Loop BB7_24 Depth 3
                                        #     Child Loop BB7_19 Depth 2
                                        #       Child Loop BB7_20 Depth 3
	fld	fa0, 0(s3)
	mv	a0, s6
	mv	a1, s2
	mv	a2, s1
	mv	a3, s0
	call	RDCost_for_macroblocks
	ld	a1, %lo(input)(s10)
	beqz	a0, .LBB7_31
# %bb.14:                               #   in Loop: Header=BB7_13 Depth=1
	addi	a0, a1, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB7_26
# %bb.15:                               #   in Loop: Header=BB7_13 Depth=1
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lw	a0, 168(a1)
	lw	a3, 172(a1)
	li	a1, 8
	bne	s6, a1, .LBB7_22
# %bb.16:                               #   in Loop: Header=BB7_13 Depth=1
	lw	a1, 468(s4)
	lui	a2, %hi(tr8x8)
	addi	a2, a2, %lo(tr8x8)
	beq	a1, s11, .LBB7_18
# %bb.17:                               #   in Loop: Header=BB7_13 Depth=1
	lui	a2, %hi(tr4x4)
	addi	a2, a2, %lo(tr4x4)
.LBB7_18:                               #   in Loop: Header=BB7_13 Depth=1
	lui	a1, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(a1)
	li	a1, 0
	ld	a5, 8(sp)                       # 8-byte Folded Reload
	add	a2, a2, a5
	slli	a3, a3, 3
	add	a3, a4, a3
	slli	a0, a0, 1
	mv	a4, s9
.LBB7_19:                               #   Parent Loop BB7_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_20 Depth 3
	slli	a5, a1, 2
	add	a5, a5, s9
	addi	a5, a5, 1024
	slli	a6, a1, 1
	mv	a7, a3
	mv	t0, a2
	mv	t1, a4
.LBB7_20:                               #   Parent Loop BB7_13 Depth=1
                                        #     Parent Loop BB7_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t2, 0(a7)
	add	t3, a6, a0
	add	t2, t2, t3
	lhu	t2, 0(t2)
	lhu	t3, 0(t0)
	subw	t2, t2, t3
	sw	t2, 0(t1)
	addi	t1, t1, 64
	addi	t0, t0, 32
	addi	a7, a7, 8
	bne	t1, a5, .LBB7_20
# %bb.21:                               #   in Loop: Header=BB7_19 Depth=2
	addi	a1, a1, 1
	addi	a4, a4, 4
	addi	a2, a2, 2
	bne	a1, s7, .LBB7_19
	j	.LBB7_26
.LBB7_22:                               #   in Loop: Header=BB7_13 Depth=1
	lui	a1, %hi(imgY_org)
	ld	a2, %lo(imgY_org)(a1)
	li	a1, 0
	slli	a3, a3, 3
	add	a2, a2, a3
	lui	a3, %hi(pred)
	addi	a3, a3, %lo(pred)
	mv	a4, s9
.LBB7_23:                               #   Parent Loop BB7_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_24 Depth 3
	slli	a5, a1, 2
	add	a5, a5, s9
	addi	a5, a5, 1024
	mv	a6, a2
	mv	a7, a3
	mv	t0, a4
.LBB7_24:                               #   Parent Loop BB7_13 Depth=1
                                        #     Parent Loop BB7_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t1, 0(a6)
	slli	t2, a1, 1
	slli	t3, a0, 1
	add	t2, t2, t3
	add	t1, t1, t2
	lhu	t1, 0(t1)
	lhu	t2, 0(a7)
	subw	t1, t1, t2
	sw	t1, 0(t0)
	addi	t0, t0, 64
	addi	a7, a7, 32
	addi	a6, a6, 8
	bne	t0, a5, .LBB7_24
# %bb.25:                               #   in Loop: Header=BB7_23 Depth=2
	addi	a1, a1, 1
	addi	a4, a4, 4
	addi	a3, a3, 2
	bne	a1, s7, .LBB7_23
.LBB7_26:                               #   in Loop: Header=BB7_13 Depth=1
	mv	a0, s6
	call	store_macroblock_parameters
	ld	a1, %lo(input)(s10)
	bnez	s6, .LBB7_31
# %bb.27:                               #   in Loop: Header=BB7_13 Depth=1
	addi	a0, a1, 2047
	lw	a2, 1089(a0)
	bne	a2, s5, .LBB7_31
# %bb.28:                               #   in Loop: Header=BB7_13 Depth=1
	addi	a0, a0, 1089
	lw	a0, 1176(a0)
	beqz	a0, .LBB7_31
# %bb.29:                               #   in Loop: Header=BB7_13 Depth=1
	lw	a0, 364(s4)
	bnez	a0, .LBB7_31
# %bb.30:                               #   in Loop: Header=BB7_13 Depth=1
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	sh	s11, 0(a0)
.LBB7_31:                               #   in Loop: Header=BB7_13 Depth=1
	addi	a0, a1, 2047
	lw	a1, 1845(a0)
	bne	a1, s11, .LBB7_40
# %bb.32:                               #   in Loop: Header=BB7_13 Depth=1
	bgeu	s5, s8, .LBB7_37
# %bb.33:                               #   in Loop: Header=BB7_13 Depth=1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	beqz	a1, .LBB7_35
# %bb.34:                               #   in Loop: Header=BB7_13 Depth=1
	lui	a1, %hi(active_sps)
	ld	a1, %lo(active_sps)(a1)
	lw	a1, 1156(a1)
	bnez	a1, .LBB7_37
	j	.LBB7_39
.LBB7_35:                               #   in Loop: Header=BB7_13 Depth=1
	li	a1, 8
	bne	s6, a1, .LBB7_39
# %bb.36:                               #   in Loop: Header=BB7_13 Depth=1
	lhu	a1, 28(s3)
	beqz	a1, .LBB7_39
.LBB7_37:                               #   in Loop: Header=BB7_13 Depth=1
	lw	a1, 468(s4)
	bnez	a1, .LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_13 Depth=1
	sw	s11, 468(s4)
	j	.LBB7_13
.LBB7_39:
	sw	zero, 468(s4)
.LBB7_40:
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	beqz	a1, .LBB7_42
# %bb.41:
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	lhu	a1, 0(a1)
	beqz	a1, .LBB7_43
.LBB7_42:
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
.LBB7_43:
	lhu	a1, 20(s3)
	beqz	a1, .LBB7_42
# %bb.44:
	lw	a1, 364(s4)
	beqz	a1, .LBB7_42
# %bb.45:
	andi	a1, a1, 15
	li	a2, 15
	beq	a1, a2, .LBB7_42
# %bb.46:
	lw	a0, 1097(a0)
	bnez	a0, .LBB7_42
# %bb.47:
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
	beqz	a0, .LBB7_42
# %bb.48:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB7_50
# %bb.49:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lw	a0, 168(a1)
	lw	a1, 172(a1)
	lui	a2, %hi(pred)
	addi	a2, a2, %lo(pred)
	call	rc_store_diff
.LBB7_50:
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
	addi	sp, sp, -1808
	sd	a7, 256(sp)                     # 8-byte Folded Spill
	mv	s3, a6
	sd	a5, 312(sp)                     # 8-byte Folded Spill
	sd	a3, 272(sp)                     # 8-byte Folded Spill
	mv	s8, a1
	sd	a0, 424(sp)                     # 8-byte Folded Spill
	addi	a3, sp, 2047
	addi	a3, a3, 1629
	lui	a0, 1
	add	a0, sp, a0
	ld	a1, -240(a0)
	sh	zero, 42(a3)
	li	a0, -256
	sh	a0, 40(a3)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 4(a3)
	lui	a0, %hi(img)
	ld	s4, %lo(img)(a0)
	sw	zero, 20(a3)
	sd	zero, 12(a3)
	sw	zero, 0(a3)
	sd	a1, 464(sp)                     # 8-byte Folded Spill
	beqz	a1, .LBB8_2
# %bb.1:
	lui	a0, 4
	addiw	s6, a0, 1864
	lui	a0, 7
	j	.LBB8_3
.LBB8_2:
	lui	a0, 3
	addiw	s6, a0, 1864
	lui	a0, 5
.LBB8_3:
	addiw	s5, a0, 840
	srliw	a0, s3, 31
	lw	a1, 12(s4)
	ld	a3, 128(s4)
	add	a4, s3, a0
	andi	a0, a4, -2
	slli	a1, a1, 3
	add	a1, a3, a1
	ld	a1, 0(a1)
	subw	a0, s3, a0
	slliw	s0, a0, 1
	slli	a6, s0, 3
	add	a1, a1, a6
	ld	a1, 0(a1)
	slliw	a4, a4, 2
	andi	a5, a4, -8
	add	a1, a1, a5
	sw	zero, 0(a1)
	lw	a1, 12(s4)
	slli	a1, a1, 3
	add	a1, a3, a1
	ld	a1, 0(a1)
	addi	a4, s0, 1
	slli	a7, a4, 3
	add	a1, a1, a7
	ld	a1, 0(a1)
	add	a1, a1, a5
	sw	zero, 0(a1)
	lw	a1, 12(s4)
	slli	a1, a1, 3
	add	a1, a3, a1
	ld	a1, 0(a1)
	sd	a6, 304(sp)                     # 8-byte Folded Spill
	add	a1, a1, a6
	ld	a1, 0(a1)
	sd	a5, 344(sp)                     # 8-byte Folded Spill
	srai	a4, a5, 2
	sd	a4, 280(sp)                     # 8-byte Folded Spill
	addi	a4, a4, 1
	slli	a4, a4, 2
	add	a1, a1, a4
	sw	zero, 0(a1)
	lw	a1, 12(s4)
	slli	a1, a1, 3
	add	a1, a3, a1
	ld	a1, 0(a1)
	sd	a7, 296(sp)                     # 8-byte Folded Spill
	add	a1, a1, a7
	ld	a1, 0(a1)
	sd	a4, 288(sp)                     # 8-byte Folded Spill
	add	a1, a1, a4
	sw	zero, 0(a1)
	li	a1, 5
	sd	a1, 480(sp)                     # 8-byte Folded Spill
	ld	a1, 464(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB8_5
# %bb.4:
	li	a1, 2
	sd	a1, 480(sp)                     # 8-byte Folded Spill
.LBB8_5:
	ld	a3, 464(sp)                     # 8-byte Folded Reload
	seqz	a1, a3
	slliw	a0, a0, 3
	sd	a0, 504(sp)                     # 8-byte Folded Spill
	beqz	a3, .LBB8_7
# %bb.6:
	li	a0, 1
	sw	a0, 468(a2)
.LBB8_7:
	lui	a0, 1
	add	a0, sp, a0
	ld	a0, -248(a0)
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	lui	a0, 1
	add	a0, sp, a0
	ld	a0, -256(a0)
	sd	a0, 496(sp)                     # 8-byte Folded Spill
	addi	a0, a1, 2
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	slli	a1, a1, 1
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	lui	a0, 3
	addiw	s2, a0, 312
	lui	s10, 2
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	addiw	s7, s10, -996
	lui	a1, 1
	addiw	s9, a1, -1020
	call	store_coding_state
	sd	zero, 352(sp)                   # 8-byte Folded Spill
	sd	zero, 360(sp)                   # 8-byte Folded Spill
	sd	zero, 376(sp)                   # 8-byte Folded Spill
	sd	zero, 368(sp)                   # 8-byte Folded Spill
	sd	zero, 384(sp)                   # 8-byte Folded Spill
	ld	a0, 312(sp)                     # 8-byte Folded Reload
	seqz	s1, a0
	ld	a5, 424(sp)                     # 8-byte Folded Reload
	addi	a0, a5, 20
	sd	a0, 472(sp)                     # 8-byte Folded Spill
	slli	a0, s3, 1
	andi	a1, a0, 2
	sd	a1, 440(sp)                     # 8-byte Folded Spill
	andi	a1, s3, 2
	sd	a1, 432(sp)                     # 8-byte Folded Spill
	addi	a1, a5, 50
	sd	a1, 152(sp)                     # 8-byte Folded Spill
	add	a0, s8, a0
	addiw	a1, s10, -2044
	add	a1, a0, a1
	sd	a1, 416(sp)                     # 8-byte Folded Spill
	addiw	a1, s10, -2036
	add	a0, a0, a1
	sd	a0, 408(sp)                     # 8-byte Folded Spill
	add	a0, s8, s3
	addiw	a1, s10, -2028
	add	a1, a0, a1
	sd	a1, 400(sp)                     # 8-byte Folded Spill
	addiw	a1, s10, -2024
	add	a0, a0, a1
	sd	a0, 392(sp)                     # 8-byte Folded Spill
	sd	s3, 488(sp)                     # 8-byte Folded Spill
	slli	a0, s3, 2
	andi	a0, a0, 24
	add	a0, a0, s0
	li	a1, 51
	sllw	a0, a1, a0
	not	a0, a0
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	ld	a1, 344(sp)                     # 8-byte Folded Reload
	slli	a4, a1, 6
	ld	a3, 504(sp)                     # 8-byte Folded Reload
	slli	s10, a3, 2
	add	a2, a4, s10
	addi	s3, sp, 2047
	addi	s3, s3, 601
	add	s3, a2, s3
	sd	s3, 336(sp)                     # 8-byte Folded Spill
	mv	s3, a5
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	add	s0, s4, s6
	add	s0, a2, s0
	sd	s0, 328(sp)                     # 8-byte Folded Spill
	add	a0, s8, s7
	add	a0, a2, a0
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	slli	a5, a1, 5
	slli	a0, a3, 1
	sd	a5, 24(sp)                      # 8-byte Folded Spill
	add	a5, a5, a0
	add	s2, a5, s2
	sd	s2, 136(sp)                     # 8-byte Folded Spill
	sd	s7, 48(sp)                      # 8-byte Folded Spill
	add	a0, s8, s7
	sd	a5, 16(sp)                      # 8-byte Folded Spill
	add	a0, a5, a0
	addi	a0, a0, -512
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	add	a0, s5, s4
	add	a0, a2, a0
	addi	s6, a0, 1024
	addi	a0, sp, 600
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	add	a0, a2, a0
	addi	s7, a0, 1024
	fmv.d.x	fs0, zero
	lui	a0, %hi(.LCPI8_0)
	fld	fs1, %lo(.LCPI8_0)(a0)
	lui	a0, 22
	addiw	a0, a0, 100
	sd	a0, 320(sp)                     # 8-byte Folded Spill
	addiw	s5, a3, 8
	addiw	a1, a1, 8
	sd	a1, 520(sp)                     # 8-byte Folded Spill
	sub	a0, s5, a3
	sd	a0, 512(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(rec_resG)
	addi	a0, a0, %lo(rec_resG)
	add	a0, a0, a4
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	sd	s8, 88(sp)                      # 8-byte Folded Spill
	add	s8, a4, s8
	addi	a0, s8, 4
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	sd	s9, 40(sp)                      # 8-byte Folded Spill
	add	s9, s8, s9
	sd	s9, 232(sp)                     # 8-byte Folded Spill
	addi	a0, s9, 1024
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(mprRGB)
	addi	a0, a0, %lo(mprRGB)
	add	a0, a0, a4
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(resTrans_R)
	addi	a0, a0, %lo(resTrans_R)
	add	a0, a0, a4
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(resTrans_B)
	addi	a0, a0, %lo(resTrans_B)
	sd	a4, 56(sp)                      # 8-byte Folded Spill
	add	a0, a0, a4
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	addi	a0, s8, 1028
	sd	a0, 192(sp)                     # 8-byte Folded Spill
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 456(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(b8_mode_table)
	addi	a2, a2, %lo(b8_mode_table)
	lui	s2, %hi(si_frame_indicator)
	li	s11, 3
	addi	s4, sp, 2047
	addi	s4, s4, 1629
	j	.LBB8_11
.LBB8_8:                                #   in Loop: Header=BB8_11 Depth=1
	fmv.d	fs1, fs0
	ld	a0, 448(sp)                     # 8-byte Folded Reload
	sd	a0, 456(sp)                     # 8-byte Folded Spill
	addi	s4, sp, 2047
	addi	s4, s4, 1629
.LBB8_9:                                #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	call	reset_coding_state
	lui	a2, %hi(b8_mode_table)
	addi	a2, a2, %lo(b8_mode_table)
.LBB8_10:                               #   in Loop: Header=BB8_11 Depth=1
	addi	s1, s1, 1
	ld	a0, 480(sp)                     # 8-byte Folded Reload
	bgeu	s1, a0, .LBB8_98
.LBB8_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_67 Depth 2
                                        #     Child Loop BB8_69 Depth 2
                                        #     Child Loop BB8_71 Depth 2
                                        #     Child Loop BB8_73 Depth 2
                                        #     Child Loop BB8_75 Depth 2
                                        #     Child Loop BB8_77 Depth 2
                                        #     Child Loop BB8_79 Depth 2
                                        #     Child Loop BB8_81 Depth 2
                                        #     Child Loop BB8_83 Depth 2
                                        #       Child Loop BB8_84 Depth 3
                                        #     Child Loop BB8_93 Depth 2
                                        #       Child Loop BB8_95 Depth 3
                                        #     Child Loop BB8_88 Depth 2
	slli	a0, s1, 2
	add	a0, a2, a0
	lw	s8, 0(a0)
	ld	a0, 496(sp)                     # 8-byte Folded Reload
	sw	zero, 0(a0)
	slli	a0, s8, 1
	ld	a1, 472(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lhu	a0, 0(a0)
	beqz	a0, .LBB8_10
# %bb.12:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 464(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB8_15
# %bb.13:                               #   in Loop: Header=BB8_11 Depth=1
	snez	a0, s1
	addi	a1, s1, -5
	snez	a1, a1
	and	a0, a0, a1
	bnez	a0, .LBB8_15
# %bb.14:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1156(a0)
	beqz	a0, .LBB8_10
.LBB8_15:                               #   in Loop: Header=BB8_11 Depth=1
	sext.w	a0, s1
	sd	zero, 28(s4)
	li	a1, 5
	beq	a0, a1, .LBB8_17
# %bb.16:                               #   in Loop: Header=BB8_11 Depth=1
	bnez	a0, .LBB8_21
.LBB8_17:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	ld	s0, 488(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB8_50
# %bb.18:                               #   in Loop: Header=BB8_11 Depth=1
	sw	zero, 24(s4)
	addi	a1, sp, 2047
	addi	a1, a1, 1653
	mv	a0, s0
	call	Get_Direct_Cost8x8
	lui	a1, 524288
	addiw	a1, a1, -1
	beq	a0, a1, .LBB8_20
# %bb.19:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	lw	a2, 0(a2)
	bne	a2, a1, .LBB8_36
.LBB8_20:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a2, 524288
	addi	a2, a2, -1
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a3)
	ld	a3, 464(sp)                     # 8-byte Folded Reload
	bnez	a3, .LBB8_38
	j	.LBB8_46
.LBB8_21:                               #   in Loop: Header=BB8_11 Depth=1
	lw	a2, 16(s3)
	mv	a0, s8
	ld	s0, 488(sp)                     # 8-byte Folded Reload
	mv	a1, s0
	call	PartitionMotionSearch
	lui	a0, 524288
	addi	a0, a0, -1
	sd	a0, 448(sp)                     # 8-byte Folded Spill
	sw	a0, 4(s4)
	addi	a0, sp, 528
	li	a2, 72
	mv	a1, s3
	call	memcpy
	addi	a3, sp, 528
	addi	a4, sp, 2047
	addi	a4, a4, 1633
	addi	a5, sp, 2047
	addi	a5, a5, 1669
	li	a0, 0
	mv	a1, s0
	mv	a2, s8
	call	list_prediction_cost
	lui	a7, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a7)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a4, 2
	add	a0, a0, a4
	ld	a0, -1712(a0)
	lw	a2, 148(a1)
	ld	a0, 0(a0)
	lw	a1, 144(a1)
	ld	a3, 432(sp)                     # 8-byte Folded Reload
	addw	a3, a2, a3
	addi	a2, sp, 2047
	addi	a2, a2, 1629
	slli	s4, a3, 3
	add	a0, a0, s4
	ld	a0, 0(a0)
	lbu	s9, 40(a2)
	ld	a2, 440(sp)                     # 8-byte Folded Reload
	addw	t3, a1, a2
	add	a0, a0, t3
	sb	s9, 0(a0)
	ld	a0, %lo(enc_picture)(a7)
	addiw	a1, a4, -1712
	add	a4, a0, a1
	lh	a2, 50(s3)
	ld	a5, 8(a4)
	li	t0, 264
	mul	a2, a2, t0
	ld	a5, 0(a5)
	add	a2, a0, a2
	slli	a0, s9, 3
	add	a2, a2, a0
	add	a5, a5, s4
	ld	a5, 0(a5)
	ld	a6, 24(a2)
	slli	a2, t3, 3
	add	a5, a5, a2
	sd	a6, 0(a5)
	ld	a4, 0(a4)
	ld	a4, 0(a4)
	add	a4, a4, s4
	ld	a4, 0(a4)
	addi	t4, t3, 1
	add	a4, a4, t4
	sb	s9, 0(a4)
	ld	a4, %lo(enc_picture)(a7)
	add	a5, a4, a1
	ld	a6, 8(a5)
	lh	a7, 50(s3)
	ld	a6, 0(a6)
	addiw	t5, a3, 2
	mul	a7, a7, t0
	add	a4, a4, a7
	add	a6, a6, s4
	ld	a6, 0(a6)
	add	a4, a4, a0
	ld	a7, 24(a4)
	slli	a4, t4, 3
	add	a6, a6, a4
	addi	t6, a3, 1
	sd	a7, 0(a6)
	bge	t6, t5, .LBB8_23
# %bb.22:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a3, 0(a5)
	ld	a3, 0(a3)
	slli	a5, t6, 3
	add	a3, a3, a5
	ld	a3, 0(a3)
	add	a3, a3, t3
	sb	s9, 0(a3)
	lui	t1, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(t1)
	add	a1, a3, a1
	ld	a6, 8(a1)
	ld	t0, 152(sp)                     # 8-byte Folded Reload
	lh	a7, 0(t0)
	ld	a6, 0(a6)
	li	t2, 264
	mul	a7, a7, t2
	add	a3, a3, a7
	add	a3, a3, a0
	add	a6, a6, a5
	ld	a6, 0(a6)
	ld	a3, 24(a3)
	add	a2, a6, a2
	sd	a3, 0(a2)
	ld	a1, 0(a1)
	ld	a1, 0(a1)
	add	a1, a1, a5
	ld	a1, 0(a1)
	add	a1, a1, t4
	sb	s9, 0(a1)
	ld	a1, %lo(enc_picture)(t1)
	lui	a2, 2
	add	a2, a1, a2
	ld	a2, -1704(a2)
	lh	a3, 0(t0)
	ld	a2, 0(a2)
	mul	a3, a3, t2
	add	a1, a1, a3
	add	a0, a1, a0
	add	a2, a2, a5
	ld	a1, 0(a2)
	ld	a0, 24(a0)
	add	a1, a1, a4
	sd	a0, 0(a1)
.LBB8_23:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 312(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB8_28
# %bb.24:                               #   in Loop: Header=BB8_11 Depth=1
	sd	t6, 160(sp)                     # 8-byte Folded Spill
	sd	t5, 168(sp)                     # 8-byte Folded Spill
	sd	t4, 176(sp)                     # 8-byte Folded Spill
	sd	t3, 184(sp)                     # 8-byte Folded Spill
	mv	s9, s3
	addi	s3, sp, 2047
	addi	s3, s3, 1629
	ld	a0, 448(sp)                     # 8-byte Folded Reload
	sw	a0, 8(s3)
	sw	a0, 12(s3)
	addi	a0, sp, 528
	li	a2, 72
	mv	a1, s9
	call	memcpy
	li	a0, 1
	addi	a3, sp, 528
	addi	a4, sp, 2047
	addi	a4, a4, 1633
	addi	a5, sp, 2047
	addi	a5, a5, 1669
	mv	a1, s0
	mv	a2, s8
	call	list_prediction_cost
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	lw	a4, 16(s9)
	beqz	a0, .LBB8_29
# %bb.25:                               #   in Loop: Header=BB8_11 Depth=1
	lh	a0, 50(s9)
	slli	a0, a0, 2
	lui	a1, %hi(listXsize)
	addi	a1, a1, %lo(listXsize)
	add	a1, a1, a0
	lw	a0, 0(a1)
	li	a2, 2
	bge	a0, a2, .LBB8_30
# %bb.26:                               #   in Loop: Header=BB8_11 Depth=1
	li	a0, 0
	addi	a3, sp, 2047
	addi	a3, a3, 1629
	lw	a1, 4(a1)
	lbu	a3, 41(a3)
	li	a2, 2
	blt	a1, a2, .LBB8_31
.LBB8_27:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a1, %hi(refbits)
	ld	a1, %lo(refbits)(a1)
	slli	a2, a3, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	j	.LBB8_32
.LBB8_28:                               #   in Loop: Header=BB8_11 Depth=1
	addi	s4, sp, 2047
	addi	s4, s4, 1629
	lw	a0, 4(s4)
	sh	zero, 42(s4)
	ld	a1, 496(sp)                     # 8-byte Folded Reload
	sw	a0, 0(a1)
	j	.LBB8_51
.LBB8_29:                               #   in Loop: Header=BB8_11 Depth=1
	lbu	a2, 40(s3)
	lbu	a3, 41(s3)
	fld	fa5, 8(s9)
	snez	a0, a2
	snez	a1, a3
	add	a0, a1, a0
	fcvt.d.wu	fa4, a0
	fmul.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fa5
	fcvt.w.d	s9, fa5, rtz
	j	.LBB8_33
.LBB8_30:                               #   in Loop: Header=BB8_11 Depth=1
	addi	a3, sp, 2047
	addi	a3, a3, 1629
	lbu	a0, 40(a3)
	lui	a2, %hi(refbits)
	ld	a2, %lo(refbits)(a2)
	slli	a0, a0, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	lw	a1, 4(a1)
	lbu	a3, 41(a3)
	li	a2, 2
	bge	a1, a2, .LBB8_27
.LBB8_31:                               #   in Loop: Header=BB8_11 Depth=1
	li	a1, 0
.LBB8_32:                               #   in Loop: Header=BB8_11 Depth=1
	mul	a0, a0, a4
	sraiw	s9, a0, 16
	addi	s3, sp, 2047
	addi	s3, s3, 1629
	lbu	a2, 40(s3)
	mul	a0, a1, a4
	sraiw	a0, a0, 16
	add	s9, a0, s9
.LBB8_33:                               #   in Loop: Header=BB8_11 Depth=1
	mv	a0, s8
	mv	a1, s0
	call	BIDPartitionCost
	add	a0, a0, s9
	sw	a0, 12(s3)
	addi	a1, sp, 2047
	addi	a1, a1, 1633
	addi	a2, sp, 2047
	addi	a2, a2, 1669
	addi	a3, sp, 2047
	addi	a3, a3, 1671
	addi	a5, sp, 2047
	addi	a5, a5, 1627
	mv	a0, s8
	ld	a4, 496(sp)                     # 8-byte Folded Reload
	call	determine_prediction_list
	lui	a1, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a1)
	lui	a2, 2
	add	a0, a0, a2
	ld	a0, -1712(a0)
	ld	a0, 0(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	lbu	s9, 40(s3)
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	add	a0, a0, a5
	sb	s9, 0(a0)
	ld	a0, %lo(enc_picture)(a1)
	add	a0, a0, a2
	ld	a0, -1712(a0)
	ld	a0, 8(a0)
	add	a0, a0, s4
	ld	a1, 0(a0)
	lbu	a0, 41(s3)
	lui	a4, %hi(enc_picture)
	add	a1, a1, a5
	sb	a0, 0(a1)
	ld	a1, %lo(enc_picture)(a4)
	add	a1, a1, a2
	ld	a1, -1712(a1)
	ld	a1, 0(a1)
	add	a1, a1, s4
	ld	a1, 0(a1)
	ld	a6, 176(sp)                     # 8-byte Folded Reload
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
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	ld	a7, 160(sp)                     # 8-byte Folded Reload
	bge	a7, a1, .LBB8_35
# %bb.34:                               #   in Loop: Header=BB8_11 Depth=1
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
.LBB8_35:                               #   in Loop: Header=BB8_11 Depth=1
	addi	s4, sp, 2047
	addi	s4, s4, 1629
	ld	s3, 424(sp)                     # 8-byte Folded Reload
	j	.LBB8_51
.LBB8_36:                               #   in Loop: Header=BB8_11 Depth=1
	add	a2, a2, a0
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a3)
	ld	a2, 464(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB8_46
# %bb.37:                               #   in Loop: Header=BB8_11 Depth=1
	lw	a2, 24(s4)
	ld	a3, 144(sp)                     # 8-byte Folded Reload
	lw	a3, 0(a3)
	add	a2, a3, a2
.LBB8_38:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a3, 144(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a3)
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	addi	a2, a2, 2047
	lw	a3, 1845(a2)
	li	a4, 2
	beq	a3, a4, .LBB8_47
# %bb.39:                               #   in Loop: Header=BB8_11 Depth=1
	li	a4, 1
	bne	a3, a4, .LBB8_48
# %bb.40:                               #   in Loop: Header=BB8_11 Depth=1
	lw	a3, 24(s4)
	blt	a3, a0, .LBB8_45
# %bb.41:                               #   in Loop: Header=BB8_11 Depth=1
	lhu	a4, 30(s3)
	beqz	a4, .LBB8_45
# %bb.42:                               #   in Loop: Header=BB8_11 Depth=1
	lhu	a4, 32(s3)
	beqz	a4, .LBB8_45
# %bb.43:                               #   in Loop: Header=BB8_11 Depth=1
	lhu	a4, 34(s3)
	beqz	a4, .LBB8_45
# %bb.44:                               #   in Loop: Header=BB8_11 Depth=1
	mv	a3, a0
.LBB8_45:                               #   in Loop: Header=BB8_11 Depth=1
	mv	a0, a3
	j	.LBB8_48
.LBB8_46:                               #   in Loop: Header=BB8_11 Depth=1
	mv	a1, a0
	j	.LBB8_49
.LBB8_47:                               #   in Loop: Header=BB8_11 Depth=1
	lw	a0, 24(s4)
.LBB8_48:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a3, 496(sp)                     # 8-byte Folded Reload
	sw	a0, 0(a3)
	lw	a0, 1845(a2)
	li	a2, 2
	bne	a0, a2, .LBB8_50
.LBB8_49:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 496(sp)                     # 8-byte Folded Reload
	sw	a1, 0(a0)
.LBB8_50:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 148(a0)
	lui	a2, %hi(direct_ref_idx)
	ld	a2, %lo(direct_ref_idx)(a2)
	lw	a0, 144(a0)
	ld	a3, 432(sp)                     # 8-byte Folded Reload
	addw	a1, a1, a3
	ld	a3, 0(a2)
	slli	a1, a1, 3
	ld	a2, 8(a2)
	lui	a4, %hi(direct_pdir)
	ld	a4, %lo(direct_pdir)(a4)
	add	a3, a3, a1
	ld	a3, 0(a3)
	add	a2, a2, a1
	add	a1, a4, a1
	ld	a4, 440(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a4
	ld	a2, 0(a2)
	add	a3, a3, a0
	lbu	s9, 0(a3)
	ld	a1, 0(a1)
	add	a2, a2, a0
	lbu	a2, 0(a2)
	slli	a0, a0, 1
	add	a0, a1, a0
	lh	a0, 0(a0)
	sb	s9, 40(s4)
	sb	a2, 41(s4)
	sh	a0, 42(s4)
.LBB8_51:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	beqz	a0, .LBB8_53
# %bb.52:                               #   in Loop: Header=BB8_11 Depth=1
	fld	fa0, 0(s3)
	lh	a4, 42(s4)
	lbu	a6, 41(s4)
	addi	a0, sp, 2047
	addi	a0, a0, 1629
	addi	a1, sp, 2047
	addi	a1, a1, 1657
	mv	a2, s0
	mv	a3, s8
	mv	a5, s9
	call	RDCost_for_8x8blocks
	fmv.d	fs0, fa0
	j	.LBB8_57
.LBB8_53:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 496(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
	lui	a1, 524288
	addiw	a1, a1, -1
	beq	a0, a1, .LBB8_57
# %bb.54:                               #   in Loop: Header=BB8_11 Depth=1
	lh	a1, 42(s4)
	sgtz	a2, a1
	slli	a2, a2, 1
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	add	a2, a3, a2
	lh	a2, 0(a2)
	slli	a2, a2, 2
	lui	a3, %hi(listXsize)
	addi	a3, a3, %lo(listXsize)
	add	a2, a3, a2
	lw	a3, 0(a2)
	lw	s4, 16(s3)
	li	a2, 0
	li	a4, 2
	blt	a3, a4, .LBB8_56
# %bb.55:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(refbits)
	ld	a0, %lo(refbits)(a0)
	sd	a0, 448(sp)                     # 8-byte Folded Spill
	mv	a0, s8
	call	B8Mode2Value
	slli	a0, a0, 2
	ld	a1, 448(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lw	a2, 0(a0)
	ld	a0, 496(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
.LBB8_56:                               #   in Loop: Header=BB8_11 Depth=1
	mul	a1, a2, s4
	sraiw	a1, a1, 16
	add	a0, a0, a1
	addi	a0, a0, -1
	ld	a1, 496(sp)                     # 8-byte Folded Reload
	sw	a0, 0(a1)
	addi	s4, sp, 2047
	addi	s4, s4, 1629
.LBB8_57:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	beqz	a0, .LBB8_62
# %bb.58:                               #   in Loop: Header=BB8_11 Depth=1
	flt.d	a1, fs0, fs1
	beqz	a1, .LBB8_62
# %bb.59:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 496(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a0)
.LBB8_60:                               #   in Loop: Header=BB8_11 Depth=1
	sd	a1, 448(sp)                     # 8-byte Folded Spill
	lh	a0, 42(s4)
	lbu	a1, 41(s4)
	ld	a2, 416(sp)                     # 8-byte Folded Reload
	sh	s8, 0(a2)
	ld	a2, 408(sp)                     # 8-byte Folded Reload
	sh	a0, 0(a2)
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	sb	s9, 0(a0)
	ld	a0, 392(sp)                     # 8-byte Folded Reload
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
	slli	a2, s0, 2
	add	a0, a0, a2
	sw	s8, 376(a0)
	lw	a0, 0(s4)
	sd	a0, 384(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB8_64
# %bb.61:                               #   in Loop: Header=BB8_11 Depth=1
	lw	a0, 12(a1)
	ld	a2, 128(a1)
	slli	a0, a0, 3
	add	a0, a2, a0
	ld	a0, 0(a0)
	ld	a2, 304(sp)                     # 8-byte Folded Reload
	add	a2, a0, a2
	ld	a2, 0(a2)
	ld	a3, 296(sp)                     # 8-byte Folded Reload
	add	a0, a0, a3
	ld	a0, 0(a0)
	ld	a3, 280(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 2
	add	a4, a2, a3
	lw	a4, 0(a4)
	sd	a4, 352(sp)                     # 8-byte Folded Spill
	add	a3, a0, a3
	lw	a3, 0(a3)
	sd	a3, 360(sp)                     # 8-byte Folded Spill
	ld	a3, 288(sp)                     # 8-byte Folded Reload
	add	a2, a2, a3
	lw	a2, 0(a2)
	sd	a2, 368(sp)                     # 8-byte Folded Spill
	add	a0, a0, a3
	lw	a0, 0(a0)
	sd	a0, 376(sp)                     # 8-byte Folded Spill
	j	.LBB8_65
.LBB8_62:                               #   in Loop: Header=BB8_11 Depth=1
	bnez	a0, .LBB8_9
# %bb.63:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 496(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a0)
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	bge	a1, a0, .LBB8_9
	j	.LBB8_60
.LBB8_64:                               #   in Loop: Header=BB8_11 Depth=1
	sd	zero, 368(sp)                   # 8-byte Folded Spill
	sd	zero, 352(sp)                   # 8-byte Folded Spill
	sd	zero, 360(sp)                   # 8-byte Folded Spill
	sd	zero, 376(sp)                   # 8-byte Folded Spill
.LBB8_65:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a2, 1089(a0)
	ld	a0, 320(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 456(sp)                     # 8-byte Folded Spill
	beqz	a2, .LBB8_86
# %bb.66:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a5, %hi(cbp_blk8x8)
	lw	a2, %lo(cbp_blk8x8)(a5)
	addi	a0, sp, 2047
	addi	a0, a0, 1629
	lw	a3, 28(a0)
	lui	a0, 3
	addiw	a4, a0, 1848
	add	a4, a1, a4
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	and	a2, a2, a0
	or	a2, a2, a3
	sw	a2, %lo(cbp_blk8x8)(a5)
	ld	a2, 0(a4)
	ld	a3, 488(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	ld	a4, 0(a0)
	ld	a3, 0(a2)
	ld	a5, 0(a4)
	ld	a6, 0(a3)
	addi	a7, a5, 260
.LBB8_67:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t0, 0(a6)
	sw	t0, 0(a5)
	addi	a5, a5, 4
	addi	a6, a6, 4
	bne	a5, a7, .LBB8_67
# %bb.68:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a4, 8(a4)
	ld	a3, 8(a3)
	addi	a5, a4, 260
.LBB8_69:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a6, 0(a3)
	sw	a6, 0(a4)
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a4, a5, .LBB8_69
# %bb.70:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a4, 8(a0)
	ld	a3, 8(a2)
	ld	a5, 0(a4)
	ld	a6, 0(a3)
	addi	a7, a5, 260
.LBB8_71:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t0, 0(a6)
	sw	t0, 0(a5)
	addi	a5, a5, 4
	addi	a6, a6, 4
	bne	a5, a7, .LBB8_71
# %bb.72:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a4, 8(a4)
	ld	a3, 8(a3)
	addi	a5, a4, 260
.LBB8_73:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a6, 0(a3)
	sw	a6, 0(a4)
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a4, a5, .LBB8_73
# %bb.74:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a4, 16(a0)
	ld	a3, 16(a2)
	ld	a5, 0(a4)
	ld	a6, 0(a3)
	addi	a7, a5, 260
.LBB8_75:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	t0, 0(a6)
	sw	t0, 0(a5)
	addi	a5, a5, 4
	addi	a6, a6, 4
	bne	a5, a7, .LBB8_75
# %bb.76:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a4, 8(a4)
	ld	a3, 8(a3)
	addi	a5, a4, 260
.LBB8_77:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a6, 0(a3)
	sw	a6, 0(a4)
	addi	a4, a4, 4
	addi	a3, a3, 4
	bne	a4, a5, .LBB8_77
# %bb.78:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a3, 24(a0)
	ld	a2, 24(a2)
	ld	a4, 0(a3)
	ld	a5, 0(a2)
	addi	a6, a4, 260
.LBB8_79:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a7, 0(a5)
	sw	a7, 0(a4)
	addi	a4, a4, 4
	addi	a5, a5, 4
	bne	a4, a6, .LBB8_79
# %bb.80:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a3, 8(a3)
	ld	a2, 8(a2)
	addi	a4, a3, 260
.LBB8_81:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a5, 0(a2)
	sw	a5, 0(a3)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a4, .LBB8_81
# %bb.82:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	lw	t3, 360(a0)
	ld	a2, 192(sp)                     # 8-byte Folded Reload
	ld	a3, 200(sp)                     # 8-byte Folded Reload
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	ld	a5, 232(sp)                     # 8-byte Folded Reload
	ld	a6, 216(sp)                     # 8-byte Folded Reload
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	s3, 240(sp)                     # 8-byte Folded Reload
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	ld	t2, 344(sp)                     # 8-byte Folded Reload
	beqz	t3, .LBB8_91
.LBB8_83:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_84 Depth 3
	mv	a1, a2
	mv	t3, a3
	mv	t4, a4
	mv	t5, a5
	mv	t6, a6
	mv	s4, a7
	mv	t0, s3
	mv	t1, a0
	ld	ra, 512(sp)                     # 8-byte Folded Reload
.LBB8_84:                               #   Parent Loop BB8_11 Depth=1
                                        #     Parent Loop BB8_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	s9, t1, s10
	lw	s9, 0(s9)
	add	s8, t0, s10
	sw	s9, 0(s8)
	add	s8, t4, s10
	lw	s8, 0(s8)
	add	s9, a1, s10
	sw	s8, 0(s9)
	add	s8, t3, s10
	lw	s8, 0(s8)
	add	s9, t5, s10
	sw	s8, -1024(s9)
	add	s8, t6, s10
	lw	s0, 0(s8)
	sw	s0, 0(s9)
	lw	s0, 1024(s8)
	add	s9, s4, s10
	sw	s0, 0(s9)
	addi	s0, s8, 2047
	lw	s0, 1(s0)
	sw	s0, 1024(s9)
	addi	ra, ra, -1
	addi	t1, t1, 4
	addi	t0, t0, 4
	addi	s4, s4, 4
	addi	t6, t6, 4
	addi	t5, t5, 4
	addi	t4, t4, 4
	addi	t3, t3, 4
	addi	a1, a1, 4
	bnez	ra, .LBB8_84
# %bb.85:                               #   in Loop: Header=BB8_83 Depth=2
	addiw	a1, t2, 1
	addi	t2, t2, 1
	addi	a0, a0, 64
	addi	s3, s3, 64
	addi	a7, a7, 64
	addi	a6, a6, 64
	addi	a5, a5, 64
	addi	a4, a4, 64
	addi	a3, a3, 64
	addi	a2, a2, 64
	ld	t0, 520(sp)                     # 8-byte Folded Reload
	bne	t0, a1, .LBB8_83
.LBB8_86:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 456(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
	ld	a7, 336(sp)                     # 8-byte Folded Reload
	ld	t0, 328(sp)                     # 8-byte Folded Reload
	li	t1, 512
	beqz	a0, .LBB8_89
# %bb.87:                               # %.preheader5
                                        #   in Loop: Header=BB8_11 Depth=1
	li	a0, 0
.LBB8_88:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a1, a7, a0
	add	a2, t0, a0
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
	bne	a0, t1, .LBB8_88
.LBB8_89:                               #   in Loop: Header=BB8_11 Depth=1
	ld	a0, 488(sp)                     # 8-byte Folded Reload
	ld	s3, 424(sp)                     # 8-byte Folded Reload
	li	a1, 2
	blt	a1, a0, .LBB8_8
# %bb.90:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(cs_b8)
	ld	a0, %lo(cs_b8)(a0)
	call	store_coding_state
	j	.LBB8_8
.LBB8_91:                               #   in Loop: Header=BB8_11 Depth=1
	lui	a0, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a0)
	lui	a0, 2
	add	a2, a2, a0
	ld	a2, -1768(a2)
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	add	a3, a1, a3
	ld	a4, 120(sp)                     # 8-byte Folded Reload
	ld	a5, 128(sp)                     # 8-byte Folded Reload
	ld	a6, 344(sp)                     # 8-byte Folded Reload
	j	.LBB8_93
.LBB8_92:                               #   in Loop: Header=BB8_93 Depth=2
	addiw	a7, a6, 1
	addi	a6, a6, 1
	addi	a5, a5, 64
	addi	a3, a3, 32
	addi	a4, a4, 32
	ld	a0, 520(sp)                     # 8-byte Folded Reload
	beq	a0, a7, .LBB8_86
.LBB8_93:                               #   Parent Loop BB8_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_95 Depth 3
	lw	a7, 156(a1)
	add	a7, a6, a7
	slli	t0, a7, 3
	add	a7, a2, t0
	lui	a0, %hi(lrec)
	ld	t1, %lo(lrec)(a0)
	ld	a7, 0(a7)
	add	t0, t1, t0
	mv	t1, a4
	mv	t2, a3
	mv	t3, a5
	ld	t4, 504(sp)                     # 8-byte Folded Reload
	j	.LBB8_95
.LBB8_94:                               #   in Loop: Header=BB8_95 Depth=3
	addi	t4, t4, 1
	addi	t3, t3, 4
	addi	t2, t2, 2
	addi	t1, t1, 2
	beq	s5, t4, .LBB8_92
.LBB8_95:                               #   Parent Loop BB8_11 Depth=1
                                        #     Parent Loop BB8_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	t5, 152(a1)
	add	t5, t4, t5
	slli	t6, t5, 1
	add	t6, a7, t6
	lh	t6, 0(t6)
	sh	t6, -512(t1)
	lh	t6, 0(t2)
	sh	t6, 0(t1)
	lw	t6, 24(a1)
	bne	t6, s11, .LBB8_94
# %bb.96:                               #   in Loop: Header=BB8_95 Depth=3
	lw	t6, %lo(si_frame_indicator)(s2)
	bnez	t6, .LBB8_94
# %bb.97:                               #   in Loop: Header=BB8_95 Depth=3
	ld	t6, 0(t0)
	slli	t5, t5, 2
	add	t5, t6, t5
	lw	t5, 0(t5)
	sw	t5, 0(t3)
	j	.LBB8_94
.LBB8_98:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 12(a0)
	ld	a2, 128(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a4, 304(sp)                     # 8-byte Folded Reload
	add	a1, a1, a4
	ld	a1, 0(a1)
	ld	a3, 280(sp)                     # 8-byte Folded Reload
	slli	a3, a3, 2
	add	a1, a1, a3
	ld	a5, 352(sp)                     # 8-byte Folded Reload
	sw	a5, 0(a1)
	lw	a1, 12(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a5, 296(sp)                     # 8-byte Folded Reload
	add	a1, a1, a5
	ld	a1, 0(a1)
	add	a1, a1, a3
	ld	a3, 360(sp)                     # 8-byte Folded Reload
	sw	a3, 0(a1)
	lw	a1, 12(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	add	a1, a1, a4
	ld	a1, 0(a1)
	ld	a3, 288(sp)                     # 8-byte Folded Reload
	add	a1, a1, a3
	ld	a4, 368(sp)                     # 8-byte Folded Reload
	sw	a4, 0(a1)
	lw	a1, 12(a0)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 0(a1)
	add	a1, a1, a5
	ld	a1, 0(a1)
	add	a1, a1, a3
	ld	a2, 376(sp)                     # 8-byte Folded Reload
	sw	a2, 0(a1)
	ld	a1, 464(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB8_101
# %bb.99:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 1089(a1)
	ld	s3, 488(sp)                     # 8-byte Folded Reload
	ld	s8, 96(sp)                      # 8-byte Folded Reload
	ld	s9, 88(sp)                      # 8-byte Folded Reload
	ld	s11, 384(sp)                    # 8-byte Folded Reload
	bnez	a1, .LBB8_108
# %bb.100:
	lw	a0, 0(s9)
	ld	a1, 456(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	sw	a0, 0(s9)
	j	.LBB8_102
.LBB8_101:
	ld	s9, 88(sp)                      # 8-byte Folded Reload
	lw	a1, 0(s9)
	ld	a2, 456(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	sw	a1, 0(s9)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 1089(a1)
	ld	s3, 488(sp)                     # 8-byte Folded Reload
	ld	s8, 96(sp)                      # 8-byte Folded Reload
	ld	s11, 384(sp)                    # 8-byte Folded Reload
	bnez	a1, .LBB8_108
.LBB8_102:
	ld	a0, 408(sp)                     # 8-byte Folded Reload
	lh	a3, 0(a0)
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lh	a0, 0(a0)
	lui	a1, 16
	addiw	a1, a1, -3
	and	a1, a3, a1
	snez	a1, a1
	addi	a1, a1, -1
	and	a4, a1, a0
	addi	a1, a3, -1
	slli	a1, a1, 48
	srli	a1, a1, 48
	sltiu	a1, a1, 2
	ld	a2, 400(sp)                     # 8-byte Folded Reload
	lbu	a6, 0(a2)
	ld	a2, 392(sp)                     # 8-byte Folded Reload
	lbu	a7, 0(a2)
	neg	a5, a1
	and	a5, a5, a0
	sd	zero, 28(s4)
	addi	a0, sp, 528
	addi	a1, sp, 2047
	addi	a1, a1, 1657
	mv	a2, s3
	call	LumaResidualCoding8x8
	lui	a1, %hi(cbp_blk8x8)
	lw	a2, %lo(cbp_blk8x8)(a1)
	lui	s0, %hi(img)
	ld	a3, %lo(img)(s0)
	ld	a4, 264(sp)                     # 8-byte Folded Reload
	and	a2, a2, a4
	lw	a4, 28(s4)
	lui	s1, 3
	add	a3, a3, s1
	ld	a3, 1848(a3)
	or	a2, a2, a4
	sw	a2, %lo(cbp_blk8x8)(a1)
	slli	s2, s3, 3
	add	a3, a3, s2
	ld	a1, 0(a3)
	ld	s4, 272(sp)                     # 8-byte Folded Reload
	ld	a2, 0(s4)
	ld	a1, 0(a1)
	ld	a3, 0(a2)
	ld	a1, 0(a1)
	mv	s11, a0
	li	a2, 260
	mv	a0, a3
	call	memcpy
	ld	a0, %lo(img)(s0)
	add	a0, a0, s1
	ld	a0, 1848(a0)
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 0(s4)
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
	ld	a1, 8(s4)
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
	ld	a1, 8(s4)
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
	ld	a1, 16(s4)
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
	ld	a1, 16(s4)
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
	ld	a1, 24(s4)
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
	ld	a1, 24(s4)
	ld	a2, 24(a0)
	ld	a0, 8(a1)
	ld	a1, 8(a2)
	li	a2, 260
	call	memcpy
	ld	a0, %lo(img)(s0)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 460(a1)
	beqz	a1, .LBB8_125
# %bb.103:
	ld	a1, 504(sp)                     # 8-byte Folded Reload
	sub	a1, s5, a1
	ld	t0, 56(sp)                      # 8-byte Folded Reload
	lui	a2, %hi(rec_resG)
	addi	a2, a2, %lo(rec_resG)
	add	a2, a2, t0
	ld	t1, 32(sp)                      # 8-byte Folded Reload
	addi	a3, t1, 4
	ld	a4, 40(sp)                      # 8-byte Folded Reload
	add	a4, t1, a4
	addi	a5, a4, 1024
	lui	a6, %hi(mprRGB)
	addi	a6, a6, %lo(mprRGB)
	add	a6, a6, t0
	lui	a7, %hi(resTrans_R)
	addi	a7, a7, %lo(resTrans_R)
	add	a7, a7, t0
	lui	t2, %hi(resTrans_B)
	addi	t2, t2, %lo(resTrans_B)
	add	t0, t2, t0
	addi	t1, t1, 1028
	ld	t2, 344(sp)                     # 8-byte Folded Reload
.LBB8_104:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_105 Depth 2
	mv	t3, t1
	mv	t4, t0
	mv	t5, a7
	mv	t6, a4
	mv	s0, a6
	mv	s1, a5
	mv	s2, a3
	mv	s3, a2
	mv	s4, a1
.LBB8_105:                              #   Parent Loop BB8_104 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s5, s3, s10
	lw	s5, 0(s5)
	add	s6, s2, s10
	sw	s5, 0(s6)
	add	s5, t5, s10
	lw	s5, 0(s5)
	add	s6, t3, s10
	sw	s5, 0(s6)
	add	s5, t4, s10
	lw	s5, 0(s5)
	add	s6, t6, s10
	sw	s5, -1024(s6)
	add	s5, s0, s10
	lw	s7, 0(s5)
	sw	s7, 0(s6)
	lw	s6, 1024(s5)
	add	s7, s1, s10
	sw	s6, 0(s7)
	addi	s5, s5, 2047
	lw	s5, 1(s5)
	sw	s5, 1024(s7)
	addi	s4, s4, -1
	addi	s3, s3, 4
	addi	s2, s2, 4
	addi	s1, s1, 4
	addi	s0, s0, 4
	addi	t6, t6, 4
	addi	t5, t5, 4
	addi	t4, t4, 4
	addi	t3, t3, 4
	bnez	s4, .LBB8_105
# %bb.106:                              #   in Loop: Header=BB8_104 Depth=1
	addiw	t3, t2, 1
	addi	t2, t2, 1
	addi	a2, a2, 64
	addi	a3, a3, 64
	addi	a5, a5, 64
	addi	a6, a6, 64
	addi	a4, a4, 64
	addi	a7, a7, 64
	addi	t0, t0, 64
	addi	t1, t1, 64
	ld	t4, 520(sp)                     # 8-byte Folded Reload
	bne	t4, t3, .LBB8_104
# %bb.107:
	ld	s3, 488(sp)                     # 8-byte Folded Reload
.LBB8_108:
	beqz	s11, .LBB8_110
# %bb.109:
	li	a1, 1
	lui	a2, %hi(cbp8x8)
	lw	a3, %lo(cbp8x8)(a2)
	lui	a4, %hi(cnt_nonz_8x8)
	lw	a5, %lo(cnt_nonz_8x8)(a4)
	sllw	a1, a1, s3
	or	a1, a3, a1
	sw	a1, %lo(cbp8x8)(a2)
	add	a5, a5, s11
	sw	a5, %lo(cnt_nonz_8x8)(a4)
.LBB8_110:
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	a1, 464(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB8_114
# %bb.111:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lh	a2, 0(a0)
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	lbu	a3, 0(a0)
	ld	a0, 392(sp)                     # 8-byte Folded Reload
	lbu	a4, 0(a0)
	ld	a0, 408(sp)                     # 8-byte Folded Reload
	lh	a5, 0(a0)
	li	a0, 0
	mv	a1, s3
	ld	a6, 312(sp)                     # 8-byte Folded Reload
	call	StoreNewMotionVectorsBlock8x8
.LBB8_112:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lh	a1, 0(a0)
	ld	a0, 408(sp)                     # 8-byte Folded Reload
	lh	a2, 0(a0)
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	lbu	a3, 0(a0)
	ld	a0, 392(sp)                     # 8-byte Folded Reload
	lbu	a4, 0(a0)
	mv	a0, s3
	call	SetRefAndMotionVectors
	li	a0, 2
	blt	a0, s3, .LBB8_121
# %bb.113:
	lui	a0, %hi(cs_b8)
	ld	a0, %lo(cs_b8)(a0)
	call	reset_coding_state
	j	.LBB8_121
.LBB8_114:
	li	a1, 2
	blt	a1, s3, .LBB8_120
# %bb.115:                              # %.preheader
	ld	a3, 48(sp)                      # 8-byte Folded Reload
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	add	a1, a1, a3
	add	a1, s9, a1
	ld	a2, 344(sp)                     # 8-byte Folded Reload
	slli	a2, a2, 3
	ld	a4, 24(sp)                      # 8-byte Folded Reload
	add	a3, a3, a4
	add	a3, a3, s9
	addi	a3, a3, -1024
	addi	a4, a2, 64
	lui	a5, %hi(enc_picture)
	lui	a6, 2
	lui	a7, %hi(img)
	lui	t0, %hi(si_frame_indicator)
	li	t1, 3
	lui	t2, %hi(lrec)
	j	.LBB8_117
.LBB8_116:                              #   in Loop: Header=BB8_117 Depth=1
	addi	a1, a1, 64
	addi	a2, a2, 8
	addi	a3, a3, 32
	beq	a2, a4, .LBB8_112
.LBB8_117:                              # =>This Inner Loop Header: Depth=1
	ld	t3, %lo(enc_picture)(a5)
	lw	t4, 156(a0)
	add	t3, t3, a6
	ld	t3, -1768(t3)
	slli	t4, t4, 3
	add	t4, t4, a2
	add	t3, t3, t4
	lw	a0, 152(a0)
	ld	t3, 0(t3)
	lh	t4, 14(a3)
	slli	a0, a0, 1
	add	a0, t3, a0
	sh	t4, 14(a0)
	lh	t3, 12(a3)
	sh	t3, 12(a0)
	lh	t3, 10(a3)
	sh	t3, 10(a0)
	lh	t3, 8(a3)
	sh	t3, 8(a0)
	lh	t3, 6(a3)
	sh	t3, 6(a0)
	lh	t3, 4(a3)
	sh	t3, 4(a0)
	lh	t3, 2(a3)
	sh	t3, 2(a0)
	lh	t3, 0(a3)
	sh	t3, 0(a0)
	ld	a0, %lo(img)(a7)
	lw	t3, 24(a0)
	bne	t3, t1, .LBB8_116
# %bb.118:                              #   in Loop: Header=BB8_117 Depth=1
	lw	t3, %lo(si_frame_indicator)(t0)
	bnez	t3, .LBB8_116
# %bb.119:                              #   in Loop: Header=BB8_117 Depth=1
	lw	t3, 156(a0)
	ld	t4, %lo(lrec)(t2)
	slli	t3, t3, 3
	add	t4, t4, a2
	add	t3, t4, t3
	lw	a0, 152(a0)
	ld	t3, 0(t3)
	lw	t4, 12(a1)
	slli	a0, a0, 2
	add	a0, t3, a0
	sw	t4, 12(a0)
	lw	t3, 8(a1)
	sw	t3, 8(a0)
	lw	t3, 4(a1)
	sw	t3, 4(a0)
	lw	t3, 0(a1)
	sw	t3, 0(a0)
	ld	a0, %lo(img)(a7)
	j	.LBB8_116
.LBB8_120:
	ld	a0, 416(sp)                     # 8-byte Folded Reload
	lh	a1, 0(a0)
	ld	a0, 408(sp)                     # 8-byte Folded Reload
	lh	a2, 0(a0)
	ld	a0, 400(sp)                     # 8-byte Folded Reload
	lbu	a3, 0(a0)
	ld	a0, 392(sp)                     # 8-byte Folded Reload
	lbu	a4, 0(a0)
	mv	a0, s3
	call	SetRefAndMotionVectors
.LBB8_121:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 100(a0)
	beqz	a0, .LBB8_124
# %bb.122:
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 10
	add	a0, s8, a0
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	add	a0, a4, a0
	add	a0, s0, a0
	addi	a1, sp, 2047
	addi	a1, a1, 601
	add	a1, a1, a4
	addi	a2, sp, 600
	add	a2, a4, a2
	addi	a2, a2, 1024
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	slli	a3, a3, 11
	add	a3, s1, a3
	add	a3, a4, a3
	add	a3, a3, s0
	addi	a3, a3, 1024
	addi	a4, a0, 512
.LBB8_123:                              # =>This Inner Loop Header: Depth=1
	lw	a5, 28(a1)
	lw	a6, 24(a1)
	lw	a7, 20(a1)
	lw	t0, 16(a1)
	sw	a5, 28(a0)
	sw	a6, 24(a0)
	sw	a7, 20(a0)
	sw	t0, 16(a0)
	lw	a5, 12(a1)
	lw	a6, 8(a1)
	lw	a7, 4(a1)
	lw	t0, 0(a1)
	sw	a5, 12(a0)
	sw	a6, 8(a0)
	sw	a7, 4(a0)
	sw	t0, 0(a0)
	lw	a5, -1024(a2)
	lw	a6, -1020(a2)
	lw	a7, -1016(a2)
	lw	t0, -1012(a2)
	sw	a5, -1024(a3)
	sw	a6, -1020(a3)
	sw	a7, -1016(a3)
	sw	t0, -1012(a3)
	lw	a5, -1008(a2)
	lw	a6, -1004(a2)
	lw	a7, -1000(a2)
	lw	t0, -996(a2)
	sw	a5, -1008(a3)
	sw	a6, -1004(a3)
	sw	a7, -1000(a3)
	sw	t0, -996(a3)
	lw	a5, 28(a2)
	lw	a6, 24(a2)
	lw	a7, 20(a2)
	lw	t0, 16(a2)
	sw	a5, 28(a3)
	sw	a6, 24(a3)
	sw	a7, 20(a3)
	sw	t0, 16(a3)
	lw	a5, 12(a2)
	lw	a6, 8(a2)
	lw	a7, 4(a2)
	lw	t0, 0(a2)
	sw	a5, 12(a3)
	sw	a6, 8(a3)
	sw	a7, 4(a3)
	sw	t0, 0(a3)
	addi	a0, a0, 64
	addi	a1, a1, 64
	addi	a2, a2, 64
	addi	a3, a3, 64
	bne	a0, a4, .LBB8_123
.LBB8_124:
	addi	sp, sp, 1808
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
.LBB8_125:                              # %.preheader2
	ld	a1, 344(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 3
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	ld	a3, 48(sp)                      # 8-byte Folded Reload
	add	a2, a2, a3
	add	a2, s9, a2
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	add	a3, a3, a4
	add	a3, a3, s9
	addi	a3, a3, -1024
	addi	a4, a1, 64
	lui	a5, %hi(enc_picture)
	lui	a6, 2
	lui	a7, %hi(si_frame_indicator)
	li	t0, 3
	lui	t1, %hi(lrec)
	ld	t4, 136(sp)                     # 8-byte Folded Reload
	j	.LBB8_127
.LBB8_126:                              #   in Loop: Header=BB8_127 Depth=1
	addi	a1, a1, 8
	addi	a2, a2, 64
	addi	t4, t4, 32
	addi	a3, a3, 32
	beq	a1, a4, .LBB8_108
.LBB8_127:                              # =>This Inner Loop Header: Depth=1
	ld	t2, %lo(enc_picture)(a5)
	lw	t3, 156(a0)
	add	t2, t2, a6
	ld	t2, -1768(t2)
	slli	t3, t3, 3
	add	t3, t3, a1
	lw	a0, 152(a0)
	add	t2, t2, t3
	ld	t2, 0(t2)
	ld	t3, 504(sp)                     # 8-byte Folded Reload
	addw	a0, a0, t3
	slli	a0, a0, 1
	add	a0, t2, a0
	lh	t2, 14(a0)
	sh	t2, 14(a3)
	lh	t2, 12(a0)
	sh	t2, 12(a3)
	lh	t2, 10(a0)
	sh	t2, 10(a3)
	lh	t2, 8(a0)
	sh	t2, 8(a3)
	lh	t2, 6(a0)
	sh	t2, 6(a3)
	lh	t2, 4(a0)
	sh	t2, 4(a3)
	lh	t2, 2(a0)
	sh	t2, 2(a3)
	lh	a0, 0(a0)
	sh	a0, 0(a3)
	ld	a0, %lo(img)(s0)
	add	a0, a0, t4
	lh	t2, 14(a0)
	sh	t2, 526(a3)
	lh	t2, 12(a0)
	sh	t2, 524(a3)
	lh	t2, 10(a0)
	sh	t2, 522(a3)
	lh	t2, 8(a0)
	sh	t2, 520(a3)
	lh	t2, 6(a0)
	sh	t2, 518(a3)
	lh	t2, 4(a0)
	sh	t2, 516(a3)
	lh	t2, 2(a0)
	sh	t2, 514(a3)
	lh	a0, 0(a0)
	sh	a0, 512(a3)
	ld	a0, %lo(img)(s0)
	lw	t2, 24(a0)
	bne	t2, t0, .LBB8_126
# %bb.128:                              #   in Loop: Header=BB8_127 Depth=1
	lw	t2, %lo(si_frame_indicator)(a7)
	bnez	t2, .LBB8_126
# %bb.129:                              #   in Loop: Header=BB8_127 Depth=1
	lw	t2, 156(a0)
	ld	t3, %lo(lrec)(t1)
	slli	t2, t2, 3
	add	t3, t3, a1
	lw	a0, 152(a0)
	add	t2, t3, t2
	ld	t2, 0(t2)
	ld	t3, 504(sp)                     # 8-byte Folded Reload
	addw	a0, a0, t3
	slli	a0, a0, 2
	add	a0, t2, a0
	lw	t2, 28(a0)
	sw	t2, 28(a2)
	lw	t2, 24(a0)
	sw	t2, 24(a2)
	lw	t2, 20(a0)
	sw	t2, 20(a2)
	lw	t2, 16(a0)
	sw	t2, 16(a2)
	lw	t2, 12(a0)
	sw	t2, 12(a2)
	lw	t2, 8(a0)
	sw	t2, 8(a2)
	lw	t2, 4(a0)
	sw	t2, 4(a2)
	lw	a0, 0(a0)
	sw	a0, 0(a2)
	ld	a0, %lo(img)(s0)
	j	.LBB8_126
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
	addi	sp, sp, -640
	sd	ra, 632(sp)                     # 8-byte Folded Spill
	sd	s0, 624(sp)                     # 8-byte Folded Spill
	sd	s1, 616(sp)                     # 8-byte Folded Spill
	sd	s2, 608(sp)                     # 8-byte Folded Spill
	sd	s3, 600(sp)                     # 8-byte Folded Spill
	sd	s4, 592(sp)                     # 8-byte Folded Spill
	sd	s5, 584(sp)                     # 8-byte Folded Spill
	sd	s6, 576(sp)                     # 8-byte Folded Spill
	sd	s7, 568(sp)                     # 8-byte Folded Spill
	sd	s8, 560(sp)                     # 8-byte Folded Spill
	sd	s9, 552(sp)                     # 8-byte Folded Spill
	sd	s10, 544(sp)                    # 8-byte Folded Spill
	sd	s11, 536(sp)                    # 8-byte Folded Spill
	fsd	fs0, 528(sp)                    # 8-byte Folded Spill
	fsd	fs1, 520(sp)                    # 8-byte Folded Spill
	fsd	fs2, 512(sp)                    # 8-byte Folded Spill
	fsd	fs3, 504(sp)                    # 8-byte Folded Spill
	fsd	fs4, 496(sp)                    # 8-byte Folded Spill
	li	a0, -256
	sh	a0, 406(sp)
	sw	zero, 400(sp)
	sd	zero, 392(sp)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 384(sp)
	sw	zero, 380(sp)
	sw	zero, 376(sp)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	sw	zero, 372(sp)
	sw	zero, 368(sp)
	lui	a1, 8
	lw	s11, 24(a0)
	addiw	a1, a1, -1192
	li	a2, 1
	li	a3, 2
	li	s0, 1
	beq	s11, a3, .LBB9_6
# %bb.1:
	li	a3, 3
	beq	s11, a3, .LBB9_3
# %bb.2:
	bnez	s11, .LBB9_5
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
	beqz	s11, .LBB9_13
# %bb.9:
	li	a2, 3
	beq	s11, a2, .LBB9_13
# %bb.10:
	li	a2, 1
	bne	s11, a2, .LBB9_12
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
	sd	a3, 144(sp)                     # 8-byte Folded Spill
	addi	s3, s11, -3
	lw	a0, 12(a0)
	ld	s1, 0(a1)
	addi	s4, s11, -1
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
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	j	.LBB9_16
.LBB9_15:
	sd	zero, 24(sp)                    # 8-byte Folded Spill
.LBB9_16:
	ld	a0, 0(a2)
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	seqz	s5, s11
	seqz	s3, s3
	seqz	a2, s4
	sd	a2, 256(sp)                     # 8-byte Folded Spill
	ld	a0, 0(a0)
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	add	s10, s1, s2
	ld	a1, 104(a1)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	ld	a0, 0(a0)
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	addi	a0, a2, 2047
	lw	a0, 1917(a0)
	sh	zero, 366(sp)
	sh	zero, 364(sp)
	li	a1, 2
	sd	zero, 352(sp)
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
	lui	s8, %hi(img)
	ld	a0, %lo(img)(s8)
	lw	a0, 12(a0)
	or	a1, s5, s3
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	call	RandomIntra
	or	a0, a0, s0
	slli	s0, a0, 48
	srai	a2, s0, 48
	addi	a1, sp, 416
	mv	a0, s10
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	call	init_enc_mb_params
	sd	zero, 176(sp)                   # 8-byte Folded Spill
	sd	zero, 112(sp)                   # 8-byte Folded Spill
	sd	zero, 184(sp)                   # 8-byte Folded Spill
	sd	zero, 152(sp)                   # 8-byte Folded Spill
	srli	s9, s0, 48
	li	s1, 1
	lui	a0, %hi(.LCPI9_0)
	fld	fs3, %lo(.LCPI9_0)(a0)
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	lui	a0, 22
	addiw	a7, a0, -750
	lui	a0, 3
	addiw	a0, a0, 312
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(.LCPI9_3)
	fld	fs0, %lo(.LCPI9_3)(a0)
	lui	a0, %hi(.LCPI9_4)
	fld	fs1, %lo(.LCPI9_4)(a0)
	lui	a0, %hi(resTrans_B)
	addi	a0, a0, %lo(resTrans_B)
	addi	a0, a0, 32
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(rec_resG)
	addi	a0, a0, %lo(rec_resG)
	addi	a0, a0, 32
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	lui	a1, %hi(resTrans_R)
	addi	a1, a1, %lo(resTrans_R)
	lui	a0, %hi(.LCPI9_2)
	fld	fs2, %lo(.LCPI9_2)(a0)
	lui	a0, %hi(.LCPI9_1)
	ld	a0, %lo(.LCPI9_1)(a0)
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	addi	a0, a1, 32
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(rec_resB)
	addi	a0, a0, %lo(rec_resB)
	addi	a0, a0, 32
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(rec_resR)
	addi	a0, a0, %lo(rec_resR)
	addi	a0, a0, 32
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	lui	a0, 1
	addiw	a0, a0, 696
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(temp_imgY)
	addi	a0, a0, %lo(temp_imgY)
	addi	a0, a0, 16
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	lui	s3, %hi(gaaiMBAFF_NZCoeff)
	addi	s3, s3, %lo(gaaiMBAFF_NZCoeff)
	li	a0, 1
	li	a2, 1
	sd	s11, 248(sp)                    # 8-byte Folded Spill
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	sd	s9, 208(sp)                     # 8-byte Folded Spill
	sd	s10, 200(sp)                    # 8-byte Folded Spill
	sd	a7, 232(sp)                     # 8-byte Folded Spill
.LBB9_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_32 Depth 2
                                        #       Child Loop BB9_36 Depth 3
                                        #     Child Loop BB9_103 Depth 2
                                        #       Child Loop BB9_104 Depth 3
                                        #     Child Loop BB9_173 Depth 2
                                        #       Child Loop BB9_190 Depth 3
                                        #     Child Loop BB9_295 Depth 2
                                        #       Child Loop BB9_311 Depth 3
                                        #     Child Loop BB9_335 Depth 2
                                        #     Child Loop BB9_338 Depth 2
                                        #     Child Loop BB9_341 Depth 2
                                        #     Child Loop BB9_344 Depth 2
                                        #     Child Loop BB9_229 Depth 2
                                        #       Child Loop BB9_230 Depth 3
                                        #     Child Loop BB9_142 Depth 2
                                        #       Child Loop BB9_143 Depth 3
                                        #     Child Loop BB9_149 Depth 2
                                        #     Child Loop BB9_152 Depth 2
                                        #       Child Loop BB9_153 Depth 3
                                        #     Child Loop BB9_243 Depth 2
                                        #       Child Loop BB9_244 Depth 3
                                        #     Child Loop BB9_250 Depth 2
                                        #       Child Loop BB9_251 Depth 3
                                        #     Child Loop BB9_255 Depth 2
                                        #       Child Loop BB9_256 Depth 3
                                        #     Child Loop BB9_260 Depth 2
                                        #     Child Loop BB9_262 Depth 2
                                        #     Child Loop BB9_264 Depth 2
                                        #     Child Loop BB9_267 Depth 2
                                        #       Child Loop BB9_269 Depth 3
	sd	a2, 160(sp)                     # 8-byte Folded Spill
	li	s0, 2
	beqz	s2, .LBB9_23
# %bb.22:                               #   in Loop: Header=BB9_21 Depth=1
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	sw	a0, 1089(a1)
.LBB9_23:                               #   in Loop: Header=BB9_21 Depth=1
	sw	zero, 416(s10)
	lui	a0, %hi(cs_cm)
	ld	a0, %lo(cs_cm)(a0)
	call	store_coding_state
	beqz	s9, .LBB9_25
# %bb.24:                               #   in Loop: Header=BB9_21 Depth=1
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	ld	a7, 232(sp)                     # 8-byte Folded Reload
	li	a6, 2
	j	.LBB9_122
.LBB9_25:                               #   in Loop: Header=BB9_21 Depth=1
	lui	a0, %hi(best_mode)
	sh	s1, %lo(best_mode)(a0)
	bne	s11, s1, .LBB9_29
# %bb.26:                               #   in Loop: Header=BB9_21 Depth=1
	call	Get_Direct_Motion_Vectors
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	bne	a0, s0, .LBB9_29
# %bb.27:                               #   in Loop: Header=BB9_21 Depth=1
	lhu	a0, 436(sp)
	beqz	a0, .LBB9_29
# %bb.28:                               #   in Loop: Header=BB9_21 Depth=1
	lui	a0, %hi(best_mode)
	sh	zero, %lo(best_mode)(a0)
	sw	zero, 416(s10)
	lw	s1, 372(sp)
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	sd	a0, 408(sp)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	addi	a2, sp, 280
	addi	a3, sp, 408
	addi	a4, sp, 352
	li	a6, 1
	addi	a7, sp, 366
	li	a0, 0
	mv	a1, s10
	mv	a5, s1
	li	s1, 1
	call	compute_mode_RD_cost
.LBB9_29:                               #   in Loop: Header=BB9_21 Depth=1
	lhu	a1, 366(sp)
	li	s3, 1
	lui	a0, 524288
	addiw	a0, a0, -1
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	mv	s0, a1
	sd	a1, 192(sp)                     # 8-byte Folded Spill
	mv	a0, a1
	li	a6, 2
	j	.LBB9_32
.LBB9_30:                               #   in Loop: Header=BB9_32 Depth=2
	mv	a0, s0
.LBB9_31:                               #   in Loop: Header=BB9_32 Depth=2
	addi	s3, s3, 1
	li	a1, 4
	beq	s3, a1, .LBB9_96
.LBB9_32:                               #   Parent Loop BB9_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_36 Depth 3
	ld	a1, %lo(img)(s8)
	slli	a2, s3, 1
	addi	a3, sp, 436
	add	a3, a3, a2
	lhu	a3, 0(a3)
	lui	a4, %hi(bi_pred_me)
	sh	zero, %lo(bi_pred_me)(a4)
	lui	a4, 22
	add	a2, a2, a4
	add	a1, a1, a2
	sh	zero, -752(a1)
	beqz	a3, .LBB9_31
# %bb.33:                               #   in Loop: Header=BB9_32 Depth=2
	bnez	a0, .LBB9_31
# %bb.34:                               #   in Loop: Header=BB9_32 Depth=2
	sd	s0, 224(sp)                     # 8-byte Folded Spill
	li	s0, 1
	li	s8, 0
	lh	s7, 466(sp)
	sw	zero, 380(sp)
	fld	fs4, 424(sp)
	lw	s10, 432(sp)
	slli	s5, s7, 2
	lui	a0, %hi(listXsize)
	addi	a0, a0, %lo(listXsize)
	add	s5, a0, s5
	fmul.d	fa5, fs4, fs2
	fcvt.w.d	a0, fa5, rtz
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	li	s2, 1
	j	.LBB9_36
.LBB9_35:                               #   in Loop: Header=BB9_36 Depth=3
	li	s2, 0
	addi	a0, s3, -1
	snez	a0, a0
	not	a1, s8
	and	a0, a1, a0
	li	s8, 1
	ld	s11, 248(sp)                    # 8-byte Folded Reload
	beqz	a0, .LBB9_73
.LBB9_36:                               #   Parent Loop BB9_21 Depth=1
                                        #     Parent Loop BB9_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sext.w	s9, s3
	mv	a0, s9
	mv	a1, s8
	mv	a2, s10
	call	PartitionMotionSearch
	lui	s1, 524288
	addi	s1, s1, -1
	sw	s1, 384(sp)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	addi	a3, sp, 280
	addi	a4, sp, 384
	addi	a5, sp, 406
	li	a0, 0
	mv	a1, s8
	mv	a2, s9
	call	list_prediction_cost
	bne	s11, s0, .LBB9_41
# %bb.37:                               #   in Loop: Header=BB9_36 Depth=3
	sw	s1, 388(sp)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	li	a0, 1
	addi	a3, sp, 280
	addi	a4, sp, 384
	addi	a5, sp, 406
	mv	a1, s8
	mv	a2, s9
	call	list_prediction_cost
	lui	s6, %hi(input)
	ld	a0, %lo(input)(s6)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	beqz	a0, .LBB9_42
# %bb.38:                               #   in Loop: Header=BB9_36 Depth=3
	lw	a0, 0(s5)
	li	a2, 2
	bge	a0, a2, .LBB9_43
# %bb.39:                               #   in Loop: Header=BB9_36 Depth=3
	li	a0, 0
	lw	a1, 4(s5)
	lbu	a3, 407(sp)
	blt	a1, a2, .LBB9_44
.LBB9_40:                               #   in Loop: Header=BB9_36 Depth=3
	lui	a1, %hi(refbits)
	ld	a1, %lo(refbits)(a1)
	slli	a2, a3, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	j	.LBB9_45
.LBB9_41:                               #   in Loop: Header=BB9_36 Depth=3
	lw	a0, 384(sp)
	lw	a1, 380(sp)
	li	s4, 0
	sh	zero, 494(sp)
	add	a0, a1, a0
	sw	a0, 380(sp)
	j	.LBB9_65
.LBB9_42:                               #   in Loop: Header=BB9_36 Depth=3
	lbu	a2, 406(sp)
	lbu	a3, 407(sp)
	snez	a0, a2
	snez	a1, a3
	add	a0, a1, a0
	fcvt.d.wu	fa5, a0
	fmul.d	fa5, fs4, fa5
	fadd.d	fa5, fa5, fa5
	fcvt.w.d	s4, fa5, rtz
	j	.LBB9_46
.LBB9_43:                               #   in Loop: Header=BB9_36 Depth=3
	lbu	a0, 406(sp)
	lui	a1, %hi(refbits)
	ld	a1, %lo(refbits)(a1)
	slli	a0, a0, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, 4(s5)
	lbu	a3, 407(sp)
	bge	a1, a2, .LBB9_40
.LBB9_44:                               #   in Loop: Header=BB9_36 Depth=3
	li	a1, 0
.LBB9_45:                               #   in Loop: Header=BB9_36 Depth=3
	mul	a0, a0, s10
	sraiw	s4, a0, 16
	lbu	a2, 406(sp)
	mul	a0, a1, s10
	sraiw	a0, a0, 16
	add	s4, a0, s4
.LBB9_46:                               #   in Loop: Header=BB9_36 Depth=3
	mv	a0, s9
	mv	a1, s8
	mv	a4, s10
	call	BIDPartitionCost
	add	a0, a0, s4
	sw	a0, 392(sp)
	bne	s3, s0, .LBB9_52
# %bb.47:                               #   in Loop: Header=BB9_36 Depth=3
	ld	a0, %lo(input)(s6)
	lw	a1, 1264(a0)
	beqz	a1, .LBB9_52
# %bb.48:                               #   in Loop: Header=BB9_36 Depth=3
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB9_56
# %bb.49:                               #   in Loop: Header=BB9_36 Depth=3
	lw	a0, 0(s5)
	li	a2, 2
	bge	a0, a2, .LBB9_53
# %bb.50:                               #   in Loop: Header=BB9_36 Depth=3
	li	a0, 0
	lw	a1, 4(s5)
	blt	a1, a2, .LBB9_54
.LBB9_51:                               #   in Loop: Header=BB9_36 Depth=3
	lui	a1, %hi(refbits)
	ld	a1, %lo(refbits)(a1)
	lw	a1, 0(a1)
	j	.LBB9_55
.LBB9_52:                               #   in Loop: Header=BB9_36 Depth=3
	sw	s1, 396(sp)
	j	.LBB9_64
.LBB9_53:                               #   in Loop: Header=BB9_36 Depth=3
	lui	a0, %hi(refbits)
	ld	a0, %lo(refbits)(a0)
	lw	a0, 0(a0)
	lw	a1, 4(s5)
	bge	a1, a2, .LBB9_51
.LBB9_54:                               #   in Loop: Header=BB9_36 Depth=3
	li	a1, 0
.LBB9_55:                               #   in Loop: Header=BB9_36 Depth=3
	mul	a0, a0, s10
	sraiw	s1, a0, 16
	mul	a0, a1, s10
	sraiw	a0, a0, 16
	add	s1, a0, s1
.LBB9_56:                               #   in Loop: Header=BB9_36 Depth=3
	li	a0, 1
	mv	a1, s8
	li	a2, 0
	li	a3, 0
	mv	a4, s10
	li	a5, 0
	call	BPredPartitionCost
	ld	a1, %lo(input)(s6)
	addi	a1, a1, 2047
	lw	a1, 1089(a1)
	add	a0, a0, s1
	sw	a0, 396(sp)
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB9_63
# %bb.57:                               #   in Loop: Header=BB9_36 Depth=3
	lw	a0, 0(s5)
	li	a2, 2
	bge	a0, a2, .LBB9_60
# %bb.58:                               #   in Loop: Header=BB9_36 Depth=3
	li	a0, 0
	lw	a1, 4(s5)
	blt	a1, a2, .LBB9_61
.LBB9_59:                               #   in Loop: Header=BB9_36 Depth=3
	lui	a1, %hi(refbits)
	ld	a1, %lo(refbits)(a1)
	lw	a1, 0(a1)
	j	.LBB9_62
.LBB9_60:                               #   in Loop: Header=BB9_36 Depth=3
	lui	a0, %hi(refbits)
	ld	a0, %lo(refbits)(a0)
	lw	a0, 0(a0)
	lw	a1, 4(s5)
	bge	a1, a2, .LBB9_59
.LBB9_61:                               #   in Loop: Header=BB9_36 Depth=3
	li	a1, 0
.LBB9_62:                               #   in Loop: Header=BB9_36 Depth=3
	mul	a0, a0, s10
	sraiw	s1, a0, 16
	mul	a0, a1, s10
	sraiw	a0, a0, 16
	add	s1, a0, s1
.LBB9_63:                               #   in Loop: Header=BB9_36 Depth=3
	li	a0, 1
	li	a5, 1
	mv	a1, s8
	li	a2, 0
	li	a3, 0
	mv	a4, s10
	call	BPredPartitionCost
	add	s1, a0, s1
.LBB9_64:                               #   in Loop: Header=BB9_36 Depth=3
	sw	s1, 400(sp)
	addi	a1, sp, 384
	addi	a2, sp, 406
	addi	a3, sp, 494
	addi	a4, sp, 380
	mv	a0, s9
	lui	a5, %hi(bi_pred_me)
	addi	a5, a5, %lo(bi_pred_me)
	call	determine_prediction_list
	lhu	s4, 494(sp)
.LBB9_65:                               #   in Loop: Header=BB9_36 Depth=3
	lbu	s1, 406(sp)
	lbu	s11, 407(sp)
	slli	a0, s4, 48
	srai	s6, a0, 48
	mv	a0, s9
	mv	a1, s6
	mv	a2, s8
	mv	a3, s7
	mv	a4, s1
	mv	a5, s11
	ld	a6, 256(sp)                     # 8-byte Folded Reload
	call	assign_enc_picture_params
	li	a6, 2
	beq	s9, a6, .LBB9_68
# %bb.66:                               #   in Loop: Header=BB9_36 Depth=3
	li	a0, 3
	bne	s9, a0, .LBB9_70
# %bb.67:                               #   in Loop: Header=BB9_36 Depth=3
	lui	a0, %hi(best8x8fwref)
	addi	a0, a0, %lo(best8x8fwref)
	addi	a0, a0, 24
	slli	a1, s8, 1
	addi	a2, a1, 4
	add	a3, a0, a2
	sh	s1, 0(a3)
	add	a0, a0, a1
	sh	s1, 0(a0)
	lui	a0, %hi(best8x8pdir)
	addi	a0, a0, %lo(best8x8pdir)
	addi	a0, a0, 24
	add	a3, a0, a2
	sh	s4, 0(a3)
	add	a0, a0, a1
	sh	s4, 0(a0)
	lui	a0, %hi(best8x8bwref)
	addi	a0, a0, %lo(best8x8bwref)
	addi	a0, a0, 24
	j	.LBB9_69
.LBB9_68:                               #   in Loop: Header=BB9_36 Depth=3
	lui	a0, %hi(best8x8fwref)
	addi	a0, a0, %lo(best8x8fwref)
	addi	a0, a0, 16
	slli	a1, s8, 2
	addi	a2, a1, 2
	add	a3, a0, a2
	sh	s1, 0(a3)
	add	a0, a0, a1
	sh	s1, 0(a0)
	lui	a0, %hi(best8x8pdir)
	addi	a0, a0, %lo(best8x8pdir)
	addi	a0, a0, 16
	add	a3, a0, a2
	sh	s4, 0(a3)
	add	a0, a0, a1
	sh	s4, 0(a0)
	lui	a0, %hi(best8x8bwref)
	addi	a0, a0, %lo(best8x8bwref)
	addi	a0, a0, 16
.LBB9_69:                               #   in Loop: Header=BB9_36 Depth=3
	add	a2, a0, a2
	sh	s11, 0(a2)
	add	a0, a0, a1
	sh	s11, 0(a0)
	j	.LBB9_71
.LBB9_70:                               #   in Loop: Header=BB9_36 Depth=3
	lui	a0, %hi(best8x8fwref)
	addi	a0, a0, %lo(best8x8fwref)
	sh	s1, 14(a0)
	sh	s1, 12(a0)
	sh	s1, 10(a0)
	sh	s1, 8(a0)
	lui	a0, %hi(best8x8pdir)
	addi	a0, a0, %lo(best8x8pdir)
	sh	s4, 14(a0)
	sh	s4, 12(a0)
	sh	s4, 10(a0)
	sh	s4, 8(a0)
	lui	a0, %hi(best8x8bwref)
	addi	a0, a0, %lo(best8x8bwref)
	sh	s11, 14(a0)
	sh	s11, 12(a0)
	sh	s11, 10(a0)
	sh	s11, 8(a0)
.LBB9_71:                               #   in Loop: Header=BB9_36 Depth=3
	sltiu	a0, s3, 2
	not	a1, s2
	or	a0, a0, a1
	andi	a0, a0, 1
	bnez	a0, .LBB9_35
# %bb.72:                               #   in Loop: Header=BB9_36 Depth=3
	mv	a1, s9
	mv	a2, s6
	mv	a3, s1
	mv	a4, s11
	call	SetRefAndMotionVectors
	li	a6, 2
	j	.LBB9_35
.LBB9_73:                               #   in Loop: Header=BB9_32 Depth=2
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a0, 1089(a1)
	ld	s10, 200(sp)                    # 8-byte Folded Reload
	lui	s8, %hi(img)
	li	s1, 1
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB9_75
# %bb.74:                               #   in Loop: Header=BB9_32 Depth=2
	beq	s3, s1, .LBB9_77
	j	.LBB9_83
.LBB9_75:                               #   in Loop: Header=BB9_32 Depth=2
	sw	zero, 468(s10)
	lw	a0, 1845(a1)
	beqz	a0, .LBB9_83
# %bb.76:                               #   in Loop: Header=BB9_32 Depth=2
	mv	a0, s9
	call	SetModesAndRefframeForBlocks
	li	a0, -1
	addi	a1, sp, 380
	call	TransformDecision
	li	a6, 2
	sw	a0, 468(s10)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	bne	s3, s1, .LBB9_83
.LBB9_77:                               #   in Loop: Header=BB9_32 Depth=2
	ld	s9, 208(sp)                     # 8-byte Folded Reload
	bne	a0, a6, .LBB9_93
# %bb.78:                               #   in Loop: Header=BB9_32 Depth=2
	li	a0, 3
	beq	s11, a0, .LBB9_80
# %bb.79:                               #   in Loop: Header=BB9_32 Depth=2
	bnez	s11, .LBB9_81
.LBB9_80:                               #   in Loop: Header=BB9_32 Depth=2
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	sd	a0, 408(sp)
.LBB9_81:                               #   in Loop: Header=BB9_32 Depth=2
	sw	zero, 372(sp)
	bne	s11, s1, .LBB9_84
# %bb.82:                               #   in Loop: Header=BB9_32 Depth=2
	lui	a0, %hi(best8x8pdir)
	addi	a0, a0, %lo(best8x8pdir)
	sh	zero, 14(a0)
	sh	zero, 12(a0)
	sh	zero, 10(a0)
	sh	zero, 8(a0)
	sw	zero, 416(s10)
	lw	s1, 372(sp)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	li	a0, 1
	addi	a2, sp, 280
	addi	a3, sp, 408
	addi	a4, sp, 352
	addi	a7, sp, 366
	mv	a1, s10
	mv	a5, s1
	ld	a6, 256(sp)                     # 8-byte Folded Reload
	call	compute_mode_RD_cost
	li	s1, 1
	j	.LBB9_92
.LBB9_83:                               #   in Loop: Header=BB9_32 Depth=2
	ld	s9, 208(sp)                     # 8-byte Folded Reload
	beqz	s0, .LBB9_94
	j	.LBB9_30
.LBB9_84:                               #   in Loop: Header=BB9_32 Depth=2
	sw	zero, 416(s10)
	lw	s1, 372(sp)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	li	a0, 1
	addi	a2, sp, 280
	addi	a3, sp, 408
	addi	a4, sp, 352
	addi	a7, sp, 366
	mv	a1, s10
	mv	a5, s1
	ld	a6, 256(sp)                     # 8-byte Folded Reload
	call	compute_mode_RD_cost
	li	s1, 1
	li	a0, 3
	beq	s11, a0, .LBB9_86
# %bb.85:                               #   in Loop: Header=BB9_32 Depth=2
	bnez	s11, .LBB9_92
.LBB9_86:                               #   in Loop: Header=BB9_32 Depth=2
	call	FindSkipModeMotionVector
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lui	a1, 1
	add	a0, a0, a1
	lw	a0, 216(a0)
	beqz	a0, .LBB9_92
# %bb.87:                               #   in Loop: Header=BB9_32 Depth=2
	lw	a0, 364(s10)
	bnez	a0, .LBB9_92
# %bb.88:                               #   in Loop: Header=BB9_32 Depth=2
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a1, 2
	addiw	a1, a1, -1712
	add	a0, a0, a1
	ld	a2, %lo(img)(s8)
	ld	a1, 0(a0)
	lw	a3, 148(a2)
	ld	a4, 0(a1)
	slli	a1, a3, 3
	add	a4, a4, a1
	ld	a3, 0(a4)
	lw	a2, 144(a2)
	add	a3, a3, a2
	lbu	a3, 0(a3)
	bnez	a3, .LBB9_92
# %bb.89:                               #   in Loop: Header=BB9_32 Depth=2
	ld	a0, 24(a0)
	ld	a0, 0(a0)
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	lhu	a1, 0(a0)
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	lhu	a2, 0(a2)
	bne	a1, a2, .LBB9_92
# %bb.90:                               #   in Loop: Header=BB9_32 Depth=2
	lhu	a0, 2(a0)
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	lhu	a1, 2(a1)
	bne	a0, a1, .LBB9_92
# %bb.91:                               #   in Loop: Header=BB9_32 Depth=2
	sh	s1, 366(sp)
	lui	a0, %hi(best_mode)
	sh	zero, %lo(best_mode)(a0)
.LBB9_92:                               #   in Loop: Header=BB9_32 Depth=2
	fld	fs3, 408(sp)
	lhu	a1, 366(sp)
	lui	a0, %hi(best_mode)
	lhu	a0, %lo(best_mode)(a0)
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	sd	a1, 192(sp)                     # 8-byte Folded Spill
	mv	s0, a1
	li	a6, 2
.LBB9_93:                               #   in Loop: Header=BB9_32 Depth=2
	bnez	s0, .LBB9_30
.LBB9_94:                               #   in Loop: Header=BB9_32 Depth=2
	lw	a1, 380(sp)
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	bge	a1, a0, .LBB9_30
# %bb.95:                               #   in Loop: Header=BB9_32 Depth=2
	lui	a0, %hi(best_mode)
	sh	s3, %lo(best_mode)(a0)
	lw	a0, 468(s10)
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	li	s0, 0
	li	a0, 0
	sd	a1, 216(sp)                     # 8-byte Folded Spill
	j	.LBB9_31
.LBB9_96:                               #   in Loop: Header=BB9_21 Depth=1
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB9_108
# %bb.97:                               #   in Loop: Header=BB9_21 Depth=1
	lhu	a0, 452(sp)
	beqz	a0, .LBB9_108
# %bb.98:                               #   in Loop: Header=BB9_21 Depth=1
	lui	a0, %hi(giRDOpt_B8OnlyFlag)
	sw	s1, %lo(giRDOpt_B8OnlyFlag)(a0)
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
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1845(a0)
	lui	a1, %hi(best8x8mode)
	addi	s0, a1, %lo(best8x8mode)
	beqz	a0, .LBB9_100
# %bb.99:                               #   in Loop: Header=BB9_21 Depth=1
	lui	a1, %hi(tr8x8)
	sw	zero, %lo(tr8x8)(a1)
	lui	a0, %hi(cofAC_8x8ts)
	ld	a0, %lo(cofAC_8x8ts)(a0)
	lui	s4, %hi(cofAC_8x8ts)
	lui	a2, %hi(cnt_nonz_8x8)
	sw	zero, %lo(cnt_nonz_8x8)(a2)
	lui	a2, %hi(cbp_blk8x8)
	sw	zero, %lo(cbp_blk8x8)(a2)
	lui	a2, %hi(cbp8x8)
	sw	zero, %lo(cbp8x8)(a2)
	ld	s1, 0(a0)
	addi	s7, a1, %lo(tr8x8)
	sw	zero, 376(sp)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	li	a0, 1
	sd	a0, 16(sp)
	addi	a0, sp, 368
	sd	a0, 8(sp)
	addi	a0, sp, 280
	addi	a7, sp, 376
	addi	a1, sp, 380
	sd	a1, 0(sp)
	mv	a1, s7
	mv	a2, s10
	mv	a3, s1
	ld	s3, 256(sp)                     # 8-byte Folded Reload
	mv	a5, s3
	li	a6, 0
	call	submacroblock_mode_decision
	lui	s2, 2
	add	s2, s7, s2
	lh	a0, -2044(s2)
	lh	a1, -2036(s2)
	lbu	a2, -2028(s2)
	lbu	a3, -2024(s2)
	ld	a4, %lo(cofAC_8x8ts)(s4)
	lui	s5, %hi(best8x8pdir)
	addi	s5, s5, %lo(best8x8pdir)
	sh	a1, 64(s5)
	lui	s5, %hi(best8x8fwref)
	addi	s5, s5, %lo(best8x8fwref)
	sh	a2, 64(s5)
	lui	s6, %hi(best8x8bwref)
	addi	s6, s6, %lo(best8x8bwref)
	sh	a3, 64(s6)
	ld	s1, 8(a4)
	lui	a1, %hi(best8x8mode)
	sh	a0, %lo(best8x8mode)(a1)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	li	a0, 1
	sd	a0, 16(sp)
	addi	a0, sp, 368
	sd	a0, 8(sp)
	addi	a0, sp, 280
	li	a6, 1
	addi	a7, sp, 376
	addi	a1, sp, 380
	sd	a1, 0(sp)
	mv	a1, s7
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
	lui	s4, %hi(best8x8pdir)
	addi	s4, s4, %lo(best8x8pdir)
	sh	a1, 66(s4)
	sh	a2, 66(s5)
	sh	a3, 66(s6)
	ld	s1, 16(a4)
	sh	a0, 2(s0)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	li	a0, 1
	sd	a0, 16(sp)
	addi	a0, sp, 368
	sd	a0, 8(sp)
	addi	a0, sp, 280
	li	a6, 2
	addi	a7, sp, 376
	addi	a1, sp, 380
	sd	a1, 0(sp)
	mv	a1, s7
	mv	a2, s10
	mv	a3, s1
	mv	a5, s3
	call	submacroblock_mode_decision
	lh	a0, -2040(s2)
	lh	a1, -2032(s2)
	lbu	a2, -2026(s2)
	lbu	a3, -2022(s2)
	lui	a4, %hi(cofAC_8x8ts)
	ld	a4, %lo(cofAC_8x8ts)(a4)
	sh	a1, 68(s4)
	sh	a2, 68(s5)
	sh	a3, 68(s6)
	ld	s1, 24(a4)
	sh	a0, 4(s0)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	li	a0, 1
	sd	a0, 16(sp)
	addi	a0, sp, 368
	sd	a0, 8(sp)
	addi	a0, sp, 280
	li	a6, 3
	addi	a7, sp, 376
	addi	a1, sp, 380
	sd	a1, 0(sp)
	mv	a1, s7
	mv	a2, s10
	mv	a3, s1
	lui	s1, %hi(input)
	mv	a5, s3
	call	submacroblock_mode_decision
	lh	a0, -2038(s2)
	lh	a1, -2030(s2)
	lbu	a2, -2025(s2)
	sh	a0, 6(s0)
	sh	a1, 70(s4)
	sh	a2, 70(s5)
	lbu	a0, -2021(s2)
	lui	a1, %hi(cbp8x8)
	lw	a1, %lo(cbp8x8)(a1)
	lui	a2, %hi(cbp_blk8x8)
	lw	a2, %lo(cbp_blk8x8)(a2)
	lui	a3, %hi(cnt_nonz_8x8)
	lw	a3, %lo(cnt_nonz_8x8)(a3)
	sh	a0, 70(s6)
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
	li	a1, 2
	beq	a0, a1, .LBB9_101
.LBB9_100:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a1, %hi(tr4x4)
	sw	zero, %lo(tr4x4)(a1)
	lui	a0, %hi(cofAC8x8)
	ld	a0, %lo(cofAC8x8)(a0)
	lui	s4, %hi(cofAC8x8)
	lui	a2, %hi(cnt_nonz_8x8)
	sw	zero, %lo(cnt_nonz_8x8)(a2)
	lui	a2, %hi(cbp_blk8x8)
	sw	zero, %lo(cbp_blk8x8)(a2)
	lui	a2, %hi(cbp8x8)
	sw	zero, %lo(cbp8x8)(a2)
	ld	s1, 0(a0)
	addi	s7, a1, %lo(tr4x4)
	sw	zero, 376(sp)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	sd	zero, 16(sp)
	addi	a0, sp, 368
	sd	a0, 8(sp)
	addi	a0, sp, 280
	addi	a7, sp, 376
	addi	a1, sp, 380
	sd	a1, 0(sp)
	mv	a1, s7
	mv	a2, s10
	mv	a3, s1
	ld	s3, 256(sp)                     # 8-byte Folded Reload
	mv	a5, s3
	li	a6, 0
	call	submacroblock_mode_decision
	lui	s2, 2
	add	s2, s7, s2
	lh	a0, -2044(s2)
	lh	a1, -2036(s2)
	lbu	a2, -2028(s2)
	lbu	a3, -2024(s2)
	ld	a4, %lo(cofAC8x8)(s4)
	lui	s6, %hi(best8x8pdir)
	addi	s6, s6, %lo(best8x8pdir)
	sh	a1, 64(s6)
	lui	s4, %hi(best8x8fwref)
	addi	s4, s4, %lo(best8x8fwref)
	sh	a2, 64(s4)
	lui	s5, %hi(best8x8bwref)
	addi	s5, s5, %lo(best8x8bwref)
	sh	a3, 64(s5)
	ld	s1, 8(a4)
	lui	a1, %hi(best8x8mode)
	sh	a0, %lo(best8x8mode)(a1)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	sd	zero, 16(sp)
	addi	a0, sp, 368
	sd	a0, 8(sp)
	addi	a0, sp, 280
	li	a6, 1
	addi	a7, sp, 376
	addi	a1, sp, 380
	sd	a1, 0(sp)
	mv	a1, s7
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
	sh	a1, 66(s6)
	mv	s4, s6
	lui	s6, %hi(best8x8fwref)
	addi	s6, s6, %lo(best8x8fwref)
	sh	a2, 66(s6)
	sh	a3, 66(s5)
	ld	s1, 16(a4)
	sh	a0, 2(s0)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	sd	zero, 16(sp)
	addi	a0, sp, 368
	sd	a0, 8(sp)
	addi	a0, sp, 280
	li	a6, 2
	addi	a7, sp, 376
	addi	a1, sp, 380
	sd	a1, 0(sp)
	mv	a1, s7
	mv	a2, s10
	mv	a3, s1
	mv	a5, s3
	call	submacroblock_mode_decision
	lh	a0, -2040(s2)
	lh	a1, -2032(s2)
	lbu	a2, -2026(s2)
	lbu	a3, -2022(s2)
	lui	a4, %hi(cofAC8x8)
	ld	a4, %lo(cofAC8x8)(a4)
	sh	a1, 68(s4)
	sh	a2, 68(s6)
	sh	a3, 68(s5)
	ld	s1, 24(a4)
	sh	a0, 4(s0)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	sd	zero, 16(sp)
	addi	a0, sp, 368
	sd	a0, 8(sp)
	addi	a0, sp, 280
	li	a6, 3
	addi	a7, sp, 376
	addi	a1, sp, 380
	sd	a1, 0(sp)
	mv	a1, s7
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
	sh	a1, 70(s4)
	sh	a2, 70(s6)
	sh	a3, 70(s5)
.LBB9_101:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a0, %hi(cs_mb)
	ld	a0, %lo(cs_mb)(a0)
	call	reset_coding_state
	ld	a0, %lo(input)(s1)
	addi	a0, a0, 2047
	lw	a1, 1861(a0)
	li	s1, 1
	lui	t4, %hi(diffy)
	addi	t4, t4, %lo(diffy)
	beqz	a1, .LBB9_106
# %bb.102:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a2, %lo(img)(s8)
	li	a1, 0
	lw	a3, 172(a2)
	lui	a4, %hi(imgY_org)
	ld	a4, %lo(imgY_org)(a4)
	lw	a5, 168(a2)
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	add	a2, a2, a6
	slli	a3, a3, 3
	add	a3, a4, a3
	slli	a4, a5, 1
	mv	a5, t4
.LBB9_103:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_104 Depth 3
	slli	a6, a1, 2
	add	a6, a6, t4
	addi	a6, a6, 1024
	mv	a7, a3
	mv	t0, a2
	mv	t1, a5
.LBB9_104:                              #   Parent Loop BB9_21 Depth=1
                                        #     Parent Loop BB9_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t2, 0(a7)
	slli	t3, a1, 1
	add	t3, t3, a4
	add	t2, t2, t3
	lhu	t2, 0(t2)
	lhu	t3, 0(t0)
	subw	t2, t2, t3
	sw	t2, 0(t1)
	addi	t1, t1, 64
	addi	t0, t0, 32
	addi	a7, a7, 8
	bne	t1, a6, .LBB9_104
# %bb.105:                              #   in Loop: Header=BB9_103 Depth=2
	addi	a1, a1, 1
	addi	a5, a5, 4
	addi	a2, a2, 2
	li	a6, 16
	bne	a1, a6, .LBB9_103
.LBB9_106:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a1, 1089(a0)
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	lui	s3, %hi(gaaiMBAFF_NZCoeff)
	addi	s3, s3, %lo(gaaiMBAFF_NZCoeff)
	beqz	a1, .LBB9_109
# %bb.107:                              #   in Loop: Header=BB9_21 Depth=1
	li	a6, 2
	j	.LBB9_118
.LBB9_108:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a0, 524288
	addi	a0, a0, -1
	lui	a1, %hi(tr4x4)
	sw	a0, %lo(tr4x4)(a1)
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	lui	s3, %hi(gaaiMBAFF_NZCoeff)
	addi	s3, s3, %lo(gaaiMBAFF_NZCoeff)
	j	.LBB9_119
.LBB9_109:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a1, %hi(tr4x4)
	lw	a1, %lo(tr4x4)(a1)
	lui	a2, %hi(tr8x8)
	lw	a2, %lo(tr8x8)(a2)
	li	a6, 2
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	blt	a1, a3, .LBB9_111
# %bb.110:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	bge	a2, a3, .LBB9_118
.LBB9_111:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a3, %hi(best_mode)
	li	a4, 8
	sh	a4, %lo(best_mode)(a3)
	lw	a0, 1845(a0)
	beqz	a0, .LBB9_116
# %bb.112:                              #   in Loop: Header=BB9_21 Depth=1
	li	s0, 1
	beq	a0, a6, .LBB9_114
# %bb.113:                              #   in Loop: Header=BB9_21 Depth=1
	bge	a2, a1, .LBB9_115
.LBB9_114:                              #   in Loop: Header=BB9_21 Depth=1
	mv	a1, a2
	j	.LBB9_117
.LBB9_115:                              #   in Loop: Header=BB9_21 Depth=1
	blt	a1, a2, .LBB9_116
	j	.LBB9_289
.LBB9_116:                              #   in Loop: Header=BB9_21 Depth=1
	li	s0, 0
.LBB9_117:                              #   in Loop: Header=BB9_21 Depth=1
	sw	s0, 468(s10)
	sd	a1, 216(sp)                     # 8-byte Folded Spill
.LBB9_118:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a0, %hi(giRDOpt_B8OnlyFlag)
	sw	zero, %lo(giRDOpt_B8OnlyFlag)(a0)
.LBB9_119:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	addi	a0, a0, -2
	snez	a0, a0
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	beqz	a0, .LBB9_121
# %bb.120:                              #   in Loop: Header=BB9_21 Depth=1
	call	FindSkipModeMotionVector
	li	a6, 2
.LBB9_121:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a7, 232(sp)                     # 8-byte Folded Reload
.LBB9_122:                              #   in Loop: Header=BB9_21 Depth=1
	lui	t0, %hi(mb_mode_table)
	addi	t0, t0, %lo(mb_mode_table)
	lui	a0, %hi(input)
	ld	a1, %lo(input)(a0)
	addi	a3, a1, 2047
	lw	a4, 1089(a3)
	ld	a0, %lo(img)(s8)
	add	a2, a0, a7
	beqz	a4, .LBB9_127
# %bb.123:                              #   in Loop: Header=BB9_21 Depth=1
	lhu	a5, 366(sp)
	beqz	a5, .LBB9_124
	j	.LBB9_333
.LBB9_124:                              #   in Loop: Header=BB9_21 Depth=1
	bne	a4, a6, .LBB9_126
# %bb.125:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a5, 24(a0)
	bne	a5, a6, .LBB9_160
.LBB9_126:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a5, 168(sp)                     # 8-byte Folded Reload
	sd	a5, 408(sp)
	lw	a5, 1210(a2)
	li	s3, 11
	bnez	a5, .LBB9_165
	j	.LBB9_161
.LBB9_127:                              #   in Loop: Header=BB9_21 Depth=1
	li	s3, 1
	lw	s0, 468(s10)
	lw	a0, 1186(a2)
	lw	s1, 472(s10)
	beqz	a0, .LBB9_129
# %bb.128:                              #   in Loop: Header=BB9_21 Depth=1
	li	a0, 0
	li	a1, 0
	li	a2, 0
	call	IntraChromaPrediction
.LBB9_129:                              #   in Loop: Header=BB9_21 Depth=1
	li	s4, 2
	bne	s11, s3, .LBB9_135
# %bb.130:                              #   in Loop: Header=BB9_21 Depth=1
	lhu	a0, 436(sp)
	beqz	a0, .LBB9_135
# %bb.131:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a0, 432(sp)
	call	Get_Direct_CostMB
	sw	a0, 380(sp)
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	mv	a1, a2
	beq	a0, a2, .LBB9_133
# %bb.132:                              #   in Loop: Header=BB9_21 Depth=1
	fld	fa5, 424(sp)
	fmadd.d	fa5, fa5, fs1, fs0
	fcvt.w.d	a1, fa5, rdn
	subw	a1, a0, a1
	sw	a1, 380(sp)
.LBB9_133:                              #   in Loop: Header=BB9_21 Depth=1
	li	a3, 2
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB9_156
# %bb.134:                              #   in Loop: Header=BB9_21 Depth=1
	li	s4, 2
	sw	s0, 468(s10)
	sw	s1, 472(s10)
.LBB9_135:                              #   in Loop: Header=BB9_21 Depth=1
	lhu	a0, 462(sp)
	beqz	a0, .LBB9_233
.LBB9_136:                              #   in Loop: Header=BB9_21 Depth=1
	fld	fa0, 416(sp)
	sw	s3, 468(s10)
	li	a0, 13
	sw	a0, 72(s10)
	addi	a0, sp, 380
	call	Mode_Decision_for_new_Intra8x8Macroblock
	lw	a1, 380(sp)
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	bge	a2, a1, .LBB9_138
# %bb.137:                              #   in Loop: Header=BB9_21 Depth=1
	sw	s0, 468(s10)
	j	.LBB9_233
.LBB9_138:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a1, %lo(img)(s8)
	lui	a2, 22
	add	a2, a1, a2
	lw	a2, 460(a2)
	lui	s3, %hi(diffy)
	addi	s3, s3, %lo(diffy)
	beqz	a2, .LBB9_146
# %bb.139:                              #   in Loop: Header=BB9_21 Depth=1
	mv	s0, a0
	lui	a6, %hi(cbp_chroma_block)
	addi	a0, a6, %lo(cbp_chroma_block)
	lw	a1, 120(a0)
	lw	a2, 124(a0)
	lw	a3, 112(a0)
	lw	a4, 116(a0)
	lw	a5, 104(a0)
	or	a1, a2, a1
	lw	a2, 108(a0)
	or	a3, a4, a3
	lw	a4, 100(a0)
	or	a1, a1, a3
	lw	a3, 92(a0)
	or	a2, a2, a5
	lw	a5, 96(a0)
	or	a2, a2, a4
	lw	a4, 88(a0)
	or	a1, a1, a2
	lw	a2, 84(a0)
	or	a3, a5, a3
	lw	a5, 76(a0)
	or	a3, a3, a4
	lw	a4, 80(a0)
	or	a2, a3, a2
	lw	a3, 72(a0)
	or	a1, a1, a2
	lw	a2, 68(a0)
	or	a4, a4, a5
	lw	a5, 64(a0)
	or	a3, a4, a3
	lw	a4, 56(a0)
	or	a2, a3, a2
	lw	a3, 60(a0)
	or	a2, a2, a5
	lw	a5, 52(a0)
	or	a1, a1, a2
	lw	a2, 48(a0)
	or	a3, a3, a4
	lw	a4, 44(a0)
	or	a3, a3, a5
	lw	a5, 40(a0)
	or	a2, a3, a2
	lw	a3, 32(a0)
	or	a2, a2, a4
	lw	a4, 36(a0)
	or	a2, a2, a5
	lw	a5, 28(a0)
	or	a1, a1, a2
	lw	a2, 24(a0)
	or	a3, a4, a3
	lw	a4, 20(a0)
	or	a3, a3, a5
	lw	a5, 4(a0)
	or	a2, a3, a2
	lw	a3, 16(a0)
	or	a2, a2, a4
	lw	a4, 12(a0)
	lw	a0, 8(a0)
	or	a2, a2, a3
	lw	a3, %lo(cbp_chroma_block)(a6)
	or	a2, a2, a4
	or	a1, a1, a2
	or	a0, a0, a5
	or	a0, a0, a3
	or	a0, a1, a0
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB9_141
# %bb.140:                              #   in Loop: Header=BB9_21 Depth=1
	li	a1, 2
.LBB9_141:                              #   in Loop: Header=BB9_21 Depth=1
	li	a0, 0
	call	dct_chroma_DC
	mv	a1, a0
	li	a0, 1
	call	dct_chroma_DC
	lui	a1, %hi(enc_picture)
	ld	a2, %lo(enc_picture)(a1)
	ld	a1, %lo(img)(s8)
	lui	a3, 2
	add	a2, a2, a3
	ld	a4, -1728(a2)
	lw	a2, 156(a1)
	lw	a7, 152(a1)
	ld	a3, 0(a4)
	ld	a4, 8(a4)
	li	a6, 0
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	slli	a5, a0, 4
	slli	a7, a7, 1
	lui	t0, %hi(temp_imgU)
	addi	t0, t0, %lo(temp_imgU)
	lui	t1, %hi(temp_imgV)
	addi	t1, t1, %lo(temp_imgV)
	mv	a0, s0
.LBB9_142:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_143 Depth 3
	slli	t2, a6, 5
	add	t3, a6, a2
	slli	t3, t3, 3
	add	t4, a3, t3
	add	t3, a4, t3
	ld	t3, 0(t3)
	ld	t4, 0(t4)
	lui	t5, %hi(temp_imgV)
	addi	t5, t5, %lo(temp_imgV)
	add	t2, t2, t5
	addi	t2, t2, 32
	add	t3, t3, a7
	add	t4, t4, a7
	mv	t5, t0
	mv	t6, t1
.LBB9_143:                              #   Parent Loop BB9_21 Depth=1
                                        #     Parent Loop BB9_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lh	s0, 0(t4)
	sh	s0, 0(t5)
	lh	s0, 0(t3)
	sh	s0, 0(t6)
	addi	t6, t6, 2
	addi	t5, t5, 2
	addi	t3, t3, 2
	addi	t4, t4, 2
	bne	t6, t2, .LBB9_143
# %bb.144:                              #   in Loop: Header=BB9_142 Depth=2
	addi	a6, a6, 1
	addi	t1, t1, 32
	addi	t0, t0, 32
	li	t2, 16
	bne	a6, t2, .LBB9_142
# %bb.145:                              #   in Loop: Header=BB9_21 Depth=1
	add	a0, a5, a0
.LBB9_146:                              #   in Loop: Header=BB9_21 Depth=1
	sw	a0, 364(s10)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a2, a0, 2047
	lw	a3, 1845(a2)
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	beq	a3, s4, .LBB9_148
# %bb.147:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a3, 1536(a0)
	lui	a5, %hi(cofAC)
	ld	a4, %lo(cofAC)(a5)
	sd	a3, %lo(cofAC)(a5)
	sd	a4, 1536(a0)
.LBB9_148:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a3, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a3)
	lw	a4, 156(a1)
	lui	a5, 2
	add	a3, a3, a5
	ld	a3, -1768(a3)
	lw	a5, 152(a1)
	slli	a4, a4, 3
	add	a3, a3, a4
	addi	a4, a3, 128
	slli	a5, a5, 1
	ld	a6, 96(sp)                      # 8-byte Folded Reload
.LBB9_149:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a7, 0(a3)
	add	a7, a7, a5
	lh	t0, 0(a7)
	sh	t0, -16(a6)
	lh	t0, 2(a7)
	sh	t0, -14(a6)
	lh	t0, 4(a7)
	sh	t0, -12(a6)
	lh	t0, 6(a7)
	sh	t0, -10(a6)
	lh	t0, 8(a7)
	sh	t0, -8(a6)
	lh	t0, 10(a7)
	sh	t0, -6(a6)
	lh	t0, 12(a7)
	sh	t0, -4(a6)
	lh	t0, 14(a7)
	sh	t0, -2(a6)
	lh	t0, 16(a7)
	sh	t0, 0(a6)
	lh	t0, 18(a7)
	sh	t0, 2(a6)
	lh	t0, 20(a7)
	sh	t0, 4(a6)
	lh	t0, 22(a7)
	sh	t0, 6(a6)
	lh	t0, 24(a7)
	sh	t0, 8(a6)
	lh	t0, 26(a7)
	sh	t0, 10(a6)
	lh	t0, 28(a7)
	sh	t0, 12(a6)
	lh	a7, 30(a7)
	sh	a7, 14(a6)
	addi	a3, a3, 8
	addi	a6, a6, 32
	bne	a3, a4, .LBB9_149
# %bb.150:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a2, 1861(a2)
	beqz	a2, .LBB9_155
# %bb.151:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a2, 172(a1)
	lui	a3, %hi(imgY_org)
	ld	a3, %lo(imgY_org)(a3)
	lw	a4, 168(a1)
	li	a1, 0
	slli	a2, a2, 3
	add	a2, a3, a2
	slli	a3, a4, 1
	mv	a4, s3
.LBB9_152:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_153 Depth 3
	slli	a5, a1, 2
	add	a5, a5, s3
	addi	a5, a5, 1024
	mv	a6, a2
	mv	a7, a0
	mv	t0, a4
.LBB9_153:                              #   Parent Loop BB9_21 Depth=1
                                        #     Parent Loop BB9_152 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t1, 0(a6)
	slli	t2, a1, 1
	add	t2, t2, a3
	add	t1, t1, t2
	lhu	t1, 0(t1)
	lhu	t2, 0(a7)
	subw	t1, t1, t2
	sw	t1, 0(t0)
	addi	t0, t0, 64
	addi	a7, a7, 32
	addi	a6, a6, 8
	bne	t0, a5, .LBB9_153
# %bb.154:                              #   in Loop: Header=BB9_152 Depth=2
	addi	a1, a1, 1
	addi	a4, a4, 4
	addi	a0, a0, 2
	li	a5, 16
	bne	a1, a5, .LBB9_152
.LBB9_155:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a0, 380(sp)
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(best_mode)
	li	a1, 13
	sh	a1, %lo(best_mode)(a0)
	lw	s0, 468(s10)
	lhu	a0, 454(sp)
	bnez	a0, .LBB9_234
	j	.LBB9_236
.LBB9_156:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a1, 1156(a0)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	beqz	a1, .LBB9_226
# %bb.157:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a2, 1845(a0)
	beqz	a2, .LBB9_226
# %bb.158:                              #   in Loop: Header=BB9_21 Depth=1
	li	a1, 1
	li	s4, 2
	beq	a2, a3, .LBB9_227
# %bb.159:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a1, 368(sp)
	lw	a2, 376(sp)
	slt	a1, a1, a2
	j	.LBB9_227
.LBB9_160:                              #   in Loop: Header=BB9_21 Depth=1
	fsd	fs3, 408(sp)
	lui	a5, %hi(best_mode)
	ld	t1, 176(sp)                     # 8-byte Folded Reload
	sh	t1, %lo(best_mode)(a5)
	lw	a5, 1210(a2)
	li	s3, 11
	bnez	a5, .LBB9_165
.LBB9_161:                              #   in Loop: Header=BB9_21 Depth=1
	li	s3, 9
	bnez	s9, .LBB9_165
# %bb.162:                              #   in Loop: Header=BB9_21 Depth=1
	bne	a4, a6, .LBB9_165
# %bb.163:                              #   in Loop: Header=BB9_21 Depth=1
	addi	a3, a3, 1089
	lw	a3, 1180(a3)
	li	s3, 9
	beqz	a3, .LBB9_165
# %bb.164:                              #   in Loop: Header=BB9_21 Depth=1
	li	s3, 5
.LBB9_165:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a3, 1264(a1)
	beqz	a3, .LBB9_167
# %bb.166:                              #   in Loop: Header=BB9_21 Depth=1
	sh	zero, 0(a2)
.LBB9_167:                              #   in Loop: Header=BB9_21 Depth=1
	li	s6, 0
	li	a3, 5
	beq	s3, a3, .LBB9_170
# %bb.168:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a2, 1186(a2)
	beqz	a2, .LBB9_170
# %bb.169:                              #   in Loop: Header=BB9_21 Depth=1
	addi	a0, sp, 276
	addi	a1, sp, 272
	addi	a2, sp, 268
	call	IntraChromaPrediction
	lui	t0, %hi(mb_mode_table)
	addi	t0, t0, %lo(mb_mode_table)
	li	a6, 2
	ld	a7, 232(sp)                     # 8-byte Folded Reload
	ld	a0, %lo(img)(s8)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	li	s6, 3
.LBB9_170:                              #   in Loop: Header=BB9_21 Depth=1
	li	a2, 0
	sw	zero, 416(s10)
	j	.LBB9_173
.LBB9_171:                              #   in Loop: Header=BB9_173 Depth=2
	lw	a3, 416(s10)
.LBB9_172:                              #   in Loop: Header=BB9_173 Depth=2
	addiw	a2, a3, 1
	sw	a2, 416(s10)
	bge	a3, s6, .LBB9_281
.LBB9_173:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_190 Depth 3
	lui	a3, 22
	add	a3, a0, a3
	lw	a3, 436(a3)
	beqz	a3, .LBB9_187
# %bb.174:                              #   in Loop: Header=BB9_173 Depth=2
	addi	a3, a1, 2047
	beqz	s9, .LBB9_176
# %bb.175:                              #   in Loop: Header=BB9_173 Depth=2
	lw	a4, 977(a3)
	bnez	a4, .LBB9_179
.LBB9_176:                              #   in Loop: Header=BB9_173 Depth=2
	lw	a3, 1001(a3)
	bne	a3, s1, .LBB9_179
# %bb.177:                              #   in Loop: Header=BB9_173 Depth=2
	beqz	a2, .LBB9_187
# %bb.178:                              #   in Loop: Header=BB9_173 Depth=2
	mv	a3, a2
	j	.LBB9_172
.LBB9_179:                              #   in Loop: Header=BB9_173 Depth=2
	lw	a4, 276(sp)
	li	a3, 2
	bne	a2, a3, .LBB9_181
# %bb.180:                              #   in Loop: Header=BB9_173 Depth=2
	beqz	a4, .LBB9_172
.LBB9_181:                              #   in Loop: Header=BB9_173 Depth=2
	lw	a5, 272(sp)
	li	a3, 1
	bne	a2, a3, .LBB9_183
# %bb.182:                              #   in Loop: Header=BB9_173 Depth=2
	beqz	a5, .LBB9_172
.LBB9_183:                              #   in Loop: Header=BB9_173 Depth=2
	li	a3, 3
	bne	a2, a3, .LBB9_187
# %bb.184:                              #   in Loop: Header=BB9_173 Depth=2
	beqz	a5, .LBB9_280
# %bb.185:                              #   in Loop: Header=BB9_173 Depth=2
	beqz	a4, .LBB9_280
# %bb.186:                              #   in Loop: Header=BB9_173 Depth=2
	lw	a2, 268(sp)
	beqz	a2, .LBB9_280
.LBB9_187:                              #   in Loop: Header=BB9_173 Depth=2
	li	s2, 0
	li	s0, 0
	j	.LBB9_190
.LBB9_188:                              #   in Loop: Header=BB9_190 Depth=3
	li	s2, 5
.LBB9_189:                              #   in Loop: Header=BB9_190 Depth=3
	addiw	s2, s2, 1
	bge	s2, s3, .LBB9_171
.LBB9_190:                              #   Parent Loop BB9_21 Depth=1
                                        #     Parent Loop BB9_173 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a2, a0, a7
	slli	a3, s2, 2
	add	a4, t0, a3
	lw	a5, 1186(a2)
	lw	s7, 0(a4)
	beqz	a5, .LBB9_194
# %bb.191:                              #   in Loop: Header=BB9_190 Depth=3
	addi	a4, a1, 2047
	lw	a4, 1089(a4)
	bne	a4, a6, .LBB9_213
# %bb.192:                              #   in Loop: Header=BB9_190 Depth=3
	xori	a3, s11, 1
	or	a3, a3, s2
	sw	zero, 372(sp)
	beqz	a3, .LBB9_189
# %bb.193:                              #   in Loop: Header=BB9_190 Depth=3
	addi	a3, s11, -2
	snez	a3, a3
	addi	a4, s2, -1
	seqz	a4, a4
	and	a3, a3, a4
	bnez	a3, .LBB9_189
.LBB9_194:                              #   in Loop: Header=BB9_190 Depth=3
	addi	a3, s7, -1
	seqz	s5, a3
	bne	s11, s1, .LBB9_200
.LBB9_195:                              #   in Loop: Header=BB9_190 Depth=3
	bne	s7, s1, .LBB9_200
# %bb.196:                              #   in Loop: Header=BB9_190 Depth=3
	lw	a3, 1264(a1)
	lui	a4, %hi(best8x8pdir)
	addi	a4, a4, %lo(best8x8pdir)
	sh	s0, 14(a4)
	sh	s0, 12(a4)
	sh	s0, 10(a4)
	sh	s0, 8(a4)
	beqz	a3, .LBB9_199
# %bb.197:                              #   in Loop: Header=BB9_190 Depth=3
	bne	s0, a6, .LBB9_199
# %bb.198:                              #   in Loop: Header=BB9_190 Depth=3
	lh	a2, 0(a2)
	slti	a2, a2, 2
	subw	s0, a6, a2
.LBB9_199:                              #   in Loop: Header=BB9_190 Depth=3
	slti	a2, s0, 2
	subw	s2, s2, a2
	addiw	s0, s0, 1
	li	s5, 1
	li	s7, 1
.LBB9_200:                              #   in Loop: Header=BB9_190 Depth=3
	li	a2, 10
	blt	s7, a2, .LBB9_205
# %bb.201:                              #   in Loop: Header=BB9_190 Depth=3
	bnez	s9, .LBB9_205
# %bb.202:                              #   in Loop: Header=BB9_190 Depth=3
	lw	a2, 1936(a1)
	beqz	a2, .LBB9_205
# %bb.203:                              #   in Loop: Header=BB9_190 Depth=3
	lui	a2, %hi(best_mode)
	lh	a2, %lo(best_mode)(a2)
	li	a3, 3
	blt	a3, a2, .LBB9_205
# %bb.204:                              #   in Loop: Header=BB9_190 Depth=3
	lw	a2, 364(s10)
	beqz	a2, .LBB9_189
.LBB9_205:                              #   in Loop: Header=BB9_190 Depth=3
	slli	s4, s7, 1
	addi	a2, sp, 436
	add	a2, a2, s4
	lhu	a2, 0(a2)
	beqz	a2, .LBB9_207
# %bb.206:                              #   in Loop: Header=BB9_190 Depth=3
	lw	s1, 372(sp)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	addi	a2, sp, 280
	addi	a3, sp, 408
	addi	a4, sp, 352
	addi	a7, sp, 366
	mv	a0, s7
	mv	a1, s10
	mv	a5, s1
	li	s1, 1
	ld	a6, 256(sp)                     # 8-byte Folded Reload
	call	compute_mode_RD_cost
	lui	t0, %hi(mb_mode_table)
	addi	t0, t0, %lo(mb_mode_table)
	li	a6, 2
	ld	a7, 232(sp)                     # 8-byte Folded Reload
	ld	a0, %lo(img)(s8)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
.LBB9_207:                              #   in Loop: Header=BB9_190 Depth=3
	bne	s11, s1, .LBB9_189
# %bb.208:                              #   in Loop: Header=BB9_190 Depth=3
	lw	a2, 1264(a1)
	beqz	a2, .LBB9_189
# %bb.209:                              #   in Loop: Header=BB9_190 Depth=3
	bne	s0, a6, .LBB9_189
# %bb.210:                              #   in Loop: Header=BB9_190 Depth=3
	add	a2, a0, s4
	lui	a3, 22
	addiw	a3, a3, -752
	add	a2, a2, a3
	lh	a3, 0(a2)
	slti	a4, a3, 2
	and	a4, s5, a4
	li	s0, 2
	beqz	a4, .LBB9_189
# %bb.211:                              #   in Loop: Header=BB9_190 Depth=3
	lui	a4, %hi(best8x8pdir)
	addi	a4, a4, %lo(best8x8pdir)
	lhu	a4, 8(a4)
	bne	a4, a6, .LBB9_189
# %bb.212:                              #   in Loop: Header=BB9_190 Depth=3
	addi	a3, a3, 1
	sh	a3, 0(a2)
	j	.LBB9_189
.LBB9_213:                              #   in Loop: Header=BB9_190 Depth=3
	lw	a4, 1210(a2)
	beqz	a4, .LBB9_219
# %bb.214:                              #   in Loop: Header=BB9_190 Depth=3
	addi	a4, s2, -5
	li	a5, 3
	bltu	a5, a4, .LBB9_220
# %bb.215:                              #   in Loop: Header=BB9_190 Depth=3
	lw	a2, 276(sp)
	addiw	a3, s2, -5
	or	a4, a3, a2
	sw	a3, 372(sp)
	beqz	a4, .LBB9_188
# %bb.216:                              #   in Loop: Header=BB9_190 Depth=3
	lw	a4, 272(sp)
	bne	a3, s1, .LBB9_221
# %bb.217:                              #   in Loop: Header=BB9_190 Depth=3
	bnez	a4, .LBB9_221
# %bb.218:                              #   in Loop: Header=BB9_190 Depth=3
	li	s2, 6
	j	.LBB9_189
.LBB9_219:                              #   in Loop: Header=BB9_190 Depth=3
	sw	zero, 372(sp)
	addi	a3, s7, -1
	seqz	s5, a3
	beq	s11, s1, .LBB9_195
	j	.LBB9_200
.LBB9_220:                              #   in Loop: Header=BB9_190 Depth=3
	lui	a4, %hi(mb_mode_table_RCT)
	addi	a4, a4, %lo(mb_mode_table_RCT)
	add	a3, a4, a3
	lw	s7, 0(a3)
	addi	a3, s7, -1
	seqz	s5, a3
	beq	s11, s1, .LBB9_195
	j	.LBB9_200
.LBB9_221:                              #   in Loop: Header=BB9_190 Depth=3
	li	s7, 10
	li	a5, 3
	bne	a3, a5, .LBB9_225
# %bb.222:                              #   in Loop: Header=BB9_190 Depth=3
	li	s2, 8
	beqz	a4, .LBB9_189
# %bb.223:                              #   in Loop: Header=BB9_190 Depth=3
	beqz	a2, .LBB9_189
# %bb.224:                              #   in Loop: Header=BB9_190 Depth=3
	lw	a2, 268(sp)
	beqz	a2, .LBB9_189
.LBB9_225:                              #   in Loop: Header=BB9_190 Depth=3
	li	s5, 0
	j	.LBB9_200
.LBB9_226:                              #   in Loop: Header=BB9_21 Depth=1
	li	s4, 2
	li	a1, 0
.LBB9_227:                              #   in Loop: Header=BB9_21 Depth=1
	sw	a1, 468(s10)
	lw	a0, 1861(a0)
	beqz	a0, .LBB9_232
# %bb.228:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a1, %lo(img)(s8)
	li	a0, 0
	lw	a2, 172(a1)
	lui	a3, %hi(imgY_org)
	ld	a3, %lo(imgY_org)(a3)
	lw	a4, 168(a1)
	ld	a5, 120(sp)                     # 8-byte Folded Reload
	add	a1, a1, a5
	slli	a2, a2, 3
	add	a2, a3, a2
	slli	a3, a4, 1
	lui	a4, %hi(diffy)
	addi	a4, a4, %lo(diffy)
.LBB9_229:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_230 Depth 3
	slli	a5, a0, 2
	lui	a6, %hi(diffy)
	addi	a6, a6, %lo(diffy)
	add	a5, a5, a6
	addi	a5, a5, 1024
	mv	a6, a2
	mv	a7, a1
	mv	t0, a4
.LBB9_230:                              #   Parent Loop BB9_21 Depth=1
                                        #     Parent Loop BB9_229 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t1, 0(a6)
	slli	t2, a0, 1
	add	t2, t2, a3
	add	t1, t1, t2
	lhu	t1, 0(t1)
	lhu	t2, 0(a7)
	subw	t1, t1, t2
	sw	t1, 0(t0)
	addi	t0, t0, 64
	addi	a7, a7, 32
	addi	a6, a6, 8
	bne	t0, a5, .LBB9_230
# %bb.231:                              #   in Loop: Header=BB9_229 Depth=2
	addi	a0, a0, 1
	addi	a4, a4, 4
	addi	a1, a1, 2
	li	a5, 16
	bne	a0, a5, .LBB9_229
.LBB9_232:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a0, 380(sp)
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(best_mode)
	sh	zero, %lo(best_mode)(a0)
	lhu	a0, 462(sp)
	bnez	a0, .LBB9_136
.LBB9_233:                              #   in Loop: Header=BB9_21 Depth=1
	lui	s3, %hi(diffy)
	addi	s3, s3, %lo(diffy)
	lhu	a0, 454(sp)
	beqz	a0, .LBB9_236
.LBB9_234:                              #   in Loop: Header=BB9_21 Depth=1
	fld	fa0, 416(sp)
	sw	zero, 468(s10)
	li	a0, 9
	sw	a0, 72(s10)
	addi	a0, sp, 380
	call	Mode_Decision_for_Intra4x4Macroblock
	lw	a1, 380(sp)
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	bge	a2, a1, .LBB9_237
# %bb.235:                              #   in Loop: Header=BB9_21 Depth=1
	sw	s0, 468(s10)
	ld	a0, %lo(img)(s8)
	lui	a1, 3
	add	a0, a0, a1
	ld	a1, 1848(a0)
	lui	a3, %hi(cofAC)
	ld	a2, %lo(cofAC)(a3)
	sd	a1, %lo(cofAC)(a3)
	sd	a2, 1848(a0)
.LBB9_236:                              #   in Loop: Header=BB9_21 Depth=1
	lhu	a0, 456(sp)
	bnez	a0, .LBB9_247
	j	.LBB9_279
.LBB9_237:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a1, %lo(img)(s8)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 460(a1)
	beqz	a1, .LBB9_241
# %bb.238:                              #   in Loop: Header=BB9_21 Depth=1
	mv	s0, a0
	lui	a6, %hi(cbp_chroma_block)
	addi	a0, a6, %lo(cbp_chroma_block)
	lw	a1, 120(a0)
	lw	a2, 124(a0)
	lw	a3, 112(a0)
	lw	a4, 116(a0)
	lw	a5, 104(a0)
	or	a1, a2, a1
	lw	a2, 108(a0)
	or	a3, a4, a3
	lw	a4, 100(a0)
	or	a1, a1, a3
	lw	a3, 92(a0)
	or	a2, a2, a5
	lw	a5, 96(a0)
	or	a2, a2, a4
	lw	a4, 88(a0)
	or	a1, a1, a2
	lw	a2, 84(a0)
	or	a3, a5, a3
	lw	a5, 76(a0)
	or	a3, a3, a4
	lw	a4, 80(a0)
	or	a2, a3, a2
	lw	a3, 72(a0)
	or	a1, a1, a2
	lw	a2, 68(a0)
	or	a4, a4, a5
	lw	a5, 64(a0)
	or	a3, a4, a3
	lw	a4, 56(a0)
	or	a2, a3, a2
	lw	a3, 60(a0)
	or	a2, a2, a5
	lw	a5, 52(a0)
	or	a1, a1, a2
	lw	a2, 48(a0)
	or	a3, a3, a4
	lw	a4, 44(a0)
	or	a3, a3, a5
	lw	a5, 40(a0)
	or	a2, a3, a2
	lw	a3, 32(a0)
	or	a2, a2, a4
	lw	a4, 36(a0)
	or	a2, a2, a5
	lw	a5, 28(a0)
	or	a1, a1, a2
	lw	a2, 24(a0)
	or	a3, a4, a3
	lw	a4, 20(a0)
	or	a3, a3, a5
	lw	a5, 4(a0)
	or	a2, a3, a2
	lw	a3, 16(a0)
	or	a2, a2, a4
	lw	a4, 12(a0)
	lw	a0, 8(a0)
	or	a2, a2, a3
	lw	a3, %lo(cbp_chroma_block)(a6)
	or	a2, a2, a4
	or	a1, a1, a2
	or	a0, a0, a5
	or	a0, a0, a3
	or	a0, a1, a0
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB9_240
# %bb.239:                              #   in Loop: Header=BB9_21 Depth=1
	li	a1, 2
.LBB9_240:                              #   in Loop: Header=BB9_21 Depth=1
	li	a0, 0
	call	dct_chroma_DC
	mv	a1, a0
	li	a0, 1
	call	dct_chroma_DC
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	slli	a1, a0, 4
	add	a0, a1, s0
.LBB9_241:                              #   in Loop: Header=BB9_21 Depth=1
	sw	a0, 364(s10)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB9_246
# %bb.242:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a1, %lo(img)(s8)
	li	a0, 0
	lw	a2, 172(a1)
	lui	a3, %hi(imgY_org)
	ld	a3, %lo(imgY_org)(a3)
	lw	a4, 168(a1)
	ld	a5, 120(sp)                     # 8-byte Folded Reload
	add	a1, a1, a5
	slli	a2, a2, 3
	add	a2, a3, a2
	slli	a3, a4, 1
	mv	a4, s3
.LBB9_243:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_244 Depth 3
	slli	a5, a0, 2
	add	a5, a5, s3
	addi	a5, a5, 1024
	mv	a6, a2
	mv	a7, a1
	mv	t0, a4
.LBB9_244:                              #   Parent Loop BB9_21 Depth=1
                                        #     Parent Loop BB9_243 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t1, 0(a6)
	slli	t2, a0, 1
	add	t2, t2, a3
	add	t1, t1, t2
	lhu	t1, 0(t1)
	lhu	t2, 0(a7)
	subw	t1, t1, t2
	sw	t1, 0(t0)
	addi	t0, t0, 64
	addi	a7, a7, 32
	addi	a6, a6, 8
	bne	t0, a5, .LBB9_244
# %bb.245:                              #   in Loop: Header=BB9_243 Depth=2
	addi	a0, a0, 1
	addi	a4, a4, 4
	addi	a1, a1, 2
	li	a5, 16
	bne	a0, a5, .LBB9_243
.LBB9_246:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a0, 380(sp)
	sd	a0, 216(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(best_mode)
	li	a1, 9
	sh	a1, %lo(best_mode)(a0)
	lw	s0, 468(s10)
	lhu	a0, 456(sp)
	beqz	a0, .LBB9_279
.LBB9_247:                              #   in Loop: Header=BB9_21 Depth=1
	sw	zero, 468(s10)
	call	intrapred_luma_16x16
	addi	a0, sp, 372
	call	find_sad_16x16
	sw	a0, 380(sp)
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB9_275
# %bb.248:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 1861(a0)
	ld	a0, %lo(img)(s8)
	li	ra, 64
	beqz	a1, .LBB9_253
# %bb.249:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a2, 372(sp)
	li	a1, 0
	lw	a4, 168(a0)
	lw	a3, 172(a0)
	slli	a2, a2, 9
	lui	a5, %hi(imgY_org)
	ld	a5, %lo(imgY_org)(a5)
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	add	a6, a0, a6
	add	a2, a6, a2
	slli	a3, a3, 3
	add	a3, a5, a3
	slli	a4, a4, 1
	mv	a5, s3
.LBB9_250:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_251 Depth 3
	slli	a6, a1, 2
	add	a6, a6, s3
	addi	a6, a6, 1024
	mv	a7, a3
	mv	t0, a2
	mv	t1, a5
.LBB9_251:                              #   Parent Loop BB9_21 Depth=1
                                        #     Parent Loop BB9_250 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t2, 0(a7)
	slli	t3, a1, 1
	add	t3, t3, a4
	add	t2, t2, t3
	lhu	t2, 0(t2)
	lhu	t3, 0(t0)
	subw	t2, t2, t3
	sw	t2, 0(t1)
	addi	t1, t1, 64
	addi	t0, t0, 32
	addi	a7, a7, 8
	bne	t1, a6, .LBB9_251
# %bb.252:                              #   in Loop: Header=BB9_250 Depth=2
	addi	a1, a1, 1
	addi	a5, a5, 4
	addi	a2, a2, 2
	li	a6, 16
	bne	a1, a6, .LBB9_250
.LBB9_253:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 460(a1)
	lui	a2, 3
	addiw	s1, a2, -1736
	beqz	a1, .LBB9_258
# %bb.254:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a1, %hi(imgUV_org)
	ld	a5, %lo(imgUV_org)(a1)
	li	a1, 0
	lui	a2, %hi(imgY_org)
	ld	a2, %lo(imgY_org)(a2)
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	add	a3, a0, a3
	ld	a4, 0(a5)
	ld	a5, 8(a5)
	add	a6, a0, s1
	lui	a7, 3
	addiw	a7, a7, 824
	add	a7, a0, a7
	lui	t0, %hi(resTrans_R)
	addi	t0, t0, %lo(resTrans_R)
	lui	t1, %hi(resTrans_B)
	addi	t1, t1, %lo(resTrans_B)
	lui	t2, %hi(resTrans_G)
	addi	t2, t2, %lo(resTrans_G)
.LBB9_255:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_256 Depth 3
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
	li	s0, 0
	mv	s2, a3
	mv	s3, a6
.LBB9_256:                              #   Parent Loop BB9_21 Depth=1
                                        #     Parent Loop BB9_255 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	s4, 152(a0)
	add	s4, s0, s4
	slli	s4, s4, 1
	lw	s5, 372(sp)
	add	s6, t3, s4
	lhu	s6, 0(s6)
	lw	s7, 416(s10)
	slli	s5, s5, 9
	add	s8, t4, s4
	lhu	s8, 0(s8)
	slli	s7, s7, 9
	add	s7, s3, s7
	lhu	s9, -2048(s7)
	add	s4, t5, s4
	lhu	s4, 0(s4)
	lhu	s7, 0(s7)
	add	s5, s2, s5
	lhu	s5, 0(s5)
	sub	s8, s8, s9
	sub	s4, s4, s7
	sub	s4, s4, s8
	add	s7, t0, t6
	sw	s4, 0(s7)
	srli	s4, s4, 1
	add	s4, s4, s8
	subw	s5, s6, s5
	subw	s5, s5, s4
	add	s6, t1, t6
	sw	s5, 0(s6)
	sraiw	s5, s5, 1
	add	s4, s5, s4
	add	s5, t2, t6
	sw	s4, 0(s5)
	add	s5, a7, t6
	sw	s4, 0(s5)
	addi	s0, s0, 1
	addi	t6, t6, 4
	addi	s3, s3, 2
	addi	s2, s2, 2
	bne	t6, ra, .LBB9_256
# %bb.257:                              #   in Loop: Header=BB9_255 Depth=2
	addi	a1, a1, 1
	addi	a7, a7, 64
	addi	t2, t2, 64
	addi	t1, t1, 64
	addi	t0, t0, 64
	addi	a6, a6, 32
	addi	a3, a3, 32
	li	t3, 16
	bne	a1, t3, .LBB9_255
.LBB9_258:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a0, 372(sp)
	lui	a1, %hi(best_mode)
	li	a2, 10
	sh	a2, %lo(best_mode)(a1)
	call	dct_luma_16x16
	sw	a0, 364(s10)
	lui	s8, %hi(img)
	ld	a0, %lo(img)(s8)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 460(a1)
	beqz	a1, .LBB9_277
# %bb.259:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a1, 3
	addiw	s0, a1, 884
	add	a0, a0, s0
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	lui	a5, %hi(resTrans_B)
	addi	a5, a5, %lo(resTrans_B)
.LBB9_260:                              #   Parent Loop BB9_21 Depth=1
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
	addi	a3, a5, 1056
	addi	a0, a0, 64
	bne	a2, a3, .LBB9_260
# %bb.261:                              #   in Loop: Header=BB9_21 Depth=1
	li	a0, 0
	li	a1, 0
	call	dct_chroma
	ld	a2, %lo(img)(s8)
	mv	a1, a0
	add	a0, a2, s0
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	lui	a6, %hi(resTrans_R)
	addi	a6, a6, %lo(resTrans_R)
	lui	s2, %hi(rec_resR)
	addi	s2, s2, %lo(rec_resR)
.LBB9_262:                              #   Parent Loop BB9_21 Depth=1
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
	bne	a3, a4, .LBB9_262
# %bb.263:                              #   in Loop: Header=BB9_21 Depth=1
	li	a0, 1
	call	dct_chroma
	ld	t0, %lo(img)(s8)
	mv	a2, a0
	lui	a0, 22
	addiw	a4, a0, 420
	add	a4, t0, a4
	add	s0, t0, s0
	ld	a0, 48(sp)                      # 8-byte Folded Reload
.LBB9_264:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a1, -60(s0)
	sw	a1, -32(a0)
	lw	a1, -56(s0)
	sw	a1, -28(a0)
	lw	a1, -52(s0)
	sw	a1, -24(a0)
	lw	a1, -48(s0)
	sw	a1, -20(a0)
	lw	a1, -44(s0)
	sw	a1, -16(a0)
	lw	a1, -40(s0)
	sw	a1, -12(a0)
	lw	a1, -36(s0)
	sw	a1, -8(a0)
	lw	a1, -32(s0)
	sw	a1, -4(a0)
	lw	a1, -28(s0)
	sw	a1, 0(a0)
	lw	a1, -24(s0)
	sw	a1, 4(a0)
	lw	a1, -20(s0)
	sw	a1, 8(a0)
	lw	a1, -16(s0)
	sw	a1, 12(a0)
	lw	a1, -12(s0)
	sw	a1, 16(a0)
	lw	a1, -8(s0)
	sw	a1, 20(a0)
	lw	a1, -4(s0)
	sw	a1, 24(a0)
	lw	a1, 0(s0)
	sw	a1, 28(a0)
	addi	a0, a0, 64
	addi	a1, s2, 1056
	addi	s0, s0, 64
	bne	a0, a1, .LBB9_264
# %bb.265:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a1, 364(s10)
	li	a0, 0
	sd	a2, 112(sp)                     # 8-byte Folded Spill
	slli	a2, a2, 4
	add	a1, a1, a2
	sw	a1, 364(s10)
	lw	a1, 156(t0)
	lw	t1, 152(t0)
	lui	a2, %hi(enc_picture)
	ld	a3, %lo(enc_picture)(a2)
	lw	a2, 0(a4)
	lw	t2, 372(sp)
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
	add	s1, a7, s1
	addiw	t3, t3, 312
	add	a7, a7, t3
	slli	t2, t2, 9
	ld	t3, 104(sp)                     # 8-byte Folded Reload
	add	t0, t0, t3
	add	t0, t0, t2
	slli	t1, t1, 1
	lui	t2, %hi(rec_resG)
	addi	t2, t2, %lo(rec_resG)
	lui	t3, %hi(rec_resB)
	addi	t3, t3, %lo(rec_resB)
	mv	t4, s2
	j	.LBB9_267
.LBB9_266:                              #   in Loop: Header=BB9_267 Depth=2
	addi	a0, a0, 1
	addi	s1, s1, 32
	addi	a7, a7, 32
	addi	t0, t0, 32
	addi	t4, t4, 64
	addi	t3, t3, 64
	addi	t2, t2, 64
	li	t5, 16
	beq	a0, t5, .LBB9_276
.LBB9_267:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_269 Depth 3
	add	t5, a0, a1
	slli	t5, t5, 3
	add	t6, a3, t5
	add	s0, a5, t5
	add	t5, a6, t5
	ld	s2, 0(t5)
	ld	s0, 0(s0)
	ld	s3, 0(t6)
	li	t5, 0
	add	t6, s2, t1
	add	s0, s0, t1
	add	s2, s3, t1
	mv	s3, t2
	mv	s5, t3
	mv	s6, t4
	j	.LBB9_269
.LBB9_268:                              #   in Loop: Header=BB9_269 Depth=3
	add	s7, t6, t5
	sh	s4, 0(s7)
	addi	t5, t5, 2
	addi	s6, s6, 4
	addi	s5, s5, 4
	addi	s3, s3, 4
	li	s4, 32
	beq	t5, s4, .LBB9_266
.LBB9_269:                              #   Parent Loop BB9_21 Depth=1
                                        #     Parent Loop BB9_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	s8, 0(s5)
	lw	s4, 0(s3)
	add	s7, t0, t5
	lhu	s9, 0(s7)
	srai	s7, s8, 1
	subw	s7, s4, s7
	lw	s4, 0(s6)
	add	s8, s8, s9
	addw	s8, s7, s8
	sgtz	s9, s8
	neg	s9, s9
	and	s9, s9, s8
	mv	s8, a2
	blt	a2, s9, .LBB9_271
# %bb.270:                              #   in Loop: Header=BB9_269 Depth=3
	mv	s8, s9
.LBB9_271:                              #   in Loop: Header=BB9_269 Depth=3
	add	s9, s2, t5
	sh	s8, 0(s9)
	add	s8, a7, t5
	lhu	s8, 0(s8)
	srli	s9, s4, 1
	subw	s7, s7, s9
	addw	s8, s7, s8
	sgtz	s9, s8
	neg	s9, s9
	and	s9, s9, s8
	mv	s8, a4
	blt	a4, s9, .LBB9_273
# %bb.272:                              #   in Loop: Header=BB9_269 Depth=3
	mv	s8, s9
.LBB9_273:                              #   in Loop: Header=BB9_269 Depth=3
	add	s9, s0, t5
	sh	s8, 0(s9)
	add	s8, s1, t5
	lhu	s8, 0(s8)
	add	s4, s7, s4
	addw	s4, s4, s8
	sgtz	s7, s4
	neg	s7, s7
	and	s7, s7, s4
	mv	s4, a4
	blt	a4, s7, .LBB9_268
# %bb.274:                              #   in Loop: Header=BB9_269 Depth=3
	mv	s4, s7
	j	.LBB9_268
.LBB9_275:                              #   in Loop: Header=BB9_21 Depth=1
	sw	s0, 468(s10)
	sw	s1, 472(s10)
	j	.LBB9_279
.LBB9_276:                              #   in Loop: Header=BB9_21 Depth=1
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	lui	s8, %hi(img)
	j	.LBB9_278
.LBB9_277:                              #   in Loop: Header=BB9_21 Depth=1
	ld	s2, 144(sp)                     # 8-byte Folded Reload
.LBB9_278:                              #   in Loop: Header=BB9_21 Depth=1
	ld	s9, 208(sp)                     # 8-byte Folded Reload
.LBB9_279:                              #   in Loop: Header=BB9_21 Depth=1
	li	s1, 1
	lui	s3, %hi(gaaiMBAFF_NZCoeff)
	addi	s3, s3, %lo(gaaiMBAFF_NZCoeff)
	j	.LBB9_345
.LBB9_280:                              #   in Loop: Header=BB9_21 Depth=1
	li	a2, 4
	sw	a2, 416(s10)
.LBB9_281:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a2, 24(a0)
	bne	a2, a6, .LBB9_283
# %bb.282:                              #   in Loop: Header=BB9_21 Depth=1
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	lui	s3, %hi(gaaiMBAFF_NZCoeff)
	addi	s3, s3, %lo(gaaiMBAFF_NZCoeff)
	j	.LBB9_333
.LBB9_283:                              #   in Loop: Header=BB9_21 Depth=1
	addi	a2, a1, 2047
	addi	a2, a2, 1089
	lw	a3, 0(a2)
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	lui	s3, %hi(gaaiMBAFF_NZCoeff)
	addi	s3, s3, %lo(gaaiMBAFF_NZCoeff)
	bne	a3, a6, .LBB9_333
# %bb.284:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a2, 1180(a2)
	beqz	a2, .LBB9_333
# %bb.285:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a1, 0(a1)
	li	a2, 99
	blt	a2, a1, .LBB9_333
# %bb.286:                              #   in Loop: Header=BB9_21 Depth=1
	fld	fa0, 352(sp)
	addi	a0, sp, 364
	call	fast_mode_intra_decision
	lhu	a1, 364(sp)
	ld	a0, %lo(img)(s8)
	bnez	a1, .LBB9_333
# %bb.287:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 436(a0)
	beqz	a0, .LBB9_291
# %bb.288:                              #   in Loop: Header=BB9_21 Depth=1
	addi	a0, sp, 276
	addi	a1, sp, 272
	addi	a2, sp, 268
	call	IntraChromaPrediction
	li	s0, 3
	j	.LBB9_292
.LBB9_289:                              #   in Loop: Header=BB9_21 Depth=1
	call	GetBestTransformP8x8
	beqz	a0, .LBB9_330
# %bb.290:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a0, %hi(tr8x8)
	lw	a1, %lo(tr8x8)(a0)
	li	a6, 2
	j	.LBB9_117
.LBB9_291:                              #   in Loop: Header=BB9_21 Depth=1
	li	s0, 0
.LBB9_292:                              #   in Loop: Header=BB9_21 Depth=1
	li	a5, 2
	lui	a6, %hi(mb_mode_table)
	addi	a6, a6, %lo(mb_mode_table)
	sw	zero, 416(s10)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	li	a1, 0
	j	.LBB9_295
.LBB9_293:                              #   in Loop: Header=BB9_295 Depth=2
	lw	a2, 416(s10)
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	li	s1, 1
	lui	s3, %hi(gaaiMBAFF_NZCoeff)
	addi	s3, s3, %lo(gaaiMBAFF_NZCoeff)
.LBB9_294:                              #   in Loop: Header=BB9_295 Depth=2
	addiw	a1, a2, 1
	sw	a1, 416(s10)
	bge	a2, s0, .LBB9_332
.LBB9_295:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_311 Depth 3
	ld	a2, %lo(img)(s8)
	lui	a3, 22
	add	a2, a2, a3
	lw	a2, 436(a2)
	beqz	a2, .LBB9_309
# %bb.296:                              #   in Loop: Header=BB9_295 Depth=2
	addi	a2, a0, 2047
	beqz	s9, .LBB9_298
# %bb.297:                              #   in Loop: Header=BB9_295 Depth=2
	lw	a3, 977(a2)
	bnez	a3, .LBB9_301
.LBB9_298:                              #   in Loop: Header=BB9_295 Depth=2
	lw	a2, 1001(a2)
	bne	a2, s1, .LBB9_301
# %bb.299:                              #   in Loop: Header=BB9_295 Depth=2
	beqz	a1, .LBB9_309
# %bb.300:                              #   in Loop: Header=BB9_295 Depth=2
	mv	a2, a1
	j	.LBB9_294
.LBB9_301:                              #   in Loop: Header=BB9_295 Depth=2
	lw	a3, 276(sp)
	li	a2, 2
	bne	a1, a2, .LBB9_303
# %bb.302:                              #   in Loop: Header=BB9_295 Depth=2
	beqz	a3, .LBB9_294
.LBB9_303:                              #   in Loop: Header=BB9_295 Depth=2
	lw	a4, 272(sp)
	li	a2, 1
	bne	a1, a2, .LBB9_305
# %bb.304:                              #   in Loop: Header=BB9_295 Depth=2
	beqz	a4, .LBB9_294
.LBB9_305:                              #   in Loop: Header=BB9_295 Depth=2
	li	a2, 3
	bne	a1, a2, .LBB9_309
# %bb.306:                              #   in Loop: Header=BB9_295 Depth=2
	beqz	a4, .LBB9_331
# %bb.307:                              #   in Loop: Header=BB9_295 Depth=2
	beqz	a3, .LBB9_331
# %bb.308:                              #   in Loop: Header=BB9_295 Depth=2
	lw	a1, 268(sp)
	beqz	a1, .LBB9_331
.LBB9_309:                              #   in Loop: Header=BB9_295 Depth=2
	lui	a1, %hi(best_mode)
	lhu	a1, %lo(best_mode)(a1)
	li	s2, 0
	addi	s3, a6, 20
	li	s5, 5
	j	.LBB9_311
.LBB9_310:                              #   in Loop: Header=BB9_311 Depth=3
	addi	s5, s5, 1
	addi	s2, s2, 1
	addi	s3, s3, 4
	li	a2, 9
	beq	s5, a2, .LBB9_293
.LBB9_311:                              #   Parent Loop BB9_21 Depth=1
                                        #     Parent Loop BB9_295 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	s1, 0(s3)
	bnez	s9, .LBB9_316
# %bb.312:                              #   in Loop: Header=BB9_311 Depth=3
	lw	a2, 1936(a0)
	beqz	a2, .LBB9_316
# %bb.313:                              #   in Loop: Header=BB9_311 Depth=3
	li	a2, 416
	srl	a2, a2, s5
	andi	a2, a2, 1
	beqz	a2, .LBB9_316
# %bb.314:                              #   in Loop: Header=BB9_311 Depth=3
	slli	a2, a1, 48
	srai	a2, a2, 48
	li	a3, 3
	blt	a3, a2, .LBB9_316
# %bb.315:                              #   in Loop: Header=BB9_311 Depth=3
	lw	a2, 364(s10)
	beqz	a2, .LBB9_310
.LBB9_316:                              #   in Loop: Header=BB9_311 Depth=3
	ld	a2, %lo(img)(s8)
	lui	a3, 22
	addiw	a3, a3, 436
	add	a2, a2, a3
	lw	a3, 0(a2)
	beqz	a3, .LBB9_328
# %bb.317:                              #   in Loop: Header=BB9_311 Depth=3
	addi	a3, a0, 2047
	lw	a3, 1089(a3)
	beq	a3, a5, .LBB9_327
# %bb.318:                              #   in Loop: Header=BB9_311 Depth=3
	lw	a2, 24(a2)
	beqz	a2, .LBB9_327
# %bb.319:                              #   in Loop: Header=BB9_311 Depth=3
	lw	a2, 276(sp)
	sw	s2, 372(sp)
	li	a3, 5
	bne	s5, a3, .LBB9_321
# %bb.320:                              #   in Loop: Header=BB9_311 Depth=3
	beqz	a2, .LBB9_310
.LBB9_321:                              #   in Loop: Header=BB9_311 Depth=3
	lw	a3, 272(sp)
	li	a4, 6
	bne	s5, a4, .LBB9_323
# %bb.322:                              #   in Loop: Header=BB9_311 Depth=3
	beqz	a3, .LBB9_310
.LBB9_323:                              #   in Loop: Header=BB9_311 Depth=3
	li	s1, 10
	li	a4, 8
	bne	s5, a4, .LBB9_328
# %bb.324:                              #   in Loop: Header=BB9_311 Depth=3
	beqz	a3, .LBB9_293
# %bb.325:                              #   in Loop: Header=BB9_311 Depth=3
	beqz	a2, .LBB9_293
# %bb.326:                              #   in Loop: Header=BB9_311 Depth=3
	lw	a2, 268(sp)
	bnez	a2, .LBB9_328
	j	.LBB9_293
.LBB9_327:                              #   in Loop: Header=BB9_311 Depth=3
	sw	zero, 372(sp)
.LBB9_328:                              #   in Loop: Header=BB9_311 Depth=3
	slli	a2, s1, 1
	addi	a3, sp, 436
	add	a2, a3, a2
	lhu	a2, 0(a2)
	beqz	a2, .LBB9_310
# %bb.329:                              #   in Loop: Header=BB9_311 Depth=3
	lw	s6, 372(sp)
	addi	a0, sp, 280
	addi	a1, sp, 416
	li	a2, 72
	call	memcpy
	addi	a2, sp, 280
	addi	a3, sp, 408
	addi	a4, sp, 352
	addi	a7, sp, 366
	mv	a0, s1
	mv	a1, s10
	mv	a5, s6
	ld	a6, 256(sp)                     # 8-byte Folded Reload
	call	compute_mode_RD_cost
	lui	a6, %hi(mb_mode_table)
	addi	a6, a6, %lo(mb_mode_table)
	li	a5, 2
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lui	a1, %hi(best_mode)
	lhu	a1, %lo(best_mode)(a1)
	j	.LBB9_310
.LBB9_330:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a0, %hi(tr4x4)
	lw	a1, %lo(tr4x4)(a0)
	li	s0, 0
	li	a6, 2
	j	.LBB9_117
.LBB9_331:                              #   in Loop: Header=BB9_21 Depth=1
	li	a0, 4
	sw	a0, 416(s10)
.LBB9_332:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a0, %lo(img)(s8)
.LBB9_333:                              #   in Loop: Header=BB9_21 Depth=1
	lui	a1, 22
	addiw	a1, a1, 428
	add	a1, a0, a1
	lw	a2, 0(a1)
	li	a3, -3
	blt	a2, a3, .LBB9_345
# %bb.334:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a2, 128(a0)
	li	a3, 0
	li	a4, -1
.LBB9_335:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a5, 12(a0)
	slli	a5, a5, 3
	add	a5, a2, a5
	ld	a5, 0(a5)
	add	a6, s3, a3
	ld	a5, 0(a5)
	lw	a6, 0(a6)
	add	a5, a5, a3
	sw	a6, 0(a5)
	lw	a5, 0(a1)
	addiw	a6, a5, 3
	addi	a4, a4, 1
	addi	a3, a3, 4
	blt	a4, a6, .LBB9_335
# %bb.336:                              #   in Loop: Header=BB9_21 Depth=1
	li	a2, -3
	blt	a5, a2, .LBB9_345
# %bb.337:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a2, 128(a0)
	li	a3, 0
	li	a4, -1
.LBB9_338:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a5, 12(a0)
	slli	a5, a5, 3
	add	a5, a2, a5
	ld	a5, 0(a5)
	add	a6, s3, a3
	ld	a5, 8(a5)
	lw	a6, 48(a6)
	add	a5, a5, a3
	sw	a6, 0(a5)
	lw	a5, 0(a1)
	addiw	a6, a5, 3
	addi	a4, a4, 1
	addi	a3, a3, 4
	blt	a4, a6, .LBB9_338
# %bb.339:                              #   in Loop: Header=BB9_21 Depth=1
	li	a2, -3
	blt	a5, a2, .LBB9_345
# %bb.340:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a2, 128(a0)
	li	a3, 0
	li	a4, -1
.LBB9_341:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a5, 12(a0)
	slli	a5, a5, 3
	add	a5, a2, a5
	ld	a5, 0(a5)
	add	a6, s3, a3
	ld	a5, 16(a5)
	lw	a6, 96(a6)
	add	a5, a5, a3
	sw	a6, 0(a5)
	lw	a5, 0(a1)
	addiw	a6, a5, 3
	addi	a4, a4, 1
	addi	a3, a3, 4
	blt	a4, a6, .LBB9_341
# %bb.342:                              #   in Loop: Header=BB9_21 Depth=1
	li	a2, -3
	blt	a5, a2, .LBB9_345
# %bb.343:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a2, 128(a0)
	li	a3, 0
	li	a4, -1
.LBB9_344:                              #   Parent Loop BB9_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a5, 12(a0)
	slli	a5, a5, 3
	add	a5, a2, a5
	ld	a5, 0(a5)
	add	a6, s3, a3
	ld	a5, 24(a5)
	lw	a6, 144(a6)
	add	a5, a5, a3
	sw	a6, 0(a5)
	lw	a5, 0(a1)
	addiw	a5, a5, 3
	addi	a4, a4, 1
	addi	a3, a3, 4
	blt	a4, a5, .LBB9_344
.LBB9_345:                              #   in Loop: Header=BB9_21 Depth=1
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	andi	a0, a1, 1
	beqz	a0, .LBB9_347
# %bb.346:                              #   in Loop: Header=BB9_21 Depth=1
	lw	a0, 72(s10)
	addiw	a0, a0, -9
	andi	a0, a0, -6
	seqz	a0, a0
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	and	a1, s2, a1
	li	a0, 3
	li	a2, 0
	beqz	a1, .LBB9_347
	j	.LBB9_21
.LBB9_347:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 1089(a0)
	beqz	a1, .LBB9_354
# %bb.348:
	lui	a1, %hi(cbp)
	lw	a2, %lo(cbp)(a1)
	li	a1, 1
	bnez	a2, .LBB9_352
# %bb.349:
	lui	a2, %hi(best_mode)
	lhu	a2, %lo(best_mode)(a2)
	li	a3, 10
	beq	a2, a3, .LBB9_352
# %bb.350:
	lw	a0, 1861(a0)
	bnez	a0, .LBB9_353
# %bb.351:
	lw	a0, 488(s10)
	sw	zero, 8(s10)
	sw	a0, 12(s10)
	lui	a1, %hi(img)
	ld	a2, %lo(img)(a1)
	li	a1, 0
	sw	a0, 40(a2)
.LBB9_352:
	sw	a1, 496(s10)
.LBB9_353:
	call	set_stored_macroblock_parameters
	j	.LBB9_407
.LBB9_354:
	lui	s0, %hi(best_mode)
	lh	a0, %lo(best_mode)(s0)
	call	SetModesAndRefframeForBlocks
	lhu	a0, %lo(best_mode)(s0)
	li	a1, 13
	beq	a0, a1, .LBB9_362
# %bb.355:
	li	a1, 8
	bne	a0, a1, .LBB9_371
# %bb.356:
	lw	a0, 468(s10)
	beqz	a0, .LBB9_360
# %bb.357:
	lui	a0, %hi(cbp8_8x8ts)
	lw	a0, %lo(cbp8_8x8ts)(a0)
	bnez	a0, .LBB9_360
# %bb.358:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1845(a0)
	li	a1, 2
	beq	a0, a1, .LBB9_360
# %bb.359:
	sw	zero, 468(s10)
.LBB9_360:
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
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	li	a3, 2
.LBB9_361:                              # =>This Inner Loop Header: Depth=1
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
	blt	a1, a5, .LBB9_361
	j	.LBB9_385
.LBB9_362:
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
.LBB9_363:                              # =>This Inner Loop Header: Depth=1
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
	blt	a1, a4, .LBB9_363
# %bb.364:                              # %.preheader
	li	s0, 0
	lui	s1, %hi(enc_picture)
	lui	s2, 2
	lui	s3, %hi(img)
	li	s4, 16
	lui	s5, %hi(temp_imgY)
	addi	s5, s5, %lo(temp_imgY)
.LBB9_365:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(img)(s3)
	ld	a1, %lo(enc_picture)(s1)
	lw	a2, 156(a0)
	add	a1, a1, s2
	ld	a1, -1768(a1)
	add	a2, s0, a2
	slli	a2, a2, 3
	add	a1, a1, a2
	lw	a0, 152(a0)
	ld	a1, 0(a1)
	slli	a0, a0, 1
	add	a0, a1, a0
	li	a2, 32
	mv	a1, s5
	call	memcpy
	addi	s0, s0, 1
	addi	s5, s5, 32
	bne	s0, s4, .LBB9_365
# %bb.366:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lui	a0, 22
	add	a0, a1, a0
	lw	a0, 460(a0)
	beqz	a0, .LBB9_371
# %bb.367:
	lui	a0, %hi(enc_picture)
	ld	a0, %lo(enc_picture)(a0)
	lui	a2, 2
	add	a0, a0, a2
	ld	a3, -1728(a0)
	li	a0, 0
	lw	a4, 160(a1)
	lw	a1, 164(a1)
	ld	a2, 0(a3)
	ld	a3, 8(a3)
	slli	a4, a4, 1
	lui	a5, %hi(temp_imgV)
	addi	a5, a5, %lo(temp_imgV)
	lui	a6, %hi(temp_imgU)
	addi	a6, a6, %lo(temp_imgU)
	li	a7, 16
	mv	t0, a5
.LBB9_368:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_369 Depth 2
	slli	t1, a0, 5
	add	t2, a0, a1
	slli	t2, t2, 3
	add	t3, a2, t2
	add	t2, a3, t2
	ld	t2, 0(t2)
	ld	t3, 0(t3)
	add	t1, t1, a5
	addi	t1, t1, 32
	add	t2, t2, a4
	add	t3, t3, a4
	mv	t4, a6
	mv	t5, t0
.LBB9_369:                              #   Parent Loop BB9_368 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	t6, 0(t4)
	sh	t6, 0(t3)
	lh	t6, 0(t5)
	sh	t6, 0(t2)
	addi	t5, t5, 2
	addi	t4, t4, 2
	addi	t2, t2, 2
	addi	t3, t3, 2
	bne	t5, t1, .LBB9_369
# %bb.370:                              #   in Loop: Header=BB9_368 Depth=1
	addi	a0, a0, 1
	addi	t0, t0, 32
	addi	a6, a6, 32
	bne	a0, a7, .LBB9_368
.LBB9_371:
	lui	a0, %hi(best_mode)
	lhu	a0, %lo(best_mode)(a0)
	andi	a0, a0, -5
	li	a1, 9
	beq	a0, a1, .LBB9_385
# %bb.372:
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
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	li	a3, 2
.LBB9_373:                              # =>This Inner Loop Header: Depth=1
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
	blt	a1, a5, .LBB9_373
# %bb.374:
	lui	a0, %hi(best_mode)
	lhu	a0, %lo(best_mode)(a0)
	li	a1, 10
	beq	a0, a1, .LBB9_385
# %bb.375:
	addi	a0, a0, -1
	li	a1, 2
	bltu	a1, a0, .LBB9_377
# %bb.376:
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	sw	a0, 468(s10)
.LBB9_377:
	call	LumaResidualCoding
	lw	a0, 364(s10)
	bnez	a0, .LBB9_380
# %bb.378:
	lui	a0, %hi(best_mode)
	lhu	a0, %lo(best_mode)(a0)
	bnez	a0, .LBB9_380
# %bb.379:
	sw	zero, 468(s10)
.LBB9_380:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB9_385
# %bb.381:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	li	a0, 0
	lw	a4, 168(a1)
	lw	a2, 172(a1)
	lui	a3, 3
	lui	a5, %hi(imgY_org)
	ld	a5, %lo(imgY_org)(a5)
	addiw	a3, a3, 312
	add	a1, a1, a3
	slli	a2, a2, 3
	add	a2, a5, a2
	lui	a3, %hi(diffy)
	addi	a3, a3, %lo(diffy)
	slli	a4, a4, 1
	li	a5, 16
	mv	a6, a3
.LBB9_382:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_383 Depth 2
	slli	a7, a0, 2
	add	a7, a7, a3
	addi	a7, a7, 1024
	slli	t0, a0, 1
	mv	t1, a2
	mv	t2, a1
	mv	t3, a6
.LBB9_383:                              #   Parent Loop BB9_382 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	t4, 0(t1)
	add	t5, t0, a4
	add	t4, t4, t5
	lhu	t4, 0(t4)
	lhu	t5, 0(t2)
	subw	t4, t4, t5
	sw	t4, 0(t3)
	addi	t3, t3, 64
	addi	t2, t2, 32
	addi	t1, t1, 8
	bne	t3, a7, .LBB9_383
# %bb.384:                              #   in Loop: Header=BB9_382 Depth=1
	addi	a0, a0, 1
	addi	a6, a6, 4
	addi	a1, a1, 2
	bne	a0, a5, .LBB9_382
.LBB9_385:
	lbu	a0, 364(s10)
	andi	a0, a0, 15
	bnez	a0, .LBB9_388
# %bb.386:
	lw	a0, 72(s10)
	ori	a0, a0, 4
	li	a1, 13
	beq	a0, a1, .LBB9_388
# %bb.387:
	sw	zero, 468(s10)
.LBB9_388:
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lui	s0, 22
	add	a1, a0, s0
	lw	a1, 436(a1)
	beqz	a1, .LBB9_390
# %bb.389:
	li	a0, 0
	li	a1, 0
	li	a2, 0
	call	IntraChromaPrediction
	ld	a0, %lo(img)(s1)
.LBB9_390:
	addiw	a1, s0, 84
	add	a0, a0, a1
	sw	zero, 0(a0)
	sw	zero, 280(sp)
	lw	a1, 376(a0)
	beqz	a1, .LBB9_401
# %bb.391:
	lui	a1, %hi(best_mode)
	lhu	a1, %lo(best_mode)(a1)
	li	a2, 13
	bltu	a2, a1, .LBB9_401
# %bb.392:
	li	a2, 19
	slli	a2, a2, 9
	srl	a2, a2, a1
	andi	a2, a2, 1
	beqz	a2, .LBB9_401
# %bb.393:
	li	a0, 10
	bne	a1, a0, .LBB9_395
.LBB9_394:
	lw	a0, 364(s10)
	lw	a1, 372(sp)
	call	I16Offset
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	sw	a0, 84(a1)
.LBB9_395:
	mv	a0, s10
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	call	SetMotionVectorsMB
	lui	a0, %hi(best_mode)
	lhu	a0, %lo(best_mode)(a0)
	addi	a0, a0, -1
	seqz	a0, a0
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	and	a0, a1, a0
	beqz	a0, .LBB9_404
# %bb.396:
	lw	a1, 364(s10)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	bnez	a1, .LBB9_405
# %bb.397:
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
	bnez	a4, .LBB9_405
# %bb.398:
	ld	a1, 24(a1)
	ld	a1, 0(a1)
	add	a1, a1, a2
	ld	a1, 0(a1)
	slli	a3, a3, 3
	add	a1, a1, a3
	ld	a1, 0(a1)
	lhu	a2, 0(a1)
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	lhu	a3, 0(a4)
	bne	a2, a3, .LBB9_405
# %bb.399:
	lhu	a1, 2(a1)
	lhu	a2, 2(a4)
	bne	a1, a2, .LBB9_405
# %bb.400:
	sw	zero, 72(s10)
	sw	zero, 468(s10)
	sd	zero, 376(s10)
	sd	zero, 384(s10)
	j	.LBB9_405
.LBB9_401:
	lw	a0, 352(a0)
	beqz	a0, .LBB9_403
# %bb.402:
	addi	a0, sp, 280
	call	ChromaResidualCoding
.LBB9_403:
	lui	a0, %hi(best_mode)
	lhu	a1, %lo(best_mode)(a0)
	li	a0, 10
	beq	a1, a0, .LBB9_394
	j	.LBB9_395
.LBB9_404:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
.LBB9_405:
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 108(a0)
	beqz	a0, .LBB9_407
# %bb.406:
	call	set_mbaff_parameters
.LBB9_407:
	lui	s0, %hi(input)
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB9_418
# %bb.408:
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	lw	a0, 24(a0)
	bnez	a0, .LBB9_418
# %bb.409:
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
	bge	a3, a4, .LBB9_418
# %bb.410:
	fld	fa5, 0(a2)
	fadd.d	fa5, fa0, fa5
	fsd	fa5, 0(a2)
	li	a3, 10
	li	a2, 1
	beq	s1, a3, .LBB9_413
# %bb.411:
	lw	a3, 364(s10)
	bnez	a3, .LBB9_413
# %bb.412:
	lw	a3, 488(s10)
	li	a2, 0
	sw	zero, 8(s10)
	sw	a3, 12(s10)
	sw	a3, 40(a0)
.LBB9_413:
	sw	a2, 496(s10)
	lw	a0, 1509(a1)
	beqz	a0, .LBB9_418
# %bb.414:
	lw	a1, 424(s10)
	lw	a0, 8(s10)
	beqz	a1, .LBB9_416
# %bb.415:
	lui	a1, %hi(DELTA_QP2)
	addi	a1, a1, %lo(DELTA_QP2)
	lui	a2, %hi(QP2)
	addi	a2, a2, %lo(QP2)
	j	.LBB9_417
.LBB9_416:
	lui	a1, %hi(DELTA_QP)
	addi	a1, a1, %lo(DELTA_QP)
	lui	a2, %hi(QP)
	addi	a2, a2, %lo(QP)
.LBB9_417:
	sw	a0, 0(a1)
	lw	a0, 12(s10)
	sw	a0, 0(a2)
.LBB9_418:
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	beqz	a0, .LBB9_420
# %bb.419:
	fld	fa5, 408(sp)
	j	.LBB9_421
.LBB9_420:
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	fcvt.d.w	fa5, a0
.LBB9_421:
	lui	a0, %hi(rdopt)
	ld	a0, %lo(rdopt)(a0)
	fsd	fa5, 0(a0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 108(a1)
	beqz	a1, .LBB9_424
# %bb.422:
	lbu	a0, 12(a0)
	andi	a0, a0, 1
	beqz	a0, .LBB9_424
# %bb.423:
	lw	a0, 72(s10)
	beqz	a0, .LBB9_434
.LBB9_424:
	lui	s0, %hi(input)
	ld	a0, %lo(input)(s0)
	addi	a1, a0, 2047
	lw	a1, 1533(a1)
	beqz	a1, .LBB9_426
# %bb.425:
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	mv	a2, s10
	call	update_refresh_map
	ld	a0, %lo(input)(s0)
.LBB9_426:
	addi	a0, a0, 2047
	lw	a0, 1917(a0)
	li	a1, 2
	beq	a0, a1, .LBB9_430
# %bb.427:
	li	a1, 1
	bne	a0, a1, .LBB9_429
# %bb.428:
	lh	a1, 466(sp)
	lui	a0, %hi(best_mode)
	lh	a0, %lo(best_mode)(a0)
	slli	a1, a1, 2
	lui	a2, %hi(listXsize)
	addi	a2, a2, %lo(listXsize)
	add	a1, a2, a1
	lw	a1, 0(a1)
	call	skip_intrabk_SAD
.LBB9_429:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 220(a0)
	bnez	a0, .LBB9_431
	j	.LBB9_433
.LBB9_430:
	lh	a1, 466(sp)
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
	beqz	a0, .LBB9_433
.LBB9_431:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	li	a2, 1
	bltu	a2, a1, .LBB9_433
# %bb.432:
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
.LBB9_433:
	ld	ra, 632(sp)                     # 8-byte Folded Reload
	ld	s0, 624(sp)                     # 8-byte Folded Reload
	ld	s1, 616(sp)                     # 8-byte Folded Reload
	ld	s2, 608(sp)                     # 8-byte Folded Reload
	ld	s3, 600(sp)                     # 8-byte Folded Reload
	ld	s4, 592(sp)                     # 8-byte Folded Reload
	ld	s5, 584(sp)                     # 8-byte Folded Reload
	ld	s6, 576(sp)                     # 8-byte Folded Reload
	ld	s7, 568(sp)                     # 8-byte Folded Reload
	ld	s8, 560(sp)                     # 8-byte Folded Reload
	ld	s9, 552(sp)                     # 8-byte Folded Reload
	ld	s10, 544(sp)                    # 8-byte Folded Reload
	ld	s11, 536(sp)                    # 8-byte Folded Reload
	fld	fs0, 528(sp)                    # 8-byte Folded Reload
	fld	fs1, 520(sp)                    # 8-byte Folded Reload
	fld	fs2, 512(sp)                    # 8-byte Folded Reload
	fld	fs3, 504(sp)                    # 8-byte Folded Reload
	fld	fs4, 496(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 640
	ret
.LBB9_434:
	li	a0, 1
	bne	s11, a0, .LBB9_438
# %bb.435:
	lw	a0, 364(s10)
	bnez	a0, .LBB9_424
# %bb.436:
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	lw	a0, 72(a0)
	bnez	a0, .LBB9_424
# %bb.437:
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	lw	a0, 364(a0)
	bnez	a0, .LBB9_424
	j	.LBB9_439
.LBB9_438:
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	lw	a0, 72(a0)
	bnez	a0, .LBB9_424
.LBB9_439:
	call	field_flag_inference
	lh	a1, 470(sp)
	beq	a0, a1, .LBB9_424
# %bb.440:
	lui	a0, %hi(rdopt)
	ld	a0, %lo(rdopt)(a0)
	lui	a1, %hi(.LCPI9_1)
	ld	a1, %lo(.LCPI9_1)(a1)
	sd	a1, 0(a0)
	j	.LBB9_424
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

	.type	.L__const.encode_one_macroblock.bmcost,@object # @__const.encode_one_macroblock.bmcost
	.p2align	2, 0x0
.L__const.encode_one_macroblock.bmcost:
	.word	2147483647                      # 0x7fffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	.L__const.encode_one_macroblock.bmcost, 20

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
