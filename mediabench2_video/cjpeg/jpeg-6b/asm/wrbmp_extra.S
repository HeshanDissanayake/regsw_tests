	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"wrbmp.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_write_bmp                 # -- Begin function jinit_write_bmp
	.p2align	2
	.type	jinit_write_bmp,@function
jinit_write_bmp:                        # @jinit_write_bmp
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	mv	s2, a1
	li	a1, 1
	li	a2, 80
	li	s3, 1
	mv	a0, s0
	jalr	a3
	mv	s1, a0
	lui	a0, %hi(start_output_bmp)
	addi	a0, a0, %lo(start_output_bmp)
	sd	a0, 0(s1)
	lw	a0, 64(s0)
	lui	a1, %hi(finish_output_bmp)
	addi	a1, a1, %lo(finish_output_bmp)
	sd	a1, 16(s1)
	li	a1, 2
	sw	s2, 48(s1)
	beq	a0, a1, .LBB0_3
# %bb.1:
	beq	a0, s3, .LBB0_4
# %bb.2:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1005
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB0_6
.LBB0_3:
	lw	a0, 108(s0)
	beqz	a0, .LBB0_9
.LBB0_4:
	lui	a0, %hi(put_gray_rows)
	addi	a0, a0, %lo(put_gray_rows)
.LBB0_5:
	sd	a0, 8(s1)
.LBB0_6:
	mv	a0, s0
	call	jpeg_calc_output_dimensions
	lw	a0, 136(s0)
	lw	a1, 148(s0)
	mul	a0, a1, a0
	ld	a1, 8(s0)
	sw	a0, 64(s1)
	negw	a2, a0
	andi	a2, a2, 3
	ld	a6, 32(a1)
	lw	a4, 140(s0)
	addw	s2, a0, a2
	sw	s2, 68(s1)
	sw	a2, 72(s1)
	li	a1, 1
	li	a5, 1
	li	s3, 1
	mv	a0, s0
	li	a2, 0
	mv	a3, s2
	jalr	a6
	ld	a1, 16(s0)
	sd	a0, 56(s1)
	sw	zero, 76(s1)
	beqz	a1, .LBB0_8
# %bb.7:
	lw	a0, 36(a1)
	addi	a0, a0, 1
	sw	a0, 36(a1)
.LBB0_8:
	ld	a0, 8(s0)
	ld	a4, 16(a0)
	li	a1, 1
	li	a3, 1
	mv	a0, s0
	mv	a2, s2
	jalr	a4
	sd	a0, 32(s1)
	sw	s3, 40(s1)
	mv	a0, s1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB0_9:
	lui	a0, %hi(put_pixel_rows)
	addi	a0, a0, %lo(put_pixel_rows)
	j	.LBB0_5
.Lfunc_end0:
	.size	jinit_write_bmp, .Lfunc_end0-jinit_write_bmp
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_output_bmp
	.type	start_output_bmp,@function
start_output_bmp:                       # @start_output_bmp
# %bb.0:
	ret
.Lfunc_end1:
	.size	start_output_bmp, .Lfunc_end1-start_output_bmp
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_output_bmp
	.type	finish_output_bmp,@function
finish_output_bmp:                      # @finish_output_bmp
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
	mv	s2, a1
	mv	s0, a0
	ld	s1, 24(a1)
	lw	a0, 48(a1)
	ld	s4, 16(s0)
	beqz	a0, .LBB2_5
# %bb.1:
	lw	a1, 64(s0)
	li	a2, 2
	li	a0, 1
	bne	a1, a2, .LBB2_9
# %bb.2:
	lw	a2, 108(s0)
	snez	s5, a2
	li	a1, 8
	bnez	a2, .LBB2_4
# %bb.3:
	li	a1, 24
.LBB2_4:
	slli	s3, s5, 8
	j	.LBB2_10
.LBB2_5:
	lw	a0, 64(s0)
	li	s6, 2
	li	s7, 1
	bne	a0, s6, .LBB2_16
# %bb.6:
	lw	a0, 108(s0)
	snez	s5, a0
	li	s8, 8
	bnez	a0, .LBB2_8
# %bb.7:
	li	s8, 24
.LBB2_8:
	slli	s3, s5, 8
	j	.LBB2_17
