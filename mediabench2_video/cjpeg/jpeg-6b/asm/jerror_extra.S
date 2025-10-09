	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jerror.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jpeg_std_error                  # -- Begin function jpeg_std_error
	.p2align	2
	.type	jpeg_std_error,@function
jpeg_std_error:                         # @jpeg_std_error
# %bb.0:
	lui	a1, %hi(error_exit)
	addi	a1, a1, %lo(error_exit)
	sd	a1, 0(a0)
	lui	a1, %hi(emit_message)
	addi	a1, a1, %lo(emit_message)
	sd	a1, 8(a0)
	lui	a1, %hi(output_message)
	addi	a1, a1, %lo(output_message)
	sd	a1, 16(a0)
	lui	a1, %hi(format_message)
	addi	a1, a1, %lo(format_message)
	sd	a1, 24(a0)
	lui	a1, %hi(reset_error_mgr)
	addi	a1, a1, %lo(reset_error_mgr)
	sd	a1, 32(a0)
	sw	zero, 124(a0)
	sd	zero, 128(a0)
	sw	zero, 40(a0)
	lui	a1, %hi(jpeg_std_message_table)
	addi	a1, a1, %lo(jpeg_std_message_table)
	sd	a1, 136(a0)
	li	a1, 123
	sw	a1, 144(a0)
	sd	zero, 152(a0)
	sd	zero, 160(a0)
	ret
.Lfunc_end0:
	.size	jpeg_std_error, .Lfunc_end0-jpeg_std_error
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function error_exit
	.type	error_exit,@function
error_exit:                             # @error_exit
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 0(a0)
	ld	a1, 16(a0)
	mv	a0, s0
	jalr	a1
	mv	a0, s0
	call	jpeg_destroy
	li	a0, 1
	call	exit
.Lfunc_end1:
	.size	error_exit, .Lfunc_end1-error_exit
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function emit_message
	.type	emit_message,@function
emit_message:                           # @emit_message
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	ld	s0, 0(a0)
	bltz	a1, .LBB2_3
# %bb.1:
	lw	a2, 124(s0)
	blt	a2, a1, .LBB2_7
# %bb.2:
	ld	t1, 16(s0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	jr	t1
.LBB2_3:
	ld	a1, 128(s0)
	beqz	a1, .LBB2_5
# %bb.4:
	lw	a2, 124(s0)
	li	a3, 3
	blt	a2, a3, .LBB2_6
.LBB2_5:
	ld	a1, 16(s0)
	jalr	a1
	ld	a1, 128(s0)
.LBB2_6:
	addi	a1, a1, 1
	sd	a1, 128(s0)
.LBB2_7:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	emit_message, .Lfunc_end2-emit_message
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function output_message
	.type	output_message,@function
output_message:                         # @output_message
# %bb.0:
	addi	sp, sp, -208
	sd	ra, 200(sp)                     # 8-byte Folded Spill
	ld	a1, 0(a0)
	ld	a2, 24(a1)
	mv	a1, sp
	jalr	a2
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.124)
	addi	a1, a1, %lo(.L.str.124)
	mv	a2, sp
	call	fprintf
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 208
	ret
.Lfunc_end3:
	.size	output_message, .Lfunc_end3-output_message
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function format_message
	.type	format_message,@function
format_message:                         # @format_message
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	ld	t0, 0(a0)
	lw	a2, 40(t0)
	mv	a0, a1
	blez	a2, .LBB4_2
# %bb.1:
	lw	a1, 144(t0)
	bge	a1, a2, .LBB4_6
.LBB4_2:
	ld	a1, 152(t0)
	beqz	a1, .LBB4_7
# %bb.3:
	lw	a3, 160(t0)
	blt	a2, a3, .LBB4_7
# %bb.4:
	lw	a4, 164(t0)
	blt	a4, a2, .LBB4_7
# %bb.5:
	subw	a3, a2, a3
	slli	a3, a3, 3
	add	a1, a1, a3
	ld	a1, 0(a1)
	bnez	a1, .LBB4_8
	j	.LBB4_7
