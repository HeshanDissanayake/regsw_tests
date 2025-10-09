	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"conform.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function range_checks
.LCPI0_0:
	.quad	0x4258ffffff9c0000              # double 429496729200
.LCPI0_1:
	.quad	0x4198fff9c0000000              # double 104857200
	.text
	.globl	range_checks
	.p2align	2
	.type	range_checks,@function
range_checks:                           # @range_checks
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
	lui	s0, %hi(horizontal_size)
	lw	a0, %lo(horizontal_size)(s0)
	lui	a1, 1048572
	addw	a2, a0, a1
	bltu	a1, a2, .LBB0_2
# %bb.1:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	error
	lw	a0, %lo(horizontal_size)(s0)
.LBB0_2:
	lui	a1, %hi(mpeg1)
	lw	a1, %lo(mpeg1)(a1)
	beqz	a1, .LBB0_5
# %bb.3:
	lui	a1, 1
	blt	a0, a1, .LBB0_5
# %bb.4:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	error
	lui	a0, %hi(horizontal_size)
	lw	a0, %lo(horizontal_size)(a0)
.LBB0_5:
	slli	a0, a0, 52
	beqz	a0, .LBB0_7
# %bb.6:
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	li	a1, 3
	bne	a0, a1, .LBB0_8
	j	.LBB0_10
.LBB0_7:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	error
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	li	a1, 3
	beq	a0, a1, .LBB0_10
.LBB0_8:
	lui	a0, %hi(horizontal_size)
	lbu	a0, %lo(horizontal_size)(a0)
	andi	a0, a0, 1
	beqz	a0, .LBB0_10
# %bb.9:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	error
.LBB0_10:
	lui	s1, %hi(vertical_size)
	lw	a0, %lo(vertical_size)(s1)
	lui	a1, 1048572
	addw	a2, a0, a1
	lui	s0, 1
	bltu	a1, a2, .LBB0_12
# %bb.11:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	call	error
	lw	a0, %lo(vertical_size)(s1)
.LBB0_12:
	lui	a1, %hi(mpeg1)
	lw	a1, %lo(mpeg1)(a1)
	addiw	s0, s0, -1
	beqz	a1, .LBB0_15
# %bb.13:
	lui	a1, 1
	blt	a0, a1, .LBB0_15
# %bb.14:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	call	error
	lui	a0, %hi(vertical_size)
	lw	a0, %lo(vertical_size)(a0)
.LBB0_15:
	and	a0, a0, s0
	beqz	a0, .LBB0_17
# %bb.16:
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	li	a1, 1
	beq	a0, a1, .LBB0_18
	j	.LBB0_20
.LBB0_17:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	error
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	li	a1, 1
	bne	a0, a1, .LBB0_20
.LBB0_18:
	lui	a0, %hi(vertical_size)
	lbu	a0, %lo(vertical_size)(a0)
	andi	a0, a0, 1
	beqz	a0, .LBB0_20
# %bb.19:
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	call	error
.LBB0_20:
	lui	a0, %hi(fieldpic)
	lw	a0, %lo(fieldpic)(a0)
	beqz	a0, .LBB0_26
# %bb.21:
	lui	a0, %hi(vertical_size)
	lbu	a0, %lo(vertical_size)(a0)
	andi	a0, a0, 1
	beqz	a0, .LBB0_23
# %bb.22:
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	call	error
.LBB0_23:
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	li	a1, 1
	bne	a0, a1, .LBB0_26
# %bb.24:
	lui	a0, %hi(vertical_size)
	lbu	a0, %lo(vertical_size)(a0)
	andi	a0, a0, 3
	beqz	a0, .LBB0_26
# %bb.25:
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	call	error
.LBB0_26:
	lui	a0, %hi(mpeg1)
	lw	a1, %lo(mpeg1)(a0)
	lui	a0, %hi(aspectratio)
	lw	a0, %lo(aspectratio)(a0)
	beqz	a1, .LBB0_29
# %bb.27:
	addiw	a0, a0, -15
	li	a1, -14
	bgeu	a0, a1, .LBB0_32
# %bb.28:
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	j	.LBB0_31
.LBB0_29:
	addiw	a0, a0, -5
	li	a1, -5
	bltu	a1, a0, .LBB0_32
# %bb.30:
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
.LBB0_31:
	call	error
.LBB0_32:
	lui	a0, %hi(frame_rate_code)
	lw	a0, %lo(frame_rate_code)(a0)
	addiw	a0, a0, -9
	li	a1, -9
	bltu	a1, a0, .LBB0_34
# %bb.33:
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	call	error
.LBB0_34:
	lui	s0, %hi(bit_rate)
	fld	fa5, %lo(bit_rate)(s0)
	fmv.d.x	fa4, zero
	fle.d	a0, fa5, fa4
	bnez	a0, .LBB0_37
