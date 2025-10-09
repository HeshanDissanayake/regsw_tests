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
	beqz	a0, .LBB5_6
# %bb.1:                                # %.preheader2
	lui	a2, %hi(OffsetList4x4)
	addi	a2, a2, %lo(OffsetList4x4)
	addi	a0, a2, 240
	lui	a1, %hi(OffsetList4x4input+240)
	addi	a1, a1, %lo(OffsetList4x4input+240)
	addi	a2, a2, 248
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	lh	a3, -240(a1)
	lh	a4, -208(a1)
	lh	a5, -176(a1)
	lh	a6, -144(a1)
	sh	a3, -240(a0)
	sh	a4, -208(a0)
	sh	a5, -176(a0)
	sh	a6, -144(a0)
	lh	a3, -112(a1)
	lh	a4, -80(a1)
	lh	a5, -48(a1)
	lh	a6, -16(a1)
	sh	a3, -112(a0)
	sh	a4, -80(a0)
	sh	a5, -48(a0)
	sh	a6, -16(a0)
	lh	a3, 16(a1)
	lh	a4, 48(a1)
	lh	a5, 80(a1)
	lh	a6, 112(a1)
	sh	a3, 16(a0)
	sh	a4, 48(a0)
	sh	a5, 80(a0)
	sh	a6, 112(a0)
	lh	a3, 144(a1)
	lh	a4, 176(a1)
	lh	a5, 208(a1)
	lh	a6, -232(a1)
	sh	a3, 144(a0)
	sh	a4, 176(a0)
	sh	a5, 208(a0)
	sh	a6, -232(a0)
	lh	a3, -200(a1)
	lh	a4, -168(a1)
	lh	a5, -136(a1)
	lh	a6, -104(a1)
	sh	a3, -200(a0)
	sh	a4, -168(a0)
	sh	a5, -136(a0)
	sh	a6, -104(a0)
	lh	a3, -72(a1)
	lh	a4, -40(a1)
	lh	a5, -8(a1)
	lh	a6, 24(a1)
	sh	a3, -72(a0)
	sh	a4, -40(a0)
	sh	a5, -8(a0)
	sh	a6, 24(a0)
	lh	a3, 56(a1)
	lh	a4, 88(a1)
	lh	a5, 120(a1)
	lh	a6, 152(a1)
	sh	a3, 56(a0)
	sh	a4, 88(a0)
	sh	a5, 120(a0)
	sh	a6, 152(a0)
	lh	a3, 184(a1)
	lh	a4, 216(a1)
	lh	a5, -224(a1)
	lh	a6, -192(a1)
	sh	a3, 184(a0)
	sh	a4, 216(a0)
	sh	a5, -224(a0)
	sh	a6, -192(a0)
	lh	a3, -160(a1)
	lh	a4, -128(a1)
	lh	a5, -96(a1)
	lh	a6, -64(a1)
	sh	a3, -160(a0)
	sh	a4, -128(a0)
	sh	a5, -96(a0)
	sh	a6, -64(a0)
	lh	a3, -32(a1)
	lh	a4, 0(a1)
	lh	a5, 32(a1)
	lh	a6, 64(a1)
	sh	a3, -32(a0)
	sh	a4, 0(a0)
	sh	a5, 32(a0)
	sh	a6, 64(a0)
	lh	a3, 96(a1)
	lh	a4, 128(a1)
	lh	a5, 160(a1)
	lh	a6, 192(a1)
	sh	a3, 96(a0)
	sh	a4, 128(a0)
	sh	a5, 160(a0)
	sh	a6, 192(a0)
	lh	a3, 224(a1)
	lh	a4, -216(a1)
	lh	a5, -184(a1)
	lh	a6, -152(a1)
	sh	a3, 224(a0)
	sh	a4, -216(a0)
	sh	a5, -184(a0)
	sh	a6, -152(a0)
	lh	a3, -120(a1)
	lh	a4, -88(a1)
	lh	a5, -56(a1)
	lh	a6, -24(a1)
	sh	a3, -120(a0)
	sh	a4, -88(a0)
	sh	a5, -56(a0)
	sh	a6, -24(a0)
	lh	a3, 8(a1)
	lh	a4, 40(a1)
	lh	a5, 72(a1)
	lh	a6, 104(a1)
	sh	a3, 8(a0)
	sh	a4, 40(a0)
	sh	a5, 72(a0)
	sh	a6, 104(a0)
	lh	a3, 136(a1)
	lh	a4, 168(a1)
	lh	a5, 200(a1)
	lh	a6, 232(a1)
	sh	a3, 136(a0)
	sh	a4, 168(a0)
	sh	a5, 200(a0)
	sh	a6, 232(a0)
	addi	a0, a0, 2
	addi	a1, a1, 2
	bne	a0, a2, .LBB5_2
# %bb.3:                                # %.preheader1
	lui	a2, %hi(OffsetList8x8)
	addi	a2, a2, %lo(OffsetList8x8)
	addi	a0, a2, 320
	lui	a1, %hi(OffsetList8x8input+320)
	addi	a1, a1, %lo(OffsetList8x8input+320)
	addi	a2, a2, 336
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
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
	bne	a0, a2, .LBB5_4
# %bb.5:
	ret
.LBB5_6:                                # %.preheader
	lui	a3, %hi(OffsetList4x4)
	addi	a3, a3, %lo(OffsetList4x4)
	addi	a0, a3, 240
	li	a1, 682
	li	a2, 342
	addi	a3, a3, 248
.LBB5_7:                                # =>This Inner Loop Header: Depth=1
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
	bne	a0, a3, .LBB5_7
