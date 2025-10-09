	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"mpeg2dec.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
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
	mv	s0, a1
	mv	s1, a0
	lui	a0, %hi(Verbose_Flag)
	sw	zero, %lo(Verbose_Flag)(a0)
	lui	a1, %hi(Output_Picture_Filename)
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	sd	a0, %lo(Output_Picture_Filename)(a1)
	lui	a1, %hi(hiQdither)
	sw	zero, %lo(hiQdither)(a1)
	lui	s8, %hi(Output_Type)
	sw	zero, %lo(Output_Type)(s8)
	lui	a1, %hi(Frame_Store_Flag)
	sw	zero, %lo(Frame_Store_Flag)(a1)
	lui	a1, %hi(Spatial_Flag)
	sw	zero, %lo(Spatial_Flag)(a1)
	lui	a1, %hi(Lower_Layer_Picture_Filename)
	sd	a0, %lo(Lower_Layer_Picture_Filename)(a1)
	lui	a1, %hi(Reference_IDCT_Flag)
	sw	zero, %lo(Reference_IDCT_Flag)(a1)
	lui	a1, %hi(Trace_Flag)
	sw	zero, %lo(Trace_Flag)(a1)
	lui	a1, %hi(Quiet_Flag)
	sw	zero, %lo(Quiet_Flag)(a1)
	lui	a1, %hi(Ersatz_Flag)
	sw	zero, %lo(Ersatz_Flag)(a1)
	lui	a1, %hi(Substitute_Picture_Filename)
	sd	a0, %lo(Substitute_Picture_Filename)(a1)
	lui	a1, %hi(Two_Streams)
	sw	zero, %lo(Two_Streams)(a1)
	lui	a1, %hi(Enhancement_Layer_Bitstream_Filename)
	sd	a0, %lo(Enhancement_Layer_Bitstream_Filename)(a1)
	lui	a1, %hi(Big_Picture_Flag)
	sw	zero, %lo(Big_Picture_Flag)(a1)
	lui	a1, %hi(Main_Bitstream_Flag)
	sw	zero, %lo(Main_Bitstream_Flag)(a1)
	lui	a1, %hi(Main_Bitstream_Filename)
	sd	a0, %lo(Main_Bitstream_Filename)(a1)
	lui	a0, %hi(Verify_Flag)
	sw	zero, %lo(Verify_Flag)(a0)
	lui	a0, %hi(Stats_Flag)
	sw	zero, %lo(Stats_Flag)(a0)
	lui	a0, %hi(User_Data_Flag)
	li	s3, 1
	sw	zero, %lo(User_Data_Flag)(a0)
	blt	s3, s1, .LBB0_1
	j	.LBB0_161
.LBB0_1:
	li	a0, -1
	sw	a0, %lo(Output_Type)(s8)
	addi	s4, s0, 8
	li	s5, 45
	li	s7, 22
	lui	s9, %hi(.LJTI0_0)
	addi	s9, s9, %lo(.LJTI0_0)
	li	s10, 1
	j	.LBB0_6
.LBB0_2:                                #   in Loop: Header=BB0_6 Depth=1
	lui	a0, %hi(User_Data_Flag)
	sw	s3, %lo(User_Data_Flag)(a0)
.LBB0_3:                                #   in Loop: Header=BB0_6 Depth=1
	lui	a0, %hi(.Lstr.31)
	addi	a0, a0, %lo(.Lstr.31)
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=1
	call	puts
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	addiw	s10, s10, 1
	bge	s10, s1, .LBB0_31
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	subw	s2, s1, s10
	slli	a0, s10, 3
	bne	s2, s3, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	li	s11, 0
	add	a0, s0, a0
	ld	s6, 0(a0)
	lbu	a0, 0(s6)
	bne	a0, s5, .LBB0_5
	j	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	add	a1, s4, a0
	ld	a1, 0(a1)
	lbu	a1, 0(a1)
	addi	a1, a1, -45
	seqz	s11, a1
	add	a0, s0, a0
	ld	s6, 0(a0)
	lbu	a0, 0(s6)
	bne	a0, s5, .LBB0_5
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	call	__ctype_toupper_loc
	lbu	a2, 1(s6)
	ld	a0, 0(a0)
	slli	a1, a2, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	a0, a0, -66
	bltu	s7, a0, .LBB0_160
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	slli	a0, a0, 2
	add	a0, a0, s9
	lw	a0, 0(a0)
	jr	a0
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	addi	s2, s2, -1
	seqz	a0, s2
	or	a0, a0, s11
	lui	a1, %hi(Main_Bitstream_Flag)
	sw	s3, %lo(Main_Bitstream_Flag)(a1)
	beqz	a0, .LBB0_30
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=1
	lui	a0, %hi(.Lstr.38)
	addi	a0, a0, %lo(.Lstr.38)
	j	.LBB0_4
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=1
	lui	a0, %hi(Reference_IDCT_Flag)
	sw	s3, %lo(Reference_IDCT_Flag)(a0)
	j	.LBB0_5
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=1
	lui	a0, %hi(.Lstr.32)
	addi	a0, a0, %lo(.Lstr.32)
	j	.LBB0_4
.LBB0_15:                               #   in Loop: Header=BB0_6 Depth=1
	lui	a0, %hi(Quiet_Flag)
	sw	s3, %lo(Quiet_Flag)(a0)
	j	.LBB0_5
.LBB0_16:                               #   in Loop: Header=BB0_6 Depth=1
	addi	s2, s2, -1
	seqz	a0, s2
	or	a0, a0, s11
	lui	a1, %hi(Ersatz_Flag)
	sw	s3, %lo(Ersatz_Flag)(a1)
	bnez	a0, .LBB0_157
# %bb.17:                               #   in Loop: Header=BB0_6 Depth=1
	addiw	s10, s10, 1
	slli	a0, s10, 3
	add	a0, s0, a0
	ld	a0, 0(a0)
	lui	a1, %hi(Substitute_Picture_Filename)
	sd	a0, %lo(Substitute_Picture_Filename)(a1)
	j	.LBB0_5
.LBB0_18:                               #   in Loop: Header=BB0_6 Depth=1
	lui	a0, %hi(Big_Picture_Flag)
	sw	s3, %lo(Big_Picture_Flag)(a0)
	j	.LBB0_5
.LBB0_19:                               #   in Loop: Header=BB0_6 Depth=1
	lui	a0, %hi(.Lstr.37)
	addi	a0, a0, %lo(.Lstr.37)
	j	.LBB0_4
.LBB0_20:                               #   in Loop: Header=BB0_6 Depth=1
	lui	a0, %hi(.Lstr.35)
	addi	a0, a0, %lo(.Lstr.35)
	j	.LBB0_4
.LBB0_21:                               #   in Loop: Header=BB0_6 Depth=1
	addi	s2, s2, -1
	seqz	a0, s2
	or	a0, a0, s11
	lui	a1, %hi(Two_Streams)
	sw	s3, %lo(Two_Streams)(a1)
	bnez	a0, .LBB0_159
# %bb.22:                               #   in Loop: Header=BB0_6 Depth=1
	addiw	s10, s10, 1
	slli	a0, s10, 3
	add	a0, s0, a0
	ld	a0, 0(a0)
	lui	a1, %hi(Enhancement_Layer_Bitstream_Filename)
	sd	a0, %lo(Enhancement_Layer_Bitstream_Filename)(a1)
	j	.LBB0_5
.LBB0_23:                               #   in Loop: Header=BB0_6 Depth=1
	addi	a0, s6, 2
	li	a2, 10
	li	a1, 0
	call	strtol
	andi	a1, a0, -2
	sext.w	a1, a1
	sw	a0, %lo(Output_Type)(s8)
	li	a0, 4
	bne	a1, a0, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_6 Depth=1
	lui	a0, %hi(Output_Picture_Filename)
	lui	a1, %hi(.L.str.13)
	addi	a1, a1, %lo(.L.str.13)
	sd	a1, %lo(Output_Picture_Filename)(a0)
	j	.LBB0_5
.LBB0_25:                               #   in Loop: Header=BB0_6 Depth=1
	lui	a0, %hi(Frame_Store_Flag)
	sw	s3, %lo(Frame_Store_Flag)(a0)
	j	.LBB0_5
.LBB0_26:                               #   in Loop: Header=BB0_6 Depth=1
	addi	s2, s2, -1
	seqz	a0, s2
	or	a0, a0, s11
	lui	a1, %hi(Spatial_Flag)
	sw	s3, %lo(Spatial_Flag)(a1)
	bnez	a0, .LBB0_158
# %bb.27:                               #   in Loop: Header=BB0_6 Depth=1
	addiw	s10, s10, 1
	slli	a0, s10, 3
	add	a0, s0, a0
	ld	a0, 0(a0)
	lui	a1, %hi(Lower_Layer_Picture_Filename)
	sd	a0, %lo(Lower_Layer_Picture_Filename)(a1)
	j	.LBB0_5
.LBB0_28:                               #   in Loop: Header=BB0_6 Depth=1
	addi	s2, s2, -1
	seqz	a0, s2
	or	a0, a0, s11
	bnez	a0, .LBB0_166
# %bb.29:                               #   in Loop: Header=BB0_6 Depth=1
	addiw	s10, s10, 1
	slli	a0, s10, 3
	add	a0, s0, a0
	ld	a0, 0(a0)
	lui	a1, %hi(Output_Picture_Filename)
	sd	a0, %lo(Output_Picture_Filename)(a1)
	j	.LBB0_5
