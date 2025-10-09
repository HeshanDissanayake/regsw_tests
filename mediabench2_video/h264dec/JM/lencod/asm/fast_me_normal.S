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
	mv	s1, a7
	mv	s0, a6
	mv	s2, a5
	mv	s3, a4
	mv	s4, a3
	mv	s5, a2
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	mv	s7, a0
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
	sraiw	s8, a0, 1
	bgtz	s4, .LBB4_4
	j	.LBB4_10
.LBB4_3:
	lw	s8, 60(t0)
	blez	s4, .LBB4_10
.LBB4_4:
	li	s10, 0
	ld	s11, 120(sp)
	ld	s9, 112(sp)
	addi	a0, s2, -1
	slli	a0, a0, 32
	srli	a0, a0, 29
	addi	s6, a0, 8
.LBB4_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a5, 52(a0)
	addw	a2, s10, s11
	mv	a0, s3
	mv	a1, s7
	mv	a3, s9
	mv	a4, s8
	jalr	s5
	blez	s2, .LBB4_8
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	slli	a1, s10, 3
	ld	a2, 0(sp)                       # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	add	a3, a1, s6
.LBB4_7:                                #   Parent Loop BB4_5 Depth=1
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
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	bge	s0, s1, .LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_5 Depth=1
	addi	s10, s10, 1
	bne	s10, s4, .LBB4_5
.LBB4_10:
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
	mv	s3, a7
	sd	a6, 120(sp)                     # 8-byte Folded Spill
	mv	s2, a5
	mv	a7, a4
	mv	s6, a2
	mv	s5, a1
	sd	a0, 208(sp)                     # 8-byte Folded Spill
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
	lh	s7, 0(t2)
	slli	a4, s2, 3
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
	lh	s8, 0(t3)
	lw	a6, 192(a5)
	ld	t1, 400(sp)
	sd	t1, 256(sp)                     # 8-byte Folded Spill
	add	t1, a0, a4
	addw	t4, s7, a3
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
	addw	a1, a1, s6
	slli	a1, a1, 3
	lui	a5, %hi(listX)
	addi	a5, a5, %lo(listX)
	add	a1, a5, a1
	ld	a1, 0(a1)
	lw	a5, 84(t1)
	sd	a5, 240(sp)                     # 8-byte Folded Spill
	slli	s9, a3, 2
	slli	a5, s5, 3
	add	a1, a1, a5
	ld	a1, 0(a1)
	lw	a5, 88(t1)
	sd	a5, 216(sp)                     # 8-byte Folded Spill
	slli	s4, a7, 2
	addw	t1, s8, a7
	add	a1, a1, a4
	sd	t4, 232(sp)                     # 8-byte Folded Spill
	sd	t1, 224(sp)                     # 8-byte Folded Spill
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	sd	a7, 136(sp)                     # 8-byte Folded Spill
	sd	a3, 128(sp)                     # 8-byte Folded Spill
	sd	t2, 104(sp)                     # 8-byte Folded Spill
	sd	t3, 96(sp)                      # 8-byte Folded Spill
	bge	a4, t4, .LBB5_22
# %bb.18:
	lw	a4, 52(t0)
	ld	a5, 256(sp)                     # 8-byte Folded Reload
	not	a5, a5
	add	a4, a5, a4
	ld	a6, 240(sp)                     # 8-byte Folded Reload
	subw	a4, a4, a6
	bge	t4, a4, .LBB5_22
# %bb.19:
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	bge	a4, t1, .LBB5_22
# %bb.20:
	ld	a4, 216(sp)                     # 8-byte Folded Reload
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
	sd	a2, 200(sp)                     # 8-byte Folded Spill
	lui	s0, 16
	ld	a2, 416(sp)
	sd	a2, 192(sp)                     # 8-byte Folded Spill
	ld	s1, 408(sp)
	ld	a2, 240(sp)                     # 8-byte Folded Reload
	srai	a2, a2, 2
	sd	a2, 184(sp)                     # 8-byte Folded Spill
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	add	a2, s9, a2
	sd	a2, 160(sp)                     # 8-byte Folded Spill
	lui	a2, %hi(McostState)
	ld	a2, %lo(McostState)(a2)
	lw	a3, 32(a0)
	add	a0, s4, s3
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	ld	a0, 0(a1)
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	ld	a0, 0(a2)
	slli	a3, a3, 1
	addi	a3, a3, 1
	mulw	a2, a3, a3
	li	a1, 0
	call	memset
	seqz	a0, s6
	sgtz	a1, s5
	and	a0, a1, a0
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB5_26
# %bb.24:
	lui	a0, %hi(pred_SAD_ref)
	lw	a0, %lo(pred_SAD_ref)(a0)
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB5_32
# %bb.25:
	mul	a0, a0, a0
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	j	.LBB5_29
.LBB5_26:
	li	a0, 1
	bne	s2, a0, .LBB5_30
# %bb.27:
	lui	a0, %hi(pred_SAD_space)
	lw	a0, %lo(pred_SAD_space)(a0)
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB5_31
.LBB5_28:
	mul	a0, a0, a0
.LBB5_29:
	slli	a1, s2, 2
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
	j	.LBB5_33
.LBB5_30:
	lui	a0, %hi(pred_SAD_uplayer)
	lw	a0, %lo(pred_SAD_uplayer)(a0)
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB5_28
.LBB5_31:
	fmv.w.x	fs0, zero
	fmv.s	fs1, fs0
	j	.LBB5_33
.LBB5_32:
	fmv.w.x	fs0, zero
	fmv.s	fs1, fs0
	ld	a4, 224(sp)                     # 8-byte Folded Reload