.LBB2_9:
	li	s3, 256
	li	a1, 8
	li	s5, 1
.LBB2_10:
	lwu	a2, 68(s2)
	lwu	a3, 140(s0)
	slli	a4, s3, 1
	add	a4, a4, s3
	ori	a5, a4, 26
	mul	a2, a3, a2
	add	a2, a2, a5
	sb	zero, 19(sp)
	sb	zero, 18(sp)
	sb	zero, 17(sp)
	sb	zero, 16(sp)
	sb	zero, 53(sp)
	sb	zero, 52(sp)
	li	a5, 66
	sb	a5, 10(sp)
	li	a5, 77
	sb	a5, 11(sp)
	sb	a2, 12(sp)
	srli	a5, a2, 8
	sb	a5, 13(sp)
	srli	a5, a2, 16
	sb	a5, 14(sp)
	srli	a2, a2, 24
	sb	a2, 15(sp)
	li	a2, 26
	sb	a2, 20(sp)
	srli	a4, a4, 8
	sb	a4, 21(sp)
	sb	zero, 22(sp)
	sb	zero, 23(sp)
	lw	a2, 136(s0)
	li	s6, 12
	sb	s6, 50(sp)
	sb	zero, 51(sp)
	sb	a2, 54(sp)
	srli	a2, a2, 8
	sb	a2, 55(sp)
	sb	a3, 56(sp)
	srli	a3, a3, 8
	sb	a3, 57(sp)
	sb	a0, 58(sp)
	sb	zero, 59(sp)
	sb	a1, 60(sp)
	sb	zero, 61(sp)
	addi	a0, sp, 10
	li	a1, 1
	li	a2, 14
	li	s7, 14
	mv	a3, s1
	call	fwrite
	beq	a0, s7, .LBB2_12
# %bb.11:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 37
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB2_12:
	ld	a3, 24(s2)
	addi	a0, sp, 50
	li	a1, 1
	li	a2, 12
	call	fwrite
	beq	a0, s6, .LBB2_14
# %bb.13:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 37
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB2_14:
	beqz	s5, .LBB2_26
# %bb.15:
	ld	a1, 24(s2)
	li	a3, 3
	j	.LBB2_25
.LBB2_16:
	li	s3, 256
	li	s8, 8
	li	s5, 1
.LBB2_17:
	lwu	a0, 68(s2)
	lwu	s9, 140(s0)
	slli	a1, s3, 2
	ori	a1, a1, 54
	mul	a0, s9, a0
	add	s10, a0, a1
	sb	zero, 59(sp)
	sb	zero, 58(sp)
	sb	zero, 57(sp)
	sb	zero, 56(sp)
	addi	a0, sp, 12
	li	a2, 38
	li	a1, 0
	call	memset
	li	a0, 66
	sb	a0, 50(sp)
	li	a0, 77
	sb	a0, 51(sp)
	sb	s10, 52(sp)
	srli	a0, s10, 8
	sb	a0, 53(sp)
	srli	a0, s10, 16
	sb	a0, 54(sp)
	srli	a0, s10, 24
	sb	a0, 55(sp)
	li	a0, 54
	sb	a0, 60(sp)
	srli	a0, s3, 6
	sb	a0, 61(sp)
	sb	zero, 62(sp)
	sb	zero, 63(sp)
	lw	a0, 136(s0)
	li	a1, 40
	sb	a1, 10(sp)
	sb	zero, 11(sp)
	sb	a0, 14(sp)
	srli	a1, a0, 8
	sb	a1, 15(sp)
	srli	a1, a0, 16
	sb	a1, 16(sp)
	srli	a0, a0, 24
	sb	a0, 17(sp)
	sb	s9, 18(sp)
	srli	a0, s9, 8
	sb	a0, 19(sp)
	srli	a0, s9, 16
	sb	a0, 20(sp)
	lbu	a0, 378(s0)
	srli	a1, s9, 24
	sb	a1, 21(sp)
	sb	s7, 22(sp)
	sb	s8, 24(sp)
	bne	a0, s6, .LBB2_19