# %bb.8:
	lui	a0, %hi(OffsetList8x8)
	li	a2, 682
	sh	a2, %lo(OffsetList8x8)(a0)
	addi	a0, a0, %lo(OffsetList8x8)
	li	a1, 342
	sh	a1, 128(a0)
	sh	a1, 256(a0)
	sh	a1, 384(a0)
	sh	a1, 512(a0)
	sh	a2, 16(a0)
	sh	a1, 144(a0)
	sh	a1, 272(a0)
	sh	a1, 400(a0)
	sh	a1, 528(a0)
	sh	a2, 32(a0)
	sh	a1, 160(a0)
	sh	a1, 288(a0)
	sh	a1, 416(a0)
	sh	a1, 544(a0)
	sh	a2, 48(a0)
	sh	a1, 176(a0)
	sh	a1, 304(a0)
	sh	a1, 432(a0)
	sh	a1, 560(a0)
	sh	a2, 64(a0)
	sh	a1, 192(a0)
	sh	a1, 320(a0)
	sh	a1, 448(a0)
	sh	a1, 576(a0)
	sh	a2, 80(a0)
	sh	a1, 208(a0)
	sh	a1, 336(a0)
	sh	a1, 464(a0)
	sh	a1, 592(a0)
	sh	a2, 96(a0)
	sh	a1, 224(a0)
	sh	a1, 352(a0)
	sh	a1, 480(a0)
	sh	a1, 608(a0)
	sh	a2, 112(a0)
	sh	a1, 240(a0)
	sh	a1, 368(a0)
	sh	a1, 496(a0)
	sh	a1, 624(a0)
	sh	a2, 2(a0)
	sh	a1, 130(a0)
	sh	a1, 258(a0)
	sh	a1, 386(a0)
	sh	a1, 514(a0)
	sh	a2, 18(a0)
	sh	a1, 146(a0)
	sh	a1, 274(a0)
	sh	a1, 402(a0)
	sh	a1, 530(a0)
	sh	a2, 34(a0)
	sh	a1, 162(a0)
	sh	a1, 290(a0)
	sh	a1, 418(a0)
	sh	a1, 546(a0)
	sh	a2, 50(a0)
	sh	a1, 178(a0)
	sh	a1, 306(a0)
	sh	a1, 434(a0)
	sh	a1, 562(a0)
	sh	a2, 66(a0)
	sh	a1, 194(a0)
	sh	a1, 322(a0)
	sh	a1, 450(a0)
	sh	a1, 578(a0)
	sh	a2, 82(a0)
	sh	a1, 210(a0)
	sh	a1, 338(a0)
	sh	a1, 466(a0)
	sh	a1, 594(a0)
	sh	a2, 98(a0)
	sh	a1, 226(a0)
	sh	a1, 354(a0)
	sh	a1, 482(a0)
	sh	a1, 610(a0)
	sh	a2, 114(a0)
	sh	a1, 242(a0)
	sh	a1, 370(a0)
	sh	a1, 498(a0)
	sh	a1, 626(a0)
	sh	a2, 4(a0)
	sh	a1, 132(a0)
	sh	a1, 260(a0)
	sh	a1, 388(a0)
	sh	a1, 516(a0)
	sh	a2, 20(a0)
	sh	a1, 148(a0)
	sh	a1, 276(a0)
	sh	a1, 404(a0)
	sh	a1, 532(a0)
	sh	a2, 36(a0)
	sh	a1, 164(a0)
	sh	a1, 292(a0)
	sh	a1, 420(a0)
	sh	a1, 548(a0)
	sh	a2, 52(a0)
	sh	a1, 180(a0)
	sh	a1, 308(a0)
	sh	a1, 436(a0)
	sh	a1, 564(a0)
	sh	a2, 68(a0)
	sh	a1, 196(a0)
	sh	a1, 324(a0)
	sh	a1, 452(a0)
	sh	a1, 580(a0)
	sh	a2, 84(a0)
	sh	a1, 212(a0)
	sh	a1, 340(a0)
	sh	a1, 468(a0)
	sh	a1, 596(a0)
	sh	a2, 100(a0)
	sh	a1, 228(a0)
	sh	a1, 356(a0)
	sh	a1, 484(a0)
	sh	a1, 612(a0)
	sh	a2, 116(a0)
	sh	a1, 244(a0)
	sh	a1, 372(a0)
	sh	a1, 500(a0)
	sh	a1, 628(a0)
	sh	a2, 6(a0)
	sh	a1, 134(a0)
	sh	a1, 262(a0)
	sh	a1, 390(a0)
	sh	a1, 518(a0)
	sh	a2, 22(a0)
	sh	a1, 150(a0)
	sh	a1, 278(a0)
	sh	a1, 406(a0)
	sh	a1, 534(a0)
	sh	a2, 38(a0)
	sh	a1, 166(a0)
	sh	a1, 294(a0)
	sh	a1, 422(a0)
	sh	a1, 550(a0)
	sh	a2, 54(a0)
	sh	a1, 182(a0)
	sh	a1, 310(a0)
	sh	a1, 438(a0)
	sh	a1, 566(a0)
	sh	a2, 70(a0)
	sh	a1, 198(a0)
	sh	a1, 326(a0)
	sh	a1, 454(a0)
	sh	a1, 582(a0)
	sh	a2, 86(a0)
	sh	a1, 214(a0)
	sh	a1, 342(a0)
	sh	a1, 470(a0)
	sh	a1, 598(a0)
	sh	a2, 102(a0)
	sh	a1, 230(a0)
	sh	a1, 358(a0)
	sh	a1, 486(a0)
	sh	a1, 614(a0)
	sh	a2, 118(a0)
	sh	a1, 246(a0)
	sh	a1, 374(a0)
	sh	a1, 502(a0)
	sh	a1, 630(a0)
	sh	a2, 8(a0)
	sh	a1, 136(a0)
	sh	a1, 264(a0)
	sh	a1, 392(a0)
	sh	a1, 520(a0)
	sh	a2, 24(a0)
	sh	a1, 152(a0)
	sh	a1, 280(a0)
	sh	a1, 408(a0)
	sh	a1, 536(a0)
	sh	a2, 40(a0)
	sh	a1, 168(a0)
	sh	a1, 296(a0)
	sh	a1, 424(a0)
	sh	a1, 552(a0)
	sh	a2, 56(a0)
	sh	a1, 184(a0)
	sh	a1, 312(a0)
	sh	a1, 440(a0)
	sh	a1, 568(a0)
	sh	a2, 72(a0)
	sh	a1, 200(a0)
	sh	a1, 328(a0)
	sh	a1, 456(a0)
	sh	a1, 584(a0)
	sh	a2, 88(a0)
	sh	a1, 216(a0)
	sh	a1, 344(a0)
	sh	a1, 472(a0)
	sh	a1, 600(a0)
	sh	a2, 104(a0)
	sh	a1, 232(a0)
	sh	a1, 360(a0)
	sh	a1, 488(a0)
	sh	a1, 616(a0)
	sh	a2, 120(a0)
	sh	a1, 248(a0)
	sh	a1, 376(a0)
	sh	a1, 504(a0)
	sh	a1, 632(a0)
	sh	a2, 10(a0)
	sh	a1, 138(a0)
	sh	a1, 266(a0)
	sh	a1, 394(a0)
	sh	a1, 522(a0)
	sh	a2, 26(a0)
	sh	a1, 154(a0)
	sh	a1, 282(a0)
	sh	a1, 410(a0)
	sh	a1, 538(a0)
	sh	a2, 42(a0)
	sh	a1, 170(a0)
	sh	a1, 298(a0)
	sh	a1, 426(a0)
	sh	a1, 554(a0)
	sh	a2, 58(a0)
	sh	a1, 186(a0)
	sh	a1, 314(a0)
	sh	a1, 442(a0)
	sh	a1, 570(a0)
	sh	a2, 74(a0)
	sh	a1, 202(a0)
	sh	a1, 330(a0)
	sh	a1, 458(a0)
	sh	a1, 586(a0)
	sh	a2, 90(a0)
	sh	a1, 218(a0)
	sh	a1, 346(a0)
	sh	a1, 474(a0)
	sh	a1, 602(a0)
	sh	a2, 106(a0)
	sh	a1, 234(a0)
	sh	a1, 362(a0)
	sh	a1, 490(a0)
	sh	a1, 618(a0)
	sh	a2, 122(a0)
	sh	a1, 250(a0)
	sh	a1, 378(a0)
	sh	a1, 506(a0)
	sh	a1, 634(a0)
	sh	a2, 12(a0)
	sh	a1, 140(a0)
	sh	a1, 268(a0)
	sh	a1, 396(a0)
	sh	a1, 524(a0)
	sh	a2, 28(a0)
	sh	a1, 156(a0)
	sh	a1, 284(a0)
	sh	a1, 412(a0)
	sh	a1, 540(a0)
	sh	a2, 44(a0)
	sh	a1, 172(a0)
	sh	a1, 300(a0)
	sh	a1, 428(a0)
	sh	a1, 556(a0)
	sh	a2, 60(a0)
	sh	a1, 188(a0)
	sh	a1, 316(a0)
	sh	a1, 444(a0)
	sh	a1, 572(a0)
	sh	a2, 76(a0)
	sh	a1, 204(a0)
	sh	a1, 332(a0)
	sh	a1, 460(a0)
	sh	a1, 588(a0)
	sh	a2, 92(a0)
	sh	a1, 220(a0)
	sh	a1, 348(a0)
	sh	a1, 476(a0)
	sh	a1, 604(a0)
	sh	a2, 108(a0)
	sh	a1, 236(a0)
	sh	a1, 364(a0)
	sh	a1, 492(a0)
	sh	a1, 620(a0)
	sh	a2, 124(a0)
	sh	a1, 252(a0)
	sh	a1, 380(a0)
	sh	a1, 508(a0)
	sh	a1, 636(a0)
	sh	a2, 14(a0)
	sh	a1, 142(a0)
	sh	a1, 270(a0)
	sh	a1, 398(a0)
	sh	a1, 526(a0)
	sh	a2, 30(a0)
	sh	a1, 158(a0)
	sh	a1, 286(a0)
	sh	a1, 414(a0)
	sh	a1, 542(a0)
	sh	a2, 46(a0)
	sh	a1, 174(a0)
	sh	a1, 302(a0)
	sh	a1, 430(a0)
	sh	a1, 558(a0)
	sh	a2, 62(a0)
	sh	a1, 190(a0)
	sh	a1, 318(a0)
	sh	a1, 446(a0)
	sh	a1, 574(a0)
	sh	a2, 78(a0)
	sh	a1, 206(a0)
	sh	a1, 334(a0)
	sh	a1, 462(a0)
	sh	a1, 590(a0)
	sh	a2, 94(a0)
	sh	a1, 222(a0)
	sh	a1, 350(a0)
	sh	a1, 478(a0)
	sh	a1, 606(a0)
	sh	a2, 110(a0)
	sh	a1, 238(a0)
	sh	a1, 366(a0)
	sh	a1, 494(a0)
	sh	a1, 622(a0)
	sh	a2, 126(a0)
	sh	a1, 254(a0)
	sh	a1, 382(a0)
	sh	a1, 510(a0)
	sh	a1, 638(a0)
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
	ld	a2, %lo(img)(a0)
	lw	a1, 24(a2)
	lui	a0, 22
	addiw	a0, a0, 204
	li	a3, 3
	add	a2, a2, a0
	beq	a1, a3, .LBB6_3
