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
	addi	sp, sp, -48
	sd	s0, 40(sp)                      # 8-byte Folded Spill
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(active_sps)
	ld	a2, %lo(active_sps)(a0)
	lw	a0, 36(a2)
	beqz	a0, .LBB6_3
# %bb.1:
	lui	a0, %hi(active_pps)
	ld	a1, %lo(active_pps)(a0)
	lw	a0, 40(a2)
	lw	a3, 20(a1)
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	lw	x1, 52(a2)
	bnez	a3, .LBB6_5
# %bb.2:
	addi	a5, a2, 44
	addi	a4, a2, 48
	addi	a3, a2, 56
	addi	a2, a2, 60
	j	.LBB6_6
.LBB6_3:
	lui	a0, %hi(active_pps)
	ld	a1, %lo(active_pps)(a0)
	lw	a0, 20(a1)
	beqz	a0, .LBB6_40
# %bb.4:
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x1, 0
	li	a0, 0
.LBB6_5:
	lw	a2, 24(a1)
	lw	a3, 36(a1)
	or	a0, a0, a2
	addi	a5, a1, 28
	addi	a4, a1, 32
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	or	x1, x1, a3
	addi	a3, a1, 40
	addi	a2, a1, 44
.LBB6_6:
	li	a1, 0
	lw	a2, 0(a2)
	lw	a3, 0(a3)
	lw	a4, 0(a4)
	lw	a5, 0(a5)
	lui	a6, %hi(dequant_coef)
	addi	a6, a6, %lo(dequant_coef)
	lui	a7, %hi(quant_coef)
	addi	a7, a7, %lo(quant_coef)
	lui	t0, %hi(LevelScale4x4Luma)
	lui	t1, %hi(InvLevelScale4x4Luma)
	lui	t2, %hi(UseDefaultScalingMatrix4x4Flag)
	addi	t2, t2, %lo(UseDefaultScalingMatrix4x4Flag)
	lui	t3, %hi(LevelScale4x4Chroma)
	lui	t4, %hi(InvLevelScale4x4Chroma)
	lui	t5, %hi(UseDefaultScalingMatrix4x4Flag)
	lui	t6, %hi(Quant_intra_default)
	addi	t6, t6, %lo(Quant_intra_default)
	regsw_c	x13, 0x534(x26)		# 110100110110100110100
	seqz	x1, x1
	lui	x2, %hi(ScalingList4x4)
	addi	x2, x2, %lo(ScalingList4x4)
	addi	x3, x2, 96
	lui	x4, %hi(Quant_inter_default)
	addi	x4, x4, %lo(Quant_inter_default)
	li	x5, 16
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	li	x6, 4
	li	x7, 6
	j	.LBB6_8
.LBB6_7:                                #   in Loop: Header=BB6_8 Depth=1
	addi	a1, a1, 1
	addi	a6, a6, 64
	addi	a7, a7, 64
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	beq	a1, x7, .LBB6_42
.LBB6_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
                                        #       Child Loop BB6_13 Depth 3
	regsw_c	x9, 0x100(x18)		# 100100100100100000000
	li	x8, 0
	li	x9, 0
	slli	x10, a1, 3
	mv	x11, a7
	mv	x12, a6
	j	.LBB6_10
.LBB6_9:                                #   in Loop: Header=BB6_10 Depth=2
	regsw_c	x13, 0x4c0(x27)		# 110110110110011000000
	addi	x9, x9, 1
	addi	x12, x12, 16
	addi	x11, x11, 16
	addi	x8, x8, 2
	beq	x9, x6, .LBB6_7
