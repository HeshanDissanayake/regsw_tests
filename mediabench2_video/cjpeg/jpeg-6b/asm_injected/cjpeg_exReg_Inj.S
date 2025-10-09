	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"cjpeg.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_regsw_hits                  # -- Begin function get_regsw_hits
	.p2align	2
	.type	get_regsw_hits,@function
get_regsw_hits:                         # @get_regsw_hits
# %bb.0:
	#APP
	csrr	a0, 2059
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end0:
	.size	get_regsw_hits, .Lfunc_end0-get_regsw_hits
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_regsw_misses                # -- Begin function get_regsw_misses
	.p2align	2
	.type	get_regsw_misses,@function
get_regsw_misses:                       # @get_regsw_misses
# %bb.0:
	#APP
	csrr	a0, 2060
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end1:
	.size	get_regsw_misses, .Lfunc_end1-get_regsw_misses
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	clear_regsw_cache               # -- Begin function clear_regsw_cache
	.p2align	2
	.type	clear_regsw_cache,@function
clear_regsw_cache:                      # @clear_regsw_cache
# %bb.0:
	#APP
	csrr	a0, 2061
	#NO_APP
	ret
.Lfunc_end2:
	.size	clear_regsw_cache, .Lfunc_end2-clear_regsw_cache
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_cycles                      # -- Begin function get_cycles
	.p2align	2
	.type	get_cycles,@function
get_cycles:                             # @get_cycles
# %bb.0:
	#APP
	csrr	a0, 2068
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end3:
	.size	get_cycles, .Lfunc_end3-get_cycles
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_li                          # -- Begin function get_li
	.p2align	2
	.type	get_li,@function
get_li:                                 # @get_li
# %bb.0:
	#APP
	csrr	a0, 2063
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end4:
	.size	get_li, .Lfunc_end4-get_li
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_ld                          # -- Begin function get_ld
	.p2align	2
	.type	get_ld,@function
get_ld:                                 # @get_ld
# %bb.0:
	#APP
	csrr	a0, 2065
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end5:
	.size	get_ld, .Lfunc_end5-get_ld
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_lw                          # -- Begin function get_lw
	.p2align	2
	.type	get_lw,@function
get_lw:                                 # @get_lw
# %bb.0:
	#APP
	csrr	a0, 2064
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end6:
	.size	get_lw, .Lfunc_end6-get_lw
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_sd                          # -- Begin function get_sd
	.p2align	2
	.type	get_sd,@function
get_sd:                                 # @get_sd
# %bb.0:
	#APP
	csrr	a0, 2067
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end7:
	.size	get_sd, .Lfunc_end7-get_sd
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_sw                          # -- Begin function get_sw
	.p2align	2
	.type	get_sw,@function
get_sw:                                 # @get_sw
# %bb.0:
	#APP
	csrr	a0, 2066
	#NO_APP
	sext.w	a0, a0
	ret
.Lfunc_end8:
	.size	get_sw, .Lfunc_end8-get_sw
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -752
	sd	ra, 744(sp)                     # 8-byte Folded Spill
	sd	s0, 736(sp)                     # 8-byte Folded Spill
	sd	s1, 728(sp)                     # 8-byte Folded Spill
	sd	s2, 720(sp)                     # 8-byte Folded Spill
	sd	s3, 712(sp)                     # 8-byte Folded Spill
	sd	s4, 704(sp)                     # 8-byte Folded Spill
	sd	s5, 696(sp)                     # 8-byte Folded Spill
	sd	s6, 688(sp)                     # 8-byte Folded Spill
	mv	s0, a1
	#APP
	csrr	a1, 2061
	#NO_APP
	#APP
	csrr	s5, 2068
	#NO_APP
	ld	a1, 0(s0)
	mv	s1, a0
	lui	a0, %hi(progname)
	sd	a1, %lo(progname)(a0)
	beqz	a1, .LBB9_2
# %bb.1:
	lbu	a1, 0(a1)
	bnez	a1, .LBB9_3
.LBB9_2:
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	sd	a1, %lo(progname)(a0)
.LBB9_3:
	mv	a0, sp
	call	jpeg_std_error
	sd	a0, 168(sp)
	addi	a0, sp, 168
	li	a1, 62
	li	a2, 520
	call	jpeg_CreateCompress
	lui	a0, %hi(cdjpeg_message_table)
	addi	a0, a0, %lo(cdjpeg_message_table)
	sd	a0, 152(sp)
	li	a0, 1043
	slli	a0, a0, 32
	addi	a0, a0, 1000
	sd	a0, 160(sp)
	li	a0, 2
	sw	a0, 228(sp)
	addi	a0, sp, 168
	call	jpeg_set_defaults
	addi	a0, sp, 168
	mv	a1, s1
	mv	a2, s0
	li	a3, 0
	call	parse_switches
	addiw	a1, s1, -1
	bge	a0, a1, .LBB9_5
# %bb.4:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	call	fprintf
	call	usage
.LBB9_5:
	bge	a0, s1, .LBB9_8
# %bb.6:
	slli	a0, a0, 3
	add	s3, s0, a0
	ld	a0, 0(s3)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	call	fopen
	mv	s2, a0
	bnez	a0, .LBB9_9
