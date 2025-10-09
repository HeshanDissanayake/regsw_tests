	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jpegtran.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -1568
	sd	ra, 1560(sp)                    # 8-byte Folded Spill
	sd	s0, 1552(sp)                    # 8-byte Folded Spill
	sd	s1, 1544(sp)                    # 8-byte Folded Spill
	sd	s2, 1536(sp)                    # 8-byte Folded Spill
	sd	s3, 1528(sp)                    # 8-byte Folded Spill
	sd	s4, 1520(sp)                    # 8-byte Folded Spill
	sd	s5, 1512(sp)                    # 8-byte Folded Spill
	sd	s6, 1504(sp)                    # 8-byte Folded Spill
	sd	s7, 1496(sp)                    # 8-byte Folded Spill
	mv	s0, a1
	ld	a1, 0(a1)
	mv	s1, a0
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
	addi	a0, sp, 176
	call	jpeg_std_error
	sd	a0, 864(sp)
	addi	a0, sp, 864
	li	a1, 62
	li	a2, 632
	call	jpeg_CreateDecompress
	addi	a0, sp, 8
	call	jpeg_std_error
	sd	a0, 344(sp)
	addi	a0, sp, 344
	li	a1, 62
	li	a2, 520
	call	jpeg_CreateCompress
	addi	a0, sp, 344
	mv	a1, s1
	mv	a2, s0
	li	a3, 0
	call	parse_switches
	ld	a1, 352(sp)
	lw	a2, 132(sp)
	ld	a1, 88(a1)
	ld	a3, 872(sp)
	sw	a2, 300(sp)
	addiw	a2, s1, -1
	sd	a1, 88(a3)
	bge	a0, a2, .LBB0_5
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
	bge	a0, s1, .LBB0_8
# %bb.6:
	slli	a0, a0, 3
	add	s3, s0, a0
	ld	a0, 0(s3)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	call	fopen
	mv	s2, a0
	bnez	a0, .LBB0_9
# %bb.7:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	ld	a3, 0(s3)
	j	.LBB0_13
.LBB0_8:
	call	read_stdin
	mv	s2, a0
.LBB0_9:
	lui	a0, %hi(outfilename)
	ld	a0, %lo(outfilename)(a0)
	bnez	a0, .LBB0_11
# %bb.10:
	call	write_stdout
	mv	s3, a0
	j	.LBB0_14
.LBB0_11:
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	call	fopen
	mv	s3, a0
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
	addi	a0, sp, 864
	mv	a1, s2
	call	jpeg_stdio_src
	lui	s7, %hi(copyoption)
	lw	a1, %lo(copyoption)(s7)
	addi	a0, sp, 864
	call	jcopy_markers_setup
	addi	a0, sp, 864
	li	a1, 1
	call	jpeg_read_header
	lui	s4, %hi(transformoption)
	addi	s4, s4, %lo(transformoption)
	addi	a0, sp, 864
	mv	a1, s4
	call	jtransform_request_workspace
	addi	a0, sp, 864
	call	jpeg_read_coefficients
	mv	s5, a0
	addi	a0, sp, 864
	addi	a1, sp, 344
	call	jpeg_copy_critical_parameters
	addi	a0, sp, 864
	addi	a1, sp, 344
	mv	a2, s5
	mv	a3, s4
	call	jtransform_adjust_parameters
	mv	s6, a0
	addi	a0, sp, 344
	li	a3, 1
	mv	a1, s1
	mv	a2, s0
	call	parse_switches
	addi	a0, sp, 344
	mv	a1, s3
	call	jpeg_stdio_dest
	addi	a0, sp, 344
	mv	a1, s6
	call	jpeg_write_coefficients
	lw	a2, %lo(copyoption)(s7)
	addi	a0, sp, 864
	addi	a1, sp, 344
	call	jcopy_markers_execute
	addi	a0, sp, 864
	addi	a1, sp, 344
	mv	a2, s5
	mv	a3, s4
	call	jtransform_execute_transformation
	addi	a0, sp, 344
	call	jpeg_finish_compress
	addi	a0, sp, 344
	call	jpeg_destroy_compress
	addi	a0, sp, 864
	call	jpeg_finish_decompress
	addi	a0, sp, 864
	call	jpeg_destroy_decompress
	lui	a0, %hi(stdin)
	ld	a0, %lo(stdin)(a0)
	beq	s2, a0, .LBB0_16
# %bb.15:
	mv	a0, s2
	call	fclose
