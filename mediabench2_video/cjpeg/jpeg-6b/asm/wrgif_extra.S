	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"wrgif.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_write_gif                 # -- Begin function jinit_write_gif
	.p2align	2
	.type	jinit_write_gif,@function
jinit_write_gif:                        # @jinit_write_gif
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 352
	li	s2, 1
	mv	a0, s0
	jalr	a3
	mv	s1, a0
	sd	s0, 48(a0)
	lui	a0, %hi(start_output_gif)
	addi	a0, a0, %lo(start_output_gif)
	sd	a0, 0(s1)
	lw	a0, 64(s0)
	lui	a1, %hi(put_pixel_rows)
	addi	a1, a1, %lo(put_pixel_rows)
	sd	a1, 8(s1)
	lui	a1, %hi(finish_output_gif)
	addi	a1, a1, %lo(finish_output_gif)
	addiw	a2, a0, -1
	sd	a1, 16(s1)
	bgeu	s2, a2, .LBB0_2
# %bb.1:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1014
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 64(s0)
.LBB0_2:
	bne	a0, s2, .LBB0_4
# %bb.3:
	lw	a0, 296(s0)
	li	a1, 9
	blt	a0, a1, .LBB0_6
.LBB0_4:
	lw	a0, 120(s0)
	li	a1, 1
	li	a2, 257
	sw	a1, 108(s0)
	blt	a0, a2, .LBB0_6
# %bb.5:
	li	a0, 256
	sw	a0, 120(s0)
.LBB0_6:
	mv	a0, s0
	call	jpeg_calc_output_dimensions
	lw	a0, 148(s0)
	li	s2, 1
	beq	a0, s2, .LBB0_8
# %bb.7:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1012
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_8:
	ld	a0, 8(s0)
	ld	a4, 16(a0)
	lw	a2, 136(s0)
	li	a1, 1
	li	a3, 1
	mv	a0, s0
	jalr	a4
	sd	a0, 32(s1)
	sw	s2, 40(s1)
	mv	a0, s1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	jinit_write_gif, .Lfunc_end0-jinit_write_gif
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_output_gif
	.type	start_output_gif,@function
start_output_gif:                       # @start_output_gif
# %bb.0:
	mv	a2, a0
	lw	a3, 108(a0)
	mv	a0, a1
	beqz	a3, .LBB1_2
# %bb.1:
	lw	a1, 156(a2)
	ld	a2, 160(a2)
	tail	emit_header
.LBB1_2:
	li	a1, 256
	li	a2, 0
	tail	emit_header
.Lfunc_end1:
	.size	start_output_gif, .Lfunc_end1-start_output_gif
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function put_pixel_rows
	.type	put_pixel_rows,@function
put_pixel_rows:                         # @put_pixel_rows
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
	lw	s2, 136(a0)
	beqz	s2, .LBB2_20
# %bb.1:
	mv	s0, a1
	ld	a0, 32(a1)
	ld	s3, 0(a0)
	addi	s1, a1, 92
	lw	a1, 72(a1)
	ld	a0, 64(s0)
	li	s4, 8
	li	s5, 255
	li	s6, 37
	li	s7, 15
	j	.LBB2_3
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	addi	a2, a2, 1
	addi	s3, s3, 1
	addiw	s2, s2, -1
	sw	a2, 84(s0)
	beqz	s2, .LBB2_20
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_15 Depth 2
	lbu	a2, 0(s3)
	lw	a3, 56(s0)
	sll	a2, a2, a1
	or	a0, a2, a0
	sd	a0, 64(s0)
	addw	a1, a3, a1
	sw	a1, 72(s0)
	blt	a1, s4, .LBB2_10
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	lw	a4, 88(s0)
	j	.LBB2_7
.LBB2_5:                                #   in Loop: Header=BB2_7 Depth=2
	li	a4, 0
	sw	zero, 88(s0)
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=2
	ld	a0, 64(s0)
	lw	a2, 72(s0)
	srai	a0, a0, 8
	sd	a0, 64(s0)
	addi	a1, a2, -8
	sw	a1, 72(s0)
	bge	s7, a2, .LBB2_10