.LBB0_30:                               #   in Loop: Header=BB0_6 Depth=1
	addiw	s10, s10, 1
	slli	a0, s10, 3
	add	a0, s0, a0
	ld	a0, 0(a0)
	lui	a1, %hi(Main_Bitstream_Filename)
	sd	a0, %lo(Main_Bitstream_Filename)(a1)
	j	.LBB0_5
.LBB0_31:
	lui	a0, %hi(Main_Bitstream_Flag)
	lw	a0, %lo(Main_Bitstream_Flag)(a0)
	li	a1, 1
	beq	a0, a1, .LBB0_33
# %bb.32:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
.LBB0_33:
	lui	a0, %hi(Output_Type)
	lw	a1, %lo(Output_Type)(a0)
	lui	a2, %hi(Frame_Store_Flag)
	lw	a2, %lo(Frame_Store_Flag)(a2)
	andi	a3, a1, -2
	addi	a3, a3, -4
	seqz	a3, a3
	snez	a2, a2
	and	a2, a3, a2
	lui	a3, %hi(Display_Progressive_Flag)
	li	a4, -1
	sw	a2, %lo(Display_Progressive_Flag)(a3)
	bne	a1, a4, .LBB0_35
# %bb.34:
	li	a1, 9
	sw	a1, %lo(Output_Type)(a0)
	lui	a0, %hi(Output_Picture_Filename)
	lui	a1, %hi(.L.str.13)
	addi	a1, a1, %lo(.L.str.13)
	sd	a1, %lo(Output_Picture_Filename)(a0)
.LBB0_35:
	lui	s1, %hi(base)
	lui	s0, %hi(Main_Bitstream_Filename)
	ld	a0, %lo(Main_Bitstream_Filename)(s0)
	addi	a1, s1, %lo(base)
	lui	a2, %hi(ld)
	sd	a1, %lo(ld)(a2)
	li	a1, 0
	call	open
	sw	a0, %lo(base)(s1)
	bltz	a0, .LBB0_162
# %bb.36:
	beqz	a0, .LBB0_44
# %bb.37:
	call	Initialize_Buffer
	li	a0, 8
	call	Show_Bits
	li	a1, 71
	beq	a0, a1, .LBB0_164
# %bb.38:
	call	next_start_code
	li	a0, 32
	call	Show_Bits
	li	a1, 435
	beq	a0, a1, .LBB0_42
# %bb.39:
	li	a1, 480
	beq	a0, a1, .LBB0_41
# %bb.40:
	li	a1, 442
	bne	a0, a1, .LBB0_167
.LBB0_41:
	lui	a0, %hi(System_Stream_Flag)
	li	a1, 1
	sw	a1, %lo(System_Stream_Flag)(a0)
.LBB0_42:
	lui	s0, %hi(base)
	lw	a0, %lo(base)(s0)
	li	a1, 0
	li	a2, 0
	call	lseek
	call	Initialize_Buffer
	lw	a0, %lo(base)(s0)
	beqz	a0, .LBB0_44
# %bb.43:
	li	a1, 0
	li	a2, 0
	call	lseek
.LBB0_44:
	call	Initialize_Buffer
	lui	a0, %hi(Two_Streams)
	lw	a0, %lo(Two_Streams)(a0)
	lui	s5, %hi(base)
	addi	s5, s5, %lo(base)
	beqz	a0, .LBB0_47
# %bb.45:
	lui	s2, %hi(enhan)
	lui	s1, %hi(Enhancement_Layer_Bitstream_Filename)
	ld	a0, %lo(Enhancement_Layer_Bitstream_Filename)(s1)
	addi	a1, s2, %lo(enhan)
	lui	s0, %hi(ld)
	sd	a1, %lo(ld)(s0)
	li	a1, 0
	call	open
	sw	a0, %lo(enhan)(s2)
	bltz	a0, .LBB0_165
# %bb.46:
	call	Initialize_Buffer
	sd	s5, %lo(ld)(s0)
.LBB0_47:
	li	a0, 1024
	call	malloc
	lui	a1, %hi(Clip)
	sd	a0, %lo(Clip)(a1)
	beqz	a0, .LBB0_163
# %bb.48:
	addi	a0, a0, 384
	sd	a0, %lo(Clip)(a1)
	li	a0, -384
	li	a2, 640
	li	a3, -384
	j	.LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_50 Depth=1
	ld	a5, %lo(Clip)(a1)
	sgtz	a6, a4
	negw	a6, a6
	and	a4, a6, a4
	add	a5, a5, a3
	sb	a4, 0(a5)
	addi	a3, a3, 1
	addiw	a0, a0, 1
	beq	a3, a2, .LBB0_52
.LBB0_50:                               # =>This Inner Loop Header: Depth=1
	li	a5, 255
	mv	a4, a0
	blt	a0, a5, .LBB0_49
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=1
	li	a4, 255
	j	.LBB0_49
.LBB0_52:
	lui	a0, %hi(Reference_IDCT_Flag)
	lw	a0, %lo(Reference_IDCT_Flag)(a0)
	beqz	a0, .LBB0_54
# %bb.53:
	call	Initialize_Reference_IDCT
	j	.LBB0_55
.LBB0_54:
	call	Initialize_Fast_IDCT
.LBB0_55:
	li	s0, 0
	lui	s6, %hi(ld)
	lui	s7, %hi(Two_Streams)
	lui	s9, %hi(enhan)
	addi	s9, s9, %lo(enhan)
	addi	a0, s9, 2047
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	addi	s11, s5, 2047
	li	s4, 3
	lui	s8, %hi(Second_Field)
.LBB0_56:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_128 Depth 2
	sd	s5, %lo(ld)(s6)
	call	Get_Hdr
	lw	a1, %lo(Two_Streams)(s7)
	mv	s2, a0
	beqz	a1, .LBB0_60
# %bb.57:                               #   in Loop: Header=BB0_56 Depth=1
	sd	s9, %lo(ld)(s6)
	call	Get_Hdr
	beq	a0, s2, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_56 Depth=1
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	beqz	a0, .LBB0_144
.LBB0_59:                               #   in Loop: Header=BB0_56 Depth=1
	sd	s5, %lo(ld)(s6)
.LBB0_60:                               #   in Loop: Header=BB0_56 Depth=1
	li	a0, 1
	bne	s2, a0, .LBB0_145
# %bb.61:                               #   in Loop: Header=BB0_56 Depth=1
	lw	a0, %lo(Two_Streams)(s7)
	lw	s3, 1101(s11)
	beqz	a0, .LBB0_64
# %bb.62:                               #   in Loop: Header=BB0_56 Depth=1
	ld	a0, 0(sp)                       # 8-byte Folded Reload
	lw	a0, 1101(a0)
	beq	a0, s4, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_56 Depth=1
	li	a0, 1
	bne	s3, a0, .LBB0_155
.LBB0_64:                               #   in Loop: Header=BB0_56 Depth=1
	lw	a0, 1097(s11)
	beqz	a0, .LBB0_67
# %bb.65:                               #   in Loop: Header=BB0_56 Depth=1
	lui	a0, %hi(horizontal_size)
	lw	a0, %lo(horizontal_size)(a0)
	lui	a1, %hi(progressive_sequence)
	lw	a1, %lo(progressive_sequence)(a1)
	addi	a0, a0, 15
	sraiw	a2, a0, 31
	srliw	a2, a2, 28
	add	a0, a0, a2
	sraiw	a0, a0, 4
	lui	a2, %hi(mb_width)
	sw	a0, %lo(mb_width)(a2)
	bnez	a1, .LBB0_68
# %bb.66:                               #   in Loop: Header=BB0_56 Depth=1
	lui	a1, %hi(vertical_size)
	lw	a1, %lo(vertical_size)(a1)
	addi	a1, a1, 31
	sraiw	a2, a1, 31
	srliw	a2, a2, 27
	add	a1, a1, a2
	sraiw	a2, a1, 5
	slli	a2, a2, 1
	j	.LBB0_69
.LBB0_67:                               #   in Loop: Header=BB0_56 Depth=1
	li	a1, 1
	lui	a0, %hi(progressive_sequence)
	sw	a1, %lo(progressive_sequence)(a0)
	lui	a0, %hi(progressive_frame)
	sw	a1, %lo(progressive_frame)(a0)
	lui	a0, %hi(picture_structure)
	sw	s4, %lo(picture_structure)(a0)
	lui	a0, %hi(horizontal_size)
	lw	a0, %lo(horizontal_size)(a0)
	lui	a2, %hi(frame_pred_frame_dct)
	sw	a1, %lo(frame_pred_frame_dct)(a2)
	lui	a2, %hi(chroma_format)
	sw	a1, %lo(chroma_format)(a2)
	lui	a1, %hi(matrix_coefficients)
	li	a2, 5
	sw	a2, %lo(matrix_coefficients)(a1)
	addi	a0, a0, 15
	sraiw	a1, a0, 31
	srliw	a1, a1, 28
	add	a0, a0, a1
	sraiw	a0, a0, 4
	lui	a1, %hi(mb_width)
	sw	a0, %lo(mb_width)(a1)
.LBB0_68:                               #   in Loop: Header=BB0_56 Depth=1
	lui	a1, %hi(vertical_size)
	lw	a1, %lo(vertical_size)(a1)
	addi	a1, a1, 15
	sraiw	a2, a1, 31
	srliw	a2, a2, 28
	add	a1, a1, a2
	sraiw	a2, a1, 4