.LBB0_16:
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	beq	s3, a0, .LBB0_18
# %bb.17:
	mv	a0, s3
	call	fclose
.LBB0_18:
	ld	a0, 136(sp)
	ld	a1, 304(sp)
	neg	a0, a0
	xor	a0, a1, a0
	snez	a0, a0
	slli	a0, a0, 1
	call	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function parse_switches
	.type	parse_switches,@function
parse_switches:                         # @parse_switches
# %bb.0:
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
	mv	s3, a1
	mv	s0, a0
	lui	s10, %hi(outfilename)
	sd	zero, %lo(outfilename)(s10)
	lui	s4, %hi(copyoption)
	lui	s8, %hi(transformoption)
	sd	zero, %lo(transformoption)(s8)
	addi	a0, s8, %lo(transformoption)
	sw	zero, 8(a0)
	ld	a0, 0(s0)
	li	s5, 1
	sw	s5, %lo(copyoption)(s4)
	li	a1, 2
	sw	zero, 124(a0)
	blt	s3, a1, .LBB1_74
# %bb.1:
	mv	s2, a2
	sd	a3, 16(sp)                      # 8-byte Folded Spill
	sd	zero, 0(sp)                     # 8-byte Folded Spill
	sd	zero, 8(sp)                     # 8-byte Folded Spill
	li	s1, 45
	lui	s6, %hi(.L.str.5)
	addi	s6, s6, %lo(.L.str.5)
	lui	s7, %hi(.L.str.7)
	addi	s7, s7, %lo(.L.str.7)
	lui	s11, %hi(.L.str.8)
	addi	s11, s11, %lo(.L.str.8)
	li	s5, 1
	j	.LBB1_4
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	sw	zero, %lo(copyoption)(s4)
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	addiw	s5, s5, 1
	bge	s5, s3, .LBB1_69
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	slli	a0, s5, 3
	add	a0, s2, a0
	ld	s9, 0(a0)
	lbu	a0, 0(s9)
	bne	a0, s1, .LBB1_11
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	addi	s9, s9, 1
	li	a2, 1
	mv	a0, s9
	mv	a1, s6
	call	keymatch
	bnez	a0, .LBB1_75
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	li	a2, 1
	mv	a0, s9
	mv	a1, s7
	call	keymatch
	beqz	a0, .LBB1_13
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	addiw	s5, s5, 1
	bge	s5, s3, .LBB1_76
# %bb.8:                                #   in Loop: Header=BB1_4 Depth=1
	slli	s9, s5, 3
	add	s9, s2, s9
	ld	a0, 0(s9)
	li	a2, 1
	mv	a1, s11
	call	keymatch
	bnez	a0, .LBB1_2
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 0(s9)
	li	a2, 1
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	call	keymatch
	beqz	a0, .LBB1_17
# %bb.10:                               #   in Loop: Header=BB1_4 Depth=1
	li	a0, 1
	sw	a0, %lo(copyoption)(s4)
	j	.LBB1_3
.LBB1_11:                               #   in Loop: Header=BB1_4 Depth=1
	bgtz	s5, .LBB1_69
# %bb.12:                               #   in Loop: Header=BB1_4 Depth=1
	sd	zero, %lo(outfilename)(s10)
	j	.LBB1_3
.LBB1_13:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.11)
	addi	a1, a1, %lo(.L.str.11)
	call	keymatch
	bnez	a0, .LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.12)
	addi	a1, a1, %lo(.L.str.12)
	call	keymatch
	beqz	a0, .LBB1_19
.LBB1_15:                               #   in Loop: Header=BB1_4 Depth=1
	lui	a0, %hi(parse_switches.printed_version)
	lbu	a0, %lo(parse_switches.printed_version)(a0)
	beqz	a0, .LBB1_27
.LBB1_16:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 0(s0)
	lw	a1, 124(a0)
	addi	a1, a1, 1
	sw	a1, 124(a0)
	j	.LBB1_3
.LBB1_17:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 0(s9)
	li	a2, 1
	lui	a1, %hi(.L.str.10)
	addi	a1, a1, %lo(.L.str.10)
	call	keymatch
	beqz	a0, .LBB1_76
# %bb.18:                               #   in Loop: Header=BB1_4 Depth=1
	li	a0, 2
	sw	a0, %lo(copyoption)(s4)
	j	.LBB1_3
.LBB1_19:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.16)
	addi	a1, a1, %lo(.L.str.16)
	call	keymatch
	beqz	a0, .LBB1_24