.LBB4_6:
	ld	a1, 136(t0)
	slli	a3, a2, 3
	add	a1, a1, a3
	ld	a1, 0(a1)
	bnez	a1, .LBB4_8
.LBB4_7:
	ld	a1, 136(t0)
	sw	a2, 44(t0)
	ld	a1, 0(a1)
.LBB4_8:
	li	a3, 37
	mv	a2, a1
.LBB4_9:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, 0(a2)
	beqz	a4, .LBB4_13
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=1
	addi	a2, a2, 1
	bne	a4, a3, .LBB4_9
# %bb.11:
	lbu	a2, 0(a2)
	li	a3, 115
	bne	a2, a3, .LBB4_13
# %bb.12:
	addi	a2, t0, 44
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	sprintf
.LBB4_13:
	lw	a2, 44(t0)
	lw	a3, 48(t0)
	lw	a4, 52(t0)
	lw	a5, 56(t0)
	lw	a6, 60(t0)
	lw	a7, 64(t0)
	lw	t1, 68(t0)
	lw	t0, 72(t0)
	sd	t0, 8(sp)
	sd	t1, 0(sp)
	call	sprintf
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	format_message, .Lfunc_end4-format_message
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function reset_error_mgr
	.type	reset_error_mgr,@function
reset_error_mgr:                        # @reset_error_mgr
# %bb.0:
	ld	a0, 0(a0)
	sd	zero, 128(a0)
	sw	zero, 40(a0)
	ret