.LBB6_10:                               #   Parent Loop BB6_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_13 Depth 3
	regsw_c	x9, 0x134(x18)		# 100100100100100110100
	ld	x21, %lo(LevelScale4x4Luma)(t0)
	ld	x22, %lo(InvLevelScale4x4Luma)(t1)
	lhu	x13, 2(t2)
	ld	x14, %lo(LevelScale4x4Chroma)(t3)
	ld	x20, %lo(InvLevelScale4x4Chroma)(t4)
	ld	x18, 8(x21)
	lhu	x15, 4(t2)
	regsw_c	x15, 0x5b6(x18)		# 100100111110110110110
	lhu	x16, 8(t2)
	lhu	x17, 10(t2)
	add	x18, x18, x10
	ld	x19, 0(x18)
	ld	x23, 0(x20)
	slli	x18, x9, 3
	ld	x24, 8(x22)
	regsw_c	x13, 0x7be(x31)		# 111110110111110111110
	add	x19, x19, x18
	ld	x25, 8(x23)
	ld	x19, 0(x19)
	add	x24, x24, x10
	ld	x24, 0(x24)
	add	x25, x25, x10
	ld	x26, 8(x20)
	regsw_c	x29, 0x5f6(x27)		# 110111110110111110110
	ld	x25, 0(x25)
	add	x24, x24, x18
	ld	x20, 0(x24)
	ld	x24, 8(x26)
	add	x25, x25, x18
	ld	x27, 0(x21)
	ld	x21, 0(x25)
	regsw_c	x15, 0x5be(x31)		# 111110111110110111110
	add	x24, x24, x10
	ld	x24, 0(x24)
	add	x27, x27, x10
	ld	x25, 0(x27)
	ld	x27, 0(x22)
	add	x24, x24, x18
	ld	x22, 0(x24)
	regsw_c	x29, 0x5b7(x31)		# 111111110110110110111
	add	x25, x25, x18
	add	x27, x27, x10
	ld	x24, 0(x27)
	ld	x27, 0(x23)
	ld	x23, 0(x25)
	ld	x25, 0(x26)
	add	x24, x24, x18
	regsw_c	x15, 0x5be(x31)		# 111110111110110111110
	add	x27, x27, x10
	ld	x26, 0(x27)
	add	x25, x25, x10
	ld	x27, 0(x25)
	ld	x24, 0(x24)
	add	x26, x26, x18
	ld	x25, 0(x26)
	regsw_c	x9, 0x400(x31)		# 111110100110000000000
	add	x27, x27, x18
	ld	x26, 0(x27)
	li	x27, 0
	mv	x28, x8
	j	.LBB6_13
.LBB6_11:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x28, 0x3f4(x19)		# 100111110001111110100
	ld	x29, 0(s1)
	add	x29, x29, x10
	ld	x29, 0(x29)
	add	s0, s0, x27
	add	x29, x29, x18
	ld	x29, 0(x29)
	lw	x30, 0(s0)
	regsw_c	x24, 0x0(x29)		# 111011100000000000000
	add	x29, x29, x27
	sw	x30, 0(x29)
	lw	x29, 0(s2)
.LBB6_12:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x29, 0x4c0(x29)		# 111011110110011000000
	add	x30, x26, x27
	sw	x29, 0(x30)
	addi	x27, x27, 4
	addi	x28, x28, 8
	beq	x27, x5, .LBB6_9
.LBB6_13:                               #   Parent Loop BB6_8 Depth=1
                                        #     Parent Loop BB6_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x12, 0x7f8(x31)		# 111110110011111111000
	add	x29, x11, x27
	lw	x29, 0(x29)
	slli	x29, x29, 4
	add	s1, x19, x27
	add	x30, x12, x27
	add	x31, x2, x28
	beqz	a0, .LBB6_16
# %bb.14:                               #   in Loop: Header=BB6_13 Depth=3
	lhu	s0, %lo(UseDefaultScalingMatrix4x4Flag)(t5)
	bnez	s0, .LBB6_16
# %bb.15:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	lh	s0, 0(x31)
	j	.LBB6_17
.LBB6_16:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	s0, t6, x28
	lh	s0, 0(s0)
.LBB6_17:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x12, 0x4c0(x8)		# 010000110010011000000
	divw	s2, x29, s0
	sw	s2, 0(s1)
	lw	x30, 0(x30)
	mul	s0, x30, s0
	add	s3, x20, x27
	sw	s0, 0(s3)
	beqz	a5, .LBB6_20
# %bb.18:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x13, .LBB6_22
# %bb.19:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	s1, t6, x28
	j	.LBB6_23
.LBB6_20:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x2, 0x40(x8)		# 010000001000001000000
	ld	s0, 0(x14)
	ld	s2, 8(s0)
	add	s2, s2, x10
	ld	s2, 0(s2)
	add	s2, s2, x18
	ld	s2, 0(s2)
	lw	s1, 0(s1)
	regsw_c	x0, 0x600(x4)		# 001000000011000000000
	add	s4, s2, x27
	sw	s1, 0(s4)
	lw	s1, 0(s3)
	add	s3, x21, x27
	sw	s1, 0(s3)
	bnez	a4, .LBB6_24
.LBB6_21:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x2, 0x48(x8)		# 010000001000001001000
	ld	s1, 8(x14)
	ld	s4, 8(s1)
	add	s4, s4, x10
	ld	s4, 0(s4)
	add	s2, s2, x27
	add	s4, s4, x18
	ld	s4, 0(s4)
	lw	s2, 0(s2)
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	s4, s4, x27
	sw	s2, 0(s4)
	lw	s2, 0(s3)
	j	.LBB6_28
