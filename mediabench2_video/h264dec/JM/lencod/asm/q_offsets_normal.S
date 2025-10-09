	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"q_offsets.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	allocate_QOffsets               # -- Begin function allocate_QOffsets
	.p2align	2
	.type	allocate_QOffsets,@function
allocate_QOffsets:                      # @allocate_QOffsets
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 1921(a0)
	li	a2, 6
	mul	a1, a1, a2
	addiw	a1, a1, 3
	lui	a3, 174763
	addiw	a3, a3, -1365
	mul	a1, a1, a3
	srli	a4, a1, 63
	lw	a0, 1925(a0)
	srli	a1, a1, 32
	add	a1, a1, a4
	addiw	s0, a1, 1
	mul	a0, a0, a2
	addiw	a0, a0, 3
	mul	a0, a0, a3
	srli	a1, a0, 63
	srli	a0, a0, 32
	add	a0, a0, a1
	addiw	a0, a0, 1
	blt	a0, s0, .LBB0_2
# %bb.1:
	mv	s0, a0
.LBB0_2:
	lui	a0, %hi(LevelOffset4x4Luma)
	addi	a0, a0, %lo(LevelOffset4x4Luma)
	li	a1, 2
	li	a3, 4
	li	a4, 4
	mv	a2, s0
	call	get_mem4Dint
	lui	a0, %hi(LevelOffset4x4Chroma)
	addi	a0, a0, %lo(LevelOffset4x4Chroma)
	li	a1, 2
	li	a2, 2
	li	a4, 4
	li	a5, 4
	mv	a3, s0
	call	get_mem5Dint
	lui	a0, %hi(LevelOffset8x8Luma)
	addi	a0, a0, %lo(LevelOffset8x8Luma)
	li	a1, 2
	li	a3, 8
	li	a4, 8
	mv	a2, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	get_mem4Dint
.Lfunc_end0:
	.size	allocate_QOffsets, .Lfunc_end0-allocate_QOffsets
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_QOffsets                   # -- Begin function free_QOffsets
	.p2align	2
	.type	free_QOffsets,@function
free_QOffsets:                          # @free_QOffsets
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a1, 1921(a0)
	li	a2, 6
	mul	a1, a1, a2
	addiw	a1, a1, 3
	lui	a3, 174763
	addiw	a3, a3, -1365
	mul	a1, a1, a3
	srli	a4, a1, 63
	lw	a0, 1925(a0)
	srli	a1, a1, 32
	add	a1, a1, a4
	addiw	s0, a1, 1
	mul	a0, a0, a2
	addiw	a0, a0, 3
	mul	a0, a0, a3
	srli	a1, a0, 63
	srli	a0, a0, 32
	add	a0, a0, a1
	addiw	a0, a0, 1
	blt	a0, s0, .LBB1_2
# %bb.1:
	mv	s0, a0
.LBB1_2:
	lui	a0, %hi(LevelOffset4x4Luma)
	ld	a0, %lo(LevelOffset4x4Luma)(a0)
	li	a1, 2
	mv	a2, s0
	call	free_mem4Dint
	lui	a0, %hi(LevelOffset4x4Chroma)
	ld	a0, %lo(LevelOffset4x4Chroma)(a0)
	li	a1, 2
	li	a2, 2
	mv	a3, s0
	call	free_mem5Dint
	lui	a0, %hi(LevelOffset8x8Luma)
	ld	a0, %lo(LevelOffset8x8Luma)(a0)
	li	a1, 2
	mv	a2, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free_mem4Dint
.Lfunc_end1:
	.size	free_QOffsets, .Lfunc_end1-free_QOffsets
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CheckOffsetParameterName        # -- Begin function CheckOffsetParameterName
	.p2align	2
	.type	CheckOffsetParameterName,@function
CheckOffsetParameterName:               # @CheckOffsetParameterName
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a1
	mv	s0, a0
	sw	zero, 0(a1)
	lui	s2, %hi(OffsetType4x4)
	addi	s2, s2, %lo(OffsetType4x4)
	mv	a0, s2
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_21
# %bb.1:
	addi	a0, s2, 24
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_20
# %bb.2:
	addi	a0, s2, 48
	mv	a1, s0
	call	strcmp
	mv	a1, a0
	li	a0, 2
	beqz	a1, .LBB2_21
# %bb.3:
	addi	a0, s2, 72
	mv	a1, s0
	call	strcmp
	mv	a1, a0
	li	a0, 3
	beqz	a1, .LBB2_21
# %bb.4:
	addi	a0, s2, 96
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_22
# %bb.5:
	addi	a0, s2, 120
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_23
# %bb.6:
	addi	a0, s2, 144
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_24
# %bb.7:
	addi	a0, s2, 168
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_25
# %bb.8:
	addi	a0, s2, 192
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_26
# %bb.9:
	addi	a0, s2, 216
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_27
# %bb.10:
	addi	a0, s2, 240
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_28
# %bb.11:
	addi	a0, s2, 264
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_29
# %bb.12:
	addi	a0, s2, 288
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_30
# %bb.13:
	addi	a0, s2, 312
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_31
# %bb.14:
	addi	a0, s2, 336
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_32
# %bb.15:
	li	a0, 1
	sw	a0, 0(s1)
	lui	s1, %hi(OffsetType8x8)
	addi	s1, s1, %lo(OffsetType8x8)
	mv	a0, s1
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB2_21
# %bb.16:
	addi	a0, s1, 24
	mv	a1, s0
	call	strcmp
	mv	a1, a0
	li	a0, 1
	beqz	a1, .LBB2_21
