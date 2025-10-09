	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"getpic.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Decode_Picture                  # -- Begin function Decode_Picture
	.p2align	2
	.type	Decode_Picture,@function
Decode_Picture:                         # @Decode_Picture
# %bb.0:
	addi	sp, sp, -336
	sd	ra, 328(sp)                     # 8-byte Folded Spill
	sd	s0, 320(sp)                     # 8-byte Folded Spill
	sd	s1, 312(sp)                     # 8-byte Folded Spill
	sd	s2, 304(sp)                     # 8-byte Folded Spill
	sd	s3, 296(sp)                     # 8-byte Folded Spill
	sd	s4, 288(sp)                     # 8-byte Folded Spill
	sd	s5, 280(sp)                     # 8-byte Folded Spill
	sd	s6, 272(sp)                     # 8-byte Folded Spill
	sd	s7, 264(sp)                     # 8-byte Folded Spill
	sd	s8, 256(sp)                     # 8-byte Folded Spill
	sd	s9, 248(sp)                     # 8-byte Folded Spill
	sd	s10, 240(sp)                    # 8-byte Folded Spill
	sd	s11, 232(sp)                    # 8-byte Folded Spill
	lui	a2, %hi(picture_structure)
	lw	a3, %lo(picture_structure)(a2)
	lui	a2, %hi(Second_Field)
	lw	a2, %lo(Second_Field)(a2)
	li	s0, 3
	mv	s2, a1
	mv	s1, a0
	bne	a3, s0, .LBB0_3
# %bb.1:
	beqz	a2, .LBB0_3
# %bb.2:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	lui	a0, %hi(picture_structure)
	lw	a3, %lo(picture_structure)(a0)
	li	a2, 0
	lui	a0, %hi(Second_Field)
	sw	zero, %lo(Second_Field)(a0)
.LBB0_3:
	lui	a0, %hi(picture_coding_type)
	lw	a4, %lo(picture_coding_type)(a0)
	lui	a0, %hi(Coded_Picture_Width)
	lw	a1, %lo(Coded_Picture_Width)(a0)
	lui	a0, %hi(Chroma_Width)
	lw	a0, %lo(Chroma_Width)(a0)
	bne	a4, s0, .LBB0_6
# %bb.4:
	li	a4, 2
	bne	a3, a4, .LBB0_10
# %bb.5:
	lui	a3, %hi(auxframe)
	ld	a4, %lo(auxframe)(a3)
	addi	a3, a3, %lo(auxframe)
	j	.LBB0_9
.LBB0_6:
	li	a4, 2
	bne	a3, a4, .LBB0_11
# %bb.7:
	bnez	a2, .LBB0_8
	j	.LBB0_213
.LBB0_8:
	lui	a3, %hi(backward_reference_frame)
	ld	a4, %lo(backward_reference_frame)(a3)
	addi	a3, a3, %lo(backward_reference_frame)
.LBB0_9:
	add	a1, a4, a1
	lui	a4, %hi(current_frame)
	ld	a5, 8(a3)
	sd	a1, %lo(current_frame)(a4)
	ld	a1, 16(a3)
	addi	a3, a4, %lo(current_frame)
	add	a5, a5, a0
	sd	a5, 8(a3)
	add	a0, a1, a0
	sd	a0, 16(a3)
	j	.LBB0_14
.LBB0_10:
	lui	a0, %hi(auxframe)
	ld	a1, %lo(auxframe)(a0)
	lui	a3, %hi(current_frame)
	addi	a0, a0, %lo(auxframe)
	j	.LBB0_13
.LBB0_11:
	bnez	a2, .LBB0_12
	j	.LBB0_214
.LBB0_12:
	lui	a0, %hi(backward_reference_frame)
	ld	a1, %lo(backward_reference_frame)(a0)
	lui	a3, %hi(current_frame)
	addi	a0, a0, %lo(backward_reference_frame)
.LBB0_13:
	ld	a4, 16(a0)
	ld	a0, 8(a0)
	sd	a1, %lo(current_frame)(a3)
	addi	a1, a3, %lo(current_frame)
	sd	a4, 16(a1)
	sd	a0, 8(a1)
.LBB0_14:
	lui	a0, %hi(Ersatz_Flag)
	lw	a0, %lo(Ersatz_Flag)(a0)
	beqz	a0, .LBB0_16
# %bb.15:
	mv	a0, s1
	mv	a1, s2
	call	Substitute_Frame_Buffer
	lui	a0, %hi(Second_Field)
	lw	a2, %lo(Second_Field)(a0)
.LBB0_16:
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(base)
	addi	a0, a0, %lo(base)
	addi	s10, a0, 2047
	lw	a0, 1113(s10)
	beqz	a0, .LBB0_19
# %bb.17:
	bnez	a2, .LBB0_19
# %bb.18:
	call	Spatial_Prediction
.LBB0_19:
	lui	a0, %hi(mb_width)
	lw	s1, %lo(mb_width)(a0)
	lui	a0, %hi(mb_height)
	lw	s2, %lo(mb_height)(a0)
	lui	a0, %hi(picture_structure)
	lw	s3, %lo(picture_structure)(a0)
	lui	s0, %hi(ld)
	lui	a0, %hi(base)
	addi	a0, a0, %lo(base)
	sd	a0, %lo(ld)(s0)
	lui	a0, %hi(Fault_Flag)
	sw	zero, %lo(Fault_Flag)(a0)
	call	next_start_code
	li	a0, 32
	call	Show_Bits
	mv	s4, a0
	addiw	a0, a0, -432
	li	a1, -175
	bgeu	a0, a1, .LBB0_28
.LBB0_20:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB0_23
# %bb.21:
	lui	a0, %hi(.Lstr.13)
	addi	a0, a0, %lo(.Lstr.13)
.LBB0_22:
	call	puts
.LBB0_23:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB0_24
	j	.LBB0_208
.LBB0_24:
	lui	a0, %hi(picture_structure)
	lw	a1, %lo(picture_structure)(a0)
	li	a0, 3
	beq	a1, a0, .LBB0_26
# %bb.25:
	lui	a1, %hi(Second_Field)
	lw	a2, %lo(Second_Field)(a1)
	li	a1, 1
	bnez	a2, .LBB0_26
	j	.LBB0_211
.LBB0_26:
	lui	a1, %hi(picture_coding_type)
	lw	a1, %lo(picture_coding_type)(a1)
	beq	a1, a0, .LBB0_27
	j	.LBB0_209
.LBB0_27:
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	addiw	a1, a1, -1
	lui	a0, %hi(auxframe)
	addi	a0, a0, %lo(auxframe)
	call	Write_Frame
	lui	a0, %hi(picture_structure)
	lw	a0, %lo(picture_structure)(a0)
	li	a1, 3
	beq	a0, a1, .LBB0_217
	j	.LBB0_210
.LBB0_217:
	j	.LBB0_212
.LBB0_28:
	mul	a0, s2, s1
	addi	s3, s3, -3
	snez	a1, s3
	sraw	a0, a0, a1
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lui	a0, 1
	addiw	a1, a0, -792
	sd	a1, 120(sp)                     # 8-byte Folded Spill
	li	s5, 1
	li	s2, 3
	lui	a1, %hi(f_code)
	addi	a1, a1, %lo(f_code)
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	addiw	a0, a0, -920
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	lui	s3, %hi(Clip)
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	j	.LBB0_32
.LBB0_29:                               #   in Loop: Header=BB0_32 Depth=1
	mv	s8, a0
	call	Get_macroblock_address_increment
	lui	a1, %hi(Fault_Flag)
	lw	a1, %lo(Fault_Flag)(a1)
	beqz	a1, .LBB0_37
.LBB0_30:                               #   in Loop: Header=BB0_32 Depth=1
	lui	a0, %hi(.Lstr.11)
	addi	a0, a0, %lo(.Lstr.11)
	call	puts