# %bb.1:
	li	a3, 4
	li	a0, 2
	beq	a1, a3, .LBB6_4
# %bb.2:
	mv	a0, a1
	j	.LBB6_4
.LBB6_3:
	li	a0, 0
.LBB6_4:
	lw	a1, 176(a2)
	addiw	a1, a1, 51
	lui	a3, 174763
	addiw	a3, a3, -1365
	mul	a1, a1, a3
	srli	a4, a1, 63
	lw	a5, 180(a2)
	srli	a1, a1, 32
	add	a1, a1, a4
	addiw	a1, a1, 1
	addiw	a4, a5, 51
	lw	a2, 0(a2)
	mul	a3, a4, a3
	lui	a4, %hi(input)
	ld	a4, %lo(input)(a4)
	snez	a2, a2
	li	a5, 20
	mul	a2, a2, a5
	slli	a5, a0, 2
	add	a4, a4, a5
	lui	a5, 1
	add	a4, a4, a5
	srli	a5, a3, 63
	srli	a3, a3, 32
	add	a2, a4, a2
	lw	a4, 176(a2)
	add	a2, a3, a5
	addiw	a2, a2, 1
	lui	a3, %hi(AdaptRndWeight)
	sw	a4, %lo(AdaptRndWeight)(a3)
	blt	a2, a1, .LBB6_6
