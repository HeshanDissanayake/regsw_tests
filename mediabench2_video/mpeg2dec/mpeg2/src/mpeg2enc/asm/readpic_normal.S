	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"readpic.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function readframe
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_1:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI0_2:
	.quad	0x4030800000000000              # double 16.5
.LCPI0_3:
	.quad	0x3feb600000000000              # double 0.85546875
.LCPI0_4:
	.quad	0x4060100000000000              # double 128.5
.LCPI0_5:
	.quad	0x3fec000000000000              # double 0.875
	.text
	.globl	readframe
	.p2align	2
	.type	readframe,@function
readframe:                              # @readframe
# %bb.0:
	addi	sp, sp, -304
	sd	ra, 296(sp)                     # 8-byte Folded Spill
	sd	s0, 288(sp)                     # 8-byte Folded Spill
	sd	s1, 280(sp)                     # 8-byte Folded Spill
	sd	s2, 272(sp)                     # 8-byte Folded Spill
	sd	s3, 264(sp)                     # 8-byte Folded Spill
	sd	s4, 256(sp)                     # 8-byte Folded Spill
	sd	s5, 248(sp)                     # 8-byte Folded Spill
	sd	s6, 240(sp)                     # 8-byte Folded Spill
	sd	s7, 232(sp)                     # 8-byte Folded Spill
	sd	s8, 224(sp)                     # 8-byte Folded Spill
	sd	s9, 216(sp)                     # 8-byte Folded Spill
	sd	s10, 208(sp)                    # 8-byte Folded Spill
	sd	s11, 200(sp)                    # 8-byte Folded Spill
	fsd	fs0, 192(sp)                    # 8-byte Folded Spill
	fsd	fs1, 184(sp)                    # 8-byte Folded Spill
	fsd	fs2, 176(sp)                    # 8-byte Folded Spill
	fsd	fs3, 168(sp)                    # 8-byte Folded Spill
	fsd	fs4, 160(sp)                    # 8-byte Folded Spill
	fsd	fs5, 152(sp)                    # 8-byte Folded Spill
	fsd	fs6, 144(sp)                    # 8-byte Folded Spill
	fsd	fs7, 136(sp)                    # 8-byte Folded Spill
	fsd	fs8, 128(sp)                    # 8-byte Folded Spill
	lui	a2, %hi(inputtype)
	lw	a3, %lo(inputtype)(a2)
	li	a2, 2
	mv	s0, a1
	mv	s1, a0
	beq	a3, a2, .LBB0_79
# %bb.1:
	li	a0, 1
	beq	a3, a0, .LBB0_54
# %bb.2:
	beqz	a3, .LBB0_3
	j	.LBB0_230
.LBB0_3:
	lui	a0, %hi(chroma_format)
	lw	s6, %lo(chroma_format)(a0)
	lui	a0, %hi(horizontal_size)
	lw	s5, %lo(horizontal_size)(a0)
	lui	s7, %hi(vertical_size)
	lw	s4, %lo(vertical_size)(s7)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	a0, sp
	mv	a2, s1
	call	sprintf
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	mv	a0, sp
	call	fopen
	mv	s2, a0
	bnez	a0, .LBB0_5
# %bb.4:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	mv	a2, sp
	mv	a0, s3
	call	sprintf
	mv	a0, s3
	call	error
.LBB0_5:
	lw	a0, %lo(vertical_size)(s7)
	blez	a0, .LBB0_8
# %bb.6:                                # %.preheader
	li	s3, 0
	lui	s7, %hi(width)
	lui	s8, %hi(horizontal_size)
	lui	s9, %hi(vertical_size)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	lw	a0, %lo(width)(s7)
	ld	a1, 0(s0)
	lw	a2, %lo(horizontal_size)(s8)
	mulw	a0, a0, s3
	add	a0, a1, a0
	li	a1, 1
	mv	a3, s2
	call	fread
	lw	a0, %lo(vertical_size)(s9)
	addiw	s3, s3, 1
	blt	s3, a0, .LBB0_7
.LBB0_8:
	addi	s3, s6, -1
	mv	a0, s2
	call	fclose
	ld	a0, 0(s0)
	lui	a1, %hi(vertical_size)
	lw	a1, %lo(vertical_size)(a1)
	lui	a2, %hi(width)
	lw	a2, %lo(width)(a2)
	lui	a3, %hi(height)
	lw	a3, %lo(height)(a3)
	blez	a1, .LBB0_14
# %bb.9:
	lui	a4, %hi(horizontal_size)
	lw	a5, %lo(horizontal_size)(a4)
	bge	a5, a2, .LBB0_14
# %bb.10:
	li	a4, 0
	add	a5, a0, a5
	addi	a6, a5, -1
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	mul	t0, a2, a4
	add	a7, a6, t0
	lbu	a7, 0(a7)
	add	t0, a2, t0
	add	t0, a0, t0
	mv	t1, a5
.LBB0_12:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sb	a7, 0(t1)
	addi	t1, t1, 1
	bne	t1, t0, .LBB0_12
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	addi	a4, a4, 1
	add	a5, a5, a2
	bne	a4, a1, .LBB0_11
.LBB0_14:
	addi	s6, s6, -3
	seqz	a4, s3
	blez	a2, .LBB0_20
# %bb.15:
	bge	a1, a3, .LBB0_20
# %bb.16:
	li	a5, 0
	mul	a6, a1, a2
	add	a6, a0, a6
	addi	a7, a1, -1
	mul	a7, a7, a2
	add	a7, a0, a7
	addi	t0, a1, 1
	mul	t0, t0, a2
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
	mul	t1, a2, a5
	add	t1, t0, t1
	add	t1, a0, t1
	mv	t2, a7
	mv	t3, a6
.LBB0_18:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t4, 0(t2)
	sb	t4, 0(t3)
	addi	t3, t3, 1
	addi	t2, t2, 1
	bne	t3, t1, .LBB0_18
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	addi	a1, a1, 1
	add	a6, a6, a2
	add	a7, a7, a2
	addi	a5, a5, 1
	bne	a1, a3, .LBB0_17
.LBB0_20:
	snez	s6, s6
	sraw	s4, s4, a4
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	mv	a0, sp
	mv	a2, s1
	call	sprintf
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	mv	a0, sp
	call	fopen
	mv	s3, a0
	bnez	a0, .LBB0_22
# %bb.21:
	lui	s2, %hi(errortext)
	addi	s2, s2, %lo(errortext)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	mv	a2, sp
	mv	a0, s2
	call	sprintf
	mv	a0, s2
	call	error
.LBB0_22:
	sraw	s2, s5, s6
	blez	s4, .LBB0_25
# %bb.23:
	li	s5, 0
	lui	s6, %hi(chrom_width)
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	lw	a0, %lo(chrom_width)(s6)
	ld	a1, 8(s0)
	mulw	a0, a0, s5
	add	a0, a1, a0
	li	a1, 1
	mv	a2, s2
	mv	a3, s3
	call	fread
	addiw	s5, s5, 1
	bne	s4, s5, .LBB0_24
.LBB0_25:
	mv	a0, s3
	call	fclose
	ld	a0, 8(s0)
	lui	a1, %hi(chrom_width)
	lw	a1, %lo(chrom_width)(a1)
	lui	a2, %hi(chrom_height)
	lw	a2, %lo(chrom_height)(a2)
	blez	s4, .LBB0_31
# %bb.26:
	bge	s2, a1, .LBB0_31
# %bb.27:
	li	a3, 0
	add	a4, a0, s2
	addi	a5, a4, -1
.LBB0_28:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
	mul	a7, a1, a3
	add	a6, a5, a7
	lbu	a6, 0(a6)
	add	a7, a1, a7
	add	a7, a0, a7
	mv	t0, a4
.LBB0_29:                               #   Parent Loop BB0_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sb	a6, 0(t0)
	addi	t0, t0, 1
	bne	t0, a7, .LBB0_29
# %bb.30:                               #   in Loop: Header=BB0_28 Depth=1
	addi	a3, a3, 1
	add	a4, a4, a1
	bne	a3, s4, .LBB0_28
.LBB0_31:
	blez	a1, .LBB0_37
# %bb.32:
	bge	s4, a2, .LBB0_37
# %bb.33:
	li	a3, 0
	mul	a4, s4, a1
	add	a4, a0, a4
	addi	a5, s4, -1
	mul	a5, a5, a1
	add	a5, a0, a5
	addi	a6, s4, 1
	mul	a6, a6, a1
	mv	a7, s4
.LBB0_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
	mul	t0, a1, a3
	add	t0, a6, t0
	add	t0, a0, t0
	mv	t1, a5
	mv	t2, a4
.LBB0_35:                               #   Parent Loop BB0_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, 0(t1)
	sb	t3, 0(t2)
	addi	t2, t2, 1
	addi	t1, t1, 1
	bne	t2, t0, .LBB0_35
# %bb.36:                               #   in Loop: Header=BB0_34 Depth=1
	addi	a7, a7, 1
	add	a4, a4, a1
	add	a5, a5, a1
	addi	a3, a3, 1
	bne	a7, a2, .LBB0_34
.LBB0_37:
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	mv	a0, sp
	mv	a2, s1
	call	sprintf
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	mv	a0, sp
	call	fopen
	mv	s1, a0
	bnez	a0, .LBB0_39
# %bb.38:
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	mv	a2, sp
	mv	a0, s3
	call	sprintf
	mv	a0, s3
	call	error
.LBB0_39:
	blez	s4, .LBB0_42
# %bb.40:
	li	s3, 0
	lui	s5, %hi(chrom_width)
.LBB0_41:                               # =>This Inner Loop Header: Depth=1
	lw	a0, %lo(chrom_width)(s5)
	ld	a1, 16(s0)
	mulw	a0, a0, s3
	add	a0, a1, a0
	li	a1, 1
	mv	a2, s2
	mv	a3, s1
	call	fread
	addiw	s3, s3, 1
	bne	s4, s3, .LBB0_41
.LBB0_42:
	mv	a0, s1
	call	fclose
	ld	a0, 16(s0)
	lui	a1, %hi(chrom_width)
	lw	a1, %lo(chrom_width)(a1)
	lui	a2, %hi(chrom_height)
	lw	a2, %lo(chrom_height)(a2)
	blez	s4, .LBB0_48
# %bb.43:
	bge	s2, a1, .LBB0_48
# %bb.44:
	li	a3, 0
	add	s2, a0, s2
	addi	a4, s2, -1
.LBB0_45:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
	mul	a6, a1, a3
	add	a5, a4, a6
	lbu	a5, 0(a5)
	add	a6, a1, a6
	add	a6, a0, a6
	mv	a7, s2
.LBB0_46:                               #   Parent Loop BB0_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sb	a5, 0(a7)
	addi	a7, a7, 1
	bne	a7, a6, .LBB0_46
# %bb.47:                               #   in Loop: Header=BB0_45 Depth=1
	addi	a3, a3, 1
	add	s2, s2, a1
	bne	a3, s4, .LBB0_45
.LBB0_48:
	blez	a1, .LBB0_230
# %bb.49:
	bge	s4, a2, .LBB0_230
# %bb.50:
	li	a3, 0
	mul	a4, s4, a1
	add	a4, a0, a4
	addi	a5, s4, -1
	mul	a5, a5, a1
	add	a5, a0, a5
	addi	a6, s4, 1
	mul	a6, a6, a1
