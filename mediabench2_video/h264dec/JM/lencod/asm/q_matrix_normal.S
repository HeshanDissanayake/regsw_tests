	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"q_matrix.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CheckParameterName              # -- Begin function CheckParameterName
	.p2align	2
	.type	CheckParameterName,@function
CheckParameterName:                     # @CheckParameterName
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a1
	mv	s0, a0
	sw	zero, 0(a1)
	lui	s2, %hi(MatrixType4x4)
	addi	s2, s2, %lo(MatrixType4x4)
	mv	a0, s2
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB0_13
# %bb.1:
	addi	a0, s2, 20
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB0_8
# %bb.2:
	addi	a0, s2, 40
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB0_9
# %bb.3:
	addi	a0, s2, 60
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB0_10
# %bb.4:
	addi	a0, s2, 80
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB0_11
# %bb.5:
	addi	a0, s2, 100
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB0_12
# %bb.6:
	li	a0, 1
	sw	a0, 0(s1)
	lui	s1, %hi(MatrixType8x8)
	addi	s1, s1, %lo(MatrixType8x8)
	mv	a0, s1
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB0_13
# %bb.7:
	addi	a0, s1, 20
	mv	a1, s0
	call	strcmp
	seqz	a0, a0
	addi	a0, a0, -1
	ori	a0, a0, 1
	j	.LBB0_13
.LBB0_8:
	li	a0, 1
	j	.LBB0_13
.LBB0_9:
	li	a0, 2
	j	.LBB0_13
.LBB0_10:
	li	a0, 3
	j	.LBB0_13
.LBB0_11:
	li	a0, 4
	j	.LBB0_13
.LBB0_12:
	li	a0, 5
.LBB0_13:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	CheckParameterName, .Lfunc_end0-CheckParameterName
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	ParseMatrix                     # -- Begin function ParseMatrix
	.p2align	2
	.type	ParseMatrix,@function
ParseMatrix:                            # @ParseMatrix
# %bb.0:
	blez	a1, .LBB1_39
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
	lui	a5, %hi(.LJTI1_0)
	addi	a5, a5, %lo(.LJTI1_0)
	li	a6, 10
	j	.LBB1_4
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	li	a7, 0
	li	t0, 0
	addi	t1, a0, 1
	sb	zero, 0(a0)
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	mv	a0, t1
	bgeu	t1, a1, .LBB1_22
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
	lbu	t1, 0(a0)
	addi	t1, t1, -9
	bltu	a3, t1, .LBB1_8
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	slli	t1, t1, 2
	add	t1, t1, a5
	lw	t1, 0(t1)
	jr	t1
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=1
	addi	t1, a0, 1
	beqz	a7, .LBB1_19
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	li	a7, -1
	j	.LBB1_3
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=1
	bnez	t0, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	slli	t0, a2, 3
	addiw	a2, a2, 1
	add	t0, a4, t0
	sd	a0, 0(t0)
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=1
	addi	t1, a0, 1
	li	t0, -1
	j	.LBB1_3
.LBB1_11:                               #   in Loop: Header=BB1_4 Depth=1
	sb	zero, 0(a0)
.LBB1_12:                               #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	t1, a0, 1
	bgeu	a0, a1, .LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=2
	lbu	a7, 0(a0)
	mv	a0, t1
	bne	a7, a6, .LBB1_12
.LBB1_14:                               # %.loopexit1
                                        #   in Loop: Header=BB1_4 Depth=1
	li	a7, 0
	li	t0, 0
	addi	t1, t1, -1
	j	.LBB1_3
.LBB1_15:                               #   in Loop: Header=BB1_4 Depth=1
	li	t0, 0
.LBB1_16:                               #   in Loop: Header=BB1_4 Depth=1
	addi	t1, a0, 1
	j	.LBB1_3
.LBB1_17:                               #   in Loop: Header=BB1_4 Depth=1
	addi	t1, a0, 1
	sb	zero, 0(a0)
	beqz	a7, .LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_4 Depth=1
	li	t2, 0
	j	.LBB1_21
.LBB1_19:                               #   in Loop: Header=BB1_4 Depth=1
	li	t0, 0
	sb	zero, 0(a0)
	j	.LBB1_3
.LBB1_20:                               #   in Loop: Header=BB1_4 Depth=1
	slli	a0, a2, 3
	addiw	a2, a2, 1
	add	a0, a4, a0
	sd	t1, 0(a0)
	not	t2, t0
.LBB1_21:                               #   in Loop: Header=BB1_4 Depth=1
	not	a7, a7
	mv	t0, t2
	j	.LBB1_3
.LBB1_22:
	li	a0, 2
	blt	a2, a0, .LBB1_38
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
	j	.LBB1_25
.LBB1_24:                               #   in Loop: Header=BB1_25 Depth=1
	li	a0, 46
	call	putchar
	addw	a0, s10, s1
	add	s10, s10, s1
	addi	s9, sp, 24
	li	s4, 61
	bge	a0, s7, .LBB1_38
.LBB1_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
	slli	s1, s10, 3
	add	s1, s9, s1
	ld	s5, 0(s1)
	addi	a1, sp, 16
	mv	a0, s5
	call	CheckParameterName
	mv	s6, a0
	bltz	a0, .LBB1_28
# %bb.26:                               #   in Loop: Header=BB1_25 Depth=1
	ld	a0, 8(s1)
	lbu	a1, 0(a0)
	bne	a1, s4, .LBB1_29
.LBB1_27:                               #   in Loop: Header=BB1_25 Depth=1
	lbu	a0, 1(a0)
	neg	a0, a0
	bnez	a0, .LBB1_30
	j	.LBB1_31
.LBB1_28:                               #   in Loop: Header=BB1_25 Depth=1
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
	beq	a1, s4, .LBB1_27
.LBB1_29:                               #   in Loop: Header=BB1_25 Depth=1
	sub	a0, s4, a1
	beqz	a0, .LBB1_31
.LBB1_30:                               #   in Loop: Header=BB1_25 Depth=1
	li	a2, 78
	mv	a0, s0
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	call	memcpy
	li	a1, 300
	mv	a0, s0
	call	error
.LBB1_31:                               #   in Loop: Header=BB1_25 Depth=1
	lw	a1, 16(sp)
	slli	a0, s6, 2
	beqz	a1, .LBB1_33
# %bb.32:                               #   in Loop: Header=BB1_25 Depth=1
	slli	s4, s6, 7
	lui	a1, %hi(ScalingList8x8input)
	addi	a1, a1, %lo(ScalingList8x8input)
	add	s4, a1, s4
	lui	a1, %hi(matrix8x8_check)
	addi	a1, a1, %lo(matrix8x8_check)
	add	a0, a1, a0
	li	s1, 64
	j	.LBB1_34
.LBB1_33:                               #   in Loop: Header=BB1_25 Depth=1
	slli	s4, s6, 5
	lui	a1, %hi(ScalingList4x4input)
	addi	a1, a1, %lo(ScalingList4x4input)
	add	s4, a1, s4
	lui	a1, %hi(matrix4x4_check)
	addi	a1, a1, %lo(matrix4x4_check)
	add	a0, a1, a0
	li	s1, 16
.LBB1_34:                               #   in Loop: Header=BB1_25 Depth=1
	sw	s11, 0(a0)
	addi	s10, s10, 2
	slli	s8, s10, 3
	add	s8, s9, s8
	slli	s9, s1, 1
	add	s9, s4, s9
	j	.LBB1_36
.LBB1_35:                               #   in Loop: Header=BB1_36 Depth=2
	lh	a0, 20(sp)
	sh	a0, 0(s4)
	addi	s4, s4, 2
	addi	s8, s8, 8
	beq	s4, s9, .LBB1_24
.LBB1_36:                               #   Parent Loop BB1_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s6, 0(s8)
	addi	a2, sp, 20
	mv	a0, s6
	mv	a1, s2
	call	__isoc99_sscanf
	beq	a0, s11, .LBB1_35
