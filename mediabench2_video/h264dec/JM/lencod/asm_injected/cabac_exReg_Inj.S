	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"cabac.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	cabac_new_slice                 # -- Begin function cabac_new_slice
	.p2align	2
	.type	cabac_new_slice,@function
cabac_new_slice:                        # @cabac_new_slice
# %bb.0:
	lui	a0, %hi(last_dquant)
	sw	zero, %lo(last_dquant)(a0)
	ret
.Lfunc_end0:
	.size	cabac_new_slice, .Lfunc_end0-cabac_new_slice
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CheckAvailabilityOfNeighborsCABAC # -- Begin function CheckAvailabilityOfNeighborsCABAC
	.p2align	2
	.type	CheckAvailabilityOfNeighborsCABAC,@function
CheckAvailabilityOfNeighborsCABAC:      # @CheckAvailabilityOfNeighborsCABAC
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 56(sp)                      # 8-byte Folded Spill
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lui	s2, 8
	add	a1, a0, s2
	lw	a0, 12(a0)
	ld	s0, -1192(a1)
	li	s3, 528
	mul	a1, a0, s3
	add	s0, s0, a1
	li	a1, -1
	li	a3, 1
	addi	a4, sp, 8
	li	a2, 0
	call	getNeighbour
	ld	a0, %lo(img)(s1)
	lw	a0, 12(a0)
	li	a2, -1
	li	a3, 1
	addi	a4, sp, 32
	li	a1, 0
	call	getNeighbour
	lw	a0, 32(sp)
	beqz	a0, .LBB1_2
# %bb.1:
	ld	a0, %lo(img)(s1)
	add	a0, a0, s2
	lw	a1, 36(sp)
	ld	a0, -1192(a0)
	mul	a1, a1, s3
	add	a0, a0, a1
.LBB1_2:
	sd	a0, 56(s0)
	lw	a0, 8(sp)
	beqz	a0, .LBB1_4
# %bb.3:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 8
	add	a0, a0, a1
	lw	a1, 12(sp)
	ld	a0, -1192(a0)
	li	a2, 528
	mul	a1, a1, a2
	add	a0, a0, a1
