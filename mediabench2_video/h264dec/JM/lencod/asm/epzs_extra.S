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
	li	s1, 0
	addi	a0, a0, -8
	addi	a1, a1, 2047
	slliw	s4, a3, 1
	mulw	a2, a2, a2
	li	a3, 2
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	sllw	a4, a3, s1
	addi	s1, s1, 1
	bge	a2, a4, .LBB6_4
# %bb.5:
	lw	a2, 1045(a1)
	lw	a3, 1041(a1)
	lw	a4, 1037(a1)
	lw	a1, 1053(a1)
	lui	a5, %hi(medthres)
	sw	zero, %lo(medthres)(a5)
	addi	a5, a5, %lo(medthres)
	lui	a6, %hi(maxthres)
	sw	zero, %lo(maxthres)(a6)
	addi	a6, a6, %lo(maxthres)
	lui	a7, %hi(minthres)
	sw	zero, %lo(minthres)(a7)
	addi	a7, a7, %lo(minthres)
	lui	t0, %hi(subthres)
	sw	zero, %lo(subthres)(t0)
	addi	t0, t0, %lo(subthres)
	slli	t1, a2, 8
	sllw	t1, t1, a0
	sw	t1, 4(a5)
	li	t1, 768
	mul	t1, a3, t1
	sllw	t1, t1, a0
	sw	t1, 4(a6)
	slli	t1, a4, 6
	sllw	t1, t1, a0
	sw	t1, 4(a7)
	slli	t1, a1, 8
	sllw	t1, t1, a0
	sw	t1, 4(t0)
	slli	t1, a2, 7
	sllw	t1, t1, a0
	sw	t1, 8(a5)
	li	t2, 384
	mul	t2, a3, t2
	sllw	t2, t2, a0
	sw	t2, 8(a6)
	slli	t3, a4, 5
	sllw	t3, t3, a0
	sw	t3, 8(a7)
	slli	t4, a1, 7
	sllw	t4, t4, a0
	sw	t4, 8(t0)
	sw	t1, 12(a5)
	sw	t2, 12(a6)
	sw	t3, 12(a7)
	sw	t4, 12(t0)
	slli	t1, a2, 6
	sllw	t1, t1, a0
	sw	t1, 16(a5)
	li	t1, 192
	mul	t1, a3, t1
	sllw	t1, t1, a0
	sw	t1, 16(a6)
	slli	t1, a4, 4
	sllw	t1, t1, a0
	sw	t1, 16(a7)
	slli	t1, a1, 6
	sllw	t1, t1, a0
	sw	t1, 16(t0)
	slli	t1, a2, 5
	sllw	t1, t1, a0
	sw	t1, 20(a5)
	li	t2, 96
	mul	t2, a3, t2
	sllw	t2, t2, a0
	sw	t2, 20(a6)
	slli	t3, a4, 3
	sllw	t3, t3, a0
	sw	t3, 20(a7)
	slli	t4, a1, 5
	sllw	t4, t4, a0
	sw	t4, 20(t0)
	sw	t1, 24(a5)
	sw	t2, 24(a6)
	sw	t3, 24(a7)
	sw	t4, 24(t0)
	slli	a2, a2, 4
	sllw	a2, a2, a0
	sw	a2, 28(a5)
	li	a2, 48
	mul	a2, a3, a2
	sllw	a2, a2, a0
	sw	a2, 28(a6)
	slli	a4, a4, 2
	sllw	a2, a4, a0
	sw	a2, 28(a7)
	slli	a1, a1, 4
	sllw	a0, a1, a0
	sw	a0, 28(t0)
	li	a0, 1
	li	a1, 16
	li	s2, 1
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
	sw	s2, 4(a0)
	li	s3, 3
	sw	s3, 8(a0)
	sw	s3, 12(a0)
	sw	s2, 16(a0)
	sw	s3, 28(a0)
	li	s7, -1
	sw	s7, 36(a0)
	sw	s2, 40(a0)
	sw	s3, 44(a0)
	sw	s7, 48(a0)
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
	srliw	s1, s1, 1
	li	s2, 8
	sw	s2, 0(s0)
	li	a0, 8
	li	a1, 16
	call	calloc
	sd	a0, 8(s0)
	lui	a1, %hi(square)
	sd	s0, %lo(square)(a1)
	sw	zero, 0(a0)
	li	s8, 1
	sw	s8, 4(a0)
	li	s5, 7
	sw	s5, 8(a0)
	sw	s3, 12(a0)
	sw	s8, 16(a0)
	sw	s8, 20(a0)
	sw	s5, 24(a0)
	li	s6, 5
	sw	s6, 28(a0)
	sw	s8, 32(a0)
	sw	zero, 36(a0)
	sw	s8, 40(a0)
	sw	s3, 44(a0)
	sw	s8, 48(a0)
	sw	s7, 52(a0)
	sw	s8, 56(a0)
	sw	s6, 60(a0)
	sw	zero, 64(a0)
	sw	s7, 68(a0)
	sw	s3, 72(a0)
	sw	s3, 76(a0)
	sw	s7, 80(a0)
	sw	s7, 84(a0)
	sw	s3, 88(a0)
	sw	s6, 92(a0)
	sw	s7, 96(a0)
	sw	zero, 100(a0)
	sw	s6, 104(a0)
	sw	s3, 108(a0)
	sw	s7, 112(a0)
	sw	s8, 116(a0)
	sw	s6, 120(a0)
	sw	s6, 124(a0)
	li	a0, 1
	li	a1, 16
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB6_11
# %bb.10:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB6_11:
	addi	s1, s1, -1
	li	a0, 12
	sw	a0, 0(s0)
	li	a0, 12
	li	a1, 16
	call	calloc
	sd	a0, 8(s0)
	lui	a1, %hi(ediamond)
	sd	s0, %lo(ediamond)(a1)
	li	s3, -1
	sw	s3, 0(a0)
	sw	s8, 4(a0)
	li	a1, 10
	sw	a1, 8(a0)
	sw	s6, 12(a0)
	sw	zero, 16(a0)
	li	s7, 2
	sw	s7, 20(a0)
	sw	a1, 24(a0)
	sw	s2, 28(a0)
	sw	zero, 32(a0)
	sw	s8, 36(a0)
	sw	a1, 40(a0)
	sw	s5, 44(a0)
	sw	s8, 48(a0)
	sw	s8, 52(a0)
	sw	s8, 56(a0)
	sw	s6, 60(a0)
	sw	s7, 64(a0)
	sw	zero, 68(a0)
	sw	s8, 72(a0)
	sw	s2, 76(a0)
	sw	s8, 80(a0)
	sw	zero, 84(a0)
	sw	s8, 88(a0)
	sw	s5, 92(a0)
	sw	s8, 96(a0)
	sw	s3, 100(a0)
	li	s8, 4
	sw	s8, 104(a0)
	sw	s6, 108(a0)
	sw	zero, 112(a0)
	li	s9, -2
	sw	s9, 116(a0)
	sw	s8, 120(a0)
	sw	s2, 124(a0)
	sw	zero, 128(a0)
	sw	s3, 132(a0)
	sw	s8, 136(a0)
	sw	s5, 140(a0)
	sw	s3, 144(a0)
	sw	s3, 148(a0)
	sw	s5, 152(a0)
	sw	s6, 156(a0)
	sw	s9, 160(a0)
	sw	zero, 164(a0)
	sw	s5, 168(a0)
	sw	s2, 172(a0)
	sw	s3, 176(a0)
	sw	zero, 180(a0)
	sw	s5, 184(a0)
	sw	s5, 188(a0)
	li	a0, 1
	li	a1, 16
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB6_13
# %bb.12:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB6_13:
	li	a0, 8
	sw	a0, 0(s0)
	li	a0, 8
	li	a1, 16
	call	calloc
	sd	a0, 8(s0)
	lui	a1, %hi(ldiamond)
	sd	s0, %lo(ldiamond)(a1)
	sw	zero, 0(a0)
	sw	s7, 4(a0)
	li	a1, 6
	sw	a1, 8(a0)
	li	a2, 5
	sw	a2, 12(a0)
	li	a3, 1
	sw	a3, 16(a0)
	sw	a3, 20(a0)
	sw	zero, 24(a0)
	li	a4, 3
	sw	a4, 28(a0)
	sw	s7, 32(a0)
	sw	zero, 36(a0)
	sw	zero, 40(a0)
	sw	a2, 44(a0)
	sw	a3, 48(a0)
	sw	s3, 52(a0)
	sw	s7, 56(a0)
	sw	a4, 60(a0)
	sw	zero, 64(a0)
	sw	s9, 68(a0)
	sw	s7, 72(a0)
	sw	a2, 76(a0)
	sw	s3, 80(a0)
	sw	s3, 84(a0)
	sw	s8, 88(a0)
	sw	a4, 92(a0)
	sw	s9, 96(a0)
	sw	zero, 100(a0)
	sw	s8, 104(a0)
	sw	a2, 108(a0)
	sw	s3, 112(a0)
	sw	a3, 116(a0)
	sw	a1, 120(a0)
	sw	a4, 124(a0)
	slliw	s0, s1, 3
	li	a0, 1
	li	a1, 16
	call	calloc
	mv	s2, a0
	bnez	a0, .LBB6_15
# %bb.14:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB6_15:
	sw	s0, 0(s2)
	li	a1, 16
	mv	a0, s0
	call	calloc
	sd	a0, 8(s2)
	lui	s0, %hi(window_predictor)
	sd	s2, %lo(window_predictor)(s0)
	li	a0, 20
	mulw	s1, s1, a0
	li	a0, 1
	li	a1, 16
	call	calloc
	mv	s3, a0
	bnez	a0, .LBB6_17
# %bb.16:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
	ld	s2, %lo(window_predictor)(s0)
.LBB6_17:
	ori	s0, s4, 1
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
	bnez	a0, .LBB6_19
# %bb.18:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
.LBB6_19:
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
	beqz	a2, .LBB6_21
# %bb.20:
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
.LBB6_21:
	addi	a0, a1, 2047
	lw	a0, 1029(a0)
	beqz	a0, .LBB6_27
# %bb.22:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, %hi(active_sps)
	ld	a1, %lo(active_sps)(a1)
	lw	s2, 52(a0)
	lw	s3, 60(a0)
	lw	s4, 1152(a1)
	li	a0, 1
	li	a1, 40
	call	calloc
	mv	s1, a0
	bnez	a0, .LBB6_24
# %bb.23:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
.LBB6_24:
	sw	s2, 4(s1)
	sw	s3, 8(s1)
	addi	a0, s1, 16
	sraiw	s5, s3, 31
	srliw	a1, s5, 30
	add	a1, s3, a1
	sraiw	a2, a1, 2
	sraiw	a1, s2, 31
	srliw	a1, a1, 30
	add	a1, s2, a1
	sraiw	s2, a1, 2
	li	a1, 2
	li	a4, 2
	mv	a3, s2
	call	get_mem4Dshort
	beqz	s4, .LBB6_26
# %bb.25:
	addi	a0, s1, 24
	srliw	a1, s5, 29
	add	a1, s3, a1
	sraiw	s3, a1, 3
	li	a1, 2
	li	a4, 2
	mv	a2, s3
	mv	a3, s2
	call	get_mem4Dshort
	addi	a0, s1, 32
	li	a1, 2
	li	a4, 2
	mv	a2, s3
	mv	a3, s2
	call	get_mem4Dshort
.LBB6_26:
	lui	a0, %hi(input)
	ld	a1, %lo(input)(a0)
	sw	s4, 0(s1)
	lui	a0, %hi(EPZSCo_located)
	sd	s1, %lo(EPZSCo_located)(a0)
.LBB6_27:
	addi	a3, a1, 2047
	lw	a5, 1017(a3)
	addiw	a5, a5, -1
	lui	a0, %hi(sdiamond)
	addi	a0, a0, %lo(sdiamond)
	li	a2, 2
	lui	a1, %hi(.Lswitch.table.EPZSInit.18)
	addi	a1, a1, %lo(.Lswitch.table.EPZSInit.18)
	mv	a4, a0
	bltu	a2, a5, .LBB6_29
# %bb.28:
	slli	a5, a5, 3
	add	a5, a1, a5
	ld	a4, 0(a5)
.LBB6_29:
	lw	a3, 1021(a3)
	ld	a4, 0(a4)
	lui	a5, %hi(searchPattern)
	addiw	a3, a3, -2
	sd	a4, %lo(searchPattern)(a5)
	bltu	a2, a3, .LBB6_31
# %bb.30:
	slli	a3, a3, 3
	add	a1, a1, a3
	ld	a0, 0(a1)
.LBB6_31:
	ld	a0, 0(a0)
	lui	a1, %hi(searchPatternD)
	sd	a0, %lo(searchPatternD)(a1)
	mv	a0, s0
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
	addi	sp, sp, -1632
	sd	s0, 1624(sp)                    # 8-byte Folded Spill
	sd	s1, 1616(sp)                    # 8-byte Folded Spill
	sd	s2, 1608(sp)                    # 8-byte Folded Spill
	sd	s3, 1600(sp)                    # 8-byte Folded Spill
	sd	s4, 1592(sp)                    # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	t1, %lo(img)(a2)
	lui	a2, 22
	addiw	a2, a2, -704
	add	a2, t1, a2
	lw	a4, 812(a2)
	lw	a6, 24(t1)
	lui	a7, %hi(mv_scale)
	addi	a7, a7, %lo(mv_scale)
	bltz	a4, .LBB8_44
# %bb.1:
	li	a3, 0
	slliw	a5, a4, 2
	lui	a4, %hi(enc_picture)
	ld	a4, %lo(enc_picture)(a4)
	addi	a5, a5, 1
	sgtz	t0, a5
	neg	t0, t0
	and	a5, t0, a5
	addi	a5, a5, 1
	lui	t0, %hi(listXsize)
	addi	t0, t0, %lo(listXsize)
	lui	t2, 524288
	addiw	t2, t2, -2
	li	t3, 2
	li	t4, -129
	lui	t5, 4
	lui	t6, 1
	mv	n1, a7
	j	.LBB8_3
.LBB8_2:                                #   in Loop: Header=BB8_3 Depth=1
	addi	a3, a3, 1
	add	n1, n1, t6
	beq	a3, a5, .LBB8_44
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_28 Depth 2
                                        #       Child Loop BB8_31 Depth 3
                                        #     Child Loop BB8_7 Depth 2
                                        #       Child Loop BB8_17 Depth 3
                                        #       Child Loop BB8_12 Depth 3
	slli	n2, a3, 2
	add	n2, t0, n2
	lw	n2, 0(n2)
	blez	n2, .LBB8_2
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	slli	n6, a3, 12
	slli	n2, n2, 32
	srli	n2, n2, 32
	slli	n4, a3, 3
	add	n4, a1, n4
	bgeu	a3, t3, .LBB8_26
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	lw	n3, 4(a4)
	ld	n4, 0(n4)
	li	n5, 0
	slli	n7, n2, 7
	add	n6, n6, n7
	mv	n7, n1
	j	.LBB8_7
.LBB8_6:                                #   in Loop: Header=BB8_7 Depth=2
	addi	n5, n5, 1
	addi	n7, n7, 4
	beq	n5, n2, .LBB8_2
.LBB8_7:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_17 Depth 3
                                        #       Child Loop BB8_12 Depth 3
	slli	n8, n5, 3
	add	n8, n4, n8
	ld	n8, 0(n8)
	lw	n9, 4(n8)
	slli	n8, n5, 2
	add	n8, n6, n8
	subw	n12, n3, n9
	add	n8, a7, n8
	mv	n10, n4
	mv	n11, n7
	bge	t4, n12, .LBB8_12
# %bb.8:                                #   in Loop: Header=BB8_7 Depth=2
	li	n10, 127
	blt	n12, n10, .LBB8_10
# %bb.9:                                #   in Loop: Header=BB8_7 Depth=2
	li	n12, 127
.LBB8_10:                               #   in Loop: Header=BB8_7 Depth=2
	slli	n10, n12, 56
	srli	n10, n10, 63
	add	n10, n12, n10
	slli	n10, n10, 56
	srai	n10, n10, 57
	srai	n11, n10, 63
	xor	n10, n10, n11
	sub	n10, n10, n11
	or	n10, n10, t5
	slli	n12, n12, 48
	srai	n11, n12, 48
	slli	n10, n10, 48
	srai	n10, n10, 48
	divw	n10, n10, n11
	slli	n10, n10, 48
	srai	n10, n10, 48
	mv	n11, n4
	mv	n12, n7
	j	.LBB8_17
.LBB8_11:                               #   in Loop: Header=BB8_12 Depth=3
	slli	n9, n9, 7
	negw	n9, n9
	sraiw	n9, n9, 6
	sw	n9, 0(n11)
	addi	n11, n11, 128
	addi	n10, n10, 8
	beq	n11, n8, .LBB8_6
.LBB8_12:                               #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	n9, 0(n10)
	lw	n9, 4(n9)
	subw	n9, n3, n9
	li	n12, 127
	blt	n9, n12, .LBB8_14
# %bb.13:                               #   in Loop: Header=BB8_12 Depth=3
	li	n9, 127
.LBB8_14:                               #   in Loop: Header=BB8_12 Depth=3
	li	n12, -128
	blt	n12, n9, .LBB8_11
# %bb.15:                               #   in Loop: Header=BB8_12 Depth=3
	li	n9, -128
	j	.LBB8_11
.LBB8_16:                               #   in Loop: Header=BB8_17 Depth=3
	sw	n13, 0(n12)
	addi	n12, n12, 128
	addi	n11, n11, 8
	beq	n12, n8, .LBB8_6
.LBB8_17:                               #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	li	n13, 256
	beq	n3, n9, .LBB8_16
# %bb.18:                               #   in Loop: Header=BB8_17 Depth=3
	ld	n13, 0(n11)
	lw	n13, 4(n13)
	subw	n13, n3, n13
	li	n14, 127
	blt	n13, n14, .LBB8_20
# %bb.19:                               #   in Loop: Header=BB8_17 Depth=3
	li	n13, 127
.LBB8_20:                               #   in Loop: Header=BB8_17 Depth=3
	li	n14, -128
	blt	n14, n13, .LBB8_22
# %bb.21:                               #   in Loop: Header=BB8_17 Depth=3
	li	n13, -128
.LBB8_22:                               #   in Loop: Header=BB8_17 Depth=3
	mul	n13, n13, n10
	addi	n13, n13, 32
	sraiw	n13, n13, 6
	li	n14, 2047
	blt	n13, n14, .LBB8_24
# %bb.23:                               #   in Loop: Header=BB8_17 Depth=3
	li	n13, 2047
.LBB8_24:                               #   in Loop: Header=BB8_17 Depth=3
	li	n14, -2048
	blt	n14, n13, .LBB8_16
# %bb.25:                               #   in Loop: Header=BB8_17 Depth=3
	li	n13, -2048
	j	.LBB8_16
.LBB8_26:                               #   in Loop: Header=BB8_3 Depth=1
	li	n3, 0
	ld	n4, 0(n4)
	and	n5, a3, t2
	slli	n7, n2, 7
	add	n6, n6, n7
	mv	n7, n1
	j	.LBB8_28
.LBB8_27:                               #   in Loop: Header=BB8_28 Depth=2
	addi	n3, n3, 1
	addi	n7, n7, 4
	beq	n3, n2, .LBB8_2
.LBB8_28:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_31 Depth 3
	slli	n8, n3, 3
	add	n8, n4, n8
	ld	n8, 0(n8)
	lw	n8, 4(n8)
	slli	n9, n3, 2
	add	n9, n6, n9
	add	n9, a7, n9
	mv	n10, n4
	mv	n11, n7
	j	.LBB8_31
.LBB8_29:                               #   in Loop: Header=BB8_31 Depth=3
	li	n12, 256
.LBB8_30:                               #   in Loop: Header=BB8_31 Depth=3
	sw	n12, 0(n11)
	addi	n11, n11, 128
	addi	n10, n10, 8
	beq	n11, n9, .LBB8_27
.LBB8_31:                               #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	n12, 0(n10)
	lw	n12, 4(n12)
	bne	n5, t3, .LBB8_33
# %bb.32:                               #   in Loop: Header=BB8_31 Depth=3
	lw	n14, 8(a4)
	subw	n12, n14, n12
	li	n13, 127
	bge	n12, n13, .LBB8_34
	j	.LBB8_35
.LBB8_33:                               #   in Loop: Header=BB8_31 Depth=3
	lw	n14, 12(a4)
	subw	n12, n14, n12
	li	n13, 127
	blt	n12, n13, .LBB8_35
.LBB8_34:                               #   in Loop: Header=BB8_31 Depth=3
	li	n12, 127
.LBB8_35:                               #   in Loop: Header=BB8_31 Depth=3
	li	n13, -128
	blt	n13, n12, .LBB8_37
# %bb.36:                               #   in Loop: Header=BB8_31 Depth=3
	li	n12, -128
	subw	n14, n14, n8
	blt	n14, n13, .LBB8_40
	j	.LBB8_38
.LBB8_37:                               #   in Loop: Header=BB8_31 Depth=3
	subw	n14, n14, n8
	blt	n14, n13, .LBB8_40
.LBB8_38:                               #   in Loop: Header=BB8_31 Depth=3
	li	n13, 127
	blt	n13, n14, .LBB8_40
# %bb.39:                               #   in Loop: Header=BB8_31 Depth=3
	mv	n13, n14
	beqz	n14, .LBB8_29
.LBB8_40:                               #   in Loop: Header=BB8_31 Depth=3
	slli	n14, n13, 56
	srli	n14, n14, 63
	add	n14, n13, n14
	slli	n14, n14, 56
	srai	n14, n14, 57
	srai	n15, n14, 63
	xor	n14, n14, n15
	subw	n14, n14, n15
	or	n14, n14, t5
	slli	n13, n13, 48
	srai	n13, n13, 48
	divw	n13, n14, n13
	slli	n13, n13, 48
	srai	n13, n13, 48
	mul	n12, n12, n13
	addi	n12, n12, 32
	sraiw	n12, n12, 6
	li	n13, 2047
	blt	n12, n13, .LBB8_42
# %bb.41:                               #   in Loop: Header=BB8_31 Depth=3
	li	n12, 2047
	li	n13, -2048
	blt	n13, n12, .LBB8_30
	j	.LBB8_43
.LBB8_42:                               #   in Loop: Header=BB8_31 Depth=3
	li	n13, -2048
	blt	n13, n12, .LBB8_30
.LBB8_43:                               #   in Loop: Header=BB8_31 Depth=3
	li	n12, -2048
	j	.LBB8_30
.LBB8_44:
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	addi	a3, a3, 2047
	lw	a3, 1029(a3)
	bnez	a3, .LBB8_45
	j	.LBB8_280
.LBB8_45:
	addi	a3, a6, -1
	seqz	t2, a3
	slli	a3, t2, 3
	add	a3, a1, a3
	ld	a5, 0(a3)
	ld	a3, 0(a5)
	lui	a4, %hi(listXsize)
	lw	t0, %lo(listXsize)(a4)
	li	t3, 2
	mv	a4, a3
	blt	t0, t3, .LBB8_47
# %bb.46:
	ld	a4, 8(a5)
.LBB8_47:
	li	a5, 256
	sw	a5, 8(sp)
	sw	a5, 800(sp)
	sw	a5, 12(sp)
	sw	a5, 804(sp)
	sw	a5, 16(sp)
	sw	a5, 808(sp)
	sw	a5, 20(sp)
	sw	a5, 812(sp)
	sw	a5, 24(sp)
	sw	a5, 816(sp)
	sw	a5, 28(sp)
	sw	a5, 820(sp)
	sw	a5, 140(sp)
	sw	a5, 932(sp)
	sw	a5, 144(sp)
	sw	a5, 936(sp)
	sw	a5, 148(sp)
	sw	a5, 940(sp)
	sw	a5, 152(sp)
	sw	a5, 944(sp)
	sw	a5, 156(sp)
	sw	a5, 948(sp)
	sw	a5, 160(sp)
	sw	a5, 952(sp)
	sw	a5, 272(sp)
	sw	a5, 1064(sp)
	sw	a5, 276(sp)
	sw	a5, 1068(sp)
	sw	a5, 280(sp)
	sw	a5, 1072(sp)
	sw	a5, 284(sp)
	sw	a5, 1076(sp)
	sw	a5, 288(sp)
	sw	a5, 1080(sp)
	sw	a5, 292(sp)
	sw	a5, 1084(sp)
	sw	a5, 404(sp)
	sw	a5, 1196(sp)
	sw	a5, 408(sp)
	sw	a5, 1200(sp)
	sw	a5, 412(sp)
	sw	a5, 1204(sp)
	sw	a5, 416(sp)
	sw	a5, 1208(sp)
	sw	a5, 420(sp)
	sw	a5, 1212(sp)
	sw	a5, 424(sp)
	sw	a5, 1216(sp)
	sw	a5, 536(sp)
	sw	a5, 1328(sp)
	sw	a5, 540(sp)
	sw	a5, 1332(sp)
	sw	a5, 544(sp)
	sw	a5, 1336(sp)
	sw	a5, 548(sp)
	sw	a5, 1340(sp)
	sw	a5, 552(sp)
	sw	a5, 1344(sp)
	sw	a5, 556(sp)
	sw	a5, 1348(sp)
	sw	a5, 668(sp)
	sw	a5, 1460(sp)
	sw	a5, 672(sp)
	sw	a5, 1464(sp)
	sw	a5, 676(sp)
	sw	a5, 1468(sp)
	sw	a5, 680(sp)
	sw	a5, 1472(sp)
	sw	a5, 684(sp)
	sw	a5, 1476(sp)
	sw	a5, 688(sp)
	sw	a5, 1480(sp)
	lw	n9, 812(a2)
	addi	a5, sp, 800
	bltz	n9, .LBB8_83
# %bb.48:
	li	n8, 0
	lui	t3, %hi(enc_picture)
	ld	t6, %lo(enc_picture)(t3)
	lui	t3, 2
	addiw	t3, t3, -1780
	add	t3, a3, t3
	addi	t4, t6, 8
	addi	t5, t6, 4
	addi	t6, t6, 12
	addi	a7, a7, 128
	lui	n1, %hi(listXsize)
	addi	n1, n1, %lo(listXsize)
	li	n2, 1
	lui	n3, 4
	li	n4, 2
	lui	n5, 2
	mv	n6, a5
	j	.LBB8_51
.LBB8_49:                               #   in Loop: Header=BB8_51 Depth=1
	lw	n9, 812(a2)
.LBB8_50:                               #   in Loop: Header=BB8_51 Depth=1
	addi	n8, n7, 2
	slliw	n10, n9, 2
	addi	n6, n6, 264
	add	a7, a7, n5
	bge	n7, n10, .LBB8_82
.LBB8_51:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_55 Depth 2
	mv	n7, n8
	slli	n8, n8, 2
	add	n8, n1, n8
	lw	n8, 0(n8)
	blez	n8, .LBB8_50
# %bb.52:                               #   in Loop: Header=BB8_51 Depth=1
	or	n9, n7, t2
	slli	n9, n9, 3
	add	n9, a1, n9
	ld	n9, 0(n9)
	slli	n10, n7, 3
	ld	n11, 0(n9)
	add	n10, a1, n10
	ld	n10, 0(n10)
	lw	n11, 4(n11)
	slli	n12, n8, 3
	add	n12, n10, n12
	sext.w	n13, n7
	mv	n14, a7
	mv	n15, n6
	j	.LBB8_55
.LBB8_53:                               #   in Loop: Header=BB8_55 Depth=2
	sw	n19, 0(n15)
.LBB8_54:                               #   in Loop: Header=BB8_55 Depth=2
	sw	n18, 132(n15)
	addi	n10, n10, 8
	addi	n15, n15, 4
	addi	n14, n14, 4
	beq	n10, n12, .LBB8_49
.LBB8_55:                               #   Parent Loop BB8_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	n16, t5
	beqz	n13, .LBB8_58
# %bb.56:                               #   in Loop: Header=BB8_55 Depth=2
	mv	n16, t4
	beq	n13, n4, .LBB8_58
# %bb.57:                               #   in Loop: Header=BB8_55 Depth=2
	mv	n16, t6
.LBB8_58:                               #   in Loop: Header=BB8_55 Depth=2
	ld	n17, 0(n10)
	lw	n17, 4(n17)
	lw	n16, 0(n16)
	subw	n16, n16, n17
	li	n17, 127
	blt	n16, n17, .LBB8_61
# %bb.59:                               #   in Loop: Header=BB8_55 Depth=2
	li	n16, 127
	li	n17, -128
	bge	n17, n16, .LBB8_62
.LBB8_60:                               #   in Loop: Header=BB8_55 Depth=2
	ld	n17, 0(n10)
	lw	n19, 4(n17)
	li	n18, 256
	bne	n11, n19, .LBB8_63
	j	.LBB8_71
.LBB8_61:                               #   in Loop: Header=BB8_55 Depth=2
	li	n17, -128
	blt	n17, n16, .LBB8_60
.LBB8_62:                               #   in Loop: Header=BB8_55 Depth=2
	li	n16, -128
	ld	n17, 0(n10)
	lw	n19, 4(n17)
	li	n18, 256
	beq	n11, n19, .LBB8_71
.LBB8_63:                               #   in Loop: Header=BB8_55 Depth=2
	subw	n18, n11, n19
	li	n19, 127
	blt	n18, n19, .LBB8_65
# %bb.64:                               #   in Loop: Header=BB8_55 Depth=2
	li	n18, 127
.LBB8_65:                               #   in Loop: Header=BB8_55 Depth=2
	li	n19, -128
	blt	n19, n18, .LBB8_67
# %bb.66:                               #   in Loop: Header=BB8_55 Depth=2
	li	n18, -128
.LBB8_67:                               #   in Loop: Header=BB8_55 Depth=2
	slli	n19, n18, 56
	srli	n19, n19, 63
	add	n19, n18, n19
	slli	n19, n19, 56
	srai	n19, n19, 57
	srai	n20, n19, 63
	xor	n19, n19, n20
	subw	n19, n19, n20
	or	n19, n19, n3
	slli	n18, n18, 48
	srai	n18, n18, 48
	divw	n18, n19, n18
	slli	n18, n18, 48
	srai	n18, n18, 48
	mul	n18, n16, n18
	addi	n18, n18, 32
	sraiw	n18, n18, 6
	li	n19, 2047
	blt	n18, n19, .LBB8_69
# %bb.68:                               #   in Loop: Header=BB8_55 Depth=2
	li	n18, 2047
.LBB8_69:                               #   in Loop: Header=BB8_55 Depth=2
	li	n19, -2048
	blt	n19, n18, .LBB8_71
# %bb.70:                               #   in Loop: Header=BB8_55 Depth=2
	li	n18, -2048
.LBB8_71:                               #   in Loop: Header=BB8_55 Depth=2
	lw	n19, -128(n14)
	mul	n19, n19, n18
	addi	n19, n19, 128
	sraiw	n19, n19, 8
	sw	n19, -792(n15)
	addi	n18, n18, -256
	sw	n18, -660(n15)
	beq	n8, n2, .LBB8_53