# %bb.37:                               #   in Loop: Header=BB1_36 Depth=2
	li	a1, 300
	mv	a0, s0
	mv	a2, s3
	mv	a3, s5
	mv	a4, s6
	call	snprintf
	li	a1, 300
	mv	a0, s0
	call	error
	j	.LBB1_35
.LBB1_38:
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
.LBB1_39:
	ret
.Lfunc_end1:
	.size	ParseMatrix, .Lfunc_end1-ParseMatrix
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_6
	.word	.LBB1_2
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_16
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_6
	.word	.LBB1_8
	.word	.LBB1_17
	.word	.LBB1_11
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_8
	.word	.LBB1_15
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	PatchMatrix                     # -- Begin function PatchMatrix
	.p2align	2
	.type	PatchMatrix,@function
PatchMatrix:                            # @PatchMatrix
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
	li	s7, 0
	lui	s0, %hi(ScalingList8x8input)
	addi	s0, s0, %lo(ScalingList8x8input)
	lui	s9, %hi(input)
	li	s10, 1
	li	s1, 20
	li	s11, 256
	li	s8, 6
	lui	s5, %hi(MatrixType4x4)
	addi	s5, s5, %lo(MatrixType4x4)
	li	s2, 3
	li	s3, 255
	j	.LBB2_4
.LBB2_1:                                #   in Loop: Header=BB2_4 Depth=1
	li	a2, 32
	mv	a0, s6
	lui	a1, %hi(Quant_inter_default)
	addi	a1, a1, %lo(Quant_inter_default)
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	call	memcpy
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	addi	s7, s7, 1
	addi	s0, s0, 128
	beq	s7, s8, .LBB2_34
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_29 Depth 2
	ld	a0, %lo(input)(s9)
	slli	s4, s7, 2
	add	a0, a0, s4
	addi	a0, a0, 2047
	lw	a0, 1885(a0)
	beqz	a0, .LBB2_25
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	lui	a0, %hi(matrix4x4_check)
	addi	a0, a0, %lo(matrix4x4_check)
	add	a0, a0, s4
	lw	a0, 0(a0)
	slli	s6, s7, 5
	lui	a1, %hi(ScalingList4x4input)
	addi	a1, a1, %lo(ScalingList4x4input)
	add	s6, a1, s6
	beqz	a0, .LBB2_23
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 0(s6)
	bltu	s3, a0, .LBB2_22
# %bb.7:                                #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 2(s6)
	bltu	s3, a0, .LBB2_22
# %bb.8:                                #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 4(s6)
	bltu	s3, a0, .LBB2_22
# %bb.9:                                #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 6(s6)
	bltu	s3, a0, .LBB2_22
# %bb.10:                               #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 8(s6)
	bltu	s3, a0, .LBB2_22
# %bb.11:                               #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 10(s6)
	bltu	s3, a0, .LBB2_22
# %bb.12:                               #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 12(s6)
	bltu	s3, a0, .LBB2_22
# %bb.13:                               #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 14(s6)
	bltu	s3, a0, .LBB2_22
# %bb.14:                               #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 16(s6)
	bltu	s3, a0, .LBB2_22
# %bb.15:                               #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 18(s6)
	bltu	s3, a0, .LBB2_22
# %bb.16:                               #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 20(s6)
	bltu	s3, a0, .LBB2_22
# %bb.17:                               #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 22(s6)
	bltu	s3, a0, .LBB2_22
# %bb.18:                               #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 24(s6)
	bltu	s3, a0, .LBB2_22
# %bb.19:                               #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 26(s6)
	bltu	s3, a0, .LBB2_22
# %bb.20:                               #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 28(s6)
	bltu	s3, a0, .LBB2_22
# %bb.21:                               #   in Loop: Header=BB2_4 Depth=1
	lhu	a0, 30(s6)
	bltu	a0, s11, .LBB2_25
.LBB2_22:                               #   in Loop: Header=BB2_4 Depth=1
	mul	a1, s7, s1
	add	a1, s5, a1
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	printf
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	call	printf
	bgeu	s7, s2, .LBB2_1
	j	.LBB2_24
.LBB2_23:                               #   in Loop: Header=BB2_4 Depth=1
	mul	a1, s7, s1
	add	a1, s5, a1
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	call	printf
	bgeu	s7, s2, .LBB2_1
.LBB2_24:                               #   in Loop: Header=BB2_4 Depth=1
	li	a2, 32
	mv	a0, s6
	lui	a1, %hi(Quant_intra_default)
	addi	a1, a1, %lo(Quant_intra_default)
	call	memcpy
.LBB2_25:                               #   in Loop: Header=BB2_4 Depth=1
	bltu	s10, s7, .LBB2_3
# %bb.26:                               #   in Loop: Header=BB2_4 Depth=1
	ld	a0, %lo(input)(s9)
	add	a0, a0, s4
	addi	a0, a0, 2047
	lw	a0, 1909(a0)
	beqz	a0, .LBB2_3
# %bb.27:                               #   in Loop: Header=BB2_4 Depth=1
	lui	a0, %hi(matrix8x8_check)
	addi	a0, a0, %lo(matrix8x8_check)
	add	s4, a0, s4
	lw	a0, 0(s4)
	slli	s6, s7, 7
	lui	a1, %hi(ScalingList8x8input)
	addi	a1, a1, %lo(ScalingList8x8input)
	add	s6, a1, s6
	beqz	a0, .LBB2_31
# %bb.28:                               # %.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	li	a0, 64
	mv	a1, s0
.LBB2_29:                               #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lhu	a2, 0(a1)
	bgeu	a2, s11, .LBB2_32
# %bb.30:                               #   in Loop: Header=BB2_29 Depth=2
	addi	a0, a0, -1
	addi	a1, a1, 2
	bnez	a0, .LBB2_29
	j	.LBB2_3
.LBB2_31:                               #   in Loop: Header=BB2_4 Depth=1
	mul	a1, s7, s1
	lui	a0, %hi(MatrixType8x8)
	addi	a0, a0, %lo(MatrixType8x8)
	add	a1, a0, a1
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	call	printf
	j	.LBB2_33
.LBB2_32:                               #   in Loop: Header=BB2_4 Depth=1
	mul	a1, s7, s1
	lui	a0, %hi(MatrixType8x8)
	addi	a0, a0, %lo(MatrixType8x8)
	add	a1, a0, a1
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	printf
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	call	printf
.LBB2_33:                               #   in Loop: Header=BB2_4 Depth=1
	li	a2, 128
	mv	a0, s6
	lui	a1, %hi(Quant8_intra_default)
	addi	a1, a1, %lo(Quant8_intra_default)
	j	.LBB2_2
.LBB2_34:
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
.Lfunc_end2:
	.size	PatchMatrix, .Lfunc_end2-PatchMatrix
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	allocate_QMatrix                # -- Begin function allocate_QMatrix
	.p2align	2
	.type	allocate_QMatrix,@function
allocate_QMatrix:                       # @allocate_QMatrix
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1921(a0)
	li	a1, 6
	mul	s1, a0, a1
	addiw	s1, s1, 4
	slli	s0, s1, 2
	mv	a0, s0
	call	malloc
	lui	a1, %hi(qp_per_matrix)
	sd	a0, %lo(qp_per_matrix)(a1)
	bnez	a0, .LBB3_2
# %bb.1:
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	call	no_mem_exit
.LBB3_2:
	mv	a0, s0
	call	malloc
	lui	a1, %hi(qp_rem_matrix)
	sd	a0, %lo(qp_rem_matrix)(a1)
	bnez	a0, .LBB3_4
# %bb.3:
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	call	no_mem_exit
.LBB3_4:
	blez	s1, .LBB3_7