.LBB6_22:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	addi	s1, x31, 32
.LBB6_23:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x2, 0x8(x8)		# 010000001000000001000
	ld	s0, 0(x14)
	ld	s2, 8(s0)
	add	s2, s2, x10
	ld	s2, 0(s2)
	lh	s1, 0(s1)
	add	s2, s2, x18
	ld	s2, 0(s2)
	regsw_c	x16, 0x4c0(x8)		# 010001000010011000000
	divw	s3, x29, s1
	add	s4, s2, x27
	sw	s3, 0(s4)
	mul	s1, x30, s1
	add	s3, x21, x27
	sw	s1, 0(s3)
	beqz	a4, .LBB6_21
.LBB6_24:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x15, .LBB6_26
# %bb.25:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	add	s2, t6, x28
	j	.LBB6_27
.LBB6_26:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	addi	s2, x31, 64
.LBB6_27:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x2, 0x8(x8)		# 010000001000000001000
	ld	s1, 8(x14)
	ld	s3, 8(s1)
	add	s3, s3, x10
	ld	s3, 0(s3)
	lh	s2, 0(s2)
	add	s3, s3, x18
	ld	s3, 0(s3)
	regsw_c	x16, 0x400(x8)		# 010001000010000000000
	divw	s4, x29, s2
	add	s3, s3, x27
	sw	s4, 0(s3)
	mul	s2, x30, s2
.LBB6_28:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x90(x12)		# 011000000000010010000
	add	s3, x22, x27
	sw	s2, 0(s3)
	lhu	s2, 6(t2)
	snez	s2, s2
	or	s3, x1, s2
	mv	s2, x4
	bnez	s3, .LBB6_30
# %bb.29:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	s2, x3
.LBB6_30:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x4, 0x613(x4)		# 001000010011000010011
	add	s2, s2, x28
	lh	s3, 0(s2)
	divw	s4, x29, s3
	add	s2, x23, x27
	sw	s4, 0(s2)
	mul	s4, x30, s3
	add	s3, x24, x27
	sw	s4, 0(s3)
	beqz	a3, .LBB6_33
# %bb.31:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x16, .LBB6_34
# %bb.32:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	add	s2, x4, x28
	j	.LBB6_35
.LBB6_33:                               #   in Loop: Header=BB6_13 Depth=3
	ld	s0, 0(s0)
	regsw_c	x2, 0x8(x4)		# 001000001000000001000
	add	s0, s0, x10
	ld	s0, 0(s0)
	add	s0, s0, x18
	ld	s0, 0(s0)
	lw	s2, 0(s2)
	add	s4, s0, x27
	sw	s2, 0(s4)
	lw	s3, 0(s3)
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	add	s2, x25, x27
	sw	s3, 0(s2)
	bnez	a2, .LBB6_36
	j	.LBB6_11
.LBB6_34:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	addi	s2, x31, 128
.LBB6_35:                               #   in Loop: Header=BB6_13 Depth=3
	ld	s0, 0(s0)
	regsw_c	x0, 0x211(x4)		# 001000000001000010001
	add	s0, s0, x10
	ld	s0, 0(s0)
	lh	s2, 0(s2)
	add	s0, s0, x18
	ld	s0, 0(s0)
	divw	s3, x29, s2
	add	s4, s0, x27
	sw	s3, 0(s4)
	regsw_c	x16, 0x0(x9)		# 010011000000000000000
	mul	s3, x30, s2
	add	s2, x25, x27
	sw	s3, 0(s2)
	beqz	a2, .LBB6_11
.LBB6_36:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	beqz	x17, .LBB6_38
# %bb.37:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x28)		# 111000000000000000000
	add	x31, x4, x28
	j	.LBB6_39
.LBB6_38:                               #   in Loop: Header=BB6_13 Depth=3
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addi	x31, x31, 160
.LBB6_39:                               #   in Loop: Header=BB6_13 Depth=3
	ld	s0, 0(s1)
	regsw_c	x12, 0x239(x4)		# 001000110001000111001
	add	s0, s0, x10
	ld	s0, 0(s0)
	lh	x31, 0(x31)
	add	s0, s0, x18
	ld	s0, 0(s0)
	divw	x29, x29, x31
	add	s0, s0, x27
	regsw_c	x16, 0x0(x7)		# 001111000000000000000
	sw	x29, 0(s0)
	mul	x29, x30, x31
	j	.LBB6_12