# %bb.72:                               #   in Loop: Header=BB8_55 Depth=2
	ld	n18, 8(n9)
	lw	n18, 4(n18)
	lw	n19, 4(n17)
	li	n17, 256
	beq	n18, n19, .LBB8_81
# %bb.73:                               #   in Loop: Header=BB8_55 Depth=2
	subw	n17, n18, n19
	li	n18, 127
	blt	n17, n18, .LBB8_75
# %bb.74:                               #   in Loop: Header=BB8_55 Depth=2
	li	n17, 127
.LBB8_75:                               #   in Loop: Header=BB8_55 Depth=2
	li	n18, -128
	blt	n18, n17, .LBB8_77
# %bb.76:                               #   in Loop: Header=BB8_55 Depth=2
	li	n17, -128
.LBB8_77:                               #   in Loop: Header=BB8_55 Depth=2
	slli	n18, n17, 56
	srli	n18, n18, 63
	add	n18, n17, n18
	slli	n18, n18, 56
	srai	n18, n18, 57
	srai	n19, n18, 63
	xor	n18, n18, n19
	subw	n18, n18, n19
	or	n18, n18, n3
	slli	n17, n17, 48
	srai	n17, n17, 48
	divw	n17, n18, n17
	slli	n17, n17, 48
	srai	n17, n17, 48
	mul	n16, n16, n17
	addi	n16, n16, 32
	sraiw	n17, n16, 6
	li	n16, 2047
	blt	n17, n16, .LBB8_79
# %bb.78:                               #   in Loop: Header=BB8_55 Depth=2
	li	n17, 2047
.LBB8_79:                               #   in Loop: Header=BB8_55 Depth=2
	li	n16, -2048
	blt	n16, n17, .LBB8_81
# %bb.80:                               #   in Loop: Header=BB8_55 Depth=2
	li	n17, -2048
.LBB8_81:                               #   in Loop: Header=BB8_55 Depth=2
	lw	n16, 0(n14)
	mul	n16, n16, n17
	addi	n16, n16, 128
	sraiw	n16, n16, 8
	sw	n16, 0(n15)
	addi	n18, n17, -256
	j	.LBB8_54
.LBB8_82:
	beqz	n9, .LBB8_90
.LBB8_83:
	li	t5, 1
	li	a7, 24
	beq	a6, t5, .LBB8_85
# %bb.84:
	li	a7, 16
.LBB8_85:
	add	a7, a1, a7
	ld	a7, 0(a7)
	li	t3, 40
	beq	a6, t5, .LBB8_87
# %bb.86:
	li	t3, 32
.LBB8_87:
	ld	t2, 0(a7)
	add	a1, a1, t3
	ld	a1, 0(a1)
	li	a6, 2
	blt	t0, a6, .LBB8_89
# %bb.88:
	ld	t3, 8(a7)
	ld	t4, 8(a1)
	li	a1, 0
	j	.LBB8_97
.LBB8_89:
	ld	t4, 0(a1)
	li	a1, 0
	j	.LBB8_96
.LBB8_90:
	lw	a6, 28(t1)
	li	a1, 1
	beqz	a6, .LBB8_95
# %bb.91:
	lw	a7, 0(a3)
	beq	a6, a7, .LBB8_95
# %bb.92:
	lw	a7, 0(t3)
	beqz	a7, .LBB8_95
# %bb.93:
	li	a1, 1
	bne	a6, a1, .LBB8_281
# %bb.94:
	ld	t2, 116(t3)
	ld	t3, 124(t3)
	j	.LBB8_282
.LBB8_95:
	li	t5, 0
	mv	t2, a3
	mv	t4, a3
.LBB8_96:
	mv	t3, a4
.LBB8_97:
	lui	a6, %hi(active_sps)
	ld	a6, %lo(active_sps)(a6)
	lw	t0, 1148(a6)
	addi	a7, sp, 140
	lui	a6, 2
	addiw	a6, a6, -1800
	add	a6, a3, a6
	beqz	t0, .LBB8_183
.LBB8_98:
	lw	t1, 28(t1)
	or	t5, t1, t5
	beqz	t5, .LBB8_160
# %bb.99:
	lw	n4, 4(a6)
	li	t5, 8
	blt	n4, t5, .LBB8_160
# %bb.100:
	lw	n8, 0(a6)
	li	t5, 4
	blt	n8, t5, .LBB8_160
# %bb.101:
	li	t5, 0
	addi	t6, sp, 272
	addi	n1, sp, 404
	addi	n2, sp, 536
	addi	n3, sp, 668
	slli	n5, n4, 1
	srli	n5, n5, 61
	add	n4, n4, n5
	sraiw	n4, n4, 3
	lui	n5, 2
	addiw	n5, n5, -1696
	add	n6, t4, n5
	add	n7, t2, n5
	srliw	n8, n8, 2
	addi	n9, sp, 1328
	addi	n10, sp, 1460
	addi	n11, sp, 1064
	addi	n12, sp, 1196
	addi	n13, sp, 932
	lui	n14, %hi(listXsize)
	addi	n14, n14, %lo(listXsize)
	lui	n15, %hi(enc_picture)
	lui	n16, %hi(listXsize)
	li	n17, -1
	j	.LBB8_103
.LBB8_102:                              #   in Loop: Header=BB8_103 Depth=1
	addi	t5, t5, 1
	beq	t5, n4, .LBB8_160
.LBB8_103:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_125 Depth 2
                                        #       Child Loop BB8_132 Depth 3
                                        #       Child Loop BB8_150 Depth 3
                                        #     Child Loop BB8_106 Depth 2
                                        #       Child Loop BB8_113 Depth 3
	ld	n26, %lo(enc_picture)(n15)
	slli	n18, t5, 3
	beqz	a1, .LBB8_122
# %bb.104:                              #   in Loop: Header=BB8_103 Depth=1
	ld	n19, 104(a6)
	ld	n19, 0(n19)
	add	n19, n19, n18
	ld	n19, 0(n19)
	li	n20, 0
	addi	n21, n26, 24
	j	.LBB8_106
.LBB8_105:                              #   in Loop: Header=BB8_106 Depth=2
	ld	n23, 16(a0)
	ld	n24, 0(n23)
	ld	n23, 8(n23)
	add	n24, n24, n18
	ld	n24, 0(n24)
	add	n23, n23, n18
	ld	n23, 0(n23)
	add	n24, n24, n22
	ld	n24, 0(n24)
	add	n22, n23, n22
	ld	n22, 0(n22)
	sh	zero, 0(n24)
	sh	zero, 2(n24)
	sh	zero, 0(n22)
	addi	n20, n20, 1
	sh	zero, 2(n22)
	beq	n20, n8, .LBB8_102
.LBB8_106:                              #   Parent Loop BB8_103 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_113 Depth 3
	slli	n22, n20, 3
	add	n23, n19, n22
	ld	n24, 0(n23)
	lw	n23, %lo(listXsize)(n16)
	slti	n24, n24, 0
	slti	n25, n23, 2
	xori	n25, n25, 1
	and	n25, n24, n25
	mv	n24, a4
	bnez	n25, .LBB8_108
# %bb.107:                              #   in Loop: Header=BB8_106 Depth=2
	mv	n24, a3
.LBB8_108:                              #   in Loop: Header=BB8_106 Depth=2
	add	n24, n24, n5
	ld	n26, 0(n24)
	ld	n26, 0(n26)
	add	n26, n26, n18
	ld	n26, 0(n26)
	add	n26, n26, n22
	ld	n26, 0(n26)
	beq	n26, n17, .LBB8_105
# %bb.109:                              #   in Loop: Header=BB8_106 Depth=2
	lw	n28, 0(a2)
	blt	n28, n23, .LBB8_111
# %bb.110:                              #   in Loop: Header=BB8_106 Depth=2
	mv	n28, n23
.LBB8_111:                              #   in Loop: Header=BB8_106 Depth=2
	li	n23, 256
	blez	n28, .LBB8_115
# %bb.112:                              #   in Loop: Header=BB8_106 Depth=2
	li	n27, 0
	slli	n28, n28, 2
	mv	n29, n21
.LBB8_113:                              #   Parent Loop BB8_103 Depth=1
                                        #     Parent Loop BB8_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	n30, 0(n29)
	beq	n30, n26, .LBB8_116
# %bb.114:                              #   in Loop: Header=BB8_113 Depth=3
	addi	n27, n27, 4
	addi	n29, n29, 8
	bne	n28, n27, .LBB8_113
.LBB8_115:                              #   in Loop: Header=BB8_106 Depth=2
	li	n25, 0
	j	.LBB8_121
.LBB8_116:                              #   in Loop: Header=BB8_106 Depth=2
	mv	n23, a5
	bnez	n25, .LBB8_118
# %bb.117:                              #   in Loop: Header=BB8_106 Depth=2
	addi	n23, sp, 8
.LBB8_118:                              #   in Loop: Header=BB8_106 Depth=2
	mv	n26, n13
	bnez	n25, .LBB8_120
# %bb.119:                              #   in Loop: Header=BB8_106 Depth=2
	mv	n26, a7
.LBB8_120:                              #   in Loop: Header=BB8_106 Depth=2
	add	n23, n23, n27
	lw	n23, 0(n23)
	add	n26, n26, n27
	lw	n25, 0(n26)
.LBB8_121:                              #   in Loop: Header=BB8_106 Depth=2
	ld	n24, 8(n24)
	ld	n24, 0(n24)
	ld	n26, 16(a0)
	add	n24, n24, n18
	ld	n24, 0(n24)
	ld	n27, 0(n26)
	add	n24, n24, n22
	ld	n24, 0(n24)
	add	n27, n27, n18
	ld	n27, 0(n27)
	lh	n28, 0(n24)
	add	n27, n27, n22
	ld	n27, 0(n27)
	mul	n28, n23, n28
	addi	n28, n28, 32
	srli	n28, n28, 6
	sh	n28, 0(n27)
	lh	n28, 2(n24)
	ld	n26, 8(n26)
	mul	n23, n23, n28
	addi	n23, n23, 32
	srli	n23, n23, 6
	add	n26, n26, n18
	ld	n26, 0(n26)
	sh	n23, 2(n27)
	lh	n23, 0(n24)
	add	n22, n26, n22
	ld	n22, 0(n22)
	mul	n23, n25, n23
	addi	n23, n23, 32
	srli	n23, n23, 6
	sh	n23, 0(n22)
	lh	n23, 2(n24)
	mul	n23, n25, n23
	addi	n23, n23, 32
	srliw	n23, n23, 6
	addi	n20, n20, 1
	sh	n23, 2(n22)
	bne	n20, n8, .LBB8_106
	j	.LBB8_102
.LBB8_122:                              #   in Loop: Header=BB8_103 Depth=1
	ld	n19, 0(n6)
	ld	n21, 0(n19)
	lw	n19, 16(n14)
	lw	n20, 8(n14)
	ld	n22, 0(n7)
	add	n21, n21, n18
	ld	n23, 128(a6)
	ld	n21, 0(n21)
	ld	n24, 0(n22)
	slli	n22, t5, 4
	add	n22, n23, n22
	ld	n22, 0(n22)
	add	n24, n24, n18
	ld	n23, 0(n24)
	li	n24, 0
	addi	n25, n26, 1080
	addi	n26, n26, 552
	j	.LBB8_125
.LBB8_123:                              #   in Loop: Header=BB8_125 Depth=2
	lh	n28, 2(n30)
	addi	n28, n28, 1
	srli	n28, n28, 1
	sh	n28, 2(n30)
	lh	n28, 2(n27)
	addi	n28, n28, 1
	srli	n28, n28, 1
	sh	n28, 2(n27)
.LBB8_124:                              #   in Loop: Header=BB8_125 Depth=2
	addi	n24, n24, 1
	beq	n24, n8, .LBB8_102
.LBB8_125:                              #   Parent Loop BB8_103 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_132 Depth 3
                                        #       Child Loop BB8_150 Depth 3
	slli	n27, n24, 3
	add	n28, n21, n27
	ld	n28, 0(n28)
	lw	n29, %lo(listXsize)(n16)
	slti	n28, n28, 0
	slti	n29, n29, 2
	xori	n29, n29, 1
	and	n30, n28, n29
	mv	n29, a4
	bnez	n30, .LBB8_127
# %bb.126:                              #   in Loop: Header=BB8_125 Depth=2
	mv	n29, t4
.LBB8_127:                              #   in Loop: Header=BB8_125 Depth=2
	add	n29, n29, n5
	ld	n28, 0(n29)
	ld	n28, 0(n28)
	add	n28, n28, n18
	ld	n28, 0(n28)
	add	n28, n28, n27
	ld	n31, 0(n28)
	beq	n31, n17, .LBB8_135
# %bb.128:                              #   in Loop: Header=BB8_125 Depth=2
	lw	n28, 0(a2)
	slliw	s1, n28, 1
	blt	s1, n19, .LBB8_130
# %bb.129:                              #   in Loop: Header=BB8_125 Depth=2
	mv	s1, n19
.LBB8_130:                              #   in Loop: Header=BB8_125 Depth=2
	li	n28, 256
	blez	s1, .LBB8_134
# %bb.131:                              #   in Loop: Header=BB8_125 Depth=2
	li	s0, 0
	slli	s1, s1, 2
	mv	s2, n25
.LBB8_132:                              #   Parent Loop BB8_103 Depth=1
                                        #     Parent Loop BB8_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	s3, 0(s2)
	beq	s3, n31, .LBB8_136
# %bb.133:                              #   in Loop: Header=BB8_132 Depth=3
	addi	s0, s0, 4
	addi	s2, s2, 8
	bne	s1, s0, .LBB8_132
.LBB8_134:                              #   in Loop: Header=BB8_125 Depth=2
	li	n30, 0
	j	.LBB8_141
.LBB8_135:                              #   in Loop: Header=BB8_125 Depth=2
	ld	n28, 32(a0)
	ld	n29, 0(n28)
	ld	n28, 8(n28)
	add	n29, n29, n18
	ld	n29, 0(n29)
	add	n28, n28, n18
	ld	n28, 0(n28)
	add	n29, n29, n27
	ld	n29, 0(n29)
	add	n28, n28, n27
	ld	n31, 0(n28)
	sh	zero, 0(n29)
	sh	zero, 2(n29)
	sh	zero, 0(n31)
	sh	zero, 2(n31)
	add	n28, n22, n24
	lbu	n30, 0(n28)
	bnez	n30, .LBB8_143
	j	.LBB8_142
.LBB8_136:                              #   in Loop: Header=BB8_125 Depth=2
	mv	n28, n9
	bnez	n30, .LBB8_138
# %bb.137:                              #   in Loop: Header=BB8_125 Depth=2
	mv	n28, n2
.LBB8_138:                              #   in Loop: Header=BB8_125 Depth=2
	mv	n31, n10
	bnez	n30, .LBB8_140
# %bb.139:                              #   in Loop: Header=BB8_125 Depth=2
	mv	n31, n3
.LBB8_140:                              #   in Loop: Header=BB8_125 Depth=2
	add	n28, n28, s0
	lw	n28, 0(n28)
	add	n31, n31, s0
	lw	n30, 0(n31)
.LBB8_141:                              #   in Loop: Header=BB8_125 Depth=2
	ld	n29, 8(n29)
	ld	n29, 0(n29)
	ld	n31, 32(a0)
	add	n29, n29, n18
	ld	n29, 0(n29)
	ld	s0, 0(n31)
	add	n29, n29, n27
	ld	s1, 0(n29)
	add	s0, s0, n18
	ld	n29, 0(s0)
	lh	s0, 0(s1)
	add	n29, n29, n27
	ld	n29, 0(n29)
	mul	s0, n28, s0
	addi	s0, s0, 32
	srli	s0, s0, 6
	sh	s0, 0(n29)
	lh	s0, 2(s1)
	ld	n31, 8(n31)
	mul	n28, n28, s0
	addi	n28, n28, 32
	srli	n28, n28, 6
	add	n31, n31, n18
	ld	n31, 0(n31)
	sh	n28, 2(n29)
	lh	n28, 0(s1)
	add	n31, n31, n27
	ld	n31, 0(n31)
	mul	n28, n30, n28
	addi	n28, n28, 32
	srli	n28, n28, 6
	sh	n28, 0(n31)
	lh	n28, 2(s1)
	mul	n28, n30, n28
	addi	n28, n28, 32
	srliw	n28, n28, 6
	sh	n28, 2(n31)
	add	n28, n22, n24
	lbu	n30, 0(n28)
	bnez	n30, .LBB8_143
.LBB8_142:                              #   in Loop: Header=BB8_125 Depth=2
	lh	n30, 2(n29)
	addi	n30, n30, 1
	srli	n30, n30, 1
	sh	n30, 2(n29)
	lh	n29, 2(n31)
	addi	n29, n29, 1
	srli	n29, n29, 1
	sh	n29, 2(n31)
.LBB8_143:                              #   in Loop: Header=BB8_125 Depth=2
	add	n29, n23, n27
	ld	n29, 0(n29)
	lw	n30, %lo(listXsize)(n16)
	slti	n29, n29, 0
	slti	n30, n30, 2
	xori	n30, n30, 1
	and	n31, n29, n30
	mv	n30, t3
	bnez	n31, .LBB8_145
# %bb.144:                              #   in Loop: Header=BB8_125 Depth=2
	mv	n30, t2
.LBB8_145:                              #   in Loop: Header=BB8_125 Depth=2
	add	n30, n30, n5
	ld	n29, 0(n30)
	ld	n29, 0(n29)
	add	n29, n29, n18
	ld	n29, 0(n29)
	add	n29, n29, n27
	ld	s0, 0(n29)
	beq	s0, n17, .LBB8_153
# %bb.146:                              #   in Loop: Header=BB8_125 Depth=2
	lw	n29, 0(a2)
	slliw	s2, n29, 1
	blt	s2, n20, .LBB8_148
# %bb.147:                              #   in Loop: Header=BB8_125 Depth=2
	mv	s2, n20
.LBB8_148:                              #   in Loop: Header=BB8_125 Depth=2
	li	n29, 256
	blez	s2, .LBB8_152
# %bb.149:                              #   in Loop: Header=BB8_125 Depth=2
	li	s1, 0
	slli	s2, s2, 2
	mv	s3, n26
.LBB8_150:                              #   Parent Loop BB8_103 Depth=1
                                        #     Parent Loop BB8_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	s4, 0(s3)
	beq	s4, s0, .LBB8_154
# %bb.151:                              #   in Loop: Header=BB8_150 Depth=3
	addi	s1, s1, 4
	addi	s3, s3, 8
	bne	s2, s1, .LBB8_150
.LBB8_152:                              #   in Loop: Header=BB8_125 Depth=2
	li	n31, 0
	j	.LBB8_159
.LBB8_153:                              #   in Loop: Header=BB8_125 Depth=2
	ld	n29, 24(a0)
	ld	n30, 0(n29)
	ld	n29, 8(n29)
	add	n30, n30, n18
	ld	n30, 0(n30)
	add	n29, n29, n18
	ld	n29, 0(n29)
	add	n30, n30, n27
	ld	n30, 0(n30)
	add	n27, n29, n27
	ld	n27, 0(n27)
	sh	zero, 0(n30)
	sh	zero, 2(n30)
	sh	zero, 0(n27)
	sh	zero, 2(n27)
	lbu	n28, 0(n28)
	bnez	n28, .LBB8_124
	j	.LBB8_123
.LBB8_154:                              #   in Loop: Header=BB8_125 Depth=2
	mv	n29, n11
	bnez	n31, .LBB8_156
# %bb.155:                              #   in Loop: Header=BB8_125 Depth=2
	mv	n29, t6
.LBB8_156:                              #   in Loop: Header=BB8_125 Depth=2
	mv	s0, n12
	bnez	n31, .LBB8_158
# %bb.157:                              #   in Loop: Header=BB8_125 Depth=2
	mv	s0, n1
.LBB8_158:                              #   in Loop: Header=BB8_125 Depth=2
	add	n29, n29, s1
	lw	n29, 0(n29)
	add	s0, s0, s1
	lw	n31, 0(s0)
.LBB8_159:                              #   in Loop: Header=BB8_125 Depth=2
	ld	n30, 8(n30)
	ld	n30, 0(n30)
	ld	s0, 24(a0)
	add	n30, n30, n18
	ld	n30, 0(n30)
	ld	s1, 0(s0)
	add	n30, n30, n27
	ld	s2, 0(n30)
	add	s1, s1, n18
	ld	n30, 0(s1)
	lh	s1, 0(s2)
	add	n30, n30, n27
	ld	n30, 0(n30)
	mul	s1, n29, s1
	addi	s1, s1, 32
	srli	s1, s1, 6
	sh	s1, 0(n30)
	lh	s1, 2(s2)
	ld	s0, 8(s0)
	mul	n29, n29, s1
	addi	n29, n29, 32
	srli	n29, n29, 6
	add	s0, s0, n18
	ld	s0, 0(s0)
	sh	n29, 2(n30)
	lh	n29, 0(s2)
	add	n27, s0, n27
	ld	n27, 0(n27)
	mul	n29, n31, n29
	addi	n29, n29, 32
	srli	n29, n29, 6
	sh	n29, 0(n27)
	lh	n29, 2(s2)
	mul	n29, n31, n29
	addi	n29, n29, 32
	srliw	n29, n29, 6
	sh	n29, 2(n27)
	lbu	n28, 0(n28)
	bnez	n28, .LBB8_124
	j	.LBB8_123
.LBB8_160:
	beqz	t0, .LBB8_234
# %bb.161:
	lw	t2, 4(a6)
	srai	t2, t2, 2
	blez	t2, .LBB8_280
# %bb.162:
	lw	t3, 0(a6)
	srai	t3, t3, 2
	blez	t3, .LBB8_280
# %bb.163:
	ld	t5, 104(a6)
	li	t4, 0
	ld	t5, 0(t5)
	addi	t6, sp, 932
	lui	n1, %hi(enc_picture)
	lui	n2, %hi(listXsize)
	lui	n3, 2
	addiw	n3, n3, -1696
	li	n4, -1
	j	.LBB8_165
.LBB8_164:                              #   in Loop: Header=BB8_165 Depth=1
	addi	t4, t4, 1
	beq	t4, t2, .LBB8_263
.LBB8_165:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_167 Depth 2
                                        #       Child Loop BB8_174 Depth 3
	slli	n5, t4, 3
	add	n6, t5, n5
	ld	n8, %lo(enc_picture)(n1)
	ld	n6, 0(n6)
	li	n7, 0
	addi	n8, n8, 24
	j	.LBB8_167
.LBB8_166:                              #   in Loop: Header=BB8_167 Depth=2
	ld	n10, 16(a0)
	ld	n11, 0(n10)
	ld	n10, 8(n10)
	add	n11, n11, n5
	ld	n11, 0(n11)
	add	n10, n10, n5
	ld	n10, 0(n10)
	add	n11, n11, n9
	ld	n11, 0(n11)
	add	n9, n10, n9
	ld	n9, 0(n9)
	sh	zero, 0(n11)
	sh	zero, 2(n11)
	sh	zero, 0(n9)
	addi	n7, n7, 1
	sh	zero, 2(n9)
	beq	n7, t3, .LBB8_164
.LBB8_167:                              #   Parent Loop BB8_165 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_174 Depth 3
	slli	n9, n7, 3
	add	n10, n6, n9
	ld	n11, 0(n10)
	lw	n10, %lo(listXsize)(n2)
	slti	n11, n11, 0
	slti	n12, n10, 2
	xori	n12, n12, 1
	and	n12, n11, n12
	mv	n11, a4
	bnez	n12, .LBB8_169
# %bb.168:                              #   in Loop: Header=BB8_167 Depth=2
	mv	n11, a3
.LBB8_169:                              #   in Loop: Header=BB8_167 Depth=2
	add	n11, n11, n3
	ld	n13, 0(n11)
	ld	n13, 0(n13)
	add	n13, n13, n5
	ld	n13, 0(n13)
	add	n13, n13, n9
	ld	n13, 0(n13)
	beq	n13, n4, .LBB8_166
# %bb.170:                              #   in Loop: Header=BB8_167 Depth=2
	lw	n15, 0(a2)
	blt	n15, n10, .LBB8_172
# %bb.171:                              #   in Loop: Header=BB8_167 Depth=2
	mv	n15, n10
.LBB8_172:                              #   in Loop: Header=BB8_167 Depth=2
	li	n10, 256
	blez	n15, .LBB8_176
# %bb.173:                              #   in Loop: Header=BB8_167 Depth=2
	li	n14, 0
	slli	n15, n15, 2
	mv	n16, n8
.LBB8_174:                              #   Parent Loop BB8_165 Depth=1
                                        #     Parent Loop BB8_167 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	n17, 0(n16)
	beq	n17, n13, .LBB8_177
# %bb.175:                              #   in Loop: Header=BB8_174 Depth=3
	addi	n14, n14, 4
	addi	n16, n16, 8
	bne	n15, n14, .LBB8_174
.LBB8_176:                              #   in Loop: Header=BB8_167 Depth=2
	li	n12, 0
	j	.LBB8_182
.LBB8_177:                              #   in Loop: Header=BB8_167 Depth=2
	mv	n10, a5
	bnez	n12, .LBB8_179
# %bb.178:                              #   in Loop: Header=BB8_167 Depth=2
	addi	n10, sp, 8
.LBB8_179:                              #   in Loop: Header=BB8_167 Depth=2
	mv	n13, t6
	bnez	n12, .LBB8_181
# %bb.180:                              #   in Loop: Header=BB8_167 Depth=2
	mv	n13, a7
.LBB8_181:                              #   in Loop: Header=BB8_167 Depth=2
	add	n10, n10, n14
	lw	n10, 0(n10)
	add	n13, n13, n14
	lw	n12, 0(n13)
.LBB8_182:                              #   in Loop: Header=BB8_167 Depth=2
	ld	n11, 8(n11)
	ld	n11, 0(n11)
	ld	n13, 16(a0)
	add	n11, n11, n5
	ld	n11, 0(n11)
	ld	n14, 0(n13)
	add	n11, n11, n9
	ld	n11, 0(n11)
	add	n14, n14, n5
	ld	n14, 0(n14)
	lh	n15, 0(n11)
	add	n14, n14, n9
	ld	n14, 0(n14)
	mul	n15, n10, n15
	addi	n15, n15, 32
	srli	n15, n15, 6
	sh	n15, 0(n14)
	lh	n15, 2(n11)
	ld	n13, 8(n13)
	mul	n10, n10, n15
	addi	n10, n10, 32
	srli	n10, n10, 6
	add	n13, n13, n5
	ld	n13, 0(n13)
	sh	n10, 2(n14)
	lh	n10, 0(n11)
	add	n9, n13, n9
	ld	n9, 0(n9)
	mul	n10, n12, n10
	addi	n10, n10, 32
	srli	n10, n10, 6
	sh	n10, 0(n9)
	lh	n10, 2(n11)
	mul	n10, n12, n10
	addi	n10, n10, 32
	srliw	n10, n10, 6
	addi	n7, n7, 1
	sh	n10, 2(n9)
	bne	n7, t3, .LBB8_167
	j	.LBB8_164
.LBB8_183:
	lw	t6, 4(a6)
	srai	t6, t6, 2
	blez	t6, .LBB8_98
# %bb.184:
	lw	n1, 0(a6)
	srai	n1, n1, 2
	blez	n1, .LBB8_98
# %bb.185:
	li	n2, 0
	lui	n3, 262144
	addi	n3, n3, -4
	addi	n4, sp, 932
	lui	n5, %hi(enc_picture)
	lui	n6, %hi(listXsize)
	lui	n7, 2
	addiw	n8, n7, -1696
	li	n9, -1
	j	.LBB8_187
.LBB8_186:                              #   in Loop: Header=BB8_187 Depth=1
	addi	n2, n2, 1
	beq	n2, t6, .LBB8_98
.LBB8_187:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_189 Depth 2
                                        #       Child Loop BB8_218 Depth 3
                                        #       Child Loop BB8_199 Depth 3
                                        #       Child Loop BB8_208 Depth 3
	li	n10, 0
	ld	n11, %lo(enc_picture)(n5)
	srliw	n12, n2, 1
	and	n13, n12, n3
	addw	n15, n13, n12
	addi	n13, n11, 24
	slli	n14, n2, 3
	slli	n15, n15, 3
	j	.LBB8_189
.LBB8_188:                              #   in Loop: Header=BB8_189 Depth=2
	ld	n17, 16(a0)
	ld	n18, 0(n17)
	ld	n17, 8(n17)
	add	n18, n18, n14
	ld	n18, 0(n18)
	add	n17, n17, n14
	ld	n17, 0(n17)
	add	n18, n18, n16
	ld	n18, 0(n18)
	add	n16, n17, n16
	ld	n16, 0(n16)
	sh	zero, 0(n18)
	sh	zero, 2(n18)
	sh	zero, 0(n16)
	addi	n10, n10, 1
	sh	zero, 2(n16)
	beq	n10, n1, .LBB8_186
.LBB8_189:                              #   Parent Loop BB8_187 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_218 Depth 3
                                        #       Child Loop BB8_199 Depth 3
                                        #       Child Loop BB8_208 Depth 3
	slli	n16, n10, 3
	bnez	a1, .LBB8_201
# %bb.190:                              #   in Loop: Header=BB8_189 Depth=2
	ld	n17, 128(a6)
	add	n17, n17, n14
	ld	n17, 0(n17)
	add	n17, n17, n10
	lbu	n17, 0(n17)
	beqz	n17, .LBB8_201
# %bb.191:                              #   in Loop: Header=BB8_189 Depth=2
	lw	n17, 4(n11)
	lw	n18, 4(t4)
	sub	n18, n17, n18
	sraiw	n19, n18, 31
	lw	n20, 4(t2)
	ld	n21, 104(a6)
	xor	n18, n18, n19
	subw	n18, n18, n19
	sub	n17, n17, n20
	ld	n19, 0(n21)
	sraiw	n20, n17, 31
	xor	n17, n17, n20
	subw	n20, n17, n20
	add	n17, n19, n15
	bgeu	n20, n18, .LBB8_211
# %bb.192:                              #   in Loop: Header=BB8_189 Depth=2
	ld	n17, 0(n17)
	add	n17, n17, n16
	ld	n20, 0(n17)
	lw	n17, %lo(listXsize)(n6)
	slti	n18, n20, 0
	slti	n19, n17, 2
	xori	n19, n19, 1
	and	n19, n18, n19
	mv	n18, t3
	bnez	n19, .LBB8_194
# %bb.193:                              #   in Loop: Header=BB8_189 Depth=2
	mv	n18, t2
.LBB8_194:                              #   in Loop: Header=BB8_189 Depth=2
	beq	n20, n9, .LBB8_188
# %bb.195:                              #   in Loop: Header=BB8_189 Depth=2
	lw	n22, 0(a2)
	blt	n22, n17, .LBB8_197
# %bb.196:                              #   in Loop: Header=BB8_189 Depth=2
	mv	n22, n17
.LBB8_197:                              #   in Loop: Header=BB8_189 Depth=2
	li	n17, 256
	blez	n22, .LBB8_220
# %bb.198:                              #   in Loop: Header=BB8_189 Depth=2
	li	n21, 0
	slli	n22, n22, 2
	mv	n23, n13
