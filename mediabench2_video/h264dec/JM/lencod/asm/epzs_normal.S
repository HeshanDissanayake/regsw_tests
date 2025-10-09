	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"epzs.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	allocEPZScolocated              # -- Begin function allocEPZScolocated
	.p2align	2
	.type	allocEPZScolocated,@function
allocEPZScolocated:                     # @allocEPZScolocated
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a2
	mv	s2, a1
	mv	s3, a0
	li	a0, 1
	li	a1, 40
	call	calloc
	mv	s1, a0
	bnez	a0, .LBB0_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
.LBB0_2:
	sw	s3, 4(s1)
	sw	s2, 8(s1)
	addi	a0, s1, 16
	slli	s4, s2, 1
	srli	a1, s4, 62
	add	a1, s2, a1
	sraiw	a2, a1, 2
	slli	a1, s3, 1
	srli	a1, a1, 62
	add	a1, s3, a1
	sraiw	s3, a1, 2
	li	a1, 2
	li	a4, 2
	mv	a3, s3
	call	get_mem4Dshort
	beqz	s0, .LBB0_4
# %bb.3:
	addi	a0, s1, 24
	srli	a1, s4, 61
	add	a1, s2, a1
	sraiw	s2, a1, 3
	li	a1, 2
	li	a4, 2
	mv	a2, s2
	mv	a3, s3
	call	get_mem4Dshort
	addi	a0, s1, 32
	li	a1, 2
	li	a4, 2
	mv	a2, s2
	mv	a3, s3
	call	get_mem4Dshort
.LBB0_4:
	sw	s0, 0(s1)
	mv	a0, s1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	allocEPZScolocated, .Lfunc_end0-allocEPZScolocated
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	freeEPZScolocated               # -- Begin function freeEPZScolocated
	.p2align	2
	.type	freeEPZScolocated,@function
freeEPZScolocated:                      # @freeEPZScolocated
# %bb.0:
	beqz	a0, .LBB1_4
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a1, 8(a0)
	ld	a0, 16(a0)
	slli	a2, a1, 1
	srli	a2, a2, 62
	add	a1, a1, a2
	sraiw	a2, a1, 2
	li	a1, 2
	call	free_mem4Dshort
	lw	a0, 0(s0)
	beqz	a0, .LBB1_3
# %bb.2:
	lw	a1, 8(s0)
	ld	a0, 24(s0)
	slli	a2, a1, 1
	srli	a2, a2, 61
	add	a1, a1, a2
	sraiw	a2, a1, 3
	li	a1, 2
	call	free_mem4Dshort
	lw	a1, 8(s0)
	ld	a0, 32(s0)
	slli	a2, a1, 1
	srli	a2, a2, 61
	add	a1, a1, a2
	sraiw	a2, a1, 3
	li	a1, 2
	call	free_mem4Dshort
.LBB1_3:
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.LBB1_4:
	ret
.Lfunc_end1:
	.size	freeEPZScolocated, .Lfunc_end1-freeEPZScolocated
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	allocEPZSpattern                # -- Begin function allocEPZSpattern
	.p2align	2
	.type	allocEPZSpattern,@function
allocEPZSpattern:                       # @allocEPZSpattern
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	li	a0, 1
	li	a1, 16
	call	calloc
	mv	s1, a0
	bnez	a0, .LBB2_2
# %bb.1:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB2_2:
	sw	s0, 0(s1)
	li	a1, 16
	mv	a0, s0
	call	calloc
	sd	a0, 8(s1)
	mv	a0, s1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	allocEPZSpattern, .Lfunc_end2-allocEPZSpattern
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	freeEPZSpattern                 # -- Begin function freeEPZSpattern
	.p2align	2
	.type	freeEPZSpattern,@function
freeEPZSpattern:                        # @freeEPZSpattern
# %bb.0:
	beqz	a0, .LBB3_2
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	ld	a1, 8(a0)
	mv	s0, a0
	mv	a0, a1
	call	free
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.LBB3_2:
	ret
.Lfunc_end3:
	.size	freeEPZSpattern, .Lfunc_end3-freeEPZSpattern
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	assignEPZSpattern               # -- Begin function assignEPZSpattern
	.p2align	2
	.type	assignEPZSpattern,@function
assignEPZSpattern:                      # @assignEPZSpattern
# %bb.0:
	lw	a2, 0(a0)
	blez	a2, .LBB4_3
# %bb.1:
	ld	a3, 8(a0)
	li	a0, 192
	mul	a0, a1, a0
	lui	a1, %hi(pattern_data)
	addi	a1, a1, %lo(pattern_data)
	add	a0, a0, a1
	addi	a0, a0, 8
	addi	a1, a3, 8
	slli	a2, a2, 4
	add	a2, a0, a2
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	lw	a3, -8(a0)
	sw	a3, -8(a1)
	lw	a3, -4(a0)
	sw	a3, -4(a1)
	lw	a3, 0(a0)
	sw	a3, 0(a1)
	lw	a3, 4(a0)
	sw	a3, 4(a1)
	addi	a0, a0, 16
	addi	a1, a1, 16
	bne	a0, a2, .LBB4_2
.LBB4_3:
	ret
.Lfunc_end4:
	.size	assignEPZSpattern, .Lfunc_end4-assignEPZSpattern
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	EPZSWindowPredictorInit         # -- Begin function EPZSWindowPredictorInit
	.p2align	2
	.type	EPZSWindowPredictorInit,@function
EPZSWindowPredictorInit:                # @EPZSWindowPredictorInit
# %bb.0:
	mul	a3, a0, a0
	li	a4, -1
	beqz	a2, .LBB5_6
# %bb.1:                                # %.preheader1
	li	a2, 2
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	addiw	a4, a4, 1
	sllw	a5, a2, a4
	bge	a3, a5, .LBB5_2
# %bb.3:
	li	a2, 3
	bltu	a4, a2, .LBB5_12
# %bb.4:
	li	a2, 0
	addi	a4, a4, 1
	ld	a3, 8(a1)
	srliw	a4, a4, 1
	addi	a4, a4, -2
	li	a5, -1
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	sraw	a6, a0, a4
	slli	a7, a6, 1
	add	a7, a7, a6
	addi	a7, a7, 1
	slli	t0, a2, 4
	add	t0, a3, t0
	sw	a6, 0(t0)
	sw	zero, 4(t0)
	sw	a6, 16(t0)
	sw	a6, 20(t0)
	sw	zero, 32(t0)
	sw	a6, 36(t0)
	negw	t1, a6
	sw	t1, 48(t0)
	sw	a6, 52(t0)
	sw	t1, 64(t0)
	sw	zero, 68(t0)
	sw	t1, 80(t0)
	sw	t1, 84(t0)
	sw	zero, 96(t0)
	sw	t1, 100(t0)
	sw	a6, 112(t0)
	sw	t1, 116(t0)
	sraiw	a7, a7, 1
	addiw	a2, a2, 8
	slli	t0, a2, 4
	add	t0, a3, t0
	sw	a7, 0(t0)
	sw	t1, 4(t0)
	sw	a7, 16(t0)
	sw	zero, 20(t0)
	sw	a7, 32(t0)
	sw	a6, 36(t0)
	sw	a6, 48(t0)
	sw	a7, 52(t0)
	sw	zero, 64(t0)
	sw	a7, 68(t0)
	sw	t1, 80(t0)
	sw	a7, 84(t0)
	negw	a7, a7
	sw	a7, 96(t0)
	sw	a6, 100(t0)
	sw	a7, 112(t0)
	sw	zero, 116(t0)
	sw	a7, 128(t0)
	sw	t1, 132(t0)
	sw	t1, 144(t0)
	sw	a7, 148(t0)
	sw	zero, 160(t0)
	sw	a7, 164(t0)
	sw	a6, 176(t0)
	addiw	a2, a2, 12
	addiw	a4, a4, -1
	sw	a7, 180(t0)
	bne	a4, a5, .LBB5_5
	j	.LBB5_11
.LBB5_6:                                # %.preheader
	li	a2, 2
.LBB5_7:                                # =>This Inner Loop Header: Depth=1
	addiw	a4, a4, 1
	sllw	a5, a2, a4
	bge	a3, a5, .LBB5_7
# %bb.8:
	li	a2, 3
	bltu	a4, a2, .LBB5_12
# %bb.9:
	li	a2, 0
	addi	a4, a4, 1
	ld	a3, 8(a1)
	srliw	a4, a4, 1
	addi	a4, a4, -2
	li	a5, -1
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	sraw	a6, a0, a4
	slli	a7, a2, 4
	add	a7, a3, a7
	sw	a6, 0(a7)
	sw	zero, 4(a7)
	sw	a6, 16(a7)
	sw	a6, 20(a7)
	sw	zero, 32(a7)
	sw	a6, 36(a7)
	negw	t0, a6
	sw	t0, 48(a7)
	sw	a6, 52(a7)
	sw	t0, 64(a7)
	sw	zero, 68(a7)
	sw	t0, 80(a7)
	sw	t0, 84(a7)
	sw	zero, 96(a7)
	sw	t0, 100(a7)
	sw	a6, 112(a7)
	addiw	a2, a2, 8
	addiw	a4, a4, -1
	sw	t0, 116(a7)
	bne	a4, a5, .LBB5_10
.LBB5_11:
	sw	a2, 0(a1)
	ret
.LBB5_12:
	sw	zero, 0(a1)
	ret
.Lfunc_end5:
	.size	EPZSWindowPredictorInit, .Lfunc_end5-EPZSWindowPredictorInit
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	EPZSInit                        # -- Begin function EPZSInit
	.p2align	2
	.type	EPZSInit,@function
EPZSInit:                               # @EPZSInit
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lui	a2, 22
	add	a0, a0, a2
	lw	a4, 1264(a1)
	lw	a2, 32(a1)
	lw	a0, 372(a0)
	mv	a3, a2
	beqz	a4, .LBB6_3
# %bb.1:
	lw	a4, 1272(a1)
	mv	a3, a2
	blt	a4, a2, .LBB6_3
# %bb.2:
	mv	a3, a4
.LBB6_3:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	li	s1, 0
	addi	a0, a0, -8
	addi	a1, a1, 2047
	slliw	s2, a3, 1
	mulw	a2, a2, a2
	li	a3, 2
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	sllw	a4, a3, s1
	addi	s1, s1, 1
	bge	a2, a4, .LBB6_4
# %bb.5:
	lw	a4, 1045(a1)
	lw	a3, 1041(a1)
	lw	a2, 1037(a1)
	lw	a1, 1053(a1)
	lui	a5, %hi(medthres)
	sw	zero, %lo(medthres)(a5)
	addi	t0, a5, %lo(medthres)
	lui	a5, %hi(maxthres)
	sw	zero, %lo(maxthres)(a5)
	addi	a5, a5, %lo(maxthres)
	lui	a6, %hi(minthres)
	sw	zero, %lo(minthres)(a6)
	addi	a6, a6, %lo(minthres)
	lui	a7, %hi(subthres)
	sw	zero, %lo(subthres)(a7)
	addi	a7, a7, %lo(subthres)
	slli	t1, a4, 8
	sllw	t1, t1, a0
	sw	t1, 4(t0)
	li	t1, 768
	mul	t1, a3, t1
	sllw	t1, t1, a0
	sw	t1, 4(a5)
	slli	t1, a2, 6
	sllw	t1, t1, a0
	sw	t1, 4(a6)
	slli	t1, a1, 8
	sllw	t1, t1, a0
	sw	t1, 4(a7)
	slli	t1, a4, 7
	sllw	t1, t1, a0
	sw	t1, 8(t0)
	li	t2, 384
	mul	t2, a3, t2
	sllw	t2, t2, a0
	sw	t2, 8(a5)
	slli	t3, a2, 5
	sllw	t3, t3, a0
	sw	t3, 8(a6)
	slli	t4, a1, 7
	sllw	t4, t4, a0
	sw	t4, 8(a7)
	sw	t1, 12(t0)
	sw	t2, 12(a5)
	sw	t3, 12(a6)
	sw	t4, 12(a7)
	slli	t1, a4, 6
	sllw	t1, t1, a0
	sw	t1, 16(t0)
	li	t1, 192
	mul	t1, a3, t1
	sllw	t1, t1, a0
	sw	t1, 16(a5)
	slli	t1, a2, 4
	sllw	t1, t1, a0
	sw	t1, 16(a6)
	slli	t1, a1, 6
	sllw	t1, t1, a0
	sw	t1, 16(a7)
	slli	t1, a4, 5
	sllw	t1, t1, a0
	sw	t1, 20(t0)
	li	t2, 96
	mul	t2, a3, t2
	sllw	t2, t2, a0
	sw	t2, 20(a5)
	slli	t3, a2, 3
	sllw	t3, t3, a0
	sw	t3, 20(a6)
	slli	t4, a1, 5
	sllw	t4, t4, a0
	sw	t4, 20(a7)
	sw	t1, 24(t0)
	sw	t2, 24(a5)
	sw	t3, 24(a6)
	sw	t4, 24(a7)
	slli	a4, a4, 4
	sllw	a4, a4, a0
	sw	a4, 28(t0)
	li	a4, 48
	mul	a3, a3, a4
	sllw	a3, a3, a0
	sw	a3, 28(a5)
	slli	a2, a2, 2
	sllw	a2, a2, a0
	sw	a2, 28(a6)
	slli	a1, a1, 4
	sllw	a0, a1, a0
	sw	a0, 28(a7)
	li	a0, 1
	li	a1, 16
	li	s5, 1
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB6_7
# %bb.6:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB6_7:
	li	a0, 4
	sw	a0, 0(s0)
	li	a0, 4
	li	a1, 16
	call	calloc
	sd	a0, 8(s0)
	lui	a1, %hi(sdiamond)
	sd	s0, %lo(sdiamond)(a1)
	sw	s5, 4(a0)
	li	s3, 3
	sw	s3, 8(a0)
	sw	s3, 12(a0)
	sw	s5, 16(a0)
	sw	s3, 28(a0)
	li	s4, -1
	sw	s4, 36(a0)
	sw	s5, 40(a0)
	sw	s3, 44(a0)
	sw	s4, 48(a0)
	li	a1, 2
	sw	a1, 56(a0)
	sw	s3, 60(a0)
	li	a0, 1
	li	a1, 16
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB6_9
# %bb.8:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB6_9:
	srliw	s5, s1, 1
	li	a0, 8
	sw	a0, 0(s0)
	li	a0, 8
	li	a1, 16
	call	calloc
	sd	a0, 8(s0)
	lui	a1, %hi(square)
	sd	s0, %lo(square)(a1)
	sw	zero, 0(a0)
	li	a1, 1
	sw	a1, 4(a0)
	li	a2, 7
	sw	a2, 8(a0)
	sw	s3, 12(a0)
	sw	a1, 16(a0)
	sw	a1, 20(a0)
	sw	a2, 24(a0)
	li	a2, 5
	sw	a2, 28(a0)
	sw	a1, 32(a0)
	sw	zero, 36(a0)
	sw	a1, 40(a0)
	sw	s3, 44(a0)
	sw	a1, 48(a0)
	sw	s4, 52(a0)
	sw	a1, 56(a0)
	sw	a2, 60(a0)
	sw	zero, 64(a0)
	sw	s4, 68(a0)
	sw	s3, 72(a0)
	sw	s3, 76(a0)
	sw	s4, 80(a0)
	sw	s4, 84(a0)
	sw	s3, 88(a0)
	sw	a2, 92(a0)
	sw	s4, 96(a0)
	sw	zero, 100(a0)
	sw	a2, 104(a0)
	sw	s3, 108(a0)
	sw	s4, 112(a0)
	sw	a1, 116(a0)
	sw	a2, 120(a0)
	sw	a2, 124(a0)
	li	a0, 1
	li	a1, 16
	call	calloc
	mv	s1, a0
	bnez	a0, .LBB6_11
# %bb.10:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB6_11:
	ori	s0, s2, 1
	addi	s3, s5, -1
	li	a0, 12
	sw	a0, 0(s1)
	li	a0, 12
	li	a1, 16
	call	calloc
	sd	a0, 8(s1)
	lui	a1, %hi(ediamond)
	sd	s1, %lo(ediamond)(a1)
	addi	a0, a0, 8
	lui	a2, %hi(pattern_data)
	addi	a2, a2, %lo(pattern_data)
	addi	a1, a2, 396
	addi	a2, a2, 588
.LBB6_12:                               # =>This Inner Loop Header: Depth=1
	lw	a3, -12(a1)
	lw	a4, -8(a1)
	lw	a5, -4(a1)
	lw	a6, 0(a1)
	sw	a3, -8(a0)
	sw	a4, -4(a0)
	sw	a5, 0(a0)
	sw	a6, 4(a0)
	addi	a1, a1, 16
	addi	a0, a0, 16
	bne	a1, a2, .LBB6_12
# %bb.13:
	li	a0, 1
	li	a1, 16
	li	s2, 1
	call	calloc
	mv	s1, a0
	bnez	a0, .LBB6_15
# %bb.14:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB6_15:
	li	a0, 8
	sw	a0, 0(s1)
	li	a0, 8
	li	a1, 16
	call	calloc
	sd	a0, 8(s1)
	lui	a1, %hi(ldiamond)
	sd	s1, %lo(ldiamond)(a1)
	sw	zero, 0(a0)
	li	a1, 2
	sw	a1, 4(a0)
	li	a2, 6
	sw	a2, 8(a0)
	li	a3, 5
	sw	a3, 12(a0)
	sw	s2, 16(a0)
	sw	s2, 20(a0)
	sw	zero, 24(a0)
	li	a4, 3
	sw	a4, 28(a0)
	sw	a1, 32(a0)
	sw	zero, 36(a0)
	sw	zero, 40(a0)
	sw	a3, 44(a0)
	sw	s2, 48(a0)
	li	a5, -1
	sw	a5, 52(a0)
	sw	a1, 56(a0)
	sw	a4, 60(a0)
	sw	zero, 64(a0)
	li	a6, -2
	sw	a6, 68(a0)
	sw	a1, 72(a0)
	sw	a3, 76(a0)
	sw	a5, 80(a0)
	sw	a5, 84(a0)
	li	a1, 4
	sw	a1, 88(a0)
	sw	a4, 92(a0)
	sw	a6, 96(a0)
	sw	zero, 100(a0)
	sw	a1, 104(a0)
	sw	a3, 108(a0)
	sw	a5, 112(a0)
	sw	s2, 116(a0)
	sw	a2, 120(a0)
	sw	a4, 124(a0)
	slliw	s1, s3, 3
	li	a0, 1
	li	a1, 16
	call	calloc
	mv	s2, a0
	bnez	a0, .LBB6_17
# %bb.16:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB6_17:
	sw	s1, 0(s2)
	li	a1, 16
	mv	a0, s1
	call	calloc
	sd	a0, 8(s2)
	lui	s4, %hi(window_predictor)
	sd	s2, %lo(window_predictor)(s4)
	li	a0, 20
	mulw	s1, s3, a0
	li	a0, 1
	li	a1, 16
	call	calloc
	mv	s3, a0
	bnez	a0, .LBB6_19
# %bb.18:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
	ld	s2, %lo(window_predictor)(s4)
.LBB6_19:
	sw	s1, 0(s3)
	li	a1, 16
	mv	a0, s1
	call	calloc
	lui	s4, %hi(input)
	ld	a1, %lo(input)(s4)
	lh	a1, 32(a1)
	sd	a0, 8(s3)
	lui	s5, %hi(window_predictor_extended)
	sd	s3, %lo(window_predictor_extended)(s5)
	mv	a0, a1
	mv	a1, s2
	li	a2, 0
	call	EPZSWindowPredictorInit
	ld	a0, %lo(input)(s4)
	lh	a0, 32(a0)
	ld	a1, %lo(window_predictor_extended)(s5)
	li	a2, 1
	call	EPZSWindowPredictorInit
	ld	a0, %lo(input)(s4)
	addi	a0, a0, 2047
	lw	a1, 1029(a0)
	lw	a0, 1033(a0)
	slli	a2, a1, 3
	add	a1, s1, a1
	add	a1, a1, a2
	slli	a2, a0, 1
	add	a0, a2, a0
	add	a0, a1, a0
	addiw	s2, a0, 10
	li	a0, 1
	li	a1, 16
	call	calloc
	mv	s1, a0
	bnez	a0, .LBB6_21
# %bb.20:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB6_21:
	sw	s2, 0(s1)
	li	a1, 16
	mv	a0, s2
	call	calloc
	lui	s2, %hi(img)
	ld	a1, %lo(img)(s2)
	lw	a1, 52(a1)
	sd	a0, 8(s1)
	lui	a0, %hi(predictor)
	sd	s1, %lo(predictor)(a0)
	slli	a0, a1, 1
	srli	a0, a0, 62
	add	a0, a1, a0
	sraiw	a3, a0, 2
	lui	a0, %hi(EPZSDistortion)
	addi	a0, a0, %lo(EPZSDistortion)
	li	a1, 6
	li	a2, 7
	call	get_mem3Dint
	mv	s1, a0
	lui	a0, %hi(EPZSMap)
	addi	a0, a0, %lo(EPZSMap)
	mv	a1, s0
	mv	a2, s0
	call	get_mem2D
	ld	a1, %lo(input)(s4)
	addi	a2, a1, 2047
	lw	a2, 1033(a2)
	addw	s0, a0, s1
	beqz	a2, .LBB6_23
# %bb.22:
	ld	a0, %lo(img)(s2)
	lw	a1, 52(a0)
	lw	a2, 36(a0)
	slli	a0, a1, 1
	srli	a0, a0, 62
	add	a0, a1, a0
	sraiw	a5, a0, 2
	lui	a0, %hi(EPZSMotion)
	addi	a0, a0, %lo(EPZSMotion)
	li	a1, 6
	li	a3, 7
	li	a4, 4
	li	a6, 2
	call	get_mem6Dshort
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addw	s0, a0, s0
.LBB6_23:
	addi	a0, a1, 2047
	lw	a0, 1029(a0)
	beqz	a0, .LBB6_25
# %bb.24:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lui	a0, %hi(active_sps)
	ld	a2, %lo(active_sps)(a0)
	lw	a0, 52(a1)
	lw	a1, 60(a1)
	lw	a2, 1152(a2)
	call	allocEPZScolocated
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	lui	a2, %hi(EPZSCo_located)
	sd	a0, %lo(EPZSCo_located)(a2)
.LBB6_25:
	addi	a3, a1, 2047
	lw	a5, 1017(a3)
	addiw	a5, a5, -1
	lui	a0, %hi(sdiamond)
	addi	a0, a0, %lo(sdiamond)
	li	a2, 2
	lui	a1, %hi(.Lswitch.table.EPZSInit.17)
	addi	a1, a1, %lo(.Lswitch.table.EPZSInit.17)
	mv	a4, a0
	bltu	a2, a5, .LBB6_27
# %bb.26:
	slli	a5, a5, 3
	add	a5, a1, a5
	ld	a4, 0(a5)
.LBB6_27:
	lw	a3, 1021(a3)
	ld	a4, 0(a4)
	lui	a5, %hi(searchPattern)
	addiw	a3, a3, -2
	sd	a4, %lo(searchPattern)(a5)
	bltu	a2, a3, .LBB6_29
# %bb.28:
	slli	a3, a3, 3
	add	a1, a1, a3
	ld	a0, 0(a1)
.LBB6_29:
	ld	a0, 0(a0)
	lui	a1, %hi(searchPatternD)
	sd	a0, %lo(searchPatternD)(a1)
	mv	a0, s0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end6:
	.size	EPZSInit, .Lfunc_end6-EPZSInit
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	EPZSDelete                      # -- Begin function EPZSDelete
	.p2align	2
	.type	EPZSDelete,@function
EPZSDelete:                             # @EPZSDelete
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1029(a0)
	beqz	a0, .LBB7_5
# %bb.1:
	lui	a0, %hi(EPZSCo_located)
	ld	s0, %lo(EPZSCo_located)(a0)
	beqz	s0, .LBB7_5
# %bb.2:
	lw	a1, 8(s0)
	ld	a0, 16(s0)
	slli	a2, a1, 1
	srli	a2, a2, 62
	add	a1, a1, a2
	sraiw	a2, a1, 2
	li	a1, 2
	call	free_mem4Dshort
	lw	a0, 0(s0)
	beqz	a0, .LBB7_4
# %bb.3:
	lw	a1, 8(s0)
	ld	a0, 24(s0)
	slli	a2, a1, 1
	srli	a2, a2, 61
	add	a1, a1, a2
	sraiw	a2, a1, 3
	li	a1, 2
	call	free_mem4Dshort
	lw	a1, 8(s0)
	ld	a0, 32(s0)
	slli	a2, a1, 1
	srli	a2, a2, 61
	add	a1, a1, a2
	sraiw	a2, a1, 3
	li	a1, 2
	call	free_mem4Dshort
.LBB7_4:
	mv	a0, s0
	call	free
.LBB7_5:
	lui	a0, %hi(EPZSMap)
	ld	a0, %lo(EPZSMap)(a0)
	call	free_mem2D
	lui	a0, %hi(EPZSDistortion)
	ld	a0, %lo(EPZSDistortion)(a0)
	li	a1, 6
	call	free_mem3Dint
	lui	a0, %hi(window_predictor_extended)
	ld	s0, %lo(window_predictor_extended)(a0)
	beqz	s0, .LBB7_7
# %bb.6:
	ld	a0, 8(s0)
	call	free
	mv	a0, s0
	call	free
.LBB7_7:
	lui	a0, %hi(window_predictor)
	ld	s0, %lo(window_predictor)(a0)
	beqz	s0, .LBB7_9
# %bb.8:
	ld	a0, 8(s0)
	call	free
	mv	a0, s0
	call	free
.LBB7_9:
	lui	a0, %hi(predictor)
	ld	s0, %lo(predictor)(a0)
	beqz	s0, .LBB7_11
# %bb.10:
	ld	a0, 8(s0)
	call	free
	mv	a0, s0
	call	free
.LBB7_11:
	lui	a0, %hi(ldiamond)
	ld	s0, %lo(ldiamond)(a0)
	beqz	s0, .LBB7_13
# %bb.12:
	ld	a0, 8(s0)
	call	free
	mv	a0, s0
	call	free
.LBB7_13:
	lui	a0, %hi(ediamond)
	ld	s0, %lo(ediamond)(a0)
	beqz	s0, .LBB7_15
# %bb.14:
	ld	a0, 8(s0)
	call	free
	mv	a0, s0
	call	free
.LBB7_15:
	lui	a0, %hi(sdiamond)
	ld	s0, %lo(sdiamond)(a0)
	beqz	s0, .LBB7_17
# %bb.16:
	ld	a0, 8(s0)
	call	free
	mv	a0, s0
	call	free
.LBB7_17:
	lui	a0, %hi(square)
	ld	s0, %lo(square)(a0)
	beqz	s0, .LBB7_19
# %bb.18:
	ld	a0, 8(s0)
	call	free
	mv	a0, s0
	call	free
.LBB7_19:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1033(a0)
	beqz	a0, .LBB7_21
# %bb.20:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lui	a0, %hi(EPZSMotion)
	ld	a0, %lo(EPZSMotion)(a0)
	lw	a2, 36(a1)
	li	a1, 6
	li	a3, 7
	li	a4, 4
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free_mem6Dshort
.LBB7_21:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end7:
	.size	EPZSDelete, .Lfunc_end7-EPZSDelete
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	EPZSSliceInit                   # -- Begin function EPZSSliceInit
	.p2align	2
	.type	EPZSSliceInit,@function
EPZSSliceInit:                          # @EPZSSliceInit
# %bb.0:
	addi	sp, sp, -1776
	sd	ra, 1768(sp)                    # 8-byte Folded Spill
	sd	s0, 1760(sp)                    # 8-byte Folded Spill
	sd	s1, 1752(sp)                    # 8-byte Folded Spill
	sd	s2, 1744(sp)                    # 8-byte Folded Spill
	sd	s3, 1736(sp)                    # 8-byte Folded Spill
	sd	s4, 1728(sp)                    # 8-byte Folded Spill
	sd	s5, 1720(sp)                    # 8-byte Folded Spill
	sd	s6, 1712(sp)                    # 8-byte Folded Spill
	sd	s7, 1704(sp)                    # 8-byte Folded Spill
	sd	s8, 1696(sp)                    # 8-byte Folded Spill
	sd	s9, 1688(sp)                    # 8-byte Folded Spill
	sd	s10, 1680(sp)                   # 8-byte Folded Spill
	sd	s11, 1672(sp)                   # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a3, %lo(img)(a2)
	lui	a2, 22
	addiw	a2, a2, -704
	add	a2, a3, a2
	lw	a4, 812(a2)
	sd	a3, 40(sp)                      # 8-byte Folded Spill
	lw	a3, 24(a3)
	sd	a3, 72(sp)                      # 8-byte Folded Spill
	lui	a7, %hi(mv_scale)
	addi	a7, a7, %lo(mv_scale)
	bltz	a4, .LBB8_28
# %bb.1:
	li	a3, 0
	slliw	a5, a4, 2
	lui	a4, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a4)
	addi	a5, a5, 1
	sgtz	a6, a5
	neg	a6, a6
	and	a5, a6, a5
	addi	a5, a5, 1
	lui	t0, %hi(listXsize)
	addi	t0, t0, %lo(listXsize)
	lui	t2, 524288
	addiw	t2, t2, -2
	li	t3, 1
	lui	t4, 4
	li	t5, 2
	lui	t6, 1
	mv	s0, a7
	j	.LBB8_3
.LBB8_2:                                #   in Loop: Header=BB8_3 Depth=1
	addi	a3, a3, 1
	add	s0, s0, t6
	beq	a3, a5, .LBB8_28
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
                                        #       Child Loop BB8_9 Depth 3
	slli	a6, a3, 2
	add	a6, t0, a6
	lw	s1, 0(a6)
	blez	s1, .LBB8_2
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	li	s2, 0
	and	s3, a3, t2
	slli	s4, a3, 3
	add	s4, a1, s4
	slli	s5, s1, 3
	mv	s6, s0
	j	.LBB8_6
.LBB8_5:                                #   in Loop: Header=BB8_6 Depth=2
	addi	s2, s2, 1
	addi	s6, s6, 4
	beq	s2, s1, .LBB8_2
.LBB8_6:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_9 Depth 3
	li	s7, 0
	slli	s8, s2, 3
	mv	s9, s6
	j	.LBB8_9
.LBB8_7:                                #   in Loop: Header=BB8_9 Depth=3
	li	a6, 256
.LBB8_8:                                #   in Loop: Header=BB8_9 Depth=3
	sw	a6, 0(s9)
	addi	s7, s7, 8
	addi	s9, s9, 128
	beq	s5, s7, .LBB8_5
.LBB8_9:                                #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltu	t3, a3, .LBB8_15
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=3
	ld	s11, 0(s4)
	add	a6, s11, s7
	ld	t1, 0(a6)
	lw	a6, 4(a4)
	lw	t1, 4(t1)
	subw	t1, a6, t1
	li	s10, 127
	blt	t1, s10, .LBB8_12
# %bb.11:                               #   in Loop: Header=BB8_9 Depth=3
	li	t1, 127
.LBB8_12:                               #   in Loop: Header=BB8_9 Depth=3
	li	s10, -128
	blt	s10, t1, .LBB8_14
# %bb.13:                               #   in Loop: Header=BB8_9 Depth=3
	li	t1, -128
.LBB8_14:                               #   in Loop: Header=BB8_9 Depth=3
	add	s11, s11, s8
	ld	s11, 0(s11)
	lw	s11, 4(s11)
	subw	a6, a6, s11
	bge	a6, s10, .LBB8_22
	j	.LBB8_24
.LBB8_15:                               #   in Loop: Header=BB8_9 Depth=3
	ld	a6, 0(s4)
	add	t1, a6, s7
	ld	t1, 0(t1)
	add	a6, a6, s8
	ld	a6, 0(a6)
	lw	t1, 4(t1)
	lw	a6, 4(a6)
	bne	s3, t5, .LBB8_17
# %bb.16:                               #   in Loop: Header=BB8_9 Depth=3
	lw	s11, 8(a4)
	subw	t1, s11, t1
	li	s10, 127
	bge	t1, s10, .LBB8_18
	j	.LBB8_19
.LBB8_17:                               #   in Loop: Header=BB8_9 Depth=3
	lw	s11, 12(a4)
	subw	t1, s11, t1
	li	s10, 127
	blt	t1, s10, .LBB8_19
.LBB8_18:                               #   in Loop: Header=BB8_9 Depth=3
	li	t1, 127
.LBB8_19:                               #   in Loop: Header=BB8_9 Depth=3
	li	s10, -128
	blt	s10, t1, .LBB8_21
# %bb.20:                               #   in Loop: Header=BB8_9 Depth=3
	li	t1, -128
	subw	a6, s11, a6
	blt	a6, s10, .LBB8_24
	j	.LBB8_22
.LBB8_21:                               #   in Loop: Header=BB8_9 Depth=3
	subw	a6, s11, a6
	blt	a6, s10, .LBB8_24
.LBB8_22:                               #   in Loop: Header=BB8_9 Depth=3
	li	s10, 127
	blt	s10, a6, .LBB8_24
# %bb.23:                               #   in Loop: Header=BB8_9 Depth=3
	mv	s10, a6
	beqz	a6, .LBB8_7
.LBB8_24:                               #   in Loop: Header=BB8_9 Depth=3
	slli	a6, s10, 56
	srli	a6, a6, 63
	add	a6, s10, a6
	slli	a6, a6, 56
	srai	a6, a6, 57
	srai	s11, a6, 63
	xor	a6, a6, s11
	subw	a6, a6, s11
	or	a6, a6, t4
	slli	s10, s10, 48
	srai	s10, s10, 48
	divw	a6, a6, s10
	slli	a6, a6, 48
	srai	a6, a6, 48
	mul	a6, t1, a6
	addi	a6, a6, 32
	sraiw	a6, a6, 6
	li	t1, 2047
	blt	a6, t1, .LBB8_26
# %bb.25:                               #   in Loop: Header=BB8_9 Depth=3
	li	a6, 2047
	li	t1, -2048
	blt	t1, a6, .LBB8_8
	j	.LBB8_27
.LBB8_26:                               #   in Loop: Header=BB8_9 Depth=3
	li	t1, -2048
	blt	t1, a6, .LBB8_8
.LBB8_27:                               #   in Loop: Header=BB8_9 Depth=3
	li	a6, -2048
	j	.LBB8_8
.LBB8_28:
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	addi	a3, a3, 2047
	lw	a3, 1029(a3)
	bnez	a3, .LBB8_29
	j	.LBB8_264
.LBB8_29:
	ld	t1, 72(sp)                      # 8-byte Folded Reload
	addi	a3, t1, -1
	seqz	a3, a3
	sd	a3, 80(sp)                      # 8-byte Folded Spill
	slli	a3, a3, 3
	add	a3, a1, a3
	ld	a5, 0(a3)
	ld	a3, 0(a5)
	lui	a4, %hi(listXsize)
	lw	t2, %lo(listXsize)(a4)
	li	a6, 2
	mv	a4, a3
	blt	t2, a6, .LBB8_31
# %bb.30:
	ld	a4, 8(a5)