# %bb.35:
	lui	a0, %hi(.LCPI0_0)
	fld	fa4, %lo(.LCPI0_0)(a0)
	flt.d	a0, fa4, fa5
	bnez	a0, .LBB0_38
.LBB0_36:
	lui	a0, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(a0)
	bnez	a0, .LBB0_39
	j	.LBB0_41
.LBB0_37:
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	call	error
	fld	fa5, %lo(bit_rate)(s0)
	lui	a0, %hi(.LCPI0_0)
	fld	fa4, %lo(.LCPI0_0)(a0)
	flt.d	a0, fa4, fa5
	beqz	a0, .LBB0_36
.LBB0_38:
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	call	error
	lui	a0, %hi(bit_rate)
	fld	fa5, %lo(bit_rate)(a0)
	lui	a0, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(a0)
	beqz	a0, .LBB0_41
.LBB0_39:
	lui	a0, %hi(.LCPI0_1)
	fld	fa4, %lo(.LCPI0_1)(a0)
	flt.d	a0, fa4, fa5
	beqz	a0, .LBB0_41
# %bb.40:
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	call	error
.LBB0_41:
	lui	s0, %hi(vbv_buffer_size)
	lw	a0, %lo(vbv_buffer_size)(s0)
	lui	a1, 1048512
	addw	a2, a0, a1
	bltu	a1, a2, .LBB0_43
# %bb.42:
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	call	error
	lw	a0, %lo(vbv_buffer_size)(s0)
.LBB0_43:
	lui	a1, %hi(mpeg1)
	lw	a1, %lo(mpeg1)(a1)
	beqz	a1, .LBB0_46
# %bb.44:
	li	a1, 1024
	blt	a0, a1, .LBB0_46
# %bb.45:
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	call	error
.LBB0_46:
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	addiw	a0, a0, -4
	li	a1, -4
	bgeu	a1, a0, .LBB0_49
# %bb.47:
	lui	a0, %hi(video_format)
	lw	a0, %lo(video_format)(a0)
	li	a1, 5
	bgeu	a0, a1, .LBB0_50
.LBB0_48:
	lui	a0, %hi(color_primaries)
	lw	a0, %lo(color_primaries)(a0)
	li	a1, 3
	bne	a0, a1, .LBB0_51
	j	.LBB0_52
.LBB0_49:
	lui	a0, %hi(.L.str.18)
	addi	a0, a0, %lo(.L.str.18)
	call	error
	lui	a0, %hi(video_format)
	lw	a0, %lo(video_format)(a0)
	li	a1, 5
	bltu	a0, a1, .LBB0_48
.LBB0_50:
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	call	error
	lui	a0, %hi(color_primaries)
	lw	a0, %lo(color_primaries)(a0)
	li	a1, 3
	beq	a0, a1, .LBB0_52
.LBB0_51:
	addiw	a0, a0, -8
	li	a1, -8
	bltu	a1, a0, .LBB0_53
.LBB0_52:
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
	call	error
.LBB0_53:
	lui	a0, %hi(transfer_characteristics)
	lw	a0, %lo(transfer_characteristics)(a0)
	li	a1, 3
	beq	a0, a1, .LBB0_55
# %bb.54:
	addiw	a0, a0, -8
	li	a1, -8
	bltu	a1, a0, .LBB0_56
.LBB0_55:
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	call	error
.LBB0_56:
	lui	a0, %hi(matrix_coefficients)
	lw	a0, %lo(matrix_coefficients)(a0)
	li	a1, 3
	beq	a0, a1, .LBB0_62
# %bb.57:
	addiw	a0, a0, -8
	li	a1, -8
	bgeu	a1, a0, .LBB0_62
# %bb.58:
	lui	a0, %hi(display_horizontal_size)
	lwu	a0, %lo(display_horizontal_size)(a0)
	srli	a0, a0, 14
	bnez	a0, .LBB0_63
.LBB0_59:
	lui	a0, %hi(display_vertical_size)
	lwu	a0, %lo(display_vertical_size)(a0)
	srli	a0, a0, 14
	bnez	a0, .LBB0_64
.LBB0_60:
	lui	a0, %hi(dc_prec)
	lw	a0, %lo(dc_prec)(a0)
	li	a1, 4
	bgeu	a0, a1, .LBB0_65
.LBB0_61:
	lui	a0, %hi(M)
	lw	a0, %lo(M)(a0)
	bgtz	a0, .LBB0_66
	j	.LBB0_108
.LBB0_62:
	lui	a0, %hi(.L.str.22)
	addi	a0, a0, %lo(.L.str.22)
	call	error
	lui	a0, %hi(display_horizontal_size)
	lwu	a0, %lo(display_horizontal_size)(a0)
	srli	a0, a0, 14
	beqz	a0, .LBB0_59
