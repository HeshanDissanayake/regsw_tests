	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"wrtarga.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_write_targa               # -- Begin function jinit_write_targa
	.p2align	2
	.type	jinit_write_targa,@function
jinit_write_targa:                      # @jinit_write_targa
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
	li	a2, 64
	li	s2, 1
	mv	a0, s0
	jalr	a3
	mv	s1, a0
	lui	a0, %hi(start_output_tga)
	addi	a0, a0, %lo(start_output_tga)
	sd	a0, 0(s1)
	lui	a0, %hi(finish_output_tga)
	addi	a0, a0, %lo(finish_output_tga)
	sd	a0, 16(s1)
	mv	a0, s0
	call	jpeg_calc_output_dimensions
	lw	a0, 136(s0)
	lw	a1, 148(s0)
	ld	a2, 8(s0)
	mul	a0, a1, a0
	ld	a3, 0(a2)
	sw	a0, 56(s1)
	slli	a0, a0, 32
	srli	a2, a0, 32
	li	a1, 1
	mv	a0, s0
	jalr	a3
	ld	a1, 8(s0)
	ld	a4, 16(a1)
	lw	a2, 56(s1)
	sd	a0, 48(s1)
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
	.size	jinit_write_targa, .Lfunc_end0-jinit_write_targa
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_output_tga
	.type	start_output_tga,@function
start_output_tga:                       # @start_output_tga
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	mv	s1, a0
	lw	a0, 64(a0)
	li	a2, 2
	mv	s0, a1
	beq	a0, a2, .LBB1_6
# %bb.1:
	li	a1, 1
	bne	a0, a1, .LBB1_9
# %bb.2:
	lw	a0, 136(s1)
	sd	zero, 8(sp)
	sw	zero, 16(sp)
	lw	a1, 140(s1)
	sb	a0, 20(sp)
	srli	a0, a0, 8
	sb	a0, 21(sp)
	sb	a1, 22(sp)
	srli	a1, a1, 8
	sb	a1, 23(sp)
	li	a0, 3
	sb	a0, 10(sp)
	ld	a3, 24(s0)
	lui	a0, 2
	addi	a0, a0, 8
	sh	a0, 24(sp)
	addi	a0, sp, 8
	li	a1, 1
	li	a2, 18
	li	s2, 18
	call	fwrite
	beq	a0, s2, .LBB1_4
# %bb.3:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 37
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB1_4:
	lw	a0, 108(s1)
	beqz	a0, .LBB1_26
# %bb.5:
	lui	a0, %hi(put_demapped_gray)
	addi	a0, a0, %lo(put_demapped_gray)
	j	.LBB1_27
.LBB1_6:
	lw	a0, 108(s1)
	beqz	a0, .LBB1_10
# %bb.7:
	lw	s3, 156(s1)
	li	a0, 257
	blt	s3, a0, .LBB1_13
# %bb.8:
	ld	a0, 0(s1)
	li	a1, 1039
	sw	a1, 40(a0)
	sw	s3, 44(a0)
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	mv	a0, s1
	jalr	a1
	lw	a0, 64(s1)
	sb	zero, 24(sp)
	sd	zero, 16(sp)
	sd	zero, 8(sp)
	addi	a0, a0, -1
	seqz	a2, a0
	j	.LBB1_14
.LBB1_9:
	ld	a0, 0(s1)
	ld	t1, 0(a0)
	li	a1, 1034
	sw	a1, 40(a0)
	mv	a0, s1
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	jr	t1
.LBB1_10:
	lw	a0, 136(s1)
	sd	zero, 8(sp)
	sw	zero, 16(sp)
	lw	a1, 140(s1)
	sb	a0, 20(sp)
	srli	a0, a0, 8
	sb	a0, 21(sp)
	sb	a1, 22(sp)
	srli	a1, a1, 8
	sb	a1, 23(sp)
	li	a0, 2
	sb	a0, 10(sp)
	ld	a3, 24(s0)
	lui	a0, 2
	addi	a0, a0, 24
	sh	a0, 24(sp)
	addi	a0, sp, 8
	li	a1, 1
	li	a2, 18
	li	s2, 18
	call	fwrite
	beq	a0, s2, .LBB1_12
# %bb.11:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 37
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB1_12:
	lui	a0, %hi(put_pixel_rows)
	addi	a0, a0, %lo(put_pixel_rows)
	j	.LBB1_27
.LBB1_13:
	li	a2, 0
	li	a1, 0
	li	a0, 0
	sb	zero, 24(sp)
	sd	zero, 16(sp)
	sd	zero, 8(sp)
	blez	s3, .LBB1_15
.LBB1_14:
	li	a0, 1
	sb	a0, 9(sp)
	sb	s3, 13(sp)
	srli	a1, s3, 8
	sb	a1, 14(sp)
	li	a1, 24
	sb	a1, 15(sp)
	mv	a1, a2
.LBB1_15:
	lw	a2, 136(s1)
	lw	a3, 140(s1)
	sb	a2, 20(sp)
	srli	a2, a2, 8
	sb	a2, 21(sp)
	sb	a3, 22(sp)
	srli	a3, a3, 8
	sb	a3, 23(sp)
	li	a2, 32
	sb	a2, 25(sp)
	beqz	a1, .LBB1_17
# %bb.16:
	li	a0, 3
	j	.LBB1_19
.LBB1_17:
	beqz	a0, .LBB1_20
# %bb.18:
	li	a0, 1