# %bb.18:
	lhu	a0, 380(s0)
	li	a1, 100
	mul	a0, a0, a1
	sb	a0, 34(sp)
	srli	a2, a0, 8
	sb	a2, 35(sp)
	lhu	a2, 382(s0)
	srli	a0, a0, 16
	sb	a0, 36(sp)
	sb	zero, 37(sp)
	mul	a0, a2, a1
	sb	a0, 38(sp)
	srli	a1, a0, 8
	sb	a1, 39(sp)
	srli	a0, a0, 16
	sb	a0, 40(sp)
	sb	zero, 41(sp)
.LBB2_19:
	sb	zero, 42(sp)
	srli	a0, s3, 8
	sb	a0, 43(sp)
	addi	a0, sp, 50
	li	a1, 1
	li	a2, 14
	li	s6, 14
	mv	a3, s1
	call	fwrite
	beq	a0, s6, .LBB2_21
# %bb.20:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 37
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB2_21:
	ld	a3, 24(s2)
	addi	a0, sp, 10
	li	a1, 1
	li	a2, 40
	li	s6, 40
	call	fwrite
	beq	a0, s6, .LBB2_23
# %bb.22:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 37
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB2_23:
	beqz	s5, .LBB2_26
# %bb.24:
	ld	a1, 24(s2)
	li	a3, 4
.LBB2_25:
	mv	a0, s0
	mv	a2, s3
	call	write_colormap
.LBB2_26:
	lw	s3, 140(s0)
	beqz	s3, .LBB2_36
# %bb.27:
	bnez	s4, .LBB2_29
	j	.LBB2_33
.LBB2_28:                               #   in Loop: Header=BB2_29 Depth=1
	beqz	s3, .LBB2_36
.LBB2_29:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_31 Depth 2
	lwu	a0, 140(s0)
	subw	a1, a0, s3
	slli	a1, a1, 32
	ld	a2, 0(s4)
	srli	a1, a1, 32
	sd	a1, 8(s4)
	sd	a0, 16(s4)
	mv	a0, s0
	jalr	a2
	ld	a0, 8(s0)
	ld	a5, 56(a0)
	ld	a1, 56(s2)
	addiw	s3, s3, -1
	li	a3, 1
	mv	a0, s0
	mv	a2, s3
	li	a4, 0
	jalr	a5
	lw	a1, 68(s2)
	beqz	a1, .LBB2_28
# %bb.30:                               #   in Loop: Header=BB2_29 Depth=1
	ld	s5, 0(a0)
	addi	a1, a1, -1
	slli	a1, a1, 32
	srli	a1, a1, 32
	add	a1, s5, a1
	addi	s6, a1, 1
.LBB2_31:                               #   Parent Loop BB2_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a0, 0(s5)
	mv	a1, s1
	call	putc
	addi	s5, s5, 1
	bne	s5, s6, .LBB2_31
	j	.LBB2_28
.LBB2_32:                               #   in Loop: Header=BB2_33 Depth=1
	beqz	s3, .LBB2_36
.LBB2_33:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_35 Depth 2
	ld	a0, 8(s0)
	ld	a5, 56(a0)
	ld	a1, 56(s2)
	addiw	s3, s3, -1
	li	a3, 1
	mv	a0, s0
	mv	a2, s3
	li	a4, 0
	jalr	a5
	lw	a1, 68(s2)
	beqz	a1, .LBB2_32
# %bb.34:                               #   in Loop: Header=BB2_33 Depth=1
	ld	s5, 0(a0)
	addi	a1, a1, -1
	slli	a1, a1, 32
	srli	a1, a1, 32
	add	a1, s5, a1
	addi	s6, a1, 1
.LBB2_35:                               #   Parent Loop BB2_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a0, 0(s5)
	mv	a1, s1
	call	putc
	addi	s5, s5, 1
	bne	s5, s6, .LBB2_35
	j	.LBB2_32
.LBB2_36:
	beqz	s4, .LBB2_38
# %bb.37:
	lw	a0, 32(s4)
	addi	a0, a0, 1
	sw	a0, 32(s4)
.LBB2_38:
	mv	a0, s1
	call	fflush
	mv	a0, s1
	call	ferror
	beqz	a0, .LBB2_40
# %bb.39:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 37
	sw	a1, 40(a0)
	mv	a0, s0
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
	addi	sp, sp, 160
	jr	t1
.LBB2_40:
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
	addi	sp, sp, 160
	ret
