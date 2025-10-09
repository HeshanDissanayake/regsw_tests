	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"wrppm.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_write_ppm                 # -- Begin function jinit_write_ppm
	.p2align	2
	.type	jinit_write_ppm,@function
jinit_write_ppm:                        # @jinit_write_ppm
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 80
	li	s2, 1
	mv	a0, s1
	jalr	a3
	mv	s0, a0
	lui	a0, %hi(start_output_ppm)
	addi	a0, a0, %lo(start_output_ppm)
	sd	a0, 0(s0)
	lui	a0, %hi(finish_output_ppm)
	addi	a0, a0, %lo(finish_output_ppm)
	sd	a0, 16(s0)
	mv	a0, s1
	call	jpeg_calc_output_dimensions
	lw	a0, 136(s1)
	lw	a1, 144(s1)
	ld	a2, 8(s1)
	mul	a0, a1, a0
	sw	a0, 72(s0)
	ld	a3, 0(a2)
	slli	a0, a0, 32
	srli	a2, a0, 32
	sd	a2, 64(s0)
	li	a1, 1
	mv	a0, s1
	jalr	a3
	lw	a1, 108(s1)
	sd	a0, 48(s0)
	beqz	a1, .LBB0_4
# %bb.1:
	ld	a0, 8(s1)
	lw	a1, 136(s1)
	lw	a2, 148(s1)
	ld	a4, 16(a0)
	mulw	a2, a2, a1
	li	a1, 1
	li	a3, 1
	mv	a0, s1
	jalr	a4
	lw	a1, 108(s1)
	sd	a0, 32(s0)
	sw	s2, 40(s0)
	beqz	a1, .LBB0_5
# %bb.2:
	lw	a0, 64(s1)
	li	a1, 1
	bne	a0, a1, .LBB0_6
# %bb.3:
	lui	a0, %hi(put_demapped_gray)
	addi	a0, a0, %lo(put_demapped_gray)
	j	.LBB0_7
.LBB0_4:
	addi	a1, s0, 56
	sd	a0, 56(s0)
	sd	a1, 32(s0)
	sw	s2, 40(s0)
	lui	a0, %hi(put_pixel_rows)
	addi	a0, a0, %lo(put_pixel_rows)
	j	.LBB0_7
.LBB0_5:
	lui	a0, %hi(copy_pixel_rows)
	addi	a0, a0, %lo(copy_pixel_rows)
	j	.LBB0_7
.LBB0_6:
	lui	a0, %hi(put_demapped_rgb)
	addi	a0, a0, %lo(put_demapped_rgb)
.LBB0_7:
	sd	a0, 8(s0)
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	jinit_write_ppm, .Lfunc_end0-jinit_write_ppm
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_output_ppm
	.type	start_output_ppm,@function
start_output_ppm:                       # @start_output_ppm
# %bb.0:
	lw	a2, 64(a0)
	li	a3, 2
	beq	a2, a3, .LBB1_3
# %bb.1:
	li	a3, 1
	bne	a2, a3, .LBB1_4
# %bb.2:
	ld	a5, 24(a1)
	lwu	a2, 136(a0)
	lwu	a3, 140(a0)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	li	a4, 255
	mv	a0, a5
	tail	fprintf
.LBB1_3:
	ld	a5, 24(a1)
	lwu	a2, 136(a0)
	lwu	a3, 140(a0)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	li	a4, 255
	mv	a0, a5
	tail	fprintf
.LBB1_4:
	ld	a1, 0(a0)
	ld	t1, 0(a1)
	li	a2, 1025
	sw	a2, 40(a1)
	jr	t1
.Lfunc_end1:
	.size	start_output_ppm, .Lfunc_end1-start_output_ppm
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_output_ppm
	.type	finish_output_ppm,@function
finish_output_ppm:                      # @finish_output_ppm
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
	.size	finish_output_ppm, .Lfunc_end2-finish_output_ppm
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function copy_pixel_rows
	.type	copy_pixel_rows,@function
