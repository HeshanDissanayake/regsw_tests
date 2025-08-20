	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"djpeg.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -848
	sd	ra, 840(sp)                     # 8-byte Folded Spill
	sd	s0, 832(sp)                     # 8-byte Folded Spill
	sd	s1, 824(sp)                     # 8-byte Folded Spill
	sd	s2, 816(sp)                     # 8-byte Folded Spill
	sd	s3, 808(sp)                     # 8-byte Folded Spill
	mv	s2, a1
	ld	a1, 0(a1)
	mv	s3, a0
	lui	a0, %hi(progname)
	sd	a1, %lo(progname)(a0)
	beqz	a1, .LBB0_2
# %bb.1:
	lbu	a1, 0(a1)
	bnez	a1, .LBB0_3
.LBB0_2:
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	sd	a1, %lo(progname)(a0)
.LBB0_3:
	addi	a0, sp, 8
	call	jpeg_std_error
	sd	a0, 176(sp)
	addi	a0, sp, 176
	li	a1, 62
	li	a2, 632
	call	jpeg_CreateDecompress
	lui	a0, %hi(cdjpeg_message_table)
	addi	a0, a0, %lo(cdjpeg_message_table)
	sd	a0, 160(sp)
	li	a0, 1043
	slli	a0, a0, 32
	addi	a0, a0, 1000
	sd	a0, 168(sp)
	lui	s0, %hi(print_text_marker)
	addi	s0, s0, %lo(print_text_marker)
	addi	a0, sp, 176
	li	a1, 254
	mv	a2, s0
	call	jpeg_set_marker_processor
	addi	a0, sp, 176
	li	a1, 236
	mv	a2, s0
	call	jpeg_set_marker_processor
	addi	a0, sp, 176
	mv	a1, s3
	mv	a2, s2
	li	a3, 0
	call	parse_switches
	addiw	a1, s3, -1
	bge	a0, a1, .LBB0_5
# %bb.4:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	call	fprintf
	call	usage
.LBB0_5:
	bge	a0, s3, .LBB0_8
# %bb.6:
	slli	a0, a0, 3
	add	s1, s2, a0
	ld	a0, 0(s1)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	call	fopen
	mv	s0, a0
	bnez	a0, .LBB0_9
# %bb.7:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	ld	a3, 0(s1)
	j	.LBB0_13
.LBB0_8:
	call	read_stdin
	mv	s0, a0
.LBB0_9:
	lui	a0, %hi(outfilename)
	ld	a0, %lo(outfilename)(a0)
	bnez	a0, .LBB0_11
# %bb.10:
	call	write_stdout
	mv	s1, a0
	j	.LBB0_14
.LBB0_11:
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	call	fopen
	mv	s1, a0
	bnez	a0, .LBB0_14
# %bb.12:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(outfilename)
	ld	a3, %lo(outfilename)(a1)
.LBB0_13:
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	call	fprintf
	li	a0, 1
	call	exit
.LBB0_14:
	addi	a0, sp, 176
	mv	a1, s0
	call	jpeg_stdio_src
	addi	a0, sp, 176
	li	a1, 1
	call	jpeg_read_header
	addi	a0, sp, 176
	li	a3, 1
	mv	a1, s3
	mv	a2, s2
	call	parse_switches
	lui	a0, %hi(requested_fmt)
	lw	a0, %lo(requested_fmt)(a0)
	li	a1, 5
	bltu	a1, a0, .LBB0_17
# %bb.15:
	slli	a0, a0, 2
	lui	a1, %hi(.LJTI0_0)
	addi	a1, a1, %lo(.LJTI0_0)
	add	a0, a0, a1
	lw	a0, 0(a0)
	jr	a0
.LBB0_16:
	addi	a0, sp, 176
	li	a1, 0
	j	.LBB0_19
.LBB0_17:
	ld	a0, 176(sp)
	ld	a1, 0(a0)
	li	a2, 1042
	sw	a2, 40(a0)
	addi	a0, sp, 176
	jalr	a1
	li	s2, 0
	j	.LBB0_24
.LBB0_18:
	addi	a0, sp, 176
	li	a1, 1
.LBB0_19:
	call	jinit_write_bmp
	j	.LBB0_23
.LBB0_20:
	addi	a0, sp, 176
	call	jinit_write_gif
	j	.LBB0_23
.LBB0_21:
	addi	a0, sp, 176
	call	jinit_write_ppm
	j	.LBB0_23
.LBB0_22:
	addi	a0, sp, 176
	call	jinit_write_targa
.LBB0_23:
	mv	s2, a0
.LBB0_24:
	sd	s1, 24(s2)
	addi	a0, sp, 176
	call	jpeg_start_decompress
	ld	a2, 0(s2)
	addi	a0, sp, 176
	mv	a1, s2
	jalr	a2
	lw	a0, 344(sp)
	lw	a1, 316(sp)
	bgeu	a0, a1, .LBB0_26
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	ld	a1, 32(s2)
	lw	a2, 40(s2)
	addi	a0, sp, 176
	call	jpeg_read_scanlines
	ld	a3, 8(s2)
	mv	a2, a0
	addi	a0, sp, 176
	mv	a1, s2
	jalr	a3
	lw	a0, 344(sp)
	lw	a1, 316(sp)
	bltu	a0, a1, .LBB0_25