# %bb.20:                               #   in Loop: Header=BB1_4 Depth=1
	addiw	s5, s5, 1
	bge	s5, s3, .LBB1_76
# %bb.21:                               #   in Loop: Header=BB1_4 Depth=1
	slli	s9, s5, 3
	add	s9, s2, s9
	ld	a0, 0(s9)
	li	a2, 1
	lui	a1, %hi(.L.str.17)
	addi	a1, a1, %lo(.L.str.17)
	call	keymatch
	beqz	a0, .LBB1_28
# %bb.22:                               #   in Loop: Header=BB1_4 Depth=1
	lw	a0, %lo(transformoption)(s8)
	li	a1, 2
	bgeu	a0, a1, .LBB1_77
# %bb.23:                               #   in Loop: Header=BB1_4 Depth=1
	li	a0, 1
	sw	a0, %lo(transformoption)(s8)
	j	.LBB1_3
.LBB1_24:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.19)
	addi	a1, a1, %lo(.L.str.19)
	call	keymatch
	bnez	a0, .LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.20)
	addi	a1, a1, %lo(.L.str.20)
	call	keymatch
	beqz	a0, .LBB1_31
.LBB1_26:                               #   in Loop: Header=BB1_4 Depth=1
	li	a0, 1
	lui	a1, %hi(transformoption+8)
	sw	a0, %lo(transformoption+8)(a1)
	j	.LBB1_3
.LBB1_27:                               #   in Loop: Header=BB1_4 Depth=1
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.13)
	addi	a1, a1, %lo(.L.str.13)
	lui	a2, %hi(.L.str.14)
	addi	a2, a2, %lo(.L.str.14)
	lui	a3, %hi(.L.str.15)
	addi	a3, a3, %lo(.L.str.15)
	call	fprintf
	li	a0, 1
	lui	a1, %hi(parse_switches.printed_version)
	sb	a0, %lo(parse_switches.printed_version)(a1)
	j	.LBB1_16
.LBB1_28:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 0(s9)
	li	a2, 1
	lui	a1, %hi(.L.str.18)
	addi	a1, a1, %lo(.L.str.18)
	call	keymatch
	beqz	a0, .LBB1_76
# %bb.29:                               #   in Loop: Header=BB1_4 Depth=1
	lw	a0, %lo(transformoption)(s8)
	ori	a0, a0, 2
	li	a1, 2
	bne	a0, a1, .LBB1_77
# %bb.30:                               #   in Loop: Header=BB1_4 Depth=1
	sw	a1, %lo(transformoption)(s8)
	j	.LBB1_3
.LBB1_31:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 3
	mv	a0, s9
	lui	a1, %hi(.L.str.21)
	addi	a1, a1, %lo(.L.str.21)
	call	keymatch
	beqz	a0, .LBB1_37
# %bb.32:                               #   in Loop: Header=BB1_4 Depth=1
	addiw	s5, s5, 1
	li	a0, 120
	sb	a0, 31(sp)
	bge	s5, s3, .LBB1_76
# %bb.33:                               #   in Loop: Header=BB1_4 Depth=1
	slli	a0, s5, 3
	add	a0, s2, a0
	ld	a0, 0(a0)
	addi	a2, sp, 32
	addi	a3, sp, 31
	lui	a1, %hi(.L.str.22)
	addi	a1, a1, %lo(.L.str.22)
	call	__isoc99_sscanf
	blez	a0, .LBB1_76
# %bb.34:                               #   in Loop: Header=BB1_4 Depth=1
	lbu	a1, 31(sp)
	ld	a0, 32(sp)
	andi	a1, a1, 223
	li	a2, 1000
	li	a3, 77
	bne	a1, a3, .LBB1_36
# %bb.35:                               #   in Loop: Header=BB1_4 Depth=1
	mul	a0, a0, a2
.LBB1_36:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a1, 8(s0)
	mul	a0, a0, a2
	sd	a0, 88(a1)
	j	.LBB1_3
.LBB1_37:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.23)
	addi	a1, a1, %lo(.L.str.23)
	call	keymatch
	bnez	a0, .LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.24)
	addi	a1, a1, %lo(.L.str.24)
	call	keymatch
	beqz	a0, .LBB1_40
.LBB1_39:                               #   in Loop: Header=BB1_4 Depth=1
	li	a0, 1
	sw	a0, 264(s0)
	j	.LBB1_3
.LBB1_40:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 4
	mv	a0, s9
	lui	a1, %hi(.L.str.25)
	addi	a1, a1, %lo(.L.str.25)
	call	keymatch
	beqz	a0, .LBB1_43