.LBB8_31:
	li	a5, 256
	sw	a5, 88(sp)
	sw	a5, 880(sp)
	sw	a5, 92(sp)
	sw	a5, 884(sp)
	sw	a5, 96(sp)
	sw	a5, 888(sp)
	sw	a5, 100(sp)
	sw	a5, 892(sp)
	sw	a5, 104(sp)
	sw	a5, 896(sp)
	sw	a5, 108(sp)
	sw	a5, 900(sp)
	sw	a5, 220(sp)
	sw	a5, 1012(sp)
	sw	a5, 224(sp)
	sw	a5, 1016(sp)
	sw	a5, 228(sp)
	sw	a5, 1020(sp)
	sw	a5, 232(sp)
	sw	a5, 1024(sp)
	sw	a5, 236(sp)
	sw	a5, 1028(sp)
	sw	a5, 240(sp)
	sw	a5, 1032(sp)
	sw	a5, 352(sp)
	sw	a5, 1144(sp)
	sw	a5, 356(sp)
	sw	a5, 1148(sp)
	sw	a5, 360(sp)
	sw	a5, 1152(sp)
	sw	a5, 364(sp)
	sw	a5, 1156(sp)
	sw	a5, 368(sp)
	sw	a5, 1160(sp)
	sw	a5, 372(sp)
	sw	a5, 1164(sp)
	sw	a5, 484(sp)
	sw	a5, 1276(sp)
	sw	a5, 488(sp)
	sw	a5, 1280(sp)
	sw	a5, 492(sp)
	sw	a5, 1284(sp)
	sw	a5, 496(sp)
	sw	a5, 1288(sp)
	sw	a5, 500(sp)
	sw	a5, 1292(sp)
	sw	a5, 504(sp)
	sw	a5, 1296(sp)
	sw	a5, 616(sp)
	sw	a5, 1408(sp)
	sw	a5, 620(sp)
	sw	a5, 1412(sp)
	sw	a5, 624(sp)
	sw	a5, 1416(sp)
	sw	a5, 628(sp)
	sw	a5, 1420(sp)
	sw	a5, 632(sp)
	sw	a5, 1424(sp)
	sw	a5, 636(sp)
	sw	a5, 1428(sp)
	sw	a5, 748(sp)
	sw	a5, 1540(sp)
	sw	a5, 752(sp)
	sw	a5, 1544(sp)
	sw	a5, 756(sp)
	sw	a5, 1548(sp)
	sw	a5, 760(sp)
	sw	a5, 1552(sp)
	sw	a5, 764(sp)
	sw	a5, 1556(sp)
	sw	a5, 768(sp)
	sw	a5, 1560(sp)
	lw	a6, 812(a2)
	bltz	a6, .LBB8_67
# %bb.32:
	sd	t2, 64(sp)                      # 8-byte Folded Spill
	li	t1, 0
	lui	a5, %hi(enc_picture)
	ld	t6, %lo(enc_picture)(a5)
	lui	a5, 2
	addiw	a5, a5, -1780
	add	a5, a3, a5
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	addi	t4, t6, 8
	addi	t5, t6, 4
	addi	t6, t6, 12
	addi	s4, a7, 128
	li	s1, 1
	lui	s2, 4
	li	s3, 2
	lui	t3, 2
	addi	a5, sp, 880
	j	.LBB8_35
.LBB8_33:                               #   in Loop: Header=BB8_35 Depth=1
	lw	a6, 812(a2)
.LBB8_34:                               #   in Loop: Header=BB8_35 Depth=1
	addi	t1, s6, 2
	slliw	a7, a6, 2
	addi	a5, a5, 264
	add	s4, s4, t3
	bge	s6, a7, .LBB8_66
.LBB8_35:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_39 Depth 2
	mv	s6, t1
	slli	a7, t1, 2
	lui	t0, %hi(listXsize)
	addi	t0, t0, %lo(listXsize)
	add	a7, t0, a7
	lw	s7, 0(a7)
	blez	s7, .LBB8_34
# %bb.36:                               #   in Loop: Header=BB8_35 Depth=1
	ld	a6, 80(sp)                      # 8-byte Folded Reload
	or	a6, s6, a6
	slli	a6, a6, 3
	add	a6, a1, a6
	ld	s8, 0(a6)
	slli	a6, s6, 3
	ld	a7, 0(s8)
	add	a6, a1, a6
	ld	s9, 0(a6)
	lw	s10, 4(a7)
	slli	s11, s7, 3
	add	s11, s9, s11
	sext.w	ra, s6
	mv	a7, s4
	mv	s5, a5
	j	.LBB8_39
.LBB8_37:                               #   in Loop: Header=BB8_39 Depth=2
	sw	t2, 0(s5)
.LBB8_38:                               #   in Loop: Header=BB8_39 Depth=2
	sw	t0, 132(s5)
	addi	s9, s9, 8
	addi	s5, s5, 4
	addi	a7, a7, 4
	beq	s9, s11, .LBB8_33
.LBB8_39:                               #   Parent Loop BB8_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a6, t5
	beqz	ra, .LBB8_42
# %bb.40:                               #   in Loop: Header=BB8_39 Depth=2
	mv	a6, t4
	beq	ra, s3, .LBB8_42
# %bb.41:                               #   in Loop: Header=BB8_39 Depth=2
	mv	a6, t6
.LBB8_42:                               #   in Loop: Header=BB8_39 Depth=2
	ld	t0, 0(s9)
	lw	t0, 4(t0)
	lw	a6, 0(a6)
	subw	t1, a6, t0
	li	a6, 127
	blt	t1, a6, .LBB8_45
# %bb.43:                               #   in Loop: Header=BB8_39 Depth=2
	li	t1, 127
	li	a6, -128
	bge	a6, t1, .LBB8_46
.LBB8_44:                               #   in Loop: Header=BB8_39 Depth=2
	ld	a6, 0(s9)
	lw	t2, 4(a6)
	li	t0, 256
	bne	s10, t2, .LBB8_47
	j	.LBB8_55
.LBB8_45:                               #   in Loop: Header=BB8_39 Depth=2
	li	a6, -128
	blt	a6, t1, .LBB8_44
.LBB8_46:                               #   in Loop: Header=BB8_39 Depth=2
	li	t1, -128
	ld	a6, 0(s9)
	lw	t2, 4(a6)
	li	t0, 256
	beq	s10, t2, .LBB8_55
.LBB8_47:                               #   in Loop: Header=BB8_39 Depth=2
	subw	t0, s10, t2
	li	t2, 127
	blt	t0, t2, .LBB8_49
# %bb.48:                               #   in Loop: Header=BB8_39 Depth=2
	li	t0, 127
.LBB8_49:                               #   in Loop: Header=BB8_39 Depth=2
	li	t2, -128
	blt	t2, t0, .LBB8_51
# %bb.50:                               #   in Loop: Header=BB8_39 Depth=2
	li	t0, -128
.LBB8_51:                               #   in Loop: Header=BB8_39 Depth=2
	slli	t2, t0, 56
	srli	t2, t2, 63
	add	t2, t0, t2
	slli	t2, t2, 56
	srai	t2, t2, 57
	srai	s0, t2, 63
	xor	t2, t2, s0
	subw	t2, t2, s0
	or	t2, t2, s2
	slli	t0, t0, 48
	srai	t0, t0, 48
	divw	t0, t2, t0
	slli	t0, t0, 48
	srai	t0, t0, 48
	mul	t0, t1, t0
	addi	t0, t0, 32
	sraiw	t0, t0, 6
	li	t2, 2047
	blt	t0, t2, .LBB8_53
# %bb.52:                               #   in Loop: Header=BB8_39 Depth=2
	li	t0, 2047
.LBB8_53:                               #   in Loop: Header=BB8_39 Depth=2
	li	t2, -2048
	blt	t2, t0, .LBB8_55
# %bb.54:                               #   in Loop: Header=BB8_39 Depth=2
	li	t0, -2048
.LBB8_55:                               #   in Loop: Header=BB8_39 Depth=2
	lw	t2, -128(a7)
	mul	t2, t2, t0
	addi	t2, t2, 128
	sraiw	t2, t2, 8
	sw	t2, -792(s5)
	addi	t0, t0, -256
	sw	t0, -660(s5)
	beq	s7, s1, .LBB8_37
# %bb.56:                               #   in Loop: Header=BB8_39 Depth=2
	ld	t0, 8(s8)
	lw	t0, 4(t0)
	lw	t2, 4(a6)
	li	a6, 256
	beq	t0, t2, .LBB8_65
# %bb.57:                               #   in Loop: Header=BB8_39 Depth=2
	subw	a6, t0, t2
	li	t0, 127
	blt	a6, t0, .LBB8_59
# %bb.58:                               #   in Loop: Header=BB8_39 Depth=2
	li	a6, 127
.LBB8_59:                               #   in Loop: Header=BB8_39 Depth=2
	li	t0, -128
	blt	t0, a6, .LBB8_61
# %bb.60:                               #   in Loop: Header=BB8_39 Depth=2
	li	a6, -128
.LBB8_61:                               #   in Loop: Header=BB8_39 Depth=2
	slli	t0, a6, 56
	srli	t0, t0, 63
	add	t0, a6, t0
	slli	t0, t0, 56
	srai	t0, t0, 57
	srai	t2, t0, 63
	xor	t0, t0, t2
	subw	t0, t0, t2
	or	t0, t0, s2
	slli	a6, a6, 48
	srai	a6, a6, 48
	divw	a6, t0, a6
	slli	a6, a6, 48
	srai	a6, a6, 48
	mul	a6, t1, a6
	addi	a6, a6, 32
	sraiw	a6, a6, 6
	li	t0, 2047
	blt	a6, t0, .LBB8_63
# %bb.62:                               #   in Loop: Header=BB8_39 Depth=2
	li	a6, 2047
.LBB8_63:                               #   in Loop: Header=BB8_39 Depth=2
	li	t0, -2048
	blt	t0, a6, .LBB8_65
# %bb.64:                               #   in Loop: Header=BB8_39 Depth=2
	li	a6, -2048
.LBB8_65:                               #   in Loop: Header=BB8_39 Depth=2
	lw	t0, 0(a7)
	mul	t0, t0, a6
	addi	t0, t0, 128
	sraiw	t0, t0, 8
	sw	t0, 0(s5)
	addi	t0, a6, -256
	j	.LBB8_38
.LBB8_66:
	ld	t1, 72(sp)                      # 8-byte Folded Reload
	ld	t2, 64(sp)                      # 8-byte Folded Reload
	beqz	a6, .LBB8_74
.LBB8_67:
	li	a7, 1
	li	a5, 24
	beq	t1, a7, .LBB8_69
# %bb.68:
	li	a5, 16
.LBB8_69:
	add	a5, a1, a5
	ld	a5, 0(a5)
	li	a6, 40
	li	t0, 1
	sd	t0, 32(sp)                      # 8-byte Folded Spill
	beq	t1, a7, .LBB8_71
# %bb.70:
	li	a6, 32
.LBB8_71:
	ld	a7, 0(a5)
	sd	a7, 72(sp)                      # 8-byte Folded Spill
	add	a1, a1, a6
	ld	a1, 0(a1)
	li	a6, 2
	blt	t2, a6, .LBB8_73
# %bb.72:
	ld	a5, 8(a5)
	sd	a5, 80(sp)                      # 8-byte Folded Spill
	ld	a1, 8(a1)
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	li	a1, 0
	j	.LBB8_81
.LBB8_73:
	ld	a1, 0(a1)
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	li	a1, 0
	j	.LBB8_80
.LBB8_74:
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	lw	a5, 28(a1)
	li	a1, 1
	beqz	a5, .LBB8_79
# %bb.75:
	lw	a6, 0(a3)
	beq	a5, a6, .LBB8_79
# %bb.76:
	ld	a7, 56(sp)                      # 8-byte Folded Reload
	lw	a6, 0(a7)
	beqz	a6, .LBB8_79
# %bb.77:
	li	a1, 1
	beq	a5, a1, .LBB8_78
	j	.LBB8_265
.LBB8_78:
	ld	a3, 116(a7)
	ld	a4, 124(a7)
	j	.LBB8_266
.LBB8_79:
	sd	zero, 32(sp)                    # 8-byte Folded Spill
	sd	a3, 72(sp)                      # 8-byte Folded Spill
	sd	a3, 64(sp)                      # 8-byte Folded Spill
.LBB8_80:
	sd	a4, 80(sp)                      # 8-byte Folded Spill
.LBB8_81:
	lui	a5, %hi(active_sps)
	ld	a5, %lo(active_sps)(a5)
	lw	a7, 1148(a5)
	lui	a5, 2
	addiw	a6, a5, -1800
	add	a6, a3, a6
	sd	a7, 16(sp)                      # 8-byte Folded Spill
	beqz	a7, .LBB8_168
.LBB8_82:
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	lw	a5, 28(a5)
	sd	a5, 8(sp)                       # 8-byte Folded Spill
	ld	a7, 32(sp)                      # 8-byte Folded Reload
	or	a5, a5, a7
	beqz	a5, .LBB8_144
# %bb.83:
	lw	a5, 4(a6)
	li	a7, 8
	blt	a5, a7, .LBB8_144
# %bb.84:
	li	t0, 0
	lw	a7, 0(a6)
	srliw	a5, a5, 3
	sd	a5, 24(sp)                      # 8-byte Folded Spill
	slli	a5, a7, 1
	srli	a5, a5, 62
	sd	a7, 32(sp)                      # 8-byte Folded Spill
	add	a5, a7, a5
	sraiw	s5, a5, 2
	lui	a5, 2
	addiw	s7, a5, -1696
	ld	t4, 64(sp)                      # 8-byte Folded Reload
	add	t4, t4, s7
	ld	s8, 72(sp)                      # 8-byte Folded Reload
	add	s8, s8, s7
	lui	s2, %hi(listXsize)
	li	s3, -1
	j	.LBB8_86
.LBB8_85:                               #   in Loop: Header=BB8_86 Depth=1
	addi	t0, t0, 1
	ld	a5, 24(sp)                      # 8-byte Folded Reload
	beq	t0, a5, .LBB8_144
.LBB8_86:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_90 Depth 2
                                        #       Child Loop BB8_108 Depth 3
                                        #       Child Loop BB8_133 Depth 3
                                        #       Child Loop BB8_98 Depth 3
	ld	a5, 32(sp)                      # 8-byte Folded Reload
	li	a7, 4
	blt	a5, a7, .LBB8_85
# %bb.87:                               #   in Loop: Header=BB8_86 Depth=1
	lui	a5, %hi(enc_picture)
	ld	a5, %lo(enc_picture)(a5)
	li	s4, 0
	lui	t1, %hi(listXsize)
	addi	t1, t1, %lo(listXsize)
	lw	s0, 16(t1)
	addi	a7, a5, 1080
	sd	a7, 56(sp)                      # 8-byte Folded Spill
	slli	a7, t0, 1
	lw	s10, 8(t1)
	addi	t1, a5, 552
	sd	t1, 48(sp)                      # 8-byte Folded Spill
	addi	a5, a5, 24
	sd	a5, 40(sp)                      # 8-byte Folded Spill
	slli	t5, t0, 3
	slli	a7, a7, 3
	j	.LBB8_90
.LBB8_88:                               #   in Loop: Header=BB8_90 Depth=2
	ld	a5, 16(a0)
	ld	t2, 0(a5)
	ld	a5, 8(a5)
	add	t2, t2, t5
	ld	t2, 0(t2)
	add	a5, a5, t5
	ld	a5, 0(a5)
	add	t2, t2, t6
	ld	t2, 0(t2)
	add	a5, a5, t6
	ld	a5, 0(a5)
	sh	zero, 0(t2)
	sh	zero, 2(t2)
	sh	zero, 0(a5)
	sh	zero, 2(a5)
.LBB8_89:                               #   in Loop: Header=BB8_90 Depth=2
	addi	s4, s4, 1
	beq	s4, s5, .LBB8_85
.LBB8_90:                               #   Parent Loop BB8_86 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_108 Depth 3
                                        #       Child Loop BB8_133 Depth 3
                                        #       Child Loop BB8_98 Depth 3
	lw	a5, %lo(listXsize)(s2)
	slti	s1, a5, 2
	slli	t6, s4, 3
	beqz	a1, .LBB8_101
# %bb.91:                               #   in Loop: Header=BB8_90 Depth=2
	ld	t2, 104(a6)
	ld	t2, 0(t2)
	add	t2, t2, t5
	ld	t2, 0(t2)
	add	t2, t2, t6
	ld	t2, 0(t2)
	xori	t3, s1, 1
	slti	t2, t2, 0
	and	s6, t2, t3
	mv	s1, a4
	bnez	s6, .LBB8_93
# %bb.92:                               #   in Loop: Header=BB8_90 Depth=2
	mv	s1, a3
.LBB8_93:                               #   in Loop: Header=BB8_90 Depth=2
	add	s1, s1, s7
	ld	t2, 0(s1)
	ld	t2, 0(t2)
	add	t2, t2, t5
	ld	t2, 0(t2)
	add	t2, t2, t6
	ld	s9, 0(t2)
	beq	s9, s3, .LBB8_88
# %bb.94:                               #   in Loop: Header=BB8_90 Depth=2
	lw	ra, 0(a2)
	blt	ra, a5, .LBB8_96
# %bb.95:                               #   in Loop: Header=BB8_90 Depth=2
	mv	ra, a5
.LBB8_96:                               #   in Loop: Header=BB8_90 Depth=2
	li	a5, 256
	blez	ra, .LBB8_100
# %bb.97:                               #   in Loop: Header=BB8_90 Depth=2
	li	s11, 0
	slli	ra, ra, 2
	ld	t2, 40(sp)                      # 8-byte Folded Reload
.LBB8_98:                               #   Parent Loop BB8_86 Depth=1
                                        #     Parent Loop BB8_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t3, 0(t2)
	beq	t3, s9, .LBB8_112
# %bb.99:                               #   in Loop: Header=BB8_98 Depth=3
	addi	s11, s11, 4
	addi	t2, t2, 8
	bne	ra, s11, .LBB8_98
.LBB8_100:                              #   in Loop: Header=BB8_90 Depth=2
	li	s6, 0
	j	.LBB8_117
.LBB8_101:                              #   in Loop: Header=BB8_90 Depth=2
	ld	a5, 0(t4)
	ld	a5, 0(a5)
	add	a5, a5, t5
	ld	a5, 0(a5)
	add	a5, a5, t6
	ld	a5, 0(a5)
	xori	t2, s1, 1
	slti	a5, a5, 0
	and	s6, a5, t2
	mv	s1, a4
	bnez	s6, .LBB8_103
# %bb.102:                              #   in Loop: Header=BB8_90 Depth=2
	ld	s1, 64(sp)                      # 8-byte Folded Reload
.LBB8_103:                              #   in Loop: Header=BB8_90 Depth=2
	add	s1, s1, s7
	ld	a5, 0(s1)
	ld	a5, 0(a5)
	add	a5, a5, t5
	ld	a5, 0(a5)
	add	a5, a5, t6
	ld	s9, 0(a5)
	beq	s9, s3, .LBB8_111
# %bb.104:                              #   in Loop: Header=BB8_90 Depth=2
	lw	a5, 0(a2)
	slliw	ra, a5, 1
	blt	ra, s0, .LBB8_106
# %bb.105:                              #   in Loop: Header=BB8_90 Depth=2
	mv	ra, s0
.LBB8_106:                              #   in Loop: Header=BB8_90 Depth=2
	li	a5, 256
	blez	ra, .LBB8_110
# %bb.107:                              #   in Loop: Header=BB8_90 Depth=2
	li	s11, 0
	slli	ra, ra, 2
	ld	t2, 56(sp)                      # 8-byte Folded Reload
.LBB8_108:                              #   Parent Loop BB8_86 Depth=1
                                        #     Parent Loop BB8_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t3, 0(t2)
	beq	t3, s9, .LBB8_118
# %bb.109:                              #   in Loop: Header=BB8_108 Depth=3
	addi	s11, s11, 4
	addi	t2, t2, 8
	bne	ra, s11, .LBB8_108
.LBB8_110:                              #   in Loop: Header=BB8_90 Depth=2
	li	s9, 0
	j	.LBB8_123
.LBB8_111:                              #   in Loop: Header=BB8_90 Depth=2
	ld	a5, 32(a0)
	ld	t2, 0(a5)
	ld	a5, 8(a5)
	add	t2, t2, t5
	ld	t2, 0(t2)
	add	a5, a5, t5
	ld	a5, 0(a5)
	add	t2, t2, t6
	ld	s6, 0(t2)
	add	a5, a5, t6
	ld	a5, 0(a5)
	li	s1, 0
	sh	zero, 0(s6)
	sh	zero, 2(s6)
	sh	zero, 0(a5)
	j	.LBB8_124
.LBB8_112:                              #   in Loop: Header=BB8_90 Depth=2
	addi	a5, sp, 880
	bnez	s6, .LBB8_114
# %bb.113:                              #   in Loop: Header=BB8_90 Depth=2
	addi	a5, sp, 88
.LBB8_114:                              #   in Loop: Header=BB8_90 Depth=2
	addi	t2, sp, 1012
	bnez	s6, .LBB8_116
# %bb.115:                              #   in Loop: Header=BB8_90 Depth=2
	addi	t2, sp, 220
.LBB8_116:                              #   in Loop: Header=BB8_90 Depth=2
	add	a5, a5, s11
	lw	a5, 0(a5)
	add	t2, t2, s11
	lw	s6, 0(t2)
.LBB8_117:                              #   in Loop: Header=BB8_90 Depth=2
	ld	t2, 8(s1)
	ld	t2, 0(t2)
	ld	t3, 16(a0)
	add	t2, t2, t5
	ld	t2, 0(t2)
	ld	s1, 0(t3)
	add	t2, t2, t6
	ld	t2, 0(t2)
	add	s1, s1, t5
	ld	s1, 0(s1)
	lh	s9, 0(t2)
	add	s1, s1, t6
	ld	s1, 0(s1)
	mul	s9, a5, s9
	addi	s9, s9, 32
	srli	s9, s9, 6
	sh	s9, 0(s1)
	lh	s9, 2(t2)
	ld	t3, 8(t3)
	mul	a5, a5, s9
	addi	a5, a5, 32
	srli	a5, a5, 6
	add	t3, t3, t5
	ld	t3, 0(t3)
	sh	a5, 2(s1)
	lh	a5, 0(t2)
	add	t3, t3, t6
	ld	t3, 0(t3)
	mul	a5, s6, a5
	addi	a5, a5, 32
	srli	a5, a5, 6
	sh	a5, 0(t3)
	lh	a5, 2(t2)
	mul	a5, s6, a5
	addi	a5, a5, 32
	srli	a5, a5, 6
	sh	a5, 2(t3)
	j	.LBB8_89
.LBB8_118:                              #   in Loop: Header=BB8_90 Depth=2
	addi	a5, sp, 1408
	bnez	s6, .LBB8_120
# %bb.119:                              #   in Loop: Header=BB8_90 Depth=2
	addi	a5, sp, 616
.LBB8_120:                              #   in Loop: Header=BB8_90 Depth=2
	addi	t2, sp, 1540
	bnez	s6, .LBB8_122
# %bb.121:                              #   in Loop: Header=BB8_90 Depth=2
	addi	t2, sp, 748
.LBB8_122:                              #   in Loop: Header=BB8_90 Depth=2
	add	a5, a5, s11
	lw	a5, 0(a5)
	add	t2, t2, s11
	lw	s9, 0(t2)
.LBB8_123:                              #   in Loop: Header=BB8_90 Depth=2
	ld	t2, 8(s1)
	ld	t2, 0(t2)
	ld	t3, 32(a0)
	add	t2, t2, t5
	ld	t2, 0(t2)
	ld	s1, 0(t3)
	add	t2, t2, t6
	ld	t2, 0(t2)
	add	s1, s1, t5
	ld	s1, 0(s1)
	lh	s11, 0(t2)
	add	s1, s1, t6
	ld	s6, 0(s1)
	mul	s1, a5, s11
	addi	s1, s1, 32
	srli	s1, s1, 6
	sh	s1, 0(s6)
	lh	s1, 2(t2)
	ld	t3, 8(t3)
	mul	a5, a5, s1
	addi	a5, a5, 32
	srli	a5, a5, 6
	add	t3, t3, t5
	ld	t3, 0(t3)
	sh	a5, 2(s6)
	lh	s1, 0(t2)
	add	t3, t3, t6
	ld	a5, 0(t3)
	mul	t3, s9, s1
	addi	t3, t3, 32
	srli	t3, t3, 6
	sh	t3, 0(a5)
	lh	t2, 2(t2)
	mul	t2, s9, t2
	addi	t2, t2, 32
	srliw	s1, t2, 6
.LBB8_124:                              #   in Loop: Header=BB8_90 Depth=2
	ld	t2, 128(a6)
	add	t2, t2, a7
	ld	t2, 0(t2)
	sh	s1, 2(a5)
	add	s1, t2, s4
	lbu	t2, 0(s1)
	bnez	t2, .LBB8_126
# %bb.125:                              #   in Loop: Header=BB8_90 Depth=2
	lh	t2, 2(s6)
	addi	t2, t2, 1
	srli	t2, t2, 1
	sh	t2, 2(s6)
	lh	t2, 2(a5)
	addi	t2, t2, 1
	srli	t2, t2, 1
	sh	t2, 2(a5)
.LBB8_126:                              #   in Loop: Header=BB8_90 Depth=2
	ld	a5, 0(s8)
	ld	a5, 0(a5)
	add	a5, a5, t5
	ld	a5, 0(a5)
	add	a5, a5, t6
	ld	a5, 0(a5)
	lw	t2, %lo(listXsize)(s2)
	slti	a5, a5, 0
	slti	t2, t2, 2
	xori	t2, t2, 1
	and	s9, a5, t2
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	bnez	s9, .LBB8_128
# %bb.127:                              #   in Loop: Header=BB8_90 Depth=2
	ld	s6, 72(sp)                      # 8-byte Folded Reload
.LBB8_128:                              #   in Loop: Header=BB8_90 Depth=2
	add	s6, s6, s7
	ld	a5, 0(s6)
	ld	a5, 0(a5)
	add	a5, a5, t5
	ld	a5, 0(a5)
	add	a5, a5, t6
	ld	s11, 0(a5)
	beq	s11, s3, .LBB8_136
# %bb.129:                              #   in Loop: Header=BB8_90 Depth=2
	lw	a5, 0(a2)
	slliw	t2, a5, 1
	blt	t2, s10, .LBB8_131
# %bb.130:                              #   in Loop: Header=BB8_90 Depth=2
	mv	t2, s10
.LBB8_131:                              #   in Loop: Header=BB8_90 Depth=2
	li	a5, 256
	blez	t2, .LBB8_135
# %bb.132:                              #   in Loop: Header=BB8_90 Depth=2
	li	ra, 0
	slli	t2, t2, 2
	ld	t3, 48(sp)                      # 8-byte Folded Reload
.LBB8_133:                              #   Parent Loop BB8_86 Depth=1
                                        #     Parent Loop BB8_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t1, 0(t3)
	beq	t1, s11, .LBB8_137
# %bb.134:                              #   in Loop: Header=BB8_133 Depth=3
	addi	ra, ra, 4
	addi	t3, t3, 8
	bne	t2, ra, .LBB8_133
.LBB8_135:                              #   in Loop: Header=BB8_90 Depth=2
	li	s9, 0
	j	.LBB8_142
.LBB8_136:                              #   in Loop: Header=BB8_90 Depth=2
	ld	a5, 24(a0)
	ld	t1, 0(a5)
	ld	a5, 8(a5)
	add	t1, t1, t5
	ld	t1, 0(t1)
	add	a5, a5, t5
	ld	a5, 0(a5)
	add	t1, t1, t6
	ld	s6, 0(t1)
	add	a5, a5, t6
	ld	a5, 0(a5)
	sh	zero, 0(s6)
	sh	zero, 2(s6)
	sh	zero, 0(a5)
	sh	zero, 2(a5)
	lbu	t1, 0(s1)
	bnez	t1, .LBB8_89
	j	.LBB8_143
.LBB8_137:                              #   in Loop: Header=BB8_90 Depth=2
	addi	a5, sp, 1144
	bnez	s9, .LBB8_139
# %bb.138:                              #   in Loop: Header=BB8_90 Depth=2
	addi	a5, sp, 352
.LBB8_139:                              #   in Loop: Header=BB8_90 Depth=2
	addi	t2, sp, 1276
	bnez	s9, .LBB8_141
# %bb.140:                              #   in Loop: Header=BB8_90 Depth=2
	addi	t2, sp, 484
.LBB8_141:                              #   in Loop: Header=BB8_90 Depth=2
	add	a5, a5, ra
	lw	a5, 0(a5)
	add	t2, t2, ra
	lw	s9, 0(t2)
.LBB8_142:                              #   in Loop: Header=BB8_90 Depth=2
	ld	t1, 8(s6)
	ld	t1, 0(t1)
	ld	t2, 24(a0)
	add	t1, t1, t5
	ld	t1, 0(t1)
	ld	t3, 0(t2)
	add	t1, t1, t6
	ld	t1, 0(t1)
	add	t3, t3, t5
	ld	t3, 0(t3)
	lh	s11, 0(t1)
	add	t3, t3, t6
	ld	s6, 0(t3)
	mul	t3, a5, s11
	addi	t3, t3, 32
	srli	t3, t3, 6
	sh	t3, 0(s6)
	lh	t3, 2(t1)
	ld	t2, 8(t2)
	mul	a5, a5, t3
	addi	a5, a5, 32
	srli	a5, a5, 6
	add	t2, t2, t5
	ld	t2, 0(t2)
	sh	a5, 2(s6)
	lh	t3, 0(t1)
	add	t2, t2, t6
	ld	a5, 0(t2)
	mul	t2, s9, t3
	addi	t2, t2, 32
	srli	t2, t2, 6
	sh	t2, 0(a5)
	lh	t1, 2(t1)
	mul	t1, s9, t1
	addi	t1, t1, 32
	srliw	t2, t1, 6
	sh	t2, 2(a5)
	lbu	t1, 0(s1)
	bnez	t1, .LBB8_89
.LBB8_143:                              #   in Loop: Header=BB8_90 Depth=2
	lh	t1, 2(s6)
	addi	t1, t1, 1
	srli	t1, t1, 1
	sh	t1, 2(s6)
	lh	t1, 2(a5)
	addi	t1, t1, 1
	srli	t1, t1, 1
	sh	t1, 2(a5)
	j	.LBB8_89
.LBB8_144:
	ld	a5, 16(sp)                      # 8-byte Folded Reload
	beqz	a5, .LBB8_219
# %bb.145:
	lw	a5, 4(a6)
	srai	a7, a5, 2
	blez	a7, .LBB8_264
# %bb.146:
	lw	a5, 0(a6)
	li	t0, 0
	srai	t2, a5, 2
	addi	t3, sp, 1012
	lui	t4, %hi(enc_picture)
	lui	t5, %hi(listXsize)
	lui	a5, 2
	addiw	t6, a5, -1696
	li	s0, -1
	j	.LBB8_148
.LBB8_147:                              #   in Loop: Header=BB8_148 Depth=1
	addi	t0, t0, 1
	beq	t0, a7, .LBB8_167
.LBB8_148:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_151 Depth 2
                                        #       Child Loop BB8_158 Depth 3
	blez	t2, .LBB8_147
# %bb.149:                              #   in Loop: Header=BB8_148 Depth=1
	ld	a5, 104(a6)
	ld	a5, 0(a5)
	slli	s1, t0, 3
	add	a5, a5, s1
	ld	s4, %lo(enc_picture)(t4)
	ld	s2, 0(a5)
	li	s3, 0
	addi	s4, s4, 24
	j	.LBB8_151
.LBB8_150:                              #   in Loop: Header=BB8_151 Depth=2
	ld	t1, 16(a0)
	ld	s5, 0(t1)
	ld	t1, 8(t1)
	add	s5, s5, s1
	ld	s5, 0(s5)
	add	t1, t1, s1
	ld	t1, 0(t1)
	add	s5, s5, a5
	ld	s6, 0(s5)
	add	a5, t1, a5
	ld	a5, 0(a5)
	sh	zero, 0(s6)
	sh	zero, 2(s6)
	sh	zero, 0(a5)
	addi	s3, s3, 1
	sh	zero, 2(a5)
	beq	s3, t2, .LBB8_147
.LBB8_151:                              #   Parent Loop BB8_148 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_158 Depth 3
	slli	a5, s3, 3
	add	t1, s2, a5
	ld	t1, 0(t1)
	lw	s5, %lo(listXsize)(t5)
	slti	t1, t1, 0
	slti	s6, s5, 2
	xori	s6, s6, 1
	and	s7, t1, s6
	mv	s6, a4
	bnez	s7, .LBB8_153
# %bb.152:                              #   in Loop: Header=BB8_151 Depth=2
	mv	s6, a3
.LBB8_153:                              #   in Loop: Header=BB8_151 Depth=2
	add	s6, s6, t6
	ld	t1, 0(s6)
	ld	t1, 0(t1)
	add	t1, t1, s1
	ld	t1, 0(t1)
	add	t1, t1, a5
	ld	s8, 0(t1)
	beq	s8, s0, .LBB8_150
# %bb.154:                              #   in Loop: Header=BB8_151 Depth=2
	lw	s10, 0(a2)
	blt	s10, s5, .LBB8_156
# %bb.155:                              #   in Loop: Header=BB8_151 Depth=2
	mv	s10, s5
.LBB8_156:                              #   in Loop: Header=BB8_151 Depth=2
	li	s5, 256
	blez	s10, .LBB8_160
# %bb.157:                              #   in Loop: Header=BB8_151 Depth=2
	li	s9, 0
	slli	s10, s10, 2
	mv	s11, s4
.LBB8_158:                              #   Parent Loop BB8_148 Depth=1
                                        #     Parent Loop BB8_151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t1, 0(s11)
	beq	t1, s8, .LBB8_161
# %bb.159:                              #   in Loop: Header=BB8_158 Depth=3
	addi	s9, s9, 4
	addi	s11, s11, 8
	bne	s10, s9, .LBB8_158
.LBB8_160:                              #   in Loop: Header=BB8_151 Depth=2
	li	s7, 0
	j	.LBB8_166
.LBB8_161:                              #   in Loop: Header=BB8_151 Depth=2
	addi	s5, sp, 880
	bnez	s7, .LBB8_163
# %bb.162:                              #   in Loop: Header=BB8_151 Depth=2
	addi	s5, sp, 88
.LBB8_163:                              #   in Loop: Header=BB8_151 Depth=2
	mv	s8, t3
	bnez	s7, .LBB8_165
# %bb.164:                              #   in Loop: Header=BB8_151 Depth=2
	addi	s8, sp, 220
.LBB8_165:                              #   in Loop: Header=BB8_151 Depth=2
	add	s5, s5, s9
	lw	s5, 0(s5)
	add	s8, s8, s9
	lw	s7, 0(s8)
.LBB8_166:                              #   in Loop: Header=BB8_151 Depth=2
	ld	t1, 8(s6)
	ld	t1, 0(t1)
	ld	s6, 16(a0)
	add	t1, t1, s1
	ld	t1, 0(t1)
	ld	s8, 0(s6)
	add	t1, t1, a5
	ld	t1, 0(t1)
	add	s8, s8, s1
	ld	s8, 0(s8)
	lh	s9, 0(t1)
	add	s8, s8, a5
	ld	s8, 0(s8)
	mul	s9, s5, s9
	addi	s9, s9, 32
	srli	s9, s9, 6
	sh	s9, 0(s8)
	lh	s9, 2(t1)
	ld	s6, 8(s6)
	mul	s5, s5, s9
	addi	s5, s5, 32
	srli	s5, s5, 6
	add	s6, s6, s1
	ld	s6, 0(s6)
	sh	s5, 2(s8)
	lh	s5, 0(t1)
	add	a5, s6, a5
	ld	a5, 0(a5)
	mul	s5, s7, s5
	addi	s5, s5, 32
	srli	s5, s5, 6
	sh	s5, 0(a5)
	lh	t1, 2(t1)
	mul	t1, s7, t1
	addi	t1, t1, 32
	srliw	s5, t1, 6
	addi	s3, s3, 1
	sh	s5, 2(a5)
	bne	s3, t2, .LBB8_151
	j	.LBB8_147
.LBB8_167:
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	ld	t4, 8(sp)                       # 8-byte Folded Reload
	bnez	a2, .LBB8_264
	j	.LBB8_220