.LBB0_69:                               #   in Loop: Header=BB0_56 Depth=1
	mv	s9, s11
	lui	a1, %hi(mb_height)
	sw	a2, %lo(mb_height)(a1)
	lui	a1, %hi(chroma_format)
	lw	a4, %lo(chroma_format)(a1)
	slli	a1, a0, 4
	lui	a3, %hi(Coded_Picture_Width)
	sw	a1, %lo(Coded_Picture_Width)(a3)
	slli	a2, a2, 4
	lui	a3, %hi(Coded_Picture_Height)
	sw	a2, %lo(Coded_Picture_Height)(a3)
	mv	a3, a1
	beq	a4, s4, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_56 Depth=1
	slli	a3, a0, 3
.LBB0_71:                               #   in Loop: Header=BB0_56 Depth=1
	addi	a0, a4, -1
	seqz	a0, a0
	lui	a5, %hi(Chroma_Width)
	sw	a3, %lo(Chroma_Width)(a5)
	sraw	a0, a2, a0
	lui	a5, %hi(Chroma_Height)
	sw	a0, %lo(Chroma_Height)(a5)
	slli	a4, a4, 2
	lui	a5, %hi(Initialize_Sequence.Table_6_20)
	addi	a5, a5, %lo(Initialize_Sequence.Table_6_20)
	add	a4, a4, a5
	lw	a4, -4(a4)
	lui	a5, %hi(Ersatz_Flag)
	lw	s10, %lo(Ersatz_Flag)(a5)
	lui	a5, %hi(lower_layer_prediction_horizontal_size)
	lw	s1, %lo(lower_layer_prediction_horizontal_size)(a5)
	lui	a5, %hi(lower_layer_prediction_vertical_size)
	lw	s11, %lo(lower_layer_prediction_vertical_size)(a5)
	lui	a5, %hi(block_count)
	sw	a4, %lo(block_count)(a5)
	mulw	s4, a2, a1
	mulw	s2, a0, a3
	mv	a0, s4
	call	malloc
	lui	a1, %hi(backward_reference_frame)
	sd	a0, %lo(backward_reference_frame)(a1)
	li	a1, 2
	bne	s3, a1, .LBB0_89
# %bb.72:                               #   in Loop: Header=BB0_56 Depth=1
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
	mulw	s3, s11, s1
	lui	s1, %hi(forward_reference_frame)
	beqz	s10, .LBB0_102
# %bb.73:                               #   in Loop: Header=BB0_56 Depth=1
	lui	s10, %hi(auxframe)
	mv	s11, s9
	lui	s9, %hi(enhan)
	addi	s9, s9, %lo(enhan)
	beqz	a0, .LBB0_148
# %bb.74:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s4
	call	malloc
	sd	a0, %lo(forward_reference_frame)(s1)
	beqz	a0, .LBB0_149
# %bb.75:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s4
	call	malloc
	sd	a0, %lo(auxframe)(s10)
	beqz	a0, .LBB0_150
# %bb.76:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s4
	call	malloc
	lui	a1, %hi(substitute_frame)
	sd	a0, %lo(substitute_frame)(a1)
	beqz	a0, .LBB0_151
# %bb.77:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s3
	call	malloc
	lui	a1, %hi(llframe0)
	sd	a0, %lo(llframe0)(a1)
	beqz	a0, .LBB0_152
# %bb.78:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s3
	call	malloc
	lui	a1, %hi(llframe1)
	sd	a0, %lo(llframe1)(a1)
	beqz	a0, .LBB0_153
# %bb.79:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(backward_reference_frame)
	addi	a1, a1, %lo(backward_reference_frame)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_148
# %bb.80:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(forward_reference_frame)
	addi	a1, a1, %lo(forward_reference_frame)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_149
# %bb.81:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(auxframe)
	addi	a1, a1, %lo(auxframe)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_150
# %bb.82:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(substitute_frame)
	addi	a1, a1, %lo(substitute_frame)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_151
# %bb.83:                               #   in Loop: Header=BB0_56 Depth=1
	slli	a0, s3, 1
	srli	a0, a0, 62
	add	a0, s3, a0
	sraiw	s3, a0, 2
	mv	a0, s3
	call	malloc
	lui	a1, %hi(llframe0)
	addi	a1, a1, %lo(llframe0)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_152
# %bb.84:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s3
	call	malloc
	lui	a1, %hi(llframe1)
	addi	a1, a1, %lo(llframe1)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_153
# %bb.85:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(backward_reference_frame)
	addi	a1, a1, %lo(backward_reference_frame)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_148
# %bb.86:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(forward_reference_frame)
	addi	a1, a1, %lo(forward_reference_frame)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_149
# %bb.87:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(auxframe)
	addi	a1, a1, %lo(auxframe)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_150
# %bb.88:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(substitute_frame)
	addi	a1, a1, %lo(substitute_frame)
	sd	a0, 16(a1)
	bnez	a0, .LBB0_115
	j	.LBB0_151
.LBB0_89:                               #   in Loop: Header=BB0_56 Depth=1
	lui	s1, %hi(forward_reference_frame)
	beqz	s10, .LBB0_118
# %bb.90:                               #   in Loop: Header=BB0_56 Depth=1
	lui	s10, %hi(auxframe)
	mv	s11, s9
	lui	s9, %hi(enhan)
	addi	s9, s9, %lo(enhan)
	beqz	a0, .LBB0_148
# %bb.91:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s4
	call	malloc
	sd	a0, %lo(forward_reference_frame)(s1)
	beqz	a0, .LBB0_149
# %bb.92:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s4
	call	malloc
	sd	a0, %lo(auxframe)(s10)
	beqz	a0, .LBB0_150
# %bb.93:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s4
	call	malloc
	lui	a1, %hi(substitute_frame)
	sd	a0, %lo(substitute_frame)(a1)
	beqz	a0, .LBB0_151
# %bb.94:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(backward_reference_frame)
	addi	a1, a1, %lo(backward_reference_frame)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_148
# %bb.95:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(forward_reference_frame)
	addi	a1, a1, %lo(forward_reference_frame)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_149
# %bb.96:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(auxframe)
	addi	a1, a1, %lo(auxframe)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_150
# %bb.97:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(substitute_frame)
	addi	a1, a1, %lo(substitute_frame)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_151
# %bb.98:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(backward_reference_frame)
	addi	a1, a1, %lo(backward_reference_frame)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_148
# %bb.99:                               #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(forward_reference_frame)
	addi	a1, a1, %lo(forward_reference_frame)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_149
# %bb.100:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(auxframe)
	addi	a1, a1, %lo(auxframe)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_150
# %bb.101:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(substitute_frame)
	addi	a1, a1, %lo(substitute_frame)
	sd	a0, 16(a1)
	bnez	a0, .LBB0_127
	j	.LBB0_151
.LBB0_102:                              #   in Loop: Header=BB0_56 Depth=1
	lui	s10, %hi(auxframe)
	mv	s11, s9
	lui	s9, %hi(enhan)
	addi	s9, s9, %lo(enhan)
	beqz	a0, .LBB0_148
# %bb.103:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s4
	call	malloc
	sd	a0, %lo(forward_reference_frame)(s1)
	beqz	a0, .LBB0_149
# %bb.104:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s4
	call	malloc
	sd	a0, %lo(auxframe)(s10)
	beqz	a0, .LBB0_150
# %bb.105:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s3
	call	malloc
	lui	a1, %hi(llframe0)
	sd	a0, %lo(llframe0)(a1)
	beqz	a0, .LBB0_152
# %bb.106:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s3
	call	malloc
	lui	a1, %hi(llframe1)
	sd	a0, %lo(llframe1)(a1)
	beqz	a0, .LBB0_153
# %bb.107:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(backward_reference_frame)
	addi	a1, a1, %lo(backward_reference_frame)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_148
# %bb.108:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(forward_reference_frame)
	addi	a1, a1, %lo(forward_reference_frame)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_149
# %bb.109:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(auxframe)
	addi	a1, a1, %lo(auxframe)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_150
# %bb.110:                              #   in Loop: Header=BB0_56 Depth=1
	slli	a0, s3, 1
	srli	a0, a0, 62
	add	a0, s3, a0
	sraiw	s3, a0, 2
	mv	a0, s3
	call	malloc
	lui	a1, %hi(llframe0)
	addi	a1, a1, %lo(llframe0)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_152
# %bb.111:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s3
	call	malloc
	lui	a1, %hi(llframe1)
	addi	a1, a1, %lo(llframe1)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_153
# %bb.112:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(backward_reference_frame)
	addi	a1, a1, %lo(backward_reference_frame)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_148
# %bb.113:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(forward_reference_frame)
	addi	a1, a1, %lo(forward_reference_frame)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_149
# %bb.114:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(auxframe)
	addi	a1, a1, %lo(auxframe)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_150
.LBB0_115:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s3
	call	malloc
	lui	a1, %hi(llframe0)
	addi	a1, a1, %lo(llframe0)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_152
# %bb.116:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s3
	call	malloc
	lui	a1, %hi(llframe1)
	addi	a1, a1, %lo(llframe1)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_153