# %bb.17:
	addi	a0, s1, 48
	mv	a1, s0
	call	strcmp
	mv	a1, a0
	li	a0, 2
	beqz	a1, .LBB2_21
# %bb.18:
	addi	a0, s1, 72
	mv	a1, s0
	call	strcmp
	mv	a1, a0
	li	a0, 3
	beqz	a1, .LBB2_21
# %bb.19:
	addi	a0, s1, 96
	mv	a1, s0
	call	strcmp
	seqz	a0, a0
	addi	a0, a0, -1
	ori	a0, a0, 4
	j	.LBB2_21
.LBB2_20:
	li	a0, 1
.LBB2_21:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB2_22:
	li	a0, 4
	j	.LBB2_21
.LBB2_23:
	li	a0, 5
	j	.LBB2_21
.LBB2_24:
	li	a0, 6
	j	.LBB2_21
.LBB2_25:
	li	a0, 7
	j	.LBB2_21
.LBB2_26:
	li	a0, 8
	j	.LBB2_21
.LBB2_27:
	li	a0, 9
	j	.LBB2_21
.LBB2_28:
	li	a0, 10
	j	.LBB2_21
.LBB2_29:
	li	a0, 11
	j	.LBB2_21
.LBB2_30:
	li	a0, 12
	j	.LBB2_21
.LBB2_31:
	li	a0, 13
	j	.LBB2_21
.LBB2_32:
	li	a0, 14
	j	.LBB2_21
.Lfunc_end2:
	.size	CheckOffsetParameterName, .Lfunc_end2-CheckOffsetParameterName
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ParseQOffsetMatrix              # -- Begin function ParseQOffsetMatrix
	.p2align	2
	.type	ParseQOffsetMatrix,@function
ParseQOffsetMatrix:                     # @ParseQOffsetMatrix
# %bb.0:
	blez	a1, .LBB3_39
# %bb.1:                                # %.preheader2
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
	lui	a2, 1
	addiw	a2, a2, 2000
	sub	sp, sp, a2
	li	a2, 0
	li	t0, 0
	li	a7, 0
	add	a1, a0, a1
	li	a3, 35
	addi	a4, sp, 24
	lui	a5, %hi(.LJTI3_0)
	addi	a5, a5, %lo(.LJTI3_0)
	li	a6, 10
	j	.LBB3_4
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	li	a7, 0
	li	t0, 0
	addi	t1, a0, 1
	sb	zero, 0(a0)
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	mv	a0, t1
	bgeu	t1, a1, .LBB3_22
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
	lbu	t1, 0(a0)
	addi	t1, t1, -9
	bltu	a3, t1, .LBB3_8
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	slli	t1, t1, 2
	add	t1, t1, a5
	lw	t1, 0(t1)
	jr	t1
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	addi	t1, a0, 1
	beqz	a7, .LBB3_19
# %bb.7:                                #   in Loop: Header=BB3_4 Depth=1
	li	a7, -1
	j	.LBB3_3
.LBB3_8:                                #   in Loop: Header=BB3_4 Depth=1
	bnez	t0, .LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_4 Depth=1
	slli	t0, a2, 3
	addiw	a2, a2, 1
	add	t0, a4, t0
	sd	a0, 0(t0)
.LBB3_10:                               #   in Loop: Header=BB3_4 Depth=1
	addi	t1, a0, 1
	li	t0, -1
	j	.LBB3_3
.LBB3_11:                               #   in Loop: Header=BB3_4 Depth=1
	sb	zero, 0(a0)
.LBB3_12:                               #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	t1, a0, 1
	bgeu	a0, a1, .LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=2
	lbu	a7, 0(a0)
	mv	a0, t1
	bne	a7, a6, .LBB3_12
.LBB3_14:                               # %.loopexit1
                                        #   in Loop: Header=BB3_4 Depth=1
	li	a7, 0
	li	t0, 0
	addi	t1, t1, -1
	j	.LBB3_3
.LBB3_15:                               #   in Loop: Header=BB3_4 Depth=1
	li	t0, 0
.LBB3_16:                               #   in Loop: Header=BB3_4 Depth=1
	addi	t1, a0, 1
	j	.LBB3_3
.LBB3_17:                               #   in Loop: Header=BB3_4 Depth=1
	addi	t1, a0, 1
	sb	zero, 0(a0)
	beqz	a7, .LBB3_20
# %bb.18:                               #   in Loop: Header=BB3_4 Depth=1
	li	t2, 0
	j	.LBB3_21
.LBB3_19:                               #   in Loop: Header=BB3_4 Depth=1
	li	t0, 0
	sb	zero, 0(a0)
	j	.LBB3_3
.LBB3_20:                               #   in Loop: Header=BB3_4 Depth=1
	slli	a0, a2, 3
	addiw	a2, a2, 1
	add	a0, a4, a0
	sd	t1, 0(a0)
	not	t2, t0
.LBB3_21:                               #   in Loop: Header=BB3_4 Depth=1
	not	a7, a7
	mv	t0, t2
	j	.LBB3_3
.LBB3_22:
	li	a0, 2
	blt	a2, a0, .LBB3_38
# %bb.23:                               # %.preheader
	li	s10, 0
	addiw	s7, a2, -1
	addi	s9, sp, 24
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	li	s4, 61
	li	s11, 1
	lui	s2, %hi(.L.str.3)
	addi	s2, s2, %lo(.L.str.3)
	lui	s3, %hi(.L.str.4)
	addi	s3, s3, %lo(.L.str.4)
	j	.LBB3_25