.LBB0_31:                               #   in Loop: Header=BB0_32 Depth=1
	lui	a0, %hi(base)
	addi	a0, a0, %lo(base)
	sd	a0, %lo(ld)(s0)
	lui	a0, %hi(Fault_Flag)
	sw	zero, %lo(Fault_Flag)(a0)
	call	next_start_code
	li	a0, 32
	call	Show_Bits
	mv	s4, a0
	addiw	a0, a0, -432
	li	a1, -175
	bltu	a0, a1, .LBB0_20
.LBB0_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_102 Depth 3
                                        #       Child Loop BB0_155 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #         Child Loop BB0_177 Depth 4
                                        #         Child Loop BB0_182 Depth 4
                                        #         Child Loop BB0_205 Depth 4
                                        #         Child Loop BB0_204 Depth 4
	call	Flush_Buffer32
	call	slice_header
	lw	a1, 1101(s10)
	bne	a1, s5, .LBB0_29
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=1
	lui	a0, %hi(enhan)
	addi	a0, a0, %lo(enhan)
	sd	a0, %lo(ld)(s0)
	call	next_start_code
	li	a0, 32
	call	Show_Bits
	mv	s4, a0
	addiw	a0, a0, -432
	li	a1, -176
	bltu	a1, a0, .LBB0_34
	j	.LBB0_215
.LBB0_34:                               #   in Loop: Header=BB0_32 Depth=1
	call	Flush_Buffer32
	call	slice_header
	lw	a1, 1117(s10)
	mv	s8, a0
	beq	a1, s5, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_32 Depth=1
	lui	a0, %hi(base)
	addi	a0, a0, %lo(base)
	sd	a0, %lo(ld)(s0)
.LBB0_36:                               #   in Loop: Header=BB0_32 Depth=1
	call	Get_macroblock_address_increment
	lui	a1, %hi(Fault_Flag)
	lw	a1, %lo(Fault_Flag)(a1)
	bnez	a1, .LBB0_30
.LBB0_37:                               #   in Loop: Header=BB0_32 Depth=1
	slli	s8, s8, 7
	lui	a1, %hi(mb_width)
	lw	a1, %lo(mb_width)(a1)
	andi	a2, s4, 255
	add	a2, a2, s8
	addi	a2, a2, -1
	mul	a1, a1, a2
	add	a0, a0, a1
	addiw	s6, a0, -1
	sw	zero, 200(sp)
	sw	zero, 196(sp)
	sw	zero, 192(sp)
	sd	zero, 160(sp)
	sd	zero, 168(sp)
	sd	zero, 176(sp)
	sd	zero, 184(sp)
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	bge	s6, a0, .LBB0_23
# %bb.38:                               # %.preheader7
                                        #   in Loop: Header=BB0_32 Depth=1
	sd	zero, 96(sp)                    # 8-byte Folded Spill
	li	s7, 0
	li	a2, 1
	j	.LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(Two_Streams)
	lw	a0, %lo(Two_Streams)(a0)
	lw	a1, 1101(s8)
	ld	s6, 88(sp)                      # 8-byte Folded Reload
	addiw	s6, s6, 1
	ld	a2, 72(sp)                      # 8-byte Folded Reload
	addiw	a2, a2, -1
	snez	a0, a0
	addi	a1, a1, -3
	seqz	a1, a1
	and	a0, a0, a1
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	addw	a1, a1, a0
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	ld	s7, 104(sp)                     # 8-byte Folded Reload
	subw	s7, s7, a0
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	li	s5, 1
	bge	s6, a0, .LBB0_23
.LBB0_40:                               #   Parent Loop BB0_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_102 Depth 3
                                        #       Child Loop BB0_155 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #         Child Loop BB0_177 Depth 4
                                        #         Child Loop BB0_182 Depth 4
                                        #         Child Loop BB0_205 Depth 4
                                        #         Child Loop BB0_204 Depth 4
	lui	a0, %hi(base)
	addi	a0, a0, %lo(base)
	sd	a0, %lo(ld)(s0)
	beqz	a2, .LBB0_58
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=2
	sd	s6, 88(sp)                      # 8-byte Folded Spill
	sd	a2, 72(sp)                      # 8-byte Folded Spill
	sd	s7, 104(sp)                     # 8-byte Folded Spill
	bne	a2, s5, .LBB0_68
.LBB0_42:                               #   in Loop: Header=BB0_40 Depth=2
	lw	a0, 1101(s10)
	bne	a0, s5, .LBB0_46
# %bb.43:                               #   in Loop: Header=BB0_40 Depth=2
	lw	a1, 1117(s10)
	lui	a0, %hi(enhan)
	addi	a0, a0, %lo(enhan)
	blt	a1, s2, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(base)
	addi	a0, a0, %lo(base)
.LBB0_45:                               #   in Loop: Header=BB0_40 Depth=2
	sd	a0, %lo(ld)(s0)
.LBB0_46:                               #   in Loop: Header=BB0_40 Depth=2
	lui	s5, %hi(ld)
	li	s0, 1
	addi	a0, sp, 212
	addi	a1, sp, 132
	addi	a2, sp, 128
	addi	a3, sp, 208
	addi	a4, sp, 228
	addi	a5, sp, 224
	addi	a6, sp, 220
	addi	a7, sp, 216
	addi	t2, sp, 204
	call	macroblock_modes
	lui	a0, %hi(Fault_Flag)
	lw	a0, %lo(Fault_Flag)(a0)
	bnez	a0, .LBB0_207
# %bb.47:                               #   in Loop: Header=BB0_40 Depth=2
	lw	s1, 212(sp)
	andi	a0, s1, 16
	beqz	a0, .LBB0_52
# %bb.48:                               #   in Loop: Header=BB0_40 Depth=2
	li	a0, 5
	call	Get_Bits
	lui	a1, %hi(ld)
	ld	a1, %lo(ld)(a1)
	addi	a1, a1, 2047
	lw	a2, 1097(a1)
	beqz	a2, .LBB0_81
# %bb.49:                               #   in Loop: Header=BB0_40 Depth=2
	lw	a2, 1105(a1)
	li	a3, 1
	lui	s5, %hi(ld)
	beqz	a2, .LBB0_142
# %bb.50:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a2, %hi(Non_Linear_quantizer_scale)
	addi	a2, a2, %lo(Non_Linear_quantizer_scale)
	add	a0, a2, a0
	lbu	a0, 0(a0)
	sw	a0, 1121(a1)
	lw	a1, 1101(s10)
	li	s0, 1
	bne	a1, a3, .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_40 Depth=2
	sw	a0, 1121(s10)
.LBB0_52:                               #   in Loop: Header=BB0_40 Depth=2
	andi	a0, s1, 8
	andi	a1, s1, 1
	sd	a1, 112(sp)                     # 8-byte Folded Spill
	bnez	a0, .LBB0_55
# %bb.53:                               #   in Loop: Header=BB0_40 Depth=2
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB0_57
# %bb.54:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(concealment_motion_vectors)
	lw	a0, %lo(concealment_motion_vectors)(a0)
	beqz	a0, .LBB0_57
.LBB0_55:                               #   in Loop: Header=BB0_40 Depth=2
	ld	a0, %lo(ld)(s5)
	addi	a0, a0, 2047
	lw	a0, 1097(a0)
	beqz	a0, .LBB0_77
# %bb.56:                               #   in Loop: Header=BB0_40 Depth=2
	lw	a4, 228(sp)
	lw	a5, 224(sp)
	lui	a0, %hi(f_code)
	lw	a6, %lo(f_code)(a0)
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	lw	a7, 4(a0)
	lw	a3, 220(sp)
	lw	a0, 216(sp)
	addiw	a6, a6, -1
	addiw	a7, a7, -1
	sd	a0, 8(sp)
	addi	a0, sp, 160
	addi	a1, sp, 136
	addi	a2, sp, 144
	sd	a3, 0(sp)
	li	a3, 0
	call	motion_vectors