.LBB0_26:
	ld	a2, 16(s2)
	addi	a0, sp, 176
	mv	a1, s2
	jalr	a2
	addi	a0, sp, 176
	call	jpeg_finish_decompress
	addi	a0, sp, 176
	call	jpeg_destroy_decompress
	lui	a0, %hi(stdin)
	ld	a0, %lo(stdin)(a0)
	bne	s0, a0, .LBB0_29
# %bb.27:
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	bne	s1, a0, .LBB0_30
.LBB0_28:
	ld	a0, 136(sp)
	snez	a0, a0
	slli	a0, a0, 1
	call	exit
.LBB0_29:
	mv	a0, s0
	call	fclose
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	beq	s1, a0, .LBB0_28
.LBB0_30:
	mv	a0, s1
	call	fclose
	ld	a0, 136(sp)
	snez	a0, a0
	slli	a0, a0, 1
	call	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_16
	.word	.LBB0_20
	.word	.LBB0_18
	.word	.LBB0_21
	.word	.LBB0_17
	.word	.LBB0_22
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.p2align	2                               # -- Begin function print_text_marker
	.type	print_text_marker,@function
print_text_marker:                      # @print_text_marker
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
	mv	s0, a0
	ld	s1, 40(a0)
	ld	a0, 0(a0)
	ld	a1, 8(s1)
	lw	s4, 124(a0)
	bnez	a1, .LBB1_3
# %bb.1:
	ld	a1, 24(s1)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_3
# %bb.2:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_3:
	ld	a0, 8(s1)
	ld	a1, 0(s1)
	addi	a0, a0, -1
	sd	a0, 8(s1)
	ld	s2, 40(s0)
	addi	a0, a1, 1
	sd	a0, 0(s1)
	lbu	s1, 0(a1)
	ld	a0, 8(s2)
	slli	s1, s1, 8
	bnez	a0, .LBB1_6
# %bb.4:
	ld	a1, 24(s2)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_6
# %bb.5:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 24
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_6:
	ld	a0, 8(s2)
	ld	a1, 0(s2)
	addi	a0, a0, -1
	sd	a0, 8(s2)
	addi	a0, a1, 1
	sd	a0, 0(s2)
	lbu	s2, 0(a1)
	or	s3, s1, s2
	bgtz	s4, .LBB1_13
# %bb.7:
	li	a0, 3
	bltu	s3, a0, .LBB1_34
.LBB1_8:
	addi	s1, s3, -3
	addi	s1, s1, 1
	li	s2, 24
	j	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_10 Depth=1
	ld	a0, 8(s3)
	ld	a1, 0(s3)
	addi	a0, a0, -1
	sd	a0, 8(s3)
	addi	a1, a1, 1
	addi	s1, s1, -1
	sd	a1, 0(s3)
	blez	s1, .LBB1_32
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	ld	s3, 40(s0)
	ld	a0, 8(s3)
	bnez	a0, .LBB1_9
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	ld	a1, 24(s3)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_9
# %bb.12:                               #   in Loop: Header=BB1_10 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB1_9
.LBB1_13:
	lw	a1, 540(s0)
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	li	a2, 254
	addi	a3, s3, -2
	bne	a1, a2, .LBB1_15
# %bb.14:
	lui	a1, %hi(.L.str.47)
	addi	a1, a1, %lo(.L.str.47)
	mv	a2, a3
	call	fprintf
	j	.LBB1_16
.LBB1_15:
	addiw	a2, a1, -224
	lui	a1, %hi(.L.str.48)
	addi	a1, a1, %lo(.L.str.48)
	call	fprintf
.LBB1_16:
	li	a0, 2
	bgeu	a0, s3, .LBB1_32
# %bb.17:
	blez	s4, .LBB1_8
# %bb.18:                               # %.preheader
	li	s3, 0
	add	s1, s1, s2
	addi	s5, s1, -2
	li	s6, 24
	li	s7, 10
	li	s8, 13
	lui	s9, %hi(stderr)
	li	s10, 92
	lui	s1, %hi(.L.str.50)
	addi	s1, s1, %lo(.L.str.50)
	j	.LBB1_21
.LBB1_19:                               #   in Loop: Header=BB1_21 Depth=1
	ld	a1, %lo(stderr)(s9)
	li	a0, 10
	call	fputc
.LBB1_20:                               #   in Loop: Header=BB1_21 Depth=1
	addi	s5, s5, -1
	blez	s5, .LBB1_32
.LBB1_21:                               # =>This Inner Loop Header: Depth=1
	ld	s2, 40(s0)
	ld	a0, 8(s2)
	mv	s11, s3
	bnez	a0, .LBB1_24