# %bb.117:                              #   in Loop: Header=BB0_56 Depth=1
	lui	a0, %hi(vertical_subsampling_factor_n)
	lw	a0, %lo(vertical_subsampling_factor_n)(a0)
	lui	a1, %hi(vertical_subsampling_factor_m)
	lw	a1, %lo(vertical_subsampling_factor_m)(a1)
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	mul	a0, a0, a2
	divw	a0, a0, a1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	mulw	a0, a0, a1
	slli	a0, a0, 1
	call	malloc
	lui	a1, %hi(lltmp)
	sd	a0, %lo(lltmp)(a1)
	bnez	a0, .LBB0_127
	j	.LBB0_156
.LBB0_118:                              #   in Loop: Header=BB0_56 Depth=1
	lui	s10, %hi(auxframe)
	mv	s11, s9
	lui	s9, %hi(enhan)
	addi	s9, s9, %lo(enhan)
	beqz	a0, .LBB0_148
# %bb.119:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s4
	call	malloc
	sd	a0, %lo(forward_reference_frame)(s1)
	beqz	a0, .LBB0_149
# %bb.120:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s4
	call	malloc
	sd	a0, %lo(auxframe)(s10)
	beqz	a0, .LBB0_150
# %bb.121:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(backward_reference_frame)
	addi	a1, a1, %lo(backward_reference_frame)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_148
# %bb.122:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(forward_reference_frame)
	addi	a1, a1, %lo(forward_reference_frame)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_149
# %bb.123:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(auxframe)
	addi	a1, a1, %lo(auxframe)
	sd	a0, 8(a1)
	beqz	a0, .LBB0_150
# %bb.124:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(backward_reference_frame)
	addi	a1, a1, %lo(backward_reference_frame)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_148
# %bb.125:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(forward_reference_frame)
	addi	a1, a1, %lo(forward_reference_frame)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_149
# %bb.126:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(auxframe)
	addi	a1, a1, %lo(auxframe)
	sd	a0, 16(a1)
	beqz	a0, .LBB0_150
.LBB0_127:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s0
	li	a1, 0
	call	Decode_Picture
	lw	a0, %lo(Second_Field)(s8)
	seqz	s2, a0
	addw	s0, s0, s2
	li	s4, 3
.LBB0_128:                              #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sd	s5, %lo(ld)(s6)
	call	Get_Hdr
	lw	a1, %lo(Two_Streams)(s7)
	mv	s3, a0
	beqz	a1, .LBB0_132
# %bb.129:                              #   in Loop: Header=BB0_128 Depth=2
	sd	s9, %lo(ld)(s6)
	call	Get_Hdr
	beq	a0, s3, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_128 Depth=2
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	beqz	a0, .LBB0_134
.LBB0_131:                              #   in Loop: Header=BB0_128 Depth=2
	sd	s5, %lo(ld)(s6)
.LBB0_132:                              #   in Loop: Header=BB0_128 Depth=2
	beqz	s3, .LBB0_135
# %bb.133:                              #   in Loop: Header=BB0_128 Depth=2
	mv	a0, s0
	mv	a1, s2
	call	Decode_Picture
	lw	a0, %lo(Second_Field)(s8)
	seqz	a0, a0
	addw	s2, s2, a0
	addw	s0, s0, a0
	j	.LBB0_128
.LBB0_134:                              #   in Loop: Header=BB0_128 Depth=2
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	li	a1, 20
	li	a2, 1
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
	call	fwrite
	j	.LBB0_131
.LBB0_135:                              #   in Loop: Header=BB0_56 Depth=1
	beqz	s2, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_56 Depth=1
	mv	a0, s0
	call	Output_Last_Frame_of_Sequence
.LBB0_137:                              #   in Loop: Header=BB0_56 Depth=1
	lui	a0, %hi(backward_reference_frame)
	ld	a0, %lo(backward_reference_frame)(a0)
	sw	zero, 1097(s11)
	call	free
	ld	a0, %lo(forward_reference_frame)(s1)
	call	free
	ld	a0, %lo(auxframe)(s10)
	call	free
	lw	a0, 1101(s11)
	li	s1, 2
	bne	a0, s1, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_56 Depth=1
	lui	a0, %hi(llframe0)
	ld	a0, %lo(llframe0)(a0)
	call	free
	lui	a0, %hi(llframe1)
	ld	a0, %lo(llframe1)(a0)
	call	free
.LBB0_139:                              #   in Loop: Header=BB0_56 Depth=1
	lui	a0, %hi(backward_reference_frame)
	addi	a0, a0, %lo(backward_reference_frame)
	ld	a0, 8(a0)
	call	free
	lui	a0, %hi(forward_reference_frame)
	addi	a0, a0, %lo(forward_reference_frame)
	ld	a0, 8(a0)
	call	free
	lui	a0, %hi(auxframe)
	addi	a0, a0, %lo(auxframe)
	ld	a0, 8(a0)
	call	free
	lw	a0, 1101(s11)
	bne	a0, s1, .LBB0_141
# %bb.140:                              #   in Loop: Header=BB0_56 Depth=1
	lui	a0, %hi(llframe0)
	addi	a0, a0, %lo(llframe0)
	ld	a0, 8(a0)
	call	free
	lui	a0, %hi(llframe1)
	addi	a0, a0, %lo(llframe1)
	ld	a0, 8(a0)
	call	free
.LBB0_141:                              #   in Loop: Header=BB0_56 Depth=1
	lui	a0, %hi(backward_reference_frame)
	addi	a0, a0, %lo(backward_reference_frame)
	ld	a0, 16(a0)
	call	free
	lui	a0, %hi(forward_reference_frame)
	addi	a0, a0, %lo(forward_reference_frame)
	ld	a0, 16(a0)
	call	free
	lui	a0, %hi(auxframe)
	addi	a0, a0, %lo(auxframe)
	ld	a0, 16(a0)
	call	free
	lw	a0, 1101(s11)
	bne	a0, s1, .LBB0_56
# %bb.142:                              #   in Loop: Header=BB0_56 Depth=1
	lui	a0, %hi(llframe0)
	addi	a0, a0, %lo(llframe0)
	ld	a0, 16(a0)
	call	free
	lui	a0, %hi(llframe1)
	addi	a0, a0, %lo(llframe1)
	ld	a0, 16(a0)
	call	free
	lw	a0, 1101(s11)
	bne	a0, s1, .LBB0_56
# %bb.143:                              #   in Loop: Header=BB0_56 Depth=1
	lui	a0, %hi(lltmp)
	ld	a0, %lo(lltmp)(a0)
	call	free
	j	.LBB0_56
.LBB0_144:                              #   in Loop: Header=BB0_56 Depth=1
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	li	a1, 20
	li	a2, 1
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
	call	fwrite
	j	.LBB0_59
.LBB0_145:
	lui	a0, %hi(base)
	lw	a0, %lo(base)(a0)
	call	close
	lui	a0, %hi(Two_Streams)
	lw	a0, %lo(Two_Streams)(a0)
	beqz	a0, .LBB0_147
# %bb.146:
	lui	a0, %hi(enhan)
	lw	a0, %lo(enhan)(a0)
	call	close
.LBB0_147:
	li	a0, 0
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
.LBB0_148:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.22)
	addi	a0, a0, %lo(.L.str.22)
	li	a1, 41
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.LBB0_149:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.23)
	addi	a0, a0, %lo(.L.str.23)
	li	a1, 40
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.LBB0_150:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.24)
	addi	a0, a0, %lo(.L.str.24)
	li	a1, 25
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.LBB0_151:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.25)
	addi	a0, a0, %lo(.L.str.25)
	li	a1, 33
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.LBB0_152:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	j	.LBB0_154
.LBB0_153:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.27)
	addi	a0, a0, %lo(.L.str.27)
.LBB0_154:
	li	a1, 23
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.LBB0_155:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	li	a1, 29
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.LBB0_156:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.28)
	addi	a0, a0, %lo(.L.str.28)
	li	a1, 20
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.LBB0_157:
	lui	a0, %hi(.Lstr.30)
	addi	a0, a0, %lo(.Lstr.30)
	call	puts
	li	a0, -1
	call	exit
.LBB0_158:
	lui	a0, %hi(.Lstr.34)
	addi	a0, a0, %lo(.Lstr.34)
	call	puts
	li	a0, -1
	call	exit
.LBB0_159:
	lui	a0, %hi(.Lstr.36)
	addi	a0, a0, %lo(.Lstr.36)
	call	puts
	li	a0, -1
	call	exit
.LBB0_160:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.18)
	addi	a1, a1, %lo(.L.str.18)
	call	fprintf
	li	a0, -1
	call	exit
.LBB0_161:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	lui	a1, %hi(Version)
	addi	a1, a1, %lo(Version)
	lui	a2, %hi(Author)
	addi	a2, a2, %lo(Author)
	call	printf
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	call	printf
	li	a0, 0
	call	exit
.LBB0_162:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	ld	a2, %lo(Main_Bitstream_Filename)(s0)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	call	fprintf
	li	a0, 1
	call	exit
.LBB0_163:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	li	a1, 21
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.LBB0_164:
	lui	s0, %hi(Error_Text)
	addi	s0, s0, %lo(Error_Text)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	li	a2, 52
	j	.LBB0_168
.LBB0_165:
	ld	a2, %lo(Enhancement_Layer_Bitstream_Filename)(s1)
	lui	s0, %hi(Error_Text)
	addi	s0, s0, %lo(Error_Text)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	mv	a0, s0
	call	sprintf
	j	.LBB0_169