.Lfunc_end2:
	.size	finish_output_bmp, .Lfunc_end2-finish_output_bmp
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function put_gray_rows
	.type	put_gray_rows,@function
put_gray_rows:                          # @put_gray_rows
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	ld	a0, 8(a0)
	mv	s0, a1
	ld	a5, 56(a0)
	ld	a1, 56(a1)
	lw	a2, 76(s0)
	li	a3, 1
	li	a4, 1
	mv	a0, s1
	jalr	a5
	lw	a2, 76(s0)
	lw	a3, 136(s1)
	ld	a1, 0(a0)
	addi	a2, a2, 1
	sw	a2, 76(s0)
	beqz	a3, .LBB3_5
# %bb.1:
	ld	a0, 32(s0)
	ld	a2, 0(a0)
	addi	a3, a3, -1
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a3, a3, a2
	addi	a3, a3, 1
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, 0(a2)
	addi	a5, a2, 1
	addi	a0, a1, 1
	sb	a4, 0(a1)
	mv	a1, a0
	mv	a2, a5
	bne	a5, a3, .LBB3_2
# %bb.3:
	lw	a2, 72(s0)
	blez	a2, .LBB3_6
.LBB3_4:
	li	a1, 0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	memset
.LBB3_5:
	mv	a0, a1
	lw	a2, 72(s0)
	bgtz	a2, .LBB3_4
.LBB3_6:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	put_gray_rows, .Lfunc_end3-put_gray_rows
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function put_pixel_rows
	.type	put_pixel_rows,@function
put_pixel_rows:                         # @put_pixel_rows
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	ld	a0, 8(a0)
	mv	s0, a1
	ld	a5, 56(a0)
	ld	a1, 56(a1)
	lw	a2, 76(s0)
	li	a3, 1
	li	a4, 1
	mv	a0, s1
	jalr	a5
	lw	a1, 76(s0)
	lw	a2, 136(s1)
	ld	a0, 0(a0)
	addi	a1, a1, 1
	sw	a1, 76(s0)
	beqz	a2, .LBB4_3
# %bb.1:
	ld	a1, 32(s0)
	ld	a1, 0(a1)
	addi	a2, a2, -1
	slli	a2, a2, 32
	srli	a3, a2, 32
	srli	a2, a2, 31
	add	a2, a2, a3
	add	a2, a2, a1
	addi	a2, a2, 3
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a1)
	sb	a3, 2(a0)
	lbu	a3, 1(a1)
	sb	a3, 1(a0)
	lbu	a3, 2(a1)
	addi	a4, a1, 3
	sb	a3, 0(a0)
	addi	a0, a0, 3
	mv	a1, a4
	bne	a4, a2, .LBB4_2
.LBB4_3:
	lw	a2, 72(s0)
	blez	a2, .LBB4_5
# %bb.4:
	li	a1, 0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	memset
.LBB4_5:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	put_pixel_rows, .Lfunc_end4-put_pixel_rows
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function write_colormap
	.type	write_colormap,@function
write_colormap:                         # @write_colormap
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	sd	s6, 0(sp)                       # 8-byte Folded Spill
	mv	s3, a0
	ld	s4, 160(a0)
	mv	s2, a3
	mv	s1, a2
	mv	s0, a1
	beqz	s4, .LBB5_6
# %bb.1:
	lw	a0, 144(s3)
	lw	s5, 156(s3)
	li	a1, 3
	bne	a0, a1, .LBB5_9
# %bb.2:
	blez	s5, .LBB5_13
# %bb.3:
	li	s6, 0
	li	a0, 4
	bne	s2, a0, .LBB5_5
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 16(s4)
	add	a0, a0, s6
	lbu	a0, 0(a0)
	mv	a1, s0
	call	putc
	ld	a0, 8(s4)
	add	a0, a0, s6
	lbu	a0, 0(a0)
	mv	a1, s0
	call	putc
	ld	a0, 0(s4)
	add	a0, a0, s6
	lbu	a0, 0(a0)
	mv	a1, s0
	call	putc
	li	a0, 0
	mv	a1, s0
	call	putc
	addi	s6, s6, 1
	bne	s5, s6, .LBB5_4
	j	.LBB5_14
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 16(s4)
	add	a0, a0, s6
	lbu	a0, 0(a0)
	mv	a1, s0
	call	putc
	ld	a0, 8(s4)
	add	a0, a0, s6
	lbu	a0, 0(a0)
	mv	a1, s0
	call	putc
	ld	a0, 0(s4)
	add	a0, a0, s6
	lbu	a0, 0(a0)
	mv	a1, s0
	call	putc
	addi	s6, s6, 1
	bne	s5, s6, .LBB5_5
	j	.LBB5_14