.LBB0_57:                               #   in Loop: Header=BB0_40 Depth=2
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(Fault_Flag)
	lw	a0, %lo(Fault_Flag)(a0)
	beqz	a0, .LBB0_78
	j	.LBB0_207
.LBB0_58:                               #   in Loop: Header=BB0_40 Depth=2
	lw	a0, 1101(s10)
	bne	a0, s5, .LBB0_61
# %bb.59:                               #   in Loop: Header=BB0_40 Depth=2
	lw	a0, 1117(s10)
	bne	a0, s5, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(enhan)
	addi	a0, a0, %lo(enhan)
	sd	a0, %lo(ld)(s0)
.LBB0_61:                               #   in Loop: Header=BB0_40 Depth=2
	li	a0, 23
	call	Show_Bits
	beqz	a0, .LBB0_31
# %bb.62:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(Fault_Flag)
	lw	a0, %lo(Fault_Flag)(a0)
	bnez	a0, .LBB0_31
# %bb.63:                               #   in Loop: Header=BB0_40 Depth=2
	lw	a0, 1101(s10)
	bne	a0, s5, .LBB0_66
# %bb.64:                               #   in Loop: Header=BB0_40 Depth=2
	lw	a0, 1117(s10)
	bne	a0, s5, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(enhan)
	addi	a0, a0, %lo(enhan)
	sd	a0, %lo(ld)(s0)
.LBB0_66:                               #   in Loop: Header=BB0_40 Depth=2
	call	Get_macroblock_address_increment
	lui	a1, %hi(Fault_Flag)
	lw	a1, %lo(Fault_Flag)(a1)
	bnez	a1, .LBB0_31
# %bb.67:                               #   in Loop: Header=BB0_40 Depth=2
	sd	s6, 88(sp)                      # 8-byte Folded Spill
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	sd	s7, 104(sp)                     # 8-byte Folded Spill
	beq	a0, s5, .LBB0_42
.LBB0_68:                               #   in Loop: Header=BB0_40 Depth=2
	lw	a0, 1101(s10)
	bne	a0, s5, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(base)
	addi	a0, a0, %lo(base)
	sd	a0, %lo(ld)(s0)
.LBB0_70:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(block_count)
	lw	a2, %lo(block_count)(a0)
	blez	a2, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_40 Depth=2
	ld	a0, %lo(ld)(s0)
	addi	a0, a0, 2047
	addi	a0, a0, 1129
	slli	a2, a2, 7
	li	a1, 0
	call	memset
.LBB0_72:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(picture_coding_type)
	lw	a0, %lo(picture_coding_type)(a0)
	sw	zero, 200(sp)
	sw	zero, 196(sp)
	sw	zero, 192(sp)
	li	a1, 2
	bne	a0, a1, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_40 Depth=2
	sd	zero, 176(sp)
	sd	zero, 160(sp)
.LBB0_74:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a1, %hi(picture_structure)
	lw	a2, %lo(picture_structure)(a1)
	li	a1, 2
	beq	a2, s2, .LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_40 Depth=2
	addi	a2, a2, -2
	seqz	a1, a2
	sw	a1, 148(sp)
	sw	a1, 144(sp)
	li	a1, 1
.LBB0_76:                               #   in Loop: Header=BB0_40 Depth=2
	sw	a1, 208(sp)
	addi	a0, a0, -1
	lw	a1, 212(sp)
	seqz	a0, a0
	slli	a0, a0, 3
	sw	a0, 132(sp)
	andi	s1, a1, -2
	sw	s1, 212(sp)
	j	.LBB0_123
.LBB0_77:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(forward_f_code)
	lw	a2, %lo(forward_f_code)(a0)
	lui	a0, %hi(full_pel_forward_vector)
	lw	a6, %lo(full_pel_forward_vector)(a0)
	addiw	a2, a2, -1
	addi	a0, sp, 160
	addi	a1, sp, 136
	mv	a3, a2
	li	a4, 0
	li	a5, 0
	call	motion_vector
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(Fault_Flag)
	lw	a0, %lo(Fault_Flag)(a0)
	bnez	a0, .LBB0_207
.LBB0_78:                               #   in Loop: Header=BB0_40 Depth=2
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	andi	a0, a0, 4
	beqz	a0, .LBB0_83
# %bb.79:                               #   in Loop: Header=BB0_40 Depth=2
	ld	a0, %lo(ld)(s5)
	addi	a0, a0, 2047
	lw	a0, 1097(a0)
	beqz	a0, .LBB0_82
# %bb.80:                               #   in Loop: Header=BB0_40 Depth=2
	lw	a4, 228(sp)
	lw	a5, 224(sp)
	lui	a0, %hi(f_code)
	addi	a0, a0, %lo(f_code)
	lw	a6, 8(a0)
	lw	a7, 12(a0)
	lw	a0, 216(sp)
	addiw	a6, a6, -1
	addiw	a7, a7, -1
	sd	a0, 8(sp)
	addi	a0, sp, 160
	addi	a1, sp, 136
	addi	a2, sp, 144
	li	a3, 1
	sd	zero, 0(sp)
	call	motion_vectors
	lui	a0, %hi(Fault_Flag)
	lw	a0, %lo(Fault_Flag)(a0)
	beqz	a0, .LBB0_83
	j	.LBB0_207
.LBB0_81:                               #   in Loop: Header=BB0_40 Depth=2
	lui	s5, %hi(ld)
	li	a3, 1
	sw	a0, 1121(a1)
	lw	a1, 1101(s10)
	li	s0, 1
	bne	a1, a3, .LBB0_52
	j	.LBB0_51
.LBB0_82:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(backward_f_code)
	lw	a2, %lo(backward_f_code)(a0)
	lui	a0, %hi(full_pel_backward_vector)
	lw	a6, %lo(full_pel_backward_vector)(a0)
	addiw	a2, a2, -1
	addi	a1, sp, 136
	addi	a0, sp, 168
	mv	a3, a2
	li	a4, 0
	li	a5, 0
	call	motion_vector
	lui	a0, %hi(Fault_Flag)
	lw	a0, %lo(Fault_Flag)(a0)
	bnez	a0, .LBB0_207
.LBB0_83:                               #   in Loop: Header=BB0_40 Depth=2
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB0_86
# %bb.84:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(concealment_motion_vectors)
	lw	a0, %lo(concealment_motion_vectors)(a0)
	beqz	a0, .LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_40 Depth=2
	li	a0, 1
	call	Flush_Buffer
.LBB0_86:                               #   in Loop: Header=BB0_40 Depth=2
	lw	a0, 1101(s10)
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	bne	a0, s0, .LBB0_89
# %bb.87:                               #   in Loop: Header=BB0_40 Depth=2
	lw	a0, 1117(s10)
	bne	a0, s2, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(enhan)
	addi	a0, a0, %lo(enhan)
	sd	a0, %lo(ld)(s5)
.LBB0_89:                               #   in Loop: Header=BB0_40 Depth=2
	andi	a0, a1, 2
	bnez	a0, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(block_count)
	lwu	a0, %lo(block_count)(a0)
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	seqz	a1, a1
	li	a2, -1
	sllw	a0, a2, a0
	not	a0, a0
	addi	a1, a1, -1
	and	s4, a1, a0
	j	.LBB0_96
.LBB0_91:                               #   in Loop: Header=BB0_40 Depth=2
	call	Get_coded_block_pattern
	lui	a1, %hi(chroma_format)
	lw	a1, %lo(chroma_format)(a1)
	mv	s4, a0
	beq	a1, s2, .LBB0_94
# %bb.92:                               #   in Loop: Header=BB0_40 Depth=2
	li	a0, 2
	bne	a1, a0, .LBB0_96
# %bb.93:                               #   in Loop: Header=BB0_40 Depth=2
	slli	s4, s4, 2
	li	a0, 2
	j	.LBB0_95
.LBB0_94:                               #   in Loop: Header=BB0_40 Depth=2
	slli	s4, s4, 6
	li	a0, 6
.LBB0_95:                               #   in Loop: Header=BB0_40 Depth=2
	call	Get_Bits
	or	s4, a0, s4