.LBB0_51:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
	mul	a7, a1, a3
	add	a7, a6, a7
	add	a7, a0, a7
	mv	t0, a5
	mv	t1, a4
.LBB0_52:                               #   Parent Loop BB0_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t2, 0(t0)
	sb	t2, 0(t1)
	addi	t1, t1, 1
	addi	t0, t0, 1
	bne	t1, a7, .LBB0_52
# %bb.53:                               #   in Loop: Header=BB0_51 Depth=1
	addi	s4, s4, 1
	add	a4, a4, a1
	add	a5, a5, a1
	addi	a3, a3, 1
	bne	s4, a2, .LBB0_51
	j	.LBB0_230
.LBB0_54:
	lui	a0, %hi(chroma_format)
	lw	s5, %lo(chroma_format)(a0)
	lui	a0, %hi(horizontal_size)
	lw	s4, %lo(horizontal_size)(a0)
	lui	s6, %hi(vertical_size)
	lw	s3, %lo(vertical_size)(s6)
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	mv	a0, sp
	mv	a2, s1
	call	sprintf
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	mv	a0, sp
	call	fopen
	mv	s1, a0
	bnez	a0, .LBB0_56
# %bb.55:
	lui	s2, %hi(errortext)
	addi	s2, s2, %lo(errortext)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	mv	a2, sp
	mv	a0, s2
	call	sprintf
	mv	a0, s2
	call	error
.LBB0_56:
	lw	a0, %lo(vertical_size)(s6)
	addi	s2, s5, -1
	blez	a0, .LBB0_59
# %bb.57:                               # %.preheader15
	li	s6, 0
	lui	s7, %hi(width)
	lui	s8, %hi(horizontal_size)
	lui	s9, %hi(vertical_size)
.LBB0_58:                               # =>This Inner Loop Header: Depth=1
	lw	a0, %lo(width)(s7)
	ld	a1, 0(s0)
	lw	a2, %lo(horizontal_size)(s8)
	mulw	a0, a0, s6
	add	a0, a1, a0
	li	a1, 1
	mv	a3, s1
	call	fread
	lw	a0, %lo(vertical_size)(s9)
	addiw	s6, s6, 1
	blt	s6, a0, .LBB0_58
.LBB0_59:
	ld	a1, 0(s0)
	lui	a2, %hi(width)
	lw	a2, %lo(width)(a2)
	lui	a3, %hi(height)
	lw	a3, %lo(height)(a3)
	addi	s5, s5, -3
	seqz	a5, s2
	blez	a0, .LBB0_65
# %bb.60:
	lui	a4, %hi(horizontal_size)
	lw	a6, %lo(horizontal_size)(a4)
	bge	a6, a2, .LBB0_65
# %bb.61:
	li	a4, 0
	add	a6, a1, a6
	addi	a7, a6, -1
.LBB0_62:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_63 Depth 2
	mul	t1, a2, a4
	add	t0, a7, t1
	lbu	t0, 0(t0)
	add	t1, a2, t1
	add	t1, a1, t1
	mv	t2, a6
.LBB0_63:                               #   Parent Loop BB0_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sb	t0, 0(t2)
	addi	t2, t2, 1
	bne	t2, t1, .LBB0_63
# %bb.64:                               #   in Loop: Header=BB0_62 Depth=1
	addi	a4, a4, 1
	add	a6, a6, a2
	bne	a4, a0, .LBB0_62
.LBB0_65:
	snez	a4, s5
	sraw	s3, s3, a5
	blez	a2, .LBB0_71
# %bb.66:
	bge	a0, a3, .LBB0_71
# %bb.67:
	li	a5, 0
	mul	a6, a0, a2
	add	a6, a1, a6
	addi	a7, a0, -1
	mul	a7, a7, a2
	add	a7, a1, a7
	addi	t0, a0, 1
	mul	t0, t0, a2
.LBB0_68:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_69 Depth 2
	mul	t1, a2, a5
	add	t1, t0, t1
	add	t1, a1, t1
	mv	t2, a7
	mv	t3, a6
.LBB0_69:                               #   Parent Loop BB0_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t4, 0(t2)
	sb	t4, 0(t3)
	addi	t3, t3, 1
	addi	t2, t2, 1
	bne	t3, t1, .LBB0_69
# %bb.70:                               #   in Loop: Header=BB0_68 Depth=1
	addi	a0, a0, 1
	add	a6, a6, a2
	add	a7, a7, a2
	addi	a5, a5, 1
	bne	a0, a3, .LBB0_68
.LBB0_71:
	sraw	s2, s4, a4
	blez	s3, .LBB0_127
# %bb.72:
	li	s4, 0
	lui	s5, %hi(chrom_width)
.LBB0_73:                               # =>This Inner Loop Header: Depth=1
	lw	a0, %lo(chrom_width)(s5)
	ld	a1, 8(s0)
	mulw	a0, a0, s4
	add	a0, a1, a0
	li	a1, 1
	mv	a2, s2
	mv	a3, s1
	call	fread
	addiw	s4, s4, 1
	bne	s3, s4, .LBB0_73
# %bb.74:
	ld	a0, 8(s0)
	lui	a1, %hi(chrom_width)
	lw	a1, %lo(chrom_width)(a1)
	lui	a2, %hi(chrom_height)
	lw	a2, %lo(chrom_height)(a2)
	bge	s2, a1, .LBB0_128
# %bb.75:
	li	a3, 0
	add	a4, a0, s2
	addi	a5, a4, -1
.LBB0_76:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_77 Depth 2
	mul	a7, a1, a3
	add	a6, a5, a7
	lbu	a6, 0(a6)
	add	a7, a1, a7
	add	a7, a0, a7
	mv	t0, a4
.LBB0_77:                               #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sb	a6, 0(t0)
	addi	t0, t0, 1
	bne	t0, a7, .LBB0_77
# %bb.78:                               #   in Loop: Header=BB0_76 Depth=1
	addi	a3, a3, 1
	add	a4, a4, a1
	bne	a3, s3, .LBB0_76
	j	.LBB0_128
.LBB0_79:
	lui	a0, %hi(matrix_coefficients)
	lw	a0, %lo(matrix_coefficients)(a0)
	li	a1, 8
	blt	a1, a0, .LBB0_81
# %bb.80:
	addiw	a2, a0, -1
.LBB0_81:
	li	a0, 24
	mul	a0, a2, a0
	lui	a1, %hi(read_ppm.coef)
	addi	a1, a1, %lo(read_ppm.coef)
	add	a0, a1, a0
	fld	fs0, 0(a0)
	fld	fs1, 8(a0)
	lui	a1, %hi(chroma_format)
	lw	a1, %lo(chroma_format)(a1)
	fld	fs2, 16(a0)
	li	a0, 3
	bne	a1, a0, .LBB0_83
# %bb.82:
	ld	a0, 8(s0)
	ld	a1, 16(s0)
	lui	a2, %hi(read_ppm.u444)
	sd	a0, %lo(read_ppm.u444)(a2)
	lui	a0, %hi(read_ppm.v444)
	sd	a1, %lo(read_ppm.v444)(a0)
	j	.LBB0_93
.LBB0_83:
	lui	s5, %hi(read_ppm.u444)
	ld	a0, %lo(read_ppm.u444)(s5)
	bnez	a0, .LBB0_93
# %bb.84:
	lui	s3, %hi(width)
	lw	a0, %lo(width)(s3)
	lui	s4, %hi(height)
	lw	a1, %lo(height)(s4)
	mulw	s2, a1, a0
	mv	a0, s2
	call	malloc
	sd	a0, %lo(read_ppm.u444)(s5)
	bnez	a0, .LBB0_86
# %bb.85:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	error
	lw	a0, %lo(width)(s3)
	lw	a1, %lo(height)(s4)
	mulw	s2, a1, a0
.LBB0_86:
	mv	a0, s2
	call	malloc
	lui	a1, %hi(read_ppm.v444)
	sd	a0, %lo(read_ppm.v444)(a1)
	bnez	a0, .LBB0_88
# %bb.87:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	error
.LBB0_88:
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	li	a1, 1
	bne	a0, a1, .LBB0_93
# %bb.89:
	lui	s3, %hi(width)
	lw	a0, %lo(width)(s3)
	lui	s4, %hi(height)
	lw	a1, %lo(height)(s4)
	srli	a0, a0, 1
	mulw	s2, a0, a1
	mv	a0, s2
	call	malloc
	lui	a1, %hi(read_ppm.u422)
	sd	a0, %lo(read_ppm.u422)(a1)
	bnez	a0, .LBB0_91
# %bb.90:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	error
	lw	a0, %lo(width)(s3)
	lw	a1, %lo(height)(s4)
	srli	a0, a0, 1
	mulw	s2, a0, a1
.LBB0_91:
	mv	a0, s2
	call	malloc
	lui	a1, %hi(read_ppm.v422)
	sd	a0, %lo(read_ppm.v422)(a1)
	bnez	a0, .LBB0_93
# %bb.92:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	error
.LBB0_93:
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	mv	a0, sp
	mv	a2, s1
	call	sprintf
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	mv	a0, sp
	call	fopen
	mv	s1, a0
	beqz	a0, .LBB0_150
# %bb.94:
	mv	a0, s1
	call	getc
	mv	a0, s1
	call	getc
	li	s2, 35
	li	s3, 13
	li	s4, 10
	li	s5, 32
	lui	a0, 2048
	addiw	a0, a0, 19
	slli	s6, a0, 9
.LBB0_95:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_96 Depth 2
	mv	a0, s1
	call	getc
	andi	a1, a0, 255
	bne	a1, s2, .LBB0_98
.LBB0_96:                               #   Parent Loop BB0_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s1
	call	getc
	andi	a1, a0, 255
	beq	a1, s3, .LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_96 Depth=2
	bne	a1, s4, .LBB0_96
.LBB0_98:                               #   in Loop: Header=BB0_95 Depth=1
	andi	a0, a0, 255
	bltu	s5, a0, .LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_95 Depth=1
	srl	a0, s6, a0
	andi	a0, a0, 1
	bnez	a0, .LBB0_95
.LBB0_100:                              # %.preheader58
	li	s2, 35
	li	s3, 13
	li	s4, 10
	j	.LBB0_102
.LBB0_101:                              #   in Loop: Header=BB0_102 Depth=1
	addi	a0, a0, -48
	bgeu	a0, s4, .LBB0_105
.LBB0_102:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_103 Depth 2
	mv	a0, s1
	call	getc
	andi	a0, a0, 255
	bne	a0, s2, .LBB0_101
.LBB0_103:                              #   Parent Loop BB0_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s1
	call	getc
	andi	a0, a0, 255
	beq	a0, s3, .LBB0_101
# %bb.104:                              #   in Loop: Header=BB0_103 Depth=2
	bne	a0, s4, .LBB0_103
	j	.LBB0_101
.LBB0_105:                              # %.preheader55
	li	s2, 35
	li	s3, 13
	li	s4, 10
	li	s5, 32
	lui	a0, 2048
	addiw	a0, a0, 19
	slli	s6, a0, 9
.LBB0_106:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_107 Depth 2
	mv	a0, s1
	call	getc
	andi	a1, a0, 255
	bne	a1, s2, .LBB0_109