.LBB3_24:                               #   in Loop: Header=BB3_25 Depth=1
	li	a0, 46
	call	putchar
	addw	a0, s10, s1
	add	s10, s10, s1
	addi	s9, sp, 24
	li	s4, 61
	bge	a0, s7, .LBB3_38
.LBB3_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_36 Depth 2
	slli	s1, s10, 3
	add	s1, s9, s1
	ld	s5, 0(s1)
	addi	a1, sp, 16
	mv	a0, s5
	call	CheckOffsetParameterName
	mv	s6, a0
	bltz	a0, .LBB3_28
# %bb.26:                               #   in Loop: Header=BB3_25 Depth=1
	ld	a0, 8(s1)
	lbu	a1, 0(a0)
	bne	a1, s4, .LBB3_29
.LBB3_27:                               #   in Loop: Header=BB3_25 Depth=1
	lbu	a0, 1(a0)
	neg	a0, a0
	bnez	a0, .LBB3_30
	j	.LBB3_31
.LBB3_28:                               #   in Loop: Header=BB3_25 Depth=1
	li	a1, 300
	mv	a0, s0
	lui	a2, %hi(.L.str)
	addi	a2, a2, %lo(.L.str)
	mv	a3, s5
	call	snprintf
	li	a1, 300
	mv	a0, s0
	call	error
	ld	a0, 8(s1)
	lbu	a1, 0(a0)
	beq	a1, s4, .LBB3_27
.LBB3_29:                               #   in Loop: Header=BB3_25 Depth=1
	sub	a0, s4, a1
	beqz	a0, .LBB3_31
.LBB3_30:                               #   in Loop: Header=BB3_25 Depth=1
	li	a2, 78
	mv	a0, s0
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	call	memcpy
	li	a1, 300
	mv	a0, s0
	call	error
.LBB3_31:                               #   in Loop: Header=BB3_25 Depth=1
	lw	a1, 16(sp)
	slli	a0, s6, 2
	beqz	a1, .LBB3_33
# %bb.32:                               #   in Loop: Header=BB3_25 Depth=1
	slli	s4, s6, 7
	lui	a1, %hi(OffsetList8x8input)
	addi	a1, a1, %lo(OffsetList8x8input)
	add	s4, a1, s4
	lui	a1, %hi(offset8x8_check)
	addi	a1, a1, %lo(offset8x8_check)
	add	a0, a1, a0
	li	s1, 64
	j	.LBB3_34
.LBB3_33:                               #   in Loop: Header=BB3_25 Depth=1
	slli	s4, s6, 5
	lui	a1, %hi(OffsetList4x4input)
	addi	a1, a1, %lo(OffsetList4x4input)
	add	s4, a1, s4
	lui	a1, %hi(offset4x4_check)
	addi	a1, a1, %lo(offset4x4_check)
	add	a0, a1, a0
	li	s1, 16
.LBB3_34:                               #   in Loop: Header=BB3_25 Depth=1
	sw	s11, 0(a0)
	addi	s10, s10, 2
	slli	s8, s10, 3
	add	s8, s9, s8
	slli	s9, s1, 1
	add	s9, s4, s9
	j	.LBB3_36
.LBB3_35:                               #   in Loop: Header=BB3_36 Depth=2
	lh	a0, 20(sp)
	sh	a0, 0(s4)
	addi	s4, s4, 2
	addi	s8, s8, 8
	beq	s4, s9, .LBB3_24
.LBB3_36:                               #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s6, 0(s8)
	addi	a2, sp, 20
	mv	a0, s6
	mv	a1, s2
	call	__isoc99_sscanf
	beq	a0, s11, .LBB3_35
# %bb.37:                               #   in Loop: Header=BB3_36 Depth=2
	li	a1, 300
	mv	a0, s0
	mv	a2, s3
	mv	a3, s5
	mv	a4, s6
	call	snprintf
	li	a1, 300
	mv	a0, s0
	call	error
	j	.LBB3_35
.LBB3_38:
	lui	a0, 1
	addiw	a0, a0, 2000
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
	addi	sp, sp, 2032
.LBB3_39:
	ret
.Lfunc_end3:
	.size	ParseQOffsetMatrix, .Lfunc_end3-ParseQOffsetMatrix
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_6
	.word	.LBB3_2
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_16
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_6
	.word	.LBB3_8
	.word	.LBB3_17
	.word	.LBB3_11
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_8
	.word	.LBB3_15
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	Init_QOffsetMatrix              # -- Begin function Init_QOffsetMatrix
	.p2align	2
	.type	Init_QOffsetMatrix,@function
Init_QOffsetMatrix:                     # @Init_QOffsetMatrix
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(input)
	ld	a0, %lo(input)(s1)
	addi	a0, a0, 2047
	lw	a1, 1921(a0)
	li	a2, 6
	mul	a1, a1, a2
	addiw	a1, a1, 3
	lui	a3, 174763
	addiw	a3, a3, -1365
	mul	a1, a1, a3
	srli	a4, a1, 63
	lw	a0, 1925(a0)
	srli	a1, a1, 32
	add	a1, a1, a4
	addiw	s0, a1, 1
	mul	a0, a0, a2
	addiw	a0, a0, 3
	mul	a0, a0, a3
	srli	a1, a0, 63
	srli	a0, a0, 32
	add	a0, a0, a1
	addiw	a0, a0, 1
	blt	a0, s0, .LBB4_2
# %bb.1:
	mv	s0, a0