.LBB8_199:                              #   Parent Loop BB8_187 Depth=1
                                        #     Parent Loop BB8_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	n24, 0(n23)
	beq	n24, n20, .LBB8_227
# %bb.200:                              #   in Loop: Header=BB8_199 Depth=3
	addi	n21, n21, 4
	addi	n23, n23, 8
	bne	n22, n21, .LBB8_199
	j	.LBB8_220
.LBB8_201:                              #   in Loop: Header=BB8_189 Depth=2
	ld	n17, 104(a6)
	ld	n17, 0(n17)
	add	n17, n17, n14
	ld	n17, 0(n17)
	add	n17, n17, n16
	ld	n18, 0(n17)
	lw	n17, %lo(listXsize)(n6)
	slti	n18, n18, 0
	slti	n19, n17, 2
	xori	n19, n19, 1
	and	n19, n18, n19
	mv	n18, a4
	bnez	n19, .LBB8_203
# %bb.202:                              #   in Loop: Header=BB8_189 Depth=2
	mv	n18, a3
.LBB8_203:                              #   in Loop: Header=BB8_189 Depth=2
	add	n18, n18, n8
	ld	n20, 0(n18)
	ld	n20, 0(n20)
	add	n20, n20, n14
	ld	n20, 0(n20)
	add	n20, n20, n16
	ld	n20, 0(n20)
	beq	n20, n9, .LBB8_188
# %bb.204:                              #   in Loop: Header=BB8_189 Depth=2
	lw	n22, 0(a2)
	blt	n22, n17, .LBB8_206
# %bb.205:                              #   in Loop: Header=BB8_189 Depth=2
	mv	n22, n17
.LBB8_206:                              #   in Loop: Header=BB8_189 Depth=2
	li	n17, 256
	blez	n22, .LBB8_210
# %bb.207:                              #   in Loop: Header=BB8_189 Depth=2
	li	n21, 0
	slli	n22, n22, 2
	mv	n23, n13
.LBB8_208:                              #   Parent Loop BB8_187 Depth=1
                                        #     Parent Loop BB8_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	n24, 0(n23)
	beq	n24, n20, .LBB8_221
# %bb.209:                              #   in Loop: Header=BB8_208 Depth=3
	addi	n21, n21, 4
	addi	n23, n23, 8
	bne	n22, n21, .LBB8_208
.LBB8_210:                              #   in Loop: Header=BB8_189 Depth=2
	li	n19, 0
	j	.LBB8_226
.LBB8_211:                              #   in Loop: Header=BB8_189 Depth=2
	ld	n17, 32(n17)
	add	n17, n17, n16
	ld	n20, 0(n17)
	lw	n17, %lo(listXsize)(n6)
	slti	n18, n20, 0
	slti	n19, n17, 2
	xori	n19, n19, 1
	and	n19, n18, n19
	mv	n18, a4
	bnez	n19, .LBB8_213
# %bb.212:                              #   in Loop: Header=BB8_189 Depth=2
	mv	n18, t4
.LBB8_213:                              #   in Loop: Header=BB8_189 Depth=2
	beq	n20, n9, .LBB8_188
# %bb.214:                              #   in Loop: Header=BB8_189 Depth=2
	lw	n22, 0(a2)
	blt	n22, n17, .LBB8_216
# %bb.215:                              #   in Loop: Header=BB8_189 Depth=2
	mv	n22, n17
.LBB8_216:                              #   in Loop: Header=BB8_189 Depth=2
	li	n17, 256
	blez	n22, .LBB8_220
# %bb.217:                              #   in Loop: Header=BB8_189 Depth=2
	li	n21, 0
	slli	n22, n22, 2
	mv	n23, n13
.LBB8_218:                              #   Parent Loop BB8_187 Depth=1
                                        #     Parent Loop BB8_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	n24, 0(n23)
	beq	n24, n20, .LBB8_227
# %bb.219:                              #   in Loop: Header=BB8_218 Depth=3
	addi	n21, n21, 4
	addi	n23, n23, 8
	bne	n22, n21, .LBB8_218
.LBB8_220:                              #   in Loop: Header=BB8_189 Depth=2
	li	n19, 0
	j	.LBB8_232
.LBB8_221:                              #   in Loop: Header=BB8_189 Depth=2
	mv	n17, a5
	bnez	n19, .LBB8_223
# %bb.222:                              #   in Loop: Header=BB8_189 Depth=2
	addi	n17, sp, 8
.LBB8_223:                              #   in Loop: Header=BB8_189 Depth=2
	mv	n20, n4
	bnez	n19, .LBB8_225
# %bb.224:                              #   in Loop: Header=BB8_189 Depth=2
	mv	n20, a7
.LBB8_225:                              #   in Loop: Header=BB8_189 Depth=2
	add	n17, n17, n21
	lw	n17, 0(n17)
	add	n20, n20, n21
	lw	n19, 0(n20)
.LBB8_226:                              #   in Loop: Header=BB8_189 Depth=2
	ld	n18, 8(n18)
	ld	n18, 0(n18)
	ld	n20, 16(a0)
	add	n18, n18, n14
	ld	n18, 0(n18)
	ld	n21, 0(n20)
	add	n18, n18, n16
	ld	n18, 0(n18)
	add	n21, n21, n14
	ld	n21, 0(n21)
	lh	n22, 0(n18)
	add	n21, n21, n16
	ld	n21, 0(n21)
	mul	n22, n17, n22
	addi	n22, n22, 32
	srli	n22, n22, 6
	sh	n22, 0(n21)
	lh	n22, 2(n18)
	ld	n20, 8(n20)
	mul	n17, n17, n22
	addi	n17, n17, 32
	srli	n17, n17, 6
	add	n20, n20, n14
	ld	n20, 0(n20)
	sh	n17, 2(n21)
	lh	n17, 0(n18)
	add	n16, n20, n16
	j	.LBB8_233
.LBB8_227:                              #   in Loop: Header=BB8_189 Depth=2
	mv	n17, a5
	bnez	n19, .LBB8_229
# %bb.228:                              #   in Loop: Header=BB8_189 Depth=2
	addi	n17, sp, 8
.LBB8_229:                              #   in Loop: Header=BB8_189 Depth=2
	mv	n20, n4
	bnez	n19, .LBB8_231
# %bb.230:                              #   in Loop: Header=BB8_189 Depth=2
	mv	n20, a7
.LBB8_231:                              #   in Loop: Header=BB8_189 Depth=2
	add	n17, n17, n21
	lw	n17, 0(n17)
	add	n20, n20, n21
	lw	n19, 0(n20)
.LBB8_232:                              #   in Loop: Header=BB8_189 Depth=2
	add	n18, n18, n7
	ld	n18, -1688(n18)
	ld	n18, 0(n18)
	slli	n20, n12, 3
	ld	n21, 16(a0)
	add	n18, n18, n20
	ld	n18, 0(n18)
	ld	n20, 0(n21)
	add	n18, n18, n16
	ld	n18, 0(n18)
	add	n20, n20, n14
	ld	n20, 0(n20)
	lh	n22, 0(n18)
	add	n20, n20, n16
	ld	n20, 0(n20)
	mul	n22, n17, n22
	addi	n22, n22, 32
	srli	n22, n22, 6
	sh	n22, 0(n20)
	lh	n22, 2(n18)
	ld	n21, 8(n21)
	mul	n17, n17, n22
	addi	n17, n17, 32
	srli	n17, n17, 6
	add	n21, n21, n14
	ld	n21, 0(n21)
	sh	n17, 2(n20)
	lh	n17, 0(n18)
	add	n16, n21, n16
.LBB8_233:                              #   in Loop: Header=BB8_189 Depth=2
	ld	n16, 0(n16)
	mul	n17, n19, n17
	addi	n17, n17, 32
	srli	n17, n17, 6
	sh	n17, 0(n16)
	lh	n17, 2(n18)
	mul	n17, n19, n17
	addi	n17, n17, 32
	srliw	n17, n17, 6
	addi	n10, n10, 1
	sh	n17, 2(n16)
	bne	n10, n1, .LBB8_189
	j	.LBB8_186
.LBB8_234:
	bnez	t1, .LBB8_264
# %bb.235:
	lw	t0, 4(a6)
	srai	t0, t0, 2
	blez	t0, .LBB8_280
# %bb.236:
	lw	t2, 0(a6)
	srai	t2, t2, 2
	blez	t2, .LBB8_266
# %bb.237:
	li	t3, 0
	lui	t4, 262144
	addi	t4, t4, -4
	ld	t5, 128(a6)
	addi	t6, sp, 932
	lui	n1, %hi(enc_picture)
	lui	n2, %hi(listXsize)
	lui	n3, 2
	addiw	n4, n3, -1696
	li	n5, -1
	j	.LBB8_239
.LBB8_238:                              #   in Loop: Header=BB8_239 Depth=1
	addi	t3, t3, 1
	beq	t3, t0, .LBB8_265
.LBB8_239:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_243 Depth 2
                                        #       Child Loop BB8_251 Depth 3
	li	n6, 0
	srliw	n12, t3, 1
	and	n7, n12, t4
	addw	n11, n7, n12
	ld	n7, %lo(enc_picture)(n1)
	slli	n8, t3, 3
	add	n9, t5, n8
	ld	n9, 0(n9)
	addi	n10, n7, 24
	slli	n11, n11, 3
	slli	n12, n12, 3
	j	.LBB8_243
.LBB8_240:                              #   in Loop: Header=BB8_243 Depth=2
	ld	n14, 16(a0)
	ld	n15, 0(n14)
	ld	n14, 8(n14)
	add	n15, n15, n8
	ld	n15, 0(n15)
	add	n14, n14, n8
	ld	n14, 0(n14)
	add	n15, n15, n13
	ld	n15, 0(n15)
	add	n13, n14, n13
	ld	n13, 0(n13)
	li	n14, 0
	sh	zero, 0(n15)
	sh	zero, 2(n15)
	sh	zero, 0(n13)
.LBB8_241:                              #   in Loop: Header=BB8_243 Depth=2
	sh	n14, 2(n13)
.LBB8_242:                              #   in Loop: Header=BB8_243 Depth=2
	addi	n6, n6, 1
	beq	n6, t2, .LBB8_238
.LBB8_243:                              #   Parent Loop BB8_239 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_251 Depth 3
	add	n13, n9, n6
	lbu	n13, 0(n13)
	beqz	n13, .LBB8_242
# %bb.244:                              #   in Loop: Header=BB8_243 Depth=2
	ld	n13, 104(a6)
	ld	n13, 0(n13)
	add	n13, n13, n11
	ld	n14, 0(n13)
	slli	n13, n6, 3
	add	n14, n14, n13
	ld	n15, 0(n14)
	lw	n14, %lo(listXsize)(n2)
	slti	n15, n15, 0
	slti	n16, n14, 2
	xori	n16, n16, 1
	and	n15, n15, n16
	mv	n16, a4
	bnez	n15, .LBB8_246
# %bb.245:                              #   in Loop: Header=BB8_243 Depth=2
	mv	n16, a3
.LBB8_246:                              #   in Loop: Header=BB8_243 Depth=2
	add	n16, n16, n4
	ld	n17, 0(n16)
	ld	n17, 0(n17)
	add	n17, n17, n11
	ld	n17, 0(n17)
	add	n17, n17, n13
	ld	n17, 0(n17)
	beq	n17, n5, .LBB8_240
# %bb.247:                              #   in Loop: Header=BB8_243 Depth=2
	lw	n19, 0(a2)
	blt	n19, n14, .LBB8_249
# %bb.248:                              #   in Loop: Header=BB8_243 Depth=2
	mv	n19, n14
.LBB8_249:                              #   in Loop: Header=BB8_243 Depth=2
	li	n14, 256
	blez	n19, .LBB8_253
# %bb.250:                              #   in Loop: Header=BB8_243 Depth=2
	li	n18, 0
	slli	n19, n19, 2
	mv	n20, n10
.LBB8_251:                              #   Parent Loop BB8_239 Depth=1
                                        #     Parent Loop BB8_243 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	n21, 0(n20)
	beq	n21, n17, .LBB8_254
# %bb.252:                              #   in Loop: Header=BB8_251 Depth=3
	addi	n18, n18, 4
	addi	n20, n20, 8
	bne	n19, n18, .LBB8_251
.LBB8_253:                              #   in Loop: Header=BB8_243 Depth=2
	li	n15, 0
	j	.LBB8_259
.LBB8_254:                              #   in Loop: Header=BB8_243 Depth=2
	mv	n14, a5
	bnez	n15, .LBB8_256
# %bb.255:                              #   in Loop: Header=BB8_243 Depth=2
	addi	n14, sp, 8
.LBB8_256:                              #   in Loop: Header=BB8_243 Depth=2
	mv	n17, t6
	bnez	n15, .LBB8_258
# %bb.257:                              #   in Loop: Header=BB8_243 Depth=2
	mv	n17, a7
.LBB8_258:                              #   in Loop: Header=BB8_243 Depth=2
	add	n14, n14, n18
	lw	n14, 0(n14)
	add	n17, n17, n18
	lw	n15, 0(n17)
.LBB8_259:                              #   in Loop: Header=BB8_243 Depth=2
	ld	n18, 40(n16)
	lw	n20, 4(n7)
	lw	n19, 4(n18)
	ld	n17, 16(a0)
	sub	n21, n20, n19
	ld	n19, 32(n16)
	ld	n16, 0(n17)
	sraiw	n22, n21, 31
	xor	n21, n21, n22
	lw	n23, 4(n19)
	add	n16, n16, n8
	ld	n16, 0(n16)
	subw	n21, n21, n22
	sub	n20, n20, n23
	sraiw	n22, n20, 31
	add	n16, n16, n13
	ld	n16, 0(n16)
	xor	n20, n20, n22
	subw	n20, n20, n22
	bgeu	n20, n21, .LBB8_261
# %bb.260:                              #   in Loop: Header=BB8_243 Depth=2
	add	n19, n19, n3
	ld	n18, -1688(n19)
	j	.LBB8_262
.LBB8_261:                              #   in Loop: Header=BB8_243 Depth=2
	add	n18, n18, n3
	ld	n18, -1688(n18)
.LBB8_262:                              #   in Loop: Header=BB8_243 Depth=2
	ld	n18, 0(n18)
	add	n18, n18, n12
	ld	n18, 0(n18)
	add	n18, n18, n13
	ld	n18, 0(n18)
	lh	n19, 0(n18)
	mul	n19, n14, n19
	addi	n19, n19, 32
	srli	n19, n19, 6
	sh	n19, 0(n16)
	lh	n19, 2(n18)
	ld	n17, 8(n17)
	mul	n14, n14, n19
	addi	n14, n14, 32
	srli	n14, n14, 6
	add	n17, n17, n8
	ld	n17, 0(n17)
	sh	n14, 2(n16)
	lh	n14, 0(n18)
	add	n13, n17, n13
	ld	n13, 0(n13)
	mul	n14, n15, n14
	addi	n14, n14, 32
	srli	n14, n14, 6
	sh	n14, 0(n13)
	lh	n14, 2(n18)
	mul	n14, n15, n14
	addi	n14, n14, 32
	srliw	n14, n14, 6
	j	.LBB8_241
.LBB8_263:
	bnez	t0, .LBB8_280
.LBB8_264:
	lw	a2, 4(a6)
	srai	t0, a2, 2
.LBB8_265:
	blez	t0, .LBB8_280
.LBB8_266:
	lw	a4, 0(a6)
	srai	a4, a4, 2
	blez	a4, .LBB8_280
# %bb.267:
	ld	a2, 128(a6)
	li	a3, 0
	slli	a4, a4, 3
	j	.LBB8_269
.LBB8_268:                              #   in Loop: Header=BB8_269 Depth=1
	addi	a3, a3, 1
	beq	a3, t0, .LBB8_280
.LBB8_269:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_274 Depth 2
	slli	a5, a3, 3
	add	a6, a2, a5
	ld	a6, 0(a6)
	li	a7, 0
	j	.LBB8_274
.LBB8_270:                              #   in Loop: Header=BB8_274 Depth=2
	beqz	t2, .LBB8_277
.LBB8_271:                              #   in Loop: Header=BB8_274 Depth=2
	ld	t2, 16(a0)
	ld	t3, 0(t2)
	add	t3, t3, a5
	ld	t3, 0(t3)
	ld	t2, 8(t2)
	add	t3, t3, a7
	ld	t3, 0(t3)
	add	t2, t2, a5
	ld	t2, 0(t2)
	lh	t4, 2(t3)
	add	t2, t2, a7
	ld	t2, 0(t2)
	slli	t4, t4, 1
	sh	t4, 2(t3)
	lh	t3, 2(t2)
	slli	t3, t3, 1
.LBB8_272:                              #   in Loop: Header=BB8_274 Depth=2
	sh	t3, 2(t2)
.LBB8_273:                              #   in Loop: Header=BB8_274 Depth=2
	addi	a7, a7, 8
	addi	a6, a6, 1
	beq	a4, a7, .LBB8_268
.LBB8_274:                              #   Parent Loop BB8_269 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t2, 0(a6)
	beqz	a1, .LBB8_270
# %bb.275:                              #   in Loop: Header=BB8_274 Depth=2
	beqz	t1, .LBB8_279
# %bb.276:                              #   in Loop: Header=BB8_274 Depth=2
	bnez	t2, .LBB8_273
	j	.LBB8_278
.LBB8_277:                              #   in Loop: Header=BB8_274 Depth=2
	beqz	t1, .LBB8_273
.LBB8_278:                              #   in Loop: Header=BB8_274 Depth=2
	ld	t2, 16(a0)
	ld	t3, 0(t2)
	add	t3, t3, a5
	ld	t3, 0(t3)
	ld	t2, 8(t2)
	add	t3, t3, a7
	ld	t3, 0(t3)
	add	t2, t2, a5
	ld	t2, 0(t2)
	lh	t4, 2(t3)
	add	t2, t2, a7
	ld	t2, 0(t2)
	addi	t4, t4, 1
	srli	t4, t4, 1
	sh	t4, 2(t3)
	lh	t3, 2(t2)
	addi	t3, t3, 1
	srli	t3, t3, 1
	j	.LBB8_272
.LBB8_279:                              #   in Loop: Header=BB8_274 Depth=2
	bnez	t2, .LBB8_271
	j	.LBB8_273
.LBB8_280:
	ld	s0, 1624(sp)                    # 8-byte Folded Reload
	ld	s1, 1616(sp)                    # 8-byte Folded Reload
	ld	s2, 1608(sp)                    # 8-byte Folded Reload
	ld	s3, 1600(sp)                    # 8-byte Folded Reload
	ld	s4, 1592(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 1632
	ret
.LBB8_281:
	ld	t2, 124(t3)
	ld	t3, 116(t3)
.LBB8_282:
	li	t5, 0
	mv	t4, t2
	mv	a4, t3
	mv	a3, t2
	j	.LBB8_97
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
	addi	sp, sp, -576
	sd	ra, 568(sp)                     # 8-byte Folded Spill
	sd	s0, 560(sp)                     # 8-byte Folded Spill
	sd	s1, 552(sp)                     # 8-byte Folded Spill
	sd	s2, 544(sp)                     # 8-byte Folded Spill
	sd	s3, 536(sp)                     # 8-byte Folded Spill
	sd	s4, 528(sp)                     # 8-byte Folded Spill
	sd	s5, 520(sp)                     # 8-byte Folded Spill
	sd	s6, 512(sp)                     # 8-byte Folded Spill
	sd	s7, 504(sp)                     # 8-byte Folded Spill
	sd	s8, 496(sp)                     # 8-byte Folded Spill
	sd	s9, 488(sp)                     # 8-byte Folded Spill
	sd	s10, 480(sp)                    # 8-byte Folded Spill
	sd	s11, 472(sp)                    # 8-byte Folded Spill
	mv	s5, a5
	mv	s6, a4
	mv	n5, a1
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	addw	s0, a3, a2
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	slli	s0, s0, 3
	lui	a0, %hi(listX)
	addi	a0, a0, %lo(listX)
	add	a0, a0, s0
	ld	n1, 0(a0)
	ld	t4, 600(sp)
	ld	t3, 576(sp)
	slli	n6, a1, 3
	add	n1, n1, n6
	lui	n2, 2
	lui	a0, %hi(input)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	ld	a0, %lo(input)(a0)
	lui	a4, %hi(active_pps)
	ld	t1, %lo(active_pps)(a4)
	lw	a4, 172(a1)
	slli	t2, t3, 3
	sd	t2, 48(sp)                      # 8-byte Folded Spill
	add	t2, a0, t2
	lw	t0, 192(t1)
	subw	s1, a7, a4
	slli	n3, t3, 2
	lui	a5, %hi(medthres)
	addi	a5, a5, %lo(medthres)
	li	a4, 1
	bnez	t0, .LBB9_2
# %bb.1:
	lw	a4, 196(t1)
	addi	a4, a4, -1
	seqz	a4, a4
.LBB9_2:
	ld	t5, 608(sp)
	lw	s3, 88(t2)
	lw	t6, 84(t2)
	ld	n1, 0(n1)
	addiw	n7, n2, -1800
	lui	t0, %hi(EPZSDistortion)
	ld	t0, %lo(EPZSDistortion)(t0)
	slliw	n10, s1, 16
	lh	n2, 0(t4)
	sd	n3, 120(sp)                     # 8-byte Folded Spill
	add	n4, a5, n3
	add	t0, t0, s0
	ld	t2, 0(t0)
	srliw	t0, a6, 2
	addiw	a5, t3, -1
	slli	n8, a5, 3
	add	t2, t2, n8
	lui	t1, %hi(searchPattern)
	sd	t3, 200(sp)                     # 8-byte Folded Spill
	sd	a2, 136(sp)                     # 8-byte Folded Spill
	sd	a3, 128(sp)                     # 8-byte Folded Spill
	beqz	a4, .LBB9_5
# %bb.3:
	lw	a4, 1912(a0)
	beqz	a4, .LBB9_5
# %bb.4:
	lui	a3, 2
	addiw	t3, a3, -1752
	j	.LBB9_6
.LBB9_5:
	lui	a3, 2
	addiw	t3, a3, -1760
.LBB9_6:
	lw	s7, 168(a1)
	ld	a1, 592(sp)
	ld	a3, 584(sp)
	slliw	s4, t6, 16
	slli	t6, t6, 48
	slli	n9, s3, 48
	slli	a4, a6, 2
	slli	a5, a7, 2
	lh	n3, 0(t5)
	add	a2, n1, n7
	sraiw	n7, n10, 18
	addw	s9, n2, a6
	lw	s2, 0(n4)
	ld	t2, 0(t2)
	sd	t2, 72(sp)                      # 8-byte Folded Spill
	add	t3, n1, t3
	ld	t2, 0(t3)
	addi	a0, a0, 2047
	lw	a0, 1033(a0)
	ld	t1, %lo(searchPattern)(t1)
	sd	t1, 192(sp)                     # 8-byte Folded Spill
	lui	t1, %hi(ref_pic)
	sd	t2, %lo(ref_pic)(t1)
	slli	t1, t0, 48
	beqz	a0, .LBB9_8
# %bb.7:
	lui	a0, %hi(EPZSMotion)
	ld	a0, %lo(EPZSMotion)(a0)
	add	a0, a0, s0
	ld	a0, 0(a0)
	add	a0, a0, n6
	ld	a0, 0(a0)
	add	a0, a0, n8
	ld	a0, 0(a0)
	slli	t0, n7, 3
	add	a0, a0, t0
	ld	a0, 0(a0)
	srai	t0, t1, 48
	slli	t0, t0, 3
	add	a0, a0, t0
	ld	a0, 0(a0)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	j	.LBB9_9
.LBB9_8:
	sd	zero, 32(sp)                    # 8-byte Folded Spill
.LBB9_9:
	ld	s11, 616(sp)
	ld	a0, 632(sp)
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	srai	t6, t6, 48
	sraiw	a0, s4, 18
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	srai	a0, n9, 48
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	add	a3, a4, a3
	sd	a3, 240(sp)                     # 8-byte Folded Spill
	add	a1, a5, a1
	sd	a1, 232(sp)                     # 8-byte Folded Spill
	lw	a3, 0(a2)
	addw	s8, n3, a7
	lw	a1, 4(a2)
	lui	a0, %hi(img_width)
	sh	a3, %lo(img_width)(a0)
	lui	a0, %hi(img_height)
	sh	a1, %lo(img_height)(a0)
	lui	a0, %hi(UMVLineX)
	addi	a0, a0, %lo(UMVLineX)
	sd	t1, 64(sp)                      # 8-byte Folded Spill
	sd	t6, 272(sp)                     # 8-byte Folded Spill
	sd	n5, 96(sp)                      # 8-byte Folded Spill
	bltz	s9, .LBB9_14
# %bb.10:
	slli	a3, a3, 48
	srai	a3, a3, 48
	mv	s3, n4
	sub	a2, a3, t6
	bge	s9, a2, .LBB9_16
# %bb.11:
	bltz	s8, .LBB9_16
# %bb.12:
	slli	a1, a1, 48
	srai	a1, a1, 48
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	sub	a0, a1, a0
	slt	a0, s8, a0
	andi	a0, a0, 1
	bnez	a0, .LBB9_15
# %bb.13:
	lui	a0, %hi(UMVLineX)
	addi	a0, a0, %lo(UMVLineX)
	j	.LBB9_16
.LBB9_14:
	mv	s3, n4
	j	.LBB9_16
.LBB9_15:
	lui	a0, %hi(FastLineX)
	addi	a0, a0, %lo(FastLineX)
.LBB9_16:
	sd	n10, 56(sp)                     # 8-byte Folded Spill
	sd	n9, 104(sp)                     # 8-byte Folded Spill
	sd	n8, 88(sp)                      # 8-byte Folded Spill
	sd	n7, 208(sp)                     # 8-byte Folded Spill
	sd	n6, 144(sp)                     # 8-byte Folded Spill
	sd	n3, 216(sp)                     # 8-byte Folded Spill
	sd	n2, 224(sp)                     # 8-byte Folded Spill
	sd	a6, 184(sp)                     # 8-byte Folded Spill
	sd	a7, 152(sp)                     # 8-byte Folded Spill
	sd	t5, 160(sp)                     # 8-byte Folded Spill
	sd	t4, 168(sp)                     # 8-byte Folded Spill
	lui	s10, %hi(EPZSMap)
	ld	a1, %lo(EPZSMap)(s10)
	lui	a2, %hi(get_ref_line)
	sd	a0, %lo(get_ref_line)(a2)
	ld	a0, 0(a1)
	slli	a1, s11, 1
	addi	a1, a1, 1
	mulw	a2, a1, a1
	li	a1, 0
	call	memset
	ld	a0, %lo(EPZSMap)(s10)
	slli	a1, s11, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	sd	s11, 176(sp)                    # 8-byte Folded Spill
	add	a0, a0, s11
	li	a1, 1
	sb	a1, 0(a0)
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	slli	a1, s9, 2
	ld	a2, 240(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a2, s8, 2
	ld	a3, 232(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a4, a0, 16
	lui	a5, 524288
	addiw	a5, a5, -1
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	ld	a2, 272(sp)                     # 8-byte Folded Reload
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	mv	a6, s9
	mv	a7, s8
	call	computeSad
	mv	n12, a0
	ld	n14, 96(sp)                     # 8-byte Folded Reload
	blez	n14, .LBB9_18
# %bb.17:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 28(a0)
	beqz	a0, .LBB9_32
.LBB9_18:
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	ld	s10, 272(sp)                    # 8-byte Folded Reload
	bge	a2, s9, .LBB9_23
# %bb.19:
	lui	a0, %hi(img_width)
	lh	a0, %lo(img_width)(a0)
	add	a1, s10, a2
	subw	a0, a0, a1
	bge	s9, a0, .LBB9_23
# %bb.20:
	bge	a2, s8, .LBB9_23
# %bb.21:
	lui	a0, %hi(img_height)
	lh	a0, %lo(img_height)(a0)
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	add	a1, a1, a2
	subw	a0, a0, a1
	bge	s8, a0, .LBB9_23
# %bb.22:
	lui	a0, %hi(FastLineX)
	addi	a0, a0, %lo(FastLineX)
	j	.LBB9_24
.LBB9_23:
	lui	a0, %hi(UMVLineX)
	addi	a0, a0, %lo(UMVLineX)
.LBB9_24:
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	ld	n8, 224(sp)                     # 8-byte Folded Reload
	ld	n9, 216(sp)                     # 8-byte Folded Reload
	lui	a1, %hi(get_ref_line)
	sd	a0, %lo(get_ref_line)(a1)
	bge	s2, n12, .LBB9_31
# %bb.25:
	sd	s6, 24(sp)                      # 8-byte Folded Spill
	mv	s6, s5
	mv	s5, s0
	sd	n12, 40(sp)                     # 8-byte Folded Spill
	subw	a0, a2, s7
	slli	a0, a0, 48
	lui	s9, %hi(img)
	ld	a1, %lo(img)(s9)
	slli	a2, s1, 48
	srai	s1, a0, 48
	srai	s11, a0, 50
	lw	s2, 136(a1)
	lui	a0, %hi(img_width)
	lh	a3, %lo(img_width)(a0)
	lw	a0, 140(a1)
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(img_height)
	lh	a0, %lo(img_height)(a0)
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	lw	a0, 12(a1)
	srai	s0, a2, 48
	srai	a3, a3, 4
	addi	s7, a3, -1
	li	a3, -1
	addi	a5, sp, 448
	mv	a1, s11
	ld	s8, 208(sp)                     # 8-byte Folded Reload
	mv	a2, s8
	li	a4, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s9)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 424
	mv	a1, s11
	mv	a2, s8
	li	a3, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s9)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 400
	mv	a1, s11
	mv	a2, s8
	mv	a3, s10
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s9)
	lw	a0, 12(a0)
	li	a3, -1
	li	a4, -1
	addi	a5, sp, 376
	sd	s11, 16(sp)                     # 8-byte Folded Spill
	mv	a1, s11
	mv	a2, s8
	mv	s8, s0
	call	getLuma4x4Neighbour
	blez	s0, .LBB9_34
# %bb.26:
	li	a0, 7
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	ld	a6, 96(sp)                      # 8-byte Folded Reload
	ld	a7, 120(sp)                     # 8-byte Folded Reload
	ld	t0, 104(sp)                     # 8-byte Folded Reload
	blt	a0, s1, .LBB9_35
# %bb.27:
	lui	a0, 128
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	bne	a2, a0, .LBB9_89
# %bb.28:
	slt	a0, s2, s7
	lui	a1, 256
	xor	a2, s4, a1
	snez	a2, a2
	or	s7, a2, a0
	ld	a5, 24(sp)                      # 8-byte Folded Reload
	bne	s4, a1, .LBB9_30
.LBB9_29:
	sw	zero, 400(sp)
.LBB9_30:
	ld	s2, 200(sp)                     # 8-byte Folded Reload
	ld	s4, 136(sp)                     # 8-byte Folded Reload
	ld	s10, 128(sp)                    # 8-byte Folded Reload
	j	.LBB9_38
.LBB9_31:
	lui	a0, 16
	addi	a0, a0, -1
	and	n8, n8, a0
	and	n9, n9, a0
	ld	t2, 168(sp)                     # 8-byte Folded Reload
	ld	t3, 160(sp)                     # 8-byte Folded Reload
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	srai	a0, a0, 48
	slli	a0, a0, 2
	bnez	n14, .LBB9_139
	j	.LBB9_140