# %bb.7:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	ld	a3, 0(s3)
	j	.LBB9_13
.LBB9_8:
	call	read_stdin
	mv	s2, a0
.LBB9_9:
	lui	a0, %hi(outfilename)
	ld	a0, %lo(outfilename)(a0)
	bnez	a0, .LBB9_11
# %bb.10:
	call	write_stdout
	mv	s3, a0
	j	.LBB9_14
.LBB9_11:
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	call	fopen
	mv	s3, a0
	bnez	a0, .LBB9_14
# %bb.12:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(outfilename)
	ld	a3, %lo(outfilename)(a1)
.LBB9_13:
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	call	fprintf
	li	a0, 1
	call	exit
.LBB9_14:
	lui	a0, %hi(is_targa)
	lbu	a0, %lo(is_targa)(a0)
	beqz	a0, .LBB9_24
.LBB9_15:
	addi	a0, sp, 168
	call	jinit_read_targa
.LBB9_16:
	mv	s4, a0
.LBB9_17:
	ld	a2, 0(s4)
	sd	s2, 24(s4)
	addi	a0, sp, 168
	mv	a1, s4
	jalr	a2
	addi	a0, sp, 168
	call	jpeg_default_colorspace
	addi	a0, sp, 168
	li	a3, 1
	mv	a1, s1
	mv	a2, s0
	call	parse_switches
	addi	a0, sp, 168
	mv	a1, s3
	call	jpeg_stdio_dest
	addi	a0, sp, 168
	li	a1, 1
	call	jpeg_start_compress
	lw	a0, 472(sp)
	lw	a1, 220(sp)
	bgeu	a0, a1, .LBB9_19
.LBB9_18:                               # =>This Inner Loop Header: Depth=1
	ld	a2, 8(s4)
	addi	a0, sp, 168
	mv	a1, s4
	jalr	a2
	ld	a1, 32(s4)
	mv	a2, a0
	addi	a0, sp, 168
	call	jpeg_write_scanlines
	lw	a0, 472(sp)
	lw	a1, 220(sp)
	bltu	a0, a1, .LBB9_18
.LBB9_19:
	ld	a2, 16(s4)
	addi	a0, sp, 168
	mv	a1, s4
	jalr	a2
	addi	a0, sp, 168
	call	jpeg_finish_compress
	addi	a0, sp, 168
	call	jpeg_destroy_compress
	lui	a0, %hi(stdin)
	ld	a0, %lo(stdin)(a0)
	beq	s2, a0, .LBB9_21
# %bb.20:
	mv	a0, s2
	call	fclose
.LBB9_21:
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	beq	s3, a0, .LBB9_23
# %bb.22:
	mv	a0, s3
	call	fclose
.LBB9_23:
	sext.w	s5, s5
	#APP
	csrr	a0, 2068
	#NO_APP
	sext.w	a0, a0
	#APP
	csrr	s1, 2059
	#NO_APP
	#APP
	csrr	a3, 2060
	#NO_APP
	sub	s0, a0, s5
	sext.w	s1, s1
	sext.w	a3, a3
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	mv	a1, s0
	mv	a2, s1
	call	printf
	sub	a1, s0, s1
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	printf
	#APP
	csrr	a1, 2064
	#NO_APP
	sext.w	a1, a1
	#APP
	csrr	a3, 2063
	#NO_APP
	sext.w	a3, a3
	#APP
	csrr	a2, 2065
	#NO_APP
	sext.w	a2, a2
	#APP
	csrr	a4, 2066
	#NO_APP
	sext.w	a4, a4
	#APP
	csrr	a5, 2067
	#NO_APP
	sext.w	a5, a5
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	call	printf
	ld	a0, 128(sp)
	snez	a0, a0
	slli	a0, a0, 1
	call	exit
.LBB9_24:
	mv	a0, s2
	call	getc
	li	s6, -1
	mv	s4, a0
	bne	a0, s6, .LBB9_30
# %bb.25:
	ld	a0, 168(sp)
	ld	a1, 0(a0)
	li	a2, 42
	sw	a2, 40(a0)
	addi	a0, sp, 168
	jalr	a1
	mv	a0, s4
	mv	a1, s2
	call	ungetc
	beq	a0, s6, .LBB9_31
.LBB9_26:
	li	a0, 70
	blt	a0, s4, .LBB9_32
.LBB9_27:
	beqz	s4, .LBB9_15
# %bb.28:
	li	a0, 66
	bne	s4, a0, .LBB9_35
# %bb.29:
	addi	a0, sp, 168
	call	jinit_read_bmp
	j	.LBB9_16
.LBB9_30:
	mv	a0, s4
	mv	a1, s2
	call	ungetc
	bne	a0, s6, .LBB9_26
.LBB9_31:
	ld	a0, 168(sp)
	ld	a1, 0(a0)
	li	a2, 1040
	sw	a2, 40(a0)
	addi	a0, sp, 168
	jalr	a1
	li	a0, 70
	bge	a0, s4, .LBB9_27
.LBB9_32:
	li	a0, 71
	beq	s4, a0, .LBB9_36
