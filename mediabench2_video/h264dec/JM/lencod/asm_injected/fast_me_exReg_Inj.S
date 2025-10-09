	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"fast_me.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function DefineThreshold
.LCPI0_0:
	.word	0x41b3851f                      # float 22.4400005
	.text
	.globl	DefineThreshold
	.p2align	2
	.type	DefineThreshold,@function
DefineThreshold:                        # @DefineThreshold
# %bb.0:
	lui	a0, %hi(AlphaSec)
	addi	a0, a0, %lo(AlphaSec)
	lui	a1, 246333
	addi	a1, a1, 1802
	sw	a1, 4(a0)
	sw	a1, 8(a0)
	sw	a1, 12(a0)
	lui	a1, 248381
	addi	a1, a1, 1802
	sw	a1, 16(a0)
	lui	a1, 249692
	addi	a1, a1, 655
	sw	a1, 20(a0)
	sw	a1, 24(a0)
	lui	a1, 250429
	addi	a1, a1, 1802
	sw	a1, 28(a0)
	lui	a0, %hi(AlphaThird)
	addi	a0, a0, %lo(AlphaThird)
	lui	a1, 251740
	addi	a1, a1, 655
	sw	a1, 4(a0)
	lui	a1, 252150
	addi	a1, a1, -983
	sw	a1, 8(a0)
	sw	a1, 12(a0)
	lui	a1, 252477
	addi	a1, a1, 1802
	sw	a1, 16(a0)
	lui	a1, 253788
	addi	a1, a1, 655
	sw	a1, 20(a0)
	lui	a1, 253460
	addi	a1, a1, 1966
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	sw	a1, 24(a0)
	lui	a1, 254362
	addi	a1, a1, -1638
	lw	a2, 16(a2)
	sw	a1, 28(a0)
	lui	a0, 174763
	addiw	a0, a0, -1365
	mul	a0, a2, a0
	srli	a1, a0, 63
	srli	a0, a0, 32
	add	a0, a0, a1
	li	a1, 6
	mul	a1, a0, a1
	subw	a2, a2, a1
	addi	a0, a0, 15
	li	a1, 1
	sllw	a0, a1, a0
	lui	a1, 873813
	addiw	a1, a1, 1365
	mul	a1, a0, a1
	srli	a3, a1, 63
	srli	a1, a1, 32
	add	a1, a1, a3
	slli	a2, a2, 6
	lui	a3, %hi(quant_coef)
	addi	a3, a3, %lo(quant_coef)
	add	a2, a3, a2
	lw	a2, 0(a2)
	lui	a3, %hi(.LCPI0_0)
	flw	fa5, %lo(.LCPI0_0)(a3)
	add	a0, a1, a0
	divw	a0, a0, a2
	fcvt.s.w	fa4, a0
	fdiv.s	fa5, fa4, fa5
	lui	a0, 276480
	fmv.w.x	fa4, a0
	fmul.s	fa5, fa5, fa4
	lui	a0, %hi(Bsize)
	addi	a0, a0, %lo(Bsize)
	fsw	fa5, 28(a0)
	lui	a1, 264192
	fmv.w.x	fa4, a1
	fmul.s	fa5, fa5, fa4
	fsw	fa5, 24(a0)
	fsw	fa5, 20(a0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, 16(a0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, 12(a0)
	fsw	fa5, 8(a0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, 4(a0)
	ret
.Lfunc_end0:
	.size	DefineThreshold, .Lfunc_end0-DefineThreshold
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function DefineThresholdMB
.LCPI1_0:
	.word	0x41b3851f                      # float 22.4400005
	.text
	.globl	DefineThresholdMB
	.p2align	2
	.type	DefineThresholdMB,@function
DefineThresholdMB:                      # @DefineThresholdMB
# %bb.0:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 16(a0)
	lui	a1, 174763
	addiw	a1, a1, -1365
	mul	a1, a0, a1
	srli	a2, a1, 63
	srli	a1, a1, 32
	add	a1, a1, a2
	li	a2, 6
	mul	a2, a1, a2
	subw	a0, a0, a2
	addi	a1, a1, 15
	li	a2, 1
	sllw	a1, a2, a1
	lui	a2, 873813
	addiw	a2, a2, 1365
	mul	a2, a1, a2
	srli	a3, a2, 63
	srli	a2, a2, 32
	add	a2, a2, a3
	slli	a0, a0, 6
	lui	a3, %hi(quant_coef)
	addi	a3, a3, %lo(quant_coef)
	add	a0, a3, a0
	lw	a0, 0(a0)
	lui	a3, %hi(.LCPI1_0)
	flw	fa5, %lo(.LCPI1_0)(a3)
	add	a1, a2, a1
	divw	a0, a1, a0
	fcvt.s.w	fa4, a0
	fdiv.s	fa5, fa4, fa5
	lui	a0, 276480
	fmv.w.x	fa4, a0
	fmul.s	fa5, fa5, fa4
	lui	a0, %hi(Bsize)
	addi	a0, a0, %lo(Bsize)
	fsw	fa5, 28(a0)
	lui	a1, 264192
	fmv.w.x	fa4, a1
	fmul.s	fa5, fa5, fa4
	fsw	fa5, 24(a0)
	fsw	fa5, 20(a0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, 16(a0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, 12(a0)
	fsw	fa5, 8(a0)
	fmul.s	fa5, fa5, fa4
	fsw	fa5, 4(a0)
	ret
.Lfunc_end1:
	.size	DefineThresholdMB, .Lfunc_end1-DefineThresholdMB
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem_FME                     # -- Begin function get_mem_FME
	.p2align	2
	.type	get_mem_FME,@function
get_mem_FME:                            # @get_mem_FME
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lw	a0, 52(a0)
	srai	a0, a0, 4
	addi	a0, a0, 1
	li	a1, 1
	call	calloc
	lui	a1, %hi(flag_intra)
	sd	a0, %lo(flag_intra)(a1)
	bnez	a0, .LBB2_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
.LBB2_2:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 32(a0)
	slliw	a1, a0, 1
	addi	a1, a1, 1
	lui	a0, %hi(McostState)
	addi	a0, a0, %lo(McostState)
	mv	a2, a1
	call	get_mem2D
	ld	a1, %lo(img)(s1)
	lw	a1, 36(a1)
	mv	s0, a0
	lui	a0, %hi(fastme_ref_cost)
	addi	a0, a0, %lo(fastme_ref_cost)
	li	a2, 9
	li	a3, 4
	li	a4, 4
	call	get_mem4Dint
	ld	a1, %lo(img)(s1)
	lw	a2, 60(a1)
	add	s0, a0, s0
	slli	a0, a2, 1
	lw	a1, 52(a1)
	srli	a0, a0, 62
	add	a0, a2, a0
	sraiw	a2, a0, 2
	slli	a0, a1, 1
	srli	a0, a0, 62
	add	a0, a1, a0
	sraiw	a3, a0, 2
	lui	a0, %hi(fastme_l0_cost)
	addi	a0, a0, %lo(fastme_l0_cost)
	li	a1, 9
	call	get_mem3Dint
	ld	a1, %lo(img)(s1)
	lw	a2, 60(a1)
	add	s1, s0, a0
	slli	a0, a2, 1
	lw	a1, 52(a1)
	srli	a0, a0, 62
	add	a0, a2, a0
	sraiw	a2, a0, 2
	slli	a0, a1, 1
	srli	a0, a0, 62
	add	a0, a1, a0
	sraiw	a3, a0, 2
	lui	a0, %hi(fastme_l1_cost)
	addi	a0, a0, %lo(fastme_l1_cost)
	li	a1, 9
	call	get_mem3Dint
	mv	s0, a0
	lui	a0, %hi(SearchState)
	addi	a0, a0, %lo(SearchState)
	li	a1, 7
	li	a2, 7
	call	get_mem2D
	add	a0, s0, a0
	addw	a0, s1, a0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	get_mem_FME, .Lfunc_end2-get_mem_FME
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem_FME                    # -- Begin function free_mem_FME
	.p2align	2
	.type	free_mem_FME,@function
free_mem_FME:                           # @free_mem_FME
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(McostState)
	ld	a0, %lo(McostState)(a0)
	call	free_mem2D
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lui	a0, %hi(fastme_ref_cost)
	ld	a0, %lo(fastme_ref_cost)(a0)
	lw	a1, 36(a1)
	li	a2, 9
	call	free_mem4Dint
	lui	a0, %hi(fastme_l0_cost)
	ld	a0, %lo(fastme_l0_cost)(a0)
	li	a1, 9
	call	free_mem3Dint
	lui	a0, %hi(fastme_l1_cost)
	ld	a0, %lo(fastme_l1_cost)(a0)
	li	a1, 9
	call	free_mem3Dint
	lui	a0, %hi(SearchState)
	ld	a0, %lo(SearchState)(a0)
	call	free_mem2D
	lui	a0, %hi(flag_intra)
	ld	a0, %lo(flag_intra)(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.Lfunc_end3:
	.size	free_mem_FME, .Lfunc_end3-free_mem_FME
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	PartCalMad                      # -- Begin function PartCalMad
	.p2align	2
	.type	PartCalMad,@function
PartCalMad:                             # @PartCalMad
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
	lui	t0, %hi(img)
	ld	t0, %lo(img)(t0)
	lui	t1, 22
	add	t1, t0, t1
	lw	t1, 108(t1)
	mv	s5, a7
	mv	s0, a6
	mv	s2, a4
	mv	s6, a3
	mv	s1, a2
	mv	s7, a1
	mv	s3, a0
	beqz	t1, .LBB4_3
# %bb.1:
	lui	a0, 8
	addiw	a0, a0, -1192
	add	a0, t0, a0
	lw	a1, 12(t0)
	ld	a0, 0(a0)
	li	a2, 528
	mul	a1, a1, a2
	add	a0, a0, a1
	lw	a0, 424(a0)
	beqz	a0, .LBB4_3
# %bb.2:
	lw	a0, 60(t0)
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	s4, a0, 1
	bgtz	s6, .LBB4_4
	j	.LBB4_14
.LBB4_3:
	lw	s4, 60(t0)
	blez	s6, .LBB4_14
.LBB4_4:
	ld	s9, 120(sp)
	ld	s8, 112(sp)
	blez	a5, .LBB4_10
# %bb.5:
	li	s10, 0
	addi	a5, a5, -1
	slli	a5, a5, 32
	srli	a5, a5, 29
	addi	s11, a5, 8
.LBB4_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a5, 52(a0)
	addw	a2, s10, s9
	mv	a0, s2
	mv	a1, s3
	mv	a3, s8
	mv	a4, s4
	jalr	s1
	slli	a1, s10, 3
	add	a1, s7, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	add	a3, a1, s11
.LBB4_7:                                #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a4, 0(a1)
	lhu	a5, 0(a0)
	lhu	a6, 2(a1)
	lhu	a7, 2(a0)
	lhu	t0, 4(a1)
	lhu	t1, 4(a0)
	lhu	t2, 6(a1)
	lhu	t3, 6(a0)
	sub	a4, a4, a5
	sub	a5, a6, a7
	sub	a6, t0, t1
	sub	a7, t2, t3
	slli	a4, a4, 2
	add	a4, a2, a4
	lw	a4, 0(a4)
	slli	a5, a5, 2
	add	a5, a2, a5
	lw	a5, 0(a5)
	slli	a6, a6, 2
	add	a6, a2, a6
	lw	a6, 0(a6)
	slli	a7, a7, 2
	add	a7, a2, a7
	lw	a7, 0(a7)
	add	a4, a4, s0
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s0, a4, a7
	addi	a1, a1, 8
	addi	a0, a0, 8
	bne	a1, a3, .LBB4_7
# %bb.8:                                #   in Loop: Header=BB4_6 Depth=1
	bge	s0, s5, .LBB4_14
# %bb.9:                                #   in Loop: Header=BB4_6 Depth=1
	addi	s10, s10, 1
	bltu	s10, s6, .LBB4_6
	j	.LBB4_14
.LBB4_10:
	bge	s0, s5, .LBB4_13
# %bb.11:                               # %.preheader
	addw	s5, s9, s6
	lui	s6, %hi(img)
.LBB4_12:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(img)(s6)
	lw	a5, 52(a0)
	sext.w	a2, s9
	mv	a0, s2
	mv	a1, s3
	mv	a3, s8
	mv	a4, s4
	jalr	s1
	addiw	s9, s9, 1
	bne	s9, s5, .LBB4_12
	j	.LBB4_14
.LBB4_13:
	lw	a5, 52(t0)
	mv	a0, s2
	mv	a1, s3
	mv	a2, s9
	mv	a3, s8
	mv	a4, s4
	jalr	s1
.LBB4_14:
	mv	a0, s0
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	ld	s11, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end4:
	.size	PartCalMad, .Lfunc_end4-PartCalMad
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FastIntegerPelBlockMotionSearch # -- Begin function FastIntegerPelBlockMotionSearch
	.p2align	2
	.type	FastIntegerPelBlockMotionSearch,@function
FastIntegerPelBlockMotionSearch:        # @FastIntegerPelBlockMotionSearch
# %bb.0:
	addi	sp, sp, -384
	sd	ra, 376(sp)                     # 8-byte Folded Spill
	sd	s0, 368(sp)                     # 8-byte Folded Spill
	sd	s1, 360(sp)                     # 8-byte Folded Spill
	sd	s2, 352(sp)                     # 8-byte Folded Spill
	sd	s3, 344(sp)                     # 8-byte Folded Spill
	sd	s4, 336(sp)                     # 8-byte Folded Spill
	sd	s5, 328(sp)                     # 8-byte Folded Spill
	sd	s6, 320(sp)                     # 8-byte Folded Spill
	sd	s7, 312(sp)                     # 8-byte Folded Spill
	sd	s8, 304(sp)                     # 8-byte Folded Spill
	sd	s9, 296(sp)                     # 8-byte Folded Spill
	sd	s10, 288(sp)                    # 8-byte Folded Spill
	sd	s11, 280(sp)                    # 8-byte Folded Spill
	fsd	fs0, 272(sp)                    # 8-byte Folded Spill
	fsd	fs1, 264(sp)                    # 8-byte Folded Spill
	lui	t0, %hi(img)
	ld	t0, %lo(img)(t0)
	mv	s1, a7
	sd	a6, 144(sp)                     # 8-byte Folded Spill
	mv	s11, a5
	mv	a7, a4
	mv	s2, a2
	mv	s9, a1
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	lui	a0, 22
	add	a0, t0, a0
	lw	a5, 108(a0)
	ld	t2, 384(sp)
	lui	a0, 8
	addiw	a2, a0, -1192
	add	a2, t0, a2
	beqz	a5, .LBB5_4
# %bb.1:
	lw	a0, 12(t0)
	ld	a1, 0(a2)
	li	a4, 528
	mul	a4, a0, a4
	add	a1, a1, a4
	lw	a1, 424(a1)
	beqz	a1, .LBB5_5
# %bb.2:
	andi	a0, a0, 1
	li	a1, 2
	beqz	a0, .LBB5_5
# %bb.3:
	li	a1, 4
	j	.LBB5_5
.LBB5_4:
	li	a1, 0
.LBB5_5:
	ld	t3, 392(sp)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lh	s10, 0(t2)
	slli	a4, s11, 3
	beqz	a5, .LBB5_8
# %bb.6:
	lw	a6, 12(t0)
	ld	a2, 0(a2)
	li	a5, 528
	mul	a5, a6, a5
	add	a2, a2, a5
	lw	a2, 424(a2)
	beqz	a2, .LBB5_8
# %bb.7:
	lw	a2, 60(t0)
	srliw	a5, a2, 31
	add	a2, a2, a5
	sraiw	a2, a2, 1
	j	.LBB5_9
.LBB5_8:
	lw	a2, 60(t0)
.LBB5_9:
	lui	a5, %hi(active_pps)
	ld	a5, %lo(active_pps)(a5)
	lh	t5, 0(t3)
	lw	a6, 192(a5)
	ld	s7, 400(sp)
	add	t1, a0, a4
	addw	t4, s10, a3
	beqz	a6, .LBB5_12
# %bb.10:
	lw	a4, 24(t0)
	beqz	a4, .LBB5_14
# %bb.11:
	li	a6, 3
	beq	a4, a6, .LBB5_14
.LBB5_12:
	lw	a4, 196(a5)
	beqz	a4, .LBB5_16
# %bb.13:
	lw	a4, 24(t0)
	li	a5, 1
	bne	a4, a5, .LBB5_16
.LBB5_14:
	lw	a4, 1912(a0)
	beqz	a4, .LBB5_16
# %bb.15:
	lui	a4, 2
	addiw	a4, a4, -1752
	j	.LBB5_17
.LBB5_16:
	lui	a4, 2
	addiw	a4, a4, -1760
.LBB5_17:
	addw	a1, a1, s2
	slli	a1, a1, 3
	lui	a5, %hi(listX)
	addi	a5, a5, %lo(listX)
	add	a1, a5, a1
	ld	a1, 0(a1)
	lw	a5, 84(t1)
	sd	a5, 256(sp)                     # 8-byte Folded Spill
	slli	s3, a3, 2
	slli	a5, s9, 3
	add	a1, a1, a5
	ld	a1, 0(a1)
	lw	a5, 88(t1)
	sd	a5, 232(sp)                     # 8-byte Folded Spill
	slli	s8, a7, 2
	addw	t1, t5, a7
	add	a1, a1, a4
	sd	t4, 248(sp)                     # 8-byte Folded Spill
	sd	t1, 240(sp)                     # 8-byte Folded Spill
	sd	t5, 168(sp)                     # 8-byte Folded Spill
	sd	a7, 128(sp)                     # 8-byte Folded Spill
	sd	a3, 120(sp)                     # 8-byte Folded Spill
	sd	t2, 104(sp)                     # 8-byte Folded Spill
	sd	t3, 96(sp)                      # 8-byte Folded Spill
	bge	s7, t4, .LBB5_22
# %bb.18:
	lw	a4, 52(t0)
	not	a5, s7
	add	a4, a5, a4
	ld	a6, 256(sp)                     # 8-byte Folded Reload
	subw	a4, a4, a6
	bge	t4, a4, .LBB5_22
# %bb.19:
	bge	s7, t1, .LBB5_22
# %bb.20:
	ld	a4, 232(sp)                     # 8-byte Folded Reload
	subw	a4, a5, a4
	addw	a2, a4, a2
	bge	t1, a2, .LBB5_22
# %bb.21:
	lui	a2, %hi(FastLineX)
	addi	a2, a2, %lo(FastLineX)
	j	.LBB5_23
.LBB5_22:
	lui	a2, %hi(UMVLineX)
	addi	a2, a2, %lo(UMVLineX)
.LBB5_23:
	sd	a2, 216(sp)                     # 8-byte Folded Spill
	ld	a2, 416(sp)
	sd	a2, 208(sp)                     # 8-byte Folded Spill
	ld	s0, 408(sp)
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	srai	a2, a2, 2
	sd	a2, 200(sp)                     # 8-byte Folded Spill
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	add	a2, s3, a2
	sd	a2, 176(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(McostState)
	ld	a2, %lo(McostState)(a2)
	lw	a3, 32(a0)
	add	a0, s8, s1
	sd	a0, 184(sp)                     # 8-byte Folded Spill
	ld	a0, 0(a1)
	sd	a0, 192(sp)                     # 8-byte Folded Spill
	ld	a0, 0(a2)
	slli	a3, a3, 1
	addi	a3, a3, 1
	mulw	a2, a3, a3
	li	a1, 0
	call	memset
	seqz	a0, s2
	sgtz	a1, s9
	and	a0, a1, a0
	fmv.w.x	fs0, zero
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB5_39
# %bb.24:
	lui	a0, %hi(pred_SAD_ref)
	lw	a0, %lo(pred_SAD_ref)(a0)
	fmv.s	fs1, fs0
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB5_26
.LBB5_25:
	mul	a0, a0, a0
	slli	a1, s11, 2
	lui	a2, %hi(Bsize)
	addi	a2, a2, %lo(Bsize)
	add	a2, a2, a1
	flw	fa5, 0(a2)
	lui	a2, %hi(AlphaSec)
	addi	a2, a2, %lo(AlphaSec)
	add	a2, a2, a1
	flw	fa4, 0(a2)
	lui	a2, %hi(AlphaThird)
	addi	a2, a2, %lo(AlphaThird)
	add	a1, a2, a1
	flw	fa3, 0(a1)
	fcvt.s.wu	fa2, a0
	fdiv.s	fa5, fa5, fa2
	fsub.s	fs0, fa5, fa4
	fsub.s	fs1, fa5, fa3
.LBB5_26:
	sd	s2, 136(sp)                     # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, a3, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, a4, 2
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a5
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	a4, 8(sp)
	sd	a3, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, s0
	call	PartCalMad
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(McostState)
	ld	a1, %lo(McostState)(a1)
	slli	a2, s7, 3
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	add	a1, a1, a2
	ld	a1, 0(a1)
	mv	t0, a0
	add	a1, a1, s7
	li	a0, 1
	sb	a0, 0(a1)
	slt	a0, t0, s0
	negw	a0, a0
	and	s1, a0, a6
	and	s2, a0, a7
	blt	t0, s0, .LBB5_28
# %bb.27:
	mv	t0, s0
.LBB5_28:
	addiw	s0, s1, -1
	subw	a0, s0, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	subw	s4, s2, a7
	ld	t3, 168(sp)                     # 8-byte Folded Reload
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	blt	s7, a2, .LBB5_31
# %bb.29:
	sraiw	a1, s4, 31
	xor	a2, s4, a1
	subw	a2, a2, a1
	bltu	s7, a2, .LBB5_31
# %bb.30:
	lui	s3, %hi(McostState)
	ld	a1, %lo(McostState)(s3)
	addw	s6, s4, s7
	slli	s6, s6, 3
	add	a1, a1, s6
	ld	a1, 0(a1)
	addw	s5, a0, s7
	add	a1, a1, s5
	lbu	a0, 0(a1)
	beqz	a0, .LBB5_44
.LBB5_31:
	mv	s0, s1
.LBB5_32:
	subw	s3, s1, a6
	sraiw	a0, s3, 31
	xor	a1, s3, a0
	subw	s5, a1, a0
	lui	s8, 16
	sd	s10, 152(sp)                    # 8-byte Folded Spill
	blt	s7, s5, .LBB5_34
# %bb.33:
	addiw	s6, s2, 1
	subw	a0, s6, a7
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bgeu	s7, a2, .LBB5_41
.LBB5_34:
	mv	a4, s2
.LBB5_35:
	addiw	s6, s1, 1
	subw	a0, s6, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	addiw	s8, s8, -1
	blt	s7, a2, .LBB5_49
# %bb.36:
	sraiw	a1, s4, 31
	xor	a2, s4, a1
	subw	a2, a2, a1
	bltu	s7, a2, .LBB5_49
# %bb.37:
	sd	s9, 160(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(McostState)
	ld	a1, %lo(McostState)(a1)
	addw	s9, s4, s7
	slli	s9, s9, 3
	add	a1, a1, s9
	ld	a1, 0(a1)
	addw	s4, a0, s7
	add	a1, a1, s4
	lbu	a0, 0(a1)
	beqz	a0, .LBB5_47
# %bb.38:
	ld	s9, 160(sp)                     # 8-byte Folded Reload
	j	.LBB5_49
.LBB5_39:
	li	a0, 1
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	bne	s11, a0, .LBB5_43
# %bb.40:
	lui	a0, %hi(pred_SAD_space)
	lw	a0, %lo(pred_SAD_space)(a0)
	fmv.s	fs1, fs0
	bnez	a0, .LBB5_25
	j	.LBB5_26
.LBB5_41:
	sd	s9, 160(sp)                     # 8-byte Folded Spill
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(McostState)
	ld	a1, %lo(McostState)(a1)
	addw	s9, a0, s7
	slli	s9, s9, 3
	add	a1, a1, s9
	ld	a0, 0(a1)
	addw	s11, s3, s7
	add	a0, a0, s11
	lbu	a0, 0(a0)
	beqz	a0, .LBB5_114
# %bb.42:
	mv	a4, s2
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	ld	s9, 160(sp)                     # 8-byte Folded Reload
	j	.LBB5_35
.LBB5_43:
	lui	a0, %hi(pred_SAD_uplayer)
	lw	a0, %lo(pred_SAD_uplayer)(a0)
	fmv.s	fs1, fs0
	bnez	a0, .LBB5_25
	j	.LBB5_26
.LBB5_44:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s0, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s2, 8(sp)
	sd	s0, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s8, t0
	call	PartCalMad
	ld	a1, %lo(McostState)(s3)
	add	a1, a1, s6
	ld	a1, 0(a1)
	mv	t0, a0
	add	a1, a1, s5
	li	a2, 1
	sb	a2, 0(a1)
	blt	a0, s8, .LBB5_46
# %bb.45:
	mv	s0, s1
	mv	t0, s8
.LBB5_46:
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	t3, 168(sp)                     # 8-byte Folded Reload
	j	.LBB5_32
.LBB5_47:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s6, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s2, 8(sp)
	sd	s6, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	sd	a4, 56(sp)                      # 8-byte Folded Spill
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s10, s11
	mv	s11, t0
	call	PartCalMad
	ld	a4, 56(sp)                      # 8-byte Folded Reload
	ld	t3, 168(sp)                     # 8-byte Folded Reload
	mv	t0, s11
	mv	s11, s10
	ld	s10, 152(sp)                    # 8-byte Folded Reload
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(McostState)
	ld	a1, %lo(McostState)(a1)
	add	a1, a1, s9
	ld	a1, 0(a1)
	add	a1, a1, s4
	li	a2, 1
	sb	a2, 0(a1)
	ld	s9, 160(sp)                     # 8-byte Folded Reload
	bge	a0, t0, .LBB5_49
# %bb.48:
	mv	s0, s6
	mv	a4, s2
	mv	t0, a0
.LBB5_49:
	and	s4, s10, s8
	and	s8, t3, s8
	blt	s7, s5, .LBB5_54
# %bb.50:
	addiw	s2, s2, -1
	subw	a0, s2, a7
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bltu	s7, a2, .LBB5_54
# %bb.51:
	lui	a1, %hi(McostState)
	ld	a1, %lo(McostState)(a1)
	addw	s6, a0, s7
	slli	s6, s6, 3
	add	a1, a1, s6
	ld	a0, 0(a1)
	addw	s3, s3, s7
	add	a0, a0, s3
	lbu	a0, 0(a0)
	bnez	a0, .LBB5_54
# %bb.52:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s1, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s2, 8(sp)
	sd	s1, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	mv	s5, s11
	mv	s11, a4
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s10, s9
	mv	s9, t0
	call	PartCalMad
	mv	a4, s11
	mv	s11, s5
	ld	t3, 168(sp)                     # 8-byte Folded Reload
	mv	t0, s9
	mv	s9, s10
	ld	s10, 152(sp)                    # 8-byte Folded Reload
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(McostState)
	ld	a1, %lo(McostState)(a1)
	add	a1, a1, s6
	ld	a1, 0(a1)
	add	a1, a1, s3
	li	a2, 1
	sb	a2, 0(a1)
	bge	a0, t0, .LBB5_54
# %bb.53:
	mv	s0, s1
	mv	a4, s2
	mv	t0, a0
.LBB5_54:
	or	a0, s4, s8
	sd	s7, 160(sp)                     # 8-byte Folded Spill
	bnez	a0, .LBB5_56
# %bb.55:
	mv	t1, s0
	mv	t4, a4
	ld	t2, 136(sp)                     # 8-byte Folded Reload
	j	.LBB5_77
.LBB5_56:
	sraiw	a0, s10, 31
	xor	a1, s10, a0
	subw	a1, a1, a0
	blt	s7, a1, .LBB5_61
# %bb.57:
	sraiw	a0, t3, 31
	xor	a1, t3, a0
	subw	a1, a1, a0
	blt	s7, a1, .LBB5_61
# %bb.58:
	lui	s1, %hi(McostState)
	ld	a0, %lo(McostState)(s1)
	subw	s3, s7, t3
	slli	s3, s3, 3
	add	a0, a0, s3
	ld	a0, 0(a0)
	subw	s2, s7, s10
	add	a0, a0, s2
	lbu	a0, 0(a0)
	bnez	a0, .LBB5_61
# %bb.59:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 2
	sub	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 2
	sub	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	sd	a0, 8(sp)
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	sd	a0, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	mv	s5, a4
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s4, t0
	call	PartCalMad
	mv	a4, s5
	ld	t3, 168(sp)                     # 8-byte Folded Reload
	mv	t0, s4
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s1)
	add	a1, a1, s3
	ld	a1, 0(a1)
	add	a1, a1, s2
	li	a2, 1
	sb	a2, 0(a1)
	bge	a0, s4, .LBB5_61
# %bb.60:
	ld	s0, 120(sp)                     # 8-byte Folded Reload
	ld	a4, 128(sp)                     # 8-byte Folded Reload
	mv	t0, a0
.LBB5_61:
	addiw	t1, s0, -1
	subw	a0, t1, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	subw	s3, a4, a7
	blt	s7, a2, .LBB5_64
# %bb.62:
	sraiw	a1, s3, 31
	xor	a2, s3, a1
	subw	a2, a2, a1
	bltu	s7, a2, .LBB5_64
# %bb.63:
	lui	s1, %hi(McostState)
	ld	a1, %lo(McostState)(s1)
	addw	s2, s3, s7
	slli	s2, s2, 3
	add	a1, a1, s2
	ld	a1, 0(a1)
	addw	s4, a0, s7
	add	a1, a1, s4
	lbu	a0, 0(a1)
	beqz	a0, .LBB5_159
.LBB5_64:
	mv	t1, s0
.LBB5_65:
	subw	s1, s0, a6
	sraiw	a0, s1, 31
	xor	a1, s1, a0
	subw	s4, a1, a0
	blt	s7, s4, .LBB5_68
# %bb.66:
	addiw	s5, a4, 1
	subw	a0, s5, a7
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bltu	s7, a2, .LBB5_68
# %bb.67:
	lui	a1, %hi(McostState)
	ld	a1, %lo(McostState)(a1)
	addw	s2, a0, s7
	slli	s2, s2, 3
	add	a1, a1, s2
	ld	a0, 0(a1)
	addw	s8, s1, s7
	add	a0, a0, s8
	lbu	a0, 0(a0)
	beqz	a0, .LBB5_162
.LBB5_68:
	mv	t4, a4
.LBB5_69:
	addiw	s5, s0, 1
	subw	a0, s5, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	blt	s7, a2, .LBB5_74
# %bb.70:
	sraiw	a1, s3, 31
	xor	a2, s3, a1
	subw	a2, a2, a1
	bltu	s7, a2, .LBB5_74
# %bb.71:
	lui	a1, %hi(McostState)
	ld	a1, %lo(McostState)(a1)
	addw	s2, s3, s7
	slli	s2, s2, 3
	add	a1, a1, s2
	ld	a1, 0(a1)
	addw	s3, a0, s7
	add	a1, a1, s3
	lbu	a0, 0(a1)
	bnez	a0, .LBB5_74
# %bb.72:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s5, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, a4, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	a4, 8(sp)
	sd	s5, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	mv	s6, a4
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s8, t0
	mv	s7, t1
	mv	s10, t4
	call	PartCalMad
	mv	a4, s6
	ld	t3, 168(sp)                     # 8-byte Folded Reload
	mv	t4, s10
	mv	t1, s7
	ld	s7, 160(sp)                     # 8-byte Folded Reload
	mv	t0, s8
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(McostState)
	ld	a1, %lo(McostState)(a1)
	add	a1, a1, s2
	ld	a1, 0(a1)
	add	a1, a1, s3
	li	a2, 1
	sb	a2, 0(a1)
	bge	a0, s8, .LBB5_74
# %bb.73:
	mv	t1, s5
	mv	t4, a4
	mv	t0, a0
.LBB5_74:
	blt	s7, s4, .LBB5_76
# %bb.75:
	addiw	s10, a4, -1
	subw	a0, s10, a7
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bgeu	s7, a2, .LBB5_111
.LBB5_76:
	ld	t2, 136(sp)                     # 8-byte Folded Reload
.LBB5_77:
	li	a0, 2
	blt	s11, a0, .LBB5_82
# %bb.78:
	lui	a2, %hi(pred_MV_uplayer)
	lw	a0, %lo(pred_MV_uplayer)(a2)
	slli	a1, a0, 1
	srli	a1, a1, 62
	add	a0, a0, a1
	sraiw	a0, a0, 2
	ld	s10, 152(sp)                    # 8-byte Folded Reload
	sub	a1, a0, s10
	sraiw	a3, a1, 31
	xor	a4, a1, a3
	subw	a4, a4, a3
	blt	s7, a4, .LBB5_166
# %bb.79:
	addi	a2, a2, %lo(pred_MV_uplayer)
	lw	a2, 4(a2)
	slli	a3, a2, 1
	srli	a3, a3, 62
	add	a2, a2, a3
	sraiw	a2, a2, 2
	sub	a3, a2, t3
	sraiw	a4, a3, 31
	xor	a5, a3, a4
	subw	a5, a5, a4
	bltu	s7, a5, .LBB5_166
# %bb.80:
	lui	s3, %hi(McostState)
	ld	a4, %lo(McostState)(s3)
	addw	s5, a3, s7
	slli	s5, s5, 3
	add	a4, a4, s5
	ld	a3, 0(a4)
	addw	s4, a1, s7
	add	a3, a3, s4
	lbu	a1, 0(a3)
	beqz	a1, .LBB5_164
# %bb.81:
	ld	t2, 136(sp)                     # 8-byte Folded Reload
	j	.LBB5_166
.LBB5_82:
	ld	s10, 152(sp)                    # 8-byte Folded Reload
.LBB5_83:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 152(a1)
	beqz	a1, .LBB5_89
# %bb.84:
	li	a1, 2
	blt	s9, a1, .LBB5_86
# %bb.85:
	beqz	t2, .LBB5_93
.LBB5_86:
	bnez	t2, .LBB5_98
# %bb.87:
	li	a1, 1
	bltu	a1, s9, .LBB5_98
# %bb.88:
	lw	a0, 24(a0)
	beq	a0, a1, .LBB5_93
	j	.LBB5_98
.LBB5_89:
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	bnez	a1, .LBB5_93
# %bb.90:
	bnez	t2, .LBB5_98
# %bb.91:
	bnez	s9, .LBB5_98
# %bb.92:
	lw	a0, 24(a0)
	li	a1, 1
	bne	a0, a1, .LBB5_98
.LBB5_93:
	lui	a2, %hi(pred_MV_ref)
	lw	a0, %lo(pred_MV_ref)(a2)
	slli	a1, a0, 1
	srli	a1, a1, 62
	add	a0, a0, a1
	sraiw	a0, a0, 2
	sub	a1, a0, s10
	sraiw	a3, a1, 31
	xor	a4, a1, a3
	subw	a4, a4, a3
	blt	s7, a4, .LBB5_98
# %bb.94:
	addi	a2, a2, %lo(pred_MV_ref)
	lw	a2, 4(a2)
	slli	a3, a2, 1
	srli	a3, a3, 62
	add	a2, a2, a3
	sraiw	a2, a2, 2
	sub	a3, a2, t3
	sraiw	a4, a3, 31
	xor	a5, a3, a4
	subw	a5, a5, a4
	bltu	s7, a5, .LBB5_98
# %bb.95:
	lui	s3, %hi(McostState)
	ld	a4, %lo(McostState)(s3)
	addw	s5, a3, s7
	slli	s5, s5, 3
	add	a4, a4, s5
	ld	a3, 0(a4)
	addw	s4, a1, s7
	add	a3, a3, s4
	lbu	a1, 0(a3)
	bnez	a1, .LBB5_98
# %bb.96:
	ld	s0, 120(sp)                     # 8-byte Folded Reload
	addw	s0, a0, s0
	ld	s1, 128(sp)                     # 8-byte Folded Reload
	addw	s1, a2, s1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s0, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s1, 8(sp)
	sd	s0, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s2, t0
	mv	s6, t1
	mv	s8, t4
	call	PartCalMad
	mv	t4, s8
	mv	t1, s6
	mv	t0, s2
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s3)
	add	a1, a1, s5
	ld	a1, 0(a1)
	add	a1, a1, s4
	li	a2, 1
	sb	a2, 0(a1)
	bge	a0, s2, .LBB5_98
# %bb.97:
	mv	t1, s0
	mv	t4, s1
	mv	t0, a0
.LBB5_98:
	addiw	a4, t1, -1
	subw	a0, a4, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	blt	s7, a2, .LBB5_101
# %bb.99:
	subw	a1, t4, a7
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	s7, a3, .LBB5_101
# %bb.100:
	lui	s0, %hi(McostState)
	ld	a2, %lo(McostState)(s0)
	addw	s2, a1, s7
	slli	s2, s2, 3
	add	a2, a2, s2
	ld	a1, 0(a2)
	addw	s1, a0, s7
	add	a1, a1, s1
	lbu	a0, 0(a1)
	beqz	a0, .LBB5_116
.LBB5_101:
	mv	t2, t1
.LBB5_102:
	subw	s0, t1, a6
	sraiw	a0, s0, 31
	xor	s1, s0, a0
	subw	s1, s1, a0
	blt	s7, s1, .LBB5_104
# %bb.103:
	addiw	s3, t4, 1
	subw	a0, s3, a7
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bgeu	s7, a2, .LBB5_109
.LBB5_104:
	mv	t3, t4
.LBB5_105:
	addiw	s3, t1, 1
	subw	a0, s3, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	blt	s7, a2, .LBB5_121
# %bb.106:
	subw	a1, t4, a7
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	s7, a3, .LBB5_121
# %bb.107:
	mv	s10, t3
	mv	s8, t2
	lui	s4, %hi(McostState)
	ld	a2, %lo(McostState)(s4)
	addw	s2, a1, s7
	slli	s2, s2, 3
	add	a2, a2, s2
	ld	a1, 0(a2)
	addw	s5, a0, s7
	add	a1, a1, s5
	lbu	a0, 0(a1)
	beqz	a0, .LBB5_119
# %bb.108:
	mv	t2, s8
	mv	t3, s10
	j	.LBB5_121
.LBB5_109:
	mv	s8, t2
	lui	s4, %hi(McostState)
	ld	a1, %lo(McostState)(s4)
	addw	s2, a0, s7
	slli	s2, s2, 3
	add	a1, a1, s2
	ld	a0, 0(a1)
	addw	s5, s0, s7
	add	a0, a0, s5
	lbu	a0, 0(a0)
	beqz	a0, .LBB5_155
# %bb.110:
	mv	t3, t4
	mv	t2, s8
	j	.LBB5_105
.LBB5_111:
	lui	s3, %hi(McostState)
	ld	a1, %lo(McostState)(s3)
	addw	s2, a0, s7
	slli	s2, s2, 3
	add	a1, a1, s2
	ld	a0, 0(a1)
	addw	s1, s1, s7
	add	a0, a0, s1
	lbu	a0, 0(a0)
	ld	t2, 136(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB5_77
# %bb.112:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s0, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s10, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s10, 8(sp)
	sd	s0, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s4, t0
	mv	s5, t1
	mv	s6, t4
	call	PartCalMad
	ld	t3, 168(sp)                     # 8-byte Folded Reload
	mv	t4, s6
	mv	t1, s5
	mv	t0, s4
	ld	t2, 136(sp)                     # 8-byte Folded Reload
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s3)
	add	a1, a1, s2
	ld	a1, 0(a1)
	add	a1, a1, s1
	li	a2, 1
	sb	a2, 0(a1)
	bge	a0, s4, .LBB5_77
# %bb.113:
	mv	t1, s0
	mv	t4, s10
	mv	t0, a0
	j	.LBB5_77
.LBB5_114:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s1, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s6, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s6, 8(sp)
	sd	s1, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s10, t0
	call	PartCalMad
	ld	t3, 168(sp)                     # 8-byte Folded Reload
	mv	t0, s10
	ld	s10, 152(sp)                    # 8-byte Folded Reload
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(McostState)
	ld	a1, %lo(McostState)(a1)
	add	a1, a1, s9
	ld	a1, 0(a1)
	add	a1, a1, s11
	li	a2, 1
	sb	a2, 0(a1)
	mv	a4, s2
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	ld	s9, 160(sp)                     # 8-byte Folded Reload
	bge	a0, t0, .LBB5_35
# %bb.115:
	mv	s0, s1
	mv	a4, s6
	mv	t0, a0
	j	.LBB5_35
.LBB5_116:
	mv	a3, a4
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	mv	s5, a4
	slli	a1, a3, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, t4, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	mv	s6, t4
	sd	t4, 8(sp)
	sd	a4, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s3, t0
	mv	s4, t1
	call	PartCalMad
	mv	t1, s4
	ld	a1, %lo(McostState)(s0)
	add	a1, a1, s2
	mv	t2, s5
	ld	a1, 0(a1)
	mv	t0, a0
	add	a1, a1, s1
	li	a2, 1
	sb	a2, 0(a1)
	blt	a0, s3, .LBB5_118
# %bb.117:
	mv	t2, t1
	mv	t0, s3
.LBB5_118:
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	mv	t4, s6
	j	.LBB5_102
.LBB5_119:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s3, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, t4, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	t4, 8(sp)
	sd	s3, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s6, t0
	mv	s7, t1
	mv	s9, t4
	call	PartCalMad
	mv	t4, s9
	mv	t1, s7
	ld	s7, 160(sp)                     # 8-byte Folded Reload
	mv	t0, s6
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s4)
	add	a1, a1, s2
	ld	a1, 0(a1)
	add	a1, a1, s5
	li	a2, 1
	sb	a2, 0(a1)
	mv	t2, s8
	mv	t3, s10
	bge	a0, s6, .LBB5_121
# %bb.120:
	mv	t2, s3
	mv	t3, t4
	mv	t0, a0
.LBB5_121:
	blt	s7, s1, .LBB5_123
# %bb.122:
	addiw	s1, t4, -1
	subw	a0, s1, a7
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bgeu	s7, a2, .LBB5_130
.LBB5_123:
	ld	a3, 88(sp)                      # 8-byte Folded Reload
.LBB5_124:
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB5_127
# %bb.125:
	lui	a0, %hi(pred_SAD_ref)
	lw	a0, %lo(pred_SAD_ref)(a0)
	subw	a1, t0, a0
	fcvt.s.w	fa5, a1
	fcvt.s.w	fa4, a0
	fmul.s	fa3, fs1, fa4
	flt.s	a0, fa5, fa3
	bnez	a0, .LBB5_171
# %bb.126:
	li	a0, 6
	bge	a0, s11, .LBB5_133
	j	.LBB5_173
.LBB5_127:
	li	a0, 2
	blt	s11, a0, .LBB5_132
# %bb.128:
	lui	a0, %hi(pred_SAD_uplayer)
	lw	a0, %lo(pred_SAD_uplayer)(a0)
	subw	a1, t0, a0
	fcvt.s.w	fa5, a1
	fcvt.s.w	fa4, a0
	fmul.s	fa3, fs1, fa4
	flt.s	a0, fa5, fa3
	bnez	a0, .LBB5_171
# %bb.129:
	li	a0, 6
	bgeu	a0, s11, .LBB5_133
	j	.LBB5_173
.LBB5_130:
	mv	s8, t3
	mv	s6, t2
	lui	s3, %hi(McostState)
	ld	a1, %lo(McostState)(s3)
	addw	s2, a0, s7
	slli	s2, s2, 3
	add	a1, a1, s2
	ld	a0, 0(a1)
	addw	s0, s0, s7
	add	a0, a0, s0
	lbu	a0, 0(a0)
	beqz	a0, .LBB5_157
# %bb.131:
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	mv	t2, s6
	mv	t3, s8
	j	.LBB5_124
.LBB5_132:
	lui	a0, %hi(pred_SAD_space)
	lw	a0, %lo(pred_SAD_space)(a0)
	subw	a1, t0, a0
	fcvt.s.w	fa5, a1
	fcvt.s.w	fa4, a0
	fmul.s	fa3, fs1, fa4
	flt.s	a0, fa5, fa3
	bnez	a0, .LBB5_171
.LBB5_133:
	fmul.s	fa4, fs0, fa4
	flt.s	a0, fa5, fa4
	bnez	a0, .LBB5_173
# %bb.134:
	li	a5, 1
	blt	a5, s7, .LBB5_137
# %bb.135:
	slli	a0, s7, 1
	srli	a0, a0, 62
	add	a0, s7, a0
	sraiw	a0, a0, 2
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	li	a2, 1
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB5_153
.LBB5_136:
	lui	a0, %hi(pred_SAD_ref)
	lw	a0, %lo(pred_SAD_ref)(a0)
	j	.LBB5_170
.LBB5_137:
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	subw	a0, t3, a7
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	t1, a2, a1
	addw	a0, a0, s7
	sd	t3, 152(sp)                     # 8-byte Folded Spill
	slli	t3, t3, 2
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	sd	t3, 32(sp)                      # 8-byte Folded Spill
	subw	a1, t3, a1
	slli	a4, t2, 2
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	add	a2, a2, a3
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	subw	s5, a4, a2
	addiw	s1, s5, -4
	sub	s8, t2, a6
	addi	s3, s8, -1
	not	s2, a6
	addiw	s5, s5, 4
	addi	s8, s8, 1
	subw	s11, a5, a6
	andi	a2, s7, -2
	subw	a2, s2, a2
	li	s0, -1
	lui	a4, %hi(McostState)
	slli	a5, a0, 3
	slli	a1, a1, 2
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	li	s4, 1
	sd	t2, 168(sp)                     # 8-byte Folded Spill
	sd	t2, 48(sp)                      # 8-byte Folded Spill
	sd	t1, 144(sp)                     # 8-byte Folded Spill
	sd	a2, 136(sp)                     # 8-byte Folded Spill
	sd	a5, 88(sp)                      # 8-byte Folded Spill
	j	.LBB5_139
.LBB5_138:                              #   in Loop: Header=BB5_139 Depth=1
	addi	s0, s0, -2
	addiw	s1, s1, -8
	addi	s3, s3, -2
	addiw	s2, s2, -2
	addi	s4, s4, 2
	addiw	s5, s5, 8
	addi	s8, s8, 2
	addi	s11, s11, 2
	beq	s2, a2, .LBB5_149
.LBB5_139:                              # =>This Inner Loop Header: Depth=1
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	add	a0, a0, s11
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	s7, a0, .LBB5_144
# %bb.140:                              #   in Loop: Header=BB5_139 Depth=1
	bltu	s7, t1, .LBB5_144
# %bb.141:                              #   in Loop: Header=BB5_139 Depth=1
	ld	a0, %lo(McostState)(a4)
	add	a0, a0, a5
	ld	a0, 0(a0)
	add	a1, s7, s8
	add	a0, a0, a1
	lbu	a0, 0(a0)
	bnez	a0, .LBB5_144
# %bb.142:                              #   in Loop: Header=BB5_139 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s5, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	addw	s6, a2, s4
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	sd	a0, 8(sp)
	sext.w	s10, t0
	sd	s6, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, s10
	mv	s9, t0
	call	PartCalMad
	ld	a5, 88(sp)                      # 8-byte Folded Reload
	lui	a4, %hi(McostState)
	ld	t1, 144(sp)                     # 8-byte Folded Reload
	li	a3, 1
	mv	t0, s9
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(a4)
	add	a1, a1, a5
	ld	a1, 0(a1)
	add	a2, s7, s8
	add	a1, a1, a2
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	sb	a3, 0(a1)
	bge	a0, s10, .LBB5_144
# %bb.143:                              #   in Loop: Header=BB5_139 Depth=1
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	mv	t0, a0
.LBB5_144:                              #   in Loop: Header=BB5_139 Depth=1
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	add	a0, a0, s2
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	s7, a0, .LBB5_138
# %bb.145:                              #   in Loop: Header=BB5_139 Depth=1
	bltu	s7, t1, .LBB5_138
# %bb.146:                              #   in Loop: Header=BB5_139 Depth=1
	ld	a0, %lo(McostState)(a4)
	add	a0, a0, a5
	ld	a0, 0(a0)
	add	a1, s7, s3
	add	a0, a0, a1
	lbu	a0, 0(a0)
	bnez	a0, .LBB5_138
# %bb.147:                              #   in Loop: Header=BB5_139 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a2, 168(sp)                     # 8-byte Folded Reload
	addw	s6, a2, s0
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	sd	a0, 8(sp)
	sext.w	s10, t0
	sd	s6, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, s10
	mv	s9, t0
	call	PartCalMad
	ld	a5, 88(sp)                      # 8-byte Folded Reload
	lui	a4, %hi(McostState)
	ld	t1, 144(sp)                     # 8-byte Folded Reload
	li	a3, 1
	mv	t0, s9
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(a4)
	add	a1, a1, a5
	ld	a1, 0(a1)
	add	a2, s7, s3
	add	a1, a1, a2
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	sb	a3, 0(a1)
	bge	a0, s10, .LBB5_138
# %bb.148:                              #   in Loop: Header=BB5_139 Depth=1
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	mv	t0, a0
	j	.LBB5_138
.LBB5_149:
	srliw	a0, s7, 2
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	li	a0, 4
	li	a2, 1
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	blt	s7, a0, .LBB5_152
# %bb.150:
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	subw	a0, a0, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bgeu	s7, a2, .LBB5_234
# %bb.151:
	li	a2, 0
.LBB5_152:
	ld	t2, 48(sp)                      # 8-byte Folded Reload
	ld	t3, 152(sp)                     # 8-byte Folded Reload
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB5_136
.LBB5_153:
	li	a0, 2
	blt	s11, a0, .LBB5_169
# %bb.154:
	lui	a0, %hi(pred_SAD_uplayer)
	lw	a0, %lo(pred_SAD_uplayer)(a0)
	j	.LBB5_170
.LBB5_155:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, t1, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s3, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s3, 8(sp)
	sd	t1, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s6, t0
	mv	s7, t1
	mv	s10, t4
	call	PartCalMad
	mv	t4, s10
	mv	t1, s7
	ld	s7, 160(sp)                     # 8-byte Folded Reload
	mv	t0, s6
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s4)
	add	a1, a1, s2
	ld	a1, 0(a1)
	add	a1, a1, s5
	li	a2, 1
	sb	a2, 0(a1)
	mv	t3, s10
	mv	t2, s8
	bge	a0, s6, .LBB5_105
# %bb.156:
	mv	t2, t1
	mv	t3, s3
	mv	t0, a0
	j	.LBB5_105
.LBB5_157:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, t1, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s1, 8(sp)
	sd	t1, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s4, t0
	mv	s5, t1
	call	PartCalMad
	mv	t0, s4
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s3)
	add	a1, a1, s2
	ld	a1, 0(a1)
	add	a1, a1, s0
	li	a2, 1
	sb	a2, 0(a1)
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	mv	t2, s6
	mv	t3, s8
	bge	a0, s4, .LBB5_124
# %bb.158:
	mv	t2, s5
	mv	t3, s1
	mv	t0, a0
	j	.LBB5_124
.LBB5_159:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, t1, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, a4, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	mv	s8, a4
	sd	a4, 8(sp)
	sd	t1, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s5, t0
	mv	s6, t1
	call	PartCalMad
	mv	t1, s6
	ld	a1, %lo(McostState)(s1)
	add	a1, a1, s2
	ld	a1, 0(a1)
	mv	t0, a0
	add	a1, a1, s4
	li	a2, 1
	sb	a2, 0(a1)
	blt	a0, s5, .LBB5_161
# %bb.160:
	mv	t1, s0
	mv	t0, s5
.LBB5_161:
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	t3, 168(sp)                     # 8-byte Folded Reload
	mv	a4, s8
	j	.LBB5_65
.LBB5_162:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s0, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s5, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s5, 8(sp)
	sd	s0, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	mv	s6, a4
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s10, s9
	mv	s9, t0
	mv	s7, t1
	call	PartCalMad
	mv	a4, s6
	ld	t3, 168(sp)                     # 8-byte Folded Reload
	mv	t1, s7
	ld	s7, 160(sp)                     # 8-byte Folded Reload
	mv	t0, s9
	mv	s9, s10
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(McostState)
	ld	a1, %lo(McostState)(a1)
	add	a1, a1, s2
	ld	a1, 0(a1)
	add	a1, a1, s8
	li	a2, 1
	sb	a2, 0(a1)
	mv	t4, s6
	bge	a0, t0, .LBB5_69
# %bb.163:
	mv	t1, s0
	mv	t4, s5
	mv	t0, a0
	j	.LBB5_69
.LBB5_164:
	ld	s0, 120(sp)                     # 8-byte Folded Reload
	addw	s0, a0, s0
	ld	s1, 128(sp)                     # 8-byte Folded Reload
	addw	s1, a2, s1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s0, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s1, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s1, 8(sp)
	sd	s0, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, t0
	mv	s2, t0
	mv	s6, t1
	mv	s8, t4
	call	PartCalMad
	ld	t3, 168(sp)                     # 8-byte Folded Reload
	mv	t4, s8
	mv	t1, s6
	mv	t0, s2
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s3)
	add	a1, a1, s5
	ld	a1, 0(a1)
	add	a1, a1, s4
	li	a2, 1
	sb	a2, 0(a1)
	ld	t2, 136(sp)                     # 8-byte Folded Reload
	bge	a0, s2, .LBB5_166
# %bb.165:
	mv	t1, s0
	mv	t4, s1
	mv	t0, a0
.LBB5_166:
	lui	a0, %hi(pred_SAD_uplayer)
	lw	a0, %lo(pred_SAD_uplayer)(a0)
	subw	a1, t0, a0
	fcvt.s.w	fa5, a1
	fcvt.s.w	fa4, a0
	fmul.s	fa3, fs1, fa4
	flt.s	a0, fa5, fa3
	beqz	a0, .LBB5_168
# %bb.167:
	mv	t2, t1
	mv	t3, t4
	mv	t5, t0
	j	.LBB5_186
.LBB5_168:
	fmul.s	fa4, fs0, fa4
	flt.s	a0, fa5, fa4
	beqz	a0, .LBB5_83
	j	.LBB5_174
.LBB5_169:
	lui	a0, %hi(pred_SAD_space)
	lw	a0, %lo(pred_SAD_space)(a0)
.LBB5_170:
	subw	a1, t0, a0
	fcvt.s.w	fa5, a1
	fcvt.s.w	fa4, a0
	fmul.s	fa3, fs1, fa4
	flt.s	a0, fa5, fa3
	beqz	a0, .LBB5_172
.LBB5_171:
	mv	t5, t0
	j	.LBB5_186
.LBB5_172:
	fmul.s	fa4, fs0, fa4
	flt.s	a0, fa5, fa4
	beqz	a0, .LBB5_216
.LBB5_173:
	mv	t1, t2
	mv	t4, t3
.LBB5_174:
	blez	s7, .LBB5_214
# %bb.175:                              # %.preheader4
	li	s1, 0
	li	s11, -7
	lui	a4, %hi(McostState)
.LBB5_176:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_177 Depth 2
                                        #       Child Loop BB5_179 Depth 3
	li	a0, 0
	li	a5, 0
	mv	s0, t0
	mv	a2, t4
	mv	a1, t1
.LBB5_177:                              #   Parent Loop BB5_176 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_179 Depth 3
	sd	a5, 136(sp)                     # 8-byte Folded Spill
	sd	a2, 152(sp)                     # 8-byte Folded Spill
	sd	a1, 168(sp)                     # 8-byte Folded Spill
	not	s9, a0
	slli	a0, a0, 2
	lui	s4, %hi(FastIntegerPelBlockMotionSearch.Hexagon_y)
	addi	s4, s4, %lo(FastIntegerPelBlockMotionSearch.Hexagon_y)
	add	s4, s4, a0
	lui	s6, %hi(FastIntegerPelBlockMotionSearch.Hexagon_x)
	addi	s6, s6, %lo(FastIntegerPelBlockMotionSearch.Hexagon_x)
	add	s6, s6, a0
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sext.w	s0, s0
	j	.LBB5_179
.LBB5_178:                              #   in Loop: Header=BB5_179 Depth=3
	addi	s9, s9, -1
	addi	s4, s4, 4
	addi	s6, s6, 4
	beq	s9, s11, .LBB5_184
.LBB5_179:                              #   Parent Loop BB5_176 Depth=1
                                        #     Parent Loop BB5_177 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a0, 0(s6)
	addw	s10, a0, t1
	subw	a0, s10, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	blt	s7, a2, .LBB5_178
# %bb.180:                              #   in Loop: Header=BB5_179 Depth=3
	lw	a1, 0(s4)
	addw	s5, a1, t4
	subw	a1, s5, a7
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	s7, a3, .LBB5_178
# %bb.181:                              #   in Loop: Header=BB5_179 Depth=3
	ld	a2, %lo(McostState)(a4)
	addw	s3, a1, s7
	slli	s3, s3, 3
	add	a2, a2, s3
	ld	a1, 0(a2)
	addw	s2, a0, s7
	add	a1, a1, s2
	lbu	a0, 0(a1)
	bnez	a0, .LBB5_178
# %bb.182:                              #   in Loop: Header=BB5_179 Depth=3
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s10, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s5, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s5, 8(sp)
	sd	s10, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, s0
	mv	s7, t1
	mv	s8, t4
	call	PartCalMad
	lui	a4, %hi(McostState)
	mv	t4, s8
	mv	t1, s7
	ld	s7, 160(sp)                     # 8-byte Folded Reload
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(a4)
	add	a1, a1, s3
	ld	a1, 0(a1)
	mv	t0, a0
	add	a1, a1, s2
	li	a0, 1
	sb	a0, 0(a1)
	bge	t0, s0, .LBB5_178
# %bb.183:                              #   in Loop: Header=BB5_177 Depth=2
	neg	a0, s9
	li	a5, 1
	mv	s0, t0
	mv	a2, s5
	mv	a1, s10
	li	a3, -6
	bne	s9, a3, .LBB5_177
	j	.LBB5_185
.LBB5_184:                              #   in Loop: Header=BB5_176 Depth=1
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	t2, 168(sp)                     # 8-byte Folded Reload
	mv	s10, t2
	ld	t3, 152(sp)                     # 8-byte Folded Reload
	mv	s5, t3
	ld	t5, 144(sp)                     # 8-byte Folded Reload
	mv	t0, t5
	beqz	a0, .LBB5_186
.LBB5_185:                              #   in Loop: Header=BB5_176 Depth=1
	addiw	s1, s1, 1
	mv	t1, s10
	mv	t4, s5
	mv	t2, s10
	mv	t3, s5
	mv	t5, t0
	bne	s1, s7, .LBB5_176
.LBB5_186:
	blez	s7, .LBB5_213
# %bb.187:
	lui	s10, %hi(McostState)
	mv	s1, s7
.LBB5_188:                              # =>This Inner Loop Header: Depth=1
	addiw	s4, t2, -1
	subw	a0, s4, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	blt	s7, a2, .LBB5_190
# %bb.189:                              #   in Loop: Header=BB5_188 Depth=1
	subw	a1, t3, a7
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bgeu	s7, a3, .LBB5_207
.LBB5_190:                              #   in Loop: Header=BB5_188 Depth=1
	mv	t1, t2
.LBB5_191:                              #   in Loop: Header=BB5_188 Depth=1
	li	s3, 1
.LBB5_192:                              #   in Loop: Header=BB5_188 Depth=1
	subw	s4, t2, a6
	sraiw	a0, s4, 31
	xor	a1, s4, a0
	subw	s11, a1, a0
	blt	s7, s11, .LBB5_195
# %bb.193:                              #   in Loop: Header=BB5_188 Depth=1
	addiw	s5, t3, 1
	subw	a0, s5, a7
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bltu	s7, a2, .LBB5_195
# %bb.194:                              #   in Loop: Header=BB5_188 Depth=1
	ld	a1, %lo(McostState)(s10)
	addw	s9, a0, s7
	slli	s9, s9, 3
	add	a1, a1, s9
	ld	a0, 0(a1)
	addw	s6, s4, s7
	add	a0, a0, s6
	lbu	a0, 0(a0)
	beqz	a0, .LBB5_209
.LBB5_195:                              #   in Loop: Header=BB5_188 Depth=1
	mv	t4, t3
.LBB5_196:                              #   in Loop: Header=BB5_188 Depth=1
	addiw	s5, t2, 1
	subw	a0, s5, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	blt	s7, a2, .LBB5_201
# %bb.197:                              #   in Loop: Header=BB5_188 Depth=1
	subw	a1, t3, a7
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	s7, a3, .LBB5_201
# %bb.198:                              #   in Loop: Header=BB5_188 Depth=1
	ld	a2, %lo(McostState)(s10)
	addw	s9, a1, s7
	slli	s9, s9, 3
	add	a2, a2, s9
	ld	a1, 0(a2)
	addw	s6, a0, s7
	add	a1, a1, s6
	lbu	a0, 0(a1)
	bnez	a0, .LBB5_201
# %bb.199:                              #   in Loop: Header=BB5_188 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s5, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, t3, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	t3, 8(sp)
	sext.w	a7, t5
	sd	a7, 168(sp)                     # 8-byte Folded Spill
	sd	s5, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	s10, t2
	sd	t3, 152(sp)                     # 8-byte Folded Spill
	mv	s0, t5
	mv	s2, t1
	mv	s8, t4
	call	PartCalMad
	mv	t4, s8
	mv	t1, s2
	mv	t5, s0
	ld	t3, 152(sp)                     # 8-byte Folded Reload
	mv	t2, s10
	lui	s10, %hi(McostState)
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s10)
	add	a1, a1, s9
	ld	a1, 0(a1)
	add	a1, a1, s6
	li	a2, 1
	sb	a2, 0(a1)
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB5_201
# %bb.200:                              #   in Loop: Header=BB5_188 Depth=1
	li	s3, 0
	mv	t1, s5
	mv	t4, t3
	mv	t5, a0
.LBB5_201:                              #   in Loop: Header=BB5_188 Depth=1
	blt	s7, s11, .LBB5_205
# %bb.202:                              #   in Loop: Header=BB5_188 Depth=1
	addiw	t3, t3, -1
	subw	a0, t3, a7
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bltu	s7, a2, .LBB5_205
# %bb.203:                              #   in Loop: Header=BB5_188 Depth=1
	ld	a1, %lo(McostState)(s10)
	addw	s5, a0, s7
	slli	s5, s5, 3
	add	a1, a1, s5
	ld	a0, 0(a1)
	addw	s4, s4, s7
	add	a0, a0, s4
	lbu	a0, 0(a0)
	bnez	a0, .LBB5_205
# %bb.204:                              #   in Loop: Header=BB5_188 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, t2, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, t3, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	t3, 8(sp)
	sext.w	s0, t5
	sd	t2, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, s0
	mv	s6, t2
	mv	s9, t3
	mv	s10, t5
	mv	s2, t1
	mv	s8, t4
	call	PartCalMad
	mv	t4, s8
	mv	t1, s2
	mv	t5, s10
	lui	s10, %hi(McostState)
	mv	t3, s9
	mv	t2, s6
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s10)
	add	a1, a1, s5
	ld	a1, 0(a1)
	add	a1, a1, s4
	li	a2, 1
	sb	a2, 0(a1)
	blt	a0, s0, .LBB5_206