.LBB9_32:
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	srai	a0, a0, 48
	slli	a0, a0, 2
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a1, 0(s3)
	bge	a0, a1, .LBB9_18
# %bb.33:
	blt	a0, n12, .LBB9_144
	j	.LBB9_18
.LBB9_34:
	slt	a0, s2, s7
	add	s1, s1, s10
	addi	s1, s1, -16
	snez	a1, s1
	or	s7, a1, a0
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	ld	s2, 200(sp)                     # 8-byte Folded Reload
	ld	a6, 96(sp)                      # 8-byte Folded Reload
	ld	s4, 136(sp)                     # 8-byte Folded Reload
	ld	s10, 128(sp)                    # 8-byte Folded Reload
	ld	a5, 24(sp)                      # 8-byte Folded Reload
	ld	a7, 120(sp)                     # 8-byte Folded Reload
	ld	t0, 104(sp)                     # 8-byte Folded Reload
	j	.LBB9_38
.LBB9_35:
	slt	a0, s2, s7
	ld	a1, 272(sp)                     # 8-byte Folded Reload
	add	s1, s1, a1
	addi	a1, s1, -16
	snez	a1, a1
	li	a2, 16
	or	s7, a1, a0
	bne	s1, a2, .LBB9_37
# %bb.36:
	sw	zero, 400(sp)
.LBB9_37:
	ld	s2, 200(sp)                     # 8-byte Folded Reload
	ld	s4, 136(sp)                     # 8-byte Folded Reload
	ld	s10, 128(sp)                    # 8-byte Folded Reload
	ld	a5, 24(sp)                      # 8-byte Folded Reload
.LBB9_38:
	lw	a2, 448(sp)
	lui	a1, 524288
	addiw	a1, a1, -1
	mv	a0, a1
	beqz	a2, .LBB9_40
# %bb.39:
	srai	a0, a3, 48
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	sub	a0, a0, a2
	slli	a0, a0, 2
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	add	a0, a2, a0
	lw	a0, 0(a0)
.LBB9_40:
	lw	a2, 424(sp)
	beqz	a2, .LBB9_42
# %bb.41:
	srai	a1, a3, 48
	slli	a1, a1, 2
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	add	a1, a2, a1
	lw	a1, 0(a1)
.LBB9_42:
	lw	a2, 400(sp)
	beqz	a2, .LBB9_56
# %bb.43:
	srai	a2, a3, 48
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	add	a2, a3, a2
	slli	a2, a2, 2
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	add	a2, a3, a2
	lw	a2, 0(a2)
	blt	a1, a2, .LBB9_45
.LBB9_44:
	mv	a1, a2
.LBB9_45:
	blt	a0, a1, .LBB9_47
# %bb.46:
	mv	a0, a1
.LBB9_47:
	lui	a1, %hi(minthres)
	addi	a1, a1, %lo(minthres)
	add	a1, a1, a7
	lw	a1, 0(a1)
	blt	a1, a0, .LBB9_49
# %bb.48:
	mv	a0, a1
.LBB9_49:
	lui	a1, %hi(maxthres)
	addi	a1, a1, %lo(maxthres)
	add	a1, a1, a7
	lw	a1, 0(a1)
	blt	a0, a1, .LBB9_51
# %bb.50:
	mv	a0, a1
.LBB9_51:
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	lw	a1, 0(s3)
	mv	a2, a1
	blt	a0, a1, .LBB9_53
# %bb.52:
	mv	a2, a0
.LBB9_53:
	srai	s9, t0, 50
	slli	a0, a2, 3
	add	a0, a0, a2
	slli	a1, a1, 1
	add	s3, a0, a1
	slli	a0, s4, 3
	add	a1, a5, a0
	lwu	a2, 468(sp)
	ld	a7, 0(a1)
	lwu	a1, 464(sp)
	add	a0, s6, a0
	slli	a2, a2, 32
	lwu	a3, 460(sp)
	or	a1, a2, a1
	lwu	a2, 456(sp)
	sd	a1, 368(sp)
	slli	a3, a3, 32
	lwu	a1, 452(sp)
	or	a2, a3, a2
	lwu	a3, 448(sp)
	sd	a2, 360(sp)
	slli	a1, a1, 32
	lwu	a2, 444(sp)
	or	a1, a1, a3
	lwu	a3, 440(sp)
	sd	a1, 352(sp)
	slli	a2, a2, 32
	lwu	a1, 436(sp)
	or	a2, a2, a3
	lwu	a3, 432(sp)
	sd	a2, 344(sp)
	slli	a1, a1, 32
	lwu	a2, 428(sp)
	or	a1, a1, a3
	lwu	a3, 424(sp)
	sd	a1, 336(sp)
	slli	a2, a2, 32
	lwu	a1, 420(sp)
	or	a2, a2, a3
	lwu	a3, 416(sp)
	sd	a2, 328(sp)
	slli	a1, a1, 32
	lwu	a2, 412(sp)
	or	a1, a1, a3
	sd	a1, 320(sp)
	lwu	a1, 408(sp)
	slli	a2, a2, 32
	lwu	a3, 404(sp)
	lwu	a4, 400(sp)
	or	a1, a2, a1
	sd	a1, 312(sp)
	slli	a3, a3, 32
	or	a3, a3, a4
	lwu	a1, 396(sp)
	lwu	a2, 392(sp)
	lui	s1, %hi(predictor)
	sd	a3, 304(sp)
	slli	a1, a1, 32
	or	a1, a1, a2
	lwu	a2, 388(sp)
	lwu	a3, 384(sp)
	sd	a1, 296(sp)
	ld	a1, %lo(predictor)(s1)
	slli	a2, a2, 32
	or	a2, a2, a3
	sd	a2, 288(sp)
	lwu	a2, 380(sp)
	lwu	a3, 376(sp)
	ld	t2, 0(a0)
	ld	t3, 8(a1)
	slli	a2, a2, 32
	or	a2, a2, a3
	sd	a2, 280(sp)
	addi	a0, sp, 352
	addi	a1, sp, 328
	addi	a2, sp, 304
	addi	a3, sp, 280
	mv	a4, s4
	mv	a5, s10
	call	EPZSSpatialPredictors
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a2, a1, 2047
	lw	a1, 1033(a2)
	beqz	a1, .LBB9_57
# %bb.54:
	lui	a1, %hi(EPZSMotion)
	ld	a1, %lo(EPZSMotion)(a1)
	add	a1, a1, s5
	ld	a1, 0(a1)
	ld	n15, 144(sp)                    # 8-byte Folded Reload
	add	a1, a1, n15
	ld	a1, 0(a1)
	lui	a3, %hi(img_width)
	lh	a5, %lo(img_width)(a3)
	ld	a4, %lo(predictor)(s1)
	ld	a3, 88(sp)                      # 8-byte Folded Reload
	add	a1, a1, a3
	ld	a1, 0(a1)
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	srai	a3, a3, 48
	ld	n6, 152(sp)                     # 8-byte Folded Reload
	ld	n7, 184(sp)                     # 8-byte Folded Reload
	ld	n8, 224(sp)                     # 8-byte Folded Reload
	ld	n9, 216(sp)                     # 8-byte Folded Reload
	ld	n10, 176(sp)                    # 8-byte Folded Reload
	ld	n12, 40(sp)                     # 8-byte Folded Reload
	blez	a3, .LBB9_58
# %bb.55:
	ld	n16, 208(sp)                    # 8-byte Folded Reload
	slli	a6, n16, 3
	add	a6, a1, a6
	ld	a6, 0(a6)
	ld	a7, 112(sp)                     # 8-byte Folded Reload
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
	ld	n11, 272(sp)                    # 8-byte Folded Reload
	ld	n14, 96(sp)                     # 8-byte Folded Reload
	bnez	t0, .LBB9_60
	j	.LBB9_59
.LBB9_56:
	lui	a2, 524288
	addiw	a2, a2, -1
	bge	a1, a2, .LBB9_44
	j	.LBB9_45
.LBB9_57:
	li	a1, 5
	ld	n6, 152(sp)                     # 8-byte Folded Reload
	ld	n7, 184(sp)                     # 8-byte Folded Reload
	ld	n8, 224(sp)                     # 8-byte Folded Reload
	ld	n9, 216(sp)                     # 8-byte Folded Reload
	ld	n10, 176(sp)                    # 8-byte Folded Reload
	ld	n11, 272(sp)                    # 8-byte Folded Reload
	ld	n12, 40(sp)                     # 8-byte Folded Reload
	ld	n14, 96(sp)                     # 8-byte Folded Reload
	ld	n15, 144(sp)                    # 8-byte Folded Reload
	ld	n16, 208(sp)                    # 8-byte Folded Reload
	j	.LBB9_69
.LBB9_58:
	ld	a4, 8(a4)
	li	a6, 0
	sw	zero, 80(a4)
	sw	zero, 84(a4)
	ld	n11, 272(sp)                    # 8-byte Folded Reload
	ld	n14, 96(sp)                     # 8-byte Folded Reload
	ld	n16, 208(sp)                    # 8-byte Folded Reload
.LBB9_59:
	snez	a7, a6
.LBB9_60:
	srai	a6, a5, 2
	addi	a5, a7, 5
	slli	a7, a5, 4
	add	a7, a4, a7
	mv	t0, n16
	bgtz	n16, .LBB9_62
# %bb.61:
	li	t0, 4
.LBB9_62:
	sub	t0, t0, s9
	slli	t0, t0, 3
	add	t0, a1, t0
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
	ld	a7, 112(sp)                     # 8-byte Folded Reload
	add	a3, a7, a3
	slli	a7, a5, 4
	bge	a3, a6, .LBB9_66
# %bb.63:
	add	a4, a4, a7
	mv	a6, n16
	bgtz	n16, .LBB9_65
# %bb.64:
	li	a6, 4
.LBB9_65:
	sub	a6, a6, s9
	slli	a6, a6, 3
	add	a1, a1, a6
	ld	a1, 0(a1)
	slli	a3, a3, 3
	add	a1, a1, a3
	ld	a1, 0(a1)
	lh	a6, 0(a1)
	lh	a1, 2(a1)
	sw	a6, 0(a4)
	sw	a1, 4(a4)
	li	a3, 1
	bnez	a6, .LBB9_68
	j	.LBB9_67
.LBB9_66:
	li	a1, 0
	add	a4, a4, a7
	sw	zero, 0(a4)
	sw	zero, 4(a4)
.LBB9_67:
	snez	a3, a1
.LBB9_68:
	add	a1, a3, a5
.LBB9_69:
	lw	a4, 1029(a2)
	sraiw	a3, s3, 3
	sd	a3, 88(sp)                      # 8-byte Folded Spill
	slli	a3, s4, 3
	beqz	a4, .LBB9_88
# %bb.70:
	li	t5, 1
	slli	a7, n6, 46
	lui	a4, %hi(predictor)
	ld	a5, 80(sp)                      # 8-byte Folded Reload
	slli	a5, a5, 12
	lui	a6, %hi(mv_scale)
	addi	a6, a6, %lo(mv_scale)
	slli	t0, n14, 7
	add	a6, a6, t0
	add	a5, a6, a5
	lui	t0, %hi(EPZSCo_located)
	li	a6, 2
	li	t1, 24
	ld	n13, 192(sp)                    # 8-byte Folded Reload
	beq	s10, a6, .LBB9_72
# %bb.71:
	li	t1, 32
.LBB9_72:
	ld	a6, %lo(predictor)(a4)
	lw	a4, 0(a5)
	ld	t2, %lo(EPZSCo_located)(t0)
	slli	a5, t5, 11
	ld	t4, 64(sp)                      # 8-byte Folded Reload
	srai	t4, t4, 48
	srai	t0, a7, 48
	bnez	s10, .LBB9_74
# %bb.73:
	li	t1, 16
.LBB9_74:
	add	t1, t2, t1
	ld	a7, 0(t1)
	add	a7, a7, a3
	ld	t1, 0(a7)
	slli	t2, t0, 3
	add	t2, t1, t2
	ld	t6, 0(t2)
	slli	a7, t4, 3
	add	t3, t6, a7
	ld	n2, 0(t3)
	lh	n3, 0(n2)
	lw	n1, 448(sp)
	lw	t3, 424(sp)
	mul	n3, a4, n3
	add	n3, n3, a5
	ld	a6, 8(a6)
	sraiw	n4, n3, 12
	lh	n2, 2(n2)
	slli	n5, a1, 4
	add	n5, a6, n5
	sw	n4, 0(n5)
	mul	n2, a4, n2
	add	n2, n2, a5
	sraiw	n4, n2, 12
	sw	n4, 4(n5)
	or	n2, n3, n2
	srliw	n2, n2, 12
	snez	n2, n2
	add	a1, a1, n2
	blt	t5, n14, .LBB9_93
# %bb.75:
	ld	t5, 88(sp)                      # 8-byte Folded Reload
	bge	t5, n12, .LBB9_93
# %bb.76:
	ld	t5, 0(sp)                       # 8-byte Folded Reload
	srai	t5, t5, 4
	addi	t5, t5, -1
	ld	n2, 264(sp)                     # 8-byte Folded Reload
	add	s8, s8, n2
	ld	n2, 8(sp)                       # 8-byte Folded Reload
	slt	t5, n2, t5
	addi	s8, s8, -16
	xori	t5, t5, 1
	seqz	n2, s8
	and	t5, n2, t5
	beqz	n1, .LBB9_81
# %bb.77:
	addi	n1, t4, -1
	slli	n1, n1, 3
	add	n2, t6, n1
	ld	n2, 0(n2)
	lh	n3, 0(n2)
	mul	n3, a4, n3
	add	n3, n3, a5
	sraiw	n4, n3, 12
	lh	n2, 2(n2)
	slli	n5, a1, 4
	add	n5, a6, n5
	sw	n4, 0(n5)
	mul	n2, a4, n2
	add	n2, n2, a5
	sraiw	n4, n2, 12
	sw	n4, 4(n5)
	or	n2, n3, n2
	srliw	n2, n2, 12
	snez	n2, n2
	add	a1, a1, n2
	beqz	t3, .LBB9_79
# %bb.78:
	ld	n2, -8(t2)
	add	n2, n2, n1
	ld	n2, 0(n2)
	lh	n3, 0(n2)
	mul	n3, a4, n3
	add	n3, n3, a5
	sraiw	n4, n3, 12
	lh	n2, 2(n2)
	slli	n5, a1, 4
	add	n5, a6, n5
	sw	n4, 0(n5)
	mul	n2, a4, n2
	add	n2, n2, a5
	sraiw	n4, n2, 12
	sw	n4, 4(n5)
	or	n2, n3, n2
	srliw	n2, n2, 12
	snez	n2, n2
	add	a1, a1, n2
.LBB9_79:
	bnez	t5, .LBB9_81
# %bb.80:
	add	n2, s9, t0
	slli	n2, n2, 3
	add	n2, t1, n2
	ld	n2, 0(n2)
	add	n1, n2, n1
	ld	n1, 0(n1)
	lh	n2, 0(n1)
	mul	n2, a4, n2
	add	n2, n2, a5
	sraiw	n3, n2, 12
	lh	n1, 2(n1)
	slli	n4, a1, 4
	add	n4, a6, n4
	sw	n3, 0(n4)
	mul	n1, a4, n1
	add	n1, n1, a5
	sraiw	n3, n1, 12
	sw	n3, 4(n4)
	or	n1, n2, n1
	srliw	n1, n1, 12
	snez	n1, n1
	add	a1, a1, n1
.LBB9_81:
	beqz	t3, .LBB9_83
# %bb.82:
	ld	n1, -8(t2)
	add	n1, n1, a7
	ld	n1, 0(n1)
	lh	n2, 0(n1)
	mul	n2, a4, n2
	add	n2, n2, a5
	sraiw	n3, n2, 12
	lh	n1, 2(n1)
	slli	n4, a1, 4
	add	n4, a6, n4
	sw	n3, 0(n4)
	mul	n1, a4, n1
	add	n1, n1, a5
	sraiw	n3, n1, 12
	sw	n3, 4(n4)
	or	n1, n2, n1
	srliw	n1, n1, 12
	snez	n1, n1
	add	a1, a1, n1
.LBB9_83:
	beqz	s7, .LBB9_90
# %bb.84:
	ld	n1, 112(sp)                     # 8-byte Folded Reload
	add	t4, n1, t4
	slli	t4, t4, 3
	add	t6, t6, t4
	ld	t6, 0(t6)
	lh	n1, 0(t6)
	mul	n1, a4, n1
	add	n1, n1, a5
	sraiw	n2, n1, 12
	lh	t6, 2(t6)
	slli	n3, a1, 4
	add	n3, a6, n3
	sw	n2, 0(n3)
	mul	t6, a4, t6
	add	t6, t6, a5
	sraiw	n2, t6, 12
	sw	n2, 4(n3)
	or	t6, n1, t6
	srliw	t6, t6, 12
	snez	t6, t6
	add	a1, a1, t6
	beqz	t3, .LBB9_86
# %bb.85:
	ld	t2, -8(t2)
	add	t2, t2, t4
	ld	t2, 0(t2)
	lh	t3, 0(t2)
	mul	t3, a4, t3
	add	t3, t3, a5
	sraiw	t6, t3, 12
	lh	t2, 2(t2)
	slli	n1, a1, 4
	add	n1, a6, n1
	sw	t6, 0(n1)
	mul	t2, a4, t2
	add	t2, t2, a5
	sraiw	t6, t2, 12
	sw	t6, 4(n1)
	or	t2, t3, t2
	srliw	t2, t2, 12
	snez	t2, t2
	add	a1, a1, t2
.LBB9_86:
	bnez	t5, .LBB9_93
# %bb.87:
	add	t0, s9, t0
	slli	t0, t0, 3
	add	t0, t1, t0
	ld	t0, 0(t0)
	add	t4, t0, t4
	ld	t1, 0(t4)
	lh	t2, 0(t1)
	mul	t2, a4, t2
	add	t2, t2, a5
	sraiw	t3, t2, 12
	lh	t1, 2(t1)
	slli	t4, a1, 4
	add	t4, a6, t4
	sw	t3, 0(t4)
	mul	t1, a4, t1
	add	t1, t1, a5
	sraiw	t3, t1, 12
	sw	t3, 4(t4)
	or	t1, t2, t1
	srliw	t1, t1, 12
	snez	t1, t1
	add	a1, a1, t1
	j	.LBB9_92
.LBB9_88:
	ld	t2, 168(sp)                     # 8-byte Folded Reload
	ld	t3, 160(sp)                     # 8-byte Folded Reload
	ld	n13, 192(sp)                    # 8-byte Folded Reload
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	blt	a4, n12, .LBB9_94
	j	.LBB9_111
.LBB9_89:
	slt	a0, s2, s7
	add	s1, s1, a1
	addi	a1, s1, -8
	snez	a1, a1
	li	a2, 8
	or	s7, a1, a0
	ld	a5, 24(sp)                      # 8-byte Folded Reload
	beq	s1, a2, .LBB9_29
	j	.LBB9_30
.LBB9_90:
	bnez	t5, .LBB9_93
# %bb.91:
	add	t0, s9, t0
	slli	t0, t0, 3
	add	t0, t1, t0
	ld	t0, 0(t0)
.LBB9_92:
	add	a7, t0, a7
	ld	a7, 0(a7)
	lh	t0, 0(a7)
	mul	t0, a4, t0
	add	t0, t0, a5
	sraiw	t1, t0, 12
	lh	a7, 2(a7)
	slli	t2, a1, 4
	add	a6, a6, t2
	sw	t1, 0(a6)
	mul	a4, a4, a7
	add	a4, a4, a5
	sraiw	a5, a4, 12
	sw	a5, 4(a6)
	or	a4, t0, a4
	srliw	a4, a4, 12
	snez	a4, a4
	add	a1, a1, a4
.LBB9_93:
	ld	t2, 168(sp)                     # 8-byte Folded Reload
	ld	t3, 160(sp)                     # 8-byte Folded Reload
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	bge	a4, n12, .LBB9_111
.LBB9_94:
	li	a4, 1
	blt	a4, n14, .LBB9_96
# %bb.95:
	li	a4, 5
	blt	s2, a4, .LBB9_98
.LBB9_96:
	li	a4, 2
	blt	a4, n14, .LBB9_111
# %bb.97:
	lui	a4, %hi(img)
	ld	a4, %lo(img)(a4)
	lw	a4, 28(a4)
	or	a4, a4, s10
	beqz	a4, .LBB9_111
.LBB9_98:
	lw	a2, 1025(a2)
	li	a4, 1
	bge	a4, a2, .LBB9_103
.LBB9_99:
	li	a2, 4
	blt	a2, s2, .LBB9_105
# %bb.100:
	li	a2, 3
	bne	a0, a2, .LBB9_105
# %bb.101:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 28(a0)
	or	a0, a0, s10
	snez	a0, a0
	addi	a0, a0, 1
	blt	n14, a0, .LBB9_106
# %bb.102:
	lui	a0, %hi(window_predictor)
	addi	a0, a0, %lo(window_predictor)
	j	.LBB9_107
.LBB9_103:
	beqz	a2, .LBB9_111
# %bb.104:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a2, 24(a2)
	bnez	a2, .LBB9_111
	j	.LBB9_99
.LBB9_105:
	lui	a0, %hi(window_predictor)
	ld	a4, %lo(window_predictor)(a0)
	j	.LBB9_108
.LBB9_106:
	lui	a0, %hi(window_predictor_extended)
	addi	a0, a0, %lo(window_predictor_extended)
.LBB9_107:
	ld	a4, 0(a0)
.LBB9_108:
	lw	a6, 0(a4)
	blez	a6, .LBB9_111
# %bb.109:
	lui	a0, %hi(predictor)
	ld	a2, %lo(predictor)(a0)
	lh	a0, 0(t2)
	ld	a5, 8(a2)
	lh	a2, 0(t3)
	ld	a7, 8(a4)
	slli	a4, a1, 4
	add	a4, a4, a5
	addi	a4, a4, 4
	addi	a5, a7, 4
	addw	a1, a1, a6
	slli	a6, a6, 4
	add	a6, a4, a6
.LBB9_110:                              # =>This Inner Loop Header: Depth=1
	lw	a7, -4(a5)
	lw	t0, 0(a5)
	add	a7, a7, a0
	sw	a7, -4(a4)
	add	t0, t0, a2
	sw	t0, 0(a4)
	addi	a4, a4, 16
	addi	a5, a5, 16
	bne	a4, a6, .LBB9_110
.LBB9_111:
	beqz	n14, .LBB9_113
# %bb.112:
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	slt	a0, a0, n12
	sgtz	a2, n14
	and	a0, a2, a0
	beqz	a0, .LBB9_120
.LBB9_113:
	lui	a0, %hi(img)
	ld	a4, %lo(img)(a0)
	lui	a0, 22
	add	a0, a4, a0
	ld	a0, -776(a0)
	slli	a2, n16, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a2, 0(a0)
	lui	a0, %hi(predictor)
	ld	a0, %lo(predictor)(a0)
	add	a2, a2, a3
	ld	a2, 0(a2)
	blez	n14, .LBB9_117
# %bb.114:
	li	a3, 5
	blt	s2, a3, .LBB9_116
# %bb.115:
	lw	a3, 28(a4)
	beqz	a3, .LBB9_117
.LBB9_116:
	slli	a3, s4, 12
	lui	a4, %hi(mv_scale)
	addi	a4, a4, %lo(mv_scale)
	addi	a5, n14, -1
	slli	a6, a5, 3
	add	a6, a2, a6
	ld	a6, 0(a6)
	add	a3, a4, a3
	slli	a4, n14, 7
	add	a3, a3, a4
	ld	t4, 48(sp)                      # 8-byte Folded Reload
	add	a6, a6, t4
	ld	a4, 0(a6)
	slli	a5, a5, 2
	add	a5, a3, a5
	lw	a5, 0(a5)
	lh	a6, 0(a4)
	mul	a6, a5, a6
	addiw	a6, a6, 512
	ld	a7, 8(a0)
	sraiw	t0, a6, 10
	lh	a4, 2(a4)
	slli	t1, a1, 4
	add	t1, a7, t1
	sw	t0, 0(t1)
	mul	a4, a5, a4
	ld	a5, 0(a2)
	addiw	a4, a4, 512
	sraiw	t0, a4, 10
	sw	t0, 4(t1)
	add	a5, a5, t4
	ld	a5, 0(a5)
	sltiu	a6, a6, 1024
	sltiu	a4, a4, 1024
	lw	a3, 0(a3)
	lh	t0, 0(a5)
	and	a4, a6, a4
	xori	a4, a4, 1
	addw	a1, a1, a4
	mul	a4, a3, t0
	addiw	a4, a4, 512
	sraiw	a6, a4, 10
	lh	a5, 2(a5)
	slli	t0, a1, 4
	add	a7, a7, t0
	sw	a6, 0(a7)
	mul	a3, a3, a5
	addiw	a3, a3, 512
	sraiw	a5, a3, 10
	sw	a5, 4(a7)
	sltiu	a4, a4, 1024
	sltiu	a3, a3, 1024
	and	a3, a4, a3
	xori	a3, a3, 1
	addw	a1, a1, a3
.LBB9_117:
	add	a2, a2, n15
	slli	a3, s2, 1
	lui	a4, %hi(blk_parent)
	addi	a4, a4, %lo(blk_parent)
	add	a3, a4, a3
	lh	a3, 0(a3)
	ld	a2, 0(a2)
	slli	a3, a3, 3
	add	a3, a2, a3
	ld	a3, 0(a3)
	lh	a4, 0(a3)
	addi	a4, a4, 2
	ld	a0, 8(a0)
	srli	a5, a4, 2
	lh	a3, 2(a3)
	slli	a6, a1, 4
	add	a6, a0, a6
	sw	a5, 0(a6)
	addi	a3, a3, 2
	srli	a5, a3, 2
	sw	a5, 4(a6)
	sltiu	a4, a4, 4
	sltiu	a3, a3, 4
	and	a3, a4, a3
	xori	a3, a3, 1
	li	a4, 1
	addw	a1, a1, a3
	beq	s2, a4, .LBB9_119
# %bb.118:
	ld	a3, 8(a2)
	lh	a4, 0(a3)
	addi	a4, a4, 2
	srli	a5, a4, 2
	lh	a3, 2(a3)
	slli	a6, a1, 4
	add	a6, a0, a6
	sw	a5, 0(a6)
	addi	a3, a3, 2
	srli	a5, a3, 2
	sw	a5, 4(a6)
	sltiu	a4, a4, 4
	sltiu	a3, a3, 4
	and	a3, a4, a3
	xori	a3, a3, 1
	li	a4, 4
	addw	a1, a1, a3
	beq	s2, a4, .LBB9_120
.LBB9_119:
	ld	a2, 32(a2)
	lh	a3, 0(a2)
	addi	a3, a3, 2
	srli	a4, a3, 2
	lh	a2, 2(a2)
	slli	a5, a1, 4
	add	a0, a0, a5
	sw	a4, 0(a0)
	addi	a2, a2, 2
	srli	a4, a2, 2
	sw	a4, 4(a0)
	sltiu	a0, a3, 4
	sltiu	a2, a2, 4
	and	a0, a0, a2
	xori	a0, a0, 1
	addw	a1, a1, a0
.LBB9_120:
	subw	t0, n10, n8
	subw	t1, n10, n9
	sd	t0, 144(sp)                     # 8-byte Folded Spill
	sd	t1, 136(sp)                     # 8-byte Folded Spill
	blez	a1, .LBB9_145
# %bb.121:
	li	s0, 0
	li	s3, 0
	sd	zero, 48(sp)                    # 8-byte Folded Spill
	sd	zero, 56(sp)                    # 8-byte Folded Spill
	slli	s1, a1, 4
	lui	s8, 524288
	addiw	s8, s8, -1
	lui	s2, %hi(predictor)
	lui	t6, %hi(EPZSMap)
	li	s4, 1
	lui	a5, %hi(mvbits)
	lui	s5, %hi(UMVLineX)
	addi	s5, s5, %lo(UMVLineX)
	mv	a2, n11
	j	.LBB9_124
.LBB9_122:                              #   in Loop: Header=BB9_124 Depth=1
	sd	s6, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 48(sp)                     # 8-byte Folded Spill
	mv	s8, n12
	mv	n9, s9
	mv	n8, s11
	li	s3, 1
	mv	n12, a0
	ld	t2, 168(sp)                     # 8-byte Folded Reload
	ld	t3, 160(sp)                     # 8-byte Folded Reload
	ld	n6, 152(sp)                     # 8-byte Folded Reload
	ld	n7, 184(sp)                     # 8-byte Folded Reload
	ld	n10, 176(sp)                    # 8-byte Folded Reload
	ld	a2, 272(sp)                     # 8-byte Folded Reload
	ld	t0, 144(sp)                     # 8-byte Folded Reload
	ld	t1, 136(sp)                     # 8-byte Folded Reload
	lui	a5, %hi(mvbits)
	lui	t6, %hi(EPZSMap)
.LBB9_123:                              #   in Loop: Header=BB9_124 Depth=1
	addi	s0, s0, 16
	beq	s1, s0, .LBB9_137
.LBB9_124:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(predictor)(s2)
	ld	a0, 8(a0)
	add	a0, a0, s0
	lw	s11, 0(a0)
	lh	a1, 0(t2)
	sub	a1, s11, a1
	sraiw	a3, a1, 31
	xor	a1, a1, a3
	subw	a1, a1, a3
	blt	n10, a1, .LBB9_123
# %bb.125:                              #   in Loop: Header=BB9_124 Depth=1
	lw	s9, 4(a0)
	lh	a0, 0(t3)
	subw	a0, s9, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	n10, a0, .LBB9_123
# %bb.126:                              #   in Loop: Header=BB9_124 Depth=1
	ld	a0, %lo(EPZSMap)(t6)
	addw	a1, s9, t1
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	addw	a1, s11, t0
	add	a0, a0, a1
	lbu	a1, 0(a0)
	beq	a1, s4, .LBB9_123