.LBB0_63:
	lui	a0, %hi(.L.str.23)
	addi	a0, a0, %lo(.L.str.23)
	call	error
	lui	a0, %hi(display_vertical_size)
	lwu	a0, %lo(display_vertical_size)(a0)
	srli	a0, a0, 14
	beqz	a0, .LBB0_60
.LBB0_64:
	lui	a0, %hi(.L.str.24)
	addi	a0, a0, %lo(.L.str.24)
	call	error
	lui	a0, %hi(dc_prec)
	lw	a0, %lo(dc_prec)(a0)
	li	a1, 4
	bltu	a0, a1, .LBB0_61
.LBB0_65:
	lui	a0, %hi(.L.str.25)
	addi	a0, a0, %lo(.L.str.25)
	call	error
	lui	a0, %hi(M)
	lw	a0, %lo(M)(a0)
	blez	a0, .LBB0_108
.LBB0_66:
	lui	s1, %hi(motion_data)
	ld	a0, %lo(motion_data)(s1)
	lw	a1, 0(a0)
	addiw	a1, a1, -10
	li	s0, -10
	bgeu	s0, a1, .LBB0_69
# %bb.67:
	lw	a1, 4(a0)
	addiw	a1, a1, -10
	bgeu	s0, a1, .LBB0_70
.LBB0_68:
	lui	a1, %hi(mpeg1)
	lw	a1, %lo(mpeg1)(a1)
	bnez	a1, .LBB0_71
	j	.LBB0_75
.LBB0_69:
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	call	error
	ld	a0, %lo(motion_data)(s1)
	lw	a1, 4(a0)
	addiw	a1, a1, -10
	bltu	s0, a1, .LBB0_68
.LBB0_70:
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	call	error
	lui	a0, %hi(motion_data)
	ld	a0, %lo(motion_data)(a0)
	lui	a1, %hi(mpeg1)
	lw	a1, %lo(mpeg1)(a1)
	beqz	a1, .LBB0_75
.LBB0_71:
	lw	a1, 0(a0)
	li	s0, 8
	blt	a1, s0, .LBB0_73
# %bb.72:
	lui	a0, %hi(.L.str.27)
	addi	a0, a0, %lo(.L.str.27)
	call	error
	lui	a0, %hi(mpeg1)
	lw	a1, %lo(mpeg1)(a0)
	lui	a0, %hi(motion_data)
	ld	a0, %lo(motion_data)(a0)
	beqz	a1, .LBB0_75
.LBB0_73:
	lw	a1, 4(a0)
	blt	a1, s0, .LBB0_75
# %bb.74:
	lui	a0, %hi(.L.str.27)
	addi	a0, a0, %lo(.L.str.27)
	call	error
	lui	a0, %hi(motion_data)
	ld	a0, %lo(motion_data)(a0)
.LBB0_75:
	lw	a1, 8(a0)
	blez	a1, .LBB0_78
# %bb.76:
	lw	a0, 12(a0)
	blez	a0, .LBB0_79
.LBB0_77:
	lui	s3, %hi(M)
	lw	a0, %lo(M)(s3)
	li	a1, 2
	bge	a0, a1, .LBB0_80
	j	.LBB0_108
.LBB0_78:
	lui	a0, %hi(.L.str.28)
	addi	a0, a0, %lo(.L.str.28)
	call	error
	lui	a0, %hi(motion_data)
	ld	a0, %lo(motion_data)(a0)
	lw	a0, 12(a0)
	bgtz	a0, .LBB0_77
.LBB0_79:
	lui	a0, %hi(.L.str.28)
	addi	a0, a0, %lo(.L.str.28)
	call	error
	lui	s3, %hi(M)
	lw	a0, %lo(M)(s3)
	li	a1, 2
	blt	a0, a1, .LBB0_108
.LBB0_80:                               # %.preheader
	li	s4, 1
	li	s5, 60
	lui	s6, %hi(motion_data)
	li	s7, -10
	lui	s0, %hi(.L.str.26)
	addi	s0, s0, %lo(.L.str.26)
	lui	s8, %hi(mpeg1)
	lui	s1, %hi(.L.str.28)
	addi	s1, s1, %lo(.L.str.28)
	li	s9, 8
	lui	s2, %hi(.L.str.27)
	addi	s2, s2, %lo(.L.str.27)
	j	.LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_82 Depth=1
	lw	a0, %lo(M)(s3)
	addi	s4, s4, 1
	addi	s5, s5, 32
	bge	s4, a0, .LBB0_108
.LBB0_82:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(motion_data)(s6)
	add	a1, a0, s5
	lw	a1, -28(a1)
	addiw	a1, a1, -10
	bgeu	s7, a1, .LBB0_85
# %bb.83:                               #   in Loop: Header=BB0_82 Depth=1
	add	a1, a0, s5
	lw	a1, -24(a1)
	addiw	a1, a1, -10
	bgeu	s7, a1, .LBB0_86
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=1
	lw	a1, %lo(mpeg1)(s8)
	bnez	a1, .LBB0_87
	j	.LBB0_91