# %bb.5:
	lui	a0, %hi(qp_rem_matrix)
	ld	a0, %lo(qp_rem_matrix)(a0)
	li	a1, 0
	lui	a2, %hi(qp_per_matrix)
	ld	a2, %lo(qp_per_matrix)(a2)
	add	s0, a0, s0
	lui	a3, 699051
	addi	a3, a3, -1365
	slli	a3, a3, 32
	li	a4, 6
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	slli	a5, a1, 32
	mulhu	a5, a5, a3
	srli	a5, a5, 34
	sw	a5, 0(a2)
	mul	a5, a5, a4
	subw	a5, a1, a5
	sw	a5, 0(a0)
	addi	a0, a0, 4
	addi	a2, a2, 4
	addi	a1, a1, 1
	bne	a0, s0, .LBB3_6
.LBB3_7:
	lui	a0, %hi(LevelScale4x4Luma)
	addi	a0, a0, %lo(LevelScale4x4Luma)
	li	a1, 2
	li	a2, 6
	li	a3, 4
	li	a4, 4
	call	get_mem4Dint
	lui	a0, %hi(LevelScale4x4Chroma)
	addi	a0, a0, %lo(LevelScale4x4Chroma)
	li	a1, 2
	li	a2, 2
	li	a3, 6
	li	a4, 4
	li	a5, 4
	call	get_mem5Dint
	lui	a0, %hi(LevelScale8x8Luma)
	addi	a0, a0, %lo(LevelScale8x8Luma)
	li	a1, 2
	li	a2, 6
	li	a3, 8
	li	a4, 8
	call	get_mem4Dint
	lui	a0, %hi(InvLevelScale4x4Luma)
	addi	a0, a0, %lo(InvLevelScale4x4Luma)
	li	a1, 2
	li	a2, 6
	li	a3, 4
	li	a4, 4
	call	get_mem4Dint
	lui	a0, %hi(InvLevelScale4x4Chroma)
	addi	a0, a0, %lo(InvLevelScale4x4Chroma)
	li	a1, 2
	li	a2, 2
	li	a3, 6
	li	a4, 4
	li	a5, 4
	call	get_mem5Dint
	lui	a0, %hi(InvLevelScale8x8Luma)
	addi	a0, a0, %lo(InvLevelScale8x8Luma)
	li	a1, 2
	li	a2, 6
	li	a3, 8
	li	a4, 8
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	get_mem4Dint
.Lfunc_end3:
	.size	allocate_QMatrix, .Lfunc_end3-allocate_QMatrix
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_QMatrix                    # -- Begin function free_QMatrix
	.p2align	2
	.type	free_QMatrix,@function
free_QMatrix:                           # @free_QMatrix
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(qp_rem_matrix)
	ld	a0, %lo(qp_rem_matrix)(a0)
	call	free
	lui	a0, %hi(qp_per_matrix)
	ld	a0, %lo(qp_per_matrix)(a0)
	call	free
	lui	a0, %hi(LevelScale4x4Luma)
	ld	a0, %lo(LevelScale4x4Luma)(a0)
	li	a1, 2
	li	a2, 6
	call	free_mem4Dint
	lui	a0, %hi(LevelScale4x4Chroma)
	ld	a0, %lo(LevelScale4x4Chroma)(a0)
	li	a1, 2
	li	a2, 2
	li	a3, 6
	call	free_mem5Dint
	lui	a0, %hi(LevelScale8x8Luma)
	ld	a0, %lo(LevelScale8x8Luma)(a0)
	li	a1, 2
	li	a2, 6
	call	free_mem4Dint
	lui	a0, %hi(InvLevelScale4x4Luma)
	ld	a0, %lo(InvLevelScale4x4Luma)(a0)
	li	a1, 2
	li	a2, 6
	call	free_mem4Dint
	lui	a0, %hi(InvLevelScale4x4Chroma)
	ld	a0, %lo(InvLevelScale4x4Chroma)(a0)
	li	a1, 2
	li	a2, 2
	li	a3, 6
	call	free_mem5Dint
	lui	a0, %hi(InvLevelScale8x8Luma)
	ld	a0, %lo(InvLevelScale8x8Luma)(a0)
	li	a1, 2
	li	a2, 6
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free_mem4Dint
.Lfunc_end4:
	.size	free_QMatrix, .Lfunc_end4-free_QMatrix
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Init_QMatrix                    # -- Begin function Init_QMatrix
	.p2align	2
	.type	Init_QMatrix,@function
Init_QMatrix:                           # @Init_QMatrix
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	call	allocate_QMatrix
	lui	s0, %hi(input)
	ld	a0, %lo(input)(s0)
	addi	a1, a0, 2047
	lw	a1, 1881(a1)
	beqz	a1, .LBB5_3
# %bb.1:
	addi	a1, a0, 1028
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	call	printf
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 1028
	li	a1, 0
	call	GetConfigFileContent
	mv	s0, a0
	beqz	a0, .LBB5_4
# %bb.2:
	mv	a0, s0
	call	strlen
	sext.w	a1, a0
	mv	a0, s0
	call	ParseMatrix
	j	.LBB5_5
.LBB5_3:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB5_4:
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	lui	a1, %hi(errortext)
	addi	a1, a1, %lo(errortext)
	call	printf
.LBB5_5:
	call	PatchMatrix
	li	a0, 10
	call	putchar
	lui	a0, %hi(UseDefaultScalingMatrix4x4Flag)
	sh	zero, %lo(UseDefaultScalingMatrix4x4Flag)(a0)
	addi	a0, a0, %lo(UseDefaultScalingMatrix4x4Flag)
	sh	zero, 2(a0)
	sh	zero, 4(a0)
	sh	zero, 6(a0)
	sh	zero, 8(a0)
	sh	zero, 10(a0)
	lui	a0, %hi(UseDefaultScalingMatrix8x8Flag)
	addi	a1, a0, %lo(UseDefaultScalingMatrix8x8Flag)
	sh	zero, 2(a1)
	sh	zero, %lo(UseDefaultScalingMatrix8x8Flag)(a0)
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.Lfunc_end5:
	.size	Init_QMatrix, .Lfunc_end5-Init_QMatrix
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CalculateQuantParam             # -- Begin function CalculateQuantParam
	.p2align	2
	.type	CalculateQuantParam,@function
CalculateQuantParam:                    # @CalculateQuantParam
# %bb.0:
	addi	sp, sp, -240
	sd	ra, 232(sp)                     # 8-byte Folded Spill
	sd	s0, 224(sp)                     # 8-byte Folded Spill
	sd	s1, 216(sp)                     # 8-byte Folded Spill
	sd	s2, 208(sp)                     # 8-byte Folded Spill
	sd	s3, 200(sp)                     # 8-byte Folded Spill
	sd	s4, 192(sp)                     # 8-byte Folded Spill
	sd	s5, 184(sp)                     # 8-byte Folded Spill
	sd	s6, 176(sp)                     # 8-byte Folded Spill
	sd	s7, 168(sp)                     # 8-byte Folded Spill
	sd	s8, 160(sp)                     # 8-byte Folded Spill
	sd	s9, 152(sp)                     # 8-byte Folded Spill
	sd	s10, 144(sp)                    # 8-byte Folded Spill
	sd	s11, 136(sp)                    # 8-byte Folded Spill
	lui	a0, %hi(active_sps)
	ld	a6, %lo(active_sps)(a0)
	lw	a0, 36(a6)
	beqz	a0, .LBB6_3
# %bb.1:
	lui	a0, %hi(active_pps)
	ld	a2, %lo(active_pps)(a0)
	lw	t6, 40(a6)
	lw	a0, 20(a2)
	lw	a1, 52(a6)
	bnez	a0, .LBB6_5
# %bb.2:
	addi	a5, a6, 44
	addi	a4, a6, 48
	addi	a3, a6, 56
	addi	a2, a6, 60
	j	.LBB6_6
.LBB6_3:
	lui	a0, %hi(active_pps)
	ld	a2, %lo(active_pps)(a0)
	lw	a0, 20(a2)
	beqz	a0, .LBB6_40