.LBB4_2:
	lui	a0, %hi(LevelOffset4x4Luma)
	addi	a0, a0, %lo(LevelOffset4x4Luma)
	li	a1, 2
	li	a3, 4
	li	a4, 4
	mv	a2, s0
	call	get_mem4Dint
	lui	a0, %hi(LevelOffset4x4Chroma)
	addi	a0, a0, %lo(LevelOffset4x4Chroma)
	li	a1, 2
	li	a2, 2
	li	a4, 4
	li	a5, 4
	mv	a3, s0
	call	get_mem5Dint
	lui	a0, %hi(LevelOffset8x8Luma)
	addi	a0, a0, %lo(LevelOffset8x8Luma)
	li	a1, 2
	li	a3, 8
	li	a4, 8
	mv	a2, s0
	call	get_mem4Dint
	ld	a1, %lo(input)(s1)
	lui	a0, 1
	add	a2, a1, a0
	lw	a2, 160(a2)
	beqz	a2, .LBB4_7
# %bb.3:
	addiw	s0, a0, -40
	add	a1, a1, s0
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	printf
	lui	s1, %hi(input)
	ld	a0, %lo(input)(s1)
	add	a0, a0, s0
	li	a1, 0
	call	GetConfigFileContent
	mv	s0, a0
	beqz	a0, .LBB4_5
# %bb.4:
	mv	a0, s0
	call	strlen
	sext.w	a1, a0
	mv	a0, s0
	call	ParseQOffsetMatrix
	j	.LBB4_6
.LBB4_5:
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	lui	a1, %hi(errortext)
	addi	a1, a1, %lo(errortext)
	call	printf
	ld	a0, %lo(input)(s1)
	lui	a1, 1
	add	a0, a0, a1
	sw	zero, 160(a0)
.LBB4_6:
	li	a0, 10
	call	putchar
	mv	a0, s0
	call	free
.LBB4_7:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	InitOffsetParam
.Lfunc_end4:
	.size	Init_QOffsetMatrix, .Lfunc_end4-Init_QOffsetMatrix
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	InitOffsetParam                 # -- Begin function InitOffsetParam
	.p2align	2
	.type	InitOffsetParam,@function
InitOffsetParam:                        # @InitOffsetParam
# %bb.0:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lui	a1, 1
	add	a0, a0, a1
	lw	a0, 160(a0)
	beqz	a0, .LBB5_7
# %bb.1:                                # %.preheader4
	li	a0, 0
	lui	a1, %hi(OffsetList4x4)
	addi	a1, a1, %lo(OffsetList4x4)
	addi	a2, a1, 224
	lui	a3, %hi(OffsetList4x4input+224)
	addi	a3, a3, %lo(OffsetList4x4input+224)
	li	a4, 4
.LBB5_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	slli	a5, a0, 1
	add	a5, a5, a1
	addi	a5, a5, 256
	mv	a6, a3
	mv	a7, a2
.LBB5_3:                                #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lh	t0, -224(a6)
	lh	t1, -192(a6)
	lh	t2, -160(a6)
	sh	t0, -224(a7)
	sh	t1, -192(a7)
	sh	t2, -160(a7)
	lh	t0, -128(a6)
	lh	t1, -96(a6)
	lh	t2, -64(a6)
	lh	t3, -32(a6)
	sh	t0, -128(a7)
	sh	t1, -96(a7)
	sh	t2, -64(a7)
	sh	t3, -32(a7)
	lh	t0, 0(a6)
	lh	t1, 32(a6)
	lh	t2, 64(a6)
	lh	t3, 96(a6)
	sh	t0, 0(a7)
	sh	t1, 32(a7)
	sh	t2, 64(a7)
	sh	t3, 96(a7)
	lh	t0, 128(a6)
	lh	t1, 160(a6)
	lh	t2, 192(a6)
	lh	t3, 224(a6)
	sh	t0, 128(a7)
	sh	t1, 160(a7)
	sh	t2, 192(a7)
	sh	t3, 224(a7)
	addi	a7, a7, 8
	addi	a6, a6, 8
	bne	a7, a5, .LBB5_3
# %bb.4:                                #   in Loop: Header=BB5_2 Depth=1
	addi	a0, a0, 1
	addi	a2, a2, 2
	addi	a3, a3, 2
	bne	a0, a4, .LBB5_2