.LBB0_107:                              #   Parent Loop BB0_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s1
	call	getc
	andi	a1, a0, 255
	beq	a1, s3, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_107 Depth=2
	bne	a1, s4, .LBB0_107
.LBB0_109:                              #   in Loop: Header=BB0_106 Depth=1
	andi	a0, a0, 255
	bltu	s5, a0, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_106 Depth=1
	srl	a0, s6, a0
	andi	a0, a0, 1
	bnez	a0, .LBB0_106
.LBB0_111:                              # %.preheader52
	li	s2, 35
	li	s3, 13
	li	s4, 10
	j	.LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_113 Depth=1
	addi	a0, a0, -48
	bgeu	a0, s4, .LBB0_116
.LBB0_113:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_114 Depth 2
	mv	a0, s1
	call	getc
	andi	a0, a0, 255
	bne	a0, s2, .LBB0_112
.LBB0_114:                              #   Parent Loop BB0_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s1
	call	getc
	andi	a0, a0, 255
	beq	a0, s3, .LBB0_112
# %bb.115:                              #   in Loop: Header=BB0_114 Depth=2
	bne	a0, s4, .LBB0_114
	j	.LBB0_112
.LBB0_116:                              # %.preheader49
	li	s2, 35
	li	s3, 13
	li	s4, 10
	li	s5, 32
	lui	a0, 2048
	addiw	a0, a0, 19
	slli	s6, a0, 9
.LBB0_117:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_118 Depth 2
	mv	a0, s1
	call	getc
	andi	a1, a0, 255
	bne	a1, s2, .LBB0_120
.LBB0_118:                              #   Parent Loop BB0_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s1
	call	getc
	andi	a1, a0, 255
	beq	a1, s3, .LBB0_120
# %bb.119:                              #   in Loop: Header=BB0_118 Depth=2
	bne	a1, s4, .LBB0_118
.LBB0_120:                              #   in Loop: Header=BB0_117 Depth=1
	andi	a0, a0, 255
	bltu	s5, a0, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_117 Depth=1
	srl	a0, s6, a0
	andi	a0, a0, 1
	bnez	a0, .LBB0_117
.LBB0_122:                              # %.preheader45
	li	s2, 35
	li	s3, 13
	li	s4, 10
	j	.LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_124 Depth=1
	addi	a0, a0, -48
	bgeu	a0, s4, .LBB0_183
.LBB0_124:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_125 Depth 2
	mv	a0, s1
	call	getc
	andi	a0, a0, 255
	bne	a0, s2, .LBB0_123
.LBB0_125:                              #   Parent Loop BB0_124 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s1
	call	getc
	andi	a0, a0, 255
	beq	a0, s3, .LBB0_123
# %bb.126:                              #   in Loop: Header=BB0_125 Depth=2
	bne	a0, s4, .LBB0_125
	j	.LBB0_123
.LBB0_127:
	ld	a0, 8(s0)
	lui	a1, %hi(chrom_width)
	lw	a1, %lo(chrom_width)(a1)
	lui	a2, %hi(chrom_height)
	lw	a2, %lo(chrom_height)(a2)
.LBB0_128:
	bge	s3, a2, .LBB0_134
# %bb.129:
	blez	a1, .LBB0_134
# %bb.130:
	li	a3, 0
	mul	a4, s3, a1
	add	a4, a0, a4
	addi	a5, s3, -1
	mul	a5, a5, a1
	add	a5, a0, a5
	addi	a6, s3, 1
	mul	a6, a6, a1
	mv	a7, s3
.LBB0_131:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_132 Depth 2
	mul	t0, a1, a3
	add	t0, a6, t0
	add	t0, a0, t0
	mv	t1, a5
	mv	t2, a4
.LBB0_132:                              #   Parent Loop BB0_131 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, 0(t1)
	sb	t3, 0(t2)
	addi	t2, t2, 1
	addi	t1, t1, 1
	bne	t2, t0, .LBB0_132
# %bb.133:                              #   in Loop: Header=BB0_131 Depth=1
	addi	a7, a7, 1
	add	a4, a4, a1
	add	a5, a5, a1
	addi	a3, a3, 1
	bne	a7, a2, .LBB0_131
.LBB0_134:
	blez	s3, .LBB0_142
# %bb.135:
	li	s4, 0
	lui	s5, %hi(chrom_width)
.LBB0_136:                              # =>This Inner Loop Header: Depth=1
	lw	a0, %lo(chrom_width)(s5)
	ld	a1, 16(s0)
	mulw	a0, a0, s4
	add	a0, a1, a0
	li	a1, 1
	mv	a2, s2
	mv	a3, s1
	call	fread
	addiw	s4, s4, 1
	bne	s3, s4, .LBB0_136
# %bb.137:
	ld	a0, 16(s0)
	lui	a1, %hi(chrom_width)
	lw	a1, %lo(chrom_width)(a1)
	lui	a2, %hi(chrom_height)
	lw	a2, %lo(chrom_height)(a2)
	bge	s2, a1, .LBB0_143
# %bb.138:
	li	a3, 0
	add	s2, a0, s2
	addi	a4, s2, -1
.LBB0_139:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_140 Depth 2
	mul	a6, a1, a3
	add	a5, a4, a6
	lbu	a5, 0(a5)
	add	a6, a1, a6
	add	a6, a0, a6
	mv	a7, s2
.LBB0_140:                              #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sb	a5, 0(a7)
	addi	a7, a7, 1
	bne	a7, a6, .LBB0_140
# %bb.141:                              #   in Loop: Header=BB0_139 Depth=1
	addi	a3, a3, 1
	add	s2, s2, a1
	bne	a3, s3, .LBB0_139
	j	.LBB0_143
.LBB0_142:
	ld	a0, 16(s0)
	lui	a1, %hi(chrom_width)
	lw	a1, %lo(chrom_width)(a1)
	lui	a2, %hi(chrom_height)
	lw	a2, %lo(chrom_height)(a2)
.LBB0_143:
	bge	s3, a2, .LBB0_149
# %bb.144:
	blez	a1, .LBB0_149
# %bb.145:
	li	a3, 0
	mul	a4, s3, a1
	add	a4, a0, a4
	addi	a5, s3, -1
	mul	a5, a5, a1
	add	a5, a0, a5
	addi	a6, s3, 1
	mul	a6, a6, a1
.LBB0_146:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_147 Depth 2
	mul	a7, a1, a3
	add	a7, a6, a7
	add	a7, a0, a7
	mv	t0, a5
	mv	t1, a4
.LBB0_147:                              #   Parent Loop BB0_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t2, 0(t0)
	sb	t2, 0(t1)
	addi	t1, t1, 1
	addi	t0, t0, 1
	bne	t1, a7, .LBB0_147
# %bb.148:                              #   in Loop: Header=BB0_146 Depth=1
	addi	s3, s3, 1
	add	a4, a4, a1
	add	a5, a5, a1
	addi	a3, a3, 1
	bne	s3, a2, .LBB0_146
.LBB0_149:
	mv	a0, s1
	call	fclose
	j	.LBB0_230
.LBB0_150:
	lui	s2, %hi(errortext)
	addi	s2, s2, %lo(errortext)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	mv	a2, sp
	mv	a0, s2
	call	sprintf
	mv	a0, s2
	call	error
	li	a0, 0
	call	getc
	li	a0, 0
	call	getc
	li	s2, 35
	li	s3, 13
	li	s4, 10
	li	s5, 32
	lui	a0, 2048
	addiw	a0, a0, 19
	slli	s6, a0, 9
.LBB0_151:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_152 Depth 2
	li	a0, 0
	call	getc
	andi	a1, a0, 255
	bne	a1, s2, .LBB0_154
.LBB0_152:                              #   Parent Loop BB0_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 0
	call	getc
	andi	a1, a0, 255
	beq	a1, s3, .LBB0_154
# %bb.153:                              #   in Loop: Header=BB0_152 Depth=2
	bne	a1, s4, .LBB0_152
.LBB0_154:                              #   in Loop: Header=BB0_151 Depth=1
	andi	a0, a0, 255
	bltu	s5, a0, .LBB0_156
# %bb.155:                              #   in Loop: Header=BB0_151 Depth=1
	srl	a0, s6, a0
	andi	a0, a0, 1
	bnez	a0, .LBB0_151
.LBB0_156:                              # %.preheader40
	li	s2, 35
	li	s3, 13
	li	s4, 10
	j	.LBB0_158
.LBB0_157:                              #   in Loop: Header=BB0_158 Depth=1
	addi	a0, a0, -48
	bgeu	a0, s4, .LBB0_161
.LBB0_158:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_159 Depth 2
	li	a0, 0
	call	getc
	andi	a0, a0, 255
	bne	a0, s2, .LBB0_157
.LBB0_159:                              #   Parent Loop BB0_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 0
	call	getc
	andi	a0, a0, 255
	beq	a0, s3, .LBB0_157
# %bb.160:                              #   in Loop: Header=BB0_159 Depth=2
	bne	a0, s4, .LBB0_159
	j	.LBB0_157
.LBB0_161:                              # %.preheader37
	li	s2, 35
	li	s3, 13
	li	s4, 10
	li	s5, 32
	lui	a0, 2048
	addiw	a0, a0, 19
	slli	s6, a0, 9
.LBB0_162:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_163 Depth 2
	li	a0, 0
	call	getc
	andi	a1, a0, 255
	bne	a1, s2, .LBB0_165
.LBB0_163:                              #   Parent Loop BB0_162 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 0
	call	getc
	andi	a1, a0, 255
	beq	a1, s3, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_163 Depth=2
	bne	a1, s4, .LBB0_163
.LBB0_165:                              #   in Loop: Header=BB0_162 Depth=1
	andi	a0, a0, 255
	bltu	s5, a0, .LBB0_167
# %bb.166:                              #   in Loop: Header=BB0_162 Depth=1
	srl	a0, s6, a0
	andi	a0, a0, 1
	bnez	a0, .LBB0_162
.LBB0_167:                              # %.preheader34
	li	s2, 35
	li	s3, 13
	li	s4, 10
	j	.LBB0_169
.LBB0_168:                              #   in Loop: Header=BB0_169 Depth=1
	addi	a0, a0, -48
	bgeu	a0, s4, .LBB0_172
.LBB0_169:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_170 Depth 2
	li	a0, 0
	call	getc
	andi	a0, a0, 255
	bne	a0, s2, .LBB0_168
.LBB0_170:                              #   Parent Loop BB0_169 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 0
	call	getc
	andi	a0, a0, 255
	beq	a0, s3, .LBB0_168
# %bb.171:                              #   in Loop: Header=BB0_170 Depth=2
	bne	a0, s4, .LBB0_170
	j	.LBB0_168
.LBB0_172:                              # %.preheader31
	li	s2, 35
	li	s3, 13
	li	s4, 10
	li	s5, 32
	lui	a0, 2048
	addiw	a0, a0, 19
	slli	s6, a0, 9
.LBB0_173:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_174 Depth 2
	li	a0, 0
	call	getc
	andi	a1, a0, 255
	bne	a1, s2, .LBB0_176
.LBB0_174:                              #   Parent Loop BB0_173 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 0
	call	getc
	andi	a1, a0, 255
	beq	a1, s3, .LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_174 Depth=2
	bne	a1, s4, .LBB0_174