# %bb.5:
	mv	a1, a2
.LBB6_6:
	blez	a1, .LBB6_31
# %bb.7:
	li	a2, 0
	lui	a3, %hi(LevelOffset4x4Luma)
	lui	a4, %hi(LevelOffset4x4Chroma)
	lui	a5, %hi(OffsetList4x4)
	addi	a5, a5, %lo(OffsetList4x4)
	addi	a6, a5, 448
	addi	a7, a5, 416
	addi	t0, a5, 384
	addi	t1, a5, 256
	addi	t2, a5, 224
	addi	t3, a5, 192
	li	t4, 1
	li	t5, 32
	li	t6, 2
	regsw_c	x9, 0x124(x18)		# 100100100100100100100
	addi	x1, a5, 352
	addi	x2, a5, 320
	addi	x3, a5, 288
	addi	x4, a5, 64
	addi	x5, a5, 32
	addi	x6, a5, 160
	addi	x7, a5, 128
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addi	x8, a5, 96
	j	.LBB6_9
.LBB6_8:                                #   in Loop: Header=BB6_9 Depth=1
	addi	a2, a2, 1
	beq	a2, a1, .LBB6_31
.LBB6_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_13 Depth 2
	regsw_c	x9, 0x0(x18)		# 100100100100000000000
	li	x9, 0
	addi	x10, a2, 4
	li	x11, 24
	slli	x12, a2, 3
	j	.LBB6_13
.LBB6_10:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x12, 0x0(x27)		# 110110110000000000000
	mv	x21, x8
	mv	x20, x7
	mv	x19, x6
.LBB6_11:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x12, 0x0(x27)		# 110110110000000000000
	mv	x17, x3
	mv	x16, x2
	mv	x15, x1
.LBB6_12:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x13, 0x5fe(x31)		# 111110110110111111110
	add	x21, x21, x11
	ld	x22, 0(x14)
	lh	x21, 0(x21)
	ld	x23, 8(x22)
	sllw	x21, x21, x10
	add	x20, x20, x11
	lh	x20, 0(x20)
	regsw_c	x12, 0x7fe(x31)		# 111110110011111111110
	add	x23, x23, x12
	ld	x23, 0(x23)
	ld	x14, 8(x14)
	sw	x21, 12(x18)
	sllw	x18, x20, x10
	add	x23, x23, x9
	ld	x20, 8(x14)
	regsw_c	x29, 0x7b3(x27)		# 110111110111110110011
	ld	x21, 0(x23)
	add	x19, x19, x11
	lh	x19, 0(x19)
	add	x20, x20, x12
	ld	x20, 0(x20)
	ld	x13, 0(x13)
	sw	x18, 12(x21)
	regsw_c	x31, 0x5be(x31)		# 111111111110110111110
	sllw	x18, x19, x10
	add	x20, x20, x9
	add	x13, x13, x12
	ld	x13, 0(x13)
	ld	x19, 0(x20)
	add	x17, x17, x11
	lh	x17, 0(x17)
	regsw_c	x12, 0x7df(x31)		# 111110110011111011111
	add	x13, x13, x9
	ld	x13, 0(x13)
	ld	x20, 0(x22)
	sw	x18, 12(x19)
	sllw	x17, x17, x10
	sw	x17, 12(x13)
	add	x20, x20, x12
	regsw_c	x15, 0x5fe(x27)		# 110110111110111111110
	ld	x13, 0(x20)
	ld	x14, 0(x14)
	add	x16, x16, x11
	lh	x16, 0(x16)
	add	x13, x13, x9
	add	x14, x14, x12
	ld	x14, 0(x14)
	regsw_c	x29, 0x7bb(x27)		# 110111110111110111011
	ld	x13, 0(x13)
	add	x15, x15, x11
	lh	x15, 0(x15)
	add	x14, x14, x9
	ld	x14, 0(x14)
	sllw	x16, x16, x10
	sw	x16, 12(x13)
	regsw_c	x29, 0x480(x29)		# 111011110110010000000
	sllw	x13, x15, x10
	sw	x13, 12(x14)
	addi	x9, x9, 8
	addi	x11, x11, 2
	beq	x9, t5, .LBB6_8