# %bb.4:
	li	a1, 0
	li	t6, 0
.LBB6_5:
	lw	a0, 24(a2)
	lw	a3, 36(a2)
	or	t6, t6, a0
	addi	a5, a2, 28
	addi	a4, a2, 32
	or	a1, a1, a3
	addi	a3, a2, 40
	addi	a2, a2, 44
.LBB6_6:
	li	a0, 0
	lw	a2, 0(a2)
	sd	a2, 128(sp)                     # 8-byte Folded Spill
	lw	a3, 0(a3)
	lw	a4, 0(a4)
	lw	a5, 0(a5)
	lui	s11, %hi(dequant_coef)
	addi	s11, s11, %lo(dequant_coef)
	lui	s10, %hi(quant_coef)
	addi	s10, s10, %lo(quant_coef)
	seqz	s0, a1
	lui	a1, %hi(ScalingList4x4)
	addi	a1, a1, %lo(ScalingList4x4)
	addi	a1, a1, 96
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	j	.LBB6_8
.LBB6_7:                                #   in Loop: Header=BB6_8 Depth=1
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 1
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	addi	s11, s11, 64
	ld	s10, 48(sp)                     # 8-byte Folded Reload
	addi	s10, s10, 64
	li	a1, 6
	beq	a0, a1, .LBB6_44