.LBB0_176:                              #   in Loop: Header=BB0_173 Depth=1
	andi	a0, a0, 255
	bltu	s5, a0, .LBB0_178
# %bb.177:                              #   in Loop: Header=BB0_173 Depth=1
	srl	a0, s6, a0
	andi	a0, a0, 1
	bnez	a0, .LBB0_173
.LBB0_178:                              # %.preheader27
	li	s2, 35
	li	s3, 13
	li	s4, 10
	j	.LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_180 Depth=1
	addi	a0, a0, -48
	bgeu	a0, s4, .LBB0_183
.LBB0_180:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_181 Depth 2
	li	a0, 0
	call	getc
	andi	a0, a0, 255
	bne	a0, s2, .LBB0_179
.LBB0_181:                              #   Parent Loop BB0_180 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 0
	call	getc
	andi	a0, a0, 255
	beq	a0, s3, .LBB0_179
# %bb.182:                              #   in Loop: Header=BB0_181 Depth=2
	bne	a0, s4, .LBB0_181
	j	.LBB0_179
.LBB0_183:
	lui	a0, %hi(vertical_size)
	lw	a0, %lo(vertical_size)(a0)
	blez	a0, .LBB0_190
# %bb.184:
	lui	a1, %hi(.LCPI0_0)
	fld	fa5, %lo(.LCPI0_0)(a1)
	lui	a1, %hi(.LCPI0_1)
	fld	fa4, %lo(.LCPI0_1)(a1)
	li	s5, 0
	fsub.d	fa3, fa5, fs2
	fsub.d	fa5, fa5, fs0
	fdiv.d	fs3, fa4, fa3
	fdiv.d	fs4, fa4, fa5
	lui	s6, %hi(horizontal_size)
	lw	a1, %lo(horizontal_size)(s6)
	lui	a2, %hi(.LCPI0_2)
	fld	fs5, %lo(.LCPI0_2)(a2)
	lui	a2, %hi(.LCPI0_3)
	fld	fs6, %lo(.LCPI0_3)(a2)
	lui	a2, %hi(.LCPI0_4)
	fld	fs7, %lo(.LCPI0_4)(a2)
	lui	a2, %hi(.LCPI0_5)
	fld	fs8, %lo(.LCPI0_5)(a2)
	lui	s8, %hi(read_ppm.u444)
	lui	s9, %hi(read_ppm.v444)
	j	.LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_186 Depth=1
	addiw	s5, s5, 1
	bge	s5, a0, .LBB0_190
.LBB0_186:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_188 Depth 2
	blez	a1, .LBB0_185
# %bb.187:                              # %.preheader23
                                        #   in Loop: Header=BB0_186 Depth=1
	li	s10, 0
	lui	a0, %hi(width)
	lw	a0, %lo(width)(a0)
	ld	s11, %lo(read_ppm.v444)(s9)
	ld	s4, %lo(read_ppm.u444)(s8)
	ld	s7, 0(s0)
	mulw	a0, a0, s5
	add	s11, s11, a0
	add	s4, s4, a0
	add	s7, s7, a0
.LBB0_188:                              #   Parent Loop BB0_186 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s1
	call	getc
	mv	s2, a0
	mv	a0, s1
	call	getc
	mv	s3, a0
	mv	a0, s1
	call	getc
	fcvt.d.w	fa5, s2
	fcvt.d.w	fa4, s3
	fmul.d	fa4, fs1, fa4
	fmadd.d	fa4, fs0, fa5, fa4
	fcvt.d.w	fa3, a0
	fmadd.d	fa4, fs2, fa3, fa4
	fsub.d	fa3, fa3, fa4
	fmul.d	fa3, fs3, fa3
	fsub.d	fa5, fa5, fa4
	fmul.d	fa5, fs4, fa5
	fmadd.d	fa4, fa4, fs6, fs5
	fcvt.lu.d	a0, fa4, rtz
	add	a1, s7, s10
	sb	a0, 0(a1)
	fmadd.d	fa4, fa3, fs8, fs7
	fcvt.lu.d	a0, fa4, rtz
	add	a1, s4, s10
	sb	a0, 0(a1)
	fmadd.d	fa5, fa5, fs8, fs7
	fcvt.lu.d	a0, fa5, rtz
	add	a1, s11, s10
	sb	a0, 0(a1)
	lw	a1, %lo(horizontal_size)(s6)
	addi	s10, s10, 1
	blt	s10, a1, .LBB0_188
# %bb.189:                              #   in Loop: Header=BB0_186 Depth=1
	lui	a0, %hi(vertical_size)
	lw	a0, %lo(vertical_size)(a0)
	j	.LBB0_185
.LBB0_190:
	mv	a0, s1
	call	fclose
	ld	a0, 0(s0)
	lui	a1, %hi(vertical_size)
	lw	a1, %lo(vertical_size)(a1)
	lui	a2, %hi(width)
	lw	a2, %lo(width)(a2)
	lui	a3, %hi(height)
	lw	a3, %lo(height)(a3)
	blez	a1, .LBB0_196
# %bb.191:
	lui	a4, %hi(horizontal_size)
	lw	a5, %lo(horizontal_size)(a4)
	bge	a5, a2, .LBB0_196
# %bb.192:
	li	a4, 0
	add	a5, a0, a5
	addi	a6, a5, -1
.LBB0_193:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_194 Depth 2
	mul	t0, a2, a4
	add	a7, a6, t0
	lbu	a7, 0(a7)
	add	t0, a2, t0
	add	t0, a0, t0
	mv	t1, a5
.LBB0_194:                              #   Parent Loop BB0_193 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sb	a7, 0(t1)
	addi	t1, t1, 1
	bne	t1, t0, .LBB0_194
# %bb.195:                              #   in Loop: Header=BB0_193 Depth=1
	addi	a4, a4, 1
	add	a5, a5, a2
	bne	a4, a1, .LBB0_193
.LBB0_196:
	blez	a2, .LBB0_202
# %bb.197:
	bge	a1, a3, .LBB0_202
# %bb.198:
	li	a4, 0
	mul	a5, a1, a2
	add	a5, a0, a5
	addi	a6, a1, -1
	mul	a6, a6, a2
	add	a6, a0, a6
	addi	a7, a1, 1
	mul	a7, a7, a2
.LBB0_199:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_200 Depth 2
	mul	t0, a2, a4
	add	t0, a7, t0
	add	t0, a0, t0
	mv	t1, a6
	mv	t2, a5
.LBB0_200:                              #   Parent Loop BB0_199 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t3, 0(t1)
	sb	t3, 0(t2)
	addi	t2, t2, 1
	addi	t1, t1, 1
	bne	t2, t0, .LBB0_200
# %bb.201:                              #   in Loop: Header=BB0_199 Depth=1
	addi	a1, a1, 1
	add	a5, a5, a2
	add	a6, a6, a2
	addi	a4, a4, 1
	bne	a1, a3, .LBB0_199
.LBB0_202:
	lui	a0, %hi(read_ppm.u444)
	ld	s1, %lo(read_ppm.u444)(a0)
	lui	a0, %hi(vertical_size)
	lw	a0, %lo(vertical_size)(a0)
	lui	a1, %hi(width)
	lw	a1, %lo(width)(a1)
	lui	a2, %hi(height)
	lw	a2, %lo(height)(a2)
	blez	a0, .LBB0_208
# %bb.203:
	lui	a3, %hi(horizontal_size)
	lw	a4, %lo(horizontal_size)(a3)
	bge	a4, a1, .LBB0_208
# %bb.204:
	li	a3, 0
	add	a4, s1, a4
	addi	a5, a4, -1
.LBB0_205:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_206 Depth 2
	mul	a7, a1, a3
	add	a6, a5, a7
	lbu	a6, 0(a6)
	add	a7, a1, a7
	add	a7, s1, a7
	mv	t0, a4
.LBB0_206:                              #   Parent Loop BB0_205 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sb	a6, 0(t0)
	addi	t0, t0, 1
	bne	t0, a7, .LBB0_206
# %bb.207:                              #   in Loop: Header=BB0_205 Depth=1
	addi	a3, a3, 1
	add	a4, a4, a1
	bne	a3, a0, .LBB0_205
.LBB0_208:
	blez	a1, .LBB0_214
# %bb.209:
	bge	a0, a2, .LBB0_214
# %bb.210:
	li	a3, 0
	mul	a4, a0, a1
	add	a4, s1, a4
	addi	a5, a0, -1
	mul	a5, a5, a1
	add	a5, s1, a5
	addi	a6, a0, 1
	mul	a6, a6, a1
.LBB0_211:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_212 Depth 2
	mul	a7, a1, a3
	add	a7, a6, a7
	add	a7, s1, a7
	mv	t0, a5
	mv	t1, a4
.LBB0_212:                              #   Parent Loop BB0_211 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t2, 0(t0)
	sb	t2, 0(t1)
	addi	t1, t1, 1
	addi	t0, t0, 1
	bne	t1, a7, .LBB0_212
# %bb.213:                              #   in Loop: Header=BB0_211 Depth=1
	addi	a0, a0, 1
	add	a4, a4, a1
	add	a5, a5, a1
	addi	a3, a3, 1
	bne	a0, a2, .LBB0_211
.LBB0_214:
	lui	a0, %hi(read_ppm.v444)
	ld	s2, %lo(read_ppm.v444)(a0)
	lui	a0, %hi(vertical_size)
	lw	a0, %lo(vertical_size)(a0)
	lui	a1, %hi(width)
	lw	a1, %lo(width)(a1)
	lui	a2, %hi(height)
	lw	a2, %lo(height)(a2)
	blez	a0, .LBB0_220
# %bb.215:
	lui	a3, %hi(horizontal_size)
	lw	a4, %lo(horizontal_size)(a3)
	bge	a4, a1, .LBB0_220
# %bb.216:
	li	a3, 0
	add	a4, s2, a4
	addi	a5, a4, -1
.LBB0_217:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_218 Depth 2
	mul	a7, a1, a3
	add	a6, a5, a7
	lbu	a6, 0(a6)
	add	a7, a1, a7
	add	a7, s2, a7
	mv	t0, a4
.LBB0_218:                              #   Parent Loop BB0_217 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sb	a6, 0(t0)
	addi	t0, t0, 1
	bne	t0, a7, .LBB0_218
# %bb.219:                              #   in Loop: Header=BB0_217 Depth=1
	addi	a3, a3, 1
	add	a4, a4, a1
	bne	a3, a0, .LBB0_217
.LBB0_220:
	blez	a1, .LBB0_226
# %bb.221:
	bge	a0, a2, .LBB0_226
# %bb.222:
	li	a3, 0
	mul	a4, a0, a1
	add	a4, s2, a4
	addi	a5, a0, -1
	mul	a5, a5, a1
	add	a5, s2, a5
	addi	a6, a0, 1
	mul	a6, a6, a1
.LBB0_223:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_224 Depth 2
	mul	a7, a1, a3
	add	a7, a6, a7
	add	a7, s2, a7
	mv	t0, a5
	mv	t1, a4
.LBB0_224:                              #   Parent Loop BB0_223 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	t2, 0(t0)
	sb	t2, 0(t1)
	addi	t1, t1, 1
	addi	t0, t0, 1
	bne	t1, a7, .LBB0_224