.LBB0_166:
	lui	a0, %hi(.Lstr.33)
	addi	a0, a0, %lo(.Lstr.33)
	call	puts
	li	a0, -1
	call	exit
.LBB0_167:
	lui	s0, %hi(Error_Text)
	addi	s0, s0, %lo(Error_Text)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	li	a2, 33
.LBB0_168:
	mv	a0, s0
	call	memcpy
.LBB0_169:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	mv	a1, s0
	call	fprintf
	li	a0, 1
	call	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_11
	.word	.LBB0_19
	.word	.LBB0_160
	.word	.LBB0_21
	.word	.LBB0_25
	.word	.LBB0_18
	.word	.LBB0_160
	.word	.LBB0_20
	.word	.LBB0_160
	.word	.LBB0_160
	.word	.LBB0_26
	.word	.LBB0_160
	.word	.LBB0_160
	.word	.LBB0_23
	.word	.LBB0_160
	.word	.LBB0_15
	.word	.LBB0_13
	.word	.LBB0_160
	.word	.LBB0_14
	.word	.LBB0_2
	.word	.LBB0_3
	.word	.LBB0_160
	.word	.LBB0_16
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	Error                           # -- Begin function Error
	.p2align	2
	.type	Error,@function
Error:                                  # @Error
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(stderr)
	ld	a1, %lo(stderr)(a1)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	call	fprintf
	li	a0, 1
	call	exit
.Lfunc_end1:
	.size	Error, .Lfunc_end1-Error
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Print_Bits                      # -- Begin function Print_Bits
	.p2align	2
	.type	Print_Bits,@function
Print_Bits:                             # @Print_Bits
# %bb.0:
	blez	a2, .LBB2_4
# %bb.1:                                # %.preheader
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	addi	s2, a1, -1
	subw	s3, s2, a2
	lui	s1, %hi(.L.str.4)
	addi	s1, s1, %lo(.L.str.4)
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	srlw	a1, s0, s2
	andi	a1, a1, 1
	mv	a0, s1
	call	printf
	addiw	s2, s2, -1
	bne	s2, s3, .LBB2_2
# %bb.3:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
.LBB2_4:
	ret
.Lfunc_end2:
	.size	Print_Bits, .Lfunc_end2-Print_Bits
                                        # -- End function
	.option	pop
	.type	Version,@object                 # @Version
	.data
	.globl	Version
Version:
	.asciz	"mpeg2decode V1.2a, 96/07/19"
	.size	Version, 28

	.type	Author,@object                  # @Author
	.globl	Author
Author:
	.asciz	"(C) 1996, MPEG Software Simulation Group"
	.size	Author, 41

	.type	scan,@object                    # @scan
	.globl	scan
scan:
	.ascii	"\000\001\b\020\t\002\003\n\021\030 \031\022\013\004\005\f\023\032!(0)\"\033\024\r\006\007\016\025\034#*1892+$\035\026\017\027\036%,3:;4-&\037'.5<=6/7>?"
	.ascii	"\000\b\020\030\001\t\002\n\021\031 (0891)!\032\022\003\013\004\f\023\033\"*2:#+3;\024\034\005\r\006\016\025\035$,4<%-5=\026\036\007\017\027\037&.6>'/7?"
	.size	scan, 128

	.type	default_intra_quantizer_matrix,@object # @default_intra_quantizer_matrix
	.globl	default_intra_quantizer_matrix
default_intra_quantizer_matrix:
	.ascii	"\b\020\023\026\032\033\035\"\020\020\026\030\033\035\"%\023\026\032\033\035\"\"&\026\026\032\033\035\"%(\026\032\033\035 #(0\032\033\035 #(0:\032\033\035\"&.8E\033\035#&.8ES"
	.size	default_intra_quantizer_matrix, 64

	.type	Non_Linear_quantizer_scale,@object # @Non_Linear_quantizer_scale
	.globl	Non_Linear_quantizer_scale
Non_Linear_quantizer_scale:
	.ascii	"\000\001\002\003\004\005\006\007\b\n\f\016\020\022\024\026\030\034 $(,048@HPX`hp"
	.size	Non_Linear_quantizer_scale, 32

	.type	Inverse_Table_6_9,@object       # @Inverse_Table_6_9
	.globl	Inverse_Table_6_9
	.p2align	2, 0x0
Inverse_Table_6_9:
	.word	117504                          # 0x1cb00
	.word	138453                          # 0x21cd5
	.word	13954                           # 0x3682
	.word	34903                           # 0x8857
	.word	117504                          # 0x1cb00
	.word	138453                          # 0x21cd5
	.word	13954                           # 0x3682
	.word	34903                           # 0x8857
	.word	104597                          # 0x19895
	.word	132201                          # 0x20469
	.word	25675                           # 0x644b
	.word	53279                           # 0xd01f
	.word	104597                          # 0x19895
	.word	132201                          # 0x20469
	.word	25675                           # 0x644b
	.word	53279                           # 0xd01f
	.word	104448                          # 0x19800
	.word	132798                          # 0x206be
	.word	24759                           # 0x60b7
	.word	53109                           # 0xcf75
	.word	104597                          # 0x19895
	.word	132201                          # 0x20469
	.word	25675                           # 0x644b
	.word	53279                           # 0xd01f
	.word	104597                          # 0x19895
	.word	132201                          # 0x20469
	.word	25675                           # 0x644b
	.word	53279                           # 0xd01f
	.word	117579                          # 0x1cb4b
	.word	136230                          # 0x21426
	.word	16907                           # 0x420b
	.word	35559                           # 0x8ae7
	.size	Inverse_Table_6_9, 128

	.type	base,@object                    # @base
	.bss
	.globl	base
	.p2align	3, 0x0
base:
	.zero	4712
	.size	base, 4712

	.type	ld,@object                      # @ld
	.section	.sbss,"aw",@nobits
	.globl	ld
	.p2align	3, 0x0
ld:
	.quad	0
	.size	ld, 8

	.type	Main_Bitstream_Filename,@object # @Main_Bitstream_Filename
	.globl	Main_Bitstream_Filename
	.p2align	3, 0x0
Main_Bitstream_Filename:
	.quad	0
	.size	Main_Bitstream_Filename, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Base layer input file %s not found\n"
	.size	.L.str, 36

	.type	Error_Text,@object              # @Error_Text
	.bss
	.globl	Error_Text
Error_Text:
	.zero	256
	.size	Error_Text, 256

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Decoder currently does not parse transport streams\n"
	.size	.L.str.1, 52

	.type	System_Stream_Flag,@object      # @System_Stream_Flag
	.section	.sbss,"aw",@nobits
	.globl	System_Stream_Flag
	.p2align	2, 0x0
System_Stream_Flag:
	.word	0                               # 0x0
	.size	System_Stream_Flag, 4

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Unable to recognize stream type\n"
	.size	.L.str.2, 33

	.type	Two_Streams,@object             # @Two_Streams
	.section	.sbss,"aw",@nobits
	.globl	Two_Streams
	.p2align	2, 0x0
Two_Streams:
	.word	0                               # 0x0
	.size	Two_Streams, 4

	.type	enhan,@object                   # @enhan
	.bss
	.globl	enhan
	.p2align	3, 0x0
enhan:
	.zero	4712
	.size	enhan, 4712

	.type	Enhancement_Layer_Bitstream_Filename,@object # @Enhancement_Layer_Bitstream_Filename
	.section	.sbss,"aw",@nobits
	.globl	Enhancement_Layer_Bitstream_Filename
	.p2align	3, 0x0
Enhancement_Layer_Bitstream_Filename:
	.quad	0
	.size	Enhancement_Layer_Bitstream_Filename, 8

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"enhancment layer bitstream file %s not found\n"
	.size	.L.str.3, 46

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%d"
	.size	.L.str.4, 3

	.type	Output_Type,@object             # @Output_Type
	.section	.sbss,"aw",@nobits
	.globl	Output_Type
	.p2align	2, 0x0
Output_Type:
	.word	0                               # 0x0
	.size	Output_Type, 4

	.type	hiQdither,@object               # @hiQdither
	.globl	hiQdither
	.p2align	2, 0x0
hiQdither:
	.word	0                               # 0x0
	.size	hiQdither, 4

	.type	Quiet_Flag,@object              # @Quiet_Flag
	.globl	Quiet_Flag
	.p2align	2, 0x0
Quiet_Flag:
	.word	0                               # 0x0
	.size	Quiet_Flag, 4

	.type	Trace_Flag,@object              # @Trace_Flag
	.globl	Trace_Flag
	.p2align	2, 0x0
Trace_Flag:
	.word	0                               # 0x0
	.size	Trace_Flag, 4

	.type	Fault_Flag,@object              # @Fault_Flag
	.globl	Fault_Flag
	.p2align	2, 0x0
Fault_Flag:
	.word	0                               # 0x0
	.size	Fault_Flag, 4

	.type	Verbose_Flag,@object            # @Verbose_Flag
	.globl	Verbose_Flag
	.p2align	2, 0x0
Verbose_Flag:
	.word	0                               # 0x0
	.size	Verbose_Flag, 4

	.type	Spatial_Flag,@object            # @Spatial_Flag
	.globl	Spatial_Flag
	.p2align	2, 0x0