# %bb.22:                               #   in Loop: Header=BB1_21 Depth=1
	ld	a1, 24(s2)
	mv	a0, s0
	jalr	a1
	bnez	a0, .LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_21 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s6, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_24:                               #   in Loop: Header=BB1_21 Depth=1
	ld	a0, 8(s2)
	ld	a1, 0(s2)
	addi	a0, a0, -1
	sd	a0, 8(s2)
	addi	a0, a1, 1
	sd	a0, 0(s2)
	lbu	s3, 0(a1)
	beq	s3, s7, .LBB1_29
# %bb.25:                               #   in Loop: Header=BB1_21 Depth=1
	beq	s3, s8, .LBB1_19
# %bb.26:                               #   in Loop: Header=BB1_21 Depth=1
	beq	s3, s10, .LBB1_30
# %bb.27:                               #   in Loop: Header=BB1_21 Depth=1
	call	__ctype_b_loc
	ld	a0, 0(a0)
	slli	a1, s3, 1
	add	a0, a0, a1
	lhu	a0, 0(a0)
	ld	a1, %lo(stderr)(s9)
	slli	a0, a0, 49
	bgez	a0, .LBB1_31
# %bb.28:                               #   in Loop: Header=BB1_21 Depth=1
	mv	a0, s3
	call	putc
	j	.LBB1_20
.LBB1_29:                               #   in Loop: Header=BB1_21 Depth=1
	bne	s11, s8, .LBB1_19
	j	.LBB1_20
.LBB1_30:                               #   in Loop: Header=BB1_21 Depth=1
	ld	a3, %lo(stderr)(s9)
	li	a1, 2
	li	a2, 1
	mv	a0, s1
	call	fwrite
	j	.LBB1_20
.LBB1_31:                               #   in Loop: Header=BB1_21 Depth=1
	mv	a0, a1
	lui	a1, %hi(.L.str.51)
	addi	a1, a1, %lo(.L.str.51)
	mv	a2, s3
	call	fprintf
	j	.LBB1_20
.LBB1_32:
	blez	s4, .LBB1_34
# %bb.33:
	lui	a0, %hi(stderr)
	ld	a1, %lo(stderr)(a0)
	li	a0, 10
	call	fputc
.LBB1_34:
	li	a0, 1
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
.Lfunc_end1:
	.size	print_text_marker, .Lfunc_end1-print_text_marker
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function parse_switches
	.type	parse_switches,@function
parse_switches:                         # @parse_switches
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
	sd	a3, 24(sp)                      # 8-byte Folded Spill
	mv	s2, a1
	mv	s3, a0
	lui	s4, %hi(outfilename)
	sd	zero, %lo(outfilename)(s4)
	ld	a0, 0(a0)
	lui	s5, %hi(requested_fmt)
	li	a1, 3
	sw	a1, %lo(requested_fmt)(s5)
	sw	zero, 124(a0)
	li	a0, 2
	li	s11, 1
	blt	s2, a0, .LBB2_76
# %bb.1:
	mv	s1, a2
	addi	a0, s3, 68
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	addi	a0, s3, 72
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	li	s8, 1
	li	s0, 45
	lui	s6, %hi(.L.str.52)
	addi	s6, s6, %lo(.L.str.52)
	lui	s7, %hi(.L.str.53)
	addi	s7, s7, %lo(.L.str.53)
	lui	s10, %hi(.L.str.57)
	addi	s10, s10, %lo(.L.str.57)
	li	s11, 1
	j	.LBB2_5
.LBB2_2:                                #   in Loop: Header=BB2_5 Depth=1
	addi	s9, s9, 1
	li	a2, 1
	mv	a0, s9
	mv	a1, s6
	call	keymatch
	beqz	a0, .LBB2_8
# %bb.3:                                #   in Loop: Header=BB2_5 Depth=1
	sw	zero, %lo(requested_fmt)(s5)
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	addiw	s11, s11, 1
	bge	s11, s2, .LBB2_76
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	slli	a0, s11, 3
	add	a0, s1, a0
	ld	s9, 0(a0)
	lbu	a0, 0(s9)
	beq	a0, s0, .LBB2_2
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	bgtz	s11, .LBB2_76
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	sd	zero, %lo(outfilename)(s4)
	j	.LBB2_4
.LBB2_8:                                #   in Loop: Header=BB2_5 Depth=1
	li	a2, 1
	mv	a0, s9
	mv	a1, s7
	call	keymatch
	bnez	a0, .LBB2_12
# %bb.9:                                #   in Loop: Header=BB2_5 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.54)
	addi	a1, a1, %lo(.L.str.54)
	call	keymatch
	bnez	a0, .LBB2_12
# %bb.10:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.55)
	addi	a1, a1, %lo(.L.str.55)
	call	keymatch
	bnez	a0, .LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.56)
	addi	a1, a1, %lo(.L.str.56)
	call	keymatch
	beqz	a0, .LBB2_15
.LBB2_12:                               #   in Loop: Header=BB2_5 Depth=1
	addiw	s11, s11, 1
	bge	s11, s2, .LBB2_77