# %bb.5:                                # %.preheader2
	lui	a2, %hi(OffsetList8x8)
	addi	a2, a2, %lo(OffsetList8x8)
	addi	a0, a2, 320
	lui	a1, %hi(OffsetList8x8input+320)
	addi	a1, a1, %lo(OffsetList8x8input+320)
	addi	a2, a2, 336
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	lh	a3, -320(a1)
	lh	a4, -192(a1)
	lh	a5, -64(a1)
	lh	a6, 64(a1)
	sh	a3, -320(a0)
	sh	a4, -192(a0)
	sh	a5, -64(a0)
	sh	a6, 64(a0)
	lh	a3, 192(a1)
	lh	a4, -304(a1)
	lh	a5, -176(a1)
	lh	a6, -48(a1)
	sh	a3, 192(a0)
	sh	a4, -304(a0)
	sh	a5, -176(a0)
	sh	a6, -48(a0)
	lh	a3, 80(a1)
	lh	a4, 208(a1)
	lh	a5, -288(a1)
	lh	a6, -160(a1)
	sh	a3, 80(a0)
	sh	a4, 208(a0)
	sh	a5, -288(a0)
	sh	a6, -160(a0)
	lh	a3, -32(a1)
	lh	a4, 96(a1)
	lh	a5, 224(a1)
	lh	a6, -272(a1)
	sh	a3, -32(a0)
	sh	a4, 96(a0)
	sh	a5, 224(a0)
	sh	a6, -272(a0)
	lh	a3, -144(a1)
	lh	a4, -16(a1)
	lh	a5, 112(a1)
	lh	a6, 240(a1)
	sh	a3, -144(a0)
	sh	a4, -16(a0)
	sh	a5, 112(a0)
	sh	a6, 240(a0)
	lh	a3, -256(a1)
	lh	a4, -128(a1)
	lh	a5, 0(a1)
	lh	a6, 128(a1)
	sh	a3, -256(a0)
	sh	a4, -128(a0)
	sh	a5, 0(a0)
	sh	a6, 128(a0)
	lh	a3, 256(a1)
	lh	a4, -240(a1)
	lh	a5, -112(a1)
	lh	a6, 16(a1)
	sh	a3, 256(a0)
	sh	a4, -240(a0)
	sh	a5, -112(a0)
	sh	a6, 16(a0)
	lh	a3, 144(a1)
	lh	a4, 272(a1)
	lh	a5, -224(a1)
	lh	a6, -96(a1)
	sh	a3, 144(a0)
	sh	a4, 272(a0)
	sh	a5, -224(a0)
	sh	a6, -96(a0)
	lh	a3, 32(a1)
	lh	a4, 160(a1)
	lh	a5, 288(a1)
	lh	a6, -208(a1)
	sh	a3, 32(a0)
	sh	a4, 160(a0)
	sh	a5, 288(a0)
	sh	a6, -208(a0)
	lh	a3, -80(a1)
	lh	a4, 48(a1)
	lh	a5, 176(a1)
	lh	a6, 304(a1)
	sh	a3, -80(a0)
	sh	a4, 48(a0)
	sh	a5, 176(a0)
	sh	a6, 304(a0)
	addi	a0, a0, 2
	addi	a1, a1, 2
	bne	a0, a2, .LBB5_6
	j	.LBB5_11
.LBB5_7:                                # %.preheader1
	lui	a3, %hi(OffsetList4x4)
	addi	a3, a3, %lo(OffsetList4x4)
	addi	a0, a3, 240
	li	a1, 682
	li	a2, 342
	addi	a3, a3, 248
.LBB5_8:                                # =>This Inner Loop Header: Depth=1
	sh	a1, -240(a0)
	sh	a1, -208(a0)
	sh	a1, -176(a0)
	sh	a2, -144(a0)
	sh	a2, -112(a0)
	sh	a2, -80(a0)
	sh	a2, -48(a0)
	sh	a2, -16(a0)
	sh	a2, 16(a0)
	sh	a2, 48(a0)
	sh	a2, 80(a0)
	sh	a2, 112(a0)
	sh	a2, 144(a0)
	sh	a2, 176(a0)
	sh	a2, 208(a0)
	sh	a1, -232(a0)
	sh	a1, -200(a0)
	sh	a1, -168(a0)
	sh	a2, -136(a0)
	sh	a2, -104(a0)
	sh	a2, -72(a0)
	sh	a2, -40(a0)
	sh	a2, -8(a0)
	sh	a2, 24(a0)
	sh	a2, 56(a0)
	sh	a2, 88(a0)
	sh	a2, 120(a0)
	sh	a2, 152(a0)
	sh	a2, 184(a0)
	sh	a2, 216(a0)
	sh	a1, -224(a0)
	sh	a1, -192(a0)
	sh	a1, -160(a0)
	sh	a2, -128(a0)
	sh	a2, -96(a0)
	sh	a2, -64(a0)
	sh	a2, -32(a0)
	sh	a2, 0(a0)
	sh	a2, 32(a0)
	sh	a2, 64(a0)
	sh	a2, 96(a0)
	sh	a2, 128(a0)
	sh	a2, 160(a0)
	sh	a2, 192(a0)
	sh	a2, 224(a0)
	sh	a1, -216(a0)
	sh	a1, -184(a0)
	sh	a1, -152(a0)
	sh	a2, -120(a0)
	sh	a2, -88(a0)
	sh	a2, -56(a0)
	sh	a2, -24(a0)
	sh	a2, 8(a0)
	sh	a2, 40(a0)
	sh	a2, 72(a0)
	sh	a2, 104(a0)
	sh	a2, 136(a0)
	sh	a2, 168(a0)
	sh	a2, 200(a0)
	sh	a2, 232(a0)
	addi	a0, a0, 2
	bne	a0, a3, .LBB5_8
# %bb.9:                                # %.preheader
	lui	a3, %hi(OffsetList8x8)
	addi	a3, a3, %lo(OffsetList8x8)
	addi	a0, a3, 320
	li	a1, 682
	li	a2, 342
	addi	a3, a3, 336
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	sh	a1, -320(a0)
	sh	a2, -192(a0)
	sh	a2, -64(a0)
	sh	a2, 64(a0)
	sh	a2, 192(a0)
	sh	a1, -304(a0)
	sh	a2, -176(a0)
	sh	a2, -48(a0)
	sh	a2, 80(a0)
	sh	a2, 208(a0)
	sh	a1, -288(a0)
	sh	a2, -160(a0)
	sh	a2, -32(a0)
	sh	a2, 96(a0)
	sh	a2, 224(a0)
	sh	a1, -272(a0)
	sh	a2, -144(a0)
	sh	a2, -16(a0)
	sh	a2, 112(a0)
	sh	a2, 240(a0)
	sh	a1, -256(a0)
	sh	a2, -128(a0)
	sh	a2, 0(a0)
	sh	a2, 128(a0)
	sh	a2, 256(a0)
	sh	a1, -240(a0)
	sh	a2, -112(a0)
	sh	a2, 16(a0)
	sh	a2, 144(a0)
	sh	a2, 272(a0)
	sh	a1, -224(a0)
	sh	a2, -96(a0)
	sh	a2, 32(a0)
	sh	a2, 160(a0)
	sh	a2, 288(a0)
	sh	a1, -208(a0)
	sh	a2, -80(a0)
	sh	a2, 48(a0)
	sh	a2, 176(a0)
	sh	a2, 304(a0)
	addi	a0, a0, 2
	bne	a0, a3, .LBB5_10