Spatial_Flag:
	.word	0                               # 0x0
	.size	Spatial_Flag, 4

	.type	Reference_IDCT_Flag,@object     # @Reference_IDCT_Flag
	.globl	Reference_IDCT_Flag
	.p2align	2, 0x0
Reference_IDCT_Flag:
	.word	0                               # 0x0
	.size	Reference_IDCT_Flag, 4

	.type	Frame_Store_Flag,@object        # @Frame_Store_Flag
	.globl	Frame_Store_Flag
	.p2align	2, 0x0
Frame_Store_Flag:
	.word	0                               # 0x0
	.size	Frame_Store_Flag, 4

	.type	Display_Progressive_Flag,@object # @Display_Progressive_Flag
	.globl	Display_Progressive_Flag
	.p2align	2, 0x0
Display_Progressive_Flag:
	.word	0                               # 0x0
	.size	Display_Progressive_Flag, 4

	.type	Ersatz_Flag,@object             # @Ersatz_Flag
	.globl	Ersatz_Flag
	.p2align	2, 0x0
Ersatz_Flag:
	.word	0                               # 0x0
	.size	Ersatz_Flag, 4

	.type	Big_Picture_Flag,@object        # @Big_Picture_Flag
	.globl	Big_Picture_Flag
	.p2align	2, 0x0
Big_Picture_Flag:
	.word	0                               # 0x0
	.size	Big_Picture_Flag, 4

	.type	Verify_Flag,@object             # @Verify_Flag
	.globl	Verify_Flag
	.p2align	2, 0x0
Verify_Flag:
	.word	0                               # 0x0
	.size	Verify_Flag, 4

	.type	Stats_Flag,@object              # @Stats_Flag
	.globl	Stats_Flag
	.p2align	2, 0x0
Stats_Flag:
	.word	0                               # 0x0
	.size	Stats_Flag, 4

	.type	User_Data_Flag,@object          # @User_Data_Flag
	.globl	User_Data_Flag
	.p2align	2, 0x0
User_Data_Flag:
	.word	0                               # 0x0
	.size	User_Data_Flag, 4

	.type	Main_Bitstream_Flag,@object     # @Main_Bitstream_Flag
	.globl	Main_Bitstream_Flag
	.p2align	2, 0x0
Main_Bitstream_Flag:
	.word	0                               # 0x0
	.size	Main_Bitstream_Flag, 4

	.type	Output_Picture_Filename,@object # @Output_Picture_Filename
	.globl	Output_Picture_Filename
	.p2align	3, 0x0
Output_Picture_Filename:
	.quad	0
	.size	Output_Picture_Filename, 8

	.type	Substitute_Picture_Filename,@object # @Substitute_Picture_Filename
	.globl	Substitute_Picture_Filename
	.p2align	3, 0x0
Substitute_Picture_Filename:
	.quad	0
	.size	Substitute_Picture_Filename, 8

	.type	Clip,@object                    # @Clip
	.globl	Clip
	.p2align	3, 0x0
Clip:
	.quad	0
	.size	Clip, 8

	.type	backward_reference_frame,@object # @backward_reference_frame
	.bss
	.globl	backward_reference_frame
	.p2align	3, 0x0
backward_reference_frame:
	.zero	24
	.size	backward_reference_frame, 24

	.type	forward_reference_frame,@object # @forward_reference_frame
	.globl	forward_reference_frame
	.p2align	3, 0x0
forward_reference_frame:
	.zero	24
	.size	forward_reference_frame, 24

	.type	auxframe,@object                # @auxframe
	.globl	auxframe
	.p2align	3, 0x0
auxframe:
	.zero	24
	.size	auxframe, 24

	.type	current_frame,@object           # @current_frame
	.globl	current_frame
	.p2align	3, 0x0
current_frame:
	.zero	24
	.size	current_frame, 24

	.type	substitute_frame,@object        # @substitute_frame
	.globl	substitute_frame
	.p2align	3, 0x0
substitute_frame:
	.zero	24
	.size	substitute_frame, 24

	.type	llframe0,@object                # @llframe0
	.globl	llframe0
	.p2align	3, 0x0
llframe0:
	.zero	24
	.size	llframe0, 24

	.type	llframe1,@object                # @llframe1
	.globl	llframe1
	.p2align	3, 0x0
llframe1:
	.zero	24
	.size	llframe1, 24

	.type	lltmp,@object                   # @lltmp
	.section	.sbss,"aw",@nobits
	.globl	lltmp
	.p2align	3, 0x0
lltmp:
	.quad	0
	.size	lltmp, 8

	.type	Lower_Layer_Picture_Filename,@object # @Lower_Layer_Picture_Filename
	.globl	Lower_Layer_Picture_Filename
	.p2align	3, 0x0
Lower_Layer_Picture_Filename:
	.quad	0
	.size	Lower_Layer_Picture_Filename, 8

	.type	Coded_Picture_Width,@object     # @Coded_Picture_Width
	.globl	Coded_Picture_Width
	.p2align	2, 0x0
Coded_Picture_Width:
	.word	0                               # 0x0
	.size	Coded_Picture_Width, 4

	.type	Coded_Picture_Height,@object    # @Coded_Picture_Height
	.globl	Coded_Picture_Height
	.p2align	2, 0x0
Coded_Picture_Height:
	.word	0                               # 0x0
	.size	Coded_Picture_Height, 4

	.type	Chroma_Width,@object            # @Chroma_Width
	.globl	Chroma_Width
	.p2align	2, 0x0
Chroma_Width:
	.word	0                               # 0x0
	.size	Chroma_Width, 4

	.type	Chroma_Height,@object           # @Chroma_Height
	.globl	Chroma_Height
	.p2align	2, 0x0
Chroma_Height:
	.word	0                               # 0x0
	.size	Chroma_Height, 4

	.type	block_count,@object             # @block_count
	.globl	block_count
	.p2align	2, 0x0
block_count:
	.word	0                               # 0x0
	.size	block_count, 4

	.type	Second_Field,@object            # @Second_Field
	.globl	Second_Field
	.p2align	2, 0x0
Second_Field:
	.word	0                               # 0x0
	.size	Second_Field, 4

	.type	profile,@object                 # @profile
	.globl	profile
	.p2align	2, 0x0
profile:
	.word	0                               # 0x0
	.size	profile, 4

	.type	level,@object                   # @level
	.globl	level
	.p2align	2, 0x0
level:
	.word	0                               # 0x0
	.size	level, 4

	.type	horizontal_size,@object         # @horizontal_size
	.globl	horizontal_size
	.p2align	2, 0x0
horizontal_size:
	.word	0                               # 0x0
	.size	horizontal_size, 4

	.type	vertical_size,@object           # @vertical_size
	.globl	vertical_size
	.p2align	2, 0x0
vertical_size:
	.word	0                               # 0x0
	.size	vertical_size, 4

	.type	mb_width,@object                # @mb_width
	.globl	mb_width
	.p2align	2, 0x0
mb_width:
	.word	0                               # 0x0
	.size	mb_width, 4

	.type	mb_height,@object               # @mb_height
	.globl	mb_height
	.p2align	2, 0x0
mb_height:
	.word	0                               # 0x0
	.size	mb_height, 4

	.type	bit_rate,@object                # @bit_rate
	.globl	bit_rate
	.p2align	3, 0x0
bit_rate:
	.quad	0x0000000000000000              # double 0
	.size	bit_rate, 8

	.type	frame_rate,@object              # @frame_rate
	.globl	frame_rate
	.p2align	3, 0x0
frame_rate:
	.quad	0x0000000000000000              # double 0
	.size	frame_rate, 8

	.type	aspect_ratio_information,@object # @aspect_ratio_information
	.globl	aspect_ratio_information
	.p2align	2, 0x0
aspect_ratio_information:
	.word	0                               # 0x0
	.size	aspect_ratio_information, 4

	.type	frame_rate_code,@object         # @frame_rate_code
	.globl	frame_rate_code
	.p2align	2, 0x0
frame_rate_code:
	.word	0                               # 0x0
	.size	frame_rate_code, 4

	.type	bit_rate_value,@object          # @bit_rate_value
	.globl	bit_rate_value
	.p2align	2, 0x0
bit_rate_value:
	.word	0                               # 0x0
	.size	bit_rate_value, 4

	.type	vbv_buffer_size,@object         # @vbv_buffer_size
	.globl	vbv_buffer_size
	.p2align	2, 0x0
vbv_buffer_size:
	.word	0                               # 0x0
	.size	vbv_buffer_size, 4

	.type	constrained_parameters_flag,@object # @constrained_parameters_flag
	.globl	constrained_parameters_flag
	.p2align	2, 0x0
constrained_parameters_flag:
	.word	0                               # 0x0
	.size	constrained_parameters_flag, 4

	.type	profile_and_level_indication,@object # @profile_and_level_indication
	.globl	profile_and_level_indication
	.p2align	2, 0x0
profile_and_level_indication:
	.word	0                               # 0x0
	.size	profile_and_level_indication, 4

	.type	progressive_sequence,@object    # @progressive_sequence
	.globl	progressive_sequence
	.p2align	2, 0x0
progressive_sequence:
	.word	0                               # 0x0
	.size	progressive_sequence, 4

	.type	chroma_format,@object           # @chroma_format
	.globl	chroma_format
	.p2align	2, 0x0
chroma_format:
	.word	0                               # 0x0
	.size	chroma_format, 4

	.type	low_delay,@object               # @low_delay
	.globl	low_delay
	.p2align	2, 0x0