.LBB0_85:                               #   in Loop: Header=BB0_82 Depth=1
	mv	a0, s0
	call	error
	ld	a0, %lo(motion_data)(s6)
	add	a1, a0, s5
	lw	a1, -24(a1)
	addiw	a1, a1, -10
	bltu	s7, a1, .LBB0_84
.LBB0_86:                               #   in Loop: Header=BB0_82 Depth=1
	mv	a0, s0
	call	error
	ld	a0, %lo(motion_data)(s6)
	lw	a1, %lo(mpeg1)(s8)
	beqz	a1, .LBB0_91
.LBB0_87:                               #   in Loop: Header=BB0_82 Depth=1
	add	a1, a0, s5
	lw	a1, -28(a1)
	blt	a1, s9, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_82 Depth=1
	mv	a0, s2
	call	error
	lw	a1, %lo(mpeg1)(s8)
	ld	a0, %lo(motion_data)(s6)
	beqz	a1, .LBB0_91
.LBB0_89:                               #   in Loop: Header=BB0_82 Depth=1
	add	a1, a0, s5
	lw	a1, -24(a1)
	blt	a1, s9, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_82 Depth=1
	mv	a0, s2
	call	error
	ld	a0, %lo(motion_data)(s6)
.LBB0_91:                               #   in Loop: Header=BB0_82 Depth=1
	add	a1, a0, s5
	lw	a1, -20(a1)
	blez	a1, .LBB0_104
# %bb.92:                               #   in Loop: Header=BB0_82 Depth=1
	add	a0, a0, s5
	lw	a0, -16(a0)
	blez	a0, .LBB0_105
.LBB0_93:                               #   in Loop: Header=BB0_82 Depth=1
	ld	a0, %lo(motion_data)(s6)
	add	a1, a0, s5
	lw	a1, -12(a1)
	addiw	a1, a1, -10
	bgeu	s7, a1, .LBB0_96
# %bb.94:                               #   in Loop: Header=BB0_82 Depth=1
	add	a1, a0, s5
	lw	a1, -8(a1)
	addiw	a1, a1, -10
	bgeu	s7, a1, .LBB0_97
.LBB0_95:                               #   in Loop: Header=BB0_82 Depth=1
	lw	a1, %lo(mpeg1)(s8)
	bnez	a1, .LBB0_98
	j	.LBB0_102
.LBB0_96:                               #   in Loop: Header=BB0_82 Depth=1
	mv	a0, s0
	call	error
	ld	a0, %lo(motion_data)(s6)
	add	a1, a0, s5
	lw	a1, -8(a1)
	addiw	a1, a1, -10
	bltu	s7, a1, .LBB0_95
.LBB0_97:                               #   in Loop: Header=BB0_82 Depth=1
	mv	a0, s0
	call	error
	ld	a0, %lo(motion_data)(s6)
	lw	a1, %lo(mpeg1)(s8)
	beqz	a1, .LBB0_102
.LBB0_98:                               #   in Loop: Header=BB0_82 Depth=1
	add	a1, a0, s5
	lw	a1, -12(a1)
	blt	a1, s9, .LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_82 Depth=1
	mv	a0, s2
	call	error
	lw	a1, %lo(mpeg1)(s8)
	ld	a0, %lo(motion_data)(s6)
	beqz	a1, .LBB0_102
.LBB0_100:                              #   in Loop: Header=BB0_82 Depth=1
	add	a1, a0, s5
	lw	a1, -8(a1)
	blt	a1, s9, .LBB0_102
# %bb.101:                              #   in Loop: Header=BB0_82 Depth=1
	mv	a0, s2
	call	error
	ld	a0, %lo(motion_data)(s6)
.LBB0_102:                              #   in Loop: Header=BB0_82 Depth=1
	add	a1, a0, s5
	lw	a1, -4(a1)
	blez	a1, .LBB0_106
# %bb.103:                              #   in Loop: Header=BB0_82 Depth=1
	add	a0, a0, s5
	lw	a0, 0(a0)
	bgtz	a0, .LBB0_81
	j	.LBB0_107
.LBB0_104:                              #   in Loop: Header=BB0_82 Depth=1
	mv	a0, s1
	call	error
	ld	a0, %lo(motion_data)(s6)
	add	a0, a0, s5
	lw	a0, -16(a0)
	bgtz	a0, .LBB0_93
.LBB0_105:                              #   in Loop: Header=BB0_82 Depth=1
	mv	a0, s1
	call	error
	j	.LBB0_93
.LBB0_106:                              #   in Loop: Header=BB0_82 Depth=1
	mv	a0, s1
	call	error
	ld	a0, %lo(motion_data)(s6)
	add	a0, a0, s5
	lw	a0, 0(a0)
	bgtz	a0, .LBB0_81