# %bb.33:
	li	a0, 80
	bne	s4, a0, .LBB9_35
# %bb.34:
	addi	a0, sp, 168
	call	jinit_read_ppm
	j	.LBB9_16
.LBB9_35:
	ld	a0, 168(sp)
	ld	a1, 0(a0)
	li	a2, 1041
	sw	a2, 40(a0)
	addi	a0, sp, 168
	jalr	a1
	li	s4, 0
	j	.LBB9_17
.LBB9_36:
	addi	a0, sp, 168
	call	jinit_read_gif
	j	.LBB9_16
.Lfunc_end9:
	.size	main, .Lfunc_end9-main
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function parse_switches
	.type	parse_switches,@function
parse_switches:                         # @parse_switches
# %bb.0:
	addi	sp, sp, -176
	sd	ra, 168(sp)                     # 8-byte Folded Spill
	sd	s0, 160(sp)                     # 8-byte Folded Spill
	sd	s1, 152(sp)                     # 8-byte Folded Spill
	sd	s2, 144(sp)                     # 8-byte Folded Spill
	sd	s3, 136(sp)                     # 8-byte Folded Spill
	sd	s4, 128(sp)                     # 8-byte Folded Spill
	sd	s5, 120(sp)                     # 8-byte Folded Spill
	sd	s6, 112(sp)                     # 8-byte Folded Spill
	sd	s7, 104(sp)                     # 8-byte Folded Spill
	sd	s8, 96(sp)                      # 8-byte Folded Spill
	sd	s9, 88(sp)                      # 8-byte Folded Spill
	sd	s10, 80(sp)                     # 8-byte Folded Spill
	sd	s11, 72(sp)                     # 8-byte Folded Spill
	mv	s7, a1
	mv	s0, a0
	li	a0, 75
	sw	a0, 68(sp)
	lui	s2, %hi(outfilename)
	sd	zero, %lo(outfilename)(s2)
	ld	a0, 0(s0)
	lui	a1, %hi(is_targa)
	sb	zero, %lo(is_targa)(a1)
	li	a1, 2
	sw	zero, 124(a0)
	blt	s7, a1, .LBB10_69
# %bb.1:
	mv	s6, a2
	sd	a3, 8(sp)                       # 8-byte Folded Spill
	sd	zero, 16(sp)                    # 8-byte Folded Spill
	sd	zero, 24(sp)                    # 8-byte Folded Spill
	li	s5, 0
	li	s9, 0
	sd	zero, 40(sp)                    # 8-byte Folded Spill
	li	s8, 0
	li	a0, 100
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	li	s3, 45
	lui	s11, %hi(.L.str.50)
	addi	s11, s11, %lo(.L.str.50)
	lui	s10, %hi(.L.str.52)
	addi	s10, s10, %lo(.L.str.52)
	li	s4, 1
	j	.LBB10_4
.LBB10_2:                               #   in Loop: Header=BB10_4 Depth=1
	li	s8, 1
.LBB10_3:                               #   in Loop: Header=BB10_4 Depth=1
	addiw	s4, s4, 1
	bge	s4, s7, .LBB10_70
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	slli	a0, s4, 3
	add	a0, s6, a0
	ld	s1, 0(a0)
	lbu	a0, 0(s1)
	bne	a0, s3, .LBB10_11
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=1
	addi	s1, s1, 1
	li	a2, 1
	mv	a0, s1
	mv	a1, s11
	call	keymatch
	bnez	a0, .LBB10_82
# %bb.6:                                #   in Loop: Header=BB10_4 Depth=1
	li	a2, 1
	mv	a0, s1
	mv	a1, s10
	call	keymatch
	bnez	a0, .LBB10_2
# %bb.7:                                #   in Loop: Header=BB10_4 Depth=1
	li	a2, 2
	mv	a0, s1
	lui	a1, %hi(.L.str.53)
	addi	a1, a1, %lo(.L.str.53)
	call	keymatch
	beqz	a0, .LBB10_13
# %bb.8:                                #   in Loop: Header=BB10_4 Depth=1
	addiw	s4, s4, 1
	bge	s4, s7, .LBB10_83
# %bb.9:                                #   in Loop: Header=BB10_4 Depth=1
	slli	s1, s4, 3
	add	s1, s6, s1
	ld	a0, 0(s1)
	li	a2, 1
	lui	a1, %hi(.L.str.54)
	addi	a1, a1, %lo(.L.str.54)
	call	keymatch
	beqz	a0, .LBB10_17
# %bb.10:                               #   in Loop: Header=BB10_4 Depth=1
	sw	zero, 276(s0)
	j	.LBB10_3
.LBB10_11:                              #   in Loop: Header=BB10_4 Depth=1
	bgtz	s4, .LBB10_70
# %bb.12:                               #   in Loop: Header=BB10_4 Depth=1
	sd	zero, %lo(outfilename)(s2)
	j	.LBB10_3
.LBB10_13:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 1
	mv	a0, s1
	lui	a1, %hi(.L.str.57)
	addi	a1, a1, %lo(.L.str.57)
	call	keymatch
	bnez	a0, .LBB10_15