low_delay:
	.word	0                               # 0x0
	.size	low_delay, 4

	.type	frame_rate_extension_n,@object  # @frame_rate_extension_n
	.globl	frame_rate_extension_n
	.p2align	2, 0x0
frame_rate_extension_n:
	.word	0                               # 0x0
	.size	frame_rate_extension_n, 4

	.type	frame_rate_extension_d,@object  # @frame_rate_extension_d
	.globl	frame_rate_extension_d
	.p2align	2, 0x0
frame_rate_extension_d:
	.word	0                               # 0x0
	.size	frame_rate_extension_d, 4

	.type	video_format,@object            # @video_format
	.globl	video_format
	.p2align	2, 0x0
video_format:
	.word	0                               # 0x0
	.size	video_format, 4

	.type	color_description,@object       # @color_description
	.globl	color_description
	.p2align	2, 0x0
color_description:
	.word	0                               # 0x0
	.size	color_description, 4

	.type	color_primaries,@object         # @color_primaries
	.globl	color_primaries
	.p2align	2, 0x0
color_primaries:
	.word	0                               # 0x0
	.size	color_primaries, 4

	.type	transfer_characteristics,@object # @transfer_characteristics
	.globl	transfer_characteristics
	.p2align	2, 0x0
transfer_characteristics:
	.word	0                               # 0x0
	.size	transfer_characteristics, 4

	.type	matrix_coefficients,@object     # @matrix_coefficients
	.globl	matrix_coefficients
	.p2align	2, 0x0
matrix_coefficients:
	.word	0                               # 0x0
	.size	matrix_coefficients, 4

	.type	display_horizontal_size,@object # @display_horizontal_size
	.globl	display_horizontal_size
	.p2align	2, 0x0
display_horizontal_size:
	.word	0                               # 0x0
	.size	display_horizontal_size, 4

	.type	display_vertical_size,@object   # @display_vertical_size
	.globl	display_vertical_size
	.p2align	2, 0x0
display_vertical_size:
	.word	0                               # 0x0
	.size	display_vertical_size, 4

	.type	temporal_reference,@object      # @temporal_reference
	.globl	temporal_reference
	.p2align	2, 0x0
temporal_reference:
	.word	0                               # 0x0
	.size	temporal_reference, 4

	.type	picture_coding_type,@object     # @picture_coding_type
	.globl	picture_coding_type
	.p2align	2, 0x0
picture_coding_type:
	.word	0                               # 0x0
	.size	picture_coding_type, 4

	.type	vbv_delay,@object               # @vbv_delay
	.globl	vbv_delay
	.p2align	2, 0x0
vbv_delay:
	.word	0                               # 0x0
	.size	vbv_delay, 4

	.type	full_pel_forward_vector,@object # @full_pel_forward_vector
	.globl	full_pel_forward_vector
	.p2align	2, 0x0
full_pel_forward_vector:
	.word	0                               # 0x0
	.size	full_pel_forward_vector, 4

	.type	forward_f_code,@object          # @forward_f_code
	.globl	forward_f_code
	.p2align	2, 0x0
forward_f_code:
	.word	0                               # 0x0
	.size	forward_f_code, 4

	.type	full_pel_backward_vector,@object # @full_pel_backward_vector
	.globl	full_pel_backward_vector
	.p2align	2, 0x0
full_pel_backward_vector:
	.word	0                               # 0x0
	.size	full_pel_backward_vector, 4

	.type	backward_f_code,@object         # @backward_f_code
	.globl	backward_f_code
	.p2align	2, 0x0
backward_f_code:
	.word	0                               # 0x0
	.size	backward_f_code, 4

	.type	f_code,@object                  # @f_code
	.bss
	.globl	f_code
	.p2align	2, 0x0
f_code:
	.zero	16
	.size	f_code, 16

	.type	intra_dc_precision,@object      # @intra_dc_precision
	.section	.sbss,"aw",@nobits
	.globl	intra_dc_precision
	.p2align	2, 0x0
intra_dc_precision:
	.word	0                               # 0x0
	.size	intra_dc_precision, 4

	.type	picture_structure,@object       # @picture_structure
	.globl	picture_structure
	.p2align	2, 0x0
picture_structure:
	.word	0                               # 0x0
	.size	picture_structure, 4

	.type	top_field_first,@object         # @top_field_first
	.globl	top_field_first
	.p2align	2, 0x0
top_field_first:
	.word	0                               # 0x0
	.size	top_field_first, 4

	.type	frame_pred_frame_dct,@object    # @frame_pred_frame_dct
	.globl	frame_pred_frame_dct
	.p2align	2, 0x0
frame_pred_frame_dct:
	.word	0                               # 0x0
	.size	frame_pred_frame_dct, 4

	.type	concealment_motion_vectors,@object # @concealment_motion_vectors
	.globl	concealment_motion_vectors
	.p2align	2, 0x0
concealment_motion_vectors:
	.word	0                               # 0x0
	.size	concealment_motion_vectors, 4

	.type	intra_vlc_format,@object        # @intra_vlc_format
	.globl	intra_vlc_format
	.p2align	2, 0x0
intra_vlc_format:
	.word	0                               # 0x0
	.size	intra_vlc_format, 4

	.type	repeat_first_field,@object      # @repeat_first_field
	.globl	repeat_first_field
	.p2align	2, 0x0
repeat_first_field:
	.word	0                               # 0x0
	.size	repeat_first_field, 4

	.type	chroma_420_type,@object         # @chroma_420_type
	.globl	chroma_420_type
	.p2align	2, 0x0
chroma_420_type:
	.word	0                               # 0x0
	.size	chroma_420_type, 4

	.type	progressive_frame,@object       # @progressive_frame
	.globl	progressive_frame
	.p2align	2, 0x0
progressive_frame:
	.word	0                               # 0x0
	.size	progressive_frame, 4

	.type	composite_display_flag,@object  # @composite_display_flag
	.globl	composite_display_flag
	.p2align	2, 0x0
composite_display_flag:
	.word	0                               # 0x0
	.size	composite_display_flag, 4

	.type	v_axis,@object                  # @v_axis
	.globl	v_axis
	.p2align	2, 0x0
v_axis:
	.word	0                               # 0x0
	.size	v_axis, 4

	.type	field_sequence,@object          # @field_sequence
	.globl	field_sequence
	.p2align	2, 0x0
field_sequence:
	.word	0                               # 0x0
	.size	field_sequence, 4

	.type	sub_carrier,@object             # @sub_carrier
	.globl	sub_carrier
	.p2align	2, 0x0
sub_carrier:
	.word	0                               # 0x0
	.size	sub_carrier, 4

	.type	burst_amplitude,@object         # @burst_amplitude
	.globl	burst_amplitude
	.p2align	2, 0x0
burst_amplitude:
	.word	0                               # 0x0
	.size	burst_amplitude, 4

	.type	sub_carrier_phase,@object       # @sub_carrier_phase
	.globl	sub_carrier_phase
	.p2align	2, 0x0
sub_carrier_phase:
	.word	0                               # 0x0
	.size	sub_carrier_phase, 4

	.type	frame_center_horizontal_offset,@object # @frame_center_horizontal_offset
	.bss
	.globl	frame_center_horizontal_offset
	.p2align	2, 0x0
frame_center_horizontal_offset:
	.zero	12
	.size	frame_center_horizontal_offset, 12

	.type	frame_center_vertical_offset,@object # @frame_center_vertical_offset
	.globl	frame_center_vertical_offset
	.p2align	2, 0x0
frame_center_vertical_offset:
	.zero	12
	.size	frame_center_vertical_offset, 12

	.type	layer_id,@object                # @layer_id
	.section	.sbss,"aw",@nobits
	.globl	layer_id
	.p2align	2, 0x0
layer_id:
	.word	0                               # 0x0
	.size	layer_id, 4

	.type	lower_layer_prediction_horizontal_size,@object # @lower_layer_prediction_horizontal_size
	.globl	lower_layer_prediction_horizontal_size
	.p2align	2, 0x0
lower_layer_prediction_horizontal_size:
	.word	0                               # 0x0
	.size	lower_layer_prediction_horizontal_size, 4

	.type	lower_layer_prediction_vertical_size,@object # @lower_layer_prediction_vertical_size
	.globl	lower_layer_prediction_vertical_size
	.p2align	2, 0x0
lower_layer_prediction_vertical_size:
	.word	0                               # 0x0
	.size	lower_layer_prediction_vertical_size, 4

	.type	horizontal_subsampling_factor_m,@object # @horizontal_subsampling_factor_m
	.globl	horizontal_subsampling_factor_m
	.p2align	2, 0x0
horizontal_subsampling_factor_m:
	.word	0                               # 0x0
	.size	horizontal_subsampling_factor_m, 4

	.type	horizontal_subsampling_factor_n,@object # @horizontal_subsampling_factor_n
	.globl	horizontal_subsampling_factor_n
	.p2align	2, 0x0
horizontal_subsampling_factor_n:
	.word	0                               # 0x0
	.size	horizontal_subsampling_factor_n, 4

	.type	vertical_subsampling_factor_m,@object # @vertical_subsampling_factor_m
	.globl	vertical_subsampling_factor_m
	.p2align	2, 0x0
vertical_subsampling_factor_m:
	.word	0                               # 0x0
	.size	vertical_subsampling_factor_m, 4

	.type	vertical_subsampling_factor_n,@object # @vertical_subsampling_factor_n
	.globl	vertical_subsampling_factor_n
	.p2align	2, 0x0