.LBB0_107:                              #   in Loop: Header=BB0_82 Depth=1
	mv	a0, s1
	call	error
	j	.LBB0_81
.LBB0_108:
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
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	range_checks, .Lfunc_end0-range_checks
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function profile_and_level_checks
.LCPI1_0:
	.quad	0x412e848000000000              # double 1.0E+6
	.text
	.globl	profile_and_level_checks
	.p2align	2
	.type	profile_and_level_checks,@function
profile_and_level_checks:               # @profile_and_level_checks
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
	lui	a0, %hi(profile)
	lw	a0, %lo(profile)(a0)
	li	s0, 16
	bgeu	a0, s0, .LBB1_5
# %bb.1:
	lui	a0, %hi(level)
	lw	a0, %lo(level)(a0)
	bgeu	a0, s0, .LBB1_6
.LBB1_2:
	lui	a0, %hi(profile)
	lw	a0, %lo(profile)(a0)
	li	a1, 8
	blt	a0, a1, .LBB1_7
.LBB1_3:
	lui	a0, %hi(quiet)
	lw	a0, %lo(quiet)(a0)
	bnez	a0, .LBB1_65
# %bb.4:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.31)
	addi	a0, a0, %lo(.L.str.31)
	li	a1, 67
	li	a2, 1
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
	tail	fwrite
.LBB1_5:
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	call	error
	lui	a0, %hi(level)
	lw	a0, %lo(level)(a0)
	bltu	a0, s0, .LBB1_2
.LBB1_6:
	lui	a0, %hi(.L.str.30)
	addi	a0, a0, %lo(.L.str.30)
	call	error
	lui	a0, %hi(profile)
	lw	a0, %lo(profile)(a0)
	li	a1, 8
	bge	a0, a1, .LBB1_3
.LBB1_7:
	addiw	a1, a0, -6
	li	a2, -6
	bltu	a2, a1, .LBB1_9
# %bb.8:
	lui	a0, %hi(.L.str.32)
	addi	a0, a0, %lo(.L.str.32)
	call	error
	lui	a0, %hi(profile)
	lw	a0, %lo(profile)(a0)
.LBB1_9:
	andi	a0, a0, -2
	li	a1, 2
	bne	a0, a1, .LBB1_11
# %bb.10:
	lui	a0, %hi(.L.str.33)
	addi	a0, a0, %lo(.L.str.33)
	call	error
.LBB1_11:
	lui	s0, %hi(level)
	lw	a0, %lo(level)(s0)
	addiw	a1, a0, -4
	li	a2, 6
	bltu	a2, a1, .LBB1_13
# %bb.12:
	andi	a0, a0, 1
	beqz	a0, .LBB1_14
.LBB1_13:
	lui	a0, %hi(.L.str.34)
	addi	a0, a0, %lo(.L.str.34)
	call	error
	lw	a1, %lo(level)(s0)
	addiw	a1, a1, -4
.LBB1_14:
	lui	s1, %hi(profile)
	lw	a0, %lo(profile)(s1)
	srai	s0, a1, 1
	slli	a1, a0, 2
	lui	a2, %hi(profile_level_defined)
	addi	a2, a2, %lo(profile_level_defined)
	add	a1, a1, a2
	add	a1, a1, s0
	lbu	a1, -4(a1)
	bnez	a1, .LBB1_16
# %bb.15:
	lui	a0, %hi(.L.str.35)
	addi	a0, a0, %lo(.L.str.35)
	call	error
	lw	a0, %lo(profile)(s1)
.LBB1_16:
	li	a1, 5
	bne	a0, a1, .LBB1_19
# %bb.17:
	lui	a1, %hi(M)
	lw	a1, %lo(M)(a1)
	li	a2, 1
	beq	a1, a2, .LBB1_19
# %bb.18:
	lui	a0, %hi(.L.str.36)
	addi	a0, a0, %lo(.L.str.36)
	call	error
	lui	a0, %hi(profile)
	lw	a0, %lo(profile)(a0)
.LBB1_19:
	lui	a1, %hi(chroma_format)
	lw	a1, %lo(chroma_format)(a1)
	li	s1, 1
	beq	a0, s1, .LBB1_22
# %bb.20:
	beq	a1, s1, .LBB1_22
# %bb.21:
	lui	a0, %hi(.L.str.37)
	addi	a0, a0, %lo(.L.str.37)
	call	error
	lui	a0, %hi(profile)
	lw	a0, %lo(profile)(a0)
	lui	a1, %hi(chroma_format)
	lw	a1, %lo(chroma_format)(a1)
.LBB1_22:
	bne	a0, s1, .LBB1_25
# %bb.23:
	li	a2, 3
	bne	a1, a2, .LBB1_25
# %bb.24:
	lui	a0, %hi(.L.str.38)
	addi	a0, a0, %lo(.L.str.38)
	call	error
	lui	a0, %hi(profile)
	lw	a0, %lo(profile)(a0)