.LBB6_40:
	lui	a1, %hi(LevelScale4x4Luma)
	ld	a7, %lo(LevelScale4x4Luma)(a1)
	lui	a1, %hi(InvLevelScale4x4Luma)
	ld	t0, %lo(InvLevelScale4x4Luma)(a1)
	lui	a1, %hi(LevelScale4x4Chroma)
	ld	a3, %lo(LevelScale4x4Chroma)(a1)
	lui	a1, %hi(InvLevelScale4x4Chroma)
	ld	a4, %lo(InvLevelScale4x4Chroma)(a1)
	ld	a1, 8(a7)
	ld	a2, 8(t0)
	ld	t1, 0(a3)
	ld	t2, 0(a4)
	ld	t3, 8(a3)
	ld	t4, 8(a4)
	ld	a3, 8(t1)
	ld	a4, 8(t2)
	ld	a5, 8(t3)
	ld	a6, 8(t4)
	ld	a7, 0(a7)
	ld	t0, 0(t0)
	ld	t1, 0(t1)
	ld	t2, 0(t2)
	ld	t3, 0(t3)
	ld	t4, 0(t4)
	lui	t5, %hi(quant_coef+32)
	addi	t5, t5, %lo(quant_coef+32)
	lui	t6, %hi(dequant_coef+32)
	addi	t6, t6, %lo(dequant_coef+32)
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x1, 48
.LBB6_41:                               # =>This Inner Loop Header: Depth=1
	regsw_c	x9, 0x534(x19)		# 100110100110100110100
	add	x2, a1, a0
	ld	x3, 0(x2)
	add	x2, a2, a0
	ld	x6, 0(x2)
	add	x2, a3, a0
	ld	x9, 0(x2)
	add	x2, a4, a0
	regsw_c	x13, 0x1a6(x26)		# 110100110100110100110
	ld	x11, 0(x2)
	add	x2, a5, a0
	ld	x12, 0(x2)
	add	x2, a6, a0
	ld	x13, 0(x2)
	add	x2, a7, a0
	ld	x2, 0(x2)
	regsw_c	x9, 0x534(x19)		# 100110100110100110100
	add	x4, t0, a0
	ld	x4, 0(x4)
	add	x5, t1, a0
	ld	x7, 0(x5)
	add	x5, t2, a0
	ld	x5, 0(x5)
	add	x8, t3, a0
	regsw_c	x13, 0x5b6(x26)		# 110100110110110110110
	ld	x8, 0(x8)
	add	x10, t4, a0
	ld	x10, 0(x10)
	ld	x14, 0(x3)
	ld	x15, 0(x6)
	ld	x16, 0(x9)
	ld	x17, 0(x11)
	regsw_c	x9, 0x5b3(x27)		# 110110100110110110011
	ld	x18, 0(x12)
	ld	x19, 0(x13)
	lw	x20, -32(t5)
	ld	x21, 0(x2)
	ld	x22, 0(x4)
	ld	x23, 0(x7)
	sw	x20, 0(x14)
	regsw_c	x13, 0x59b(x19)		# 100110110110110011011
	lw	x24, -32(t6)
	ld	x25, 0(x5)
	ld	x26, 0(x8)
	ld	x27, 0(x10)
	slli	x24, x24, 4
	sw	x24, 0(x15)
	sw	x20, 0(x16)
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sw	x24, 0(x17)
	sw	x20, 0(x18)
	sw	x24, 0(x19)
	sw	x20, 0(x21)
	sw	x24, 0(x22)
	sw	x20, 0(x23)
	sw	x24, 0(x25)
	regsw_c	x24, 0x733(x13)		# 011011100011100110011
	sw	x20, 0(x26)
	sw	x24, 0(x27)
	lw	x20, -28(t5)
	sw	x20, 4(x14)
	lw	x24, -28(t6)
	slli	x24, x24, 4
	sw	x24, 4(x15)
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sw	x20, 4(x16)
	sw	x24, 4(x17)
	sw	x20, 4(x18)
	sw	x24, 4(x19)
	sw	x20, 4(x21)
	sw	x24, 4(x22)
	sw	x20, 4(x23)
	regsw_c	x23, 0xe6(x13)		# 011011011100011100110
	sw	x24, 4(x25)
	sw	x20, 4(x26)
	sw	x24, 4(x27)
	lw	x20, -24(t5)
	sw	x20, 8(x14)
	lw	x24, -24(t6)
	slli	x24, x24, 4
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sw	x24, 8(x15)
	sw	x20, 8(x16)
	sw	x24, 8(x17)
	sw	x20, 8(x18)
	sw	x24, 8(x19)
	sw	x20, 8(x21)
	sw	x24, 8(x22)
	regsw_c	x22, 0x71c(x13)		# 011011011011100011100
	sw	x20, 8(x23)
	sw	x24, 8(x25)
	sw	x20, 8(x26)
	sw	x24, 8(x27)
	lw	x20, -20(t5)
	sw	x20, 12(x14)
	lw	x14, -20(t6)
	regsw_c	x22, 0x6db(x25)		# 110011011011011011011
	slli	x14, x14, 4
	sw	x14, 12(x15)
	sw	x20, 12(x16)
	sw	x14, 12(x17)
	sw	x20, 12(x18)
	sw	x14, 12(x19)
	sw	x20, 12(x21)
	regsw_c	x22, 0x6f6(x13)		# 011011011011011110110
	sw	x14, 12(x22)
	sw	x20, 12(x23)
	sw	x14, 12(x25)
	sw	x20, 12(x26)
	sw	x14, 12(x27)
	ld	x14, 8(x3)
	ld	x15, 8(x6)
	regsw_c	x13, 0x536(x27)		# 110110110110100110110
	ld	x16, 8(x9)
	ld	x17, 8(x11)
	ld	x18, 8(x12)
	ld	x19, 8(x13)
	lw	x20, -16(t5)
	ld	x21, 8(x2)
	ld	x22, 8(x4)
	regsw_c	x25, 0x5b6(x25)		# 110011100110110110110
	ld	x23, 8(x7)
	sw	x20, 0(x14)
	lw	x24, -16(t6)
	ld	x25, 8(x5)
	ld	x26, 8(x8)
	ld	x27, 8(x10)
	slli	x24, x24, 4
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sw	x24, 0(x15)
	sw	x20, 0(x16)
	sw	x24, 0(x17)
	sw	x20, 0(x18)
	sw	x24, 0(x19)
	sw	x20, 0(x21)
	sw	x24, 0(x22)
	regsw_c	x22, 0x71c(x13)		# 011011011011100011100
	sw	x20, 0(x23)
	sw	x24, 0(x25)
	sw	x20, 0(x26)
	sw	x24, 0(x27)
	lw	x20, -12(t5)
	sw	x20, 4(x14)
	lw	x24, -12(t6)
	regsw_c	x22, 0x6db(x25)		# 110011011011011011011
	slli	x24, x24, 4
	sw	x24, 4(x15)
	sw	x20, 4(x16)
	sw	x24, 4(x17)
	sw	x20, 4(x18)
	sw	x24, 4(x19)
	sw	x20, 4(x21)
	regsw_c	x22, 0x6e3(x13)		# 011011011011011100011
	sw	x24, 4(x22)
	sw	x20, 4(x23)
	sw	x24, 4(x25)
	sw	x20, 4(x26)
	sw	x24, 4(x27)
	lw	x20, -8(t5)
	sw	x20, 8(x14)
	regsw_c	x6, 0x6db(x19)		# 100110011011011011011
	lw	x24, -8(t6)
	slli	x24, x24, 4
	sw	x24, 8(x15)
	sw	x20, 8(x16)
	sw	x24, 8(x17)
	sw	x20, 8(x18)
	sw	x24, 8(x19)
	regsw_c	x22, 0x6dc(x13)		# 011011011011011011100
	sw	x20, 8(x21)
	sw	x24, 8(x22)
	sw	x20, 8(x23)
	sw	x24, 8(x25)
	sw	x20, 8(x26)
	sw	x24, 8(x27)
	lw	x20, -4(t5)
	regsw_c	x12, 0x6db(x14)		# 011100110011011011011
	sw	x20, 12(x14)
	lw	x14, -4(t6)
	slli	x14, x14, 4
	sw	x14, 12(x15)
	sw	x20, 12(x16)
	sw	x14, 12(x17)
	sw	x20, 12(x18)
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sw	x14, 12(x19)
	sw	x20, 12(x21)
	sw	x14, 12(x22)
	sw	x20, 12(x23)
	sw	x14, 12(x25)
	sw	x20, 12(x26)
	sw	x14, 12(x27)
	regsw_c	x13, 0x5b4(x27)		# 110110110110110110100
	ld	x14, 16(x3)
	ld	x15, 16(x6)
	ld	x16, 16(x9)
	ld	x17, 16(x11)
	ld	x18, 16(x12)
	ld	x19, 16(x13)
	lw	x20, 0(t5)
	regsw_c	x12, 0x736(x27)		# 110110110011100110110
	ld	x21, 16(x2)
	ld	x22, 16(x4)
	ld	x23, 16(x7)
	sw	x20, 0(x14)
	lw	x24, 0(t6)
	ld	x25, 16(x5)
	ld	x26, 16(x8)
	regsw_c	x6, 0x6db(x27)		# 110110011011011011011
	ld	x27, 16(x10)
	slli	x24, x24, 4
	sw	x24, 0(x15)
	sw	x20, 0(x16)
	sw	x24, 0(x17)
	sw	x20, 0(x18)
	sw	x24, 0(x19)
	regsw_c	x22, 0x6dc(x13)		# 011011011011011011100
	sw	x20, 0(x21)
	sw	x24, 0(x22)
	sw	x20, 0(x23)
	sw	x24, 0(x25)
	sw	x20, 0(x26)
	sw	x24, 0(x27)
	lw	x20, 4(t5)
	regsw_c	x12, 0x6db(x14)		# 011100110011011011011
	sw	x20, 4(x14)
	lw	x24, 4(t6)
	slli	x24, x24, 4
	sw	x24, 4(x15)
	sw	x20, 4(x16)
	sw	x24, 4(x17)
	sw	x20, 4(x18)
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sw	x24, 4(x19)
	sw	x20, 4(x21)
	sw	x24, 4(x22)
	sw	x20, 4(x23)
	sw	x24, 4(x25)
	sw	x20, 4(x26)
	sw	x24, 4(x27)
	regsw_c	x25, 0x4db(x17)		# 100011100110011011011
	lw	x20, 8(t5)
	sw	x20, 8(x14)
	lw	x24, 8(t6)
	slli	x24, x24, 4
	sw	x24, 8(x15)
	sw	x20, 8(x16)
	sw	x24, 8(x17)
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sw	x20, 8(x18)
	sw	x24, 8(x19)
	sw	x20, 8(x21)
	sw	x24, 8(x22)
	sw	x20, 8(x23)
	sw	x24, 8(x25)
	sw	x20, 8(x26)
	regsw_c	x7, 0x19b(x14)		# 011100011100110011011
	sw	x24, 8(x27)
	lw	x20, 12(t5)
	sw	x20, 12(x14)
	lw	x14, 12(t6)
	slli	x14, x14, 4
	sw	x14, 12(x15)
	sw	x20, 12(x16)
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sw	x14, 12(x17)
	sw	x20, 12(x18)
	sw	x14, 12(x19)
	sw	x20, 12(x21)
	sw	x14, 12(x22)
	sw	x20, 12(x23)
	sw	x14, 12(x25)
	regsw_c	x29, 0x5b6(x13)		# 011011110110110110110
	sw	x20, 12(x26)
	sw	x14, 12(x27)
	ld	x3, 24(x3)
	ld	x6, 24(x6)
	ld	x9, 24(x9)
	ld	x11, 24(x11)
	ld	x12, 24(x12)
	regsw_c	x13, 0x59c(x26)		# 110100110110110011100
	ld	x13, 24(x13)
	lw	x14, 16(t5)
	ld	x2, 24(x2)
	ld	x4, 24(x4)
	ld	x7, 24(x7)
	sw	x14, 0(x3)
	lw	x15, 16(t6)
	regsw_c	x13, 0x4db(x27)		# 110110110110011011011
	ld	x5, 24(x5)
	ld	x8, 24(x8)
	ld	x10, 24(x10)
	slli	x15, x15, 4
	sw	x15, 0(x6)
	sw	x14, 0(x9)
	sw	x15, 0(x11)
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sw	x14, 0(x12)
	sw	x15, 0(x13)
	sw	x14, 0(x2)
	sw	x15, 0(x4)
	sw	x14, 0(x7)
	sw	x15, 0(x5)
	sw	x14, 0(x8)
	regsw_c	x7, 0x19b(x14)		# 011100011100110011011
	sw	x15, 0(x10)
	lw	x14, 20(t5)
	sw	x14, 4(x3)
	lw	x15, 20(t6)
	slli	x15, x15, 4
	sw	x15, 4(x6)
	sw	x14, 4(x9)
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sw	x15, 4(x11)
	sw	x14, 4(x12)
	sw	x15, 4(x13)
	sw	x14, 4(x2)
	sw	x15, 4(x4)
	sw	x14, 4(x7)
	sw	x15, 4(x5)
	regsw_c	x24, 0x733(x13)		# 011011100011100110011
	sw	x14, 4(x8)
	sw	x15, 4(x10)
	lw	x14, 24(t5)
	sw	x14, 8(x3)
	lw	x15, 24(t6)
	slli	x15, x15, 4
	sw	x15, 8(x6)
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sw	x14, 8(x9)
	sw	x15, 8(x11)
	sw	x14, 8(x12)
	sw	x15, 8(x13)
	sw	x14, 8(x2)
	sw	x15, 8(x4)
	sw	x14, 8(x7)
	regsw_c	x23, 0xe6(x13)		# 011011011100011100110
	sw	x15, 8(x5)
	sw	x14, 8(x8)
	sw	x15, 8(x10)
	lw	x14, 28(t5)
	sw	x14, 12(x3)
	lw	x3, 28(t6)
	slli	x3, x3, 4
	regsw_c	x22, 0x6db(x13)		# 011011011011011011011
	sw	x3, 12(x6)
	sw	x14, 12(x9)
	sw	x3, 12(x11)
	sw	x14, 12(x12)
	sw	x3, 12(x13)
	sw	x14, 12(x2)
	sw	x3, 12(x4)
	regsw_c	x22, 0x600(x13)		# 011011011011000000000
	sw	x14, 12(x7)
	sw	x3, 12(x5)
	sw	x14, 12(x8)
	sw	x3, 12(x10)
	addi	a0, a0, 8
	addi	t5, t5, 64
	addi	t6, t6, 64
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	bne	a0, x1, .LBB6_41
.LBB6_42:
	ld	s0, 40(sp)                      # 8-byte Folded Reload
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
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
	lui	a2, %hi(dequant_coef8)
	addi	a2, a2, %lo(dequant_coef8)
	lui	a3, %hi(quant_coef8)
	addi	a3, a3, %lo(quant_coef8)
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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x1, 6
	j	.LBB7_7