# %bb.127:                              #   in Loop: Header=BB9_124 Depth=1
	sb	s4, 0(a0)
	addw	a6, s11, n7
	addw	a7, s9, n6
	ld	a0, %lo(mvbits)(a5)
	slli	a1, a6, 2
	ld	a3, 240(sp)                     # 8-byte Folded Reload
	subw	a1, a1, a3
	slli	a1, a1, 2
	add	a1, a0, a1
	lw	a1, 0(a1)
	slli	a3, a7, 2
	ld	a4, 232(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	slli	a3, a3, 2
	add	a0, a0, a3
	lw	a0, 0(a0)
	add	a0, a0, a1
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	mul	a0, a0, a1
	sraiw	a4, a0, 16
	bge	a4, s8, .LBB9_123
# %bb.128:                              #   in Loop: Header=BB9_124 Depth=1
	mv	s7, n12
	mv	s6, n9
	mv	s10, n8
	mv	a0, s5
	bltz	a6, .LBB9_133
# %bb.129:                              #   in Loop: Header=BB9_124 Depth=1
	mv	a0, s5
	bltz	a7, .LBB9_133
# %bb.130:                              #   in Loop: Header=BB9_124 Depth=1
	lui	a0, %hi(img_width)
	lh	a0, %lo(img_width)(a0)
	sub	a1, a0, a2
	mv	a0, s5
	bge	a6, a1, .LBB9_133
# %bb.131:                              #   in Loop: Header=BB9_124 Depth=1
	lui	a0, %hi(img_height)
	lh	a0, %lo(img_height)(a0)
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	sub	a0, a0, a1
	slt	a0, a7, a0
	andi	a1, a0, 1
	lui	a0, %hi(FastLineX)
	addi	a0, a0, %lo(FastLineX)
	bnez	a1, .LBB9_133
# %bb.132:                              #   in Loop: Header=BB9_124 Depth=1
	mv	a0, s5
.LBB9_133:                              #   in Loop: Header=BB9_124 Depth=1
	lui	a1, %hi(get_ref_line)
	sd	a0, %lo(get_ref_line)(a1)
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	mv	a5, s8
	call	computeSad
	mv	n12, s7
	blt	a0, s7, .LBB9_122
# %bb.134:                              #   in Loop: Header=BB9_124 Depth=1
	ld	t2, 168(sp)                     # 8-byte Folded Reload
	ld	t3, 160(sp)                     # 8-byte Folded Reload
	mv	n8, s10
	mv	n9, s6
	ld	n10, 176(sp)                    # 8-byte Folded Reload
	ld	t0, 144(sp)                     # 8-byte Folded Reload
	ld	t1, 136(sp)                     # 8-byte Folded Reload
	lui	t6, %hi(EPZSMap)
	bge	a0, s8, .LBB9_136
# %bb.135:                              #   in Loop: Header=BB9_124 Depth=1
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	s11, 48(sp)                     # 8-byte Folded Spill
	mv	s8, a0
	li	s3, 1
.LBB9_136:                              #   in Loop: Header=BB9_124 Depth=1
	ld	n6, 152(sp)                     # 8-byte Folded Reload
	ld	n7, 184(sp)                     # 8-byte Folded Reload
	ld	a2, 272(sp)                     # 8-byte Folded Reload
	lui	a5, %hi(mvbits)
	j	.LBB9_123
.LBB9_137:
	addi	s5, s3, -1
	seqz	a1, s5
	ld	n14, 96(sp)                     # 8-byte Folded Reload
	ld	n13, 192(sp)                    # 8-byte Folded Reload
	ld	s2, 200(sp)                     # 8-byte Folded Reload
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	blt	a0, n12, .LBB9_146
.LBB9_138:
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	srai	a0, a0, 48
	slli	a0, a0, 2
	beqz	n14, .LBB9_140
.LBB9_139:
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	lw	a1, 0(a1)
	bge	n12, a1, .LBB9_141
.LBB9_140:
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sw	n12, 0(a0)
.LBB9_141:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1033(a0)
	beqz	a0, .LBB9_143
# %bb.142:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	sh	n8, 0(a0)
	sh	n9, 2(a0)
.LBB9_143:
	sh	n8, 0(t2)
	sh	n9, 0(t3)
.LBB9_144:
	mv	a0, n12
	ld	ra, 568(sp)                     # 8-byte Folded Reload
	ld	s0, 560(sp)                     # 8-byte Folded Reload
	ld	s1, 552(sp)                     # 8-byte Folded Reload
	ld	s2, 544(sp)                     # 8-byte Folded Reload
	ld	s3, 536(sp)                     # 8-byte Folded Reload
	ld	s4, 528(sp)                     # 8-byte Folded Reload
	ld	s5, 520(sp)                     # 8-byte Folded Reload
	ld	s6, 512(sp)                     # 8-byte Folded Reload
	ld	s7, 504(sp)                     # 8-byte Folded Reload
	ld	s8, 496(sp)                     # 8-byte Folded Reload
	ld	s9, 488(sp)                     # 8-byte Folded Reload
	ld	s10, 480(sp)                    # 8-byte Folded Reload
	ld	s11, 472(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 576
	ret
.LBB9_145:
	sd	zero, 56(sp)                    # 8-byte Folded Spill
	sd	zero, 48(sp)                    # 8-byte Folded Spill
	li	a1, 0
	mv	a2, n11
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	bge	a0, n12, .LBB9_138
.LBB9_146:
	sd	a1, 80(sp)                      # 8-byte Folded Spill
	mv	a4, a2
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1017(a0)
	beqz	a0, .LBB9_156
# %bb.147:
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	lw	a0, 0(a0)
	srli	a1, a0, 1
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	add	a0, a0, a2
	addw	a0, a0, a1
	bge	n12, a0, .LBB9_150
# %bb.148:
	or	a0, n8, n9
	bnez	a0, .LBB9_153
.LBB9_149:
	lui	a0, %hi(sdiamond)
	ld	n13, %lo(sdiamond)(a0)
	j	.LBB9_156
.LBB9_150:
	li	a0, 5
	blt	a0, s2, .LBB9_155
# %bb.151:
	sgtz	a0, n14
	addi	a1, s2, -1
	snez	a1, a1
	and	a0, a0, a1
	bnez	a0, .LBB9_155
# %bb.152:
	lui	a0, %hi(searchPattern)
	ld	n13, %lo(searchPattern)(a0)
	j	.LBB9_156
.LBB9_153:
	lh	a0, 0(t2)
	subw	a0, n8, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a1, a0, a1
	li	a0, 1
	bltu	a0, a1, .LBB9_155
# %bb.154:
	lh	a1, 0(t3)
	subw	a1, n9, a1
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	bgeu	a0, a1, .LBB9_149
.LBB9_155:
	lui	a0, %hi(square)
	ld	n13, %lo(square)(a0)
.LBB9_156:
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	srai	a0, a0, 48
	slli	a0, a0, 2
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	add	a0, n6, a0
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	addi	a0, a0, -1
	slli	a0, a0, 32
	srli	a0, a0, 29
	addi	s0, a0, 8
	li	s5, 1
	slti	a0, s2, 5
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	lui	a6, %hi(EPZSMap)
	lui	a7, %hi(mvbits)
	lui	t4, %hi(UMVLineX)
	addi	t4, t4, %lo(UMVLineX)
	lui	t5, %hi(img_width)
	lui	t6, %hi(img_height)
	lui	s11, %hi(get_ref_line)
	lui	n1, %hi(ref_pic)
	mv	a0, n9
	mv	a1, n8
	j	.LBB9_159
.LBB9_157:                              #   in Loop: Header=BB9_159 Depth=1
	lui	a1, %hi(square)
	addi	a1, a1, %lo(square)
.LBB9_158:                              #   in Loop: Header=BB9_159 Depth=1
	ld	n13, 0(a1)
	sd	zero, 80(sp)                    # 8-byte Folded Spill
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	ld	a1, 48(sp)                      # 8-byte Folded Reload
.LBB9_159:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_161 Depth 2
                                        #       Child Loop BB9_163 Depth 3
                                        #         Child Loop BB9_181 Depth 4
                                        #         Child Loop BB9_175 Depth 4
                                        #           Child Loop BB9_176 Depth 5
	li	s4, 0
	sd	zero, 128(sp)                   # 8-byte Folded Spill
	sd	n9, 200(sp)                     # 8-byte Folded Spill
	sd	n8, 208(sp)                     # 8-byte Folded Spill
	mv	n9, a0
	mv	n8, a1
	mv	a0, n13
	sd	n13, 192(sp)                    # 8-byte Folded Spill
	j	.LBB9_161
.LBB9_160:                              #   in Loop: Header=BB9_161 Depth=2
	ld	a0, 8(n13)
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 4
	add	a0, a0, a1
	lw	s4, 8(a0)
	addi	a0, a0, 12
	ld	n9, 200(sp)                     # 8-byte Folded Reload
	ld	n8, 208(sp)                     # 8-byte Folded Reload
.LBB9_161:                              #   Parent Loop BB9_159 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_163 Depth 3
                                        #         Child Loop BB9_181 Depth 4
                                        #         Child Loop BB9_175 Depth 4
                                        #           Child Loop BB9_176 Depth 5
	lw	a0, 0(a0)
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	add	a1, a1, n9
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	sd	n8, 224(sp)                     # 8-byte Folded Spill
	sd	n9, 216(sp)                     # 8-byte Folded Spill
	j	.LBB9_163
.LBB9_162:                              #   in Loop: Header=BB9_163 Depth=3
	lw	a0, 0(n13)
	addiw	s4, s4, 1
	slt	a1, s4, a0
	addi	a1, a1, -1
	and	a0, a1, a0
	subw	s4, s4, a0
	addiw	a0, s1, -1
	bge	s5, s1, .LBB9_186
.LBB9_163:                              #   Parent Loop BB9_159 Depth=1
                                        #     Parent Loop BB9_161 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_181 Depth 4
                                        #         Child Loop BB9_175 Depth 4
                                        #           Child Loop BB9_176 Depth 5
	ld	a1, 8(n13)
	slli	a2, s4, 4
	add	a1, a1, a2
	lw	a2, 0(a1)
	lh	a3, 0(t2)
	addw	s7, a2, n8
	sub	a2, s7, a3
	sraiw	a3, a2, 31
	xor	a2, a2, a3
	subw	a2, a2, a3
	mv	s1, a0
	blt	n10, a2, .LBB9_162
# %bb.164:                              #   in Loop: Header=BB9_163 Depth=3
	lw	a0, 4(a1)
	lh	a1, 0(t3)
	addw	s2, a0, n9
	sub	a1, s2, a1
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	bltu	n10, a1, .LBB9_162
# %bb.165:                              #   in Loop: Header=BB9_163 Depth=3
	ld	a1, %lo(EPZSMap)(a6)
	addw	a2, s2, t1
	slli	a2, a2, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	addw	a2, s7, t0
	add	a1, a1, a2
	lbu	a2, 0(a1)
	beq	a2, s5, .LBB9_162
# %bb.166:                              #   in Loop: Header=BB9_163 Depth=3
	addw	s8, s7, n7
	addw	s9, s2, n6
	sb	s5, 0(a1)
	ld	a1, %lo(mvbits)(a7)
	slli	a2, s8, 2
	ld	a3, 240(sp)                     # 8-byte Folded Reload
	subw	a2, a2, a3
	slli	a2, a2, 2
	add	a2, a1, a2
	lw	a2, 0(a2)
	slli	a3, s9, 2
	ld	a5, 232(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a5
	slli	a3, a3, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	add	a1, a1, a2
	ld	a2, 248(sp)                     # 8-byte Folded Reload
	mul	a1, a1, a2
	sraiw	s10, a1, 16
	bge	s10, n12, .LBB9_162
# %bb.167:                              #   in Loop: Header=BB9_163 Depth=3
	mv	a1, t4
	bltz	s8, .LBB9_172
# %bb.168:                              #   in Loop: Header=BB9_163 Depth=3
	lh	a1, %lo(img_width)(t5)
	sub	a2, a1, a4
	mv	a1, t4
	bge	s8, a2, .LBB9_172
# %bb.169:                              #   in Loop: Header=BB9_163 Depth=3
	mv	a1, t4
	bltz	s9, .LBB9_172
# %bb.170:                              #   in Loop: Header=BB9_163 Depth=3
	lh	a1, %lo(img_height)(t6)
	ld	a2, 264(sp)                     # 8-byte Folded Reload
	sub	a1, a1, a2
	slt	a1, s9, a1
	andi	a2, a1, 1
	lui	a1, %hi(FastLineX)
	addi	a1, a1, %lo(FastLineX)
	bnez	a2, .LBB9_172
# %bb.171:                              #   in Loop: Header=BB9_163 Depth=3
	mv	a1, t4
.LBB9_172:                              #   in Loop: Header=BB9_163 Depth=3
	sd	a1, %lo(get_ref_line)(s11)
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	blez	a1, .LBB9_179
# %bb.173:                              #   in Loop: Header=BB9_163 Depth=3
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	blez	a1, .LBB9_180
# %bb.174:                              # %.preheader
                                        #   in Loop: Header=BB9_163 Depth=3
	li	s6, 0
	mv	a0, a4
.LBB9_175:                              #   Parent Loop BB9_159 Depth=1
                                        #     Parent Loop BB9_161 Depth=2
                                        #       Parent Loop BB9_163 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB9_176 Depth 5
	mv	s3, n12
	ld	a6, %lo(get_ref_line)(s11)
	ld	a1, %lo(ref_pic)(n1)
	lh	a4, %lo(img_height)(t6)
	lh	a5, %lo(img_width)(t5)
	addw	a2, s9, s6
	mv	a3, s8
	jalr	a6
	slli	a1, s6, 3
	ld	a2, 256(sp)                     # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	add	a3, a1, s0
.LBB9_176:                              #   Parent Loop BB9_159 Depth=1
                                        #     Parent Loop BB9_161 Depth=2
                                        #       Parent Loop BB9_163 Depth=3
                                        #         Parent Loop BB9_175 Depth=4
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
	add	a4, a4, s10
	add	a5, a5, a6
	add	a4, a4, a5
	addw	s10, a4, a7
	addi	a1, a1, 8
	addi	a0, a0, 8
	bne	a1, a3, .LBB9_176
# %bb.177:                              #   in Loop: Header=BB9_175 Depth=4
	mv	n12, s3
	bge	s10, s3, .LBB9_183
# %bb.178:                              #   in Loop: Header=BB9_175 Depth=4
	addi	s6, s6, 1
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	lui	t5, %hi(img_width)
	lui	t6, %hi(img_height)
	lui	n1, %hi(ref_pic)
	bltu	s6, a1, .LBB9_175
	j	.LBB9_184
.LBB9_179:                              #   in Loop: Header=BB9_163 Depth=3
	mv	a0, a4
	j	.LBB9_184
.LBB9_180:                              # %.preheader1
                                        #   in Loop: Header=BB9_163 Depth=3
	mv	s3, n12
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	addw	s6, a1, a0
	mv	a0, a4
.LBB9_181:                              #   Parent Loop BB9_159 Depth=1
                                        #     Parent Loop BB9_161 Depth=2
                                        #       Parent Loop BB9_163 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld	a6, %lo(get_ref_line)(s11)
	ld	a1, %lo(ref_pic)(n1)
	lh	a4, %lo(img_height)(t6)
	lh	a5, %lo(img_width)(t5)
	mv	a2, s9
	mv	a3, s8
	jalr	a6
	lui	n1, %hi(ref_pic)
	lui	t6, %hi(img_height)
	lui	t5, %hi(img_width)
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	addiw	s9, s9, 1
	bne	s9, s6, .LBB9_181
# %bb.182:                              #   in Loop: Header=BB9_163 Depth=3
	mv	n12, s3
	j	.LBB9_184
.LBB9_183:                              #   in Loop: Header=BB9_163 Depth=3
	ld	a0, 272(sp)                     # 8-byte Folded Reload
	lui	t5, %hi(img_width)
	lui	t6, %hi(img_height)
	lui	n1, %hi(ref_pic)
.LBB9_184:                              #   in Loop: Header=BB9_163 Depth=3
	mv	a4, a0
	ld	t2, 168(sp)                     # 8-byte Folded Reload
	ld	t3, 160(sp)                     # 8-byte Folded Reload
	ld	n6, 152(sp)                     # 8-byte Folded Reload
	ld	n7, 184(sp)                     # 8-byte Folded Reload
	ld	n8, 224(sp)                     # 8-byte Folded Reload
	ld	n9, 216(sp)                     # 8-byte Folded Reload
	ld	n10, 176(sp)                    # 8-byte Folded Reload
	ld	n13, 192(sp)                    # 8-byte Folded Reload
	ld	t0, 144(sp)                     # 8-byte Folded Reload
	ld	t1, 136(sp)                     # 8-byte Folded Reload
	lui	a6, %hi(EPZSMap)
	lui	a7, %hi(mvbits)
	lui	t4, %hi(UMVLineX)
	addi	t4, t4, %lo(UMVLineX)
	bge	s10, n12, .LBB9_162
# %bb.185:                              #   in Loop: Header=BB9_163 Depth=3
	sd	s2, 200(sp)                     # 8-byte Folded Spill
	sd	s7, 208(sp)                     # 8-byte Folded Spill
	mv	n12, s10
	sd	s4, 128(sp)                     # 8-byte Folded Spill
	j	.LBB9_162
.LBB9_186:                              #   in Loop: Header=BB9_161 Depth=2
	ld	a0, 208(sp)                     # 8-byte Folded Reload
	bne	a0, n8, .LBB9_160
# %bb.187:                              #   in Loop: Header=BB9_161 Depth=2
	ld	a0, 200(sp)                     # 8-byte Folded Reload
	bne	a0, n9, .LBB9_160
# %bb.188:                              #   in Loop: Header=BB9_159 Depth=1
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	blez	a0, .LBB9_193
# %bb.189:                              #   in Loop: Header=BB9_159 Depth=1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 28(a0)
	bnez	a0, .LBB9_193
# %bb.190:                              #   in Loop: Header=BB9_159 Depth=1
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	lw	a0, 0(a0)
	slliw	a1, a0, 2
	blt	a1, n12, .LBB9_143
# %bb.191:                              #   in Loop: Header=BB9_159 Depth=1
	slli	a1, a0, 1
	addw	a1, a1, a0
	bge	a1, n12, .LBB9_193
# %bb.192:                              #   in Loop: Header=BB9_159 Depth=1
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	bge	a1, a0, .LBB9_143
.LBB9_193:                              #   in Loop: Header=BB9_159 Depth=1
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB9_202
# %bb.194:                              #   in Loop: Header=BB9_159 Depth=1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 24(a0)
	seqz	a0, a0
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	or	a0, a0, a1
	beqz	a0, .LBB9_202
# %bb.195:                              #   in Loop: Header=BB9_159 Depth=1
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	bge	a0, n12, .LBB9_203
# %bb.196:                              #   in Loop: Header=BB9_159 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1021(a0)
	blez	a0, .LBB9_202
# %bb.197:                              #   in Loop: Header=BB9_159 Depth=1
	lh	a0, 0(t2)
	or	a1, n8, n9
	bnez	a1, .LBB9_200
.LBB9_198:                              #   in Loop: Header=BB9_159 Depth=1
	subw	a0, n8, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	s5, a0, .LBB9_157
# %bb.199:                              #   in Loop: Header=BB9_159 Depth=1
	lh	a0, 0(t3)
	subw	a0, n9, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	lui	a1, %hi(sdiamond)
	addi	a1, a1, %lo(sdiamond)
	li	a2, 2
	bgeu	a0, a2, .LBB9_157
	j	.LBB9_158
.LBB9_200:                              #   in Loop: Header=BB9_159 Depth=1
	lui	a1, %hi(searchPatternD)
	addi	a1, a1, %lo(searchPatternD)
	bne	n8, a0, .LBB9_158
# %bb.201:                              #   in Loop: Header=BB9_159 Depth=1
	lh	a2, 0(t3)
	bne	n9, a2, .LBB9_158
	j	.LBB9_198
.LBB9_202:
	ld	n14, 96(sp)                     # 8-byte Folded Reload
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	srai	a0, a0, 48
	slli	a0, a0, 2
	bnez	n14, .LBB9_139
	j	.LBB9_140
.LBB9_203:
	ld	n14, 96(sp)                     # 8-byte Folded Reload
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	srai	a0, a0, 48
	slli	a0, a0, 2
	bnez	n14, .LBB9_139
	j	.LBB9_140
.Lfunc_end9:
	.size	EPZSPelBlockMotionSearch, .Lfunc_end9-EPZSPelBlockMotionSearch
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function computeSad
	.type	computeSad,@function
computeSad:                             # @computeSad
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
	mv	s0, a4
	blez	a1, .LBB10_11
# %bb.1:
	mv	s1, a7
	mv	s2, a6
	mv	s4, a5
	mv	s3, a2
	mv	s5, a1
	blez	a3, .LBB10_7
# %bb.2:
	mv	s6, a0
	li	s7, 0
	addi	a3, a3, -1
	slli	a3, a3, 32
	srli	a3, a3, 29
	addi	s8, a3, 8
	lui	s11, %hi(img_height)
	lui	s9, %hi(img_width)
	lui	s10, %hi(byte_abs)
.LBB10_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_4 Depth 2
	lui	a0, %hi(get_ref_line)
	ld	a6, %lo(get_ref_line)(a0)
	lui	a0, %hi(ref_pic)
	ld	a1, %lo(ref_pic)(a0)
	lh	a4, %lo(img_height)(s11)
	lh	a5, %lo(img_width)(s9)
	addw	a2, s7, s1
	mv	a0, s3
	mv	a3, s2
	jalr	a6
	slli	a1, s7, 3
	add	a1, s6, a1
	ld	a1, 0(a1)
	ld	a2, %lo(byte_abs)(s10)
	add	a3, a1, s8
.LBB10_4:                               #   Parent Loop BB10_3 Depth=1
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
	bne	a1, a3, .LBB10_4
# %bb.5:                                #   in Loop: Header=BB10_3 Depth=1
	bge	s0, s4, .LBB10_11
# %bb.6:                                #   in Loop: Header=BB10_3 Depth=1
	addi	s7, s7, 1
	bltu	s7, s5, .LBB10_3
	j	.LBB10_11
.LBB10_7:
	bge	s0, s4, .LBB10_10
# %bb.8:                                # %.preheader
	addw	s4, s1, s5
	lui	s5, %hi(get_ref_line)
	lui	s6, %hi(ref_pic)
	lui	s7, %hi(img_height)
	lui	s8, %hi(img_width)
.LBB10_9:                               # =>This Inner Loop Header: Depth=1
	ld	a6, %lo(get_ref_line)(s5)
	ld	a1, %lo(ref_pic)(s6)
	lh	a4, %lo(img_height)(s7)
	lh	a5, %lo(img_width)(s8)
	mv	a0, s3
	mv	a2, s1
	mv	a3, s2
	jalr	a6
	addiw	s1, s1, 1
	bne	s1, s4, .LBB10_9
	j	.LBB10_11
.LBB10_10:
	lui	a0, %hi(get_ref_line)
	ld	a6, %lo(get_ref_line)(a0)
	lui	a0, %hi(ref_pic)
	ld	a1, %lo(ref_pic)(a0)
	lui	a0, %hi(img_height)
	lh	a4, %lo(img_height)(a0)
	lui	a0, %hi(img_width)
	lh	a5, %lo(img_width)(a0)
	mv	a0, s3
	mv	a2, s1
	mv	a3, s2
	jalr	a6
.LBB10_11:
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
.Lfunc_end10:
	.size	computeSad, .Lfunc_end10-computeSad
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function EPZSSpatialPredictors
	.type	EPZSSpatialPredictors,@function
EPZSSpatialPredictors:                  # @EPZSSpatialPredictors
# %bb.0:
	addw	a4, a5, a4
	slli	a4, a4, 12
	lui	t0, %hi(img)
	ld	t4, %lo(img)(t0)
	lui	t0, %hi(mv_scale)
	addi	t0, t0, %lo(mv_scale)
	slli	a6, a6, 7
	lui	t1, 22
	add	t1, t4, t1
	lw	t1, 108(t1)
	add	a6, t0, a6
	add	a6, a6, a4
	sw	zero, 0(t3)
	sw	zero, 4(t3)
	beqz	t1, .LBB11_13
# %bb.1:
	lw	t5, 0(a0)
	lui	a4, 8
	addiw	a4, a4, -1192
	add	t4, t4, a4
	li	a4, -1
	beqz	a5, .LBB11_26
# %bb.2:
	li	a5, -1
	beqz	t5, .LBB11_4
# %bb.3:
	lw	a5, 20(a0)
	ld	t0, 0(t4)
	lw	t1, 4(a0)
	li	t6, 528
	slli	a5, a5, 3
	add	a5, a7, a5
	ld	a5, 0(a5)
	lw	n1, 16(a0)
	mul	t1, t1, t6
	add	t0, t0, t1
	lw	t0, 424(t0)
	add	a5, a5, n1
	lbu	a5, 0(a5)
	seqz	t0, t0
	sllw	a5, a5, t0
.LBB11_4:
	lw	n2, 0(a1)
	beqz	n2, .LBB11_6
# %bb.5:
	lw	a4, 20(a1)
	ld	t0, 0(t4)
	lw	t1, 4(a1)
	li	t6, 528
	slli	a4, a4, 3
	add	a4, a7, a4
	ld	a4, 0(a4)
	lw	n1, 16(a1)
	mul	t1, t1, t6
	add	t0, t0, t1
	lw	t0, 424(t0)
	add	a4, a4, n1
	lbu	a4, 0(a4)
	seqz	t0, t0
	sllw	a4, a4, t0
.LBB11_6:
	lw	n1, 0(a2)
	li	t0, -1
	li	t1, -1
	beqz	n1, .LBB11_8
# %bb.7:
	lw	t1, 20(a2)
	ld	t6, 0(t4)
	lw	n3, 4(a2)
	li	n4, 528
	slli	t1, t1, 3
	add	t1, a7, t1
	ld	t1, 0(t1)
	lw	n5, 16(a2)
	mul	n3, n3, n4
	add	t6, t6, n3
	lw	t6, 424(t6)
	add	t1, t1, n5
	lbu	t1, 0(t1)
	seqz	t6, t6
	sllw	t1, t1, t6
.LBB11_8:
	lw	t6, 0(a3)
	beqz	t6, .LBB11_10
# %bb.9:
	lw	t0, 20(a3)
	ld	n3, 0(t4)
	lw	n4, 4(a3)
	li	n5, 528
	slli	t0, t0, 3
	add	a7, a7, t0
	ld	a7, 0(a7)
	lw	t0, 16(a3)
	mul	n4, n4, n5
	add	n3, n3, n4
	lw	n3, 424(n3)
	add	a7, a7, t0
	lbu	a7, 0(a7)
	seqz	t0, n3
	sllw	t0, a7, t0
.LBB11_10:
	beqz	t5, .LBB11_41
# %bb.11:
	lw	a7, 20(a0)
	slli	a7, a7, 3
	add	a7, t2, a7
	lw	t5, 16(a0)
	ld	a7, 0(a7)
	slli	t5, t5, 3
	add	a7, a7, t5
	ld	a7, 0(a7)
	slli	t5, a5, 2
	add	t5, a6, t5
	lw	t5, 0(t5)
	lh	n3, 0(a7)
	lw	a0, 4(a0)
	ld	n4, 0(t4)
	mul	n3, t5, n3
	li	n5, 528
	mul	a0, a0, n5
	add	a0, n4, a0
	lw	n4, 424(a0)
	lh	a0, 2(a7)
	addi	a7, n3, 512
	sraiw	a7, a7, 10
	sw	a7, 16(t3)
	mul	a0, t5, a0
	beqz	n4, .LBB11_48
# %bb.12:
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	sw	a0, 20(t3)
	bnez	n2, .LBB11_42
	j	.LBB11_49
.LBB11_13:
	lw	n1, 0(a0)
	li	a4, -1
	li	a5, -1
	beqz	n1, .LBB11_15
# %bb.14:
	lw	a5, 20(a0)
	slli	a5, a5, 3
	add	a5, a7, a5
	ld	a5, 0(a5)
	lw	t0, 16(a0)
	add	a5, a5, t0
	lbu	a5, 0(a5)
.LBB11_15:
	lw	t6, 0(a1)
	beqz	t6, .LBB11_17
# %bb.16:
	lw	a4, 20(a1)
	slli	a4, a4, 3
	add	a4, a7, a4
	ld	a4, 0(a4)
	lw	t0, 16(a1)
	add	a4, a4, t0
	lbu	a4, 0(a4)
.LBB11_17:
	lw	t5, 0(a2)
	li	t0, -1
	li	t1, -1
	beqz	t5, .LBB11_19
# %bb.18:
	lw	t1, 20(a2)
	slli	t1, t1, 3
	add	t1, a7, t1
	ld	t1, 0(t1)
	lw	t4, 16(a2)
	add	t1, t1, t4
	lbu	t1, 0(t1)
.LBB11_19:
	lw	t4, 0(a3)
	beqz	t4, .LBB11_21
# %bb.20:
	lw	t0, 20(a3)
	slli	t0, t0, 3
	add	a7, a7, t0
	ld	a7, 0(a7)
	lw	t0, 16(a3)
	add	a7, a7, t0
	lbu	t0, 0(a7)
.LBB11_21:
	li	a7, 3
	beqz	n1, .LBB11_44
# %bb.22:
	lw	n1, 20(a0)
	slli	n1, n1, 3
	add	n1, t2, n1
	lw	a0, 16(a0)
	ld	n1, 0(n1)
	slli	a0, a0, 3
	add	a0, n1, a0
	ld	a0, 0(a0)
	slli	n1, a5, 2
	add	n1, a6, n1
	lw	n1, 0(n1)
	lh	n2, 0(a0)
	lh	n3, 2(a0)
	mul	a0, n1, n2
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	mul	n1, n1, n3
	addi	n1, n1, 512
	sraiw	n1, n1, 10
	sw	a0, 16(t3)
	sw	n1, 20(t3)
	beqz	t6, .LBB11_45
.LBB11_23:
	lw	a0, 20(a1)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a1, 16(a1)
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a1, a4, 2
	add	a1, a6, a1
	lw	a1, 0(a1)
	lh	a7, 0(a0)
	lh	t6, 2(a0)
	mul	a0, a1, a7
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	mul	a1, a1, t6
	addi	a1, a1, 512
	sraiw	a7, a1, 10
	sw	a0, 32(t3)
	sw	a7, 36(t3)
	li	a1, -3
	beqz	t5, .LBB11_46
.LBB11_24:
	lw	a0, 20(a2)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a2, 16(a2)
	ld	a0, 0(a0)
	slli	a2, a2, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	slli	a2, t1, 2
	add	a2, a6, a2
	lw	a2, 0(a2)
	lh	a7, 0(a0)
	lh	t5, 2(a0)
	mul	a0, a2, a7
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	mul	a2, a2, t5
	addi	a2, a2, 512
	sraiw	a2, a2, 10
	sw	a0, 48(t3)
	sw	a2, 52(t3)
	beqz	t4, .LBB11_47
.LBB11_25:
	lw	a0, 20(a3)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a1, 16(a3)
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a1, t0, 2
	add	a1, a6, a1
	lw	a1, 0(a1)
	lh	a2, 0(a0)
	lh	a3, 2(a0)
	mul	a0, a1, a2
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	mul	a1, a1, a3
	addi	a1, a1, 512
	sraiw	a1, a1, 10
	sw	a0, 64(t3)
	j	.LBB11_71
.LBB11_26:
	li	a5, -1
	beqz	t5, .LBB11_29
# %bb.27:
	lw	a5, 20(a0)
	ld	t0, 0(t4)
	lw	t1, 4(a0)
	li	t6, 528
	slli	a5, a5, 3
	add	a5, a7, a5
	ld	a5, 0(a5)
	lw	n1, 16(a0)
	mul	t1, t1, t6
	add	t0, t0, t1
	lw	t0, 424(t0)
	add	a5, a5, n1
	lbu	a5, 0(a5)
	beqz	t0, .LBB11_29
# %bb.28:
	srli	a5, a5, 1
.LBB11_29:
	lw	n2, 0(a1)
	beqz	n2, .LBB11_32
# %bb.30:
	lw	a4, 20(a1)
	ld	t0, 0(t4)
	lw	t1, 4(a1)
	li	t6, 528
	slli	a4, a4, 3
	add	a4, a7, a4
	ld	a4, 0(a4)
	lw	n1, 16(a1)
	mul	t1, t1, t6
	add	t0, t0, t1
	lw	t0, 424(t0)
	add	a4, a4, n1
	lbu	a4, 0(a4)
	beqz	t0, .LBB11_32
# %bb.31:
	srli	a4, a4, 1
.LBB11_32:
	lw	n1, 0(a2)
	li	t0, -1
	li	t1, -1
	beqz	n1, .LBB11_35
# %bb.33:
	lw	t1, 20(a2)
	ld	t6, 0(t4)
	lw	n3, 4(a2)
	li	n4, 528
	slli	t1, t1, 3
	add	t1, a7, t1
	ld	t1, 0(t1)
	lw	n5, 16(a2)
	mul	n3, n3, n4
	add	t6, t6, n3
	lw	t6, 424(t6)
	add	t1, t1, n5
	lbu	t1, 0(t1)
	beqz	t6, .LBB11_35
# %bb.34:
	srli	t1, t1, 1
.LBB11_35:
	lw	t6, 0(a3)
	beqz	t6, .LBB11_38
# %bb.36:
	lw	t0, 20(a3)
	ld	n3, 0(t4)
	lw	n4, 4(a3)
	li	n5, 528
	slli	t0, t0, 3
	add	a7, a7, t0
	ld	a7, 0(a7)
	lw	t0, 16(a3)
	mul	n4, n4, n5
	add	n3, n3, n4
	lw	n3, 424(n3)
	add	a7, a7, t0
	lbu	t0, 0(a7)
	beqz	n3, .LBB11_38
# %bb.37:
	srli	t0, t0, 1
.LBB11_38:
	beqz	t5, .LBB11_57
# %bb.39:
	lw	a7, 20(a0)
	slli	a7, a7, 3
	add	a7, t2, a7
	lw	t5, 16(a0)
	ld	a7, 0(a7)
	slli	t5, t5, 3
	add	a7, a7, t5
	ld	a7, 0(a7)
	slli	t5, a5, 2
	add	t5, a6, t5
	lw	t5, 0(t5)
	lh	n3, 0(a7)
	lw	a0, 4(a0)
	ld	n4, 0(t4)
	mul	n3, t5, n3
	li	n5, 528
	mul	a0, a0, n5
	add	a0, n4, a0
	lw	n4, 424(a0)
	lh	a0, 2(a7)
	addi	a7, n3, 512
	sraiw	a7, a7, 10
	sw	a7, 16(t3)
	mul	a0, t5, a0
	beqz	n4, .LBB11_60
# %bb.40:
	addi	a0, a0, 256
	sraiw	a0, a0, 9
	sw	a0, 20(t3)
	bnez	n2, .LBB11_58
	j	.LBB11_61
.LBB11_41:
	li	a7, 3
	sw	a7, 16(t3)
	sw	zero, 20(t3)
	beqz	n2, .LBB11_49
.LBB11_42:
	lw	a0, 20(a1)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a7, 16(a1)
	ld	a0, 0(a0)
	slli	a7, a7, 3
	add	a0, a0, a7
	ld	a0, 0(a0)
	slli	a7, a4, 2
	add	a7, a6, a7
	lw	a7, 0(a7)
	lh	t5, 0(a0)
	lw	a1, 4(a1)
	ld	n2, 0(t4)
	mul	t5, a7, t5
	li	n3, 528
	mul	a1, a1, n3
	add	a1, n2, a1
	lw	a1, 424(a1)
	lh	a0, 2(a0)
	addi	t5, t5, 512
	sraiw	t5, t5, 10
	sw	t5, 32(t3)
	mul	a0, a7, a0
	beqz	a1, .LBB11_52
# %bb.43:
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	sw	a0, 36(t3)
	bnez	n1, .LBB11_50
	j	.LBB11_53
.LBB11_44:
	li	a0, 3
	sw	a0, 16(t3)
	sw	n1, 20(t3)
	bnez	t6, .LBB11_23
.LBB11_45:
	sw	zero, 32(t3)
	sw	a7, 36(t3)
	li	a1, -3
	bnez	t5, .LBB11_24
.LBB11_46:
	li	a0, -3
	sw	a0, 48(t3)
	sw	zero, 52(t3)
	bnez	t4, .LBB11_25
.LBB11_47:
	sw	zero, 64(t3)
	j	.LBB11_71
.LBB11_48:
	addi	a0, a0, 1024
	sraiw	a0, a0, 11
	sw	a0, 20(t3)
	bnez	n2, .LBB11_42
.LBB11_49:
	sw	zero, 32(t3)
	li	a0, 3
	sw	a0, 36(t3)
	beqz	n1, .LBB11_53
.LBB11_50:
	lw	a0, 20(a2)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a1, 16(a2)
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a1, t1, 2
	add	a1, a6, a1
	lw	a1, 0(a1)
	lh	a7, 0(a0)
	lw	a2, 4(a2)
	ld	t5, 0(t4)
	mul	a7, a1, a7
	li	n1, 528
	mul	a2, a2, n1
	add	a2, t5, a2
	lw	a2, 424(a2)
	lh	a0, 2(a0)
	addi	a7, a7, 512
	sraiw	a7, a7, 10
	sw	a7, 48(t3)
	mul	a0, a1, a0
	beqz	a2, .LBB11_54
# %bb.51:
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	sw	a0, 52(t3)
	bnez	t6, .LBB11_55
	j	.LBB11_70
.LBB11_52:
	addi	a0, a0, 1024
	sraiw	a0, a0, 11
	sw	a0, 36(t3)
	bnez	n1, .LBB11_50
.LBB11_53:
	li	a1, -3
	sw	a1, 48(t3)
	sw	zero, 52(t3)
	bnez	t6, .LBB11_55
	j	.LBB11_70
.LBB11_54:
	addi	a0, a0, 1024
	sraiw	a0, a0, 11
	sw	a0, 52(t3)
	beqz	t6, .LBB11_70
.LBB11_55:
	lw	a0, 20(a3)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a1, 16(a3)
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a1, t0, 2
	add	a1, a6, a1
	lw	a1, 0(a1)
	lh	a2, 0(a0)
	lw	a3, 4(a3)
	ld	a6, 0(t4)
	mul	a2, a1, a2
	li	a7, 528
	mul	a3, a3, a7
	add	a3, a6, a3
	lw	a3, 424(a3)
	lh	a0, 2(a0)
	addi	a2, a2, 512
	sraiw	a2, a2, 10
	sw	a2, 64(t3)
	mul	a0, a1, a0
	bnez	a3, .LBB11_68
# %bb.56:
	addi	a0, a0, 1024
	sraiw	a1, a0, 11
	j	.LBB11_71
.LBB11_57:
	li	a7, 3
	sw	a7, 16(t3)
	sw	zero, 20(t3)
	beqz	n2, .LBB11_61
.LBB11_58:
	lw	a0, 20(a1)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a7, 16(a1)
	ld	a0, 0(a0)
	slli	a7, a7, 3
	add	a0, a0, a7
	ld	a0, 0(a0)
	slli	a7, a4, 2
	add	a7, a6, a7
	lw	a7, 0(a7)
	lh	t5, 0(a0)
	lw	a1, 4(a1)
	ld	n2, 0(t4)
	mul	t5, a7, t5
	li	n3, 528
	mul	a1, a1, n3
	add	a1, n2, a1
	lw	a1, 424(a1)
	lh	a0, 2(a0)
	addi	t5, t5, 512
	sraiw	t5, t5, 10
	sw	t5, 32(t3)
	mul	a0, a7, a0
	beqz	a1, .LBB11_64
# %bb.59:
	addi	a0, a0, 256
	sraiw	a0, a0, 9
	sw	a0, 36(t3)
	bnez	n1, .LBB11_62
	j	.LBB11_65
.LBB11_60:
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	sw	a0, 20(t3)
	bnez	n2, .LBB11_58
.LBB11_61:
	sw	zero, 32(t3)
	li	a0, 3
	sw	a0, 36(t3)
	beqz	n1, .LBB11_65
.LBB11_62:
	lw	a0, 20(a2)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a1, 16(a2)
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a1, t1, 2
	add	a1, a6, a1
	lw	a1, 0(a1)
	lh	a7, 0(a0)
	lw	a2, 4(a2)
	ld	t5, 0(t4)
	mul	a7, a1, a7
	li	n1, 528
	mul	a2, a2, n1
	add	a2, t5, a2
	lw	a2, 424(a2)
	lh	a0, 2(a0)
	addi	a7, a7, 512
	sraiw	a7, a7, 10
	sw	a7, 48(t3)
	mul	a0, a1, a0
	beqz	a2, .LBB11_69
# %bb.63:
	addi	a0, a0, 256
	sraiw	a0, a0, 9
	sw	a0, 52(t3)
	bnez	t6, .LBB11_66
	j	.LBB11_70
.LBB11_64:
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	sw	a0, 36(t3)
	bnez	n1, .LBB11_62
.LBB11_65:
	li	a0, -3
	sw	a0, 48(t3)
	li	a0, 3
	sw	a0, 52(t3)
	beqz	t6, .LBB11_70
.LBB11_66:
	lw	a0, 20(a3)
	slli	a0, a0, 3
	add	a0, t2, a0
	lw	a1, 16(a3)
	ld	a0, 0(a0)
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	slli	a1, t0, 2
	add	a1, a6, a1
	lw	a1, 0(a1)
	lh	a2, 0(a0)
	lw	a3, 4(a3)
	ld	a6, 0(t4)
	mul	a2, a1, a2
	li	a7, 528
	mul	a3, a3, a7
	add	a3, a6, a3
	lw	a3, 424(a3)
	lh	a0, 2(a0)
	addi	a2, a2, 512
	sraiw	a2, a2, 10
	sw	a2, 64(t3)
	mul	a0, a1, a0
	beqz	a3, .LBB11_68
# %bb.67:
	addi	a0, a0, 256
	sraiw	a1, a0, 9
	j	.LBB11_71
.LBB11_68:
	addi	a0, a0, 512
	sraiw	a1, a0, 10
	j	.LBB11_71
.LBB11_69:
	addi	a0, a0, 512
	sraiw	a0, a0, 10
	sw	a0, 52(t3)
	bnez	t6, .LBB11_66
.LBB11_70:
	sw	zero, 64(t3)
	li	a1, -3
.LBB11_71:
	addi	a5, a5, 1
	seqz	a0, a5
	addi	a4, a4, 1
	seqz	a2, a4
	add	a0, a0, a2
	and	a2, t1, t0
	addi	a2, a2, 1
	seqz	a2, a2
	add	a0, a0, a2
	sw	a1, 68(t3)
	ret
.Lfunc_end11:
	.size	EPZSSpatialPredictors, .Lfunc_end11-EPZSSpatialPredictors
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
	ld	n2, 528(sp)
	lui	t0, %hi(input)
	ld	t0, %lo(input)(t0)
	mv	t6, a7
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	ld	t4, 576(sp)
	slli	n7, n2, 3
	add	n7, t0, n7
	lw	a0, 84(n7)
	ld	s2, 568(sp)
	ld	n4, 592(sp)
	ld	t5, 584(sp)
	slli	n8, a0, 48
	lui	a7, %hi(img)
	lui	t0, %hi(active_pps)
	ld	t0, %lo(active_pps)(t0)
	ld	t2, %lo(img)(a7)
	lh	s3, 0(s2)
	slli	n5, n2, 2
	lw	t0, 196(t0)
	lui	a7, %hi(medthres)
	addi	a7, a7, %lo(medthres)
	add	n5, a7, n5
	slli	t1, a1, 3
	slli	a7, a3, 3
	sd	a5, 64(sp)                      # 8-byte Folded Spill
	sd	a4, 56(sp)                      # 8-byte Folded Spill
	beqz	t0, .LBB12_3
# %bb.1:
	lui	t3, %hi(wp_offset)
	ld	t3, %lo(wp_offset)(t3)
	add	t3, t3, a7
	beqz	a2, .LBB12_4
# %bb.2:
	ld	a4, 8(t3)
	ld	t3, 0(t3)
	j	.LBB12_5
.LBB12_3:
	li	n6, 0
	li	n11, 0
	j	.LBB12_6
.LBB12_4:
	ld	a4, 0(t3)
	ld	t3, 8(t3)
	add	a4, a4, t1
	add	t3, t3, t1
.LBB12_5:
	ld	a4, 0(a4)
	ld	t3, 0(t3)
	lw	n6, 0(a4)
	lw	n11, 0(t3)
.LBB12_6:
	lw	n9, 168(t2)
	lw	n10, 172(t2)
	ld	s5, 600(sp)
	addw	t2, a3, a2
	slli	t2, t2, 3
	lui	t3, %hi(listX)
	addi	t3, t3, %lo(listX)
	add	t2, t3, t2
	ld	t2, 0(t2)
	sd	t4, 144(sp)                     # 8-byte Folded Spill
	lh	n3, 0(t4)
	lh	n1, 0(t5)
	lh	n4, 0(n4)
	add	t1, t2, t1
	ld	t1, 0(t1)
	lw	a5, 88(n7)
	lui	t2, 2
	addiw	t4, t2, -1800
	add	t4, t1, t4
	ld	t1, 40(t4)
	xori	t5, a2, 1
	addw	t5, t5, a3
	slli	t5, t5, 3
	add	t3, t3, t5
	ld	t3, 0(t3)
	srai	t5, n8, 48
	lui	a4, %hi(ref_pic1)
	sd	t1, %lo(ref_pic1)(a4)
	ld	a4, 0(t3)
	addw	s4, s3, a6
	lw	t3, 0(n5)
	lui	t1, %hi(searchPattern)
	add	a4, a4, t2
	ld	a4, -1760(a4)
	ld	s6, %lo(searchPattern)(t1)
	lui	t2, %hi(ref_pic2)
	lw	t1, 0(t4)
	sd	a4, %lo(ref_pic2)(t2)
	lw	a4, 4(t4)
	lui	t2, %hi(img_width)
	sh	t1, %lo(img_width)(t2)
	lui	t2, %hi(img_height)
	sh	a4, %lo(img_height)(t2)
	sd	n2, 24(sp)                      # 8-byte Folded Spill
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	sd	n5, 80(sp)                      # 8-byte Folded Spill
	sd	a2, 88(sp)                      # 8-byte Folded Spill
	sd	n9, 48(sp)                      # 8-byte Folded Spill
	sd	n10, 40(sp)                     # 8-byte Folded Spill
	sd	t3, 176(sp)                     # 8-byte Folded Spill
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	beqz	t0, .LBB12_9
# %bb.7:
	lui	t0, %hi(wbp_weight)
	ld	t0, %lo(wbp_weight)(t0)
	add	a7, t0, a7
	beqz	a2, .LBB12_10
# %bb.8:
	ld	t0, 8(a7)
	ld	a7, 0(a7)
	ld	t0, 0(t0)
	ld	a7, 0(a7)
	slli	t2, a1, 3
	add	t0, t0, t2
	ld	t0, 0(t0)
	add	a7, a7, t2
	j	.LBB12_11
.LBB12_9:
	lui	a7, %hi(luma_log_weight_denom)
	lwu	a7, %lo(luma_log_weight_denom)(a7)
	li	t0, 1
	sllw	t2, t0, a7
	lui	a7, %hi(weight1)
	sh	t2, %lo(weight1)(a7)
	lui	t3, %hi(computeBiPredSad1)
	addi	t3, t3, %lo(computeBiPredSad1)
	j	.LBB12_12
.LBB12_10:
	ld	t0, 0(a7)
	ld	a7, 8(a7)
	slli	t2, a1, 3
	add	t0, t0, t2
	ld	t0, 0(t0)
	add	a7, a7, t2
	ld	a7, 0(a7)
	ld	t0, 0(t0)
.LBB12_11:
	ld	a7, 0(a7)
	lh	t0, 0(t0)
	lw	t2, 0(a7)
	lui	a7, %hi(weight1)
	sh	t0, %lo(weight1)(a7)
	lui	t3, %hi(computeBiPredSad2)
	addi	t3, t3, %lo(computeBiPredSad2)
.LBB12_12:
	ld	a7, 560(sp)
	ld	t0, 552(sp)
	slliw	a1, a0, 16
	slli	s8, a6, 2
	slli	s9, t6, 2
	addw	s1, n3, t6
	addw	a0, n1, a6
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(weight2)
	sh	t2, %lo(weight2)(a0)
	slli	a2, n6, 48
	srai	a2, a2, 48
	slli	a3, n11, 48
	srai	a3, a3, 48
	add	a2, a2, a3
	addi	a2, a2, 1
	srli	a2, a2, 1
	lui	a0, %hi(offsetBi)
	sh	a2, %lo(offsetBi)(a0)
	lui	a0, %hi(computeBiPredSad)
	sd	t3, %lo(computeBiPredSad)(a0)
	slli	t1, t1, 48
	add	a0, t5, s5
	slli	a5, a5, 48
	sd	t5, 152(sp)                     # 8-byte Folded Spill
	bge	s5, s4, .LBB12_17
# %bb.13:
	srai	a2, t1, 48
	subw	a2, a2, a0
	bge	s4, a2, .LBB12_17
# %bb.14:
	bge	s5, s1, .LBB12_17
# %bb.15:
	slli	a2, a4, 48
	srai	a2, a2, 48
	srai	a3, a5, 48
	add	a3, a3, s5
	subw	a2, a2, a3
	bge	s1, a2, .LBB12_17
# %bb.16:
	lui	a2, %hi(FastLineX)
	addi	a2, a2, %lo(FastLineX)
	j	.LBB12_18
.LBB12_17:
	lui	a2, %hi(UMVLineX)
	addi	a2, a2, %lo(UMVLineX)
.LBB12_18:
	ld	a3, 616(sp)
	sd	a3, 224(sp)                     # 8-byte Folded Spill
	ld	s0, 536(sp)
	ld	s11, 544(sp)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	sraiw	a3, a1, 18
	sd	a3, 112(sp)                     # 8-byte Folded Spill
	add	t0, s8, t0
	sd	t0, 216(sp)                     # 8-byte Folded Spill
	add	a7, s9, a7
	sd	a7, 208(sp)                     # 8-byte Folded Spill
	addw	a1, n4, t6
	sd	a1, 160(sp)                     # 8-byte Folded Spill
	lui	a1, %hi(get_ref_line2)
	sd	a2, %lo(get_ref_line2)(a1)
	sd	t6, 136(sp)                     # 8-byte Folded Spill
	sd	a6, 128(sp)                     # 8-byte Folded Spill
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	sd	n3, 184(sp)                     # 8-byte Folded Spill
	sd	t3, 104(sp)                     # 8-byte Folded Spill
	bge	s5, a1, .LBB12_23
# %bb.19:
	srai	a1, t1, 48
	subw	a1, a1, a0
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB12_23
# %bb.20:
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	bge	s5, a0, .LBB12_23
# %bb.21:
	slli	a4, a4, 48
	srai	a4, a4, 48
	srai	s10, a5, 48
	add	a0, s10, s5
	subw	a4, a4, a0
	ld	a0, 160(sp)                     # 8-byte Folded Reload
	bge	a0, a4, .LBB12_23
# %bb.22:
	lui	a0, %hi(FastLineX)
	addi	a0, a0, %lo(FastLineX)
	j	.LBB12_24
.LBB12_23:
	srai	s10, a5, 48
	lui	a0, %hi(UMVLineX)
	addi	a0, a0, %lo(UMVLineX)
.LBB12_24:
	lui	s7, %hi(EPZSMap)
	ld	a1, %lo(EPZSMap)(s7)
	lui	a2, %hi(get_ref_line1)
	sd	a0, %lo(get_ref_line1)(a2)
	ld	a0, 0(a1)
	slli	a1, s5, 1
	addi	a1, a1, 1
	mulw	a2, a1, a1
	li	a1, 0
	call	memset
	ld	a0, %lo(EPZSMap)(s7)
	slli	a1, s5, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	add	a0, a0, s5
	li	a1, 1
	sb	a1, 0(a0)
	lui	a0, %hi(mvbits)
	ld	a0, %lo(mvbits)(a0)
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	slli	a1, a6, 2
	add	s0, s8, s0
	subw	a1, a1, s0
	slli	a1, a1, 2
	sd	a1, 200(sp)                     # 8-byte Folded Spill
	add	a1, a0, a1
	lw	a1, 0(a1)
	ld	a7, 160(sp)                     # 8-byte Folded Reload
	slli	a2, a7, 2
	add	s9, s9, s11
	subw	a2, a2, s9
	slli	a2, a2, 2
	sd	a2, 192(sp)                     # 8-byte Folded Spill
	add	a2, a0, a2
	lw	a2, 0(a2)
	slli	a3, s4, 2
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	subw	a3, a3, a4
	slli	a3, a3, 2
	add	a3, a0, a3
	slli	a4, s1, 2
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
	sd	s1, 8(sp)
	lui	a5, 524288
	addiw	a5, a5, -1
	sd	s4, 0(sp)
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	mv	a1, s10
	ld	s8, 152(sp)                     # 8-byte Folded Reload
	mv	a2, s8
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	ld	t1, 104(sp)                     # 8-byte Folded Reload
	jalr	t1
	mv	t3, a0
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	bge	a0, t3, .LBB12_29
# %bb.25:
	ld	s11, 32(sp)                     # 8-byte Folded Reload
	sd	t3, 176(sp)                     # 8-byte Folded Spill
	sd	s10, 96(sp)                     # 8-byte Folded Spill
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	ld	a2, 48(sp)                      # 8-byte Folded Reload
	subw	s7, a1, a2
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	subw	a1, a1, a2
	slli	s7, s7, 48
	lw	a0, 12(a0)
	slliw	s1, a1, 16
	srai	s9, s7, 50
	sraiw	s4, s1, 18
	li	a3, -1
	addi	a5, sp, 400
	mv	a1, s9
	mv	a2, s4
	li	a4, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s0)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 376
	mv	a1, s9
	mv	a2, s4
	li	a3, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s0)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 352
	mv	a1, s9
	mv	a2, s4
	mv	a3, s8
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s0)
	lw	a0, 12(a0)
	li	a3, -1
	li	a4, -1
	addi	a5, sp, 328
	mv	a1, s9
	mv	a2, s4
	call	getLuma4x4Neighbour
	ld	a2, 184(sp)                     # 8-byte Folded Reload
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	blez	s1, .LBB12_32
# %bb.26:
	srai	a0, s7, 48
	li	a1, 7
	blt	a1, a0, .LBB12_30