.LBB5_205:                              #   in Loop: Header=BB5_188 Depth=1
	mv	a0, t5
	mv	t3, t4
	mv	t2, t1
	bnez	s3, .LBB5_215
.LBB5_206:                              #   in Loop: Header=BB5_188 Depth=1
	addiw	s1, s1, -1
	mv	t5, a0
	mv	t1, t2
	mv	t4, t3
	bnez	s1, .LBB5_188
	j	.LBB5_215
.LBB5_207:                              #   in Loop: Header=BB5_188 Depth=1
	mv	s5, t2
	ld	a2, %lo(McostState)(s10)
	addw	s3, a1, s7
	slli	s3, s3, 3
	add	a2, a2, s3
	ld	a1, 0(a2)
	addw	s2, a0, s7
	add	a1, a1, s2
	lbu	a0, 0(a1)
	beqz	a0, .LBB5_211
# %bb.208:                              #   in Loop: Header=BB5_188 Depth=1
	mv	t2, s5
	mv	t1, s5
	j	.LBB5_191
.LBB5_209:                              #   in Loop: Header=BB5_188 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, t2, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s5, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s5, 8(sp)
	sext.w	a7, t5
	sd	a7, 168(sp)                     # 8-byte Folded Spill
	sd	t2, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	s10, t2
	mv	s0, t3
	mv	s8, t5
	mv	s2, t1
	call	PartCalMad
	mv	t1, s2
	mv	t5, s8
	mv	t3, s0
	mv	t2, s10
	lui	s10, %hi(McostState)
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s10)
	add	a1, a1, s9
	ld	a1, 0(a1)
	add	a1, a1, s6
	li	a2, 1
	sb	a2, 0(a1)
	mv	t4, s0
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB5_196
# %bb.210:                              #   in Loop: Header=BB5_188 Depth=1
	li	s3, 0
	mv	t1, t2
	mv	t4, s5
	mv	t5, a0
	j	.LBB5_196