.LBB0_96:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(Fault_Flag)
	lw	a0, %lo(Fault_Flag)(a0)
	bnez	a0, .LBB0_207
# %bb.97:                               #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(block_count)
	lw	s8, %lo(block_count)(a0)
	blez	s8, .LBB0_112
# %bb.98:                               #   in Loop: Header=BB0_40 Depth=2
	li	s11, 0
	li	s1, 0
	li	s6, -1
	ld	s7, 48(sp)                      # 8-byte Folded Reload
	j	.LBB0_102
.LBB0_99:                               #   in Loop: Header=BB0_102 Depth=3
	mv	a0, s11
	call	Decode_MPEG1_Non_Intra_Block
.LBB0_100:                              #   in Loop: Header=BB0_102 Depth=3
	lui	a0, %hi(Fault_Flag)
	lw	a0, %lo(Fault_Flag)(a0)
	bnez	a0, .LBB0_207
.LBB0_101:                              #   in Loop: Header=BB0_102 Depth=3
	lui	a0, %hi(block_count)
	lw	s8, %lo(block_count)(a0)
	addi	s1, s1, 1
	addiw	s11, s11, 1
	addi	s6, s6, -1
	addi	s7, s7, 128
	bge	s1, s8, .LBB0_112
.LBB0_102:                              #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a0, 1101(s10)
	bne	a0, s0, .LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_102 Depth=3
	lui	s9, %hi(base)
	addi	s9, s9, %lo(base)
	sd	s9, %lo(ld)(s5)
	j	.LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_102 Depth=3
	ld	s9, %lo(ld)(s5)
.LBB0_105:                              #   in Loop: Header=BB0_102 Depth=3
	add	a0, s9, s7
	li	a2, 128
	li	a1, 0
	call	memset
	add	s8, s8, s6
	srlw	a0, s4, s8
	andi	a0, a0, 1
	beqz	a0, .LBB0_101
# %bb.106:                              #   in Loop: Header=BB0_102 Depth=3
	addi	a0, s9, 2047
	lw	a0, 1097(a0)
	ld	a1, 112(sp)                     # 8-byte Folded Reload
	bnez	a1, .LBB0_109
# %bb.107:                              #   in Loop: Header=BB0_102 Depth=3
	beqz	a0, .LBB0_99
# %bb.108:                              #   in Loop: Header=BB0_102 Depth=3
	mv	a0, s11
	call	Decode_MPEG2_Non_Intra_Block
	j	.LBB0_100
.LBB0_109:                              #   in Loop: Header=BB0_102 Depth=3
	addi	a1, sp, 192
	beqz	a0, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_102 Depth=3
	mv	a0, s11
	call	Decode_MPEG2_Intra_Block
	j	.LBB0_100
.LBB0_111:                              #   in Loop: Header=BB0_102 Depth=3
	mv	a0, s11
	call	Decode_MPEG1_Intra_Block
	j	.LBB0_100
.LBB0_112:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(picture_coding_type)
	lw	a0, %lo(picture_coding_type)(a0)
	li	a1, 4
	bne	a0, a1, .LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	marker_bit
.LBB0_114:                              #   in Loop: Header=BB0_40 Depth=2
	lui	s0, %hi(ld)
	ld	s6, 88(sp)                      # 8-byte Folded Reload
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	ld	a0, 112(sp)                     # 8-byte Folded Reload
	bnez	a0, .LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_40 Depth=2
	sw	zero, 200(sp)
	sw	zero, 196(sp)
	sw	zero, 192(sp)
	ld	s7, 104(sp)                     # 8-byte Folded Reload
	andi	a0, s1, 9
	li	s5, 1
	beqz	a0, .LBB0_118
	j	.LBB0_121
.LBB0_116:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(concealment_motion_vectors)
	lw	a0, %lo(concealment_motion_vectors)(a0)
	ld	s7, 104(sp)                     # 8-byte Folded Reload
	beqz	a0, .LBB0_138
# %bb.117:                              #   in Loop: Header=BB0_40 Depth=2
	andi	a0, s1, 9
	li	s5, 1
	bnez	a0, .LBB0_121
.LBB0_118:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(picture_coding_type)
	lw	a0, %lo(picture_coding_type)(a0)
	li	a1, 2
	bne	a0, a1, .LBB0_121
# %bb.119:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(picture_structure)
	lw	a0, %lo(picture_structure)(a0)
	sd	zero, 176(sp)
	sd	zero, 160(sp)
	bne	a0, s2, .LBB0_135
# %bb.120:                              #   in Loop: Header=BB0_40 Depth=2
	li	a0, 2
	sw	a0, 208(sp)
.LBB0_121:                              #   in Loop: Header=BB0_40 Depth=2
	lw	a0, 128(sp)
	li	a1, 4
	bne	a0, a1, .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_40 Depth=2
	sd	zero, 184(sp)
	sd	zero, 176(sp)
	sd	zero, 168(sp)
	sd	zero, 160(sp)
.LBB0_123:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(Two_Streams)
	lw	a0, %lo(Two_Streams)(a0)
	lui	a1, %hi(enhan)
	addi	a1, a1, %lo(enhan)
	addi	s8, a1, 2047
	beqz	a0, .LBB0_167
# %bb.124:                              #   in Loop: Header=BB0_40 Depth=2
	lw	a0, 1101(s8)
	bne	a0, s2, .LBB0_167
# %bb.125:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(enhan)
	addi	a0, a0, %lo(enhan)
	sd	a0, %lo(ld)(s0)
	beqz	s7, .LBB0_132
# %bb.126:                              #   in Loop: Header=BB0_40 Depth=2
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	bne	a0, s6, .LBB0_162
.LBB0_127:                              #   in Loop: Header=BB0_40 Depth=2
	bne	s7, s5, .LBB0_136
.LBB0_128:                              #   in Loop: Header=BB0_40 Depth=2
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	addi	a0, sp, 228
	addi	a1, sp, 220
	addi	a2, sp, 220
	addi	a3, sp, 220
	addi	a4, sp, 220
	addi	a5, sp, 220
	addi	a6, sp, 220
	addi	a7, sp, 220
	addi	t2, sp, 224
	call	macroblock_modes
	lwu	a0, 228(sp)
	andi	s1, a0, 2
	bnez	s1, .LBB0_145
# %bb.129:                              #   in Loop: Header=BB0_40 Depth=2
	andi	a0, a0, 16
	bnez	a0, .LBB0_146
.LBB0_130:                              #   in Loop: Header=BB0_40 Depth=2
	mv	s10, s6
	bnez	s1, .LBB0_148
.LBB0_131:                              #   in Loop: Header=BB0_40 Depth=2
	li	s4, 0
	j	.LBB0_152
.LBB0_132:                              #   in Loop: Header=BB0_40 Depth=2
	li	a0, 23
	call	Show_Bits
	beqz	a0, .LBB0_139
# %bb.133:                              #   in Loop: Header=BB0_40 Depth=2
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	ld	a1, 96(sp)                      # 8-byte Folded Reload
	bge	a1, a0, .LBB0_143
# %bb.134:                              #   in Loop: Header=BB0_40 Depth=2
	call	Get_macroblock_address_increment
	mv	s7, a0
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	beq	a0, s6, .LBB0_127
	j	.LBB0_162
.LBB0_135:                              #   in Loop: Header=BB0_40 Depth=2
	sw	s5, 208(sp)
	addi	a0, a0, -2
	seqz	a0, a0
	sw	a0, 144(sp)
	lw	a0, 128(sp)
	li	a1, 4
	beq	a0, a1, .LBB0_122
	j	.LBB0_123
.LBB0_136:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(block_count)
	lw	a2, %lo(block_count)(a0)
	blez	a2, .LBB0_160
# %bb.137:                              #   in Loop: Header=BB0_40 Depth=2
	ld	a0, %lo(ld)(s0)
	addi	a0, a0, 2047
	addi	a0, a0, 1129
	slli	a2, a2, 7
	li	a1, 0
	call	memset
	j	.LBB0_160