.LBB5_33:
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	sd	s4, 24(sp)                      # 8-byte Folded Spill
	sd	s3, 32(sp)                      # 8-byte Folded Spill
	sd	s2, 144(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, a3, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, a4, 2
	ld	a5, 168(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a5
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	addiw	s0, s0, -1
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	a4, 8(sp)
	sd	a3, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	a7, s1
	call	PartCalMad
	lui	a4, %hi(McostState)
	ld	a1, %lo(McostState)(a4)
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	slli	a2, a3, 3
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	add	a1, a1, a2
	ld	a1, 0(a1)
	mv	t0, a0
	add	a1, a1, a3
	li	a0, 1
	sb	a0, 0(a1)
	slt	a0, t0, s1
	negw	a0, a0
	blt	t0, s1, .LBB5_35
# %bb.34:
	mv	t0, s1
.LBB5_35:
	sd	s7, 152(sp)                     # 8-byte Folded Spill
	and	a1, s7, s0
	sd	a1, 80(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	and	a1, s8, s0
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	and	s2, a0, a6
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	and	s4, a0, a7
	lui	s3, %hi(FastSubPelBlockMotionSearch.Diamond_y)
	addi	s3, s3, %lo(FastSubPelBlockMotionSearch.Diamond_y)
	lui	s7, %hi(FastSubPelBlockMotionSearch.Diamond_x)
	addi	s7, s7, %lo(FastSubPelBlockMotionSearch.Diamond_x)
	addi	s8, s3, 16
	sd	s4, 248(sp)                     # 8-byte Folded Spill
	mv	s11, s2
	j	.LBB5_37
.LBB5_36:                               #   in Loop: Header=BB5_37 Depth=1
	addi	s3, s3, 4
	addi	s7, s7, 4
	beq	s3, s8, .LBB5_42
.LBB5_37:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 0(s7)
	addw	s9, a0, s2
	subw	a0, s9, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	blt	a1, a2, .LBB5_36
# %bb.38:                               #   in Loop: Header=BB5_37 Depth=1
	lw	a1, 0(s3)
	addw	s10, a1, s4
	subw	a1, s10, a7
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	bltu	a2, a3, .LBB5_36
# %bb.39:                               #   in Loop: Header=BB5_37 Depth=1
	ld	a2, %lo(McostState)(a4)
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	addw	s5, a1, a3
	slli	s5, s5, 3
	add	a2, a2, s5
	ld	a1, 0(a2)
	addw	s6, a0, a3
	add	a1, a1, s6
	lbu	a0, 0(a1)
	bnez	a0, .LBB5_36
# %bb.40:                               #   in Loop: Header=BB5_37 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s9, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s10, 2
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s10, 8(sp)
	sext.w	s1, t0
	sd	s9, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	a7, s1
	mv	s0, t0
	call	PartCalMad
	lui	a4, %hi(McostState)
	mv	t0, s0
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(a4)
	add	a1, a1, s5
	ld	a1, 0(a1)
	add	a1, a1, s6
	li	a2, 1
	sb	a2, 0(a1)
	bge	a0, s1, .LBB5_36
# %bb.41:                               #   in Loop: Header=BB5_37 Depth=1
	mv	s11, s9
	sd	s10, 248(sp)                    # 8-byte Folded Spill
	mv	t0, a0
	j	.LBB5_36
.LBB5_42:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	or	a0, a0, a1
	bnez	a0, .LBB5_52
# %bb.43:
	mv	t2, s11
	ld	s11, 248(sp)                    # 8-byte Folded Reload
.LBB5_44:
	li	a0, 2
	ld	t1, 144(sp)                     # 8-byte Folded Reload
	blt	t1, a0, .LBB5_56
# %bb.45:
	lui	a2, %hi(pred_MV_uplayer)
	lw	a0, %lo(pred_MV_uplayer)(a2)
	slli	a1, a0, 1
	srli	a1, a1, 62
	add	a0, a0, a1
	sraiw	a0, a0, 2
	ld	t3, 152(sp)                     # 8-byte Folded Reload
	sub	a1, a0, t3
	sraiw	a3, a1, 31
	xor	a4, a1, a3
	subw	a4, a4, a3
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	ld	s8, 88(sp)                      # 8-byte Folded Reload
	blt	a3, a4, .LBB5_50
# %bb.46:
	addi	a2, a2, %lo(pred_MV_uplayer)
	lw	a2, 4(a2)
	slli	a3, a2, 1
	srli	a3, a3, 62
	add	a2, a2, a3
	sraiw	a2, a2, 2
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	sub	a3, a2, a3
	sraiw	a4, a3, 31
	xor	a5, a3, a4
	subw	a5, a5, a4
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	bltu	a4, a5, .LBB5_50
# %bb.47:
	lui	s3, %hi(McostState)
	ld	a4, %lo(McostState)(s3)
	ld	a5, 256(sp)                     # 8-byte Folded Reload
	addw	s5, a3, a5
	slli	s5, s5, 3
	add	a4, a4, s5
	ld	a3, 0(a4)
	addw	s4, a1, a5
	add	a3, a3, s4
	lbu	a1, 0(a3)
	bnez	a1, .LBB5_50
# %bb.48:
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	addw	s0, a0, s0
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	addw	s2, a2, a0
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s0, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s2, 8(sp)
	sext.w	s1, t0
	sd	s0, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	a7, s1
	mv	s6, t0
	mv	s7, t2
	call	PartCalMad
	mv	t2, s7
	ld	t3, 152(sp)                     # 8-byte Folded Reload
	mv	t0, s6
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s3)
	add	a1, a1, s5
	ld	a1, 0(a1)
	add	a1, a1, s4
	li	a2, 1
	sb	a2, 0(a1)
	bge	a0, s1, .LBB5_50
# %bb.49:
	mv	t2, s0
	mv	s11, s2
	mv	t0, a0
.LBB5_50:
	lui	a0, %hi(pred_SAD_uplayer)
	lw	a0, %lo(pred_SAD_uplayer)(a0)
	subw	a1, t0, a0
	fcvt.s.w	fa5, a1
	fcvt.s.w	fa4, a0
	fmul.s	fa3, fs1, fa4
	flt.s	a0, fa5, fa3
	beqz	a0, .LBB5_63
# %bb.51:
	mv	t1, t2
	mv	s4, s11
	mv	s0, t0
	j	.LBB5_144
.LBB5_52:
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	sraiw	a0, a2, 31
	xor	a1, a2, a0
	subw	a1, a1, a0
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	mv	s5, s11
	ld	t3, 248(sp)                     # 8-byte Folded Reload
	blt	a0, a1, .LBB5_105
# %bb.53:
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	sraiw	a0, a3, 31
	xor	a1, a3, a0
	subw	a1, a1, a0
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	blt	a0, a1, .LBB5_105
# %bb.54:
	lui	s2, %hi(McostState)
	ld	a0, %lo(McostState)(s2)
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	subw	s4, a1, a3
	slli	s4, s4, 3
	add	a0, a0, s4
	ld	a0, 0(a0)
	subw	s3, a1, a2
	add	a0, a0, s3
	lbu	a0, 0(a0)
	beqz	a0, .LBB5_103
# %bb.55:
	mv	s5, s11
	ld	t3, 248(sp)                     # 8-byte Folded Reload
	j	.LBB5_105
.LBB5_56:
	ld	s8, 88(sp)                      # 8-byte Folded Reload
	ld	t3, 152(sp)                     # 8-byte Folded Reload
.LBB5_57:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, 152(a1)
	beqz	a1, .LBB5_64
# %bb.58:
	li	a1, 2
	blt	s8, a1, .LBB5_60
# %bb.59:
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	beqz	a1, .LBB5_68
.LBB5_60:
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	bnez	a1, .LBB5_73
# %bb.61:
	li	a1, 1
	bltu	a1, s8, .LBB5_73
# %bb.62:
	lw	a0, 24(a0)
	beq	a0, a1, .LBB5_68
	j	.LBB5_73
.LBB5_63:
	fmul.s	fa4, fs0, fa4
	flt.s	a0, fa5, fa4
	beqz	a0, .LBB5_57
	j	.LBB5_91
.LBB5_64:
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	bnez	a1, .LBB5_68
# %bb.65:
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	bnez	a1, .LBB5_73
# %bb.66:
	bnez	s8, .LBB5_73
# %bb.67:
	lw	a0, 24(a0)
	li	a1, 1
	bne	a0, a1, .LBB5_73
.LBB5_68:
	lui	a2, %hi(pred_MV_ref)
	lw	a0, %lo(pred_MV_ref)(a2)
	slli	a1, a0, 1
	srli	a1, a1, 62
	add	a0, a0, a1
	sraiw	a0, a0, 2
	sub	a1, a0, t3
	sraiw	a3, a1, 31
	xor	a4, a1, a3
	subw	a4, a4, a3
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	blt	a3, a4, .LBB5_73
# %bb.69:
	addi	a2, a2, %lo(pred_MV_ref)
	lw	a2, 4(a2)
	slli	a3, a2, 1
	srli	a3, a3, 62
	add	a2, a2, a3
	sraiw	a2, a2, 2
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	sub	a3, a2, a3
	sraiw	a4, a3, 31
	xor	a5, a3, a4
	subw	a5, a5, a4
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	bltu	a4, a5, .LBB5_73
# %bb.70:
	lui	s3, %hi(McostState)
	ld	a4, %lo(McostState)(s3)
	ld	a5, 256(sp)                     # 8-byte Folded Reload
	addw	s5, a3, a5
	slli	s5, s5, 3
	add	a4, a4, s5
	ld	a3, 0(a4)
	addw	s4, a1, a5
	add	a3, a3, s4
	lbu	a1, 0(a3)
	bnez	a1, .LBB5_73
# %bb.71:
	ld	s1, 128(sp)                     # 8-byte Folded Reload
	addw	s1, a0, s1
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	addw	s2, a2, a0
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s1, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s2, 8(sp)
	sext.w	s0, t0
	sd	s1, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	a7, s0
	mv	s6, t0
	mv	s7, t2
	call	PartCalMad
	mv	t2, s7
	mv	t0, s6
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s3)
	add	a1, a1, s5
	ld	a1, 0(a1)
	add	a1, a1, s4
	li	a2, 1
	sb	a2, 0(a1)
	bge	a0, s0, .LBB5_73
# %bb.72:
	mv	t2, s1
	mv	s11, s2
	mv	t0, a0
.LBB5_73:
	lui	s1, %hi(FastSubPelBlockMotionSearch.Diamond_y)
	addi	s1, s1, %lo(FastSubPelBlockMotionSearch.Diamond_y)
	lui	s3, %hi(FastSubPelBlockMotionSearch.Diamond_x)
	addi	s3, s3, %lo(FastSubPelBlockMotionSearch.Diamond_x)
	addi	s7, s1, 16
	lui	a4, %hi(McostState)
	sd	s11, 248(sp)                    # 8-byte Folded Spill
	mv	t1, t2
	j	.LBB5_75
.LBB5_74:                               #   in Loop: Header=BB5_75 Depth=1
	addi	s1, s1, 4
	addi	s3, s3, 4
	beq	s1, s7, .LBB5_80
.LBB5_75:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 0(s3)
	addw	s2, a0, t2
	subw	a0, s2, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	blt	a1, a2, .LBB5_74
# %bb.76:                               #   in Loop: Header=BB5_75 Depth=1
	lw	a1, 0(s1)
	addw	s5, a1, s11
	subw	a1, s5, a7
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	bltu	a2, a3, .LBB5_74
# %bb.77:                               #   in Loop: Header=BB5_75 Depth=1
	ld	a2, %lo(McostState)(a4)
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	addw	s9, a1, a3
	slli	s9, s9, 3
	add	a2, a2, s9
	ld	a1, 0(a2)
	addw	s6, a0, a3
	add	a1, a1, s6
	lbu	a0, 0(a1)
	bnez	a0, .LBB5_74
# %bb.78:                               #   in Loop: Header=BB5_75 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s2, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s5, 2
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s5, 8(sp)
	sext.w	s0, t0
	sd	s2, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	a7, s0
	mv	s10, t0
	mv	s4, t1
	mv	s8, t2
	call	PartCalMad
	lui	a4, %hi(McostState)
	mv	t2, s8
	mv	t1, s4
	mv	t0, s10
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(a4)
	add	a1, a1, s9
	ld	a1, 0(a1)
	add	a1, a1, s6
	li	a2, 1
	sb	a2, 0(a1)
	bge	a0, s0, .LBB5_74
# %bb.79:                               #   in Loop: Header=BB5_75 Depth=1
	mv	t1, s2
	sd	s5, 248(sp)                     # 8-byte Folded Spill
	mv	t0, a0
	j	.LBB5_74
.LBB5_80:
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB5_83
# %bb.81:
	lui	a0, %hi(pred_SAD_ref)
	lw	a0, %lo(pred_SAD_ref)(a0)
	subw	a1, t0, a0
	fcvt.s.w	fa5, a1
	fcvt.s.w	fa4, a0
	fmul.s	fa3, fs1, fa4
	flt.s	a0, fa5, fa3
	ld	a4, 56(sp)                      # 8-byte Folded Reload
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB5_143
# %bb.82:
	li	a0, 6
	bge	a0, a2, .LBB5_87
	j	.LBB5_90
.LBB5_83:
	li	a0, 2
	ld	a4, 56(sp)                      # 8-byte Folded Reload
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	blt	a2, a0, .LBB5_86
# %bb.84:
	lui	a0, %hi(pred_SAD_uplayer)
	lw	a0, %lo(pred_SAD_uplayer)(a0)
	subw	a1, t0, a0
	fcvt.s.w	fa5, a1
	fcvt.s.w	fa4, a0
	fmul.s	fa3, fs1, fa4
	flt.s	a0, fa5, fa3
	bnez	a0, .LBB5_143
# %bb.85:
	li	a0, 6
	bgeu	a0, a2, .LBB5_87
	j	.LBB5_90
.LBB5_86:
	lui	a0, %hi(pred_SAD_space)
	lw	a0, %lo(pred_SAD_space)(a0)
	subw	a1, t0, a0
	fcvt.s.w	fa5, a1
	fcvt.s.w	fa4, a0
	fmul.s	fa3, fs1, fa4
	flt.s	a0, fa5, fa3
	bnez	a0, .LBB5_143
.LBB5_87:
	fmul.s	fa4, fs0, fa4
	flt.s	a0, fa5, fa4
	bnez	a0, .LBB5_90
# %bb.88:
	li	t3, 1
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	blt	t3, a0, .LBB5_112
# %bb.89:
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	slli	a0, a1, 1
	srli	a0, a0, 62
	add	a0, a1, a0
	sraiw	a0, a0, 2
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	li	s4, 1
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB5_126
	j	.LBB5_141
.LBB5_90:
	mv	t2, t1
	ld	s11, 248(sp)                    # 8-byte Folded Reload
.LBB5_91:
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	blez	a0, .LBB5_157
# %bb.92:                               # %.preheader5
	sd	zero, 144(sp)                   # 8-byte Folded Spill
	li	a4, -7
	lui	a5, %hi(McostState)
.LBB5_93:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_94 Depth 2
                                        #       Child Loop BB5_96 Depth 3
	li	a0, 0
	li	a2, 0
	mv	s0, t0
	mv	s4, s11
	mv	t1, t2
.LBB5_94:                               #   Parent Loop BB5_93 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_96 Depth 3
	sd	a2, 152(sp)                     # 8-byte Folded Spill
	not	s10, a0
	slli	a0, a0, 2
	lui	s8, %hi(FastIntegerPelBlockMotionSearch.Hexagon_y)
	addi	s8, s8, %lo(FastIntegerPelBlockMotionSearch.Hexagon_y)
	add	s8, s8, a0
	lui	s2, %hi(FastIntegerPelBlockMotionSearch.Hexagon_x)
	addi	s2, s2, %lo(FastIntegerPelBlockMotionSearch.Hexagon_x)
	add	s2, s2, a0
	j	.LBB5_96
.LBB5_95:                               #   in Loop: Header=BB5_96 Depth=3
	addi	s10, s10, -1
	addi	s8, s8, 4
	addi	s2, s2, 4
	beq	s10, a4, .LBB5_101
.LBB5_96:                               #   Parent Loop BB5_93 Depth=1
                                        #     Parent Loop BB5_94 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a0, 0(s2)
	addw	s6, a0, t2
	subw	a0, s6, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	blt	a1, a2, .LBB5_95
# %bb.97:                               #   in Loop: Header=BB5_96 Depth=3
	lw	a1, 0(s8)
	addw	s5, a1, s11
	subw	a1, s5, a7
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	bltu	a2, a3, .LBB5_95
# %bb.98:                               #   in Loop: Header=BB5_96 Depth=3
	ld	a2, %lo(McostState)(a5)
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	addw	s3, a1, a3
	slli	s3, s3, 3
	add	a2, a2, s3
	ld	a1, 0(a2)
	addw	s9, a0, a3
	add	a1, a1, s9
	lbu	a0, 0(a1)
	bnez	a0, .LBB5_95
# %bb.99:                               #   in Loop: Header=BB5_96 Depth=3
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s6, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s5, 2
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s5, 8(sp)
	sext.w	a7, s0
	sd	a7, 248(sp)                     # 8-byte Folded Spill
	sd	s6, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	s7, t1
	mv	s1, s11
	mv	s11, t2
	call	PartCalMad
	lui	a5, %hi(McostState)
	li	a4, -7
	mv	t2, s11
	mv	s11, s1
	mv	t1, s7
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(a5)
	add	a1, a1, s3
	ld	a1, 0(a1)
	mv	t0, a0
	add	a1, a1, s9
	li	a0, 1
	sb	a0, 0(a1)
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	bge	t0, a0, .LBB5_95
# %bb.100:                              #   in Loop: Header=BB5_94 Depth=2
	neg	a0, s10
	li	a2, 1
	mv	s0, t0
	mv	s4, s5
	mv	t1, s6
	li	a1, -6
	bne	s10, a1, .LBB5_94
	j	.LBB5_102
.LBB5_101:                              #   in Loop: Header=BB5_93 Depth=1
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	mv	s6, t1
	mv	s5, s4
	mv	t0, s0
	beqz	a0, .LBB5_144
.LBB5_102:                              #   in Loop: Header=BB5_93 Depth=1
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	addiw	a1, a1, 1
	mv	t2, s6
	mv	s11, s5
	mv	t1, s6
	mv	s4, s5
	mv	s0, t0
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	sd	a1, 144(sp)                     # 8-byte Folded Spill
	bne	a1, a0, .LBB5_93
	j	.LBB5_144
.LBB5_103:
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 2
	sub	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 2
	sub	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	sd	a0, 8(sp)
	sext.w	s1, t0
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	sd	a0, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	a7, s1
	mv	s0, t0
	call	PartCalMad
	mv	t0, s0
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(s2)
	add	a1, a1, s4
	ld	a1, 0(a1)
	add	a1, a1, s3
	li	a2, 1
	sb	a2, 0(a1)
	mv	s5, s11
	ld	t3, 248(sp)                     # 8-byte Folded Reload
	bge	a0, s1, .LBB5_105
# %bb.104:
	ld	s5, 128(sp)                     # 8-byte Folded Reload
	ld	t3, 136(sp)                     # 8-byte Folded Reload
	mv	t0, a0
.LBB5_105:
	lui	s3, %hi(FastSubPelBlockMotionSearch.Diamond_y)
	addi	s3, s3, %lo(FastSubPelBlockMotionSearch.Diamond_y)
	lui	s7, %hi(FastSubPelBlockMotionSearch.Diamond_x)
	addi	s7, s7, %lo(FastSubPelBlockMotionSearch.Diamond_x)
	addi	s8, s3, 16
	lui	a4, %hi(McostState)
	mv	s11, t3
	mv	t2, s5
	j	.LBB5_107
.LBB5_106:                              #   in Loop: Header=BB5_107 Depth=1
	addi	s3, s3, 4
	addi	s7, s7, 4
	beq	s3, s8, .LBB5_44
.LBB5_107:                              # =>This Inner Loop Header: Depth=1
	lw	a0, 0(s7)
	addw	s2, a0, s5
	subw	a0, s2, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	blt	a1, a2, .LBB5_106
# %bb.108:                              #   in Loop: Header=BB5_107 Depth=1
	lw	a1, 0(s3)
	addw	s6, a1, t3
	subw	a1, s6, a7
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	bltu	a2, a3, .LBB5_106
# %bb.109:                              #   in Loop: Header=BB5_107 Depth=1
	ld	a2, %lo(McostState)(a4)
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	addw	s10, a1, a3
	slli	s10, s10, 3
	add	a2, a2, s10
	ld	a1, 0(a2)
	addw	s9, a0, a3
	add	a1, a1, s9
	lbu	a0, 0(a1)
	bnez	a0, .LBB5_106
# %bb.110:                              #   in Loop: Header=BB5_107 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s2, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s6, 2
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s6, 8(sp)
	sext.w	a7, t0
	sd	a7, 248(sp)                     # 8-byte Folded Spill
	sd	s2, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	s0, t0
	mv	s1, t3
	mv	s4, t2
	call	PartCalMad
	lui	a4, %hi(McostState)
	mv	t2, s4
	mv	t3, s1
	mv	t0, s0
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(a4)
	add	a1, a1, s10
	ld	a1, 0(a1)
	add	a1, a1, s9
	li	a2, 1
	sb	a2, 0(a1)
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB5_106
# %bb.111:                              #   in Loop: Header=BB5_107 Depth=1
	mv	t2, s2
	mv	s11, s6
	mv	t0, a0
	j	.LBB5_106
.LBB5_112:
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	subw	a0, a3, a7
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a5, a2, a1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	addw	t2, a0, a1
	slli	a3, a3, 2
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	sd	a3, 56(sp)                      # 8-byte Folded Spill
	subw	a3, a3, a0
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	slli	a2, t1, 2
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	add	a0, a0, a4
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	subw	a0, a2, a0
	addiw	s10, a0, -4
	sub	s3, t1, a6
	addi	s5, s3, -1
	not	s6, a6
	addiw	s11, a0, 4
	addi	s3, s3, 1
	subw	s0, t3, a6
	andi	a0, a1, -2
	subw	a4, s6, a0
	li	s1, -1
	lui	t3, %hi(McostState)
	li	s7, 1
	sd	t1, 64(sp)                      # 8-byte Folded Spill
	sd	t1, 152(sp)                     # 8-byte Folded Spill
	sd	a5, 120(sp)                     # 8-byte Folded Spill
	sd	t2, 80(sp)                      # 8-byte Folded Spill
	sd	a4, 72(sp)                      # 8-byte Folded Spill
	j	.LBB5_114
.LBB5_113:                              #   in Loop: Header=BB5_114 Depth=1
	addi	s1, s1, -2
	addiw	s10, s10, -8
	addi	s5, s5, -2
	addiw	s6, s6, -2
	addi	s7, s7, 2
	addiw	s11, s11, 8
	addi	s3, s3, 2
	addi	s0, s0, 2
	beq	s6, a4, .LBB5_124
.LBB5_114:                              # =>This Inner Loop Header: Depth=1
	add	a0, t1, s0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	blt	a1, a0, .LBB5_119
# %bb.115:                              #   in Loop: Header=BB5_114 Depth=1
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	bltu	a0, a5, .LBB5_119
# %bb.116:                              #   in Loop: Header=BB5_114 Depth=1
	ld	a0, %lo(McostState)(t3)
	slli	s2, t2, 3
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	add	a1, a1, s3
	add	a0, a0, a1
	lbu	a0, 0(a0)
	bnez	a0, .LBB5_119
# %bb.117:                              #   in Loop: Header=BB5_114 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s11, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	addw	s8, t1, s7
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	sd	a0, 8(sp)
	sext.w	s4, t0
	sd	s8, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	a7, s4
	mv	s9, t0
	call	PartCalMad
	lui	t3, %hi(McostState)
	ld	a4, 72(sp)                      # 8-byte Folded Reload
	li	a3, 1
	ld	t2, 80(sp)                      # 8-byte Folded Reload
	ld	a5, 120(sp)                     # 8-byte Folded Reload
	ld	t1, 152(sp)                     # 8-byte Folded Reload
	mv	t0, s9
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(t3)
	add	a1, a1, s2
	ld	a1, 0(a1)
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	add	a2, a2, s3
	add	a1, a1, a2
	sb	a3, 0(a1)
	bge	a0, s4, .LBB5_119
# %bb.118:                              #   in Loop: Header=BB5_114 Depth=1
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	mv	t0, a0
.LBB5_119:                              #   in Loop: Header=BB5_114 Depth=1
	add	a0, t1, s6
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	blt	a1, a0, .LBB5_113
# %bb.120:                              #   in Loop: Header=BB5_114 Depth=1
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	bltu	a0, a5, .LBB5_113
# %bb.121:                              #   in Loop: Header=BB5_114 Depth=1
	ld	a0, %lo(McostState)(t3)
	slli	s2, t2, 3
	add	a0, a0, s2
	ld	a0, 0(a0)
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	add	a1, a1, s5
	add	a0, a0, a1
	lbu	a0, 0(a0)
	bnez	a0, .LBB5_113
# %bb.122:                              #   in Loop: Header=BB5_114 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s10, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	addw	s8, t1, s1
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	sd	a0, 8(sp)
	sext.w	s4, t0
	sd	s8, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	a7, s4
	mv	s9, t0
	call	PartCalMad
	lui	t3, %hi(McostState)
	ld	a4, 72(sp)                      # 8-byte Folded Reload
	li	a3, 1
	ld	t2, 80(sp)                      # 8-byte Folded Reload
	ld	a5, 120(sp)                     # 8-byte Folded Reload
	ld	t1, 152(sp)                     # 8-byte Folded Reload
	mv	t0, s9
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(t3)
	add	a1, a1, s2
	ld	a1, 0(a1)
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	add	a2, a2, s5
	add	a1, a1, a2
	sb	a3, 0(a1)
	bge	a0, s4, .LBB5_113
# %bb.123:                              #   in Loop: Header=BB5_114 Depth=1
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	mv	t0, a0
	j	.LBB5_113
.LBB5_124:
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	srliw	a0, a1, 2
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	li	a0, 4
	li	s4, 1
	bge	a1, a0, .LBB5_128
# %bb.125:
	ld	t1, 64(sp)                      # 8-byte Folded Reload
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB5_141
.LBB5_126:
	li	a0, 2
	blt	a2, a0, .LBB5_139
# %bb.127:
	lui	a0, %hi(pred_SAD_uplayer)
	lw	a0, %lo(pred_SAD_uplayer)(a0)
	j	.LBB5_142
.LBB5_128:
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	slti	a0, a3, 4
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	subw	a0, t1, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	s11, a2, a1
	addw	a4, a0, a3
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	subw	a1, a1, a0
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	srliw	s1, a3, 2
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	subw	a0, a1, a0
	addiw	s9, a0, -4
	slli	a1, a7, 3
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	slli	a2, a3, 3
	sub	a2, a2, a1
	addi	s7, a2, -8
	not	s6, a7
	addiw	s10, a0, 4
	addi	s0, a2, 8
	li	a0, 1
	subw	s3, a0, a7
	li	s4, -1
	lui	t4, %hi(McostState)
	li	s5, 1
	sd	a3, 72(sp)                      # 8-byte Folded Spill
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	sd	a4, 80(sp)                      # 8-byte Folded Spill
	j	.LBB5_130
.LBB5_129:                              #   in Loop: Header=BB5_130 Depth=1
	addi	s1, s1, -1
	addi	s4, s4, -2
	addiw	s9, s9, -8
	addi	s7, s7, -16
	addi	s6, s6, -2
	addi	s5, s5, 2
	addiw	s10, s10, 8
	addi	s0, s0, 16
	addi	s3, s3, 2
	beqz	s1, .LBB5_140
.LBB5_130:                              # =>This Inner Loop Header: Depth=1
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	bltu	a0, s11, .LBB5_129
# %bb.131:                              #   in Loop: Header=BB5_130 Depth=1
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	add	a0, a0, s3
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	bltu	a1, a0, .LBB5_135
# %bb.132:                              #   in Loop: Header=BB5_130 Depth=1
	ld	a0, %lo(McostState)(t4)
	add	a1, a2, s0
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a0, a0, a4
	lbu	a0, 0(a0)
	bnez	a0, .LBB5_135
# %bb.133:                              #   in Loop: Header=BB5_130 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s10, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a2, 248(sp)                     # 8-byte Folded Reload
	addw	a2, a2, s5
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	a2, 56(sp)                      # 8-byte Folded Spill
	sd	a2, 8(sp)
	sext.w	s2, t0
	sd	t1, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	a7, s2
	mv	s8, t0
	call	PartCalMad
	lui	t4, %hi(McostState)
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	ld	t1, 152(sp)                     # 8-byte Folded Reload
	mv	t0, s8
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(t4)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	add	a2, a2, s0
	add	a1, a1, a2
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	ld	a1, 0(a1)
	add	a1, a1, a4
	li	a3, 1
	sb	a3, 0(a1)
	bge	a0, s2, .LBB5_135
# %bb.134:                              #   in Loop: Header=BB5_130 Depth=1
	sd	t1, 64(sp)                      # 8-byte Folded Spill
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	mv	t0, a0
.LBB5_135:                              #   in Loop: Header=BB5_130 Depth=1
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	add	a0, a0, s6
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	bltu	a1, a0, .LBB5_129
# %bb.136:                              #   in Loop: Header=BB5_130 Depth=1
	ld	a0, %lo(McostState)(t4)
	add	a1, a2, s7
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a0, a0, a4
	lbu	a0, 0(a0)
	bnez	a0, .LBB5_129
# %bb.137:                              #   in Loop: Header=BB5_130 Depth=1
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s9, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a2, 248(sp)                     # 8-byte Folded Reload
	addw	a2, a2, s4
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	a2, 56(sp)                      # 8-byte Folded Spill
	sd	a2, 8(sp)
	sext.w	s2, t0
	sd	t1, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	a7, s2
	mv	s8, t0
	call	PartCalMad
	lui	t4, %hi(McostState)
	ld	a4, 80(sp)                      # 8-byte Folded Reload
	ld	t1, 152(sp)                     # 8-byte Folded Reload
	mv	t0, s8
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(t4)
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	add	a2, a2, s7
	add	a1, a1, a2
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	ld	a1, 0(a1)
	add	a1, a1, a4
	li	a3, 1
	sb	a3, 0(a1)
	bge	a0, s2, .LBB5_129
# %bb.138:                              #   in Loop: Header=BB5_130 Depth=1
	sd	t1, 64(sp)                      # 8-byte Folded Spill
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	mv	t0, a0
	j	.LBB5_129
.LBB5_139:
	lui	a0, %hi(pred_SAD_space)
	lw	a0, %lo(pred_SAD_space)(a0)
	j	.LBB5_142
.LBB5_140:
	ld	t1, 64(sp)                      # 8-byte Folded Reload
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB5_126
.LBB5_141:
	lui	a0, %hi(pred_SAD_ref)
	lw	a0, %lo(pred_SAD_ref)(a0)
.LBB5_142:
	subw	a1, t0, a0
	fcvt.s.w	fa5, a1
	fcvt.s.w	fa4, a0
	fmul.s	fa3, fs1, fa4
	flt.s	a0, fa5, fa3
	beqz	a0, .LBB5_158
.LBB5_143:
	mv	s0, t0
	ld	s4, 248(sp)                     # 8-byte Folded Reload
.LBB5_144:
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	blez	a0, .LBB5_156
# %bb.145:                              # %.preheader
	sd	zero, 144(sp)                   # 8-byte Folded Spill
	li	a4, -5
	lui	a5, %hi(McostState)
.LBB5_146:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_147 Depth 2
                                        #       Child Loop BB5_149 Depth 3
	li	a0, 0
	li	a2, 0
	mv	t0, s0
	mv	s11, s4
	mv	t2, t1
.LBB5_147:                              #   Parent Loop BB5_146 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_149 Depth 3
	sd	a2, 152(sp)                     # 8-byte Folded Spill
	not	s6, a0
	slli	a0, a0, 2
	lui	s2, %hi(FastSubPelBlockMotionSearch.Diamond_y)
	addi	s2, s2, %lo(FastSubPelBlockMotionSearch.Diamond_y)
	add	s2, s2, a0
	lui	s9, %hi(FastSubPelBlockMotionSearch.Diamond_x)
	addi	s9, s9, %lo(FastSubPelBlockMotionSearch.Diamond_x)
	add	s9, s9, a0
	j	.LBB5_149
.LBB5_148:                              #   in Loop: Header=BB5_149 Depth=3
	addi	s6, s6, -1
	addi	s2, s2, 4
	addi	s9, s9, 4
	beq	s6, a4, .LBB5_154
.LBB5_149:                              #   Parent Loop BB5_146 Depth=1
                                        #     Parent Loop BB5_147 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a0, 0(s9)
	addw	s5, a0, t1
	subw	a0, s5, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	blt	a1, a2, .LBB5_148
# %bb.150:                              #   in Loop: Header=BB5_149 Depth=3
	lw	a1, 0(s2)
	addw	s10, a1, s4
	subw	a1, s10, a7
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	bltu	a2, a3, .LBB5_148
# %bb.151:                              #   in Loop: Header=BB5_149 Depth=3
	ld	a2, %lo(McostState)(a5)
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	addw	s0, a1, a3
	slli	s0, s0, 3
	add	a2, a2, s0
	ld	a1, 0(a2)
	addw	s8, a0, a3
	add	a1, a1, s8
	lbu	a0, 0(a1)
	bnez	a0, .LBB5_148
# %bb.152:                              #   in Loop: Header=BB5_149 Depth=3
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s5, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s10, 2
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s10, 8(sp)
	sext.w	a7, t0
	sd	a7, 248(sp)                     # 8-byte Folded Spill
	sd	s5, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	s3, s4
	mv	s4, t0
	mv	s1, s11
	mv	s11, t1
	mv	s7, t2
	call	PartCalMad
	lui	a5, %hi(McostState)
	li	a4, -5
	mv	t2, s7
	mv	t1, s11
	mv	s11, s1
	mv	t0, s4
	mv	s4, s3
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(a5)
	add	a1, a1, s0
	ld	a1, 0(a1)
	mv	s0, a0
	add	a1, a1, s8
	li	a0, 1
	sb	a0, 0(a1)
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	bge	s0, a0, .LBB5_148
# %bb.153:                              #   in Loop: Header=BB5_147 Depth=2
	neg	a0, s6
	li	a2, 1
	mv	t0, s0
	mv	s11, s10
	mv	t2, s5
	li	a1, -4
	bne	s6, a1, .LBB5_147
	j	.LBB5_155
.LBB5_154:                              #   in Loop: Header=BB5_146 Depth=1
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	mv	s5, t2
	mv	s10, s11
	mv	s0, t0
	beqz	a0, .LBB5_157
.LBB5_155:                              #   in Loop: Header=BB5_146 Depth=1
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	addiw	a1, a1, 1
	mv	t1, s5
	mv	s4, s10
	mv	t2, s5
	mv	s11, s10
	mv	t0, s0
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	sd	a1, 144(sp)                     # 8-byte Folded Spill
	bne	a1, a0, .LBB5_146
	j	.LBB5_157
.LBB5_156:
	mv	t2, t1
	mv	s11, s4
	mv	t0, s0
.LBB5_157:
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	subw	a0, t2, a0
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	sh	a0, 0(a1)
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	subw	a1, s11, a0
	sext.w	a0, t0
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
.LBB5_158:
	fmul.s	fa4, fs0, fa4
	flt.s	a0, fa5, fa4
	ld	t3, 248(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB5_160
# %bb.159:
	mv	t2, t1
	mv	s11, t3
	j	.LBB5_91
.LBB5_160:
	lui	a0, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a0)
	lui	a0, %hi(spiral_search_y)
	ld	a2, %lo(spiral_search_y)(a0)
	li	s7, 2
	li	s8, 50
	lui	s1, %hi(McostState)
	mv	s11, t3
	mv	t2, t1
	sd	t1, 152(sp)                     # 8-byte Folded Spill
	sd	t3, 248(sp)                     # 8-byte Folded Spill
	j	.LBB5_164
.LBB5_161:                              #   in Loop: Header=BB5_164 Depth=1
	mv	t2, s2
	mv	s11, s5
	mv	t0, a0
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	t1, 152(sp)                     # 8-byte Folded Reload
.LBB5_162:                              #   in Loop: Header=BB5_164 Depth=1
	ld	t3, 248(sp)                     # 8-byte Folded Reload
.LBB5_163:                              #   in Loop: Header=BB5_164 Depth=1
	addi	s7, s7, 2
	beq	s7, s8, .LBB5_169
.LBB5_164:                              # =>This Inner Loop Header: Depth=1
	add	a0, a1, s7
	lh	a0, 0(a0)
	addw	s2, t1, a0
	subw	a0, s2, a6
	sraiw	a3, a0, 31
	xor	a4, a0, a3
	subw	a4, a4, a3
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	blt	a3, a4, .LBB5_163
# %bb.165:                              #   in Loop: Header=BB5_164 Depth=1
	add	a3, a2, s7
	lh	a3, 0(a3)
	addw	s5, t3, a3
	subw	a3, s5, a7
	sraiw	a4, a3, 31
	xor	a5, a3, a4
	subw	a5, a5, a4
	ld	a4, 256(sp)                     # 8-byte Folded Reload
	bltu	a4, a5, .LBB5_163
# %bb.166:                              #   in Loop: Header=BB5_164 Depth=1
	ld	a4, %lo(McostState)(s1)
	ld	a5, 256(sp)                     # 8-byte Folded Reload
	addw	s6, a3, a5
	slli	s6, s6, 3
	add	a4, a4, s6
	ld	a3, 0(a4)
	addw	s9, a0, a5
	add	a3, a3, s9
	lbu	a0, 0(a3)
	bnez	a0, .LBB5_163
# %bb.167:                              #   in Loop: Header=BB5_164 Depth=1
	mv	s3, t2
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s2, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s5, 2
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s5, 8(sp)
	mv	s10, t0
	sext.w	s0, t0
	sd	s2, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	a7, s0
	call	PartCalMad
	ld	a1, %lo(McostState)(s1)
	add	a1, a1, s6
	ld	a1, 0(a1)
	add	a1, a1, s9
	li	a2, 1
	sb	a2, 0(a1)
	lui	a1, %hi(spiral_search_x)
	ld	a1, %lo(spiral_search_x)(a1)
	lui	a2, %hi(spiral_search_y)
	ld	a2, %lo(spiral_search_y)(a2)
	blt	a0, s0, .LBB5_161
# %bb.168:                              #   in Loop: Header=BB5_164 Depth=1
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	mv	t0, s10
	ld	t1, 152(sp)                     # 8-byte Folded Reload
	mv	t2, s3
	j	.LBB5_162
.LBB5_169:
	bnez	s4, .LBB5_91
# %bb.170:                              # %.preheader10
	lui	a0, %hi(FastIntegerPelBlockMotionSearch.Big_Hexagon_y)
	addi	a0, a0, %lo(FastIntegerPelBlockMotionSearch.Big_Hexagon_y)
	addi	s8, a0, 64
	lui	a4, %hi(McostState)
	li	a0, 1
	j	.LBB5_172
.LBB5_171:                              #   in Loop: Header=BB5_172 Depth=1
	addiw	a0, s1, 1
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	beq	s1, a1, .LBB5_91
.LBB5_172:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_174 Depth 2
	mv	s1, a0
	lui	s3, %hi(FastIntegerPelBlockMotionSearch.Big_Hexagon_x)
	addi	s3, s3, %lo(FastIntegerPelBlockMotionSearch.Big_Hexagon_x)
	lui	s7, %hi(FastIntegerPelBlockMotionSearch.Big_Hexagon_y)
	addi	s7, s7, %lo(FastIntegerPelBlockMotionSearch.Big_Hexagon_y)
	j	.LBB5_174
.LBB5_173:                              #   in Loop: Header=BB5_174 Depth=2
	addi	s7, s7, 4
	addi	s3, s3, 4
	beq	s7, s8, .LBB5_171
.LBB5_174:                              #   Parent Loop BB5_172 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 0(s3)
	mul	a0, a0, s1
	addw	s2, a0, t1
	subw	a0, s2, a6
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	blt	a1, a2, .LBB5_173
# %bb.175:                              #   in Loop: Header=BB5_174 Depth=2
	lw	a1, 0(s7)
	mul	a1, a1, s1
	addw	s5, a1, t3
	subw	a1, s5, a7
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	bltu	a2, a3, .LBB5_173
# %bb.176:                              #   in Loop: Header=BB5_174 Depth=2
	ld	a2, %lo(McostState)(a4)
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	addw	s9, a1, a3
	slli	s9, s9, 3
	add	a2, a2, s9
	ld	a1, 0(a2)
	addw	s6, a0, a3
	add	a1, a1, s6
	lbu	a0, 0(a1)
	bnez	a0, .LBB5_173
# %bb.177:                              #   in Loop: Header=BB5_174 Depth=2
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s2, 2
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s5, 2
	ld	a3, 168(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 192(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a6, a0, 16
	sd	s5, 8(sp)
	sext.w	s0, t0
	sd	s2, 0(sp)
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	ld	a1, 208(sp)                     # 8-byte Folded Reload
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	ld	a3, 216(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	ld	a5, 184(sp)                     # 8-byte Folded Reload
	mv	a7, s0
	mv	s10, t0
	mv	s4, t2
	call	PartCalMad
	lui	a4, %hi(McostState)
	ld	t3, 248(sp)                     # 8-byte Folded Reload
	mv	t2, s4
	ld	t1, 152(sp)                     # 8-byte Folded Reload
	mv	t0, s10
	ld	a7, 224(sp)                     # 8-byte Folded Reload
	ld	a6, 232(sp)                     # 8-byte Folded Reload
	ld	a1, %lo(McostState)(a4)
	add	a1, a1, s9
	ld	a1, 0(a1)
	add	a1, a1, s6
	li	a2, 1
	sb	a2, 0(a1)
	bge	a0, s0, .LBB5_173
# %bb.178:                              #   in Loop: Header=BB5_174 Depth=2
	mv	t2, s2
	mv	s11, s5
	mv	t0, a0
	j	.LBB5_173
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
	ld	a1, 1352(sp)
	sd	a7, 40(sp)                      # 8-byte Folded Spill
	sd	a5, 32(sp)                      # 8-byte Folded Spill
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	sd	a3, 56(sp)                      # 8-byte Folded Spill
	sd	a2, 128(sp)                     # 8-byte Folded Spill
	li	a0, 3
	li	a2, 64
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	beq	a1, a0, .LBB6_2
# %bb.1:
	li	a0, 128
	sd	a0, 48(sp)                      # 8-byte Folded Spill
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
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	lw	s6, 1328(sp)
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	blez	a1, .LBB6_19
# %bb.11:
	lui	a1, 2
	addiw	a1, a1, -1800
	add	a1, a6, a1
	lw	a2, 0(a1)
	lw	a1, 4(a1)
	li	a3, 0
	slli	a2, a2, 2
	slli	a1, a1, 2
	ld	a4, 1336(sp)
	sd	a4, 72(sp)                      # 8-byte Folded Spill
	addiw	s7, a2, 28
	addiw	s8, a1, 28
	add	a0, a6, a0
	ld	s9, 0(a0)
	lui	s11, %hi(get_line)
	j	.LBB6_13
.LBB6_12:                               #   in Loop: Header=BB6_13 Depth=1
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	bge	a0, a1, .LBB6_19
.LBB6_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_17 Depth 2
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	sd	a3, 64(sp)                      # 8-byte Folded Spill
	blez	a0, .LBB6_12
# %bb.14:                               #   in Loop: Header=BB6_13 Depth=1
	li	s1, 0
	li	s4, 0
	li	s5, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	slli	a0, a3, 2
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	addw	s10, a0, a1
	addiw	a0, s10, 4
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	addiw	a0, s10, 8
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	addiw	a0, s10, 12
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	add	s2, s2, a0
	andi	a0, a0, 32
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	ld	s3, 24(sp)                      # 8-byte Folded Reload
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
	addi	s1, s1, 8
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	bge	s4, a0, .LBB6_12
.LBB6_17:                               #   Parent Loop BB6_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s0, 0(s2)
	ld	a5, %lo(get_line)(s11)
	mv	a0, s9
	mv	a1, s10
	mv	a2, s3
	mv	a3, s8
	mv	a4, s7
	jalr	a5
	add	s0, s0, s1
	lhu	a1, 0(s0)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, 2(s0)
	lhu	a3, 8(a0)
	lhu	a4, 4(s0)
	lhu	a5, 16(a0)
	sw	a1, 1160(sp)
	subw	a2, a2, a3
	sw	a2, 1164(sp)
	subw	a4, a4, a5
	lhu	a1, 6(s0)
	lhu	a0, 24(a0)
	ld	s0, 8(s2)
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
	add	s0, s0, s1
	lhu	a1, 0(s0)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, 2(s0)
	lhu	a3, 8(a0)
	lhu	a4, 4(s0)
	lhu	a5, 16(a0)
	sw	a1, 1176(sp)
	subw	a2, a2, a3
	sw	a2, 1180(sp)
	subw	a4, a4, a5
	lhu	a1, 6(s0)
	lhu	a0, 24(a0)
	ld	s0, 16(s2)
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
	add	s0, s0, s1
	lhu	a1, 0(s0)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, 2(s0)
	lhu	a3, 8(a0)
	lhu	a4, 4(s0)
	lhu	a5, 16(a0)
	sw	a1, 1192(sp)
	subw	a2, a2, a3
	sw	a2, 1196(sp)
	subw	a4, a4, a5
	lhu	a1, 6(s0)
	lhu	a0, 24(a0)
	ld	s0, 24(s2)
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
	add	s0, s0, s1
	lhu	a1, 0(s0)
	lhu	a2, 0(a0)
	lhu	a3, 2(s0)
	lhu	a4, 8(a0)
	subw	a1, a1, a2
	sw	a1, 1208(sp)
	subw	a3, a3, a4
	lhu	a1, 4(s0)
	lhu	a2, 16(a0)
	lhu	a4, 6(s0)
	lhu	a0, 24(a0)
	sw	a3, 1212(sp)
	subw	a1, a1, a2
	sw	a1, 1216(sp)
	subw	a4, a4, a0
	sw	a4, 1220(sp)
	ld	a0, 96(sp)                      # 8-byte Folded Reload
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
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB6_21
# %bb.20:
	addi	a0, sp, 136
	ld	a1, 16(sp)                      # 8-byte Folded Reload
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
	addi	sp, sp, -256
	sd	ra, 248(sp)                     # 8-byte Folded Spill
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	sd	s1, 232(sp)                     # 8-byte Folded Spill
	sd	s2, 224(sp)                     # 8-byte Folded Spill
	sd	s3, 216(sp)                     # 8-byte Folded Spill
	sd	s4, 208(sp)                     # 8-byte Folded Spill
	sd	s5, 200(sp)                     # 8-byte Folded Spill
	sd	s6, 192(sp)                     # 8-byte Folded Spill
	sd	s7, 184(sp)                     # 8-byte Folded Spill
	sd	s8, 176(sp)                     # 8-byte Folded Spill
	sd	s9, 168(sp)                     # 8-byte Folded Spill
	sd	s10, 160(sp)                    # 8-byte Folded Spill
	sd	s11, 152(sp)                    # 8-byte Folded Spill
	lui	t0, %hi(img)
	ld	t0, %lo(img)(t0)
	lui	t1, 22
	add	t1, t0, t1
	lw	t1, 108(t1)
	ld	s7, 256(sp)
	mv	s9, a7
	mv	s0, a6
	sd	a5, 144(sp)                     # 8-byte Folded Spill
	sd	a0, 120(sp)                     # 8-byte Folded Spill
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
	ld	s10, 264(sp)
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
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	slli	a0, a0, 3
	add	a0, a2, a0
	lw	t0, 84(a0)
	lw	a0, 88(a0)
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	lh	a0, 0(s7)
	slli	a3, a3, 2
	addi	a1, a3, 16
	slli	a4, a4, 2
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	addw	a1, a1, a0
	li	a2, 1
	addi	a4, a4, 16
	sd	a4, 136(sp)                     # 8-byte Folded Spill
	sd	t1, 96(sp)                      # 8-byte Folded Spill
	sd	t0, 112(sp)                     # 8-byte Folded Spill
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
	lhu	a2, 0(s10)
	srai	a4, a4, 48
	addi	a4, a4, -1
	bge	a1, a4, .LBB7_11
# %bb.7:
	slli	a1, a2, 48
	srai	a1, a1, 48
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	addw	a4, a4, a1
	li	a5, 2
	blt	a4, a5, .LBB7_11
# %bb.8:
	lw	a3, 4(a3)
	ld	a5, 128(sp)                     # 8-byte Folded Reload
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
	lhu	a2, 0(s10)
.LBB7_11:
	slli	a1, a2, 48
	srai	a1, a1, 48
	lui	a2, %hi(UMVLine4X)
	addi	a2, a2, %lo(UMVLine4X)
.LBB7_12:
	ld	s11, 304(sp)
	ld	s8, 296(sp)
	ld	s4, 288(sp)
	lui	a3, %hi(get_line)
	sd	a2, %lo(get_line)(a3)
	sub	a0, s0, a0
	srliw	a2, a0, 30
	add	a2, a0, a2
	andi	a2, a2, -4
	lui	a3, %hi(SearchState)
	ld	s1, %lo(SearchState)(a3)
	sub	s2, a0, a2
	sub	a1, s9, a1
	srliw	a2, a1, 30
	ld	a0, 0(s1)
	add	a2, a1, a2
	andi	a2, a2, -4
	sub	s3, a1, a2
	li	a2, 49
	li	a1, 0
	call	memset
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 24(a0)
	sd	s11, 88(sp)                     # 8-byte Folded Spill
	sd	s9, 80(sp)                      # 8-byte Folded Spill
	sd	s0, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	beqz	a0, .LBB7_18
# %bb.13:
	lui	s1, %hi(SearchState)
	lh	s5, 0(s7)
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	lh	s6, 0(s10)
	sub	a1, s5, s0
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	sub	a2, s6, s9
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	mul	a0, a0, s8
	sraiw	a0, a0, 16
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	addw	a4, a1, s5
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	addw	a5, a1, s6
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	sd	s11, 16(sp)
	sd	s4, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	ld	a3, 128(sp)                     # 8-byte Folded Reload
	ld	s9, 96(sp)                      # 8-byte Folded Reload
	mv	a6, s9
	ld	a7, 120(sp)                     # 8-byte Folded Reload
	call	AddUpSADQuarter
	ld	a1, %lo(SearchState)(s1)
	ld	a2, 24(a1)
	mv	a1, a0
	mv	a0, s4
	li	s0, 0
	li	s1, 0
	li	a3, 1
	sb	a3, 3(a2)
	bge	a1, s4, .LBB7_15
# %bb.14:
	mv	s0, s5
	mv	s1, s6
	mv	a0, a1
.LBB7_15:
	or	a1, s2, s3
	beqz	a1, .LBB7_19
.LBB7_16:
	lh	a1, 0(s7)
	lh	a2, 0(s10)
	add	s2, s2, a1
	lui	a1, %hi(mvbits)
	ld	a1, %lo(mvbits)(a1)
	add	s3, s3, a2
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	sub	a2, s2, a2
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	ld	a3, 80(sp)                      # 8-byte Folded Reload
	sub	a3, s3, a3
	slli	a3, a3, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	add	a1, a1, a2
	ld	a2, 64(sp)                      # 8-byte Folded Reload
	mul	a1, a1, a2
	sraiw	a1, a1, 16
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	addw	a4, s2, a2
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	addw	a5, s3, a2
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	sd	a2, 24(sp)
	ld	s8, 88(sp)                      # 8-byte Folded Reload
	sd	s8, 16(sp)
	sd	a0, 8(sp)
	sd	a1, 0(sp)
	mv	s4, a0
	li	a0, 0
	li	a1, 0
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	ld	a3, 128(sp)                     # 8-byte Folded Reload
	mv	a6, s9
	ld	a7, 120(sp)                     # 8-byte Folded Reload
	call	AddUpSADQuarter
	mv	a6, s10
	lh	a1, 0(s10)
	lui	a2, %hi(SearchState)
	ld	a2, %lo(SearchState)(a2)
	sub	a1, s3, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lh	a2, 0(s7)
	ld	a3, 24(a1)
	mv	a1, a0
	mv	a0, s4
	sub	a2, s2, a2
	add	a2, a3, a2
	li	a3, 1
	sb	a3, 3(a2)
	bge	a1, s4, .LBB7_20
# %bb.17:
	mv	a0, a1
	mv	s1, s3
	mv	s0, s2
	j	.LBB7_20
.LBB7_18:
	ld	a0, 24(s1)
	li	a1, 1
	sb	a1, 3(a0)
	lh	s0, 0(s7)
	lh	s1, 0(s10)
	mv	a0, s4
	ld	s9, 96(sp)                      # 8-byte Folded Reload
	or	a1, s2, s3
	bnez	a1, .LBB7_16
.LBB7_19:
	mv	a6, s10
	ld	s8, 88(sp)                      # 8-byte Folded Reload
.LBB7_20:
	sd	zero, 32(sp)                    # 8-byte Folded Spill
	li	s4, 3
	lui	a4, %hi(SearchState)
	li	a5, -5
.LBB7_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
                                        #       Child Loop BB7_24 Depth 3
	li	a1, 0
	li	t1, 0
	mv	a7, a0
	mv	a3, s1
	mv	t0, s0
.LBB7_22:                               #   Parent Loop BB7_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_24 Depth 3
	sd	t1, 40(sp)                      # 8-byte Folded Spill
	sd	t0, 48(sp)                      # 8-byte Folded Spill
	sd	a3, 56(sp)                      # 8-byte Folded Spill
	not	s10, a1
	slli	a1, a1, 2
	lui	s6, %hi(FastSubPelBlockMotionSearch.Diamond_y)
	addi	s6, s6, %lo(FastSubPelBlockMotionSearch.Diamond_y)
	add	s6, s6, a1
	lui	s2, %hi(FastSubPelBlockMotionSearch.Diamond_x)
	addi	s2, s2, %lo(FastSubPelBlockMotionSearch.Diamond_x)
	add	s2, s2, a1
	j	.LBB7_24
.LBB7_23:                               #   in Loop: Header=BB7_24 Depth=3
	addi	s10, s10, -1
	addi	s6, s6, 4
	addi	s2, s2, 4
	beq	s10, a5, .LBB7_29
.LBB7_24:                               #   Parent Loop BB7_21 Depth=1
                                        #     Parent Loop BB7_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	s5, 0(s2)
	lh	a0, 0(s7)
	add	s5, s5, s0
	subw	a0, s5, a0
	sraiw	a1, a0, 31
	xor	a2, a0, a1
	subw	a2, a2, a1
	bltu	s4, a2, .LBB7_23
# %bb.25:                               #   in Loop: Header=BB7_24 Depth=3
	lw	s3, 0(s6)
	lh	a1, 0(a6)
	add	s3, s3, s1
	subw	a1, s3, a1
	sraiw	a2, a1, 31
	xor	a3, a1, a2
	subw	a3, a3, a2
	bltu	s4, a3, .LBB7_23
# %bb.26:                               #   in Loop: Header=BB7_24 Depth=3
	ld	a2, %lo(SearchState)(a4)
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a1, 24(a1)
	add	a0, a1, a0
	lbu	a0, 3(a0)
	bnez	a0, .LBB7_23
# %bb.27:                               #   in Loop: Header=BB7_24 Depth=3
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	subw	a1, s5, a1
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	subw	a2, s3, a2
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a0, a0, 16
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	addw	a4, s5, a1
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	addw	a5, s3, a1
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	sd	a1, 24(sp)
	sd	s8, 16(sp)
	sext.w	s11, a7
	sd	s11, 8(sp)
	sd	a0, 0(sp)
	li	a0, 0
	li	a1, 0
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	ld	a3, 128(sp)                     # 8-byte Folded Reload
	mv	s8, a6
	ld	a6, 96(sp)                      # 8-byte Folded Reload
	mv	s9, s1
	mv	s1, s7
	mv	s7, a7
	ld	a7, 120(sp)                     # 8-byte Folded Reload
	call	AddUpSADQuarter
	li	a5, -5
	mv	a7, s7
	mv	s7, s1
	mv	s1, s9
	lui	a4, %hi(SearchState)
	mv	a6, s8
	ld	s8, 88(sp)                      # 8-byte Folded Reload
	lh	a1, 0(a6)
	ld	a2, %lo(SearchState)(a4)
	subw	a1, s3, a1
	slli	a1, a1, 3
	add	a1, a2, a1
	lh	a2, 0(s7)
	ld	a1, 24(a1)
	subw	a2, s5, a2
	add	a1, a1, a2
	li	a2, 1
	sb	a2, 3(a1)
	bge	a0, s11, .LBB7_23
# %bb.28:                               #   in Loop: Header=BB7_22 Depth=2
	neg	a1, s10
	li	t1, 1
	mv	a7, a0
	mv	a3, s3
	mv	t0, s5
	li	a2, -4
	bne	s10, a2, .LBB7_22
	j	.LBB7_30
.LBB7_29:                               #   in Loop: Header=BB7_21 Depth=1
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	andi	a1, a1, 1
	ld	a3, 48(sp)                      # 8-byte Folded Reload
	mv	s5, a3
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	mv	s3, a2
	mv	a0, a7
	beqz	a1, .LBB7_31
.LBB7_30:                               #   in Loop: Header=BB7_21 Depth=1
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	addiw	a1, a1, 1
	mv	s1, s3
	mv	s0, s5
	mv	a3, s5
	mv	a2, s3
	mv	a7, a0
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	bne	a1, s4, .LBB7_21
.LBB7_31:
	sh	a3, 0(s7)
	sext.w	a0, a7
	sh	a2, 0(a6)
	ld	ra, 248(sp)                     # 8-byte Folded Reload
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	ld	s1, 232(sp)                     # 8-byte Folded Reload
	ld	s2, 224(sp)                     # 8-byte Folded Reload
	ld	s3, 216(sp)                     # 8-byte Folded Reload
	ld	s4, 208(sp)                     # 8-byte Folded Reload
	ld	s5, 200(sp)                     # 8-byte Folded Reload
	ld	s6, 192(sp)                     # 8-byte Folded Reload
	ld	s7, 184(sp)                     # 8-byte Folded Reload
	ld	s8, 176(sp)                     # 8-byte Folded Reload
	ld	s9, 168(sp)                     # 8-byte Folded Reload
	ld	s10, 160(sp)                    # 8-byte Folded Reload
	ld	s11, 152(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 256
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
	bltu	a3, a0, .LBB9_26
# %bb.3:
	lw	a0, 24(a2)
	li	a2, 2
	beq	a0, a2, .LBB9_26
# %bb.4:
	li	a0, 0
	lui	a2, %hi(fastme_l0_cost)
	ld	a2, %lo(fastme_l0_cost)(a2)
	lui	a3, %hi(fastme_l1_cost)
	ld	a3, %lo(fastme_l1_cost)(a3)
	slli	a4, a1, 32
	srli	a4, a4, 29
	lui	a5, %hi(fastme_ref_cost)
	li	a6, 9
	li	a7, 4
	j	.LBB9_6
.LBB9_5:                                #   in Loop: Header=BB9_6 Depth=1
	addi	a0, a0, 1
	beq	a0, a7, .LBB9_26
.LBB9_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_8 Depth 2
                                        #       Child Loop BB9_10 Depth 3
                                        #     Child Loop BB9_13 Depth 2
                                        #       Child Loop BB9_15 Depth 3
                                        #     Child Loop BB9_18 Depth 2
                                        #       Child Loop BB9_20 Depth 3
                                        #     Child Loop BB9_23 Depth 2
                                        #       Child Loop BB9_25 Depth 3
	ld	t1, %lo(fastme_ref_cost)(a5)
	li	t2, 0
	add	t3, t1, a4
	slli	t0, a0, 2
	j	.LBB9_8
.LBB9_7:                                #   in Loop: Header=BB9_8 Depth=2
	addi	t2, t2, 1
	beq	t2, a6, .LBB9_11
.LBB9_8:                                #   Parent Loop BB9_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_10 Depth 3
	slli	t4, t2, 3
	add	t5, a2, t4
	ld	t5, 0(t5)
	add	t6, a3, t4
	ld	t6, 0(t6)
	ld	t5, 0(t5)
	ld	t6, 0(t6)
	add	t5, t5, t0
	sw	zero, 0(t5)
	add	t6, t6, t0
	sw	zero, 0(t6)
	blez	a1, .LBB9_7
# %bb.9:                                # %.preheader5
                                        #   in Loop: Header=BB9_8 Depth=2
	mv	t5, t1
.LBB9_10:                               #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t6, 0(t5)
	add	t6, t6, t4
	ld	t6, 0(t6)
	ld	t6, 0(t6)
	add	t6, t6, t0
	addi	t5, t5, 8
	sw	zero, 0(t6)
	bne	t5, t3, .LBB9_10
	j	.LBB9_7
.LBB9_11:                               #   in Loop: Header=BB9_6 Depth=1
	ld	t1, %lo(fastme_ref_cost)(a5)
	li	t2, 0
	add	t3, t1, a4
	j	.LBB9_13
.LBB9_12:                               #   in Loop: Header=BB9_13 Depth=2
	addi	t2, t2, 1
	beq	t2, a6, .LBB9_16
.LBB9_13:                               #   Parent Loop BB9_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_15 Depth 3
	slli	t4, t2, 3
	add	t5, a2, t4
	ld	t5, 0(t5)
	add	t6, a3, t4
	ld	t6, 0(t6)
	ld	t5, 8(t5)
	ld	t6, 8(t6)
	add	t5, t5, t0
	sw	zero, 0(t5)
	add	t6, t6, t0
	sw	zero, 0(t6)
	blez	a1, .LBB9_12
# %bb.14:                               # %.preheader3
                                        #   in Loop: Header=BB9_13 Depth=2
	mv	t5, t1
.LBB9_15:                               #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t6, 0(t5)
	add	t6, t6, t4
	ld	t6, 0(t6)
	ld	t6, 8(t6)
	add	t6, t6, t0
	addi	t5, t5, 8
	sw	zero, 0(t6)
	bne	t5, t3, .LBB9_15
	j	.LBB9_12
.LBB9_16:                               #   in Loop: Header=BB9_6 Depth=1
	ld	t1, %lo(fastme_ref_cost)(a5)
	li	t2, 0
	add	t3, t1, a4
	j	.LBB9_18
.LBB9_17:                               #   in Loop: Header=BB9_18 Depth=2
	addi	t2, t2, 1
	beq	t2, a6, .LBB9_21
.LBB9_18:                               #   Parent Loop BB9_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_20 Depth 3
	slli	t4, t2, 3
	add	t5, a2, t4
	ld	t5, 0(t5)
	add	t6, a3, t4
	ld	t6, 0(t6)
	ld	t5, 16(t5)
	ld	t6, 16(t6)
	add	t5, t5, t0
	sw	zero, 0(t5)
	add	t6, t6, t0
	sw	zero, 0(t6)
	blez	a1, .LBB9_17
# %bb.19:                               # %.preheader1
                                        #   in Loop: Header=BB9_18 Depth=2
	mv	t5, t1
.LBB9_20:                               #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t6, 0(t5)
	add	t6, t6, t4
	ld	t6, 0(t6)
	ld	t6, 16(t6)
	add	t6, t6, t0
	addi	t5, t5, 8
	sw	zero, 0(t6)
	bne	t5, t3, .LBB9_20
	j	.LBB9_17
.LBB9_21:                               #   in Loop: Header=BB9_6 Depth=1
	ld	t1, %lo(fastme_ref_cost)(a5)
	li	t2, 0
	add	t3, t1, a4
	j	.LBB9_23
.LBB9_22:                               #   in Loop: Header=BB9_23 Depth=2
	addi	t2, t2, 1
	beq	t2, a6, .LBB9_5
.LBB9_23:                               #   Parent Loop BB9_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_25 Depth 3
	slli	t4, t2, 3
	add	t5, a2, t4
	ld	t5, 0(t5)
	add	t6, a3, t4
	ld	t6, 0(t6)
	ld	t5, 24(t5)
	ld	t6, 24(t6)
	add	t5, t5, t0
	sw	zero, 0(t5)
	add	t6, t6, t0
	sw	zero, 0(t6)
	blez	a1, .LBB9_22
# %bb.24:                               # %.preheader
                                        #   in Loop: Header=BB9_23 Depth=2
	mv	t5, t1
.LBB9_25:                               #   Parent Loop BB9_6 Depth=1
                                        #     Parent Loop BB9_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t6, 0(t5)
	add	t6, t6, t4
	ld	t6, 0(t6)
	ld	t6, 24(t6)
	add	t6, t6, t0
	addi	t5, t5, 8
	sw	zero, 0(t6)
	bne	t5, t3, .LBB9_25
	j	.LBB9_22
.LBB9_26:
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

	.type	FastSubPelBlockMotionSearch.Diamond_x,@object # @FastSubPelBlockMotionSearch.Diamond_x
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
FastSubPelBlockMotionSearch.Diamond_x:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	FastSubPelBlockMotionSearch.Diamond_x, 16

	.type	FastSubPelBlockMotionSearch.Diamond_y,@object # @FastSubPelBlockMotionSearch.Diamond_y
	.p2align	2, 0x0
FastSubPelBlockMotionSearch.Diamond_y:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.size	FastSubPelBlockMotionSearch.Diamond_y, 16

	.type	flag_intra_SAD,@object          # @flag_intra_SAD
	.section	.sbss,"aw",@nobits
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