.LBB5_211:                              #   in Loop: Header=BB5_188 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s4, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	mv	s6, t3
	slli	a2, t3, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	t3, 8(sp)
	mv	s8, t5
	sext.w	s0, t5
	sd	s4, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, s0
	call	PartCalMad
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s10)
	add	a1, a1, s3
	ld	a1, 0(a1)
	add	a1, a1, s2
	mv	t5, s8
	mv	t3, s6
	li	s3, 1
	sb	s3, 0(a1)
	mv	t2, s5
	mv	t1, s5
	bge	a0, s0, .LBB5_192
# %bb.212:                              #   in Loop: Header=BB5_188 Depth=1
	li	s3, 0
	mv	t1, s4
	mv	t5, a0
	j	.LBB5_192
.LBB5_213:
	mv	t1, t2
	mv	t4, t3
	j	.LBB5_215
.LBB5_214:
	mv	t5, t0
.LBB5_215:
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	subw	a0, t1, a0
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	sh	a0, 0(a1)
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	subw	a1, t4, a0
	sext.w	a0, t5
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	sh	a1, 0(a2)
	ld	ra, 376(sp)                     # 8-byte Folded Reload
	ld	s0, 368(sp)                     # 8-byte Folded Reload
	ld	s1, 360(sp)                     # 8-byte Folded Reload
	ld	s2, 352(sp)                     # 8-byte Folded Reload
	ld	s3, 344(sp)                     # 8-byte Folded Reload
	ld	s4, 336(sp)                     # 8-byte Folded Reload
	ld	s5, 328(sp)                     # 8-byte Folded Reload
	ld	s6, 320(sp)                     # 8-byte Folded Reload
	ld	s7, 312(sp)                     # 8-byte Folded Reload
	ld	s8, 304(sp)                     # 8-byte Folded Reload
	ld	s9, 296(sp)                     # 8-byte Folded Reload
	ld	s10, 288(sp)                    # 8-byte Folded Reload
	ld	s11, 280(sp)                    # 8-byte Folded Reload
	fld	fs0, 272(sp)                    # 8-byte Folded Reload
	fld	fs1, 264(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 384
	ret
.LBB5_216:
	sd	a2, 56(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a0)
	lui	a0, %hi(spiral_search_y)
	ld	a2, %lo(spiral_search_y)(a0)
	li	s4, 2
	li	s8, 50
	lui	s11, %hi(McostState)
	mv	t4, t3
	mv	t1, t2
	sd	t2, 168(sp)                     # 8-byte Folded Spill
	sd	t3, 152(sp)                     # 8-byte Folded Spill
	j	.LBB5_219
.LBB5_217:                              #   in Loop: Header=BB5_219 Depth=1
	mv	t1, s5
	mv	t4, s6
	mv	t0, a0
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	t2, 168(sp)                     # 8-byte Folded Reload
	ld	t3, 152(sp)                     # 8-byte Folded Reload
.LBB5_218:                              #   in Loop: Header=BB5_219 Depth=1
	addi	s4, s4, 2
	beq	s4, s8, .LBB5_224
.LBB5_219:                              # =>This Inner Loop Header: Depth=1
	add	a0, a1, s4
	lh	a0, 0(a0)
	addw	s5, t2, a0
	subw	a0, s5, a6
	sraiw	a3, a0, 31
	xor	a4, a0, a3
	subw	a4, a4, a3
	blt	s7, a4, .LBB5_218
# %bb.220:                              #   in Loop: Header=BB5_219 Depth=1
	add	a3, a2, s4
	lh	a3, 0(a3)
	addw	s6, t3, a3
	subw	a3, s6, a7
	sraiw	a4, a3, 31
	xor	a5, a3, a4
	subw	a5, a5, a4
	bltu	s7, a5, .LBB5_218
# %bb.221:                              #   in Loop: Header=BB5_219 Depth=1
	ld	a4, %lo(McostState)(s11)
	addw	s9, a3, s7
	slli	s9, s9, 3
	add	a4, a4, s9
	ld	a3, 0(a4)
	addw	s10, a0, s7
	add	a3, a3, s10
	lbu	a0, 0(a3)
	bnez	a0, .LBB5_218
# %bb.222:                              #   in Loop: Header=BB5_219 Depth=1
	mv	s3, t4
	mv	s1, t1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s5, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s6, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s6, 8(sp)
	mv	s2, t0
	sext.w	s0, t0
	sd	s5, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, s0
	call	PartCalMad
	ld	a1, %lo(McostState)(s11)
	add	a1, a1, s9
	ld	a1, 0(a1)
	add	a1, a1, s10
	li	a2, 1
	sb	a2, 0(a1)
	lui	a1, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a1)
	lui	a2, %hi(spiral_search_y)
	ld	a2, %lo(spiral_search_y)(a2)
	blt	a0, s0, .LBB5_217