# %bb.13:                               #   in Loop: Header=BB2_5 Depth=1
	slli	a0, s11, 3
	add	a0, s1, a0
	ld	a0, 0(a0)
	addi	a2, sp, 52
	mv	a1, s10
	call	__isoc99_sscanf
	bne	a0, s8, .LBB2_77
# %bb.14:                               #   in Loop: Header=BB2_5 Depth=1
	lw	a0, 52(sp)
	sw	a0, 120(s3)
	sw	s8, 108(s3)
	j	.LBB2_4
.LBB2_15:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 2
	mv	a0, s9
	lui	a1, %hi(.L.str.58)
	addi	a1, a1, %lo(.L.str.58)
	call	keymatch
	beqz	a0, .LBB2_19
# %bb.16:                               #   in Loop: Header=BB2_5 Depth=1
	addiw	s11, s11, 1
	bge	s11, s2, .LBB2_77
# %bb.17:                               #   in Loop: Header=BB2_5 Depth=1
	slli	s9, s11, 3
	add	s9, s1, s9
	ld	a0, 0(s9)
	li	a2, 1
	lui	a1, %hi(.L.str.59)
	addi	a1, a1, %lo(.L.str.59)
	call	keymatch
	beqz	a0, .LBB2_23
# %bb.18:                               #   in Loop: Header=BB2_5 Depth=1
	sw	zero, 96(s3)
	j	.LBB2_4
.LBB2_19:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 2
	mv	a0, s9
	lui	a1, %hi(.L.str.62)
	addi	a1, a1, %lo(.L.str.62)
	call	keymatch
	beqz	a0, .LBB2_25
# %bb.20:                               #   in Loop: Header=BB2_5 Depth=1
	addiw	s11, s11, 1
	bge	s11, s2, .LBB2_77
# %bb.21:                               #   in Loop: Header=BB2_5 Depth=1
	slli	s9, s11, 3
	add	s9, s1, s9
	ld	a0, 0(s9)
	li	a2, 2
	lui	a1, %hi(.L.str.63)
	addi	a1, a1, %lo(.L.str.63)
	call	keymatch
	beqz	a0, .LBB2_29
# %bb.22:                               #   in Loop: Header=BB2_5 Depth=1
	li	a0, 2
	sw	a0, 112(s3)
	j	.LBB2_4
.LBB2_23:                               #   in Loop: Header=BB2_5 Depth=1
	ld	a0, 0(s9)
	li	a2, 2
	lui	a1, %hi(.L.str.60)
	addi	a1, a1, %lo(.L.str.60)
	call	keymatch
	beqz	a0, .LBB2_31
# %bb.24:                               #   in Loop: Header=BB2_5 Depth=1
	sw	s8, 96(s3)
	j	.LBB2_4
.LBB2_25:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.66)
	addi	a1, a1, %lo(.L.str.66)
	call	keymatch
	bnez	a0, .LBB2_27
# %bb.26:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.67)
	addi	a1, a1, %lo(.L.str.67)
	call	keymatch
	beqz	a0, .LBB2_35
.LBB2_27:                               #   in Loop: Header=BB2_5 Depth=1
	lui	a0, %hi(parse_switches.printed_version)
	lbu	a0, %lo(parse_switches.printed_version)(a0)
	beqz	a0, .LBB2_41
.LBB2_28:                               #   in Loop: Header=BB2_5 Depth=1
	ld	a0, 0(s3)
	lw	a1, 124(a0)
	addi	a1, a1, 1
	sw	a1, 124(a0)
	j	.LBB2_4
.LBB2_29:                               #   in Loop: Header=BB2_5 Depth=1
	ld	a0, 0(s9)
	li	a2, 2
	lui	a1, %hi(.L.str.64)
	addi	a1, a1, %lo(.L.str.64)
	call	keymatch
	beqz	a0, .LBB2_33
# %bb.30:                               #   in Loop: Header=BB2_5 Depth=1
	sw	zero, 112(s3)
	j	.LBB2_4
.LBB2_31:                               #   in Loop: Header=BB2_5 Depth=1
	ld	a0, 0(s9)
	li	a2, 2
	lui	a1, %hi(.L.str.61)
	addi	a1, a1, %lo(.L.str.61)
	call	keymatch
	beqz	a0, .LBB2_77
# %bb.32:                               #   in Loop: Header=BB2_5 Depth=1
	li	a0, 2
	sw	a0, 96(s3)
	j	.LBB2_4
.LBB2_33:                               #   in Loop: Header=BB2_5 Depth=1
	ld	a0, 0(s9)
	li	a2, 2
	lui	a1, %hi(.L.str.65)
	addi	a1, a1, %lo(.L.str.65)
	call	keymatch
	beqz	a0, .LBB2_77
# %bb.34:                               #   in Loop: Header=BB2_5 Depth=1
	sw	s8, 112(s3)
	j	.LBB2_4
.LBB2_35:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.60)
	addi	a1, a1, %lo(.L.str.60)
	call	keymatch
	beqz	a0, .LBB2_39