# %bb.14:                               #   in Loop: Header=BB10_4 Depth=1
	li	a2, 1
	mv	a0, s1
	lui	a1, %hi(.L.str.58)
	addi	a1, a1, %lo(.L.str.58)
	call	keymatch
	beqz	a0, .LBB10_21
.LBB10_15:                              #   in Loop: Header=BB10_4 Depth=1
	lui	a0, %hi(parse_switches.printed_version)
	lbu	a0, %lo(parse_switches.printed_version)(a0)
	beqz	a0, .LBB10_24
.LBB10_16:                              #   in Loop: Header=BB10_4 Depth=1
	ld	a0, 0(s0)
	lw	a1, 124(a0)
	addi	a1, a1, 1
	sw	a1, 124(a0)
	j	.LBB10_3
.LBB10_17:                              #   in Loop: Header=BB10_4 Depth=1
	ld	a0, 0(s1)
	li	a2, 2
	lui	a1, %hi(.L.str.55)
	addi	a1, a1, %lo(.L.str.55)
	call	keymatch
	beqz	a0, .LBB10_19
# %bb.18:                               #   in Loop: Header=BB10_4 Depth=1
	li	a0, 1
	sw	a0, 276(s0)
	j	.LBB10_3
.LBB10_19:                              #   in Loop: Header=BB10_4 Depth=1
	ld	a0, 0(s1)
	li	a2, 2
	lui	a1, %hi(.L.str.56)
	addi	a1, a1, %lo(.L.str.56)
	call	keymatch
	beqz	a0, .LBB10_83
# %bb.20:                               #   in Loop: Header=BB10_4 Depth=1
	li	a0, 2
	sw	a0, 276(s0)
	j	.LBB10_3
.LBB10_21:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 2
	mv	a0, s1
	lui	a1, %hi(.L.str.62)
	addi	a1, a1, %lo(.L.str.62)
	call	keymatch
	bnez	a0, .LBB10_23
# %bb.22:                               #   in Loop: Header=BB10_4 Depth=1
	li	a2, 2
	mv	a0, s1
	lui	a1, %hi(.L.str.63)
	addi	a1, a1, %lo(.L.str.63)
	call	keymatch
	beqz	a0, .LBB10_25
.LBB10_23:                              #   in Loop: Header=BB10_4 Depth=1
	li	a1, 1
	mv	a0, s0
	call	jpeg_set_colorspace
	j	.LBB10_3
.LBB10_24:                              #   in Loop: Header=BB10_4 Depth=1
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.59)
	addi	a1, a1, %lo(.L.str.59)
	lui	a2, %hi(.L.str.60)
	addi	a2, a2, %lo(.L.str.60)
	lui	a3, %hi(.L.str.61)
	addi	a3, a3, %lo(.L.str.61)
	call	fprintf
	li	a0, 1
	lui	a1, %hi(parse_switches.printed_version)
	sb	a0, %lo(parse_switches.printed_version)(a1)
	j	.LBB10_16
.LBB10_25:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 3
	mv	a0, s1
	lui	a1, %hi(.L.str.64)
	addi	a1, a1, %lo(.L.str.64)
	call	keymatch
	beqz	a0, .LBB10_31
# %bb.26:                               #   in Loop: Header=BB10_4 Depth=1
	addiw	s4, s4, 1
	li	a0, 120
	sb	a0, 55(sp)
	bge	s4, s7, .LBB10_83
# %bb.27:                               #   in Loop: Header=BB10_4 Depth=1
	slli	a0, s4, 3
	add	a0, s6, a0
	ld	a0, 0(a0)
	addi	a2, sp, 56
	addi	a3, sp, 55
	lui	a1, %hi(.L.str.65)
	addi	a1, a1, %lo(.L.str.65)
	call	__isoc99_sscanf
	blez	a0, .LBB10_83
# %bb.28:                               #   in Loop: Header=BB10_4 Depth=1
	lbu	a1, 55(sp)
	ld	a0, 56(sp)
	andi	a1, a1, 223
	li	a2, 1000
	li	a3, 77
	bne	a1, a3, .LBB10_30
# %bb.29:                               #   in Loop: Header=BB10_4 Depth=1
	mul	a0, a0, a2
.LBB10_30:                              #   in Loop: Header=BB10_4 Depth=1
	ld	a1, 8(s0)
	mul	a0, a0, a2
	sd	a0, 88(a1)
	j	.LBB10_3
.LBB10_31:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 1
	mv	a0, s1
	lui	a1, %hi(.L.str.66)
	addi	a1, a1, %lo(.L.str.66)
	call	keymatch
	bnez	a0, .LBB10_33
# %bb.32:                               #   in Loop: Header=BB10_4 Depth=1
	li	a2, 1
	mv	a0, s1
	lui	a1, %hi(.L.str.67)
	addi	a1, a1, %lo(.L.str.67)
	call	keymatch
	beqz	a0, .LBB10_34
.LBB10_33:                              #   in Loop: Header=BB10_4 Depth=1
	li	a0, 1
	sw	a0, 264(s0)
	j	.LBB10_3