.LBB8_168:
	lw	a5, 4(a6)
	srai	a5, a5, 2
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	blez	a5, .LBB8_82
# %bb.169:
	lw	s1, 0(a6)
	li	t0, 0
	lui	a5, 262144
	addi	a5, a5, -4
	sd	a5, 48(sp)                      # 8-byte Folded Spill
	srai	s1, s1, 2
	addi	s2, sp, 1012
	lui	s4, %hi(listXsize)
	lui	s5, 2
	addiw	s6, s5, -1696
	li	s7, -1
	j	.LBB8_171
.LBB8_170:                              #   in Loop: Header=BB8_171 Depth=1
	addi	t0, t0, 1
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	beq	t0, a5, .LBB8_82
.LBB8_171:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_174 Depth 2
                                        #       Child Loop BB8_203 Depth 3
                                        #       Child Loop BB8_184 Depth 3
                                        #       Child Loop BB8_193 Depth 3
	blez	s1, .LBB8_170
# %bb.172:                              #   in Loop: Header=BB8_171 Depth=1
	li	a7, 0
	lui	a5, %hi(enc_picture)
	ld	s8, %lo(enc_picture)(a5)
	srliw	s9, t0, 1
	ld	a5, 48(sp)                      # 8-byte Folded Reload
	and	a5, s9, a5
	addw	ra, a5, s9
	addi	s10, s8, 24
	slli	s11, t0, 3
	slli	ra, ra, 3
	j	.LBB8_174
.LBB8_173:                              #   in Loop: Header=BB8_174 Depth=2
	ld	a5, 16(a0)
	ld	t1, 0(a5)
	ld	a5, 8(a5)
	add	t1, t1, s11
	ld	t1, 0(t1)
	add	a5, a5, s11
	ld	a5, 0(a5)
	add	t1, t1, s3
	ld	t2, 0(t1)
	add	a5, a5, s3
	ld	a5, 0(a5)
	sh	zero, 0(t2)
	sh	zero, 2(t2)
	sh	zero, 0(a5)
	addi	a7, a7, 1
	sh	zero, 2(a5)
	beq	a7, s1, .LBB8_170
.LBB8_174:                              #   Parent Loop BB8_171 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_203 Depth 3
                                        #       Child Loop BB8_184 Depth 3
                                        #       Child Loop BB8_193 Depth 3
	slli	s3, a7, 3
	bnez	a1, .LBB8_186
# %bb.175:                              #   in Loop: Header=BB8_174 Depth=2
	ld	a5, 128(a6)
	add	a5, a5, s11
	ld	a5, 0(a5)
	add	a5, a5, a7
	lbu	a5, 0(a5)
	beqz	a5, .LBB8_186
# %bb.176:                              #   in Loop: Header=BB8_174 Depth=2
	lw	a5, 4(s8)
	ld	t1, 64(sp)                      # 8-byte Folded Reload
	lw	t1, 4(t1)
	sub	t1, a5, t1
	sraiw	t2, t1, 31
	ld	t3, 72(sp)                      # 8-byte Folded Reload
	lw	t3, 4(t3)
	ld	t4, 104(a6)
	xor	t1, t1, t2
	subw	t1, t1, t2
	sub	a5, a5, t3
	ld	t2, 0(t4)
	sraiw	t3, a5, 31
	xor	a5, a5, t3
	subw	t3, a5, t3
	add	a5, t2, ra
	bgeu	t3, t1, .LBB8_196
# %bb.177:                              #   in Loop: Header=BB8_174 Depth=2
	ld	a5, 0(a5)
	add	a5, a5, s3
	ld	t5, 0(a5)
	lw	a5, %lo(listXsize)(s4)
	slti	t1, t5, 0
	slti	t2, a5, 2
	xori	t2, t2, 1
	and	t4, t1, t2
	ld	t1, 80(sp)                      # 8-byte Folded Reload
	bnez	t4, .LBB8_179
# %bb.178:                              #   in Loop: Header=BB8_174 Depth=2
	ld	t1, 72(sp)                      # 8-byte Folded Reload
.LBB8_179:                              #   in Loop: Header=BB8_174 Depth=2
	beq	t5, s7, .LBB8_173
# %bb.180:                              #   in Loop: Header=BB8_174 Depth=2
	lw	t6, 0(a2)
	blt	t6, a5, .LBB8_182
# %bb.181:                              #   in Loop: Header=BB8_174 Depth=2
	mv	t6, a5
.LBB8_182:                              #   in Loop: Header=BB8_174 Depth=2
	li	a5, 256
	blez	t6, .LBB8_205
# %bb.183:                              #   in Loop: Header=BB8_174 Depth=2
	li	s0, 0
	slli	t6, t6, 2
	mv	t2, s10
.LBB8_184:                              #   Parent Loop BB8_171 Depth=1
                                        #     Parent Loop BB8_174 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t3, 0(t2)
	beq	t3, t5, .LBB8_212
# %bb.185:                              #   in Loop: Header=BB8_184 Depth=3
	addi	s0, s0, 4
	addi	t2, t2, 8
	bne	t6, s0, .LBB8_184
	j	.LBB8_205
.LBB8_186:                              #   in Loop: Header=BB8_174 Depth=2
	ld	a5, 104(a6)
	ld	a5, 0(a5)
	add	a5, a5, s11
	ld	a5, 0(a5)
	add	a5, a5, s3
	ld	t1, 0(a5)
	lw	a5, %lo(listXsize)(s4)
	slti	t1, t1, 0
	slti	t2, a5, 2
	xori	t2, t2, 1
	and	t4, t1, t2
	mv	t1, a4
	bnez	t4, .LBB8_188
# %bb.187:                              #   in Loop: Header=BB8_174 Depth=2
	mv	t1, a3
.LBB8_188:                              #   in Loop: Header=BB8_174 Depth=2
	add	t1, t1, s6
	ld	t2, 0(t1)
	ld	t2, 0(t2)
	add	t2, t2, s11
	ld	t2, 0(t2)
	add	t2, t2, s3
	ld	t5, 0(t2)
	beq	t5, s7, .LBB8_173
# %bb.189:                              #   in Loop: Header=BB8_174 Depth=2
	lw	t6, 0(a2)
	blt	t6, a5, .LBB8_191
# %bb.190:                              #   in Loop: Header=BB8_174 Depth=2
	mv	t6, a5
.LBB8_191:                              #   in Loop: Header=BB8_174 Depth=2
	li	a5, 256
	blez	t6, .LBB8_195
# %bb.192:                              #   in Loop: Header=BB8_174 Depth=2
	li	s0, 0
	slli	t6, t6, 2
	mv	t2, s10
.LBB8_193:                              #   Parent Loop BB8_171 Depth=1
                                        #     Parent Loop BB8_174 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t3, 0(t2)
	beq	t3, t5, .LBB8_206
# %bb.194:                              #   in Loop: Header=BB8_193 Depth=3
	addi	s0, s0, 4
	addi	t2, t2, 8
	bne	t6, s0, .LBB8_193
.LBB8_195:                              #   in Loop: Header=BB8_174 Depth=2
	li	t4, 0
	j	.LBB8_211
.LBB8_196:                              #   in Loop: Header=BB8_174 Depth=2
	ld	a5, 32(a5)
	add	a5, a5, s3
	ld	t5, 0(a5)
	lw	a5, %lo(listXsize)(s4)
	slti	t1, t5, 0
	slti	t2, a5, 2
	xori	t2, t2, 1
	and	t4, t1, t2
	mv	t1, a4
	bnez	t4, .LBB8_198
# %bb.197:                              #   in Loop: Header=BB8_174 Depth=2
	ld	t1, 64(sp)                      # 8-byte Folded Reload
.LBB8_198:                              #   in Loop: Header=BB8_174 Depth=2
	beq	t5, s7, .LBB8_173
# %bb.199:                              #   in Loop: Header=BB8_174 Depth=2
	lw	t6, 0(a2)
	blt	t6, a5, .LBB8_201
# %bb.200:                              #   in Loop: Header=BB8_174 Depth=2
	mv	t6, a5
.LBB8_201:                              #   in Loop: Header=BB8_174 Depth=2
	li	a5, 256
	blez	t6, .LBB8_205
# %bb.202:                              #   in Loop: Header=BB8_174 Depth=2
	li	s0, 0
	slli	t6, t6, 2
	mv	t2, s10
.LBB8_203:                              #   Parent Loop BB8_171 Depth=1
                                        #     Parent Loop BB8_174 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t3, 0(t2)
	beq	t3, t5, .LBB8_212
# %bb.204:                              #   in Loop: Header=BB8_203 Depth=3
	addi	s0, s0, 4
	addi	t2, t2, 8
	bne	t6, s0, .LBB8_203
.LBB8_205:                              #   in Loop: Header=BB8_174 Depth=2
	li	t4, 0
	j	.LBB8_217
.LBB8_206:                              #   in Loop: Header=BB8_174 Depth=2
	addi	a5, sp, 880
	bnez	t4, .LBB8_208
# %bb.207:                              #   in Loop: Header=BB8_174 Depth=2
	addi	a5, sp, 88
.LBB8_208:                              #   in Loop: Header=BB8_174 Depth=2
	mv	t2, s2
	bnez	t4, .LBB8_210
# %bb.209:                              #   in Loop: Header=BB8_174 Depth=2
	addi	t2, sp, 220
.LBB8_210:                              #   in Loop: Header=BB8_174 Depth=2
	add	a5, a5, s0
	lw	a5, 0(a5)
	add	t2, t2, s0
	lw	t4, 0(t2)
.LBB8_211:                              #   in Loop: Header=BB8_174 Depth=2
	ld	t1, 8(t1)
	ld	t1, 0(t1)
	ld	t2, 16(a0)
	add	t1, t1, s11
	ld	t1, 0(t1)
	ld	t3, 0(t2)
	add	t1, t1, s3
	ld	t1, 0(t1)
	add	t3, t3, s11
	ld	t3, 0(t3)
	lh	t5, 0(t1)
	add	t3, t3, s3
	ld	t3, 0(t3)
	mul	t5, a5, t5
	addi	t5, t5, 32
	srli	t5, t5, 6
	sh	t5, 0(t3)
	lh	t5, 2(t1)
	ld	t2, 8(t2)
	mul	a5, a5, t5
	addi	a5, a5, 32
	srli	a5, a5, 6
	add	t2, t2, s11
	ld	t2, 0(t2)
	sh	a5, 2(t3)
	lh	t3, 0(t1)
	add	t2, t2, s3
	ld	a5, 0(t2)
	mul	t2, t4, t3
	j	.LBB8_218
.LBB8_212:                              #   in Loop: Header=BB8_174 Depth=2
	addi	a5, sp, 880
	bnez	t4, .LBB8_214
# %bb.213:                              #   in Loop: Header=BB8_174 Depth=2
	addi	a5, sp, 88
.LBB8_214:                              #   in Loop: Header=BB8_174 Depth=2
	mv	t2, s2
	bnez	t4, .LBB8_216
# %bb.215:                              #   in Loop: Header=BB8_174 Depth=2
	addi	t2, sp, 220
.LBB8_216:                              #   in Loop: Header=BB8_174 Depth=2
	add	a5, a5, s0
	lw	a5, 0(a5)
	add	t2, t2, s0
	lw	t4, 0(t2)
.LBB8_217:                              #   in Loop: Header=BB8_174 Depth=2
	add	t1, t1, s5
	ld	t1, -1688(t1)
	ld	t1, 0(t1)
	slli	t2, s9, 3
	ld	t3, 16(a0)
	add	t1, t1, t2
	ld	t1, 0(t1)
	ld	t2, 0(t3)
	add	t1, t1, s3
	ld	t1, 0(t1)
	add	t2, t2, s11
	ld	t2, 0(t2)
	lh	t5, 0(t1)
	add	t2, t2, s3
	ld	t2, 0(t2)
	mul	t5, a5, t5
	addi	t5, t5, 32
	srli	t5, t5, 6
	sh	t5, 0(t2)
	lh	t5, 2(t1)
	ld	t3, 8(t3)
	mul	a5, a5, t5
	addi	a5, a5, 32
	srli	a5, a5, 6
	add	t3, t3, s11
	ld	t3, 0(t3)
	sh	a5, 2(t2)
	lh	t2, 0(t1)
	add	t3, t3, s3
	ld	a5, 0(t3)
	mul	t2, t4, t2
.LBB8_218:                              #   in Loop: Header=BB8_174 Depth=2
	addi	t2, t2, 32
	srli	t2, t2, 6
	sh	t2, 0(a5)
	lh	t1, 2(t1)
	mul	t1, t4, t1
	addi	t1, t1, 32
	srliw	t1, t1, 6
	addi	a7, a7, 1
	sh	t1, 2(a5)
	bne	a7, s1, .LBB8_174
	j	.LBB8_170
.LBB8_219:
	ld	t4, 8(sp)                       # 8-byte Folded Reload
	beqz	t4, .LBB8_235
.LBB8_220:
	lw	a2, 4(a6)
	srai	t5, a2, 2
	blez	t5, .LBB8_264
.LBB8_221:
	lw	a3, 0(a6)
	li	a2, 0
	srai	a3, a3, 2
	slli	a4, a3, 32
	srli	a4, a4, 29
	j	.LBB8_223
.LBB8_222:                              #   in Loop: Header=BB8_223 Depth=1
	addi	a2, a2, 1
	beq	a2, t5, .LBB8_264
.LBB8_223:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_229 Depth 2
	blez	a3, .LBB8_222
# %bb.224:                              #   in Loop: Header=BB8_223 Depth=1
	ld	a7, 128(a6)
	slli	a5, a2, 3
	add	a7, a7, a5
	ld	t0, 0(a7)
	li	t2, 0
	j	.LBB8_229
.LBB8_225:                              #   in Loop: Header=BB8_229 Depth=2
	beqz	a7, .LBB8_232
.LBB8_226:                              #   in Loop: Header=BB8_229 Depth=2
	ld	a7, 16(a0)
	ld	t1, 0(a7)
	add	t1, t1, a5
	ld	t1, 0(t1)
	ld	a7, 8(a7)
	add	t1, t1, t2
	ld	t1, 0(t1)
	add	a7, a7, a5
	ld	a7, 0(a7)
	lh	t3, 2(t1)
	add	a7, a7, t2
	ld	a7, 0(a7)
	slli	t3, t3, 1
	sh	t3, 2(t1)
	lh	t1, 2(a7)
	slli	t1, t1, 1
.LBB8_227:                              #   in Loop: Header=BB8_229 Depth=2
	sh	t1, 2(a7)
.LBB8_228:                              #   in Loop: Header=BB8_229 Depth=2
	addi	t2, t2, 8
	addi	t0, t0, 1
	beq	a4, t2, .LBB8_222
.LBB8_229:                              #   Parent Loop BB8_223 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a7, 0(t0)
	beqz	a1, .LBB8_225
# %bb.230:                              #   in Loop: Header=BB8_229 Depth=2
	beqz	t4, .LBB8_234
# %bb.231:                              #   in Loop: Header=BB8_229 Depth=2
	bnez	a7, .LBB8_228
	j	.LBB8_233
.LBB8_232:                              #   in Loop: Header=BB8_229 Depth=2
	beqz	t4, .LBB8_228
.LBB8_233:                              #   in Loop: Header=BB8_229 Depth=2
	ld	a7, 16(a0)
	ld	t1, 0(a7)
	add	t1, t1, a5
	ld	t1, 0(t1)
	ld	a7, 8(a7)
	add	t1, t1, t2
	ld	t1, 0(t1)
	add	a7, a7, a5
	ld	a7, 0(a7)
	lh	t3, 2(t1)
	add	a7, a7, t2
	ld	a7, 0(a7)
	addi	t3, t3, 1
	srli	t3, t3, 1
	sh	t3, 2(t1)
	lh	t1, 2(a7)
	addi	t1, t1, 1
	srli	t1, t1, 1
	j	.LBB8_227
.LBB8_234:                              #   in Loop: Header=BB8_229 Depth=2
	bnez	a7, .LBB8_226
	j	.LBB8_228
.LBB8_235:
	lw	a5, 4(a6)
	srai	t5, a5, 2
	blez	t5, .LBB8_264
# %bb.236:
	lw	t3, 0(a6)
	li	t0, 0
	lui	a5, 262144
	addi	a5, a5, -4
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	srai	t3, t3, 2
	lui	t6, %hi(listXsize)
	lui	a5, 2
	addiw	s1, a5, -1696
	li	s2, -1
	sd	t5, 72(sp)                      # 8-byte Folded Spill
	j	.LBB8_238
.LBB8_237:                              #   in Loop: Header=BB8_238 Depth=1
	addi	t0, t0, 1
	ld	t5, 72(sp)                      # 8-byte Folded Reload
	beq	t0, t5, .LBB8_263
.LBB8_238:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_243 Depth 2
                                        #       Child Loop BB8_251 Depth 3
	blez	t3, .LBB8_237
# %bb.239:                              #   in Loop: Header=BB8_238 Depth=1
	li	s3, 0
	srliw	s4, t0, 1
	ld	a5, 128(a6)
	ld	a7, 64(sp)                      # 8-byte Folded Reload
	and	a7, s4, a7
	slli	s5, t0, 3
	lui	t1, %hi(enc_picture)
	ld	s6, %lo(enc_picture)(t1)
	add	a5, a5, s5
	ld	s7, 0(a5)
	addw	s9, a7, s4
	addi	a5, s6, 24
	sd	a5, 80(sp)                      # 8-byte Folded Spill
	slli	s9, s9, 3
	j	.LBB8_243
.LBB8_240:                              #   in Loop: Header=BB8_243 Depth=2
	ld	a5, 16(a0)
	ld	a7, 0(a5)
	ld	a5, 8(a5)
	add	a7, a7, s5
	ld	a7, 0(a7)
	add	a5, a5, s5
	ld	a5, 0(a5)
	add	a7, a7, s10
	ld	a7, 0(a7)
	add	a5, a5, s10
	ld	a5, 0(a5)
	li	t2, 0
	sh	zero, 0(a7)
	sh	zero, 2(a7)
	sh	zero, 0(a5)
.LBB8_241:                              #   in Loop: Header=BB8_243 Depth=2
	sh	t2, 2(a5)
.LBB8_242:                              #   in Loop: Header=BB8_243 Depth=2
	addi	s3, s3, 1
	beq	s3, t3, .LBB8_237
.LBB8_243:                              #   Parent Loop BB8_238 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_251 Depth 3
	add	a5, s7, s3
	lbu	a5, 0(a5)
	beqz	a5, .LBB8_242
# %bb.244:                              #   in Loop: Header=BB8_243 Depth=2
	ld	a5, 104(a6)
	ld	a5, 0(a5)
	add	a5, a5, s9
	ld	a5, 0(a5)
	slli	s10, s3, 3
	add	a5, a5, s10
	ld	t1, 0(a5)
	lw	a5, %lo(listXsize)(t6)
	slti	t1, t1, 0
	slti	t2, a5, 2
	xori	t2, t2, 1
	and	t5, t1, t2
	mv	ra, a4
	bnez	t5, .LBB8_246
# %bb.245:                              #   in Loop: Header=BB8_243 Depth=2
	mv	ra, a3
.LBB8_246:                              #   in Loop: Header=BB8_243 Depth=2
	add	ra, ra, s1
	ld	t1, 0(ra)
	ld	t1, 0(t1)
	add	t1, t1, s9
	ld	t1, 0(t1)
	add	t1, t1, s10
	ld	s11, 0(t1)
	beq	s11, s2, .LBB8_240
# %bb.247:                              #   in Loop: Header=BB8_243 Depth=2
	lw	t4, 0(a2)
	blt	t4, a5, .LBB8_249
# %bb.248:                              #   in Loop: Header=BB8_243 Depth=2
	mv	t4, a5
.LBB8_249:                              #   in Loop: Header=BB8_243 Depth=2
	li	a5, 256
	blez	t4, .LBB8_253
# %bb.250:                              #   in Loop: Header=BB8_243 Depth=2
	li	t2, 0
	slli	t4, t4, 2
	ld	s8, 80(sp)                      # 8-byte Folded Reload
.LBB8_251:                              #   Parent Loop BB8_238 Depth=1
                                        #     Parent Loop BB8_243 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	t1, 0(s8)
	beq	t1, s11, .LBB8_254
# %bb.252:                              #   in Loop: Header=BB8_251 Depth=3
	addi	t2, t2, 4
	addi	s8, s8, 8
	bne	t4, t2, .LBB8_251
.LBB8_253:                              #   in Loop: Header=BB8_243 Depth=2
	li	s11, 0
	j	.LBB8_259
.LBB8_254:                              #   in Loop: Header=BB8_243 Depth=2
	addi	a5, sp, 880
	bnez	t5, .LBB8_256
# %bb.255:                              #   in Loop: Header=BB8_243 Depth=2
	addi	a5, sp, 88
.LBB8_256:                              #   in Loop: Header=BB8_243 Depth=2
	addi	t4, sp, 1012
	bnez	t5, .LBB8_258
# %bb.257:                              #   in Loop: Header=BB8_243 Depth=2
	addi	t4, sp, 220
.LBB8_258:                              #   in Loop: Header=BB8_243 Depth=2
	add	a5, a5, t2
	lw	a5, 0(a5)
	add	t2, t4, t2
	lw	s11, 0(t2)
.LBB8_259:                              #   in Loop: Header=BB8_243 Depth=2
	ld	t2, 40(ra)
	lw	t1, 4(s6)
	lw	t4, 4(t2)
	ld	t5, 16(a0)
	sub	s8, t1, t4
	ld	t4, 32(ra)
	ld	ra, 0(t5)
	sraiw	s0, s8, 31
	xor	s8, s8, s0
	lw	a7, 4(t4)
	add	ra, ra, s5
	ld	ra, 0(ra)
	subw	s0, s8, s0
	sub	a7, t1, a7
	sraiw	t1, a7, 31
	add	ra, ra, s10
	ld	ra, 0(ra)
	xor	a7, a7, t1
	subw	a7, a7, t1
	slli	s8, s4, 3
	bgeu	a7, s0, .LBB8_261
# %bb.260:                              #   in Loop: Header=BB8_243 Depth=2
	lui	a7, 2
	add	t4, t4, a7
	ld	a7, -1688(t4)
	j	.LBB8_262
.LBB8_261:                              #   in Loop: Header=BB8_243 Depth=2
	lui	a7, 2
	add	t2, t2, a7
	ld	a7, -1688(t2)
.LBB8_262:                              #   in Loop: Header=BB8_243 Depth=2
	ld	a7, 0(a7)
	add	a7, a7, s8
	ld	a7, 0(a7)
	add	a7, a7, s10
	ld	a7, 0(a7)
	lh	t1, 0(a7)
	mul	t1, a5, t1
	addi	t1, t1, 32
	srli	t1, t1, 6
	sh	t1, 0(ra)
	lh	t1, 2(a7)
	ld	t2, 8(t5)
	mul	a5, a5, t1
	addi	a5, a5, 32
	srli	a5, a5, 6
	add	t2, t2, s5
	ld	t1, 0(t2)
	sh	a5, 2(ra)
	lh	t2, 0(a7)
	add	t1, t1, s10
	ld	a5, 0(t1)
	mul	t1, s11, t2
	addi	t1, t1, 32
	srli	t1, t1, 6
	sh	t1, 0(a5)
	lh	a7, 2(a7)
	mul	a7, s11, a7
	addi	a7, a7, 32
	srliw	t2, a7, 6
	j	.LBB8_241
.LBB8_263:
	ld	t4, 8(sp)                       # 8-byte Folded Reload
	bgtz	t5, .LBB8_221
.LBB8_264:
	ld	ra, 1768(sp)                    # 8-byte Folded Reload
	ld	s0, 1760(sp)                    # 8-byte Folded Reload
	ld	s1, 1752(sp)                    # 8-byte Folded Reload
	ld	s2, 1744(sp)                    # 8-byte Folded Reload
	ld	s3, 1736(sp)                    # 8-byte Folded Reload
	ld	s4, 1728(sp)                    # 8-byte Folded Reload
	ld	s5, 1720(sp)                    # 8-byte Folded Reload
	ld	s6, 1712(sp)                    # 8-byte Folded Reload
	ld	s7, 1704(sp)                    # 8-byte Folded Reload
	ld	s8, 1696(sp)                    # 8-byte Folded Reload
	ld	s9, 1688(sp)                    # 8-byte Folded Reload
	ld	s10, 1680(sp)                   # 8-byte Folded Reload
	ld	s11, 1672(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1776
	ret
.LBB8_265:
	ld	a3, 124(a7)
	ld	a4, 116(a7)
.LBB8_266:
	sd	zero, 32(sp)                    # 8-byte Folded Spill
	sd	a3, 64(sp)                      # 8-byte Folded Spill
	sd	a4, 80(sp)                      # 8-byte Folded Spill
	sd	a3, 72(sp)                      # 8-byte Folded Spill
	j	.LBB8_81
.Lfunc_end8:
	.size	EPZSSliceInit, .Lfunc_end8-EPZSSliceInit
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	EPZSPelBlockMotionSearch        # -- Begin function EPZSPelBlockMotionSearch
	.p2align	2
	.type	EPZSPelBlockMotionSearch,@function
EPZSPelBlockMotionSearch:               # @EPZSPelBlockMotionSearch
# %bb.0:
	addi	sp, sp, -608
	sd	ra, 600(sp)                     # 8-byte Folded Spill
	sd	s0, 592(sp)                     # 8-byte Folded Spill
	sd	s1, 584(sp)                     # 8-byte Folded Spill
	sd	s2, 576(sp)                     # 8-byte Folded Spill
	sd	s3, 568(sp)                     # 8-byte Folded Spill
	sd	s4, 560(sp)                     # 8-byte Folded Spill
	sd	s5, 552(sp)                     # 8-byte Folded Spill
	sd	s6, 544(sp)                     # 8-byte Folded Spill
	sd	s7, 536(sp)                     # 8-byte Folded Spill
	sd	s8, 528(sp)                     # 8-byte Folded Spill
	sd	s9, 520(sp)                     # 8-byte Folded Spill
	sd	s10, 512(sp)                    # 8-byte Folded Spill
	sd	s11, 504(sp)                    # 8-byte Folded Spill
	mv	t6, a6
	sd	a5, 136(sp)                     # 8-byte Folded Spill
	sd	a4, 128(sp)                     # 8-byte Folded Spill
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	addw	a0, a3, a2
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	slli	s7, a0, 3
	lui	a0, %hi(listX)
	addi	a0, a0, %lo(listX)
	add	a0, a0, s7
	ld	t3, 0(a0)
	ld	t1, 632(sp)
	ld	s0, 608(sp)
	slli	s4, a1, 3
	add	t3, t3, s4
	lui	t5, 2
	lui	a0, %hi(input)
	lui	a4, %hi(img)
	ld	t4, %lo(img)(a4)
	ld	a0, %lo(input)(a0)
	lui	a4, %hi(active_pps)
	ld	a5, %lo(active_pps)(a4)
	lw	a6, 172(t4)
	slli	a4, s0, 3
	sd	a4, 16(sp)                      # 8-byte Folded Spill
	add	a4, a0, a4
	lw	t2, 192(a5)
	sd	a7, 272(sp)                     # 8-byte Folded Spill
	subw	s2, a7, a6
	slli	s1, s0, 2
	lui	t0, %hi(medthres)
	addi	t0, t0, %lo(medthres)
	li	a6, 1
	bnez	t2, .LBB9_2
# %bb.1:
	lw	a5, 196(a5)
	addi	a5, a5, -1
	seqz	a6, a5
.LBB9_2:
	ld	a5, 640(sp)
	sd	a5, 192(sp)                     # 8-byte Folded Spill
	lw	a5, 88(a4)
	lw	a7, 84(a4)
	ld	a4, 0(t3)
	addiw	s3, t5, -1800
	lui	t2, %hi(EPZSDistortion)
	ld	t2, %lo(EPZSDistortion)(t2)
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	slliw	s5, s2, 16
	sd	t1, 176(sp)                     # 8-byte Folded Spill
	lh	t1, 0(t1)
	sd	t1, 232(sp)                     # 8-byte Folded Spill
	sd	s1, 96(sp)                      # 8-byte Folded Spill
	add	s1, t0, s1
	add	t2, t2, s7
	ld	t2, 0(t2)
	srliw	t0, t6, 2
	addiw	t1, s0, -1
	slli	s8, t1, 3
	add	t2, t2, s8
	lui	t1, %hi(searchPattern)
	beqz	a6, .LBB9_5
# %bb.3:
	lw	a6, 1912(a0)
	beqz	a6, .LBB9_5
# %bb.4:
	lui	a6, 2
	addiw	t3, a6, -1752
	j	.LBB9_6
.LBB9_5:
	lui	a6, 2
	addiw	t3, a6, -1760
.LBB9_6:
	lw	a6, 168(t4)
	sd	a6, 56(sp)                      # 8-byte Folded Spill
	ld	t4, 624(sp)
	ld	s2, 616(sp)
	slliw	s10, a7, 16
	slli	a7, a7, 48
	slli	s9, a5, 48
	slli	a5, t6, 2
	ld	a6, 272(sp)                     # 8-byte Folded Reload
	slli	a6, a6, 2
	ld	t5, 192(sp)                     # 8-byte Folded Reload
	lh	t5, 0(t5)
	sd	t5, 240(sp)                     # 8-byte Folded Spill
	add	s3, a4, s3
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sraiw	s5, s5, 18
	ld	t5, 232(sp)                     # 8-byte Folded Reload
	addw	s6, t5, t6
	lw	t5, 0(s1)
	sd	t5, 216(sp)                     # 8-byte Folded Spill
	ld	t2, 0(t2)
	sd	t2, 112(sp)                     # 8-byte Folded Spill
	add	a4, a4, t3
	ld	a4, 0(a4)
	addi	a0, a0, 2047
	lw	a0, 1033(a0)
	ld	t1, %lo(searchPattern)(t1)
	sd	t1, 208(sp)                     # 8-byte Folded Spill
	lui	t1, %hi(ref_pic)
	sd	a4, %lo(ref_pic)(t1)
	slli	t0, t0, 48
	sd	a3, 168(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB9_8
# %bb.7:
	lui	a0, %hi(EPZSMotion)
	ld	a0, %lo(EPZSMotion)(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	add	a0, a0, s8
	ld	a0, 0(a0)
	slli	a4, s5, 3
	add	a0, a0, a4
	ld	a0, 0(a0)
	srai	a4, t0, 48
	slli	a4, a4, 3
	add	a0, a0, a4
	ld	a0, 0(a0)
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	j	.LBB9_9
.LBB9_8:
	sd	zero, 80(sp)                    # 8-byte Folded Spill
.LBB9_9:
	ld	a0, 648(sp)
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	ld	a0, 664(sp)
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	srai	a7, a7, 48
	sraiw	a0, s10, 18
	sd	a0, 296(sp)                     # 8-byte Folded Spill
	srai	a0, s9, 48
	sd	a0, 304(sp)                     # 8-byte Folded Spill
	add	a3, a5, s2
	sd	a3, 256(sp)                     # 8-byte Folded Spill
	add	a6, a6, t4
	sd	a6, 248(sp)                     # 8-byte Folded Spill
	lw	a3, 0(s3)
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	addw	s2, a4, a0
	lw	a4, 4(s3)
	lui	a0, %hi(img_width)
	sh	a3, %lo(img_width)(a0)
	lui	a0, %hi(img_height)
	sh	a4, %lo(img_height)(a0)
	lui	a0, %hi(UMVLineX)
	addi	a0, a0, %lo(UMVLineX)
	bltz	s6, .LBB9_15
# %bb.10:
	slli	a3, a3, 48
	srai	a3, a3, 48
	sub	a3, a3, a7
	bge	s6, a3, .LBB9_15
# %bb.11:
	bltz	s2, .LBB9_15
# %bb.12:
	slli	a4, a4, 48
	srai	a4, a4, 48
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	sub	a0, a4, a0
	slt	a0, s2, a0
	andi	a0, a0, 1
	bnez	a0, .LBB9_14
# %bb.13:
	lui	a0, %hi(UMVLineX)
	addi	a0, a0, %lo(UMVLineX)
	j	.LBB9_15
.LBB9_14:
	lui	a0, %hi(FastLineX)
	addi	a0, a0, %lo(FastLineX)
.LBB9_15:
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	sd	s9, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	a2, 224(sp)                     # 8-byte Folded Spill
	sd	s4, 160(sp)                     # 8-byte Folded Spill
	sd	s1, 152(sp)                     # 8-byte Folded Spill
	sd	a7, 288(sp)                     # 8-byte Folded Spill
	sd	t0, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 120(sp)                     # 8-byte Folded Spill
	sd	t6, 184(sp)                     # 8-byte Folded Spill
	sd	a1, 144(sp)                     # 8-byte Folded Spill
	lui	s0, %hi(EPZSMap)
	ld	a1, %lo(EPZSMap)(s0)
	lui	s7, %hi(get_ref_line)
	sd	a0, %lo(get_ref_line)(s7)
	ld	a0, 0(a1)
	ld	s1, 200(sp)                     # 8-byte Folded Reload
	slli	a1, s1, 1
	addi	a1, a1, 1
	mulw	a2, a1, a1
	li	a1, 0
	call	memset
	ld	a0, %lo(EPZSMap)(s0)
	slli	a1, s1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a0, a0, s1
	li	a1, 1
	sb	a1, 0(a0)
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s6, 2
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s2, 2
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	t4, a0, 16
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	addi	a1, a0, -1
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	mv	s3, s5
	blez	a0, .LBB9_23
# %bb.16:
	li	s5, 0
	slli	a0, a1, 32
	srli	a0, a0, 29
	addi	s9, a0, 8
	lui	s10, %hi(ref_pic)
	lui	s4, %hi(img_height)
	lui	s11, %hi(img_width)
	lui	s1, %hi(byte_abs)
	lui	s0, 524288
	addiw	s0, s0, -1
	ld	a0, 288(sp)                     # 8-byte Folded Reload
.LBB9_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_19 Depth 2
	mv	s8, t4
	ld	a6, %lo(get_ref_line)(s7)
	ld	a1, %lo(ref_pic)(s10)
	lh	a4, %lo(img_height)(s4)
	lh	a5, %lo(img_width)(s11)
	addw	a2, s2, s5
	mv	a3, s6
	jalr	a6
	ld	a1, 296(sp)                     # 8-byte Folded Reload
	blez	a1, .LBB9_21
# %bb.18:                               #   in Loop: Header=BB9_17 Depth=1
	slli	a1, s5, 3
	ld	a2, 280(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s1)
	add	a3, a1, s9
	mv	t4, s8
.LBB9_19:                               #   Parent Loop BB9_17 Depth=1
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
	add	a4, a4, t4
	add	a5, a5, a6
	add	a4, a4, a5
	addw	t4, a4, a7
	addi	a1, a1, 8
	addi	a0, a0, 8
	bne	a1, a3, .LBB9_19
# %bb.20:                               #   in Loop: Header=BB9_17 Depth=1
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	bne	t4, s0, .LBB9_22
	j	.LBB9_24
.LBB9_21:                               #   in Loop: Header=BB9_17 Depth=1
	mv	t4, s8
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	beq	s8, s0, .LBB9_24
.LBB9_22:                               #   in Loop: Header=BB9_17 Depth=1
	addi	s5, s5, 1
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	bne	s5, a1, .LBB9_17
	j	.LBB9_24
.LBB9_23:
	ld	a0, 288(sp)                     # 8-byte Folded Reload
.LBB9_24:
	mv	a6, a0
	ld	s5, 144(sp)                     # 8-byte Folded Reload
	ld	t1, 240(sp)                     # 8-byte Folded Reload
	mv	s9, s3
	blez	s5, .LBB9_26
# %bb.25:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 28(a0)
	beqz	a0, .LBB9_40
.LBB9_26:
	ld	a2, 200(sp)                     # 8-byte Folded Reload
	bge	a2, s6, .LBB9_31
# %bb.27:
	lui	a0, %hi(img_width)
	lh	a0, %lo(img_width)(a0)
	add	a1, a6, a2
	subw	a0, a0, a1
	bge	s6, a0, .LBB9_31
# %bb.28:
	bge	a2, s2, .LBB9_31
# %bb.29:
	lui	a0, %hi(img_height)
	lh	a0, %lo(img_height)(a0)
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	subw	a0, a0, a1
	bge	s2, a0, .LBB9_31
# %bb.30:
	lui	a0, %hi(FastLineX)
	addi	a0, a0, %lo(FastLineX)
	j	.LBB9_32
.LBB9_31:
	lui	a0, %hi(UMVLineX)
	addi	a0, a0, %lo(UMVLineX)
.LBB9_32:
	ld	s10, 184(sp)                    # 8-byte Folded Reload
	ld	t3, 232(sp)                     # 8-byte Folded Reload
	ld	s8, 224(sp)                     # 8-byte Folded Reload
	ld	a2, 216(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(get_ref_line)
	sd	a0, %lo(get_ref_line)(a1)
	bge	a2, t4, .LBB9_39
# %bb.33:
	sd	t4, 224(sp)                     # 8-byte Folded Spill
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	subw	a0, s10, a0
	slli	a0, a0, 48
	lui	s4, %hi(img)
	ld	a1, %lo(img)(s4)
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	slli	s3, s3, 48
	srai	s0, a0, 48
	srai	s7, a0, 50
	lw	s1, 136(a1)
	lui	a0, %hi(img_width)
	lh	a2, %lo(img_width)(a0)
	lw	s11, 140(a1)
	lui	a0, %hi(img_height)
	lh	a0, %lo(img_height)(a0)
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	lw	a0, 12(a1)
	srai	s6, s3, 48
	srai	a2, a2, 4
	addi	s2, a2, -1
	li	a3, -1
	addi	a5, sp, 480
	mv	a1, s7
	mv	a2, s9
	li	a4, 0
	mv	s3, a6
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s4)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 456
	mv	a1, s7
	mv	a2, s9
	li	a3, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s4)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 432
	mv	a1, s7
	mv	a2, s9
	mv	a3, s3
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s4)
	lw	a0, 12(a0)
	li	a3, -1
	li	a4, -1
	addi	a5, sp, 408
	mv	a1, s7
	mv	a2, s9
	call	getLuma4x4Neighbour
	sd	s11, 216(sp)                    # 8-byte Folded Spill
	blez	s6, .LBB9_42
# %bb.34:
	li	a0, 7
	ld	s4, 120(sp)                     # 8-byte Folded Reload
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	ld	a7, 88(sp)                      # 8-byte Folded Reload
	blt	a0, s0, .LBB9_43
# %bb.35:
	lui	a0, 128
	ld	a1, 288(sp)                     # 8-byte Folded Reload
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	bne	a2, a0, .LBB9_98
# %bb.36:
	slt	a0, s1, s2
	lui	a1, 256
	ld	a6, 8(sp)                       # 8-byte Folded Reload
	xor	a2, a6, a1
	snez	a2, a2
	or	s11, a2, a0
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	ld	a5, 128(sp)                     # 8-byte Folded Reload
	bne	a6, a1, .LBB9_38
# %bb.37:
	sw	zero, 432(sp)
.LBB9_38:
	ld	s2, 168(sp)                     # 8-byte Folded Reload
	j	.LBB9_46
.LBB9_39:
	lui	a0, 16
	addi	a0, a0, -1
	and	t3, t3, a0
	and	t1, t1, a0
	ld	t2, 176(sp)                     # 8-byte Folded Reload
	ld	a6, 192(sp)                     # 8-byte Folded Reload
	j	.LBB9_220
.LBB9_40:
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	srai	a0, a0, 48
	slli	a0, a0, 2
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	lw	a0, 0(a0)
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a1)
	bge	a0, a1, .LBB9_26