.LBB1_19:
	sb	a0, 10(sp)
	li	a0, 8
	j	.LBB1_21
.LBB1_20:
	li	a0, 2
	sb	a0, 10(sp)
	li	a0, 24
.LBB1_21:
	sb	a0, 24(sp)
	ld	a3, 24(s0)
	addi	a0, sp, 8
	li	a1, 1
	li	a2, 18
	li	s2, 18
	call	fwrite
	beq	a0, s2, .LBB1_23
# %bb.22:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 37
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB1_23:
	blez	s3, .LBB1_26
# %bb.24:
	ld	s2, 24(s0)
	li	s4, 0
.LBB1_25:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 160(s1)
	ld	a0, 16(a0)
	add	a0, a0, s4
	lbu	a0, 0(a0)
	mv	a1, s2
	call	putc
	ld	a0, 160(s1)
	ld	a0, 8(a0)
	add	a0, a0, s4
	lbu	a0, 0(a0)
	mv	a1, s2
	call	putc
	ld	a0, 160(s1)
	ld	a0, 0(a0)
	add	a0, a0, s4
	lbu	a0, 0(a0)
	mv	a1, s2
	call	putc
	addi	s4, s4, 1
	bne	s3, s4, .LBB1_25
.LBB1_26:
	lui	a0, %hi(put_gray_rows)
	addi	a0, a0, %lo(put_gray_rows)
.LBB1_27:
	sd	a0, 8(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end1:
	.size	start_output_tga, .Lfunc_end1-start_output_tga
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_output_tga
	.type	finish_output_tga,@function
finish_output_tga:                      # @finish_output_tga
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a1
	ld	a1, 24(a1)
	mv	s0, a0
	mv	a0, a1
	call	fflush
	ld	a0, 24(s1)
	call	ferror
	beqz	a0, .LBB2_2
# %bb.1:
	ld	a0, 0(s0)
	ld	t1, 0(a0)
	li	a1, 37
	sw	a1, 40(a0)
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	jr	t1
.LBB2_2:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	finish_output_tga, .Lfunc_end2-finish_output_tga
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function put_demapped_gray
	.type	put_demapped_gray,@function
put_demapped_gray:                      # @put_demapped_gray
# %bb.0:
	mv	a2, a0
	lw	a4, 136(a0)
	ld	a0, 48(a1)
	beqz	a4, .LBB3_4
# %bb.1:
	ld	a2, 160(a2)
	ld	a3, 32(a1)
	ld	a2, 0(a2)
	ld	a3, 0(a3)
	addi	a4, a4, -1
	slli	a4, a4, 32
	srli	a4, a4, 32
	add	a4, a4, a0
	addi	a4, a4, 1
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	lbu	a5, 0(a3)
	add	a5, a2, a5
	lbu	a5, 0(a5)
	addi	a3, a3, 1
	addi	a6, a0, 1
	sb	a5, 0(a0)
	mv	a0, a6
	bne	a6, a4, .LBB3_2
# %bb.3:
	ld	a0, 48(a1)
.LBB3_4:
	lwu	a2, 56(a1)
	ld	a3, 24(a1)
	li	a1, 1
	tail	fwrite
.Lfunc_end3:
	.size	put_demapped_gray, .Lfunc_end3-put_demapped_gray
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function put_gray_rows
	.type	put_gray_rows,@function
put_gray_rows:                          # @put_gray_rows
# %bb.0:
	lw	a3, 136(a0)
	ld	a0, 48(a1)
	beqz	a3, .LBB4_4
# %bb.1:
	ld	a2, 32(a1)
	ld	a2, 0(a2)
	addi	a3, a3, -1
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a3, a3, a2
	addi	a3, a3, 1
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, 0(a2)
	addi	a5, a2, 1
	addi	a2, a0, 1
	sb	a4, 0(a0)
	mv	a0, a2
	mv	a2, a5
	bne	a5, a3, .LBB4_2
# %bb.3:
	ld	a0, 48(a1)
.LBB4_4:
	lwu	a2, 56(a1)
	ld	a3, 24(a1)
	li	a1, 1
	tail	fwrite
.Lfunc_end4:
	.size	put_gray_rows, .Lfunc_end4-put_gray_rows
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function put_pixel_rows
	.type	put_pixel_rows,@function
put_pixel_rows:                         # @put_pixel_rows
# %bb.0:
	lw	a3, 136(a0)
	ld	a0, 48(a1)
	beqz	a3, .LBB5_4
# %bb.1:
	ld	a2, 32(a1)
	ld	a2, 0(a2)
	addi	a2, a2, 2
	addi	a3, a3, -1
	slli	a3, a3, 32
	srli	a4, a3, 32
	srli	a3, a3, 31
	add	a3, a3, a4
	add	a3, a3, a0
	addi	a3, a3, 3
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, 0(a2)
	sb	a4, 0(a0)
	lbu	a4, -1(a2)
	sb	a4, 1(a0)
	lbu	a4, -2(a2)
	sb	a4, 2(a0)
	addi	a0, a0, 3
	addi	a2, a2, 3
	bne	a0, a3, .LBB5_2
# %bb.3:
	ld	a0, 48(a1)
.LBB5_4:
	lwu	a2, 56(a1)
	ld	a3, 24(a1)
	li	a1, 1
	tail	fwrite
.Lfunc_end5:
	.size	put_pixel_rows, .Lfunc_end5-put_pixel_rows
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