.LBB10_34:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 4
	mv	a0, s1
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	call	keymatch
	beqz	a0, .LBB10_37
# %bb.35:                               #   in Loop: Header=BB10_4 Depth=1
	addiw	s4, s4, 1
	bge	s4, s7, .LBB10_83
# %bb.36:                               #   in Loop: Header=BB10_4 Depth=1
	slli	a0, s4, 3
	add	a0, s6, a0
	ld	a0, 0(a0)
	sd	a0, %lo(outfilename)(s2)
	j	.LBB10_3
.LBB10_37:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 1
	mv	a0, s1
	lui	a1, %hi(.L.str.69)
	addi	a1, a1, %lo(.L.str.69)
	call	keymatch
	beqz	a0, .LBB10_39
# %bb.38:                               #   in Loop: Header=BB10_4 Depth=1
	li	a0, 1
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	j	.LBB10_3
.LBB10_39:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 1
	mv	a0, s1
	lui	a1, %hi(.L.str.70)
	addi	a1, a1, %lo(.L.str.70)
	call	keymatch
	beqz	a0, .LBB10_43
# %bb.40:                               #   in Loop: Header=BB10_4 Depth=1
	addiw	s4, s4, 1
	bge	s4, s7, .LBB10_83
# %bb.41:                               #   in Loop: Header=BB10_4 Depth=1
	slli	a0, s4, 3
	add	a0, s6, a0
	ld	a0, 0(a0)
	addi	a2, sp, 68
	lui	a1, %hi(.L.str.71)
	addi	a1, a1, %lo(.L.str.71)
	call	__isoc99_sscanf
	li	a1, 1
	bne	a0, a1, .LBB10_83
# %bb.42:                               #   in Loop: Header=BB10_4 Depth=1
	lw	a0, 68(sp)
	call	jpeg_quality_scaling
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	j	.LBB10_3
.LBB10_43:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 2
	mv	a0, s1
	lui	a1, %hi(.L.str.72)
	addi	a1, a1, %lo(.L.str.72)
	call	keymatch
	beqz	a0, .LBB10_46
# %bb.44:                               #   in Loop: Header=BB10_4 Depth=1
	addiw	s4, s4, 1
	bge	s4, s7, .LBB10_83
# %bb.45:                               #   in Loop: Header=BB10_4 Depth=1
	slli	a0, s4, 3
	add	a0, s6, a0
	ld	s5, 0(a0)
	j	.LBB10_3
.LBB10_46:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 2
	mv	a0, s1
	lui	a1, %hi(.L.str.73)
	addi	a1, a1, %lo(.L.str.73)
	call	keymatch
	beqz	a0, .LBB10_49
# %bb.47:                               #   in Loop: Header=BB10_4 Depth=1
	addiw	s4, s4, 1
	bge	s4, s7, .LBB10_83
# %bb.48:                               #   in Loop: Header=BB10_4 Depth=1
	slli	a0, s4, 3
	add	a0, s6, a0
	ld	s9, 0(a0)
	j	.LBB10_3
.LBB10_49:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 1
	mv	a0, s1
	lui	a1, %hi(.L.str.74)
	addi	a1, a1, %lo(.L.str.74)
	call	keymatch
	beqz	a0, .LBB10_56
# %bb.50:                               #   in Loop: Header=BB10_4 Depth=1
	addiw	s4, s4, 1
	li	a0, 120
	sb	a0, 55(sp)
	bge	s4, s7, .LBB10_83
# %bb.51:                               #   in Loop: Header=BB10_4 Depth=1
	slli	a0, s4, 3
	add	a0, s6, a0
	ld	a0, 0(a0)
	addi	a2, sp, 56
	addi	a3, sp, 55
	lui	a1, %hi(.L.str.65)
	addi	a1, a1, %lo(.L.str.65)
	call	__isoc99_sscanf
	blez	a0, .LBB10_83
# %bb.52:                               #   in Loop: Header=BB10_4 Depth=1
	ld	a0, 56(sp)
	srli	a1, a0, 16
	bnez	a1, .LBB10_83
# %bb.53:                               #   in Loop: Header=BB10_4 Depth=1
	lbu	a1, 55(sp)
	andi	a1, a1, 223
	li	a2, 66
	bne	a1, a2, .LBB10_55
# %bb.54:                               #   in Loop: Header=BB10_4 Depth=1
	sw	a0, 280(s0)
	li	a0, 0
.LBB10_55:                              #   in Loop: Header=BB10_4 Depth=1
	sw	a0, 284(s0)
	j	.LBB10_3
.LBB10_56:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 2
	mv	a0, s1
	lui	a1, %hi(.L.str.75)
	addi	a1, a1, %lo(.L.str.75)
	call	keymatch
	beqz	a0, .LBB10_59
# %bb.57:                               #   in Loop: Header=BB10_4 Depth=1
	addiw	s4, s4, 1
	bge	s4, s7, .LBB10_83
# %bb.58:                               #   in Loop: Header=BB10_4 Depth=1
	slli	a0, s4, 3
	add	a0, s6, a0
	ld	a0, 0(a0)
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	j	.LBB10_3
.LBB10_59:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 2
	mv	a0, s1
	lui	a1, %hi(.L.str.76)
	addi	a1, a1, %lo(.L.str.76)
	call	keymatch
	beqz	a0, .LBB10_62
