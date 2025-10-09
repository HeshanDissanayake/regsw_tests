	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"coder.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CodeOneOrTwo                    # -- Begin function CodeOneOrTwo
	.p2align	2
	.type	CodeOneOrTwo,@function
CodeOneOrTwo:                           # @CodeOneOrTwo
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
	lui	t0, 77
	addiw	t0, t0, -1600
	sub	sp, sp, t0
	sd	a7, 320(sp)                     # 8-byte Folded Spill
	sd	a6, 152(sp)                     # 8-byte Folded Spill
	sd	a5, 208(sp)                     # 8-byte Folded Spill
	sd	a4, 200(sp)                     # 8-byte Folded Spill
	mv	s1, a3
	mv	s4, a2
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	sd	zero, 344(sp)
	sd	zero, 336(sp)
	sd	zero, 328(sp)
	mv	a0, a6
	call	ZeroBits
	lui	a0, %hi(mv_outside_frame)
	lw	a0, %lo(mv_outside_frame)(a0)
	beqz	a0, .LBB0_5
# %bb.1:
	mv	s11, s1
	lui	a0, %hi(long_vectors)
	lw	s3, %lo(long_vectors)(a0)
	li	s2, 8
	beqz	s3, .LBB0_3
# %bb.2:
	li	s2, 16
.LBB0_3:
	lui	s7, %hi(pels)
	lw	s1, %lo(pels)(s7)
	lui	s10, %hi(lines)
	lw	s5, %lo(lines)(s10)
	slli	s8, s2, 2
	addw	s6, s8, s1
	addw	a0, s8, s5
	mul	a0, s6, a0
	call	malloc
	bnez	a0, .LBB0_4
	j	.LBB0_120
.LBB0_4:
	snez	s9, s3
	ld	a2, 0(s11)
	slli	s6, s6, 1
	addi	s9, s9, 3
	sllw	a1, s6, s9
	add	a1, a0, a1
	slli	s3, s2, 1
	add	a1, a1, s3
	mv	s6, a0
	mv	a0, a2
	mv	a2, s1
	mv	a3, s5
	mv	a4, s3
	call	MakeEdgeImage
	lw	a0, %lo(pels)(s7)
	lw	a2, %lo(lines)(s10)
	addw	a1, a0, s8
	addw	a2, a2, s8
	mv	a0, s6
	call	InterpolateImage
	mv	s1, a0
	mv	a0, s6
	call	free
	lw	a0, %lo(pels)(s7)
	slli	a1, s2, 5
	slli	a2, a0, 3
	add	a1, a2, a1
	sllw	a1, a1, s9
	lw	a2, %lo(lines)(s10)
	add	a1, a1, s8
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	add	a1, s1, a1
	sd	a1, 288(sp)                     # 8-byte Folded Spill
	add	a0, a0, s8
	add	a2, a2, s8
	mulw	a0, a2, a0
	call	InitImage
	lw	a2, %lo(pels)(s7)
	mv	s1, a0
	ld	a0, 0(s4)
	ld	a1, 0(s1)
	add	a3, a2, s8
	slli	a4, a3, 1
	lw	a3, %lo(lines)(s10)
	sllw	a4, a4, s9
	add	a4, a4, s3
	add	a1, a1, a4
	mv	a4, s3
	call	MakeEdgeImage
	lw	a2, %lo(pels)(s7)
	ld	a1, 0(s1)
	add	a0, a2, s8
	slli	a4, a0, 1
	ld	a0, 0(s11)
	lw	a3, %lo(lines)(s10)
	sllw	a4, a4, s9
	add	a4, a4, s3
	add	a1, a1, a4
	mv	a4, s3
	call	MakeEdgeImage
	lw	a1, %lo(pels)(s7)
	ld	a0, 8(s11)
	ld	a3, 8(s1)
	srliw	a2, a1, 31
	add	a1, a1, a2
	sraiw	a2, a1, 1
	add	a1, a2, s3
	lw	a4, %lo(lines)(s10)
	sllw	a1, a1, s9
	add	a1, a1, s2
	add	a1, a3, a1
	srliw	a3, a4, 31
	add	a3, a4, a3
	sraiw	a3, a3, 1
	mv	a4, s2
	call	MakeEdgeImage
	lw	a1, %lo(pels)(s7)
	ld	a0, 16(s11)
	ld	a3, 16(s1)
	srliw	a2, a1, 31
	add	a1, a1, a2
	sraiw	a2, a1, 1
	add	a1, a2, s3
	lw	a4, %lo(lines)(s10)
	sllw	a1, a1, s9
	add	a1, a1, s2
	add	a1, a3, a1
	srliw	a3, a4, 31
	add	a3, a4, a3
	sraiw	a3, a3, 1
	mv	a4, s2
	call	MakeEdgeImage
	li	a0, 24
	call	malloc
	lwu	a1, %lo(pels)(s7)
	mv	a5, a0
	ld	a0, 0(s1)
	add	s8, a1, s8
	slli	s8, s8, 1
	sllw	a2, s8, s9
	add	a2, a2, s3
	add	a0, a0, a2
	sd	a0, 0(a5)
	ld	a0, 8(s1)
	srli	a2, a1, 31
	add	a2, a1, a2
	sraiw	a2, a2, 1
	add	a2, a2, s3
	sllw	a2, a2, s9
	add	a3, a2, s2
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	ld	a4, 16(s1)
	add	a0, a0, a3
	sd	a0, 8(a5)
	add	a2, a2, s2
	add	a2, a4, a2
	sd	a2, 16(a5)
	sd	a5, 240(sp)                     # 8-byte Folded Spill
	sext.w	a1, a1
	li	a0, 16
	bge	a1, a0, .LBB0_6
	j	.LBB0_8
.LBB0_5:
	ld	a0, 0(s1)
	mv	s2, s1
	lui	s1, %hi(pels)
	lw	a1, %lo(pels)(s1)
	lui	a2, %hi(lines)
	lw	a2, %lo(lines)(a2)
	call	InterpolateImage
	lw	a1, %lo(pels)(s1)
	sd	zero, 16(sp)                    # 8-byte Folded Spill
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	sd	a0, 288(sp)                     # 8-byte Folded Spill
	sd	s2, 240(sp)                     # 8-byte Folded Spill
	sext.w	a1, a1
	li	a0, 16
	blt	a1, a0, .LBB0_8
.LBB0_6:                                # %.preheader4
	li	s1, 0
	lui	a0, 64
	addiw	s3, a0, 664
	addi	s7, sp, 352
	add	s3, s7, s3
	lui	a0, 51
	addiw	s4, a0, 1352
	add	s4, s7, s4
	lui	a0, 38
	addiw	s5, a0, 2040
	add	s5, s7, s5
	lui	a0, 26
	addiw	s6, a0, -1368
	add	s6, s7, s6
	lui	a0, 13
	addiw	a0, a0, -680
	add	s7, s7, a0
	addi	s8, sp, 360
	li	s9, 3
	lui	s10, %hi(pels)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	li	a0, 24
	call	malloc
	mv	s2, a0
	sd	a0, 0(s8)
	call	MarkVec
	li	a0, 24
	call	malloc
	sd	a0, 0(s7)
	call	MarkVec
	li	a0, 24
	call	malloc
	sd	a0, 0(s6)
	call	MarkVec
	li	a0, 24
	call	malloc
	sd	a0, 0(s5)
	call	MarkVec
	li	a0, 24
	call	malloc
	sd	a0, 0(s4)
	call	MarkVec
	li	a0, 24
	call	malloc
	sd	a0, 0(s3)
	call	MarkVec
	lw	a0, %lo(pels)(s10)
	sw	s9, 20(s2)
	srai	a0, a0, 4
	addi	s1, s1, 1
	addi	s3, s3, 8
	addi	s4, s4, 8
	addi	s5, s5, 8
	addi	s6, s6, 8
	addi	s7, s7, 8
	addi	s8, s8, 8
	blt	s1, a0, .LBB0_7
.LBB0_8:
	lui	a0, %hi(lines)
	lw	a0, %lo(lines)(a0)
	bltz	a0, .LBB0_11
# %bb.9:                                # %.preheader2
	li	s2, -1
	addi	s3, sp, 352
	lui	a0, 13
	addiw	a0, a0, -688
	sd	a0, 312(sp)                     # 8-byte Folded Spill
	lui	s8, %hi(pels)
	lui	a0, 38
	addiw	s9, a0, 2040
	li	s10, 3
	lui	s0, 64
	lui	s4, 51
	lui	s1, 26
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	add	s11, s3, s0
	add	s5, s3, s4
	add	s6, s3, s1
	ld	s7, 312(sp)                     # 8-byte Folded Reload
	add	s7, s3, s7
	li	a0, 24
	call	malloc
	sd	a0, 0(s3)
	call	ZeroVec
	li	a0, 24
	call	malloc
	lw	a1, %lo(pels)(s8)
	srai	a1, a1, 4
	slli	a1, a1, 3
	add	a1, s3, a1
	sd	a0, 8(a1)
	call	ZeroVec
	li	a0, 24
	call	malloc
	sd	a0, 0(s7)
	call	ZeroVec
	li	a0, 24
	call	malloc
	lw	a1, %lo(pels)(s8)
	srai	a1, a1, 4
	slli	a1, a1, 3
	add	a1, s7, a1
	sd	a0, 8(a1)
	call	ZeroVec
	li	a0, 24
	call	malloc
	sd	a0, -1376(s6)
	call	ZeroVec
	li	a0, 24
	call	malloc
	lw	a1, %lo(pels)(s8)
	srai	a1, a1, 4
	slli	a1, a1, 3
	add	a2, s3, s1
	add	a1, a2, a1
	sd	a0, -1368(a1)
	call	ZeroVec
	li	a0, 24
	call	malloc
	add	s6, s3, s9
	sd	a0, -8(s6)
	call	ZeroVec
	li	a0, 24
	call	malloc
	lw	a1, %lo(pels)(s8)
	srai	a1, a1, 4
	slli	a1, a1, 3
	add	a1, s6, a1
	sd	a0, 0(a1)
	call	ZeroVec
	li	a0, 24
	call	malloc
	sd	a0, 1344(s5)
	call	ZeroVec
	li	a0, 24
	call	malloc
	lw	a1, %lo(pels)(s8)
	srai	a1, a1, 4
	slli	a1, a1, 3
	add	a2, s3, s4
	add	a1, a2, a1
	sd	a0, 1352(a1)
	call	ZeroVec
	li	a0, 24
	call	malloc
	sd	a0, 656(s11)
	call	ZeroVec
	li	a0, 24
	call	malloc
	lw	a1, %lo(pels)(s8)
	srai	a1, a1, 4
	slli	a1, a1, 3
	add	a2, s3, s0
	add	a1, a2, a1
	sd	a0, 664(a1)
	call	ZeroVec
	lui	a2, %hi(lines)
	lw	a0, %lo(pels)(s8)
	ld	a1, 0(s3)
	srai	a0, a0, 4
	slli	a0, a0, 3
	add	a0, s3, a0
	ld	a0, 8(a0)
	lw	a2, %lo(lines)(a2)
	sw	s10, 20(a1)
	sw	s10, 20(a0)
	srai	a2, a2, 4
	addi	s2, s2, 1
	addi	s3, s3, 720
	blt	s2, a2, .LBB0_10
.LBB0_11:
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	ld	a1, 0(a1)
	ld	s0, 320(sp)                     # 8-byte Folded Reload
	lw	a3, 56(s0)
	lw	a5, 60(s0)
	addi	a4, sp, 352
	ld	s11, 288(sp)                    # 8-byte Folded Reload
	mv	a2, s11
	call	MotionEstimatePicture
	lw	a0, 12(s0)
	bnez	a0, .LBB0_12
	j	.LBB0_108
.LBB0_12:
	lw	a1, 40(s0)
	flw	fa1, 20(s0)
	fcvt.s.w	fa0, a0
	beqz	a1, .LBB0_14
# %bb.13:
	lui	a0, 258048
	fmv.w.x	fa5, a0
	fmul.s	fa1, fa1, fa5
.LBB0_14:
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	flw	fa2, 76(s0)
	li	a0, 1
	call	InitializeQuantizer
	mv	s3, a0
	lui	a0, %hi(lines)
	lw	s1, %lo(lines)(a0)
	li	a0, 16
	bge	s1, a0, .LBB0_15
	j	.LBB0_109
.LBB0_15:
	sd	zero, 96(sp)                    # 8-byte Folded Spill
	li	s7, 0
	li	s4, 0
	li	s6, 0
	sd	zero, 216(sp)                   # 8-byte Folded Spill
	sd	zero, 256(sp)                   # 8-byte Folded Spill
	lui	a0, 77
	add	a0, sp, a0
	ld	a0, 440(a0)
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	lui	a0, 77
	add	a0, sp, a0
	ld	a0, 432(a0)
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	lui	a0, 64
	addiw	a0, a0, 656
	addi	a1, sp, 352
	add	a0, a1, a0
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	fmv.w.x	fs0, zero
	lui	s2, %hi(pels)
	mv	a3, s3
	j	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	mv	a3, s0
	lui	a0, %hi(lines)
	lw	s1, %lo(lines)(a0)
	slli	a0, s1, 1
	srli	a0, a0, 60
	add	a0, s1, a0
	sraiw	a0, a0, 4
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 16
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	mv	s7, a2
	ld	s6, 304(sp)                     # 8-byte Folded Reload
	ld	s0, 320(sp)                     # 8-byte Folded Reload
	blt	a2, a0, .LBB0_17
	j	.LBB0_107
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
                                        #       Child Loop BB0_45 Depth 3
	lw	a0, 12(s0)
	beqz	a0, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	mv	a0, s5
	call	AddBitsPicture
	lw	a0, 12(s0)
	lw	a1, %lo(pels)(s2)
	flw	fa0, 76(s0)
	fcvt.s.w	fa1, a0
	slli	a0, a1, 1
	lui	a2, %hi(lines)
	lw	a3, %lo(lines)(a2)
	srli	a0, a0, 60
	add	a0, a1, a0
	sraiw	a2, a0, 4
	slli	a0, a3, 1
	lw	a4, 40(s5)
	srli	a0, a0, 60
	add	a0, a3, a0
	sraiw	a3, a0, 4
	li	a1, 1
	mv	a0, s4
	call	UpdateQuantizer
	mv	a3, a0
.LBB0_19:                               #   in Loop: Header=BB0_17 Depth=1
	sext.w	s1, s7
	beqz	s7, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_17 Depth=1
	lw	a0, 60(s0)
	beqz	a0, .LBB0_24
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=1
	remw	a0, s7, a0
	mv	s0, a3
	beqz	a0, .LBB0_25
# %bb.22:                               #   in Loop: Header=BB0_17 Depth=1
	sd	zero, 120(sp)                   # 8-byte Folded Spill
	j	.LBB0_27
.LBB0_23:                               #   in Loop: Header=BB0_17 Depth=1
	sw	a3, 44(s0)
	mv	a0, s0
	mv	s0, a3
	call	CountBitsPicture
	sd	zero, 120(sp)                   # 8-byte Folded Spill
	j	.LBB0_26
.LBB0_24:                               #   in Loop: Header=BB0_17 Depth=1
	sd	zero, 120(sp)                   # 8-byte Folded Spill
	mv	s0, a3
	j	.LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_17 Depth=1
	mv	a0, s1
	mv	a1, s0
	call	CountBitsSlice
	li	a1, 1
	sd	a1, 120(sp)                     # 8-byte Folded Spill
.LBB0_26:                               #   in Loop: Header=BB0_17 Depth=1
	lw	a1, 32(s5)
	add	a0, a1, a0
	sw	a0, 32(s5)
	mv	s3, s0
.LBB0_27:                               #   in Loop: Header=BB0_17 Depth=1
	sd	s6, 304(sp)                     # 8-byte Folded Spill
	lw	a0, %lo(pels)(s2)
	addi	a2, s7, 1
	li	a1, 16
	blt	a0, a1, .LBB0_16
# %bb.28:                               #   in Loop: Header=BB0_17 Depth=1
	sd	s1, 248(sp)                     # 8-byte Folded Spill
	li	s10, 0
	slli	a0, s7, 4
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	srli	a0, a0, 1
	addi	a1, a0, 1
	sd	a1, 80(sp)                      # 8-byte Folded Spill
	addi	a1, a0, 2
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	addi	a1, a0, 3
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	addi	a1, a0, 4
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	addi	a1, a0, 5
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	addi	a1, a0, 6
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	addi	a0, a0, 7
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	li	s6, 15
	li	a0, 720
	mul	a1, a2, a0
	addi	a0, sp, 352
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	add	a0, a0, a1
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	sd	s7, 192(sp)                     # 8-byte Folded Spill
	sd	s0, 184(sp)                     # 8-byte Folded Spill
	sd	a2, 176(sp)                     # 8-byte Folded Spill
	j	.LBB0_30
.LBB0_29:                               #   in Loop: Header=BB0_30 Depth=2
	sd	s11, 216(sp)                    # 8-byte Folded Spill
	lui	s2, %hi(pels)
	lw	a0, %lo(pels)(s2)
	addiw	s4, s4, 1
	ld	a1, 312(sp)                     # 8-byte Folded Reload
	fcvt.s.w	fa5, a1
	fadd.s	fs0, fs0, fa5
	slli	a1, a0, 1
	srli	a1, a1, 60
	add	a0, a0, a1
	sraiw	a0, a0, 4
	addi	s6, s6, 16
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	mv	s10, a1
	ld	s11, 288(sp)                    # 8-byte Folded Reload
	ld	s7, 192(sp)                     # 8-byte Folded Reload
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	bge	a1, a0, .LBB0_16
.LBB0_30:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_45 Depth 3
	addi	a2, s10, 1
	slli	a1, a2, 3
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	sd	a1, 264(sp)                     # 8-byte Folded Spill
	add	s1, a0, a1
	ld	a0, 0(s1)
	lw	a0, 20(a0)
	sd	s4, 272(sp)                     # 8-byte Folded Spill
	sd	a2, 280(sp)                     # 8-byte Folded Spill
	beqz	s10, .LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=2
	beq	s0, s3, .LBB0_34
# %bb.32:                               #   in Loop: Header=BB0_30 Depth=2
	li	a1, 2
	bne	a0, a1, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_30 Depth=2
	li	a1, 0
	li	a0, 2
	mv	s9, s3
	j	.LBB0_42
.LBB0_34:                               #   in Loop: Header=BB0_30 Depth=2
	subw	a2, s0, s3
	li	a3, 2
	mv	a1, a2
	blt	a2, a3, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_30 Depth=2
	li	a1, 2
.LBB0_36:                               #   in Loop: Header=BB0_30 Depth=2
	blt	a3, a2, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_30 Depth=2
	mv	s9, s0
	li	a3, -2
	bge	a3, a1, .LBB0_39
	j	.LBB0_40
.LBB0_38:                               #   in Loop: Header=BB0_30 Depth=2
	addiw	s9, s3, 2
	li	a3, -2
	blt	a3, a1, .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_30 Depth=2
	li	a1, -2
.LBB0_40:                               #   in Loop: Header=BB0_30 Depth=2
	bge	a2, a3, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_30 Depth=2
	addiw	s9, s3, -2
.LBB0_42:                               #   in Loop: Header=BB0_30 Depth=2
	ld	s0, 320(sp)                     # 8-byte Folded Reload
	sw	a1, 48(s0)
	call	ModifyMode
	sd	s1, 224(sp)                     # 8-byte Folded Spill
	ld	a1, 0(s1)
	lw	s1, %lo(pels)(s2)
	mv	s4, a0
	sw	a0, 20(a1)
	slli	a0, s1, 1
	srli	a0, a0, 60
	add	a0, s1, a0
	sraiw	a0, a0, 4
	mul	a0, a0, s7
	add	a0, a0, s10
	sw	a0, 52(s0)
	slliw	s5, s10, 4
	lw	a4, 168(sp)                     # 8-byte Folded Reload
	li	a0, 2
	sd	a4, 296(sp)                     # 8-byte Folded Spill
	sd	s3, 200(sp)                     # 8-byte Folded Spill
	bltu	a0, s4, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_30 Depth=2
	lw	a6, 40(s0)
	addi	a5, sp, 352
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	mv	a1, s1
	mv	a2, s11
	mv	a3, s5
	call	Predict_P
	mv	s2, a0
	j	.LBB0_47