.LBB1_25:
	li	a1, 4
	blt	a0, a1, .LBB1_33
# %bb.26:
	lui	a0, %hi(frame_rate_code)
	lw	a1, %lo(frame_rate_code)(a0)
	lui	a0, %hi(repeatfirst)
	lw	a0, %lo(repeatfirst)(a0)
	li	a2, 2
	blt	a2, a1, .LBB1_29
# %bb.27:
	beqz	a0, .LBB1_29
# %bb.28:
	lui	a0, %hi(.L.str.39)
	addi	a0, a0, %lo(.L.str.39)
	call	error
	lui	a0, %hi(frame_rate_code)
	lw	a1, %lo(frame_rate_code)(a0)
	lui	a0, %hi(repeatfirst)
	lw	a0, %lo(repeatfirst)(a0)
.LBB1_29:
	li	a2, 6
	blt	a2, a1, .LBB1_33
# %bb.30:
	lui	a1, %hi(prog_seq)
	lw	a1, %lo(prog_seq)(a1)
	beqz	a1, .LBB1_33
# %bb.31:
	beqz	a0, .LBB1_33
# %bb.32:
	lui	a0, %hi(.L.str.39)
	addi	a0, a0, %lo(.L.str.39)
	call	error
.LBB1_33:
	lui	a0, %hi(profile)
	lw	a0, %lo(profile)(a0)
	li	a1, 1
	li	s1, 28
	beq	a0, a1, .LBB1_36
# %bb.34:
	lui	a0, %hi(dc_prec)
	lw	a0, %lo(dc_prec)(a0)
	li	a1, 3
	bne	a0, a1, .LBB1_36
# %bb.35:
	lui	a0, %hi(.L.str.40)
	addi	a0, a0, %lo(.L.str.40)
	call	error
.LBB1_36:
	lui	a0, %hi(frame_rate_code)
	lw	a0, %lo(frame_rate_code)(a0)
	mul	s4, s0, s1
	li	a1, 6
	lui	s0, %hi(maxval_tab)
	addi	s0, s0, %lo(maxval_tab)
	blt	a0, a1, .LBB1_39
# %bb.37:
	lui	a0, %hi(level)
	lw	a0, %lo(level)(a0)
	li	a1, 8
	blt	a0, a1, .LBB1_39
# %bb.38:
	lui	a0, %hi(.L.str.41)
	addi	a0, a0, %lo(.L.str.41)
	call	error
.LBB1_39:
	lui	a0, %hi(M)
	lw	a0, %lo(M)(a0)
	add	s4, s0, s4
	blez	a0, .LBB1_55
# %bb.40:
	lui	s0, %hi(motion_data)
	ld	a0, %lo(motion_data)(s0)
	lw	s5, 0(s4)
	lw	a1, 0(a0)
	blt	s5, a1, .LBB1_43
# %bb.41:
	lw	a0, 4(a0)
	lw	s6, 4(s4)
	blt	s6, a0, .LBB1_44
.LBB1_42:
	lui	s7, %hi(M)
	lw	a0, %lo(M)(s7)
	li	a1, 2
	bge	a0, a1, .LBB1_45
	j	.LBB1_55
.LBB1_43:
	lui	a0, %hi(.L.str.42)
	addi	a0, a0, %lo(.L.str.42)
	call	error
	ld	a0, %lo(motion_data)(s0)
	lw	a0, 4(a0)
	lw	s6, 4(s4)
	bge	s6, a0, .LBB1_42
.LBB1_44:
	lui	a0, %hi(.L.str.43)
	addi	a0, a0, %lo(.L.str.43)
	call	error
	lui	s7, %hi(M)
	lw	a0, %lo(M)(s7)
	li	a1, 2
	blt	a0, a1, .LBB1_55
.LBB1_45:                               # %.preheader
	li	s8, 0
	li	s9, 1
	lui	s10, %hi(motion_data)
	lui	s0, %hi(.L.str.42)
	addi	s0, s0, %lo(.L.str.42)
	lui	s1, %hi(.L.str.43)
	addi	s1, s1, %lo(.L.str.43)
	lui	s2, %hi(.L.str.44)
	addi	s2, s2, %lo(.L.str.44)
	lui	s3, %hi(.L.str.45)
	addi	s3, s3, %lo(.L.str.45)
	j	.LBB1_47
.LBB1_46:                               #   in Loop: Header=BB1_47 Depth=1
	lw	a0, %lo(M)(s7)
	addi	s9, s9, 1
	addi	s8, s8, 32
	bge	s9, a0, .LBB1_55
.LBB1_47:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(motion_data)(s10)
	add	a1, a0, s8
	lw	a1, 32(a1)
	blt	s5, a1, .LBB1_51
# %bb.48:                               #   in Loop: Header=BB1_47 Depth=1
	add	a0, a0, s8
	lw	a0, 36(a0)
	blt	s6, a0, .LBB1_52