# %bb.41:                               #   in Loop: Header=BB1_4 Depth=1
	addiw	s5, s5, 1
	bge	s5, s3, .LBB1_76
# %bb.42:                               #   in Loop: Header=BB1_4 Depth=1
	slli	a0, s5, 3
	add	a0, s2, a0
	ld	a0, 0(a0)
	sd	a0, %lo(outfilename)(s10)
	j	.LBB1_3
.LBB1_43:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.26)
	addi	a1, a1, %lo(.L.str.26)
	call	keymatch
	beqz	a0, .LBB1_45
# %bb.44:                               #   in Loop: Header=BB1_4 Depth=1
	li	a0, 1
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	j	.LBB1_3
.LBB1_45:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.27)
	addi	a1, a1, %lo(.L.str.27)
	call	keymatch
	beqz	a0, .LBB1_52
# %bb.46:                               #   in Loop: Header=BB1_4 Depth=1
	addiw	s5, s5, 1
	li	a0, 120
	sb	a0, 31(sp)
	bge	s5, s3, .LBB1_76
# %bb.47:                               #   in Loop: Header=BB1_4 Depth=1
	slli	a0, s5, 3
	add	a0, s2, a0
	ld	a0, 0(a0)
	addi	a2, sp, 32
	addi	a3, sp, 31
	lui	a1, %hi(.L.str.22)
	addi	a1, a1, %lo(.L.str.22)
	call	__isoc99_sscanf
	blez	a0, .LBB1_76
# %bb.48:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 32(sp)
	srli	a1, a0, 16
	bnez	a1, .LBB1_76
# %bb.49:                               #   in Loop: Header=BB1_4 Depth=1
	lbu	a1, 31(sp)
	andi	a1, a1, 223
	li	a2, 66
	bne	a1, a2, .LBB1_51
# %bb.50:                               #   in Loop: Header=BB1_4 Depth=1
	sw	a0, 280(s0)
	li	a0, 0
.LBB1_51:                               #   in Loop: Header=BB1_4 Depth=1
	sw	a0, 284(s0)
	j	.LBB1_3
.LBB1_52:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 2
	mv	a0, s9
	lui	a1, %hi(.L.str.28)
	addi	a1, a1, %lo(.L.str.28)
	call	keymatch
	beqz	a0, .LBB1_56
# %bb.53:                               #   in Loop: Header=BB1_4 Depth=1
	addiw	s5, s5, 1
	bge	s5, s3, .LBB1_76
# %bb.54:                               #   in Loop: Header=BB1_4 Depth=1
	slli	s9, s5, 3
	add	s9, s2, s9
	ld	a0, 0(s9)
	li	a2, 2
	lui	a1, %hi(.L.str.29)
	addi	a1, a1, %lo(.L.str.29)
	call	keymatch
	beqz	a0, .LBB1_59
# %bb.55:                               #   in Loop: Header=BB1_4 Depth=1
	li	a0, 5
	call	select_transform
	j	.LBB1_3
.LBB1_56:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.32)
	addi	a1, a1, %lo(.L.str.32)
	call	keymatch
	beqz	a0, .LBB1_61
# %bb.57:                               #   in Loop: Header=BB1_4 Depth=1
	addiw	s5, s5, 1
	bge	s5, s3, .LBB1_76
# %bb.58:                               #   in Loop: Header=BB1_4 Depth=1
	slli	a0, s5, 3
	add	a0, s2, a0
	ld	a0, 0(a0)
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	j	.LBB1_3
.LBB1_59:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 0(s9)
	li	a2, 3
	lui	a1, %hi(.L.str.30)
	addi	a1, a1, %lo(.L.str.30)
	call	keymatch
	beqz	a0, .LBB1_63
# %bb.60:                               #   in Loop: Header=BB1_4 Depth=1
	li	a0, 6
	call	select_transform
	j	.LBB1_3
.LBB1_61:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 1
	mv	a0, s9
	lui	a1, %hi(.L.str.33)
	addi	a1, a1, %lo(.L.str.33)
	call	keymatch
	beqz	a0, .LBB1_65
# %bb.62:                               #   in Loop: Header=BB1_4 Depth=1
	li	a0, 3
	call	select_transform
	j	.LBB1_3
.LBB1_63:                               #   in Loop: Header=BB1_4 Depth=1
	ld	a0, 0(s9)
	li	a2, 3
	lui	a1, %hi(.L.str.31)
	addi	a1, a1, %lo(.L.str.31)
	call	keymatch
	beqz	a0, .LBB1_76