.LBB7_6:                                #   in Loop: Header=BB7_7 Depth=1
	addi	a1, a1, 1
	addi	a2, a2, 256
	addi	a3, a3, 256
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	beq	a1, x1, .LBB7_21
.LBB7_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
                                        #       Child Loop BB7_11 Depth 3
	regsw_c	x9, 0x100(x18)		# 100100100100100000000
	li	x2, 0
	li	x3, 0
	slli	x4, a1, 3
	mv	x5, a3
	mv	x6, a2
	j	.LBB7_9
.LBB7_8:                                #   in Loop: Header=BB7_9 Depth=2
	regsw_c	x13, 0x480(x27)		# 110110110110010000000
	addi	x3, x3, 1
	addi	x6, x6, 32
	addi	x5, x5, 32
	addi	x2, x2, 2
	beq	x3, t6, .LBB7_6
.LBB7_9:                                #   Parent Loop BB7_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_11 Depth 3
	regsw_c	x9, 0x7b6(x19)		# 100110100111110110110
	ld	x7, %lo(LevelScale8x8Luma)(a4)
	ld	x8, 8(x7)
	ld	x9, %lo(InvLevelScale8x8Luma)(a5)
	add	x8, x8, x4
	ld	x8, 0(x8)
	ld	x10, 8(x9)
	slli	x11, x3, 3
	regsw_c	x29, 0x5b7(x31)		# 111111110110110110111
	add	x8, x8, x11
	add	x10, x10, x4
	ld	x10, 0(x10)
	ld	x12, 0(x7)
	ld	x7, 0(x8)
	ld	x8, 0(x9)
	add	x10, x10, x11
	regsw_c	x15, 0x5be(x31)		# 111110111110110111110
	add	x12, x12, x4
	ld	x9, 0(x12)
	add	x8, x8, x4
	ld	x12, 0(x8)
	ld	x8, 0(x10)
	add	x9, x9, x11
	ld	x9, 0(x9)
	regsw_c	x9, 0x400(x31)		# 111110100110000000000
	add	x11, x12, x11
	ld	x10, 0(x11)
	li	x11, 0
	mv	x12, x2
	j	.LBB7_11