# %bb.41:
	bge	a0, t4, .LBB9_26
	j	.LBB9_226
.LBB9_42:
	slt	a0, s1, s2
	add	s0, s0, s3
	addi	s0, s0, -16
	snez	a1, s0
	or	s11, a1, a0
	ld	s4, 120(sp)                     # 8-byte Folded Reload
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 168(sp)                     # 8-byte Folded Reload
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	ld	a5, 128(sp)                     # 8-byte Folded Reload
	ld	a6, 96(sp)                      # 8-byte Folded Reload
	ld	a7, 88(sp)                      # 8-byte Folded Reload
	j	.LBB9_47
.LBB9_43:
	slt	a0, s1, s2
	ld	a1, 288(sp)                     # 8-byte Folded Reload
	add	s0, s0, a1
	addi	a1, s0, -16
	snez	a1, a1
	li	a2, 16
	or	s11, a1, a0
	bne	s0, a2, .LBB9_45
.LBB9_44:
	sw	zero, 432(sp)
.LBB9_45:
	ld	s2, 168(sp)                     # 8-byte Folded Reload
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	ld	a5, 128(sp)                     # 8-byte Folded Reload
.LBB9_46:
	ld	a6, 96(sp)                      # 8-byte Folded Reload
.LBB9_47:
	lw	a2, 480(sp)
	lui	a1, 524288
	addiw	a1, a1, -1
	mv	a0, a1
	beqz	a2, .LBB9_49
# %bb.48:
	srai	a0, a3, 48
	ld	a2, 296(sp)                     # 8-byte Folded Reload
	sub	a0, a0, a2
	slli	a0, a0, 2
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	add	a0, a2, a0
	lw	a0, 0(a0)
.LBB9_49:
	lw	a2, 456(sp)
	beqz	a2, .LBB9_51
# %bb.50:
	srai	a1, a3, 48
	slli	a1, a1, 2
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	lw	a1, 0(a1)
.LBB9_51:
	lw	a2, 432(sp)
	beqz	a2, .LBB9_65
# %bb.52:
	srai	a2, a3, 48
	ld	a3, 296(sp)                     # 8-byte Folded Reload
	add	a2, a3, a2
	slli	a2, a2, 2
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a1, a2, .LBB9_54
.LBB9_53:
	mv	a1, a2
.LBB9_54:
	blt	a0, a1, .LBB9_56
# %bb.55:
	mv	a0, a1
.LBB9_56:
	lui	a1, %hi(minthres)
	addi	a1, a1, %lo(minthres)
	add	a1, a1, a6
	lw	a1, 0(a1)
	blt	a1, a0, .LBB9_58
# %bb.57:
	mv	a0, a1
.LBB9_58:
	lui	a1, %hi(maxthres)
	addi	a1, a1, %lo(maxthres)
	add	a1, a1, a6
	lw	a1, 0(a1)
	blt	a0, a1, .LBB9_60
# %bb.59:
	mv	a0, a1
.LBB9_60:
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	lw	a1, 0(a1)
	mv	a2, a1
	blt	a0, a1, .LBB9_62
# %bb.61:
	mv	a2, a0
.LBB9_62:
	srai	s3, a7, 50
	slli	a0, a2, 3
	add	a0, a0, a2
	slli	a1, a1, 1
	add	s1, a0, a1
	slli	a0, s8, 3
	add	a1, a5, a0
	ld	a7, 0(a1)
	lwu	a1, 500(sp)
	add	a0, a4, a0
	lwu	a2, 496(sp)
	ld	t2, 0(a0)
	slli	a1, a1, 32
	lwu	a0, 492(sp)
	or	a1, a1, a2
	lwu	a2, 488(sp)
	sd	a1, 400(sp)
	slli	a0, a0, 32
	lwu	a1, 484(sp)
	or	a0, a0, a2
	lwu	a2, 480(sp)
	sd	a0, 392(sp)
	slli	a1, a1, 32
	lwu	a0, 476(sp)
	or	a1, a1, a2
	lwu	a2, 472(sp)
	sd	a1, 384(sp)
	slli	a0, a0, 32
	lwu	a1, 468(sp)
	or	a0, a0, a2
	lwu	a2, 464(sp)
	sd	a0, 376(sp)
	slli	a1, a1, 32
	lwu	a0, 460(sp)
	or	a1, a1, a2
	lwu	a2, 456(sp)
	sd	a1, 368(sp)
	slli	a0, a0, 32
	lwu	a1, 452(sp)
	or	a0, a0, a2
	lwu	a2, 448(sp)
	sd	a0, 360(sp)
	slli	a1, a1, 32
	lwu	a0, 444(sp)
	or	a1, a1, a2
	lwu	a2, 440(sp)
	sd	a1, 352(sp)
	slli	a0, a0, 32
	lwu	a1, 436(sp)
	or	a0, a0, a2
	sd	a0, 344(sp)
	lwu	a0, 432(sp)
	slli	a1, a1, 32
	lwu	a2, 428(sp)
	lwu	a3, 424(sp)
	or	a0, a1, a0
	sd	a0, 336(sp)
	slli	a2, a2, 32
	or	a2, a2, a3
	lwu	a0, 420(sp)
	lwu	a1, 416(sp)
	lui	s0, %hi(predictor)
	sd	a2, 328(sp)
	slli	a0, a0, 32
	or	a0, a0, a1
	lwu	a1, 412(sp)
	lwu	a2, 408(sp)
	sd	a0, 320(sp)
	ld	t3, %lo(predictor)(s0)
	slli	a1, a1, 32
	or	a1, a1, a2
	sd	a1, 312(sp)
	addi	a0, sp, 384
	addi	a1, sp, 360
	addi	a2, sp, 336
	addi	a3, sp, 312
	mv	a4, s8
	mv	a5, s2
	mv	a6, s5
	call	EPZSSpatialPredictors
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a2, 1033(a1)
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 128(sp)                     # 8-byte Folded Spill
	beqz	a2, .LBB9_66
# %bb.63:
	lui	a2, %hi(EPZSMotion)
	ld	a2, %lo(EPZSMotion)(a2)
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	add	a2, a2, a3
	ld	a2, 0(a2)
	ld	a3, 160(sp)                     # 8-byte Folded Reload
	add	a2, a2, a3
	ld	a2, 0(a2)
	lui	a3, %hi(img_width)
	lh	a5, %lo(img_width)(a3)
	ld	a4, %lo(predictor)(s0)
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	add	a2, a2, a3
	ld	a2, 0(a2)
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	srai	a3, a3, 48
	ld	t2, 176(sp)                     # 8-byte Folded Reload
	ld	t3, 232(sp)                     # 8-byte Folded Reload
	blez	a3, .LBB9_67
# %bb.64:
	slli	a6, s9, 3
	add	a6, a2, a6
	ld	a6, 0(a6)
	ld	a7, 296(sp)                     # 8-byte Folded Reload
	sub	a7, a3, a7
	slli	a7, a7, 3
	add	a6, a6, a7
	ld	a6, 0(a6)
	lh	t0, 0(a6)
	ld	a4, 8(a4)
	lh	a6, 2(a6)
	sw	t0, 80(a4)
	sw	a6, 84(a4)
	li	a7, 1
	ld	ra, 288(sp)                     # 8-byte Folded Reload
	bnez	t0, .LBB9_69
	j	.LBB9_68
.LBB9_65:
	lui	a2, 524288
	addiw	a2, a2, -1
	bge	a1, a2, .LBB9_53
	j	.LBB9_54
.LBB9_66:
	li	s3, 5
	ld	t2, 176(sp)                     # 8-byte Folded Reload
	ld	t3, 232(sp)                     # 8-byte Folded Reload
	ld	t1, 240(sp)                     # 8-byte Folded Reload
	ld	t0, 200(sp)                     # 8-byte Folded Reload
	ld	ra, 288(sp)                     # 8-byte Folded Reload
	j	.LBB9_78
.LBB9_67:
	ld	a4, 8(a4)
	li	a6, 0
	sw	zero, 80(a4)
	sw	zero, 84(a4)
	ld	ra, 288(sp)                     # 8-byte Folded Reload
.LBB9_68:
	snez	a7, a6
.LBB9_69:
	srai	a6, a5, 2
	addi	a5, a7, 5
	slli	a7, a5, 4
	add	a7, a4, a7
	mv	t0, s9
	bgtz	s9, .LBB9_71
# %bb.70:
	li	t0, 4
.LBB9_71:
	sub	t0, t0, s3
	slli	t0, t0, 3
	add	t0, a2, t0
	ld	t0, 0(t0)
	slli	t1, a3, 3
	add	t0, t0, t1
	ld	t0, 0(t0)
	lh	t1, 0(t0)
	lh	t0, 2(t0)
	sw	t1, 0(a7)
	sw	t0, 4(a7)
	or	a7, t1, t0
	slli	a7, a7, 48
	srli	a7, a7, 48
	snez	a7, a7
	add	a5, a5, a7
	ld	a7, 296(sp)                     # 8-byte Folded Reload
	add	a3, a7, a3
	slli	a7, a5, 4
	bge	a3, a6, .LBB9_75
# %bb.72:
	add	a4, a4, a7
	mv	a6, s9
	ld	t1, 240(sp)                     # 8-byte Folded Reload
	ld	t0, 200(sp)                     # 8-byte Folded Reload
	bgtz	s9, .LBB9_74
# %bb.73:
	li	a6, 4
.LBB9_74:
	sub	a6, a6, s3
	slli	a6, a6, 3
	add	a2, a2, a6
	ld	a2, 0(a2)
	slli	a3, a3, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	lh	a6, 0(a2)
	lh	a2, 2(a2)
	sw	a6, 0(a4)
	sw	a2, 4(a4)
	li	a3, 1
	bnez	a6, .LBB9_77
	j	.LBB9_76
.LBB9_75:
	li	a2, 0
	add	a4, a4, a7
	sw	zero, 0(a4)
	sw	zero, 4(a4)
	ld	t1, 240(sp)                     # 8-byte Folded Reload
	ld	t0, 200(sp)                     # 8-byte Folded Reload
.LBB9_76:
	snez	a3, a2
.LBB9_77:
	add	s3, a3, a5
.LBB9_78:
	lw	a3, 1029(a1)
	sraiw	a2, s1, 3
	sd	a2, 136(sp)                     # 8-byte Folded Spill
	slli	t5, s8, 3
	beqz	a3, .LBB9_107
# %bb.79:
	mv	a2, s11
	mv	s11, s4
	li	t4, 1
	ld	a6, 272(sp)                     # 8-byte Folded Reload
	slli	a6, a6, 46
	lui	a3, %hi(predictor)
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	slli	a4, a4, 12
	lui	a5, %hi(mv_scale)
	addi	a5, a5, %lo(mv_scale)
	add	a4, a5, a4
	slli	a5, s5, 7
	add	a4, a4, a5
	lui	a7, %hi(EPZSCo_located)
	li	a5, 2
	li	t0, 24
	beq	s2, a5, .LBB9_81
# %bb.80:
	li	t0, 32
.LBB9_81:
	mv	s4, s7
	ld	a5, %lo(predictor)(a3)
	lw	a3, 0(a4)
	ld	t1, %lo(EPZSCo_located)(a7)
	slli	a4, t4, 11
	ld	t3, 104(sp)                     # 8-byte Folded Reload
	srai	t3, t3, 48
	srai	a7, a6, 48
	bnez	s2, .LBB9_83
# %bb.82:
	li	t0, 16
.LBB9_83:
	add	t0, t1, t0
	ld	a6, 0(t0)
	mv	a0, t5
	add	a6, a6, t5
	ld	t0, 0(a6)
	slli	t1, a7, 3
	add	t1, t0, t1
	ld	t5, 0(t1)
	slli	a6, t3, 3
	add	t2, t5, a6
	ld	s0, 0(t2)
	lh	s1, 0(s0)
	lw	t6, 480(sp)
	lw	t2, 456(sp)
	mul	s1, a3, s1
	add	s1, s1, a4
	ld	a5, 8(a5)
	sraiw	s2, s1, 12
	lh	s0, 2(s0)
	mv	s7, s3
	slli	s3, s3, 4
	add	s3, a5, s3
	sw	s2, 0(s3)
	mul	s0, a3, s0
	add	s0, s0, a4
	sraiw	s2, s0, 12
	sw	s2, 4(s3)
	or	s0, s1, s0
	srliw	s0, s0, 12
	snez	s0, s0
	add	s3, s7, s0
	blt	t4, s5, .LBB9_99
# %bb.84:
	ld	t4, 224(sp)                     # 8-byte Folded Reload
	ld	s0, 136(sp)                     # 8-byte Folded Reload
	mv	s7, s4
	bge	s0, t4, .LBB9_97
# %bb.85:
	ld	t4, 64(sp)                      # 8-byte Folded Reload
	srai	t4, t4, 4
	addi	t4, t4, -1
	ld	s0, 304(sp)                     # 8-byte Folded Reload
	add	s6, s6, s0
	ld	s0, 216(sp)                     # 8-byte Folded Reload
	slt	t4, s0, t4
	addi	s6, s6, -16
	xori	t4, t4, 1
	seqz	s0, s6
	and	t4, s0, t4
	mv	s4, s11
	beqz	t6, .LBB9_90
# %bb.86:
	addi	t6, t3, -1
	slli	t6, t6, 3
	add	s0, t5, t6
	ld	s0, 0(s0)
	lh	s1, 0(s0)
	mul	s1, a3, s1
	add	s1, s1, a4
	sraiw	s2, s1, 12
	lh	s0, 2(s0)
	mv	s6, s3
	slli	s3, s3, 4
	add	s3, a5, s3
	sw	s2, 0(s3)
	mul	s0, a3, s0
	add	s0, s0, a4
	sraiw	s2, s0, 12
	sw	s2, 4(s3)
	or	s0, s1, s0
	srliw	s0, s0, 12
	snez	s0, s0
	add	s3, s6, s0
	beqz	t2, .LBB9_88
# %bb.87:
	ld	s0, -8(t1)
	add	s0, s0, t6
	ld	s0, 0(s0)
	lh	s1, 0(s0)
	mul	s1, a3, s1
	add	s1, s1, a4
	sraiw	s2, s1, 12
	lh	s0, 2(s0)
	mv	s6, s3
	slli	s3, s3, 4
	add	s3, a5, s3
	sw	s2, 0(s3)
	mul	s0, a3, s0
	add	s0, s0, a4
	sraiw	s2, s0, 12
	sw	s2, 4(s3)
	or	s0, s1, s0
	srliw	s0, s0, 12
	snez	s0, s0
	add	s3, s6, s0
.LBB9_88:
	bnez	t4, .LBB9_90
# %bb.89:
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	add	s0, s0, a7
	slli	s0, s0, 3
	add	s0, t0, s0
	ld	s0, 0(s0)
	add	t6, s0, t6
	ld	t6, 0(t6)
	lh	s0, 0(t6)
	mul	s0, a3, s0
	add	s0, s0, a4
	sraiw	s1, s0, 12
	lh	t6, 2(t6)
	slli	s2, s3, 4
	add	s2, a5, s2
	sw	s1, 0(s2)
	mul	t6, a3, t6
	add	t6, t6, a4
	sraiw	s1, t6, 12
	sw	s1, 4(s2)
	or	t6, s0, t6
	srliw	t6, t6, 12
	snez	t6, t6
	add	s3, s3, t6
.LBB9_90:
	beqz	t2, .LBB9_92
# %bb.91:
	ld	t6, -8(t1)
	add	t6, t6, a6
	ld	t6, 0(t6)
	lh	s0, 0(t6)
	mul	s0, a3, s0
	add	s0, s0, a4
	sraiw	s1, s0, 12
	lh	t6, 2(t6)
	slli	s2, s3, 4
	add	s2, a5, s2
	sw	s1, 0(s2)
	mul	t6, a3, t6
	add	t6, t6, a4
	sraiw	s1, t6, 12
	sw	s1, 4(s2)
	or	t6, s0, t6
	srliw	t6, t6, 12
	snez	t6, t6
	add	s3, s3, t6