.LBB0_44:                               #   in Loop: Header=BB0_30 Depth=2
	li	a0, 1536
	call	malloc
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	ld	a2, 0(a1)
	mv	s2, a0
	slli	a1, s10, 4
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	mul	a0, a0, s1
	add	a2, a2, s6
	addi	a3, s2, 32
	addi	a4, s2, 1056
.LBB0_45:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a5, a2, a0
	lbu	a6, -15(a5)
	sw	a6, -32(a3)
	lbu	a6, -14(a5)
	sw	a6, -28(a3)
	lbu	a6, -13(a5)
	sw	a6, -24(a3)
	lbu	a6, -12(a5)
	sw	a6, -20(a3)
	lbu	a6, -11(a5)
	sw	a6, -16(a3)
	lbu	a6, -10(a5)
	sw	a6, -12(a3)
	lbu	a6, -9(a5)
	sw	a6, -8(a3)
	lbu	a6, -8(a5)
	sw	a6, -4(a3)
	lbu	a6, -7(a5)
	sw	a6, 0(a3)
	lbu	a6, -6(a5)
	sw	a6, 4(a3)
	lbu	a6, -5(a5)
	sw	a6, 8(a3)
	lbu	a6, -4(a5)
	sw	a6, 12(a3)
	lbu	a6, -3(a5)
	sw	a6, 16(a3)
	lbu	a6, -2(a5)
	sw	a6, 20(a3)
	lbu	a6, -1(a5)
	sw	a6, 24(a3)
	lbu	a5, 0(a5)
	sw	a5, 28(a3)
	addi	a3, a3, 64
	add	a2, a2, s1
	bne	a3, a4, .LBB0_45
# %bb.46:                               #   in Loop: Header=BB0_30 Depth=2
	ld	a4, 232(sp)                     # 8-byte Folded Reload
	ld	a2, 8(a4)
	lui	a0, %hi(cpels)
	lw	a0, %lo(cpels)(a0)
	srli	a3, a1, 1
	add	a1, a2, a3
	ld	a2, 16(a4)
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	mul	s7, a4, a0
	add	a4, a1, s7
	lbu	a4, 0(a4)
	add	a2, a2, a3
	sw	a4, 1024(s2)
	add	a3, a2, s7
	lbu	a4, 0(a3)
	addi	a3, a1, 1
	sw	a4, 1280(s2)
	add	a4, a3, s7
	lbu	a5, 0(a4)
	addi	a4, a2, 1
	sw	a5, 1028(s2)
	add	a5, a4, s7
	lbu	a6, 0(a5)
	addi	a5, a1, 2
	sw	a6, 1284(s2)
	add	a6, a5, s7
	lbu	a7, 0(a6)
	addi	a6, a2, 2
	sw	a7, 1032(s2)
	add	a7, a6, s7
	lbu	t0, 0(a7)
	addi	a7, a1, 3
	sw	t0, 1288(s2)
	add	t0, a7, s7
	lbu	t1, 0(t0)
	addi	t0, a2, 3
	sw	t1, 1036(s2)
	add	t1, t0, s7
	lbu	t2, 0(t1)
	addi	t1, a1, 4
	sw	t2, 1292(s2)
	add	t2, t1, s7
	lbu	t3, 0(t2)
	addi	t2, a2, 4
	sw	t3, 1040(s2)
	add	t3, t2, s7
	lbu	t4, 0(t3)
	addi	t3, a1, 5
	sw	t4, 1296(s2)
	add	t4, t3, s7
	lbu	t5, 0(t4)
	addi	t4, a2, 5
	sw	t5, 1044(s2)
	add	t5, t4, s7
	lbu	t6, 0(t5)
	addi	t5, a1, 6
	sw	t6, 1300(s2)
	add	t6, t5, s7
	lbu	s1, 0(t6)
	addi	t6, a2, 6
	sw	s1, 1048(s2)
	add	s1, t6, s7
	lbu	s3, 0(s1)
	addi	s1, a1, 7
	sw	s3, 1304(s2)
	add	s3, s1, s7
	lbu	s11, 0(s3)
	addi	s3, a2, 7
	sw	s11, 1052(s2)
	add	s7, s3, s7
	lbu	s7, 0(s7)
	sw	s7, 1308(s2)
	ld	s7, 80(sp)                      # 8-byte Folded Reload
	mul	s7, s7, a0
	add	s11, a1, s7
	lbu	s11, 0(s11)
	sw	s11, 1056(s2)
	add	s11, a2, s7
	lbu	s11, 0(s11)
	sw	s11, 1312(s2)
	add	s11, a3, s7
	lbu	s11, 0(s11)
	sw	s11, 1060(s2)
	add	s11, a4, s7
	lbu	s11, 0(s11)
	sw	s11, 1316(s2)
	add	s11, a5, s7
	lbu	s11, 0(s11)
	sw	s11, 1064(s2)
	add	s11, a6, s7
	lbu	s11, 0(s11)
	sw	s11, 1320(s2)
	add	s11, a7, s7
	lbu	s11, 0(s11)
	sw	s11, 1068(s2)
	add	s11, t0, s7
	lbu	s11, 0(s11)
	sw	s11, 1324(s2)
	add	s11, t1, s7
	lbu	s11, 0(s11)
	sw	s11, 1072(s2)
	add	s11, t2, s7
	lbu	s11, 0(s11)
	sw	s11, 1328(s2)
	add	s11, t3, s7
	lbu	s11, 0(s11)
	sw	s11, 1076(s2)
	add	s11, t4, s7
	lbu	s11, 0(s11)
	sw	s11, 1332(s2)
	add	s11, t5, s7
	lbu	s11, 0(s11)
	sw	s11, 1080(s2)
	add	s11, t6, s7
	lbu	s11, 0(s11)
	sw	s11, 1336(s2)
	add	s11, s1, s7
	lbu	s11, 0(s11)
	sw	s11, 1084(s2)
	add	s7, s3, s7
	lbu	s7, 0(s7)
	sw	s7, 1340(s2)
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	mul	s7, s7, a0
	add	s11, a1, s7
	lbu	s11, 0(s11)
	sw	s11, 1088(s2)
	add	s11, a2, s7
	lbu	s11, 0(s11)
	sw	s11, 1344(s2)
	add	s11, a3, s7
	lbu	s11, 0(s11)
	sw	s11, 1092(s2)
	add	s11, a4, s7
	lbu	s11, 0(s11)
	sw	s11, 1348(s2)
	add	s11, a5, s7
	lbu	s11, 0(s11)
	sw	s11, 1096(s2)
	add	s11, a6, s7
	lbu	s11, 0(s11)
	sw	s11, 1352(s2)
	add	s11, a7, s7
	lbu	s11, 0(s11)
	sw	s11, 1100(s2)
	add	s11, t0, s7
	lbu	s11, 0(s11)
	sw	s11, 1356(s2)
	add	s11, t1, s7
	lbu	s11, 0(s11)
	sw	s11, 1104(s2)
	add	s11, t2, s7
	lbu	s11, 0(s11)
	sw	s11, 1360(s2)
	add	s11, t3, s7
	lbu	s11, 0(s11)
	sw	s11, 1108(s2)
	add	s11, t4, s7
	lbu	s11, 0(s11)
	sw	s11, 1364(s2)
	add	s11, t5, s7
	lbu	s11, 0(s11)
	sw	s11, 1112(s2)
	add	s11, t6, s7
	lbu	s11, 0(s11)
	sw	s11, 1368(s2)
	add	s11, s1, s7
	lbu	s11, 0(s11)
	sw	s11, 1116(s2)
	add	s7, s3, s7
	lbu	s7, 0(s7)
	sw	s7, 1372(s2)
	ld	s7, 64(sp)                      # 8-byte Folded Reload
	mul	s7, s7, a0
	add	s11, a1, s7
	lbu	s11, 0(s11)
	sw	s11, 1120(s2)
	add	s11, a2, s7
	lbu	s11, 0(s11)
	sw	s11, 1376(s2)
	add	s11, a3, s7
	lbu	s11, 0(s11)
	sw	s11, 1124(s2)
	add	s11, a4, s7
	lbu	s11, 0(s11)
	sw	s11, 1380(s2)
	add	s11, a5, s7
	lbu	s11, 0(s11)
	sw	s11, 1128(s2)
	add	s11, a6, s7
	lbu	s11, 0(s11)
	sw	s11, 1384(s2)
	add	s11, a7, s7
	lbu	s11, 0(s11)
	sw	s11, 1132(s2)
	add	s11, t0, s7
	lbu	s11, 0(s11)
	sw	s11, 1388(s2)
	add	s11, t1, s7
	lbu	s11, 0(s11)
	sw	s11, 1136(s2)
	add	s11, t2, s7
	lbu	s11, 0(s11)
	sw	s11, 1392(s2)
	add	s11, t3, s7
	lbu	s11, 0(s11)
	sw	s11, 1140(s2)
	add	s11, t4, s7
	lbu	s11, 0(s11)
	sw	s11, 1396(s2)
	add	s11, t5, s7
	lbu	s11, 0(s11)
	sw	s11, 1144(s2)
	add	s11, t6, s7
	lbu	s11, 0(s11)
	sw	s11, 1400(s2)
	add	s11, s1, s7
	lbu	s11, 0(s11)
	sw	s11, 1148(s2)
	add	s7, s3, s7
	lbu	s7, 0(s7)
	sw	s7, 1404(s2)
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	mul	s7, s7, a0
	add	s11, a1, s7
	lbu	s11, 0(s11)
	sw	s11, 1152(s2)
	add	s11, a2, s7
	lbu	s11, 0(s11)
	sw	s11, 1408(s2)
	add	s11, a3, s7
	lbu	s11, 0(s11)
	sw	s11, 1156(s2)
	add	s11, a4, s7
	lbu	s11, 0(s11)
	sw	s11, 1412(s2)
	add	s11, a5, s7
	lbu	s11, 0(s11)
	sw	s11, 1160(s2)
	add	s11, a6, s7
	lbu	s11, 0(s11)
	sw	s11, 1416(s2)
	add	s11, a7, s7
	lbu	s11, 0(s11)
	sw	s11, 1164(s2)
	add	s11, t0, s7
	lbu	s11, 0(s11)
	sw	s11, 1420(s2)
	add	s11, t1, s7
	lbu	s11, 0(s11)
	sw	s11, 1168(s2)
	add	s11, t2, s7
	lbu	s11, 0(s11)
	sw	s11, 1424(s2)
	add	s11, t3, s7
	lbu	s11, 0(s11)
	sw	s11, 1172(s2)
	add	s11, t4, s7
	lbu	s11, 0(s11)
	sw	s11, 1428(s2)
	add	s11, t5, s7
	lbu	s11, 0(s11)
	sw	s11, 1176(s2)
	add	s11, t6, s7
	lbu	s11, 0(s11)
	sw	s11, 1432(s2)
	add	s11, s1, s7
	lbu	s11, 0(s11)
	sw	s11, 1180(s2)
	add	s7, s3, s7
	lbu	s7, 0(s7)
	sw	s7, 1436(s2)
	ld	s7, 48(sp)                      # 8-byte Folded Reload
	mul	s7, s7, a0
	add	s11, a1, s7
	lbu	s11, 0(s11)
	sw	s11, 1184(s2)
	add	s11, a2, s7
	lbu	s11, 0(s11)
	sw	s11, 1440(s2)
	add	s11, a3, s7
	lbu	s11, 0(s11)
	sw	s11, 1188(s2)
	add	s11, a4, s7
	lbu	s11, 0(s11)
	sw	s11, 1444(s2)
	add	s11, a5, s7
	lbu	s11, 0(s11)
	sw	s11, 1192(s2)
	add	s11, a6, s7
	lbu	s11, 0(s11)
	sw	s11, 1448(s2)
	add	s11, a7, s7
	lbu	s11, 0(s11)
	sw	s11, 1196(s2)
	add	s11, t0, s7
	lbu	s11, 0(s11)
	sw	s11, 1452(s2)
	add	s11, t1, s7
	lbu	s11, 0(s11)
	sw	s11, 1200(s2)
	add	s11, t2, s7
	lbu	s11, 0(s11)
	sw	s11, 1456(s2)
	add	s11, t3, s7
	lbu	s11, 0(s11)
	sw	s11, 1204(s2)
	add	s11, t4, s7
	lbu	s11, 0(s11)
	sw	s11, 1460(s2)
	add	s11, t5, s7
	lbu	s11, 0(s11)
	sw	s11, 1208(s2)
	add	s11, t6, s7
	lbu	s11, 0(s11)
	sw	s11, 1464(s2)
	add	s11, s1, s7
	lbu	s11, 0(s11)
	sw	s11, 1212(s2)
	add	s7, s3, s7
	lbu	s7, 0(s7)
	sw	s7, 1468(s2)
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	mul	s7, s7, a0
	add	s11, a1, s7
	lbu	s11, 0(s11)
	sw	s11, 1216(s2)
	add	s11, a2, s7
	lbu	s11, 0(s11)
	sw	s11, 1472(s2)
	add	s11, a3, s7
	lbu	s11, 0(s11)
	sw	s11, 1220(s2)
	add	s11, a4, s7
	lbu	s11, 0(s11)
	sw	s11, 1476(s2)
	add	s11, a5, s7
	lbu	s11, 0(s11)
	sw	s11, 1224(s2)
	add	s11, a6, s7
	lbu	s11, 0(s11)
	sw	s11, 1480(s2)
	add	s11, a7, s7
	lbu	s11, 0(s11)
	sw	s11, 1228(s2)
	add	s11, t0, s7
	lbu	s11, 0(s11)
	sw	s11, 1484(s2)
	add	s11, t1, s7
	lbu	s11, 0(s11)
	sw	s11, 1232(s2)
	add	s11, t2, s7
	lbu	s11, 0(s11)
	sw	s11, 1488(s2)
	add	s11, t3, s7
	lbu	s11, 0(s11)
	sw	s11, 1236(s2)
	add	s11, t4, s7
	lbu	s11, 0(s11)
	sw	s11, 1492(s2)
	add	s11, t5, s7
	lbu	s11, 0(s11)
	sw	s11, 1240(s2)
	add	s11, t6, s7
	lbu	s11, 0(s11)
	sw	s11, 1496(s2)
	add	s11, s1, s7
	lbu	s11, 0(s11)
	sw	s11, 1244(s2)
	add	s7, s3, s7
	lbu	s7, 0(s7)
	sw	s7, 1500(s2)
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	mul	a0, s7, a0
	add	a1, a1, a0
	lbu	a1, 0(a1)
	sw	a1, 1248(s2)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	sw	a1, 1504(s2)
	add	a3, a3, a0
	lbu	a1, 0(a3)
	sw	a1, 1252(s2)
	add	a4, a4, a0
	lbu	a1, 0(a4)
	sw	a1, 1508(s2)
	add	a5, a5, a0
	lbu	a1, 0(a5)
	sw	a1, 1256(s2)
	add	a6, a6, a0
	lbu	a1, 0(a6)
	sw	a1, 1512(s2)
	add	a7, a7, a0
	lbu	a1, 0(a7)
	sw	a1, 1260(s2)
	add	t0, t0, a0
	lbu	a1, 0(t0)
	sw	a1, 1516(s2)
	add	t1, t1, a0
	lbu	a1, 0(t1)
	sw	a1, 1264(s2)
	add	t2, t2, a0
	lbu	a1, 0(t2)
	sw	a1, 1520(s2)
	add	t3, t3, a0
	lbu	a1, 0(t3)
	sw	a1, 1268(s2)
	add	t4, t4, a0
	lbu	a1, 0(t4)
	sw	a1, 1524(s2)
	add	t5, t5, a0
	lbu	a1, 0(t5)
	sw	a1, 1272(s2)
	add	t6, t6, a0
	lbu	a1, 0(t6)
	sw	a1, 1528(s2)
	add	s1, s1, a0
	lbu	a1, 0(s1)
	sw	a1, 1276(s2)
	add	a0, s3, a0
	lbu	a0, 0(a0)
	sw	a0, 1532(s2)
	ld	s1, 240(sp)                     # 8-byte Folded Reload
	ld	s11, 288(sp)                    # 8-byte Folded Reload
.LBB0_47:                               #   in Loop: Header=BB0_30 Depth=2
	mv	a0, s2
	mv	a1, s9
	mv	a2, s4
	call	MB_Encode
	mv	s7, a0
	li	a2, 64
	mv	a1, s4
	call	FindCBP
	mv	s3, a0
	li	a0, 1
	sd	s9, 312(sp)                     # 8-byte Folded Spill
	bltu	a0, s4, .LBB0_50
# %bb.48:                               #   in Loop: Header=BB0_30 Depth=2
	bnez	s3, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_30 Depth=2
	mv	s8, s6
	li	a2, 1536
	mv	a0, s2
	li	a1, 0
	call	memset
	j	.LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_30 Depth=2
	mv	s8, s6
	mv	a0, s7
	mv	a1, s2
	mv	a2, s9
	mv	a3, s4
	call	MB_Decode
.LBB0_51:                               #   in Loop: Header=BB0_30 Depth=2
	ld	s6, 320(sp)                     # 8-byte Folded Reload
	lw	a6, 40(s6)
	addi	a5, sp, 352
	mv	a0, s1
	mv	a1, s11
	mv	a2, s2
	mv	a3, s5
	mv	s0, s5
	ld	s5, 296(sp)                     # 8-byte Folded Reload
	mv	a4, s5
	call	MB_Recon_P
	mv	s9, a0
	call	Clip
	mv	a0, s2
	call	free
	lw	a0, 40(s6)
	beqz	a0, .LBB0_55