.LBB1_49:                               #   in Loop: Header=BB1_47 Depth=1
	ld	a0, %lo(motion_data)(s10)
	add	a1, a0, s8
	lw	a1, 48(a1)
	blt	s5, a1, .LBB1_53
.LBB1_50:                               #   in Loop: Header=BB1_47 Depth=1
	add	a0, a0, s8
	lw	a0, 52(a0)
	bge	s6, a0, .LBB1_46
	j	.LBB1_54
.LBB1_51:                               #   in Loop: Header=BB1_47 Depth=1
	mv	a0, s0
	call	error
	ld	a0, %lo(motion_data)(s10)
	add	a0, a0, s8
	lw	a0, 36(a0)
	bge	s6, a0, .LBB1_49
.LBB1_52:                               #   in Loop: Header=BB1_47 Depth=1
	mv	a0, s1
	call	error
	ld	a0, %lo(motion_data)(s10)
	add	a1, a0, s8
	lw	a1, 48(a1)
	bge	s5, a1, .LBB1_50
.LBB1_53:                               #   in Loop: Header=BB1_47 Depth=1
	mv	a0, s2
	call	error
	ld	a0, %lo(motion_data)(s10)
	add	a0, a0, s8
	lw	a0, 52(a0)
	bge	s6, a0, .LBB1_46
.LBB1_54:                               #   in Loop: Header=BB1_47 Depth=1
	mv	a0, s3
	call	error
	j	.LBB1_46
.LBB1_55:
	lui	a0, %hi(horizontal_size)
	lw	a0, %lo(horizontal_size)(a0)
	lw	a1, 8(s4)
	bge	a1, a0, .LBB1_57
# %bb.56:
	lui	a0, %hi(.L.str.46)
	addi	a0, a0, %lo(.L.str.46)
	call	error
.LBB1_57:
	lui	s0, %hi(vertical_size)
	lw	a0, %lo(vertical_size)(s0)
	lw	a1, 12(s4)
	bge	a1, a0, .LBB1_59
# %bb.58:
	lui	a0, %hi(.L.str.46)
	addi	a0, a0, %lo(.L.str.46)
	call	error
	lw	a0, %lo(vertical_size)(s0)
.LBB1_59:
	lui	a1, %hi(horizontal_size)
	lw	a1, %lo(horizontal_size)(a1)
	lui	a2, %hi(frame_rate)
	fld	fa5, %lo(frame_rate)(a2)
	lw	a2, 16(s4)
	mul	a0, a0, a1
	fcvt.d.w	fa4, a0
	fmul.d	fa5, fa5, fa4
	fcvt.d.w	fa4, a2
	flt.d	a0, fa4, fa5
	beqz	a0, .LBB1_61
# %bb.60:
	lui	a0, %hi(.L.str.47)
	addi	a0, a0, %lo(.L.str.47)
	call	error
.LBB1_61:
	lui	a0, %hi(bit_rate)
	lw	a1, 20(s4)
	lui	a2, %hi(.LCPI1_0)
	fld	fa5, %lo(.LCPI1_0)(a2)
	fld	fa4, %lo(bit_rate)(a0)
	fcvt.d.w	fa3, a1
	fmul.d	fa5, fa3, fa5
	flt.d	a0, fa5, fa4
	beqz	a0, .LBB1_63
# %bb.62:
	lui	a0, %hi(.L.str.48)
	addi	a0, a0, %lo(.L.str.48)
	call	error
.LBB1_63:
	lui	a0, %hi(vbv_buffer_size)
	lw	a0, %lo(vbv_buffer_size)(a0)
	lw	a1, 24(s4)
	bge	a1, a0, .LBB1_65
# %bb.64:
	lui	a0, %hi(.L.str.49)
	addi	a0, a0, %lo(.L.str.49)
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
	tail	error