.LBB0_138:                              #   in Loop: Header=BB0_40 Depth=2
	sd	zero, 184(sp)
	sd	zero, 176(sp)
	sd	zero, 168(sp)
	sd	zero, 160(sp)
	andi	a0, s1, 9
	li	s5, 1
	beqz	a0, .LBB0_118
	j	.LBB0_121
.LBB0_139:                              #   in Loop: Header=BB0_40 Depth=2
	call	next_start_code
	li	a0, 32
	call	Show_Bits
	mv	s4, a0
	addiw	a0, a0, -432
	li	a1, -176
	bltu	a1, a0, .LBB0_161
# %bb.140:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB0_144
# %bb.141:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(.Lstr.14)
	addi	a0, a0, %lo(.Lstr.14)
	j	.LBB0_165
.LBB0_142:                              #   in Loop: Header=BB0_40 Depth=2
	slli	a0, a0, 1
	sw	a0, 1121(a1)
	lw	a1, 1101(s10)
	li	s0, 1
	beq	a1, a3, .LBB0_51
	j	.LBB0_52
.LBB0_143:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	beqz	a0, .LBB0_164
.LBB0_144:                              #   in Loop: Header=BB0_40 Depth=2
	li	s7, 0
	j	.LBB0_166
.LBB0_145:                              #   in Loop: Header=BB0_40 Depth=2
	lw	a1, 224(sp)
	sw	a1, 204(sp)
	andi	a0, a0, 16
	beqz	a0, .LBB0_130
.LBB0_146:                              #   in Loop: Header=BB0_40 Depth=2
	li	a0, 5
	call	Get_Bits
	ld	a1, %lo(ld)(s0)
	addi	a1, a1, 2047
	lw	a2, 1105(a1)
	beqz	a2, .LBB0_206
# %bb.147:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a2, %hi(Non_Linear_quantizer_scale)
	addi	a2, a2, %lo(Non_Linear_quantizer_scale)
	add	a0, a2, a0
	lbu	a0, 0(a0)
	sw	a0, 1121(a1)
	mv	s10, s6
	beqz	s1, .LBB0_131
.LBB0_148:                              #   in Loop: Header=BB0_40 Depth=2
	call	Get_coded_block_pattern
	lui	a1, %hi(chroma_format)
	lw	a1, %lo(chroma_format)(a1)
	mv	s4, a0
	li	a0, 2
	beq	a1, a0, .LBB0_151
# %bb.149:                              #   in Loop: Header=BB0_40 Depth=2
	bne	a1, s2, .LBB0_152
# %bb.150:                              #   in Loop: Header=BB0_40 Depth=2
	li	a1, 6
.LBB0_151:                              #   in Loop: Header=BB0_40 Depth=2
	sllw	s1, s4, a1
	mv	a0, a1
	call	Get_Bits
	or	s4, a0, s1
.LBB0_152:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(block_count)
	lw	s1, %lo(block_count)(a0)
	li	s7, 1
	blez	s1, .LBB0_158
# %bb.153:                              #   in Loop: Header=BB0_40 Depth=2
	ld	s5, %lo(ld)(s0)
	li	s11, 0
	li	s6, 0
	li	s7, -1
	lui	a0, 1
	addiw	s9, a0, -920
	j	.LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_155 Depth=3
	addi	s6, s6, 1
	addiw	s11, s11, 1
	addi	s7, s7, -1
	addi	s9, s9, 128
	bge	s6, s1, .LBB0_157
.LBB0_155:                              #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a0, s5, s9
	li	a2, 128
	li	a1, 0
	call	memset
	add	a0, s1, s7
	srlw	a0, s4, a0
	andi	a0, a0, 1
	beqz	a0, .LBB0_154
# %bb.156:                              #   in Loop: Header=BB0_155 Depth=3
	mv	a0, s11
	call	Decode_MPEG2_Non_Intra_Block
	ld	s5, %lo(ld)(s0)
	lui	a0, %hi(block_count)
	lw	s1, %lo(block_count)(a0)
	j	.LBB0_154
.LBB0_157:                              #   in Loop: Header=BB0_40 Depth=2
	li	s5, 1
	mv	s6, s10
	li	s7, 1
	j	.LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_40 Depth=2
	mv	s6, s10
.LBB0_159:                              #   in Loop: Header=BB0_40 Depth=2
	ld	s1, 80(sp)                      # 8-byte Folded Reload
.LBB0_160:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(base)
	addi	a0, a0, %lo(base)
	sd	a0, %lo(ld)(s0)
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	j	.LBB0_166
.LBB0_161:                              #   in Loop: Header=BB0_40 Depth=2
	call	Flush_Buffer32
	call	slice_header
	mv	s11, a0
	call	Get_macroblock_address_increment
	slli	s11, s11, 7
	lui	a1, %hi(mb_width)
	lw	a1, %lo(mb_width)(a1)
	andi	a2, s4, 255
	add	a2, a2, s11
	addi	a2, a2, -1
	mul	a1, a1, a2
	add	a0, a0, a1
	addiw	a0, a0, -1
	li	s7, 1
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	beq	a0, s6, .LBB0_128
.LBB0_162:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB0_166
# %bb.163:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(.Lstr.15)
	addi	a0, a0, %lo(.Lstr.15)
	call	puts
	j	.LBB0_166
.LBB0_164:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(.Lstr.16)
	addi	a0, a0, %lo(.Lstr.16)
.LBB0_165:                              #   in Loop: Header=BB0_40 Depth=2
	call	puts
	li	s7, 0
.LBB0_166:                              #   in Loop: Header=BB0_40 Depth=2
	sd	s7, 104(sp)                     # 8-byte Folded Spill
.LBB0_167:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(mb_width)
	lw	a0, %lo(mb_width)(a0)
	lw	s9, 204(sp)
	divw	a1, s6, a0
	mul	a0, a1, a0
	subw	a0, s6, a0
	slliw	s11, a0, 4
	andi	s10, s1, 1
	slliw	s4, a1, 4
	bnez	s10, .LBB0_170
# %bb.168:                              #   in Loop: Header=BB0_40 Depth=2
	lw	a7, 132(sp)
	lw	a3, 208(sp)
	addi	a4, sp, 160
	addi	a5, sp, 144
	addi	a6, sp, 136
	mv	a0, s11
	mv	a1, s4
	mv	a2, s1
	call	form_predictions
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	lw	a0, 1101(a0)
	beq	a0, s5, .LBB0_171
.LBB0_169:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(block_count)
	lw	a0, %lo(block_count)(a0)
	bgtz	a0, .LBB0_172
	j	.LBB0_39
.LBB0_170:                              #   in Loop: Header=BB0_40 Depth=2
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	lw	a0, 1101(a0)
	bne	a0, s5, .LBB0_169
.LBB0_171:                              #   in Loop: Header=BB0_40 Depth=2
	lui	a0, %hi(base)
	addi	a0, a0, %lo(base)
	sd	a0, %lo(ld)(s0)
	lui	a0, %hi(block_count)
	lw	a0, %lo(block_count)(a0)
	blez	a0, .LBB0_39
.LBB0_172:                              #   in Loop: Header=BB0_40 Depth=2
	li	s6, 0
	lui	a0, 1
	addiw	s5, a0, -920
	j	.LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_174 Depth=3
	lui	a0, %hi(block_count)
	lw	a0, %lo(block_count)(a0)
	addi	s6, s6, 1
	addi	s5, s5, 128
	bge	s6, a0, .LBB0_39
.LBB0_174:                              #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_177 Depth 4
                                        #         Child Loop BB0_182 Depth 4
                                        #         Child Loop BB0_205 Depth 4
                                        #         Child Loop BB0_204 Depth 4
	lui	a0, %hi(Two_Streams)
	lw	a0, %lo(Two_Streams)(a0)
	slli	s1, s6, 7
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	add	s7, s1, s7
	beqz	a0, .LBB0_179