# %bb.52:                               #   in Loop: Header=BB0_30 Depth=2
	lw	a0, 72(s6)
	addi	a5, sp, 352
	sd	a0, 0(sp)
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	mv	a1, s1
	mv	a2, s11
	mv	s11, s0
	mv	a3, s0
	mv	a4, s5
	mv	a6, s9
	ld	a7, 208(sp)                     # 8-byte Folded Reload
	call	Predict_B
	mv	s2, a0
	ld	a2, 312(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB0_56
# %bb.53:                               #   in Loop: Header=BB0_30 Depth=2
	lw	a0, 68(s6)
	slli	a0, a0, 2
	lui	a1, %hi(.L__const.CodeOneOrTwo.bquant)
	addi	a1, a1, %lo(.L__const.CodeOneOrTwo.bquant)
	add	a0, a1, a0
	lw	a0, 0(a0)
	mulw	a0, a0, a2
	li	a1, 128
	blt	a0, a1, .LBB0_57
# %bb.54:                               #   in Loop: Header=BB0_30 Depth=2
	li	s1, 31
	mv	s5, s11
	li	a1, 4
	mv	s6, s8
	blt	a0, a1, .LBB0_58
	j	.LBB0_59
.LBB0_55:                               #   in Loop: Header=BB0_30 Depth=2
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a0, 0(a0)
	call	ZeroVec
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 184(sp)                     # 8-byte Folded Reload
	ld	s11, 216(sp)                    # 8-byte Folded Reload
	mv	s6, s8
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	or	a0, s3, a0
	sext.w	s2, s10
	beqz	a0, .LBB0_68
	j	.LBB0_75
.LBB0_56:                               #   in Loop: Header=BB0_30 Depth=2
	li	s1, 0
	mv	s6, s8
	mv	s5, s11
	j	.LBB0_59
.LBB0_57:                               #   in Loop: Header=BB0_30 Depth=2
	sraiw	a1, a0, 31
	srliw	a1, a1, 30
	add	a1, a0, a1
	sraiw	s1, a1, 2
	mv	s5, s11
	li	a1, 4
	mv	s6, s8
	bge	a0, a1, .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_30 Depth=2
	li	s1, 1
.LBB0_59:                               #   in Loop: Header=BB0_30 Depth=2
	mv	a0, s2
	mv	a1, s1
	li	a2, 0
	call	MB_Encode
	mv	s11, a0
	li	a2, 64
	li	a1, 0
	call	FindCBP
	sd	a0, 304(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_30 Depth=2
	mv	a0, s11
	mv	a1, s2
	mv	a2, s1
	li	a3, 0
	call	MB_Decode
	j	.LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_30 Depth=2
	li	a2, 1536
	mv	a0, s2
	li	a1, 0
	call	memset
.LBB0_62:                               #   in Loop: Header=BB0_30 Depth=2
	ld	s1, 320(sp)                     # 8-byte Folded Reload
	lw	a0, 72(s1)
	addi	a5, sp, 352
	sd	a0, 0(sp)
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	mv	a1, s2
	ld	a2, 288(sp)                     # 8-byte Folded Reload
	mv	a3, s5
	ld	a4, 296(sp)                     # 8-byte Folded Reload
	mv	a6, s9
	ld	a7, 208(sp)                     # 8-byte Folded Reload
	call	MB_Recon_B
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	call	Clip
	li	a0, 2
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 184(sp)                     # 8-byte Folded Reload
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	bnez	a1, .LBB0_67
# %bb.63:                               #   in Loop: Header=BB0_30 Depth=2
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a0, 0(a0)
	lw	a1, 0(a0)
	bnez	a1, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_30 Depth=2
	lw	a0, 4(a0)
	beqz	a0, .LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_30 Depth=2
	li	a0, 1
.LBB0_66:                               #   in Loop: Header=BB0_30 Depth=2
	ld	s1, 320(sp)                     # 8-byte Folded Reload
.LBB0_67:                               #   in Loop: Header=BB0_30 Depth=2
	sw	a0, 64(s1)
	mv	a0, s2
	call	free
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	or	a0, s3, a0
	sext.w	s2, s10
	bnez	a0, .LBB0_75
.LBB0_68:                               #   in Loop: Header=BB0_30 Depth=2
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	addi	a1, sp, 328
	call	EqualVec
	beqz	a0, .LBB0_75
# %bb.69:                               #   in Loop: Header=BB0_30 Depth=2
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a0, 0(a0)
	addi	a1, sp, 328
	call	EqualVec
	li	a1, 1
	bltu	a1, s4, .LBB0_75
# %bb.70:                               #   in Loop: Header=BB0_30 Depth=2
	beqz	a0, .LBB0_75
# %bb.71:                               #   in Loop: Header=BB0_30 Depth=2
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	li	a0, 1
	ld	s1, 248(sp)                     # 8-byte Folded Reload
	ld	s10, 320(sp)                    # 8-byte Folded Reload
	bne	s4, a0, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_30 Depth=2
	sw	zero, 48(s10)
	sd	s3, 312(sp)                     # 8-byte Folded Spill
.LBB0_73:                               #   in Loop: Header=BB0_30 Depth=2
	lui	a0, %hi(syntax_arith_coding)
	lw	a0, %lo(syntax_arith_coding)(a0)
	beqz	a0, .LBB0_106
# %bb.74:                               #   in Loop: Header=BB0_30 Depth=2
	li	a1, 1
	li	a0, 0
	li	a2, 0
	li	a3, 0
	mv	a4, s10
	mv	a5, s5
	call	Count_sac_BitsMB
	ld	s4, 272(sp)                     # 8-byte Folded Reload
	lw	a0, 40(s10)
	bnez	a0, .LBB0_103
	j	.LBB0_104
.LBB0_75:                               #   in Loop: Header=BB0_30 Depth=2
	lui	a0, %hi(syntax_arith_coding)
	lw	a0, %lo(syntax_arith_coding)(a0)
	addiw	s1, s4, -3
	beqz	a0, .LBB0_79
# %bb.76:                               #   in Loop: Header=BB0_30 Depth=2
	mv	a0, s4
	li	a1, 0
	mv	a2, s3
	ld	s10, 304(sp)                    # 8-byte Folded Reload
	mv	a3, s10
	ld	s8, 320(sp)                     # 8-byte Folded Reload
	mv	a4, s8
	mv	a5, s5
	call	Count_sac_BitsMB
	li	a0, 1
	bgeu	a0, s4, .LBB0_82
# %bb.77:                               #   in Loop: Header=BB0_30 Depth=2
	li	a0, 2
	bne	s4, a0, .LBB0_84
# %bb.78:                               #   in Loop: Header=BB0_30 Depth=2
	lw	a0, 48(s5)
	addi	a0, a0, 1
	sw	a0, 48(s5)
	addi	a0, sp, 352
	li	a4, 2
	mv	a1, s5
	mv	a2, s2
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	j	.LBB0_86
.LBB0_79:                               #   in Loop: Header=BB0_30 Depth=2
	mv	a0, s4
	li	a1, 0
	mv	a2, s3
	ld	s10, 304(sp)                    # 8-byte Folded Reload
	mv	a3, s10
	ld	s8, 320(sp)                     # 8-byte Folded Reload
	mv	a4, s8
	mv	a5, s5
	call	CountBitsMB
	li	a0, 1
	bgeu	a0, s4, .LBB0_83
# %bb.80:                               #   in Loop: Header=BB0_30 Depth=2
	li	a0, 2
	bne	s4, a0, .LBB0_93
# %bb.81:                               #   in Loop: Header=BB0_30 Depth=2
	lw	a0, 48(s5)
	addi	a0, a0, 1
	sw	a0, 48(s5)
	addi	a0, sp, 352
	li	a4, 2
	mv	a1, s5
	mv	a2, s2
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	j	.LBB0_95
.LBB0_82:                               #   in Loop: Header=BB0_30 Depth=2
	lw	a0, 44(s5)
	addi	a0, a0, 1
	sw	a0, 44(s5)
	addi	a0, sp, 352
	mv	a1, s5
	mv	a2, s2
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	mv	a4, s4
	ld	a5, 120(sp)                     # 8-byte Folded Reload
	mv	a6, s8
	j	.LBB0_87
.LBB0_83:                               #   in Loop: Header=BB0_30 Depth=2
	lw	a0, 44(s5)
	addi	a0, a0, 1
	sw	a0, 44(s5)
	addi	a0, sp, 352
	mv	a1, s5
	mv	a2, s2
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	mv	a4, s4
	ld	a5, 120(sp)                     # 8-byte Folded Reload
	mv	a6, s8
	j	.LBB0_96
.LBB0_84:                               #   in Loop: Header=BB0_30 Depth=2
	lw	a0, 52(s5)
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	lw	a1, 40(a1)
	addi	a0, a0, 1
	sw	a0, 52(s5)
	beqz	a1, .LBB0_88
# %bb.85:                               #   in Loop: Header=BB0_30 Depth=2
	addi	a0, sp, 352
	mv	a1, s5
	mv	a2, s2
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	mv	a4, s4
.LBB0_86:                               #   in Loop: Header=BB0_30 Depth=2
	ld	a5, 120(sp)                     # 8-byte Folded Reload
	ld	a6, 320(sp)                     # 8-byte Folded Reload
.LBB0_87:                               #   in Loop: Header=BB0_30 Depth=2
	call	Count_sac_BitsVectors
.LBB0_88:                               #   in Loop: Header=BB0_30 Depth=2
	li	a0, 2
	bltu	s1, a0, .LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_30 Depth=2
	beqz	s3, .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_30 Depth=2
	li	a4, 64
	mv	a0, s7
	mv	a1, s4
	mv	a2, s3
	mv	a3, s5
	call	Count_sac_BitsCoeff
.LBB0_91:                               #   in Loop: Header=BB0_30 Depth=2
	beqz	s10, .LBB0_102
# %bb.92:                               #   in Loop: Header=BB0_30 Depth=2
	li	a4, 64
	mv	a0, s11
	li	a1, 0
	mv	a2, s10
	mv	a3, s5
	call	Count_sac_BitsCoeff
	j	.LBB0_102
.LBB0_93:                               #   in Loop: Header=BB0_30 Depth=2
	lw	a0, 52(s5)
	ld	a1, 320(sp)                     # 8-byte Folded Reload
	lw	a1, 40(a1)
	addi	a0, a0, 1
	sw	a0, 52(s5)
	beqz	a1, .LBB0_97
# %bb.94:                               #   in Loop: Header=BB0_30 Depth=2
	addi	a0, sp, 352
	mv	a1, s5
	mv	a2, s2
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	mv	a4, s4
.LBB0_95:                               #   in Loop: Header=BB0_30 Depth=2
	ld	a5, 120(sp)                     # 8-byte Folded Reload
	ld	a6, 320(sp)                     # 8-byte Folded Reload
.LBB0_96:                               #   in Loop: Header=BB0_30 Depth=2
	call	CountBitsVectors
.LBB0_97:                               #   in Loop: Header=BB0_30 Depth=2
	li	a0, 2
	bltu	s1, a0, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_30 Depth=2
	beqz	s3, .LBB0_100
.LBB0_99:                               #   in Loop: Header=BB0_30 Depth=2
	li	a4, 64
	mv	a0, s7
	mv	a1, s4
	mv	a2, s3
	mv	a3, s5
	call	CountBitsCoeff
.LBB0_100:                              #   in Loop: Header=BB0_30 Depth=2
	beqz	s10, .LBB0_102
# %bb.101:                              #   in Loop: Header=BB0_30 Depth=2
	li	a4, 64
	mv	a0, s11
	li	a1, 0
	mv	a2, s10
	mv	a3, s5
	call	CountBitsCoeff
.LBB0_102:                              #   in Loop: Header=BB0_30 Depth=2
	ld	s3, 312(sp)                     # 8-byte Folded Reload
	ld	s4, 272(sp)                     # 8-byte Folded Reload
	ld	s1, 248(sp)                     # 8-byte Folded Reload
	ld	s10, 320(sp)                    # 8-byte Folded Reload
	lw	a0, 40(s10)
	beqz	a0, .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_30 Depth=2
	mv	a0, s2
	mv	a1, s1
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	call	ReconImage
.LBB0_104:                              #   in Loop: Header=BB0_30 Depth=2
	mv	a0, s2
	mv	a1, s1
	mv	a2, s9
	ld	a3, 144(sp)                     # 8-byte Folded Reload
	call	ReconImage
	mv	a0, s9
	call	free
	mv	a0, s7
	call	free
	lw	a0, 40(s10)
	beqz	a0, .LBB0_29
# %bb.105:                              #   in Loop: Header=BB0_30 Depth=2
	mv	a0, s11
	call	free
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	call	free
	j	.LBB0_29
.LBB0_106:                              #   in Loop: Header=BB0_30 Depth=2
	li	a1, 1
	li	a2, 0
	li	a3, 0
	mv	a4, s10
	mv	a5, s5
	call	CountBitsMB
	ld	s4, 272(sp)                     # 8-byte Folded Reload
	lw	a0, 40(s10)
	bnez	a0, .LBB0_103
	j	.LBB0_104
.LBB0_107:
	fcvt.s.w	fa5, s4
	fdiv.s	fa5, fs0, fa5
	j	.LBB0_110
.LBB0_108:
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	lui	a0, %hi(lines)
	lw	s1, %lo(lines)(a0)
	li	a0, 16
	blt	s1, a0, .LBB0_109
	j	.LBB0_15
.LBB0_109:
	lui	a0, 523264
	fmv.w.x	fa5, a0
.LBB0_110:
	fsw	fa5, 76(s0)
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	call	free
	lui	a0, %hi(mv_outside_frame)
	lw	a0, %lo(mv_outside_frame)(a0)
	beqz	a0, .LBB0_112
# %bb.111:
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	call	free
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	call	FreeImage
	lui	a0, %hi(lines)
	lw	s1, %lo(lines)(a0)
.LBB0_112:
	bltz	s1, .LBB0_119
# %bb.113:
	li	a1, 0
	lui	a0, %hi(pels)
	lw	a0, %lo(pels)(a0)
	addi	s11, sp, 352
	li	a3, -16
	lui	s9, 64
	lui	s3, 51
	lui	s10, 38
	lui	s2, 26
	lui	s0, 13
	j	.LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_115 Depth=1
	addi	a1, a4, 1
	sraiw	a2, s1, 4
	addi	s11, s11, 720
	bge	a4, a2, .LBB0_119
.LBB0_115:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_117 Depth 2
	mv	a4, a1
	blt	a0, a3, .LBB0_114
# %bb.116:                              # %.preheader
                                        #   in Loop: Header=BB0_115 Depth=1
	sd	a4, 312(sp)                     # 8-byte Folded Spill
	li	s1, -1
	sd	s11, 320(sp)                    # 8-byte Folded Spill
.LBB0_117:                              #   Parent Loop BB0_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s4, s11, s9
	add	s5, s11, s3
	ld	a0, 0(s11)
	add	s6, s11, s10
	add	s7, s11, s2
	add	s8, s11, s0
	call	free
	ld	a0, -688(s8)
	call	free
	ld	a0, -1376(s7)
	call	free
	ld	a0, 2032(s6)
	call	free
	ld	a0, 1344(s5)
	call	free
	ld	a0, 656(s4)
	call	free
	lui	a0, %hi(pels)
	lw	a0, %lo(pels)(a0)
	srai	a1, a0, 4
	addi	s1, s1, 1
	addi	s11, s11, 8
	bge	a1, s1, .LBB0_117
# %bb.118:                              #   in Loop: Header=BB0_115 Depth=1
	lui	a1, %hi(lines)
	lw	s1, %lo(lines)(a1)
	ld	s11, 320(sp)                    # 8-byte Folded Reload
	li	a3, -16
	ld	a4, 312(sp)                     # 8-byte Folded Reload
	j	.LBB0_114
.LBB0_119:
	lui	a0, 77
	addiw	a0, a0, -1600
	add	sp, sp, a0
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
	addi	sp, sp, 2032
	ret
.LBB0_120:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	li	a1, 37
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.Lfunc_end0:
	.size	CodeOneOrTwo, .Lfunc_end0-CodeOneOrTwo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	MakeEdgeImage                   # -- Begin function MakeEdgeImage
	.p2align	2
	.type	MakeEdgeImage,@function
MakeEdgeImage:                          # @MakeEdgeImage
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 56(sp)                      # 8-byte Folded Spill
	sd	s4, 48(sp)                      # 8-byte Folded Spill
	sd	s5, 40(sp)                      # 8-byte Folded Spill
	sd	s6, 32(sp)                      # 8-byte Folded Spill
	sd	s7, 24(sp)                      # 8-byte Folded Spill
	sd	s8, 16(sp)                      # 8-byte Folded Spill
	sd	s9, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a4
	mv	s4, a3
	mv	s3, a2
	mv	s1, a1
	mv	s2, a0
	blez	a3, .LBB1_10
# %bb.1:
	slliw	s8, s0, 1
	addw	s7, s8, s3
	mv	s9, s4
	mv	s5, s2
	mv	s6, s1
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	mv	a0, s6
	mv	a1, s5
	mv	a2, s3
	call	memcpy
	add	s6, s6, s7
	addiw	s9, s9, -1
	add	s5, s5, s3
	bnez	s9, .LBB1_2
# %bb.3:
	blez	s4, .LBB1_10
# %bb.4:
	blez	s0, .LBB1_21
# %bb.5:
	li	a0, 0
	li	a1, 0
	addi	a2, s1, -1
	add	a3, s1, s3
	add	a4, s3, s0
	mv	a5, s2
.LBB1_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	mul	a6, s7, a0
	add	a6, a4, a6
	add	a7, s1, a6
	add	a6, a5, s3
	mv	t0, a2
	mv	t1, a3
.LBB1_7:                                #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t2, 0(a5)
	sb	t2, 0(t0)
	lbu	t2, -1(a6)
	sb	t2, 0(t1)
	addi	t1, t1, 1
	addi	t0, t0, -1
	bne	t1, a7, .LBB1_7
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=1
	add	a2, a2, s7
	addiw	a1, a1, 1
	add	a3, a3, s7
	addi	a0, a0, 1
	mv	a5, a6
	bne	a1, s4, .LBB1_6
# %bb.9:
	bgtz	s0, .LBB1_11
	j	.LBB1_21
.LBB1_10:
	slliw	s8, s0, 1
	addw	s7, s8, s3
	blez	s0, .LBB1_21
.LBB1_11:
	addi	a4, s4, -1
	mulw	a0, a4, s3
	add	a0, s2, a0
	blez	s3, .LBB1_17
# %bb.12:
	li	a1, 0
	li	a2, 0
	neg	a3, s7
	mulw	a4, s7, a4
	add	a6, s7, a4
	add	a4, s1, a6
	add	a5, s1, a3
	add	a6, a6, s3
.LBB1_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
	mul	a7, s7, a1
	add	a7, a6, a7
	add	a7, s1, a7
	mv	t0, s2
	mv	t1, a5
	mv	t2, a0
	mv	t3, a4
.LBB1_14:                               #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t4, 0(t0)
	sb	t4, 0(t1)
	lbu	t4, 0(t2)
	sb	t4, 0(t3)
	addi	t3, t3, 1
	addi	t2, t2, 1
	addi	t1, t1, 1
	addi	t0, t0, 1
	bne	t3, a7, .LBB1_14
# %bb.15:                               #   in Loop: Header=BB1_13 Depth=1
	addiw	a2, a2, 1
	add	a4, a4, s7
	add	a5, a5, a3
	addi	a1, a1, 1
	bne	a2, s0, .LBB1_13
# %bb.16:
	blez	s0, .LBB1_21
.LBB1_17:
	li	a1, 0
	li	a2, 0
	add	a3, s2, s3
	add	a4, a0, s3
	mulw	a7, s7, s4
	slli	a5, s0, 32
	srli	t1, a5, 32
	add	a5, s3, a7
	add	s8, s3, s8
	sub	a6, s3, s7
	addi	a7, a7, -1
	not	t0, s7
	add	t1, a5, t1
.LBB1_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	mul	t2, s8, a1
	add	t2, t1, t2
	mv	t3, t0
	mv	t4, a7
	mv	t5, a6
	mv	t6, a5
.LBB1_19:                               #   Parent Loop BB1_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	s3, 0(s2)
	add	s4, s1, t3
	sb	s3, 0(s4)
	lbu	s3, -1(a3)
	add	s4, s1, t5
	sb	s3, 0(s4)
	lbu	s3, 0(a0)
	add	s4, s1, t4
	sb	s3, 0(s4)
	lbu	s3, -1(a4)
	add	s4, s1, t6
	sb	s3, 0(s4)
	addi	t6, t6, 1
	addi	t5, t5, 1
	addi	t4, t4, -1
	addi	t3, t3, -1
	bne	t6, t2, .LBB1_19
# %bb.20:                               #   in Loop: Header=BB1_18 Depth=1
	addiw	a2, a2, 1
	add	a5, a5, s8
	sub	a6, a6, s7
	add	a7, a7, s8
	sub	t0, t0, s7
	addi	a1, a1, 1
	bne	a2, s0, .LBB1_18
.LBB1_21:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	ld	s8, 16(sp)                      # 8-byte Folded Reload
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end1:
	.size	MakeEdgeImage, .Lfunc_end1-MakeEdgeImage
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InterpolateImage                # -- Begin function InterpolateImage
	.p2align	2
	.type	InterpolateImage,@function
InterpolateImage:                       # @InterpolateImage
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s2, a2
	mv	s0, a1
	mv	s1, a0
	mul	a0, a1, a2
	slli	a0, a0, 2
	call	malloc
	li	a4, 2
	slliw	a2, s0, 1
	slliw	a1, s0, 2
	blt	s2, a4, .LBB2_6
# %bb.1:
	li	a3, 1
	addiw	s2, s2, -1
	bge	a3, s0, .LBB2_7
# %bb.2:
	li	a6, 0
	addi	a7, s1, 1
	addiw	t0, a2, -2
	mv	a5, s1
	mv	a3, a0
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	li	t1, 0
	mv	t2, a7
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, -1(t2)
	lbu	t4, 0(t2)
	add	t5, a3, t1
	sb	t3, 0(t5)
	add	t4, t4, t3
	addi	t6, t4, 1
	add	s1, t2, s0
	lbu	s3, -1(s1)
	srli	t6, t6, 1
	sb	t6, 1(t5)
	addi	t6, t5, 1
	add	t3, t3, s3
	addi	t3, t3, 1
	srli	t3, t3, 1
	lbu	s1, 0(s1)
	add	t5, t5, a2
	sb	t3, 0(t5)
	add	t4, t4, s3
	add	t4, t4, s1
	addi	t4, t4, 2
	srli	t4, t4, 2
	add	t6, t6, a2
	sb	t4, 0(t6)
	addiw	t1, t1, 2
	addi	t2, t2, 1
	bne	t1, t0, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	add	a5, a5, s0
	lbu	t1, -1(a5)
	add	t2, a5, s0
	lbu	t2, -1(t2)
	add	t3, a3, a2
	sb	t1, -2(t3)
	sb	t1, -1(t3)
	add	t1, t1, t2
	addi	t1, t1, 1
	srli	t1, t1, 1
	add	t3, t3, a2
	sb	t1, -2(t3)
	sb	t1, -1(t3)
	add	a3, a3, a1
	addiw	a6, a6, 1
	add	a7, a7, s0
	bne	a6, s2, .LBB2_3
	j	.LBB2_9
.LBB2_6:
	mv	a3, a0
	mv	a5, s1
	j	.LBB2_9
.LBB2_7:
	add	a3, s1, s0
	lbu	t1, -1(a3)
	slli	a6, s0, 1
	addi	a6, a6, -1
	addi	a7, a2, -1
	slli	t0, a2, 1
	addi	t0, t0, -2
	mv	a3, a0
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	add	a5, s1, s0
	add	s1, s1, a6
	lbu	t2, 0(s1)
	add	t3, a3, a7
	sb	t1, -1(t3)
	sb	t1, 0(t3)
	add	t1, t1, t2
	addi	t1, t1, 1
	slli	t1, t1, 48
	srli	t1, t1, 49
	add	t3, a3, t0
	sb	t1, 0(t3)
	sb	t1, 1(t3)
	addiw	s2, s2, -1
	add	a3, a3, a1
	mv	t1, t2
	mv	s1, a5
	bnez	s2, .LBB2_8
.LBB2_9:
	add	a6, a3, a2
	blt	s0, a4, .LBB2_12
# %bb.10:
	li	a4, 0
	addi	a7, a5, 1
	addiw	a2, a2, -2
.LBB2_11:                               # =>This Inner Loop Header: Depth=1
	lbu	t0, -1(a7)
	lbu	t1, 0(a7)
	add	t2, a3, a4
	sb	t0, 0(t2)
	add	t1, t0, t1
	addi	t1, t1, 1
	srli	t1, t1, 1
	sb	t1, 1(t2)
	add	t2, a6, a4
	sb	t0, 0(t2)
	sb	t1, 1(t2)
	addiw	a4, a4, 2
	addi	a7, a7, 1
	bne	a4, a2, .LBB2_11
.LBB2_12:
	add	a5, a5, s0
	lbu	a2, -1(a5)
	sb	a2, -2(a6)
	sb	a2, -1(a6)
	add	a1, a3, a1
	sb	a2, -2(a1)
	sb	a2, -1(a1)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	InterpolateImage, .Lfunc_end2-InterpolateImage
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	MotionEstimatePicture           # -- Begin function MotionEstimatePicture
	.p2align	2
	.type	MotionEstimatePicture,@function
MotionEstimatePicture:                  # @MotionEstimatePicture
# %bb.0:
	addi	sp, sp, -1360
	sd	ra, 1352(sp)                    # 8-byte Folded Spill
	sd	s0, 1344(sp)                    # 8-byte Folded Spill
	sd	s1, 1336(sp)                    # 8-byte Folded Spill
	sd	s2, 1328(sp)                    # 8-byte Folded Spill
	sd	s3, 1320(sp)                    # 8-byte Folded Spill
	sd	s4, 1312(sp)                    # 8-byte Folded Spill
	sd	s5, 1304(sp)                    # 8-byte Folded Spill
	sd	s6, 1296(sp)                    # 8-byte Folded Spill
	sd	s7, 1288(sp)                    # 8-byte Folded Spill
	sd	s8, 1280(sp)                    # 8-byte Folded Spill
	sd	s9, 1272(sp)                    # 8-byte Folded Spill
	sd	s10, 1264(sp)                   # 8-byte Folded Spill
	sd	s11, 1256(sp)                   # 8-byte Folded Spill
	lui	a6, %hi(lines)
	lw	a6, %lo(lines)(a6)
	li	a7, 16
	sd	a4, 176(sp)                     # 8-byte Folded Spill
	sd	a3, 96(sp)                      # 8-byte Folded Spill
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	blt	a6, a7, .LBB3_28
# %bb.1:
	mv	s4, a0
	li	a0, 0
	li	s5, 728
	lui	a1, 524288
	addiw	a1, a1, -1
	sd	a1, 192(sp)                     # 8-byte Folded Spill
	lui	a1, 64
	addiw	s2, a1, 1384
	lui	a1, 52
	addiw	s8, a1, -2024
	lui	a1, 39
	addiw	s7, a1, -1336
	lui	a1, 26
	addiw	s11, a1, -648
	lui	a1, 13
	addiw	s9, a1, 40
	sd	a5, 16(sp)                      # 8-byte Folded Spill
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 80(sp)                      # 8-byte Folded Spill
	j	.LBB3_4
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	lui	a0, %hi(lines)
	lw	a6, %lo(lines)(a0)
	li	a7, 16
	ld	a5, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 64(sp)                      # 8-byte Folded Reload
	ld	s2, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s11, 32(sp)                     # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	sraiw	a0, a6, 31
	srliw	a0, a0, 28
	add	a0, a6, a0
	sraiw	a1, a0, 4
	addi	s2, s2, 720
	addi	s8, s8, 720
	addi	s7, s7, 720
	addi	s11, s11, 720
	addi	s9, s9, 720
	addi	s5, s5, 720
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	mv	a0, a3
	bge	a3, a1, .LBB3_28
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
	beqz	a5, .LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	remw	a1, a0, a5
	seqz	a1, a1
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	j	.LBB3_7
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	sd	zero, 104(sp)                   # 8-byte Folded Spill
.LBB3_7:                                #   in Loop: Header=BB3_4 Depth=1
	lui	a1, %hi(pels)
	lw	a1, %lo(pels)(a1)
	addi	a3, a0, 1
	sd	a3, 112(sp)                     # 8-byte Folded Spill
	blt	a1, a7, .LBB3_3
# %bb.8:                                #   in Loop: Header=BB3_4 Depth=1
	li	s10, 0
	li	a2, 0
	slliw	s1, a0, 4
	li	s0, 1
	sd	s5, 64(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s11, 32(sp)                     # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 48(sp)                      # 8-byte Folded Spill
	sd	s2, 56(sp)                      # 8-byte Folded Spill
	sd	s1, 184(sp)                     # 8-byte Folded Spill
	j	.LBB3_12
.LBB3_9:                                #   in Loop: Header=BB3_12 Depth=2
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	call	ZeroVec
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	call	ZeroVec
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	call	ZeroVec
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	ld	a0, 0(a0)
	call	ZeroVec
	ld	a0, 0(s3)
	call	ZeroVec
.LBB3_10:                               #   in Loop: Header=BB3_12 Depth=2
	ld	a2, 168(sp)                     # 8-byte Folded Reload
.LBB3_11:                               #   in Loop: Header=BB3_12 Depth=2
	lui	a0, %hi(pels)
	lw	a0, %lo(pels)(a0)
	addi	a2, a2, 1
	slli	a1, a0, 1
	srli	a1, a1, 60
	add	a0, a0, a1
	sraiw	a0, a0, 4
	addiw	s10, s10, 16
	addiw	s0, s0, 1
	addi	s2, s2, 8
	addi	s8, s8, 8
	addi	s7, s7, 8
	addi	s11, s11, 8
	addi	s9, s9, 8
	addi	s5, s5, 8
	bge	a2, a0, .LBB3_2
.LBB3_12:                               #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	a2, 168(sp)                     # 8-byte Folded Spill
	li	a0, 24
	call	malloc
	mv	s6, a0
	ld	s1, 176(sp)                     # 8-byte Folded Reload
	add	a0, s1, s5
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	sd	s6, 0(a0)
	li	a0, 24
	call	malloc
	add	a1, s1, s9
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	sd	a0, 0(a1)
	li	a0, 24
	call	malloc
	add	a1, s1, s11
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	sd	a0, 0(a1)
	li	a0, 24
	call	malloc
	add	a1, s1, s7
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	sd	a0, 0(a1)
	li	a0, 24
	call	malloc
	add	a1, s1, s8
	sd	a0, 160(sp)                     # 8-byte Folded Spill
	mv	s3, a1
	sd	a0, 0(a1)
	li	a0, 24
	call	malloc
	add	a1, s1, s2
	sd	a0, 0(a1)
	lw	a2, 112(sp)                     # 8-byte Folded Reload
	addi	a3, sp, 1252
	addi	a4, sp, 1248
	mv	a0, s1
	mv	a1, s0
	li	a5, 0
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	li	a7, 0
	call	FindPMV
	lui	a0, %hi(long_vectors)
	lw	a0, %lo(long_vectors)(a0)
	beqz	a0, .LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=2
	lw	a0, 1252(sp)
	lw	a1, 1248(sp)
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a4, a0, 1
	srliw	a0, a1, 31
	add	a0, a1, a0
	sraiw	a5, a0, 1
	j	.LBB3_15
.LBB3_14:                               #   in Loop: Header=BB3_12 Depth=2
	li	a5, 0
	li	a4, 0
.LBB3_15:                               #   in Loop: Header=BB3_12 Depth=2
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	addi	a0, sp, 220
	sd	a0, 0(sp)
	mv	a0, s4
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	mv	a2, s10
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	ld	a6, 96(sp)                      # 8-byte Folded Reload
	ld	a7, 176(sp)                     # 8-byte Folded Reload
	call	MotionEstimation
	lui	a0, %hi(advanced)
	lw	a1, %lo(advanced)(a0)
	lw	a0, 16(s6)
	beqz	a1, .LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_12 Depth=2
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	lw	a1, 16(a1)
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	lw	a2, 16(a2)
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	lw	a3, 16(a3)
	ld	a4, 160(sp)                     # 8-byte Folded Reload
	lw	a4, 16(a4)
	add	a1, a2, a1
	add	a3, a3, a4
	addw	a1, a1, a3
	sd	a1, 192(sp)                     # 8-byte Folded Spill
.LBB3_17:                               #   in Loop: Header=BB3_12 Depth=2
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mv	a3, a1
	blt	a1, a0, .LBB3_19
# %bb.18:                               #   in Loop: Header=BB3_12 Depth=2
	mv	a3, a0
.LBB3_19:                               #   in Loop: Header=BB3_12 Depth=2
	mv	a0, s4
	mv	a1, s10
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	mv	a2, s1
	call	ChooseMode
	sw	a0, 20(s6)
	li	a1, 3
	beq	a0, a1, .LBB3_9
# %bb.20:                               #   in Loop: Header=BB3_12 Depth=2
	addi	a3, sp, 224
	mv	a0, s10
	mv	a1, s1
	mv	a2, s4
	call	FindMB
	addi	a4, sp, 224
	li	a5, 16
	mv	a0, s10
	mv	a1, s1
	mv	a2, s6
	ld	s4, 72(sp)                      # 8-byte Folded Reload
	mv	a3, s4
	li	a6, 0
	call	FindHalfPel
	lui	a0, %hi(advanced)
	lw	a0, %lo(advanced)(a0)
	lw	a3, 16(s6)
	beqz	a0, .LBB3_24
# %bb.21:                               #   in Loop: Header=BB3_12 Depth=2
	addi	a4, sp, 224
	li	a5, 8
	mv	a0, s10
	mv	a1, s1
	ld	a2, 208(sp)                     # 8-byte Folded Reload
	sd	a3, 144(sp)                     # 8-byte Folded Spill
	mv	a3, s4
	li	a6, 0
	call	FindHalfPel
	li	a5, 8
	li	a6, 1
	mv	a0, s10
	mv	a1, s1
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	mv	a3, s4
	addi	a4, sp, 256
	call	FindHalfPel
	li	a5, 8
	li	a6, 2
	mv	a0, s10
	mv	a1, s1
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	mv	a2, s3
	mv	a3, s4
	addi	a4, sp, 736
	call	FindHalfPel
	li	a5, 8
	li	a6, 3
	mv	a0, s10
	mv	a1, s1
	ld	s1, 160(sp)                     # 8-byte Folded Reload
	mv	a2, s1
	mv	a3, s4
	addi	a4, sp, 768
	call	FindHalfPel
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	lw	a0, 16(a0)
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	lw	a1, 16(a1)
	lw	a2, 16(s3)
	lw	a3, 16(s1)
	add	a1, a0, a1
	lw	a0, 220(sp)
	add	a2, a2, a3
	ld	a3, 144(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	addiw	a1, a1, 200
	sd	a1, 192(sp)                     # 8-byte Folded Spill
	bge	a0, a1, .LBB3_26
# %bb.22:                               #   in Loop: Header=BB3_12 Depth=2
	bge	a0, a3, .LBB3_26
# %bb.23:                               #   in Loop: Header=BB3_12 Depth=2
	sw	zero, 12(s6)
	sw	zero, 8(s6)
	sw	zero, 4(s6)
	sw	zero, 0(s6)
	j	.LBB3_10
.LBB3_24:                               #   in Loop: Header=BB3_12 Depth=2
	lw	a0, 220(sp)
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	bge	a0, a3, .LBB3_11
# %bb.25:                               #   in Loop: Header=BB3_12 Depth=2
	sw	zero, 12(s6)
	sw	zero, 8(s6)
	sw	zero, 4(s6)
	sw	zero, 0(s6)
	j	.LBB3_11
.LBB3_26:                               #   in Loop: Header=BB3_12 Depth=2
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	bge	a0, a3, .LBB3_11
# %bb.27:                               #   in Loop: Header=BB3_12 Depth=2
	li	a0, 2
	sw	a0, 20(s6)
	j	.LBB3_11
.LBB3_28:
	ld	ra, 1352(sp)                    # 8-byte Folded Reload
	ld	s0, 1344(sp)                    # 8-byte Folded Reload
	ld	s1, 1336(sp)                    # 8-byte Folded Reload
	ld	s2, 1328(sp)                    # 8-byte Folded Reload
	ld	s3, 1320(sp)                    # 8-byte Folded Reload
	ld	s4, 1312(sp)                    # 8-byte Folded Reload
	ld	s5, 1304(sp)                    # 8-byte Folded Reload
	ld	s6, 1296(sp)                    # 8-byte Folded Reload
	ld	s7, 1288(sp)                    # 8-byte Folded Reload
	ld	s8, 1280(sp)                    # 8-byte Folded Reload
	ld	s9, 1272(sp)                    # 8-byte Folded Reload
	ld	s10, 1264(sp)                   # 8-byte Folded Reload
	ld	s11, 1256(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1360
	ret
.Lfunc_end3:
	.size	MotionEstimatePicture, .Lfunc_end3-MotionEstimatePicture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FillLumBlock                    # -- Begin function FillLumBlock
	.p2align	2
	.type	FillLumBlock,@function
FillLumBlock:                           # @FillLumBlock
# %bb.0:
	addi	sp, sp, -48
	sd	s0, 40(sp)                      # 8-byte Folded Spill
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 8(sp)                       # 8-byte Folded Spill
	sd	s5, 0(sp)                       # 8-byte Folded Spill
	ld	a2, 0(a2)
	add	a0, a2, a0
	addi	a2, a0, 1
	addi	a4, a0, 2
	addi	a5, a0, 3
	addi	a6, a0, 4
	addi	a7, a0, 5
	addi	t0, a0, 6
	addi	t1, a0, 7
	addi	t2, a0, 8
	addi	t3, a0, 9
	addi	t4, a0, 10
	addi	t5, a0, 11
	addi	t6, a0, 12
	addi	s0, a0, 13
	addi	s1, a0, 14
	addi	s2, a0, 15
	addi	a3, a3, 32
	addi	s3, a1, 16
	lui	s4, %hi(pels)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, a0, s5
	lbu	s5, 0(s5)
	sw	s5, -32(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, a2, s5
	lbu	s5, 0(s5)
	sw	s5, -28(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, a4, s5
	lbu	s5, 0(s5)
	sw	s5, -24(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, a5, s5
	lbu	s5, 0(s5)
	sw	s5, -20(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, a6, s5
	lbu	s5, 0(s5)
	sw	s5, -16(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, a7, s5
	lbu	s5, 0(s5)
	sw	s5, -12(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, t0, s5
	lbu	s5, 0(s5)
	sw	s5, -8(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, t1, s5
	lbu	s5, 0(s5)
	sw	s5, -4(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, t2, s5
	lbu	s5, 0(s5)
	sw	s5, 0(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, t3, s5
	lbu	s5, 0(s5)
	sw	s5, 4(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, t4, s5
	lbu	s5, 0(s5)
	sw	s5, 8(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, t5, s5
	lbu	s5, 0(s5)
	sw	s5, 12(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, t6, s5
	lbu	s5, 0(s5)
	sw	s5, 16(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, s0, s5
	lbu	s5, 0(s5)
	sw	s5, 20(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, s1, s5
	lbu	s5, 0(s5)
	sw	s5, 24(a3)
	lw	s5, %lo(pels)(s4)
	mul	s5, a1, s5
	add	s5, s2, s5
	lbu	s5, 0(s5)
	sw	s5, 28(a3)
	addi	a1, a1, 1
	addi	a3, a3, 64
	bne	a1, s3, .LBB4_1
# %bb.2:
	ld	s0, 40(sp)                      # 8-byte Folded Reload
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	ld	s5, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end4:
	.size	FillLumBlock, .Lfunc_end4-FillLumBlock
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FillChromBlock                  # -- Begin function FillChromBlock
	.p2align	2
	.type	FillChromBlock,@function
FillChromBlock:                         # @FillChromBlock
# %bb.0:
	addi	sp, sp, -48
	sd	s0, 40(sp)                      # 8-byte Folded Spill
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 8(sp)                       # 8-byte Folded Spill
	sd	s5, 0(sp)                       # 8-byte Folded Spill
	ld	a4, 8(a2)
	ld	a2, 16(a2)
	srai	a5, a0, 1
	srai	a1, a1, 1
	add	a0, a4, a5
	add	a2, a2, a5
	addi	a4, a0, 1
	addi	a5, a2, 1
	addi	a6, a0, 2
	addi	a7, a2, 2
	addi	t0, a0, 3
	addi	t1, a2, 3
	addi	t2, a0, 4
	addi	t3, a2, 4
	addi	t4, a0, 5
	addi	t5, a2, 5
	addi	t6, a0, 6
	addi	s0, a2, 6
	addi	s1, a0, 7
	addi	s2, a2, 7
	addi	a3, a3, 1308
	addi	s3, a1, 8
	lui	s4, %hi(cpels)
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, a0, s5
	lbu	s5, 0(s5)
	sw	s5, -284(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, a2, s5
	lbu	s5, 0(s5)
	sw	s5, -28(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, a4, s5
	lbu	s5, 0(s5)
	sw	s5, -280(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, a5, s5
	lbu	s5, 0(s5)
	sw	s5, -24(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, a6, s5
	lbu	s5, 0(s5)
	sw	s5, -276(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, a7, s5
	lbu	s5, 0(s5)
	sw	s5, -20(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, t0, s5
	lbu	s5, 0(s5)
	sw	s5, -272(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, t1, s5
	lbu	s5, 0(s5)
	sw	s5, -16(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, t2, s5
	lbu	s5, 0(s5)
	sw	s5, -268(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, t3, s5
	lbu	s5, 0(s5)
	sw	s5, -12(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, t4, s5
	lbu	s5, 0(s5)
	sw	s5, -264(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, t5, s5
	lbu	s5, 0(s5)
	sw	s5, -8(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, t6, s5
	lbu	s5, 0(s5)
	sw	s5, -260(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, s0, s5
	lbu	s5, 0(s5)
	sw	s5, -4(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, s1, s5
	lbu	s5, 0(s5)
	sw	s5, -256(a3)
	lw	s5, %lo(cpels)(s4)
	mul	s5, a1, s5
	add	s5, s2, s5
	lbu	s5, 0(s5)
	sw	s5, 0(a3)
	addi	a1, a1, 1
	addi	a3, a3, 32
	bne	a1, s3, .LBB5_1
# %bb.2:
	ld	s0, 40(sp)                      # 8-byte Folded Reload
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	ld	s5, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end5:
	.size	FillChromBlock, .Lfunc_end5-FillChromBlock
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	MB_Encode                       # -- Begin function MB_Encode
	.p2align	2
	.type	MB_Encode,@function
MB_Encode:                              # @MB_Encode
# %bb.0:
	addi	sp, sp, -1856
	sd	ra, 1848(sp)                    # 8-byte Folded Spill
	sd	s0, 1840(sp)                    # 8-byte Folded Spill
	sd	s1, 1832(sp)                    # 8-byte Folded Spill
	sd	s2, 1824(sp)                    # 8-byte Folded Spill
	sd	s3, 1816(sp)                    # 8-byte Folded Spill
	sd	s4, 1808(sp)                    # 8-byte Folded Spill
	sd	s5, 1800(sp)                    # 8-byte Folded Spill
	mv	s0, a2
	mv	s1, a1
	mv	s3, a0
	li	a0, 1536
	call	malloc
	beqz	a0, .LBB6_2
# %bb.1:
	mv	s2, a0
	lwu	a0, 28(s3)
	lwu	a1, 24(s3)
	slli	a0, a0, 32
	lwu	a2, 20(s3)
	or	a0, a0, a1
	lwu	a1, 16(s3)
	sd	a0, 1568(sp)
	slli	a2, a2, 32
	lwu	a0, 12(s3)
	or	a1, a2, a1
	sd	a1, 1560(sp)
	lwu	a1, 8(s3)
	slli	a0, a0, 32
	lwu	a2, 4(s3)
	lwu	a3, 0(s3)
	or	a0, a0, a1
	sd	a0, 1552(sp)
	slli	a2, a2, 32
	or	a2, a2, a3
	sd	a2, 1544(sp)
	lw	a0, 64(s3)
	lw	a1, 68(s3)
	lw	a2, 72(s3)
	lw	a3, 76(s3)
	sw	a0, 1576(sp)
	sw	a1, 1580(sp)
	sw	a2, 1584(sp)
	sw	a3, 1588(sp)
	lw	a0, 80(s3)
	lw	a1, 84(s3)
	lw	a2, 88(s3)
	lw	a3, 92(s3)
	sw	a0, 1592(sp)
	sw	a1, 1596(sp)
	sw	a2, 1600(sp)
	sw	a3, 1604(sp)
	lw	a0, 156(s3)
	lw	a1, 152(s3)
	lw	a2, 148(s3)
	lw	a3, 144(s3)
	sw	a0, 1636(sp)
	sw	a1, 1632(sp)
	sw	a2, 1628(sp)
	sw	a3, 1624(sp)
	lw	a0, 140(s3)
	lw	a1, 136(s3)
	lw	a2, 132(s3)
	lw	a3, 128(s3)
	sw	a0, 1620(sp)
	sw	a1, 1616(sp)
	sw	a2, 1612(sp)
	sw	a3, 1608(sp)
	lw	a0, 220(s3)
	lw	a1, 216(s3)
	lw	a2, 212(s3)
	lw	a3, 208(s3)
	sw	a0, 1668(sp)
	sw	a1, 1664(sp)
	sw	a2, 1660(sp)
	sw	a3, 1656(sp)
	lw	a0, 204(s3)
	lw	a1, 200(s3)
	lw	a2, 196(s3)
	lw	a3, 192(s3)
	sw	a0, 1652(sp)
	sw	a1, 1648(sp)
	sw	a2, 1644(sp)
	sw	a3, 1640(sp)
	lw	a0, 284(s3)
	lw	a1, 280(s3)
	lw	a2, 276(s3)
	lw	a3, 272(s3)
	sw	a0, 1700(sp)
	sw	a1, 1696(sp)
	sw	a2, 1692(sp)
	sw	a3, 1688(sp)
	lw	a0, 268(s3)
	lw	a1, 264(s3)
	lw	a2, 260(s3)
	lw	a3, 256(s3)
	sw	a0, 1684(sp)
	sw	a1, 1680(sp)
	sw	a2, 1676(sp)
	sw	a3, 1672(sp)
	lw	a0, 348(s3)
	lw	a1, 344(s3)
	lw	a2, 340(s3)
	lw	a3, 336(s3)
	sw	a0, 1732(sp)
	sw	a1, 1728(sp)
	sw	a2, 1724(sp)
	sw	a3, 1720(sp)
	lw	a0, 332(s3)
	lw	a1, 328(s3)
	lw	a2, 324(s3)
	lw	a3, 320(s3)
	sw	a0, 1716(sp)
	sw	a1, 1712(sp)
	sw	a2, 1708(sp)
	sw	a3, 1704(sp)
	lw	a0, 412(s3)
	lw	a1, 408(s3)
	lw	a2, 404(s3)
	lw	a3, 400(s3)
	sw	a0, 1764(sp)
	sw	a1, 1760(sp)
	sw	a2, 1756(sp)
	sw	a3, 1752(sp)
	lw	a0, 396(s3)
	lw	a1, 392(s3)
	lw	a2, 388(s3)
	lw	a3, 384(s3)
	sw	a0, 1748(sp)
	sw	a1, 1744(sp)
	sw	a2, 1740(sp)
	sw	a3, 1736(sp)
	lw	a0, 476(s3)
	lw	a1, 472(s3)
	lw	a2, 468(s3)
	lw	a3, 464(s3)
	sw	a0, 1796(sp)
	sw	a1, 1792(sp)
	sw	a2, 1788(sp)
	sw	a3, 1784(sp)
	lw	a0, 460(s3)
	lw	a1, 456(s3)
	lw	a2, 452(s3)
	lw	a3, 448(s3)
	sw	a0, 1780(sp)
	sw	a1, 1776(sp)
	sw	a2, 1772(sp)
	sw	a3, 1768(sp)
	addi	a0, sp, 1544
	addi	a1, sp, 8
	call	Dct
	addi	a0, sp, 8
	mv	a1, s2
	mv	a2, s1
	mv	a3, s0
	call	Quant
	lwu	a0, 60(s3)
	lwu	a1, 56(s3)
	addi	s4, sp, 264
	slli	a0, a0, 32
	lwu	a2, 52(s3)
	or	a0, a0, a1
	lwu	a1, 48(s3)
	sd	a0, 1568(sp)
	slli	a2, a2, 32
	lwu	a0, 44(s3)
	or	a1, a2, a1
	lwu	a2, 40(s3)
	sd	a1, 1560(sp)
	slli	a0, a0, 32
	lwu	a1, 36(s3)
	or	a0, a0, a2
	lwu	a2, 32(s3)
	sd	a0, 1552(sp)
	slli	a1, a1, 32
	lw	a0, 96(s3)
	or	a1, a1, a2
	sd	a1, 1544(sp)
	lw	a1, 100(s3)
	sw	a0, 1576(sp)
	lw	a0, 104(s3)
	lw	a2, 108(s3)
	sw	a1, 1580(sp)
	lw	a1, 112(s3)
	sw	a0, 1584(sp)
	sw	a2, 1588(sp)
	lw	a0, 116(s3)
	sw	a1, 1592(sp)
	lw	a1, 120(s3)
	lw	a2, 124(s3)
	sw	a0, 1596(sp)
	lw	a0, 188(s3)
	sw	a1, 1600(sp)
	sw	a2, 1604(sp)
	lw	a1, 184(s3)
	sw	a0, 1636(sp)
	lw	a0, 180(s3)
	lw	a2, 176(s3)
	sw	a1, 1632(sp)
	lw	a1, 172(s3)
	sw	a0, 1628(sp)
	sw	a2, 1624(sp)
	lw	a0, 168(s3)
	sw	a1, 1620(sp)
	lw	a1, 164(s3)
	lw	a2, 160(s3)
	sw	a0, 1616(sp)
	lw	a0, 248(s3)
	sw	a1, 1612(sp)
	sw	a2, 1608(sp)
	lw	a1, 244(s3)
	sw	a0, 1664(sp)
	lw	a0, 240(s3)
	lw	a2, 236(s3)
	sw	a1, 1660(sp)
	lw	a1, 232(s3)
	sw	a0, 1656(sp)
	sw	a2, 1652(sp)
	lw	a0, 228(s3)
	sw	a1, 1648(sp)
	lw	a1, 224(s3)
	lw	a2, 252(s3)
	sw	a0, 1644(sp)
	lw	a0, 316(s3)
	sw	a1, 1640(sp)
	sw	a2, 1668(sp)
	lw	a1, 312(s3)
	sw	a0, 1700(sp)
	lw	a0, 308(s3)
	lw	a2, 304(s3)
	sw	a1, 1696(sp)
	lw	a1, 300(s3)
	sw	a0, 1692(sp)
	sw	a2, 1688(sp)
	lw	a0, 296(s3)
	sw	a1, 1684(sp)
	lw	a1, 292(s3)
	lw	a2, 288(s3)
	sw	a0, 1680(sp)
	lw	a0, 380(s3)
	sw	a1, 1676(sp)
	sw	a2, 1672(sp)
	lw	a1, 376(s3)
	sw	a0, 1732(sp)
	lw	a0, 372(s3)
	lw	a2, 368(s3)
	sw	a1, 1728(sp)
	lw	a1, 364(s3)
	sw	a0, 1724(sp)
	sw	a2, 1720(sp)
	lw	a0, 360(s3)
	sw	a1, 1716(sp)
	lw	a1, 356(s3)
	lw	a2, 352(s3)
	sw	a0, 1712(sp)
	lw	a0, 444(s3)
	sw	a1, 1708(sp)
	sw	a2, 1704(sp)
	lw	a1, 440(s3)
	sw	a0, 1764(sp)
	lw	a0, 436(s3)
	lw	a2, 432(s3)
	sw	a1, 1760(sp)
	lw	a1, 428(s3)
	sw	a0, 1756(sp)
	sw	a2, 1752(sp)
	lw	a0, 424(s3)
	sw	a1, 1748(sp)
	lw	a1, 420(s3)
	lw	a2, 416(s3)
	sw	a0, 1744(sp)
	lw	a0, 508(s3)
	sw	a1, 1740(sp)
	sw	a2, 1736(sp)
	lw	a1, 504(s3)
	sw	a0, 1796(sp)
	lw	a0, 500(s3)
	lw	a2, 496(s3)
	sw	a1, 1792(sp)
	lw	a1, 492(s3)
	sw	a0, 1788(sp)
	sw	a2, 1784(sp)
	lw	a0, 488(s3)
	sw	a1, 1780(sp)
	lw	a1, 484(s3)
	lw	a2, 480(s3)
	sw	a0, 1776(sp)
	addi	s5, s2, 256
	sw	a1, 1772(sp)
	sw	a2, 1768(sp)
	addi	a0, sp, 1544
	mv	a1, s4
	call	Dct
	mv	a0, s4
	mv	a1, s5
	mv	a2, s1
	mv	a3, s0
	call	Quant
	lwu	a0, 540(s3)
	lwu	a1, 536(s3)
	addi	s4, sp, 520
	slli	a0, a0, 32
	lwu	a2, 532(s3)
	or	a0, a0, a1
	lwu	a1, 528(s3)
	sd	a0, 1568(sp)
	slli	a2, a2, 32
	lwu	a0, 524(s3)
	or	a1, a2, a1
	lwu	a2, 520(s3)
	sd	a1, 1560(sp)
	slli	a0, a0, 32
	lwu	a1, 516(s3)
	or	a0, a0, a2
	lwu	a2, 512(s3)
	sd	a0, 1552(sp)
	slli	a1, a1, 32
	lw	a0, 576(s3)
	or	a1, a1, a2
	sd	a1, 1544(sp)
	lw	a1, 580(s3)
	sw	a0, 1576(sp)
	lw	a0, 584(s3)
	lw	a2, 588(s3)
	sw	a1, 1580(sp)
	lw	a1, 592(s3)
	sw	a0, 1584(sp)
	sw	a2, 1588(sp)
	lw	a0, 596(s3)
	sw	a1, 1592(sp)
	lw	a1, 600(s3)
	lw	a2, 604(s3)
	sw	a0, 1596(sp)
	lw	a0, 668(s3)
	sw	a1, 1600(sp)
	sw	a2, 1604(sp)
	lw	a1, 664(s3)
	sw	a0, 1636(sp)
	lw	a0, 660(s3)
	lw	a2, 656(s3)
	sw	a1, 1632(sp)
	lw	a1, 652(s3)
	sw	a0, 1628(sp)
	sw	a2, 1624(sp)
	lw	a0, 648(s3)
	sw	a1, 1620(sp)
	lw	a1, 644(s3)
	lw	a2, 640(s3)
	sw	a0, 1616(sp)
	lw	a0, 728(s3)
	sw	a1, 1612(sp)
	sw	a2, 1608(sp)
	lw	a1, 724(s3)
	sw	a0, 1664(sp)
	lw	a0, 720(s3)
	lw	a2, 716(s3)
	sw	a1, 1660(sp)
	lw	a1, 712(s3)
	sw	a0, 1656(sp)
	sw	a2, 1652(sp)
	lw	a0, 708(s3)
	sw	a1, 1648(sp)
	lw	a1, 704(s3)
	lw	a2, 732(s3)
	sw	a0, 1644(sp)
	lw	a0, 796(s3)
	sw	a1, 1640(sp)
	sw	a2, 1668(sp)
	lw	a1, 792(s3)
	sw	a0, 1700(sp)
	lw	a0, 788(s3)
	lw	a2, 784(s3)
	sw	a1, 1696(sp)
	lw	a1, 780(s3)
	sw	a0, 1692(sp)
	sw	a2, 1688(sp)
	lw	a0, 776(s3)
	sw	a1, 1684(sp)
	lw	a1, 772(s3)
	lw	a2, 768(s3)
	sw	a0, 1680(sp)
	lw	a0, 860(s3)
	sw	a1, 1676(sp)
	sw	a2, 1672(sp)
	lw	a1, 856(s3)
	sw	a0, 1732(sp)
	lw	a0, 852(s3)
	lw	a2, 848(s3)
	sw	a1, 1728(sp)
	lw	a1, 844(s3)
	sw	a0, 1724(sp)
	sw	a2, 1720(sp)
	lw	a0, 840(s3)
	sw	a1, 1716(sp)
	lw	a1, 836(s3)
	lw	a2, 832(s3)
	sw	a0, 1712(sp)
	lw	a0, 924(s3)
	sw	a1, 1708(sp)
	sw	a2, 1704(sp)
	lw	a1, 920(s3)
	sw	a0, 1764(sp)
	lw	a0, 916(s3)
	lw	a2, 912(s3)
	sw	a1, 1760(sp)
	lw	a1, 908(s3)
	sw	a0, 1756(sp)
	sw	a2, 1752(sp)
	lw	a0, 904(s3)
	sw	a1, 1748(sp)
	lw	a1, 900(s3)
	lw	a2, 896(s3)
	sw	a0, 1744(sp)
	lw	a0, 988(s3)
	sw	a1, 1740(sp)
	sw	a2, 1736(sp)
	lw	a1, 984(s3)
	sw	a0, 1796(sp)
	lw	a0, 980(s3)
	lw	a2, 976(s3)
	sw	a1, 1792(sp)
	lw	a1, 972(s3)
	sw	a0, 1788(sp)
	sw	a2, 1784(sp)
	lw	a0, 968(s3)
	sw	a1, 1780(sp)
	lw	a1, 964(s3)
	lw	a2, 960(s3)
	sw	a0, 1776(sp)
	addi	s5, s2, 512
	sw	a1, 1772(sp)
	sw	a2, 1768(sp)
	addi	a0, sp, 1544
	mv	a1, s4
	call	Dct
	mv	a0, s4
	mv	a1, s5
	mv	a2, s1
	mv	a3, s0
	call	Quant
	lwu	a0, 572(s3)
	lwu	a1, 568(s3)
	addi	s4, sp, 776
	slli	a0, a0, 32
	lwu	a2, 564(s3)
	or	a0, a0, a1
	lwu	a1, 560(s3)
	sd	a0, 1568(sp)
	slli	a2, a2, 32
	lwu	a0, 556(s3)
	or	a1, a2, a1
	lwu	a2, 552(s3)
	sd	a1, 1560(sp)
	slli	a0, a0, 32
	lwu	a1, 548(s3)
	or	a0, a0, a2
	lwu	a2, 544(s3)
	sd	a0, 1552(sp)
	slli	a1, a1, 32
	lw	a0, 608(s3)
	or	a1, a1, a2
	sd	a1, 1544(sp)
	lw	a1, 612(s3)
	sw	a0, 1576(sp)
	lw	a0, 616(s3)
	lw	a2, 620(s3)
	sw	a1, 1580(sp)
	lw	a1, 624(s3)
	sw	a0, 1584(sp)
	sw	a2, 1588(sp)
	lw	a0, 628(s3)
	sw	a1, 1592(sp)
	lw	a1, 632(s3)
	lw	a2, 636(s3)
	sw	a0, 1596(sp)
	lw	a0, 700(s3)
	sw	a1, 1600(sp)
	sw	a2, 1604(sp)
	lw	a1, 696(s3)
	sw	a0, 1636(sp)
	lw	a0, 692(s3)
	lw	a2, 688(s3)
	sw	a1, 1632(sp)
	lw	a1, 684(s3)
	sw	a0, 1628(sp)
	sw	a2, 1624(sp)
	lw	a0, 680(s3)
	sw	a1, 1620(sp)
	lw	a1, 676(s3)
	lw	a2, 672(s3)
	sw	a0, 1616(sp)
	lw	a0, 760(s3)
	sw	a1, 1612(sp)
	sw	a2, 1608(sp)
	lw	a1, 756(s3)
	sw	a0, 1664(sp)
	lw	a0, 752(s3)
	lw	a2, 748(s3)
	sw	a1, 1660(sp)
	lw	a1, 744(s3)
	sw	a0, 1656(sp)
	sw	a2, 1652(sp)
	lw	a0, 740(s3)
	sw	a1, 1648(sp)
	lw	a1, 736(s3)
	lw	a2, 764(s3)
	sw	a0, 1644(sp)
	lw	a0, 828(s3)
	sw	a1, 1640(sp)
	sw	a2, 1668(sp)
	lw	a1, 824(s3)
	sw	a0, 1700(sp)
	lw	a0, 820(s3)
	lw	a2, 816(s3)
	sw	a1, 1696(sp)
	lw	a1, 812(s3)
	sw	a0, 1692(sp)
	sw	a2, 1688(sp)
	lw	a0, 808(s3)
	sw	a1, 1684(sp)
	lw	a1, 804(s3)
	lw	a2, 800(s3)
	sw	a0, 1680(sp)
	lw	a0, 892(s3)
	sw	a1, 1676(sp)
	sw	a2, 1672(sp)
	lw	a1, 888(s3)
	sw	a0, 1732(sp)
	lw	a0, 884(s3)
	lw	a2, 880(s3)
	sw	a1, 1728(sp)
	lw	a1, 876(s3)
	sw	a0, 1724(sp)
	sw	a2, 1720(sp)
	lw	a0, 872(s3)
	sw	a1, 1716(sp)
	lw	a1, 868(s3)
	lw	a2, 864(s3)
	sw	a0, 1712(sp)
	lw	a0, 956(s3)
	sw	a1, 1708(sp)
	sw	a2, 1704(sp)
	lw	a1, 952(s3)
	sw	a0, 1764(sp)
	lw	a0, 948(s3)
	lw	a2, 944(s3)
	sw	a1, 1760(sp)
	lw	a1, 940(s3)
	sw	a0, 1756(sp)
	sw	a2, 1752(sp)
	lw	a0, 936(s3)
	sw	a1, 1748(sp)
	lw	a1, 932(s3)
	lw	a2, 928(s3)
	sw	a0, 1744(sp)
	lw	a0, 1020(s3)
	sw	a1, 1740(sp)
	sw	a2, 1736(sp)
	lw	a1, 1016(s3)
	sw	a0, 1796(sp)
	lw	a0, 1012(s3)
	lw	a2, 1008(s3)
	sw	a1, 1792(sp)
	lw	a1, 1004(s3)
	sw	a0, 1788(sp)
	sw	a2, 1784(sp)
	lw	a0, 1000(s3)
	sw	a1, 1780(sp)
	lw	a1, 996(s3)
	lw	a2, 992(s3)
	sw	a0, 1776(sp)
	addi	s5, s2, 768
	sw	a1, 1772(sp)
	sw	a2, 1768(sp)
	addi	a0, sp, 1544
	mv	a1, s4
	call	Dct
	mv	a0, s4
	mv	a1, s5
	mv	a2, s1
	mv	a3, s0
	call	Quant
	addi	s4, sp, 1032
	addi	a1, s3, 1280
	addi	a0, sp, 1544
	li	a2, 256
	call	memcpy
	addi	s5, s2, 1024
	addi	a0, sp, 1544
	mv	a1, s4
	call	Dct
	mv	a0, s4
	mv	a1, s5
	mv	a2, s1
	mv	a3, s0
	call	Quant
	addi	a1, s3, 1024
	addi	a0, sp, 1544
	li	a2, 256
	call	memcpy
	addi	s3, s2, 1280
	addi	s4, sp, 1288
	addi	a0, sp, 1544
	mv	a1, s4
	call	Dct
	mv	a0, s4
	mv	a1, s3
	mv	a2, s1
	mv	a3, s0
	call	Quant
	mv	a0, s2
	ld	ra, 1848(sp)                    # 8-byte Folded Reload
	ld	s0, 1840(sp)                    # 8-byte Folded Reload
	ld	s1, 1832(sp)                    # 8-byte Folded Reload
	ld	s2, 1824(sp)                    # 8-byte Folded Reload
	ld	s3, 1816(sp)                    # 8-byte Folded Reload
	ld	s4, 1808(sp)                    # 8-byte Folded Reload
	ld	s5, 1800(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 1856
	ret
.LBB6_2:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 39
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.Lfunc_end6:
	.size	MB_Encode, .Lfunc_end6-MB_Encode
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ZeroMBlock                      # -- Begin function ZeroMBlock
	.p2align	2
	.type	ZeroMBlock,@function
ZeroMBlock:                             # @ZeroMBlock
# %bb.0:
	li	a2, 1536
	li	a1, 0
	tail	memset
.Lfunc_end7:
	.size	ZeroMBlock, .Lfunc_end7-ZeroMBlock
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	MB_Decode                       # -- Begin function MB_Decode
	.p2align	2
	.type	MB_Decode,@function
MB_Decode:                              # @MB_Decode
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	sd	s8, 0(sp)                       # 8-byte Folded Spill
	mv	s2, a3
	mv	s3, a2
	mv	s6, a1
	mv	s5, a0
	li	a0, 256
	call	malloc
	beqz	a0, .LBB8_3
# %bb.1:
	mv	s0, a0
	li	a0, 1536
	call	malloc
	beqz	a0, .LBB8_4
# %bb.2:
	mv	s1, a0
	addi	s7, s6, 1280
	addi	s4, s6, 1024
	li	a2, 1536
	mv	a0, s6
	li	a1, 0
	call	memset
	mv	a0, s5
	mv	a1, s1
	mv	a2, s3
	mv	a3, s2
	call	Dequant
	mv	a0, s1
	mv	a1, s0
	call	idctref
	lw	a0, 28(s0)
	lw	a1, 24(s0)
	lw	a2, 20(s0)
	sw	a0, 28(s6)
	lw	a0, 16(s0)
	sw	a1, 24(s6)
	sw	a2, 20(s6)
	lw	a1, 12(s0)
	sw	a0, 16(s6)
	lw	a0, 8(s0)
	lw	a2, 4(s0)
	sw	a1, 12(s6)
	lw	a1, 0(s0)
	sw	a0, 8(s6)
	sw	a2, 4(s6)
	lw	a0, 32(s0)
	sw	a1, 0(s6)
	lw	a1, 36(s0)
	lw	a2, 40(s0)
	sw	a0, 64(s6)
	lw	a0, 44(s0)
	sw	a1, 68(s6)
	sw	a2, 72(s6)
	lw	a1, 48(s0)
	sw	a0, 76(s6)
	lw	a0, 52(s0)
	lw	a2, 56(s0)
	sw	a1, 80(s6)
	lw	a1, 60(s0)
	sw	a0, 84(s6)
	sw	a2, 88(s6)
	lw	a0, 92(s0)
	sw	a1, 92(s6)
	lw	a1, 88(s0)
	lw	a2, 84(s0)
	sw	a0, 156(s6)
	lw	a0, 80(s0)
	sw	a1, 152(s6)
	sw	a2, 148(s6)
	lw	a1, 76(s0)
	sw	a0, 144(s6)
	lw	a0, 72(s0)
	lw	a2, 68(s0)
	sw	a1, 140(s6)
	lw	a1, 64(s0)
	sw	a0, 136(s6)
	sw	a2, 132(s6)
	lw	a0, 124(s0)
	sw	a1, 128(s6)
	lw	a1, 120(s0)
	lw	a2, 116(s0)
	sw	a0, 220(s6)
	lw	a0, 112(s0)
	sw	a1, 216(s6)
	sw	a2, 212(s6)
	lw	a1, 108(s0)
	sw	a0, 208(s6)
	lw	a0, 104(s0)
	lw	a2, 100(s0)
	sw	a1, 204(s6)
	lw	a1, 96(s0)
	sw	a0, 200(s6)
	sw	a2, 196(s6)
	lw	a0, 156(s0)
	sw	a1, 192(s6)
	lw	a1, 152(s0)
	lw	a2, 148(s0)
	sw	a0, 284(s6)
	lw	a0, 144(s0)
	sw	a1, 280(s6)
	sw	a2, 276(s6)
	lw	a1, 140(s0)
	sw	a0, 272(s6)
	lw	a0, 136(s0)
	lw	a2, 132(s0)
	sw	a1, 268(s6)
	lw	a1, 128(s0)
	sw	a0, 264(s6)
	sw	a2, 260(s6)
	lw	a0, 188(s0)
	sw	a1, 256(s6)
	lw	a1, 184(s0)
	lw	a2, 180(s0)
	sw	a0, 348(s6)
	lw	a0, 176(s0)
	sw	a1, 344(s6)
	sw	a2, 340(s6)
	lw	a1, 172(s0)
	sw	a0, 336(s6)
	lw	a0, 168(s0)
	lw	a2, 164(s0)
	sw	a1, 332(s6)
	lw	a1, 160(s0)
	sw	a0, 328(s6)
	sw	a2, 324(s6)
	lw	a0, 220(s0)
	sw	a1, 320(s6)
	lw	a1, 216(s0)
	lw	a2, 212(s0)
	sw	a0, 412(s6)
	lw	a0, 208(s0)
	sw	a1, 408(s6)
	sw	a2, 404(s6)
	lw	a1, 204(s0)
	sw	a0, 400(s6)
	lw	a0, 200(s0)
	lw	a2, 196(s0)
	sw	a1, 396(s6)
	lw	a1, 192(s0)
	sw	a0, 392(s6)
	sw	a2, 388(s6)
	lw	a0, 252(s0)
	sw	a1, 384(s6)
	lw	a1, 248(s0)
	lw	a2, 244(s0)
	sw	a0, 476(s6)
	lw	a0, 240(s0)
	sw	a1, 472(s6)
	sw	a2, 468(s6)
	lw	a1, 236(s0)
	sw	a0, 464(s6)
	lw	a0, 232(s0)
	lw	a2, 228(s0)
	sw	a1, 460(s6)
	lw	a1, 224(s0)
	sw	a0, 456(s6)
	sw	a2, 452(s6)
	addi	a0, s5, 256
	sw	a1, 448(s6)
	addi	s8, s1, 256
	mv	a1, s8
	mv	a2, s3
	mv	a3, s2
	call	Dequant
	mv	a0, s8
	mv	a1, s0
	call	idctref
	lw	a0, 28(s0)
	lw	a1, 24(s0)
	lw	a2, 20(s0)
	sw	a0, 60(s6)
	lw	a0, 16(s0)
	sw	a1, 56(s6)
	sw	a2, 52(s6)
	lw	a1, 12(s0)
	sw	a0, 48(s6)
	lw	a0, 8(s0)
	lw	a2, 4(s0)
	sw	a1, 44(s6)
	lw	a1, 0(s0)
	sw	a0, 40(s6)
	sw	a2, 36(s6)
	lw	a0, 32(s0)
	sw	a1, 32(s6)
	lw	a1, 36(s0)
	lw	a2, 40(s0)
	sw	a0, 96(s6)
	lw	a0, 44(s0)
	sw	a1, 100(s6)
	sw	a2, 104(s6)
	lw	a1, 48(s0)
	sw	a0, 108(s6)
	lw	a0, 52(s0)
	lw	a2, 56(s0)
	sw	a1, 112(s6)
	lw	a1, 60(s0)
	sw	a0, 116(s6)
	sw	a2, 120(s6)
	lw	a0, 92(s0)
	sw	a1, 124(s6)
	lw	a1, 88(s0)
	lw	a2, 84(s0)
	sw	a0, 188(s6)
	lw	a0, 80(s0)
	sw	a1, 184(s6)
	sw	a2, 180(s6)
	lw	a1, 76(s0)
	sw	a0, 176(s6)
	lw	a0, 72(s0)
	lw	a2, 68(s0)
	sw	a1, 172(s6)
	lw	a1, 64(s0)
	sw	a0, 168(s6)
	sw	a2, 164(s6)
	lw	a0, 124(s0)
	sw	a1, 160(s6)
	lw	a1, 120(s0)
	lw	a2, 116(s0)
	sw	a0, 252(s6)
	lw	a0, 112(s0)
	sw	a1, 248(s6)
	sw	a2, 244(s6)
	lw	a1, 108(s0)
	sw	a0, 240(s6)
	lw	a0, 104(s0)
	lw	a2, 100(s0)
	sw	a1, 236(s6)
	lw	a1, 96(s0)
	sw	a0, 232(s6)
	sw	a2, 228(s6)
	lw	a0, 156(s0)
	sw	a1, 224(s6)
	lw	a1, 152(s0)
	lw	a2, 148(s0)
	sw	a0, 316(s6)
	lw	a0, 144(s0)
	sw	a1, 312(s6)
	sw	a2, 308(s6)
	lw	a1, 140(s0)
	sw	a0, 304(s6)
	lw	a0, 136(s0)
	lw	a2, 132(s0)
	sw	a1, 300(s6)
	lw	a1, 128(s0)
	sw	a0, 296(s6)
	sw	a2, 292(s6)
	lw	a0, 188(s0)
	sw	a1, 288(s6)
	lw	a1, 184(s0)
	lw	a2, 180(s0)
	sw	a0, 380(s6)
	lw	a0, 176(s0)
	sw	a1, 376(s6)
	sw	a2, 372(s6)
	lw	a1, 172(s0)
	sw	a0, 368(s6)
	lw	a0, 168(s0)
	lw	a2, 164(s0)
	sw	a1, 364(s6)
	lw	a1, 160(s0)
	sw	a0, 360(s6)
	sw	a2, 356(s6)
	lw	a0, 220(s0)
	sw	a1, 352(s6)
	lw	a1, 216(s0)
	lw	a2, 212(s0)
	sw	a0, 444(s6)
	lw	a0, 208(s0)
	sw	a1, 440(s6)
	sw	a2, 436(s6)
	lw	a1, 204(s0)
	sw	a0, 432(s6)
	lw	a0, 200(s0)
	lw	a2, 196(s0)
	sw	a1, 428(s6)
	lw	a1, 192(s0)
	sw	a0, 424(s6)
	sw	a2, 420(s6)
	lw	a0, 252(s0)
	sw	a1, 416(s6)
	lw	a1, 248(s0)
	lw	a2, 244(s0)
	sw	a0, 508(s6)
	lw	a0, 240(s0)
	sw	a1, 504(s6)
	sw	a2, 500(s6)
	lw	a1, 236(s0)
	sw	a0, 496(s6)
	lw	a0, 232(s0)
	lw	a2, 228(s0)
	sw	a1, 492(s6)
	lw	a1, 224(s0)
	sw	a0, 488(s6)
	sw	a2, 484(s6)
	addi	a0, s5, 512
	sw	a1, 480(s6)
	addi	s8, s1, 512
	mv	a1, s8
	mv	a2, s3
	mv	a3, s2
	call	Dequant
	mv	a0, s8
	mv	a1, s0
	call	idctref
	lw	a0, 28(s0)
	lw	a1, 24(s0)
	lw	a2, 20(s0)
	sw	a0, 540(s6)
	lw	a0, 16(s0)
	sw	a1, 536(s6)
	sw	a2, 532(s6)
	lw	a1, 12(s0)
	sw	a0, 528(s6)
	lw	a0, 8(s0)
	lw	a2, 4(s0)
	sw	a1, 524(s6)
	lw	a1, 0(s0)
	sw	a0, 520(s6)
	sw	a2, 516(s6)
	lw	a0, 32(s0)
	sw	a1, 512(s6)
	lw	a1, 36(s0)
	lw	a2, 40(s0)
	sw	a0, 576(s6)
	lw	a0, 44(s0)
	sw	a1, 580(s6)
	sw	a2, 584(s6)
	lw	a1, 48(s0)
	sw	a0, 588(s6)
	lw	a0, 52(s0)
	lw	a2, 56(s0)
	sw	a1, 592(s6)
	lw	a1, 60(s0)
	sw	a0, 596(s6)
	sw	a2, 600(s6)
	lw	a0, 92(s0)
	sw	a1, 604(s6)
	lw	a1, 88(s0)
	lw	a2, 84(s0)
	sw	a0, 668(s6)
	lw	a0, 80(s0)
	sw	a1, 664(s6)
	sw	a2, 660(s6)
	lw	a1, 76(s0)
	sw	a0, 656(s6)
	lw	a0, 72(s0)
	lw	a2, 68(s0)
	sw	a1, 652(s6)
	lw	a1, 64(s0)
	sw	a0, 648(s6)
	sw	a2, 644(s6)
	lw	a0, 124(s0)
	sw	a1, 640(s6)
	lw	a1, 120(s0)
	lw	a2, 116(s0)
	sw	a0, 732(s6)
	lw	a0, 112(s0)
	sw	a1, 728(s6)
	sw	a2, 724(s6)
	lw	a1, 108(s0)
	sw	a0, 720(s6)
	lw	a0, 104(s0)
	lw	a2, 100(s0)
	sw	a1, 716(s6)
	lw	a1, 96(s0)
	sw	a0, 712(s6)
	sw	a2, 708(s6)
	lw	a0, 156(s0)
	sw	a1, 704(s6)
	lw	a1, 152(s0)
	lw	a2, 148(s0)
	sw	a0, 796(s6)
	lw	a0, 144(s0)
	sw	a1, 792(s6)
	sw	a2, 788(s6)
	lw	a1, 140(s0)
	sw	a0, 784(s6)
	lw	a0, 136(s0)
	lw	a2, 132(s0)
	sw	a1, 780(s6)
	lw	a1, 128(s0)
	sw	a0, 776(s6)
	sw	a2, 772(s6)
	lw	a0, 188(s0)
	sw	a1, 768(s6)
	lw	a1, 184(s0)
	lw	a2, 180(s0)
	sw	a0, 860(s6)
	lw	a0, 176(s0)
	sw	a1, 856(s6)
	sw	a2, 852(s6)
	lw	a1, 172(s0)
	sw	a0, 848(s6)
	lw	a0, 168(s0)
	lw	a2, 164(s0)
	sw	a1, 844(s6)
	lw	a1, 160(s0)
	sw	a0, 840(s6)
	sw	a2, 836(s6)
	lw	a0, 220(s0)
	sw	a1, 832(s6)
	lw	a1, 216(s0)
	lw	a2, 212(s0)
	sw	a0, 924(s6)
	lw	a0, 208(s0)
	sw	a1, 920(s6)
	sw	a2, 916(s6)
	lw	a1, 204(s0)
	sw	a0, 912(s6)
	lw	a0, 200(s0)
	lw	a2, 196(s0)
	sw	a1, 908(s6)
	lw	a1, 192(s0)
	sw	a0, 904(s6)
	sw	a2, 900(s6)
	lw	a0, 252(s0)
	sw	a1, 896(s6)
	lw	a1, 248(s0)
	lw	a2, 244(s0)
	sw	a0, 988(s6)
	lw	a0, 240(s0)
	sw	a1, 984(s6)
	sw	a2, 980(s6)
	lw	a1, 236(s0)
	sw	a0, 976(s6)
	lw	a0, 232(s0)
	lw	a2, 228(s0)
	sw	a1, 972(s6)
	lw	a1, 224(s0)
	sw	a0, 968(s6)
	sw	a2, 964(s6)
	addi	a0, s5, 768
	sw	a1, 960(s6)
	addi	s8, s1, 768
	mv	a1, s8
	mv	a2, s3
	mv	a3, s2
	call	Dequant
	mv	a0, s8
	mv	a1, s0
	call	idctref
	lw	a0, 28(s0)
	lw	a1, 24(s0)
	lw	a2, 20(s0)
	sw	a0, 572(s6)
	lw	a0, 16(s0)
	sw	a1, 568(s6)
	sw	a2, 564(s6)
	lw	a1, 12(s0)
	sw	a0, 560(s6)
	lw	a0, 8(s0)
	lw	a2, 4(s0)
	sw	a1, 556(s6)
	lw	a1, 0(s0)
	sw	a0, 552(s6)
	sw	a2, 548(s6)
	lw	a0, 32(s0)
	sw	a1, 544(s6)
	lw	a1, 36(s0)
	lw	a2, 40(s0)
	sw	a0, 608(s6)
	lw	a0, 44(s0)
	sw	a1, 612(s6)
	sw	a2, 616(s6)
	lw	a1, 48(s0)
	sw	a0, 620(s6)
	lw	a0, 52(s0)
	lw	a2, 56(s0)
	sw	a1, 624(s6)
	lw	a1, 60(s0)
	sw	a0, 628(s6)
	sw	a2, 632(s6)
	lw	a0, 92(s0)
	sw	a1, 636(s6)
	lw	a1, 88(s0)
	lw	a2, 84(s0)
	sw	a0, 700(s6)
	lw	a0, 80(s0)
	sw	a1, 696(s6)
	sw	a2, 692(s6)
	lw	a1, 76(s0)
	sw	a0, 688(s6)
	lw	a0, 72(s0)
	lw	a2, 68(s0)
	sw	a1, 684(s6)
	lw	a1, 64(s0)
	sw	a0, 680(s6)
	sw	a2, 676(s6)
	lw	a0, 124(s0)
	sw	a1, 672(s6)
	lw	a1, 120(s0)
	lw	a2, 116(s0)
	sw	a0, 764(s6)
	lw	a0, 112(s0)
	sw	a1, 760(s6)
	sw	a2, 756(s6)
	lw	a1, 108(s0)
	sw	a0, 752(s6)
	lw	a0, 104(s0)
	lw	a2, 100(s0)
	sw	a1, 748(s6)
	lw	a1, 96(s0)
	sw	a0, 744(s6)
	sw	a2, 740(s6)
	lw	a0, 156(s0)
	sw	a1, 736(s6)
	lw	a1, 152(s0)
	lw	a2, 148(s0)
	sw	a0, 828(s6)
	lw	a0, 144(s0)
	sw	a1, 824(s6)
	sw	a2, 820(s6)
	lw	a1, 140(s0)
	sw	a0, 816(s6)
	lw	a0, 136(s0)
	lw	a2, 132(s0)
	sw	a1, 812(s6)
	lw	a1, 128(s0)
	sw	a0, 808(s6)
	sw	a2, 804(s6)
	lw	a0, 188(s0)
	sw	a1, 800(s6)
	lw	a1, 184(s0)
	lw	a2, 180(s0)
	sw	a0, 892(s6)
	lw	a0, 176(s0)
	sw	a1, 888(s6)
	sw	a2, 884(s6)
	lw	a1, 172(s0)
	sw	a0, 880(s6)
	lw	a0, 168(s0)
	lw	a2, 164(s0)
	sw	a1, 876(s6)
	lw	a1, 160(s0)
	sw	a0, 872(s6)
	sw	a2, 868(s6)
	lw	a0, 220(s0)
	sw	a1, 864(s6)
	lw	a1, 216(s0)
	lw	a2, 212(s0)
	sw	a0, 956(s6)
	lw	a0, 208(s0)
	sw	a1, 952(s6)
	sw	a2, 948(s6)
	lw	a1, 204(s0)
	sw	a0, 944(s6)
	lw	a0, 200(s0)
	lw	a2, 196(s0)
	sw	a1, 940(s6)
	lw	a1, 192(s0)
	sw	a0, 936(s6)
	sw	a2, 932(s6)
	lw	a0, 252(s0)
	sw	a1, 928(s6)
	lw	a1, 248(s0)
	lw	a2, 244(s0)
	sw	a0, 1020(s6)
	lw	a0, 240(s0)
	sw	a1, 1016(s6)
	sw	a2, 1012(s6)
	lw	a1, 236(s0)
	sw	a0, 1008(s6)
	lw	a0, 232(s0)
	lw	a2, 228(s0)
	sw	a1, 1004(s6)
	lw	a1, 224(s0)
	sw	a0, 1000(s6)
	sw	a2, 996(s6)
	addi	a0, s5, 1024
	sw	a1, 992(s6)
	addi	s6, s1, 1024
	mv	a1, s6
	mv	a2, s3
	mv	a3, s2
	call	Dequant
	mv	a0, s6
	mv	a1, s0
	call	idctref
	addi	s5, s5, 1280
	li	a2, 256
	mv	a0, s7
	mv	a1, s0
	call	memcpy
	addi	s6, s1, 1280
	mv	a0, s5
	mv	a1, s6
	mv	a2, s3
	mv	a3, s2
	call	Dequant
	mv	a0, s6
	mv	a1, s0
	call	idctref
	li	a2, 256
	mv	a0, s4
	mv	a1, s0
	call	memcpy
	mv	a0, s0
	call	free
	mv	a0, s1
	call	free
	li	a0, 0
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	ld	s8, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.LBB8_3:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	j	.LBB8_5
.LBB8_4:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
.LBB8_5:
	li	a1, 46
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.Lfunc_end8:
	.size	MB_Decode, .Lfunc_end8-MB_Decode
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Clip                            # -- Begin function Clip
	.p2align	2
	.type	Clip,@function
Clip:                                   # @Clip
# %bb.0:
	addi	a1, a0, 32
	addi	a2, a0, 1056
	j	.LBB9_2
.LBB9_1:                                #   in Loop: Header=BB9_2 Depth=1
	sw	a5, 28(a1)
	addi	a1, a1, 64
	beq	a1, a2, .LBB9_34
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	lw	a3, -32(a1)
	sgtz	a4, a3
	neg	a4, a4
	and	a4, a4, a3
	li	a3, 255
	blt	a4, a3, .LBB9_4
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	li	a4, 255
.LBB9_4:                                #   in Loop: Header=BB9_2 Depth=1
	lw	a5, -28(a1)
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	a4, -32(a1)
	blt	a5, a3, .LBB9_6
# %bb.5:                                #   in Loop: Header=BB9_2 Depth=1
	li	a5, 255
.LBB9_6:                                #   in Loop: Header=BB9_2 Depth=1
	lw	a4, -24(a1)
	sgtz	a6, a4
	neg	a6, a6
	and	a4, a6, a4
	sw	a5, -28(a1)
	blt	a4, a3, .LBB9_8
# %bb.7:                                #   in Loop: Header=BB9_2 Depth=1
	li	a4, 255
.LBB9_8:                                #   in Loop: Header=BB9_2 Depth=1
	lw	a5, -20(a1)
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	a4, -24(a1)
	blt	a5, a3, .LBB9_10
# %bb.9:                                #   in Loop: Header=BB9_2 Depth=1
	li	a5, 255
.LBB9_10:                               #   in Loop: Header=BB9_2 Depth=1
	lw	a4, -16(a1)
	sgtz	a6, a4
	neg	a6, a6
	and	a4, a6, a4
	sw	a5, -20(a1)
	blt	a4, a3, .LBB9_12
# %bb.11:                               #   in Loop: Header=BB9_2 Depth=1
	li	a4, 255
.LBB9_12:                               #   in Loop: Header=BB9_2 Depth=1
	lw	a5, -12(a1)
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	a4, -16(a1)
	blt	a5, a3, .LBB9_14
# %bb.13:                               #   in Loop: Header=BB9_2 Depth=1
	li	a5, 255
.LBB9_14:                               #   in Loop: Header=BB9_2 Depth=1
	lw	a4, -8(a1)
	sgtz	a6, a4
	neg	a6, a6
	and	a4, a6, a4
	sw	a5, -12(a1)
	blt	a4, a3, .LBB9_16
# %bb.15:                               #   in Loop: Header=BB9_2 Depth=1
	li	a4, 255
.LBB9_16:                               #   in Loop: Header=BB9_2 Depth=1
	lw	a5, -4(a1)
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	a4, -8(a1)
	blt	a5, a3, .LBB9_18
# %bb.17:                               #   in Loop: Header=BB9_2 Depth=1
	li	a5, 255
.LBB9_18:                               #   in Loop: Header=BB9_2 Depth=1
	lw	a4, 0(a1)
	sgtz	a6, a4
	neg	a6, a6
	and	a4, a6, a4
	sw	a5, -4(a1)
	blt	a4, a3, .LBB9_20
# %bb.19:                               #   in Loop: Header=BB9_2 Depth=1
	li	a4, 255
.LBB9_20:                               #   in Loop: Header=BB9_2 Depth=1
	lw	a5, 4(a1)
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	a4, 0(a1)
	blt	a5, a3, .LBB9_22
# %bb.21:                               #   in Loop: Header=BB9_2 Depth=1
	li	a5, 255
.LBB9_22:                               #   in Loop: Header=BB9_2 Depth=1
	lw	a4, 8(a1)
	sgtz	a6, a4
	neg	a6, a6
	and	a4, a6, a4
	sw	a5, 4(a1)
	blt	a4, a3, .LBB9_24
# %bb.23:                               #   in Loop: Header=BB9_2 Depth=1
	li	a4, 255
.LBB9_24:                               #   in Loop: Header=BB9_2 Depth=1
	lw	a5, 12(a1)
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	a4, 8(a1)
	blt	a5, a3, .LBB9_26
# %bb.25:                               #   in Loop: Header=BB9_2 Depth=1
	li	a5, 255
.LBB9_26:                               #   in Loop: Header=BB9_2 Depth=1
	lw	a4, 16(a1)
	sgtz	a6, a4
	neg	a6, a6
	and	a4, a6, a4
	sw	a5, 12(a1)
	blt	a4, a3, .LBB9_28
# %bb.27:                               #   in Loop: Header=BB9_2 Depth=1
	li	a4, 255
.LBB9_28:                               #   in Loop: Header=BB9_2 Depth=1
	lw	a5, 20(a1)
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	a4, 16(a1)
	blt	a5, a3, .LBB9_30
# %bb.29:                               #   in Loop: Header=BB9_2 Depth=1
	li	a5, 255
.LBB9_30:                               #   in Loop: Header=BB9_2 Depth=1
	lw	a4, 24(a1)
	sgtz	a6, a4
	neg	a6, a6
	and	a4, a6, a4
	sw	a5, 20(a1)
	blt	a4, a3, .LBB9_32
# %bb.31:                               #   in Loop: Header=BB9_2 Depth=1
	li	a4, 255
.LBB9_32:                               #   in Loop: Header=BB9_2 Depth=1
	lw	a5, 28(a1)
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	sw	a4, 24(a1)
	blt	a5, a3, .LBB9_1
# %bb.33:                               #   in Loop: Header=BB9_2 Depth=1
	li	a5, 255
	j	.LBB9_1
.LBB9_34:
	addi	a1, a0, 1308
	addi	a0, a0, 1564
	j	.LBB9_36
.LBB9_35:                               #   in Loop: Header=BB9_36 Depth=1
	sw	a4, 0(a1)
	addi	a1, a1, 32
	beq	a1, a0, .LBB9_68
.LBB9_36:                               # =>This Inner Loop Header: Depth=1
	lw	a2, -284(a1)
	sgtz	a3, a2
	neg	a3, a3
	and	a3, a3, a2
	li	a2, 255
	blt	a3, a2, .LBB9_38
# %bb.37:                               #   in Loop: Header=BB9_36 Depth=1
	li	a3, 255
.LBB9_38:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a4, -28(a1)
	sgtz	a5, a4
	neg	a5, a5
	and	a4, a5, a4
	sw	a3, -284(a1)
	blt	a4, a2, .LBB9_40
# %bb.39:                               #   in Loop: Header=BB9_36 Depth=1
	li	a4, 255
.LBB9_40:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a3, -280(a1)
	sgtz	a5, a3
	neg	a5, a5
	and	a3, a5, a3
	sw	a4, -28(a1)
	blt	a3, a2, .LBB9_42
# %bb.41:                               #   in Loop: Header=BB9_36 Depth=1
	li	a3, 255
.LBB9_42:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a4, -24(a1)
	sgtz	a5, a4
	neg	a5, a5
	and	a4, a5, a4
	sw	a3, -280(a1)
	blt	a4, a2, .LBB9_44
# %bb.43:                               #   in Loop: Header=BB9_36 Depth=1
	li	a4, 255
.LBB9_44:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a3, -276(a1)
	sgtz	a5, a3
	neg	a5, a5
	and	a3, a5, a3
	sw	a4, -24(a1)
	blt	a3, a2, .LBB9_46
# %bb.45:                               #   in Loop: Header=BB9_36 Depth=1
	li	a3, 255
.LBB9_46:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a4, -20(a1)
	sgtz	a5, a4
	neg	a5, a5
	and	a4, a5, a4
	sw	a3, -276(a1)
	blt	a4, a2, .LBB9_48
# %bb.47:                               #   in Loop: Header=BB9_36 Depth=1
	li	a4, 255
.LBB9_48:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a3, -272(a1)
	sgtz	a5, a3
	neg	a5, a5
	and	a3, a5, a3
	sw	a4, -20(a1)
	blt	a3, a2, .LBB9_50
# %bb.49:                               #   in Loop: Header=BB9_36 Depth=1
	li	a3, 255
.LBB9_50:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a4, -16(a1)
	sgtz	a5, a4
	neg	a5, a5
	and	a4, a5, a4
	sw	a3, -272(a1)
	blt	a4, a2, .LBB9_52
# %bb.51:                               #   in Loop: Header=BB9_36 Depth=1
	li	a4, 255
.LBB9_52:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a3, -268(a1)
	sgtz	a5, a3
	neg	a5, a5
	and	a3, a5, a3
	sw	a4, -16(a1)
	blt	a3, a2, .LBB9_54
# %bb.53:                               #   in Loop: Header=BB9_36 Depth=1
	li	a3, 255
.LBB9_54:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a4, -12(a1)
	sgtz	a5, a4
	neg	a5, a5
	and	a4, a5, a4
	sw	a3, -268(a1)
	blt	a4, a2, .LBB9_56
# %bb.55:                               #   in Loop: Header=BB9_36 Depth=1
	li	a4, 255
.LBB9_56:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a3, -264(a1)
	sgtz	a5, a3
	neg	a5, a5
	and	a3, a5, a3
	sw	a4, -12(a1)
	blt	a3, a2, .LBB9_58
# %bb.57:                               #   in Loop: Header=BB9_36 Depth=1
	li	a3, 255
.LBB9_58:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a4, -8(a1)
	sgtz	a5, a4
	neg	a5, a5
	and	a4, a5, a4
	sw	a3, -264(a1)
	blt	a4, a2, .LBB9_60
# %bb.59:                               #   in Loop: Header=BB9_36 Depth=1
	li	a4, 255
.LBB9_60:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a3, -260(a1)
	sgtz	a5, a3
	neg	a5, a5
	and	a3, a5, a3
	sw	a4, -8(a1)
	blt	a3, a2, .LBB9_62
# %bb.61:                               #   in Loop: Header=BB9_36 Depth=1
	li	a3, 255
.LBB9_62:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a4, -4(a1)
	sgtz	a5, a4
	neg	a5, a5
	and	a4, a5, a4
	sw	a3, -260(a1)
	blt	a4, a2, .LBB9_64
# %bb.63:                               #   in Loop: Header=BB9_36 Depth=1
	li	a4, 255
.LBB9_64:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a3, -256(a1)
	sgtz	a5, a3
	neg	a5, a5
	and	a3, a5, a3
	sw	a4, -4(a1)
	blt	a3, a2, .LBB9_66
# %bb.65:                               #   in Loop: Header=BB9_36 Depth=1
	li	a3, 255
.LBB9_66:                               #   in Loop: Header=BB9_36 Depth=1
	lw	a4, 0(a1)
	sgtz	a5, a4
	neg	a5, a5
	and	a4, a5, a4
	sw	a3, -256(a1)
	blt	a4, a2, .LBB9_35
# %bb.67:                               #   in Loop: Header=BB9_36 Depth=1
	li	a4, 255
	j	.LBB9_35
.LBB9_68:
	ret
.Lfunc_end9:
	.size	Clip, .Lfunc_end9-Clip
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ReconImage                      # -- Begin function ReconImage
	.p2align	2
	.type	ReconImage,@function
ReconImage:                             # @ReconImage
# %bb.0:
	slliw	a4, a0, 4
	slli	a5, a1, 4
	addi	a6, a2, 32
	addiw	a7, a5, 16
	lui	t0, %hi(pels)
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, -32(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 0(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, -28(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 1(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, -24(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 2(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, -20(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 3(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, -16(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 4(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, -12(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 5(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, -8(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 6(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, -4(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 7(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, 0(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 8(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, 4(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 9(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, 8(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 10(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, 12(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 11(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, 16(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 12(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, 20(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 13(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, 24(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 14(t1)
	ld	t1, 0(a3)
	lw	t2, %lo(pels)(t0)
	lbu	t3, 28(a6)
	add	t1, t1, a4
	mulw	t2, t2, a5
	add	t1, t1, t2
	sb	t3, 15(t1)
	addiw	a5, a5, 1
	addi	a6, a6, 64
	bne	a5, a7, .LBB10_1
# %bb.2:
	slliw	a0, a0, 3
	slli	a1, a1, 3
	addi	a4, a2, 1308
	addi	a2, a2, 1564
	lui	a5, %hi(cpels)
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	ld	a6, 8(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -284(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 0(a6)
	ld	a6, 16(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -28(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 0(a6)
	ld	a6, 8(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -280(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 1(a6)
	ld	a6, 16(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -24(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 1(a6)
	ld	a6, 8(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -276(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 2(a6)
	ld	a6, 16(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -20(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 2(a6)
	ld	a6, 8(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -272(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 3(a6)
	ld	a6, 16(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -16(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 3(a6)
	ld	a6, 8(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -268(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 4(a6)
	ld	a6, 16(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -12(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 4(a6)
	ld	a6, 8(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -264(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 5(a6)
	ld	a6, 16(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -8(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 5(a6)
	ld	a6, 8(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -260(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 6(a6)
	ld	a6, 16(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -4(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 6(a6)
	ld	a6, 8(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, -256(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 7(a6)
	ld	a6, 16(a3)
	lw	a7, %lo(cpels)(a5)
	lbu	t0, 0(a4)
	add	a6, a6, a0
	mulw	a7, a7, a1
	add	a6, a6, a7
	sb	t0, 7(a6)
	addi	a4, a4, 32
	addi	a1, a1, 1
	bne	a4, a2, .LBB10_3
# %bb.4:
	ret
.Lfunc_end10:
	.size	ReconImage, .Lfunc_end10-ReconImage
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CodeOneIntra                    # -- Begin function CodeOneIntra
	.p2align	2
	.type	CodeOneIntra,@function
CodeOneIntra:                           # @CodeOneIntra
# %bb.0:
	addi	sp, sp, -208
	sd	ra, 200(sp)                     # 8-byte Folded Spill
	sd	s0, 192(sp)                     # 8-byte Folded Spill
	sd	s1, 184(sp)                     # 8-byte Folded Spill
	sd	s2, 176(sp)                     # 8-byte Folded Spill
	sd	s3, 168(sp)                     # 8-byte Folded Spill
	sd	s4, 160(sp)                     # 8-byte Folded Spill
	sd	s5, 152(sp)                     # 8-byte Folded Spill
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	sd	s7, 136(sp)                     # 8-byte Folded Spill
	sd	s8, 128(sp)                     # 8-byte Folded Spill
	sd	s9, 120(sp)                     # 8-byte Folded Spill
	sd	s10, 112(sp)                    # 8-byte Folded Spill
	sd	s11, 104(sp)                    # 8-byte Folded Spill
	mv	s0, a3
	mv	s2, a2
	mv	s1, a1
	mv	s3, a0
	li	a0, 1536
	call	malloc
	lui	a1, %hi(pels)
	lw	a1, %lo(pels)(a1)
	lui	s5, %hi(lines)
	lw	a2, %lo(lines)(s5)
	mv	s4, a0
	mulw	a0, a2, a1
	call	InitImage
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	mv	a0, s2
	call	ZeroBits
	sw	s1, 44(s0)
	mv	a0, s0
	call	CountBitsPicture
	lw	a1, 32(s2)
	lw	a2, %lo(lines)(s5)
	add	a0, a1, a0
	li	a1, 16
	sw	a0, 32(s2)
	blt	a2, a1, .LBB11_14
# %bb.1:
	sd	zero, 96(sp)                    # 8-byte Folded Spill
	li	s6, 0
	addi	a0, s4, 32
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	addi	s5, s4, 1056
	j	.LBB11_3
.LBB11_2:                               #   in Loop: Header=BB11_3 Depth=1
	lui	a0, %hi(lines)
	lw	a0, %lo(lines)(a0)
	addi	s6, s6, 1
	slli	a1, a0, 1
	srli	a1, a1, 60
	add	a0, a0, a1
	sraiw	a0, a0, 4
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 16
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	bge	s6, a0, .LBB11_14
.LBB11_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_10 Depth 2
                                        #       Child Loop BB11_11 Depth 3
	sext.w	a0, s6
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	beqz	s6, .LBB11_6
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	lw	a0, 60(s0)
	beqz	a0, .LBB11_6
# %bb.5:                                #   in Loop: Header=BB11_3 Depth=1
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	mv	a1, s1
	call	CountBitsSlice
	lw	a1, 32(s2)
	add	a0, a1, a0
	sw	a0, 32(s2)
.LBB11_6:                               #   in Loop: Header=BB11_3 Depth=1
	lui	a0, %hi(pels)
	lw	a0, %lo(pels)(a0)
	li	a1, 16
	blt	a0, a1, .LBB11_2
# %bb.7:                                #   in Loop: Header=BB11_3 Depth=1
	li	s9, 0
	srliw	a1, a0, 4
	slli	a2, s6, 4
	srli	a2, a2, 1
	addi	a3, a2, 1
	sd	a3, 72(sp)                      # 8-byte Folded Spill
	addi	a3, a2, 2
	sd	a3, 64(sp)                      # 8-byte Folded Spill
	addi	a3, a2, 3
	sd	a3, 56(sp)                      # 8-byte Folded Spill
	addi	a3, a2, 4
	sd	a3, 48(sp)                      # 8-byte Folded Spill
	addi	a3, a2, 5
	sd	a3, 40(sp)                      # 8-byte Folded Spill
	addi	a3, a2, 6
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	addi	a2, a2, 7
	sd	a2, 24(sp)                      # 8-byte Folded Spill
	li	s10, 15
	j	.LBB11_10
.LBB11_8:                               #   in Loop: Header=BB11_10 Depth=2
	li	a1, 0
	mv	a2, s8
	li	a3, 0
	mv	a4, s0
	mv	a5, s2
	call	Count_sac_BitsMB
	li	a1, 3
	li	a4, 64
	mv	a0, s7
	mv	a2, s8
	mv	a3, s2
	call	Count_sac_BitsCoeff
.LBB11_9:                               #   in Loop: Header=BB11_10 Depth=2
	li	a3, 3
	mv	a0, s7
	mv	a1, s4
	mv	a2, s1
	call	MB_Decode
	mv	a0, s4
	call	Clip
	sext.w	a0, s9
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	mv	a2, s4
	ld	a3, 16(sp)                      # 8-byte Folded Reload
	call	ReconImage
	mv	a0, s7
	call	free
	lui	a0, %hi(pels)
	lw	a0, %lo(pels)(a0)
	addi	s9, s9, 1
	slli	a1, a0, 1
	srli	a1, a1, 60
	add	a1, a0, a1
	sraiw	a1, a1, 4
	addi	s10, s10, 16
	bge	s9, a1, .LBB11_2
.LBB11_10:                              #   Parent Loop BB11_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_11 Depth 3
	lw	a2, 52(s2)
	mul	a1, a1, s6
	add	a1, a1, s9
	sw	a1, 52(s0)
	addi	a2, a2, 1
	ld	a3, 0(s3)
	sw	a2, 52(s2)
	slli	a1, s9, 4
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	mul	a2, a2, a0
	add	a3, a3, s10
	ld	a4, 8(sp)                       # 8-byte Folded Reload
.LBB11_11:                              #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a5, a3, a2
	lbu	a6, -15(a5)
	sw	a6, -32(a4)
	lbu	a6, -14(a5)
	sw	a6, -28(a4)
	lbu	a6, -13(a5)
	sw	a6, -24(a4)
	lbu	a6, -12(a5)
	sw	a6, -20(a4)
	lbu	a6, -11(a5)
	sw	a6, -16(a4)
	lbu	a6, -10(a5)
	sw	a6, -12(a4)
	lbu	a6, -9(a5)
	sw	a6, -8(a4)
	lbu	a6, -8(a5)
	sw	a6, -4(a4)
	lbu	a6, -7(a5)
	sw	a6, 0(a4)
	lbu	a6, -6(a5)
	sw	a6, 4(a4)
	lbu	a6, -5(a5)
	sw	a6, 8(a4)
	lbu	a6, -4(a5)
	sw	a6, 12(a4)
	lbu	a6, -3(a5)
	sw	a6, 16(a4)
	lbu	a6, -2(a5)
	sw	a6, 20(a4)
	lbu	a6, -1(a5)
	sw	a6, 24(a4)
	lbu	a5, 0(a5)
	sw	a5, 28(a4)
	addi	a4, a4, 64
	add	a3, a3, a0
	bne	a4, s5, .LBB11_11
# %bb.12:                               #   in Loop: Header=BB11_10 Depth=2
	ld	a2, 8(s3)
	lui	a0, %hi(cpels)
	lw	a0, %lo(cpels)(a0)
	srli	a3, a1, 1
	add	a1, a2, a3
	ld	a2, 16(s3)
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	mul	ra, a4, a0
	add	a4, a1, ra
	lbu	a4, 0(a4)
	add	a2, a2, a3
	sw	a4, 1024(s4)
	add	a3, a2, ra
	lbu	a4, 0(a3)
	addi	a3, a1, 1
	sw	a4, 1280(s4)
	add	a4, a3, ra
	lbu	a5, 0(a4)
	addi	a4, a2, 1
	sw	a5, 1028(s4)
	add	a5, a4, ra
	lbu	a6, 0(a5)
	addi	a5, a1, 2
	sw	a6, 1284(s4)
	add	a6, a5, ra
	lbu	a7, 0(a6)
	addi	a6, a2, 2
	sw	a7, 1032(s4)
	add	a7, a6, ra
	lbu	t0, 0(a7)
	addi	a7, a1, 3
	sw	t0, 1288(s4)
	add	t0, a7, ra
	lbu	t1, 0(t0)
	addi	t0, a2, 3
	sw	t1, 1036(s4)
	add	t1, t0, ra
	lbu	t2, 0(t1)
	addi	t1, a1, 4
	sw	t2, 1292(s4)
	add	t2, t1, ra
	lbu	t3, 0(t2)
	addi	t2, a2, 4
	sw	t3, 1040(s4)
	add	t3, t2, ra
	lbu	t4, 0(t3)
	addi	t3, a1, 5
	sw	t4, 1296(s4)
	add	t4, t3, ra
	lbu	t5, 0(t4)
	addi	t4, a2, 5
	sw	t5, 1044(s4)
	add	t5, t4, ra
	lbu	t6, 0(t5)
	addi	t5, a1, 6
	sw	t6, 1300(s4)
	add	t6, t5, ra
	lbu	s7, 0(t6)
	addi	t6, a2, 6
	sw	s7, 1048(s4)
	add	s7, t6, ra
	lbu	s8, 0(s7)
	addi	s7, a1, 7
	sw	s8, 1304(s4)
	add	s8, s7, ra
	lbu	s11, 0(s8)
	addi	s8, a2, 7
	sw	s11, 1052(s4)
	add	ra, s8, ra
	lbu	s11, 0(ra)
	sw	s11, 1308(s4)
	ld	s11, 72(sp)                     # 8-byte Folded Reload
	mul	s11, s11, a0
	add	ra, a1, s11
	lbu	ra, 0(ra)
	sw	ra, 1056(s4)
	add	ra, a2, s11
	lbu	ra, 0(ra)
	sw	ra, 1312(s4)
	add	ra, a3, s11
	lbu	ra, 0(ra)
	sw	ra, 1060(s4)
	add	ra, a4, s11
	lbu	ra, 0(ra)
	sw	ra, 1316(s4)
	add	ra, a5, s11
	lbu	ra, 0(ra)
	sw	ra, 1064(s4)
	add	ra, a6, s11
	lbu	ra, 0(ra)
	sw	ra, 1320(s4)
	add	ra, a7, s11
	lbu	ra, 0(ra)
	sw	ra, 1068(s4)
	add	ra, t0, s11
	lbu	ra, 0(ra)
	sw	ra, 1324(s4)
	add	ra, t1, s11
	lbu	ra, 0(ra)
	sw	ra, 1072(s4)
	add	ra, t2, s11
	lbu	ra, 0(ra)
	sw	ra, 1328(s4)
	add	ra, t3, s11
	lbu	ra, 0(ra)
	sw	ra, 1076(s4)
	add	ra, t4, s11
	lbu	ra, 0(ra)
	sw	ra, 1332(s4)
	add	ra, t5, s11
	lbu	ra, 0(ra)
	sw	ra, 1080(s4)
	add	ra, t6, s11
	lbu	ra, 0(ra)
	sw	ra, 1336(s4)
	add	ra, s7, s11
	lbu	ra, 0(ra)
	sw	ra, 1084(s4)
	add	s11, s8, s11
	lbu	s11, 0(s11)
	sw	s11, 1340(s4)
	ld	s11, 64(sp)                     # 8-byte Folded Reload
	mul	s11, s11, a0
	add	ra, a1, s11
	lbu	ra, 0(ra)
	sw	ra, 1088(s4)
	add	ra, a2, s11
	lbu	ra, 0(ra)
	sw	ra, 1344(s4)
	add	ra, a3, s11
	lbu	ra, 0(ra)
	sw	ra, 1092(s4)
	add	ra, a4, s11
	lbu	ra, 0(ra)
	sw	ra, 1348(s4)
	add	ra, a5, s11
	lbu	ra, 0(ra)
	sw	ra, 1096(s4)
	add	ra, a6, s11
	lbu	ra, 0(ra)
	sw	ra, 1352(s4)
	add	ra, a7, s11
	lbu	ra, 0(ra)
	sw	ra, 1100(s4)
	add	ra, t0, s11
	lbu	ra, 0(ra)
	sw	ra, 1356(s4)
	add	ra, t1, s11
	lbu	ra, 0(ra)
	sw	ra, 1104(s4)
	add	ra, t2, s11
	lbu	ra, 0(ra)
	sw	ra, 1360(s4)
	add	ra, t3, s11
	lbu	ra, 0(ra)
	sw	ra, 1108(s4)
	add	ra, t4, s11
	lbu	ra, 0(ra)
	sw	ra, 1364(s4)
	add	ra, t5, s11
	lbu	ra, 0(ra)
	sw	ra, 1112(s4)
	add	ra, t6, s11
	lbu	ra, 0(ra)
	sw	ra, 1368(s4)
	add	ra, s7, s11
	lbu	ra, 0(ra)
	sw	ra, 1116(s4)
	add	s11, s8, s11
	lbu	s11, 0(s11)
	sw	s11, 1372(s4)
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	mul	s11, s11, a0
	add	ra, a1, s11
	lbu	ra, 0(ra)
	sw	ra, 1120(s4)
	add	ra, a2, s11
	lbu	ra, 0(ra)
	sw	ra, 1376(s4)
	add	ra, a3, s11
	lbu	ra, 0(ra)
	sw	ra, 1124(s4)
	add	ra, a4, s11
	lbu	ra, 0(ra)
	sw	ra, 1380(s4)
	add	ra, a5, s11
	lbu	ra, 0(ra)
	sw	ra, 1128(s4)
	add	ra, a6, s11
	lbu	ra, 0(ra)
	sw	ra, 1384(s4)
	add	ra, a7, s11
	lbu	ra, 0(ra)
	sw	ra, 1132(s4)
	add	ra, t0, s11
	lbu	ra, 0(ra)
	sw	ra, 1388(s4)
	add	ra, t1, s11
	lbu	ra, 0(ra)
	sw	ra, 1136(s4)
	add	ra, t2, s11
	lbu	ra, 0(ra)
	sw	ra, 1392(s4)
	add	ra, t3, s11
	lbu	ra, 0(ra)
	sw	ra, 1140(s4)
	add	ra, t4, s11
	lbu	ra, 0(ra)
	sw	ra, 1396(s4)
	add	ra, t5, s11
	lbu	ra, 0(ra)
	sw	ra, 1144(s4)
	add	ra, t6, s11
	lbu	ra, 0(ra)
	sw	ra, 1400(s4)
	add	ra, s7, s11
	lbu	ra, 0(ra)
	sw	ra, 1148(s4)
	add	s11, s8, s11
	lbu	s11, 0(s11)
	sw	s11, 1404(s4)
	ld	s11, 48(sp)                     # 8-byte Folded Reload
	mul	s11, s11, a0
	add	ra, a1, s11
	lbu	ra, 0(ra)
	sw	ra, 1152(s4)
	add	ra, a2, s11
	lbu	ra, 0(ra)
	sw	ra, 1408(s4)
	add	ra, a3, s11
	lbu	ra, 0(ra)
	sw	ra, 1156(s4)
	add	ra, a4, s11
	lbu	ra, 0(ra)
	sw	ra, 1412(s4)
	add	ra, a5, s11
	lbu	ra, 0(ra)
	sw	ra, 1160(s4)
	add	ra, a6, s11
	lbu	ra, 0(ra)
	sw	ra, 1416(s4)
	add	ra, a7, s11
	lbu	ra, 0(ra)
	sw	ra, 1164(s4)
	add	ra, t0, s11
	lbu	ra, 0(ra)
	sw	ra, 1420(s4)
	add	ra, t1, s11
	lbu	ra, 0(ra)
	sw	ra, 1168(s4)
	add	ra, t2, s11
	lbu	ra, 0(ra)
	sw	ra, 1424(s4)
	add	ra, t3, s11
	lbu	ra, 0(ra)
	sw	ra, 1172(s4)
	add	ra, t4, s11
	lbu	ra, 0(ra)
	sw	ra, 1428(s4)
	add	ra, t5, s11
	lbu	ra, 0(ra)
	sw	ra, 1176(s4)
	add	ra, t6, s11
	lbu	ra, 0(ra)
	sw	ra, 1432(s4)
	add	ra, s7, s11
	lbu	ra, 0(ra)
	sw	ra, 1180(s4)
	add	s11, s8, s11
	lbu	s11, 0(s11)
	sw	s11, 1436(s4)
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	mul	s11, s11, a0
	add	ra, a1, s11
	lbu	ra, 0(ra)
	sw	ra, 1184(s4)
	add	ra, a2, s11
	lbu	ra, 0(ra)
	sw	ra, 1440(s4)
	add	ra, a3, s11
	lbu	ra, 0(ra)
	sw	ra, 1188(s4)
	add	ra, a4, s11
	lbu	ra, 0(ra)
	sw	ra, 1444(s4)
	add	ra, a5, s11
	lbu	ra, 0(ra)
	sw	ra, 1192(s4)
	add	ra, a6, s11
	lbu	ra, 0(ra)
	sw	ra, 1448(s4)
	add	ra, a7, s11
	lbu	ra, 0(ra)
	sw	ra, 1196(s4)
	add	ra, t0, s11
	lbu	ra, 0(ra)
	sw	ra, 1452(s4)
	add	ra, t1, s11
	lbu	ra, 0(ra)
	sw	ra, 1200(s4)
	add	ra, t2, s11
	lbu	ra, 0(ra)
	sw	ra, 1456(s4)
	add	ra, t3, s11
	lbu	ra, 0(ra)
	sw	ra, 1204(s4)
	add	ra, t4, s11
	lbu	ra, 0(ra)
	sw	ra, 1460(s4)
	add	ra, t5, s11
	lbu	ra, 0(ra)
	sw	ra, 1208(s4)
	add	ra, t6, s11
	lbu	ra, 0(ra)
	sw	ra, 1464(s4)
	add	ra, s7, s11
	lbu	ra, 0(ra)
	sw	ra, 1212(s4)
	add	s11, s8, s11
	lbu	s11, 0(s11)
	sw	s11, 1468(s4)
	ld	s11, 32(sp)                     # 8-byte Folded Reload
	mul	s11, s11, a0
	add	ra, a1, s11
	lbu	ra, 0(ra)
	sw	ra, 1216(s4)
	add	ra, a2, s11
	lbu	ra, 0(ra)
	sw	ra, 1472(s4)
	add	ra, a3, s11
	lbu	ra, 0(ra)
	sw	ra, 1220(s4)
	add	ra, a4, s11
	lbu	ra, 0(ra)
	sw	ra, 1476(s4)
	add	ra, a5, s11
	lbu	ra, 0(ra)
	sw	ra, 1224(s4)
	add	ra, a6, s11
	lbu	ra, 0(ra)
	sw	ra, 1480(s4)
	add	ra, a7, s11
	lbu	ra, 0(ra)
	sw	ra, 1228(s4)
	add	ra, t0, s11
	lbu	ra, 0(ra)
	sw	ra, 1484(s4)
	add	ra, t1, s11
	lbu	ra, 0(ra)
	sw	ra, 1232(s4)
	add	ra, t2, s11
	lbu	ra, 0(ra)
	sw	ra, 1488(s4)
	add	ra, t3, s11
	lbu	ra, 0(ra)
	sw	ra, 1236(s4)
	add	ra, t4, s11
	lbu	ra, 0(ra)
	sw	ra, 1492(s4)
	add	ra, t5, s11
	lbu	ra, 0(ra)
	sw	ra, 1240(s4)
	add	ra, t6, s11
	lbu	ra, 0(ra)
	sw	ra, 1496(s4)
	add	ra, s7, s11
	lbu	ra, 0(ra)
	sw	ra, 1244(s4)
	add	s11, s8, s11
	lbu	s11, 0(s11)
	sw	s11, 1500(s4)
	ld	s11, 24(sp)                     # 8-byte Folded Reload
	mul	a0, s11, a0
	add	a1, a1, a0
	lbu	a1, 0(a1)
	sw	a1, 1248(s4)
	add	a2, a2, a0
	lbu	a1, 0(a2)
	sw	a1, 1504(s4)
	add	a3, a3, a0
	lbu	a1, 0(a3)
	sw	a1, 1252(s4)
	add	a4, a4, a0
	lbu	a1, 0(a4)
	sw	a1, 1508(s4)
	add	a5, a5, a0
	lbu	a1, 0(a5)
	sw	a1, 1256(s4)
	add	a6, a6, a0
	lbu	a1, 0(a6)
	sw	a1, 1512(s4)
	add	a7, a7, a0
	lbu	a1, 0(a7)
	sw	a1, 1260(s4)
	add	t0, t0, a0
	lbu	a1, 0(t0)
	sw	a1, 1516(s4)
	add	t1, t1, a0
	lbu	a1, 0(t1)
	sw	a1, 1264(s4)
	add	t2, t2, a0
	lbu	a1, 0(t2)
	sw	a1, 1520(s4)
	add	t3, t3, a0
	lbu	a1, 0(t3)
	sw	a1, 1268(s4)
	add	t4, t4, a0
	lbu	a1, 0(t4)
	sw	a1, 1524(s4)
	add	t5, t5, a0
	lbu	a1, 0(t5)
	sw	a1, 1272(s4)
	add	t6, t6, a0
	lbu	a1, 0(t6)
	sw	a1, 1528(s4)
	add	s7, s7, a0
	lbu	a1, 0(s7)
	sw	a1, 1276(s4)
	add	a0, s8, a0
	lbu	a0, 0(a0)
	sw	a0, 1532(s4)
	li	a2, 3
	mv	a0, s4
	mv	a1, s1
	call	MB_Encode
	mv	s7, a0
	li	a1, 3
	li	a2, 64
	call	FindCBP
	lui	a1, %hi(syntax_arith_coding)
	lw	a1, %lo(syntax_arith_coding)(a1)
	mv	s8, a0
	li	a0, 3
	bnez	a1, .LBB11_8
# %bb.13:                               #   in Loop: Header=BB11_10 Depth=2
	mv	a2, s8
	li	a3, 0
	mv	a4, s0
	mv	a5, s2
	call	CountBitsMB
	li	a1, 3
	li	a4, 64
	mv	a0, s7
	mv	a2, s8
	mv	a3, s2
	call	CountBitsCoeff
	j	.LBB11_9
.LBB11_14:
	fcvt.s.w	fa5, s1
	fsw	fa5, 76(s0)
	mv	a0, s4
	call	free
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s6, 144(sp)                     # 8-byte Folded Reload
	ld	s7, 136(sp)                     # 8-byte Folded Reload
	ld	s8, 128(sp)                     # 8-byte Folded Reload
	ld	s9, 120(sp)                     # 8-byte Folded Reload
	ld	s10, 112(sp)                    # 8-byte Folded Reload
	ld	s11, 104(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 208
	ret
.Lfunc_end11:
	.size	CodeOneIntra, .Lfunc_end11-CodeOneIntra
                                        # -- End function
	.option	pop
	.type	.L__const.CodeOneOrTwo.bquant,@object # @__const.CodeOneOrTwo.bquant
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
.L__const.CodeOneOrTwo.bquant:
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.size	.L__const.CodeOneOrTwo.bquant, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Couldn't allocate memory for pi_edge\n"
	.size	.L.str, 38

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"mb_encode(): Couldn't allocate qcoeff.\n"
	.size	.L.str.1, 40

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"MB_Coder: Could not allocate space for iblock\n"
	.size	.L.str.2, 47

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"MB_Coder: Could not allocate space for rcoeff\n"
	.size	.L.str.3, 47

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