.LBB7_10:                               #   in Loop: Header=BB7_11 Depth=3
	regsw_c	x15, 0x6ff(x31)		# 111110111111011111111
	add	x15, x15, x12
	lh	x15, 0(x15)
	divw	x13, x13, x15
	add	x16, x9, x11
	sw	x13, 0(x16)
	mul	x13, x14, x15
	add	x14, x10, x11
	regsw_c	x12, 0x400(x15)		# 011110110010000000000
	sw	x13, 0(x14)
	addi	x11, x11, 4
	addi	x12, x12, 16
	beq	x11, t5, .LBB7_8
.LBB7_11:                               #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	regsw_c	x13, 0x7c0(x31)		# 111110110111111000000
	add	x13, x5, x11
	lw	x13, 0(x13)
	slli	x13, x13, 4
	add	x15, x7, x11
	add	x14, x6, x11
	beqz	a0, .LBB7_14
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=3
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	lhu	x16, %lo(UseDefaultScalingMatrix8x8Flag)(a6)
	bnez	x16, .LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_11 Depth=3
	regsw_c	x0, 0x0(x20)		# 101000000000000000000
	add	x16, t2, x12
	j	.LBB7_15
.LBB7_14:                               #   in Loop: Header=BB7_11 Depth=3
	regsw_c	x0, 0x0(x20)		# 101000000000000000000
	add	x16, a7, x12