.LBB5_11:
	ret
.Lfunc_end5:
	.size	InitOffsetParam, .Lfunc_end5-InitOffsetParam
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CalculateOffsetParam            # -- Begin function CalculateOffsetParam
	.p2align	2
	.type	CalculateOffsetParam,@function
CalculateOffsetParam:                   # @CalculateOffsetParam
# %bb.0:
	lui	a0, %hi(img)
	ld	a1, %lo(img)(a0)
	lw	a2, 24(a1)
	lui	a0, 22
	addiw	a0, a0, 204
	li	a3, 3
	add	a1, a1, a0
	beq	a2, a3, .LBB6_3
# %bb.1:
	li	a3, 4
	li	a0, 2
	beq	a2, a3, .LBB6_4
# %bb.2:
	mv	a0, a2
	j	.LBB6_4
.LBB6_3:
	li	a0, 0
.LBB6_4:
	lw	a2, 176(a1)
	addiw	a2, a2, 51
	lui	a3, 174763
	addiw	a3, a3, -1365
	mul	a2, a2, a3
	srli	a4, a2, 63
	lw	a5, 180(a1)
	srli	a2, a2, 32
	add	a2, a2, a4
	addiw	a6, a2, 1
	addiw	a2, a5, 51
	lw	a1, 0(a1)
	mul	a2, a2, a3
	lui	a3, %hi(input)
	ld	a3, %lo(input)(a3)
	snez	a1, a1
	li	a4, 20
	mul	a1, a1, a4
	slli	a4, a0, 2
	add	a3, a3, a4
	lui	a4, 1
	add	a3, a3, a4
	srli	a4, a2, 63
	srli	a2, a2, 32
	add	a1, a3, a1
	lw	a3, 176(a1)
	add	a1, a2, a4
	addiw	a1, a1, 1
	lui	a2, %hi(AdaptRndWeight)
	sw	a3, %lo(AdaptRndWeight)(a2)
	blt	a1, a6, .LBB6_6
# %bb.5:
	mv	a6, a1
.LBB6_6:
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
	blez	a6, .LBB6_17
# %bb.7:
	li	a7, 0
	lui	a5, %hi(OffsetList4x4)
	addi	a5, a5, %lo(OffsetList4x4)
	addi	a1, a5, 448
	addi	a2, a5, 416
	addi	a3, a5, 384
	addi	a4, a5, 256
	addi	t6, a5, 224
	addi	s4, a5, 192
	li	t4, 1
	li	t5, 16
	li	s0, 2
	sd	a6, 8(sp)                       # 8-byte Folded Spill
	j	.LBB6_9
.LBB6_8:                                #   in Loop: Header=BB6_9 Depth=1
	ld	a7, 16(sp)                      # 8-byte Folded Reload
	addi	a7, a7, 1
	ld	a6, 8(sp)                       # 8-byte Folded Reload
	beq	a7, a6, .LBB6_17
.LBB6_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_11 Depth 2
                                        #       Child Loop BB6_14 Depth 3
	li	ra, 0
	li	s2, 0
	addi	s3, a7, 4
	sd	a7, 16(sp)                      # 8-byte Folded Spill
	slli	a7, a7, 3
	sd	a7, 24(sp)                      # 8-byte Folded Spill
	j	.LBB6_11
.LBB6_10:                               #   in Loop: Header=BB6_11 Depth=2
	addi	s2, s2, 1
	ld	ra, 32(sp)                      # 8-byte Folded Reload
	addi	ra, ra, 2
	li	a6, 4
	beq	s2, a6, .LBB6_8
.LBB6_11:                               #   Parent Loop BB6_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_14 Depth 3
	lui	a6, %hi(LevelOffset4x4Luma)
	ld	a6, %lo(LevelOffset4x4Luma)(a6)
	ld	a7, 8(a6)
	lui	t0, %hi(LevelOffset4x4Chroma)
	ld	t0, %lo(LevelOffset4x4Chroma)(t0)
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	add	a7, a7, s5
	ld	t1, 0(t0)
	ld	a7, 0(a7)
	ld	t0, 8(t0)
	slli	t2, s2, 3
	ld	t3, 8(t1)
	add	a7, a7, t2
	ld	s6, 8(t0)
	ld	s1, 0(a7)
	add	t3, t3, s5
	ld	a7, 0(t3)
	add	s6, s6, s5
	ld	t3, 0(s6)
	ld	a6, 0(a6)
	add	a7, a7, t2
	ld	s6, 0(a7)
	add	t3, t3, t2
	add	a6, a6, s5
	ld	a6, 0(a6)
	ld	a7, 0(t1)
	ld	s7, 0(t3)
	ld	t0, 0(t0)
	add	a6, a6, t2
	add	a7, a7, s5
	ld	a7, 0(a7)
	add	t0, t0, s5
	ld	t0, 0(t0)
	ld	s8, 0(a6)
	add	a7, a7, t2
	ld	s9, 0(a7)
	add	t0, t0, t2
	ld	s10, 0(t0)
	li	s11, 0
	sd	ra, 32(sp)                      # 8-byte Folded Spill
	j	.LBB6_14
.LBB6_12:                               #   in Loop: Header=BB6_14 Depth=3
	addi	t1, a5, 64
	addi	t2, a5, 32
	mv	t3, a5