# %bb.64:                               #   in Loop: Header=BB1_4 Depth=1
	li	a0, 7
	call	select_transform
	j	.LBB1_3
.LBB1_65:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 6
	mv	a0, s9
	lui	a1, %hi(.L.str.34)
	addi	a1, a1, %lo(.L.str.34)
	call	keymatch
	beqz	a0, .LBB1_67
# %bb.66:                               #   in Loop: Header=BB1_4 Depth=1
	li	a0, 4
	call	select_transform
	j	.LBB1_3
.LBB1_67:                               #   in Loop: Header=BB1_4 Depth=1
	li	a2, 3
	mv	a0, s9
	lui	a1, %hi(.L.str.35)
	addi	a1, a1, %lo(.L.str.35)
	call	keymatch
	beqz	a0, .LBB1_76
# %bb.68:                               #   in Loop: Header=BB1_4 Depth=1
	li	a0, 1
	sw	a0, %lo(transformoption+4)(s8)
	j	.LBB1_3
.LBB1_69:
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB1_74
# %bb.70:
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	beqz	a0, .LBB1_72
# %bb.71:
	mv	a0, s0
	call	jpeg_simple_progression
.LBB1_72:
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	beqz	a1, .LBB1_74
# %bb.73:
	mv	a0, s0
	call	read_scan_script
	beqz	a0, .LBB1_76
.LBB1_74:
	mv	a0, s5
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
.LBB1_75:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	call	fprintf
	li	a0, 1
	call	exit
.LBB1_76:
	call	usage
.LBB1_77:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(.L.str.36)
	addi	a1, a1, %lo(.L.str.36)
	call	fprintf
	call	usage
.Lfunc_end1:
	.size	parse_switches, .Lfunc_end1-parse_switches
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function usage
	.type	usage,@function
usage:                                  # @usage
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(stderr)
	ld	a0, %lo(stderr)(s0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(.L.str.37)
	addi	a1, a1, %lo(.L.str.37)
	call	fprintf
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.38)
	addi	a0, a0, %lo(.L.str.38)
	li	a1, 12
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.39)
	addi	a0, a0, %lo(.L.str.39)
	li	a1, 37
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.40)
	addi	a0, a0, %lo(.L.str.40)
	li	a1, 56
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.41)
	addi	a0, a0, %lo(.L.str.41)
	li	a1, 53
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.42)
	addi	a0, a0, %lo(.L.str.42)
	li	a1, 40
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.43)
	addi	a0, a0, %lo(.L.str.43)
	li	a1, 77
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.44)
	addi	a0, a0, %lo(.L.str.44)
	li	a1, 46
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.45)
	addi	a0, a0, %lo(.L.str.45)
	li	a1, 34
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.46)
	addi	a0, a0, %lo(.L.str.46)
	li	a1, 55
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.47)
	addi	a0, a0, %lo(.L.str.47)
	li	a1, 71
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.48)
	addi	a0, a0, %lo(.L.str.48)
	li	a1, 64
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.49)
	addi	a0, a0, %lo(.L.str.49)
	li	a1, 33
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.50)
	addi	a0, a0, %lo(.L.str.50)
	li	a1, 44
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.51)
	addi	a0, a0, %lo(.L.str.51)
	li	a1, 52
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.52)
	addi	a0, a0, %lo(.L.str.52)
	li	a1, 29
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.53)
	addi	a0, a0, %lo(.L.str.53)
	li	a1, 67
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.54)
	addi	a0, a0, %lo(.L.str.54)
	li	a1, 51
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.55)
	addi	a0, a0, %lo(.L.str.55)
	li	a1, 46
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.56)
	addi	a0, a0, %lo(.L.str.56)
	li	a1, 43
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.57)
	addi	a0, a0, %lo(.L.str.57)
	li	a1, 22
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.58)
	addi	a0, a0, %lo(.L.str.58)
	li	a1, 56
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.Lfunc_end2:
	.size	usage, .Lfunc_end2-usage
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function select_transform
	.type	select_transform,@function
select_transform:                       # @select_transform
# %bb.0:
	lui	a1, %hi(transformoption)
	lw	a2, %lo(transformoption)(a1)
	beqz	a2, .LBB3_2
# %bb.1:
	bne	a2, a0, .LBB3_3
.LBB3_2:
	sw	a0, %lo(transformoption)(a1)
	ret