# %bb.175:                              #   in Loop: Header=BB0_174 Depth=3
	lw	a0, 1101(s8)
	bne	a0, s2, .LBB0_179
# %bb.176:                              #   in Loop: Header=BB0_174 Depth=3
	lui	a1, %hi(base)
	addi	a1, a1, %lo(base)
	add	a0, a1, s7
	add	a1, a1, s1
	lui	a2, 1
	addiw	a2, a2, -920
	add	a1, a1, a2
	lui	a3, %hi(enhan)
	addi	a3, a3, %lo(enhan)
	add	a3, a3, s1
	add	a2, a3, a2
.LBB0_177:                              #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        #       Parent Loop BB0_174 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lh	a3, 0(a2)
	lh	a4, 0(a1)
	addi	a2, a2, 2
	addi	a5, a1, 2
	add	a3, a4, a3
	sh	a3, 0(a1)
	mv	a1, a5
	bne	a5, a0, .LBB0_177
# %bb.178:                              #   in Loop: Header=BB0_174 Depth=3
	ld	a0, %lo(ld)(s0)
	j	.LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_174 Depth=3
	ld	a0, %lo(ld)(s0)
	addi	a1, a0, 2047
	lw	a1, 1097(a1)
	beqz	a1, .LBB0_188
.LBB0_180:                              #   in Loop: Header=BB0_174 Depth=3
	li	a2, 0
	add	a1, a0, s1
	addi	a1, a1, 2047
	add	a3, a0, s5
	add	a4, a0, s7
	j	.LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_182 Depth=4
	slli	a6, a5, 48
	srli	a6, a6, 48
	sh	a5, 0(a3)
	addi	a3, a3, 2
	add	a2, a2, a6
	beq	a3, a4, .LBB0_186
.LBB0_182:                              #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        #       Parent Loop BB0_174 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lh	a5, 0(a3)
	li	a6, -2048
	blt	a6, a5, .LBB0_184
# %bb.183:                              #   in Loop: Header=BB0_182 Depth=4
	li	a5, -2048
.LBB0_184:                              #   in Loop: Header=BB0_182 Depth=4
	li	a6, 2047
	blt	a5, a6, .LBB0_181
# %bb.185:                              #   in Loop: Header=BB0_182 Depth=4
	li	a5, 2047
	j	.LBB0_181
.LBB0_186:                              #   in Loop: Header=BB0_174 Depth=3
	andi	a2, a2, 1
	bnez	a2, .LBB0_188
# %bb.187:                              #   in Loop: Header=BB0_174 Depth=3
	lh	a2, 1255(a1)
	xori	a2, a2, 1
	sh	a2, 1255(a1)
.LBB0_188:                              #   in Loop: Header=BB0_174 Depth=3
	lui	a1, %hi(Reference_IDCT_Flag)
	lw	a1, %lo(Reference_IDCT_Flag)(a1)
	add	a0, a0, s1
	addi	a0, a0, 2047
	addi	a0, a0, 1129
	beqz	a1, .LBB0_193
# %bb.189:                              #   in Loop: Header=BB0_174 Depth=3
	call	Reference_IDCT
	andi	a2, s6, 1
	bltu	s2, s6, .LBB0_194
.LBB0_190:                              #   in Loop: Header=BB0_174 Depth=3
	lui	a0, %hi(picture_structure)
	lw	a3, %lo(picture_structure)(a0)
	lui	a0, %hi(current_frame)
	ld	a1, %lo(current_frame)(a0)
	lui	a0, %hi(Coded_Picture_Width)
	lw	a0, %lo(Coded_Picture_Width)(a0)
	bne	a3, s2, .LBB0_198
# %bb.191:                              #   in Loop: Header=BB0_174 Depth=3
	slli	a2, a2, 3
	beqz	s9, .LBB0_201
# %bb.192:                              #   in Loop: Header=BB0_174 Depth=3
	srliw	a3, s6, 1
	or	a3, a3, s4
	mulw	a3, a0, a3
	add	a1, a1, s11
	add	a1, a1, a3
	add	a2, a1, a2
	slli	a0, a0, 1
	j	.LBB0_203
.LBB0_193:                              #   in Loop: Header=BB0_174 Depth=3
	call	Fast_IDCT
	andi	a2, s6, 1
	bgeu	s2, s6, .LBB0_190
.LBB0_194:                              #   in Loop: Header=BB0_174 Depth=3
	lui	a0, %hi(chroma_format)
	lw	a3, %lo(chroma_format)(a0)
	addi	a0, a2, 1
	addi	a1, a3, -3
	snez	a1, a1
	lui	a2, %hi(picture_structure)
	lw	a4, %lo(picture_structure)(a2)
	sraw	a1, s11, a1
	addi	a2, a3, -1
	seqz	a2, a2
	sraw	a2, s4, a2
	bne	a4, s2, .LBB0_199
# %bb.195:                              #   in Loop: Header=BB0_174 Depth=3
	slli	a0, a0, 3
	lui	a4, %hi(current_frame)
	addi	a4, a4, %lo(current_frame)
	add	a0, a4, a0
	ld	a5, 0(a0)
	lui	a0, %hi(Chroma_Width)
	lw	a0, %lo(Chroma_Width)(a0)
	andi	a4, s6, 8
	beqz	s9, .LBB0_200
# %bb.196:                              #   in Loop: Header=BB0_174 Depth=3
	li	a6, 1
	beq	a3, a6, .LBB0_200
# %bb.197:                              #   in Loop: Header=BB0_174 Depth=3
	slli	a2, s6, 62
	srli	a2, a2, 63
	or	a2, a2, s4
	mulw	a2, a0, a2
	add	a1, a2, a1
	add	a1, a5, a1
	add	a2, a1, a4
	slli	a0, a0, 1
	j	.LBB0_203
.LBB0_198:                              #   in Loop: Header=BB0_174 Depth=3
	slli	a0, a0, 1
	slli	a3, s6, 2
	andi	a3, a3, 8
	or	a3, a3, s4
	mulw	a3, a0, a3
	add	a1, a1, s11
	slli	a2, a2, 3
	add	a1, a1, a2
	add	a2, a1, a3
	j	.LBB0_203
.LBB0_199:                              #   in Loop: Header=BB0_174 Depth=3
	lui	a3, %hi(Chroma_Width)
	lw	a3, %lo(Chroma_Width)(a3)
	slli	a0, a0, 3
	lui	a4, %hi(current_frame)
	addi	a4, a4, %lo(current_frame)
	add	a0, a4, a0
	ld	a4, 0(a0)
	slli	a0, a3, 1
	slli	a3, s6, 2
	andi	a3, a3, 8
	add	a2, a2, a3
	mulw	a2, a0, a2
	add	a1, a4, a1
	add	a1, a1, a2
	andi	a2, s6, 8
	j	.LBB0_202
.LBB0_200:                              #   in Loop: Header=BB0_174 Depth=3
	slli	a3, s6, 2
	andi	a3, a3, 8
	add	a2, a2, a3
	mulw	a2, a0, a2
	add	a1, a5, a1
	add	a1, a1, a2
	add	a2, a1, a4
	j	.LBB0_203
.LBB0_201:                              #   in Loop: Header=BB0_174 Depth=3
	slli	a3, s6, 2
	andi	a3, a3, 8
	or	a3, a3, s4
	mulw	a3, a0, a3
	add	a1, a1, s11
	add	a1, a1, a3
.LBB0_202:                              #   in Loop: Header=BB0_174 Depth=3
	add	a2, a1, a2
.LBB0_203:                              #   in Loop: Header=BB0_174 Depth=3
	ld	a3, %lo(ld)(s0)
	addiw	a1, a0, -8
	add	s1, a3, s1
	addi	a0, s1, 2047
	addi	a0, a0, 1129
	addi	a1, a1, 8
	addi	a2, a2, 3
	add	s7, a3, s7
	bnez	s10, .LBB0_205