.LBB6_13:                               #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x9, 0x120(x18)		# 100100100100100100000
	mv	x20, t3
	mv	x19, t2
	mv	x18, t1
	mv	x17, t0
	mv	x16, a7
	mv	x15, a6
	beq	a0, t4, .LBB6_18
# %bb.14:                               #   in Loop: Header=BB6_13 Depth=2
	bne	a0, t6, .LBB6_16
# %bb.15:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x12, 0x0(x19)		# 100110110000000000000
	mv	x20, a5
	mv	x19, x5
	mv	x18, x4
	j	.LBB6_17
.LBB6_16:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x12, 0x0(x27)		# 110110110000000000000
	mv	x20, x8
	mv	x19, x7
	mv	x18, x6
.LBB6_17:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x12, 0x0(x27)		# 110110110000000000000
	mv	x17, x3
	mv	x16, x2
	mv	x15, x1
.LBB6_18:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x9, 0x7be(x19)		# 100110100111110111110
	ld	x13, %lo(LevelOffset4x4Luma)(a3)
	ld	x21, 8(x13)
	ld	x14, %lo(LevelOffset4x4Chroma)(a4)
	add	x21, x21, x12
	ld	x21, 0(x21)
	add	x20, x20, x11
	ld	x22, 0(x14)
	regsw_c	x29, 0x5fe(x27)		# 110111110110111111110
	lh	x20, -24(x20)
	add	x21, x21, x9
	ld	x21, 0(x21)
	ld	x23, 8(x22)
	sllw	x20, x20, x10
	add	x19, x19, x11
	lh	x19, -24(x19)
	regsw_c	x12, 0x7fe(x31)		# 111110110011111111110
	add	x23, x23, x12
	ld	x23, 0(x23)
	ld	x24, 8(x14)
	sw	x20, 0(x21)
	sllw	x19, x19, x10
	add	x23, x23, x9
	ld	x20, 8(x24)
	regsw_c	x29, 0x7b3(x27)		# 110111110111110110011
	ld	x21, 0(x23)
	add	x18, x18, x11
	lh	x18, -24(x18)
	add	x20, x20, x12
	ld	x20, 0(x20)
	ld	x23, 0(x13)
	sw	x19, 0(x21)
	regsw_c	x31, 0x5be(x31)		# 111111111110110111110
	sllw	x18, x18, x10
	add	x20, x20, x9
	add	x23, x23, x12
	ld	x19, 0(x23)
	ld	x20, 0(x20)
	add	x17, x17, x11
	lh	x17, -24(x17)
	regsw_c	x12, 0x7df(x31)		# 111110110011111011111
	add	x19, x19, x9
	ld	x19, 0(x19)
	ld	x21, 0(x22)
	sw	x18, 0(x20)
	sllw	x17, x17, x10
	sw	x17, 0(x19)
	add	x21, x21, x12
	regsw_c	x15, 0x5fe(x27)		# 110110111110111111110
	ld	x17, 0(x21)
	ld	x18, 0(x24)
	add	x16, x16, x11
	lh	x16, -24(x16)
	add	x17, x17, x9
	add	x18, x18, x12
	ld	x18, 0(x18)
	regsw_c	x29, 0x7bb(x27)		# 110111110111110111011
	ld	x17, 0(x17)
	add	x15, x15, x11
	lh	x15, -24(x15)
	add	x18, x18, x9
	ld	x18, 0(x18)
	sllw	x16, x16, x10
	sw	x16, 0(x17)
	regsw_c	x25, 0x124(x29)		# 111011100100100100100
	sllw	x15, x15, x10
	sw	x15, 0(x18)
	mv	x20, t3
	mv	x19, t2
	mv	x18, t1
	mv	x17, t0
	mv	x16, a7
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x15, a6
	beq	a0, t4, .LBB6_23
# %bb.19:                               #   in Loop: Header=BB6_13 Depth=2
	bne	a0, t6, .LBB6_21
# %bb.20:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x12, 0x0(x19)		# 100110110000000000000
	mv	x20, a5
	mv	x19, x5
	mv	x18, x4
	j	.LBB6_22
.LBB6_21:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x12, 0x0(x27)		# 110110110000000000000
	mv	x20, x8
	mv	x19, x7
	mv	x18, x6
.LBB6_22:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x12, 0x0(x27)		# 110110110000000000000
	mv	x17, x3
	mv	x16, x2
	mv	x15, x1