# %bb.223:                              #   in Loop: Header=BB5_219 Depth=1
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	mv	t0, s2
	mv	t1, s1
	ld	t2, 168(sp)                     # 8-byte Folded Reload
	ld	t3, 152(sp)                     # 8-byte Folded Reload
	mv	t4, s3
	j	.LBB5_218
.LBB5_224:
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB5_174
# %bb.225:                              # %.preheader9
	lui	a0, %hi(FastIntegerPelBlockMotionSearch.Big_Hexagon_y)
	addi	a0, a0, %lo(FastIntegerPelBlockMotionSearch.Big_Hexagon_y)
	addi	s8, a0, 64
	lui	a4, %hi(McostState)
	li	a0, 1
	j	.LBB5_227
.LBB5_226:                              #   in Loop: Header=BB5_227 Depth=1
	addiw	a0, s3, 1
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	beq	s3, a1, .LBB5_174
.LBB5_227:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_229 Depth 2
	mv	s3, a0
	lui	s1, %hi(FastIntegerPelBlockMotionSearch.Big_Hexagon_x)
	addi	s1, s1, %lo(FastIntegerPelBlockMotionSearch.Big_Hexagon_x)
	lui	s4, %hi(FastIntegerPelBlockMotionSearch.Big_Hexagon_y)
	addi	s4, s4, %lo(FastIntegerPelBlockMotionSearch.Big_Hexagon_y)
	j	.LBB5_229