.LBB3_3:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(.L.str.36)
	addi	a1, a1, %lo(.L.str.36)
	call	fprintf
	call	usage
.Lfunc_end3:
	.size	select_transform, .Lfunc_end3-select_transform
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
	.asciz	"jpegtran"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
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

	.type	copyoption,@object              # @copyoption
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
copyoption:
	.word	0                               # 0x0
	.size	copyoption, 4

	.type	transformoption,@object         # @transformoption
	.local	transformoption
	.comm	transformoption,24,8
	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"arithmetic"
	.size	.L.str.5, 11

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s: sorry, arithmetic coding not supported\n"
	.size	.L.str.6, 44

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"copy"
	.size	.L.str.7, 5

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"none"
	.size	.L.str.8, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"comments"
	.size	.L.str.9, 9

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"all"
	.size	.L.str.10, 4

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"debug"
	.size	.L.str.11, 6

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"verbose"
	.size	.L.str.12, 8

	.type	parse_switches.printed_version,@object # @parse_switches.printed_version
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
parse_switches.printed_version:
	.byte	0                               # 0x0
	.size	parse_switches.printed_version, 1

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"Independent JPEG Group's JPEGTRAN, version %s\n%s\n"
	.size	.L.str.13, 50

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"6b  27-Mar-1998"
	.size	.L.str.14, 16

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Copyright (C) 1998, Thomas G. Lane"
	.size	.L.str.15, 35

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"flip"
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"horizontal"
	.size	.L.str.17, 11

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"vertical"
	.size	.L.str.18, 9

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"grayscale"
	.size	.L.str.19, 10

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"greyscale"
	.size	.L.str.20, 10

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"maxmemory"
	.size	.L.str.21, 10

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%ld%c"
	.size	.L.str.22, 6

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"optimize"
	.size	.L.str.23, 9

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"optimise"
	.size	.L.str.24, 9

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"outfile"
	.size	.L.str.25, 8

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"progressive"
	.size	.L.str.26, 12

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"restart"
	.size	.L.str.27, 8

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"rotate"
	.size	.L.str.28, 7

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"90"
	.size	.L.str.29, 3

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"180"
	.size	.L.str.30, 4

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"270"
	.size	.L.str.31, 4

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"scans"
	.size	.L.str.32, 6

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"transpose"
	.size	.L.str.33, 10

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"transverse"
	.size	.L.str.34, 11

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"trim"
	.size	.L.str.35, 5

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"%s: can only do one image transformation at a time\n"
	.size	.L.str.36, 52

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"usage: %s [switches] "
	.size	.L.str.37, 22

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"[inputfile]\n"
	.size	.L.str.38, 13

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Switches (names may be abbreviated):\n"
	.size	.L.str.39, 38

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"  -copy none     Copy no extra markers from source file\n"
	.size	.L.str.40, 57

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"  -copy comments Copy only comment markers (default)\n"
	.size	.L.str.41, 54

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"  -copy all      Copy all extra markers\n"
	.size	.L.str.42, 41

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"  -optimize      Optimize Huffman table (smaller file, but slow compression)\n"
	.size	.L.str.43, 78

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"  -progressive   Create progressive JPEG file\n"
	.size	.L.str.44, 47

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Switches for modifying the image:\n"
	.size	.L.str.45, 35

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"  -grayscale     Reduce to grayscale (omit color data)\n"
	.size	.L.str.46, 56

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"  -flip [horizontal|vertical]  Mirror image (left-right or top-bottom)\n"
	.size	.L.str.47, 72

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"  -rotate [90|180|270]         Rotate image (degrees clockwise)\n"
	.size	.L.str.48, 65

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"  -transpose     Transpose image\n"
	.size	.L.str.49, 34

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"  -transverse    Transverse transpose image\n"
	.size	.L.str.50, 45

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"  -trim          Drop non-transformable edge blocks\n"
	.size	.L.str.51, 53

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"Switches for advanced users:\n"
	.size	.L.str.52, 30

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"  -restart N     Set restart interval in rows, or in blocks with B\n"
	.size	.L.str.53, 68

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"  -maxmemory N   Maximum memory to use (in kbytes)\n"
	.size	.L.str.54, 52

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"  -outfile name  Specify name for output file\n"
	.size	.L.str.55, 47

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"  -verbose  or  -debug   Emit debug output\n"
	.size	.L.str.56, 44

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"Switches for wizards:\n"
	.size	.L.str.57, 23

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"  -scans file    Create multi-scan JPEG per script file\n"
	.size	.L.str.58, 57

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