# %bb.36:                               #   in Loop: Header=BB2_5 Depth=1
	lw	a0, 108(s3)
	sd	s8, 112(s3)
	bnez	a0, .LBB2_38
# %bb.37:                               #   in Loop: Header=BB2_5 Depth=1
	li	a0, 216
	sw	a0, 120(s3)
.LBB2_38:                               #   in Loop: Header=BB2_5 Depth=1
	sd	s8, 96(s3)
	j	.LBB2_4
.LBB2_39:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.71)
	addi	a1, a1, %lo(.L.str.71)
	call	keymatch
	beqz	a0, .LBB2_42
# %bb.40:                               #   in Loop: Header=BB2_5 Depth=1
	sw	s8, %lo(requested_fmt)(s5)
	j	.LBB2_4
.LBB2_41:                               #   in Loop: Header=BB2_5 Depth=1
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	lui	a2, %hi(.L.str.69)
	addi	a2, a2, %lo(.L.str.69)
	lui	a3, %hi(.L.str.70)
	addi	a3, a3, %lo(.L.str.70)
	call	fprintf
	lui	a0, %hi(parse_switches.printed_version)
	sb	s8, %lo(parse_switches.printed_version)(a0)
	j	.LBB2_28
.LBB2_42:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 2
	mv	a0, s9
	lui	a1, %hi(.L.str.72)
	addi	a1, a1, %lo(.L.str.72)
	call	keymatch
	bnez	a0, .LBB2_44
# %bb.43:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 2
	mv	a0, s9
	lui	a1, %hi(.L.str.73)
	addi	a1, a1, %lo(.L.str.73)
	call	keymatch
	beqz	a0, .LBB2_45
.LBB2_44:                               #   in Loop: Header=BB2_5 Depth=1
	sw	s8, 64(s3)
	j	.LBB2_4
.LBB2_45:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 3
	mv	a0, s9
	lui	a1, %hi(.L.str.74)
	addi	a1, a1, %lo(.L.str.74)
	call	keymatch
	beqz	a0, .LBB2_50
# %bb.46:                               #   in Loop: Header=BB2_5 Depth=1
	addiw	s11, s11, 1
	bge	s11, s2, .LBB2_77
# %bb.47:                               #   in Loop: Header=BB2_5 Depth=1
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB2_4
# %bb.48:                               #   in Loop: Header=BB2_5 Depth=1
	slli	a0, s11, 3
	add	a0, s1, a0
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	ld	a0, 0(a0)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	call	fopen
	beqz	a0, .LBB2_78
# %bb.49:                               #   in Loop: Header=BB2_5 Depth=1
	mv	s9, a0
	mv	a0, s3
	mv	a1, s9
	call	read_color_map
	mv	a0, s9
	call	fclose
	sw	s8, 108(s3)
	j	.LBB2_4
.LBB2_50:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 3
	mv	a0, s9
	lui	a1, %hi(.L.str.75)
	addi	a1, a1, %lo(.L.str.75)
	call	keymatch
	beqz	a0, .LBB2_56
# %bb.51:                               #   in Loop: Header=BB2_5 Depth=1
	addiw	s11, s11, 1
	li	a0, 120
	sb	a0, 39(sp)
	bge	s11, s2, .LBB2_77
# %bb.52:                               #   in Loop: Header=BB2_5 Depth=1
	slli	a0, s11, 3
	add	a0, s1, a0
	ld	a0, 0(a0)
	addi	a2, sp, 40
	addi	a3, sp, 39
	lui	a1, %hi(.L.str.76)
	addi	a1, a1, %lo(.L.str.76)
	call	__isoc99_sscanf
	blez	a0, .LBB2_77
# %bb.53:                               #   in Loop: Header=BB2_5 Depth=1
	lbu	a1, 39(sp)
	ld	a0, 40(sp)
	andi	a1, a1, 223
	li	a2, 77
	bne	a1, a2, .LBB2_55
# %bb.54:                               #   in Loop: Header=BB2_5 Depth=1
	li	a1, 1000
	mul	a0, a0, a1
.LBB2_55:                               #   in Loop: Header=BB2_5 Depth=1
	ld	a1, 8(s3)
	li	a2, 1000
	mul	a0, a0, a2
	sd	a0, 88(a1)
	j	.LBB2_4
.LBB2_56:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 3
	mv	a0, s9
	lui	a1, %hi(.L.str.77)
	addi	a1, a1, %lo(.L.str.77)
	call	keymatch
	beqz	a0, .LBB2_58
# %bb.57:                               #   in Loop: Header=BB2_5 Depth=1
	sw	zero, 100(s3)
	j	.LBB2_4
.LBB2_58:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 3
	mv	a0, s9
	lui	a1, %hi(.L.str.78)
	addi	a1, a1, %lo(.L.str.78)
	call	keymatch
	beqz	a0, .LBB2_60
# %bb.59:                               #   in Loop: Header=BB2_5 Depth=1
	sw	zero, 116(s3)
	j	.LBB2_4