# %bb.27:
	lui	a1, 128
	bne	s1, a1, .LBB12_53
# %bb.28:
	lui	a0, 256
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	beq	a1, a0, .LBB12_31
	j	.LBB12_32
.LBB12_29:
	lui	a0, 16
	addi	a0, a0, -1
	and	s3, s3, a0
	ld	t4, 184(sp)                     # 8-byte Folded Reload
	and	t4, t4, a0
	ld	a7, 144(sp)                     # 8-byte Folded Reload
	j	.LBB12_52
.LBB12_30:
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	li	a1, 16
	bne	a0, a1, .LBB12_32
.LBB12_31:
	sw	zero, 352(sp)
.LBB12_32:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	lw	a0, 0(a0)
	subw	s4, s5, s3
	subw	a1, s5, a2
	sd	a1, 104(sp)                     # 8-byte Folded Spill
	li	a1, 11
	mulw	a0, a0, a1
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	slli	a0, a4, 3
	add	a1, a5, a0
	lwu	a2, 420(sp)
	ld	a7, 0(a1)
	lwu	a1, 416(sp)
	add	a0, a3, a0
	slli	a2, a2, 32
	lwu	a3, 412(sp)
	or	a1, a2, a1
	lwu	a2, 408(sp)
	sd	a1, 320(sp)
	slli	a3, a3, 32
	lwu	a1, 404(sp)
	or	a2, a3, a2
	lwu	a3, 400(sp)
	sd	a2, 312(sp)
	slli	a1, a1, 32
	lwu	a2, 396(sp)
	or	a1, a1, a3
	lwu	a3, 392(sp)
	sd	a1, 304(sp)
	slli	a2, a2, 32
	lwu	a1, 388(sp)
	or	a2, a2, a3
	lwu	a3, 384(sp)
	sd	a2, 296(sp)
	slli	a1, a1, 32
	lwu	a2, 380(sp)
	or	a1, a1, a3
	lwu	a3, 376(sp)
	sd	a1, 288(sp)
	slli	a2, a2, 32
	lwu	a1, 372(sp)
	or	a2, a2, a3
	lwu	a3, 368(sp)
	sd	a2, 280(sp)
	slli	a1, a1, 32
	lwu	a2, 364(sp)
	or	a1, a1, a3
	sd	a1, 272(sp)
	lwu	a1, 360(sp)
	slli	a2, a2, 32
	lwu	a3, 356(sp)
	lwu	a5, 352(sp)
	or	a1, a2, a1
	sd	a1, 264(sp)
	slli	a3, a3, 32
	or	a3, a3, a5
	lwu	a1, 348(sp)
	lwu	a2, 344(sp)
	lui	a5, %hi(predictor)
	sd	a3, 256(sp)
	slli	a1, a1, 32
	or	a1, a1, a2
	lwu	a2, 340(sp)
	lwu	a3, 336(sp)
	sd	a1, 248(sp)
	ld	a1, %lo(predictor)(a5)
	slli	a2, a2, 32
	or	a2, a2, a3
	sd	a2, 240(sp)
	lwu	a2, 332(sp)
	lwu	a3, 328(sp)
	ld	t2, 0(a0)
	ld	t3, 8(a1)
	slli	a2, a2, 32
	or	a2, a2, a3
	sd	a2, 232(sp)
	addi	a0, sp, 304
	addi	a1, sp, 280
	addi	a2, sp, 256
	addi	a3, sp, 232
	mv	a5, s11
	ld	a6, 72(sp)                      # 8-byte Folded Reload
	call	EPZSSpatialPredictors
	lui	t4, %hi(predictor)
	li	s1, 0
	li	s11, 0
	sd	zero, 56(sp)                    # 8-byte Folded Spill
	sd	zero, 64(sp)                    # 8-byte Folded Spill
	lui	s0, 524288
	addi	s0, s0, -1
	li	s7, 80
	lui	t5, %hi(mvbits)
	li	t6, 1
	ld	a7, 144(sp)                     # 8-byte Folded Reload
	ld	t0, 136(sp)                     # 8-byte Folded Reload
	ld	t1, 128(sp)                     # 8-byte Folded Reload
	ld	t3, 176(sp)                     # 8-byte Folded Reload
	sd	s4, 88(sp)                      # 8-byte Folded Spill
	j	.LBB12_36
.LBB12_33:                              #   in Loop: Header=BB12_36 Depth=1
	ld	a1, 184(sp)                     # 8-byte Folded Reload
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 56(sp)                      # 8-byte Folded Spill
	mv	s0, t3
	sd	s8, 184(sp)                     # 8-byte Folded Spill
	mv	s3, s10
	li	s11, 1
	mv	t3, a0
	ld	a7, 144(sp)                     # 8-byte Folded Reload
	ld	t0, 136(sp)                     # 8-byte Folded Reload
	ld	t1, 128(sp)                     # 8-byte Folded Reload
	ld	s4, 88(sp)                      # 8-byte Folded Reload
	lui	t4, %hi(predictor)
.LBB12_34:                              #   in Loop: Header=BB12_36 Depth=1
	lui	t5, %hi(mvbits)
	li	t6, 1
.LBB12_35:                              #   in Loop: Header=BB12_36 Depth=1
	addi	s1, s1, 16
	beq	s1, s7, .LBB12_46
.LBB12_36:                              # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(predictor)(t4)
	ld	a0, 8(a0)
	add	a0, a0, s1
	lw	s10, 0(a0)
	lh	a1, 0(s2)
	lw	s8, 4(a0)
	sub	a0, s10, a1
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	blt	s5, a0, .LBB12_38
# %bb.37:                               #   in Loop: Header=BB12_36 Depth=1
	lh	a0, 0(a7)
	subw	a0, s8, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bgeu	s5, a0, .LBB12_39
.LBB12_38:                              #   in Loop: Header=BB12_36 Depth=1
	or	a0, s10, s8
	bnez	a0, .LBB12_35
	j	.LBB12_41
.LBB12_39:                              #   in Loop: Header=BB12_36 Depth=1
	lui	a0, %hi(EPZSMap)
	ld	a0, %lo(EPZSMap)(a0)
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	addw	a1, s8, a1
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	addw	a1, s10, s4
	add	a0, a0, a1
	lbu	a1, 0(a0)
	beq	a1, t6, .LBB12_35
# %bb.40:                               #   in Loop: Header=BB12_36 Depth=1
	sb	t6, 0(a0)
.LBB12_41:                              #   in Loop: Header=BB12_36 Depth=1
	ld	a2, %lo(mvbits)(t5)
	addw	a0, s10, t1
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
	lw	a5, 0(a5)
	slli	a6, a1, 2
	ld	t2, 208(sp)                     # 8-byte Folded Reload
	subw	a6, a6, t2
	slli	a6, a6, 2
	add	a2, a2, a6
	lw	a2, 0(a2)
	add	a3, a4, a3
	ld	a6, 224(sp)                     # 8-byte Folded Reload
	mul	a3, a3, a6
	sraiw	a4, a3, 16
	add	a2, a2, a5
	mul	a2, a2, a6
	sraiw	a2, a2, 16
	add	a4, a2, a4
	sext.w	s9, s0
	bge	a4, s9, .LBB12_35
# %bb.42:                               #   in Loop: Header=BB12_36 Depth=1
	lui	a2, %hi(computeBiPredSad)
	ld	t1, %lo(computeBiPredSad)(a2)
	sd	a1, 8(sp)
	sd	a0, 0(sp)
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	mv	a5, s9
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	ld	a7, 160(sp)                     # 8-byte Folded Reload
	mv	s4, t3
	jalr	t1
	mv	t3, s4
	sext.w	a1, s4
	blt	a0, a1, .LBB12_33
# %bb.43:                               #   in Loop: Header=BB12_36 Depth=1
	ld	s4, 88(sp)                      # 8-byte Folded Reload
	lui	t4, %hi(predictor)
	bge	a0, s9, .LBB12_45
# %bb.44:                               #   in Loop: Header=BB12_36 Depth=1
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s10, 56(sp)                     # 8-byte Folded Spill
	mv	s0, a0
	li	s11, 1
.LBB12_45:                              #   in Loop: Header=BB12_36 Depth=1
	ld	a7, 144(sp)                     # 8-byte Folded Reload
	ld	t0, 136(sp)                     # 8-byte Folded Reload
	ld	t1, 128(sp)                     # 8-byte Folded Reload
	j	.LBB12_34