.LBB9_92:
	ld	s2, 168(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB9_101
# %bb.93:
	ld	t6, 296(sp)                     # 8-byte Folded Reload
	add	t3, t6, t3
	slli	t3, t3, 3
	add	t5, t5, t3
	ld	t5, 0(t5)
	lh	t6, 0(t5)
	mul	t6, a3, t6
	add	t6, t6, a4
	sraiw	s0, t6, 12
	lh	t5, 2(t5)
	slli	s1, s3, 4
	add	s1, a5, s1
	sw	s0, 0(s1)
	mul	t5, a3, t5
	add	t5, t5, a4
	sraiw	s0, t5, 12
	sw	s0, 4(s1)
	or	t5, t6, t5
	srliw	t5, t5, 12
	snez	t5, t5
	add	s3, s3, t5
	beqz	t2, .LBB9_95
# %bb.94:
	ld	t1, -8(t1)
	add	t1, t1, t3
	ld	t1, 0(t1)
	lh	t2, 0(t1)
	mul	t2, a3, t2
	add	t2, t2, a4
	sraiw	t5, t2, 12
	lh	t1, 2(t1)
	slli	t6, s3, 4
	add	t6, a5, t6
	sw	t5, 0(t6)
	mul	t1, a3, t1
	add	t1, t1, a4
	sraiw	t5, t1, 12
	sw	t5, 4(t6)
	or	t1, t2, t1
	srliw	t1, t1, 12
	snez	t1, t1
	add	s3, s3, t1
.LBB9_95:
	mv	t5, a0
	beqz	t4, .LBB9_103
# %bb.96:
	ld	t2, 176(sp)                     # 8-byte Folded Reload
	ld	t3, 232(sp)                     # 8-byte Folded Reload
	j	.LBB9_106
.LBB9_97:
	ld	t2, 176(sp)                     # 8-byte Folded Reload
	ld	t3, 232(sp)                     # 8-byte Folded Reload
	ld	t1, 240(sp)                     # 8-byte Folded Reload
	ld	t0, 200(sp)                     # 8-byte Folded Reload
	ld	s2, 168(sp)                     # 8-byte Folded Reload
	j	.LBB9_100
.LBB9_98:
	slt	a0, s1, s2
	add	s0, s0, a1
	addi	a1, s0, -8
	snez	a1, a1
	li	a2, 8
	or	s11, a1, a0
	beq	s0, a2, .LBB9_44
	j	.LBB9_45
.LBB9_99:
	ld	t2, 176(sp)                     # 8-byte Folded Reload
	ld	t3, 232(sp)                     # 8-byte Folded Reload
	ld	t1, 240(sp)                     # 8-byte Folded Reload
	ld	t0, 200(sp)                     # 8-byte Folded Reload
	ld	t4, 224(sp)                     # 8-byte Folded Reload
	ld	s2, 168(sp)                     # 8-byte Folded Reload
	mv	s7, s4
.LBB9_100:
	mv	s4, s11
	mv	t5, a0
	j	.LBB9_108
.LBB9_101:
	beqz	t4, .LBB9_104
# %bb.102:
	ld	t2, 176(sp)                     # 8-byte Folded Reload
	ld	t3, 232(sp)                     # 8-byte Folded Reload
	ld	t1, 240(sp)                     # 8-byte Folded Reload
	ld	t0, 200(sp)                     # 8-byte Folded Reload
	ld	t4, 224(sp)                     # 8-byte Folded Reload
	mv	t5, a0
	j	.LBB9_108
.LBB9_103:
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	add	a7, a0, a7
	slli	a7, a7, 3
	add	a7, t0, a7
	ld	a7, 0(a7)
	add	t3, a7, t3
	ld	t0, 0(t3)
	lh	t1, 0(t0)
	mul	t1, a3, t1
	add	t1, t1, a4
	sraiw	t2, t1, 12
	lh	t0, 2(t0)
	slli	t3, s3, 4
	add	t3, a5, t3
	sw	t2, 0(t3)
	mul	t0, a3, t0
	add	t0, t0, a4
	sraiw	t2, t0, 12
	sw	t2, 4(t3)
	or	t0, t1, t0
	srliw	t0, t0, 12
	snez	t0, t0
	add	s3, s3, t0
	ld	t2, 176(sp)                     # 8-byte Folded Reload
	ld	t3, 232(sp)                     # 8-byte Folded Reload
	j	.LBB9_105
.LBB9_104:
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	add	a7, a2, a7
	slli	a7, a7, 3
	add	a7, t0, a7
	ld	a7, 0(a7)
	ld	t2, 176(sp)                     # 8-byte Folded Reload
	ld	t3, 232(sp)                     # 8-byte Folded Reload
	mv	t5, a0
.LBB9_105:
	add	a6, a7, a6
	ld	a6, 0(a6)
	lh	a7, 0(a6)
	mul	a7, a3, a7
	add	a7, a7, a4
	sraiw	t0, a7, 12
	lh	a6, 2(a6)
	slli	t1, s3, 4
	add	a5, a5, t1
	sw	t0, 0(a5)
	mul	a3, a3, a6
	add	a3, a3, a4
	sraiw	a4, a3, 12
	sw	a4, 4(a5)
	or	a3, a7, a3
	srliw	a3, a3, 12
	snez	a3, a3
	add	s3, s3, a3
.LBB9_106:
	ld	t1, 240(sp)                     # 8-byte Folded Reload
	ld	t0, 200(sp)                     # 8-byte Folded Reload
.LBB9_107:
	ld	t4, 224(sp)                     # 8-byte Folded Reload
.LBB9_108:
	ld	a5, 208(sp)                     # 8-byte Folded Reload
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	bge	a3, t4, .LBB9_127
# %bb.109:
	li	a3, 1
	blt	a3, s5, .LBB9_111
# %bb.110:
	li	a3, 5
	blt	s4, a3, .LBB9_113
.LBB9_111:
	li	a3, 2
	blt	a3, s5, .LBB9_127
# %bb.112:
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	lw	a3, 28(a3)
	or	a3, a3, s2
	beqz	a3, .LBB9_127
.LBB9_113:
	lw	a1, 1025(a1)
	li	a3, 1
	bge	a3, a1, .LBB9_118
.LBB9_114:
	li	a1, 4
	blt	a1, s4, .LBB9_120
# %bb.115:
	li	a1, 3
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	bne	a0, a1, .LBB9_120
# %bb.116:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 28(a0)
	or	a0, a0, s2
	snez	a0, a0
	addi	a0, a0, 1
	blt	s5, a0, .LBB9_121
# %bb.117:
	lui	a0, %hi(window_predictor)
	addi	a0, a0, %lo(window_predictor)
	j	.LBB9_122
.LBB9_118:
	beqz	a1, .LBB9_127
# %bb.119:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a1, 24(a1)
	bnez	a1, .LBB9_127
	j	.LBB9_114
.LBB9_120:
	lui	a0, %hi(window_predictor)
	ld	a3, %lo(window_predictor)(a0)
	ld	a6, 192(sp)                     # 8-byte Folded Reload
	j	.LBB9_123
.LBB9_121:
	lui	a0, %hi(window_predictor_extended)
	addi	a0, a0, %lo(window_predictor_extended)
.LBB9_122:
	ld	a6, 192(sp)                     # 8-byte Folded Reload
	ld	a3, 0(a0)
.LBB9_123:
	lw	a5, 0(a3)
	blez	a5, .LBB9_126
# %bb.124:
	lui	a0, %hi(predictor)
	ld	a1, %lo(predictor)(a0)
	lh	a0, 0(t2)
	ld	a4, 8(a1)
	lh	a1, 0(a6)
	ld	a6, 8(a3)
	slli	a3, s3, 4
	add	a3, a3, a4
	addi	a3, a3, 4
	addi	a4, a6, 4
	addw	s3, s3, a5
	slli	a5, a5, 4
	add	a5, a3, a5
.LBB9_125:                              # =>This Inner Loop Header: Depth=1
	lw	a6, -4(a4)
	lw	a7, 0(a4)
	add	a6, a6, a0
	sw	a6, -4(a3)
	add	a7, a7, a1
	sw	a7, 0(a3)
	addi	a3, a3, 16
	addi	a4, a4, 16
	bne	a3, a5, .LBB9_125
.LBB9_126:
	ld	a5, 208(sp)                     # 8-byte Folded Reload
.LBB9_127:
	beqz	s5, .LBB9_130
# %bb.128:
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	slt	a0, a0, t4
	sgtz	a1, s5
	and	a0, a1, a0
	bnez	a0, .LBB9_130
# %bb.129:
	ld	a6, 192(sp)                     # 8-byte Folded Reload
	j	.LBB9_138
.LBB9_130:
	lui	a0, %hi(img)
	ld	a3, %lo(img)(a0)
	lui	a0, 22
	add	a0, a3, a0
	ld	a0, -776(a0)
	slli	a1, s9, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a1, s7, 3
	add	a0, a0, a1
	ld	a1, 0(a0)
	lui	a0, %hi(predictor)
	ld	a0, %lo(predictor)(a0)
	add	a1, a1, t5
	ld	a1, 0(a1)
	blez	s5, .LBB9_134
# %bb.131:
	li	a2, 5
	blt	s4, a2, .LBB9_133
# %bb.132:
	lw	a2, 28(a3)
	beqz	a2, .LBB9_134
.LBB9_133:
	slli	a2, s8, 12
	lui	a3, %hi(mv_scale)
	addi	a3, a3, %lo(mv_scale)
	addi	a4, s5, -1
	slli	a5, a4, 3
	add	a5, a1, a5
	ld	a5, 0(a5)
	add	a2, a3, a2
	slli	a3, s5, 7
	add	a2, a2, a3
	ld	t5, 16(sp)                      # 8-byte Folded Reload
	add	a5, a5, t5
	ld	a3, 0(a5)
	slli	a4, a4, 2
	add	a4, a2, a4
	lw	a4, 0(a4)
	lh	a5, 0(a3)
	mul	a5, a4, a5
	addiw	a5, a5, 512
	ld	a6, 8(a0)
	sraiw	a7, a5, 10
	lh	a3, 2(a3)
	slli	t0, s3, 4
	add	t0, a6, t0
	sw	a7, 0(t0)
	mul	a3, a4, a3
	ld	a4, 0(a1)
	addiw	a3, a3, 512
	sraiw	a7, a3, 10
	sw	a7, 4(t0)
	add	a4, a4, t5
	ld	a4, 0(a4)
	sltiu	a5, a5, 1024
	sltiu	a3, a3, 1024
	lw	a2, 0(a2)
	lh	a7, 0(a4)
	and	a3, a5, a3
	xori	a3, a3, 1
	addw	a3, s3, a3
	mul	a5, a2, a7
	addiw	a5, a5, 512
	sraiw	a7, a5, 10
	lh	a4, 2(a4)
	slli	t0, a3, 4
	add	a6, a6, t0
	ld	t0, 200(sp)                     # 8-byte Folded Reload
	sw	a7, 0(a6)
	mul	a2, a2, a4
	addiw	a2, a2, 512
	sraiw	a4, a2, 10
	sw	a4, 4(a6)
	sltiu	a4, a5, 1024
	sltiu	a2, a2, 1024
	and	a2, a4, a2
	xori	a2, a2, 1
	addw	s3, a3, a2
.LBB9_134:
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	slli	a2, s4, 1
	lui	a3, %hi(blk_parent)
	addi	a3, a3, %lo(blk_parent)
	add	a2, a3, a2
	lh	a2, 0(a2)
	ld	a1, 0(a1)
	slli	a2, a2, 3
	add	a2, a1, a2
	ld	a2, 0(a2)
	lh	a3, 0(a2)
	addi	a3, a3, 2
	ld	a0, 8(a0)
	srli	a4, a3, 2
	lh	a2, 2(a2)
	slli	a5, s3, 4
	add	a5, a0, a5
	sw	a4, 0(a5)
	addi	a2, a2, 2
	srli	a4, a2, 2
	sw	a4, 4(a5)
	sltiu	a3, a3, 4
	sltiu	a2, a2, 4
	and	a2, a3, a2
	xori	a2, a2, 1
	li	a3, 1
	addw	s3, s3, a2
	ld	a6, 192(sp)                     # 8-byte Folded Reload
	bne	s4, a3, .LBB9_136
# %bb.135:
	ld	a5, 208(sp)                     # 8-byte Folded Reload
	j	.LBB9_137
.LBB9_136:
	ld	a2, 8(a1)
	lh	a3, 0(a2)
	addi	a3, a3, 2
	srli	a4, a3, 2
	lh	a2, 2(a2)
	slli	a5, s3, 4
	add	a5, a0, a5
	sw	a4, 0(a5)
	addi	a2, a2, 2
	srli	a4, a2, 2
	sw	a4, 4(a5)
	sltiu	a3, a3, 4
	sltiu	a2, a2, 4
	and	a2, a3, a2
	xori	a2, a2, 1
	li	a3, 4
	addw	s3, s3, a2
	ld	a5, 208(sp)                     # 8-byte Folded Reload
	beq	s4, a3, .LBB9_138
.LBB9_137:
	ld	a1, 32(a1)
	lh	a2, 0(a1)
	addi	a2, a2, 2
	srli	a3, a2, 2
	lh	a1, 2(a1)
	slli	a4, s3, 4
	add	a0, a0, a4
	sw	a3, 0(a0)
	addi	a1, a1, 2
	srli	a3, a1, 2
	sw	a3, 4(a0)
	sltiu	a0, a2, 4
	sltiu	a1, a1, 4
	and	a0, a0, a1
	xori	a0, a0, 1
	addw	s3, s3, a0
.LBB9_138:
	subw	a4, t0, t3
	subw	a7, t0, t1
	sd	a4, 168(sp)                     # 8-byte Folded Spill
	sd	a7, 160(sp)                     # 8-byte Folded Spill
	blez	s3, .LBB9_165
# %bb.139:
	li	s0, 0
	li	t6, 0
	sd	zero, 88(sp)                    # 8-byte Folded Spill
	sd	zero, 96(sp)                    # 8-byte Folded Spill
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 32
	srli	a0, a0, 29
	addi	s1, a0, 8
	lui	s11, 524288
	addiw	s11, s11, -1
	lui	t5, %hi(predictor)
	lui	s8, %hi(EPZSMap)
	li	a3, 1
	lui	s10, %hi(img_width)
	lui	s4, %hi(get_ref_line)
	sd	s3, 224(sp)                     # 8-byte Folded Spill
	j	.LBB9_143
.LBB9_140:                              #   in Loop: Header=BB9_143 Depth=1
	mv	ra, a0
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	mv	s11, t4
	mv	t1, s2
	mv	t3, s7
	li	t6, 1
	mv	t4, s9
	ld	t2, 176(sp)                     # 8-byte Folded Reload
	ld	a6, 192(sp)                     # 8-byte Folded Reload
	ld	t0, 200(sp)                     # 8-byte Folded Reload
	ld	a5, 208(sp)                     # 8-byte Folded Reload
	ld	s3, 224(sp)                     # 8-byte Folded Reload
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	ld	a7, 160(sp)                     # 8-byte Folded Reload
	lui	t5, %hi(predictor)
	lui	s8, %hi(EPZSMap)
.LBB9_141:                              #   in Loop: Header=BB9_143 Depth=1
	li	a3, 1
.LBB9_142:                              #   in Loop: Header=BB9_143 Depth=1
	addi	s0, s0, 1
	beq	s0, s3, .LBB9_164
.LBB9_143:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_154 Depth 2
                                        #       Child Loop BB9_156 Depth 3
	ld	a0, %lo(predictor)(t5)
	ld	a0, 8(a0)
	slli	a1, s0, 4
	add	a0, a0, a1
	lw	s7, 0(a0)
	lh	a1, 0(t2)
	sub	a1, s7, a1
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	blt	t0, a1, .LBB9_142
# %bb.144:                              #   in Loop: Header=BB9_143 Depth=1
	lw	s2, 4(a0)
	lh	a0, 0(a6)
	subw	a0, s2, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t0, a0, .LBB9_142
# %bb.145:                              #   in Loop: Header=BB9_143 Depth=1
	ld	a0, %lo(EPZSMap)(s8)
	addw	a1, s2, a7
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	addw	a1, s7, a4
	add	a0, a0, a1
	lbu	a1, 0(a0)
	beq	a1, a3, .LBB9_142
# %bb.146:                              #   in Loop: Header=BB9_143 Depth=1
	sb	a3, 0(a0)
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	addw	s6, s7, a0
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	addw	s5, s2, a0
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s6, 2
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s5, 2
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s9, a0, 16
	bge	s9, s11, .LBB9_141
# %bb.147:                              #   in Loop: Header=BB9_143 Depth=1
	lui	a2, %hi(UMVLineX)
	addi	a2, a2, %lo(UMVLineX)
	mv	a0, a2
	bltz	s6, .LBB9_152
# %bb.148:                              #   in Loop: Header=BB9_143 Depth=1
	mv	a0, a2
	bltz	s5, .LBB9_152
# %bb.149:                              #   in Loop: Header=BB9_143 Depth=1
	lh	a0, %lo(img_width)(s10)
	sub	a1, a0, ra
	mv	a0, a2
	bge	s6, a1, .LBB9_152
# %bb.150:                              #   in Loop: Header=BB9_143 Depth=1
	lui	a0, %hi(img_height)
	lh	a0, %lo(img_height)(a0)
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	sub	a0, a0, a1
	slt	a0, s5, a0
	andi	a1, a0, 1
	lui	a0, %hi(FastLineX)
	addi	a0, a0, %lo(FastLineX)
	bnez	a1, .LBB9_152
# %bb.151:                              #   in Loop: Header=BB9_143 Depth=1
	mv	a0, a2
.LBB9_152:                              #   in Loop: Header=BB9_143 Depth=1
	sd	t6, 216(sp)                     # 8-byte Folded Spill
	sd	t1, 240(sp)                     # 8-byte Folded Spill
	sd	t3, 232(sp)                     # 8-byte Folded Spill
	sd	a0, %lo(get_ref_line)(s4)
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	blez	a0, .LBB9_160
# %bb.153:                              # %.preheader4
                                        #   in Loop: Header=BB9_143 Depth=1
	li	s8, 0
	mv	a0, ra
.LBB9_154:                              #   Parent Loop BB9_143 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_156 Depth 3
	mv	s3, t4
	ld	a6, %lo(get_ref_line)(s4)
	lui	a1, %hi(ref_pic)
	ld	a1, %lo(ref_pic)(a1)
	lui	a2, %hi(img_height)
	lh	a4, %lo(img_height)(a2)
	lh	a5, %lo(img_width)(s10)
	addw	a2, s5, s8
	mv	a3, s6
	jalr	a6
	ld	a1, 296(sp)                     # 8-byte Folded Reload
	blez	a1, .LBB9_157
# %bb.155:                              #   in Loop: Header=BB9_154 Depth=2
	slli	a1, s8, 3
	ld	a2, 280(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	add	a3, a1, s1
.LBB9_156:                              #   Parent Loop BB9_143 Depth=1
                                        #     Parent Loop BB9_154 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	add	a4, a4, s9
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s9, a4, a7
	addi	a1, a1, 8
	addi	a0, a0, 8
	bne	a1, a3, .LBB9_156
.LBB9_157:                              #   in Loop: Header=BB9_154 Depth=2
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	mv	t4, s3
	bge	s9, s11, .LBB9_159
# %bb.158:                              #   in Loop: Header=BB9_154 Depth=2
	addi	s8, s8, 1
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	bne	s8, a1, .LBB9_154
.LBB9_159:                              #   in Loop: Header=BB9_143 Depth=1
	bge	s9, t4, .LBB9_161
	j	.LBB9_140
.LBB9_160:                              #   in Loop: Header=BB9_143 Depth=1
	mv	a0, ra
	blt	s9, t4, .LBB9_140
.LBB9_161:                              #   in Loop: Header=BB9_143 Depth=1
	ld	t2, 176(sp)                     # 8-byte Folded Reload
	ld	a6, 192(sp)                     # 8-byte Folded Reload
	ld	t3, 232(sp)                     # 8-byte Folded Reload
	ld	t1, 240(sp)                     # 8-byte Folded Reload
	ld	t0, 200(sp)                     # 8-byte Folded Reload
	ld	a5, 208(sp)                     # 8-byte Folded Reload
	ld	s3, 224(sp)                     # 8-byte Folded Reload
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	ld	a7, 160(sp)                     # 8-byte Folded Reload
	lui	t5, %hi(predictor)
	lui	s8, %hi(EPZSMap)
	li	a3, 1
	mv	ra, a0
	bge	s9, s11, .LBB9_163
# %bb.162:                              #   in Loop: Header=BB9_143 Depth=1
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	mv	s11, s9
	li	t6, 1
	j	.LBB9_142
.LBB9_163:                              #   in Loop: Header=BB9_143 Depth=1
	ld	t6, 216(sp)                     # 8-byte Folded Reload
	j	.LBB9_142
.LBB9_164:
	addi	a0, t6, -1
	seqz	a1, a0
	ld	s5, 144(sp)                     # 8-byte Folded Reload
	ld	s10, 184(sp)                    # 8-byte Folded Reload
	ld	s4, 120(sp)                     # 8-byte Folded Reload
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	blt	a0, t4, .LBB9_166
	j	.LBB9_220
.LBB9_165:
	sd	zero, 96(sp)                    # 8-byte Folded Spill
	sd	zero, 88(sp)                    # 8-byte Folded Spill
	li	a1, 0
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	bge	a0, t4, .LBB9_220
.LBB9_166:
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1017(a0)
	beqz	a0, .LBB9_176
# %bb.167:
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
	srli	a1, a0, 1
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	add	a0, a0, a2
	addw	a0, a0, a1
	bge	t4, a0, .LBB9_170
# %bb.168:
	or	a0, t3, t1
	bnez	a0, .LBB9_173
.LBB9_169:
	lui	a0, %hi(sdiamond)
	ld	a5, %lo(sdiamond)(a0)
	j	.LBB9_176
.LBB9_170:
	li	a0, 5
	blt	a0, s4, .LBB9_175
# %bb.171:
	sgtz	a0, s5
	addi	a1, s4, -1
	snez	a1, a1
	and	a0, a0, a1
	bnez	a0, .LBB9_175
# %bb.172:
	lui	a0, %hi(searchPattern)
	ld	a5, %lo(searchPattern)(a0)
	j	.LBB9_176
.LBB9_173:
	lh	a0, 0(t2)
	subw	a0, t3, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a1, a0, a1
	li	a0, 1
	bltu	a0, a1, .LBB9_175
# %bb.174:
	lh	a1, 0(a6)
	subw	a1, t1, a1
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	bgeu	a0, a1, .LBB9_169
.LBB9_175:
	lui	a0, %hi(square)
	ld	a5, %lo(square)(a0)
.LBB9_176:
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	srai	a0, a0, 48
	slli	a0, a0, 2
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	slli	a0, a0, 32
	srli	a0, a0, 29
	addi	s11, a0, 8
	li	s0, 1
	lui	t5, %hi(EPZSMap)
	lui	t6, %hi(UMVLineX)
	addi	t6, t6, %lo(UMVLineX)
	lui	s8, %hi(get_ref_line)
	mv	a0, t1
	mv	a1, t3
	j	.LBB9_179
.LBB9_177:                              #   in Loop: Header=BB9_179 Depth=1
	lui	a1, %hi(square)
	addi	a1, a1, %lo(square)
.LBB9_178:                              #   in Loop: Header=BB9_179 Depth=1
	ld	a5, 0(a1)
	sd	zero, 128(sp)                   # 8-byte Folded Spill
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	ld	a1, 88(sp)                      # 8-byte Folded Reload
.LBB9_179:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_181 Depth 2
                                        #       Child Loop BB9_184 Depth 3
                                        #         Child Loop BB9_195 Depth 4
                                        #           Child Loop BB9_197 Depth 5
	li	s2, 0
	sd	zero, 152(sp)                   # 8-byte Folded Spill
	sd	t1, 216(sp)                     # 8-byte Folded Spill
	sd	t3, 224(sp)                     # 8-byte Folded Spill
	mv	t1, a0
	mv	t3, a1
	mv	a0, a5
	sd	a5, 208(sp)                     # 8-byte Folded Spill
	j	.LBB9_181
.LBB9_180:                              #   in Loop: Header=BB9_181 Depth=2
	ld	a0, 8(a5)
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 4
	add	a0, a0, a1
	lw	s2, 8(a0)
	addi	a0, a0, 12
	ld	t1, 216(sp)                     # 8-byte Folded Reload
	ld	t3, 224(sp)                     # 8-byte Folded Reload
.LBB9_181:                              #   Parent Loop BB9_179 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_184 Depth 3
                                        #         Child Loop BB9_195 Depth 4
                                        #           Child Loop BB9_197 Depth 5
	lw	a0, 0(a0)
	sd	t3, 232(sp)                     # 8-byte Folded Spill
	sd	t1, 240(sp)                     # 8-byte Folded Spill
	j	.LBB9_184
.LBB9_182:                              #   in Loop: Header=BB9_184 Depth=3
	lui	t5, %hi(EPZSMap)
.LBB9_183:                              #   in Loop: Header=BB9_184 Depth=3
	lw	a0, 0(a5)
	addiw	s2, s2, 1
	slt	a1, s2, a0
	addi	a1, a1, -1
	and	a0, a1, a0
	subw	s2, s2, a0
	addiw	a0, s7, -1
	bge	s0, s7, .LBB9_204
.LBB9_184:                              #   Parent Loop BB9_179 Depth=1
                                        #     Parent Loop BB9_181 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_195 Depth 4
                                        #           Child Loop BB9_197 Depth 5
	ld	a1, 8(a5)
	slli	a2, s2, 4
	add	a1, a1, a2
	lw	a2, 0(a1)
	lh	a3, 0(t2)
	addw	s4, a2, t3
	sub	a2, s4, a3
	sraiw	a3, a2, 31
	xor	a2, a2, a3
	subw	a2, a2, a3
	mv	s7, a0
	blt	t0, a2, .LBB9_183
# %bb.185:                              #   in Loop: Header=BB9_184 Depth=3
	lw	a0, 4(a1)
	lh	a1, 0(a6)
	addw	s9, a0, t1
	sub	a0, s9, a1
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t0, a0, .LBB9_183
# %bb.186:                              #   in Loop: Header=BB9_184 Depth=3
	ld	a0, %lo(EPZSMap)(t5)
	addw	a1, s9, a7
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	addw	a1, s4, a4
	add	a0, a0, a1
	lbu	a1, 0(a0)
	beq	a1, s0, .LBB9_183
# %bb.187:                              #   in Loop: Header=BB9_184 Depth=3
	addw	s6, s4, s10
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	addw	s5, s9, a1
	sb	s0, 0(a0)
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s6, 2
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s5, 2
	ld	a3, 248(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	s1, a0, 16
	bge	s1, t4, .LBB9_182
# %bb.188:                              #   in Loop: Header=BB9_184 Depth=3
	mv	a0, t6
	bltz	s6, .LBB9_193
# %bb.189:                              #   in Loop: Header=BB9_184 Depth=3
	lui	a0, %hi(img_width)
	lh	a0, %lo(img_width)(a0)
	sub	a1, a0, ra
	mv	a0, t6
	bge	s6, a1, .LBB9_193
# %bb.190:                              #   in Loop: Header=BB9_184 Depth=3
	mv	a0, t6
	bltz	s5, .LBB9_193
# %bb.191:                              #   in Loop: Header=BB9_184 Depth=3
	lui	a0, %hi(img_height)
	lh	a0, %lo(img_height)(a0)
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	sub	a0, a0, a1
	slt	a0, s5, a0
	andi	a1, a0, 1
	lui	a0, %hi(FastLineX)
	addi	a0, a0, %lo(FastLineX)
	bnez	a1, .LBB9_193
# %bb.192:                              #   in Loop: Header=BB9_184 Depth=3
	mv	a0, t6
.LBB9_193:                              #   in Loop: Header=BB9_184 Depth=3
	sd	a0, %lo(get_ref_line)(s8)
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	blez	a0, .LBB9_201
# %bb.194:                              # %.preheader
                                        #   in Loop: Header=BB9_184 Depth=3
	li	s10, 0
	mv	a0, ra
.LBB9_195:                              #   Parent Loop BB9_179 Depth=1
                                        #     Parent Loop BB9_181 Depth=2
                                        #       Parent Loop BB9_184 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB9_197 Depth 5
	mv	s3, t4
	ld	a6, %lo(get_ref_line)(s8)
	lui	a1, %hi(ref_pic)
	ld	a1, %lo(ref_pic)(a1)
	lui	a2, %hi(img_height)
	lh	a4, %lo(img_height)(a2)
	lui	a2, %hi(img_width)
	lh	a5, %lo(img_width)(a2)
	addw	a2, s5, s10
	mv	a3, s6
	jalr	a6
	ld	a1, 296(sp)                     # 8-byte Folded Reload
	blez	a1, .LBB9_199
# %bb.196:                              #   in Loop: Header=BB9_195 Depth=4
	slli	a1, s10, 3
	ld	a2, 280(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	add	a3, a1, s11
	mv	t4, s3
.LBB9_197:                              #   Parent Loop BB9_179 Depth=1
                                        #     Parent Loop BB9_181 Depth=2
                                        #       Parent Loop BB9_184 Depth=3
                                        #         Parent Loop BB9_195 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
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
	add	a4, a4, s1
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s1, a4, a7
	addi	a1, a1, 8
	addi	a0, a0, 8
	bne	a1, a3, .LBB9_197
# %bb.198:                              #   in Loop: Header=BB9_195 Depth=4
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	blt	s1, t4, .LBB9_200
	j	.LBB9_202
.LBB9_199:                              #   in Loop: Header=BB9_195 Depth=4
	mv	t4, s3
	ld	a0, 288(sp)                     # 8-byte Folded Reload
	bge	s1, s3, .LBB9_202
.LBB9_200:                              #   in Loop: Header=BB9_195 Depth=4
	addi	s10, s10, 1
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	bne	s10, a1, .LBB9_195
	j	.LBB9_202
.LBB9_201:                              #   in Loop: Header=BB9_184 Depth=3
	mv	a0, ra
.LBB9_202:                              #   in Loop: Header=BB9_184 Depth=3
	mv	ra, a0
	ld	t2, 176(sp)                     # 8-byte Folded Reload
	ld	a6, 192(sp)                     # 8-byte Folded Reload
	ld	s10, 184(sp)                    # 8-byte Folded Reload
	ld	t3, 232(sp)                     # 8-byte Folded Reload
	ld	t1, 240(sp)                     # 8-byte Folded Reload
	ld	t0, 200(sp)                     # 8-byte Folded Reload
	ld	a5, 208(sp)                     # 8-byte Folded Reload
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	ld	a7, 160(sp)                     # 8-byte Folded Reload
	lui	t5, %hi(EPZSMap)
	lui	t6, %hi(UMVLineX)
	addi	t6, t6, %lo(UMVLineX)
	bge	s1, t4, .LBB9_183
# %bb.203:                              #   in Loop: Header=BB9_184 Depth=3
	sd	s9, 216(sp)                     # 8-byte Folded Spill
	sd	s4, 224(sp)                     # 8-byte Folded Spill
	mv	t4, s1
	sd	s2, 152(sp)                     # 8-byte Folded Spill
	j	.LBB9_183
.LBB9_204:                              #   in Loop: Header=BB9_181 Depth=2
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	bne	a0, t3, .LBB9_180
# %bb.205:                              #   in Loop: Header=BB9_181 Depth=2
	ld	a0, 216(sp)                     # 8-byte Folded Reload
	bne	a0, t1, .LBB9_180
# %bb.206:                              #   in Loop: Header=BB9_179 Depth=1
	ld	s5, 144(sp)                     # 8-byte Folded Reload
	blez	s5, .LBB9_211
# %bb.207:                              #   in Loop: Header=BB9_179 Depth=1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 28(a0)
	bnez	a0, .LBB9_211
# %bb.208:                              #   in Loop: Header=BB9_179 Depth=1
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	lw	a0, 0(a0)
	slliw	a1, a0, 2
	blt	a1, t4, .LBB9_225
# %bb.209:                              #   in Loop: Header=BB9_179 Depth=1
	slli	a1, a0, 1
	addw	a1, a1, a0
	bge	a1, t4, .LBB9_211
# %bb.210:                              #   in Loop: Header=BB9_179 Depth=1
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	bge	a1, a0, .LBB9_225
.LBB9_211:                              #   in Loop: Header=BB9_179 Depth=1
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB9_220
# %bb.212:                              #   in Loop: Header=BB9_179 Depth=1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 24(a0)
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	slti	a1, a1, 5
	seqz	a0, a0
	or	a0, a0, a1
	beqz	a0, .LBB9_220
# %bb.213:                              #   in Loop: Header=BB9_179 Depth=1
	ld	a0, 136(sp)                     # 8-byte Folded Reload
	bge	a0, t4, .LBB9_220
# %bb.214:                              #   in Loop: Header=BB9_179 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1021(a0)
	blez	a0, .LBB9_220
# %bb.215:                              #   in Loop: Header=BB9_179 Depth=1
	lh	a0, 0(t2)
	or	a1, t3, t1
	bnez	a1, .LBB9_218
.LBB9_216:                              #   in Loop: Header=BB9_179 Depth=1
	subw	a0, t3, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	s0, a0, .LBB9_177
# %bb.217:                              #   in Loop: Header=BB9_179 Depth=1
	lh	a0, 0(a6)
	subw	a0, t1, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	lui	a1, %hi(sdiamond)
	addi	a1, a1, %lo(sdiamond)
	li	a2, 2
	bgeu	a0, a2, .LBB9_177
	j	.LBB9_178
.LBB9_218:                              #   in Loop: Header=BB9_179 Depth=1
	lui	a1, %hi(searchPatternD)
	addi	a1, a1, %lo(searchPatternD)
	bne	t3, a0, .LBB9_178
# %bb.219:                              #   in Loop: Header=BB9_179 Depth=1
	lh	a2, 0(a6)
	bne	t1, a2, .LBB9_178
	j	.LBB9_216
.LBB9_220:
	ld	a0, 104(sp)                     # 8-byte Folded Reload
	srai	a0, a0, 48
	slli	a0, a0, 2
	beqz	s5, .LBB9_222
# %bb.221:
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	add	a1, a1, a0
	lw	a1, 0(a1)
	bge	t4, a1, .LBB9_223
.LBB9_222:
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	sw	t4, 0(a0)
.LBB9_223:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1033(a0)
	beqz	a0, .LBB9_225
# %bb.224:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	sh	t3, 0(a0)
	sh	t1, 2(a0)
.LBB9_225:
	sh	t3, 0(t2)
	sh	t1, 0(a6)
.LBB9_226:
	mv	a0, t4
	ld	ra, 600(sp)                     # 8-byte Folded Reload
	ld	s0, 592(sp)                     # 8-byte Folded Reload
	ld	s1, 584(sp)                     # 8-byte Folded Reload
	ld	s2, 576(sp)                     # 8-byte Folded Reload
	ld	s3, 568(sp)                     # 8-byte Folded Reload
	ld	s4, 560(sp)                     # 8-byte Folded Reload
	ld	s5, 552(sp)                     # 8-byte Folded Reload
	ld	s6, 544(sp)                     # 8-byte Folded Reload
	ld	s7, 536(sp)                     # 8-byte Folded Reload
	ld	s8, 528(sp)                     # 8-byte Folded Reload
	ld	s9, 520(sp)                     # 8-byte Folded Reload
	ld	s10, 512(sp)                    # 8-byte Folded Reload
	ld	s11, 504(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 608
	ret
.Lfunc_end9:
	.size	EPZSPelBlockMotionSearch, .Lfunc_end9-EPZSPelBlockMotionSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function EPZSSpatialPredictors
	.type	EPZSSpatialPredictors,@function
EPZSSpatialPredictors:                  # @EPZSSpatialPredictors
# %bb.0:
	addi	sp, sp, -48
	sd	s0, 40(sp)                      # 8-byte Folded Spill
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 8(sp)                       # 8-byte Folded Spill
	addw	t0, a5, a4
	lui	a4, %hi(mv_scale)
	addi	a4, a4, %lo(mv_scale)
	slli	a6, a6, 7
	lui	t1, %hi(img)
	ld	t4, %lo(img)(t1)
	add	a6, a4, a6
	ld	a4, 8(t3)
	lui	t1, 22
	add	t1, t4, t1
	lw	t1, 108(t1)
	slli	t0, t0, 12
	add	t0, a6, t0
	sw	zero, 0(a4)
	sw	zero, 4(a4)
	beqz	t1, .LBB10_13
# %bb.1:
	lw	t5, 0(a0)
	lui	a6, 8
	addiw	a6, a6, -1192
	add	t4, t4, a6
	beqz	a5, .LBB10_26
# %bb.2:
	li	a5, -1
	li	a6, -1
	beqz	t5, .LBB10_4
# %bb.3:
	lw	a6, 20(a0)
	ld	t1, 0(t4)
	lw	t3, 4(a0)
	li	t6, 528
	slli	a6, a6, 3
	add	a6, a7, a6
	ld	a6, 0(a6)
	lw	s0, 16(a0)
	mul	t3, t3, t6
	add	t1, t1, t3
	lw	t1, 424(t1)
	add	a6, a6, s0
	lbu	a6, 0(a6)
	seqz	t1, t1
	sllw	a6, a6, t1
.LBB10_4:
	lw	s1, 0(a1)
	beqz	s1, .LBB10_6
# %bb.5:
	lw	a5, 20(a1)
	ld	t1, 0(t4)
	lw	t3, 4(a1)
	li	t6, 528
	slli	a5, a5, 3
	add	a5, a7, a5
	ld	a5, 0(a5)
	lw	s0, 16(a1)
	mul	t3, t3, t6
	add	t1, t1, t3
	lw	t1, 424(t1)
	add	a5, a5, s0
	lbu	a5, 0(a5)
	seqz	t1, t1
	sllw	a5, a5, t1
.LBB10_6:
	lw	s0, 0(a2)
	li	t1, -1
	li	t3, -1
	beqz	s0, .LBB10_8
# %bb.7:
	lw	t3, 20(a2)
	ld	t6, 0(t4)
	lw	s2, 4(a2)
	li	s3, 528
	slli	t3, t3, 3
	add	t3, a7, t3
	ld	t3, 0(t3)
	lw	s4, 16(a2)
	mul	s2, s2, s3
	add	t6, t6, s2
	lw	t6, 424(t6)
	add	t3, t3, s4
	lbu	t3, 0(t3)
	seqz	t6, t6
	sllw	t3, t3, t6
.LBB10_8:
	lw	t6, 0(a3)
	beqz	t6, .LBB10_10
# %bb.9:
	lw	t1, 20(a3)
	ld	s2, 0(t4)
	lw	s3, 4(a3)
	li	s4, 528
	slli	t1, t1, 3
	add	a7, a7, t1
	ld	a7, 0(a7)
	lw	t1, 16(a3)
	mul	s3, s3, s4
	add	s2, s2, s3
	lw	s2, 424(s2)
	add	a7, a7, t1
	lbu	a7, 0(a7)
	seqz	t1, s2
	sllw	t1, a7, t1
.LBB10_10:
	beqz	t5, .LBB10_41
# %bb.11:
	lw	a7, 20(a0)
	slli	a7, a7, 3
	add	a7, t2, a7
	lw	t5, 16(a0)
	ld	a7, 0(a7)
	slli	s2, a6, 2
	slli	t5, t5, 3
	add	a7, a7, t5
	ld	a7, 0(a7)
	add	s2, t0, s2
	lw	t5, 0(s2)
	lw	a0, 4(a0)
	lh	s2, 0(a7)
	ld	s3, 0(t4)
	li	s4, 528
	mul	a0, a0, s4
	mul	s2, t5, s2
	add	a0, s3, a0
	lw	s3, 424(a0)
	lh	a0, 2(a7)
	addi	a7, s2, 512
	sraiw	a7, a7, 10
	sw	a7, 16(a4)
	mul	a0, t5, a0
	beqz	s3, .LBB10_48
# %bb.12:
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	sw	a0, 20(a4)
	bnez	s1, .LBB10_42
	j	.LBB10_49
.LBB10_13:
	lw	s0, 0(a0)
	li	a5, -1
	li	a6, -1
	beqz	s0, .LBB10_15
# %bb.14:
	lw	a6, 20(a0)
	slli	a6, a6, 3
	add	a6, a7, a6
	ld	a6, 0(a6)
	lw	t1, 16(a0)
	add	a6, a6, t1
	lbu	a6, 0(a6)
.LBB10_15:
	lw	t6, 0(a1)
	beqz	t6, .LBB10_17
# %bb.16:
	lw	a5, 20(a1)
	slli	a5, a5, 3
	add	a5, a7, a5
	ld	a5, 0(a5)
	lw	t1, 16(a1)
	add	a5, a5, t1
	lbu	a5, 0(a5)
.LBB10_17:
	lw	t5, 0(a2)
	li	t1, -1
	li	t3, -1
	beqz	t5, .LBB10_19
# %bb.18:
	lw	t3, 20(a2)
	slli	t3, t3, 3
	add	t3, a7, t3
	ld	t3, 0(t3)
	lw	t4, 16(a2)
	add	t3, t3, t4
	lbu	t3, 0(t3)
.LBB10_19:
	lw	t4, 0(a3)
	beqz	t4, .LBB10_21
# %bb.20:
	lw	t1, 20(a3)
	slli	t1, t1, 3
	add	a7, a7, t1
	ld	a7, 0(a7)
	lw	t1, 16(a3)
	add	a7, a7, t1
	lbu	t1, 0(a7)
.LBB10_21:
	li	a7, 3
	beqz	s0, .LBB10_44
# %bb.22:
	lw	s0, 20(a0)
	slli	s0, s0, 3
	add	s0, t2, s0
	lw	a0, 16(a0)
	ld	s0, 0(s0)
	slli	a0, a0, 3
	add	a0, s0, a0
	ld	a0, 0(a0)
	slli	s0, a6, 2
	add	s0, t0, s0
	lw	s0, 0(s0)
	lh	s1, 0(a0)
	lh	s2, 2(a0)
	mul	a0, s0, s1
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	mul	s0, s0, s2
	addi	s0, s0, 512
	sraiw	s0, s0, 10
	sw	a0, 16(a4)
	sw	s0, 20(a4)
	beqz	t6, .LBB10_45
.LBB10_23:
	lw	a0, 20(a1)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a1, 16(a1)
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a1, a5, 2
	add	a1, t0, a1
	lw	a1, 0(a1)
	lh	a7, 0(a0)
	lh	t6, 2(a0)
	mul	a0, a1, a7
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	mul	a1, a1, t6
	addi	a1, a1, 512
	sraiw	a7, a1, 10
	sw	a0, 32(a4)
	sw	a7, 36(a4)
	li	a1, -3
	beqz	t5, .LBB10_46
.LBB10_24:
	lw	a0, 20(a2)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a2, 16(a2)
	ld	a0, 0(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	slli	a2, t3, 2
	add	a2, t0, a2
	lw	a2, 0(a2)
	lh	a7, 0(a0)
	lh	t5, 2(a0)
	mul	a0, a2, a7
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	mul	a2, a2, t5
	addi	a2, a2, 512
	sraiw	a2, a2, 10
	sw	a0, 48(a4)
	sw	a2, 52(a4)
	beqz	t4, .LBB10_47
.LBB10_25:
	lw	a0, 20(a3)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a1, 16(a3)
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a1, t1, 2
	add	a1, t0, a1
	lw	a1, 0(a1)
	lh	a2, 0(a0)
	lh	a3, 2(a0)
	mul	a0, a1, a2
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	mul	a1, a1, a3
	addi	a1, a1, 512
	sraiw	a1, a1, 10
	sw	a0, 64(a4)
	j	.LBB10_71
.LBB10_26:
	li	a5, -1
	li	a6, -1
	beqz	t5, .LBB10_29
# %bb.27:
	lw	a6, 20(a0)
	ld	t1, 0(t4)
	lw	t3, 4(a0)
	li	t6, 528
	slli	a6, a6, 3
	add	a6, a7, a6
	ld	a6, 0(a6)
	lw	s0, 16(a0)
	mul	t3, t3, t6
	add	t1, t1, t3
	lw	t1, 424(t1)
	add	a6, a6, s0
	lbu	a6, 0(a6)
	beqz	t1, .LBB10_29
# %bb.28:
	srli	a6, a6, 1
.LBB10_29:
	lw	s1, 0(a1)
	beqz	s1, .LBB10_32
# %bb.30:
	lw	a5, 20(a1)
	ld	t1, 0(t4)
	lw	t3, 4(a1)
	li	t6, 528
	slli	a5, a5, 3
	add	a5, a7, a5
	ld	a5, 0(a5)
	lw	s0, 16(a1)
	mul	t3, t3, t6
	add	t1, t1, t3
	lw	t1, 424(t1)
	add	a5, a5, s0
	lbu	a5, 0(a5)
	beqz	t1, .LBB10_32
# %bb.31:
	srli	a5, a5, 1
.LBB10_32:
	lw	s0, 0(a2)
	li	t1, -1
	li	t3, -1
	beqz	s0, .LBB10_35
# %bb.33:
	lw	t3, 20(a2)
	ld	t6, 0(t4)
	lw	s2, 4(a2)
	li	s3, 528
	slli	t3, t3, 3
	add	t3, a7, t3
	ld	t3, 0(t3)
	lw	s4, 16(a2)
	mul	s2, s2, s3
	add	t6, t6, s2
	lw	t6, 424(t6)
	add	t3, t3, s4
	lbu	t3, 0(t3)
	beqz	t6, .LBB10_35
# %bb.34:
	srli	t3, t3, 1
.LBB10_35:
	lw	t6, 0(a3)
	beqz	t6, .LBB10_38
# %bb.36:
	lw	t1, 20(a3)
	ld	s2, 0(t4)
	lw	s3, 4(a3)
	li	s4, 528
	slli	t1, t1, 3
	add	a7, a7, t1
	ld	a7, 0(a7)
	lw	t1, 16(a3)
	mul	s3, s3, s4
	add	s2, s2, s3
	lw	s2, 424(s2)
	add	a7, a7, t1
	lbu	t1, 0(a7)
	beqz	s2, .LBB10_38
# %bb.37:
	srli	t1, t1, 1
.LBB10_38:
	beqz	t5, .LBB10_57
# %bb.39:
	lw	a7, 20(a0)
	slli	a7, a7, 3
	add	a7, t2, a7
	lw	t5, 16(a0)
	ld	a7, 0(a7)
	slli	s2, a6, 2
	slli	t5, t5, 3
	add	a7, a7, t5
	ld	a7, 0(a7)
	add	s2, t0, s2
	lw	t5, 0(s2)
	lw	a0, 4(a0)
	lh	s2, 0(a7)
	ld	s3, 0(t4)
	li	s4, 528
	mul	a0, a0, s4
	mul	s2, t5, s2
	add	a0, s3, a0
	lw	s3, 424(a0)
	lh	a0, 2(a7)
	addi	a7, s2, 512
	sraiw	a7, a7, 10
	sw	a7, 16(a4)
	mul	a0, t5, a0
	beqz	s3, .LBB10_60
# %bb.40:
	addi	a0, a0, 256
	sraiw	a0, a0, 9
	sw	a0, 20(a4)
	bnez	s1, .LBB10_58
	j	.LBB10_61
.LBB10_41:
	li	a7, 3
	sw	a7, 16(a4)
	sw	zero, 20(a4)
	beqz	s1, .LBB10_49
.LBB10_42:
	lw	a0, 20(a1)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a7, 16(a1)
	ld	a0, 0(a0)
	slli	t5, a5, 2
	slli	a7, a7, 3
	add	a0, a0, a7
	ld	a0, 0(a0)
	add	t5, t0, t5
	lw	a7, 0(t5)
	lw	a1, 4(a1)
	lh	t5, 0(a0)
	ld	s1, 0(t4)
	li	s2, 528
	mul	a1, a1, s2
	mul	t5, a7, t5
	add	a1, s1, a1
	lw	a1, 424(a1)
	lh	a0, 2(a0)
	addi	t5, t5, 512
	sraiw	t5, t5, 10
	sw	t5, 32(a4)
	mul	a0, a7, a0
	beqz	a1, .LBB10_52
# %bb.43:
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	sw	a0, 36(a4)
	bnez	s0, .LBB10_50
	j	.LBB10_53
.LBB10_44:
	li	a0, 3
	sw	a0, 16(a4)
	sw	s0, 20(a4)
	bnez	t6, .LBB10_23
.LBB10_45:
	sw	zero, 32(a4)
	sw	a7, 36(a4)
	li	a1, -3
	bnez	t5, .LBB10_24
.LBB10_46:
	li	a0, -3
	sw	a0, 48(a4)
	sw	zero, 52(a4)
	bnez	t4, .LBB10_25
.LBB10_47:
	sw	zero, 64(a4)
	j	.LBB10_71
.LBB10_48:
	addi	a0, a0, 1024
	sraiw	a0, a0, 11
	sw	a0, 20(a4)
	bnez	s1, .LBB10_42
.LBB10_49:
	sw	zero, 32(a4)
	li	a0, 3
	sw	a0, 36(a4)
	beqz	s0, .LBB10_53
.LBB10_50:
	lw	a0, 20(a2)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a1, 16(a2)
	ld	a0, 0(a0)
	slli	a7, t3, 2
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a7, t0, a7
	lw	a1, 0(a7)
	lw	a2, 4(a2)
	lh	a7, 0(a0)
	ld	t5, 0(t4)
	li	s0, 528
	mul	a2, a2, s0
	mul	a7, a1, a7
	add	a2, t5, a2
	lw	a2, 424(a2)
	lh	a0, 2(a0)
	addi	a7, a7, 512
	sraiw	a7, a7, 10
	sw	a7, 48(a4)
	mul	a0, a1, a0
	beqz	a2, .LBB10_54
# %bb.51:
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	sw	a0, 52(a4)
	bnez	t6, .LBB10_55
	j	.LBB10_70
.LBB10_52:
	addi	a0, a0, 1024
	sraiw	a0, a0, 11
	sw	a0, 36(a4)
	bnez	s0, .LBB10_50
.LBB10_53:
	li	a1, -3
	sw	a1, 48(a4)
	sw	zero, 52(a4)
	bnez	t6, .LBB10_55
	j	.LBB10_70
.LBB10_54:
	addi	a0, a0, 1024
	sraiw	a0, a0, 11
	sw	a0, 52(a4)
	beqz	t6, .LBB10_70
.LBB10_55:
	lw	a0, 20(a3)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a1, 16(a3)
	ld	a0, 0(a0)
	slli	a2, t1, 2
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a2, t0, a2
	lw	a1, 0(a2)
	lw	a2, 4(a3)
	lh	a3, 0(a0)
	ld	a7, 0(t4)
	li	t0, 528
	mul	a2, a2, t0
	mul	a3, a1, a3
	add	a2, a7, a2
	lw	a2, 424(a2)
	lh	a0, 2(a0)
	addi	a3, a3, 512
	sraiw	a3, a3, 10
	sw	a3, 64(a4)
	mul	a0, a1, a0
	bnez	a2, .LBB10_68
# %bb.56:
	addi	a0, a0, 1024
	sraiw	a1, a0, 11
	j	.LBB10_71
.LBB10_57:
	li	a7, 3
	sw	a7, 16(a4)
	sw	zero, 20(a4)
	beqz	s1, .LBB10_61
.LBB10_58:
	lw	a0, 20(a1)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a7, 16(a1)
	ld	a0, 0(a0)
	slli	t5, a5, 2
	slli	a7, a7, 3
	add	a0, a0, a7
	ld	a0, 0(a0)
	add	t5, t0, t5
	lw	a7, 0(t5)
	lw	a1, 4(a1)
	lh	t5, 0(a0)
	ld	s1, 0(t4)
	li	s2, 528
	mul	a1, a1, s2
	mul	t5, a7, t5
	add	a1, s1, a1
	lw	a1, 424(a1)
	lh	a0, 2(a0)
	addi	t5, t5, 512
	sraiw	t5, t5, 10
	sw	t5, 32(a4)
	mul	a0, a7, a0
	beqz	a1, .LBB10_64
# %bb.59:
	addi	a0, a0, 256
	sraiw	a0, a0, 9
	sw	a0, 36(a4)
	bnez	s0, .LBB10_62
	j	.LBB10_65
.LBB10_60:
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	sw	a0, 20(a4)
	bnez	s1, .LBB10_58
.LBB10_61:
	sw	zero, 32(a4)
	li	a0, 3
	sw	a0, 36(a4)
	beqz	s0, .LBB10_65
.LBB10_62:
	lw	a0, 20(a2)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a1, 16(a2)
	ld	a0, 0(a0)
	slli	a7, t3, 2
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a7, t0, a7
	lw	a1, 0(a7)
	lw	a2, 4(a2)
	lh	a7, 0(a0)
	ld	t5, 0(t4)
	li	s0, 528
	mul	a2, a2, s0
	mul	a7, a1, a7
	add	a2, t5, a2
	lw	a2, 424(a2)
	lh	a0, 2(a0)
	addi	a7, a7, 512
	sraiw	a7, a7, 10
	sw	a7, 48(a4)
	mul	a0, a1, a0
	beqz	a2, .LBB10_69
# %bb.63:
	addi	a0, a0, 256
	sraiw	a0, a0, 9
	sw	a0, 52(a4)
	bnez	t6, .LBB10_66
	j	.LBB10_70
.LBB10_64:
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	sw	a0, 36(a4)
	bnez	s0, .LBB10_62
.LBB10_65:
	li	a0, -3
	sw	a0, 48(a4)
	li	a0, 3
	sw	a0, 52(a4)
	beqz	t6, .LBB10_70
.LBB10_66:
	lw	a0, 20(a3)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a1, 16(a3)
	ld	a0, 0(a0)
	slli	a2, t1, 2
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a2, t0, a2
	lw	a1, 0(a2)
	lw	a2, 4(a3)
	lh	a3, 0(a0)
	ld	a7, 0(t4)
	li	t0, 528
	mul	a2, a2, t0
	mul	a3, a1, a3
	add	a2, a7, a2
	lw	a2, 424(a2)
	lh	a0, 2(a0)
	addi	a3, a3, 512
	sraiw	a3, a3, 10
	sw	a3, 64(a4)
	mul	a0, a1, a0
	beqz	a2, .LBB10_68
# %bb.67:
	addi	a0, a0, 256
	sraiw	a1, a0, 9
	j	.LBB10_71
.LBB10_68:
	addi	a0, a0, 512
	sraiw	a1, a0, 10
	j	.LBB10_71
.LBB10_69:
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	sw	a0, 52(a4)
	bnez	t6, .LBB10_66
.LBB10_70:
	sw	zero, 64(a4)
	li	a1, -3
.LBB10_71:
	addi	a6, a6, 1
	seqz	a0, a6
	addi	a5, a5, 1
	seqz	a2, a5
	add	a0, a0, a2
	and	a2, t3, t1
	addi	a2, a2, 1
	seqz	a2, a2
	add	a0, a0, a2
	sw	a1, 68(a4)
	ld	s0, 40(sp)                      # 8-byte Folded Reload
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end10:
	.size	EPZSSpatialPredictors, .Lfunc_end10-EPZSSpatialPredictors
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	EPZSBiPredBlockMotionSearch     # -- Begin function EPZSBiPredBlockMotionSearch
	.p2align	2
	.type	EPZSBiPredBlockMotionSearch,@function
EPZSBiPredBlockMotionSearch:            # @EPZSBiPredBlockMotionSearch
# %bb.0:
	addi	sp, sp, -528
	sd	ra, 520(sp)                     # 8-byte Folded Spill
	sd	s0, 512(sp)                     # 8-byte Folded Spill
	sd	s1, 504(sp)                     # 8-byte Folded Spill
	sd	s2, 496(sp)                     # 8-byte Folded Spill
	sd	s3, 488(sp)                     # 8-byte Folded Spill
	sd	s4, 480(sp)                     # 8-byte Folded Spill
	sd	s5, 472(sp)                     # 8-byte Folded Spill
	sd	s6, 464(sp)                     # 8-byte Folded Spill
	sd	s7, 456(sp)                     # 8-byte Folded Spill
	sd	s8, 448(sp)                     # 8-byte Folded Spill
	sd	s9, 440(sp)                     # 8-byte Folded Spill
	sd	s10, 432(sp)                    # 8-byte Folded Spill
	sd	s11, 424(sp)                    # 8-byte Folded Spill
	ld	t1, 528(sp)
	lui	t0, %hi(input)
	ld	t0, %lo(input)(t0)
	mv	t6, a7
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	ld	t4, 576(sp)
	slli	s5, t1, 3
	add	s5, t0, s5
	lw	a0, 84(s5)
	ld	s10, 568(sp)
	ld	s0, 592(sp)
	ld	t5, 584(sp)
	slli	s8, a0, 48
	lui	t0, %hi(img)
	lui	a7, %hi(active_pps)
	ld	a7, %lo(active_pps)(a7)
	ld	t2, %lo(img)(t0)
	lh	s2, 0(s10)
	sd	t1, 48(sp)                      # 8-byte Folded Spill
	slli	t1, t1, 2
	lw	t0, 196(a7)
	lui	s1, %hi(medthres)
	addi	s1, s1, %lo(medthres)
	add	s1, s1, t1
	slli	t1, a1, 3
	slli	a7, a3, 3
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	sd	a4, 40(sp)                      # 8-byte Folded Spill
	beqz	t0, .LBB11_3
# %bb.1:
	lui	t3, %hi(wp_offset)
	ld	s3, %lo(wp_offset)(t3)
	add	s3, s3, a7
	beqz	a2, .LBB11_4
# %bb.2:
	ld	t3, 8(s3)
	ld	s4, 0(s3)
	j	.LBB11_5
.LBB11_3:
	li	s11, 0
	li	s7, 0
	j	.LBB11_6
.LBB11_4:
	ld	t3, 0(s3)
	ld	s4, 8(s3)
	add	t3, t3, t1
	add	s4, s4, t1
.LBB11_5:
	ld	s3, 0(t3)
	ld	t3, 0(s4)
	lw	s11, 0(s3)
	lw	s7, 0(t3)
.LBB11_6:
	lw	a4, 168(t2)
	sd	a4, 32(sp)                      # 8-byte Folded Spill
	lw	a4, 172(t2)
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	ld	s4, 600(sp)
	addw	t2, a3, a2
	slli	t2, t2, 3
	lui	t3, %hi(listX)
	addi	t3, t3, %lo(listX)
	add	t2, t3, t2
	ld	t2, 0(t2)
	sd	t4, 152(sp)                     # 8-byte Folded Spill
	lh	s3, 0(t4)
	lh	s6, 0(t5)
	lh	s9, 0(s0)
	add	t1, t2, t1
	ld	t1, 0(t1)
	lw	a5, 88(s5)
	lui	t2, 2
	addiw	t4, t2, -1800
	add	t4, t1, t4
	ld	t1, 40(t4)
	xori	t5, a2, 1
	addw	t5, t5, a3
	slli	t5, t5, 3
	add	t3, t3, t5
	ld	t3, 0(t3)
	srai	t5, s8, 48
	lui	a4, %hi(ref_pic1)
	sd	t1, %lo(ref_pic1)(a4)
	ld	a4, 0(t3)
	addw	ra, s2, a6
	lw	t3, 0(s1)
	lui	t1, %hi(searchPattern)
	add	a4, a4, t2
	ld	a4, -1760(a4)
	ld	s5, %lo(searchPattern)(t1)
	lui	t2, %hi(ref_pic2)
	lw	t1, 0(t4)
	sd	a4, %lo(ref_pic2)(t2)
	lw	a4, 4(t4)
	lui	t2, %hi(img_width)
	sh	t1, %lo(img_width)(t2)
	lui	t2, %hi(img_height)
	sh	a4, %lo(img_height)(t2)
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	sd	a2, 64(sp)                      # 8-byte Folded Spill
	sd	t3, 176(sp)                     # 8-byte Folded Spill
	beqz	t0, .LBB11_9
# %bb.7:
	lui	t0, %hi(wbp_weight)
	ld	t0, %lo(wbp_weight)(t0)
	add	a7, t0, a7
	beqz	a2, .LBB11_10
# %bb.8:
	ld	t0, 8(a7)
	ld	a7, 0(a7)
	ld	t0, 0(t0)
	ld	a7, 0(a7)
	slli	t2, a1, 3
	add	t0, t0, t2
	ld	t0, 0(t0)
	add	a7, a7, t2
	j	.LBB11_11
.LBB11_9:
	lui	a7, %hi(luma_log_weight_denom)
	lwu	a7, %lo(luma_log_weight_denom)(a7)
	li	t0, 1
	sllw	t2, t0, a7
	lui	a7, %hi(weight1)
	sh	t2, %lo(weight1)(a7)
	lui	t4, %hi(computeBiPredSad1)
	addi	t4, t4, %lo(computeBiPredSad1)
	j	.LBB11_12
.LBB11_10:
	ld	t0, 0(a7)
	ld	a7, 8(a7)
	slli	t2, a1, 3
	add	t0, t0, t2
	ld	t0, 0(t0)
	add	a7, a7, t2
	ld	a7, 0(a7)
	ld	t0, 0(t0)
.LBB11_11:
	ld	a7, 0(a7)
	lh	t0, 0(t0)
	lw	t2, 0(a7)
	lui	a7, %hi(weight1)
	sh	t0, %lo(weight1)(a7)
	lui	t4, %hi(computeBiPredSad2)
	addi	t4, t4, %lo(computeBiPredSad2)
.LBB11_12:
	ld	a7, 560(sp)
	ld	t0, 552(sp)
	slliw	t3, a0, 16
	slli	s8, a6, 2
	slli	s1, t6, 2
	addw	s0, s3, t6
	addw	a0, s6, a6
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(weight2)
	sh	t2, %lo(weight2)(a0)
	slli	a2, s11, 48
	srai	a2, a2, 48
	slli	a3, s7, 48
	srai	a3, a3, 48
	add	a2, a2, a3
	addi	a2, a2, 1
	srli	a2, a2, 1
	lui	a0, %hi(offsetBi)
	sh	a2, %lo(offsetBi)(a0)
	lui	a0, %hi(computeBiPredSad)
	sd	t4, %lo(computeBiPredSad)(a0)
	slli	t1, t1, 48
	add	a0, t5, s4
	slli	a5, a5, 48
	sd	t5, 120(sp)                     # 8-byte Folded Spill
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	bge	s4, ra, .LBB11_17
# %bb.13:
	srai	a2, t1, 48
	subw	a2, a2, a0
	bge	ra, a2, .LBB11_17
# %bb.14:
	bge	s4, s0, .LBB11_17
# %bb.15:
	slli	a2, a4, 48
	srai	a2, a2, 48
	srai	a3, a5, 48
	add	a3, a3, s4
	subw	a2, a2, a3
	bge	s0, a2, .LBB11_17
# %bb.16:
	lui	a2, %hi(FastLineX)
	addi	a2, a2, %lo(FastLineX)
	j	.LBB11_18
.LBB11_17:
	lui	a2, %hi(UMVLineX)
	addi	a2, a2, %lo(UMVLineX)
.LBB11_18:
	ld	a3, 616(sp)
	sd	a3, 224(sp)                     # 8-byte Folded Spill
	ld	s7, 536(sp)
	ld	s11, 544(sp)
	sraiw	a3, t3, 18
	sd	a3, 112(sp)                     # 8-byte Folded Spill
	add	t0, s8, t0
	sd	t0, 216(sp)                     # 8-byte Folded Spill
	add	a7, s1, a7
	sd	a7, 208(sp)                     # 8-byte Folded Spill
	addw	a1, s9, t6
	sd	a1, 160(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(get_ref_line2)
	sd	a2, %lo(get_ref_line2)(a1)
	sd	t6, 144(sp)                     # 8-byte Folded Spill
	sd	a6, 136(sp)                     # 8-byte Folded Spill
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	sd	s3, 184(sp)                     # 8-byte Folded Spill
	sd	t3, 16(sp)                      # 8-byte Folded Spill
	sd	t4, 104(sp)                     # 8-byte Folded Spill
	bge	s4, a1, .LBB11_23
# %bb.19:
	srai	a1, t1, 48
	subw	a1, a1, a0
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB11_23
# %bb.20:
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	bge	s4, a0, .LBB11_23
# %bb.21:
	slli	a4, a4, 48
	srai	a4, a4, 48
	srai	s9, a5, 48
	add	a0, s9, s4
	subw	a4, a4, a0
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	bge	a0, a4, .LBB11_23
# %bb.22:
	mv	s3, ra
	lui	a0, %hi(FastLineX)
	addi	a0, a0, %lo(FastLineX)
	j	.LBB11_24
.LBB11_23:
	mv	s3, ra
	srai	s9, a5, 48
	lui	a0, %hi(UMVLineX)
	addi	a0, a0, %lo(UMVLineX)
.LBB11_24:
	lui	s6, %hi(EPZSMap)
	ld	a1, %lo(EPZSMap)(s6)
	lui	a2, %hi(get_ref_line1)
	sd	a0, %lo(get_ref_line1)(a2)
	ld	a0, 0(a1)
	slli	a1, s4, 1
	addi	a1, a1, 1
	mulw	a2, a1, a1
	li	a1, 0
	call	memset
	ld	a0, %lo(EPZSMap)(s6)
	slli	a1, s4, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a0, a0, s4
	li	a1, 1
	sb	a1, 0(a0)
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	slli	a1, a6, 2
	add	s7, s8, s7
	subw	a1, a1, s7
	slli	a1, a1, 2
	sd	a1, 200(sp)                     # 8-byte Folded Spill
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a7, 160(sp)                     # 8-byte Folded Reload
	slli	a2, a7, 2
	add	s1, s1, s11
	subw	a2, a2, s1
	slli	a2, a2, 2
	sd	a2, 192(sp)                     # 8-byte Folded Spill
	add	a2, a0, a2
	lw	a2, 0(a2)
	slli	a3, s3, 2
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	slli	a3, a3, 2
	add	a3, a0, a3
	slli	a4, s0, 2
	ld	a5, 208(sp)                     # 8-byte Folded Reload
	subw	a4, a4, a5
	slli	a4, a4, 2
	add	a0, a0, a4
	lw	a3, 0(a3)
	lw	a0, 0(a0)
	add	a1, a2, a1
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	mul	a1, a1, a2
	sraiw	a4, a1, 16
	add	a0, a0, a3
	mul	a0, a0, a2
	sraiw	a0, a0, 16
	add	a4, a0, a4
	sd	s0, 8(sp)
	lui	a5, 524288
	addiw	a5, a5, -1
	sd	s3, 0(sp)
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	mv	a1, s9
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	mv	a2, s7
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	ld	t1, 104(sp)                     # 8-byte Folded Reload
	jalr	t1
	mv	t3, a0
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	bge	a0, t3, .LBB11_29
# %bb.25:
	mv	s8, t3
	sd	s9, 96(sp)                      # 8-byte Folded Spill
	lui	s6, %hi(img)
	ld	a0, %lo(img)(s6)
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	ld	a2, 32(sp)                      # 8-byte Folded Reload
	subw	s1, a1, a2
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	s1, s1, 48
	lw	a0, 12(a0)
	slliw	s0, a1, 16
	srai	s9, s1, 50
	sraiw	s3, s0, 18
	li	a3, -1
	addi	a5, sp, 400
	mv	a1, s9
	mv	a2, s3
	li	a4, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s6)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 376
	mv	a1, s9
	mv	a2, s3
	li	a3, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s6)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 352
	mv	a1, s9
	mv	a2, s3
	mv	a3, s7
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s6)
	lw	a0, 12(a0)
	li	a3, -1
	li	a4, -1
	addi	a5, sp, 328
	mv	a1, s9
	mv	a2, s3
	call	getLuma4x4Neighbour
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	ld	s11, 72(sp)                     # 8-byte Folded Reload
	blez	s0, .LBB11_32
# %bb.26:
	srai	s1, s1, 48
	li	a0, 7
	blt	a0, s1, .LBB11_30
# %bb.27:
	lui	a0, 128
	bne	s0, a0, .LBB11_53
# %bb.28:
	lui	a0, 256
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	beq	a2, a0, .LBB11_31
	j	.LBB11_32
.LBB11_29:
	lui	a0, 16
	addi	a0, a0, -1
	and	s2, s2, a0
	ld	t4, 184(sp)                     # 8-byte Folded Reload
	and	t4, t4, a0
	ld	a7, 152(sp)                     # 8-byte Folded Reload
	j	.LBB11_52
.LBB11_30:
	add	s1, s1, s7
	li	a0, 16
	bne	s1, a0, .LBB11_32
.LBB11_31:
	sw	zero, 352(sp)
.LBB11_32:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	lw	a0, 0(a0)
	subw	s3, s4, s2
	subw	a1, s4, a1
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	li	a1, 11
	mulw	a0, a0, a1
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	ld	a4, 64(sp)                      # 8-byte Folded Reload
	slli	a0, a4, 3
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	a7, 0(a1)
	lwu	a1, 420(sp)
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	add	a0, a2, a0
	lwu	a2, 416(sp)
	ld	t2, 0(a0)
	slli	a1, a1, 32
	lwu	a0, 412(sp)
	or	a1, a1, a2
	lwu	a2, 408(sp)
	sd	a1, 320(sp)
	slli	a0, a0, 32
	lwu	a1, 404(sp)
	or	a0, a0, a2
	lwu	a2, 400(sp)
	sd	a0, 312(sp)
	slli	a1, a1, 32
	lwu	a0, 396(sp)
	or	a1, a1, a2
	lwu	a2, 392(sp)
	sd	a1, 304(sp)
	slli	a0, a0, 32
	lwu	a1, 388(sp)
	or	a0, a0, a2
	lwu	a2, 384(sp)
	sd	a0, 296(sp)
	slli	a1, a1, 32
	lwu	a0, 380(sp)
	or	a1, a1, a2
	lwu	a2, 376(sp)
	sd	a1, 288(sp)
	slli	a0, a0, 32
	lwu	a1, 372(sp)
	or	a0, a0, a2
	lwu	a2, 368(sp)
	sd	a0, 280(sp)
	slli	a1, a1, 32
	lwu	a0, 364(sp)
	or	a1, a1, a2
	lwu	a2, 360(sp)
	sd	a1, 272(sp)
	slli	a0, a0, 32
	lwu	a1, 356(sp)
	or	a0, a0, a2
	sd	a0, 264(sp)
	lwu	a0, 352(sp)
	slli	a1, a1, 32
	lwu	a2, 348(sp)
	lwu	a3, 344(sp)
	or	a0, a1, a0
	sd	a0, 256(sp)
	slli	a2, a2, 32
	or	a2, a2, a3
	lwu	a0, 340(sp)
	lwu	a1, 336(sp)
	lui	a3, %hi(predictor)
	sd	a2, 248(sp)
	slli	a0, a0, 32
	or	a0, a0, a1
	lwu	a1, 332(sp)
	lwu	a2, 328(sp)
	sd	a0, 240(sp)
	ld	t3, %lo(predictor)(a3)
	slli	a1, a1, 32
	or	a1, a1, a2
	sd	a1, 232(sp)
	addi	a0, sp, 304
	addi	a1, sp, 280
	addi	a2, sp, 256
	addi	a3, sp, 232
	ld	a5, 88(sp)                      # 8-byte Folded Reload
	mv	a6, s11
	call	EPZSSpatialPredictors
	lui	t4, %hi(predictor)
	li	s0, 0
	sd	zero, 176(sp)                   # 8-byte Folded Spill
	sd	zero, 56(sp)                    # 8-byte Folded Spill
	sd	zero, 64(sp)                    # 8-byte Folded Spill
	lui	s7, 524288
	addi	s7, s7, -1
	li	s6, 80
	lui	t5, %hi(mvbits)
	li	t6, 1
	ld	a7, 152(sp)                     # 8-byte Folded Reload
	ld	t0, 144(sp)                     # 8-byte Folded Reload
	ld	t1, 136(sp)                     # 8-byte Folded Reload
	mv	t3, s8
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	j	.LBB11_36
.LBB11_33:                              #   in Loop: Header=BB11_36 Depth=1
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	sd	s2, 56(sp)                      # 8-byte Folded Spill
	mv	s7, t3
	sd	s8, 184(sp)                     # 8-byte Folded Spill
	mv	s2, s1
	li	a1, 1
	sd	a1, 176(sp)                     # 8-byte Folded Spill
	mv	t3, a0
	ld	a7, 152(sp)                     # 8-byte Folded Reload
	ld	t0, 144(sp)                     # 8-byte Folded Reload
	ld	t1, 136(sp)                     # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	lui	t4, %hi(predictor)
.LBB11_34:                              #   in Loop: Header=BB11_36 Depth=1
	lui	t5, %hi(mvbits)
	li	t6, 1
.LBB11_35:                              #   in Loop: Header=BB11_36 Depth=1
	addi	s0, s0, 16
	beq	s0, s6, .LBB11_46
.LBB11_36:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(predictor)(t4)
	ld	a0, 8(a0)
	add	a0, a0, s0
	lw	s1, 0(a0)
	lh	a1, 0(s10)
	lw	s8, 4(a0)
	sub	a0, s1, a1
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	s4, a0, .LBB11_38
# %bb.37:                               #   in Loop: Header=BB11_36 Depth=1
	lh	a0, 0(a7)
	subw	a0, s8, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	s4, a0, .LBB11_39
.LBB11_38:                              #   in Loop: Header=BB11_36 Depth=1
	or	a0, s1, s8
	bnez	a0, .LBB11_35
	j	.LBB11_41
.LBB11_39:                              #   in Loop: Header=BB11_36 Depth=1
	lui	a0, %hi(EPZSMap)
	ld	a0, %lo(EPZSMap)(a0)
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	addw	a1, s8, a1
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	addw	a1, s1, s3
	add	a0, a0, a1
	lbu	a1, 0(a0)
	beq	a1, t6, .LBB11_35
# %bb.40:                               #   in Loop: Header=BB11_36 Depth=1
	sb	t6, 0(a0)
.LBB11_41:                              #   in Loop: Header=BB11_36 Depth=1
	ld	a2, %lo(mvbits)(t5)
	addw	a0, s1, t1
	addw	a1, s8, t0
	ld	a3, 200(sp)                     # 8-byte Folded Reload
	add	a3, a2, a3
	lw	a3, 0(a3)
	ld	a4, 192(sp)                     # 8-byte Folded Reload
	add	a4, a2, a4
	lw	a4, 0(a4)
	slli	a5, a0, 2
	ld	a6, 216(sp)                     # 8-byte Folded Reload
	subw	a5, a5, a6
	slli	a5, a5, 2
	add	a5, a2, a5
	slli	a6, a1, 2
	ld	t2, 208(sp)                     # 8-byte Folded Reload
	subw	a6, a6, t2
	slli	a6, a6, 2
	add	a2, a2, a6
	lw	a5, 0(a5)
	lw	a2, 0(a2)
	add	a3, a4, a3
	ld	a6, 224(sp)                     # 8-byte Folded Reload
	mul	a3, a3, a6
	sraiw	a4, a3, 16
	add	a2, a2, a5
	mul	a2, a2, a6
	sraiw	a2, a2, 16
	add	a4, a2, a4
	sext.w	s9, s7
	bge	a4, s9, .LBB11_35
# %bb.42:                               #   in Loop: Header=BB11_36 Depth=1
	lui	a2, %hi(computeBiPredSad)
	ld	t1, %lo(computeBiPredSad)(a2)
	sd	a1, 8(sp)
	sd	a0, 0(sp)
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	mv	a5, s9
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	ld	a7, 160(sp)                     # 8-byte Folded Reload
	mv	s3, t3
	jalr	t1
	mv	t3, s3
	sext.w	a1, s3
	blt	a0, a1, .LBB11_33
# %bb.43:                               #   in Loop: Header=BB11_36 Depth=1
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	lui	t4, %hi(predictor)
	bge	a0, s9, .LBB11_45
# %bb.44:                               #   in Loop: Header=BB11_36 Depth=1
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	mv	s7, a0
	li	a0, 1
	sd	a0, 176(sp)                     # 8-byte Folded Spill
.LBB11_45:                              #   in Loop: Header=BB11_36 Depth=1
	ld	a7, 152(sp)                     # 8-byte Folded Reload
	ld	t0, 144(sp)                     # 8-byte Folded Reload
	ld	t1, 136(sp)                     # 8-byte Folded Reload
	j	.LBB11_34
.LBB11_46:
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	srai	a1, a1, 3
	sext.w	a0, t3
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	bge	a1, a0, .LBB11_51
# %bb.47:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 1017(a1)
	ld	t4, 184(sp)                     # 8-byte Folded Reload
	ld	t5, 104(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB11_61
# %bb.48:
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	lw	a1, 0(a1)
	srli	a2, a1, 1
	ld	a3, 40(sp)                      # 8-byte Folded Reload
	add	a1, a1, a3
	addw	a1, a1, a2
	bge	a0, a1, .LBB11_54
# %bb.49:
	or	a0, s2, t4
	bnez	a0, .LBB11_58
.LBB11_50:
	lui	a0, %hi(sdiamond)
	ld	s5, %lo(sdiamond)(a0)
	j	.LBB11_61
.LBB11_51:
	ld	t4, 184(sp)                     # 8-byte Folded Reload
.LBB11_52:
	sh	s2, 0(s10)
	sext.w	a0, t3
	sh	t4, 0(a7)
	ld	ra, 520(sp)                     # 8-byte Folded Reload
	ld	s0, 512(sp)                     # 8-byte Folded Reload
	ld	s1, 504(sp)                     # 8-byte Folded Reload
	ld	s2, 496(sp)                     # 8-byte Folded Reload
	ld	s3, 488(sp)                     # 8-byte Folded Reload
	ld	s4, 480(sp)                     # 8-byte Folded Reload
	ld	s5, 472(sp)                     # 8-byte Folded Reload
	ld	s6, 464(sp)                     # 8-byte Folded Reload
	ld	s7, 456(sp)                     # 8-byte Folded Reload
	ld	s8, 448(sp)                     # 8-byte Folded Reload
	ld	s9, 440(sp)                     # 8-byte Folded Reload
	ld	s10, 432(sp)                    # 8-byte Folded Reload
	ld	s11, 424(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 528
	ret
.LBB11_53:
	add	s1, s1, s7
	li	a0, 8
	beq	s1, a0, .LBB11_31
	j	.LBB11_32
.LBB11_54:
	li	a0, 5
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	blt	a0, a1, .LBB11_60
# %bb.55:
	blez	s11, .LBB11_57
# %bb.56:
	li	a0, 1
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	bne	a1, a0, .LBB11_60
.LBB11_57:
	lui	a0, %hi(searchPattern)
	ld	s5, %lo(searchPattern)(a0)
	j	.LBB11_61
.LBB11_58:
	lh	a0, 0(s10)
	subw	a0, s2, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a1, a0, a1
	li	a0, 1
	bltu	a0, a1, .LBB11_60
# %bb.59:
	lh	a1, 0(a7)
	subw	a1, t4, a1
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	bgeu	a0, a1, .LBB11_50
.LBB11_60:
	lui	a0, %hi(square)
	ld	s5, %lo(square)(a0)
.LBB11_61:
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	seqz	a0, a0
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	li	t6, 1
	lui	s7, %hi(EPZSMap)
	lui	ra, %hi(mvbits)
	mv	a0, t4
	mv	a1, s2
	j	.LBB11_64
.LBB11_62:                              #   in Loop: Header=BB11_64 Depth=1
	lui	a1, %hi(square)
	addi	a1, a1, %lo(square)
.LBB11_63:                              #   in Loop: Header=BB11_64 Depth=1
	ld	s5, 0(a1)
	sd	zero, 72(sp)                    # 8-byte Folded Spill
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	ld	a1, 56(sp)                      # 8-byte Folded Reload
.LBB11_64:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_66 Depth 2
                                        #       Child Loop BB11_68 Depth 3
	li	s8, 0
	sd	zero, 80(sp)                    # 8-byte Folded Spill
	sd	t4, 176(sp)                     # 8-byte Folded Spill
	sd	s2, 184(sp)                     # 8-byte Folded Spill
	mv	t4, a0
	mv	s2, a1
	mv	a0, s5
	j	.LBB11_66
.LBB11_65:                              #   in Loop: Header=BB11_66 Depth=2
	ld	a0, 8(s5)
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 4
	add	a0, a0, a1
	lw	s8, 8(a0)
	addi	a0, a0, 12
	ld	t4, 176(sp)                     # 8-byte Folded Reload
	ld	s2, 184(sp)                     # 8-byte Folded Reload
.LBB11_66:                              #   Parent Loop BB11_64 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_68 Depth 3
	lw	s1, 0(a0)
	addi	s1, s1, 1
	j	.LBB11_68
.LBB11_67:                              #   in Loop: Header=BB11_68 Depth=3
	lw	a0, 0(s5)
	slt	a1, s6, a0
	addi	a1, a1, -1
	and	a0, a1, a0
	subw	s8, s6, a0
	addiw	s1, s1, -1
	bge	t6, s1, .LBB11_74
.LBB11_68:                              #   Parent Loop BB11_64 Depth=1
                                        #     Parent Loop BB11_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 8(s5)
	slli	a1, s8, 4
	add	a0, a0, a1
	lw	a1, 0(a0)
	lh	a2, 0(s10)
	addw	s0, a1, s2
	sub	a1, s0, a2
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	addiw	s6, s8, 1
	blt	s4, a1, .LBB11_67
# %bb.69:                               #   in Loop: Header=BB11_68 Depth=3
	lw	a0, 4(a0)
	lh	a1, 0(a7)
	addw	s11, a0, t4
	sub	a0, s11, a1
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	s4, a0, .LBB11_67
# %bb.70:                               #   in Loop: Header=BB11_68 Depth=3
	ld	a0, %lo(EPZSMap)(s7)
	addw	a1, s11, t5
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	addw	a1, s0, s3
	add	a0, a0, a1
	lbu	a1, 0(a0)
	beq	a1, t6, .LBB11_67
# %bb.71:                               #   in Loop: Header=BB11_68 Depth=3
	sb	t6, 0(a0)
	ld	a2, %lo(mvbits)(ra)
	addw	a0, s0, t1
	addw	a1, s11, t0
	ld	a3, 200(sp)                     # 8-byte Folded Reload
	add	a3, a2, a3
	lw	a3, 0(a3)
	ld	a4, 192(sp)                     # 8-byte Folded Reload
	add	a4, a2, a4
	lw	a4, 0(a4)
	slli	a5, a0, 2
	ld	a6, 216(sp)                     # 8-byte Folded Reload
	subw	a5, a5, a6
	slli	a5, a5, 2
	add	a5, a2, a5
	slli	a6, a1, 2
	ld	t2, 208(sp)                     # 8-byte Folded Reload
	subw	a6, a6, t2
	slli	a6, a6, 2
	add	a2, a2, a6
	lw	a5, 0(a5)
	lw	a2, 0(a2)
	add	a3, a4, a3
	ld	a6, 224(sp)                     # 8-byte Folded Reload
	mul	a3, a3, a6
	sraiw	a4, a3, 16
	add	a2, a2, a5
	mul	a2, a2, a6
	sraiw	a2, a2, 16
	add	a4, a2, a4
	sext.w	s9, t3
	bge	a4, s9, .LBB11_67
# %bb.72:                               #   in Loop: Header=BB11_68 Depth=3
	lui	a2, %hi(computeBiPredSad)
	ld	t1, %lo(computeBiPredSad)(a2)
	sd	a1, 8(sp)
	sd	a0, 0(sp)
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	mv	a5, s9
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	ld	a7, 160(sp)                     # 8-byte Folded Reload
	mv	s3, t3
	mv	s7, s5
	mv	s5, s4
	mv	s4, s2
	mv	s2, s10
	mv	s10, t4
	jalr	t1
	lui	ra, %hi(mvbits)
	li	t6, 1
	mv	t4, s10
	mv	s10, s2
	mv	s2, s4
	mv	s4, s5
	mv	s5, s7
	lui	s7, %hi(EPZSMap)
	ld	t5, 104(sp)                     # 8-byte Folded Reload
	mv	t3, s3
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	t1, 136(sp)                     # 8-byte Folded Reload
	ld	t0, 144(sp)                     # 8-byte Folded Reload
	ld	a7, 152(sp)                     # 8-byte Folded Reload
	bge	a0, s9, .LBB11_67
# %bb.73:                               #   in Loop: Header=BB11_68 Depth=3
	sd	s11, 176(sp)                    # 8-byte Folded Spill
	sd	s0, 184(sp)                     # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	mv	t3, a0
	j	.LBB11_67
.LBB11_74:                              #   in Loop: Header=BB11_66 Depth=2
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	bne	a0, s2, .LBB11_65
# %bb.75:                               #   in Loop: Header=BB11_66 Depth=2
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	bne	a0, t4, .LBB11_65
# %bb.76:                               #   in Loop: Header=BB11_64 Depth=1
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	slti	a0, a0, 5
	not	a0, a0
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	not	a1, a1
	or	a0, a0, a1
	andi	a0, a0, 1
	bnez	a0, .LBB11_52
# %bb.77:                               #   in Loop: Header=BB11_64 Depth=1
	sext.w	a0, t3
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	bge	a1, a0, .LBB11_52
# %bb.78:                               #   in Loop: Header=BB11_64 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1021(a0)
	blez	a0, .LBB11_52
# %bb.79:                               #   in Loop: Header=BB11_64 Depth=1
	lh	a0, 0(s10)
	or	a1, s2, t4
	bnez	a1, .LBB11_82
.LBB11_80:                              #   in Loop: Header=BB11_64 Depth=1
	subw	a0, s2, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB11_62
# %bb.81:                               #   in Loop: Header=BB11_64 Depth=1
	lh	a0, 0(a7)
	subw	a0, t4, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	lui	a1, %hi(sdiamond)
	addi	a1, a1, %lo(sdiamond)
	li	a2, 2
	bgeu	a0, a2, .LBB11_62
	j	.LBB11_63
.LBB11_82:                              #   in Loop: Header=BB11_64 Depth=1
	lui	a1, %hi(searchPatternD)
	addi	a1, a1, %lo(searchPatternD)
	bne	s2, a0, .LBB11_63
# %bb.83:                               #   in Loop: Header=BB11_64 Depth=1
	lh	a2, 0(a7)
	bne	t4, a2, .LBB11_63
	j	.LBB11_80
.Lfunc_end11:
	.size	EPZSBiPredBlockMotionSearch, .Lfunc_end11-EPZSBiPredBlockMotionSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function computeBiPredSad2
	.type	computeBiPredSad2,@function
computeBiPredSad2:                      # @computeBiPredSad2
# %bb.0:
	addi	sp, sp, -144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	sd	s6, 80(sp)                      # 8-byte Folded Spill
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 48(sp)                     # 8-byte Folded Spill
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	sd	a7, 32(sp)                      # 8-byte Folded Spill
	sd	a6, 24(sp)                      # 8-byte Folded Spill
	mv	s0, a4
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	blez	a1, .LBB12_24
# %bb.1:
	mv	s3, a5
	mv	s4, a3
	mv	s5, a2
	li	s10, 0
	lui	a0, %hi(luma_log_weight_denom)
	lw	s7, %lo(luma_log_weight_denom)(a0)
	lui	a0, %hi(wp_luma_round)
	lw	s1, %lo(wp_luma_round)(a0)
	ld	s11, 152(sp)
	ld	s8, 144(sp)
	addi	s7, s7, 1
	slli	s1, s1, 1
	lui	s2, %hi(img_height)
	lui	s6, %hi(img_width)
	lui	a0, 22
	addiw	a0, a0, 420
	sd	a0, 0(sp)                       # 8-byte Folded Spill
.LBB12_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
	lui	a0, %hi(get_ref_line2)
	ld	a6, %lo(get_ref_line2)(a0)
	lui	a0, %hi(ref_pic2)
	ld	a1, %lo(ref_pic2)(a0)
	lh	a4, %lo(img_height)(s2)
	lh	a5, %lo(img_width)(s6)
	addw	a2, s10, s11
	mv	a0, s5
	mv	a3, s8
	jalr	a6
	lui	a1, %hi(get_ref_line1)
	ld	a6, %lo(get_ref_line1)(a1)
	lui	a1, %hi(ref_pic1)
	ld	a1, %lo(ref_pic1)(a1)
	lh	a4, %lo(img_height)(s2)
	lh	a5, %lo(img_width)(s6)
	mv	s9, a0
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	addw	a2, s10, a0
	mv	a0, s5
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	jalr	a6
	blez	s4, .LBB12_22
# %bb.3:                                #   in Loop: Header=BB12_2 Depth=1
	slli	a1, s10, 3
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(weight1)
	lh	a2, %lo(weight1)(a2)
	lui	a3, %hi(weight2)
	lh	a3, %lo(weight2)(a3)
	lui	a4, %hi(img)
	ld	a6, %lo(img)(a4)
	lui	a4, %hi(offsetBi)
	lh	a4, %lo(offsetBi)(a4)
	lui	a5, %hi(byte_abs)
	ld	a5, %lo(byte_abs)(a5)
	ld	a7, 0(sp)                       # 8-byte Folded Reload
	add	a6, a6, a7
	li	t1, 1
.LBB12_4:                               #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a7, 0(a0)
	lhu	t0, 0(s9)
	mul	a7, a7, a2
	mul	t0, t0, a3
	add	a7, a7, s1
	add	a7, a7, t0
	sraw	a7, a7, s7
	addw	t0, a7, a4
	mv	a7, t1
	bltz	t0, .LBB12_7
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=2
	lw	t1, 0(a6)
	blt	t0, t1, .LBB12_8
# %bb.6:                                #   in Loop: Header=BB12_4 Depth=2
	mv	t0, t1
	j	.LBB12_8
.LBB12_7:                               #   in Loop: Header=BB12_4 Depth=2
	li	t0, 0
.LBB12_8:                               #   in Loop: Header=BB12_4 Depth=2
	lhu	t1, 2(a0)
	lhu	t2, 2(s9)
	mul	t1, t1, a2
	mul	t2, t2, a3
	add	t1, t1, s1
	add	t1, t1, t2
	sraw	t1, t1, s7
	addw	t1, t1, a4
	bltz	t1, .LBB12_11
# %bb.9:                                #   in Loop: Header=BB12_4 Depth=2
	lw	t2, 0(a6)
	blt	t1, t2, .LBB12_12
# %bb.10:                               #   in Loop: Header=BB12_4 Depth=2
	mv	t1, t2
	j	.LBB12_12
.LBB12_11:                              #   in Loop: Header=BB12_4 Depth=2
	li	t1, 0
.LBB12_12:                              #   in Loop: Header=BB12_4 Depth=2
	lhu	t2, 4(a0)
	lhu	t3, 4(s9)
	mul	t2, t2, a2
	mul	t3, t3, a3
	add	t2, t2, s1
	add	t2, t2, t3
	sraw	t2, t2, s7
	addw	t2, t2, a4
	bltz	t2, .LBB12_15
# %bb.13:                               #   in Loop: Header=BB12_4 Depth=2
	lw	t3, 0(a6)
	blt	t2, t3, .LBB12_16
# %bb.14:                               #   in Loop: Header=BB12_4 Depth=2
	mv	t2, t3
	j	.LBB12_16
.LBB12_15:                              #   in Loop: Header=BB12_4 Depth=2
	li	t2, 0
.LBB12_16:                              #   in Loop: Header=BB12_4 Depth=2
	lhu	t3, 6(a0)
	lhu	t4, 6(s9)
	mul	t3, t3, a2
	mul	t4, t4, a3
	add	t3, t3, s1
	add	t3, t3, t4
	sraw	t3, t3, s7
	addw	t3, t3, a4
	bltz	t3, .LBB12_19
# %bb.17:                               #   in Loop: Header=BB12_4 Depth=2
	lw	t4, 0(a6)
	blt	t3, t4, .LBB12_20
# %bb.18:                               #   in Loop: Header=BB12_4 Depth=2
	mv	t3, t4
	j	.LBB12_20
.LBB12_19:                              #   in Loop: Header=BB12_4 Depth=2
	li	t3, 0
.LBB12_20:                              #   in Loop: Header=BB12_4 Depth=2
	lhu	t4, 0(a1)
	subw	t0, t4, t0
	lhu	t4, 2(a1)
	slli	t0, t0, 2
	add	t0, a5, t0
	lw	t0, 0(t0)
	subw	t1, t4, t1
	lhu	t4, 4(a1)
	slli	t1, t1, 2
	add	t1, a5, t1
	lw	t1, 0(t1)
	subw	t2, t4, t2
	lhu	t4, 6(a1)
	slli	t2, t2, 2
	add	t2, a5, t2
	lw	t2, 0(t2)
	subw	t4, t4, t3
	slli	t4, t4, 2
	add	t4, a5, t4
	lw	t3, 0(t4)
	add	t0, t0, s0
	add	t1, t1, t2
	add	t0, t0, t1
	addw	s0, t0, t3
	bge	s0, s3, .LBB12_22
# %bb.21:                               #   in Loop: Header=BB12_4 Depth=2
	addiw	t1, a7, 1
	addi	a0, a0, 8
	addi	s9, s9, 8
	addi	a1, a1, 8
	blt	a7, s4, .LBB12_4
.LBB12_22:                              #   in Loop: Header=BB12_2 Depth=1
	bge	s0, s3, .LBB12_24
# %bb.23:                               #   in Loop: Header=BB12_2 Depth=1
	addi	s10, s10, 1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	bne	s10, a0, .LBB12_2
.LBB12_24:
	mv	a0, s0
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	ld	s10, 48(sp)                     # 8-byte Folded Reload
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 144
	ret
.Lfunc_end12:
	.size	computeBiPredSad2, .Lfunc_end12-computeBiPredSad2
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function computeBiPredSad1
	.type	computeBiPredSad1,@function
computeBiPredSad1:                      # @computeBiPredSad1
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
	sd	a7, 16(sp)                      # 8-byte Folded Spill
	mv	s0, a4
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	blez	a1, .LBB13_7
# %bb.1:
	mv	s2, a6
	mv	s3, a5
	mv	s4, a3
	mv	s5, a2
	mv	s6, a1
	li	s10, 0
	ld	s11, 136(sp)
	ld	s8, 128(sp)
	addi	a0, a3, -1
	slli	a0, a0, 32
	srli	a0, a0, 29
	addi	a0, a0, 8
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	lui	s7, %hi(img_height)
	lui	s1, %hi(img_width)
.LBB13_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
	lui	a0, %hi(get_ref_line2)
	ld	a6, %lo(get_ref_line2)(a0)
	lui	a0, %hi(ref_pic2)
	ld	a1, %lo(ref_pic2)(a0)
	lh	a4, %lo(img_height)(s7)
	lh	a5, %lo(img_width)(s1)
	addw	a2, s10, s11
	mv	a0, s5
	mv	a3, s8
	jalr	a6
	lui	a1, %hi(get_ref_line1)
	ld	a6, %lo(get_ref_line1)(a1)
	lui	a1, %hi(ref_pic1)
	ld	a1, %lo(ref_pic1)(a1)
	lh	a4, %lo(img_height)(s7)
	lh	a5, %lo(img_width)(s1)
	mv	s9, a0
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addw	a2, s10, a0
	mv	a0, s5
	mv	a3, s2
	jalr	a6
	blez	s4, .LBB13_5
# %bb.3:                                #   in Loop: Header=BB13_2 Depth=1
	slli	a1, s10, 3
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	ld	a3, 0(sp)                       # 8-byte Folded Reload
	add	a3, a1, a3
.LBB13_4:                               #   Parent Loop BB13_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a4, 0(a0)
	lhu	a5, 0(s9)
	lhu	a6, 0(a1)
	add	a4, a5, a4
	lhu	a5, 2(a0)
	lhu	a7, 2(s9)
	srli	a4, a4, 1
	sub	a4, a6, a4
	lhu	a6, 2(a1)
	add	a5, a7, a5
	lhu	a7, 4(a0)
	lhu	t0, 4(s9)
	srli	a5, a5, 1
	sub	a5, a6, a5
	lhu	a6, 4(a1)
	add	a7, t0, a7
	lhu	t0, 6(a0)
	lhu	t1, 6(s9)
	srli	a7, a7, 1
	lhu	t2, 6(a1)
	sub	a6, a6, a7
	add	t0, t1, t0
	srli	a7, t0, 1
	sub	a7, t2, a7
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
	addi	s9, s9, 8
	bne	a1, a3, .LBB13_4
.LBB13_5:                               #   in Loop: Header=BB13_2 Depth=1
	bge	s0, s3, .LBB13_7
# %bb.6:                                #   in Loop: Header=BB13_2 Depth=1
	addi	s10, s10, 1
	bne	s10, s6, .LBB13_2
.LBB13_7:
	mv	a0, s0
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
.Lfunc_end13:
	.size	computeBiPredSad1, .Lfunc_end13-computeBiPredSad1
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	EPZSOutputStats                 # -- Begin function EPZSOutputStats
	.p2align	2
	.type	EPZSOutputStats,@function
EPZSOutputStats:                        # @EPZSOutputStats
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
	lui	s7, %hi(input)
	ld	a2, %lo(input)(s7)
	addi	a2, a2, 2047
	lw	a2, 1017(a2)
	mv	s3, a0
	li	s8, 20
	mul	a2, a2, s8
	lui	a3, %hi(c_EPZSPattern)
	addi	a3, a3, %lo(c_EPZSPattern)
	li	a4, 1
	add	a2, a3, a2
	beq	a1, a4, .LBB14_2
# %bb.1:
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	lui	s6, %hi(.L.str.10)
	addi	s6, s6, %lo(.L.str.10)
	lui	s5, %hi(.L.str.11)
	addi	s5, s5, %lo(.L.str.11)
	lui	s4, %hi(.L.str.12)
	addi	s4, s4, %lo(.L.str.12)
	lui	s2, %hi(.L.str.13)
	addi	s2, s2, %lo(.L.str.13)
	lui	s1, %hi(.L.str.14)
	addi	s1, s1, %lo(.L.str.14)
	lui	s0, %hi(.L.str.15)
	addi	s0, s0, %lo(.L.str.15)
	j	.LBB14_3
.LBB14_2:
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	lui	s6, %hi(.L.str.3)
	addi	s6, s6, %lo(.L.str.3)
	lui	s5, %hi(.L.str.4)
	addi	s5, s5, %lo(.L.str.4)
	lui	s4, %hi(.L.str.5)
	addi	s4, s4, %lo(.L.str.5)
	lui	s2, %hi(.L.str.6)
	addi	s2, s2, %lo(.L.str.6)
	lui	s1, %hi(.L.str.7)
	addi	s1, s1, %lo(.L.str.7)
	lui	s0, %hi(.L.str.8)
	addi	s0, s0, %lo(.L.str.8)
.LBB14_3:
	mv	a0, s3
	call	fprintf
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	lw	a0, 1021(a0)
	mul	a2, a0, s8
	lui	a0, %hi(c_EPZSDualPattern)
	addi	a0, a0, %lo(c_EPZSDualPattern)
	add	a2, a0, a2
	mv	a0, s3
	mv	a1, s6
	call	fprintf
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	lw	a0, 1025(a0)
	mul	a2, a0, s8
	lui	a0, %hi(c_EPZSFixed)
	addi	a0, a0, %lo(c_EPZSFixed)
	add	a2, a0, a2
	mv	a0, s3
	mv	a1, s5
	call	fprintf
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	lw	a0, 1029(a0)
	mul	a2, a0, s8
	lui	s5, %hi(c_EPZSOther)
	addi	s5, s5, %lo(c_EPZSOther)
	add	a2, s5, a2
	mv	a0, s3
	mv	a1, s4
	call	fprintf
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	lw	a0, 1033(a0)
	mul	a2, a0, s8
	add	a2, s5, a2
	mv	a0, s3
	mv	a1, s2
	call	fprintf
	lui	a0, %hi(medthres+4)
	lw	a2, %lo(medthres+4)(a0)
	lui	a0, %hi(minthres+4)
	lw	a3, %lo(minthres+4)(a0)
	lui	a0, %hi(maxthres+4)
	lw	a4, %lo(maxthres+4)(a0)
	mv	a0, s3
	mv	a1, s1
	call	fprintf
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	lw	a0, 1049(a0)
	mul	a2, a0, s8
	add	a2, s5, a2
	mv	a0, s3
	mv	a1, s0
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
	tail	fprintf
.Lfunc_end14:
	.size	EPZSOutputStats, .Lfunc_end14-EPZSOutputStats
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	EPZSSubPelBlockMotionSearch     # -- Begin function EPZSSubPelBlockMotionSearch
	.p2align	2
	.type	EPZSSubPelBlockMotionSearch,@function
EPZSSubPelBlockMotionSearch:            # @EPZSSubPelBlockMotionSearch
# %bb.0:
	addi	sp, sp, -1504
	sd	ra, 1496(sp)                    # 8-byte Folded Spill
	sd	s0, 1488(sp)                    # 8-byte Folded Spill
	sd	s1, 1480(sp)                    # 8-byte Folded Spill
	sd	s2, 1472(sp)                    # 8-byte Folded Spill
	sd	s3, 1464(sp)                    # 8-byte Folded Spill
	sd	s4, 1456(sp)                    # 8-byte Folded Spill
	sd	s5, 1448(sp)                    # 8-byte Folded Spill
	sd	s6, 1440(sp)                    # 8-byte Folded Spill
	sd	s7, 1432(sp)                    # 8-byte Folded Spill
	sd	s8, 1424(sp)                    # 8-byte Folded Spill
	sd	s9, 1416(sp)                    # 8-byte Folded Spill
	sd	s10, 1408(sp)                   # 8-byte Folded Spill
	sd	s11, 1400(sp)                   # 8-byte Folded Spill
	sd	a0, 208(sp)                     # 8-byte Folded Spill
	li	a0, 3
	li	t0, 64
	sd	t0, 216(sp)                     # 8-byte Folded Spill
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	beq	a5, a0, .LBB15_2
# %bb.1:
	li	a0, 128
	sd	a0, 216(sp)                     # 8-byte Folded Spill
.LBB15_2:
	lui	a0, %hi(input)
	ld	a5, %lo(input)(a0)
	ld	t2, 1520(sp)
	ld	s2, 1512(sp)
	ld	s7, 1504(sp)
	addi	s0, a5, 2047
	lw	a0, 1089(s0)
	lui	t0, %hi(img)
	ld	t6, %lo(img)(t0)
	beqz	a0, .LBB15_47
.LBB15_3:
	li	s3, 0
.LBB15_4:
	lw	a0, 24(a5)
	mv	t0, t2
	bgtz	t2, .LBB15_6
# %bb.5:
	li	t0, 1
.LBB15_6:
	ld	t1, 64(sp)                      # 8-byte Folded Reload
	slli	t1, t1, 3
	beqz	a0, .LBB15_8
# %bb.7:
	mv	t2, t0
.LBB15_8:
	sd	t2, 32(sp)                      # 8-byte Folded Spill
	lui	t0, 8
	add	t0, t6, t0
	ld	t0, -1192(t0)
	lw	t2, 12(t6)
	lui	t3, %hi(active_pps)
	ld	t3, %lo(active_pps)(t3)
	li	t4, 528
	mul	t2, t2, t4
	add	t0, t0, t2
	lw	t4, 192(t3)
	lw	t0, 428(t0)
	add	t1, a5, t1
	slli	t2, a3, 2
	beqz	t4, .LBB15_11
# %bb.9:
	lw	t4, 24(t6)
	li	a3, 1
	beqz	t4, .LBB15_13
# %bb.10:
	li	t5, 3
	beq	t4, t5, .LBB15_13
.LBB15_11:
	lw	a3, 196(t3)
	beqz	a3, .LBB15_13
# %bb.12:
	lw	a3, 24(t6)
	addi	a3, a3, -1
	seqz	a3, a3
.LBB15_13:
	slli	a4, a4, 2
	lw	t3, 84(t1)
	sd	t3, 304(sp)                     # 8-byte Folded Spill
	lw	t1, 88(t1)
	sd	t1, 224(sp)                     # 8-byte Folded Spill
	addi	t2, t2, 16
	sd	t2, 136(sp)                     # 8-byte Folded Spill
	addi	t1, a0, -2
	sd	t1, 56(sp)                      # 8-byte Folded Spill
	seqz	t1, t1
	addi	t1, t1, -1
	lw	t2, 1845(s0)
	addw	a2, t0, a2
	slli	a2, a2, 3
	lui	t0, %hi(listX)
	addi	t0, t0, %lo(listX)
	add	a2, t0, a2
	ld	a2, 0(a2)
	and	t4, t1, a0
	snez	t2, t2
	slli	a1, a1, 3
	add	a1, a2, a1
	ld	a2, 0(a1)
	snez	a1, t4
	lui	t0, 2
	addiw	t1, t0, -1800
	add	t1, a2, t1
	beqz	a3, .LBB15_16
# %bb.14:
	lw	a3, 1912(a5)
	beqz	a3, .LBB15_16
# %bb.15:
	addiw	a3, t0, -1736
	j	.LBB15_17
.LBB15_16:
	addiw	a3, t0, -1744
.LBB15_17:
	ld	a5, 64(sp)                      # 8-byte Folded Reload
	slti	t3, a5, 5
	and	a1, t2, a1
	ld	t2, 1544(sp)
	lw	a5, 0(t1)
	lw	t0, 4(t1)
	addi	a4, a4, 16
	sd	a4, 128(sp)                     # 8-byte Folded Spill
	add	a2, a2, a3
	slli	s5, a5, 2
	slli	s6, t0, 2
	lh	a4, 0(s7)
	ld	a3, 304(sp)                     # 8-byte Folded Reload
	subw	a3, a5, a3
	slli	a3, a3, 2
	ld	a5, 224(sp)                     # 8-byte Folded Reload
	subw	t1, t0, a5
	ld	a5, 136(sp)                     # 8-byte Folded Reload
	addw	a5, a5, a4
	li	t0, 2
	slli	a4, t1, 2
	blt	a5, t0, .LBB15_22
# %bb.18:
	addiw	t0, a3, 31
	bge	a5, t0, .LBB15_22
# %bb.19:
	lh	a5, 0(s2)
	ld	t0, 128(sp)                     # 8-byte Folded Reload
	addw	a5, t0, a5
	li	t0, 2
	blt	a5, t0, .LBB15_22
# %bb.20:
	addiw	t0, a4, 31
	bge	a5, t0, .LBB15_22
# %bb.21:
	lui	a5, %hi(FastLine4X)
	addi	a5, a5, %lo(FastLine4X)
	j	.LBB15_23
.LBB15_22:
	lui	a5, %hi(UMVLine4X)
	addi	a5, a5, %lo(UMVLine4X)
.LBB15_23:
	sd	zero, 112(sp)                   # 8-byte Folded Spill
	li	t5, 0
	ld	t0, 1536(sp)
	sd	t0, 288(sp)                     # 8-byte Folded Spill
	ld	t0, 1528(sp)
	sd	t0, 24(sp)                      # 8-byte Folded Spill
	sd	t3, 48(sp)                      # 8-byte Folded Spill
	and	a1, a1, t3
	sd	a1, 296(sp)                     # 8-byte Folded Spill
	ld	s4, 0(a2)
	addiw	s5, s5, 28
	addiw	s6, s6, 28
	addiw	a1, a3, 32
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	addiw	a1, a4, 32
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	addi	a0, a0, -1
	snez	t3, a0
	lui	s0, %hi(get_line)
	sd	a5, %lo(get_line)(s0)
	srai	a5, t2, 12
	lui	a0, 524288
	addi	s9, a0, -1
	lui	t1, %hi(search_point_hp_x)
	addi	t1, t1, %lo(search_point_hp_x)
	lui	t0, %hi(search_point_hp_y)
	addi	t0, t0, %lo(search_point_hp_y)
	lui	t6, %hi(mvbits)
	li	s8, 5
	sd	a7, 192(sp)                     # 8-byte Folded Spill
	sd	a6, 184(sp)                     # 8-byte Folded Spill
	sd	s2, 176(sp)                     # 8-byte Folded Spill
	sd	s7, 168(sp)                     # 8-byte Folded Spill
	sd	t2, 160(sp)                     # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	sd	t4, 80(sp)                      # 8-byte Folded Spill
	sd	a5, 72(sp)                      # 8-byte Folded Spill
	j	.LBB15_26
.LBB15_24:                              #   in Loop: Header=BB15_26 Depth=1
	mv	s9, a0
	mv	t5, a1
.LBB15_25:                              #   in Loop: Header=BB15_26 Depth=1
	addi	t3, t3, 1
	beq	t3, s8, .LBB15_42
.LBB15_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_30 Depth 2
                                        #       Child Loop BB15_34 Depth 3
	lh	a0, 0(s7)
	slli	a1, t3, 2
	add	a2, t1, a1
	lw	a2, 0(a2)
	lh	a3, 0(s2)
	add	a1, t0, a1
	lw	a1, 0(a1)
	add	a0, a2, a0
	ld	a2, %lo(mvbits)(t6)
	add	a1, a1, a3
	subw	a3, a0, a6
	slli	a3, a3, 2
	add	a3, a2, a3
	lw	a3, 0(a3)
	subw	a4, a1, a7
	slli	a4, a4, 2
	add	a2, a2, a4
	lw	a2, 0(a2)
	add	a2, a2, a3
	mul	a2, a2, t2
	sraiw	a2, a2, 16
	seqz	a3, t3
	and	a3, s3, a3
	neg	a3, a3
	and	a3, a3, a5
	sub	s1, a2, a3
	lw	a3, 288(sp)                     # 8-byte Folded Reload
	sext.w	a2, t4
	sd	a2, 256(sp)                     # 8-byte Folded Spill
	sd	a3, 248(sp)                     # 8-byte Folded Spill
	bge	s1, a3, .LBB15_25
# %bb.27:                               #   in Loop: Header=BB15_26 Depth=1
	sd	s9, 104(sp)                     # 8-byte Folded Spill
	sd	t3, 120(sp)                     # 8-byte Folded Spill
	sd	t5, 96(sp)                      # 8-byte Folded Spill
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	blez	a2, .LBB15_36
# %bb.28:                               # %.preheader15
                                        #   in Loop: Header=BB15_26 Depth=1
	li	a3, 0
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a2
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	j	.LBB15_30
.LBB15_29:                              #   in Loop: Header=BB15_30 Depth=2
	ld	a1, 200(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB15_36
.LBB15_30:                              #   Parent Loop BB15_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_34 Depth 3
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	sd	a3, 200(sp)                     # 8-byte Folded Spill
	blez	a0, .LBB15_29
# %bb.31:                               #   in Loop: Header=BB15_30 Depth=2
	li	s7, 0
	li	s3, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	ld	a1, 144(sp)                     # 8-byte Folded Reload
	addw	s8, a1, a0
	addiw	a0, s8, 4
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 8
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 12
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s9, 208(sp)                     # 8-byte Folded Reload
	add	s9, s9, a0
	andi	a0, a0, 32
	sd	a0, 232(sp)                     # 8-byte Folded Spill
	li	s11, 6
	ld	s2, 152(sp)                     # 8-byte Folded Reload
	j	.LBB15_34
.LBB15_32:                              #   in Loop: Header=BB15_34 Depth=3
	andi	a0, s7, 4
	sltiu	a1, s3, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 240(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 376
	add	a1, a6, a0
	lw	a2, 324(sp)
	lw	a3, 320(sp)
	lw	a4, 316(sp)
	lw	a5, 312(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 328
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
	addi	a5, sp, 344
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
	addi	a4, sp, 360
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB15_33:                              #   in Loop: Header=BB15_34 Depth=3
	addi	s3, s3, 4
	addiw	s7, s7, 4
	addi	s11, s11, 8
	addiw	s2, s2, 16
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	bge	s7, a0, .LBB15_29
.LBB15_34:                              #   Parent Loop BB15_26 Depth=1
                                        #     Parent Loop BB15_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s9)
	ld	a5, %lo(get_line)(s0)
	add	s10, a0, s11
	mv	a0, s4
	mv	a1, s8
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 312(sp)
	subw	a2, a2, a3
	sw	a2, 316(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 320(sp)
	ld	a2, 8(s9)
	ld	a5, %lo(get_line)(s0)
	subw	a1, a1, a0
	sw	a1, 324(sp)
	add	s10, a2, s11
	mv	a0, s4
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 328(sp)
	subw	a2, a2, a3
	sw	a2, 332(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 336(sp)
	ld	a2, 16(s9)
	ld	a5, %lo(get_line)(s0)
	subw	a1, a1, a0
	sw	a1, 340(sp)
	add	s10, a2, s11
	mv	a0, s4
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 344(sp)
	subw	a2, a2, a3
	sw	a2, 348(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 352(sp)
	ld	a2, 24(s9)
	ld	a5, %lo(get_line)(s0)
	subw	a1, a1, a0
	sw	a1, 356(sp)
	add	s10, a2, s11
	mv	a0, s4
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	lhu	a3, -4(s10)
	lhu	a4, 8(a0)
	subw	a1, a1, a2
	sw	a1, 360(sp)
	subw	a3, a3, a4
	lhu	a1, -2(s10)
	lhu	a2, 16(a0)
	lhu	a4, 0(s10)
	lhu	a0, 24(a0)
	sw	a3, 364(sp)
	subw	a1, a1, a2
	sw	a1, 368(sp)
	subw	a4, a4, a0
	sw	a4, 372(sp)
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB15_32
# %bb.35:                               #   in Loop: Header=BB15_34 Depth=3
	addi	a0, sp, 312
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	call	SATD
	addw	s1, a0, s1
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	bge	a0, s1, .LBB15_33
	j	.LBB15_38
.LBB15_36:                              #   in Loop: Header=BB15_26 Depth=1
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB15_38
# %bb.37:                               #   in Loop: Header=BB15_26 Depth=1
	addi	a0, sp, 376
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	call	find_SATD
	add	s1, a0, s1
.LBB15_38:                              #   in Loop: Header=BB15_26 Depth=1
	sext.w	a0, s1
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB15_40
# %bb.39:                               #   in Loop: Header=BB15_26 Depth=1
	ld	s9, 288(sp)                     # 8-byte Folded Reload
	ld	t5, 112(sp)                     # 8-byte Folded Reload
	ld	t3, 120(sp)                     # 8-byte Folded Reload
	sd	t3, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 288(sp)                     # 8-byte Folded Spill
	ld	a7, 192(sp)                     # 8-byte Folded Reload
	ld	a6, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s7, 168(sp)                     # 8-byte Folded Reload
	ld	t2, 160(sp)                     # 8-byte Folded Reload
	lui	t0, %hi(search_point_hp_y)
	addi	t0, t0, %lo(search_point_hp_y)
	lui	t1, %hi(search_point_hp_x)
	addi	t1, t1, %lo(search_point_hp_x)
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	t4, 80(sp)                      # 8-byte Folded Reload
	ld	a5, 72(sp)                      # 8-byte Folded Reload
	lui	t6, %hi(mvbits)
	li	s8, 5
	j	.LBB15_25
.LBB15_40:                              #   in Loop: Header=BB15_26 Depth=1
	lw	a2, 104(sp)                     # 8-byte Folded Reload
	ld	t3, 120(sp)                     # 8-byte Folded Reload
	mv	a1, t3
	ld	a7, 192(sp)                     # 8-byte Folded Reload
	ld	a6, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s7, 168(sp)                     # 8-byte Folded Reload
	ld	t2, 160(sp)                     # 8-byte Folded Reload
	lui	t0, %hi(search_point_hp_y)
	addi	t0, t0, %lo(search_point_hp_y)
	lui	t1, %hi(search_point_hp_x)
	addi	t1, t1, %lo(search_point_hp_x)
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	t4, 80(sp)                      # 8-byte Folded Reload
	ld	a5, 72(sp)                      # 8-byte Folded Reload
	lui	t6, %hi(mvbits)
	li	s8, 5
	blt	a0, a2, .LBB15_24
# %bb.41:                               #   in Loop: Header=BB15_26 Depth=1
	mv	a0, a2
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	j	.LBB15_24
.LBB15_42:
	ld	a5, 112(sp)                     # 8-byte Folded Reload
	sext.w	a0, a5
	beqz	a0, .LBB15_53
# %bb.43:
	sext.w	a1, t5
	beqz	a1, .LBB15_56
# %bb.44:
	xor	a0, a5, t5
	addiw	a0, a0, -1
	li	a1, 7
	li	t3, 5
	bgeu	a0, a1, .LBB15_60
# %bb.45:
	li	a1, 85
	srl	a1, a1, a0
	andi	a1, a1, 1
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	beqz	a1, .LBB15_68
# %bb.46:
	slli	a0, a0, 2
	lui	a1, %hi(.Lswitch.table.EPZSSubPelBlockMotionSearch.19)
	addi	a1, a1, %lo(.Lswitch.table.EPZSSubPelBlockMotionSearch.19)
	add	a1, a1, a0
	lw	t3, 0(a1)
	lui	a1, %hi(.Lswitch.table.EPZSSubPelBlockMotionSearch.20)
	addi	a1, a1, %lo(.Lswitch.table.EPZSSubPelBlockMotionSearch.20)
	add	a0, a1, a0
	lw	a4, 0(a0)
	j	.LBB15_69
.LBB15_47:
	li	a0, 1
	li	s3, 0
	ld	t0, 64(sp)                      # 8-byte Folded Reload
	bne	t0, a0, .LBB15_4
# %bb.48:
	bnez	a1, .LBB15_4
# %bb.49:
	lw	a0, 24(t6)
	li	t0, 1
	beq	a0, t0, .LBB15_4
# %bb.50:
	lhu	a0, 0(s7)
	bnez	a0, .LBB15_3
# %bb.51:
	lhu	a0, 0(s2)
	bnez	a0, .LBB15_3
# %bb.52:
	lw	a0, 24(a5)
	snez	s3, a0
	j	.LBB15_4
.LBB15_53:
	lh	a1, 0(s7)
	bne	a1, a6, .LBB15_56
# %bb.54:
	lh	a1, 0(s2)
	bne	a1, a7, .LBB15_56
# %bb.55:
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 2
	lui	a2, %hi(subthres)
	addi	a2, a2, %lo(subthres)
	add	a1, a2, a1
	lw	a1, 0(a1)
	lw	a2, 288(sp)                     # 8-byte Folded Reload
	bge	a2, a1, .LBB15_56
	j	.LBB15_155
.LBB15_56:
	addw	a1, a5, t5
	li	a2, 7
	bltu	a2, a1, .LBB15_61
# %bb.57:
	slli	a1, a1, 2
	lui	a2, %hi(.LJTI15_0)
	addi	a2, a2, %lo(.LJTI15_0)
	add	a1, a1, a2
	lw	a1, 0(a1)
	jr	a1
.LBB15_58:
	beqz	a0, .LBB15_66
# %bb.59:
	lhu	a0, 0(s7)
	j	.LBB15_87
.LBB15_60:
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	j	.LBB15_68
.LBB15_61:
	li	t3, 5
	ld	a4, 32(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB15_68
	j	.LBB15_67
.LBB15_62:
	li	t3, 5
	li	a4, 7
	bnez	a0, .LBB15_69
	j	.LBB15_67
.LBB15_63:
	li	t3, 8
	li	a4, 10
	bnez	a0, .LBB15_69
	j	.LBB15_67
.LBB15_64:
	li	t3, 6
	li	a4, 8
	bnez	a0, .LBB15_69
	j	.LBB15_67
.LBB15_65:
	li	t3, 7
	li	a4, 9
	bnez	a0, .LBB15_69
	j	.LBB15_67
.LBB15_66:
	li	a4, 5
	li	t3, 5
.LBB15_67:
	lh	a0, 0(s7)
	sub	a1, a6, a0
	lh	a2, 0(s2)
	sraiw	a3, a1, 31
	xor	a1, a1, a3
	subw	a1, a1, a3
	sub	a2, a7, a2
	sraiw	a3, a2, 31
	xor	a2, a2, a3
	subw	a2, a2, a3
	or	a1, a2, a1
	beqz	a1, .LBB15_156
.LBB15_68:
	bge	t3, a4, .LBB15_86
.LBB15_69:
	sext.w	t4, a4
	lui	t5, %hi(mvbits)
	lui	s3, %hi(get_line)
	sd	t4, 104(sp)                     # 8-byte Folded Spill
	j	.LBB15_72
.LBB15_70:                              #   in Loop: Header=BB15_72 Depth=1
	mv	a5, a0
	sd	s1, 288(sp)                     # 8-byte Folded Spill
	ld	a7, 192(sp)                     # 8-byte Folded Reload
	ld	a6, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s7, 168(sp)                     # 8-byte Folded Reload
	ld	t2, 160(sp)                     # 8-byte Folded Reload
	lui	t0, %hi(search_point_hp_y)
	addi	t0, t0, %lo(search_point_hp_y)
	lui	t1, %hi(search_point_hp_x)
	addi	t1, t1, %lo(search_point_hp_x)
	ld	t4, 104(sp)                     # 8-byte Folded Reload
	lui	t5, %hi(mvbits)
.LBB15_71:                              #   in Loop: Header=BB15_72 Depth=1
	addi	t3, t3, 1
	beq	t3, t4, .LBB15_86
.LBB15_72:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_76 Depth 2
                                        #       Child Loop BB15_80 Depth 3
	lh	a0, 0(s7)
	slli	a1, t3, 2
	add	a2, t1, a1
	lw	a2, 0(a2)
	lh	a3, 0(s2)
	add	a1, t0, a1
	lw	a1, 0(a1)
	add	a0, a2, a0
	ld	a2, %lo(mvbits)(t5)
	add	a1, a1, a3
	subw	a3, a0, a6
	slli	a3, a3, 2
	add	a3, a2, a3
	lw	a3, 0(a3)
	subw	a4, a1, a7
	slli	a4, a4, 2
	add	a2, a2, a4
	lw	a2, 0(a2)
	add	a2, a2, a3
	mul	a2, a2, t2
	sraiw	s1, a2, 16
	lw	a2, 288(sp)                     # 8-byte Folded Reload
	bge	s1, a2, .LBB15_71
# %bb.73:                               #   in Loop: Header=BB15_72 Depth=1
	sd	a2, 120(sp)                     # 8-byte Folded Spill
	sd	t3, 144(sp)                     # 8-byte Folded Spill
	sd	a5, 112(sp)                     # 8-byte Folded Spill
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	blez	a2, .LBB15_82
# %bb.74:                               # %.preheader10
                                        #   in Loop: Header=BB15_72 Depth=1
	li	a3, 0
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a2
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	j	.LBB15_76
.LBB15_75:                              #   in Loop: Header=BB15_76 Depth=2
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB15_82
.LBB15_76:                              #   Parent Loop BB15_72 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_80 Depth 3
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	sd	a3, 232(sp)                     # 8-byte Folded Spill
	blez	a0, .LBB15_75
# %bb.77:                               #   in Loop: Header=BB15_76 Depth=2
	li	s7, 0
	li	s0, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	addw	s8, a1, a0
	addiw	a0, s8, 4
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 8
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 12
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s9, 208(sp)                     # 8-byte Folded Reload
	add	s9, s9, a0
	andi	a0, a0, 32
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	li	s11, 6
	ld	s2, 200(sp)                     # 8-byte Folded Reload
	j	.LBB15_80
.LBB15_78:                              #   in Loop: Header=BB15_80 Depth=3
	andi	a0, s7, 4
	sltiu	a1, s0, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 248(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 376
	add	a1, a6, a0
	lw	a2, 324(sp)
	lw	a3, 320(sp)
	lw	a4, 316(sp)
	lw	a5, 312(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 328
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
	addi	a5, sp, 344
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
	addi	a4, sp, 360
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB15_79:                              #   in Loop: Header=BB15_80 Depth=3
	addi	s0, s0, 4
	addiw	s7, s7, 4
	addi	s11, s11, 8
	addiw	s2, s2, 16
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	bge	s7, a0, .LBB15_75
.LBB15_80:                              #   Parent Loop BB15_72 Depth=1
                                        #     Parent Loop BB15_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s9)
	ld	a5, %lo(get_line)(s3)
	add	s10, a0, s11
	mv	a0, s4
	mv	a1, s8
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 312(sp)
	subw	a2, a2, a3
	sw	a2, 316(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 320(sp)
	ld	a2, 8(s9)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 324(sp)
	add	s10, a2, s11
	mv	a0, s4
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 328(sp)
	subw	a2, a2, a3
	sw	a2, 332(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 336(sp)
	ld	a2, 16(s9)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 340(sp)
	add	s10, a2, s11
	mv	a0, s4
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s10)
	lhu	a3, 8(a0)
	lhu	a4, -2(s10)
	lhu	a5, 16(a0)
	sw	a1, 344(sp)
	subw	a2, a2, a3
	sw	a2, 348(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s10)
	lhu	a0, 24(a0)
	sw	a4, 352(sp)
	ld	a2, 24(s9)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 356(sp)
	add	s10, a2, s11
	mv	a0, s4
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	mv	a2, s2
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s10)
	lhu	a2, 0(a0)
	lhu	a3, -4(s10)
	lhu	a4, 8(a0)
	subw	a1, a1, a2
	sw	a1, 360(sp)
	subw	a3, a3, a4
	lhu	a1, -2(s10)
	lhu	a2, 16(a0)
	lhu	a4, 0(s10)
	lhu	a0, 24(a0)
	sw	a3, 364(sp)
	subw	a1, a1, a2
	sw	a1, 368(sp)
	subw	a4, a4, a0
	sw	a4, 372(sp)
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB15_78
# %bb.81:                               #   in Loop: Header=BB15_80 Depth=3
	addi	a0, sp, 312
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	call	SATD
	addw	s1, a0, s1
	lw	a0, 288(sp)                     # 8-byte Folded Reload
	bge	a0, s1, .LBB15_79
	j	.LBB15_84
.LBB15_82:                              #   in Loop: Header=BB15_72 Depth=1
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB15_84
# %bb.83:                               #   in Loop: Header=BB15_72 Depth=1
	addi	a0, sp, 376
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s1, a0, s1
.LBB15_84:                              #   in Loop: Header=BB15_72 Depth=1
	ld	t3, 144(sp)                     # 8-byte Folded Reload
	mv	a0, t3
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	blt	s1, a1, .LBB15_70
# %bb.85:                               #   in Loop: Header=BB15_72 Depth=1
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	mv	s1, a1
	j	.LBB15_70
.LBB15_86:
	lhu	a0, 0(s7)
	sext.w	a1, a5
	beqz	a1, .LBB15_88
.LBB15_87:
	sext.w	a1, a5
	slli	a1, a1, 2
	add	a2, t1, a1
	lh	a2, 0(a2)
	add	a0, a0, a2
	sh	a0, 0(s7)
	add	a1, t0, a1
	lh	a0, 0(a1)
	lh	a1, 0(s2)
	add	a0, a1, a0
	sh	a0, 0(s2)
	lhu	a0, 0(s7)
.LBB15_88:
	lui	a1, %hi(input)
	ld	a2, %lo(input)(a1)
	lw	a1, 24(a2)
	li	a3, 2
	bne	a1, a3, .LBB15_90
# %bb.89:
	lui	a3, 524288
	addi	a3, a3, -1
	sd	a3, 288(sp)                     # 8-byte Folded Spill
.LBB15_90:
	addi	a2, a2, 2047
	lw	a2, 1845(a2)
	snez	a2, a2
	snez	a3, a1
	slli	a0, a0, 48
	srai	a0, a0, 48
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	addw	a1, a1, a0
	and	a0, a2, a3
	blez	a1, .LBB15_95
# %bb.91:
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	bge	a1, a2, .LBB15_95
# %bb.92:
	lh	a1, 0(s2)
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	addw	a1, a2, a1
	blez	a1, .LBB15_95
# %bb.93:
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	bge	a1, a2, .LBB15_95
# %bb.94:
	lui	a1, %hi(FastLine4X)
	addi	a1, a1, %lo(FastLine4X)
	j	.LBB15_96
.LBB15_95:
	lui	a1, %hi(UMVLine4X)
	addi	a1, a1, %lo(UMVLine4X)
.LBB15_96:
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	li	t1, 0
	sd	zero, 104(sp)                   # 8-byte Folded Spill
	ld	a3, 48(sp)                      # 8-byte Folded Reload
	and	a0, a0, a3
	sd	a0, 296(sp)                     # 8-byte Folded Spill
	snez	t3, a2
	lui	s0, %hi(get_line)
	sd	a1, %lo(get_line)(s0)
	lui	a0, 524288
	addiw	t5, a0, -1
	lui	t0, %hi(search_point_qp_x)
	addi	t0, t0, %lo(search_point_qp_x)
	lui	a5, %hi(search_point_qp_y)
	addi	a5, a5, %lo(search_point_qp_y)
	lui	t4, %hi(mvbits)
	li	t6, 5
	j	.LBB15_99
.LBB15_97:                              #   in Loop: Header=BB15_99 Depth=1
	mv	t5, s1
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	mv	t1, a0
.LBB15_98:                              #   in Loop: Header=BB15_99 Depth=1
	addi	t3, t3, 1
	beq	t3, t6, .LBB15_115
.LBB15_99:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_103 Depth 2
                                        #       Child Loop BB15_107 Depth 3
	lh	a0, 0(s7)
	slli	a1, t3, 2
	add	a2, t0, a1
	lw	a2, 0(a2)
	lh	a3, 0(s2)
	add	a1, a5, a1
	lw	a1, 0(a1)
	add	a0, a2, a0
	ld	a2, %lo(mvbits)(t4)
	add	a1, a1, a3
	subw	a3, a0, a6
	slli	a3, a3, 2
	add	a3, a2, a3
	lw	a3, 0(a3)
	subw	a4, a1, a7
	slli	a4, a4, 2
	add	a2, a2, a4
	lw	a2, 0(a2)
	add	a2, a2, a3
	mul	a2, a2, t2
	sraiw	s1, a2, 16
	lw	a2, 288(sp)                     # 8-byte Folded Reload
	bge	s1, a2, .LBB15_98
# %bb.100:                              #   in Loop: Header=BB15_99 Depth=1
	sd	a2, 112(sp)                     # 8-byte Folded Spill
	sd	t5, 120(sp)                     # 8-byte Folded Spill
	sd	t3, 144(sp)                     # 8-byte Folded Spill
	sd	t1, 232(sp)                     # 8-byte Folded Spill
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	blez	a2, .LBB15_109
# %bb.101:                              # %.preheader6
                                        #   in Loop: Header=BB15_99 Depth=1
	li	a3, 0
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a2
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	j	.LBB15_103
.LBB15_102:                             #   in Loop: Header=BB15_103 Depth=2
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB15_109
.LBB15_103:                             #   Parent Loop BB15_99 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_107 Depth 3
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	sd	a3, 240(sp)                     # 8-byte Folded Spill
	blez	a0, .LBB15_102
# %bb.104:                              #   in Loop: Header=BB15_103 Depth=2
	li	s2, 0
	li	s3, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	addw	s7, a1, a0
	addiw	a0, s7, 4
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 8
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 12
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s8, 208(sp)                     # 8-byte Folded Reload
	add	s8, s8, a0
	andi	a0, a0, 32
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	li	s10, 6
	ld	s11, 200(sp)                    # 8-byte Folded Reload
	j	.LBB15_107
.LBB15_105:                             #   in Loop: Header=BB15_107 Depth=3
	andi	a0, s2, 4
	sltiu	a1, s3, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 376
	add	a1, a6, a0
	lw	a2, 324(sp)
	lw	a3, 320(sp)
	lw	a4, 316(sp)
	lw	a5, 312(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 328
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
	addi	a5, sp, 344
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
	addi	a4, sp, 360
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB15_106:                             #   in Loop: Header=BB15_107 Depth=3
	addi	s3, s3, 4
	addiw	s2, s2, 4
	addi	s10, s10, 8
	addiw	s11, s11, 16
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	bge	s2, a0, .LBB15_102
.LBB15_107:                             #   Parent Loop BB15_99 Depth=1
                                        #     Parent Loop BB15_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s8)
	ld	a5, %lo(get_line)(s0)
	add	s9, a0, s10
	mv	a0, s4
	mv	a1, s7
	mv	a2, s11
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s9)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s9)
	lhu	a3, 8(a0)
	lhu	a4, -2(s9)
	lhu	a5, 16(a0)
	sw	a1, 312(sp)
	subw	a2, a2, a3
	sw	a2, 316(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s9)
	lhu	a0, 24(a0)
	sw	a4, 320(sp)
	ld	a2, 8(s8)
	ld	a5, %lo(get_line)(s0)
	subw	a1, a1, a0
	sw	a1, 324(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s9)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s9)
	lhu	a3, 8(a0)
	lhu	a4, -2(s9)
	lhu	a5, 16(a0)
	sw	a1, 328(sp)
	subw	a2, a2, a3
	sw	a2, 332(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s9)
	lhu	a0, 24(a0)
	sw	a4, 336(sp)
	ld	a2, 16(s8)
	ld	a5, %lo(get_line)(s0)
	subw	a1, a1, a0
	sw	a1, 340(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s9)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s9)
	lhu	a3, 8(a0)
	lhu	a4, -2(s9)
	lhu	a5, 16(a0)
	sw	a1, 344(sp)
	subw	a2, a2, a3
	sw	a2, 348(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s9)
	lhu	a0, 24(a0)
	sw	a4, 352(sp)
	ld	a2, 24(s8)
	ld	a5, %lo(get_line)(s0)
	subw	a1, a1, a0
	sw	a1, 356(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s9)
	lhu	a2, 0(a0)
	lhu	a3, -4(s9)
	lhu	a4, 8(a0)
	subw	a1, a1, a2
	sw	a1, 360(sp)
	subw	a3, a3, a4
	lhu	a1, -2(s9)
	lhu	a2, 16(a0)
	lhu	a4, 0(s9)
	lhu	a0, 24(a0)
	sw	a3, 364(sp)
	subw	a1, a1, a2
	sw	a1, 368(sp)
	subw	a4, a4, a0
	sw	a4, 372(sp)
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB15_105
# %bb.108:                              #   in Loop: Header=BB15_107 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 312
	call	SATD
	addw	s1, a0, s1
	lw	a0, 288(sp)                     # 8-byte Folded Reload
	bge	a0, s1, .LBB15_106
	j	.LBB15_111
.LBB15_109:                             #   in Loop: Header=BB15_99 Depth=1
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB15_111
# %bb.110:                              #   in Loop: Header=BB15_99 Depth=1
	addi	a0, sp, 376
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s1, a0, s1
.LBB15_111:                             #   in Loop: Header=BB15_99 Depth=1
	ld	t3, 144(sp)                     # 8-byte Folded Reload
	mv	a0, t3
	sd	s1, 288(sp)                     # 8-byte Folded Spill
	ld	a7, 192(sp)                     # 8-byte Folded Reload
	ld	a6, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s7, 168(sp)                     # 8-byte Folded Reload
	ld	t2, 160(sp)                     # 8-byte Folded Reload
	lui	a5, %hi(search_point_qp_y)
	addi	a5, a5, %lo(search_point_qp_y)
	lui	t0, %hi(search_point_qp_x)
	addi	t0, t0, %lo(search_point_qp_x)
	lui	t4, %hi(mvbits)
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	blt	s1, a1, .LBB15_113
# %bb.112:                              #   in Loop: Header=BB15_99 Depth=1
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	sd	a1, 288(sp)                     # 8-byte Folded Spill
.LBB15_113:                             #   in Loop: Header=BB15_99 Depth=1
	mv	a1, t3
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	li	t6, 5
	blt	s1, a2, .LBB15_97
# %bb.114:                              #   in Loop: Header=BB15_99 Depth=1
	mv	s1, a2
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	j	.LBB15_97
.LBB15_115:
	sext.w	a0, t1
	beqz	a0, .LBB15_120
# %bb.116:
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	sext.w	a1, a3
	beqz	a1, .LBB15_123
# %bb.117:
	xor	a0, t1, a3
	addiw	a0, a0, -1
	li	a1, 7
	li	t3, 5
	bgeu	a0, a1, .LBB15_130
# %bb.118:
	li	a1, 85
	srl	a1, a1, a0
	andi	a1, a1, 1
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	beqz	a1, .LBB15_135
# %bb.119:
	slli	a0, a0, 2
	lui	a1, %hi(.Lswitch.table.EPZSSubPelBlockMotionSearch.19)
	addi	a1, a1, %lo(.Lswitch.table.EPZSSubPelBlockMotionSearch.19)
	add	a1, a1, a0
	lw	t3, 0(a1)
	lui	a1, %hi(.Lswitch.table.EPZSSubPelBlockMotionSearch.20)
	addi	a1, a1, %lo(.Lswitch.table.EPZSSubPelBlockMotionSearch.20)
	add	a0, a1, a0
	lw	a2, 0(a0)
	j	.LBB15_136
.LBB15_120:
	lh	a1, 0(s7)
	ld	a3, 104(sp)                     # 8-byte Folded Reload
	bne	a1, a6, .LBB15_123
# %bb.121:
	lh	a1, 0(s2)
	bne	a1, a7, .LBB15_123
# %bb.122:
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 2
	lui	a2, %hi(subthres)
	addi	a2, a2, %lo(subthres)
	add	a1, a2, a1
	lw	a1, 0(a1)
	lw	a2, 288(sp)                     # 8-byte Folded Reload
	blt	a2, a1, .LBB15_155
.LBB15_123:
	addw	a1, t1, a3
	li	a2, 4
	blt	a2, a1, .LBB15_127
# %bb.124:
	li	a2, 1
	beq	a1, a2, .LBB15_132
# %bb.125:
	li	a2, 2
	bne	a1, a2, .LBB15_131
# %bb.126:
	li	t3, 5
	li	a2, 7
	bnez	a0, .LBB15_136
	j	.LBB15_134
.LBB15_127:
	li	a2, 5
	beq	a1, a2, .LBB15_133
# %bb.128:
	li	t3, 7
	bne	a1, t3, .LBB15_131
# %bb.129:
	li	a2, 9
	bnez	a0, .LBB15_136
	j	.LBB15_134
.LBB15_130:
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	blt	t3, a2, .LBB15_136
	j	.LBB15_153
.LBB15_131:
	li	t3, 5
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB15_135
	j	.LBB15_134
.LBB15_132:
	li	t3, 8
	li	a2, 10
	bnez	a0, .LBB15_136
	j	.LBB15_134
.LBB15_133:
	li	t3, 6
	li	a2, 8
	bnez	a0, .LBB15_136
.LBB15_134:
	lh	a0, 0(s7)
	sub	a0, a6, a0
	lh	a1, 0(s2)
	mv	a3, a2
	sraiw	a2, a0, 31
	xor	a0, a0, a2
	subw	a0, a0, a2
	sub	a1, a7, a1
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	mv	a2, a3
	or	a0, a1, a0
	beqz	a0, .LBB15_155
.LBB15_135:
	bge	t3, a2, .LBB15_153
.LBB15_136:
	sext.w	t4, a2
	lui	t5, %hi(mvbits)
	lui	s3, %hi(get_line)
	sd	t4, 112(sp)                     # 8-byte Folded Spill
	j	.LBB15_139
.LBB15_137:                             #   in Loop: Header=BB15_139 Depth=1
	mv	t1, a0
	sd	s1, 288(sp)                     # 8-byte Folded Spill
	ld	a7, 192(sp)                     # 8-byte Folded Reload
	ld	a6, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s7, 168(sp)                     # 8-byte Folded Reload
	ld	t2, 160(sp)                     # 8-byte Folded Reload
	lui	a5, %hi(search_point_qp_y)
	addi	a5, a5, %lo(search_point_qp_y)
	lui	t0, %hi(search_point_qp_x)
	addi	t0, t0, %lo(search_point_qp_x)
	ld	t4, 112(sp)                     # 8-byte Folded Reload
	lui	t5, %hi(mvbits)
.LBB15_138:                             #   in Loop: Header=BB15_139 Depth=1
	addi	t3, t3, 1
	beq	t3, t4, .LBB15_153
.LBB15_139:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_143 Depth 2
                                        #       Child Loop BB15_147 Depth 3
	lh	a0, 0(s7)
	slli	a1, t3, 2
	add	a2, t0, a1
	lw	a2, 0(a2)
	lh	a3, 0(s2)
	add	a1, a5, a1
	lw	a1, 0(a1)
	add	a0, a2, a0
	ld	a2, %lo(mvbits)(t5)
	add	a1, a1, a3
	subw	a3, a0, a6
	slli	a3, a3, 2
	add	a3, a2, a3
	lw	a3, 0(a3)
	subw	a4, a1, a7
	slli	a4, a4, 2
	add	a2, a2, a4
	lw	a2, 0(a2)
	add	a2, a2, a3
	mul	a2, a2, t2
	sraiw	s1, a2, 16
	lw	a2, 288(sp)                     # 8-byte Folded Reload
	bge	s1, a2, .LBB15_138
# %bb.140:                              #   in Loop: Header=BB15_139 Depth=1
	sd	a2, 120(sp)                     # 8-byte Folded Spill
	sd	t3, 144(sp)                     # 8-byte Folded Spill
	sd	t1, 232(sp)                     # 8-byte Folded Spill
	ld	a2, 224(sp)                     # 8-byte Folded Reload
	blez	a2, .LBB15_149
# %bb.141:                              # %.preheader
                                        #   in Loop: Header=BB15_139 Depth=1
	li	a3, 0
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	addw	a0, a0, a2
	sd	a0, 200(sp)                     # 8-byte Folded Spill
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	j	.LBB15_143
.LBB15_142:                             #   in Loop: Header=BB15_143 Depth=2
	ld	a1, 240(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 224(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB15_149
.LBB15_143:                             #   Parent Loop BB15_139 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_147 Depth 3
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	sd	a3, 240(sp)                     # 8-byte Folded Spill
	blez	a0, .LBB15_142
# %bb.144:                              #   in Loop: Header=BB15_143 Depth=2
	li	s2, 0
	li	s0, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 216(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	addw	s7, a1, a0
	addiw	a0, s7, 4
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 8
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 12
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s8, 208(sp)                     # 8-byte Folded Reload
	add	s8, s8, a0
	andi	a0, a0, 32
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	li	s10, 6
	ld	s11, 200(sp)                    # 8-byte Folded Reload
	j	.LBB15_147
.LBB15_145:                             #   in Loop: Header=BB15_147 Depth=3
	andi	a0, s2, 4
	sltiu	a1, s0, 8
	xori	a1, a1, 1
	slli	a1, a1, 6
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	or	a0, a0, a2
	addw	a0, a0, a1
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	or	a0, a1, a0
	slli	a0, a0, 2
	addi	a6, sp, 376
	add	a1, a6, a0
	lw	a2, 324(sp)
	lw	a3, 320(sp)
	lw	a4, 316(sp)
	lw	a5, 312(sp)
	sw	a2, 12(a1)
	sw	a3, 8(a1)
	sw	a4, 4(a1)
	sw	a5, 0(a1)
	ori	a1, a0, 32
	add	a1, a6, a1
	addi	a5, sp, 328
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
	addi	a5, sp, 344
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
	addi	a4, sp, 360
	lw	a1, 0(a4)
	lw	a2, 4(a4)
	lw	a3, 8(a4)
	lw	a4, 12(a4)
	sw	a1, 0(a0)
	sw	a2, 4(a0)
	sw	a3, 8(a0)
	sw	a4, 12(a0)
.LBB15_146:                             #   in Loop: Header=BB15_147 Depth=3
	addi	s0, s0, 4
	addiw	s2, s2, 4
	addi	s10, s10, 8
	addiw	s11, s11, 16
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	bge	s2, a0, .LBB15_142
.LBB15_147:                             #   Parent Loop BB15_139 Depth=1
                                        #     Parent Loop BB15_143 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s8)
	ld	a5, %lo(get_line)(s3)
	add	s9, a0, s10
	mv	a0, s4
	mv	a1, s7
	mv	a2, s11
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s9)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s9)
	lhu	a3, 8(a0)
	lhu	a4, -2(s9)
	lhu	a5, 16(a0)
	sw	a1, 312(sp)
	subw	a2, a2, a3
	sw	a2, 316(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s9)
	lhu	a0, 24(a0)
	sw	a4, 320(sp)
	ld	a2, 8(s8)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 324(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 280(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s9)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s9)
	lhu	a3, 8(a0)
	lhu	a4, -2(s9)
	lhu	a5, 16(a0)
	sw	a1, 328(sp)
	subw	a2, a2, a3
	sw	a2, 332(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s9)
	lhu	a0, 24(a0)
	sw	a4, 336(sp)
	ld	a2, 16(s8)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 340(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s9)
	lhu	a2, 0(a0)
	subw	a1, a1, a2
	lhu	a2, -4(s9)
	lhu	a3, 8(a0)
	lhu	a4, -2(s9)
	lhu	a5, 16(a0)
	sw	a1, 344(sp)
	subw	a2, a2, a3
	sw	a2, 348(sp)
	subw	a4, a4, a5
	lhu	a1, 0(s9)
	lhu	a0, 24(a0)
	sw	a4, 352(sp)
	ld	a2, 24(s8)
	ld	a5, %lo(get_line)(s3)
	subw	a1, a1, a0
	sw	a1, 356(sp)
	add	s9, a2, s10
	mv	a0, s4
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	mv	a2, s11
	mv	a3, s6
	mv	a4, s5
	jalr	a5
	lhu	a1, -6(s9)
	lhu	a2, 0(a0)
	lhu	a3, -4(s9)
	lhu	a4, 8(a0)
	subw	a1, a1, a2
	sw	a1, 360(sp)
	subw	a3, a3, a4
	lhu	a1, -2(s9)
	lhu	a2, 16(a0)
	lhu	a4, 0(s9)
	lhu	a0, 24(a0)
	sw	a3, 364(sp)
	subw	a1, a1, a2
	sw	a1, 368(sp)
	subw	a4, a4, a0
	sw	a4, 372(sp)
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB15_145
# %bb.148:                              #   in Loop: Header=BB15_147 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 312
	call	SATD
	addw	s1, a0, s1
	lw	a0, 288(sp)                     # 8-byte Folded Reload
	bge	a0, s1, .LBB15_146
	j	.LBB15_151
.LBB15_149:                             #   in Loop: Header=BB15_139 Depth=1
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB15_151
# %bb.150:                              #   in Loop: Header=BB15_139 Depth=1
	addi	a0, sp, 376
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s1, a0, s1
.LBB15_151:                             #   in Loop: Header=BB15_139 Depth=1
	ld	t3, 144(sp)                     # 8-byte Folded Reload
	mv	a0, t3
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	blt	s1, a1, .LBB15_137
# %bb.152:                              #   in Loop: Header=BB15_139 Depth=1
	ld	a0, 232(sp)                     # 8-byte Folded Reload
	mv	s1, a1
	j	.LBB15_137
.LBB15_153:
	sext.w	a0, t1
	beqz	a0, .LBB15_155
# %bb.154:
	slli	a0, a0, 2
	add	a1, t0, a0
	lh	a1, 0(a1)
	lh	a2, 0(s7)
	add	a1, a2, a1
	sh	a1, 0(s7)
	add	a0, a5, a0
	lh	a0, 0(a0)
	lh	a1, 0(s2)
	add	a0, a1, a0
	sh	a0, 0(s2)
.LBB15_155:
	lw	a0, 288(sp)                     # 8-byte Folded Reload
	ld	ra, 1496(sp)                    # 8-byte Folded Reload
	ld	s0, 1488(sp)                    # 8-byte Folded Reload
	ld	s1, 1480(sp)                    # 8-byte Folded Reload
	ld	s2, 1472(sp)                    # 8-byte Folded Reload
	ld	s3, 1464(sp)                    # 8-byte Folded Reload
	ld	s4, 1456(sp)                    # 8-byte Folded Reload
	ld	s5, 1448(sp)                    # 8-byte Folded Reload
	ld	s6, 1440(sp)                    # 8-byte Folded Reload
	ld	s7, 1432(sp)                    # 8-byte Folded Reload
	ld	s8, 1424(sp)                    # 8-byte Folded Reload
	ld	s9, 1416(sp)                    # 8-byte Folded Reload
	ld	s10, 1408(sp)                   # 8-byte Folded Reload
	ld	s11, 1400(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1504
	ret
.LBB15_156:
	slli	a0, a0, 48
	srli	a0, a0, 48
	j	.LBB15_88
.Lfunc_end15:
	.size	EPZSSubPelBlockMotionSearch, .Lfunc_end15-EPZSSubPelBlockMotionSearch
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI15_0:
	.word	.LBB15_58
	.word	.LBB15_63
	.word	.LBB15_62
	.word	.LBB15_61
	.word	.LBB15_61
	.word	.LBB15_64
	.word	.LBB15_61
	.word	.LBB15_65
                                        # -- End function
	.option	pop
	.type	c_EPZSPattern,@object           # @c_EPZSPattern
	.globl	c_EPZSPattern
c_EPZSPattern:
	.asciz	"Diamond\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Square\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Extended Diamond\000\000\000"
	.asciz	"Large Diamond\000\000\000\000\000\000"
	.size	c_EPZSPattern, 80

	.type	c_EPZSDualPattern,@object       # @c_EPZSDualPattern
	.globl	c_EPZSDualPattern
c_EPZSDualPattern:
	.asciz	"Disabled\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Diamond\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Square\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Extended Diamond\000\000\000"
	.asciz	"Large Diamond\000\000\000\000\000\000"
	.size	c_EPZSDualPattern, 100

	.type	c_EPZSFixed,@object             # @c_EPZSFixed
	.globl	c_EPZSFixed
c_EPZSFixed:
	.asciz	"Disabled\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"All P\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"All P + B\000\000\000\000\000\000\000\000\000\000"
	.size	c_EPZSFixed, 60

	.type	c_EPZSOther,@object             # @c_EPZSOther
	.globl	c_EPZSOther
c_EPZSOther:
	.asciz	"Disabled\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Enabled\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	c_EPZSOther, 40

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alloc_EPZScolocated: s"
	.size	.L.str, 23

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"alloc_EPZSpattern: s"
	.size	.L.str.1, 21

	.type	medthres,@object                # @medthres
	.local	medthres
	.comm	medthres,32,4
	.type	maxthres,@object                # @maxthres
	.local	maxthres
	.comm	maxthres,32,4
	.type	minthres,@object                # @minthres
	.local	minthres
	.comm	minthres,32,4
	.type	subthres,@object                # @subthres
	.local	subthres
	.comm	subthres,32,4
	.type	sdiamond,@object                # @sdiamond
	.section	.sbss,"aw",@nobits
	.globl	sdiamond
	.p2align	3, 0x0
sdiamond:
	.quad	0
	.size	sdiamond, 8

	.type	square,@object                  # @square
	.globl	square
	.p2align	3, 0x0
square:
	.quad	0
	.size	square, 8

	.type	ediamond,@object                # @ediamond
	.globl	ediamond
	.p2align	3, 0x0
ediamond:
	.quad	0
	.size	ediamond, 8

	.type	ldiamond,@object                # @ldiamond
	.globl	ldiamond
	.p2align	3, 0x0
ldiamond:
	.quad	0
	.size	ldiamond, 8

	.type	window_predictor,@object        # @window_predictor
	.globl	window_predictor
	.p2align	3, 0x0
window_predictor:
	.quad	0
	.size	window_predictor, 8

	.type	window_predictor_extended,@object # @window_predictor_extended
	.globl	window_predictor_extended
	.p2align	3, 0x0
window_predictor_extended:
	.quad	0
	.size	window_predictor_extended, 8

	.type	predictor,@object               # @predictor
	.globl	predictor
	.p2align	3, 0x0
predictor:
	.quad	0
	.size	predictor, 8

	.type	EPZSDistortion,@object          # @EPZSDistortion
	.globl	EPZSDistortion
	.p2align	3, 0x0
EPZSDistortion:
	.quad	0
	.size	EPZSDistortion, 8

	.type	EPZSMap,@object                 # @EPZSMap
	.p2align	3, 0x0
EPZSMap:
	.quad	0
	.size	EPZSMap, 8

	.type	EPZSMotion,@object              # @EPZSMotion
	.globl	EPZSMotion
	.p2align	3, 0x0
EPZSMotion:
	.quad	0
	.size	EPZSMotion, 8

	.type	EPZSCo_located,@object          # @EPZSCo_located
	.globl	EPZSCo_located
	.p2align	3, 0x0
EPZSCo_located:
	.quad	0
	.size	EPZSCo_located, 8

	.type	searchPattern,@object           # @searchPattern
	.globl	searchPattern
	.p2align	3, 0x0
searchPattern:
	.quad	0
	.size	searchPattern, 8

	.type	searchPatternD,@object          # @searchPatternD
	.globl	searchPatternD
	.p2align	3, 0x0
searchPatternD:
	.quad	0
	.size	searchPatternD, 8

	.type	mv_scale,@object                # @mv_scale
	.local	mv_scale
	.comm	mv_scale,24576,4
	.type	ref_pic,@object                 # @ref_pic
	.p2align	3, 0x0
ref_pic:
	.quad	0
	.size	ref_pic, 8

	.type	img_width,@object               # @img_width
	.p2align	1, 0x0
img_width:
	.half	0                               # 0x0
	.size	img_width, 2

	.type	img_height,@object              # @img_height
	.p2align	1, 0x0
img_height:
	.half	0                               # 0x0
	.size	img_height, 2

	.type	get_ref_line,@object            # @get_ref_line
	.p2align	3, 0x0
get_ref_line:
	.quad	0
	.size	get_ref_line, 8

	.type	ref_pic1,@object                # @ref_pic1
	.p2align	3, 0x0
ref_pic1:
	.quad	0
	.size	ref_pic1, 8

	.type	ref_pic2,@object                # @ref_pic2
	.p2align	3, 0x0
ref_pic2:
	.quad	0
	.size	ref_pic2, 8

	.type	weight1,@object                 # @weight1
	.p2align	1, 0x0
weight1:
	.half	0                               # 0x0
	.size	weight1, 2

	.type	weight2,@object                 # @weight2
	.p2align	1, 0x0
weight2:
	.half	0                               # 0x0
	.size	weight2, 2

	.type	offsetBi,@object                # @offsetBi
	.p2align	1, 0x0
offsetBi:
	.half	0                               # 0x0
	.size	offsetBi, 2

	.type	computeBiPredSad,@object        # @computeBiPredSad
	.p2align	3, 0x0
computeBiPredSad:
	.quad	0
	.size	computeBiPredSad, 8

	.type	get_ref_line2,@object           # @get_ref_line2
	.p2align	3, 0x0
get_ref_line2:
	.quad	0
	.size	get_ref_line2, 8

	.type	get_ref_line1,@object           # @get_ref_line1
	.p2align	3, 0x0
get_ref_line1:
	.quad	0
	.size	get_ref_line1, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	" EPZS Pattern                 : %s\n"
	.size	.L.str.2, 36

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" EPZS Dual Pattern            : %s\n"
	.size	.L.str.3, 36

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" EPZS Fixed Predictors        : %s\n"
	.size	.L.str.4, 36

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" EPZS Temporal Predictors     : %s\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" EPZS Spatial Predictors      : %s\n"
	.size	.L.str.6, 36

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" EPZS Thresholds (16x16)      : (%d %d %d)\n"
	.size	.L.str.7, 44

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	" EPZS Subpel ME               : %s\n"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" EPZS Pattern                      : %s\n"
	.size	.L.str.9, 41

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	" EPZS Dual Pattern                 : %s\n"
	.size	.L.str.10, 41

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	" EPZS Fixed Predictors             : %s\n"
	.size	.L.str.11, 41

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	" EPZS Temporal Predictors          : %s\n"
	.size	.L.str.12, 41

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	" EPZS Spatial Predictors           : %s\n"
	.size	.L.str.13, 41

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	" EPZS Thresholds (16x16)           : (%d %d %d)\n"
	.size	.L.str.14, 49

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	" EPZS Subpel ME                    : %s\n"
	.size	.L.str.15, 41

	.type	get_line,@object                # @get_line
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
get_line:
	.quad	0
	.size	get_line, 8

	.type	search_point_hp_x,@object       # @search_point_hp_x
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
search_point_hp_x:
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	4294967294                      # 0xfffffffe
	.word	4294967294                      # 0xfffffffe
	.size	search_point_hp_x, 40

	.type	search_point_hp_y,@object       # @search_point_hp_y
	.p2align	2, 0x0
search_point_hp_y:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	4294967294                      # 0xfffffffe
	.word	4294967294                      # 0xfffffffe
	.word	2                               # 0x2
	.size	search_point_hp_y, 40

	.type	search_point_qp_x,@object       # @search_point_qp_x
	.p2align	2, 0x0
search_point_qp_x:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.size	search_point_qp_x, 40

	.type	search_point_qp_y,@object       # @search_point_qp_y
	.p2align	2, 0x0
search_point_qp_y:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.size	search_point_qp_y, 40

	.type	pattern_data,@object            # @pattern_data
	.p2align	2, 0x0
pattern_data:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.zero	128
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	3                               # 0x3
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	5                               # 0x5
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	10                              # 0xa
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	10                              # 0xa
	.word	8                               # 0x8
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	10                              # 0xa
	.word	7                               # 0x7
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	8                               # 0x8
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	4294967294                      # 0xfffffffe
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4294967294                      # 0xfffffffe
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	6                               # 0x6
	.word	3                               # 0x3
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.size	pattern_data, 768

	.type	blk_parent,@object              # @blk_parent
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	1, 0x0
blk_parent:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	4                               # 0x4
	.half	4                               # 0x4
	.half	5                               # 0x5
	.size	blk_parent, 16

	.type	.Lswitch.table.EPZSInit.17,@object # @switch.table.EPZSInit.17
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lswitch.table.EPZSInit.17:
	.quad	square
	.quad	ediamond
	.quad	ldiamond
	.size	.Lswitch.table.EPZSInit.17, 24

	.type	.Lswitch.table.EPZSSubPelBlockMotionSearch.19,@object # @switch.table.EPZSSubPelBlockMotionSearch.19
	.p2align	2, 0x0
.Lswitch.table.EPZSSubPelBlockMotionSearch.19:
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	6                               # 0x6
	.word	7                               # 0x7
	.size	.Lswitch.table.EPZSSubPelBlockMotionSearch.19, 28

	.type	.Lswitch.table.EPZSSubPelBlockMotionSearch.20,@object # @switch.table.EPZSSubPelBlockMotionSearch.20
	.p2align	2, 0x0
.Lswitch.table.EPZSSubPelBlockMotionSearch.20:
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	9                               # 0x9
	.word	7                               # 0x7
	.word	8                               # 0x8
	.size	.Lswitch.table.EPZSSubPelBlockMotionSearch.20, 28

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