.LBB0_204:                              #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        #       Parent Loop BB0_174 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld	a3, %lo(Clip)(s3)
	lh	a4, 0(a0)
	lbu	a5, -3(a2)
	add	a3, a3, a4
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, -3(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 2(a0)
	lbu	a5, -2(a2)
	add	a3, a3, a4
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, -2(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 4(a0)
	lbu	a5, -1(a2)
	add	a3, a3, a4
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, -1(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 6(a0)
	lbu	a5, 0(a2)
	add	a3, a3, a4
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, 0(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 8(a0)
	lbu	a5, 1(a2)
	add	a3, a3, a4
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, 1(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 10(a0)
	lbu	a5, 2(a2)
	add	a3, a3, a4
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, 2(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 12(a0)
	lbu	a5, 3(a2)
	add	a3, a3, a4
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, 3(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 14(a0)
	lbu	a5, 4(a2)
	add	a3, a3, a4
	add	a3, a3, a5
	lbu	a3, 0(a3)
	sb	a3, 4(a2)
	addi	a0, a0, 16
	add	a2, a2, a1
	bne	a0, s7, .LBB0_204
	j	.LBB0_173
.LBB0_205:                              #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        #       Parent Loop BB0_174 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld	a3, %lo(Clip)(s3)
	lh	a4, 0(a0)
	add	a3, a3, a4
	lbu	a3, 128(a3)
	sb	a3, -3(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 2(a0)
	add	a3, a3, a4
	lbu	a3, 128(a3)
	sb	a3, -2(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 4(a0)
	add	a3, a3, a4
	lbu	a3, 128(a3)
	sb	a3, -1(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 6(a0)
	add	a3, a3, a4
	lbu	a3, 128(a3)
	sb	a3, 0(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 8(a0)
	add	a3, a3, a4
	lbu	a3, 128(a3)
	sb	a3, 1(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 10(a0)
	add	a3, a3, a4
	lbu	a3, 128(a3)
	sb	a3, 2(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 12(a0)
	add	a3, a3, a4
	lbu	a3, 128(a3)
	sb	a3, 3(a2)
	ld	a3, %lo(Clip)(s3)
	lh	a4, 14(a0)
	add	a3, a3, a4
	lbu	a3, 128(a3)
	sb	a3, 4(a2)
	addi	a0, a0, 16
	add	a2, a2, a1
	bne	a0, s7, .LBB0_205
	j	.LBB0_173
.LBB0_206:                              #   in Loop: Header=BB0_40 Depth=2
	slli	a0, a0, 1
	sw	a0, 1121(a1)
	mv	s10, s6
	beqz	s1, .LBB0_131
	j	.LBB0_148
.LBB0_207:                              #   in Loop: Header=BB0_32 Depth=1
	li	s5, 1
	lui	s0, %hi(ld)
	j	.LBB0_31
.LBB0_208:
	lui	a0, %hi(progressive_frame)
	lw	a0, %lo(progressive_frame)(a0)
	lui	a1, %hi(frame_reorder.Oldref_progressive_frame)
	sw	a0, %lo(frame_reorder.Oldref_progressive_frame)(a1)
	lui	a0, %hi(picture_structure)
	lw	a0, %lo(picture_structure)(a0)
	li	a1, 3
	bne	a0, a1, .LBB0_210
	j	.LBB0_212
.LBB0_209:
	lui	s0, %hi(progressive_frame)
	lw	a0, %lo(progressive_frame)(s0)
	lui	s1, %hi(frame_reorder.Oldref_progressive_frame)
	lw	a1, %lo(frame_reorder.Oldref_progressive_frame)(s1)
	lui	s2, %hi(frame_reorder.Newref_progressive_frame)
	sw	a0, %lo(frame_reorder.Newref_progressive_frame)(s2)
	sw	a1, %lo(progressive_frame)(s0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	addiw	a1, a1, -1
	lui	a0, %hi(forward_reference_frame)
	addi	a0, a0, %lo(forward_reference_frame)
	call	Write_Frame
	lw	a0, %lo(frame_reorder.Newref_progressive_frame)(s2)
	sw	a0, %lo(progressive_frame)(s0)
	sw	a0, %lo(frame_reorder.Oldref_progressive_frame)(s1)
	lui	a0, %hi(picture_structure)
	lw	a0, %lo(picture_structure)(a0)
	li	a1, 3
	beq	a0, a1, .LBB0_212
.LBB0_210:
	lui	a0, %hi(Second_Field)
	lw	a0, %lo(Second_Field)(a0)
	seqz	a1, a0
.LBB0_211:
	lui	a0, %hi(Second_Field)
	sw	a1, %lo(Second_Field)(a0)
.LBB0_212:
	ld	ra, 328(sp)                     # 8-byte Folded Reload
	ld	s0, 320(sp)                     # 8-byte Folded Reload
	ld	s1, 312(sp)                     # 8-byte Folded Reload
	ld	s2, 304(sp)                     # 8-byte Folded Reload
	ld	s3, 296(sp)                     # 8-byte Folded Reload
	ld	s4, 288(sp)                     # 8-byte Folded Reload
	ld	s5, 280(sp)                     # 8-byte Folded Reload
	ld	s6, 272(sp)                     # 8-byte Folded Reload
	ld	s7, 264(sp)                     # 8-byte Folded Reload
	ld	s8, 256(sp)                     # 8-byte Folded Reload
	ld	s9, 248(sp)                     # 8-byte Folded Reload
	ld	s10, 240(sp)                    # 8-byte Folded Reload
	ld	s11, 232(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 336
	ret
.LBB0_213:
	lui	a3, %hi(forward_reference_frame)
	lui	a4, %hi(backward_reference_frame)
	ld	a5, %lo(backward_reference_frame)(a4)
	ld	a6, %lo(forward_reference_frame)(a3)
	addi	a7, a3, %lo(forward_reference_frame)
	addi	t0, a4, %lo(backward_reference_frame)
	sd	a5, %lo(forward_reference_frame)(a3)
	sd	a6, %lo(backward_reference_frame)(a4)
	add	a1, a6, a1
	lui	a3, %hi(current_frame)
	ld	a4, 8(t0)
	ld	a5, 8(a7)
	sd	a1, %lo(current_frame)(a3)
	addi	a1, a3, %lo(current_frame)
	sd	a4, 8(a7)
	sd	a5, 8(t0)
	ld	a3, 16(t0)
	ld	a4, 16(a7)
	add	a5, a5, a0
	sd	a5, 8(a1)
	sd	a3, 16(a7)
	sd	a4, 16(t0)
	add	a0, a4, a0
	sd	a0, 16(a1)
	j	.LBB0_14
.LBB0_214:
	lui	a0, %hi(forward_reference_frame)
	lui	a1, %hi(backward_reference_frame)
	ld	a3, %lo(backward_reference_frame)(a1)
	ld	a4, %lo(forward_reference_frame)(a0)
	addi	a5, a0, %lo(forward_reference_frame)
	addi	a6, a1, %lo(backward_reference_frame)
	sd	a3, %lo(forward_reference_frame)(a0)
	sd	a4, %lo(backward_reference_frame)(a1)
	lui	a0, %hi(current_frame)
	ld	a1, 8(a6)
	sd	a4, %lo(current_frame)(a0)
	addi	a0, a0, %lo(current_frame)
	ld	a3, 8(a5)
	sd	a1, 8(a5)
	ld	a1, 16(a6)
	ld	a4, 16(a5)
	sd	a3, 8(a6)
	sd	a3, 8(a0)
	sd	a1, 16(a5)
	sd	a4, 16(a6)
	sd	a4, 16(a0)
	j	.LBB0_14
.LBB0_215:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	beqz	a0, .LBB0_216
	j	.LBB0_23
.LBB0_216:
	lui	a0, %hi(.Lstr.12)
	addi	a0, a0, %lo(.Lstr.12)
	j	.LBB0_22
.Lfunc_end0:
	.size	Decode_Picture, .Lfunc_end0-Decode_Picture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Output_Last_Frame_of_Sequence   # -- Begin function Output_Last_Frame_of_Sequence
	.p2align	2
	.type	Output_Last_Frame_of_Sequence,@function
Output_Last_Frame_of_Sequence:          # @Output_Last_Frame_of_Sequence
# %bb.0:
	lui	a1, %hi(Second_Field)
	lw	a1, %lo(Second_Field)(a1)
	beqz	a1, .LBB1_2
# %bb.1:
	lui	a0, %hi(.Lstr.9)
	addi	a0, a0, %lo(.Lstr.9)
	tail	puts
.LBB1_2:
	addiw	a1, a0, -1
	lui	a0, %hi(backward_reference_frame)
	addi	a0, a0, %lo(backward_reference_frame)
	tail	Write_Frame
.Lfunc_end1:
	.size	Output_Last_Frame_of_Sequence, .Lfunc_end1-Output_Last_Frame_of_Sequence
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function macroblock_modes
	.type	macroblock_modes,@function
macroblock_modes:                       # @macroblock_modes
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
	mv	s1, t2
	mv	s2, a7
	mv	s3, a6
	mv	s4, a5
	mv	s5, a4
	mv	s6, a3
	mv	s7, a2
	mv	s8, a1
	mv	s10, a0
	call	Get_macroblock_type
	lui	a1, %hi(Fault_Flag)
	lw	a1, %lo(Fault_Flag)(a1)
	bnez	a1, .LBB2_21
# %bb.1:
	mv	s9, a0
	andi	a0, a0, 32
	bnez	a0, .LBB2_3
# %bb.2:
	srli	a0, s9, 3
	andi	s11, a0, 8
	j	.LBB2_6
.LBB2_3:
	lui	s0, %hi(spatial_temporal_weight_code_table_index)
	lw	a0, %lo(spatial_temporal_weight_code_table_index)(s0)
	beqz	a0, .LBB2_5
# %bb.4:
	li	a0, 2
	call	Get_Bits
	lw	a1, %lo(spatial_temporal_weight_code_table_index)(s0)
	slli	a1, a1, 2
	lui	a2, %hi(macroblock_modes.stwc_table)
	addi	a2, a2, %lo(macroblock_modes.stwc_table)
	add	a0, a2, a0
	add	a0, a1, a0
	lbu	s11, -4(a0)
	j	.LBB2_6
.LBB2_5:
	li	s11, 4
.LBB2_6:
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(macroblock_modes.stwclass_table)
	addi	a0, a0, %lo(macroblock_modes.stwclass_table)
	add	a0, a0, s11
	lbu	a4, 0(a0)
	andi	a0, s9, 12
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	beqz	a0, .LBB2_10
# %bb.7:
	lui	a0, %hi(picture_structure)
	lw	a0, %lo(picture_structure)(a0)
	li	a1, 3
	bne	a0, a1, .LBB2_9
# %bb.8:
	lui	a0, %hi(frame_pred_frame_dct)
	lw	a0, %lo(frame_pred_frame_dct)(a0)
	li	s10, 2
	bnez	a0, .LBB2_15
.LBB2_9:
	li	a0, 2
	mv	s0, a4
	call	Get_Bits
	mv	a4, s0
	mv	s10, a0
	j	.LBB2_14
.LBB2_10:
	andi	a0, s9, 1
	li	s10, 0
	beqz	a0, .LBB2_14
# %bb.11:
	lui	a0, %hi(concealment_motion_vectors)
	lw	a0, %lo(concealment_motion_vectors)(a0)
	beqz	a0, .LBB2_14
# %bb.12:
	lui	a0, %hi(picture_structure)
	lw	a0, %lo(picture_structure)(a0)
	addi	a1, a0, -3
	seqz	s10, a1
	addi	s10, s10, 1
	li	a1, 3
	beq	a0, a1, .LBB2_15
.LBB2_13:
	li	a2, 0
	li	s0, 0
	addi	a0, s10, -2
	seqz	s1, a0
	addi	s4, s1, 1
	li	a1, 1
	j	.LBB2_16
.LBB2_14:
	lui	a0, %hi(picture_structure)
	lw	a0, %lo(picture_structure)(a0)
	li	a1, 3
	bne	a0, a1, .LBB2_13
.LBB2_15:
	li	a1, 0
	addi	a0, s10, -1
	seqz	a0, a0
	li	a2, 27
	srl	a2, a2, s11
	and	a0, a0, a2
	addi	s4, a0, 1
	addi	a0, s10, -2
	seqz	s0, a0
	li	a2, 1
.LBB2_16:
	li	a0, 0
	addi	a3, s10, -3
	seqz	s2, a3
	seqz	a3, s0
	and	s3, a2, a3
	bnez	a1, .LBB2_20
# %bb.17:
	lui	a1, %hi(frame_pred_frame_dct)
	lw	a1, %lo(frame_pred_frame_dct)(a1)
	bnez	a1, .LBB2_20
# %bb.18:
	andi	a1, s9, 3
	beqz	a1, .LBB2_20
# %bb.19:
	li	a0, 1
	mv	s1, s11
	mv	s11, a4
	call	Get_Bits
	mv	a4, s11
	mv	s11, s1
.LBB2_20:
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	sw	s9, 0(a1)
	sw	s11, 0(s8)
	sw	a4, 0(s7)
	sw	s10, 0(s6)
	sw	s4, 0(s5)
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	sw	s0, 0(a1)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sw	s2, 0(a1)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sw	s3, 0(a1)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sw	a0, 0(a1)
.LBB2_21:
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
.Lfunc_end2:
	.size	macroblock_modes, .Lfunc_end2-macroblock_modes
                                        # -- End function
	.option	pop
	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"D picture end_of_macroblock bit"
	.size	.L.str.6, 32

	.type	macroblock_modes.stwc_table,@object # @macroblock_modes.stwc_table
	.section	.rodata,"a",@progbits
macroblock_modes.stwc_table:
	.ascii	"\006\003\007\004"
	.ascii	"\002\001\005\004"
	.ascii	"\002\005\007\004"
	.size	macroblock_modes.stwc_table, 12

	.type	macroblock_modes.stwclass_table,@object # @macroblock_modes.stwclass_table
macroblock_modes.stwclass_table:
	.ascii	"\000\001\002\001\001\002\003\003\004"
	.size	macroblock_modes.stwclass_table, 9

	.type	frame_reorder.Oldref_progressive_frame,@object # @frame_reorder.Oldref_progressive_frame
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
frame_reorder.Oldref_progressive_frame:
	.word	0                               # 0x0
	.size	frame_reorder.Oldref_progressive_frame, 4

	.type	frame_reorder.Newref_progressive_frame,@object # @frame_reorder.Newref_progressive_frame
	.p2align	2, 0x0
frame_reorder.Newref_progressive_frame:
	.word	0                               # 0x0
	.size	frame_reorder.Newref_progressive_frame, 4

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"odd number of field pictures"
	.size	.Lstr, 29

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"last frame incomplete, not stored"
	.size	.Lstr.9, 34

	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	"start_of_slice(): MBAinc unsuccessful"
	.size	.Lstr.11, 38

	.type	.Lstr.12,@object                # @str.12
.Lstr.12:
	.asciz	"DP: Premature end of picture"
	.size	.Lstr.12, 29

	.type	.Lstr.13,@object                # @str.13
.Lstr.13:
	.asciz	"start_of_slice(): Premature end of picture"
	.size	.Lstr.13, 43

	.type	.Lstr.14,@object                # @str.14
.Lstr.14:
	.asciz	"SNR: Premature end of picture"
	.size	.Lstr.14, 30

	.type	.Lstr.15,@object                # @str.15
.Lstr.15:
	.asciz	"Cant't synchronize streams"
	.size	.Lstr.15, 27

	.type	.Lstr.16,@object                # @str.16
.Lstr.16:
	.asciz	"Too many macroblocks in picture"
	.size	.Lstr.16, 32

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