.LBB6_13:                               #   in Loop: Header=BB6_14 Depth=3
	add	t3, t3, ra
	lh	t3, 0(t3)
	add	t2, t2, ra
	lh	t2, 0(t2)
	add	s5, s1, s11
	sllw	t3, t3, s3
	sw	t3, 0(s5)
	sllw	t2, t2, s3
	add	t3, s6, s11
	add	t1, t1, ra
	lh	t1, 0(t1)
	sw	t2, 0(t3)
	add	t0, t0, ra
	lh	t0, 0(t0)
	sllw	t1, t1, s3
	add	t2, s7, s11
	sw	t1, 0(t2)
	sllw	t0, t0, s3
	add	t1, s8, s11
	add	a7, a7, ra
	lh	a7, 0(a7)
	sw	t0, 0(t1)
	add	a6, a6, ra
	lh	a6, 0(a6)
	sllw	a7, a7, s3
	add	t0, s9, s11
	sw	a7, 0(t0)
	sllw	a6, a6, s3
	add	a7, s10, s11
	sw	a6, 0(a7)
	addi	s11, s11, 4
	addi	ra, ra, 8
	beq	s11, t5, .LBB6_10
.LBB6_14:                               #   Parent Loop BB6_9 Depth=1
                                        #     Parent Loop BB6_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	t3, s4
	mv	t2, t6
	mv	t1, a4
	mv	t0, a3
	mv	a7, a2
	mv	a6, a1
	beq	a0, t4, .LBB6_13
# %bb.15:                               #   in Loop: Header=BB6_14 Depth=3
	addi	a6, a5, 352
	addi	a7, a5, 320
	addi	t0, a5, 288
	beq	a0, s0, .LBB6_12
# %bb.16:                               #   in Loop: Header=BB6_14 Depth=3
	addi	t1, a5, 160
	addi	t2, a5, 128
	addi	t3, a5, 96
	j	.LBB6_13
.LBB6_17:
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
.Lfunc_end6:
	.size	CalculateOffsetParam, .Lfunc_end6-CalculateOffsetParam
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CalculateOffset8Param           # -- Begin function CalculateOffset8Param
	.p2align	2
	.type	CalculateOffset8Param,@function
CalculateOffset8Param:                  # @CalculateOffset8Param
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	addiw	a1, a1, 380
	add	a1, a0, a1
	lw	a2, 0(a1)
	addiw	a2, a2, 51
	lui	a3, 174763
	addiw	a3, a3, -1365
	mul	a2, a2, a3
	srli	a4, a2, 63
	lw	a5, 4(a1)
	srli	a2, a2, 32
	add	a1, a2, a4
	addiw	a1, a1, 1
	addiw	a2, a5, 51
	mul	a2, a2, a3
	srli	a3, a2, 63
	srli	a2, a2, 32
	add	a2, a2, a3
	addiw	a2, a2, 1
	blt	a2, a1, .LBB7_2
# %bb.1:
	mv	a1, a2
.LBB7_2:
	addi	sp, sp, -16
	sd	s0, 8(sp)                       # 8-byte Folded Spill
	sd	s1, 0(sp)                       # 8-byte Folded Spill
	blez	a1, .LBB7_13
# %bb.3:
	li	a2, 0
	lui	a3, %hi(LevelOffset8x8Luma)
	li	a4, 1
	lui	a5, %hi(OffsetList8x8)
	addi	a5, a5, %lo(OffsetList8x8)
	li	a6, 8
	j	.LBB7_5
.LBB7_4:                                #   in Loop: Header=BB7_5 Depth=1
	addi	a2, a2, 1
	beq	a2, a1, .LBB7_13
.LBB7_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
                                        #       Child Loop BB7_9 Depth 3
	li	a7, 0
	li	t0, 0
	addi	t1, a2, 5
	slli	t2, a2, 3
	j	.LBB7_7
.LBB7_6:                                #   in Loop: Header=BB7_7 Depth=2
	addi	t0, t0, 1
	addi	a7, a7, 2
	beq	t0, a6, .LBB7_4
.LBB7_7:                                #   Parent Loop BB7_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_9 Depth 3
	ld	t3, %lo(LevelOffset8x8Luma)(a3)
	ld	t4, 8(t3)
	ld	t3, 0(t3)
	add	t4, t4, t2
	ld	t4, 0(t4)
	add	t3, t3, t2
	ld	t3, 0(t3)
	slli	t5, t0, 3
	add	t4, t4, t5
	add	t3, t3, t5
	ld	t3, 0(t3)
	ld	t4, 0(t4)
	addi	t5, t3, 32
	mv	t6, a7
	j	.LBB7_9
.LBB7_8:                                #   in Loop: Header=BB7_9 Depth=3
	add	s0, a5, s0
	add	s0, s0, t6
	lh	s0, 0(s0)
	sllw	s0, s0, t1
	sw	s0, 0(t3)
	addi	t3, t3, 4
	addi	t4, t4, 4
	addi	t6, t6, 16
	beq	t3, t5, .LBB7_6
.LBB7_9:                                #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	s0, 24(a0)
	li	s1, 256
	beq	s0, a4, .LBB7_11
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=3
	li	s1, 128
.LBB7_11:                               #   in Loop: Header=BB7_9 Depth=3
	addi	s0, s0, -2
	seqz	s0, s0
	addi	s0, s0, -1
	and	s0, s0, s1
	add	s1, a5, t6
	add	s0, s1, s0
	lh	s0, 0(s0)
	sllw	s0, s0, t1
	sw	s0, 0(t4)
	lw	s1, 24(a0)
	li	s0, 512
	beq	s1, a4, .LBB7_8