.LBB6_23:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x29, 0x5f6(x27)		# 110111110110111110110
	ld	x21, 8(x13)
	add	x21, x21, x12
	ld	x22, 0(x14)
	ld	x21, 0(x21)
	add	x20, x20, x11
	lh	x20, -16(x20)
	ld	x23, 8(x22)
	regsw_c	x15, 0x7be(x31)		# 111110111111110111110
	add	x21, x21, x9
	ld	x21, 0(x21)
	sllw	x20, x20, x10
	add	x23, x23, x12
	ld	x23, 0(x23)
	add	x19, x19, x11
	ld	x24, 8(x14)
	regsw_c	x29, 0x4fb(x27)		# 110111110110011111011
	lh	x19, -16(x19)
	add	x23, x23, x9
	ld	x23, 0(x23)
	ld	x25, 8(x24)
	sw	x20, 4(x21)
	sllw	x19, x19, x10
	sw	x19, 4(x23)
	regsw_c	x15, 0x5be(x31)		# 111110111110110111110
	add	x25, x25, x12
	ld	x19, 0(x25)
	add	x18, x18, x11
	lh	x18, -16(x18)
	ld	x20, 0(x13)
	add	x19, x19, x9
	ld	x19, 0(x19)
	regsw_c	x28, 0x7f7(x31)		# 111111110011111110111
	sllw	x18, x18, x10
	add	x20, x20, x12
	ld	x20, 0(x20)
	sw	x18, 4(x19)
	add	x17, x17, x11
	lh	x17, -16(x17)
	add	x20, x20, x9
	regsw_c	x15, 0x5f7(x27)		# 110110111110111110111
	ld	x18, 0(x22)
	ld	x19, 0(x20)
	add	x16, x16, x11
	lh	x16, -16(x16)
	add	x18, x18, x12
	ld	x18, 0(x18)
	sllw	x17, x17, x10
	regsw_c	x31, 0x5b7(x15)		# 011111111110110110111
	sw	x17, 4(x19)
	sllw	x16, x16, x10
	add	x18, x18, x9
	ld	x17, 0(x24)
	ld	x19, 0(x18)
	ld	x18, 8(x13)
	add	x15, x15, x11
	regsw_c	x15, 0x5be(x31)		# 111110111110110111110
	add	x17, x17, x12
	ld	x17, 0(x17)
	add	x18, x18, x12
	ld	x18, 0(x18)
	lh	x15, -16(x15)
	add	x17, x17, x9
	ld	x17, 0(x17)
	regsw_c	x7, 0x6e4(x31)		# 111110011111011100100
	add	x18, x18, x9
	ld	x18, 0(x18)
	sw	x16, 4(x19)
	sllw	x15, x15, x10
	sw	x15, 4(x17)
	mv	x21, t3
	mv	x20, t2
	regsw_c	x9, 0x0(x18)		# 100100100100000000000
	mv	x19, t1
	mv	x17, t0
	mv	x16, a7
	mv	x15, a6
	beq	a0, t4, .LBB6_28
# %bb.24:                               #   in Loop: Header=BB6_13 Depth=2
	bne	a0, t6, .LBB6_26
# %bb.25:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x12, 0x0(x19)		# 100110110000000000000
	mv	x21, a5
	mv	x20, x5
	mv	x19, x4
	j	.LBB6_27
.LBB6_26:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x12, 0x0(x27)		# 110110110000000000000
	mv	x21, x8
	mv	x20, x7
	mv	x19, x6
.LBB6_27:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x12, 0x0(x27)		# 110110110000000000000
	mv	x17, x3
	mv	x16, x2
	mv	x15, x1
.LBB6_28:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x29, 0x5fe(x27)		# 110111110110111111110
	ld	x22, 0(x14)
	add	x21, x21, x11
	lh	x21, -8(x21)
	ld	x23, 8(x22)
	sllw	x21, x21, x10
	add	x23, x23, x12
	ld	x23, 0(x23)
	regsw_c	x13, 0x7b3(x31)		# 111110110111110110011
	add	x20, x20, x11
	ld	x24, 8(x14)
	lh	x20, -8(x20)
	add	x23, x23, x9
	ld	x23, 0(x23)
	ld	x25, 8(x24)
	sw	x21, 8(x18)
	regsw_c	x31, 0x5f6(x29)		# 111011111110111110110
	sllw	x18, x20, x10
	sw	x18, 8(x23)
	add	x25, x25, x12
	ld	x18, 0(x25)
	add	x19, x19, x11
	lh	x19, -8(x19)
	ld	x20, 0(x13)
	regsw_c	x15, 0x79f(x31)		# 111110111111110011111
	add	x18, x18, x9
	ld	x18, 0(x18)
	sllw	x19, x19, x10
	add	x20, x20, x12
	ld	x20, 0(x20)
	sw	x19, 8(x18)
	add	x17, x17, x11
	regsw_c	x29, 0x5f7(x27)		# 110111110110111110111
	lh	x17, -8(x17)
	add	x20, x20, x9
	ld	x18, 0(x22)
	ld	x19, 0(x20)
	add	x16, x16, x11
	lh	x16, -8(x16)
	add	x18, x18, x12
	regsw_c	x23, 0x7f6(x27)		# 110111011111111110110
	ld	x18, 0(x18)
	sllw	x17, x17, x10
	sw	x17, 8(x19)
	sllw	x16, x16, x10
	add	x18, x18, x9
	ld	x17, 0(x24)
	ld	x19, 0(x18)
	regsw_c	x31, 0x5f6(x27)		# 110111111110111110110
	ld	x18, 8(x13)
	add	x15, x15, x11
	add	x17, x17, x12
	ld	x17, 0(x17)
	add	x18, x18, x12
	ld	x18, 0(x18)
	lh	x15, -8(x15)
	regsw_c	x15, 0x4fb(x31)		# 111110111110011111011
	add	x17, x17, x9
	ld	x17, 0(x17)
	add	x18, x18, x9
	ld	x18, 0(x18)
	sw	x16, 8(x19)
	sllw	x15, x15, x10
	sw	x15, 8(x17)
	regsw_c	x9, 0x120(x18)		# 100100100100100100000
	mv	x21, t3
	mv	x20, t2
	mv	x19, t1
	mv	x17, t0
	mv	x16, a7
	mv	x15, a6
	beq	a0, t4, .LBB6_12
# %bb.29:                               #   in Loop: Header=BB6_13 Depth=2
	bne	a0, t6, .LBB6_10