.LBB1_4:
	sd	a0, 64(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end1:
	.size	CheckAvailabilityOfNeighborsCABAC, .Lfunc_end1-CheckAvailabilityOfNeighborsCABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	create_contexts_MotionInfo      # -- Begin function create_contexts_MotionInfo
	.p2align	2
	.type	create_contexts_MotionInfo,@function
create_contexts_MotionInfo:             # @create_contexts_MotionInfo
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	li	a0, 1
	li	a1, 1504
	call	calloc
	beqz	a0, .LBB2_2
# %bb.1:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB2_2:
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	s0, a0
	mv	a0, a1
	call	no_mem_exit
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	create_contexts_MotionInfo, .Lfunc_end2-create_contexts_MotionInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	create_contexts_TextureInfo     # -- Begin function create_contexts_TextureInfo
	.p2align	2
	.type	create_contexts_TextureInfo,@function
create_contexts_TextureInfo:            # @create_contexts_TextureInfo
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, 3
	addiw	a1, a0, -160
	li	a0, 1
	call	calloc
	beqz	a0, .LBB3_2
# %bb.1:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB3_2:
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	mv	s0, a0
	mv	a0, a1
	call	no_mem_exit
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	create_contexts_TextureInfo, .Lfunc_end3-create_contexts_TextureInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	delete_contexts_MotionInfo      # -- Begin function delete_contexts_MotionInfo
	.p2align	2
	.type	delete_contexts_MotionInfo,@function
delete_contexts_MotionInfo:             # @delete_contexts_MotionInfo
# %bb.0:
	beqz	a0, .LBB4_2
# %bb.1:
	tail	free
.LBB4_2:
	ret
.Lfunc_end4:
	.size	delete_contexts_MotionInfo, .Lfunc_end4-delete_contexts_MotionInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	delete_contexts_TextureInfo     # -- Begin function delete_contexts_TextureInfo
	.p2align	2
	.type	delete_contexts_TextureInfo,@function
delete_contexts_TextureInfo:            # @delete_contexts_TextureInfo
# %bb.0:
	beqz	a0, .LBB5_2
# %bb.1:
	tail	free
.LBB5_2:
	ret
.Lfunc_end5:
	.size	delete_contexts_TextureInfo, .Lfunc_end5-delete_contexts_TextureInfo
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeSyntaxElement_CABAC        # -- Begin function writeSyntaxElement_CABAC
	.p2align	2
	.type	writeSyntaxElement_CABAC,@function
writeSyntaxElement_CABAC:               # @writeSyntaxElement_CABAC
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s2, a1
	mv	s0, a0
	addi	s1, a1, 8
	mv	a0, s1
	call	arienco_bits_written
	ld	a2, 40(s0)
	mv	s3, a0
	mv	a0, s0
	mv	a1, s1
	jalr	a2
	lw	a0, 0(s0)
	beqz	a0, .LBB6_2
# %bb.1:
	ld	a0, 0(s2)
	li	a1, 1
	sw	a1, 40(a0)
.LBB6_2:
	mv	a0, s1
	call	arienco_bits_written
	subw	a0, a0, s3
	sw	a0, 12(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end6:
	.size	writeSyntaxElement_CABAC, .Lfunc_end6-writeSyntaxElement_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeFieldModeInfo_CABAC        # -- Begin function writeFieldModeInfo_CABAC
	.p2align	2
	.type	writeFieldModeInfo_CABAC,@function
writeFieldModeInfo_CABAC:               # @writeFieldModeInfo_CABAC
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 8
	addiw	a3, a3, -1200
	add	a3, a2, a3
	lw	a4, 12(a2)
	ld	a2, 8(a3)
	li	a6, 528
	mul	a4, a4, a6
	add	a4, a2, a4
	lw	a7, 448(a4)
	ld	a5, 0(a3)
	mv	a3, a1
	mv	s0, a0
	beqz	a7, .LBB7_3
# %bb.1:
	lw	a0, 432(a4)
	mul	a0, a0, a6
	add	a0, a2, a0
	lw	a0, 424(a0)
	ld	a5, 32(a5)
	lw	a6, 452(a4)
	lw	a1, 4(s0)
	beqz	a6, .LBB7_4
.LBB7_2:
	lw	a4, 436(a4)
	li	a6, 528
	mul	a4, a4, a6
	add	a2, a2, a4
	lw	a2, 424(a2)
	j	.LBB7_5
.LBB7_3:
	li	a0, 0
	ld	a5, 32(a5)
	lw	a6, 452(a4)
	lw	a1, 4(s0)
	bnez	a6, .LBB7_2
.LBB7_4:
	li	a2, 0
.LBB7_5:
	addw	s1, a2, a0
	snez	a1, a1
	slli	a0, s1, 4
	add	a0, a5, a0
	addi	a2, a0, 1392
	mv	a0, a3
	call	biari_encode_symbol
	sw	s1, 24(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end7:
	.size	writeFieldModeInfo_CABAC, .Lfunc_end7-writeFieldModeInfo_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeMB_skip_flagInfo_CABAC     # -- Begin function writeMB_skip_flagInfo_CABAC
	.p2align	2
	.type	writeMB_skip_flagInfo_CABAC,@function
writeMB_skip_flagInfo_CABAC:            # @writeMB_skip_flagInfo_CABAC
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	mv	s0, a0
	lui	a0, 8
	addiw	a0, a0, -1200
	add	a0, a2, a0
	ld	a3, 0(a0)
	lw	a5, 24(a2)
	lw	a4, 12(a2)
	ld	s2, 8(a0)
	ld	a2, 32(a3)
	li	a0, 528
	mul	a0, a4, a0
	add	s2, s2, a0
	lw	a3, 4(s0)
	ld	a4, 56(s2)
	li	a6, 1
	mv	a0, a1
	bne	a5, a6, .LBB8_4
# %bb.1:
	beqz	a4, .LBB8_8
# %bb.2:
	lw	a1, 520(a4)
	seqz	s3, a1
	ld	a1, 64(s2)
	beqz	a1, .LBB8_9
.LBB8_3:
	lw	a1, 520(a1)
	seqz	a1, a1
	addi	a1, a1, 7
	add	s3, a1, s3
	bnez	a3, .LBB8_11
	j	.LBB8_10
.LBB8_4:
	beqz	a4, .LBB8_14
# %bb.5:
	lw	a1, 520(a4)
	seqz	s3, a1
	ld	a1, 64(s2)
	beqz	a1, .LBB8_7
.LBB8_6:
	lw	a1, 520(a1)
	seqz	a1, a1
.LBB8_7:
	add	s3, a1, s3
	seqz	s1, a3
	slli	a1, s3, 4
	add	a1, a2, a1
	addi	a2, a1, 176
	mv	a1, s1
	call	biari_encode_symbol
	j	.LBB8_16
.LBB8_8:
	li	s3, 0
	ld	a1, 64(s2)
	bnez	a1, .LBB8_3
.LBB8_9:
	li	a1, 7
	add	s3, a1, s3
	bnez	a3, .LBB8_11
.LBB8_10:
	lw	a1, 8(s0)
	beqz	a1, .LBB8_17
.LBB8_11:
	li	a1, 0
.LBB8_12:
	slli	a3, s3, 4
	add	a2, a2, a3
	addi	a2, a2, 352
	call	biari_encode_symbol
	lw	a0, 4(s0)
	beqz	a0, .LBB8_15
# %bb.13:
	li	s1, 0
	j	.LBB8_16
.LBB8_14:
	li	s3, 0
	ld	a1, 64(s2)
	bnez	a1, .LBB8_6
	j	.LBB8_7
.LBB8_15:
	lw	a0, 8(s0)
	seqz	s1, a0
.LBB8_16:
	sw	s1, 520(s2)
	sw	s3, 24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB8_17:
	li	a1, 1
	j	.LBB8_12
.Lfunc_end8:
	.size	writeMB_skip_flagInfo_CABAC, .Lfunc_end8-writeMB_skip_flagInfo_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeMB_transform_size_CABAC    # -- Begin function writeMB_transform_size_CABAC
	.p2align	2
	.type	writeMB_transform_size_CABAC,@function
writeMB_transform_size_CABAC:           # @writeMB_transform_size_CABAC
# %bb.0:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 8
	addiw	a3, a3, -1200
	add	a3, a2, a3
	lw	a2, 12(a2)
	ld	a4, 8(a3)
	li	a5, 528
	mul	a2, a2, a5
	add	a2, a4, a2
	ld	a5, 56(a2)
	ld	a4, 0(a3)
	mv	a3, a1
	beqz	a5, .LBB9_4
# %bb.1:
	lw	a1, 468(a5)
	ld	a5, 64(a2)
	ld	a4, 32(a4)
	beqz	a5, .LBB9_3
.LBB9_2:
	lw	a5, 468(a5)
.LBB9_3:
	lw	a2, 468(a2)
	addw	a5, a5, a1
	snez	a1, a2
	slli	a2, a5, 4
	add	a2, a4, a2
	addi	a2, a2, 1456
	sw	a5, 24(a0)
	mv	a0, a3
	tail	biari_encode_symbol
.LBB9_4:
	li	a1, 0
	ld	a5, 64(a2)
	ld	a4, 32(a4)
	bnez	a5, .LBB9_2
	j	.LBB9_3
.Lfunc_end9:
	.size	writeMB_transform_size_CABAC, .Lfunc_end9-writeMB_transform_size_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeMB_typeInfo_CABAC          # -- Begin function writeMB_typeInfo_CABAC
	.p2align	2
	.type	writeMB_typeInfo_CABAC,@function
writeMB_typeInfo_CABAC:                 # @writeMB_typeInfo_CABAC
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a3, %lo(img)(a2)
	lui	a2, 8
	addiw	a2, a2, -1200
	add	a4, a3, a2
	ld	a5, 0(a4)
	mv	s0, a1
	lw	a2, 24(a3)
	ld	s2, 32(a5)
	lw	a1, 12(a3)
	ld	a3, 8(a4)
	li	a4, 528
	lw	s3, 4(a0)
	mul	a1, a1, a4
	li	a4, 1
	add	a1, a3, a1
	beq	a2, a4, .LBB10_10
# %bb.1:
	li	a3, 2
	bne	a2, a3, .LBB10_19
# %bb.2:
	ld	a2, 56(a1)
	beqz	a2, .LBB10_4
# %bb.3:
	lw	a2, 72(a2)
	andi	a2, a2, -5
	addi	a2, a2, -9
	snez	a2, a2
.LBB10_4:
	ld	a1, 64(a1)
	beqz	a1, .LBB10_6
# %bb.5:
	lw	a1, 72(a1)
	andi	a1, a1, -5
	addi	a1, a1, -9
	snez	a1, a1
.LBB10_6:
	add	a1, a1, a2
	sw	a1, 24(a0)
	slli	a1, a1, 4
	li	a0, 25
	add	a2, s2, a1
	beq	s3, a0, .LBB10_25
# %bb.7:
	beqz	s3, .LBB10_46
# %bb.8:
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol_final
	addiw	s3, s3, -1
	lui	a0, 174763
	addiw	a0, a0, -1365
	mul	a0, s3, a0
	srli	a1, a0, 63
	srai	a0, a0, 33
	add	s1, a0, a1
	addi	a2, s2, 64
	slli	a1, s1, 48
	srai	a1, a1, 48
	mv	a0, s0
	call	biari_encode_symbol
	li	a0, 12
	mul	a0, s1, a0
	subw	s1, s3, a0
	addiw	a0, s1, 3
	li	a1, 6
	addi	a2, s2, 80
	bltu	a1, a0, .LBB10_29
# %bb.9:
	mv	a0, s0
	li	a1, 0
	j	.LBB10_30
.LBB10_10:
	ld	a2, 56(a1)
	beqz	a2, .LBB10_12
# %bb.11:
	lw	a2, 72(a2)
	snez	a2, a2
.LBB10_12:
	ld	a1, 64(a1)
	beqz	a1, .LBB10_14
# %bb.13:
	lw	a1, 72(a1)
	snez	a1, a1
.LBB10_14:
	add	a1, a1, a2
	li	a2, 24
	sw	a1, 24(a0)
	mv	s1, s3
	blt	s3, a2, .LBB10_16
# %bb.15:
	li	s1, 24
.LBB10_16:
	beqz	s3, .LBB10_24
# %bb.17:
	li	a0, 2
	blt	a0, s3, .LBB10_27
# %bb.18:
	slli	a1, a1, 4
	add	a1, s2, a1
	addi	a2, a1, 352
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	a2, s2, 416
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
	addi	s3, s3, -1
	snez	a1, s3
	addi	a2, s2, 448
	j	.LBB10_36
.LBB10_19:
	li	a0, 7
	mv	a1, s3
	blt	s3, a0, .LBB10_21
# %bb.20:
	li	a1, 7
.LBB10_21:
	bltu	a0, a1, .LBB10_51
# %bb.22:
	slli	a1, a1, 2
	lui	a0, %hi(.LJTI10_0)
	addi	a0, a0, %lo(.LJTI10_0)
	add	a0, a1, a0
	lw	a0, 0(a0)
	jr	a0
.LBB10_23:
	addi	a2, s2, 240
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
	addi	a2, s2, 256
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
	addi	a2, s2, 272
	j	.LBB10_35
.LBB10_24:
	slli	a1, a1, 4
	add	a1, s2, a1
	addi	a2, a1, 352
	j	.LBB10_46
.LBB10_25:
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
.LBB10_26:
	li	a1, 1
	mv	a0, s0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	tail	biari_encode_symbol_final
.LBB10_27:
	li	a0, 10
	bltu	a0, s3, .LBB10_31
# %bb.28:
	slli	a1, a1, 4
	add	a1, s2, a1
	addi	a2, a1, 352
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	a2, s2, 416
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	a2, s2, 432
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
	addi	s3, s1, -3
	slli	a1, s3, 48
	srli	a1, a1, 50
	addi	s1, s2, 448
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	slli	a1, s3, 62
	srli	a1, a1, 63
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	andi	a1, s3, 1
	j	.LBB10_41
.LBB10_29:
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	andi	a0, s1, -4
	addi	a0, a0, -4
	snez	a1, a0
	addi	a2, s2, 96
	mv	a0, s0
.LBB10_30:
	call	biari_encode_symbol
	slli	a1, s1, 62
	srli	a1, a1, 63
	addi	a2, s2, 112
	mv	a0, s0
	call	biari_encode_symbol
	addi	a2, s2, 128
	andi	a1, s1, 1
	j	.LBB10_36
.LBB10_31:
	li	a0, 22
	beq	s1, a0, .LBB10_33
# %bb.32:
	li	a0, 11
	bne	s1, a0, .LBB10_48
.LBB10_33:
	slli	a1, a1, 4
	add	a1, s2, a1
	addi	a2, a1, 352
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	a2, s2, 416
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	a2, s2, 432
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	s1, s2, 448
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addi	s3, s3, -11
	snez	a1, s3
	j	.LBB10_41
.LBB10_34:
	addi	a2, s2, 240
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
	addi	a2, s2, 256
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	a2, s2, 288
.LBB10_35:
	li	a1, 1
.LBB10_36:
	mv	a0, s0
	j	.LBB10_47
.LBB10_37:
	slti	a0, s3, 7
	addiw	s3, s3, -7
	addi	a0, a0, -1
	and	s1, a0, s3
	addi	a2, s2, 240
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	a2, s2, 288
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	li	a0, 25
	beq	s1, a0, .LBB10_26
.LBB10_38:
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol_final
	sext.w	a0, s1
	lui	a1, 174763
	addiw	a1, a1, -1365
	mul	a0, a0, a1
	srli	a1, a0, 63
	srai	a0, a0, 33
	add	s3, a0, a1
	addi	a2, s2, 304
	slli	a1, s3, 48
	srai	a1, a1, 48
	mv	a0, s0
	call	biari_encode_symbol
	li	a1, 0
	li	a0, 12
	mul	a0, s3, a0
	subw	s3, s1, a0
	addiw	a0, s3, 3
	li	a2, 7
	addi	s1, s2, 320
	bltu	a0, a2, .LBB10_40
# %bb.39:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	andi	a0, s3, -4
	addi	a0, a0, -4
	snez	a1, a0
.LBB10_40:
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	slli	a0, s3, 56
	srai	a0, a0, 56
	slli	a0, a0, 49
	srli	a0, a0, 62
	add	a0, s3, a0
	andi	a0, a0, -4
	subw	s3, s3, a0
	slli	a0, s3, 56
	srli	a0, a0, 63
	add	s4, s3, a0
	slli	a1, s4, 56
	srai	a1, a1, 57
	addi	s1, s2, 336
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	andi	a0, s4, 254
	subw	a0, s3, a0
	slli	a0, a0, 56
	srai	a1, a0, 56
.LBB10_41:
	mv	a0, s0
	mv	a2, s1
	j	.LBB10_47
.LBB10_42:
	addi	a2, s2, 240
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
	addi	a2, s2, 256
	j	.LBB10_45
.LBB10_43:
	addi	a2, s2, 240
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
	addi	a2, s2, 256
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
	addi	a2, s2, 272
	j	.LBB10_46
.LBB10_44:
	addi	a2, s2, 240
.LBB10_45:
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	a2, s2, 288
.LBB10_46:
	mv	a0, s0
	li	a1, 0
.LBB10_47:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	tail	biari_encode_symbol
.LBB10_48:
	sltiu	a0, s3, 23
	xori	a0, a0, 1
	subw	s4, s1, a0
	slli	a1, a1, 4
	add	a1, s2, a1
	addi	a2, a1, 352
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	a2, s2, 416
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	a2, s2, 432
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	s5, s4, -12
	slli	a1, s5, 60
	srli	a1, a1, 63
	addi	s1, s2, 448
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	slli	a1, s5, 61
	srli	a1, a1, 63
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	slli	a1, s4, 62
	srli	a1, a1, 63
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	andi	a1, s4, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	sltiu	a0, s4, 22
	xori	a0, a0, 1
	addw	a0, s4, a0
	li	a1, 24
	bne	a0, a1, .LBB10_50
# %bb.49:
	slti	a0, s3, 24
	addiw	s3, s3, -24
	addi	a0, a0, -1
	and	s1, a0, s3
	li	a0, 25
	beq	s1, a0, .LBB10_26
	j	.LBB10_38
.LBB10_50:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB10_51:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	li	a0, 1
	call	exit
.Lfunc_end10:
	.size	writeMB_typeInfo_CABAC, .Lfunc_end10-writeMB_typeInfo_CABAC
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI10_0:
	.word	.LBB10_50
	.word	.LBB10_43
	.word	.LBB10_34
	.word	.LBB10_42
	.word	.LBB10_23
	.word	.LBB10_23
	.word	.LBB10_44
	.word	.LBB10_37
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	writeB8_typeInfo_CABAC          # -- Begin function writeB8_typeInfo_CABAC
	.p2align	2
	.type	writeB8_typeInfo_CABAC,@function
writeB8_typeInfo_CABAC:                 # @writeB8_typeInfo_CABAC
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 8
	add	a3, a2, a3
	ld	a3, -1200(a3)
	lw	a2, 24(a2)
	ld	s2, 32(a3)
	lw	s3, 4(a0)
	li	a0, 1
	mv	s0, a1
	bne	a2, a0, .LBB11_4
# %bb.1:
	addi	a2, s2, 672
	beqz	s3, .LBB11_11
# %bb.2:
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	li	a0, 2
	addi	s1, s2, 720
	blt	a0, s3, .LBB11_12
# %bb.3:
	addi	a2, s2, 688
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
	addi	s3, s3, -1
	snez	a1, s3
	j	.LBB11_22
.LBB11_4:
	blt	a0, s3, .LBB11_8
# %bb.5:
	beqz	s3, .LBB11_15
# %bb.6:
	li	a0, 1
	bne	s3, a0, .LBB11_14
# %bb.7:
	addi	a2, s2, 544
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
	addi	a2, s2, 576
	j	.LBB11_11
.LBB11_8:
	li	a0, 2
	beq	s3, a0, .LBB11_16
# %bb.9:
	li	a0, 3
	bne	s3, a0, .LBB11_14
# %bb.10:
	addi	a2, s2, 544
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
	addi	a2, s2, 576
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	a2, s2, 592
.LBB11_11:
	mv	a0, s0
	li	a1, 0
	j	.LBB11_23
.LBB11_12:
	addi	a2, s2, 688
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	li	a0, 6
	addi	a2, s2, 704
	bltu	a0, s3, .LBB11_18
# %bb.13:
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
	addi	s3, s3, -3
	slli	a1, s3, 48
	srli	a1, a1, 49
	j	.LBB11_21
.LBB11_14:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB11_15:
	addi	a2, s2, 544
	j	.LBB11_17
.LBB11_16:
	addi	a2, s2, 544
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
	addi	a2, s2, 576
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	a2, s2, 592
.LBB11_17:
	li	a1, 1
	mv	a0, s0
	j	.LBB11_23
.LBB11_18:
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	s3, s3, -7
	andi	a0, s3, 4
	bnez	a0, .LBB11_20
# %bb.19:
	mv	a0, s0
	li	a1, 0
	mv	a2, s1
	call	biari_encode_symbol
	slli	a1, s3, 62
	srli	a1, a1, 63
	j	.LBB11_21
.LBB11_20:
	li	a1, 1
.LBB11_21:
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	andi	a1, s3, 1
.LBB11_22:
	mv	a0, s0
	mv	a2, s1
.LBB11_23:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	biari_encode_symbol
.Lfunc_end11:
	.size	writeB8_typeInfo_CABAC, .Lfunc_end11-writeB8_typeInfo_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeIntraPredMode_CABAC        # -- Begin function writeIntraPredMode_CABAC
	.p2align	2
	.type	writeIntraPredMode_CABAC,@function
writeIntraPredMode_CABAC:               # @writeIntraPredMode_CABAC
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 8
	add	a2, a2, a3
	ld	a2, -1200(a2)
	lw	a3, 4(a0)
	ld	s1, 40(a2)
	li	a2, -1
	mv	s2, a1
	beq	a3, a2, .LBB12_2
# %bb.1:
	mv	s0, a0
	mv	a0, s2
	li	a1, 0
	mv	a2, s1
	call	biari_encode_symbol
	lwu	a1, 4(s0)
	addi	s1, s1, 16
	andi	a1, a1, 1
	mv	a0, s2
	mv	a2, s1
	call	biari_encode_symbol
	lh	a0, 4(s0)
	slli	a0, a0, 62
	srli	a1, a0, 63
	mv	a0, s2
	mv	a2, s1
	call	biari_encode_symbol
	lh	a0, 4(s0)
	slli	a0, a0, 61
	srli	a1, a0, 63
	j	.LBB12_3
.LBB12_2:
	li	a1, 1
.LBB12_3:
	mv	a0, s2
	mv	a2, s1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	biari_encode_symbol
.Lfunc_end12:
	.size	writeIntraPredMode_CABAC, .Lfunc_end12-writeIntraPredMode_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeRefFrame_CABAC             # -- Begin function writeRefFrame_CABAC
	.p2align	2
	.type	writeRefFrame_CABAC,@function
writeRefFrame_CABAC:                    # @writeRefFrame_CABAC
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
	lui	s6, %hi(img)
	ld	a2, %lo(img)(s6)
	lui	s7, 8
	addiw	a3, s7, -1200
	add	a3, a2, a3
	ld	a4, 0(a3)
	lui	a5, %hi(enc_picture)
	ld	a5, %lo(enc_picture)(a5)
	mv	s0, a1
	mv	s1, a0
	ld	s2, 32(a4)
	lui	a0, 2
	add	a0, a5, a0
	lw	a1, 8(s1)
	ld	a4, -1712(a0)
	ld	s4, 8(a3)
	lw	a0, 12(a2)
	slli	a1, a1, 3
	add	a1, a4, a1
	ld	s3, 0(a1)
	lw	s5, 24(a2)
	lw	a1, 72(a2)
	lw	a2, 76(a2)
	li	s8, 528
	mul	a3, a0, s8
	add	s4, s4, a3
	li	a3, -1
	addi	a5, sp, 24
	li	a4, 0
	call	getLuma4x4Neighbour
	ld	a2, %lo(img)(s6)
	lw	a0, 12(a2)
	lw	a1, 72(a2)
	lw	a2, 76(a2)
	li	a4, -1
	mv	a5, sp
	li	a3, 0
	call	getLuma4x4Neighbour
	lw	a0, 0(sp)
	beqz	a0, .LBB13_11
# %bb.1:
	ld	a0, %lo(img)(s6)
	add	s7, a0, s7
	lw	a2, 4(sp)
	ld	a1, -1192(s7)
	lw	a3, 8(sp)
	mul	a4, a2, s8
	add	a4, a1, a4
	lw	a5, 72(a4)
	lwu	a4, 12(sp)
	beqz	a5, .LBB13_8
.LBB13_2:
	slli	a3, a3, 62
	srli	a3, a3, 63
	andi	a4, a4, 2
	or	a3, a3, a4
	li	a4, 528
	mul	a2, a2, a4
	add	a1, a1, a2
	slli	a3, a3, 2
	add	a3, a1, a3
	lw	a2, 376(a3)
	bnez	a2, .LBB13_4
# %bb.3:
	li	a2, 1
	beq	s5, a2, .LBB13_10
.LBB13_4:
	lui	a2, 22
	addiw	a2, a2, 108
	add	a0, a0, a2
	lw	a0, 0(a0)
	beqz	a0, .LBB13_22
# %bb.5:
	lw	a0, 424(s4)
	bnez	a0, .LBB13_22
# %bb.6:
	lw	a0, 424(a1)
	li	a1, 1
	bne	a0, a1, .LBB13_22
# %bb.7:
	lw	a0, 20(sp)
	slli	a0, a0, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	lw	a1, 16(sp)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sltiu	a0, a0, 2
	xori	a0, a0, 1
	lw	a1, 24(sp)
	bnez	a1, .LBB13_12
	j	.LBB13_24
.LBB13_8:
	lw	a5, 24(a0)
	li	a6, 1
	bne	a5, a6, .LBB13_2
# %bb.9:
	lui	a5, %hi(giRDOpt_B8OnlyFlag)
	lw	a5, %lo(giRDOpt_B8OnlyFlag)(a5)
	bnez	a5, .LBB13_2
.LBB13_10:
	li	a0, 0
.LBB13_11:
	lw	a1, 24(sp)
	beqz	a1, .LBB13_24
.LBB13_12:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	add	a2, a1, a2
	lw	a4, 28(sp)
	ld	a2, -1192(a2)
	lw	a3, 32(sp)
	li	a5, 528
	mul	a4, a4, a5
	add	a2, a2, a4
	lw	a5, 72(a2)
	lwu	a4, 36(sp)
	beqz	a5, .LBB13_19
.LBB13_13:
	slli	a3, a3, 62
	srli	a3, a3, 63
	andi	a4, a4, 2
	or	a3, a3, a4
	slli	a3, a3, 2
	add	a3, a2, a3
	lw	a3, 376(a3)
	bnez	a3, .LBB13_15
# %bb.14:
	li	a3, 1
	beq	s5, a3, .LBB13_21
.LBB13_15:
	lui	a3, 22
	addiw	a3, a3, 108
	add	a1, a1, a3
	lw	a1, 0(a1)
	beqz	a1, .LBB13_23
# %bb.16:
	lw	a1, 424(s4)
	bnez	a1, .LBB13_23
# %bb.17:
	lw	a1, 424(a2)
	li	a2, 1
	bne	a1, a2, .LBB13_23
# %bb.18:
	lw	a1, 44(sp)
	slli	a1, a1, 3
	add	a1, s3, a1
	ld	a1, 0(a1)
	lw	a2, 40(sp)
	add	a1, a1, a2
	lbu	a1, 0(a1)
	sltiu	a1, a1, 2
	xori	a1, a1, 1
	j	.LBB13_24
.LBB13_19:
	lw	a5, 24(a1)
	li	a6, 1
	bne	a5, a6, .LBB13_13
# %bb.20:
	lui	a5, %hi(giRDOpt_B8OnlyFlag)
	lw	a5, %lo(giRDOpt_B8OnlyFlag)(a5)
	bnez	a5, .LBB13_13
.LBB13_21:
	li	a1, 0
	j	.LBB13_24
.LBB13_22:
	lw	a0, 20(sp)
	slli	a0, a0, 3
	add	a0, s3, a0
	ld	a0, 0(a0)
	lw	a1, 16(sp)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	snez	a0, a0
	lw	a1, 24(sp)
	bnez	a1, .LBB13_12
	j	.LBB13_24
.LBB13_23:
	lw	a1, 44(sp)
	slli	a1, a1, 3
	add	a1, s3, a1
	ld	a1, 0(a1)
	lw	a2, 40(sp)
	add	a1, a1, a2
	lbu	a1, 0(a1)
	snez	a1, a1
.LBB13_24:
	slli	a0, a0, 1
	or	a0, a0, a1
	lw	s3, 4(s1)
	sw	a0, 24(s1)
	slli	a0, a0, 4
	add	a0, s2, a0
	addi	s1, a0, 1136
	beqz	s3, .LBB13_28
# %bb.25:
	li	a1, 1
	li	s4, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addi	s1, s2, 1200
	beq	s3, s4, .LBB13_28
# %bb.26:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addiw	s3, s3, -2
	addi	s1, s2, 1216
	beqz	s3, .LBB13_28
.LBB13_27:                              # =>This Inner Loop Header: Depth=1
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addiw	s3, s3, -1
	bnez	s3, .LBB13_27
.LBB13_28:
	mv	a0, s0
	li	a1, 0
	mv	a2, s1
	call	biari_encode_symbol
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
	addi	sp, sp, 128
	ret
.Lfunc_end13:
	.size	writeRefFrame_CABAC, .Lfunc_end13-writeRefFrame_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	unary_bin_encode                # -- Begin function unary_bin_encode
	.p2align	2
	.type	unary_bin_encode,@function
unary_bin_encode:                       # @unary_bin_encode
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a2
	mv	s1, a0
	beqz	a1, .LBB14_3
# %bb.1:
	mv	s3, a3
	mv	s2, a1
	li	a1, 1
	mv	a0, s1
	mv	a2, s0
	call	biari_encode_symbol
	slli	s3, s3, 4
	addiw	s2, s2, -1
	add	s0, s0, s3
	beqz	s2, .LBB14_3
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	li	a1, 1
	mv	a0, s1
	mv	a2, s0
	call	biari_encode_symbol
	addiw	s2, s2, -1
	bnez	s2, .LBB14_2
.LBB14_3:
	mv	a0, s1
	li	a1, 0
	mv	a2, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	biari_encode_symbol
.Lfunc_end14:
	.size	unary_bin_encode, .Lfunc_end14-unary_bin_encode
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeDquant_CABAC               # -- Begin function writeDquant_CABAC
	.p2align	2
	.type	writeDquant_CABAC,@function
writeDquant_CABAC:                      # @writeDquant_CABAC
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	mv	s0, a1
	lui	a1, 8
	addiw	a1, a1, -1200
	add	a1, a2, a1
	lw	a2, 12(a2)
	ld	a3, 8(a1)
	ld	a1, 0(a1)
	li	a4, 528
	mul	a2, a2, a4
	add	a2, a3, a2
	lw	a2, 492(a2)
	lw	a0, 4(a0)
	ld	s2, 32(a1)
	lui	a1, %hi(last_dquant)
	sw	a2, %lo(last_dquant)(a1)
	slti	a1, a0, 1
	sraiw	a3, a0, 31
	xor	a0, a0, a3
	subw	a0, a0, a3
	slliw	a0, a0, 1
	or	s3, a0, a1
	snez	a0, a2
	slli	a0, a0, 4
	add	a0, s2, a0
	li	a1, 1
	addi	s1, a0, 1328
	beq	s3, a1, .LBB15_4
# %bb.1:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	li	a0, 2
	addi	s1, s2, 1360
	beq	s3, a0, .LBB15_4
# %bb.2:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addiw	s3, s3, -3
	addi	s1, s2, 1376
	beqz	s3, .LBB15_4
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addiw	s3, s3, -1
	bnez	s3, .LBB15_3
.LBB15_4:
	mv	a0, s0
	li	a1, 0
	mv	a2, s1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	biari_encode_symbol
.Lfunc_end15:
	.size	writeDquant_CABAC, .Lfunc_end15-writeDquant_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeMVD_CABAC                  # -- Begin function writeMVD_CABAC
	.p2align	2
	.type	writeMVD_CABAC,@function
writeMVD_CABAC:                         # @writeMVD_CABAC
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
	mv	s0, a1
	mv	s1, a0
	lui	s8, %hi(img)
	ld	a0, %lo(img)(s8)
	lui	s7, 8
	addiw	a1, s7, -1200
	lw	a2, 8(s1)
	add	a1, a0, a1
	lw	s2, 72(a0)
	lw	s3, 76(a0)
	andi	s10, a2, 1
	ld	a3, 0(a1)
	srai	s4, a2, 1
	lw	a0, 12(a0)
	ld	s6, 8(a1)
	ld	s5, 32(a3)
	li	s9, 528
	mul	a1, a0, s9
	add	s6, s6, a1
	li	a3, -1
	addi	a5, sp, 24
	mv	a1, s2
	mv	a2, s3
	li	a4, 0
	call	getLuma4x4Neighbour
	ld	a0, %lo(img)(s8)
	lw	a0, 12(a0)
	li	a4, -1
	mv	a5, sp
	mv	a1, s2
	mv	a2, s3
	li	a3, 0
	call	getLuma4x4Neighbour
	lw	a0, 0(sp)
	slli	a2, s10, 7
	slli	a1, s4, 2
	beqz	a0, .LBB16_6
# %bb.1:
	ld	a0, %lo(img)(s8)
	lui	a5, 22
	add	s7, a0, s7
	lw	a4, 4(sp)
	ld	a3, -1192(s7)
	lw	a6, 12(sp)
	lw	a7, 8(sp)
	mul	t0, a4, s9
	add	t0, t0, a2
	slli	a6, a6, 5
	add	a6, t0, a6
	slli	a7, a7, 3
	add	a6, a6, a7
	add	a6, a6, a1
	add	a6, a3, a6
	lw	a6, 76(a6)
	add	a0, a0, a5
	lw	a5, 108(a0)
	sraiw	a0, a6, 31
	xor	a6, a6, a0
	subw	a0, a6, a0
	beqz	a5, .LBB16_6
# %bb.2:
	li	a5, 1
	bne	s4, a5, .LBB16_6
# %bb.3:
	lw	a6, 424(s6)
	beq	a6, a5, .LBB16_12
# %bb.4:
	bnez	a6, .LBB16_6
# %bb.5:
	li	a5, 528
	mul	a4, a4, a5
	add	a3, a3, a4
	lw	a3, 424(a3)
	addi	a3, a3, -1
	seqz	a3, a3
	sllw	a0, a0, a3
.LBB16_6:
	lw	a3, 24(sp)
	beqz	a3, .LBB16_13
.LBB16_7:
	lui	a3, %hi(img)
	ld	a5, %lo(img)(a3)
	lui	a6, 22
	lui	a3, 8
	add	a3, a5, a3
	ld	a3, -1192(a3)
	lw	a4, 28(sp)
	lw	a7, 36(sp)
	lw	t0, 32(sp)
	li	t1, 528
	mul	t1, a4, t1
	add	a2, t1, a2
	slli	a7, a7, 5
	add	a2, a2, a7
	slli	t0, t0, 3
	add	a2, a2, t0
	add	a1, a2, a1
	add	a1, a3, a1
	lw	a1, 76(a1)
	add	a5, a5, a6
	lw	a2, 108(a5)
	sraiw	a5, a1, 31
	xor	a1, a1, a5
	subw	a1, a1, a5
	beqz	a2, .LBB16_14
# %bb.8:
	li	a2, 1
	bne	s4, a2, .LBB16_14
# %bb.9:
	lw	a5, 424(s6)
	beq	a5, a2, .LBB16_16
# %bb.10:
	bnez	a5, .LBB16_14
# %bb.11:
	li	a2, 528
	mul	a2, a4, a2
	add	a2, a3, a2
	lw	a2, 424(a2)
	addi	a2, a2, -1
	seqz	a2, a2
	sllw	a1, a1, a2
	addw	a0, a1, a0
	li	a1, 2
	slli	s2, s4, 2
	bge	a1, a0, .LBB16_15
	j	.LBB16_17
.LBB16_12:
	li	a5, 528
	mul	a4, a4, a5
	add	a3, a3, a4
	lw	a3, 424(a3)
	seqz	a3, a3
	srlw	a0, a0, a3
	lw	a3, 24(sp)
	bnez	a3, .LBB16_7
.LBB16_13:
	li	a1, 0
.LBB16_14:
	addw	a0, a1, a0
	li	a1, 2
	slli	s2, s4, 2
	blt	a1, a0, .LBB16_17
.LBB16_15:
	addw	a0, s2, s4
	lw	s3, 4(s1)
	sw	a0, 24(s1)
	bnez	s3, .LBB16_19
	j	.LBB16_21
.LBB16_16:
	li	a2, 528
	mul	a2, a4, a2
	add	a2, a3, a2
	lw	a2, 424(a2)
	seqz	a2, a2
	srlw	a1, a1, a2
	addw	a0, a1, a0
	li	a1, 2
	slli	s2, s4, 2
	bge	a1, a0, .LBB16_15
.LBB16_17:
	li	a2, 33
	add	a1, s2, s4
	bltu	a0, a2, .LBB16_20
# %bb.18:
	addiw	a0, a1, 3
	lw	s3, 4(s1)
	sw	a0, 24(s1)
	beqz	s3, .LBB16_21
.LBB16_19:
	sraiw	s1, s3, 31
	xor	s6, s3, s1
	slli	a0, a0, 4
	add	a0, s5, a0
	addi	a2, a0, 816
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	not	a0, s1
	addw	a1, a0, s6
	addw	a0, s2, s4
	slli	a0, a0, 4
	add	a0, s5, a0
	addi	a2, a0, 976
	li	a3, 3
	mv	a0, s0
	call	unary_exp_golomb_mv_encode
	srliw	a1, s3, 31
	mv	a0, s0
	call	biari_encode_symbol_eq_prob
	j	.LBB16_22
.LBB16_20:
	addiw	a0, a1, 2
	lw	s3, 4(s1)
	sw	a0, 24(s1)
	bnez	s3, .LBB16_19
.LBB16_21:
	slli	a0, a0, 4
	add	a0, s5, a0
	addi	a2, a0, 816
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol
.LBB16_22:
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
	addi	sp, sp, 144
	ret
.Lfunc_end16:
	.size	writeMVD_CABAC, .Lfunc_end16-writeMVD_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	unary_exp_golomb_mv_encode      # -- Begin function unary_exp_golomb_mv_encode
	.p2align	2
	.type	unary_exp_golomb_mv_encode,@function
unary_exp_golomb_mv_encode:             # @unary_exp_golomb_mv_encode
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a2
	mv	s0, a0
	beqz	a1, .LBB17_9
# %bb.1:
	mv	s3, a3
	mv	s2, a1
	li	a1, 1
	li	s4, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addi	a2, s1, 16
	bne	s2, s4, .LBB17_3
# %bb.2:
	mv	s1, a2
	j	.LBB17_9
.LBB17_3:
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol
	addi	a0, s3, -2
	seqz	a0, a0
	slli	a0, a0, 4
	add	a0, s1, a0
	li	a1, 2
	addi	s1, a0, 32
	beq	s2, a1, .LBB17_9
# %bb.4:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addi	a0, s3, -3
	seqz	a0, a0
	slli	a0, a0, 4
	li	a1, 3
	add	s1, s1, a0
	beq	s2, a1, .LBB17_9
# %bb.5:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addi	a0, s3, -4
	seqz	a0, a0
	slli	a0, a0, 4
	li	a1, 4
	add	s1, s1, a0
	beq	s2, a1, .LBB17_9
# %bb.6:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addi	a0, s3, -5
	seqz	a0, a0
	slli	a0, a0, 4
	li	a1, 5
	add	s1, s1, a0
	beq	s2, a1, .LBB17_9
# %bb.7:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addi	a0, s3, -6
	seqz	a0, a0
	slli	a0, a0, 4
	li	a1, 6
	add	s1, s1, a0
	beq	s2, a1, .LBB17_9
# %bb.8:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addi	s3, s3, -7
	seqz	a0, s3
	slli	a0, a0, 4
	li	a1, 7
	add	s1, s1, a0
	bne	s2, a1, .LBB17_10
.LBB17_9:
	mv	a0, s0
	li	a1, 0
	mv	a2, s1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	tail	biari_encode_symbol
.LBB17_10:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addiw	s2, s2, -8
	li	s1, 8
	li	s4, 3
	bltu	s2, s1, .LBB17_13
# %bb.11:                               # %.preheader
	li	s5, 3
	li	s3, 2
.LBB17_12:                              # =>This Inner Loop Header: Depth=1
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol_eq_prob
	subw	s2, s2, s1
	addi	s4, s5, 1
	sllw	s1, s3, s5
	mv	s5, s4
	bgeu	s2, s1, .LBB17_12
.LBB17_13:
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol_eq_prob
	addi	s4, s4, -1
	li	s1, -1
.LBB17_14:                              # =>This Inner Loop Header: Depth=1
	srlw	a1, s2, s4
	andi	a1, a1, 1
	mv	a0, s0
	call	biari_encode_symbol_eq_prob
	addiw	s4, s4, -1
	bne	s4, s1, .LBB17_14
# %bb.15:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end17:
	.size	unary_exp_golomb_mv_encode, .Lfunc_end17-unary_exp_golomb_mv_encode
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeCIPredMode_CABAC           # -- Begin function writeCIPredMode_CABAC
	.p2align	2
	.type	writeCIPredMode_CABAC,@function
writeCIPredMode_CABAC:                  # @writeCIPredMode_CABAC
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 8
	addiw	a3, a3, -1200
	add	a3, a2, a3
	lw	a2, 12(a2)
	ld	a4, 8(a3)
	li	a5, 528
	mul	a2, a2, a5
	add	a2, a4, a2
	ld	a4, 56(a2)
	ld	a3, 0(a3)
	mv	s0, a1
	beqz	a4, .LBB18_3
# %bb.1:
	lw	a1, 416(a4)
	snez	a1, a1
	ld	s3, 40(a3)
	ld	a2, 64(a2)
	lw	s2, 4(a0)
	beqz	a2, .LBB18_4
.LBB18_2:
	lw	a0, 416(a2)
	snez	a0, a0
	j	.LBB18_5
.LBB18_3:
	li	a1, 0
	ld	s3, 40(a3)
	ld	a2, 64(a2)
	lw	s2, 4(a0)
	bnez	a2, .LBB18_2
.LBB18_4:
	li	a0, 0
.LBB18_5:
	slli	a0, a0, 4
	add	a0, s3, a0
	slli	a1, a1, 4
	add	a0, a0, a1
	addi	s1, a0, 32
	beqz	s2, .LBB18_10
# %bb.6:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addiw	s4, s2, -1
	addi	s1, s3, 80
	beqz	s4, .LBB18_10
# %bb.7:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addiw	s2, s2, -2
	beqz	s2, .LBB18_10
.LBB18_8:                               # =>This Inner Loop Header: Depth=1
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addiw	s2, s2, -1
	bnez	s2, .LBB18_8
# %bb.9:
	li	a0, 1
	bne	s4, a0, .LBB18_11
.LBB18_10:
	mv	a0, s0
	li	a1, 0
	mv	a2, s1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	biari_encode_symbol
.LBB18_11:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end18:
	.size	writeCIPredMode_CABAC, .Lfunc_end18-writeCIPredMode_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	unary_bin_max_encode            # -- Begin function unary_bin_max_encode
	.p2align	2
	.type	unary_bin_max_encode,@function
unary_bin_max_encode:                   # @unary_bin_max_encode
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a2
	mv	s1, a0
	beqz	a1, .LBB19_4
# %bb.1:
	mv	s2, a4
	mv	s4, a3
	mv	s3, a1
	li	a1, 1
	mv	a0, s1
	mv	a2, s0
	call	biari_encode_symbol
	slli	a0, s4, 4
	addiw	s4, s3, -1
	add	s0, s0, a0
	beqz	s4, .LBB19_3
.LBB19_2:                               # =>This Inner Loop Header: Depth=1
	li	a1, 1
	mv	a0, s1
	mv	a2, s0
	call	biari_encode_symbol
	addiw	s4, s4, -1
	bnez	s4, .LBB19_2
.LBB19_3:
	bgeu	s3, s2, .LBB19_5
.LBB19_4:
	mv	a0, s1
	li	a1, 0
	mv	a2, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	biari_encode_symbol
.LBB19_5:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end19:
	.size	unary_bin_max_encode, .Lfunc_end19-unary_bin_max_encode
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeCBP_BIT_CABAC              # -- Begin function writeCBP_BIT_CABAC
	.p2align	2
	.type	writeCBP_BIT_CABAC,@function
writeCBP_BIT_CABAC:                     # @writeCBP_BIT_CABAC
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	mv	s0, a5
	mv	a4, a2
	mv	s1, a1
	slli	a5, a0, 1
	andi	a5, a5, 2
	andi	a2, a0, -2
	not	a1, a4
	beqz	a2, .LBB20_2
# %bb.1:
	srli	a0, a5, 1
	srlw	a0, a1, a0
	andi	s2, a0, 1
	bnez	a5, .LBB20_10
	j	.LBB20_5
.LBB20_2:
	ld	a3, 56(a3)
	beqz	a3, .LBB20_4
# %bb.3:
	lw	a4, 72(a3)
	li	a6, 14
	bne	a4, a6, .LBB20_9
.LBB20_4:
	li	s2, 0
	bnez	a5, .LBB20_10
.LBB20_5:
	lui	s3, %hi(img)
	ld	a0, %lo(img)(s3)
	lw	a0, 12(a0)
	li	a3, -1
	mv	a5, sp
	li	a1, 0
	li	a4, 0
	call	getLuma4x4Neighbour
	lw	a1, 0(sp)
	ld	a0, %lo(img)(s3)
	beqz	a1, .LBB20_12
# %bb.6:
	lui	a1, 8
	add	a1, a0, a1
	lw	a2, 4(sp)
	ld	a1, -1192(a1)
	li	a3, 528
	mul	a2, a2, a3
	add	a1, a1, a2
	lw	a2, 72(a1)
	li	a3, 14
	bne	a2, a3, .LBB20_8
# %bb.7:
	li	a1, 0
	j	.LBB20_12
.LBB20_8:
	lw	a1, 364(a1)
	lwu	a2, 12(sp)
	not	a1, a1
	ori	a2, a2, 1
	j	.LBB20_11
.LBB20_9:
	lw	a3, 364(a3)
	srlw	a0, a3, a0
	andi	a0, a0, 4
	seqz	s2, a0
	beqz	a5, .LBB20_5
.LBB20_10:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
.LBB20_11:
	srlw	a1, a1, a2
	andi	a1, a1, 1
.LBB20_12:
	lui	a2, 8
	add	a0, a0, a2
	ld	a0, -1200(a0)
	ld	a0, 40(a0)
	slli	a1, a1, 4
	slli	s2, s2, 5
	add	a1, a1, s2
	add	a0, a0, a1
	addi	a2, a0, 96
	slli	a1, s1, 48
	srai	a1, a1, 48
	mv	a0, s0
	call	biari_encode_symbol
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end20:
	.size	writeCBP_BIT_CABAC, .Lfunc_end20-writeCBP_BIT_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeCBP_CABAC                  # -- Begin function writeCBP_CABAC
	.p2align	2
	.type	writeCBP_CABAC,@function
writeCBP_CABAC:                         # @writeCBP_CABAC
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	s4, %hi(img)
	ld	a2, %lo(img)(s4)
	lui	a3, 8
	addiw	a3, a3, -1200
	add	a3, a2, a3
	ld	a4, 0(a3)
	mv	s0, a1
	ld	s3, 40(a4)
	lw	a1, 12(a2)
	ld	s2, 8(a3)
	lw	s1, 4(a0)
	li	a0, 528
	mul	a0, a1, a0
	add	s2, s2, a0
	andi	a1, s1, 1
	li	a0, 0
	mv	a2, s1
	mv	a3, s2
	li	a4, 0
	mv	a5, s0
	call	writeCBP_BIT_CABAC
	andi	a1, s1, 2
	li	a0, 1
	mv	a2, s1
	mv	a3, s2
	li	a4, 0
	mv	a5, s0
	call	writeCBP_BIT_CABAC
	andi	a1, s1, 4
	li	a0, 2
	mv	a2, s1
	mv	a3, s2
	li	a4, 0
	mv	a5, s0
	call	writeCBP_BIT_CABAC
	andi	a1, s1, 8
	li	a0, 3
	mv	a2, s1
	mv	a3, s2
	li	a4, 0
	mv	a5, s0
	call	writeCBP_BIT_CABAC
	ld	a0, %lo(img)(s4)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 436(a0)
	beqz	a0, .LBB21_14
# %bb.1:
	ld	a1, 56(s2)
	beqz	a1, .LBB21_7
# %bb.2:
	lw	a2, 72(a1)
	li	a3, 14
	li	a0, 2
	beq	a2, a3, .LBB21_4
# %bb.3:
	lw	a0, 364(a1)
	slti	a0, a0, 16
	xori	a0, a0, 1
	slli	a0, a0, 1
.LBB21_4:
	ld	a1, 64(s2)
	beqz	a1, .LBB21_8
.LBB21_5:
	lw	a3, 72(a1)
	li	a4, 14
	li	a2, 1
	beq	a3, a4, .LBB21_9
# %bb.6:
	lw	a1, 364(a1)
	slti	a1, a1, 16
	xori	a2, a1, 1
	j	.LBB21_9
.LBB21_7:
	li	a0, 0
	ld	a1, 64(s2)
	bnez	a1, .LBB21_5
.LBB21_8:
	li	a2, 0
.LBB21_9:
	or	a0, a2, a0
	slti	a1, s1, 16
	xori	a1, a1, 1
	slli	a0, a0, 4
	add	a0, s3, a0
	addi	a2, a0, 160
	mv	a0, s0
	call	biari_encode_symbol
	li	a0, 16
	blt	s1, a0, .LBB21_14
# %bb.10:
	ld	a2, 56(s2)
	lui	a0, 524288
	addiw	a0, a0, -16
	beqz	a2, .LBB21_15
# %bb.11:
	lw	a3, 72(a2)
	li	a4, 14
	li	a1, 2
	beq	a3, a4, .LBB21_16
# %bb.12:
	lw	a1, 364(a2)
	li	a2, 16
	blt	a1, a2, .LBB21_20
# %bb.13:
	and	a1, a1, a0
	addi	a1, a1, -32
	seqz	a1, a1
	slli	a1, a1, 1
	ld	a3, 64(s2)
	bnez	a3, .LBB21_17
	j	.LBB21_21
.LBB21_14:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB21_15:
	li	a1, 0
.LBB21_16:
	ld	a3, 64(s2)
	beqz	a3, .LBB21_21
.LBB21_17:
	lw	a4, 72(a3)
	li	a5, 14
	li	a2, 1
	beq	a4, a5, .LBB21_22
# %bb.18:
	lw	a2, 364(a3)
	li	a3, 16
	blt	a2, a3, .LBB21_21
# %bb.19:
	and	a2, a2, a0
	addi	a2, a2, -32
	seqz	a2, a2
	j	.LBB21_22
.LBB21_20:
	li	a1, 0
	ld	a3, 64(s2)
	bnez	a3, .LBB21_17
.LBB21_21:
	li	a2, 0
.LBB21_22:
	or	a2, a2, a1
	and	a0, s1, a0
	addi	a0, a0, -32
	seqz	a1, a0
	slli	a2, a2, 4
	add	a2, s3, a2
	addi	a2, a2, 224
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	biari_encode_symbol
.Lfunc_end21:
	.size	writeCBP_CABAC, .Lfunc_end21-writeCBP_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	write_and_store_CBP_block_bit   # -- Begin function write_and_store_CBP_block_bit
	.p2align	2
	.type	write_and_store_CBP_block_bit,@function
write_and_store_CBP_block_bit:          # @write_and_store_CBP_block_bit
# %bb.0:
	addi	sp, sp, -160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
	mv	s1, a3
	mv	s2, a2
	mv	s0, a1
	mv	s3, a0
	addi	a0, a2, -8
	li	a1, 2
	addiw	s6, a2, -1
	bltu	a0, a1, .LBB22_4
# %bb.1:
	li	a0, 6
	beq	s2, a0, .LBB22_4
# %bb.2:
	li	a0, 7
	bne	s2, a0, .LBB22_5
# %bb.3:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 84(a0)
	li	s10, 0
	li	s8, 0
	seqz	s9, a1
	snez	s11, a1
	li	a1, 5
	bgeu	s6, a1, .LBB22_6
	j	.LBB22_9
.LBB22_4:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 84(a0)
	li	s11, 0
	li	s9, 0
	seqz	s10, a1
	snez	s8, a1
	li	a1, 5
	bgeu	s6, a1, .LBB22_6
	j	.LBB22_9
.LBB22_5:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	s10, 0
	li	s11, 0
	li	s9, 0
	li	s8, 0
	li	a1, 5
	bltu	s6, a1, .LBB22_9
.LBB22_6:
	bnez	s9, .LBB22_9
# %bb.7:
	bnez	s11, .LBB22_9
# %bb.8:
	li	s5, 0
	li	s4, 0
	j	.LBB22_10
.LBB22_9:
	lw	s5, 76(a0)
	lw	s4, 72(a0)
.LBB22_10:
	lw	s7, 80(a0)
	lw	a0, 12(a0)
	li	a3, -1
	addi	a5, sp, 32
	li	a1, 5
	bltu	a1, s2, .LBB22_13
# %bb.11:
	mv	a1, s4
	mv	a2, s5
	li	a4, 0
	call	getLuma4x4Neighbour
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 8
	mv	a1, s4
	mv	a2, s5
	li	a3, 0
	call	getLuma4x4Neighbour
	li	a3, 4
	li	a1, 0
	li	a0, 0
	li	a2, 0
	bltu	a3, s6, .LBB22_21
# %bb.12:
	lw	a0, 32(sp)
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	seqz	a0, a0
	slli	a1, a1, 2
	add	a1, a1, a2
	addi	a0, a0, -1
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 16(sp)
	and	a0, a0, a1
	seqz	a1, a2
	slli	a3, a3, 2
	add	a3, a3, a4
	addi	a1, a1, -1
	and	a1, a1, a3
	slli	s5, s5, 2
	add	a2, s4, s5
	addi	a2, a2, 1
	bnez	s1, .LBB22_22
	j	.LBB22_26
.LBB22_13:
	mv	a1, s4
	mv	a2, s5
	li	a4, 0
	call	getChroma4x4Neighbour
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 12(a0)
	li	a4, -1
	addi	a5, sp, 8
	mv	a1, s4
	mv	a2, s5
	li	a3, 0
	call	getChroma4x4Neighbour
	or	a2, s9, s11
	li	a0, 0
	li	a1, 0
	beqz	a2, .LBB22_16
# %bb.14:
	lw	a0, 32(sp)
	lw	a1, 44(sp)
	lw	a2, 40(sp)
	seqz	a0, a0
	lw	a3, 8(sp)
	slli	a1, a1, 2
	add	a1, a1, a2
	addi	a0, a0, -1
	and	a0, a0, a1
	beqz	a3, .LBB22_18
# %bb.15:
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	slli	a1, a1, 2
	add	a1, a1, a2
.LBB22_16:
	or	a2, s10, s8
	beqz	a2, .LBB22_19
.LBB22_17:
	li	a2, 18
	sub	a2, a2, s10
	bnez	s1, .LBB22_22
	j	.LBB22_26
.LBB22_18:
	li	a1, 0
	or	a2, s10, s8
	bnez	a2, .LBB22_17
.LBB22_19:
	slli	s5, s5, 2
	beqz	s9, .LBB22_44
# %bb.20:
	add	a2, s5, s4
	addi	a2, a2, 19
.LBB22_21:
	beqz	s1, .LBB22_26
.LBB22_22:
	ld	a3, 408(s3)
	addiw	a4, s2, -2
	li	a5, 3
	bgeu	a4, a5, .LBB22_25
# %bb.23:
	slli	a4, a4, 2
	lui	a5, %hi(.Lswitch.table.write_and_store_CBP_block_bit)
	addi	a5, a5, %lo(.Lswitch.table.write_and_store_CBP_block_bit)
	add	a4, a5, a4
	lw	a4, 0(a4)
	sllw	a2, a4, a2
	or	a2, a3, a2
	sd	a2, 408(s3)
	li	a3, 5
	li	a2, 1
	bltu	s6, a3, .LBB22_30
# %bb.24:
	li	a2, 17
	j	.LBB22_30
.LBB22_25:
	li	a4, 1
	sll	a2, a4, a2
	or	a2, a3, a2
	sd	a2, 408(s3)
.LBB22_26:
	beqz	s2, .LBB22_31
# %bb.27:
	sltiu	a2, s6, 5
	or	a3, a2, s10
	li	a4, 5
	li	a2, 1
	bltu	s6, a4, .LBB22_29
# %bb.28:
	li	a2, 17
.LBB22_29:
	beqz	a3, .LBB22_32
.LBB22_30:
	li	a3, 2
	bne	s2, a3, .LBB22_36
	j	.LBB22_43
.LBB22_31:
	li	a2, 0
	j	.LBB22_36
.LBB22_32:
	li	a3, 19
	bnez	s9, .LBB22_34
# %bb.33:
	li	a3, 35
.LBB22_34:
	li	a2, 18
	bnez	s8, .LBB22_36
# %bb.35:
	mv	a2, a3
.LBB22_36:
	lw	a6, 8(sp)
	lui	a3, %hi(img)
	ld	a3, %lo(img)(a3)
	snez	a4, s7
	lui	a5, 8
	addiw	a5, a5, -1200
	add	a3, a3, a5
	mv	a5, a4
	beqz	a6, .LBB22_39
# %bb.37:
	lw	a5, 12(sp)
	ld	a6, 8(a3)
	li	a7, 528
	mul	a5, a5, a7
	add	a6, a6, a5
	lw	a7, 72(a6)
	li	t0, 14
	li	a5, 1
	beq	a7, t0, .LBB22_39
# %bb.38:
	ld	a5, 408(a6)
	add	a1, a2, a1
	li	a6, 1
	sll	a6, a6, a1
	and	a5, a5, a6
	sra	a5, a5, a1
.LBB22_39:
	lw	a1, 32(sp)
	beqz	a1, .LBB22_42
# %bb.40:
	lw	a1, 36(sp)
	ld	a4, 8(a3)
	li	a6, 528
	mul	a1, a1, a6
	add	a1, a4, a1
	lw	a6, 72(a1)
	li	a7, 14
	li	a4, 1
	beq	a6, a7, .LBB22_42
# %bb.41:
	ld	a1, 408(a1)
	add	a0, a2, a0
	li	a2, 1
	sll	a2, a2, a0
	and	a1, a1, a2
	sra	a4, a1, a0
.LBB22_42:
	ld	a0, 0(a3)
	slli	s2, s2, 2
	lui	a1, %hi(type2ctx_bcbp)
	addi	a1, a1, %lo(type2ctx_bcbp)
	add	a1, a1, s2
	lw	a1, 0(a1)
	slli	a5, a5, 1
	addw	a4, a4, a5
	ld	a0, 40(a0)
	slli	a1, a1, 6
	slli	a4, a4, 4
	add	a1, a1, a4
	add	a0, a0, a1
	addi	a2, a0, 288
	slli	a1, s1, 48
	srai	a1, a1, 48
	mv	a0, s0
	call	biari_encode_symbol
.LBB22_43:
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 160
	ret
.LBB22_44:
	add	s4, s5, s4
	addi	a2, s4, 35
	bnez	s1, .LBB22_22
	j	.LBB22_26
.Lfunc_end22:
	.size	write_and_store_CBP_block_bit, .Lfunc_end22-write_and_store_CBP_block_bit
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	write_significance_map          # -- Begin function write_significance_map
	.p2align	2
	.type	write_significance_map,@function
write_significance_map:                 # @write_significance_map
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
	lui	a5, %hi(img)
	ld	a5, %lo(img)(a5)
	mv	s0, a4
	mv	s1, a3
	mv	s2, a1
	lw	a6, 28(a5)
	slli	a1, a2, 2
	lui	a3, %hi(maxpos)
	addi	a3, a3, %lo(maxpos)
	add	a3, a3, a1
	lui	a4, %hi(type2ctx_last)
	addi	a4, a4, %lo(type2ctx_last)
	bnez	a6, .LBB23_2
# %bb.1:
	lw	a0, 424(a0)
	beqz	a0, .LBB23_18
.LBB23_2:
	lui	a0, 8
	add	a0, a5, a0
	ld	a0, -1200(a0)
	add	a5, a4, a1
	lw	a5, 0(a5)
	ld	s4, 40(a0)
	li	a0, 240
	mul	a0, a5, a0
	lui	a5, 2
	addiw	a5, a5, -864
	add	a0, a0, a5
	add	s3, s4, a0
	li	a0, 19
	slli	a0, a0, 9
	add	s4, s4, a0
	li	a5, 1
.LBB23_3:
	add	a1, a4, a1
	lw	a1, 0(a1)
	lw	a0, 0(a3)
	li	a3, 240
	li	a4, 7
	mul	a1, a1, a3
	beq	a2, a4, .LBB23_5
# %bb.4:
	li	a3, 1
	bne	a2, a3, .LBB23_11
.LBB23_5:
	addi	s1, s1, -4
	li	s8, 1
	add	s4, s4, a1
	beqz	a5, .LBB23_12
.LBB23_6:
	bge	s8, a0, .LBB23_17
# %bb.7:
	slli	a2, a2, 3
	lui	a1, %hi(pos2ctx_map_int)
	addi	a1, a1, %lo(pos2ctx_map_int)
	add	a1, a1, a2
	ld	s5, 0(a1)
	lui	s6, %hi(pos2ctx_last)
	addi	s6, s6, %lo(pos2ctx_last)
	add	s6, s6, a2
	slli	a0, a0, 32
	srli	a0, a0, 32
	sub	s7, a0, s8
	slli	s8, s8, 2
	j	.LBB23_9
.LBB23_8:                               #   in Loop: Header=BB23_9 Depth=1
	addi	s7, s7, -1
	addi	s8, s8, 4
	beqz	s7, .LBB23_17
.LBB23_9:                               # =>This Inner Loop Header: Depth=1
	add	a0, s1, s8
	lw	s9, 0(a0)
	add	a0, s5, s8
	lw	a0, 0(a0)
	snez	a1, s9
	slli	a0, a0, 4
	add	a2, s3, a0
	mv	a0, s2
	call	biari_encode_symbol
	beqz	s9, .LBB23_8
# %bb.10:                               #   in Loop: Header=BB23_9 Depth=1
	ld	a0, 0(s6)
	add	a0, a0, s8
	lw	a0, 0(a0)
	addiw	s0, s0, -1
	seqz	a1, s0
	slli	a0, a0, 4
	add	a2, s4, a0
	mv	a0, s2
	call	biari_encode_symbol
	bnez	s0, .LBB23_8
	j	.LBB23_17
.LBB23_11:
	li	s8, 0
	addiw	a0, a0, -1
	add	s4, s4, a1
	bnez	a5, .LBB23_6
.LBB23_12:
	bge	s8, a0, .LBB23_17
# %bb.13:
	slli	a2, a2, 3
	lui	a1, %hi(pos2ctx_map)
	addi	a1, a1, %lo(pos2ctx_map)
	add	a1, a1, a2
	ld	s5, 0(a1)
	lui	s6, %hi(pos2ctx_last)
	addi	s6, s6, %lo(pos2ctx_last)
	add	s6, s6, a2
	slli	a0, a0, 32
	srli	a0, a0, 32
	sub	s7, a0, s8
	slli	s8, s8, 2
	j	.LBB23_15
.LBB23_14:                              #   in Loop: Header=BB23_15 Depth=1
	addi	s7, s7, -1
	addi	s8, s8, 4
	beqz	s7, .LBB23_17
.LBB23_15:                              # =>This Inner Loop Header: Depth=1
	add	a0, s1, s8
	lw	s9, 0(a0)
	add	a0, s5, s8
	lw	a0, 0(a0)
	snez	a1, s9
	slli	a0, a0, 4
	add	a2, s3, a0
	mv	a0, s2
	call	biari_encode_symbol
	beqz	s9, .LBB23_14
# %bb.16:                               #   in Loop: Header=BB23_15 Depth=1
	ld	a0, 0(s6)
	add	a0, a0, s8
	lw	a0, 0(a0)
	addiw	s0, s0, -1
	seqz	a1, s0
	slli	a0, a0, 4
	add	a2, s4, a0
	mv	a0, s2
	call	biari_encode_symbol
	bnez	s0, .LBB23_14
.LBB23_17:
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
.LBB23_18:
	lui	a0, 8
	add	a0, a5, a0
	ld	a0, -1200(a0)
	add	a5, a4, a1
	lw	a6, 0(a5)
	ld	a0, 40(a0)
	li	a5, 0
	li	a7, 240
	mul	a6, a6, a7
	add	a6, a0, a6
	addi	s3, a6, 928
	addi	a0, a0, 2047
	addi	s4, a0, 1281
	j	.LBB23_3
.Lfunc_end23:
	.size	write_significance_map, .Lfunc_end23-write_significance_map
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	write_significant_coefficients  # -- Begin function write_significant_coefficients
	.p2align	2
	.type	write_significant_coefficients,@function
write_significant_coefficients:         # @write_significant_coefficients
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
	mv	s0, a1
	li	s1, 0
	slli	a2, a2, 2
	lui	a0, %hi(maxpos)
	addi	a0, a0, %lo(maxpos)
	add	a0, a0, a2
	lw	s5, 0(a0)
	lui	s2, %hi(type2ctx_abs)
	addi	s2, s2, %lo(type2ctx_abs)
	add	s2, s2, a2
	lui	a0, %hi(max_c2)
	addi	a0, a0, %lo(max_c2)
	add	a0, a0, a2
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	addi	a0, s5, -1
	slli	a0, a0, 32
	srli	a0, a0, 30
	add	s4, a3, a0
	addi	s5, s5, 1
	li	s6, 1
	lui	s8, 8
	li	s9, 80
	lui	a0, 1
	addiw	s10, a0, 1632
	lui	a0, 2
	addiw	a0, a0, -1664
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	s3, 1
	j	.LBB24_4
.LBB24_1:                               #   in Loop: Header=BB24_4 Depth=1
	seqz	a0, s3
	addiw	s3, s3, 1
	addiw	a0, a0, -1
	and	s3, a0, s3
.LBB24_2:                               #   in Loop: Header=BB24_4 Depth=1
	slti	a1, s11, 1
	mv	a0, s0
	call	biari_encode_symbol_eq_prob
.LBB24_3:                               #   in Loop: Header=BB24_4 Depth=1
	addiw	s5, s5, -1
	addi	s4, s4, -4
	bge	s6, s5, .LBB24_11
.LBB24_4:                               # =>This Inner Loop Header: Depth=1
	lw	s11, 0(s4)
	beqz	s11, .LBB24_3
# %bb.5:                                #   in Loop: Header=BB24_4 Depth=1
	li	a1, 4
	mv	a0, s3
	blt	s3, a1, .LBB24_7
# %bb.6:                                #   in Loop: Header=BB24_4 Depth=1
	li	a0, 4
.LBB24_7:                               #   in Loop: Header=BB24_4 Depth=1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	sraiw	a2, s11, 31
	xor	a3, s11, a2
	subw	s7, a3, a2
	add	a1, a1, s8
	ld	a2, -1200(a1)
	lw	a3, 0(s2)
	sltiu	a1, s7, 2
	xori	a1, a1, 1
	ld	a2, 40(a2)
	mul	a3, a3, s9
	slli	a0, a0, 4
	add	a0, a3, a0
	add	a0, a0, s10
	add	a2, a2, a0
	mv	a0, s0
	call	biari_encode_symbol
	li	a0, 2
	bltu	s7, a0, .LBB24_1
# %bb.8:                                #   in Loop: Header=BB24_4 Depth=1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	lw	a1, 0(a0)
	mv	a0, s1
	blt	s1, a1, .LBB24_10
# %bb.9:                                #   in Loop: Header=BB24_4 Depth=1
	mv	a0, a1
.LBB24_10:                              #   in Loop: Header=BB24_4 Depth=1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	a1, a1, s8
	ld	a2, -1200(a1)
	lw	a3, 0(s2)
	addiw	a1, s7, -2
	ld	a2, 40(a2)
	mul	a3, a3, s9
	slli	a0, a0, 4
	add	a0, a3, a0
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	add	a0, a0, a3
	add	a2, a2, a0
	mv	a0, s0
	call	unary_exp_golomb_level_encode
	li	s3, 0
	addiw	s1, s1, 1
	j	.LBB24_2
.LBB24_11:
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
.Lfunc_end24:
	.size	write_significant_coefficients, .Lfunc_end24-write_significant_coefficients
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	unary_exp_golomb_level_encode   # -- Begin function unary_exp_golomb_level_encode
	.p2align	2
	.type	unary_exp_golomb_level_encode,@function
unary_exp_golomb_level_encode:          # @unary_exp_golomb_level_encode
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a2
	mv	s0, a0
	beqz	a1, .LBB25_14
# %bb.1:
	mv	s2, a1
	li	a1, 1
	li	s3, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	beq	s2, s3, .LBB25_13
# %bb.2:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	li	a0, 2
	beq	s2, a0, .LBB25_13
# %bb.3:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	li	a0, 3
	beq	s2, a0, .LBB25_13
# %bb.4:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	li	a0, 4
	beq	s2, a0, .LBB25_13
# %bb.5:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	li	a0, 5
	beq	s2, a0, .LBB25_13
# %bb.6:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	li	a0, 6
	beq	s2, a0, .LBB25_13
# %bb.7:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	li	a0, 7
	beq	s2, a0, .LBB25_13
# %bb.8:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	li	a0, 8
	beq	s2, a0, .LBB25_13
# %bb.9:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	li	a0, 9
	beq	s2, a0, .LBB25_13
# %bb.10:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	li	a0, 10
	beq	s2, a0, .LBB25_13
# %bb.11:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	li	a0, 11
	beq	s2, a0, .LBB25_13
# %bb.12:
	li	a1, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	li	a0, 12
	bne	s2, a0, .LBB25_16
.LBB25_13:
	mv	a0, s0
	li	a1, 0
	j	.LBB25_15
.LBB25_14:
	mv	a0, s0
.LBB25_15:
	mv	a2, s1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	biari_encode_symbol
.LBB25_16:
	li	a1, 1
	li	s3, 1
	mv	a0, s0
	mv	a2, s1
	call	biari_encode_symbol
	addiw	s2, s2, -13
	beqz	s2, .LBB25_22
# %bb.17:                               # %.preheader
	li	s1, -1
	li	s4, 2
.LBB25_18:                              # =>This Inner Loop Header: Depth=1
	addi	s1, s1, 1
	li	a1, 1
	mv	a0, s0
	call	biari_encode_symbol_eq_prob
	subw	s2, s2, s3
	sllw	s3, s4, s1
	bgeu	s2, s3, .LBB25_18
# %bb.19:
	mv	a0, s0
	li	a1, 0
	call	biari_encode_symbol_eq_prob
	li	s3, -1
.LBB25_20:                              # =>This Inner Loop Header: Depth=1
	srlw	a1, s2, s1
	andi	a1, a1, 1
	mv	a0, s0
	call	biari_encode_symbol_eq_prob
	addiw	s1, s1, -1
	bne	s1, s3, .LBB25_20
# %bb.21:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB25_22:
	mv	a0, s0
	li	a1, 0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	biari_encode_symbol_eq_prob
.Lfunc_end25:
	.size	unary_exp_golomb_level_encode, .Lfunc_end25-unary_exp_golomb_level_encode
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	writeRunLevel_CABAC             # -- Begin function writeRunLevel_CABAC
	.p2align	2
	.type	writeRunLevel_CABAC,@function
writeRunLevel_CABAC:                    # @writeRunLevel_CABAC
# %bb.0:
	lw	a2, 4(a0)
	beqz	a2, .LBB26_2
# %bb.1:
	lw	a0, 8(a0)
	lui	a1, %hi(writeRunLevel_CABAC.pos)
	lw	a3, %lo(writeRunLevel_CABAC.pos)(a1)
	addw	a0, a3, a0
	addi	a3, a0, 1
	sw	a3, %lo(writeRunLevel_CABAC.pos)(a1)
	slli	a0, a0, 2
	lui	a1, %hi(writeRunLevel_CABAC.coeff_ctr)
	lw	a3, %lo(writeRunLevel_CABAC.coeff_ctr)(a1)
	lui	a4, %hi(writeRunLevel_CABAC.coeff)
	addi	a4, a4, %lo(writeRunLevel_CABAC.coeff)
	add	a0, a4, a0
	sw	a2, 0(a0)
	addi	a3, a3, 1
	sw	a3, %lo(writeRunLevel_CABAC.coeff_ctr)(a1)
	ret
.LBB26_2:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lui	a3, 8
	add	a3, a2, a3
	ld	s0, -1192(a3)
	lw	a3, 12(a2)
	lui	s2, %hi(writeRunLevel_CABAC.coeff_ctr)
	lw	a4, %lo(writeRunLevel_CABAC.coeff_ctr)(s2)
	lw	a2, 24(a0)
	li	a5, 528
	mul	a3, a3, a5
	add	s0, s0, a3
	blez	a4, .LBB26_4
# %bb.3:
	li	a3, 1
	mv	s3, a0
	mv	a0, s0
	mv	s1, a1
	call	write_and_store_CBP_block_bit
	lw	a2, 24(s3)
	lw	a4, %lo(writeRunLevel_CABAC.coeff_ctr)(s2)
	lui	s2, %hi(writeRunLevel_CABAC.coeff)
	addi	s2, s2, %lo(writeRunLevel_CABAC.coeff)
	mv	a0, s0
	mv	a1, s1
	mv	a3, s2
	call	write_significance_map
	lw	a2, 24(s3)
	mv	a1, s1
	mv	a3, s2
	call	write_significant_coefficients
	j	.LBB26_5
.LBB26_4:
	mv	a0, s0
	li	a3, 0
	call	write_and_store_CBP_block_bit
.LBB26_5:
	lui	a0, %hi(writeRunLevel_CABAC.coeff_ctr)
	sw	zero, %lo(writeRunLevel_CABAC.coeff_ctr)(a0)
	lui	a1, %hi(writeRunLevel_CABAC.pos)
	lui	a0, %hi(writeRunLevel_CABAC.coeff)
	addi	a0, a0, %lo(writeRunLevel_CABAC.coeff)
	li	a2, 256
	sw	zero, %lo(writeRunLevel_CABAC.pos)(a1)
	li	a1, 0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	memset
.Lfunc_end26:
	.size	writeRunLevel_CABAC, .Lfunc_end26-writeRunLevel_CABAC
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	exp_golomb_encode_eq_prob       # -- Begin function exp_golomb_encode_eq_prob
	.p2align	2
	.type	exp_golomb_encode_eq_prob,@function
exp_golomb_encode_eq_prob:              # @exp_golomb_encode_eq_prob
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s2, a2
	li	s3, 1
	sllw	s4, s3, a2
	mv	s0, a1
	mv	s1, a0
	bltu	a1, s4, .LBB27_2
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	li	a1, 1
	mv	a0, s1
	call	biari_encode_symbol_eq_prob
	subw	s0, s0, s4
	addiw	s2, s2, 1
	sllw	s4, s3, s2
	bgeu	s0, s4, .LBB27_1
.LBB27_2:
	mv	a0, s1
	li	a1, 0
	call	biari_encode_symbol_eq_prob
	beqz	s2, .LBB27_5
# %bb.3:                                # %.preheader
	addi	s2, s2, -1
	li	s3, -1
.LBB27_4:                               # =>This Inner Loop Header: Depth=1
	srlw	a1, s0, s2
	andi	a1, a1, 1
	mv	a0, s1
	call	biari_encode_symbol_eq_prob
	addiw	s2, s2, -1
	bne	s2, s3, .LBB27_4
.LBB27_5:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end27:
	.size	exp_golomb_encode_eq_prob, .Lfunc_end27-exp_golomb_encode_eq_prob
                                        # -- End function
	.option	pop
	.type	last_dquant,@object             # @last_dquant
	.section	.sbss,"aw",@nobits
	.globl	last_dquant
	.p2align	2, 0x0
last_dquant:
	.word	0                               # 0x0
	.size	last_dquant, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"create_contexts_MotionInfo: enco_ctx"
	.size	.L.str, 37

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"create_contexts_TextureInfo: enco_ctx"
	.size	.L.str.1, 38

	.type	type2ctx_bcbp,@object           # @type2ctx_bcbp
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
type2ctx_bcbp:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	5                               # 0x5
	.size	type2ctx_bcbp, 40

	.type	maxpos,@object                  # @maxpos
	.p2align	2, 0x0
maxpos:
	.word	16                              # 0x10
	.word	15                              # 0xf
	.word	64                              # 0x40
	.word	32                              # 0x20
	.word	32                              # 0x20
	.word	16                              # 0x10
	.word	4                               # 0x4
	.word	15                              # 0xf
	.word	8                               # 0x8
	.word	16                              # 0x10
	.size	maxpos, 40

	.type	type2ctx_last,@object           # @type2ctx_last
	.p2align	2, 0x0
type2ctx_last:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	6                               # 0x6
	.size	type2ctx_last, 40

	.type	pos2ctx_map,@object             # @pos2ctx_map
	.p2align	3, 0x0
pos2ctx_map:
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map8x8
	.quad	pos2ctx_map8x4
	.quad	pos2ctx_map8x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map2x4c
	.quad	pos2ctx_map4x4c
	.size	pos2ctx_map, 80

	.type	pos2ctx_last,@object            # @pos2ctx_last
	.p2align	3, 0x0
pos2ctx_last:
	.quad	pos2ctx_last4x4
	.quad	pos2ctx_last4x4
	.quad	pos2ctx_last8x8
	.quad	pos2ctx_last8x4
	.quad	pos2ctx_last8x4
	.quad	pos2ctx_last4x4
	.quad	pos2ctx_last4x4
	.quad	pos2ctx_last4x4
	.quad	pos2ctx_last2x4c
	.quad	pos2ctx_last4x4c
	.size	pos2ctx_last, 80

	.type	pos2ctx_map_int,@object         # @pos2ctx_map_int
	.p2align	3, 0x0
pos2ctx_map_int:
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map8x8i
	.quad	pos2ctx_map8x4i
	.quad	pos2ctx_map4x8i
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map2x4c
	.quad	pos2ctx_map4x4c
	.size	pos2ctx_map_int, 80

	.type	max_c2,@object                  # @max_c2
	.p2align	2, 0x0
max_c2:
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.size	max_c2, 40

	.type	type2ctx_abs,@object            # @type2ctx_abs
	.p2align	2, 0x0
type2ctx_abs:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	5                               # 0x5
	.size	type2ctx_abs, 40

	.type	writeRunLevel_CABAC.coeff,@object # @writeRunLevel_CABAC.coeff
	.local	writeRunLevel_CABAC.coeff
	.comm	writeRunLevel_CABAC.coeff,256,4
	.type	writeRunLevel_CABAC.coeff_ctr,@object # @writeRunLevel_CABAC.coeff_ctr
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
writeRunLevel_CABAC.coeff_ctr:
	.word	0                               # 0x0
	.size	writeRunLevel_CABAC.coeff_ctr, 4

	.type	writeRunLevel_CABAC.pos,@object # @writeRunLevel_CABAC.pos
	.p2align	2, 0x0
writeRunLevel_CABAC.pos:
	.word	0                               # 0x0
	.size	writeRunLevel_CABAC.pos, 4

	.type	pos2ctx_map4x4,@object          # @pos2ctx_map4x4
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
pos2ctx_map4x4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.size	pos2ctx_map4x4, 64

	.type	pos2ctx_map8x8,@object          # @pos2ctx_map8x8
	.p2align	2, 0x0
pos2ctx_map8x8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	11                              # 0xb
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	6                               # 0x6
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	11                              # 0xb
	.word	6                               # 0x6
	.word	9                               # 0x9
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	10                              # 0xa
	.word	12                              # 0xc
	.word	14                              # 0xe
	.size	pos2ctx_map8x8, 256

	.type	pos2ctx_map8x4,@object          # @pos2ctx_map8x4
	.p2align	2, 0x0
pos2ctx_map8x4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.size	pos2ctx_map8x4, 128

	.type	pos2ctx_map2x4c,@object         # @pos2ctx_map2x4c
	.p2align	2, 0x0
pos2ctx_map2x4c:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.size	pos2ctx_map2x4c, 64

	.type	pos2ctx_map4x4c,@object         # @pos2ctx_map4x4c
	.p2align	2, 0x0
pos2ctx_map4x4c:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.size	pos2ctx_map4x4c, 64

	.type	pos2ctx_last4x4,@object         # @pos2ctx_last4x4
	.p2align	2, 0x0
pos2ctx_last4x4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.size	pos2ctx_last4x4, 64

	.type	pos2ctx_last8x8,@object         # @pos2ctx_last8x8
	.p2align	2, 0x0
pos2ctx_last8x8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.size	pos2ctx_last8x8, 256

	.type	pos2ctx_last8x4,@object         # @pos2ctx_last8x4
	.p2align	2, 0x0
pos2ctx_last8x4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	8                               # 0x8
	.size	pos2ctx_last8x4, 128

	.type	pos2ctx_last2x4c,@object        # @pos2ctx_last2x4c
	.p2align	2, 0x0
pos2ctx_last2x4c:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.size	pos2ctx_last2x4c, 64

	.type	pos2ctx_last4x4c,@object        # @pos2ctx_last4x4c
	.p2align	2, 0x0
pos2ctx_last4x4c:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.size	pos2ctx_last4x4c, 64

	.type	pos2ctx_map8x8i,@object         # @pos2ctx_map8x8i
	.p2align	2, 0x0
pos2ctx_map8x8i:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	8                               # 0x8
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	11                              # 0xb
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	8                               # 0x8
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	11                              # 0xb
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	8                               # 0x8
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	11                              # 0xb
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	8                               # 0x8
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	8                               # 0x8
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	14                              # 0xe
	.size	pos2ctx_map8x8i, 256

	.type	pos2ctx_map8x4i,@object         # @pos2ctx_map8x4i
	.p2align	2, 0x0
pos2ctx_map8x4i:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	14                              # 0xe
	.size	pos2ctx_map8x4i, 128

	.type	pos2ctx_map4x8i,@object         # @pos2ctx_map4x8i
	.p2align	2, 0x0
pos2ctx_map4x8i:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	2                               # 0x2
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	14                              # 0xe
	.size	pos2ctx_map4x8i, 128

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Unsupported MB-MODE in writeMB_typeInfo_CABAC!"
	.size	.Lstr, 47

	.type	.Lswitch.table.write_and_store_CBP_block_bit,@object # @switch.table.write_and_store_CBP_block_bit
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.write_and_store_CBP_block_bit:
	.word	51                              # 0x33
	.word	3                               # 0x3
	.word	17                              # 0x11
	.size	.Lswitch.table.write_and_store_CBP_block_bit, 12

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