.LBB2_7:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	a4, a4, 1
	sw	a4, 88(s0)
	add	a4, s1, a4
	sb	a0, 0(a4)
	lw	a4, 88(s0)
	blt	a4, s5, .LBB2_6
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=2
	ld	a3, 24(s0)
	addiw	a2, a4, 1
	sw	a2, 88(s0)
	sb	a4, 92(s0)
	li	a1, 1
	mv	a0, s1
	call	fwrite
	lw	a1, 88(s0)
	beq	a0, a1, .LBB2_5
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=2
	ld	a0, 48(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s6, 40(a1)
	jalr	a2
	j	.LBB2_5
.LBB2_10:                               #   in Loop: Header=BB2_3 Depth=1
	lw	a2, 84(s0)
	lw	a3, 60(s0)
	blt	a2, a3, .LBB2_2
# %bb.11:                               #   in Loop: Header=BB2_3 Depth=1
	lw	a2, 76(s0)
	lw	a3, 56(s0)
	sll	a4, a2, a1
	or	a0, a4, a0
	sd	a0, 64(s0)
	addw	a1, a3, a1
	sw	a1, 72(s0)
	blt	a1, s4, .LBB2_19
# %bb.12:                               #   in Loop: Header=BB2_3 Depth=1
	lw	a4, 88(s0)
	j	.LBB2_15
.LBB2_13:                               #   in Loop: Header=BB2_15 Depth=2
	li	a4, 0
	sw	zero, 88(s0)
.LBB2_14:                               #   in Loop: Header=BB2_15 Depth=2
	ld	a0, 64(s0)
	lw	a2, 72(s0)
	srai	a0, a0, 8
	sd	a0, 64(s0)
	addi	a1, a2, -8
	sw	a1, 72(s0)
	bge	s7, a2, .LBB2_18
.LBB2_15:                               #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	a4, a4, 1
	sw	a4, 88(s0)
	add	a4, s1, a4
	sb	a0, 0(a4)
	lw	a4, 88(s0)
	blt	a4, s5, .LBB2_14
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=2
	ld	a3, 24(s0)
	addiw	a2, a4, 1
	sw	a2, 88(s0)
	sb	a4, 92(s0)
	li	a1, 1
	mv	a0, s1
	call	fwrite
	lw	a1, 88(s0)
	beq	a0, a1, .LBB2_13
# %bb.17:                               #   in Loop: Header=BB2_15 Depth=2
	ld	a0, 48(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s6, 40(a1)
	jalr	a2
	j	.LBB2_13
.LBB2_18:                               #   in Loop: Header=BB2_3 Depth=1
	lw	a2, 76(s0)
.LBB2_19:                               #   in Loop: Header=BB2_3 Depth=1
	addi	a2, a2, 2
	addi	s3, s3, 1
	addiw	s2, s2, -1
	sw	a2, 84(s0)
	bnez	s2, .LBB2_3
.LBB2_20:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end2:
	.size	put_pixel_rows, .Lfunc_end2-put_pixel_rows
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_output_gif
	.type	finish_output_gif,@function
finish_output_gif:                      # @finish_output_gif
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a1
	lw	a1, 80(a1)
	lw	a2, 72(s1)
	ld	a3, 64(s1)
	mv	s0, a0
	lw	a4, 56(s1)
	sll	a0, a1, a2
	or	a0, a0, a3
	sd	a0, 64(s1)
	addw	a2, a4, a2
	sw	a2, 72(s1)
	li	a1, 8
	addi	s2, s1, 92
	blt	a2, a1, .LBB3_7
# %bb.1:
	lw	a1, 88(s1)
	li	s3, 255
	li	s4, 37
	li	s5, 15
	j	.LBB3_4
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	li	a1, 0
	sw	zero, 88(s1)
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	ld	a0, 64(s1)
	lw	a3, 72(s1)
	srai	a0, a0, 8
	sd	a0, 64(s1)
	addiw	a2, a3, -8
	sw	a2, 72(s1)
	bge	s5, a3, .LBB3_7
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	addiw	a1, a1, 1
	sw	a1, 88(s1)
	add	a1, s2, a1
	sb	a0, 0(a1)
	lw	a1, 88(s1)
	blt	a1, s3, .LBB3_3
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	ld	a3, 24(s1)
	addiw	a2, a1, 1
	sw	a2, 88(s1)
	sb	a1, 92(s1)
	li	a1, 1
	mv	a0, s2
	call	fwrite
	lw	a1, 88(s1)
	beq	a0, a1, .LBB3_2
# %bb.6:                                #   in Loop: Header=BB3_4 Depth=1
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s4, 40(a1)
	jalr	a2
	j	.LBB3_2
.LBB3_7:
	addi	s3, s1, 88
	blez	a2, .LBB3_10
# %bb.8:
	lw	a1, 88(s1)
	addiw	a1, a1, 1
	sw	a1, 88(s1)
	add	a1, s2, a1
	sb	a0, 0(a1)
	lw	a0, 88(s1)
	li	a1, 255
	bge	a0, a1, .LBB3_11
# %bb.9:
	bgtz	a0, .LBB3_11
	j	.LBB3_14
.LBB3_10:
	lw	a0, 88(s1)
	blez	a0, .LBB3_14
.LBB3_11:
	ld	a3, 24(s1)
	addiw	a2, a0, 1
	sw	a2, 88(s1)
	sb	a0, 92(s1)
	li	a1, 1
	mv	a0, s2
	call	fwrite
	lw	a1, 88(s1)
	beq	a0, a1, .LBB3_13
# %bb.12:
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 37
	sw	a3, 40(a1)
	jalr	a2
.LBB3_13:
	sw	zero, 0(s3)
.LBB3_14:
	ld	a1, 24(s1)
	li	a0, 0
	call	putc
	ld	a1, 24(s1)
	li	a0, 59
	call	putc
	ld	a0, 24(s1)
	call	fflush
	ld	a0, 24(s1)
	call	ferror
	beqz	a0, .LBB3_16
# %bb.15:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 37
	sw	a1, 40(a0)
	mv	a0, s0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	jr	t1
.LBB3_16:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end3:
	.size	finish_output_gif, .Lfunc_end3-finish_output_gif
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function emit_header
	.type	emit_header,@function
emit_header:                            # @emit_header
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
	sd	s10, 0(sp)                      # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 48(a0)
	lw	s7, 296(a0)
	li	a3, 257
	mv	s3, a2
	mv	s2, a1
	blt	a1, a3, .LBB4_2
# %bb.1:
	ld	a1, 0(a0)
	sw	s2, 44(a1)
	ld	a0, 48(s0)
	ld	a2, 0(a0)
	ld	a2, 0(a2)
	li	a3, 1039
	sw	a3, 40(a1)
	jalr	a2
.LBB4_2:
	addi	s7, s7, -8
	li	a0, 1
	li	s8, -16
	li	s4, 1
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	sllw	s6, a0, s4
	addiw	s4, s4, 1
	addiw	s8, s8, 16
	blt	s6, s2, .LBB4_3
# %bb.4:
	addiw	s5, s4, -1
	li	a0, 2
	mv	s1, s5
	bltu	a0, s5, .LBB4_6
# %bb.5:
	li	s1, 2
.LBB4_6:
	ld	a1, 24(s0)
	li	a0, 71
	call	putc
	ld	a1, 24(s0)
	li	a0, 73
	call	putc
	ld	a1, 24(s0)
	li	a0, 70
	call	putc
	ld	a1, 24(s0)
	li	a0, 56
	call	putc
	ld	a1, 24(s0)
	li	a0, 55
	call	putc
	ld	a1, 24(s0)
	li	a0, 97
	call	putc
	ld	a0, 48(s0)
	lw	s9, 136(a0)
	ld	a1, 24(s0)
	andi	a0, s9, 255
	call	putc
	ld	a1, 24(s0)
	slli	a0, s9, 48
	srli	a0, a0, 56
	call	putc
	ld	a0, 48(s0)
	lw	s9, 140(a0)
	ld	a1, 24(s0)
	andi	a0, s9, 255
	call	putc
	ld	a1, 24(s0)
	slli	a0, s9, 48
	srli	a0, a0, 56
	call	putc
	ld	a1, 24(s0)
	addiw	a0, s4, -2
	or	a0, a0, s8
	ori	a0, a0, 128
	call	putc
	ld	a1, 24(s0)
	li	a0, 0
	call	putc
	ld	a1, 24(s0)
	li	a0, 0
	call	putc
	li	a0, 32
	bne	s4, a0, .LBB4_15
.LBB4_7:
	ld	a1, 24(s0)
	li	a0, 44
	call	putc
	ld	a1, 24(s0)
	li	a0, 0
	call	putc
	ld	a1, 24(s0)
	li	a0, 0
	call	putc
	ld	a1, 24(s0)
	li	a0, 0
	call	putc
	ld	a1, 24(s0)
	li	a0, 0
	call	putc
	ld	a0, 48(s0)
	lw	s2, 136(a0)
	ld	a1, 24(s0)
	andi	a0, s2, 255
	call	putc
	ld	a1, 24(s0)
	slli	a0, s2, 48
	srli	a0, a0, 56
	call	putc
	ld	a0, 48(s0)
	lw	s2, 140(a0)
	ld	a1, 24(s0)
	andi	a0, s2, 255
	call	putc
	ld	a1, 24(s0)
	slli	a0, s2, 48
	srli	a0, a0, 56
	call	putc
	ld	a1, 24(s0)
	li	a0, 0
	call	putc
	ld	a1, 24(s0)
	mv	a0, s1
	call	putc
	addi	a1, s1, 1
	sw	a1, 56(s0)
	li	a0, -2
	sllw	a0, a0, s1
	not	a0, a0
	sw	a0, 60(s0)
	li	a0, 1
	sllw	a0, a0, s1
	sw	a0, 76(s0)
	addi	a2, a0, 1
	sw	a2, 80(s0)
	addi	a2, a0, 2
	sw	a2, 84(s0)
	sw	zero, 88(s0)
	sd	a0, 64(s0)
	li	a2, 7
	sw	a1, 72(s0)
	bltu	s5, a2, .LBB4_14
# %bb.8:
	li	a1, 0
	addi	s1, s0, 92
	li	s2, 255
	li	s3, 37
	li	s4, 15
	j	.LBB4_11
.LBB4_9:                                #   in Loop: Header=BB4_11 Depth=1
	li	a1, 0
	sw	zero, 88(s0)
.LBB4_10:                               #   in Loop: Header=BB4_11 Depth=1
	ld	a0, 64(s0)
	lw	a2, 72(s0)
	srai	a0, a0, 8
	sd	a0, 64(s0)
	addi	a3, a2, -8
	sw	a3, 72(s0)
	bge	s4, a2, .LBB4_14
.LBB4_11:                               # =>This Inner Loop Header: Depth=1
	addiw	a1, a1, 1
	sw	a1, 88(s0)
	add	a1, s1, a1
	sb	a0, 0(a1)
	lw	a1, 88(s0)
	blt	a1, s2, .LBB4_10
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=1
	ld	a3, 24(s0)
	addiw	a2, a1, 1
	sw	a2, 88(s0)
	sb	a1, 92(s0)
	li	a1, 1
	mv	a0, s1
	call	fwrite
	lw	a1, 88(s0)
	beq	a0, a1, .LBB4_9
# %bb.13:                               #   in Loop: Header=BB4_11 Depth=1
	ld	a0, 48(s0)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s3, 40(a1)
	jalr	a2
	j	.LBB4_9
.LBB4_14:
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
	ld	s10, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.LBB4_15:
	beqz	s3, .LBB4_25
# %bb.16:
	bgtz	s6, .LBB4_18
# %bb.17:
	li	s6, 1
.LBB4_18:
	li	s8, 0
	li	s9, 2
	j	.LBB4_21
.LBB4_19:                               #   in Loop: Header=BB4_21 Depth=1
	ld	a1, 24(s0)
	li	a0, 0
	call	putc
	ld	a1, 24(s0)
	li	a0, 0
	call	putc
	li	s4, 0
.LBB4_20:                               #   in Loop: Header=BB4_21 Depth=1
	ld	a1, 24(s0)
	mv	a0, s4
	call	putc
	addi	s8, s8, 1
	beq	s6, s8, .LBB4_7
.LBB4_21:                               # =>This Inner Loop Header: Depth=1
	bge	s8, s2, .LBB4_19
# %bb.22:                               #   in Loop: Header=BB4_21 Depth=1
	ld	a0, 48(s0)
	ld	a1, 0(s3)
	lw	s10, 64(a0)
	add	a1, a1, s8
	lbu	a0, 0(a1)
	ld	a1, 24(s0)
	srlw	s4, a0, s7
	mv	a0, s4
	call	putc
	bne	s10, s9, .LBB4_24
# %bb.23:                               #   in Loop: Header=BB4_21 Depth=1
	ld	a0, 8(s3)
	add	a0, a0, s8
	lbu	a0, 0(a0)
	ld	a1, 24(s0)
	srlw	a0, a0, s7
	call	putc
	ld	a0, 16(s3)
	add	a0, a0, s8
	lbu	a0, 0(a0)
	srlw	s4, a0, s7
	j	.LBB4_20
.LBB4_24:                               #   in Loop: Header=BB4_21 Depth=1
	ld	a1, 24(s0)
	mv	a0, s4
	call	putc
	j	.LBB4_20
.LBB4_25:
	addi	s4, s2, -1
	srliw	a0, s4, 31
	add	a0, s4, a0
	bgtz	s6, .LBB4_27
# %bb.26:
	li	s6, 1
.LBB4_27:
	li	s7, 0
	sraiw	s8, a0, 1
	j	.LBB4_30
.LBB4_28:                               #   in Loop: Header=BB4_30 Depth=1
	divw	s3, s8, s4
.LBB4_29:                               #   in Loop: Header=BB4_30 Depth=1
	ld	a1, 24(s0)
	mv	a0, s3
	call	putc
	ld	a1, 24(s0)
	mv	a0, s3
	call	putc
	ld	a1, 24(s0)
	mv	a0, s3
	call	putc
	addiw	s7, s7, 1
	addi	s8, s8, 255
	beq	s6, s7, .LBB4_7
.LBB4_30:                               # =>This Inner Loop Header: Depth=1
	blt	s7, s2, .LBB4_28
# %bb.31:                               #   in Loop: Header=BB4_30 Depth=1
	li	s3, 0
	j	.LBB4_29
.Lfunc_end4:
	.size	emit_header, .Lfunc_end4-emit_header
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