.LBB6_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
                                        #       Child Loop BB6_13 Depth 3
	li	s2, 0
	li	t1, 0
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	slli	s9, a0, 3
	sd	s10, 48(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
	j	.LBB6_10
.LBB6_9:                                #   in Loop: Header=BB6_10 Depth=2
	ld	t1, 72(sp)                      # 8-byte Folded Reload
	addi	t1, t1, 1
	addi	s11, s11, 16
	addi	s10, s10, 16
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	addi	s2, s2, 2
	li	a0, 4
	beq	t1, a0, .LBB6_7
.LBB6_10:                               #   Parent Loop BB6_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_13 Depth 3
	lui	a0, %hi(LevelScale4x4Luma)
	ld	a0, %lo(LevelScale4x4Luma)(a0)
	lui	a1, %hi(InvLevelScale4x4Luma)
	ld	a1, %lo(InvLevelScale4x4Luma)(a1)
	lui	a2, %hi(UseDefaultScalingMatrix4x4Flag)
	addi	a2, a2, %lo(UseDefaultScalingMatrix4x4Flag)
	lhu	a6, 2(a2)
	sd	a6, 120(sp)                     # 8-byte Folded Spill
	lui	a6, %hi(LevelScale4x4Chroma)
	ld	s6, %lo(LevelScale4x4Chroma)(a6)
	lui	a6, %hi(InvLevelScale4x4Chroma)
	ld	a6, %lo(InvLevelScale4x4Chroma)(a6)
	ld	a7, 8(a0)
	lhu	t0, 4(a2)
	sd	t0, 112(sp)                     # 8-byte Folded Spill
	lhu	t0, 8(a2)
	sd	t0, 104(sp)                     # 8-byte Folded Spill
	lhu	a2, 10(a2)
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	add	a7, a7, s9
	ld	a7, 0(a7)
	ld	t0, 0(a6)
	sd	t1, 72(sp)                      # 8-byte Folded Spill
	slli	s8, t1, 3
	ld	t2, 8(a1)
	add	a7, a7, s8
	ld	t3, 8(t0)
	ld	t1, 0(a7)
	add	t2, t2, s9
	ld	a7, 0(t2)
	add	t3, t3, s9
	ld	a6, 8(a6)
	ld	t2, 0(t3)
	add	a7, a7, s8
	ld	t3, 0(a7)
	ld	a7, 8(a6)
	add	t2, t2, s8
	ld	t4, 0(a0)
	ld	a0, 0(t2)
	add	a7, a7, s9
	ld	a7, 0(a7)
	add	t4, t4, s9
	ld	t2, 0(t4)
	ld	a1, 0(a1)
	add	a7, a7, s8
	ld	s5, 0(a7)
	add	t2, t2, s8
	add	a1, a1, s9
	ld	a1, 0(a1)
	ld	a7, 0(t0)
	ld	s7, 0(t2)
	ld	a6, 0(a6)
	add	a1, a1, s8
	add	a7, a7, s9
	ld	a7, 0(a7)
	add	a6, a6, s9
	ld	a6, 0(a6)
	ld	s3, 0(a1)
	add	a7, a7, s8
	ld	t5, 0(a7)
	add	a6, a6, s8
	ld	s1, 0(a6)
	li	s4, 0
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	j	.LBB6_13
.LBB6_11:                               #   in Loop: Header=BB6_13 Depth=3
	ld	a7, 0(a7)
	add	a7, a7, s9
	ld	a7, 0(a7)
	add	a1, a1, s4
	add	a7, a7, s8
	ld	a7, 0(a7)
	lw	a1, 0(a1)
	add	a7, a7, s4
	sw	a1, 0(a7)
	lw	a1, 0(a6)
.LBB6_12:                               #   in Loop: Header=BB6_13 Depth=3
	add	a6, s1, s4
	sw	a1, 0(a6)
	addi	s4, s4, 4
	addi	s2, s2, 8
	mv	t6, a2
	li	a1, 16
	beq	s4, a1, .LBB6_9
.LBB6_13:                               #   Parent Loop BB6_8 Depth=1
                                        #     Parent Loop BB6_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a1, s10, s4
	lw	t2, 0(a1)
	slli	t2, t2, 4
	add	a7, t1, s4
	add	a1, s11, s4
	lui	ra, %hi(ScalingList4x4)
	addi	ra, ra, %lo(ScalingList4x4)
	add	ra, ra, s2
	mv	a2, t6
	beqz	t6, .LBB6_16
# %bb.14:                               #   in Loop: Header=BB6_13 Depth=3
	lui	a6, %hi(UseDefaultScalingMatrix4x4Flag)
	lhu	a6, %lo(UseDefaultScalingMatrix4x4Flag)(a6)
	bnez	a6, .LBB6_16
# %bb.15:                               #   in Loop: Header=BB6_13 Depth=3
	lh	a6, 0(ra)
	j	.LBB6_17
.LBB6_16:                               #   in Loop: Header=BB6_13 Depth=3
	lui	a6, %hi(Quant_intra_default)
	addi	a6, a6, %lo(Quant_intra_default)
	add	a6, a6, s2
	lh	a6, 0(a6)
.LBB6_17:                               #   in Loop: Header=BB6_13 Depth=3
	divw	t0, t2, a6
	sw	t0, 0(a7)
	lw	t6, 0(a1)
	mul	a1, t6, a6
	add	t4, t3, s4
	sw	a1, 0(t4)
	beqz	a5, .LBB6_20
# %bb.18:                               #   in Loop: Header=BB6_13 Depth=3
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB6_22
# %bb.19:                               #   in Loop: Header=BB6_13 Depth=3
	lui	a1, %hi(Quant_intra_default)
	addi	a1, a1, %lo(Quant_intra_default)
	add	a1, a1, s2
	j	.LBB6_23
.LBB6_20:                               #   in Loop: Header=BB6_13 Depth=3
	ld	a6, 0(s6)
	ld	a1, 8(a6)
	add	a1, a1, s9
	ld	a1, 0(a1)
	add	a1, a1, s8
	ld	a1, 0(a1)
	lw	a7, 0(a7)
	add	t0, a1, s4
	sw	a7, 0(t0)
	lw	a7, 0(t4)
	add	t4, a0, s4
	sw	a7, 0(t4)
	bnez	a4, .LBB6_24
.LBB6_21:                               #   in Loop: Header=BB6_13 Depth=3
	ld	a7, 8(s6)
	ld	t0, 8(a7)
	add	t0, t0, s9
	ld	t0, 0(t0)
	add	a1, a1, s4
	add	t0, t0, s8
	ld	t0, 0(t0)
	lw	a1, 0(a1)
	add	t0, t0, s4
	sw	a1, 0(t0)
	lw	a1, 0(t4)
	j	.LBB6_28
.LBB6_22:                               #   in Loop: Header=BB6_13 Depth=3
	addi	a1, ra, 32
.LBB6_23:                               #   in Loop: Header=BB6_13 Depth=3
	ld	a6, 0(s6)
	ld	a7, 8(a6)
	add	a7, a7, s9
	ld	a7, 0(a7)
	lh	t0, 0(a1)
	add	a7, a7, s8
	ld	a1, 0(a7)
	divw	a7, t2, t0
	add	t4, a1, s4
	sw	a7, 0(t4)
	mul	a7, t6, t0
	add	t4, a0, s4
	sw	a7, 0(t4)
	beqz	a4, .LBB6_21
.LBB6_24:                               #   in Loop: Header=BB6_13 Depth=3
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB6_26
# %bb.25:                               #   in Loop: Header=BB6_13 Depth=3
	lui	a1, %hi(Quant_intra_default)
	addi	a1, a1, %lo(Quant_intra_default)
	add	a1, a1, s2
	j	.LBB6_27
.LBB6_26:                               #   in Loop: Header=BB6_13 Depth=3
	addi	a1, ra, 64
.LBB6_27:                               #   in Loop: Header=BB6_13 Depth=3
	ld	a7, 8(s6)
	ld	t0, 8(a7)
	add	t0, t0, s9
	ld	t0, 0(t0)
	lh	a1, 0(a1)
	add	t0, t0, s8
	ld	t0, 0(t0)
	divw	t4, t2, a1
	add	t0, t0, s4
	sw	t4, 0(t0)
	mul	a1, t6, a1
.LBB6_28:                               #   in Loop: Header=BB6_13 Depth=3
	add	t0, s5, s4
	sw	a1, 0(t0)
	lui	a1, %hi(UseDefaultScalingMatrix4x4Flag)
	addi	a1, a1, %lo(UseDefaultScalingMatrix4x4Flag)
	lhu	a1, 6(a1)
	snez	a1, a1
	or	t0, s0, a1
	lui	a1, %hi(Quant_inter_default)
	addi	a1, a1, %lo(Quant_inter_default)
	bnez	t0, .LBB6_30
# %bb.29:                               #   in Loop: Header=BB6_13 Depth=3
	ld	a1, 88(sp)                      # 8-byte Folded Reload
.LBB6_30:                               #   in Loop: Header=BB6_13 Depth=3
	add	a1, a1, s2
	lh	a1, 0(a1)
	divw	t0, t2, a1
	add	t4, s7, s4
	sw	t0, 0(t4)
	mul	a1, t6, a1
	add	t0, s3, s4
	sw	a1, 0(t0)
	beqz	a3, .LBB6_33
# %bb.31:                               #   in Loop: Header=BB6_13 Depth=3
	ld	a1, 104(sp)                     # 8-byte Folded Reload
	beqz	a1, .LBB6_34
# %bb.32:                               #   in Loop: Header=BB6_13 Depth=3
	lui	a1, %hi(Quant_inter_default)
	addi	a1, a1, %lo(Quant_inter_default)
	add	a1, a1, s2
	j	.LBB6_35
.LBB6_33:                               #   in Loop: Header=BB6_13 Depth=3
	ld	a1, 0(a6)
	add	a1, a1, s9
	ld	a1, 0(a1)
	add	a1, a1, s8
	ld	a1, 0(a1)
	lw	a6, 0(t4)
	add	t4, a1, s4
	sw	a6, 0(t4)
	lw	t0, 0(t0)
	add	a6, t5, s4
	sw	t0, 0(a6)
	ld	t0, 128(sp)                     # 8-byte Folded Reload
	bnez	t0, .LBB6_36
	j	.LBB6_11
.LBB6_34:                               #   in Loop: Header=BB6_13 Depth=3
	addi	a1, ra, 128
.LBB6_35:                               #   in Loop: Header=BB6_13 Depth=3
	ld	a6, 0(a6)
	add	a6, a6, s9
	ld	a6, 0(a6)
	lh	t0, 0(a1)
	add	a6, a6, s8
	ld	a1, 0(a6)
	divw	a6, t2, t0
	add	t4, a1, s4
	sw	a6, 0(t4)
	mul	t0, t6, t0
	add	a6, t5, s4
	sw	t0, 0(a6)
	ld	t0, 128(sp)                     # 8-byte Folded Reload
	beqz	t0, .LBB6_11
.LBB6_36:                               #   in Loop: Header=BB6_13 Depth=3
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	beqz	a1, .LBB6_38
# %bb.37:                               #   in Loop: Header=BB6_13 Depth=3
	lui	a1, %hi(Quant_inter_default)
	addi	a1, a1, %lo(Quant_inter_default)
	add	a1, a1, s2
	j	.LBB6_39
.LBB6_38:                               #   in Loop: Header=BB6_13 Depth=3
	addi	a1, ra, 160
.LBB6_39:                               #   in Loop: Header=BB6_13 Depth=3
	ld	a6, 0(a7)
	add	a6, a6, s9
	ld	a6, 0(a6)
	lh	a1, 0(a1)
	add	a6, a6, s8
	ld	a6, 0(a6)
	divw	a7, t2, a1
	add	a6, a6, s4
	sw	a7, 0(a6)
	mul	a1, t6, a1
	j	.LBB6_12
.LBB6_40:
	li	a6, 0
	lui	a0, %hi(LevelScale4x4Luma)
	ld	a0, %lo(LevelScale4x4Luma)(a0)
	lui	a1, %hi(InvLevelScale4x4Luma)
	ld	a1, %lo(InvLevelScale4x4Luma)(a1)
	lui	a2, %hi(LevelScale4x4Chroma)
	ld	a2, %lo(LevelScale4x4Chroma)(a2)
	lui	a3, %hi(InvLevelScale4x4Chroma)
	ld	a3, %lo(InvLevelScale4x4Chroma)(a3)
	ld	a4, 8(a0)
	sd	a4, 96(sp)                      # 8-byte Folded Spill
	ld	a4, 8(a1)
	sd	a4, 88(sp)                      # 8-byte Folded Spill
	ld	a4, 0(a2)
	ld	a5, 0(a3)
	ld	a2, 8(a2)
	ld	a3, 8(a3)
	ld	a7, 8(a4)
	sd	a7, 80(sp)                      # 8-byte Folded Spill
	ld	a7, 8(a5)
	sd	a7, 72(sp)                      # 8-byte Folded Spill
	ld	a7, 8(a2)
	sd	a7, 64(sp)                      # 8-byte Folded Spill
	ld	a7, 8(a3)
	sd	a7, 56(sp)                      # 8-byte Folded Spill
	ld	a0, 0(a0)
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	ld	a0, 0(a1)
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	ld	a0, 0(a4)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	ld	a0, 0(a5)
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	ld	a0, 0(a2)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	lui	t4, %hi(dequant_coef+8)
	addi	t4, t4, %lo(dequant_coef+8)
	ld	a0, 0(a3)
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	lui	t6, %hi(quant_coef+8)
	addi	t6, t6, %lo(quant_coef+8)
.LBB6_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_42 Depth 2
	sd	a6, 120(sp)                     # 8-byte Folded Spill
	slli	a0, a6, 3
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	a1, 0(a1)
	sd	a1, 128(sp)                     # 8-byte Folded Spill
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s3, 0(a1)
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s4, 0(a1)
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s5, 0(a1)
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s6, 0(a1)
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s7, 0(a1)
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s8, 0(a1)
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s9, 0(a1)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s10, 0(a1)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	s11, 0(a1)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	a1, a1, a0
	ld	ra, 0(a1)
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	add	a0, a1, a0
	ld	s1, 0(a0)
	li	a1, 0
	sd	t6, 104(sp)                     # 8-byte Folded Spill
	sd	t4, 112(sp)                     # 8-byte Folded Spill
.LBB6_42:                               #   Parent Loop BB6_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 128(sp)                     # 8-byte Folded Reload
	add	a0, a0, a1
	ld	a5, 0(a0)
	add	a0, s3, a1
	ld	a4, 0(a0)
	add	a0, s4, a1
	ld	a6, 0(a0)
	add	a0, s5, a1
	ld	a7, 0(a0)
	add	a0, s6, a1
	ld	t0, 0(a0)
	add	a0, s7, a1
	ld	t1, 0(a0)
	add	a0, s8, a1
	ld	t2, 0(a0)
	add	a0, s9, a1
	ld	t3, 0(a0)
	add	a0, s10, a1
	ld	t5, 0(a0)
	lw	s0, -8(t6)
	add	a0, s11, a1
	ld	a0, 0(a0)
	add	a2, ra, a1
	sw	s0, 0(a5)
	lw	s2, -8(t4)
	ld	a3, 0(a2)
	add	a2, s1, a1
	ld	a2, 0(a2)
	slli	s2, s2, 4
	sw	s2, 0(a4)
	sw	s0, 0(a6)
	sw	s2, 0(a7)
	sw	s0, 0(t0)
	sw	s2, 0(t1)
	sw	s0, 0(t2)
	sw	s2, 0(t3)
	sw	s0, 0(t5)
	sw	s2, 0(a0)
	sw	s0, 0(a3)
	sw	s2, 0(a2)
	lw	s0, -4(t6)
	sw	s0, 4(a5)
	lw	s2, -4(t4)
	slli	s2, s2, 4
	sw	s2, 4(a4)
	sw	s0, 4(a6)
	sw	s2, 4(a7)
	sw	s0, 4(t0)
	sw	s2, 4(t1)
	sw	s0, 4(t2)
	sw	s2, 4(t3)
	sw	s0, 4(t5)
	sw	s2, 4(a0)
	sw	s0, 4(a3)
	sw	s2, 4(a2)
	lw	s0, 0(t6)
	sw	s0, 8(a5)
	lw	s2, 0(t4)
	slli	s2, s2, 4
	sw	s2, 8(a4)
	sw	s0, 8(a6)
	sw	s2, 8(a7)
	sw	s0, 8(t0)
	sw	s2, 8(t1)
	sw	s0, 8(t2)
	sw	s2, 8(t3)
	sw	s0, 8(t5)
	sw	s2, 8(a0)
	sw	s0, 8(a3)
	sw	s2, 8(a2)
	lw	s0, 4(t6)
	sw	s0, 12(a5)
	lw	a5, 4(t4)
	slli	a5, a5, 4
	sw	a5, 12(a4)
	sw	s0, 12(a6)
	sw	a5, 12(a7)
	sw	s0, 12(t0)
	sw	a5, 12(t1)
	sw	s0, 12(t2)
	sw	a5, 12(t3)
	sw	s0, 12(t5)
	sw	a5, 12(a0)
	sw	s0, 12(a3)
	sw	a5, 12(a2)
	li	a0, 32
	addi	a1, a1, 8
	addi	t4, t4, 16
	addi	t6, t6, 16
	bne	a1, a0, .LBB6_42
# %bb.43:                               #   in Loop: Header=BB6_41 Depth=1
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	addi	a6, a6, 1
	ld	t4, 112(sp)                     # 8-byte Folded Reload
	addi	t4, t4, 64
	ld	t6, 104(sp)                     # 8-byte Folded Reload
	addi	t6, t6, 64
	li	a0, 6
	bne	a6, a0, .LBB6_41
.LBB6_44:
	ld	ra, 232(sp)                     # 8-byte Folded Reload
	ld	s0, 224(sp)                     # 8-byte Folded Reload
	ld	s1, 216(sp)                     # 8-byte Folded Reload
	ld	s2, 208(sp)                     # 8-byte Folded Reload
	ld	s3, 200(sp)                     # 8-byte Folded Reload
	ld	s4, 192(sp)                     # 8-byte Folded Reload
	ld	s5, 184(sp)                     # 8-byte Folded Reload
	ld	s6, 176(sp)                     # 8-byte Folded Reload
	ld	s7, 168(sp)                     # 8-byte Folded Reload
	ld	s8, 160(sp)                     # 8-byte Folded Reload
	ld	s9, 152(sp)                     # 8-byte Folded Reload
	ld	s10, 144(sp)                    # 8-byte Folded Reload
	ld	s11, 136(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 240
	ret
.Lfunc_end6:
	.size	CalculateQuantParam, .Lfunc_end6-CalculateQuantParam
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CalculateQuant8Param            # -- Begin function CalculateQuant8Param
	.p2align	2
	.type	CalculateQuant8Param,@function
CalculateQuant8Param:                   # @CalculateQuant8Param
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
	lui	a0, %hi(active_sps)
	ld	a2, %lo(active_sps)(a0)
	lw	a0, 36(a2)
	beqz	a0, .LBB7_2
# %bb.1:
	lui	a0, %hi(active_pps)
	ld	a1, %lo(active_pps)(a0)
	lw	a0, 64(a2)
	lw	a3, 20(a1)
	lw	t0, 68(a2)
	bnez	a3, .LBB7_4
	j	.LBB7_5
.LBB7_2:
	lui	a0, %hi(active_pps)
	ld	a1, %lo(active_pps)(a0)
	lw	a0, 20(a1)
	beqz	a0, .LBB7_17
# %bb.3:
	li	a0, 0
	li	t0, 0
.LBB7_4:
	lw	a2, 48(a1)
	lw	a1, 52(a1)
	or	a0, a0, a2
	or	t0, t0, a1
.LBB7_5:
	li	a1, 0
	lui	s5, %hi(dequant_coef8)
	addi	s5, s5, %lo(dequant_coef8)
	lui	s4, %hi(quant_coef8)
	addi	s4, s4, %lo(quant_coef8)
	lui	a4, %hi(LevelScale8x8Luma)
	lui	a5, %hi(InvLevelScale8x8Luma)
	lui	a6, %hi(UseDefaultScalingMatrix8x8Flag)
	lui	a7, %hi(Quant8_intra_default)
	addi	a7, a7, %lo(Quant8_intra_default)
	seqz	t0, t0
	lui	t1, %hi(UseDefaultScalingMatrix8x8Flag+2)
	lui	t2, %hi(ScalingList8x8)
	addi	t2, t2, %lo(ScalingList8x8)
	addi	t3, t2, 128
	lui	t4, %hi(Quant8_inter_default)
	addi	t4, t4, %lo(Quant8_inter_default)
	li	t5, 32
	li	t6, 8
	j	.LBB7_7
.LBB7_6:                                #   in Loop: Header=BB7_7 Depth=1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	addi	a1, a1, 1
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	s5, s5, 256
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	s4, s4, 256
	li	a2, 6
	beq	a1, a2, .LBB7_21
.LBB7_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
                                        #       Child Loop BB7_11 Depth 3
	li	s1, 0
	li	s2, 0
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	slli	s3, a1, 3
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	j	.LBB7_9
.LBB7_8:                                #   in Loop: Header=BB7_9 Depth=2
	addi	s2, s2, 1
	addi	s5, s5, 32
	addi	s4, s4, 32
	addi	s1, s1, 2
	beq	s2, t6, .LBB7_6
.LBB7_9:                                #   Parent Loop BB7_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_11 Depth 3
	ld	a2, %lo(LevelScale8x8Luma)(a4)
	ld	s0, 8(a2)
	ld	s6, %lo(InvLevelScale8x8Luma)(a5)
	add	s0, s0, s3
	ld	s0, 0(s0)
	ld	s7, 8(s6)
	slli	s9, s2, 3
	add	s0, s0, s9
	add	s7, s7, s3
	ld	s7, 0(s7)
	ld	s8, 0(a2)
	ld	a2, 0(s0)
	ld	s0, 0(s6)
	add	s7, s7, s9
	add	s8, s8, s3
	ld	s6, 0(s8)
	add	s0, s0, s3
	ld	s0, 0(s0)
	ld	s7, 0(s7)
	add	s6, s6, s9
	ld	s8, 0(s6)
	add	s0, s0, s9
	ld	s9, 0(s0)
	li	s10, 0
	mv	s11, s1
	j	.LBB7_11
.LBB7_10:                               #   in Loop: Header=BB7_11 Depth=3
	add	s6, s6, s11
	lh	a1, 0(s6)
	divw	a3, ra, a1
	add	s6, s8, s10
	sw	a3, 0(s6)
	mul	a1, s0, a1
	add	a3, s9, s10
	sw	a1, 0(a3)
	addi	s10, s10, 4
	addi	s11, s11, 16
	beq	s10, t5, .LBB7_8
.LBB7_11:                               #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	s0, s4, s10
	lw	ra, 0(s0)
	slli	ra, ra, 4
	add	s6, a2, s10
	add	s0, s5, s10
	beqz	a0, .LBB7_14
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=3
	lhu	a3, %lo(UseDefaultScalingMatrix8x8Flag)(a6)
	bnez	a3, .LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_11 Depth=3
	add	a1, t2, s11
	lh	a1, 0(a1)
	divw	a3, ra, a1
	sw	a3, 0(s6)
	lw	s0, 0(s0)
	mul	s6, s0, a1
	j	.LBB7_15
.LBB7_14:                               #   in Loop: Header=BB7_11 Depth=3
	add	a3, a7, s11
	lh	a3, 0(a3)
	divw	a1, ra, a3
	sw	a1, 0(s6)
	lw	s0, 0(s0)
	mul	s6, s0, a3
.LBB7_15:                               #   in Loop: Header=BB7_11 Depth=3
	add	a1, s7, s10
	sw	s6, 0(a1)
	lhu	a1, %lo(UseDefaultScalingMatrix8x8Flag+2)(t1)
	snez	a1, a1
	or	a1, t0, a1
	mv	s6, t4
	bnez	a1, .LBB7_10
# %bb.16:                               #   in Loop: Header=BB7_11 Depth=3
	mv	s6, t3
	j	.LBB7_10
.LBB7_17:
	lui	a0, %hi(LevelScale8x8Luma)
	ld	a3, %lo(LevelScale8x8Luma)(a0)
	lui	a0, %hi(InvLevelScale8x8Luma)
	ld	a4, %lo(InvLevelScale8x8Luma)(a0)
	li	a0, 0
	ld	a1, 8(a3)
	ld	a2, 8(a4)
	ld	a3, 0(a3)
	ld	a4, 0(a4)
	lui	a5, %hi(quant_coef8+16)
	addi	a5, a5, %lo(quant_coef8+16)
	lui	a6, %hi(dequant_coef8+16)
	addi	a6, a6, %lo(dequant_coef8+16)
	li	a7, 6
.LBB7_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
	slli	t3, a0, 3
	add	t0, a1, t3
	ld	t0, 0(t0)
	add	t1, a2, t3
	ld	t1, 0(t1)
	add	t2, a3, t3
	ld	t2, 0(t2)
	add	t3, a4, t3
	ld	t3, 0(t3)
	addi	t4, t0, 64
	mv	t5, a6
	mv	t6, a5
.LBB7_19:                               #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	s0, 0(t0)
	lw	s1, -16(t6)
	sw	s1, 0(s0)
	lw	s2, -16(t5)
	ld	s3, 0(t1)
	ld	s4, 0(t2)
	ld	s5, 0(t3)
	slli	s2, s2, 4
	sw	s2, 0(s3)
	sw	s1, 0(s4)
	sw	s2, 0(s5)
	lw	s1, -12(t6)
	sw	s1, 4(s0)
	lw	s2, -12(t5)
	slli	s2, s2, 4
	sw	s2, 4(s3)
	sw	s1, 4(s4)
	sw	s2, 4(s5)
	lw	s1, -8(t6)
	sw	s1, 8(s0)
	lw	s2, -8(t5)
	slli	s2, s2, 4
	sw	s2, 8(s3)
	sw	s1, 8(s4)
	sw	s2, 8(s5)
	lw	s1, -4(t6)
	sw	s1, 12(s0)
	lw	s2, -4(t5)
	slli	s2, s2, 4
	sw	s2, 12(s3)
	sw	s1, 12(s4)
	sw	s2, 12(s5)
	lw	s1, 0(t6)
	sw	s1, 16(s0)
	lw	s2, 0(t5)
	slli	s2, s2, 4
	sw	s2, 16(s3)
	sw	s1, 16(s4)
	sw	s2, 16(s5)
	lw	s1, 4(t6)
	sw	s1, 20(s0)
	lw	s2, 4(t5)
	slli	s2, s2, 4
	sw	s2, 20(s3)
	sw	s1, 20(s4)
	sw	s2, 20(s5)
	lw	s1, 8(t6)
	sw	s1, 24(s0)
	lw	s2, 8(t5)
	slli	s2, s2, 4
	sw	s2, 24(s3)
	sw	s1, 24(s4)
	sw	s2, 24(s5)
	lw	s1, 12(t6)
	sw	s1, 28(s0)
	lw	s0, 12(t5)
	slli	s0, s0, 4
	sw	s0, 28(s3)
	sw	s1, 28(s4)
	sw	s0, 28(s5)
	addi	t0, t0, 8
	addi	t1, t1, 8
	addi	t2, t2, 8
	addi	t3, t3, 8
	addi	t6, t6, 32
	addi	t5, t5, 32
	bne	t0, t4, .LBB7_19
# %bb.20:                               #   in Loop: Header=BB7_18 Depth=1
	addi	a0, a0, 1
	addi	a5, a5, 256
	addi	a6, a6, 256
	bne	a0, a7, .LBB7_18
.LBB7_21:
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
.Lfunc_end7:
	.size	CalculateQuant8Param, .Lfunc_end7-CalculateQuant8Param
                                        # -- End function
	.option	pop
	.type	matrix4x4_check,@object         # @matrix4x4_check
	.bss
	.globl	matrix4x4_check
	.p2align	2, 0x0
matrix4x4_check:
	.zero	24
	.size	matrix4x4_check, 24

	.type	matrix8x8_check,@object         # @matrix8x8_check
	.section	.sbss,"aw",@nobits
	.globl	matrix8x8_check
	.p2align	2, 0x0
matrix8x8_check:
	.zero	8
	.size	matrix8x8_check, 8

	.type	MatrixType4x4,@object           # @MatrixType4x4
	.section	.rodata,"a",@progbits
MatrixType4x4:
	.asciz	"INTRA4X4_LUMA\000\000\000\000\000\000"
	.asciz	"INTRA4X4_CHROMAU\000\000\000"
	.asciz	"INTRA4X4_CHROMAV\000\000\000"
	.asciz	"INTER4X4_LUMA\000\000\000\000\000\000"
	.asciz	"INTER4X4_CHROMAU\000\000\000"
	.asciz	"INTER4X4_CHROMAV\000\000\000"
	.size	MatrixType4x4, 120

	.type	MatrixType8x8,@object           # @MatrixType8x8
MatrixType8x8:
	.asciz	"INTRA8X8_LUMA\000\000\000\000\000\000"
	.asciz	"INTER8X8_LUMA\000\000\000\000\000\000"
	.size	MatrixType8x8, 40

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" Parsing error in config file: Parameter Name '%s' not recognized."
	.size	.L.str, 67

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" Parsing error in config file: '=' expected as the second token in each item."
	.size	.L.str.2, 78

	.type	ScalingList4x4input,@object     # @ScalingList4x4input
	.bss
	.globl	ScalingList4x4input
	.p2align	1, 0x0
ScalingList4x4input:
	.zero	192
	.size	ScalingList4x4input, 192

	.type	ScalingList8x8input,@object     # @ScalingList8x8input
	.globl	ScalingList8x8input
	.p2align	1, 0x0
ScalingList8x8input:
	.zero	256
	.size	ScalingList8x8input, 256

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
	.asciz	"\n%s value exceed range. (Value must be 1 to 255)\n"
	.size	.L.str.6, 50

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Setting default values for this matrix."
	.size	.L.str.7, 40

	.type	Quant_inter_default,@object     # @Quant_inter_default
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	1, 0x0
Quant_inter_default:
	.half	10                              # 0xa
	.half	14                              # 0xe
	.half	20                              # 0x14
	.half	24                              # 0x18
	.half	14                              # 0xe
	.half	20                              # 0x14
	.half	24                              # 0x18
	.half	27                              # 0x1b
	.half	20                              # 0x14
	.half	24                              # 0x18
	.half	27                              # 0x1b
	.half	30                              # 0x1e
	.half	24                              # 0x18
	.half	27                              # 0x1b
	.half	30                              # 0x1e
	.half	34                              # 0x22
	.size	Quant_inter_default, 32

	.type	Quant_intra_default,@object     # @Quant_intra_default
	.p2align	1, 0x0
Quant_intra_default:
	.half	6                               # 0x6
	.half	13                              # 0xd
	.half	20                              # 0x14
	.half	28                              # 0x1c
	.half	13                              # 0xd
	.half	20                              # 0x14
	.half	28                              # 0x1c
	.half	32                              # 0x20
	.half	20                              # 0x14
	.half	28                              # 0x1c
	.half	32                              # 0x20
	.half	37                              # 0x25
	.half	28                              # 0x1c
	.half	32                              # 0x20
	.half	37                              # 0x25
	.half	42                              # 0x2a
	.size	Quant_intra_default, 32

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"\n%s matrix definition not found. Setting default values."
	.size	.L.str.8, 57

	.type	Quant8_inter_default,@object    # @Quant8_inter_default
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
Quant8_inter_default:
	.half	9                               # 0x9
	.half	13                              # 0xd
	.half	15                              # 0xf
	.half	17                              # 0x11
	.half	19                              # 0x13
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	13                              # 0xd
	.half	13                              # 0xd
	.half	17                              # 0x11
	.half	19                              # 0x13
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	15                              # 0xf
	.half	17                              # 0x11
	.half	19                              # 0x13
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	17                              # 0x11
	.half	19                              # 0x13
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	19                              # 0x13
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	30                              # 0x1e
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	30                              # 0x1e
	.half	32                              # 0x20
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	30                              # 0x1e
	.half	32                              # 0x20
	.half	33                              # 0x21
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	30                              # 0x1e
	.half	32                              # 0x20
	.half	33                              # 0x21
	.half	35                              # 0x23
	.size	Quant8_inter_default, 128

	.type	Quant8_intra_default,@object    # @Quant8_intra_default
	.p2align	1, 0x0
Quant8_intra_default:
	.half	6                               # 0x6
	.half	10                              # 0xa
	.half	13                              # 0xd
	.half	16                              # 0x10
	.half	18                              # 0x12
	.half	23                              # 0x17
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	16                              # 0x10
	.half	18                              # 0x12
	.half	23                              # 0x17
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	13                              # 0xd
	.half	16                              # 0x10
	.half	18                              # 0x12
	.half	23                              # 0x17
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	31                              # 0x1f
	.half	16                              # 0x10
	.half	18                              # 0x12
	.half	23                              # 0x17
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	31                              # 0x1f
	.half	33                              # 0x21
	.half	18                              # 0x12
	.half	23                              # 0x17
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	31                              # 0x1f
	.half	33                              # 0x21
	.half	36                              # 0x24
	.half	23                              # 0x17
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	31                              # 0x1f
	.half	33                              # 0x21
	.half	36                              # 0x24
	.half	38                              # 0x26
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	31                              # 0x1f
	.half	33                              # 0x21
	.half	36                              # 0x24
	.half	38                              # 0x26
	.half	40                              # 0x28
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	31                              # 0x1f
	.half	33                              # 0x21
	.half	36                              # 0x24
	.half	38                              # 0x26
	.half	40                              # 0x28
	.half	42                              # 0x2a
	.size	Quant8_intra_default, 128

	.type	qp_per_matrix,@object           # @qp_per_matrix
	.section	.sbss,"aw",@nobits
	.globl	qp_per_matrix
	.p2align	3, 0x0
qp_per_matrix:
	.quad	0
	.size	qp_per_matrix, 8

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"init_global_buffers: qp_per_matrix"
	.size	.L.str.9, 35

	.type	qp_rem_matrix,@object           # @qp_rem_matrix
	.section	.sbss,"aw",@nobits
	.globl	qp_rem_matrix
	.p2align	3, 0x0
qp_rem_matrix:
	.quad	0
	.size	qp_rem_matrix, 8

	.type	LevelScale4x4Luma,@object       # @LevelScale4x4Luma
	.globl	LevelScale4x4Luma
	.p2align	3, 0x0
LevelScale4x4Luma:
	.quad	0
	.size	LevelScale4x4Luma, 8

	.type	LevelScale4x4Chroma,@object     # @LevelScale4x4Chroma
	.globl	LevelScale4x4Chroma
	.p2align	3, 0x0
LevelScale4x4Chroma:
	.quad	0
	.size	LevelScale4x4Chroma, 8

	.type	LevelScale8x8Luma,@object       # @LevelScale8x8Luma
	.globl	LevelScale8x8Luma
	.p2align	3, 0x0
LevelScale8x8Luma:
	.quad	0
	.size	LevelScale8x8Luma, 8

	.type	InvLevelScale4x4Luma,@object    # @InvLevelScale4x4Luma
	.globl	InvLevelScale4x4Luma
	.p2align	3, 0x0
InvLevelScale4x4Luma:
	.quad	0
	.size	InvLevelScale4x4Luma, 8

	.type	InvLevelScale4x4Chroma,@object  # @InvLevelScale4x4Chroma
	.globl	InvLevelScale4x4Chroma
	.p2align	3, 0x0
InvLevelScale4x4Chroma:
	.quad	0
	.size	InvLevelScale4x4Chroma, 8

	.type	InvLevelScale8x8Luma,@object    # @InvLevelScale8x8Luma
	.globl	InvLevelScale8x8Luma
	.p2align	3, 0x0
InvLevelScale8x8Luma:
	.quad	0
	.size	InvLevelScale8x8Luma, 8

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Parsing QMatrix file %s "
	.size	.L.str.10, 25

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\nError: %s\nProceeding with default values for all matrices."
	.size	.L.str.11, 60

	.type	UseDefaultScalingMatrix4x4Flag,@object # @UseDefaultScalingMatrix4x4Flag
	.bss
	.globl	UseDefaultScalingMatrix4x4Flag
	.p2align	1, 0x0
UseDefaultScalingMatrix4x4Flag:
	.zero	12
	.size	UseDefaultScalingMatrix4x4Flag, 12

	.type	UseDefaultScalingMatrix8x8Flag,@object # @UseDefaultScalingMatrix8x8Flag
	.section	.sbss,"aw",@nobits
	.globl	UseDefaultScalingMatrix8x8Flag
	.p2align	1, 0x0
UseDefaultScalingMatrix8x8Flag:
	.zero	4
	.size	UseDefaultScalingMatrix8x8Flag, 4

	.type	ScalingList4x4,@object          # @ScalingList4x4
	.bss
	.globl	ScalingList4x4
	.p2align	1, 0x0
ScalingList4x4:
	.zero	192
	.size	ScalingList4x4, 192

	.type	ScalingList8x8,@object          # @ScalingList8x8
	.globl	ScalingList8x8
	.p2align	1, 0x0
ScalingList8x8:
	.zero	256
	.size	ScalingList8x8, 256

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