# %bb.30:                               #   in Loop: Header=BB6_13 Depth=2
	regsw_c	x12, 0x0(x19)		# 100110110000000000000
	mv	x21, a5
	mv	x20, x5
	mv	x19, x4
	j	.LBB6_11
.LBB6_31:
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
	blez	a1, .LBB7_55
# %bb.3:
	li	a2, 0
	lui	a3, %hi(LevelOffset8x8Luma)
	lui	a4, %hi(OffsetList8x8)
	addi	a4, a4, %lo(OffsetList8x8)
	addi	a5, a4, 128
	addi	a6, a4, 256
	li	a7, 1
	li	t0, 2
	addi	t1, a4, 384
	addi	t2, a4, 512
	li	t3, 64
	j	.LBB7_5
.LBB7_4:                                #   in Loop: Header=BB7_5 Depth=1
	addi	a2, a2, 1
	beq	a2, a1, .LBB7_55
.LBB7_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
	li	t4, 0
	addi	t5, a2, 5
	li	t6, 112
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	slli	x1, a2, 3
	j	.LBB7_7
.LBB7_6:                                #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x29, 0x5b6(x27)		# 110111110110110110110
	ld	x2, 0(x2)
	add	x2, x2, x1
	ld	x2, 0(x2)
	add	x3, x3, t6
	lh	x3, 0(x3)
	add	x2, x2, t4
	ld	x2, 0(x2)
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	sllw	x3, x3, t5
	sw	x3, 28(x2)
	addi	t4, t4, 8
	addi	t6, t6, 2
	beq	t4, t3, .LBB7_4
.LBB7_7:                                #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x4, 0x0(x18)		# 100100010000000000000
	lw	x2, 24(a0)
	mv	x4, a6
	beq	x2, a7, .LBB7_9
# %bb.8:                                #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x4, a5
.LBB7_9:                                #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x3, a4
	beq	x2, t0, .LBB7_11
# %bb.10:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x3, x4
.LBB7_11:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x15, 0x5b6(x19)		# 100110111110110110110
	ld	x2, %lo(LevelOffset8x8Luma)(a3)
	ld	x4, 8(x2)
	add	x4, x4, x1
	ld	x4, 0(x4)
	add	x4, x4, t4
	add	x3, x3, t6
	lh	x5, -112(x3)
	regsw_c	x7, 0x110(x27)		# 110110011100100010000
	ld	x3, 0(x4)
	sllw	x4, x5, t5
	sw	x4, 0(x3)
	lw	x5, 24(a0)
	mv	x4, t2
	beq	x5, a7, .LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x4, t1
.LBB7_13:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x29, 0x5b6(x27)		# 110111110110110110110
	ld	x5, 0(x2)
	add	x5, x5, x1
	ld	x5, 0(x5)
	add	x4, x4, t6
	lh	x6, -112(x4)
	add	x5, x5, t4
	ld	x4, 0(x5)
	regsw_c	x25, 0x80(x25)		# 110011100100010000000
	sllw	x5, x6, t5
	sw	x5, 0(x4)
	lw	x5, 24(a0)
	mv	x6, a6
	beq	x5, a7, .LBB7_15
# %bb.14:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x6, a5
.LBB7_15:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x7, a4
	beq	x5, t0, .LBB7_17
# %bb.16:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x7, x6
.LBB7_17:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x12, 0x722(x27)		# 110110110011100100010
	add	x7, x7, t6
	lh	x5, -96(x7)
	sllw	x5, x5, t5
	sw	x5, 4(x3)
	lw	x5, 24(a0)
	mv	x3, t2
	beq	x5, a7, .LBB7_19
# %bb.18:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x3, t1
.LBB7_19:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x13, 0x7b3(x27)		# 110110110111110110011
	ld	x5, 8(x2)
	add	x3, x3, t6
	lh	x3, -96(x3)
	add	x5, x5, x1
	ld	x5, 0(x5)
	sllw	x3, x3, t5
	sw	x3, 4(x4)
	regsw_c	x13, 0x80(x19)		# 100110110100010000000
	lw	x4, 24(a0)
	add	x5, x5, t4
	ld	x3, 0(x5)
	mv	x5, a6
	beq	x4, a7, .LBB7_21
# %bb.20:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, a5
.LBB7_21:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x6, a4
	beq	x4, t0, .LBB7_23
# %bb.22:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x6, x5
.LBB7_23:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x12, 0x722(x27)		# 110110110011100100010
	add	x6, x6, t6
	lh	x4, -80(x6)
	sllw	x4, x4, t5
	sw	x4, 8(x3)
	lw	x4, 24(a0)
	mv	x3, t2
	beq	x4, a7, .LBB7_25
# %bb.24:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x3, t1
.LBB7_25:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x29, 0x5b6(x27)		# 110111110110110110110
	ld	x4, 0(x2)
	add	x4, x4, x1
	ld	x4, 0(x4)
	add	x3, x3, t6
	ld	x5, 8(x2)
	lh	x3, -80(x3)
	add	x4, x4, t4
	regsw_c	x29, 0x4e6(x27)		# 110111110110011100110
	ld	x4, 0(x4)
	add	x5, x5, x1
	ld	x5, 0(x5)
	sllw	x3, x3, t5
	sw	x3, 8(x4)
	lw	x4, 24(a0)
	add	x5, x5, t4
	regsw_c	x4, 0x0(x26)		# 110100010000000000000
	ld	x3, 0(x5)
	mv	x5, a6
	beq	x4, a7, .LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, a5
.LBB7_27:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x6, a4
	beq	x4, t0, .LBB7_29