.Lfunc_end5:
	.size	reset_error_mgr, .Lfunc_end5-reset_error_mgr
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Bogus message code %d"
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Sorry, there are legal restrictions on arithmetic coding"
	.size	.L.str.1, 57

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"ALIGN_TYPE is wrong, please fix"
	.size	.L.str.2, 32

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"MAX_ALLOC_CHUNK is wrong, please fix"
	.size	.L.str.3, 37

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Bogus buffer control mode"
	.size	.L.str.4, 26

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Invalid component ID %d in SOS"
	.size	.L.str.5, 31

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"DCT coefficient out of range"
	.size	.L.str.6, 29

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"IDCT output block size %d not supported"
	.size	.L.str.7, 40

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Bogus Huffman table definition"
	.size	.L.str.8, 31

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Bogus input colorspace"
	.size	.L.str.9, 23

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Bogus JPEG colorspace"
	.size	.L.str.10, 22

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Bogus marker length"
	.size	.L.str.11, 20

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Wrong JPEG library version: library is %d, caller expects %d"
	.size	.L.str.12, 61

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Sampling factors too large for interleaved scan"
	.size	.L.str.13, 48

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Invalid memory pool code %d"
	.size	.L.str.14, 28

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Unsupported JPEG data precision %d"
	.size	.L.str.15, 35

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Invalid progressive parameters Ss=%d Se=%d Ah=%d Al=%d"
	.size	.L.str.16, 55

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Invalid progressive parameters at scan script entry %d"
	.size	.L.str.17, 55

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Bogus sampling factors"
	.size	.L.str.18, 23

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Invalid scan script at entry %d"
	.size	.L.str.19, 32

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Improper call to JPEG library in state %d"
	.size	.L.str.20, 42

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"JPEG parameter struct mismatch: library thinks size is %u, caller expects %u"
	.size	.L.str.21, 77

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Bogus virtual array access"
	.size	.L.str.22, 27

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Buffer passed to JPEG library is too small"
	.size	.L.str.23, 43

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Suspension not allowed here"
	.size	.L.str.24, 28

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"CCIR601 sampling not implemented yet"
	.size	.L.str.25, 37

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Too many color components: %d, max %d"
	.size	.L.str.26, 38

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Unsupported color conversion request"
	.size	.L.str.27, 37

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Bogus DAC index %d"
	.size	.L.str.28, 19

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Bogus DAC value 0x%x"
	.size	.L.str.29, 21

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Bogus DHT index %d"
	.size	.L.str.30, 19

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Bogus DQT index %d"
	.size	.L.str.31, 19

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Empty JPEG image (DNL not supported)"
	.size	.L.str.32, 37

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Read from EMS failed"
	.size	.L.str.33, 21

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Write to EMS failed"
	.size	.L.str.34, 20

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Didn't expect more than one scan"
	.size	.L.str.35, 33

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Input file read error"
	.size	.L.str.36, 22

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Output file write error --- out of disk space?"
	.size	.L.str.37, 47

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Fractional sampling not implemented yet"
	.size	.L.str.38, 40

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Huffman code size table overflow"
	.size	.L.str.39, 33

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Missing Huffman code table entry"
	.size	.L.str.40, 33

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"Maximum supported image dimension is %u pixels"
	.size	.L.str.41, 47

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"Empty input file"
	.size	.L.str.42, 17

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Premature end of input file"
	.size	.L.str.43, 28

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Cannot transcode due to multiple use of quantization table %d"
	.size	.L.str.44, 62

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Scan script does not transmit all data"
	.size	.L.str.45, 39

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Invalid color quantization mode change"
	.size	.L.str.46, 39

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Not implemented yet"
	.size	.L.str.47, 20

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Requested feature was omitted at compile time"
	.size	.L.str.48, 46

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Backing store not supported"
	.size	.L.str.49, 28

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Huffman table 0x%02x was not defined"
	.size	.L.str.50, 37

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"JPEG datastream contains no image"
	.size	.L.str.51, 34

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"Quantization table 0x%02x was not defined"
	.size	.L.str.52, 42

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"Not a JPEG file: starts with 0x%02x 0x%02x"
	.size	.L.str.53, 43

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"Insufficient memory (case %d)"
	.size	.L.str.54, 30

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"Cannot quantize more than %d color components"
	.size	.L.str.55, 46

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Cannot quantize to fewer than %d colors"
	.size	.L.str.56, 40

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"Cannot quantize to more than %d colors"
	.size	.L.str.57, 39

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"Invalid JPEG file structure: two SOF markers"
	.size	.L.str.58, 45

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"Invalid JPEG file structure: missing SOS marker"
	.size	.L.str.59, 48

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"Unsupported JPEG process: SOF type 0x%02x"
	.size	.L.str.60, 42

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"Invalid JPEG file structure: two SOI markers"
	.size	.L.str.61, 45

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"Invalid JPEG file structure: SOS before SOF"
	.size	.L.str.62, 44

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"Failed to create temporary file %s"
	.size	.L.str.63, 35

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"Read failed on temporary file"
	.size	.L.str.64, 30

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"Seek failed on temporary file"
	.size	.L.str.65, 30

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"Write failed on temporary file --- out of disk space?"
	.size	.L.str.66, 54

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"Application transferred too few scanlines"
	.size	.L.str.67, 42

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"Unsupported marker type 0x%02x"
	.size	.L.str.68, 31

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"Virtual array controller messed up"
	.size	.L.str.69, 35

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"Image too wide for this implementation"
	.size	.L.str.70, 39

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"Read from XMS failed"
	.size	.L.str.71, 21

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"Write to XMS failed"
	.size	.L.str.72, 20

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"Copyright (C) 1998, Thomas G. Lane"
	.size	.L.str.73, 35

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"6b  27-Mar-1998"
	.size	.L.str.74, 16

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"Caution: quantization tables are too coarse for baseline JPEG"
	.size	.L.str.75, 62

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"Adobe APP14 marker: version %d, flags 0x%04x 0x%04x, transform %d"
	.size	.L.str.76, 66

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"Unknown APP0 marker (not JFIF), length %u"
	.size	.L.str.77, 42

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"Unknown APP14 marker (not Adobe), length %u"
	.size	.L.str.78, 44

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"Define Arithmetic Table 0x%02x: 0x%02x"
	.size	.L.str.79, 39

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"Define Huffman Table 0x%02x"
	.size	.L.str.80, 28

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"Define Quantization Table %d  precision %d"
	.size	.L.str.81, 43

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"Define Restart Interval %u"
	.size	.L.str.82, 27

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"Freed EMS handle %u"
	.size	.L.str.83, 20

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"Obtained EMS handle %u"
	.size	.L.str.84, 23

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"End Of Image"
	.size	.L.str.85, 13

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"        %3d %3d %3d %3d %3d %3d %3d %3d"
	.size	.L.str.86, 40

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"JFIF APP0 marker: version %d.%02d, density %dx%d  %d"
	.size	.L.str.87, 53

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"Warning: thumbnail image size does not match data length %u"
	.size	.L.str.88, 60

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"JFIF extension marker: type 0x%02x, length %u"
	.size	.L.str.89, 46

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"    with %d x %d thumbnail image"
	.size	.L.str.90, 33

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"Miscellaneous marker 0x%02x, length %u"
	.size	.L.str.91, 39

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"Unexpected marker 0x%02x"
	.size	.L.str.92, 25

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"        %4u %4u %4u %4u %4u %4u %4u %4u"
	.size	.L.str.93, 40

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"Quantizing to %d = %d*%d*%d colors"
	.size	.L.str.94, 35

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"Quantizing to %d colors"
	.size	.L.str.95, 24

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"Selected %d colors for quantization"
	.size	.L.str.96, 36

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"At marker 0x%02x, recovery action %d"
	.size	.L.str.97, 37

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"RST%d"
	.size	.L.str.98, 6

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"Smoothing not supported with nonstandard sampling ratios"
	.size	.L.str.99, 57

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"Start Of Frame 0x%02x: width=%u, height=%u, components=%d"
	.size	.L.str.100, 58

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"    Component %d: %dhx%dv q=%d"
	.size	.L.str.101, 31

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"Start of Image"
	.size	.L.str.102, 15

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"Start Of Scan: %d components"
	.size	.L.str.103, 29

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"    Component %d: dc=%d ac=%d"
	.size	.L.str.104, 30

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"  Ss=%d, Se=%d, Ah=%d, Al=%d"
	.size	.L.str.105, 29

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"Closed temporary file %s"
	.size	.L.str.106, 25

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"Opened temporary file %s"
	.size	.L.str.107, 25

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"JFIF extension marker: JPEG-compressed thumbnail image, length %u"
	.size	.L.str.108, 66

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"JFIF extension marker: palette thumbnail image, length %u"
	.size	.L.str.109, 58

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"JFIF extension marker: RGB thumbnail image, length %u"
	.size	.L.str.110, 54

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"Unrecognized component IDs %d %d %d, assuming YCbCr"
	.size	.L.str.111, 52

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"Freed XMS handle %u"
	.size	.L.str.112, 20

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"Obtained XMS handle %u"
	.size	.L.str.113, 23

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"Unknown Adobe color transform code %d"
	.size	.L.str.114, 38

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"Inconsistent progression sequence for component %d coefficient %d"
	.size	.L.str.115, 66

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"Corrupt JPEG data: %u extraneous bytes before marker 0x%02x"
	.size	.L.str.116, 60

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"Corrupt JPEG data: premature end of data segment"
	.size	.L.str.117, 49

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"Corrupt JPEG data: bad Huffman code"
	.size	.L.str.118, 36

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"Warning: unknown JFIF revision number %d.%02d"
	.size	.L.str.119, 46

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"Premature end of JPEG file"
	.size	.L.str.120, 27

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"Corrupt JPEG data: found marker 0x%02x instead of RST%d"
	.size	.L.str.121, 56

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"Invalid SOS parameters for sequential JPEG"
	.size	.L.str.122, 43

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"Application transferred too many scanlines"
	.size	.L.str.123, 43

	.type	jpeg_std_message_table,@object  # @jpeg_std_message_table
	.section	.rodata,"a",@progbits
	.globl	jpeg_std_message_table
	.p2align	3, 0x0
jpeg_std_message_table:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
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
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	0
	.size	jpeg_std_message_table, 1000

	.type	.L.str.124,@object              # @.str.124
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.124:
	.asciz	"%s\n"
	.size	.L.str.124, 4

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
