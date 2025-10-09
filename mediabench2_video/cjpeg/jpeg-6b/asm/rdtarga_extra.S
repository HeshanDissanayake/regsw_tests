	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"rdtarga.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_read_targa                # -- Begin function jinit_read_targa
	.p2align	2
	.type	jinit_read_targa,@function
jinit_read_targa:                       # @jinit_read_targa
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 112
	mv	a0, s0
	jalr	a3
	sd	s0, 48(a0)
	lui	a1, %hi(start_input_tga)
	addi	a1, a1, %lo(start_input_tga)
	sd	a1, 0(a0)
	lui	a1, %hi(finish_input_tga)
	addi	a1, a1, %lo(finish_input_tga)
	sd	a1, 16(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	jinit_read_targa, .Lfunc_end0-jinit_read_targa
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_input_tga
	.type	start_input_tga,@function
start_input_tga:                        # @start_input_tga
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
	mv	s1, a1
	ld	a3, 24(a1)
	mv	s0, a0
	addi	a0, sp, 6
	li	a1, 1
	li	a2, 18
	li	s2, 18
	call	fread
	beq	a0, s2, .LBB1_2
# %bb.1:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 43
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_2:
	lbu	a0, 22(sp)
	li	a1, 15
	bne	a0, a1, .LBB1_4
# %bb.3:
	li	a0, 16
.LBB1_4:
	sb	a0, 22(sp)
	lbu	s7, 6(sp)
	lbu	s6, 7(sp)
	lbu	s8, 8(sp)
	lbu	s5, 11(sp)
	lbu	s3, 12(sp)
	lbu	s2, 18(sp)
	lbu	s11, 19(sp)
	lbu	s9, 20(sp)
	lbu	s4, 21(sp)
	lbu	s10, 23(sp)
	srli	a1, a0, 3
	li	a2, 1
	sw	a1, 92(s1)
	bltu	a2, s6, .LBB1_10
# %bb.5:
	addi	a1, a0, -40
	li	a2, -32
	bltu	a1, a2, .LBB1_10
# %bb.6:
	andi	a0, a0, 7
	bnez	a0, .LBB1_10
# %bb.7:
	li	a0, 64
	bgeu	s10, a0, .LBB1_10
# %bb.8:
	slli	s11, s11, 8
	li	a1, 9
	slli	a0, s4, 8
	bltu	s8, a1, .LBB1_11
.LBB1_9:
	sd	zero, 96(s1)
	addi	s8, s8, -8
	lui	a1, %hi(read_rle_pixel)
	addi	a1, a1, %lo(read_rle_pixel)
	j	.LBB1_12
.LBB1_10:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1033
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	slli	s11, s11, 8
	li	a1, 9
	slli	a0, s4, 8
	bgeu	s8, a1, .LBB1_9
.LBB1_11:
	lui	a1, %hi(read_non_rle_pixel)
	addi	a1, a1, %lo(read_non_rle_pixel)
.LBB1_12:
	or	s4, s11, s2
	or	s2, a0, s9
	andi	s9, s10, 32
	sd	a1, 80(s1)
	li	a0, 2
	li	a1, 3
	sw	a0, 60(s0)
	beq	s8, a1, .LBB1_22
# %bb.13:
	beq	s8, a0, .LBB1_18
# %bb.14:
	li	a0, 1
	bne	s8, a0, .LBB1_24
# %bb.15:
	lw	a1, 92(s1)
	bne	a1, a0, .LBB1_26
# %bb.16:
	li	a0, 1
	bne	s6, a0, .LBB1_26
# %bb.17:
	lui	a0, %hi(get_8bit_row)
	addi	a0, a0, %lo(get_8bit_row)
	sd	a0, 104(s1)
	j	.LBB1_27
.LBB1_18:
	lw	a0, 92(s1)
	li	a1, 4
	beq	a0, a1, .LBB1_25
# %bb.19:
	li	a1, 3
	beq	a0, a1, .LBB1_25
# %bb.20:
	li	a1, 2
	bne	a0, a1, .LBB1_31
# %bb.21:
	lui	a0, %hi(get_16bit_row)
	addi	a0, a0, %lo(get_16bit_row)
	sd	a0, 104(s1)
	j	.LBB1_32
.LBB1_22:
	lw	a0, 92(s1)
	li	a1, 1
	sw	a1, 60(s0)
	bne	a0, a1, .LBB1_28
# %bb.23:
	lui	a0, %hi(get_8bit_gray_row)
	addi	a0, a0, %lo(get_8bit_gray_row)
	sd	a0, 104(s1)
	j	.LBB1_29
.LBB1_24:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1033
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB1_34
.LBB1_25:
	lui	a0, %hi(get_24bit_row)
	addi	a0, a0, %lo(get_24bit_row)
	sd	a0, 104(s1)
	j	.LBB1_32
.LBB1_26:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1033
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_27:
	ld	a0, 0(s0)
	sw	s4, 44(a0)
	ld	a1, 0(s0)
	li	a2, 1037
	j	.LBB1_33
.LBB1_28:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1033
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_29:
	ld	a0, 0(s0)
	sw	s4, 44(a0)
	ld	a1, 0(s0)
	li	a2, 1036
	sw	a2, 40(a0)
	sw	s2, 48(a1)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 1
	li	s8, 1
	mv	a0, s0
	jalr	a2
	slli	s10, s3, 8
	beqz	s9, .LBB1_35
.LBB1_30:
	ld	a0, 8(s0)
	ld	a4, 16(a0)
	sd	zero, 64(s1)
	mul	a2, s8, s4
	li	a1, 1
	li	a3, 1
	li	s3, 1
	mv	a0, s0
	jalr	a4
	ld	a1, 104(s1)
	sd	a0, 32(s1)
	sw	s3, 40(s1)
	or	s3, s10, s5
	sd	a1, 8(s1)
	bnez	s7, .LBB1_38
	j	.LBB1_42
.LBB1_31:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1033
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_32:
	ld	a0, 0(s0)
	sw	s4, 44(a0)
	ld	a1, 0(s0)
	li	a2, 1035
.LBB1_33:
	sw	a2, 40(a0)
	sw	s2, 48(a1)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
.LBB1_34:
	li	s8, 3
	slli	s10, s3, 8
	bnez	s9, .LBB1_30
.LBB1_35:
	ld	a0, 8(s0)
	ld	a6, 32(a0)
	mul	a3, s8, s4
	li	a1, 1
	li	a5, 1
	li	s3, 1
	mv	a0, s0
	li	a2, 0
	mv	a4, s2
	jalr	a6
	ld	a1, 16(s0)
	sd	a0, 64(s1)
	beqz	a1, .LBB1_37
# %bb.36:
	lw	a0, 36(a1)
	addi	a0, a0, 1
	sw	a0, 36(a1)
.LBB1_37:
	sw	s3, 40(s1)
	lui	a1, %hi(preload_image)
	addi	a1, a1, %lo(preload_image)
	or	s3, s10, s5
	sd	a1, 8(s1)
	beqz	s7, .LBB1_42
.LBB1_38:
	li	s9, -1
	li	s11, 43
	j	.LBB1_40
.LBB1_39:                               #   in Loop: Header=BB1_40 Depth=1
	addiw	s7, s7, -1
	beqz	s7, .LBB1_42
.LBB1_40:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 24(s1)
	call	getc
	bne	a0, s9, .LBB1_39
# %bb.41:                               #   in Loop: Header=BB1_40 Depth=1
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s11, 40(a1)
	jalr	a2
	j	.LBB1_39
.LBB1_42:
	beqz	s3, .LBB1_56
# %bb.43:
	li	a0, 256
	bltu	a0, s3, .LBB1_45
# %bb.44:
	lbu	a0, 10(sp)
	lbu	a1, 9(sp)
	slli	a0, a0, 8
	or	a0, a0, a1
	beqz	a0, .LBB1_46
.LBB1_45:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1032
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_46:
	ld	a0, 8(s0)
	ld	a4, 16(a0)
	li	a1, 1
	li	a3, 3
	mv	a0, s0
	mv	a2, s3
	jalr	a4
	lbu	a1, 13(sp)
	li	a2, 24
	sd	a0, 56(s1)
	beq	a1, a2, .LBB1_48
# %bb.47:
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 1032
	sw	a3, 40(a1)
	jalr	a2
.LBB1_48:
	li	s6, 0
	add	s5, s10, s5
	li	s7, -1
	li	s9, 43
	j	.LBB1_50
.LBB1_49:                               #   in Loop: Header=BB1_50 Depth=1
	ld	a0, 56(s1)
	ld	a0, 0(a0)
	add	a0, a0, s6
	addi	s6, s6, 1
	sb	s3, 0(a0)
	beq	s5, s6, .LBB1_59
.LBB1_50:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 24(s1)
	call	getc
	mv	s3, a0
	bne	a0, s7, .LBB1_52
# %bb.51:                               #   in Loop: Header=BB1_50 Depth=1
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s9, 40(a1)
	jalr	a2
.LBB1_52:                               #   in Loop: Header=BB1_50 Depth=1
	ld	a0, 56(s1)
	ld	a0, 16(a0)
	add	a0, a0, s6
	sb	s3, 0(a0)
	ld	a0, 24(s1)
	call	getc
	mv	s3, a0
	bne	a0, s7, .LBB1_54
# %bb.53:                               #   in Loop: Header=BB1_50 Depth=1
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s9, 40(a1)
	jalr	a2
.LBB1_54:                               #   in Loop: Header=BB1_50 Depth=1
	ld	a0, 56(s1)
	ld	a0, 8(a0)
	add	a0, a0, s6
	sb	s3, 0(a0)
	ld	a0, 24(s1)
	call	getc
	mv	s3, a0
	bne	a0, s7, .LBB1_49
# %bb.55:                               #   in Loop: Header=BB1_50 Depth=1
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s9, 40(a1)
	jalr	a2
	j	.LBB1_49
.LBB1_56:
	beqz	s6, .LBB1_58
# %bb.57:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1033
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_58:
	sd	zero, 56(s1)
.LBB1_59:
	sw	s8, 56(s0)
	li	a0, 8
	sw	a0, 72(s0)
	sw	s4, 48(s0)
	sw	s2, 52(s0)
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
.Lfunc_end1:
	.size	start_input_tga, .Lfunc_end1-start_input_tga
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_input_tga
	.type	finish_input_tga,@function
finish_input_tga:                       # @finish_input_tga
# %bb.0:
	ret
.Lfunc_end2:
	.size	finish_input_tga, .Lfunc_end2-finish_input_tga
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function read_rle_pixel
	.type	read_rle_pixel,@function
read_rle_pixel:                         # @read_rle_pixel
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 100(a0)
	blez	a0, .LBB3_2
# %bb.1:
	addi	a0, a0, -1
	sw	a0, 100(s0)
	j	.LBB3_12
.LBB3_2:
	lw	a0, 96(s0)
	ld	s1, 24(s0)
	addi	a1, a0, -1
	sw	a1, 96(s0)
	bgtz	a0, .LBB3_9
# %bb.3:
	mv	a0, s1
	call	getc
	li	a1, -1
	mv	s2, a0
	beq	a0, a1, .LBB3_6
# %bb.4:
	andi	a0, s2, 128
	bnez	a0, .LBB3_7
# %bb.5:
	andi	a0, s2, 127
	j	.LBB3_8
.LBB3_6:
	ld	a0, 48(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 43
	sw	a3, 40(a1)
	jalr	a2
.LBB3_7:
	li	a0, 0
	andi	a1, s2, 127
	sw	a1, 100(s0)
.LBB3_8:
	sw	a0, 96(s0)
.LBB3_9:
	lw	a0, 92(s0)
	blez	a0, .LBB3_12
# %bb.10:
	li	s2, 0
	addi	s3, s0, 88
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	mv	a0, s1
	call	getc
	add	a1, s3, s2
	sb	a0, 0(a1)
	lw	a0, 92(s0)
	addi	s2, s2, 1
	blt	s2, a0, .LBB3_11
.LBB3_12:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end3:
	.size	read_rle_pixel, .Lfunc_end3-read_rle_pixel
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function read_non_rle_pixel
	.type	read_non_rle_pixel,@function
read_non_rle_pixel:                     # @read_non_rle_pixel
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lw	a0, 92(a0)
	blez	a0, .LBB4_3
# %bb.1:
	ld	s1, 24(s0)
	li	s2, 0
	addi	s3, s0, 88
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	mv	a0, s1
	call	getc
	add	a1, s3, s2
	sb	a0, 0(a1)
	lw	a0, 92(s0)
	addi	s2, s2, 1
	blt	s2, a0, .LBB4_2
.LBB4_3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end4:
	.size	read_non_rle_pixel, .Lfunc_end4-read_non_rle_pixel
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_8bit_row
	.type	get_8bit_row,@function
get_8bit_row:                           # @get_8bit_row
# %bb.0:
	lw	a0, 48(a0)
	beqz	a0, .LBB5_4
# %bb.1:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	ld	a1, 32(a1)
	ld	s1, 56(s0)
	ld	s2, 0(a1)
	addi	a0, a0, -1
	slli	a0, a0, 32
	srli	a1, a0, 32
	srli	a0, a0, 31
	add	a0, a0, a1
	add	a0, a0, s2
	addi	s3, a0, 3
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	ld	a1, 80(s0)
	mv	a0, s0
	jalr	a1
	lbu	a0, 88(s0)
	ld	a1, 0(s1)
	add	a1, a1, a0
	lbu	a1, 0(a1)
	sb	a1, 0(s2)
	ld	a1, 8(s1)
	add	a1, a1, a0
	lbu	a1, 0(a1)
	sb	a1, 1(s2)
	ld	a1, 16(s1)
	add	a0, a1, a0
	lbu	a0, 0(a0)
	addi	a1, s2, 3
	sb	a0, 2(s2)
	mv	s2, a1
	bne	a1, s3, .LBB5_2
# %bb.3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
.LBB5_4:
	li	a0, 1
	ret
.Lfunc_end5:
	.size	get_8bit_row, .Lfunc_end5-get_8bit_row
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_16bit_row
	.type	get_16bit_row,@function
get_16bit_row:                          # @get_16bit_row
# %bb.0:
	lw	a0, 48(a0)
	beqz	a0, .LBB6_4
# %bb.1:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	ld	a1, 32(a1)
	ld	a1, 0(a1)
	addi	s1, a1, 2
	addi	a0, a0, -1
	slli	a0, a0, 32
	srli	a2, a0, 32
	srli	a0, a0, 31
	add	a0, a0, a2
	add	a0, a0, a1
	addi	s2, a0, 5
	lui	s3, %hi(c5to8bits)
	addi	s3, s3, %lo(c5to8bits)
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	ld	a1, 80(s0)
	mv	a0, s0
	jalr	a1
	lbu	a0, 88(s0)
	lbu	a1, 89(s0)
	andi	a2, a0, 31
	add	a2, s3, a2
	lbu	a2, 0(a2)
	slli	a3, a1, 8
	or	a0, a3, a0
	sb	a2, 0(s1)
	slli	a0, a0, 54
	srli	a0, a0, 59
	add	a0, s3, a0
	lbu	a0, 0(a0)
	sb	a0, -1(s1)
	slli	a1, a1, 57
	srli	a1, a1, 59
	add	a1, s3, a1
	lbu	a0, 0(a1)
	sb	a0, -2(s1)
	addi	s1, s1, 3
	bne	s1, s2, .LBB6_2
# %bb.3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
.LBB6_4:
	li	a0, 1
	ret
.Lfunc_end6:
	.size	get_16bit_row, .Lfunc_end6-get_16bit_row
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_24bit_row
	.type	get_24bit_row,@function
get_24bit_row:                          # @get_24bit_row
# %bb.0:
	lw	a0, 48(a0)
	beqz	a0, .LBB7_4
# %bb.1:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	ld	a1, 32(a1)
	ld	s1, 0(a1)
	addi	a0, a0, -1
	slli	a0, a0, 32
	srli	a1, a0, 32
	srli	a0, a0, 31
	add	a0, a0, a1
	add	a0, a0, s1
	addi	s2, a0, 3
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	ld	a1, 80(s0)
	mv	a0, s0
	jalr	a1
	lbu	a0, 90(s0)
	sb	a0, 0(s1)
	lbu	a0, 89(s0)
	sb	a0, 1(s1)
	lbu	a0, 88(s0)
	addi	a1, s1, 3
	sb	a0, 2(s1)
	mv	s1, a1
	bne	a1, s2, .LBB7_2
# %bb.3:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
.LBB7_4:
	li	a0, 1
	ret
.Lfunc_end7:
	.size	get_24bit_row, .Lfunc_end7-get_24bit_row
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_8bit_gray_row
	.type	get_8bit_gray_row,@function
get_8bit_gray_row:                      # @get_8bit_gray_row
# %bb.0:
	lw	a0, 48(a0)
	beqz	a0, .LBB8_4
# %bb.1:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a1
	ld	a1, 32(a1)
	ld	s1, 0(a1)
	addi	a0, a0, -1
	slli	a0, a0, 32
	srli	a0, a0, 32
	add	a0, a0, s1
	addi	s2, a0, 1
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	ld	a1, 80(s0)
	mv	a0, s0
	jalr	a1
	lbu	a0, 88(s0)
	addi	a1, s1, 1
	sb	a0, 0(s1)
	mv	s1, a1
	bne	a1, s2, .LBB8_2
# %bb.3:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
.LBB8_4:
	li	a0, 1
	ret
.Lfunc_end8:
	.size	get_8bit_gray_row, .Lfunc_end8-get_8bit_gray_row
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function preload_image
	.type	preload_image,@function
preload_image:                          # @preload_image
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	lw	a2, 52(a0)
	ld	s3, 16(a0)
	mv	s0, a1
	beqz	a2, .LBB9_5
# %bb.1:
	li	s2, 0
	beqz	s3, .LBB9_4
# %bb.2:                                # %.preheader1
	li	s4, 0
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	sd	s4, 8(s3)
	ld	a1, 0(s3)
	slli	a2, a2, 32
	srli	a2, a2, 32
	sd	a2, 16(s3)
	mv	a0, s1
	jalr	a1
	ld	a0, 8(s1)
	ld	a5, 56(a0)
	ld	a1, 64(s0)
	li	a3, 1
	li	a4, 1
	mv	a0, s1
	mv	a2, s2
	jalr	a5
	ld	a2, 104(s0)
	sd	a0, 32(s0)
	mv	a0, s1
	mv	a1, s0
	jalr	a2
	lwu	a2, 52(s1)
	addi	s4, s4, 1
	addiw	s2, s2, 1
	bltu	s4, a2, .LBB9_3
	j	.LBB9_6
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 8(s1)
	ld	a5, 56(a0)
	ld	a1, 64(s0)
	li	a3, 1
	li	a4, 1
	mv	a0, s1
	mv	a2, s2
	jalr	a5
	ld	a2, 104(s0)
	sd	a0, 32(s0)
	mv	a0, s1
	mv	a1, s0
	jalr	a2
	lw	a2, 52(s1)
	addiw	s2, s2, 1
	bltu	s2, a2, .LBB9_4
.LBB9_5:
	beqz	s3, .LBB9_7
.LBB9_6:
	lw	a0, 32(s3)
	addi	a0, a0, 1
	sw	a0, 32(s3)
.LBB9_7:
	ld	a0, 8(s1)
	lui	a3, %hi(get_memory_row)
	addi	a3, a3, %lo(get_memory_row)
	ld	a5, 56(a0)
	ld	a1, 64(s0)
	sd	a3, 8(s0)
	sw	zero, 72(s0)
	addiw	a2, a2, -1
	li	a3, 1
	mv	a0, s1
	li	a4, 0
	jalr	a5
	lw	a1, 72(s0)
	sd	a0, 32(s0)
	addi	a1, a1, 1
	li	a0, 1
	sw	a1, 72(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end9:
	.size	preload_image, .Lfunc_end9-preload_image
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_memory_row
	.type	get_memory_row,@function
get_memory_row:                         # @get_memory_row
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	ld	a2, 8(a0)
	mv	s0, a1
	lw	a3, 52(a0)
	lw	a4, 72(a1)
	ld	a5, 56(a2)
	ld	a1, 64(a1)
	not	a2, a4
	addw	a2, a3, a2
	li	a3, 1
	li	a4, 0
	jalr	a5
	lw	a1, 72(s0)
	sd	a0, 32(s0)
	addi	a1, a1, 1
	li	a0, 1
	sw	a1, 72(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end10:
	.size	get_memory_row, .Lfunc_end10-get_memory_row
                                        # -- End function
	.option	pop
	.type	c5to8bits,@object               # @c5to8bits
	.section	.rodata.cst32,"aM",@progbits,32
c5to8bits:
	.ascii	"\000\b\020\031!)1:BJRZcks{\204\214\224\234\245\255\265\275\305\316\326\336\346\357\367\377"
	.size	c5to8bits, 32

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