.LBB12_46:
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	srai	a1, a1, 3
	sext.w	a0, t3
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	bge	a1, a0, .LBB12_51
# %bb.47:
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 1017(a1)
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	ld	t4, 184(sp)                     # 8-byte Folded Reload
	ld	t5, 104(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB12_61
# %bb.48:
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	lw	a1, 0(a1)
	srli	a2, a1, 1
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	add	a1, a1, a4
	addw	a1, a1, a2
	bge	a0, a1, .LBB12_54
# %bb.49:
	or	a0, s3, t4
	bnez	a0, .LBB12_58
.LBB12_50:
	lui	a0, %hi(sdiamond)
	ld	s6, %lo(sdiamond)(a0)
	j	.LBB12_61
.LBB12_51:
	ld	t4, 184(sp)                     # 8-byte Folded Reload
.LBB12_52:
	sh	s3, 0(s2)
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
.LBB12_53:
	ld	a1, 152(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	li	a1, 8
	beq	a0, a1, .LBB12_31
	j	.LBB12_32
.LBB12_54:
	li	a0, 5
	blt	a0, a3, .LBB12_60
# %bb.55:
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	blez	a0, .LBB12_57
# %bb.56:
	li	a0, 1
	bne	a3, a0, .LBB12_60
.LBB12_57:
	lui	a0, %hi(searchPattern)
	ld	s6, %lo(searchPattern)(a0)
	j	.LBB12_61
.LBB12_58:
	lh	a0, 0(s2)
	subw	a0, s3, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a1, a0, a1
	li	a0, 1
	bltu	a0, a1, .LBB12_60
# %bb.59:
	lh	a1, 0(a7)
	subw	a1, t4, a1
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	bgeu	a0, a1, .LBB12_50
.LBB12_60:
	lui	a0, %hi(square)
	ld	s6, %lo(square)(a0)
.LBB12_61:
	addi	a0, s11, -1
	seqz	a0, a0
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	li	t6, 1
	slti	a0, a3, 5
	not	a0, a0
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	lui	n1, %hi(EPZSMap)
	lui	n2, %hi(mvbits)
	mv	a0, t4
	mv	a1, s3
	j	.LBB12_64
.LBB12_62:                              #   in Loop: Header=BB12_64 Depth=1
	lui	a1, %hi(square)
	addi	a1, a1, %lo(square)
.LBB12_63:                              #   in Loop: Header=BB12_64 Depth=1
	ld	s6, 0(a1)
	sd	zero, 72(sp)                    # 8-byte Folded Spill
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	ld	a1, 56(sp)                      # 8-byte Folded Reload
.LBB12_64:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_66 Depth 2
                                        #       Child Loop BB12_68 Depth 3
	li	s8, 0
	sd	zero, 80(sp)                    # 8-byte Folded Spill
	sd	t4, 176(sp)                     # 8-byte Folded Spill
	sd	s3, 184(sp)                     # 8-byte Folded Spill
	mv	t4, a0
	mv	s3, a1
	mv	a0, s6
	j	.LBB12_66
.LBB12_65:                              #   in Loop: Header=BB12_66 Depth=2
	ld	a0, 8(s6)
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 4
	add	a0, a0, a1
	lw	s8, 8(a0)
	addi	a0, a0, 12
	ld	t4, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 184(sp)                     # 8-byte Folded Reload
.LBB12_66:                              #   Parent Loop BB12_64 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_68 Depth 3
	lw	s10, 0(a0)
	addi	s10, s10, 1
	j	.LBB12_68
.LBB12_67:                              #   in Loop: Header=BB12_68 Depth=3
	lw	a0, 0(s6)
	slt	a1, s7, a0
	addi	a1, a1, -1
	and	a0, a1, a0
	subw	s8, s7, a0
	addiw	s10, s10, -1
	bge	t6, s10, .LBB12_74
.LBB12_68:                              #   Parent Loop BB12_64 Depth=1
                                        #     Parent Loop BB12_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 8(s6)
	slli	a1, s8, 4
	add	a0, a0, a1
	lw	a1, 0(a0)
	lh	a2, 0(s2)
	addw	s1, a1, s3
	sub	a1, s1, a2
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a1, a1, a2
	addiw	s7, s8, 1
	blt	s5, a1, .LBB12_67
# %bb.69:                               #   in Loop: Header=BB12_68 Depth=3
	lw	a0, 4(a0)
	lh	a1, 0(a7)
	addw	s11, a0, t4
	sub	a0, s11, a1
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	s5, a0, .LBB12_67
# %bb.70:                               #   in Loop: Header=BB12_68 Depth=3
	ld	a0, %lo(EPZSMap)(n1)
	addw	a1, s11, t5
	slli	a1, a1, 3
	add	a0, a0, a1
	ld	a0, 0(a0)
	addw	a1, s1, s4
	add	a0, a0, a1
	lbu	a1, 0(a0)
	beq	a1, t6, .LBB12_67
# %bb.71:                               #   in Loop: Header=BB12_68 Depth=3
	sb	t6, 0(a0)
	ld	a2, %lo(mvbits)(n2)
	addw	a0, s1, t1
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
	lw	a5, 0(a5)
	slli	a6, a1, 2
	ld	t2, 208(sp)                     # 8-byte Folded Reload
	subw	a6, a6, t2
	slli	a6, a6, 2
	add	a2, a2, a6
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
	bge	a4, s9, .LBB12_67
# %bb.72:                               #   in Loop: Header=BB12_68 Depth=3
	lui	a2, %hi(computeBiPredSad)
	ld	t1, %lo(computeBiPredSad)(a2)
	sd	a1, 8(sp)
	sd	a0, 0(sp)
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	ld	a2, 152(sp)                     # 8-byte Folded Reload
	ld	a3, 112(sp)                     # 8-byte Folded Reload
	mv	a5, s9
	ld	a6, 168(sp)                     # 8-byte Folded Reload
	ld	a7, 160(sp)                     # 8-byte Folded Reload
	mv	s4, t3
	mv	s0, s6
	mv	s6, s5
	mv	s5, s3
	mv	s3, s2
	mv	s2, t4
	jalr	t1
	lui	n2, %hi(mvbits)
	lui	n1, %hi(EPZSMap)
	li	t6, 1
	mv	t4, s2
	mv	s2, s3
	mv	s3, s5
	mv	s5, s6
	mv	s6, s0
	ld	t5, 104(sp)                     # 8-byte Folded Reload
	mv	t3, s4
	ld	s4, 88(sp)                      # 8-byte Folded Reload
	ld	t1, 128(sp)                     # 8-byte Folded Reload
	ld	t0, 136(sp)                     # 8-byte Folded Reload
	ld	a7, 144(sp)                     # 8-byte Folded Reload
	bge	a0, s9, .LBB12_67
# %bb.73:                               #   in Loop: Header=BB12_68 Depth=3
	sd	s11, 176(sp)                    # 8-byte Folded Spill
	sd	s1, 184(sp)                     # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	mv	t3, a0
	j	.LBB12_67
.LBB12_74:                              #   in Loop: Header=BB12_66 Depth=2
	ld	a0, 184(sp)                     # 8-byte Folded Reload
	bne	a0, s3, .LBB12_65
# %bb.75:                               #   in Loop: Header=BB12_66 Depth=2
	ld	a0, 176(sp)                     # 8-byte Folded Reload
	bne	a0, t4, .LBB12_65
# %bb.76:                               #   in Loop: Header=BB12_64 Depth=1
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	not	a0, a0
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	or	a0, a1, a0
	andi	a0, a0, 1
	bnez	a0, .LBB12_52
# %bb.77:                               #   in Loop: Header=BB12_64 Depth=1
	sext.w	a0, t3
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	bge	a1, a0, .LBB12_52
# %bb.78:                               #   in Loop: Header=BB12_64 Depth=1
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1021(a0)
	blez	a0, .LBB12_52
# %bb.79:                               #   in Loop: Header=BB12_64 Depth=1
	lh	a0, 0(s2)
	or	a1, s3, t4
	bnez	a1, .LBB12_82
.LBB12_80:                              #   in Loop: Header=BB12_64 Depth=1
	subw	a0, s3, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	bltu	t6, a0, .LBB12_62
# %bb.81:                               #   in Loop: Header=BB12_64 Depth=1
	lh	a0, 0(a7)
	subw	a0, t4, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	lui	a1, %hi(sdiamond)
	addi	a1, a1, %lo(sdiamond)
	li	a2, 2
	bgeu	a0, a2, .LBB12_62
	j	.LBB12_63
.LBB12_82:                              #   in Loop: Header=BB12_64 Depth=1
	lui	a1, %hi(searchPatternD)
	addi	a1, a1, %lo(searchPatternD)
	bne	s3, a0, .LBB12_63
# %bb.83:                               #   in Loop: Header=BB12_64 Depth=1
	lh	a2, 0(a7)
	bne	t4, a2, .LBB12_63
	j	.LBB12_80
.Lfunc_end12:
	.size	EPZSBiPredBlockMotionSearch, .Lfunc_end12-EPZSBiPredBlockMotionSearch
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
	mv	s0, a4
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	blez	a1, .LBB13_28
# %bb.1:
	mv	s1, a7
	mv	s11, a6
	mv	s6, a5
	mv	s8, a3
	mv	s3, a2
	ld	s5, 152(sp)
	ld	a3, 144(sp)
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	blez	s8, .LBB13_24
# %bb.2:
	sd	s11, 8(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(luma_log_weight_denom)
	lw	s9, %lo(luma_log_weight_denom)(a0)
	lui	a0, %hi(wp_luma_round)
	lw	s2, %lo(wp_luma_round)(a0)
	li	s11, 0
	addi	s9, s9, 1
	slli	s2, s2, 1
	lui	s4, %hi(img_width)
	lui	a0, 22
	addiw	s7, a0, 420
.LBB13_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
	lui	a0, %hi(get_ref_line2)
	ld	a6, %lo(get_ref_line2)(a0)
	lui	a0, %hi(ref_pic2)
	ld	a1, %lo(ref_pic2)(a0)
	lui	s10, %hi(img_height)
	lh	a4, %lo(img_height)(s10)
	lh	a5, %lo(img_width)(s4)
	addw	a2, s11, s5
	mv	a0, s3
	jalr	a6
	lui	a1, %hi(get_ref_line1)
	ld	a6, %lo(get_ref_line1)(a1)
	lui	a1, %hi(ref_pic1)
	ld	a1, %lo(ref_pic1)(a1)
	lh	a4, %lo(img_height)(s10)
	lh	a5, %lo(img_width)(s4)
	mv	s10, a0
	addw	a2, s11, s1
	mv	a0, s3
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	jalr	a6
	slli	a1, s11, 3
	ld	a2, 24(sp)                      # 8-byte Folded Reload
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
	add	a6, a6, s7
	li	t0, 1
.LBB13_4:                               #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a7, 0(a0)
	lhu	t1, 0(s10)
	mul	a7, a7, a2
	mul	t1, t1, a3
	add	a7, a7, s2
	add	a7, a7, t1
	sraw	a7, a7, s9
	addw	t1, a7, a4
	mv	a7, t0
	bltz	t1, .LBB13_7
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=2
	lw	t0, 0(a6)
	blt	t1, t0, .LBB13_8
# %bb.6:                                #   in Loop: Header=BB13_4 Depth=2
	mv	t1, t0
	j	.LBB13_8
.LBB13_7:                               #   in Loop: Header=BB13_4 Depth=2
	li	t1, 0
.LBB13_8:                               #   in Loop: Header=BB13_4 Depth=2
	lhu	t0, 0(a1)
	subw	t0, t0, t1
	slli	t0, t0, 2
	lhu	t1, 2(a0)
	lhu	t2, 2(s10)
	add	t0, a5, t0
	lw	t0, 0(t0)
	mul	t1, t1, a2
	mul	t2, t2, a3
	add	t1, t1, s2
	add	t1, t1, t2
	sraw	t1, t1, s9
	addw	t1, t1, a4
	bltz	t1, .LBB13_11
# %bb.9:                                #   in Loop: Header=BB13_4 Depth=2
	lw	t2, 0(a6)
	blt	t1, t2, .LBB13_12
# %bb.10:                               #   in Loop: Header=BB13_4 Depth=2
	mv	t1, t2
	j	.LBB13_12
.LBB13_11:                              #   in Loop: Header=BB13_4 Depth=2
	li	t1, 0
.LBB13_12:                              #   in Loop: Header=BB13_4 Depth=2
	lhu	t2, 2(a1)
	subw	t1, t2, t1
	slli	t1, t1, 2
	lhu	t2, 4(a0)
	lhu	t3, 4(s10)
	add	t1, a5, t1
	lw	t1, 0(t1)
	mul	t2, t2, a2
	mul	t3, t3, a3
	add	t2, t2, s2
	add	t2, t2, t3
	sraw	t2, t2, s9
	addw	t2, t2, a4
	bltz	t2, .LBB13_15
# %bb.13:                               #   in Loop: Header=BB13_4 Depth=2
	lw	t3, 0(a6)
	blt	t2, t3, .LBB13_16
# %bb.14:                               #   in Loop: Header=BB13_4 Depth=2
	mv	t2, t3
	j	.LBB13_16
.LBB13_15:                              #   in Loop: Header=BB13_4 Depth=2
	li	t2, 0
.LBB13_16:                              #   in Loop: Header=BB13_4 Depth=2
	lhu	t3, 4(a1)
	subw	t2, t3, t2
	slli	t2, t2, 2
	lhu	t3, 6(a0)
	lhu	t4, 6(s10)
	add	t2, a5, t2
	lw	t2, 0(t2)
	mul	t3, t3, a2
	mul	t4, t4, a3
	add	t3, t3, s2
	add	t3, t3, t4
	sraw	t3, t3, s9
	addw	t3, t3, a4
	bltz	t3, .LBB13_19
# %bb.17:                               #   in Loop: Header=BB13_4 Depth=2
	lw	t4, 0(a6)
	blt	t3, t4, .LBB13_20
# %bb.18:                               #   in Loop: Header=BB13_4 Depth=2
	mv	t3, t4
	j	.LBB13_20
.LBB13_19:                              #   in Loop: Header=BB13_4 Depth=2
	li	t3, 0
.LBB13_20:                              #   in Loop: Header=BB13_4 Depth=2
	lhu	t4, 6(a1)
	subw	t4, t4, t3
	slli	t4, t4, 2
	add	t4, a5, t4
	lw	t3, 0(t4)
	add	t0, t0, s0
	add	t1, t1, t2
	add	t0, t0, t1
	addw	s0, t0, t3
	bge	s0, s6, .LBB13_22
# %bb.21:                               #   in Loop: Header=BB13_4 Depth=2
	addiw	t0, a7, 1
	addi	a0, a0, 8
	addi	s10, s10, 8
	addi	a1, a1, 8
	blt	a7, s8, .LBB13_4
.LBB13_22:                              #   in Loop: Header=BB13_3 Depth=1
	bge	s0, s6, .LBB13_28
# %bb.23:                               #   in Loop: Header=BB13_3 Depth=1
	addi	s11, s11, 1
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	bltu	s11, a0, .LBB13_3
	j	.LBB13_28
.LBB13_24:
	bge	s0, s6, .LBB13_27
# %bb.25:                               # %.preheader
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	addw	s2, s1, a0
	lui	s4, %hi(get_ref_line2)
	lui	s6, %hi(ref_pic2)
	lui	s7, %hi(img_height)
	lui	s8, %hi(img_width)
	lui	s9, %hi(get_ref_line1)
	lui	s10, %hi(ref_pic1)
.LBB13_26:                              # =>This Inner Loop Header: Depth=1
	ld	a6, %lo(get_ref_line2)(s4)
	ld	a1, %lo(ref_pic2)(s6)
	lh	a4, %lo(img_height)(s7)
	lh	a5, %lo(img_width)(s8)
	sext.w	a2, s5
	mv	a0, s3
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	jalr	a6
	ld	a6, %lo(get_ref_line1)(s9)
	ld	a1, %lo(ref_pic1)(s10)
	lh	a4, %lo(img_height)(s7)
	lh	a5, %lo(img_width)(s8)
	mv	a0, s3
	mv	a2, s1
	mv	a3, s11
	jalr	a6
	addiw	s1, s1, 1
	addi	s5, s5, 1
	bne	s1, s2, .LBB13_26
	j	.LBB13_28
.LBB13_27:
	lui	a0, %hi(get_ref_line2)
	ld	a6, %lo(get_ref_line2)(a0)
	lui	a0, %hi(ref_pic2)
	ld	a1, %lo(ref_pic2)(a0)
	lui	s2, %hi(img_height)
	lh	a4, %lo(img_height)(s2)
	lui	s4, %hi(img_width)
	lh	a5, %lo(img_width)(s4)
	mv	a0, s3
	mv	a2, s5
	jalr	a6
	lui	a0, %hi(get_ref_line1)
	ld	a6, %lo(get_ref_line1)(a0)
	lui	a0, %hi(ref_pic1)
	ld	a1, %lo(ref_pic1)(a0)
	lh	a4, %lo(img_height)(s2)
	lh	a5, %lo(img_width)(s4)
	mv	a0, s3
	mv	a2, s1
	mv	a3, s11
	jalr	a6
.LBB13_28:
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
.Lfunc_end13:
	.size	computeBiPredSad2, .Lfunc_end13-computeBiPredSad2
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
	sd	a5, 16(sp)                      # 8-byte Folded Spill
	mv	s0, a4
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	blez	a1, .LBB14_11
# %bb.1:
	mv	s1, a7
	mv	s11, a6
	mv	s3, a2
	mv	s7, a1
	ld	s5, 136(sp)
	ld	s8, 128(sp)
	mv	a7, s8
	blez	a3, .LBB14_7
# %bb.2:
	mv	s6, s11
	li	s10, 0
	addi	a3, a3, -1
	slli	a3, a3, 32
	srli	a3, a3, 29
	addi	s11, a3, 8
	lui	s2, %hi(img_height)
	lui	s4, %hi(img_width)
	mv	a3, a7
.LBB14_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_4 Depth 2
	lui	a0, %hi(get_ref_line2)
	ld	a6, %lo(get_ref_line2)(a0)
	lui	a0, %hi(ref_pic2)
	ld	a1, %lo(ref_pic2)(a0)
	lh	a4, %lo(img_height)(s2)
	lh	a5, %lo(img_width)(s4)
	addw	a2, s10, s5
	mv	a0, s3
	jalr	a6
	lui	a1, %hi(get_ref_line1)
	ld	a6, %lo(get_ref_line1)(a1)
	lui	a1, %hi(ref_pic1)
	ld	a1, %lo(ref_pic1)(a1)
	lh	a4, %lo(img_height)(s2)
	lh	a5, %lo(img_width)(s4)
	mv	s9, a0
	addw	a2, s10, s1
	mv	a0, s3
	mv	a3, s6
	jalr	a6
	slli	a1, s10, 3
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	add	a1, a2, a1
	ld	a1, 0(a1)
	lui	a2, %hi(byte_abs)
	ld	a2, %lo(byte_abs)(a2)
	add	a3, a1, s11
.LBB14_4:                               #   Parent Loop BB14_3 Depth=1
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
	bne	a1, a3, .LBB14_4
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	bge	s0, a0, .LBB14_11
# %bb.6:                                #   in Loop: Header=BB14_3 Depth=1
	addi	s10, s10, 1
	mv	a3, s8
	bltu	s10, s7, .LBB14_3
	j	.LBB14_11
.LBB14_7:
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	bge	s0, a0, .LBB14_10
# %bb.8:                                # %.preheader
	addw	s2, s1, s7
	lui	s6, %hi(ref_pic2)
	lui	s7, %hi(img_height)
	lui	s4, %hi(img_width)
	lui	s9, %hi(get_ref_line1)
	lui	s10, %hi(ref_pic1)
	mv	a3, a7
.LBB14_9:                               # =>This Inner Loop Header: Depth=1
	lui	a0, %hi(get_ref_line2)
	ld	a6, %lo(get_ref_line2)(a0)
	ld	a1, %lo(ref_pic2)(s6)
	lh	a4, %lo(img_height)(s7)
	lh	a5, %lo(img_width)(s4)
	sext.w	a2, s5
	mv	a0, s3
	jalr	a6
	ld	a6, %lo(get_ref_line1)(s9)
	ld	a1, %lo(ref_pic1)(s10)
	lh	a4, %lo(img_height)(s7)
	lh	a5, %lo(img_width)(s4)
	mv	a0, s3
	mv	a2, s1
	mv	a3, s11
	jalr	a6
	mv	a3, s8
	addiw	s1, s1, 1
	addi	s5, s5, 1
	bne	s1, s2, .LBB14_9
	j	.LBB14_11
.LBB14_10:
	lui	a0, %hi(get_ref_line2)
	ld	a6, %lo(get_ref_line2)(a0)
	lui	a0, %hi(ref_pic2)
	ld	a1, %lo(ref_pic2)(a0)
	lui	s2, %hi(img_height)
	lh	a4, %lo(img_height)(s2)
	lui	s4, %hi(img_width)
	lh	a5, %lo(img_width)(s4)
	mv	a0, s3
	mv	a2, s5
	mv	a3, a7
	jalr	a6
	lui	a0, %hi(get_ref_line1)
	ld	a6, %lo(get_ref_line1)(a0)
	lui	a0, %hi(ref_pic1)
	ld	a1, %lo(ref_pic1)(a0)
	lh	a4, %lo(img_height)(s2)
	lh	a5, %lo(img_width)(s4)
	mv	a0, s3
	mv	a2, s1
	mv	a3, s11
	jalr	a6
.LBB14_11:
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
.Lfunc_end14:
	.size	computeBiPredSad1, .Lfunc_end14-computeBiPredSad1
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
	mv	s6, a0
	li	s8, 20
	mul	a2, a2, s8
	lui	a3, %hi(c_EPZSPattern)
	addi	a3, a3, %lo(c_EPZSPattern)
	li	a4, 1
	add	a2, a3, a2
	beq	a1, a4, .LBB15_2
# %bb.1:
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	lui	s5, %hi(.L.str.10)
	addi	s5, s5, %lo(.L.str.10)
	lui	s4, %hi(.L.str.11)
	addi	s4, s4, %lo(.L.str.11)
	lui	s3, %hi(.L.str.12)
	addi	s3, s3, %lo(.L.str.12)
	lui	s2, %hi(.L.str.13)
	addi	s2, s2, %lo(.L.str.13)
	lui	s1, %hi(.L.str.14)
	addi	s1, s1, %lo(.L.str.14)
	lui	s0, %hi(.L.str.15)
	addi	s0, s0, %lo(.L.str.15)
	j	.LBB15_3
.LBB15_2:
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	lui	s5, %hi(.L.str.3)
	addi	s5, s5, %lo(.L.str.3)
	lui	s4, %hi(.L.str.4)
	addi	s4, s4, %lo(.L.str.4)
	lui	s3, %hi(.L.str.5)
	addi	s3, s3, %lo(.L.str.5)
	lui	s2, %hi(.L.str.6)
	addi	s2, s2, %lo(.L.str.6)
	lui	s1, %hi(.L.str.7)
	addi	s1, s1, %lo(.L.str.7)
	lui	s0, %hi(.L.str.8)
	addi	s0, s0, %lo(.L.str.8)
.LBB15_3:
	mv	a0, s6
	call	fprintf
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	lw	a0, 1021(a0)
	mul	a2, a0, s8
	lui	a0, %hi(c_EPZSDualPattern)
	addi	a0, a0, %lo(c_EPZSDualPattern)
	add	a2, a0, a2
	mv	a0, s6
	mv	a1, s5
	call	fprintf
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	lw	a0, 1025(a0)
	mul	a2, a0, s8
	lui	a0, %hi(c_EPZSFixed)
	addi	a0, a0, %lo(c_EPZSFixed)
	add	a2, a0, a2
	mv	a0, s6
	mv	a1, s4
	call	fprintf
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	lw	a0, 1029(a0)
	mul	a2, a0, s8
	lui	s4, %hi(c_EPZSOther)
	addi	s4, s4, %lo(c_EPZSOther)
	add	a2, s4, a2
	mv	a0, s6
	mv	a1, s3
	call	fprintf
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	lw	a0, 1033(a0)
	mul	a2, a0, s8
	add	a2, s4, a2
	mv	a0, s6
	mv	a1, s2
	call	fprintf
	lui	a0, %hi(medthres+4)
	lw	a2, %lo(medthres+4)(a0)
	lui	a0, %hi(minthres+4)
	lw	a3, %lo(minthres+4)(a0)
	lui	a0, %hi(maxthres+4)
	lw	a4, %lo(maxthres+4)(a0)
	mv	a0, s6
	mv	a1, s1
	call	fprintf
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	lw	a0, 1049(a0)
	mul	a2, a0, s8
	add	a2, s4, a2
	mv	a0, s6
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
.Lfunc_end15:
	.size	EPZSOutputStats, .Lfunc_end15-EPZSOutputStats
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
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	li	a0, 3
	li	t0, 64
	sd	t0, 232(sp)                     # 8-byte Folded Spill
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	beq	a5, a0, .LBB16_2
# %bb.1:
	li	a0, 128
	sd	a0, 232(sp)                     # 8-byte Folded Spill
.LBB16_2:
	lui	a0, %hi(input)
	ld	a5, %lo(input)(a0)
	ld	n4, 1520(sp)
	ld	n2, 1512(sp)
	ld	n3, 1504(sp)
	addi	n1, a5, 2047
	lw	a0, 1089(n1)
	lui	t0, %hi(img)
	ld	t6, %lo(img)(t0)
	beqz	a0, .LBB16_46
.LBB16_3:
	li	n5, 0
.LBB16_4:
	lw	a0, 24(a5)
	mv	t0, n4
	bgtz	n4, .LBB16_6
# %bb.5:
	li	t0, 1
.LBB16_6:
	ld	t1, 56(sp)                      # 8-byte Folded Reload
	slli	t1, t1, 3
	beqz	a0, .LBB16_8
# %bb.7:
	mv	n4, t0
.LBB16_8:
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
	beqz	t4, .LBB16_11
# %bb.9:
	lw	t4, 24(t6)
	li	a3, 1
	beqz	t4, .LBB16_13
# %bb.10:
	li	t5, 3
	beq	t4, t5, .LBB16_13
.LBB16_11:
	lw	a3, 196(t3)
	beqz	a3, .LBB16_13
# %bb.12:
	lw	a3, 24(t6)
	addi	a3, a3, -1
	seqz	a3, a3
.LBB16_13:
	slli	a4, a4, 2
	lw	t3, 84(t1)
	sd	t3, 304(sp)                     # 8-byte Folded Spill
	lw	t1, 88(t1)
	sd	t1, 168(sp)                     # 8-byte Folded Spill
	addi	t2, t2, 16
	sd	t2, 128(sp)                     # 8-byte Folded Spill
	addi	t1, a0, -2
	sd	t1, 40(sp)                      # 8-byte Folded Spill
	seqz	t1, t1
	addi	t1, t1, -1
	lw	t2, 1845(n1)
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
	beqz	a3, .LBB16_16
# %bb.14:
	lw	a3, 1912(a5)
	beqz	a3, .LBB16_16
# %bb.15:
	addiw	a3, t0, -1736
	j	.LBB16_17
.LBB16_16:
	addiw	a3, t0, -1744
.LBB16_17:
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	slti	t3, a5, 5
	and	a1, t2, a1
	ld	t2, 1544(sp)
	lw	a5, 0(t1)
	lw	t0, 4(t1)
	addi	a4, a4, 16
	sd	a4, 120(sp)                     # 8-byte Folded Spill
	add	a2, a2, a3
	slli	s5, a5, 2
	slli	s6, t0, 2
	lh	a4, 0(n3)
	ld	a3, 304(sp)                     # 8-byte Folded Reload
	subw	a3, a5, a3
	slli	a3, a3, 2
	ld	a5, 168(sp)                     # 8-byte Folded Reload
	subw	t1, t0, a5
	ld	a5, 128(sp)                     # 8-byte Folded Reload
	addw	a5, a5, a4
	li	t0, 2
	slli	a4, t1, 2
	sd	n4, 48(sp)                      # 8-byte Folded Spill
	blt	a5, t0, .LBB16_22
# %bb.18:
	addiw	t0, a3, 31
	bge	a5, t0, .LBB16_22
# %bb.19:
	lh	a5, 0(n2)
	ld	t0, 120(sp)                     # 8-byte Folded Reload
	addw	a5, t0, a5
	li	t0, 2
	blt	a5, t0, .LBB16_22
# %bb.20:
	addiw	t0, a4, 31
	bge	a5, t0, .LBB16_22
# %bb.21:
	lui	a5, %hi(FastLine4X)
	addi	a5, a5, %lo(FastLine4X)
	j	.LBB16_23
.LBB16_22:
	lui	a5, %hi(UMVLine4X)
	addi	a5, a5, %lo(UMVLine4X)
.LBB16_23:
	sd	zero, 152(sp)                   # 8-byte Folded Spill
	li	t5, 0
	ld	t1, 1536(sp)
	ld	t0, 1528(sp)
	sd	t0, 16(sp)                      # 8-byte Folded Spill
	sd	t3, 32(sp)                      # 8-byte Folded Spill
	and	a1, a1, t3
	sd	a1, 296(sp)                     # 8-byte Folded Spill
	ld	s4, 0(a2)
	addiw	s5, s5, 28
	addiw	s6, s6, 28
	addiw	a1, a3, 32
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	addiw	a1, a4, 32
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	addi	a0, a0, -1
	snez	t3, a0
	lui	s0, %hi(get_line)
	sd	a5, %lo(get_line)(s0)
	srai	t6, t2, 12
	ld	a0, 168(sp)                     # 8-byte Folded Reload
	slti	a0, a0, 1
	ld	a1, 304(sp)                     # 8-byte Folded Reload
	slti	a1, a1, 1
	or	a0, a0, a1
	sd	a0, 176(sp)                     # 8-byte Folded Spill
	lui	a0, 524288
	addi	n6, a0, -1
	lui	t0, %hi(search_point_hp_x)
	addi	t0, t0, %lo(search_point_hp_x)
	lui	a5, %hi(search_point_hp_y)
	addi	a5, a5, %lo(search_point_hp_y)
	lui	n1, %hi(mvbits)
	li	n4, 5
	sd	a7, 216(sp)                     # 8-byte Folded Spill
	sd	a6, 208(sp)                     # 8-byte Folded Spill
	sd	n2, 200(sp)                     # 8-byte Folded Spill
	sd	n3, 192(sp)                     # 8-byte Folded Spill
	sd	t2, 184(sp)                     # 8-byte Folded Spill
	sd	n5, 80(sp)                      # 8-byte Folded Spill
	sd	t4, 72(sp)                      # 8-byte Folded Spill
	sd	t6, 64(sp)                      # 8-byte Folded Spill
	j	.LBB16_26
.LBB16_24:                              #   in Loop: Header=BB16_26 Depth=1
	mv	n6, a0
	mv	t5, a1
.LBB16_25:                              #   in Loop: Header=BB16_26 Depth=1
	addi	t3, t3, 1
	beq	t3, n4, .LBB16_41
.LBB16_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_32 Depth 2
                                        #       Child Loop BB16_35 Depth 3
	lh	a0, 0(n3)
	slli	a1, t3, 2
	add	a2, t0, a1
	lw	a2, 0(a2)
	lh	a3, 0(n2)
	add	a1, a5, a1
	lw	a1, 0(a1)
	add	a0, a2, a0
	ld	a2, %lo(mvbits)(n1)
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
	and	a3, n5, a3
	neg	a3, a3
	and	a3, a3, t6
	sub	s1, a2, a3
	sext.w	a3, t1
	sext.w	a2, t4
	sd	a2, 264(sp)                     # 8-byte Folded Spill
	sd	a3, 256(sp)                     # 8-byte Folded Spill
	bge	s1, a3, .LBB16_25
# %bb.27:                               #   in Loop: Header=BB16_26 Depth=1
	sd	n6, 112(sp)                     # 8-byte Folded Spill
	sd	t3, 136(sp)                     # 8-byte Folded Spill
	sd	t5, 88(sp)                      # 8-byte Folded Spill
	sd	t1, 144(sp)                     # 8-byte Folded Spill
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB16_30
.LBB16_28:                              #   in Loop: Header=BB16_26 Depth=1
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB16_37
# %bb.29:                               #   in Loop: Header=BB16_26 Depth=1
	addi	a0, sp, 376
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	call	find_SATD
	add	s1, a0, s1
	j	.LBB16_37
.LBB16_30:                              # %.preheader11
                                        #   in Loop: Header=BB16_26 Depth=1
	li	a3, 0
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	addw	s2, a0, a2
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	add	a2, a1, a0
	sd	s2, 104(sp)                     # 8-byte Folded Spill
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	j	.LBB16_32
.LBB16_31:                              #   in Loop: Header=BB16_32 Depth=2
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	ld	s2, 104(sp)                     # 8-byte Folded Reload
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	bge	a0, a1, .LBB16_28
.LBB16_32:                              #   Parent Loop BB16_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_35 Depth 3
	li	s7, 0
	li	s3, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	addw	s8, a2, a0
	addiw	a0, s8, 4
	sd	a0, 288(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 8
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 12
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	sd	a3, 160(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s9, 224(sp)                     # 8-byte Folded Reload
	add	s9, s9, a0
	andi	a0, a0, 32
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	li	s11, 6
	j	.LBB16_35
.LBB16_33:                              #   in Loop: Header=BB16_35 Depth=3
	andi	a0, s7, 4
	sltiu	a1, s3, 8
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
.LBB16_34:                              #   in Loop: Header=BB16_35 Depth=3
	addi	s3, s3, 4
	addiw	s7, s7, 4
	addi	s11, s11, 8
	addiw	s2, s2, 16
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	bge	s7, a0, .LBB16_31
.LBB16_35:                              #   Parent Loop BB16_26 Depth=1
                                        #     Parent Loop BB16_32 Depth=2
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
	ld	a1, 288(sp)                     # 8-byte Folded Reload
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
	ld	a1, 272(sp)                     # 8-byte Folded Reload
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
	bnez	a0, .LBB16_33
# %bb.36:                               #   in Loop: Header=BB16_35 Depth=3
	addi	a0, sp, 312
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	call	SATD
	addw	s1, a0, s1
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	bge	a0, s1, .LBB16_34
.LBB16_37:                              #   in Loop: Header=BB16_26 Depth=1
	sext.w	a0, s1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB16_39
# %bb.38:                               #   in Loop: Header=BB16_26 Depth=1
	ld	n6, 144(sp)                     # 8-byte Folded Reload
	ld	t5, 152(sp)                     # 8-byte Folded Reload
	ld	t3, 136(sp)                     # 8-byte Folded Reload
	sd	t3, 152(sp)                     # 8-byte Folded Spill
	mv	t1, s1
	ld	a7, 216(sp)                     # 8-byte Folded Reload
	ld	a6, 208(sp)                     # 8-byte Folded Reload
	ld	n2, 200(sp)                     # 8-byte Folded Reload
	ld	n3, 192(sp)                     # 8-byte Folded Reload
	ld	t2, 184(sp)                     # 8-byte Folded Reload
	lui	a5, %hi(search_point_hp_y)
	addi	a5, a5, %lo(search_point_hp_y)
	lui	t0, %hi(search_point_hp_x)
	addi	t0, t0, %lo(search_point_hp_x)
	ld	n5, 80(sp)                      # 8-byte Folded Reload
	ld	t4, 72(sp)                      # 8-byte Folded Reload
	ld	t6, 64(sp)                      # 8-byte Folded Reload
	lui	n1, %hi(mvbits)
	li	n4, 5
	j	.LBB16_25
.LBB16_39:                              #   in Loop: Header=BB16_26 Depth=1
	lw	a2, 112(sp)                     # 8-byte Folded Reload
	ld	t3, 136(sp)                     # 8-byte Folded Reload
	mv	a1, t3
	ld	a7, 216(sp)                     # 8-byte Folded Reload
	ld	a6, 208(sp)                     # 8-byte Folded Reload
	ld	n2, 200(sp)                     # 8-byte Folded Reload
	ld	n3, 192(sp)                     # 8-byte Folded Reload
	ld	t2, 184(sp)                     # 8-byte Folded Reload
	ld	t1, 144(sp)                     # 8-byte Folded Reload
	lui	a5, %hi(search_point_hp_y)
	addi	a5, a5, %lo(search_point_hp_y)
	lui	t0, %hi(search_point_hp_x)
	addi	t0, t0, %lo(search_point_hp_x)
	ld	n5, 80(sp)                      # 8-byte Folded Reload
	ld	t4, 72(sp)                      # 8-byte Folded Reload
	ld	t6, 64(sp)                      # 8-byte Folded Reload
	lui	n1, %hi(mvbits)
	li	n4, 5
	blt	a0, a2, .LBB16_24
# %bb.40:                               #   in Loop: Header=BB16_26 Depth=1
	mv	a0, a2
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	j	.LBB16_24
.LBB16_41:
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	sext.w	a0, a3
	beqz	a0, .LBB16_52
# %bb.42:
	sext.w	a1, t5
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	beqz	a1, .LBB16_55
# %bb.43:
	xor	a0, a3, t5
	addiw	a0, a0, -1
	li	a1, 7
	li	t3, 5
	bgeu	a0, a1, .LBB16_66
# %bb.44:
	li	a1, 85
	srl	a1, a1, a0
	andi	a1, a1, 1
	beqz	a1, .LBB16_66
# %bb.45:
	slli	a0, a0, 2
	lui	a1, %hi(.Lswitch.table.EPZSSubPelBlockMotionSearch.20)
	addi	a1, a1, %lo(.Lswitch.table.EPZSSubPelBlockMotionSearch.20)
	add	a1, a1, a0
	lw	t3, 0(a1)
	lui	a1, %hi(.Lswitch.table.EPZSSubPelBlockMotionSearch.21)
	addi	a1, a1, %lo(.Lswitch.table.EPZSSubPelBlockMotionSearch.21)
	add	a0, a1, a0
	lw	a4, 0(a0)
	j	.LBB16_67
.LBB16_46:
	li	a0, 1
	li	n5, 0
	ld	t0, 56(sp)                      # 8-byte Folded Reload
	bne	t0, a0, .LBB16_4
# %bb.47:
	bnez	a1, .LBB16_4
# %bb.48:
	lw	a0, 24(t6)
	li	t0, 1
	beq	a0, t0, .LBB16_4
# %bb.49:
	lhu	a0, 0(n3)
	bnez	a0, .LBB16_3
# %bb.50:
	lhu	a0, 0(n2)
	bnez	a0, .LBB16_3
# %bb.51:
	lw	a0, 24(a5)
	snez	n5, a0
	j	.LBB16_4
.LBB16_52:
	lh	a1, 0(n3)
	ld	a4, 48(sp)                      # 8-byte Folded Reload
	bne	a1, a6, .LBB16_55
# %bb.53:
	lh	a1, 0(n2)
	bne	a1, a7, .LBB16_55
# %bb.54:
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 2
	lui	a2, %hi(subthres)
	addi	a2, a2, %lo(subthres)
	add	a1, a2, a1
	lw	a1, 0(a1)
	sext.w	a2, t1
	blt	a2, a1, .LBB16_150
.LBB16_55:
	addw	a1, a3, t5
	li	a2, 7
	bltu	a2, a1, .LBB16_59
# %bb.56:
	slli	a1, a1, 2
	lui	a2, %hi(.LJTI16_0)
	addi	a2, a2, %lo(.LJTI16_0)
	add	a1, a1, a2
	lw	a1, 0(a1)
	jr	a1
.LBB16_57:
	beqz	a0, .LBB16_64
# %bb.58:
	lhu	a0, 0(n3)
	j	.LBB16_84
.LBB16_59:
	li	t3, 5
	bnez	a0, .LBB16_66
	j	.LBB16_65
.LBB16_60:
	li	t3, 5
	li	a4, 7
	bnez	a0, .LBB16_67
	j	.LBB16_65
.LBB16_61:
	li	t3, 8
	li	a4, 10
	bnez	a0, .LBB16_67
	j	.LBB16_65
.LBB16_62:
	li	t3, 6
	li	a4, 8
	bnez	a0, .LBB16_67
	j	.LBB16_65
.LBB16_63:
	li	t3, 7
	li	a4, 9
	bnez	a0, .LBB16_67
	j	.LBB16_65
.LBB16_64:
	li	a4, 5
	li	t3, 5
.LBB16_65:
	lh	a0, 0(n3)
	sub	a1, a6, a0
	lh	a2, 0(n2)
	sraiw	a3, a1, 31
	xor	a1, a1, a3
	subw	a1, a1, a3
	sub	a2, a7, a2
	sraiw	a3, a2, 31
	xor	a2, a2, a3
	subw	a2, a2, a3
	or	a1, a2, a1
	beqz	a1, .LBB16_151
.LBB16_66:
	bge	t3, a4, .LBB16_83
.LBB16_67:
	sext.w	t4, a4
	lui	t5, %hi(mvbits)
	lui	s0, %hi(get_line)
	sd	t4, 104(sp)                     # 8-byte Folded Spill
	j	.LBB16_70
.LBB16_68:                              #   in Loop: Header=BB16_70 Depth=1
	sd	a0, 152(sp)                     # 8-byte Folded Spill
	mv	t1, s1
	ld	a7, 216(sp)                     # 8-byte Folded Reload
	ld	a6, 208(sp)                     # 8-byte Folded Reload
	ld	n2, 200(sp)                     # 8-byte Folded Reload
	ld	n3, 192(sp)                     # 8-byte Folded Reload
	ld	t2, 184(sp)                     # 8-byte Folded Reload
	lui	a5, %hi(search_point_hp_y)
	addi	a5, a5, %lo(search_point_hp_y)
	lui	t0, %hi(search_point_hp_x)
	addi	t0, t0, %lo(search_point_hp_x)
	ld	t4, 104(sp)                     # 8-byte Folded Reload
	lui	t5, %hi(mvbits)
.LBB16_69:                              #   in Loop: Header=BB16_70 Depth=1
	addi	t3, t3, 1
	beq	t3, t4, .LBB16_83
.LBB16_70:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_76 Depth 2
                                        #       Child Loop BB16_79 Depth 3
	lh	a0, 0(n3)
	slli	a1, t3, 2
	add	a2, t0, a1
	lw	a2, 0(a2)
	lh	a3, 0(n2)
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
	sext.w	a2, t1
	bge	s1, a2, .LBB16_69
# %bb.71:                               #   in Loop: Header=BB16_70 Depth=1
	sd	a2, 256(sp)                     # 8-byte Folded Spill
	sd	t3, 144(sp)                     # 8-byte Folded Spill
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB16_74
.LBB16_72:                              #   in Loop: Header=BB16_70 Depth=1
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB16_81
# %bb.73:                               #   in Loop: Header=BB16_70 Depth=1
	addi	a0, sp, 376
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s1, a0, s1
	j	.LBB16_81
.LBB16_74:                              # %.preheader7
                                        #   in Loop: Header=BB16_70 Depth=1
	li	a3, 0
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	addw	s2, a0, a2
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	add	a2, a1, a0
	sd	s2, 136(sp)                     # 8-byte Folded Spill
	sd	a2, 112(sp)                     # 8-byte Folded Spill
	j	.LBB16_76
.LBB16_75:                              #   in Loop: Header=BB16_76 Depth=2
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	ld	s2, 136(sp)                     # 8-byte Folded Reload
	ld	a2, 112(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB16_72
.LBB16_76:                              #   Parent Loop BB16_70 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_79 Depth 3
	li	s7, 0
	li	s3, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	addw	s8, a2, a0
	addiw	a0, s8, 4
	sd	a0, 288(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 8
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	addiw	a0, s8, 12
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	sd	a3, 160(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s9, 224(sp)                     # 8-byte Folded Reload
	add	s9, s9, a0
	andi	a0, a0, 32
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	li	s11, 6
	j	.LBB16_79
.LBB16_77:                              #   in Loop: Header=BB16_79 Depth=3
	andi	a0, s7, 4
	sltiu	a1, s3, 8
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
.LBB16_78:                              #   in Loop: Header=BB16_79 Depth=3
	addi	s3, s3, 4
	addiw	s7, s7, 4
	addi	s11, s11, 8
	addiw	s2, s2, 16
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	bge	s7, a0, .LBB16_75
.LBB16_79:                              #   Parent Loop BB16_70 Depth=1
                                        #     Parent Loop BB16_76 Depth=2
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
	ld	a1, 288(sp)                     # 8-byte Folded Reload
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
	ld	a1, 272(sp)                     # 8-byte Folded Reload
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
	bnez	a0, .LBB16_77
# %bb.80:                               #   in Loop: Header=BB16_79 Depth=3
	addi	a0, sp, 312
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	call	SATD
	addw	s1, a0, s1
	ld	a0, 256(sp)                     # 8-byte Folded Reload
	bge	a0, s1, .LBB16_78
.LBB16_81:                              #   in Loop: Header=BB16_70 Depth=1
	ld	t3, 144(sp)                     # 8-byte Folded Reload
	mv	a0, t3
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	blt	s1, a1, .LBB16_68
# %bb.82:                               #   in Loop: Header=BB16_70 Depth=1
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	mv	s1, a1
	j	.LBB16_68
.LBB16_83:
	lhu	a0, 0(n3)
	ld	a3, 152(sp)                     # 8-byte Folded Reload
	sext.w	a1, a3
	beqz	a1, .LBB16_85
.LBB16_84:
	sext.w	a1, a3
	slli	a1, a1, 2
	add	a2, t0, a1
	lh	a2, 0(a2)
	add	a0, a0, a2
	sh	a0, 0(n3)
	add	a1, a5, a1
	lh	a0, 0(a1)
	lh	a1, 0(n2)
	add	a0, a1, a0
	sh	a0, 0(n2)
	lhu	a0, 0(n3)
.LBB16_85:
	lui	a1, %hi(input)
	ld	a2, %lo(input)(a1)
	lw	a1, 24(a2)
	li	a3, 2
	bne	a1, a3, .LBB16_87
# %bb.86:
	lui	a3, 524288
	addi	t1, a3, -1
.LBB16_87:
	addi	a2, a2, 2047
	lw	a2, 1845(a2)
	snez	a2, a2
	snez	a3, a1
	slli	a0, a0, 48
	srai	a0, a0, 48
	ld	a1, 128(sp)                     # 8-byte Folded Reload
	addw	a1, a1, a0
	and	a0, a2, a3
	blez	a1, .LBB16_92
# %bb.88:
	ld	a2, 24(sp)                      # 8-byte Folded Reload
	bge	a1, a2, .LBB16_92
# %bb.89:
	lh	a1, 0(n2)
	ld	a2, 120(sp)                     # 8-byte Folded Reload
	addw	a1, a2, a1
	blez	a1, .LBB16_92
# %bb.90:
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	bge	a1, a2, .LBB16_92
# %bb.91:
	lui	a1, %hi(FastLine4X)
	addi	a1, a1, %lo(FastLine4X)
	j	.LBB16_93
.LBB16_92:
	lui	a1, %hi(UMVLine4X)
	addi	a1, a1, %lo(UMVLine4X)
.LBB16_93:
	ld	a2, 40(sp)                      # 8-byte Folded Reload
	li	t3, 0
	sd	zero, 136(sp)                   # 8-byte Folded Spill
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	and	a0, a0, a3
	sd	a0, 296(sp)                     # 8-byte Folded Spill
	snez	t4, a2
	lui	s0, %hi(get_line)
	sd	a1, %lo(get_line)(s0)
	lui	a0, 524288
	addiw	t6, a0, -1
	lui	t0, %hi(search_point_qp_x)
	addi	t0, t0, %lo(search_point_qp_x)
	lui	a5, %hi(search_point_qp_y)
	addi	a5, a5, %lo(search_point_qp_y)
	lui	t5, %hi(mvbits)
	li	n1, 5
	j	.LBB16_96
.LBB16_94:                              #   in Loop: Header=BB16_96 Depth=1
	mv	t6, s1
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	mv	t3, a0
.LBB16_95:                              #   in Loop: Header=BB16_96 Depth=1
	addi	t4, t4, 1
	beq	t4, n1, .LBB16_111
.LBB16_96:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_102 Depth 2
                                        #       Child Loop BB16_105 Depth 3
	lh	a0, 0(n3)
	slli	a1, t4, 2
	add	a2, t0, a1
	lw	a2, 0(a2)
	lh	a3, 0(n2)
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
	sext.w	a2, t1
	bge	s1, a2, .LBB16_95
# %bb.97:                               #   in Loop: Header=BB16_96 Depth=1
	sd	a2, 264(sp)                     # 8-byte Folded Spill
	sd	t6, 144(sp)                     # 8-byte Folded Spill
	sd	t4, 152(sp)                     # 8-byte Folded Spill
	sd	t3, 240(sp)                     # 8-byte Folded Spill
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB16_100
.LBB16_98:                              #   in Loop: Header=BB16_96 Depth=1
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB16_107
# %bb.99:                               #   in Loop: Header=BB16_96 Depth=1
	addi	a0, sp, 376
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s1, a0, s1
	j	.LBB16_107
.LBB16_100:                             # %.preheader4
                                        #   in Loop: Header=BB16_96 Depth=1
	li	a3, 0
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	addw	s11, a0, a2
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	add	a2, a1, a0
	sd	s11, 112(sp)                    # 8-byte Folded Spill
	sd	a2, 104(sp)                     # 8-byte Folded Spill
	j	.LBB16_102
.LBB16_101:                             #   in Loop: Header=BB16_102 Depth=2
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	ld	s11, 112(sp)                    # 8-byte Folded Reload
	ld	a2, 104(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB16_98
.LBB16_102:                             #   Parent Loop BB16_96 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_105 Depth 3
	li	s2, 0
	li	s3, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	addw	s7, a2, a0
	addiw	a0, s7, 4
	sd	a0, 288(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 8
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 12
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	sd	a3, 160(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s8, 224(sp)                     # 8-byte Folded Reload
	add	s8, s8, a0
	andi	a0, a0, 32
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	li	s10, 6
	j	.LBB16_105
.LBB16_103:                             #   in Loop: Header=BB16_105 Depth=3
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
.LBB16_104:                             #   in Loop: Header=BB16_105 Depth=3
	addi	s3, s3, 4
	addiw	s2, s2, 4
	addi	s10, s10, 8
	addiw	s11, s11, 16
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	bge	s2, a0, .LBB16_101
.LBB16_105:                             #   Parent Loop BB16_96 Depth=1
                                        #     Parent Loop BB16_102 Depth=2
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
	ld	a1, 288(sp)                     # 8-byte Folded Reload
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
	ld	a1, 272(sp)                     # 8-byte Folded Reload
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
	bnez	a0, .LBB16_103
# %bb.106:                              #   in Loop: Header=BB16_105 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 312
	call	SATD
	addw	s1, a0, s1
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	bge	a0, s1, .LBB16_104
.LBB16_107:                             #   in Loop: Header=BB16_96 Depth=1
	ld	t4, 152(sp)                     # 8-byte Folded Reload
	mv	a0, t4
	mv	t1, s1
	lui	t5, %hi(mvbits)
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	blt	s1, a1, .LBB16_109
# %bb.108:                              #   in Loop: Header=BB16_96 Depth=1
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	mv	t1, a1
.LBB16_109:                             #   in Loop: Header=BB16_96 Depth=1
	mv	a1, t4
	ld	a7, 216(sp)                     # 8-byte Folded Reload
	ld	a6, 208(sp)                     # 8-byte Folded Reload
	ld	n2, 200(sp)                     # 8-byte Folded Reload
	ld	n3, 192(sp)                     # 8-byte Folded Reload
	ld	t2, 184(sp)                     # 8-byte Folded Reload
	lui	a5, %hi(search_point_qp_y)
	addi	a5, a5, %lo(search_point_qp_y)
	lui	t0, %hi(search_point_qp_x)
	addi	t0, t0, %lo(search_point_qp_x)
	ld	a2, 144(sp)                     # 8-byte Folded Reload
	li	n1, 5
	blt	s1, a2, .LBB16_94
# %bb.110:                              #   in Loop: Header=BB16_96 Depth=1
	mv	s1, a2
	ld	a1, 136(sp)                     # 8-byte Folded Reload
	j	.LBB16_94
.LBB16_111:
	sext.w	a0, t3
	beqz	a0, .LBB16_116
# %bb.112:
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	sext.w	a1, a3
	beqz	a1, .LBB16_119
# %bb.113:
	xor	a0, t3, a3
	addiw	a0, a0, -1
	li	a1, 7
	li	t4, 5
	bgeu	a0, a1, .LBB16_126
# %bb.114:
	li	a1, 85
	srl	a1, a1, a0
	andi	a1, a1, 1
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	beqz	a1, .LBB16_131
# %bb.115:
	slli	a0, a0, 2
	lui	a1, %hi(.Lswitch.table.EPZSSubPelBlockMotionSearch.20)
	addi	a1, a1, %lo(.Lswitch.table.EPZSSubPelBlockMotionSearch.20)
	add	a1, a1, a0
	lw	t4, 0(a1)
	lui	a1, %hi(.Lswitch.table.EPZSSubPelBlockMotionSearch.21)
	addi	a1, a1, %lo(.Lswitch.table.EPZSSubPelBlockMotionSearch.21)
	add	a0, a1, a0
	lw	a2, 0(a0)
	j	.LBB16_132
.LBB16_116:
	lh	a1, 0(n3)
	ld	a3, 136(sp)                     # 8-byte Folded Reload
	bne	a1, a6, .LBB16_119
# %bb.117:
	lh	a1, 0(n2)
	bne	a1, a7, .LBB16_119
# %bb.118:
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 2
	lui	a2, %hi(subthres)
	addi	a2, a2, %lo(subthres)
	add	a1, a2, a1
	lw	a1, 0(a1)
	sext.w	a2, t1
	blt	a2, a1, .LBB16_150
.LBB16_119:
	addw	a1, t3, a3
	li	a2, 4
	blt	a2, a1, .LBB16_123
# %bb.120:
	li	a2, 1
	beq	a1, a2, .LBB16_128
# %bb.121:
	li	a2, 2
	bne	a1, a2, .LBB16_127
# %bb.122:
	li	t4, 5
	li	a2, 7
	bnez	a0, .LBB16_132
	j	.LBB16_130
.LBB16_123:
	li	a2, 5
	beq	a1, a2, .LBB16_129
# %bb.124:
	li	t4, 7
	bne	a1, t4, .LBB16_127
# %bb.125:
	li	a2, 9
	bnez	a0, .LBB16_132
	j	.LBB16_130
.LBB16_126:
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	blt	t4, a2, .LBB16_132
	j	.LBB16_148
.LBB16_127:
	li	t4, 5
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB16_131
	j	.LBB16_130
.LBB16_128:
	li	t4, 8
	li	a2, 10
	bnez	a0, .LBB16_132
	j	.LBB16_130
.LBB16_129:
	li	t4, 6
	li	a2, 8
	bnez	a0, .LBB16_132
.LBB16_130:
	lh	a0, 0(n3)
	sub	a0, a6, a0
	lh	a1, 0(n2)
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
	beqz	a0, .LBB16_150
.LBB16_131:
	bge	t4, a2, .LBB16_148
.LBB16_132:
	sext.w	t5, a2
	lui	t6, %hi(mvbits)
	lui	s0, %hi(get_line)
	sd	t5, 112(sp)                     # 8-byte Folded Spill
	j	.LBB16_135
.LBB16_133:                             #   in Loop: Header=BB16_135 Depth=1
	mv	t3, a0
	mv	t1, s1
	ld	a7, 216(sp)                     # 8-byte Folded Reload
	ld	a6, 208(sp)                     # 8-byte Folded Reload
	ld	n2, 200(sp)                     # 8-byte Folded Reload
	ld	n3, 192(sp)                     # 8-byte Folded Reload
	ld	t2, 184(sp)                     # 8-byte Folded Reload
	lui	a5, %hi(search_point_qp_y)
	addi	a5, a5, %lo(search_point_qp_y)
	lui	t0, %hi(search_point_qp_x)
	addi	t0, t0, %lo(search_point_qp_x)
	ld	t5, 112(sp)                     # 8-byte Folded Reload
	lui	t6, %hi(mvbits)
.LBB16_134:                             #   in Loop: Header=BB16_135 Depth=1
	addi	t4, t4, 1
	beq	t4, t5, .LBB16_148
.LBB16_135:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_141 Depth 2
                                        #       Child Loop BB16_144 Depth 3
	lh	a0, 0(n3)
	slli	a1, t4, 2
	add	a2, t0, a1
	lw	a2, 0(a2)
	lh	a3, 0(n2)
	add	a1, a5, a1
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
	sraiw	s1, a2, 16
	sext.w	a2, t1
	bge	s1, a2, .LBB16_134
# %bb.136:                              #   in Loop: Header=BB16_135 Depth=1
	sd	a2, 264(sp)                     # 8-byte Folded Spill
	sd	t4, 152(sp)                     # 8-byte Folded Spill
	sd	t3, 240(sp)                     # 8-byte Folded Spill
	ld	a2, 176(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB16_139
.LBB16_137:                             #   in Loop: Header=BB16_135 Depth=1
	ld	a0, 296(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB16_146
# %bb.138:                              #   in Loop: Header=BB16_135 Depth=1
	addi	a0, sp, 376
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	call	find_SATD
	addw	s1, a0, s1
	j	.LBB16_146
.LBB16_139:                             # %.preheader
                                        #   in Loop: Header=BB16_135 Depth=1
	li	a3, 0
	ld	a2, 128(sp)                     # 8-byte Folded Reload
	addw	s11, a0, a2
	ld	a0, 120(sp)                     # 8-byte Folded Reload
	add	a2, a1, a0
	sd	s11, 144(sp)                    # 8-byte Folded Spill
	sd	a2, 136(sp)                     # 8-byte Folded Spill
	j	.LBB16_141
.LBB16_140:                             #   in Loop: Header=BB16_141 Depth=2
	ld	a1, 160(sp)                     # 8-byte Folded Reload
	addiw	a0, a1, 4
	addi	a3, a1, 4
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	ld	s11, 144(sp)                    # 8-byte Folded Reload
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB16_137
.LBB16_141:                             #   Parent Loop BB16_135 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_144 Depth 3
	li	s2, 0
	li	s3, 0
	sltiu	a0, a3, 8
	addi	a0, a0, -1
	ld	a1, 232(sp)                     # 8-byte Folded Reload
	and	a0, a0, a1
	sd	a0, 256(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 2
	addw	s7, a2, a0
	addiw	a0, s7, 4
	sd	a0, 288(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 8
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	addiw	a0, s7, 12
	sd	a0, 272(sp)                     # 8-byte Folded Spill
	sd	a3, 160(sp)                     # 8-byte Folded Spill
	slli	a0, a3, 3
	ld	s8, 224(sp)                     # 8-byte Folded Reload
	add	s8, s8, a0
	andi	a0, a0, 32
	sd	a0, 248(sp)                     # 8-byte Folded Spill
	li	s10, 6
	j	.LBB16_144
.LBB16_142:                             #   in Loop: Header=BB16_144 Depth=3
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
.LBB16_143:                             #   in Loop: Header=BB16_144 Depth=3
	addi	s3, s3, 4
	addiw	s2, s2, 4
	addi	s10, s10, 8
	addiw	s11, s11, 16
	ld	a0, 304(sp)                     # 8-byte Folded Reload
	bge	s2, a0, .LBB16_140
.LBB16_144:                             #   Parent Loop BB16_135 Depth=1
                                        #     Parent Loop BB16_141 Depth=2
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
	ld	a1, 288(sp)                     # 8-byte Folded Reload
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
	ld	a1, 272(sp)                     # 8-byte Folded Reload
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
	bnez	a0, .LBB16_142
# %bb.145:                              #   in Loop: Header=BB16_144 Depth=3
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 24(a0)
	addi	a0, sp, 312
	call	SATD
	addw	s1, a0, s1
	ld	a0, 264(sp)                     # 8-byte Folded Reload
	bge	a0, s1, .LBB16_143
.LBB16_146:                             #   in Loop: Header=BB16_135 Depth=1
	ld	t4, 152(sp)                     # 8-byte Folded Reload
	mv	a0, t4
	ld	a1, 264(sp)                     # 8-byte Folded Reload
	blt	s1, a1, .LBB16_133
# %bb.147:                              #   in Loop: Header=BB16_135 Depth=1
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	mv	s1, a1
	j	.LBB16_133
.LBB16_148:
	sext.w	a0, t3
	beqz	a0, .LBB16_150
# %bb.149:
	slli	a0, a0, 2
	add	a1, t0, a0
	lh	a1, 0(a1)
	lh	a2, 0(n3)
	add	a1, a2, a1
	sh	a1, 0(n3)
	add	a0, a5, a0
	lh	a0, 0(a0)
	lh	a1, 0(n2)
	add	a0, a1, a0
	sh	a0, 0(n2)
.LBB16_150:
	sext.w	a0, t1
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
.LBB16_151:
	slli	a0, a0, 48
	srli	a0, a0, 48
	j	.LBB16_85
.Lfunc_end16:
	.size	EPZSSubPelBlockMotionSearch, .Lfunc_end16-EPZSSubPelBlockMotionSearch
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI16_0:
	.word	.LBB16_57
	.word	.LBB16_61
	.word	.LBB16_60
	.word	.LBB16_59
	.word	.LBB16_59
	.word	.LBB16_62
	.word	.LBB16_59
	.word	.LBB16_63
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

	.type	.Lswitch.table.EPZSInit.18,@object # @switch.table.EPZSInit.18
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lswitch.table.EPZSInit.18:
	.quad	square
	.quad	ediamond
	.quad	ldiamond
	.size	.Lswitch.table.EPZSInit.18, 24

	.type	.Lswitch.table.EPZSSubPelBlockMotionSearch.20,@object # @switch.table.EPZSSubPelBlockMotionSearch.20
	.p2align	2, 0x0
.Lswitch.table.EPZSSubPelBlockMotionSearch.20:
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	6                               # 0x6
	.word	7                               # 0x7
	.size	.Lswitch.table.EPZSSubPelBlockMotionSearch.20, 28

	.type	.Lswitch.table.EPZSSubPelBlockMotionSearch.21,@object # @switch.table.EPZSSubPelBlockMotionSearch.21
	.p2align	2, 0x0
.Lswitch.table.EPZSSubPelBlockMotionSearch.21:
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	9                               # 0x9
	.word	7                               # 0x7
	.word	8                               # 0x8
	.size	.Lswitch.table.EPZSSubPelBlockMotionSearch.21, 28

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