.LBB5_6:
	li	s4, 0
	li	s5, 256
	li	a0, 4
	bne	s2, a0, .LBB5_8
.LBB5_7:                                # =>This Inner Loop Header: Depth=1
	mv	a0, s4
	mv	a1, s0
	call	putc
	mv	a0, s4
	mv	a1, s0
	call	putc
	mv	a0, s4
	mv	a1, s0
	call	putc
	li	a0, 0
	mv	a1, s0
	call	putc
	addiw	s4, s4, 1
	bne	s4, s5, .LBB5_7
	j	.LBB5_14
.LBB5_8:                                # =>This Inner Loop Header: Depth=1
	mv	a0, s4
	mv	a1, s0
	call	putc
	mv	a0, s4
	mv	a1, s0
	call	putc
	mv	a0, s4
	mv	a1, s0
	call	putc
	addiw	s4, s4, 1
	bne	s4, s5, .LBB5_8
	j	.LBB5_14
.LBB5_9:
	blez	s5, .LBB5_21
# %bb.10:
	li	s6, 0
	li	a0, 4
	bne	s2, a0, .LBB5_12
.LBB5_11:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s4)
	add	a0, a0, s6
	lbu	a0, 0(a0)
	mv	a1, s0
	call	putc
	ld	a0, 0(s4)
	add	a0, a0, s6
	lbu	a0, 0(a0)
	mv	a1, s0
	call	putc
	ld	a0, 0(s4)
	add	a0, a0, s6
	lbu	a0, 0(a0)
	mv	a1, s0
	call	putc
	li	a0, 0
	mv	a1, s0
	call	putc
	addi	s6, s6, 1
	bne	s5, s6, .LBB5_11
	j	.LBB5_14
.LBB5_12:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s4)
	add	a0, a0, s6
	lbu	a0, 0(a0)
	mv	a1, s0
	call	putc
	ld	a0, 0(s4)
	add	a0, a0, s6
	lbu	a0, 0(a0)
	mv	a1, s0
	call	putc
	ld	a0, 0(s4)
	add	a0, a0, s6
	lbu	a0, 0(a0)
	mv	a1, s0
	call	putc
	addi	s6, s6, 1
	bne	s5, s6, .LBB5_12
	j	.LBB5_14
.LBB5_13:
	li	s5, 0
.LBB5_14:
	bge	s1, s5, .LBB5_16
.LBB5_15:
	ld	a0, 0(s3)
	sw	s5, 44(a0)
	ld	a1, 0(s3)
	ld	a1, 0(a1)
	li	a2, 1039
	sw	a2, 40(a0)
	mv	a0, s3
	jalr	a1
.LBB5_16:
	bge	s5, s1, .LBB5_20
# %bb.17:
	subw	s1, s1, s5
	li	a0, 4
	bne	s2, a0, .LBB5_19
.LBB5_18:                               # =>This Inner Loop Header: Depth=1
	li	a0, 0
	mv	a1, s0
	call	putc
	li	a0, 0
	mv	a1, s0
	call	putc
	li	a0, 0
	mv	a1, s0
	call	putc
	li	a0, 0
	mv	a1, s0
	call	putc
	addiw	s1, s1, -1
	bnez	s1, .LBB5_18
	j	.LBB5_20
.LBB5_19:                               # =>This Inner Loop Header: Depth=1
	li	a0, 0
	mv	a1, s0
	call	putc
	li	a0, 0
	mv	a1, s0
	call	putc
	li	a0, 0
	mv	a1, s0
	call	putc
	addiw	s1, s1, -1
	bnez	s1, .LBB5_19
.LBB5_20:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB5_21:
	li	s5, 0
	bltz	s1, .LBB5_15
	j	.LBB5_16
.Lfunc_end5:
	.size	write_colormap, .Lfunc_end5-write_colormap
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