.LBB1_65:
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
.Lfunc_end1:
	.size	profile_and_level_checks, .Lfunc_end1-profile_and_level_checks
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"horizontal_size must be between 1 and 16383"
	.size	.L.str, 44

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"horizontal_size must be less than 4096 (MPEG-1)"
	.size	.L.str.1, 48

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"horizontal_size must not be a multiple of 4096"
	.size	.L.str.2, 47

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"horizontal_size must be a even (4:2:0 / 4:2:2)"
	.size	.L.str.3, 47

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"vertical_size must be between 1 and 16383"
	.size	.L.str.4, 42

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"vertical size must be less than 4096 (MPEG-1)"
	.size	.L.str.5, 46

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"vertical_size must not be a multiple of 4096"
	.size	.L.str.6, 45

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"vertical_size must be a even (4:2:0)"
	.size	.L.str.7, 37

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"vertical_size must be a even (field pictures)"
	.size	.L.str.8, 46

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"vertical_size must be a multiple of 4 (4:2:0 field pictures)"
	.size	.L.str.9, 61

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"pel_aspect_ratio must be between 1 and 14 (MPEG-1)"
	.size	.L.str.10, 51

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"aspect_ratio_information must be 1, 2, 3 or 4"
	.size	.L.str.11, 46

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"frame_rate code must be between 1 and 8"
	.size	.L.str.12, 40

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"bit_rate must be positive"
	.size	.L.str.13, 26

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"bit_rate must be less than 429 Gbit/s"
	.size	.L.str.14, 38

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"bit_rate must be less than 104 Mbit/s (MPEG-1)"
	.size	.L.str.15, 47

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"vbv_buffer_size must be in range 1..(2^18-1)"
	.size	.L.str.16, 45

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"vbv_buffer_size must be less than 1024 (MPEG-1)"
	.size	.L.str.17, 48

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"chroma_format must be in range 1...3"
	.size	.L.str.18, 37

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"video_format must be in range 0...4"
	.size	.L.str.19, 36

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"color_primaries must be in range 1...2 or 4...7"
	.size	.L.str.20, 48

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"transfer_characteristics must be in range 1...2 or 4...7"
	.size	.L.str.21, 57

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"matrix_coefficients must be in range 1...2 or 4...7"
	.size	.L.str.22, 52

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"display_horizontal_size must be in range 0...16383"
	.size	.L.str.23, 51

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"display_vertical_size must be in range 0...16383"
	.size	.L.str.24, 49

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"intra_dc_precision must be in range 0...3"
	.size	.L.str.25, 42

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"f_code must be between 1 and 9"
	.size	.L.str.26, 31

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"f_code must be le less than 8"
	.size	.L.str.27, 30

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"search window must be positive"
	.size	.L.str.28, 31

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"profile must be between 0 and 15"
	.size	.L.str.29, 33

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"level must be between 0 and 15"
	.size	.L.str.30, 31

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Warning: profile uses a reserved value, conformance checks skipped\n"
	.size	.L.str.31, 68

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"undefined Profile"
	.size	.L.str.32, 18

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"This encoder currently generates no scalable bitstreams"
	.size	.L.str.33, 56

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"undefined Level"
	.size	.L.str.34, 16

	.type	maxval_tab,@object              # @maxval_tab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
maxval_tab:
	.word	9                               # 0x9
	.word	5                               # 0x5
	.word	1920                            # 0x780
	.word	1152                            # 0x480
	.word	62668800                        # 0x3bc4000
	.word	80                              # 0x50
	.word	597                             # 0x255
	.word	9                               # 0x9
	.word	5                               # 0x5
	.word	1440                            # 0x5a0
	.word	1152                            # 0x480
	.word	47001600                        # 0x2cd3000
	.word	60                              # 0x3c
	.word	448                             # 0x1c0
	.word	8                               # 0x8
	.word	5                               # 0x5
	.word	720                             # 0x2d0
	.word	576                             # 0x240
	.word	10368000                        # 0x9e3400
	.word	15                              # 0xf
	.word	112                             # 0x70
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	352                             # 0x160
	.word	288                             # 0x120
	.word	3041280                         # 0x2e6800
	.word	4                               # 0x4
	.word	29                              # 0x1d
	.size	maxval_tab, 112

	.type	profile_level_defined,@object   # @profile_level_defined
profile_level_defined:
	.asciz	"\001\001\001"
	.asciz	"\000\001\000"
	.ascii	"\000\000\001\001"
	.zero	4,1
	.asciz	"\000\000\001"
	.size	profile_level_defined, 20

	.type	.L.str.35,@object               # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"undefined profile@level combination"
	.size	.L.str.35, 36

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Simple Profile does not allow B pictures"
	.size	.L.str.36, 41

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"chroma format must be 4:2:0 in specified Profile"
	.size	.L.str.37, 49

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"chroma format must be 4:2:0 or 4:2:2 in High Profile"
	.size	.L.str.38, 53

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"repeat_first_first must be zero"
	.size	.L.str.39, 32

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"11 bit DC precision only allowed in High Profile"
	.size	.L.str.40, 49

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"Picture rate greater than permitted in specified Level"
	.size	.L.str.41, 55

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"forward horizontal f_code greater than permitted in specified Level"
	.size	.L.str.42, 68

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"forward vertical f_code greater than permitted in specified Level"
	.size	.L.str.43, 66

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"backward horizontal f_code greater than permitted in specified Level"
	.size	.L.str.44, 69

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"backward vertical f_code greater than permitted in specified Level"
	.size	.L.str.45, 67

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Horizontal size is greater than permitted in specified Level"
	.size	.L.str.46, 61

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Sample rate is greater than permitted in specified Level"
	.size	.L.str.47, 57

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Bit rate is greater than permitted in specified Level"
	.size	.L.str.48, 54

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"vbv_buffer_size exceeds High Level limit"
	.size	.L.str.49, 41

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