.LBB7_15:                               #   in Loop: Header=BB7_11 Depth=3
	regsw_c	x23, 0x5fb(x27)		# 110111011110111111011
	lh	x16, 0(x16)
	divw	x17, x13, x16
	sw	x17, 0(x15)
	lw	x14, 0(x14)
	mul	x15, x14, x16
	add	x16, x8, x11
	sw	x15, 0(x16)
	regsw_c	x27, 0x80(x18)		# 100101101100010000000
	lhu	x15, %lo(UseDefaultScalingMatrix8x8Flag+2)(t1)
	snez	x15, x15
	or	x16, t0, x15
	mv	x15, t4
	bnez	x16, .LBB7_10
# %bb.16:                               #   in Loop: Header=BB7_11 Depth=3
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x15, t3
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
	regsw_c	x7, 0x124(x18)		# 100100011100100100100
	ld	x1, 0(t0)
	lw	x2, -16(t6)
	sw	x2, 0(x1)
	lw	x3, -16(t5)
	ld	x4, 0(t1)
	ld	x5, 0(t2)
	ld	x6, 0(t3)
	regsw_c	x22, 0x71c(x25)		# 110011011011100011100
	slli	x3, x3, 4
	sw	x3, 0(x4)
	sw	x2, 0(x5)
	sw	x3, 0(x6)
	lw	x2, -12(t6)
	sw	x2, 4(x1)
	lw	x3, -12(t5)
	regsw_c	x22, 0x71c(x25)		# 110011011011100011100
	slli	x3, x3, 4
	sw	x3, 4(x4)
	sw	x2, 4(x5)
	sw	x3, 4(x6)
	lw	x2, -8(t6)
	sw	x2, 8(x1)
	lw	x3, -8(t5)
	regsw_c	x22, 0x71c(x25)		# 110011011011100011100
	slli	x3, x3, 4
	sw	x3, 8(x4)
	sw	x2, 8(x5)
	sw	x3, 8(x6)
	lw	x2, -4(t6)
	sw	x2, 12(x1)
	lw	x3, -4(t5)
	regsw_c	x22, 0x71c(x25)		# 110011011011100011100
	slli	x3, x3, 4
	sw	x3, 12(x4)
	sw	x2, 12(x5)
	sw	x3, 12(x6)
	lw	x2, 0(t6)
	sw	x2, 16(x1)
	lw	x3, 0(t5)
	regsw_c	x22, 0x71c(x25)		# 110011011011100011100
	slli	x3, x3, 4
	sw	x3, 16(x4)
	sw	x2, 16(x5)
	sw	x3, 16(x6)
	lw	x2, 4(t6)
	sw	x2, 20(x1)
	lw	x3, 4(t5)
	regsw_c	x22, 0x71c(x25)		# 110011011011100011100
	slli	x3, x3, 4
	sw	x3, 20(x4)
	sw	x2, 20(x5)
	sw	x3, 20(x6)
	lw	x2, 8(t6)
	sw	x2, 24(x1)
	lw	x3, 8(t5)
	regsw_c	x22, 0x71c(x25)		# 110011011011100011100
	slli	x3, x3, 4
	sw	x3, 24(x4)
	sw	x2, 24(x5)
	sw	x3, 24(x6)
	lw	x2, 12(t6)
	sw	x2, 28(x1)
	lw	x1, 12(t5)
	regsw_c	x22, 0x600(x25)		# 110011011011000000000
	slli	x1, x1, 4
	sw	x1, 28(x4)
	sw	x2, 28(x5)
	sw	x1, 28(x6)
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