# %bb.12:                               #   in Loop: Header=BB7_9 Depth=3
	li	s0, 384
	j	.LBB7_8
.LBB7_13:
	ld	s0, 8(sp)                       # 8-byte Folded Reload
	ld	s1, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end7:
	.size	CalculateOffset8Param, .Lfunc_end7-CalculateOffset8Param
                                        # -- End function
	.option	pop
	.type	offset4x4_check,@object         # @offset4x4_check
	.bss
	.globl	offset4x4_check
	.p2align	2, 0x0
offset4x4_check:
	.zero	24
	.size	offset4x4_check, 24

	.type	offset8x8_check,@object         # @offset8x8_check
	.section	.sbss,"aw",@nobits
	.globl	offset8x8_check
	.p2align	2, 0x0
offset8x8_check:
	.zero	8
	.size	offset8x8_check, 8

	.type	OffsetBits,@object              # @OffsetBits
	.section	.rodata,"a",@progbits
	.globl	OffsetBits
	.p2align	2, 0x0
OffsetBits:
	.word	11                              # 0xb
	.size	OffsetBits, 4

	.type	LevelOffset4x4Luma,@object      # @LevelOffset4x4Luma
	.section	.sbss,"aw",@nobits
	.globl	LevelOffset4x4Luma
	.p2align	3, 0x0
LevelOffset4x4Luma:
	.quad	0
	.size	LevelOffset4x4Luma, 8

	.type	LevelOffset4x4Chroma,@object    # @LevelOffset4x4Chroma
	.globl	LevelOffset4x4Chroma
	.p2align	3, 0x0
LevelOffset4x4Chroma:
	.quad	0
	.size	LevelOffset4x4Chroma, 8

	.type	LevelOffset8x8Luma,@object      # @LevelOffset8x8Luma
	.globl	LevelOffset8x8Luma
	.p2align	3, 0x0
LevelOffset8x8Luma:
	.quad	0
	.size	LevelOffset8x8Luma, 8

	.type	OffsetType4x4,@object           # @OffsetType4x4
	.section	.rodata,"a",@progbits
OffsetType4x4:
	.asciz	"INTRA4X4_LUMA_INTRA\000\000\000\000"
	.asciz	"INTRA4X4_CHROMAU_INTRA\000"
	.asciz	"INTRA4X4_CHROMAV_INTRA\000"
	.asciz	"INTRA4X4_LUMA_INTERP\000\000\000"
	.asciz	"INTRA4X4_CHROMAU_INTERP"
	.asciz	"INTRA4X4_CHROMAV_INTERP"
	.asciz	"INTRA4X4_LUMA_INTERB\000\000\000"
	.asciz	"INTRA4X4_CHROMAU_INTERB"
	.asciz	"INTRA4X4_CHROMAV_INTERB"
	.asciz	"INTER4X4_LUMA_INTERP\000\000\000"
	.asciz	"INTER4X4_CHROMAU_INTERP"
	.asciz	"INTER4X4_CHROMAV_INTERP"
	.asciz	"INTER4X4_LUMA_INTERB\000\000\000"
	.asciz	"INTER4X4_CHROMAU_INTERB"
	.asciz	"INTER4X4_CHROMAV_INTERB"
	.size	OffsetType4x4, 360

	.type	OffsetType8x8,@object           # @OffsetType8x8
OffsetType8x8:
	.asciz	"INTRA8X8_LUMA_INTRA\000\000\000\000"
	.asciz	"INTRA8X8_LUMA_INTERP\000\000\000"
	.asciz	"INTRA8X8_LUMA_INTERB\000\000\000"
	.asciz	"INTER8X8_LUMA_INTERP\000\000\000"
	.asciz	"INTER8X8_LUMA_INTERB\000\000\000"
	.size	OffsetType8x8, 120

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" Parsing error in config file: Parameter Name '%s' not recognized."
	.size	.L.str, 67

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" Parsing error in config file: '=' expected as the second token in each item."
	.size	.L.str.2, 78

	.type	OffsetList4x4input,@object      # @OffsetList4x4input
	.bss
	.globl	OffsetList4x4input
	.p2align	1, 0x0
OffsetList4x4input:
	.zero	480
	.size	OffsetList4x4input, 480

	.type	OffsetList8x8input,@object      # @OffsetList8x8input
	.globl	OffsetList8x8input
	.p2align	1, 0x0
OffsetList8x8input:
	.zero	640
	.size	OffsetList8x8input, 640

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%d"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" Parsing error: Expected numerical value for Parameter of %s, found '%s'."
	.size	.L.str.4, 74

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Parsing Quantization Offset Matrix file %s "
	.size	.L.str.6, 44

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\nError: %s\nProceeding with default values for all matrices."
	.size	.L.str.7, 60

	.type	OffsetList4x4,@object           # @OffsetList4x4
	.bss
	.globl	OffsetList4x4
	.p2align	1, 0x0
OffsetList4x4:
	.zero	480
	.size	OffsetList4x4, 480

	.type	OffsetList8x8,@object           # @OffsetList8x8
	.globl	OffsetList8x8
	.p2align	1, 0x0
OffsetList8x8:
	.zero	640
	.size	OffsetList8x8, 640

	.type	AdaptRndWeight,@object          # @AdaptRndWeight
	.section	.sbss,"aw",@nobits
	.globl	AdaptRndWeight
	.p2align	2, 0x0
AdaptRndWeight:
	.word	0                               # 0x0
	.size	AdaptRndWeight, 4

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