# %bb.225:                              #   in Loop: Header=BB0_223 Depth=1
	addi	a0, a0, 1
	add	a4, a4, a1
	add	a5, a5, a1
	addi	a3, a3, 1
	bne	a0, a2, .LBB0_223
.LBB0_226:
	lui	s3, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(s3)
	li	a1, 2
	bne	a0, a1, .LBB0_228
# %bb.227:
	ld	a1, 8(s0)
	mv	a0, s1
	call	conv444to422
	ld	a1, 16(s0)
	mv	a0, s2
	call	conv444to422
	lw	a0, %lo(chroma_format)(s3)
.LBB0_228:
	li	a1, 1
	bne	a0, a1, .LBB0_230
# %bb.229:
	lui	a0, %hi(read_ppm.u422)
	ld	s3, %lo(read_ppm.u422)(a0)
	mv	a0, s1
	mv	a1, s3
	call	conv444to422
	lui	a0, %hi(read_ppm.v422)
	ld	s1, %lo(read_ppm.v422)(a0)
	mv	a0, s2
	mv	a1, s1
	call	conv444to422
	ld	a1, 8(s0)
	mv	a0, s3
	call	conv422to420
	ld	a1, 16(s0)
	mv	a0, s1
	call	conv422to420
.LBB0_230:
	ld	ra, 296(sp)                     # 8-byte Folded Reload
	ld	s0, 288(sp)                     # 8-byte Folded Reload
	ld	s1, 280(sp)                     # 8-byte Folded Reload
	ld	s2, 272(sp)                     # 8-byte Folded Reload
	ld	s3, 264(sp)                     # 8-byte Folded Reload
	ld	s4, 256(sp)                     # 8-byte Folded Reload
	ld	s5, 248(sp)                     # 8-byte Folded Reload
	ld	s6, 240(sp)                     # 8-byte Folded Reload
	ld	s7, 232(sp)                     # 8-byte Folded Reload
	ld	s8, 224(sp)                     # 8-byte Folded Reload
	ld	s9, 216(sp)                     # 8-byte Folded Reload
	ld	s10, 208(sp)                    # 8-byte Folded Reload
	ld	s11, 200(sp)                    # 8-byte Folded Reload
	fld	fs0, 192(sp)                    # 8-byte Folded Reload
	fld	fs1, 184(sp)                    # 8-byte Folded Reload
	fld	fs2, 176(sp)                    # 8-byte Folded Reload
	fld	fs3, 168(sp)                    # 8-byte Folded Reload
	fld	fs4, 160(sp)                    # 8-byte Folded Reload
	fld	fs5, 152(sp)                    # 8-byte Folded Reload
	fld	fs6, 144(sp)                    # 8-byte Folded Reload
	fld	fs7, 136(sp)                    # 8-byte Folded Reload
	fld	fs8, 128(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 304
	ret
.Lfunc_end0:
	.size	readframe, .Lfunc_end0-readframe
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	pbm_getc                        # -- Begin function pbm_getc
	.p2align	2
	.type	pbm_getc,@function
pbm_getc:                               # @pbm_getc
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	call	getc
	andi	a1, a0, 255
	li	a2, 35
	bne	a1, a2, .LBB1_4
# %bb.1:
	li	s1, 13
	li	s2, 10
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	mv	a0, s0
	call	getc
	andi	a1, a0, 255
	beq	a1, s1, .LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	bne	a1, s2, .LBB1_2
.LBB1_4:
	andi	a0, a0, 255
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	pbm_getc, .Lfunc_end1-pbm_getc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	pbm_getint                      # -- Begin function pbm_getint
	.p2align	2
	.type	pbm_getint,@function
pbm_getint:                             # @pbm_getint
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	sd	s6, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	li	s1, 35
	li	s3, 13
	li	s4, 10
	li	s5, 32
	lui	a0, 2048
	addiw	a0, a0, 19
	slli	s6, a0, 9
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
	mv	a0, s0
	call	getc
	andi	s2, a0, 255
	bne	s2, s1, .LBB2_4
.LBB2_2:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s0
	call	getc
	andi	s2, a0, 255
	beq	s2, s3, .LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=2
	bne	s2, s4, .LBB2_2
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	bltu	s5, s2, .LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	srl	a0, s6, s2
	andi	a0, a0, 1
	bnez	a0, .LBB2_1
.LBB2_6:                                # %.preheader1
	li	s1, 0
	li	s3, 10
	li	s4, 35
	li	s5, 13
	j	.LBB2_8
.LBB2_7:                                #   in Loop: Header=BB2_8 Depth=1
	mul	a1, s1, s3
	add	a1, s2, a1
	addi	a2, a0, -48
	addiw	s1, a1, -48
	mv	s2, a0
	bgeu	a2, s3, .LBB2_11
.LBB2_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
	mv	a0, s0
	call	getc
	andi	a0, a0, 255
	bne	a0, s4, .LBB2_7
.LBB2_9:                                #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s0
	call	getc
	andi	a0, a0, 255
	beq	a0, s5, .LBB2_7
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=2
	bne	a0, s3, .LBB2_9
	j	.LBB2_7
.LBB2_11:
	mv	a0, s1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end2:
	.size	pbm_getint, .Lfunc_end2-pbm_getint
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function conv444to422
	.type	conv444to422,@function
conv444to422:                           # @conv444to422
# %bb.0:
	addi	sp, sp, -96
	sd	s0, 88(sp)                      # 8-byte Folded Spill
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	sd	s2, 72(sp)                      # 8-byte Folded Spill
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	sd	s4, 56(sp)                      # 8-byte Folded Spill
	sd	s5, 48(sp)                      # 8-byte Folded Spill
	sd	s6, 40(sp)                      # 8-byte Folded Spill
	sd	s7, 32(sp)                      # 8-byte Folded Spill
	sd	s8, 24(sp)                      # 8-byte Folded Spill
	sd	s9, 16(sp)                      # 8-byte Folded Spill
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	sd	s11, 0(sp)                      # 8-byte Folded Spill
	lui	a3, %hi(mpeg1)
	lui	a2, %hi(height)
	lw	t4, %lo(height)(a2)
	lui	a2, %hi(width)
	lw	a2, %lo(width)(a2)
	lw	a4, %lo(mpeg1)(a3)
	sgtz	a3, t4
	sgtz	a5, a2
	and	a3, a3, a5
	beqz	a4, .LBB3_34
# %bb.1:
	beqz	a3, .LBB3_47
# %bb.2:                                # %.preheader4
	li	a3, 0
	lui	a4, %hi(clp)
	li	a5, 228
	li	a6, 70
	li	a7, -37
	li	t0, -21
	li	t1, 11
	lui	t2, %hi(width)
	lui	t3, %hi(height)
	j	.LBB3_5
.LBB3_3:                                #   in Loop: Header=BB3_5 Depth=1
	lw	t4, %lo(height)(t3)
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	add	a0, a0, a2
	sraiw	t5, a2, 1
	addiw	a3, a3, 1
	add	a1, a1, t5
	bge	a3, t4, .LBB3_47
.LBB3_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
	blez	a2, .LBB3_4
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	addiw	t5, a2, -1
	li	t4, 2
	mv	t6, t5
	bltu	t4, a2, .LBB3_31
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	li	t4, 3
	mv	s0, t5
	bltu	t4, a2, .LBB3_32
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	li	s1, 4
	mv	s2, t5
	bltu	s1, a2, .LBB3_33
.LBB3_9:                                #   in Loop: Header=BB3_5 Depth=1
	li	s3, 5
	mv	s1, t5
	bgeu	s3, a2, .LBB3_11
.LBB3_10:                               #   in Loop: Header=BB3_5 Depth=1
	li	s1, 6
	li	t5, 5
.LBB3_11:                               #   in Loop: Header=BB3_5 Depth=1
	addi	a2, a2, -1
	snez	a2, a2
	lbu	s3, 0(a0)
	add	a2, a0, a2
	lbu	a2, 0(a2)
	add	t6, a0, t6
	lbu	t6, 0(t6)
	ld	s4, %lo(clp)(a4)
	add	a2, a2, s3
	mul	a2, a2, a5
	add	t6, t6, s3
	add	s0, a0, s0
	lbu	s0, 0(s0)
	add	s2, a0, s2
	lbu	s2, 0(s2)
	mul	t6, t6, a6
	add	s0, s0, s3
	mul	s0, s0, a7
	add	s2, s2, s3
	add	t5, a0, t5
	lbu	t5, 0(t5)
	add	s1, a0, s1
	lbu	s1, 0(s1)
	mul	s2, s2, t0
	add	t5, t5, s3
	mul	t5, t5, t1
	add	s1, s1, s3
	slli	s3, s1, 2
	add	s1, s3, s1
	add	t6, t6, s0
	add	t6, t6, s2
	add	a2, a2, t6
	add	t5, t5, s1
	add	a2, a2, t5
	addi	a2, a2, 256
	sraiw	a2, a2, 9
	add	a2, s4, a2
	lbu	a2, 0(a2)
	sb	a2, 0(a1)
	lw	a2, %lo(width)(t2)
	blt	a2, t4, .LBB3_3
# %bb.12:                               # %.preheader2
                                        #   in Loop: Header=BB3_5 Depth=1
	addi	t4, a1, 1
	addi	t5, a0, 1
	li	t6, 2
	li	s0, 8
	li	s3, 2
	j	.LBB3_15
.LBB3_13:                               #   in Loop: Header=BB3_15 Depth=2
	mv	a2, s2
.LBB3_14:                               #   in Loop: Header=BB3_15 Depth=2
	subw	s3, s0, s4
	addiw	s3, s3, -6
	subw	s4, s0, s5
	addiw	s4, s4, -6
	subw	s5, s0, s6
	addiw	s5, s5, -6
	lbu	s6, 1(t5)
	add	s7, a0, s7
	lbu	s7, 0(s7)
	lbu	s11, 0(t5)
	sext.w	s8, s8
	add	s8, a0, s8
	lbu	s8, 0(s8)
	add	s6, s7, s6
	ld	s7, %lo(clp)(a4)
	mul	s6, s6, a5
	add	s8, s8, s11
	lbu	s11, -1(t5)
	add	s9, a0, s9
	lbu	s9, 0(s9)
	add	s5, a0, s5
	lbu	s5, 0(s5)
	add	s10, a0, s10
	lbu	s10, 0(s10)
	mul	s8, s8, a6
	add	s9, s9, s11
	mul	s9, s9, a7
	add	s5, s10, s5
	add	s4, a0, s4
	lbu	s4, 0(s4)
	add	s2, a0, s2
	lbu	s2, 0(s2)
	add	s3, a0, s3
	lbu	s3, 0(s3)
	add	a2, a0, a2
	lbu	a2, 0(a2)
	mul	s5, s5, t0
	add	s2, s2, s4
	mul	s2, s2, t1
	add	a2, a2, s3
	slli	s3, a2, 2
	add	a2, s3, a2
	add	s6, s6, s9
	add	s6, s6, s8
	add	s5, s6, s5
	add	s2, s5, s2
	add	a2, s2, a2
	addi	a2, a2, 256
	sraiw	a2, a2, 9
	add	a2, s7, a2
	lbu	a2, 0(a2)
	sb	a2, 0(t4)
	lw	a2, %lo(width)(t2)
	addi	t4, t4, 1
	addiw	t6, t6, 2
	addiw	s0, s0, 2
	addi	t5, t5, 2
	mv	s3, s1
	bge	s1, a2, .LBB3_3
.LBB3_15:                               #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	s1, 5
	mv	s4, t6
	bgeu	t6, s1, .LBB3_20
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=2
	li	s1, 4
	mv	s5, t6
	bgeu	t6, s1, .LBB3_21
.LBB3_17:                               #   in Loop: Header=BB3_15 Depth=2
	li	s1, 3
	mv	s6, t6
	bgeu	t6, s1, .LBB3_22
.LBB3_18:                               #   in Loop: Header=BB3_15 Depth=2
	addiw	s2, a2, -1
	blt	s3, s2, .LBB3_23
.LBB3_19:                               #   in Loop: Header=BB3_15 Depth=2
	mv	s7, s2
	addiw	s9, a2, -2
	addi	s1, s3, 2
	mv	s8, s1
	bge	s3, s9, .LBB3_24
	j	.LBB3_25
.LBB3_20:                               #   in Loop: Header=BB3_15 Depth=2
	li	s4, 5
	li	s1, 4
	mv	s5, t6
	bltu	t6, s1, .LBB3_17
.LBB3_21:                               #   in Loop: Header=BB3_15 Depth=2
	li	s5, 4
	li	s1, 3
	mv	s6, t6
	bltu	t6, s1, .LBB3_18
.LBB3_22:                               #   in Loop: Header=BB3_15 Depth=2
	li	s6, 3
	addiw	s2, a2, -1
	bge	s3, s2, .LBB3_19
.LBB3_23:                               #   in Loop: Header=BB3_15 Depth=2
	addiw	s7, s0, -5
	addiw	s9, a2, -2
	addi	s1, s3, 2
	mv	s8, s1
	blt	s3, s9, .LBB3_25
.LBB3_24:                               #   in Loop: Header=BB3_15 Depth=2
	mv	s8, s2
.LBB3_25:                               #   in Loop: Header=BB3_15 Depth=2
	addiw	s9, a2, -3
	blt	s3, s9, .LBB3_28
# %bb.26:                               #   in Loop: Header=BB3_15 Depth=2
	mv	s9, s2
	addiw	s10, a2, -4
	bge	s3, s10, .LBB3_29
.LBB3_27:                               #   in Loop: Header=BB3_15 Depth=2
	addiw	s10, s0, -2
	addiw	a2, a2, -5
	bge	s3, a2, .LBB3_13
	j	.LBB3_30
.LBB3_28:                               #   in Loop: Header=BB3_15 Depth=2
	addiw	s9, s0, -3
	addiw	s10, a2, -4
	blt	s3, s10, .LBB3_27
.LBB3_29:                               #   in Loop: Header=BB3_15 Depth=2
	mv	s10, s2
	addiw	a2, a2, -5
	bge	s3, a2, .LBB3_13
.LBB3_30:                               #   in Loop: Header=BB3_15 Depth=2
	addiw	s2, s0, -1
	mv	a2, s0
	j	.LBB3_14
.LBB3_31:                               #   in Loop: Header=BB3_5 Depth=1
	li	t6, 2
	li	t4, 3
	mv	s0, t5
	bgeu	t4, a2, .LBB3_8
.LBB3_32:                               #   in Loop: Header=BB3_5 Depth=1
	li	s0, 3
	li	s1, 4
	mv	s2, t5
	bgeu	s1, a2, .LBB3_9
.LBB3_33:                               #   in Loop: Header=BB3_5 Depth=1
	li	s2, 4
	li	s3, 5
	mv	s1, t5
	bltu	s3, a2, .LBB3_10
	j	.LBB3_11
.LBB3_34:
	beqz	a3, .LBB3_47
# %bb.35:                               # %.preheader1
	li	a3, 0
	lui	a4, %hi(clp)
	li	a5, 22
	li	a6, -52
	li	a7, 159
	lui	t0, %hi(width)
	lui	t1, %hi(height)
	j	.LBB3_38
.LBB3_36:                               #   in Loop: Header=BB3_38 Depth=1
	lw	t4, %lo(height)(t1)
.LBB3_37:                               #   in Loop: Header=BB3_38 Depth=1
	add	a0, a0, a2
	sraiw	t2, a2, 1
	addiw	a3, a3, 1
	add	a1, a1, t2
	bge	a3, t4, .LBB3_47
.LBB3_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_41 Depth 2
	blez	a2, .LBB3_37
# %bb.39:                               # %.preheader
                                        #   in Loop: Header=BB3_38 Depth=1
	li	t2, 0
	li	t3, 0
	mv	t4, a1
	j	.LBB3_41
.LBB3_40:                               #   in Loop: Header=BB3_41 Depth=2
	addiw	a2, t2, -5
	sltu	s1, t2, a2
	addi	s1, s1, -1
	and	a2, s1, a2
	addiw	s1, t2, -3
	sltu	s2, t2, s1
	addi	s2, s2, -1
	and	s1, s2, s1
	addiw	s2, t2, -1
	sltu	s3, t2, s2
	addi	s3, s3, -1
	and	s2, s3, s2
	add	a2, a0, a2
	lbu	a2, 0(a2)
	add	t6, a0, t6
	lbu	t6, 0(t6)
	add	s1, a0, s1
	lbu	s1, 0(s1)
	add	s0, a0, s0
	lbu	s0, 0(s0)
	ld	s3, %lo(clp)(a4)
	add	a2, t6, a2
	mul	a2, a2, a5
	add	s0, s0, s1
	add	s2, a0, s2
	lbu	t6, 0(s2)
	add	t5, a0, t5
	lbu	t5, 0(t5)
	add	s1, a0, t3
	lbu	s1, 0(s1)
	mul	s0, s0, a6
	add	t5, t5, t6
	mul	t5, t5, a7
	slli	s1, s1, 8
	add	a2, a2, s0
	add	t5, t5, s1
	add	a2, a2, t5
	addi	a2, a2, 256
	sraiw	a2, a2, 9
	add	a2, s3, a2
	lbu	a2, 0(a2)
	sb	a2, 0(t4)
	lw	a2, %lo(width)(t0)
	addi	t3, t3, 2
	addi	t4, t4, 1
	addiw	t2, t2, 2
	bge	t3, a2, .LBB3_36
.LBB3_41:                               #   Parent Loop BB3_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	t6, a2, -1
	blt	t3, t6, .LBB3_44
# %bb.42:                               #   in Loop: Header=BB3_41 Depth=2
	mv	t5, t6
	addiw	s0, a2, -3
	bge	t3, s0, .LBB3_45
.LBB3_43:                               #   in Loop: Header=BB3_41 Depth=2
	addiw	s0, t2, 3
	addiw	a2, a2, -5
	bge	t3, a2, .LBB3_40
	j	.LBB3_46
.LBB3_44:                               #   in Loop: Header=BB3_41 Depth=2
	addiw	t5, t2, 1
	addiw	s0, a2, -3
	blt	t3, s0, .LBB3_43
.LBB3_45:                               #   in Loop: Header=BB3_41 Depth=2
	mv	s0, t6
	addiw	a2, a2, -5
	bge	t3, a2, .LBB3_40
.LBB3_46:                               #   in Loop: Header=BB3_41 Depth=2
	addiw	t6, t2, 5
	j	.LBB3_40
.LBB3_47:
	ld	s0, 88(sp)                      # 8-byte Folded Reload
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	ld	s2, 72(sp)                      # 8-byte Folded Reload
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	ld	s4, 56(sp)                      # 8-byte Folded Reload
	ld	s5, 48(sp)                      # 8-byte Folded Reload
	ld	s6, 40(sp)                      # 8-byte Folded Reload
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	ld	s8, 24(sp)                      # 8-byte Folded Reload
	ld	s9, 16(sp)                      # 8-byte Folded Reload
	ld	s10, 8(sp)                      # 8-byte Folded Reload
	ld	s11, 0(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end3:
	.size	conv444to422, .Lfunc_end3-conv444to422
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function conv422to420
	.type	conv422to420,@function
conv422to420:                           # @conv422to420
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
	lui	a2, %hi(width)
	lw	a2, %lo(width)(a2)
	lui	a3, %hi(prog_frame)
	lw	a3, %lo(prog_frame)(a3)
	srai	a2, a2, 1
	beqz	a3, .LBB4_34
# %bb.1:
	blez	a2, .LBB4_75
# %bb.2:
	lui	a3, %hi(height)
	lw	s1, %lo(height)(a3)
	blez	s1, .LBB4_75
# %bb.3:
	li	a4, 0
	slli	a3, a2, 32
	srli	a5, a3, 32
	add	a6, a1, a5
	srli	a7, a3, 31
	add	t0, a0, a7
	slli	t1, a2, 1
	li	t4, 70
	li	t5, -37
	li	t6, -21
	li	s0, 11
	j	.LBB4_5
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	addi	a0, a0, 1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	addi	a1, a1, 1
	addiw	a4, a4, 1
	addi	a6, a6, 1
	addi	t0, t0, 1
	beq	a4, a2, .LBB4_75
.LBB4_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	blez	s1, .LBB4_4
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	addi	s2, s1, -1
	li	a3, 2
	mv	t3, s2
	bltu	a3, s1, .LBB4_31
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	li	s6, 3
	mv	t2, s2
	bltu	s6, s1, .LBB4_32
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	li	a3, 4
	mv	s3, s2
	bltu	a3, s1, .LBB4_33
.LBB4_9:                                #   in Loop: Header=BB4_5 Depth=1
	li	s4, 5
	mv	a3, s2
	bgeu	s4, s1, .LBB4_11
.LBB4_10:                               #   in Loop: Header=BB4_5 Depth=1
	li	a3, 6
	li	s2, 5
.LBB4_11:                               #   in Loop: Header=BB4_5 Depth=1
	addi	s1, s1, -1
	seqz	s1, s1
	lbu	s4, 0(a0)
	addi	s1, s1, -1
	and	s1, s1, a2
	add	s1, a0, s1
	lbu	s1, 0(s1)
	mulw	t3, t3, a2
	add	t3, a0, t3
	lbu	t3, 0(t3)
	lui	s5, %hi(clp)
	ld	s5, %lo(clp)(s5)
	add	s1, s1, s4
	li	s7, 228
	mul	s1, s1, s7
	add	t3, t3, s4
	mulw	t2, t2, a2
	add	t2, a0, t2
	lbu	t2, 0(t2)
	mulw	s3, s3, a2
	add	s3, a0, s3
	lbu	s3, 0(s3)
	mul	t3, t3, t4
	add	t2, t2, s4
	mul	t2, t2, t5
	add	s3, s3, s4
	mulw	s2, s2, a2
	add	s2, a0, s2
	lbu	s2, 0(s2)
	mulw	a3, a3, a2
	add	a3, a0, a3
	lbu	a3, 0(a3)
	mul	s3, s3, t6
	add	s2, s2, s4
	mul	s2, s2, s0
	add	a3, a3, s4
	slli	s4, a3, 2
	add	a3, s4, a3
	add	t2, t3, t2
	add	t2, t2, s3
	add	t2, t2, s2
	add	t2, s1, t2
	add	a3, t2, a3
	addi	a3, a3, 256
	sraiw	a3, a3, 9
	add	a3, s5, a3
	lbu	a3, 0(a3)
	sb	a3, 0(a1)
	lui	a1, %hi(height)
	lw	s1, %lo(height)(a1)
	blt	s1, s6, .LBB4_4
# %bb.12:                               # %.preheader2
                                        #   in Loop: Header=BB4_5 Depth=1
	li	a1, 0
	li	s2, 2
	li	s3, 8
	mv	s4, t0
	mv	s5, a6
	li	s10, 2
	j	.LBB4_15
.LBB4_13:                               #   in Loop: Header=BB4_15 Depth=2
	mv	s1, s7
.LBB4_14:                               #   in Loop: Header=BB4_15 Depth=2
	lbu	s10, 0(s4)
	mulw	t3, t3, a2
	add	t3, a0, t3
	lbu	t3, 0(t3)
	subw	s11, s3, s11
	addi	s11, s11, -6
	subw	s9, s3, s9
	add	t3, t3, s10
	addw	s10, a2, a1
	add	s10, a0, s10
	lbu	s10, 0(s10)
	mulw	s6, s6, a2
	add	s6, a0, s6
	lbu	s6, 0(s6)
	addi	s9, s9, -6
	subw	s8, s3, s8
	addi	s8, s8, -6
	add	s6, s6, s10
	add	s10, a0, a1
	lbu	s10, 0(s10)
	mulw	ra, ra, a2
	add	ra, a0, ra
	lbu	ra, 0(ra)
	mulw	s8, s8, a2
	add	s8, a0, s8
	lbu	s8, 0(s8)
	mulw	t2, t2, a2
	add	t2, a0, t2
	lbu	t2, 0(t2)
	mulw	s9, s9, a2
	add	s9, a0, s9
	lbu	s9, 0(s9)
	mulw	s7, s7, a2
	add	s7, a0, s7
	lbu	s7, 0(s7)
	mulw	s11, s11, a2
	add	s11, a0, s11
	lbu	s11, 0(s11)
	mulw	s1, s1, a2
	add	s1, a0, s1
	lbu	s1, 0(s1)
	add	s10, ra, s10
	add	t2, t2, s8
	add	s7, s7, s9
	add	s1, s1, s11
	slli	s8, s1, 2
	add	s1, s8, s1
	li	s8, 228
	mul	t3, t3, s8
	mul	s6, s6, t4
	add	t3, t3, s6
	mul	s6, s10, t5
	add	t3, t3, s6
	mul	t2, t2, t6
	add	t2, t3, t2
	mul	t3, s7, s0
	add	t2, t2, t3
	lui	t3, %hi(clp)
	ld	t3, %lo(clp)(t3)
	add	t2, t2, s1
	addi	t2, t2, 256
	sraiw	t2, t2, 9
	add	t2, t3, t2
	lbu	t2, 0(t2)
	sb	t2, 0(s5)
	lui	t2, %hi(height)
	lw	s1, %lo(height)(t2)
	add	s5, s5, a5
	add	s4, s4, a7
	addi	s3, s3, 2
	addw	a1, a1, t1
	addiw	s2, s2, 2
	mv	s10, a3
	bge	a3, s1, .LBB4_4
.LBB4_15:                               #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a3, 3
	mv	s8, s2
	bgeu	s2, a3, .LBB4_20
# %bb.16:                               #   in Loop: Header=BB4_15 Depth=2
	li	a3, 4
	mv	s9, s2
	bgeu	s2, a3, .LBB4_21
.LBB4_17:                               #   in Loop: Header=BB4_15 Depth=2
	li	a3, 5
	mv	s11, s2
	bgeu	s2, a3, .LBB4_22
.LBB4_18:                               #   in Loop: Header=BB4_15 Depth=2
	addiw	s7, s1, -1
	blt	s10, s7, .LBB4_23
.LBB4_19:                               #   in Loop: Header=BB4_15 Depth=2
	mv	t3, s7
	addiw	t2, s1, -2
	addi	a3, s10, 2
	mv	s6, a3
	bge	s10, t2, .LBB4_24
	j	.LBB4_25
.LBB4_20:                               #   in Loop: Header=BB4_15 Depth=2
	li	s8, 3
	li	a3, 4
	mv	s9, s2
	bltu	s2, a3, .LBB4_17
.LBB4_21:                               #   in Loop: Header=BB4_15 Depth=2
	li	s9, 4
	li	a3, 5
	mv	s11, s2
	bltu	s2, a3, .LBB4_18
.LBB4_22:                               #   in Loop: Header=BB4_15 Depth=2
	li	s11, 5
	addiw	s7, s1, -1
	bge	s10, s7, .LBB4_19
.LBB4_23:                               #   in Loop: Header=BB4_15 Depth=2
	addi	t3, s3, -5
	addiw	t2, s1, -2
	addi	a3, s10, 2
	mv	s6, a3
	blt	s10, t2, .LBB4_25
.LBB4_24:                               #   in Loop: Header=BB4_15 Depth=2
	mv	s6, s7
.LBB4_25:                               #   in Loop: Header=BB4_15 Depth=2
	addiw	t2, s1, -3
	blt	s10, t2, .LBB4_28
# %bb.26:                               #   in Loop: Header=BB4_15 Depth=2
	mv	ra, s7
	addiw	t2, s1, -4
	bge	s10, t2, .LBB4_29
.LBB4_27:                               #   in Loop: Header=BB4_15 Depth=2
	addi	t2, s3, -2
	addiw	s1, s1, -5
	bge	s10, s1, .LBB4_13
	j	.LBB4_30
.LBB4_28:                               #   in Loop: Header=BB4_15 Depth=2
	addi	ra, s3, -3
	addiw	t2, s1, -4
	blt	s10, t2, .LBB4_27
.LBB4_29:                               #   in Loop: Header=BB4_15 Depth=2
	mv	t2, s7
	addiw	s1, s1, -5
	bge	s10, s1, .LBB4_13
.LBB4_30:                               #   in Loop: Header=BB4_15 Depth=2
	addi	s7, s3, -1
	mv	s1, s3
	j	.LBB4_14
.LBB4_31:                               #   in Loop: Header=BB4_5 Depth=1
	li	t3, 2
	li	s6, 3
	mv	t2, s2
	bgeu	s6, s1, .LBB4_8
.LBB4_32:                               #   in Loop: Header=BB4_5 Depth=1
	li	t2, 3
	li	a3, 4
	mv	s3, s2
	bgeu	a3, s1, .LBB4_9
.LBB4_33:                               #   in Loop: Header=BB4_5 Depth=1
	li	s3, 4
	li	s4, 5
	mv	a3, s2
	bltu	s4, s1, .LBB4_10
	j	.LBB4_11
.LBB4_34:
	blez	a2, .LBB4_75
# %bb.35:
	lui	t2, %hi(height)
	lw	a4, %lo(height)(t2)
	blez	a4, .LBB4_75
# %bb.36:
	li	a5, 0
	slli	a3, a2, 32
	srli	a6, a3, 32
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	srli	a6, a3, 31
	sd	a6, 24(sp)                      # 8-byte Folded Spill
	srli	a3, a3, 30
	sd	a3, 16(sp)                      # 8-byte Folded Spill
	li	t3, 113
	li	t4, 242
	li	t5, 192
	li	t6, 35
	li	s0, -38
	li	s1, -10
	li	s2, 11
	j	.LBB4_38
.LBB4_37:                               #   in Loop: Header=BB4_38 Depth=1
	addi	a0, a0, 1
	ld	a5, 0(sp)                       # 8-byte Folded Reload
	addiw	a5, a5, 1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	addi	a1, a1, 1
	beq	a5, a2, .LBB4_75
.LBB4_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_41 Depth 2
	sd	a5, 0(sp)                       # 8-byte Folded Spill
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	blez	a4, .LBB4_37
# %bb.39:                               # %.preheader
                                        #   in Loop: Header=BB4_38 Depth=1
	li	s6, 0
	li	s7, 0
	li	s11, 0
	mv	s8, a0
	mv	s9, a1
	j	.LBB4_41
.LBB4_40:                               #   in Loop: Header=BB4_41 Depth=2
	mulw	a7, a7, a2
	add	a7, a0, a7
	lbu	a7, 0(a7)
	mulw	t2, t2, a2
	add	t2, a0, t2
	lbu	t2, 0(t2)
	mulw	t1, t1, a2
	add	t1, a0, t1
	lbu	t1, 0(t1)
	slli	s5, t2, 2
	add	t2, s5, t2
	slli	a7, a7, 3
	li	s5, -30
	mul	t1, t1, s5
	add	a7, a7, t1
	add	a7, a7, t2
	mulw	a6, a6, a2
	add	a6, a0, a6
	lbu	a6, 0(a6)
	mulw	a5, a5, a2
	add	a5, a0, a5
	lbu	a5, 0(a5)
	mulw	a3, a3, a2
	add	a3, a0, a3
	lbu	a3, 0(a3)
	li	t1, -18
	mul	a6, a6, t1
	mul	a5, a5, t3
	add	a5, a6, a5
	mul	a3, a3, t4
	mulw	a6, t0, a2
	add	a6, a0, a6
	lbu	a6, 0(a6)
	mulw	t0, s4, a2
	add	t0, a0, t0
	lbu	t0, 0(t0)
	add	a3, a5, a3
	add	a3, a7, a3
	mul	a5, a6, t5
	mul	a6, t0, t6
	mulw	a4, a4, a2
	add	a4, a0, a4
	lbu	a4, 0(a4)
	mulw	a1, a1, a2
	add	a1, a0, a1
	lbu	a1, 0(a1)
	add	a5, a5, a6
	mul	a4, a4, s0
	add	a4, a5, a4
	mul	a1, a1, s1
	mulw	a5, s3, a2
	add	a5, a0, a5
	lbu	a5, 0(a5)
	mulw	a6, ra, a2
	add	a6, a0, a6
	lbu	a6, 0(a6)
	add	a1, a4, a1
	add	a1, a3, a1
	mul	a3, a5, s2
	slli	a6, a6, 1
	add	a3, a3, a6
	lui	a4, %hi(clp)
	ld	a4, %lo(clp)(a4)
	add	a1, a1, a3
	addi	a1, a1, 256
	sraiw	a1, a1, 9
	add	a1, a4, a1
	lbu	a1, 0(a1)
	ld	a3, 32(sp)                      # 8-byte Folded Reload
	add	a3, s9, a3
	sb	a1, 0(a3)
	lui	t2, %hi(height)
	lw	a4, %lo(height)(t2)
	addiw	s7, s7, 4
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	add	s9, s9, a1
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	add	s8, s8, a1
	addi	s6, s6, -4
	mv	s11, s10
	bge	s10, a4, .LBB4_37
.LBB4_41:                               #   Parent Loop BB4_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	a1, a4, -2
	blt	s11, a1, .LBB4_43
# %bb.42:                               #   in Loop: Header=BB4_41 Depth=2
	mv	s3, a1
	addiw	a3, a4, -4
	addi	s10, s11, 4
	mv	s4, s10
	bge	s11, a3, .LBB4_44
	j	.LBB4_45
.LBB4_43:                               #   in Loop: Header=BB4_41 Depth=2
	addi	s3, s7, 2
	addiw	a3, a4, -4
	addi	s10, s11, 4
	mv	s4, s10
	blt	s11, a3, .LBB4_45
.LBB4_44:                               #   in Loop: Header=BB4_41 Depth=2
	mv	s4, a1
.LBB4_45:                               #   in Loop: Header=BB4_41 Depth=2
	addiw	a3, a4, -6
	blt	s11, a3, .LBB4_49
# %bb.46:                               #   in Loop: Header=BB4_41 Depth=2
	mv	s5, a1
	addiw	a3, a4, -8
	bge	s11, a3, .LBB4_50
.LBB4_47:                               #   in Loop: Header=BB4_41 Depth=2
	addi	ra, s7, 8
	addiw	a3, a4, -10
	bge	s11, a3, .LBB4_51
.LBB4_48:                               #   in Loop: Header=BB4_41 Depth=2
	addi	a3, s7, 10
	addiw	a4, a4, -12
	blt	s11, a4, .LBB4_52
	j	.LBB4_53
.LBB4_49:                               #   in Loop: Header=BB4_41 Depth=2
	addi	s5, s7, 6
	addiw	a3, a4, -8
	blt	s11, a3, .LBB4_47
.LBB4_50:                               #   in Loop: Header=BB4_41 Depth=2
	mv	ra, a1
	addiw	a3, a4, -10
	blt	s11, a3, .LBB4_48
.LBB4_51:                               #   in Loop: Header=BB4_41 Depth=2
	mv	a3, a1
	addiw	a4, a4, -12
	bge	s11, a4, .LBB4_53
.LBB4_52:                               #   in Loop: Header=BB4_41 Depth=2
	addi	a1, s7, 12
.LBB4_53:                               #   in Loop: Header=BB4_41 Depth=2
	addiw	a4, s7, -10
	sltu	a5, s7, a4
	addi	a5, a5, -1
	and	a4, a5, a4
	addiw	a5, s7, -8
	sltu	a6, s7, a5
	addi	a6, a6, -1
	and	a5, a6, a5
	addiw	a6, s7, -6
	sltu	a7, s7, a6
	addi	a7, a7, -1
	and	a6, a7, a6
	seqz	a7, s6
	addi	t0, s7, -4
	addi	a7, a7, -1
	and	t0, a7, t0
	addi	t1, s7, -2
	mulw	a4, a4, a2
	mulw	a5, a5, a2
	add	a5, a0, a5
	lbu	a5, 0(a5)
	add	a4, a0, a4
	lbu	a4, 0(a4)
	and	a7, a7, t1
	slli	t1, a5, 2
	add	a5, t1, a5
	slli	a4, a4, 3
	mulw	a6, a6, a2
	add	a6, a0, a6
	lbu	a6, 0(a6)
	mulw	t0, t0, a2
	add	t0, a0, t0
	lbu	t0, 0(t0)
	mulw	a7, a7, a2
	add	a7, a0, a7
	lbu	a7, 0(a7)
	li	t1, -30
	mul	a6, a6, t1
	add	a4, a4, a6
	li	a6, -18
	mul	a6, t0, a6
	mul	a7, a7, t3
	add	a4, a4, a5
	lbu	a5, 0(s8)
	mulw	t0, s3, a2
	add	t0, a0, t0
	lbu	t0, 0(t0)
	add	a6, a6, a7
	mul	a5, a5, t4
	add	a5, a6, a5
	mul	a6, t0, t5
	add	a5, a5, a6
	add	a4, a4, a5
	mulw	a5, s4, a2
	add	a5, a0, a5
	lbu	a5, 0(a5)
	mulw	a6, s5, a2
	add	a6, a0, a6
	lbu	a6, 0(a6)
	mulw	a7, ra, a2
	add	a7, a0, a7
	lbu	a7, 0(a7)
	mul	a5, a5, t6
	mul	a6, a6, s0
	add	a5, a5, a6
	mul	a6, a7, s1
	mulw	a3, a3, a2
	add	a3, a0, a3
	lbu	a3, 0(a3)
	mulw	a1, a1, a2
	add	a1, a0, a1
	lbu	a1, 0(a1)
	add	a5, a5, a6
	mul	a3, a3, s2
	add	a3, a5, a3
	slli	a1, a1, 1
	add	a1, a3, a1
	lui	a3, %hi(clp)
	ld	a3, %lo(clp)(a3)
	add	a1, a4, a1
	addi	a1, a1, 256
	sraiw	a1, a1, 9
	add	a1, a3, a1
	lbu	a1, 0(a1)
	sb	a1, 0(s9)
	li	a4, 1
	li	a1, 9
	bgeu	s11, a1, .LBB4_64
# %bb.54:                               #   in Loop: Header=BB4_41 Depth=2
	li	ra, 1
	li	a1, 7
	bltu	s11, a1, .LBB4_65
.LBB4_55:                               #   in Loop: Header=BB4_41 Depth=2
	addi	s3, s7, -7
	li	a1, 5
	bltu	s11, a1, .LBB4_66
.LBB4_56:                               #   in Loop: Header=BB4_41 Depth=2
	addi	a1, s7, -5
	beqz	s6, .LBB4_67
.LBB4_57:                               #   in Loop: Header=BB4_41 Depth=2
	addi	s4, s7, -1
	addi	a4, s7, -3
	lw	s5, %lo(height)(t2)
	addiw	a7, s5, -1
	bge	s11, a7, .LBB4_68
.LBB4_58:                               #   in Loop: Header=BB4_41 Depth=2
	addi	t0, s7, 1
	addiw	a3, s5, -3
	bge	s11, a3, .LBB4_69
.LBB4_59:                               #   in Loop: Header=BB4_41 Depth=2
	addi	a3, s7, 3
	addiw	a5, s5, -5
	bge	s11, a5, .LBB4_70
.LBB4_60:                               #   in Loop: Header=BB4_41 Depth=2
	addi	a5, s7, 5
	addiw	a6, s5, -7
	bge	s11, a6, .LBB4_71
.LBB4_61:                               #   in Loop: Header=BB4_41 Depth=2
	addi	a6, s7, 7
	addiw	t1, s5, -9
	bge	s11, t1, .LBB4_72
.LBB4_62:                               #   in Loop: Header=BB4_41 Depth=2
	addi	t1, s7, 9
	addiw	t2, s5, -11
	bge	s11, t2, .LBB4_73
.LBB4_63:                               #   in Loop: Header=BB4_41 Depth=2
	addi	t2, s7, 11
	addiw	s5, s5, -13
	bge	s11, s5, .LBB4_40
	j	.LBB4_74
.LBB4_64:                               #   in Loop: Header=BB4_41 Depth=2
	addi	ra, s7, -9
	li	a1, 7
	bgeu	s11, a1, .LBB4_55
.LBB4_65:                               #   in Loop: Header=BB4_41 Depth=2
	li	s3, 1
	li	a1, 5
	bgeu	s11, a1, .LBB4_56
.LBB4_66:                               #   in Loop: Header=BB4_41 Depth=2
	li	a1, 1
	bnez	s6, .LBB4_57
.LBB4_67:                               #   in Loop: Header=BB4_41 Depth=2
	li	s4, 1
	lw	s5, %lo(height)(t2)
	addiw	a7, s5, -1
	blt	s11, a7, .LBB4_58
.LBB4_68:                               #   in Loop: Header=BB4_41 Depth=2
	mv	t0, a7
	addiw	a3, s5, -3
	blt	s11, a3, .LBB4_59
.LBB4_69:                               #   in Loop: Header=BB4_41 Depth=2
	mv	a3, a7
	addiw	a5, s5, -5
	blt	s11, a5, .LBB4_60
.LBB4_70:                               #   in Loop: Header=BB4_41 Depth=2
	mv	a5, a7
	addiw	a6, s5, -7
	blt	s11, a6, .LBB4_61
.LBB4_71:                               #   in Loop: Header=BB4_41 Depth=2
	mv	a6, a7
	addiw	t1, s5, -9
	blt	s11, t1, .LBB4_62
.LBB4_72:                               #   in Loop: Header=BB4_41 Depth=2
	mv	t1, a7
	addiw	t2, s5, -11
	blt	s11, t2, .LBB4_63
.LBB4_73:                               #   in Loop: Header=BB4_41 Depth=2
	mv	t2, a7
	addiw	s5, s5, -13
	bge	s11, s5, .LBB4_40
.LBB4_74:                               #   in Loop: Header=BB4_41 Depth=2
	addi	a7, s7, 13
	j	.LBB4_40
.LBB4_75:
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
.Lfunc_end4:
	.size	conv422to420, .Lfunc_end4-conv422to420
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.Y"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"rb"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Couldn't open %s\n"
	.size	.L.str.2, 18

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s.U"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s.V"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s.yuv"
	.size	.L.str.5, 7

	.type	read_ppm.u444,@object           # @read_ppm.u444
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
read_ppm.u444:
	.quad	0
	.size	read_ppm.u444, 8

	.type	read_ppm.v444,@object           # @read_ppm.v444
	.p2align	3, 0x0
read_ppm.v444:
	.quad	0
	.size	read_ppm.v444, 8

	.type	read_ppm.u422,@object           # @read_ppm.u422
	.p2align	3, 0x0
read_ppm.u422:
	.quad	0
	.size	read_ppm.u422, 8

	.type	read_ppm.v422,@object           # @read_ppm.v422
	.p2align	3, 0x0
read_ppm.v422:
	.quad	0
	.size	read_ppm.v422, 8

	.type	read_ppm.coef,@object           # @read_ppm.coef
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
read_ppm.coef:
	.quad	0x3fcb333333333333              # double 0.21249999999999999
	.quad	0x3fe6e48e8a71de6a              # double 0.71540000000000004
	.quad	0x3fb27525460aa64c              # double 0.072099999999999997
	.quad	0x3fd322d0e5604189              # double 0.29899999999999999
	.quad	0x3fe2c8b439581062              # double 0.58699999999999997
	.quad	0x3fbd2f1a9fbe76c9              # double 0.114
	.quad	0x3fd322d0e5604189              # double 0.29899999999999999
	.quad	0x3fe2c8b439581062              # double 0.58699999999999997
	.quad	0x3fbd2f1a9fbe76c9              # double 0.114
	.quad	0x3fd3333333333333              # double 0.29999999999999999
	.quad	0x3fe2e147ae147ae1              # double 0.58999999999999997
	.quad	0x3fbc28f5c28f5c29              # double 0.11
	.quad	0x3fd322d0e5604189              # double 0.29899999999999999
	.quad	0x3fe2c8b439581062              # double 0.58699999999999997
	.quad	0x3fbd2f1a9fbe76c9              # double 0.114
	.quad	0x3fd322d0e5604189              # double 0.29899999999999999
	.quad	0x3fe2c8b439581062              # double 0.58699999999999997
	.quad	0x3fbd2f1a9fbe76c9              # double 0.114
	.quad	0x3fcb22d0e5604189              # double 0.21199999999999999
	.quad	0x3fe66e978d4fdf3b              # double 0.70099999999999996
	.quad	0x3fb645a1cac08312              # double 0.086999999999999994
	.size	read_ppm.coef, 168

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"malloc failed"
	.size	.L.str.6, 14

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s.ppm"
	.size	.L.str.7, 7

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