# %bb.60:                               #   in Loop: Header=BB10_4 Depth=1
	addiw	s4, s4, 1
	bge	s4, s7, .LBB10_83
# %bb.61:                               #   in Loop: Header=BB10_4 Depth=1
	slli	a0, s4, 3
	add	a0, s6, a0
	ld	a0, 0(a0)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	j	.LBB10_3
.LBB10_62:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 2
	mv	a0, s1
	lui	a1, %hi(.L.str.77)
	addi	a1, a1, %lo(.L.str.77)
	call	keymatch
	beqz	a0, .LBB10_67
# %bb.63:                               #   in Loop: Header=BB10_4 Depth=1
	addiw	s4, s4, 1
	bge	s4, s7, .LBB10_83
# %bb.64:                               #   in Loop: Header=BB10_4 Depth=1
	slli	a0, s4, 3
	add	a0, s6, a0
	ld	a0, 0(a0)
	addi	a2, sp, 56
	lui	a1, %hi(.L.str.71)
	addi	a1, a1, %lo(.L.str.71)
	call	__isoc99_sscanf
	li	a1, 1
	bne	a0, a1, .LBB10_83
# %bb.65:                               #   in Loop: Header=BB10_4 Depth=1
	lw	a0, 56(sp)
	li	a1, 101
	bgeu	a0, a1, .LBB10_83
# %bb.66:                               #   in Loop: Header=BB10_4 Depth=1
	sw	a0, 272(s0)
	j	.LBB10_3
.LBB10_67:                              #   in Loop: Header=BB10_4 Depth=1
	li	a2, 1
	mv	a0, s1
	lui	a1, %hi(.L.str.78)
	addi	a1, a1, %lo(.L.str.78)
	call	keymatch
	beqz	a0, .LBB10_83
# %bb.68:                               #   in Loop: Header=BB10_4 Depth=1
	lui	a0, %hi(is_targa)
	li	a1, 1
	sb	a1, %lo(is_targa)(a0)
	j	.LBB10_3
.LBB10_69:
	li	s8, 0
	li	s9, 0
	li	s5, 0
	li	s3, 0
	li	s2, 0
	li	s4, 1
	li	s6, 100
	li	s1, 1
	bnez	a3, .LBB10_71
	j	.LBB10_81
.LBB10_70:
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	seqz	s1, a0
	ld	a3, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	beqz	a3, .LBB10_81
.LBB10_71:
	lw	a1, 68(sp)
	mv	a0, s0
	mv	a2, s8
	call	jpeg_set_quality
	beqz	s9, .LBB10_73
# %bb.72:
	mv	a0, s0
	mv	a1, s9
	mv	a2, s6
	mv	a3, s8
	call	read_quant_tables
	beqz	a0, .LBB10_83
.LBB10_73:
	beqz	s5, .LBB10_75
# %bb.74:
	mv	a0, s0
	mv	a1, s5
	call	set_quant_slots
	beqz	a0, .LBB10_83
.LBB10_75:
	beqz	s3, .LBB10_77
# %bb.76:
	mv	a0, s0
	mv	a1, s3
	call	set_sample_factors
	beqz	a0, .LBB10_83
.LBB10_77:
	bnez	s1, .LBB10_79
# %bb.78:
	mv	a0, s0
	call	jpeg_simple_progression
.LBB10_79:
	beqz	s2, .LBB10_81
# %bb.80:
	mv	a0, s0
	mv	a1, s2
	call	read_scan_script
	beqz	a0, .LBB10_83