.LBB2_60:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 3
	mv	a0, s9
	lui	a1, %hi(.L.str.79)
	addi	a1, a1, %lo(.L.str.79)
	call	keymatch
	beqz	a0, .LBB2_63
# %bb.61:                               #   in Loop: Header=BB2_5 Depth=1
	li	a0, 2
.LBB2_62:                               #   in Loop: Header=BB2_5 Depth=1
	sw	a0, %lo(requested_fmt)(s5)
	j	.LBB2_4
.LBB2_63:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 4
	mv	a0, s9
	lui	a1, %hi(.L.str.80)
	addi	a1, a1, %lo(.L.str.80)
	call	keymatch
	beqz	a0, .LBB2_66
# %bb.64:                               #   in Loop: Header=BB2_5 Depth=1
	addiw	s11, s11, 1
	bge	s11, s2, .LBB2_77
# %bb.65:                               #   in Loop: Header=BB2_5 Depth=1
	slli	a0, s11, 3
	add	a0, s1, a0
	ld	a0, 0(a0)
	sd	a0, %lo(outfilename)(s4)
	j	.LBB2_4
.LBB2_66:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.81)
	addi	a1, a1, %lo(.L.str.81)
	call	keymatch
	bnez	a0, .LBB2_68
# %bb.67:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.82)
	addi	a1, a1, %lo(.L.str.82)
	call	keymatch
	beqz	a0, .LBB2_69
.LBB2_68:                               #   in Loop: Header=BB2_5 Depth=1
	li	a0, 3
	j	.LBB2_62
.LBB2_69:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.83)
	addi	a1, a1, %lo(.L.str.83)
	call	keymatch
	beqz	a0, .LBB2_71
# %bb.70:                               #   in Loop: Header=BB2_5 Depth=1
	li	a0, 4
	j	.LBB2_62
.LBB2_71:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.84)
	addi	a1, a1, %lo(.L.str.84)
	call	keymatch
	beqz	a0, .LBB2_74
# %bb.72:                               #   in Loop: Header=BB2_5 Depth=1
	addiw	s11, s11, 1
	bge	s11, s2, .LBB2_77
# %bb.73:                               #   in Loop: Header=BB2_5 Depth=1
	slli	a0, s11, 3
	add	a0, s1, a0
	ld	a0, 0(a0)
	lui	a1, %hi(.L.str.85)
	addi	a1, a1, %lo(.L.str.85)
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	call	__isoc99_sscanf
	li	a1, 2
	beq	a0, a1, .LBB2_4
	j	.LBB2_77
.LBB2_74:                               #   in Loop: Header=BB2_5 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.86)
	addi	a1, a1, %lo(.L.str.86)
	call	keymatch
	beqz	a0, .LBB2_77
# %bb.75:                               #   in Loop: Header=BB2_5 Depth=1
	li	a0, 5
	j	.LBB2_62
.LBB2_76:
	mv	a0, s11
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
.LBB2_77:
	call	usage
.LBB2_78:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	ld	a3, 0(a1)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	call	fprintf
	li	a0, 1
	call	exit
.Lfunc_end2:
	.size	parse_switches, .Lfunc_end2-parse_switches
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function usage
	.type	usage,@function