.LBB5_228:                              #   in Loop: Header=BB5_229 Depth=2
	addi	s4, s4, 4
	addi	s1, s1, 4
	beq	s4, s8, .LBB5_226
.LBB5_229:                              #   Parent Loop BB5_227 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 0(s1)
	mul	a0, a0, s3
	addw	s5, a0, t2
	subw	a0, s5, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	blt	s7, a2, .LBB5_228
# %bb.230:                              #   in Loop: Header=BB5_229 Depth=2
	lw	a1, 0(s4)
	mul	a1, a1, s3
	addw	s6, a1, t3
	subw	a1, s6, a7
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	s7, a3, .LBB5_228
# %bb.231:                              #   in Loop: Header=BB5_229 Depth=2
	ld	a2, %lo(McostState)(a4)
	addw	s10, a1, s7
	slli	s10, s10, 3
	add	a2, a2, s10
	ld	a1, 0(a2)
	addw	s9, a0, s7
	add	a1, a1, s9
	lbu	a0, 0(a1)
	bnez	a0, .LBB5_228
# %bb.232:                              #   in Loop: Header=BB5_229 Depth=2
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s5, 2
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s6, 2
	ld	a3, 184(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s6, 8(sp)
	sext.w	s0, t0
	sd	s5, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, s0
	mv	s2, t0
	mv	s7, t1
	mv	s11, t4
	call	PartCalMad
	lui	a4, %hi(McostState)
	mv	t4, s11
	mv	t1, s7
	ld	s7, 160(sp)                     # 8-byte Folded Reload
	mv	t0, s2
	ld	t3, 152(sp)                     # 8-byte Folded Reload
	ld	t2, 168(sp)                     # 8-byte Folded Reload
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(a4)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s9
	li	a2, 1
	sb	a2, 0(a1)
	bge	a0, s0, .LBB5_228
# %bb.233:                              #   in Loop: Header=BB5_229 Depth=2
	mv	t1, s5
	mv	t4, s6
	mv	t0, a0
	j	.LBB5_228
.LBB5_234:
	slti	a1, s7, 4
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	addw	a4, a0, s7
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	subw	a0, a1, a0
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	subw	a1, a2, a1
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	subw	s5, a1, a2
	addiw	s2, s5, -4
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	slli	a1, a3, 3
	slli	a2, a7, 3
	sub	a1, a1, a2
	addi	s3, a1, -8
	not	s4, a7
	addiw	s5, s5, 4
	addi	s11, a1, 8
	li	a1, 1
	subw	s8, a1, a7
	srliw	a1, s7, 2
	slli	a1, a1, 1
	subw	a5, s4, a1
	li	s1, -1
	lui	t1, %hi(McostState)
	slli	a0, a0, 2
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	li	s0, 1
	sd	a3, 64(sp)                      # 8-byte Folded Spill
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	sd	a4, 136(sp)                     # 8-byte Folded Spill
	sd	a5, 88(sp)                      # 8-byte Folded Spill
	j	.LBB5_236
.LBB5_235:                              #   in Loop: Header=BB5_236 Depth=1
	addi	s1, s1, -2
	addiw	s2, s2, -8
	addi	s3, s3, -16
	addiw	s4, s4, -2
	addi	s0, s0, 2
	addiw	s5, s5, 8
	addi	s11, s11, 16
	addi	s8, s8, 2
	beq	s4, a5, .LBB5_244
.LBB5_236:                              # =>This Inner Loop Header: Depth=1
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	add	a0, a0, s8
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	s7, a0, .LBB5_240
# %bb.237:                              #   in Loop: Header=BB5_236 Depth=1
	ld	a0, %lo(McostState)(t1)
	add	a0, a0, a2
	add	a0, a0, s11
	ld	a0, 0(a0)
	add	a0, a0, a4
	lbu	a0, 0(a0)
	bnez	a0, .LBB5_240
# %bb.238:                              #   in Loop: Header=BB5_236 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s5, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	addw	s6, a2, s0
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s6, 8(sp)
	sext.w	s10, t0
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	sd	a0, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, s10
	mv	s9, t0
	call	PartCalMad
	lui	t1, %hi(McostState)
	ld	a5, 88(sp)                      # 8-byte Folded Reload
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	mv	t0, s9
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(t1)
	add	a1, a1, a2
	add	a1, a1, s11
	ld	a1, 0(a1)
	add	a1, a1, a4
	li	a3, 1
	sb	a3, 0(a1)
	bge	a0, s10, .LBB5_240
# %bb.239:                              #   in Loop: Header=BB5_236 Depth=1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	mv	t0, a0
.LBB5_240:                              #   in Loop: Header=BB5_236 Depth=1
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	add	a0, a0, s4
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	s7, a0, .LBB5_235
# %bb.241:                              #   in Loop: Header=BB5_236 Depth=1
	ld	a0, %lo(McostState)(t1)
	add	a0, a0, a2
	add	a0, a0, s3
	ld	a0, 0(a0)
	add	a0, a0, a4
	lbu	a0, 0(a0)
	bnez	a0, .LBB5_235
# %bb.242:                              #   in Loop: Header=BB5_236 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	addw	s6, a2, s1
	add	a0, a0, a1
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s6, 8(sp)
	sext.w	s10, t0
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	sd	a0, 0(sp)
	ld	a0, 192(sp)                     # 8-byte Folded Reload
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	ld	a5, 200(sp)                     # 8-byte Folded Reload
	mv	a7, s10
	mv	s9, t0
	call	PartCalMad
	lui	t1, %hi(McostState)
	ld	a5, 88(sp)                      # 8-byte Folded Reload
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	mv	t0, s9
	ld	a7, 240(sp)                     # 8-byte Folded Reload
	ld	a6, 248(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(t1)
	add	a1, a1, a2
	add	a1, a1, s3
	ld	a1, 0(a1)
	add	a1, a1, a4
	li	a3, 1
	sb	a3, 0(a1)
	bge	a0, s10, .LBB5_235
# %bb.243:                              #   in Loop: Header=BB5_236 Depth=1
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	mv	t0, a0
	j	.LBB5_235
.LBB5_244:
	ld	t2, 48(sp)                      # 8-byte Folded Reload
	ld	t3, 64(sp)                      # 8-byte Folded Reload
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB5_245
	j	.LBB5_136
.LBB5_245:
	j	.LBB5_153
.Lfunc_end5:
	.size	FastIntegerPelBlockMotionSearch, .Lfunc_end5-FastIntegerPelBlockMotionSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	AddUpSADQuarter                 # -- Begin function AddUpSADQuarter
	.p2align	2
	.type	AddUpSADQuarter,@function
AddUpSADQuarter:                        # @AddUpSADQuarter
# %bb.0:
	addi	sp, sp, -1328
	sd	ra, 1320(sp)                    # 8-byte Folded Spill
	sd	s0, 1312(sp)                    # 8-byte Folded Spill
	sd	s1, 1304(sp)                    # 8-byte Folded Spill
	sd	s2, 1296(sp)                    # 8-byte Folded Spill
	sd	s3, 1288(sp)                    # 8-byte Folded Spill
	sd	s4, 1280(sp)                    # 8-byte Folded Spill
	sd	s5, 1272(sp)                    # 8-byte Folded Spill
	sd	s6, 1264(sp)                    # 8-byte Folded Spill
	sd	s7, 1256(sp)                    # 8-byte Folded Spill
	sd	s8, 1248(sp)                    # 8-byte Folded Spill
	sd	s9, 1240(sp)                    # 8-byte Folded Spill
	sd	s10, 1232(sp)                   # 8-byte Folded Spill
	sd	s11, 1224(sp)                   # 8-byte Folded Spill
	ld	t0, 1352(sp)
	mv	s3, a4
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	li	a0, 3
	li	t1, 64
	beq	t0, a0, .LBB6_2
# %bb.1:
	li	t1, 128
.LBB6_2:
	lui	a0, %hi(active_pps)
	ld	a0, %lo(active_pps)(a0)
	lw	a1, 192(a0)
	beqz	a1, .LBB6_5
# %bb.3:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a1, 24(a1)
	beqz	a1, .LBB6_7
# %bb.4:
	li	a2, 3
	beq	a1, a2, .LBB6_7
.LBB6_5:
	lw	a0, 196(a0)
	beqz	a0, .LBB6_9
# %bb.6:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 24(a0)
	li	a1, 1
	bne	a0, a1, .LBB6_9
.LBB6_7:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 1912(a0)
	beqz	a0, .LBB6_9
# %bb.8:
	lui	a0, 2
	addiw	a0, a0, -1736
	j	.LBB6_10
.LBB6_9:
	lui	a0, 2
	addiw	a0, a0, -1744
.LBB6_10:
	ld	a1, 1344(sp)
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	lw	s6, 1328(sp)
	sd	t0, 56(sp)                      # 8-byte Folded Spill
	blez	a3, .LBB6_19
# %bb.11:
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	blez	a1, .LBB6_19
# %bb.12:                               # %.preheader
	lui	a1, 2
	addiw	a1, a1, -1800
	add	a1, a6, a1
	lw	a2, 0(a1)
	lw	a1, 4(a1)
	li	t0, 0
	slli	a2, a2, 2
	slli	a1, a1, 2
	ld	t2, 1336(sp)
	sd	t2, 72(sp)                      # 8-byte Folded Spill
	addiw	s7, a2, 28
	addiw	s8, a1, 28
	add	a0, a6, a0
	ld	s9, 0(a0)
	lui	s11, %hi(get_line)
	sd	a7, 48(sp)                      # 8-byte Folded Spill
	sd	a5, 40(sp)                      # 8-byte Folded Spill
	sd	s3, 32(sp)                      # 8-byte Folded Spill
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	sd	t1, 16(sp)                      # 8-byte Folded Spill
	j	.LBB6_14
.LBB6_13:                               #   in Loop: Header=BB6_14 Depth=1
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	t0, a1, 4
	ld	a7, 48(sp)                      # 8-byte Folded Reload
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	ld	s3, 32(sp)                      # 8-byte Folded Reload
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	ld	t1, 16(sp)                      # 8-byte Folded Reload
	bge	a0, a3, .LBB6_19
.LBB6_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_17 Depth 2
	li	s0, 0
	li	s4, 0
	li	s5, 0
	sltiu	a0, t0, 8
	addi	a0, a0, -1
	and	a0, a0, t1
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	slli	a0, t0, 2
	addw	s10, a0, a5
	addiw	a0, s10, 4
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	addiw	a0, s10, 8
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	addiw	a0, s10, 12
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	sd	t0, 64(sp)                      # 8-byte Folded Spill
	slli	a0, t0, 3
	add	s2, a7, a0
	andi	a0, a0, 32
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	j	.LBB6_17
.LBB6_15:                               #   in Loop: Header=BB6_17 Depth=2
	andi	a0, s4, 4
	sltiu	a1, s5, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 136
	add	a1, a6, a0
	lw	a2, 1172(sp)
	lw	a3, 1168(sp)
	lw	a4, 1164(sp)
	lw	a5, 1160(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 1176
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 64
	add	a1, a6, a1
	addi	a5, sp, 1192
	lw	a2, 12(a5)
	lw	a3, 8(a5)
	lw	a4, 4(a5)
	lw	a5, 0(a5)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a0, a0, 96
	add	a0, a6, a0
	addi	a4, sp, 1208
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB6_16:                               #   in Loop: Header=BB6_17 Depth=2
	addi	s5, s5, 4
	addiw	s4, s4, 4
	addiw	s3, s3, 16
	addi	s0, s0, 8
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	bge	s4, a0, .LBB6_13
.LBB6_17:                               #   Parent Loop BB6_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s1, 0(s2)
	ld	a5, %lo(get_line)(s11)
	mv	a0, s9
	mv	a1, s10
	mv	a2, s3
	mv	a3, s8
	mv	a4, s7
	jalr	a5
	add	s1, s1, s0
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, 2(s1)
	lhu	a3, 8(a0)
	lhu	a4, 4(s1)
	lhu	a5, 16(a0)
	sw	a1, 1160(sp)
	subw	a2, a2, a3
	sw	a2, 1164(sp)
	subw	a4, a4, a5
	lhu	a1, 6(s1)
	lhu	a0, 24(a0)
	ld	s1, 8(s2)
	ld	a5, %lo(get_line)(s11)
	sw	a4, 1168(sp)
	subw	a1, a1, a0
	sw	a1, 1172(sp)
	mv	a0, s9
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	mv	a2, s3
	mv	a3, s8
	mv	a4, s7
	jalr	a5
	add	s1, s1, s0
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, 2(s1)
	lhu	a3, 8(a0)
	lhu	a4, 4(s1)
	lhu	a5, 16(a0)
	sw	a1, 1176(sp)
	subw	a2, a2, a3
	sw	a2, 1180(sp)
	subw	a4, a4, a5
	lhu	a1, 6(s1)
	lhu	a0, 24(a0)
	ld	s1, 16(s2)
	ld	a5, %lo(get_line)(s11)
	sw	a4, 1184(sp)
	subw	a1, a1, a0
	sw	a1, 1188(sp)
	mv	a0, s9
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	mv	a2, s3
	mv	a3, s8
	mv	a4, s7
	jalr	a5
	add	s1, s1, s0
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, 2(s1)
	lhu	a3, 8(a0)
	lhu	a4, 4(s1)
	lhu	a5, 16(a0)
	sw	a1, 1192(sp)
	subw	a2, a2, a3
	sw	a2, 1196(sp)
	subw	a4, a4, a5
	lhu	a1, 6(s1)
	lhu	a0, 24(a0)
	ld	s1, 24(s2)
	ld	a5, %lo(get_line)(s11)
	sw	a4, 1200(sp)
	subw	a1, a1, a0
	sw	a1, 1204(sp)
	mv	a0, s9
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	mv	a2, s3
	mv	a3, s8
	mv	a4, s7
	jalr	a5
	add	s1, s1, s0
	lhu	a1, 0(s1)
	lhu	a2, 0(a0)
	lhu	a3, 2(s1)
	lhu	a4, 8(a0)
	subw	a1, a1, a2
	sw	a1, 1208(sp)
	subw	a3, a3, a4
	lhu	a1, 4(s1)
	lhu	a2, 16(a0)
	lhu	a4, 6(s1)
	lhu	a0, 24(a0)
	sw	a3, 1212(sp)
	subw	a1, a1, a2
	sw	a1, 1216(sp)
	subw	a4, a4, a0
	sw	a4, 1220(sp)
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB6_15
# %bb.18:                               #   in Loop: Header=BB6_17 Depth=2
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 1160
	call	SATD
	addw	s6, a0, s6
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	bge	a0, s6, .LBB6_16
	j	.LBB6_21
.LBB6_19:
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB6_21
# %bb.20:
	addi	a0, sp, 136
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s6, a0, s6
.LBB6_21:
	mv	a0, s6
	ld	ra, 1320(sp)                    # 8-byte Folded Reload
	ld	s0, 1312(sp)                    # 8-byte Folded Reload
	ld	s1, 1304(sp)                    # 8-byte Folded Reload
	ld	s2, 1296(sp)                    # 8-byte Folded Reload
	ld	s3, 1288(sp)                    # 8-byte Folded Reload
	ld	s4, 1280(sp)                    # 8-byte Folded Reload
	ld	s5, 1272(sp)                    # 8-byte Folded Reload
	ld	s6, 1264(sp)                    # 8-byte Folded Reload
	ld	s7, 1256(sp)                    # 8-byte Folded Reload
	ld	s8, 1248(sp)                    # 8-byte Folded Reload
	ld	s9, 1240(sp)                    # 8-byte Folded Reload
	ld	s10, 1232(sp)                   # 8-byte Folded Reload
	ld	s11, 1224(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1328
	ret
.Lfunc_end6:
	.size	AddUpSADQuarter, .Lfunc_end6-AddUpSADQuarter
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FastSubPelBlockMotionSearch     # -- Begin function FastSubPelBlockMotionSearch
	.p2align	2
	.type	FastSubPelBlockMotionSearch,@function
FastSubPelBlockMotionSearch:            # @FastSubPelBlockMotionSearch
# %bb.0:
	addi	sp, sp, -224
	sd	ra, 216(sp)                     # 8-byte Folded Spill
	sd	s0, 208(sp)                     # 8-byte Folded Spill
	sd	s1, 200(sp)                     # 8-byte Folded Spill
	sd	s2, 192(sp)                     # 8-byte Folded Spill
	sd	s3, 184(sp)                     # 8-byte Folded Spill
	sd	s4, 176(sp)                     # 8-byte Folded Spill
	sd	s5, 168(sp)                     # 8-byte Folded Spill
	sd	s6, 160(sp)                     # 8-byte Folded Spill
	sd	s7, 152(sp)                     # 8-byte Folded Spill
	sd	s8, 144(sp)                     # 8-byte Folded Spill
	sd	s9, 136(sp)                     # 8-byte Folded Spill
	sd	s10, 128(sp)                    # 8-byte Folded Spill
	sd	s11, 120(sp)                    # 8-byte Folded Spill
	lui	t0, %hi(img)
	ld	t0, %lo(img)(t0)
	lui	t1, 22
	add	t1, t0, t1
	lw	t1, 108(t1)
	ld	s7, 224(sp)
	mv	s10, a7
	mv	s0, a6
	sd	a5, 112(sp)                     # 8-byte Folded Spill
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	beqz	t1, .LBB7_4
# %bb.1:
	lui	a0, 8
	addiw	a0, a0, -1192
	add	a5, t0, a0
	lw	a0, 12(t0)
	ld	a5, 0(a5)
	li	t0, 528
	mul	t0, a0, t0
	add	a5, a5, t0
	lw	a5, 424(a5)
	beqz	a5, .LBB7_4
# %bb.2:
	andi	a5, a0, 1
	li	a0, 2
	beqz	a5, .LBB7_5
# %bb.3:
	li	a0, 4
	j	.LBB7_5
.LBB7_4:
	li	a0, 0
.LBB7_5:
	ld	s8, 232(sp)
	addw	a0, a0, a2
	slli	a0, a0, 3
	lui	a2, %hi(listX)
	addi	a2, a2, %lo(listX)
	add	a0, a2, a0
	ld	a0, 0(a0)
	slli	a1, a1, 3
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	add	a0, a0, a1
	ld	t1, 0(a0)
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 3
	add	a0, a2, a0
	lw	t0, 84(a0)
	lw	a0, 88(a0)
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	lh	a0, 0(s7)
	slli	a3, a3, 2
	addi	a1, a3, 16
	slli	a4, a4, 2
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	addw	a1, a1, a0
	li	a2, 1
	addi	a4, a4, 16
	sd	a4, 88(sp)                      # 8-byte Folded Spill
	sd	t1, 48(sp)                      # 8-byte Folded Spill
	sd	t0, 64(sp)                      # 8-byte Folded Spill
	bge	a2, a1, .LBB7_10
# %bb.6:
	lui	a2, 2
	addiw	a3, a2, -1800
	add	a3, t1, a3
	lw	a2, 0(a3)
	subw	a2, a2, t0
	slli	a2, a2, 2
	addi	a2, a2, 32
	slli	a4, a2, 48
	lhu	a2, 0(s8)
	srai	a4, a4, 48
	addi	a4, a4, -1
	bge	a1, a4, .LBB7_11
# %bb.7:
	slli	a1, a2, 48
	srai	a1, a1, 48
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	addw	a4, a4, a1
	li	a5, 2
	blt	a4, a5, .LBB7_11
# %bb.8:
	lw	a3, 4(a3)
	ld	a5, 80(sp)                      # 8-byte Folded Reload
	subw	a3, a3, a5
	slli	a3, a3, 2
	addi	a3, a3, 32
	slli	a3, a3, 48
	srai	a3, a3, 48
	addi	a3, a3, -1
	bge	a4, a3, .LBB7_11
# %bb.9:
	lui	a2, %hi(FastLine4X)
	addi	a2, a2, %lo(FastLine4X)
	j	.LBB7_12
.LBB7_10:
	lhu	a2, 0(s8)
.LBB7_11:
	slli	a1, a2, 48
	srai	a1, a1, 48
	lui	a2, %hi(UMVLine4X)
	addi	a2, a2, %lo(UMVLine4X)
.LBB7_12:
	ld	s11, 272(sp)
	ld	s9, 264(sp)
	ld	s6, 256(sp)
	lui	a3, %hi(get_line)
	sd	a2, %lo(get_line)(a3)
	sub	a0, s0, a0
	srliw	a2, a0, 30
	add	a2, a0, a2
	andi	a2, a2, -4
	lui	a3, %hi(SearchState)
	ld	s3, %lo(SearchState)(a3)
	sub	s1, a0, a2
	sub	a1, s10, a1
	srliw	a2, a1, 30
	ld	a0, 0(s3)
	add	a2, a1, a2
	andi	a2, a2, -4
	sub	s2, a1, a2
	li	a2, 49
	li	a1, 0
	call	memset
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 24(a0)
	sd	s11, 104(sp)                    # 8-byte Folded Spill
	sd	s9, 96(sp)                      # 8-byte Folded Spill
	sd	s10, 40(sp)                     # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	beqz	a0, .LBB7_16
# %bb.13:
	lui	s3, %hi(SearchState)
	lh	s4, 0(s7)
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	lh	s5, 0(s8)
	sub	a1, s4, s0
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	sub	a2, s5, s10
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	mul	a0, a0, s9
	sraiw	a0, a0, 16
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	addw	a4, a1, s4
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	addw	a5, a1, s5
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	sd	s11, 16(sp)
	sd	s6, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 48(sp)                      # 8-byte Folded Reload
	mv	a6, s9
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	call	AddUpSADQuarter
	ld	a1, %lo(SearchState)(s3)
	ld	a1, 24(a1)
	li	s0, 0
	li	s3, 0
	li	a2, 1
	sb	a2, 3(a1)
	bge	a0, s6, .LBB7_15
# %bb.14:
	mv	s0, s4
	mv	s3, s5
	mv	s6, a0
.LBB7_15:
	or	a0, s1, s2
	bnez	a0, .LBB7_17
	j	.LBB7_19
.LBB7_16:
	ld	a0, 24(s3)
	li	a1, 1
	sb	a1, 3(a0)
	lh	s0, 0(s7)
	lh	s3, 0(s8)
	ld	s9, 48(sp)                      # 8-byte Folded Reload
	or	a0, s1, s2
	beqz	a0, .LBB7_19
.LBB7_17:
	lh	a0, 0(s7)
	lh	a1, 0(s8)
	add	s1, s1, a0
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	add	s2, s2, a1
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sub	a1, s1, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	sub	a2, s2, a2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a0, a0, 16
	ld	a4, 56(sp)                      # 8-byte Folded Reload
	addw	a4, s1, a4
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	addw	a5, s2, a1
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	sd	a1, 16(sp)
	sd	s6, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	mv	a6, s9
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	call	AddUpSADQuarter
	lh	a1, 0(s8)
	lui	a2, %hi(SearchState)
	ld	a2, %lo(SearchState)(a2)
	sub	a1, s2, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lh	a2, 0(s7)
	ld	a1, 24(a1)
	sub	a2, s1, a2
	add	a1, a1, a2
	li	a2, 1
	sb	a2, 3(a1)
	bge	a0, s6, .LBB7_19
# %bb.18:
	mv	s6, a0
	mv	s3, s2
	mv	s0, s1
.LBB7_19:
	li	s10, 3
	lui	a5, %hi(SearchState)
	li	s4, 3
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	ld	a4, 96(sp)                      # 8-byte Folded Reload
.LBB7_20:                               # =>This Inner Loop Header: Depth=1
	lh	a0, 0(s7)
	addi	s1, s0, -1
	subw	a0, s1, a0
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bltu	s10, a2, .LBB7_23
# %bb.21:                               #   in Loop: Header=BB7_20 Depth=1
	lh	a1, 0(s8)
	subw	a1, s3, a1
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	s10, a3, .LBB7_23
# %bb.22:                               #   in Loop: Header=BB7_20 Depth=1
	ld	a2, %lo(SearchState)(a5)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 24(a1)
	add	a0, a1, a0
	lbu	a0, 3(a0)
	beqz	a0, .LBB7_39
.LBB7_23:                               #   in Loop: Header=BB7_20 Depth=1
	mv	s9, s0
	li	s11, 1
.LBB7_24:                               #   in Loop: Header=BB7_20 Depth=1
	lh	a0, 0(s7)
	subw	a0, s0, a0
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bltu	s10, a2, .LBB7_27
# %bb.25:                               #   in Loop: Header=BB7_20 Depth=1
	lh	a1, 0(s8)
	addi	s5, s3, 1
	subw	a1, s5, a1
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	s10, a3, .LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_20 Depth=1
	ld	a2, %lo(SearchState)(a5)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 24(a1)
	add	a0, a1, a0
	lbu	a0, 3(a0)
	beqz	a0, .LBB7_41
.LBB7_27:                               #   in Loop: Header=BB7_20 Depth=1
	mv	s1, s3
.LBB7_28:                               #   in Loop: Header=BB7_20 Depth=1
	lh	a0, 0(s7)
	addi	s5, s0, 1
	subw	a0, s5, a0
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bltu	s10, a2, .LBB7_33
# %bb.29:                               #   in Loop: Header=BB7_20 Depth=1
	lh	a1, 0(s8)
	subw	a1, s3, a1
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	s10, a3, .LBB7_33
# %bb.30:                               #   in Loop: Header=BB7_20 Depth=1
	ld	a2, %lo(SearchState)(a5)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 24(a1)
	add	a0, a1, a0
	lbu	a0, 3(a0)
	bnez	a0, .LBB7_33
# %bb.31:                               #   in Loop: Header=BB7_20 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	subw	a1, s5, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	subw	a2, s3, a2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	mul	a0, a0, a4
	sraiw	a0, a0, 16
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	addw	a4, s5, a1
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	addw	a5, s3, a1
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	sd	a6, 16(sp)
	sext.w	s2, s6
	sd	s2, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	call	AddUpSADQuarter
	lui	a5, %hi(SearchState)
	ld	a4, 96(sp)                      # 8-byte Folded Reload
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	lh	a1, 0(s8)
	ld	a2, %lo(SearchState)(a5)
	subw	a1, s3, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lh	a2, 0(s7)
	ld	a1, 24(a1)
	subw	a2, s5, a2
	add	a1, a1, a2
	li	a2, 1
	sb	a2, 3(a1)
	bge	a0, s2, .LBB7_33
# %bb.32:                               #   in Loop: Header=BB7_20 Depth=1
	li	s11, 0
	mv	s9, s5
	mv	s1, s3
	mv	s6, a0
.LBB7_33:                               #   in Loop: Header=BB7_20 Depth=1
	lh	a0, 0(s7)
	subw	a0, s0, a0
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bltu	s10, a2, .LBB7_37
# %bb.34:                               #   in Loop: Header=BB7_20 Depth=1
	lh	a1, 0(s8)
	addi	s3, s3, -1
	subw	a1, s3, a1
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	s10, a3, .LBB7_37
# %bb.35:                               #   in Loop: Header=BB7_20 Depth=1
	ld	a2, %lo(SearchState)(a5)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 24(a1)
	add	a0, a1, a0
	lbu	a0, 3(a0)
	bnez	a0, .LBB7_37
# %bb.36:                               #   in Loop: Header=BB7_20 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	subw	a1, s0, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	subw	a2, s3, a2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	mul	a0, a0, a4
	sraiw	a0, a0, 16
	ld	a4, 56(sp)                      # 8-byte Folded Reload
	addw	a4, s0, a4
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	addw	a5, s3, a1
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	sd	a6, 16(sp)
	sext.w	s2, s6
	sd	s2, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	call	AddUpSADQuarter
	lui	a5, %hi(SearchState)
	ld	a4, 96(sp)                      # 8-byte Folded Reload
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	lh	a1, 0(s8)
	ld	a2, %lo(SearchState)(a5)
	subw	a1, s3, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lh	a2, 0(s7)
	ld	a1, 24(a1)
	subw	a2, s0, a2
	add	a1, a1, a2
	li	a2, 1
	sb	a2, 3(a1)
	blt	a0, s2, .LBB7_38
.LBB7_37:                               #   in Loop: Header=BB7_20 Depth=1
	mv	a0, s6
	mv	s3, s1
	mv	s0, s9
	bnez	s11, .LBB7_43
.LBB7_38:                               #   in Loop: Header=BB7_20 Depth=1
	addiw	s4, s4, -1
	mv	s6, a0
	mv	s1, s3
	mv	s9, s0
	bnez	s4, .LBB7_20
	j	.LBB7_43
.LBB7_39:                               #   in Loop: Header=BB7_20 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	subw	a1, s1, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	subw	a2, s3, a2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	mul	a0, a0, a4
	sraiw	a0, a0, 16
	ld	a4, 56(sp)                      # 8-byte Folded Reload
	addw	a4, s1, a4
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	addw	a5, s3, a1
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	sd	a6, 16(sp)
	sext.w	s5, s6
	sd	s5, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	call	AddUpSADQuarter
	lui	a5, %hi(SearchState)
	ld	a4, 96(sp)                      # 8-byte Folded Reload
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	lh	a1, 0(s8)
	ld	a2, %lo(SearchState)(a5)
	subw	a1, s3, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lh	a2, 0(s7)
	ld	a1, 24(a1)
	subw	a2, s1, a2
	add	a1, a1, a2
	li	s11, 1
	sb	s11, 3(a1)
	mv	s9, s0
	bge	a0, s5, .LBB7_24
# %bb.40:                               #   in Loop: Header=BB7_20 Depth=1
	li	s11, 0
	mv	s9, s1
	mv	s6, a0
	j	.LBB7_24
.LBB7_41:                               #   in Loop: Header=BB7_20 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	subw	a1, s0, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	subw	a2, s5, a2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	mul	a0, a0, a4
	sraiw	a0, a0, 16
	ld	a4, 56(sp)                      # 8-byte Folded Reload
	addw	a4, s0, a4
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	addw	a5, s5, a1
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	sd	a6, 16(sp)
	sext.w	s2, s6
	sd	s2, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	ld	a7, 72(sp)                      # 8-byte Folded Reload
	call	AddUpSADQuarter
	lui	a5, %hi(SearchState)
	ld	a4, 96(sp)                      # 8-byte Folded Reload
	ld	a6, 104(sp)                     # 8-byte Folded Reload
	lh	a1, 0(s8)
	ld	a2, %lo(SearchState)(a5)
	subw	a1, s5, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lh	a2, 0(s7)
	ld	a1, 24(a1)
	subw	a2, s0, a2
	add	a1, a1, a2
	li	a2, 1
	sb	a2, 3(a1)
	mv	s1, s3
	bge	a0, s2, .LBB7_28
# %bb.42:                               #   in Loop: Header=BB7_20 Depth=1
	li	s11, 0
	mv	s9, s0
	mv	s1, s5
	mv	s6, a0
	j	.LBB7_28
.LBB7_43:
	sh	s9, 0(s7)
	sext.w	a0, s6
	sh	s1, 0(s8)
	ld	ra, 216(sp)                     # 8-byte Folded Reload
	ld	s0, 208(sp)                     # 8-byte Folded Reload
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 192(sp)                     # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
	ld	s4, 176(sp)                     # 8-byte Folded Reload
	ld	s5, 168(sp)                     # 8-byte Folded Reload
	ld	s6, 160(sp)                     # 8-byte Folded Reload
	ld	s7, 152(sp)                     # 8-byte Folded Reload
	ld	s8, 144(sp)                     # 8-byte Folded Reload
	ld	s9, 136(sp)                     # 8-byte Folded Reload
	ld	s10, 128(sp)                    # 8-byte Folded Reload
	ld	s11, 120(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 224
	ret
.Lfunc_end7:
	.size	FastSubPelBlockMotionSearch, .Lfunc_end7-FastSubPelBlockMotionSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	decide_intrabk_SAD              # -- Begin function decide_intrabk_SAD
	.p2align	2
	.type	decide_intrabk_SAD,@function
decide_intrabk_SAD:                     # @decide_intrabk_SAD
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	li	a2, 2
	beq	a1, a2, .LBB8_10
# %bb.1:
	lw	a1, 152(a0)
	lw	a0, 156(a0)
	beqz	a1, .LBB8_6
# %bb.2:
	lui	a2, %hi(flag_intra)
	ld	a2, %lo(flag_intra)(a2)
	srai	a1, a1, 4
	add	a1, a2, a1
	beqz	a0, .LBB8_8
# %bb.3:
	lbu	a2, 0(a1)
	li	a0, 1
	bnez	a2, .LBB8_9
# %bb.4:
	lbu	a2, -1(a1)
	bnez	a2, .LBB8_9
# %bb.5:
	lbu	a0, 1(a1)
	snez	a0, a0
	j	.LBB8_9
.LBB8_6:
	beqz	a0, .LBB8_9
# %bb.7:
	lui	a0, %hi(flag_intra)
	ld	a0, %lo(flag_intra)(a0)
	lbu	a0, 0(a0)
	j	.LBB8_9
.LBB8_8:
	lbu	a0, -1(a1)
.LBB8_9:
	lui	a1, %hi(flag_intra_SAD)
	sw	a0, %lo(flag_intra_SAD)(a1)
.LBB8_10:
	ret
.Lfunc_end8:
	.size	decide_intrabk_SAD, .Lfunc_end8-decide_intrabk_SAD
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	skip_intrabk_SAD                # -- Begin function skip_intrabk_SAD
	.p2align	2
	.type	skip_intrabk_SAD,@function
skip_intrabk_SAD:                       # @skip_intrabk_SAD
# %bb.0:
	lui	a3, %hi(img)
	ld	a2, %lo(img)(a3)
	lw	a4, 0(a2)
	addiw	a0, a0, -9
	blez	a4, .LBB9_2
# %bb.1:
	lui	a4, %hi(flag_intra)
	lw	a2, 152(a2)
	ld	a4, %lo(flag_intra)(a4)
	sltiu	a5, a0, 2
	srai	a2, a2, 4
	add	a2, a4, a2
	sb	a5, 0(a2)
	ld	a2, %lo(img)(a3)
.LBB9_2:
	li	a3, 1
	bltu	a3, a0, .LBB9_29
# %bb.3:
	lw	a0, 24(a2)
	li	a2, 2
	beq	a0, a2, .LBB9_29
# %bb.4:
	lui	a0, %hi(fastme_l0_cost)
	ld	a0, %lo(fastme_l0_cost)(a0)
	lui	a2, %hi(fastme_l1_cost)
	ld	a2, %lo(fastme_l1_cost)(a2)
	blez	a1, .LBB9_27
# %bb.5:
	li	a3, 0
	ld	a4, 0(a0)
	ld	a5, 0(a2)
	ld	a6, 8(a0)
	ld	a7, 8(a2)
	ld	t0, 16(a0)
	ld	t1, 16(a2)
	ld	t2, 24(a0)
	ld	t3, 24(a2)
	ld	t4, 32(a0)
	ld	t5, 32(a2)
	ld	t6, 40(a0)
	regsw_c	x9, 0x100(x18)		# 100100100100100000000
	ld	x1, 40(a2)
	ld	x2, 48(a0)
	ld	x3, 48(a2)
	ld	x4, 56(a0)
	ld	x5, 56(a2)
	ld	a0, 64(a0)
	ld	a2, 64(a2)
	slli	a1, a1, 3
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	lui	x6, %hi(fastme_ref_cost)
	li	x7, 4
.LBB9_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #       Child Loop BB9_8 Depth 3
                                        #       Child Loop BB9_10 Depth 3
                                        #       Child Loop BB9_12 Depth 3
                                        #       Child Loop BB9_14 Depth 3
                                        #       Child Loop BB9_16 Depth 3
                                        #       Child Loop BB9_18 Depth 3
                                        #       Child Loop BB9_20 Depth 3
                                        #       Child Loop BB9_22 Depth 3
                                        #       Child Loop BB9_24 Depth 3
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	li	x8, 0
	slli	x9, a3, 2
.LBB9_7:                                #   Parent Loop BB9_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_8 Depth 3
                                        #       Child Loop BB9_10 Depth 3
                                        #       Child Loop BB9_12 Depth 3
                                        #       Child Loop BB9_14 Depth 3
                                        #       Child Loop BB9_16 Depth 3
                                        #       Child Loop BB9_18 Depth 3
                                        #       Child Loop BB9_20 Depth 3
                                        #       Child Loop BB9_22 Depth 3
                                        #       Child Loop BB9_24 Depth 3
	regsw_c	x29, 0x3b7(x26)		# 110101110101110110111
	slli	x10, x8, 3
	add	x11, a4, x10
	ld	x12, 0(x11)
	add	x11, a5, x10
	ld	x13, 0(x11)
	ld	x11, %lo(fastme_ref_cost)(x6)
	add	x12, x12, x9
	regsw_c	x21, 0x580(x11)		# 010111010110110000000
	sw	zero, 0(x12)
	add	x13, x13, x9
	sw	zero, 0(x13)
	add	x12, x11, a1
	mv	x13, x11
.LBB9_8:                                #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x15, 0x5f2(x27)		# 110110111110111110010
	ld	x14, 0(x13)
	ld	x14, 0(x14)
	add	x14, x14, x10
	ld	x14, 0(x14)
	add	x14, x14, x9
	addi	x13, x13, 8
	sw	zero, 0(x14)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x13, x12, .LBB9_8
# %bb.9:                                #   in Loop: Header=BB9_7 Depth=2
	regsw_c	x11, 0x5d7(x23)		# 101110101110111010111
	add	x13, a6, x10
	ld	x13, 0(x13)
	add	x14, a7, x10
	ld	x14, 0(x14)
	add	x13, x13, x9
	sw	zero, 0(x13)
	add	x14, x14, x9
	regsw_c	x0, 0x0(x11)		# 010110000000000000000
	sw	zero, 0(x14)
	mv	x13, x11
.LBB9_10:                               #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x15, 0x5f2(x27)		# 110110111110111110010
	ld	x14, 0(x13)
	ld	x14, 8(x14)
	add	x14, x14, x10
	ld	x14, 0(x14)
	add	x14, x14, x9
	addi	x13, x13, 8
	sw	zero, 0(x14)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x13, x12, .LBB9_10
# %bb.11:                               #   in Loop: Header=BB9_7 Depth=2
	regsw_c	x11, 0x5d7(x23)		# 101110101110111010111
	add	x13, t0, x10
	ld	x13, 0(x13)
	add	x14, t1, x10
	ld	x14, 0(x14)
	add	x13, x13, x9
	sw	zero, 0(x13)
	add	x14, x14, x9
	regsw_c	x0, 0x0(x11)		# 010110000000000000000
	sw	zero, 0(x14)
	mv	x13, x11
.LBB9_12:                               #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x15, 0x5f2(x27)		# 110110111110111110010
	ld	x14, 0(x13)
	ld	x14, 16(x14)
	add	x14, x14, x10
	ld	x14, 0(x14)
	add	x14, x14, x9
	addi	x13, x13, 8
	sw	zero, 0(x14)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x13, x12, .LBB9_12
# %bb.13:                               #   in Loop: Header=BB9_7 Depth=2
	regsw_c	x11, 0x5d7(x23)		# 101110101110111010111
	add	x13, t2, x10
	ld	x13, 0(x13)
	add	x14, t3, x10
	ld	x14, 0(x14)
	add	x13, x13, x9
	sw	zero, 0(x13)
	add	x14, x14, x9
	regsw_c	x0, 0x0(x11)		# 010110000000000000000
	sw	zero, 0(x14)
	mv	x13, x11
.LBB9_14:                               #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x15, 0x5f2(x27)		# 110110111110111110010
	ld	x14, 0(x13)
	ld	x14, 24(x14)
	add	x14, x14, x10
	ld	x14, 0(x14)
	add	x14, x14, x9
	addi	x13, x13, 8
	sw	zero, 0(x14)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x13, x12, .LBB9_14
# %bb.15:                               #   in Loop: Header=BB9_7 Depth=2
	regsw_c	x11, 0x5d7(x23)		# 101110101110111010111
	add	x13, t4, x10
	ld	x13, 0(x13)
	add	x14, t5, x10
	ld	x14, 0(x14)
	add	x13, x13, x9
	sw	zero, 0(x13)
	add	x14, x14, x9
	regsw_c	x0, 0x0(x11)		# 010110000000000000000
	sw	zero, 0(x14)
	mv	x13, x11
.LBB9_16:                               #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x15, 0x5f2(x27)		# 110110111110111110010
	ld	x14, 0(x13)
	ld	x14, 32(x14)
	add	x14, x14, x10
	ld	x14, 0(x14)
	add	x14, x14, x9
	addi	x13, x13, 8
	sw	zero, 0(x14)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x13, x12, .LBB9_16
# %bb.17:                               #   in Loop: Header=BB9_7 Depth=2
	regsw_c	x15, 0x5d7(x23)		# 101110111110111010111
	add	x13, t6, x10
	ld	x13, 0(x13)
	add	x14, x1, x10
	ld	x14, 0(x14)
	add	x13, x13, x9
	sw	zero, 0(x13)
	add	x14, x14, x9
	regsw_c	x0, 0x0(x11)		# 010110000000000000000
	sw	zero, 0(x14)
	mv	x13, x11
.LBB9_18:                               #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x15, 0x5f2(x27)		# 110110111110111110010
	ld	x14, 0(x13)
	ld	x14, 40(x14)
	add	x14, x14, x10
	ld	x14, 0(x14)
	add	x14, x14, x9
	addi	x13, x13, 8
	sw	zero, 0(x14)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x13, x12, .LBB9_18
# %bb.19:                               #   in Loop: Header=BB9_7 Depth=2
	regsw_c	x15, 0x5d7(x31)		# 111110111110111010111
	add	x13, x2, x10
	ld	x13, 0(x13)
	add	x14, x3, x10
	ld	x14, 0(x14)
	add	x13, x13, x9
	sw	zero, 0(x13)
	add	x14, x14, x9
	regsw_c	x0, 0x0(x11)		# 010110000000000000000
	sw	zero, 0(x14)
	mv	x13, x11
.LBB9_20:                               #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x15, 0x5f2(x27)		# 110110111110111110010
	ld	x14, 0(x13)
	ld	x14, 48(x14)
	add	x14, x14, x10
	ld	x14, 0(x14)
	add	x14, x14, x9
	addi	x13, x13, 8
	sw	zero, 0(x14)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x13, x12, .LBB9_20
# %bb.21:                               #   in Loop: Header=BB9_7 Depth=2
	regsw_c	x15, 0x5d7(x31)		# 111110111110111010111
	add	x13, x4, x10
	ld	x13, 0(x13)
	add	x14, x5, x10
	ld	x14, 0(x14)
	add	x13, x13, x9
	sw	zero, 0(x13)
	add	x14, x14, x9
	regsw_c	x0, 0x0(x11)		# 010110000000000000000
	sw	zero, 0(x14)
	mv	x13, x11
.LBB9_22:                               #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x15, 0x5f2(x27)		# 110110111110111110010
	ld	x14, 0(x13)
	ld	x14, 56(x14)
	add	x14, x14, x10
	ld	x14, 0(x14)
	add	x14, x14, x9
	addi	x13, x13, 8
	sw	zero, 0(x14)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x13, x12, .LBB9_22
# %bb.23:                               #   in Loop: Header=BB9_7 Depth=2
	regsw_c	x11, 0x5d7(x23)		# 101110101110111010111
	add	x13, a0, x10
	ld	x13, 0(x13)
	add	x14, a2, x10
	ld	x14, 0(x14)
	add	x13, x13, x9
	sw	zero, 0(x13)
	add	x14, x14, x9
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	sw	zero, 0(x14)
.LBB9_24:                               #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x15, 0x5f2(x27)		# 110110111110111110010
	ld	x13, 0(x11)
	ld	x13, 64(x13)
	add	x13, x13, x10
	ld	x13, 0(x13)
	add	x13, x13, x9
	addi	x11, x11, 8
	sw	zero, 0(x13)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bne	x11, x12, .LBB9_24
# %bb.25:                               #   in Loop: Header=BB9_7 Depth=2
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	addi	x8, x8, 1
	bne	x8, x7, .LBB9_7
# %bb.26:                               #   in Loop: Header=BB9_6 Depth=1
	addi	a3, a3, 1
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bne	a3, x7, .LBB9_6
	j	.LBB9_29
.LBB9_27:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	ld	x8, 8(a0)
	ld	a1, 8(a2)
	ld	a3, 16(a0)
	ld	a4, 16(a2)
	ld	a5, 24(a0)
	ld	a6, 24(a2)
	ld	a7, 32(a0)
	ld	t0, 32(a2)
	regsw_c	x9, 0x120(x18)		# 100100100100100100000
	ld	x9, 40(a0)
	ld	x10, 40(a2)
	ld	x11, 48(a0)
	ld	x12, 48(a2)
	ld	x13, 56(a0)
	ld	x14, 56(a2)
	ld	t3, 0(a0)
	ld	t4, 0(a2)
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	ld	x15, 64(a0)
	ld	x16, 64(a2)
	ld	t1, 0(t3)
	ld	t2, 0(t4)
	ld	t3, 8(t3)
	ld	t4, 8(t4)
	ld	t5, 8(a1)
	ld	t6, 8(a3)
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	ld	x1, 8(a4)
	ld	x2, 8(a5)
	ld	x3, 8(a6)
	ld	x4, 8(a7)
	ld	x5, 8(t0)
	li	x6, 0
	li	x7, 16
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	mv	x23, t0
	mv	x20, a7
	mv	x21, a6
	mv	x22, a5
	mv	x17, a4
	mv	x18, a3
	mv	x19, a1
.LBB9_28:                               # =>This Inner Loop Header: Depth=1
	regsw_c	x13, 0x2b7(x21)		# 101010110101010110111
	add	x24, t1, x6
	sw	zero, 0(x24)
	ld	x24, 0(x8)
	add	x25, t2, x6
	sw	zero, 0(x25)
	ld	x19, 0(x19)
	add	x24, x24, x6
	regsw_c	x14, 0x5ba(x11)		# 010110111010110111010
	sw	zero, 0(x24)
	ld	x18, 0(x18)
	add	x19, x19, x6
	sw	zero, 0(x19)
	ld	x17, 0(x17)
	add	x18, x18, x6
	sw	zero, 0(x18)
	regsw_c	x21, 0x5d6(x27)		# 110111010110111010110
	ld	x18, 0(x22)
	add	x17, x17, x6
	sw	zero, 0(x17)
	ld	x17, 0(x21)
	add	x18, x18, x6
	sw	zero, 0(x18)
	ld	x18, 0(x20)
	regsw_c	x13, 0x6b7(x29)		# 111010110111010110111
	add	x17, x17, x6
	sw	zero, 0(x17)
	ld	x17, 0(x23)
	add	x18, x18, x6
	sw	zero, 0(x18)
	ld	x9, 0(x9)
	add	x17, x17, x6
	regsw_c	x14, 0x5ba(x11)		# 010110111010110111010
	sw	zero, 0(x17)
	ld	x10, 0(x10)
	add	x9, x9, x6
	sw	zero, 0(x9)
	ld	x9, 0(x11)
	add	x10, x10, x6
	sw	zero, 0(x10)
	regsw_c	x21, 0x5d6(x27)		# 110111010110111010110
	ld	x10, 0(x12)
	add	x9, x9, x6
	sw	zero, 0(x9)
	ld	x9, 0(x13)
	add	x10, x10, x6
	sw	zero, 0(x10)
	ld	x10, 0(x14)
	regsw_c	x13, 0x797(x29)		# 111010110111110010111
	add	x9, x9, x6
	sw	zero, 0(x9)
	ld	x9, 0(x15)
	add	x10, x10, x6
	ld	x11, 0(x16)
	sw	zero, 0(x10)
	add	x9, x9, x6
	regsw_c	x21, 0x395(x11)		# 010111010101110010101
	sw	zero, 0(x9)
	add	x11, x11, x6
	sw	zero, 0(x11)
	add	x9, t3, x6
	ld	x8, 8(x8)
	sw	zero, 0(x9)
	add	x9, t4, x6
	regsw_c	x21, 0x2aa(x11)		# 010111010101010101010
	sw	zero, 0(x9)
	add	x8, x8, x6
	sw	zero, 0(x8)
	add	x8, t5, x6
	sw	zero, 0(x8)
	add	x8, t6, x6
	sw	zero, 0(x8)
	regsw_c	x14, 0x5d4(x29)		# 111010111010111010100
	add	x8, x1, x6
	sw	zero, 0(x8)
	add	x8, x2, x6
	sw	zero, 0(x8)
	add	x8, x3, x6
	sw	zero, 0(x8)
	ld	x9, 40(a0)
	regsw_c	x9, 0x5d6(x29)		# 111010100110111010110
	add	x8, x4, x6
	sw	zero, 0(x8)
	ld	x10, 40(a2)
	ld	x8, 8(x9)
	add	x11, x5, x6
	sw	zero, 0(x11)
	ld	x11, 8(x10)
	regsw_c	x5, 0x732(x30)		# 111100010111100110010
	add	x8, x8, x6
	ld	x12, 48(a0)
	sw	zero, 0(x8)
	add	x11, x11, x6
	ld	x13, 48(a2)
	ld	x8, 8(x12)
	sw	zero, 0(x11)
	regsw_c	x14, 0x5bc(x19)		# 100110111010110111100
	ld	x11, 56(a0)
	ld	x14, 8(x13)
	add	x8, x8, x6
	sw	zero, 0(x8)
	ld	x8, 8(x11)
	add	x14, x14, x6
	ld	x15, 56(a2)
	regsw_c	x25, 0x4a6(x11)		# 010111100110010100110
	sw	zero, 0(x14)
	add	x8, x8, x6
	ld	x14, 64(a0)
	ld	x16, 8(x15)
	sw	zero, 0(x8)
	ld	x17, 64(a2)
	ld	x8, 8(x14)
	regsw_c	x13, 0x717(x29)		# 111010110111100010111
	add	x16, x16, x6
	sw	zero, 0(x16)
	ld	x16, 8(x17)
	add	x8, x8, x6
	ld	x18, 0(a0)
	sw	zero, 0(x8)
	add	x16, x16, x6
	regsw_c	x5, 0x1ba(x19)		# 100110010100110111010
	ld	x19, 0(a2)
	ld	x20, 16(x18)
	sw	zero, 0(x16)
	ld	x8, 8(a0)
	ld	x16, 16(x19)
	add	x20, x20, x6
	sw	zero, 0(x20)
	regsw_c	x21, 0x1d4(x27)		# 110111010100111010100
	ld	x20, 16(x8)
	add	x16, x16, x6
	sw	zero, 0(x16)
	ld	x16, 16(a1)
	add	x20, x20, x6
	sw	zero, 0(x20)
	ld	x20, 16(a3)
	regsw_c	x9, 0x6a7(x29)		# 111010100111010100111
	add	x16, x16, x6
	sw	zero, 0(x16)
	ld	x16, 16(a4)
	add	x20, x20, x6
	sw	zero, 0(x20)
	ld	x20, 16(a5)
	add	x16, x16, x6
	regsw_c	x14, 0x53a(x10)		# 010100111010100111010
	sw	zero, 0(x16)
	ld	x16, 16(a6)
	add	x20, x20, x6
	sw	zero, 0(x20)
	ld	x20, 16(a7)
	add	x16, x16, x6
	sw	zero, 0(x16)
	regsw_c	x21, 0x5d6(x19)		# 100111010110111010110
	ld	x16, 16(t0)
	add	x20, x20, x6
	sw	zero, 0(x20)
	ld	x9, 16(x9)
	add	x16, x16, x6
	sw	zero, 0(x16)
	ld	x10, 16(x10)
	regsw_c	x13, 0x6b7(x29)		# 111010110111010110111
	add	x9, x9, x6
	sw	zero, 0(x9)
	ld	x9, 16(x12)
	add	x10, x10, x6
	sw	zero, 0(x10)
	ld	x10, 16(x13)
	add	x9, x9, x6
	regsw_c	x14, 0x5ba(x11)		# 010110111010110111010
	sw	zero, 0(x9)
	ld	x9, 16(x11)
	add	x10, x10, x6
	sw	zero, 0(x10)
	ld	x10, 16(x15)
	add	x9, x9, x6
	sw	zero, 0(x9)
	regsw_c	x21, 0x5d6(x27)		# 110111010110111010110
	ld	x9, 16(x14)
	add	x10, x10, x6
	sw	zero, 0(x10)
	ld	x10, 16(x17)
	add	x9, x9, x6
	sw	zero, 0(x9)
	ld	x9, 24(x18)
	regsw_c	x13, 0x6b7(x29)		# 111010110111010110111
	add	x10, x10, x6
	sw	zero, 0(x10)
	ld	x10, 24(x19)
	add	x9, x9, x6
	sw	zero, 0(x9)
	ld	x9, 24(x8)
	add	x10, x10, x6
	regsw_c	x15, 0x194(x17)		# 100010111100110010100
	ld	x19, 8(a2)
	sw	zero, 0(x10)
	add	x9, x9, x6
	ld	x18, 16(a0)
	ld	x10, 24(x19)
	sw	zero, 0(x9)
	ld	x17, 16(a2)
	regsw_c	x21, 0x5e2(x27)		# 110111010110111100010
	ld	x9, 24(x18)
	add	x10, x10, x6
	sw	zero, 0(x10)
	ld	x10, 24(x17)
	add	x9, x9, x6
	ld	x22, 24(a0)
	sw	zero, 0(x9)
	regsw_c	x12, 0x537(x30)		# 111100110010100110111
	add	x10, x10, x6
	ld	x21, 24(a2)
	ld	x9, 24(x22)
	sw	zero, 0(x10)
	ld	x20, 32(a0)
	ld	x10, 24(x21)
	add	x9, x9, x6
	regsw_c	x15, 0xbc(x11)		# 010110111100010111100
	sw	zero, 0(x9)
	ld	x9, 24(x20)
	add	x10, x10, x6
	ld	x23, 32(a2)
	sw	zero, 0(x10)
	add	x10, x9, x6
	ld	x9, 40(a0)
	regsw_c	x9, 0x5d6(x25)		# 110010100110111010110
	ld	x11, 24(x23)
	sw	zero, 0(x10)
	ld	x10, 40(a2)
	ld	x12, 24(x9)
	add	x11, x11, x6
	sw	zero, 0(x11)
	ld	x13, 24(x10)
	regsw_c	x5, 0x732(x30)		# 111100010111100110010
	add	x12, x12, x6
	ld	x11, 48(a0)
	sw	zero, 0(x12)
	add	x13, x13, x6
	ld	x12, 48(a2)
	ld	x14, 24(x11)
	sw	zero, 0(x13)
	regsw_c	x14, 0x5bc(x19)		# 100110111010110111100
	ld	x13, 56(a0)
	ld	x15, 24(x12)
	add	x14, x14, x6
	sw	zero, 0(x14)
	ld	x16, 24(x13)
	add	x15, x15, x6
	ld	x14, 56(a2)
	regsw_c	x25, 0x516(x11)		# 010111100110100010110
	sw	zero, 0(x15)
	add	x24, x16, x6
	ld	x15, 64(a0)
	ld	x25, 24(x14)
	ld	x16, 64(a2)
	sw	zero, 0(x24)
	ld	x24, 24(x15)
	regsw_c	x5, 0x6be(x31)		# 111110010111010111110
	add	x25, x25, x6
	ld	x26, 24(x16)
	sw	zero, 0(x25)
	add	x24, x24, x6
	sw	zero, 0(x24)
	add	x26, x26, x6
	addi	x6, x6, 4
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	sw	zero, 0(x26)
	bne	x6, x7, .LBB9_28
.LBB9_29:
	ret
.Lfunc_end9:
	.size	skip_intrabk_SAD, .Lfunc_end9-skip_intrabk_SAD
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	setup_FME                       # -- Begin function setup_FME
	.p2align	2
	.type	setup_FME,@function
setup_FME:                              # @setup_FME
# %bb.0:
	lui	a6, %hi(input)
	ld	a6, %lo(input)(a6)
	lw	t1, 1244(a6)
	beqz	t1, .LBB10_2
# %bb.1:
	lui	a6, %hi(frame_ctr+4)
	lw	a6, %lo(frame_ctr+4)(a6)
	addi	a7, t1, 1
	remw	t3, a6, a7
	j	.LBB10_3
.LBB10_2:
	li	t3, 0
.LBB10_3:
	li	a7, 40
	li	t2, 6
	slli	a6, a2, 3
	slli	t4, a3, 3
	slli	t0, a0, 3
	blt	t2, a4, .LBB10_7
# %bb.4:
	li	t2, 4
	li	a7, 32
	blt	t2, a4, .LBB10_7
# %bb.5:
	li	a7, 16
	beq	a4, t2, .LBB10_7
# %bb.6:
	li	t2, 2
	li	a7, 8
	blt	a4, t2, .LBB10_8
.LBB10_7:
	add	t2, a5, a6
	ld	t2, 0(t2)
	add	t2, t2, t4
	ld	t2, 0(t2)
	slli	t5, a1, 3
	add	t2, t2, t5
	ld	t2, 0(t2)
	add	t2, t2, t0
	ld	t2, 0(t2)
	add	a7, t2, a7
	ld	a7, 0(a7)
	lh	t2, 0(a7)
	lh	a7, 2(a7)
	lui	t5, %hi(pred_MV_uplayer)
	sw	t2, %lo(pred_MV_uplayer)(t5)
	addi	t2, t5, %lo(pred_MV_uplayer)
	sw	a7, 4(t2)
.LBB10_8:
	lui	a7, %hi(img)
	ld	a7, %lo(img)(a7)
	lui	t2, 22
	add	t2, a7, t2
	lw	t2, 152(t2)
	beqz	t2, .LBB10_12
# %bb.9:
	li	t5, 2
	blt	a0, t5, .LBB10_15
# %bb.10:
	bnez	a1, .LBB10_15
# %bb.11:
	add	a5, a5, a6
	ld	a5, 0(a5)
	add	a5, a5, t4
	ld	a5, 0(a5)
	ld	a5, 0(a5)
	add	a5, a5, t0
	ld	a5, -16(a5)
	slli	t1, a4, 3
	add	a5, a5, t1
	ld	a5, 0(a5)
	lh	t1, 0(a5)
	slli	t3, a0, 48
	srli	t3, t3, 49
	addi	t4, t3, 1
	mul	t1, t1, t4
	fcvt.s.w	fa4, t1
	fcvt.s.wu	fa5, t3
	j	.LBB10_19
.LBB10_12:
	blez	a0, .LBB10_25
# %bb.13:
	bnez	a1, .LBB10_25
# %bb.14:
	add	a5, a5, a6
	ld	a5, 0(a5)
	add	a5, a5, t4
	ld	a5, 0(a5)
	ld	a5, 0(a5)
	add	a5, a5, t0
	ld	a5, -8(a5)
	slli	t1, a4, 3
	add	a5, a5, t1
	ld	a5, 0(a5)
	lui	t1, 16
	addi	t1, t1, -1
	lh	t3, 0(a5)
	and	t5, a0, t1
	addi	t4, a0, 1
	and	t4, t4, t1
	mul	t1, t3, t4
	fcvt.s.w	fa4, t1
	fcvt.s.wu	fa5, t5
	j	.LBB10_19
.LBB10_15:
	bnez	a1, .LBB10_20
# %bb.16:
	li	t5, 1
	bltu	t5, a0, .LBB10_20
# %bb.17:
	lw	t6, 24(a7)
	bne	t6, t5, .LBB10_20
# %bb.18:
	add	a5, a5, a6
	ld	a5, 0(a5)
	add	a5, a5, t4
	ld	a5, 0(a5)
	ld	a5, 8(a5)
	ld	a5, 0(a5)
	slli	t4, a4, 3
	add	a5, a5, t4
	ld	a5, 0(a5)
	lh	t5, 0(a5)
	negw	t4, t3
	mul	t5, t5, t4
	fcvt.s.w	fa4, t5
	subw	t1, t1, t3
	fcvt.s.w	fa5, t1
	lui	t1, 260096
	fmv.w.x	fa3, t1
	fadd.s	fa5, fa5, fa3
.LBB10_19:
	fdiv.s	fa4, fa4, fa5
	fcvt.w.s	t1, fa4, rtz
	lh	a5, 2(a5)
	lui	t3, %hi(pred_MV_ref)
	sw	t1, %lo(pred_MV_ref)(t3)
	addi	t1, t3, %lo(pred_MV_ref)
	mul	a5, t4, a5
	fcvt.s.w	fa4, a5
	fdiv.s	fa5, fa4, fa5
	fcvt.w.s	a5, fa5, rtz
	sw	a5, 4(t1)
.LBB10_20:
	blez	a0, .LBB10_29
# %bb.21:
	bnez	a1, .LBB10_29
# %bb.22:
	beqz	t2, .LBB10_36
# %bb.23:
	lui	a1, %hi(fastme_ref_cost)
	ld	a1, %lo(fastme_ref_cost)(a1)
	li	a2, 2
	bltu	a0, a2, .LBB10_37
# %bb.24:
	add	a1, a1, t0
	ld	a0, -16(a1)
	j	.LBB10_38
.LBB10_25:
	bnez	a1, .LBB10_20
# %bb.26:
	bnez	a0, .LBB10_20
# %bb.27:
	lw	t5, 24(a7)
	li	t6, 1
	bne	t5, t6, .LBB10_20
# %bb.28:
	add	a5, a5, a6
	ld	a0, 0(a5)
	add	a0, a0, t4
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	ld	a0, 0(a0)
	slli	a5, a4, 3
	add	a0, a0, a5
	ld	a0, 0(a0)
	lh	a5, 0(a0)
	negw	a6, t3
	mul	a5, a5, a6
	fcvt.s.w	fa5, a5
	subw	a5, t1, t3
	fcvt.s.w	fa4, a5
	lui	a5, 260096
	fmv.w.x	fa3, a5
	fadd.s	fa4, fa4, fa3
	fdiv.s	fa5, fa5, fa4
	fcvt.w.s	a5, fa5, rtz
	lh	a0, 2(a0)
	lui	t0, %hi(pred_MV_ref)
	sw	a5, %lo(pred_MV_ref)(t0)
	addi	a5, t0, %lo(pred_MV_ref)
	mul	a0, a0, a6
	fcvt.s.w	fa5, a0
	fdiv.s	fa5, fa5, fa4
	fcvt.w.s	a0, fa5, rtz
	sw	a0, 4(a5)
.LBB10_29:
	li	a0, 2
	blt	a4, a0, .LBB10_42
# %bb.30:
	li	a5, 6
	li	a0, 40
	blt	a5, a4, .LBB10_34
# %bb.31:
	li	a5, 4
	li	a0, 32
	bltu	a5, a4, .LBB10_34
# %bb.32:
	li	a0, 16
	beq	a4, a5, .LBB10_34
# %bb.33:
	li	a0, 8
.LBB10_34:
	lw	a5, 152(a7)
	lw	a6, 156(a7)
	srli	a5, a5, 2
	addw	a3, a5, a3
	srli	a5, a6, 2
	li	a6, 1
	addw	a2, a5, a2
	beq	a1, a6, .LBB10_39
# %bb.35:
	lui	a1, %hi(fastme_l0_cost)
	addi	a1, a1, %lo(fastme_l0_cost)
	j	.LBB10_40
.LBB10_36:
	lui	a0, %hi(fastme_ref_cost)
	ld	a0, %lo(fastme_ref_cost)(a0)
	add	a0, a0, t0
	ld	a0, -8(a0)
	j	.LBB10_38
.LBB10_37:
	ld	a0, 0(a1)
.LBB10_38:
	slli	a1, a4, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a0, a0, a6
	ld	a0, 0(a0)
	slli	a3, a3, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	lui	a1, %hi(pred_SAD_ref)
	addi	a1, a1, %lo(pred_SAD_ref)
	j	.LBB10_41
.LBB10_39:
	lui	a1, %hi(fastme_l1_cost)
	addi	a1, a1, %lo(fastme_l1_cost)
.LBB10_40:
	ld	a1, 0(a1)
	add	a0, a1, a0
	ld	a0, 0(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	slli	a3, a3, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a0, a0, 1
	lui	a1, %hi(pred_SAD_uplayer)
	addi	a1, a1, %lo(pred_SAD_uplayer)
.LBB10_41:
	lui	a2, %hi(flag_intra_SAD)
	lw	a2, %lo(flag_intra_SAD)(a2)
	snez	a2, a2
	addi	a2, a2, -1
	and	a0, a2, a0
	sw	a0, 0(a1)
.LBB10_42:
	lui	a0, %hi(FME_blocktype)
	sw	a4, %lo(FME_blocktype)(a0)
	ret
.Lfunc_end10:
	.size	setup_FME, .Lfunc_end10-setup_FME
                                        # -- End function
	.option	pop
	.type	AlphaSec,@object                # @AlphaSec
	.bss
	.globl	AlphaSec
	.p2align	2, 0x0
AlphaSec:
	.zero	32
	.size	AlphaSec, 32

	.type	AlphaThird,@object              # @AlphaThird
	.globl	AlphaThird
	.p2align	2, 0x0
AlphaThird:
	.zero	32
	.size	AlphaThird, 32

	.type	quant_coef,@object              # @quant_coef
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
quant_coef:
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.size	quant_coef, 384

	.type	Bsize,@object                   # @Bsize
	.bss
	.globl	Bsize
	.p2align	2, 0x0
Bsize:
	.zero	32
	.size	Bsize, 32

	.type	flag_intra,@object              # @flag_intra
	.section	.sbss,"aw",@nobits
	.globl	flag_intra
	.p2align	3, 0x0
flag_intra:
	.quad	0
	.size	flag_intra, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"get_mem_FME: flag_intra"
	.size	.L.str, 24

	.type	McostState,@object              # @McostState
	.section	.sbss,"aw",@nobits
	.globl	McostState
	.p2align	3, 0x0
McostState:
	.quad	0
	.size	McostState, 8

	.type	fastme_ref_cost,@object         # @fastme_ref_cost
	.globl	fastme_ref_cost
	.p2align	3, 0x0
fastme_ref_cost:
	.quad	0
	.size	fastme_ref_cost, 8

	.type	fastme_l0_cost,@object          # @fastme_l0_cost
	.globl	fastme_l0_cost
	.p2align	3, 0x0
fastme_l0_cost:
	.quad	0
	.size	fastme_l0_cost, 8

	.type	fastme_l1_cost,@object          # @fastme_l1_cost
	.globl	fastme_l1_cost
	.p2align	3, 0x0
fastme_l1_cost:
	.quad	0
	.size	fastme_l1_cost, 8

	.type	SearchState,@object             # @SearchState
	.globl	SearchState
	.p2align	3, 0x0
SearchState:
	.quad	0
	.size	SearchState, 8

	.type	FastIntegerPelBlockMotionSearch.Hexagon_x,@object # @FastIntegerPelBlockMotionSearch.Hexagon_x
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
FastIntegerPelBlockMotionSearch.Hexagon_x:
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.size	FastIntegerPelBlockMotionSearch.Hexagon_x, 24

	.type	FastIntegerPelBlockMotionSearch.Hexagon_y,@object # @FastIntegerPelBlockMotionSearch.Hexagon_y
	.p2align	2, 0x0
FastIntegerPelBlockMotionSearch.Hexagon_y:
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	4294967294                      # 0xfffffffe
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.size	FastIntegerPelBlockMotionSearch.Hexagon_y, 24

	.type	FastIntegerPelBlockMotionSearch.Big_Hexagon_x,@object # @FastIntegerPelBlockMotionSearch.Big_Hexagon_x
	.p2align	2, 0x0
FastIntegerPelBlockMotionSearch.Big_Hexagon_x:
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	4294967292                      # 0xfffffffc
	.word	4294967292                      # 0xfffffffc
	.word	4294967292                      # 0xfffffffc
	.word	4294967292                      # 0xfffffffc
	.word	4294967292                      # 0xfffffffc
	.word	4294967294                      # 0xfffffffe
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	2                               # 0x2
	.size	FastIntegerPelBlockMotionSearch.Big_Hexagon_x, 64

	.type	FastIntegerPelBlockMotionSearch.Big_Hexagon_y,@object # @FastIntegerPelBlockMotionSearch.Big_Hexagon_y
	.p2align	2, 0x0
FastIntegerPelBlockMotionSearch.Big_Hexagon_y:
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967293                      # 0xfffffffd
	.word	4294967292                      # 0xfffffffc
	.word	4294967293                      # 0xfffffffd
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.size	FastIntegerPelBlockMotionSearch.Big_Hexagon_y, 64

	.type	pred_SAD_ref,@object            # @pred_SAD_ref
	.section	.sbss,"aw",@nobits
	.globl	pred_SAD_ref
	.p2align	2, 0x0
pred_SAD_ref:
	.word	0                               # 0x0
	.size	pred_SAD_ref, 4

	.type	pred_SAD_space,@object          # @pred_SAD_space
	.globl	pred_SAD_space
	.p2align	2, 0x0
pred_SAD_space:
	.word	0                               # 0x0
	.size	pred_SAD_space, 4

	.type	pred_SAD_uplayer,@object        # @pred_SAD_uplayer
	.globl	pred_SAD_uplayer
	.p2align	2, 0x0
pred_SAD_uplayer:
	.word	0                               # 0x0
	.size	pred_SAD_uplayer, 4

	.type	pred_MV_uplayer,@object         # @pred_MV_uplayer
	.globl	pred_MV_uplayer
	.p2align	2, 0x0
pred_MV_uplayer:
	.zero	8
	.size	pred_MV_uplayer, 8

	.type	pred_MV_ref,@object             # @pred_MV_ref
	.globl	pred_MV_ref
	.p2align	2, 0x0
pred_MV_ref:
	.zero	8
	.size	pred_MV_ref, 8

	.type	get_line,@object                # @get_line
	.p2align	3, 0x0
get_line:
	.quad	0
	.size	get_line, 8

	.type	flag_intra_SAD,@object          # @flag_intra_SAD
	.globl	flag_intra_SAD
	.p2align	2, 0x0
flag_intra_SAD:
	.word	0                               # 0x0
	.size	flag_intra_SAD, 4

	.type	FME_blocktype,@object           # @FME_blocktype
	.globl	FME_blocktype
	.p2align	2, 0x0
FME_blocktype:
	.word	0                               # 0x0
	.size	FME_blocktype, 4

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