vertical_subsampling_factor_n:
	.word	0                               # 0x0
	.size	vertical_subsampling_factor_n, 4

	.type	lower_layer_temporal_reference,@object # @lower_layer_temporal_reference
	.globl	lower_layer_temporal_reference
	.p2align	2, 0x0
lower_layer_temporal_reference:
	.word	0                               # 0x0
	.size	lower_layer_temporal_reference, 4

	.type	lower_layer_horizontal_offset,@object # @lower_layer_horizontal_offset
	.globl	lower_layer_horizontal_offset
	.p2align	2, 0x0
lower_layer_horizontal_offset:
	.word	0                               # 0x0
	.size	lower_layer_horizontal_offset, 4

	.type	lower_layer_vertical_offset,@object # @lower_layer_vertical_offset
	.globl	lower_layer_vertical_offset
	.p2align	2, 0x0
lower_layer_vertical_offset:
	.word	0                               # 0x0
	.size	lower_layer_vertical_offset, 4

	.type	spatial_temporal_weight_code_table_index,@object # @spatial_temporal_weight_code_table_index
	.globl	spatial_temporal_weight_code_table_index
	.p2align	2, 0x0
spatial_temporal_weight_code_table_index:
	.word	0                               # 0x0
	.size	spatial_temporal_weight_code_table_index, 4

	.type	lower_layer_progressive_frame,@object # @lower_layer_progressive_frame
	.globl	lower_layer_progressive_frame
	.p2align	2, 0x0
lower_layer_progressive_frame:
	.word	0                               # 0x0
	.size	lower_layer_progressive_frame, 4

	.type	lower_layer_deinterlaced_field_select,@object # @lower_layer_deinterlaced_field_select
	.globl	lower_layer_deinterlaced_field_select
	.p2align	2, 0x0
lower_layer_deinterlaced_field_select:
	.word	0                               # 0x0
	.size	lower_layer_deinterlaced_field_select, 4

	.type	copyright_flag,@object          # @copyright_flag
	.globl	copyright_flag
	.p2align	2, 0x0
copyright_flag:
	.word	0                               # 0x0
	.size	copyright_flag, 4

	.type	copyright_identifier,@object    # @copyright_identifier
	.globl	copyright_identifier
	.p2align	2, 0x0
copyright_identifier:
	.word	0                               # 0x0
	.size	copyright_identifier, 4

	.type	original_or_copy,@object        # @original_or_copy
	.globl	original_or_copy
	.p2align	2, 0x0
original_or_copy:
	.word	0                               # 0x0
	.size	original_or_copy, 4

	.type	copyright_number_1,@object      # @copyright_number_1
	.globl	copyright_number_1
	.p2align	2, 0x0
copyright_number_1:
	.word	0                               # 0x0
	.size	copyright_number_1, 4

	.type	copyright_number_2,@object      # @copyright_number_2
	.globl	copyright_number_2
	.p2align	2, 0x0
copyright_number_2:
	.word	0                               # 0x0
	.size	copyright_number_2, 4

	.type	copyright_number_3,@object      # @copyright_number_3
	.globl	copyright_number_3
	.p2align	2, 0x0
copyright_number_3:
	.word	0                               # 0x0
	.size	copyright_number_3, 4

	.type	drop_flag,@object               # @drop_flag
	.globl	drop_flag
	.p2align	2, 0x0
drop_flag:
	.word	0                               # 0x0
	.size	drop_flag, 4

	.type	hour,@object                    # @hour
	.globl	hour
	.p2align	2, 0x0
hour:
	.word	0                               # 0x0
	.size	hour, 4

	.type	minute,@object                  # @minute
	.globl	minute
	.p2align	2, 0x0
minute:
	.word	0                               # 0x0
	.size	minute, 4

	.type	sec,@object                     # @sec
	.globl	sec
	.p2align	2, 0x0
sec:
	.word	0                               # 0x0
	.size	sec, 4

	.type	frame,@object                   # @frame
	.globl	frame
	.p2align	2, 0x0
frame:
	.word	0                               # 0x0
	.size	frame, 4

	.type	closed_gop,@object              # @closed_gop
	.globl	closed_gop
	.p2align	2, 0x0
closed_gop:
	.word	0                               # 0x0
	.size	closed_gop, 4

	.type	broken_link,@object             # @broken_link
	.globl	broken_link
	.p2align	2, 0x0
broken_link:
	.word	0                               # 0x0
	.size	broken_link, 4

	.type	Decode_Layer,@object            # @Decode_Layer
	.globl	Decode_Layer
	.p2align	2, 0x0
Decode_Layer:
	.word	0                               # 0x0
	.size	Decode_Layer, 4

	.type	global_MBA,@object              # @global_MBA
	.globl	global_MBA
	.p2align	2, 0x0
global_MBA:
	.word	0                               # 0x0
	.size	global_MBA, 4

	.type	global_pic,@object              # @global_pic
	.globl	global_pic
	.p2align	2, 0x0
global_pic:
	.word	0                               # 0x0
	.size	global_pic, 4

	.type	True_Framenum,@object           # @True_Framenum
	.globl	True_Framenum
	.p2align	2, 0x0
True_Framenum:
	.word	0                               # 0x0
	.size	True_Framenum, 4

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Clip[] malloc failed\n"
	.size	.L.str.5, 22

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\n%s, %s\n"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Usage:  mpeg2decode {options}\nOptions: -b  file  main bitstream (base or spatial enhancement layer)\n         -cn file  conformance report (n: level)\n         -e  file  enhancement layer bitstream (SNR or Data Partitioning)\n         -f        store/display interlaced video in frame format\n         -g        concatenated file format for substitution method (-x)\n         -in file  information & statistics report  (n: level)\n         -l  file  file name pattern for lower layer sequence\n                   (for spatial scalability)\n         -on file  output format (0:YUV 1:SIF 2:TGA 3:PPM 4:X11 5:X11HiQ)\n         -q        disable warnings to stderr\n         -r        use double precision reference IDCT\n         -t        enable low level tracing to stdout\n         -u  file  print user_data to stdio or file\n         -vn       verbose output (n: level)\n         -x  file  filename pattern of picture substitution sequence\n\nFile patterns:  for sequential filenames, \"printf\" style, e.g. rec%%d\n                 or rec%%d%%c for fieldwise storage\nLevels:        0:none 1:sequence 2:picture 3:slice 4:macroblock 5:block\n\nExample:       mpeg2decode -b bitstream.mpg -f -r -o0 rec%%d\n         \n"
	.size	.L.str.7, 1195

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.zero	1
	.size	.L.str.13, 1

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"undefined option -%c ignored. Exiting program\n"
	.size	.L.str.18, 47

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"streams out of sync\n"
	.size	.L.str.20, 21

	.type	Initialize_Sequence.Table_6_20,@object # @Initialize_Sequence.Table_6_20
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
Initialize_Sequence.Table_6_20:
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	12                              # 0xc
	.size	Initialize_Sequence.Table_6_20, 12

	.type	.L.str.21,@object               # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"unsupported scalability mode\n"
	.size	.L.str.21, 30

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"backward_reference_frame[] malloc failed\n"
	.size	.L.str.22, 42

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"forward_reference_frame[] malloc failed\n"
	.size	.L.str.23, 41

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"auxframe[] malloc failed\n"
	.size	.L.str.24, 26

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"substitute_frame[] malloc failed\n"
	.size	.L.str.25, 34

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"llframe0 malloc failed\n"
	.size	.L.str.26, 24

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"llframe1 malloc failed\n"
	.size	.L.str.27, 24

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"lltmp malloc failed\n"
	.size	.L.str.28, 21

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	" "
	.size	.L.str.29, 2

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"There must be a main bitstream specified (-b filename)"
	.size	.Lstr, 55

	.type	.Lstr.30,@object                # @str.30
.Lstr.30:
	.asciz	"ERROR: -x must be followed by filename"
	.size	.Lstr.30, 39

	.type	.Lstr.31,@object                # @str.31
.Lstr.31:
	.asciz	"This program not compiled for -v option"
	.size	.Lstr.31, 40

	.type	.Lstr.32,@object                # @str.32
.Lstr.32:
	.asciz	"WARNING: This program not compiled for -t option"
	.size	.Lstr.32, 49

	.type	.Lstr.33,@object                # @str.33
.Lstr.33:
	.asciz	"ERROR: -o must be followed by filename"
	.size	.Lstr.33, 39

	.type	.Lstr.34,@object                # @str.34
.Lstr.34:
	.asciz	"ERROR: -l must be followed by filename"
	.size	.Lstr.34, 39

	.type	.Lstr.35,@object                # @str.35
.Lstr.35:
	.asciz	"WARNING: This program not compiled for -i option"
	.size	.Lstr.35, 49

	.type	.Lstr.36,@object                # @str.36
.Lstr.36:
	.asciz	"ERROR: -e must be followed by filename"
	.size	.Lstr.36, 39

	.type	.Lstr.37,@object                # @str.37
.Lstr.37:
	.asciz	"This program not compiled for Verify_Flag option"
	.size	.Lstr.37, 49

	.type	.Lstr.38,@object                # @str.38
.Lstr.38:
	.asciz	"ERROR: -b must be followed the main bitstream filename"
	.size	.Lstr.38, 55

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