usage:                                  # @usage
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	s2, %hi(stderr)
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(.L.str.87)
	addi	a1, a1, %lo(.L.str.87)
	call	fprintf
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.88)
	addi	a0, a0, %lo(.L.str.88)
	li	a1, 12
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.89)
	addi	a0, a0, %lo(.L.str.89)
	li	a1, 37
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.90)
	addi	a0, a0, %lo(.L.str.90)
	li	a1, 55
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.91)
	addi	a0, a0, %lo(.L.str.91)
	li	a1, 46
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.92)
	addi	a0, a0, %lo(.L.str.92)
	li	a1, 40
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.93)
	addi	a0, a0, %lo(.L.str.93)
	li	a1, 61
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(.L.str.94)
	addi	a1, a1, %lo(.L.str.94)
	lui	s0, %hi(.L.str.95)
	addi	s0, s0, %lo(.L.str.95)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(.L.str.96)
	addi	a1, a1, %lo(.L.str.96)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(.L.str.97)
	addi	a1, a1, %lo(.L.str.97)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(.L.str.98)
	addi	a1, a1, %lo(.L.str.98)
	lui	s1, %hi(.L.str.99)
	addi	s1, s1, %lo(.L.str.99)
	mv	a2, s1
	call	fprintf
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(.L.str.100)
	addi	a1, a1, %lo(.L.str.100)
	mv	a2, s0
	call	fprintf
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.101)
	addi	a0, a0, %lo(.L.str.101)
	li	a1, 29
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(.L.str.102)
	addi	a1, a1, %lo(.L.str.102)
	mv	a2, s1
	call	fprintf
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(.L.str.103)
	addi	a1, a1, %lo(.L.str.103)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s2)
	lui	a1, %hi(.L.str.104)
	addi	a1, a1, %lo(.L.str.104)
	mv	a2, s0
	call	fprintf
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.105)
	addi	a0, a0, %lo(.L.str.105)
	li	a1, 45
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.106)
	addi	a0, a0, %lo(.L.str.106)
	li	a1, 53
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.107)
	addi	a0, a0, %lo(.L.str.107)
	li	a1, 62
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.108)
	addi	a0, a0, %lo(.L.str.108)
	li	a1, 56
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.109)
	addi	a0, a0, %lo(.L.str.109)
	li	a1, 51
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.110)
	addi	a0, a0, %lo(.L.str.110)
	li	a1, 61
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.111)
	addi	a0, a0, %lo(.L.str.111)
	li	a1, 51
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.112)
	addi	a0, a0, %lo(.L.str.112)
	li	a1, 46
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s2)
	lui	a0, %hi(.L.str.113)
	addi	a0, a0, %lo(.L.str.113)
	li	a1, 43
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.Lfunc_end3:
	.size	usage, .Lfunc_end3-usage
                                        # -- End function
	.option	pop
	.type	progname,@object                # @progname
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
progname:
	.quad	0
	.size	progname, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"djpeg"
	.size	.L.str, 6

	.type	cdjpeg_message_table,@object    # @cdjpeg_message_table
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
cdjpeg_message_table:
	.quad	0
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	0
	.size	cdjpeg_message_table, 352

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s: only one input file\n"
	.size	.L.str.1, 25

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"rb"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s: can't open %s\n"
	.size	.L.str.3, 19

	.type	outfilename,@object             # @outfilename
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
outfilename:
	.quad	0
	.size	outfilename, 8

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"wb"
	.size	.L.str.4, 3

	.type	requested_fmt,@object           # @requested_fmt
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
requested_fmt:
	.word	0                               # 0x0
	.size	requested_fmt, 4

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Unsupported BMP colormap format"
	.size	.L.str.5, 32

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Only 8- and 24-bit BMP files are supported"
	.size	.L.str.6, 43

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Invalid BMP file: bad header length"
	.size	.L.str.7, 36

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Invalid BMP file: biPlanes not equal to 1"
	.size	.L.str.8, 42

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"BMP output must be grayscale or RGB"
	.size	.L.str.9, 36

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Sorry, compressed BMPs not yet supported"
	.size	.L.str.10, 41

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Not a BMP file - does not start with BM"
	.size	.L.str.11, 40

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%ux%u 24-bit BMP image"
	.size	.L.str.12, 23

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%ux%u 8-bit colormapped BMP image"
	.size	.L.str.13, 34

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%ux%u 24-bit OS2 BMP image"
	.size	.L.str.14, 27

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%ux%u 8-bit colormapped OS2 BMP image"
	.size	.L.str.15, 38

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"GIF output got confused"
	.size	.L.str.16, 24

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Bogus GIF codesize %d"
	.size	.L.str.17, 22

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"GIF output must be grayscale or RGB"
	.size	.L.str.18, 36

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Too few images in GIF file"
	.size	.L.str.19, 27

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Not a GIF file"
	.size	.L.str.20, 15

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%ux%ux%d GIF image"
	.size	.L.str.21, 19

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Warning: unexpected GIF version number '%c%c%c'"
	.size	.L.str.22, 48

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Ignoring GIF extension block of type 0x%02x"
	.size	.L.str.23, 44

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Caution: nonsquare pixels in input"
	.size	.L.str.24, 35

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Corrupt data in GIF file"
	.size	.L.str.25, 25

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Bogus char 0x%02x in GIF file, ignoring"
	.size	.L.str.26, 40

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Premature end of GIF image"
	.size	.L.str.27, 27

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Ran out of GIF bits"
	.size	.L.str.28, 20

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"PPM output must be grayscale or RGB"
	.size	.L.str.29, 36

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Nonnumeric data in PPM file"
	.size	.L.str.30, 28

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Not a PPM/PGM file"
	.size	.L.str.31, 19

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"%ux%u PGM image"
	.size	.L.str.32, 16

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"%ux%u text PGM image"
	.size	.L.str.33, 21

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"%ux%u PPM image"
	.size	.L.str.34, 16

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"%ux%u text PPM image"
	.size	.L.str.35, 21

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Unsupported Targa colormap format"
	.size	.L.str.36, 34

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Invalid or unsupported Targa file"
	.size	.L.str.37, 34

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Targa output must be grayscale or RGB"
	.size	.L.str.38, 38

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"%ux%u RGB Targa image"
	.size	.L.str.39, 22

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"%ux%u grayscale Targa image"
	.size	.L.str.40, 28

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"%ux%u colormapped Targa image"
	.size	.L.str.41, 30

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"Color map file is invalid or of unsupported format"
	.size	.L.str.42, 51

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Output file format cannot handle %d colormap entries"
	.size	.L.str.43, 53

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"ungetc failed"
	.size	.L.str.44, 14

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Unrecognized input file format --- perhaps you need -targa"
	.size	.L.str.45, 59

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Unsupported output file format"
	.size	.L.str.46, 31

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Comment, length %ld:\n"
	.size	.L.str.47, 22

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"APP%d, length %ld:\n"
	.size	.L.str.48, 20

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"\\\\"
	.size	.L.str.50, 3

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"\\%03o"
	.size	.L.str.51, 6

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"bmp"
	.size	.L.str.52, 4

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"colors"
	.size	.L.str.53, 7

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"colours"
	.size	.L.str.54, 8

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"quantize"
	.size	.L.str.55, 9

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"quantise"
	.size	.L.str.56, 9

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"%d"
	.size	.L.str.57, 3

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"dct"
	.size	.L.str.58, 4

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"int"
	.size	.L.str.59, 4

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"fast"
	.size	.L.str.60, 5

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"float"
	.size	.L.str.61, 6

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"dither"
	.size	.L.str.62, 7

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"fs"
	.size	.L.str.63, 3

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"none"
	.size	.L.str.64, 5

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"ordered"
	.size	.L.str.65, 8

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"debug"
	.size	.L.str.66, 6

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"verbose"
	.size	.L.str.67, 8

	.type	parse_switches.printed_version,@object # @parse_switches.printed_version
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
parse_switches.printed_version:
	.byte	0                               # 0x0
	.size	parse_switches.printed_version, 1

	.type	.L.str.68,@object               # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"Independent JPEG Group's DJPEG, version %s\n%s\n"
	.size	.L.str.68, 47

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"6b  27-Mar-1998"
	.size	.L.str.69, 16

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"Copyright (C) 1998, Thomas G. Lane"
	.size	.L.str.70, 35

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"gif"
	.size	.L.str.71, 4

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"grayscale"
	.size	.L.str.72, 10

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"greyscale"
	.size	.L.str.73, 10

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"map"
	.size	.L.str.74, 4

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"maxmemory"
	.size	.L.str.75, 10

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"%ld%c"
	.size	.L.str.76, 6

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"nosmooth"
	.size	.L.str.77, 9

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"onepass"
	.size	.L.str.78, 8

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"os2"
	.size	.L.str.79, 4

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"outfile"
	.size	.L.str.80, 8

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"pnm"
	.size	.L.str.81, 4

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"ppm"
	.size	.L.str.82, 4

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"rle"
	.size	.L.str.83, 4

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"scale"
	.size	.L.str.84, 6

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"%d/%d"
	.size	.L.str.85, 6

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"targa"
	.size	.L.str.86, 6

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"usage: %s [switches] "
	.size	.L.str.87, 22

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"[inputfile]\n"
	.size	.L.str.88, 13

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"Switches (names may be abbreviated):\n"
	.size	.L.str.89, 38

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"  -colors N      Reduce image to no more than N colors\n"
	.size	.L.str.90, 56

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"  -fast          Fast, low-quality processing\n"
	.size	.L.str.91, 47

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"  -grayscale     Force grayscale output\n"
	.size	.L.str.92, 41

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"  -scale M/N     Scale output image by fraction M/N, eg, 1/8\n"
	.size	.L.str.93, 62

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"  -bmp           Select BMP output format (Windows style)%s\n"
	.size	.L.str.94, 61

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.zero	1
	.size	.L.str.95, 1

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"  -gif           Select GIF output format%s\n"
	.size	.L.str.96, 45

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"  -os2           Select BMP output format (OS/2 style)%s\n"
	.size	.L.str.97, 58

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"  -pnm           Select PBMPLUS (PPM/PGM) output format%s\n"
	.size	.L.str.98, 59

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	" (default)"
	.size	.L.str.99, 11

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"  -targa         Select Targa output format%s\n"
	.size	.L.str.100, 47

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"Switches for advanced users:\n"
	.size	.L.str.101, 30

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"  -dct int       Use integer DCT method%s\n"
	.size	.L.str.102, 43

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"  -dct fast      Use fast integer DCT (less accurate)%s\n"
	.size	.L.str.103, 57

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"  -dct float     Use floating-point DCT method%s\n"
	.size	.L.str.104, 50

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"  -dither fs     Use F-S dithering (default)\n"
	.size	.L.str.105, 46

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"  -dither none   Don't use dithering in quantization\n"
	.size	.L.str.106, 54

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"  -dither ordered  Use ordered dither (medium speed, quality)\n"
	.size	.L.str.107, 63

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"  -map FILE      Map to colors used in named image file\n"
	.size	.L.str.108, 57

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"  -nosmooth      Don't use high-quality upsampling\n"
	.size	.L.str.109, 52

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"  -onepass       Use 1-pass quantization (fast, low quality)\n"
	.size	.L.str.110, 62

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"  -maxmemory N   Maximum memory to use (in kbytes)\n"
	.size	.L.str.111, 52

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"  -outfile name  Specify name for output file\n"
	.size	.L.str.112, 47

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"  -verbose  or  -debug   Emit debug output\n"
	.size	.L.str.113, 44

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