# %bb.28:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x6, x5
.LBB7_29:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x12, 0x722(x27)		# 110110110011100100010
	add	x6, x6, t6
	lh	x4, -64(x6)
	sllw	x4, x4, t5
	sw	x4, 12(x3)
	lw	x4, 24(a0)
	mv	x3, t2
	beq	x4, a7, .LBB7_31
# %bb.30:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x3, t1
.LBB7_31:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x29, 0x5b6(x27)		# 110111110110110110110
	ld	x4, 0(x2)
	add	x4, x4, x1
	ld	x4, 0(x4)
	add	x3, x3, t6
	ld	x5, 8(x2)
	lh	x3, -64(x3)
	add	x4, x4, t4
	regsw_c	x29, 0x4e6(x27)		# 110111110110011100110
	ld	x4, 0(x4)
	add	x5, x5, x1
	ld	x5, 0(x5)
	sllw	x3, x3, t5
	sw	x3, 12(x4)
	lw	x4, 24(a0)
	add	x5, x5, t4
	regsw_c	x4, 0x0(x26)		# 110100010000000000000
	ld	x3, 0(x5)
	mv	x5, a6
	beq	x4, a7, .LBB7_33
# %bb.32:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, a5
.LBB7_33:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x6, a4
	beq	x4, t0, .LBB7_35
# %bb.34:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x6, x5
.LBB7_35:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x12, 0x722(x27)		# 110110110011100100010
	add	x6, x6, t6
	lh	x4, -48(x6)
	sllw	x4, x4, t5
	sw	x4, 16(x3)
	lw	x4, 24(a0)
	mv	x3, t2
	beq	x4, a7, .LBB7_37
# %bb.36:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x3, t1
.LBB7_37:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x29, 0x5b6(x27)		# 110111110110110110110
	ld	x4, 0(x2)
	add	x4, x4, x1
	ld	x4, 0(x4)
	add	x3, x3, t6
	ld	x5, 8(x2)
	lh	x3, -48(x3)
	add	x4, x4, t4
	regsw_c	x29, 0x4e6(x27)		# 110111110110011100110
	ld	x4, 0(x4)
	add	x5, x5, x1
	ld	x5, 0(x5)
	sllw	x3, x3, t5
	sw	x3, 16(x4)
	lw	x4, 24(a0)
	add	x5, x5, t4
	regsw_c	x4, 0x0(x26)		# 110100010000000000000
	ld	x3, 0(x5)
	mv	x5, a6
	beq	x4, a7, .LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, a5
.LBB7_39:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x6, a4
	beq	x4, t0, .LBB7_41
# %bb.40:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x6, x5
.LBB7_41:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x12, 0x722(x27)		# 110110110011100100010
	add	x6, x6, t6
	lh	x4, -32(x6)
	sllw	x4, x4, t5
	sw	x4, 20(x3)
	lw	x4, 24(a0)
	mv	x3, t2
	beq	x4, a7, .LBB7_43
# %bb.42:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x3, t1
.LBB7_43:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x29, 0x5b6(x27)		# 110111110110110110110
	ld	x4, 0(x2)
	add	x4, x4, x1
	ld	x4, 0(x4)
	add	x3, x3, t6
	ld	x5, 8(x2)
	lh	x3, -32(x3)
	add	x4, x4, t4
	regsw_c	x29, 0x4e6(x27)		# 110111110110011100110
	ld	x4, 0(x4)
	add	x5, x5, x1
	ld	x5, 0(x5)
	sllw	x3, x3, t5
	sw	x3, 20(x4)
	lw	x4, 24(a0)
	add	x5, x5, t4
	regsw_c	x4, 0x0(x26)		# 110100010000000000000
	ld	x3, 0(x5)
	mv	x5, a6
	beq	x4, a7, .LBB7_45
# %bb.44:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, a5
.LBB7_45:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x6, a4
	beq	x4, t0, .LBB7_47
# %bb.46:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x6, x5
.LBB7_47:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x12, 0x722(x27)		# 110110110011100100010
	add	x6, x6, t6
	lh	x4, -16(x6)
	sllw	x4, x4, t5
	sw	x4, 24(x3)
	lw	x4, 24(a0)
	mv	x3, t2
	beq	x4, a7, .LBB7_49
# %bb.48:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x3, t1
.LBB7_49:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x29, 0x5b6(x27)		# 110111110110110110110
	ld	x4, 0(x2)
	add	x4, x4, x1
	ld	x4, 0(x4)
	add	x3, x3, t6
	ld	x5, 8(x2)
	lh	x3, -16(x3)
	add	x4, x4, t4
	regsw_c	x29, 0x4e6(x27)		# 110111110110011100110
	ld	x4, 0(x4)
	add	x5, x5, x1
	ld	x5, 0(x5)
	sllw	x3, x3, t5
	sw	x3, 24(x4)
	lw	x4, 24(a0)
	add	x5, x5, t4
	regsw_c	x4, 0x0(x26)		# 110100010000000000000
	ld	x3, 0(x5)
	mv	x5, a6
	beq	x4, a7, .LBB7_51
# %bb.50:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x5, a5
.LBB7_51:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	mv	x6, a4
	beq	x4, t0, .LBB7_53
# %bb.52:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x6, x5
.LBB7_53:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x12, 0x722(x27)		# 110110110011100100010
	add	x6, x6, t6
	lh	x4, 0(x6)
	sllw	x4, x4, t5
	sw	x4, 28(x3)
	lw	x4, 24(a0)
	mv	x3, t2
	beq	x4, a7, .LBB7_6
# %bb.54:                               #   in Loop: Header=BB7_7 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x3, t1
	j	.LBB7_6
.LBB7_55:
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