copy_pixel_rows:                        # @copy_pixel_rows
# %bb.0:
	lw	a3, 72(a1)
	ld	a0, 48(a1)
	beqz	a3, .LBB3_4
# %bb.1:
	ld	a2, 32(a1)
	ld	a2, 0(a2)
	addi	a3, a3, -1
	slli	a3, a3, 32
	srli	a3, a3, 32
	add	a3, a3, a0
	addi	a3, a3, 1
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, 0(a2)
	addi	a2, a2, 1
	addi	a5, a0, 1
	sb	a4, 0(a0)
	mv	a0, a5
	bne	a5, a3, .LBB3_2
# %bb.3:
	ld	a0, 48(a1)
.LBB3_4:
	ld	a2, 64(a1)
	ld	a3, 24(a1)
	li	a1, 1
	tail	fwrite
.Lfunc_end3:
	.size	copy_pixel_rows, .Lfunc_end3-copy_pixel_rows
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
	beqz	a4, .LBB4_4
# %bb.1:
	ld	a2, 160(a2)
	ld	a3, 32(a1)
	ld	a2, 0(a2)
	ld	a3, 0(a3)
	addi	a4, a4, -1
	slli	a4, a4, 32
	srli	a4, a4, 32
	add	a4, a4, a3
	addi	a4, a4, 1
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	lbu	a5, 0(a3)
	add	a5, a2, a5
	lbu	a5, 0(a5)
	addi	a6, a3, 1
	addi	a3, a0, 1
	sb	a5, 0(a0)
	mv	a0, a3
	mv	a3, a6
	bne	a6, a4, .LBB4_2
# %bb.3:
	ld	a0, 48(a1)
.LBB4_4:
	ld	a2, 64(a1)
	ld	a3, 24(a1)
	li	a1, 1
	tail	fwrite
.Lfunc_end4:
	.size	put_demapped_gray, .Lfunc_end4-put_demapped_gray
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function put_demapped_rgb
	.type	put_demapped_rgb,@function
put_demapped_rgb:                       # @put_demapped_rgb
# %bb.0:
	mv	a2, a0
	lw	a6, 136(a0)
	ld	a0, 48(a1)
	beqz	a6, .LBB5_4
# %bb.1:
	ld	a4, 160(a2)
	ld	a5, 32(a1)
	ld	a2, 0(a4)
	ld	a3, 8(a4)
	ld	a4, 16(a4)
	ld	a5, 0(a5)
	addi	a6, a6, -1
	slli	a6, a6, 32
	srli	a6, a6, 32
	add	a6, a6, a5
	addi	a6, a6, 1
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	lbu	a7, 0(a5)
	add	t0, a2, a7
	lbu	t0, 0(t0)
	sb	t0, 0(a0)
	add	t0, a3, a7
	lbu	t0, 0(t0)
	sb	t0, 1(a0)
	add	a7, a4, a7
	lbu	a7, 0(a7)
	addi	t0, a5, 1
	addi	a5, a0, 3
	sb	a7, 2(a0)
	mv	a0, a5
	mv	a5, t0
	bne	t0, a6, .LBB5_2
# %bb.3:
	ld	a0, 48(a1)
.LBB5_4:
	ld	a2, 64(a1)
	ld	a3, 24(a1)
	li	a1, 1
	tail	fwrite
.Lfunc_end5:
	.size	put_demapped_rgb, .Lfunc_end5-put_demapped_rgb
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function put_pixel_rows
	.type	put_pixel_rows,@function
put_pixel_rows:                         # @put_pixel_rows
# %bb.0:
	ld	a0, 48(a1)
	ld	a2, 64(a1)
	ld	a3, 24(a1)
	li	a1, 1
	tail	fwrite
.Lfunc_end6:
	.size	put_pixel_rows, .Lfunc_end6-put_pixel_rows
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"P5\n%ld %ld\n%d\n"
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"P6\n%ld %ld\n%d\n"
	.size	.L.str.1, 15

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