.LBB10_81:
	mv	a0, s4
	ld	ra, 168(sp)                     # 8-byte Folded Reload
	ld	s0, 160(sp)                     # 8-byte Folded Reload
	ld	s1, 152(sp)                     # 8-byte Folded Reload
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	ld	s4, 128(sp)                     # 8-byte Folded Reload
	ld	s5, 120(sp)                     # 8-byte Folded Reload
	ld	s6, 112(sp)                     # 8-byte Folded Reload
	ld	s7, 104(sp)                     # 8-byte Folded Reload
	ld	s8, 96(sp)                      # 8-byte Folded Reload
	ld	s9, 88(sp)                      # 8-byte Folded Reload
	ld	s10, 80(sp)                     # 8-byte Folded Reload
	ld	s11, 72(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 176
	ret
.LBB10_82:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(.L.str.51)
	addi	a1, a1, %lo(.L.str.51)
	call	fprintf
	li	a0, 1
	call	exit
.LBB10_83:
	call	usage
.Lfunc_end10:
	.size	parse_switches, .Lfunc_end10-parse_switches
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
	lui	s1, %hi(stderr)
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(.L.str.79)
	addi	a1, a1, %lo(.L.str.79)
	call	fprintf
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.80)
	addi	a0, a0, %lo(.L.str.80)
	li	a1, 12
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.81)
	addi	a0, a0, %lo(.L.str.81)
	li	a1, 37
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.82)
	addi	a0, a0, %lo(.L.str.82)
	li	a1, 68
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.83)
	addi	a0, a0, %lo(.L.str.83)
	li	a1, 45
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.84)
	addi	a0, a0, %lo(.L.str.84)
	li	a1, 77
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.85)
	addi	a0, a0, %lo(.L.str.85)
	li	a1, 46
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.86)
	addi	a0, a0, %lo(.L.str.86)
	li	a1, 65
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.87)
	addi	a0, a0, %lo(.L.str.87)
	li	a1, 29
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.88)
	addi	a1, a1, %lo(.L.str.88)
	lui	a2, %hi(.L.str.89)
	addi	a2, a2, %lo(.L.str.89)
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.90)
	addi	a1, a1, %lo(.L.str.90)
	lui	s0, %hi(.L.str.91)
	addi	s0, s0, %lo(.L.str.91)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stderr)(s1)
	lui	a1, %hi(.L.str.92)
	addi	a1, a1, %lo(.L.str.92)
	mv	a2, s0
	call	fprintf
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.93)
	addi	a0, a0, %lo(.L.str.93)
	li	a1, 67
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.94)
	addi	a0, a0, %lo(.L.str.94)
	li	a1, 62
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.95)
	addi	a0, a0, %lo(.L.str.95)
	li	a1, 51
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.96)
	addi	a0, a0, %lo(.L.str.96)
	li	a1, 46
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.97)
	addi	a0, a0, %lo(.L.str.97)
	li	a1, 43
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.98)
	addi	a0, a0, %lo(.L.str.98)
	li	a1, 22
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.99)
	addi	a0, a0, %lo(.L.str.99)
	li	a1, 52
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.100)
	addi	a0, a0, %lo(.L.str.100)
	li	a1, 55
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.101)
	addi	a0, a0, %lo(.L.str.101)
	li	a1, 55
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.102)
	addi	a0, a0, %lo(.L.str.102)
	li	a1, 52
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s1)
	lui	a0, %hi(.L.str.103)
	addi	a0, a0, %lo(.L.str.103)
	li	a1, 56
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.Lfunc_end11:
	.size	usage, .Lfunc_end11-usage
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
	.asciz	"cjpeg"
	.size	.L.str, 6

	.type	cdjpeg_message_table,@object    # @cdjpeg_message_table
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
cdjpeg_message_table:
	.quad	0
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
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
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

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"cycles: %lu | regsw hits:%d regsw misses:%d \n"
	.size	.L.str.5, 46

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Corrected Cycles: %lu\n"
	.size	.L.str.6, 23

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"lw, %lu\n ld, %lu\n li, %lu\n sw, %lu\n sd, %lu\n "
	.size	.L.str.7, 46

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Unsupported BMP colormap format"
	.size	.L.str.8, 32

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Only 8- and 24-bit BMP files are supported"
	.size	.L.str.9, 43

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Invalid BMP file: bad header length"
	.size	.L.str.10, 36

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Invalid BMP file: biPlanes not equal to 1"
	.size	.L.str.11, 42

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"BMP output must be grayscale or RGB"
	.size	.L.str.12, 36

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Sorry, compressed BMPs not yet supported"
	.size	.L.str.13, 41

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Not a BMP file - does not start with BM"
	.size	.L.str.14, 40

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%ux%u 24-bit BMP image"
	.size	.L.str.15, 23

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%ux%u 8-bit colormapped BMP image"
	.size	.L.str.16, 34

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%ux%u 24-bit OS2 BMP image"
	.size	.L.str.17, 27

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"%ux%u 8-bit colormapped OS2 BMP image"
	.size	.L.str.18, 38

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"GIF output got confused"
	.size	.L.str.19, 24

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Bogus GIF codesize %d"
	.size	.L.str.20, 22

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"GIF output must be grayscale or RGB"
	.size	.L.str.21, 36

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Too few images in GIF file"
	.size	.L.str.22, 27

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Not a GIF file"
	.size	.L.str.23, 15

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"%ux%ux%d GIF image"
	.size	.L.str.24, 19

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Warning: unexpected GIF version number '%c%c%c'"
	.size	.L.str.25, 48

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Ignoring GIF extension block of type 0x%02x"
	.size	.L.str.26, 44

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Caution: nonsquare pixels in input"
	.size	.L.str.27, 35

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Corrupt data in GIF file"
	.size	.L.str.28, 25

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Bogus char 0x%02x in GIF file, ignoring"
	.size	.L.str.29, 40

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Premature end of GIF image"
	.size	.L.str.30, 27

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Ran out of GIF bits"
	.size	.L.str.31, 20

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"PPM output must be grayscale or RGB"
	.size	.L.str.32, 36

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Nonnumeric data in PPM file"
	.size	.L.str.33, 28

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Not a PPM/PGM file"
	.size	.L.str.34, 19

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"%ux%u PGM image"
	.size	.L.str.35, 16

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"%ux%u text PGM image"
	.size	.L.str.36, 21

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"%ux%u PPM image"
	.size	.L.str.37, 16

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"%ux%u text PPM image"
	.size	.L.str.38, 21

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Unsupported Targa colormap format"
	.size	.L.str.39, 34

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Invalid or unsupported Targa file"
	.size	.L.str.40, 34

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"Targa output must be grayscale or RGB"
	.size	.L.str.41, 38

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"%ux%u RGB Targa image"
	.size	.L.str.42, 22

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"%ux%u grayscale Targa image"
	.size	.L.str.43, 28

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"%ux%u colormapped Targa image"
	.size	.L.str.44, 30

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Color map file is invalid or of unsupported format"
	.size	.L.str.45, 51

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Output file format cannot handle %d colormap entries"
	.size	.L.str.46, 53

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"ungetc failed"
	.size	.L.str.47, 14

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Unrecognized input file format --- perhaps you need -targa"
	.size	.L.str.48, 59

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Unsupported output file format"
	.size	.L.str.49, 31

	.type	is_targa,@object                # @is_targa
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
is_targa:
	.byte	0                               # 0x0
	.size	is_targa, 1

	.type	.L.str.50,@object               # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"arithmetic"
	.size	.L.str.50, 11

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"%s: sorry, arithmetic coding not supported\n"
	.size	.L.str.51, 44

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"baseline"
	.size	.L.str.52, 9

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"dct"
	.size	.L.str.53, 4

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"int"
	.size	.L.str.54, 4

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"fast"
	.size	.L.str.55, 5

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"float"
	.size	.L.str.56, 6

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"debug"
	.size	.L.str.57, 6

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"verbose"
	.size	.L.str.58, 8

	.type	parse_switches.printed_version,@object # @parse_switches.printed_version
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
parse_switches.printed_version:
	.byte	0                               # 0x0
	.size	parse_switches.printed_version, 1

	.type	.L.str.59,@object               # @.str.59
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.59:
	.asciz	"Independent JPEG Group's CJPEG, version %s\n%s\n"
	.size	.L.str.59, 47

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"6b  27-Mar-1998"
	.size	.L.str.60, 16

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"Copyright (C) 1998, Thomas G. Lane"
	.size	.L.str.61, 35

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"grayscale"
	.size	.L.str.62, 10

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"greyscale"
	.size	.L.str.63, 10

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"maxmemory"
	.size	.L.str.64, 10

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%ld%c"
	.size	.L.str.65, 6

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"optimize"
	.size	.L.str.66, 9

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"optimise"
	.size	.L.str.67, 9

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"outfile"
	.size	.L.str.68, 8

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"progressive"
	.size	.L.str.69, 12

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"quality"
	.size	.L.str.70, 8

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"%d"
	.size	.L.str.71, 3

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"qslots"
	.size	.L.str.72, 7

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"qtables"
	.size	.L.str.73, 8

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"restart"
	.size	.L.str.74, 8

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"sample"
	.size	.L.str.75, 7

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"scans"
	.size	.L.str.76, 6

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"smooth"
	.size	.L.str.77, 7

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"targa"
	.size	.L.str.78, 6

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"usage: %s [switches] "
	.size	.L.str.79, 22

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"[inputfile]\n"
	.size	.L.str.80, 13

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"Switches (names may be abbreviated):\n"
	.size	.L.str.81, 38

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"  -quality N     Compression quality (0..100; 5-95 is useful range)\n"
	.size	.L.str.82, 69

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"  -grayscale     Create monochrome JPEG file\n"
	.size	.L.str.83, 46

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"  -optimize      Optimize Huffman table (smaller file, but slow compression)\n"
	.size	.L.str.84, 78

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"  -progressive   Create progressive JPEG file\n"
	.size	.L.str.85, 47

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"  -targa         Input file is Targa format (usually not needed)\n"
	.size	.L.str.86, 66

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"Switches for advanced users:\n"
	.size	.L.str.87, 30

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"  -dct int       Use integer DCT method%s\n"
	.size	.L.str.88, 43

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	" (default)"
	.size	.L.str.89, 11

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"  -dct fast      Use fast integer DCT (less accurate)%s\n"
	.size	.L.str.90, 57

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.zero	1
	.size	.L.str.91, 1

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"  -dct float     Use floating-point DCT method%s\n"
	.size	.L.str.92, 50

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"  -restart N     Set restart interval in rows, or in blocks with B\n"
	.size	.L.str.93, 68

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"  -smooth N      Smooth dithered input (N=1..100 is strength)\n"
	.size	.L.str.94, 63

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"  -maxmemory N   Maximum memory to use (in kbytes)\n"
	.size	.L.str.95, 52

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"  -outfile name  Specify name for output file\n"
	.size	.L.str.96, 47

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"  -verbose  or  -debug   Emit debug output\n"
	.size	.L.str.97, 44

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"Switches for wizards:\n"
	.size	.L.str.98, 23

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"  -baseline      Force baseline quantization tables\n"
	.size	.L.str.99, 53

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"  -qtables file  Use quantization tables given in file\n"
	.size	.L.str.100, 56

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"  -qslots N[,...]    Set component quantization tables\n"
	.size	.L.str.101, 56

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"  -sample HxV[,...]  Set component sampling factors\n"
	.size	.L.str.102, 53

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"  -scans file    Create multi-scan JPEG per script file\n"
	.size	.L.str.103, 57

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
