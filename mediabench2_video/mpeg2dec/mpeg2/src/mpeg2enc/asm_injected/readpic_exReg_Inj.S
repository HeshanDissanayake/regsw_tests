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
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, t5
	bltu	t4, a2, .LBB3_32
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	regsw_c	x4, 0x0(x18)		# 100100010000000000000
	li	x2, 4
	mv	x3, t5
	bltu	x2, a2, .LBB3_33
.LBB3_9:                                #   in Loop: Header=BB3_5 Depth=1
	regsw_c	x4, 0x0(x18)		# 100100010000000000000
	li	x4, 5
	mv	x2, t5
	bgeu	x4, a2, .LBB3_11
.LBB3_10:                               #   in Loop: Header=BB3_5 Depth=1
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x2, 6
	li	t5, 5
.LBB3_11:                               #   in Loop: Header=BB3_5 Depth=1
	addi	a2, a2, -1
	snez	a2, a2
	regsw_c	x0, 0x21(x16)		# 100000000000000100001
	lbu	x4, 0(a0)
	add	a2, a0, a2
	lbu	a2, 0(a2)
	add	t6, a0, t6
	lbu	t6, 0(t6)
	ld	x5, %lo(clp)(a4)
	add	a2, a2, x4
	mul	a2, a2, a5
	regsw_c	x29, 0x387(x6)		# 001101110101110000111
	add	t6, t6, x4
	add	x1, a0, x1
	lbu	x1, 0(x1)
	add	x3, a0, x3
	lbu	x3, 0(x3)
	mul	t6, t6, a6
	add	x1, x1, x4
	regsw_c	x16, 0x176(x27)		# 110111000000101110110
	mul	x1, x1, a7
	add	x3, x3, x4
	add	t5, a0, t5
	lbu	t5, 0(t5)
	add	x2, a0, x2
	lbu	x2, 0(x2)
	mul	x3, x3, t0
	regsw_c	x15, 0x5c9(x4)		# 001000111110111001001
	add	t5, t5, x4
	mul	t5, t5, t1
	add	x2, x2, x4
	slli	x4, x2, 2
	add	x2, x4, x2
	add	t6, t6, x1
	add	t6, t6, x3
	add	a2, a2, t6
	regsw_c	x0, 0x80(x4)		# 001000000000010000000
	add	t5, t5, x2
	add	a2, a2, t5
	addi	a2, a2, 256
	sraiw	a2, a2, 9
	add	a2, x5, a2
	lbu	a2, 0(a2)
	sb	a2, 0(a1)
	lw	a2, %lo(width)(t2)
	blt	a2, t4, .LBB3_3
# %bb.12:                               # %.preheader2
                                        #   in Loop: Header=BB3_5 Depth=1
	addi	t4, a1, 1
	addi	t5, a0, 1
	li	t6, 2
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	li	x1, 8
	li	x4, 2
	j	.LBB3_15
.LBB3_13:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	mv	a2, x3
.LBB3_14:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x15, 0x5f4(x31)		# 111110111110111110100
	subw	x4, x1, x5
	addiw	x4, x4, -6
	subw	x5, x1, x6
	addiw	x5, x5, -6
	subw	x6, x1, x7
	addiw	x6, x6, -6
	lbu	x7, 1(t5)
	regsw_c	x9, 0x577(x23)		# 101110100110101110111
	add	x8, a0, x8
	lbu	x8, 0(x8)
	lbu	x12, 0(t5)
	sext.w	x9, x9
	add	x9, a0, x9
	lbu	x9, 0(x9)
	add	x7, x8, x7
	regsw_c	x15, 0x175(x19)		# 100110111100101110101
	ld	x8, %lo(clp)(a4)
	mul	x7, x7, a5
	add	x9, x9, x12
	lbu	x12, -1(t5)
	add	x10, a0, x10
	lbu	x10, 0(x10)
	add	x6, a0, x6
	regsw_c	x29, 0x5f7(x26)		# 110101110110111110111
	lbu	x6, 0(x6)
	add	x11, a0, x11
	lbu	x11, 0(x11)
	mul	x9, x9, a6
	add	x10, x10, x12
	mul	x10, x10, a7
	add	x6, x11, x6
	regsw_c	x11, 0x570(x23)		# 101110101110101110000
	add	x5, a0, x5
	lbu	x5, 0(x5)
	add	x3, a0, x3
	lbu	x3, 0(x3)
	add	x4, a0, x4
	lbu	x4, 0(x4)
	add	a2, a0, a2
	lbu	a2, 0(a2)
	regsw_c	x28, 0x317(x27)		# 110111110001100010111
	mul	x6, x6, t0
	add	x3, x3, x5
	mul	x3, x3, t1
	add	a2, a2, x4
	slli	x4, a2, 2
	add	a2, x4, a2
	add	x7, x7, x10
	regsw_c	x30, 0x402(x31)		# 111111111010000000010
	add	x7, x7, x9
	add	x6, x7, x6
	add	x3, x6, x3
	add	a2, x3, a2
	addi	a2, a2, 256
	sraiw	a2, a2, 9
	add	a2, x8, a2
	lbu	a2, 0(a2)
	sb	a2, 0(t4)
	lw	a2, %lo(width)(t2)
	addi	t4, t4, 1
	addiw	t6, t6, 2
	regsw_c	x12, 0x400(x24)		# 110000110010000000000
	addiw	x1, x1, 2
	addi	t5, t5, 2
	mv	x4, x2
	bge	x2, a2, .LBB3_3
.LBB3_15:                               #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x2, 0x0(x18)		# 100100001000000000000
	li	x2, 5
	mv	x5, t6
	bgeu	t6, x2, .LBB3_20
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x2, 0x0(x18)		# 100100001000000000000
	li	x2, 4
	mv	x6, t6
	bgeu	t6, x2, .LBB3_21
.LBB3_17:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x2, 0x0(x18)		# 100100001000000000000
	li	x2, 3
	mv	x7, t6
	bgeu	t6, x2, .LBB3_22
.LBB3_18:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x16, 0x0(x17)		# 100011000000000000000
	addiw	x3, a2, -1
	blt	x4, x3, .LBB3_23
.LBB3_19:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x13, 0x4c0(x26)		# 110100110110011000000
	mv	x8, x3
	addiw	x10, a2, -2
	addi	x2, x4, 2
	mv	x9, x2
	bge	x4, x10, .LBB3_24
	j	.LBB3_25
.LBB3_20:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x8, 0x200(x18)		# 100100100001000000000
	li	x5, 5
	li	x2, 4
	mv	x6, t6
	bltu	t6, x2, .LBB3_17
.LBB3_21:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x8, 0x200(x18)		# 100100100001000000000
	li	x6, 4
	li	x2, 3
	mv	x7, t6
	bltu	t6, x2, .LBB3_18
.LBB3_22:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x6, 0x0(x18)		# 100100011000000000000
	li	x7, 3
	addiw	x3, a2, -1
	bge	x4, x3, .LBB3_19
.LBB3_23:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x13, 0x4c0(x26)		# 110100110110011000000
	addiw	x8, x1, -5
	addiw	x10, a2, -2
	addi	x2, x4, 2
	mv	x9, x2
	blt	x4, x10, .LBB3_25
.LBB3_24:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x9, x3
.LBB3_25:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x16, 0x0(x17)		# 100011000000000000000
	addiw	x10, a2, -3
	blt	x4, x10, .LBB3_28
# %bb.26:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x6, 0x0(x26)		# 110100011000000000000
	mv	x10, x3
	addiw	x11, a2, -4
	bge	x4, x11, .LBB3_29
.LBB3_27:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x4, 0x0(x24)		# 110000010000000000000
	addiw	x11, x1, -2
	addiw	a2, a2, -5
	bge	x4, a2, .LBB3_13
	j	.LBB3_30
.LBB3_28:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x6, 0x0(x26)		# 110100011000000000000
	addiw	x10, x1, -3
	addiw	x11, a2, -4
	blt	x4, x11, .LBB3_27
.LBB3_29:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x4, 0x0(x24)		# 110000010000000000000
	mv	x11, x3
	addiw	a2, a2, -5
	bge	x4, a2, .LBB3_13
.LBB3_30:                               #   in Loop: Header=BB3_15 Depth=2
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	addiw	x3, x1, -1
	mv	a2, x1
	j	.LBB3_14
.LBB3_31:                               #   in Loop: Header=BB3_5 Depth=1
	li	t6, 2
	li	t4, 3
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, t5
	bgeu	t4, a2, .LBB3_8
.LBB3_32:                               #   in Loop: Header=BB3_5 Depth=1
	regsw_c	x8, 0x400(x18)		# 100100100010000000000
	li	x1, 3
	li	x2, 4
	mv	x3, t5
	bgeu	x2, a2, .LBB3_9
.LBB3_33:                               #   in Loop: Header=BB3_5 Depth=1
	regsw_c	x8, 0x400(x18)		# 100100100010000000000
	li	x3, 4
	li	x4, 5
	mv	x2, t5
	bltu	x4, a2, .LBB3_10
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
	regsw_c	x5, 0x177(x19)		# 100110010100101110111
	sltu	x2, t2, a2
	addi	x2, x2, -1
	and	a2, x2, a2
	addiw	x2, t2, -3
	sltu	x3, t2, x2
	addi	x3, x3, -1
	and	x2, x3, x2
	regsw_c	x29, 0x600(x18)		# 100101110111000000000
	addiw	x3, t2, -1
	sltu	x4, t2, x3
	addi	x4, x4, -1
	and	x3, x4, x3
	add	a2, a0, a2
	lbu	a2, 0(a2)
	add	t6, a0, t6
	lbu	t6, 0(t6)
	regsw_c	x11, 0x500(x23)		# 101110101110100000000
	add	x2, a0, x2
	lbu	x2, 0(x2)
	add	x1, a0, x1
	lbu	x1, 0(x1)
	ld	x4, %lo(clp)(a4)
	add	a2, t6, a2
	mul	a2, a2, a5
	regsw_c	x20, 0x26(x30)		# 111101010000000100110
	add	x1, x1, x2
	add	x3, a0, x3
	lbu	t6, 0(x3)
	add	t5, a0, t5
	lbu	t5, 0(t5)
	add	x2, a0, t3
	lbu	x2, 0(x2)
	regsw_c	x1, 0x448(x24)		# 110000000110001001000
	mul	x1, x1, a6
	add	t5, t5, t6
	mul	t5, t5, a7
	slli	x2, x2, 8
	add	a2, a2, x1
	add	t5, t5, x2
	add	a2, a2, t5
	addi	a2, a2, 256
	sraiw	a2, a2, 9
	regsw_c	x0, 0x0(x8)		# 010000000000000000000
	add	a2, x4, a2
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
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	addiw	x1, a2, -3
	bge	t3, x1, .LBB3_45
.LBB3_43:                               #   in Loop: Header=BB3_41 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	addiw	x1, t2, 3
	addiw	a2, a2, -5
	bge	t3, a2, .LBB3_40
	j	.LBB3_46
.LBB3_44:                               #   in Loop: Header=BB3_41 Depth=2
	addiw	t5, t2, 1
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	addiw	x1, a2, -3
	blt	t3, x1, .LBB3_43
.LBB3_45:                               #   in Loop: Header=BB3_41 Depth=2
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	mv	x1, t6
	addiw	a2, a2, -5
	bge	t3, a2, .LBB3_40
.LBB3_46:                               #   in Loop: Header=BB3_41 Depth=2
	addiw	t6, t2, 5
	j	.LBB3_40
.LBB3_47:
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
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	lw	x2, %lo(height)(a3)
	blez	x2, .LBB4_75
# %bb.3:
	li	a4, 0
	slli	a7, a2, 32
	srli	a5, a7, 32
	add	a6, a1, a5
	srli	a7, a7, 31
	add	t0, a0, a7
	slli	t1, a2, 1
	lui	t2, %hi(clp)
	li	t3, 228
	li	t4, 70
	li	t5, -37
	li	t6, -21
	regsw_c	x0, 0x0(x16)		# 100000000000000000000
	li	x1, 11
	j	.LBB4_5
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	addi	a0, a0, 1
	addi	a1, a1, 1
	addiw	a4, a4, 1
	addi	a6, a6, 1
	addi	t0, t0, 1
	beq	a4, a2, .LBB4_75
.LBB4_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blez	x2, .LBB4_4
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	regsw_c	x12, 0x600(x26)		# 110100110011000000000
	addi	x4, x2, -1
	li	x3, 2
	mv	x7, x4
	bltu	x3, x2, .LBB4_31
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	regsw_c	x6, 0x0(x19)		# 100110011000000000000
	li	x3, 3
	mv	x6, x4
	bltu	x3, x2, .LBB4_32
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	regsw_c	x6, 0x0(x19)		# 100110011000000000000
	li	x5, 4
	mv	x8, x4
	bltu	x5, x2, .LBB4_33
.LBB4_9:                                #   in Loop: Header=BB4_5 Depth=1
	regsw_c	x6, 0x0(x19)		# 100110011000000000000
	li	x9, 5
	mv	x5, x4
	bgeu	x9, x2, .LBB4_11
.LBB4_10:                               #   in Loop: Header=BB4_5 Depth=1
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
	li	x5, 6
	li	x4, 5
.LBB4_11:                               #   in Loop: Header=BB4_5 Depth=1
	regsw_c	x9, 0x5ae(x27)		# 110110100110110101110
	addi	x2, x2, -1
	seqz	x2, x2
	lbu	x9, 0(a0)
	addi	x2, x2, -1
	and	x2, x2, a2
	add	x2, a0, x2
	lbu	x2, 0(x2)
	regsw_c	x29, 0x1f7(x26)		# 110101110100111110111
	mulw	x7, x7, a2
	add	x7, a0, x7
	lbu	x7, 0(x7)
	ld	x10, %lo(clp)(t2)
	add	x2, x2, x9
	mul	x2, x2, t3
	add	x7, x7, x9
	regsw_c	x29, 0x576(x26)		# 110101110110101110110
	mulw	x6, x6, a2
	add	x6, a0, x6
	lbu	x6, 0(x6)
	mulw	x8, x8, a2
	add	x8, a0, x8
	lbu	x8, 0(x8)
	mul	x7, x7, t4
	regsw_c	x15, 0x576(x31)		# 111110111110101110110
	add	x6, x6, x9
	mul	x6, x6, t5
	add	x8, x8, x9
	mulw	x4, x4, a2
	add	x4, a0, x4
	lbu	x4, 0(x4)
	mulw	x5, x5, a2
	regsw_c	x13, 0x7fe(x23)		# 101110110111111111110
	add	x5, a0, x5
	lbu	x5, 0(x5)
	mul	x8, x8, t6
	add	x4, x4, x9
	mul	x4, x4, x1
	add	x5, x5, x9
	slli	x9, x5, 2
	regsw_c	x31, 0x7fe(x31)		# 111111111111111111110
	add	x5, x9, x5
	add	x6, x7, x6
	add	x6, x6, x8
	add	x4, x6, x4
	add	x2, x2, x4
	add	x2, x2, x5
	addi	x2, x2, 256
	regsw_c	x28, 0x318(x27)		# 110111110001100011000
	sraiw	x2, x2, 9
	add	x2, x10, x2
	lbu	x2, 0(x2)
	sb	x2, 0(a1)
	lw	x2, %lo(height)(a3)
	blt	x2, x3, .LBB4_4
# %bb.12:                               # %.preheader2
                                        #   in Loop: Header=BB4_5 Depth=1
	regsw_c	x9, 0x120(x18)		# 100100100100100100000
	li	x3, 0
	li	x4, 2
	li	x5, 8
	mv	x6, t0
	mv	x7, a6
	li	x10, 2
	j	.LBB4_15
.LBB4_13:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x2, x9
.LBB4_14:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x15, 0x5f6(x31)		# 111110111110111110110
	subw	x10, x5, x13
	addi	x10, x10, -6
	subw	x12, x5, x12
	addi	x12, x12, -6
	subw	x11, x5, x11
	addi	x11, x11, -6
	lbu	x13, 0(x6)
	regsw_c	x29, 0x376(x26)		# 110101110101101110110
	mulw	x14, x14, a2
	add	x14, a0, x14
	lbu	x14, 0(x14)
	addw	x18, a2, x3
	add	x18, a0, x18
	lbu	x18, 0(x18)
	mulw	x16, x16, a2
	regsw_c	x15, 0x1bd(x23)		# 101110111100110111101
	add	x16, a0, x16
	lbu	x16, 0(x16)
	add	x13, x14, x13
	ld	x14, %lo(clp)(t2)
	mul	x13, x13, t3
	add	x16, x16, x18
	add	x18, a0, x3
	regsw_c	x11, 0x5ae(x27)		# 110110101110110101110
	lbu	x18, 0(x18)
	mulw	x15, x15, a2
	add	x15, a0, x15
	lbu	x15, 0(x15)
	mulw	x11, x11, a2
	add	x11, a0, x11
	lbu	x11, 0(x11)
	regsw_c	x29, 0x5f7(x26)		# 110101110110111110111
	mulw	x17, x17, a2
	add	x17, a0, x17
	lbu	x17, 0(x17)
	mul	x16, x16, t4
	add	x15, x15, x18
	mul	x15, x15, t5
	add	x11, x17, x11
	regsw_c	x29, 0x576(x26)		# 110101110110101110110
	mulw	x12, x12, a2
	add	x12, a0, x12
	lbu	x12, 0(x12)
	mulw	x9, x9, a2
	add	x9, a0, x9
	lbu	x9, 0(x9)
	mulw	x10, x10, a2
	regsw_c	x13, 0x3b7(x23)		# 101110110101110110111
	add	x10, a0, x10
	lbu	x10, 0(x10)
	mulw	x2, x2, a2
	add	x2, a0, x2
	lbu	x2, 0(x2)
	mul	x11, x11, t6
	add	x9, x9, x12
	regsw_c	x29, 0x7ff(x31)		# 111111110111111111111
	mul	x9, x9, x1
	add	x2, x2, x10
	slli	x10, x2, 2
	add	x2, x10, x2
	add	x13, x13, x16
	add	x13, x13, x15
	add	x11, x13, x11
	regsw_c	x29, 0x5f3(x31)		# 111111110110111110011
	add	x9, x11, x9
	add	x2, x9, x2
	addi	x2, x2, 256
	sraiw	x2, x2, 9
	add	x2, x14, x2
	lbu	x2, 0(x2)
	sb	x2, 0(x7)
	regsw_c	x13, 0x5b6(x19)		# 100110110110110110110
	lw	x2, %lo(height)(a3)
	add	x7, x7, a5
	add	x6, x6, a7
	addi	x5, x5, 2
	addw	x3, x3, t1
	addiw	x4, x4, 2
	mv	x10, x8
	regsw_c	x0, 0x0(x12)		# 011000000000000000000
	bge	x8, x2, .LBB4_4
.LBB4_15:                               #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x6, 0x0(x19)		# 100110011000000000000
	li	x8, 3
	mv	x11, x4
	bgeu	x4, x8, .LBB4_20
# %bb.16:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x6, 0x0(x19)		# 100110011000000000000
	li	x8, 4
	mv	x12, x4
	bgeu	x4, x8, .LBB4_21
.LBB4_17:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x6, 0x0(x19)		# 100110011000000000000
	li	x8, 5
	mv	x13, x4
	bgeu	x4, x8, .LBB4_22
.LBB4_18:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	addiw	x9, x2, -1
	blt	x10, x9, .LBB4_23
.LBB4_19:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x13, 0x4c0(x27)		# 110110110110011000000
	mv	x14, x9
	addiw	x15, x2, -2
	addi	x8, x10, 2
	mv	x16, x8
	bge	x10, x15, .LBB4_24
	j	.LBB4_25
.LBB4_20:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x12, 0x600(x18)		# 100100110011000000000
	li	x11, 3
	li	x8, 4
	mv	x12, x4
	bltu	x4, x8, .LBB4_17
.LBB4_21:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x12, 0x600(x18)		# 100100110011000000000
	li	x12, 4
	li	x8, 5
	mv	x13, x4
	bltu	x4, x8, .LBB4_18
.LBB4_22:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x6, 0x0(x19)		# 100110011000000000000
	li	x13, 5
	addiw	x9, x2, -1
	bge	x10, x9, .LBB4_19
.LBB4_23:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x13, 0x4c0(x27)		# 110110110110011000000
	addi	x14, x5, -5
	addiw	x15, x2, -2
	addi	x8, x10, 2
	mv	x16, x8
	blt	x10, x15, .LBB4_25
.LBB4_24:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x16, x9
.LBB4_25:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	addiw	x15, x2, -3
	blt	x10, x15, .LBB4_28
# %bb.26:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	mv	x15, x9
	addiw	x17, x2, -4
	bge	x10, x17, .LBB4_29
.LBB4_27:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x17, x5, -2
	addiw	x2, x2, -5
	bge	x10, x2, .LBB4_13
	j	.LBB4_30
.LBB4_28:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x15, x5, -3
	addiw	x17, x2, -4
	blt	x10, x17, .LBB4_27
.LBB4_29:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	mv	x17, x9
	addiw	x2, x2, -5
	bge	x10, x2, .LBB4_13
.LBB4_30:                               #   in Loop: Header=BB4_15 Depth=2
	regsw_c	x0, 0x0(x27)		# 110110000000000000000
	addi	x9, x5, -1
	mv	x2, x5
	j	.LBB4_14
.LBB4_31:                               #   in Loop: Header=BB4_5 Depth=1
	regsw_c	x12, 0x600(x18)		# 100100110011000000000
	li	x7, 2
	li	x3, 3
	mv	x6, x4
	bgeu	x3, x2, .LBB4_8
.LBB4_32:                               #   in Loop: Header=BB4_5 Depth=1
	regsw_c	x12, 0x600(x18)		# 100100110011000000000
	li	x6, 3
	li	x5, 4
	mv	x8, x4
	bgeu	x5, x2, .LBB4_9
.LBB4_33:                               #   in Loop: Header=BB4_5 Depth=1
	regsw_c	x12, 0x600(x18)		# 100100110011000000000
	li	x8, 4
	li	x9, 5
	mv	x5, x4
	bltu	x9, x2, .LBB4_10
	j	.LBB4_11
.LBB4_34:
	blez	a2, .LBB4_75
# %bb.35:
	lui	a3, %hi(height)
	regsw_c	x16, 0x0(x16)		# 100001000000000000000
	lw	x13, %lo(height)(a3)
	blez	x13, .LBB4_75
# %bb.36:
	li	a4, 0
	slli	a7, a2, 32
	srli	a5, a7, 32
	srli	a6, a7, 31
	srli	a7, a7, 30
	lui	t0, %hi(clp)
	li	t1, -30
	li	t2, -18
	li	t3, 113
	li	t4, 242
	li	t5, 192
	li	t6, 35
	regsw_c	x9, 0x120(x18)		# 100100100100100100000
	li	x1, -38
	li	x2, -10
	li	x3, 11
	li	x4, 9
	li	x5, 7
	li	x6, 5
	j	.LBB4_38
.LBB4_37:                               #   in Loop: Header=BB4_38 Depth=1
	addi	a0, a0, 1
	addiw	a4, a4, 1
	addi	a1, a1, 1
	beq	a4, a2, .LBB4_75
.LBB4_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_41 Depth 2
	regsw_c	x0, 0x0(x4)		# 001000000000000000000
	blez	x13, .LBB4_37
# %bb.39:                               # %.preheader
                                        #   in Loop: Header=BB4_38 Depth=1
	regsw_c	x9, 0x100(x18)		# 100100100100100000000
	li	x7, 0
	li	x8, 0
	li	x12, 0
	mv	x9, a0
	mv	x10, a1
	j	.LBB4_41
.LBB4_40:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x29, 0x1b5(x26)		# 110101110100110110101
	mulw	x12, x20, a2
	add	x12, a0, x12
	lbu	x12, 0(x12)
	ld	x20, %lo(clp)(t0)
	slli	x12, x12, 3
	mulw	x22, x25, a2
	add	x22, a0, x22
	regsw_c	x11, 0x5ae(x27)		# 110110101110110101110
	lbu	x22, 0(x22)
	mulw	x24, x24, a2
	add	x24, a0, x24
	lbu	x24, 0(x24)
	mulw	x23, x23, a2
	add	x23, a0, x23
	lbu	x23, 0(x23)
	regsw_c	x29, 0x5ae(x27)		# 110111110110110101110
	slli	x25, x22, 2
	add	x22, x25, x22
	mul	x24, x24, t1
	mul	x23, x23, t2
	mulw	x21, x21, a2
	add	x21, a0, x21
	lbu	x21, 0(x21)
	regsw_c	x29, 0x576(x26)		# 110101110110101110110
	mulw	x19, x19, a2
	add	x19, a0, x19
	lbu	x19, 0(x19)
	mulw	x18, x18, a2
	add	x18, a0, x18
	lbu	x18, 0(x18)
	mulw	x17, x17, a2
	regsw_c	x13, 0x5b6(x23)		# 101110110110110110110
	add	x17, a0, x17
	lbu	x17, 0(x17)
	mul	x21, x21, t3
	mul	x19, x19, t4
	mul	x18, x18, t5
	mul	x17, x17, t6
	mulw	x14, x14, a2
	regsw_c	x13, 0x3b5(x23)		# 101110110101110110101
	add	x14, a0, x14
	lbu	x14, 0(x14)
	mulw	x16, x16, a2
	add	x16, a0, x16
	lbu	x16, 0(x16)
	mulw	x15, x15, a2
	add	x15, a0, x15
	regsw_c	x11, 0x5ff(x27)		# 110110101110111111111
	lbu	x15, 0(x15)
	mulw	x13, x13, a2
	add	x13, a0, x13
	lbu	x13, 0(x13)
	mul	x14, x14, x1
	mul	x16, x16, x2
	mul	x15, x15, x3
	regsw_c	x31, 0x7ff(x27)		# 110111111111111111111
	slli	x13, x13, 1
	add	x12, x12, x24
	add	x12, x12, x22
	add	x21, x23, x21
	add	x19, x21, x19
	add	x12, x12, x19
	add	x17, x18, x17
	regsw_c	x31, 0x7f6(x31)		# 111111111111111110110
	add	x14, x17, x14
	add	x14, x14, x16
	add	x12, x12, x14
	add	x13, x15, x13
	add	x12, x12, x13
	addi	x12, x12, 256
	sraiw	x12, x12, 9
	regsw_c	x12, 0x736(x31)		# 111110110011100110110
	add	x12, x20, x12
	lbu	x12, 0(x12)
	add	x13, x10, a5
	sb	x12, 0(x13)
	lw	x13, %lo(height)(a3)
	addiw	x8, x8, 4
	add	x10, x10, a6
	regsw_c	x12, 0x600(x27)		# 110110110011000000000
	add	x9, x9, a7
	addi	x7, x7, -4
	mv	x12, x11
	bge	x11, x13, .LBB4_37
.LBB4_41:                               #   Parent Loop BB4_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	addiw	x14, x13, -2
	blt	x12, x14, .LBB4_43
# %bb.42:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x13, 0x4c0(x27)		# 110110110110011000000
	mv	x15, x14
	addiw	x17, x13, -4
	addi	x11, x12, 4
	mv	x16, x11
	bge	x12, x17, .LBB4_44
	j	.LBB4_45
.LBB4_43:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x13, 0x4c0(x27)		# 110110110110011000000
	addi	x15, x8, 2
	addiw	x17, x13, -4
	addi	x11, x12, 4
	mv	x16, x11
	blt	x12, x17, .LBB4_45
.LBB4_44:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	mv	x16, x14
.LBB4_45:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	addiw	x17, x13, -6
	blt	x12, x17, .LBB4_49
# %bb.46:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	mv	x17, x14
	addiw	x18, x13, -8
	bge	x12, x18, .LBB4_50
.LBB4_47:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x18, x8, 8
	addiw	x19, x13, -10
	bge	x12, x19, .LBB4_51
.LBB4_48:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x19, x8, 10
	addiw	x13, x13, -12
	blt	x12, x13, .LBB4_52
	j	.LBB4_53
.LBB4_49:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x17, x8, 6
	addiw	x18, x13, -8
	blt	x12, x18, .LBB4_47
.LBB4_50:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	mv	x18, x14
	addiw	x19, x13, -10
	blt	x12, x19, .LBB4_48
.LBB4_51:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	mv	x19, x14
	addiw	x13, x13, -12
	bge	x12, x13, .LBB4_53
.LBB4_52:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addi	x14, x8, 12
.LBB4_53:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x29, 0x7be(x27)		# 110111110111110111110
	addiw	x13, x8, -10
	sltu	x20, x8, x13
	addi	x20, x20, -1
	and	x13, x20, x13
	addiw	x20, x8, -8
	sltu	x21, x8, x20
	addi	x21, x21, -1
	regsw_c	x15, 0x5f6(x31)		# 111110111110111110110
	and	x20, x21, x20
	addiw	x21, x8, -6
	sltu	x22, x8, x21
	addi	x22, x22, -1
	and	x21, x22, x21
	seqz	x22, x7
	addi	x23, x8, -4
	regsw_c	x29, 0x3b7(x27)		# 110111110101110110111
	addi	x22, x22, -1
	and	x23, x22, x23
	mulw	x13, x13, a2
	add	x13, a0, x13
	lbu	x13, 0(x13)
	addi	x24, x8, -2
	and	x22, x22, x24
	regsw_c	x13, 0x3b5(x19)		# 100110110101110110101
	ld	x24, %lo(clp)(t0)
	slli	x13, x13, 3
	mulw	x20, x20, a2
	add	x20, a0, x20
	lbu	x20, 0(x20)
	mulw	x21, x21, a2
	add	x21, a0, x21
	regsw_c	x11, 0x5be(x27)		# 110110101110110111110
	lbu	x21, 0(x21)
	mulw	x23, x23, a2
	add	x23, a0, x23
	lbu	x23, 0(x23)
	slli	x25, x20, 2
	add	x20, x25, x20
	mul	x21, x21, t1
	regsw_c	x11, 0x5b5(x27)		# 110110101110110110101
	mul	x23, x23, t2
	mulw	x22, x22, a2
	add	x22, a0, x22
	lbu	x22, 0(x22)
	lbu	x25, 0(x9)
	mulw	x15, x15, a2
	add	x15, a0, x15
	regsw_c	x11, 0x5b6(x27)		# 110110101110110110110
	lbu	x15, 0(x15)
	mulw	x16, x16, a2
	add	x16, a0, x16
	lbu	x16, 0(x16)
	mul	x22, x22, t3
	mul	x25, x25, t4
	mul	x15, x15, t5
	regsw_c	x11, 0x5ae(x27)		# 110110101110110101110
	mul	x16, x16, t6
	mulw	x17, x17, a2
	add	x17, a0, x17
	lbu	x17, 0(x17)
	mulw	x18, x18, a2
	add	x18, a0, x18
	lbu	x18, 0(x18)
	regsw_c	x29, 0x577(x26)		# 110101110110101110111
	mulw	x19, x19, a2
	add	x19, a0, x19
	lbu	x19, 0(x19)
	mulw	x14, x14, a2
	add	x14, a0, x14
	lbu	x14, 0(x14)
	mul	x17, x17, x1
	regsw_c	x29, 0x7ff(x31)		# 111111110111111111111
	mul	x18, x18, x2
	mul	x19, x19, x3
	slli	x14, x14, 1
	add	x13, x13, x21
	add	x13, x13, x20
	add	x22, x23, x22
	add	x22, x22, x25
	regsw_c	x31, 0x7ff(x31)		# 111111111111111111111
	add	x15, x22, x15
	add	x13, x13, x15
	add	x16, x16, x17
	add	x16, x16, x18
	add	x16, x16, x19
	add	x14, x16, x14
	add	x13, x13, x14
	regsw_c	x15, 0x4e3(x27)		# 110110111110011100011
	addi	x13, x13, 256
	sraiw	x13, x13, 9
	add	x13, x24, x13
	lbu	x13, 0(x13)
	sb	x13, 0(x10)
	li	x14, 1
	bgeu	x12, x4, .LBB4_64
# %bb.54:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x16, 0x0(x17)		# 100011000000000000000
	li	x13, 1
	bltu	x12, x5, .LBB4_65
.LBB4_55:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	addi	x15, x8, -7
	bltu	x12, x6, .LBB4_66
.LBB4_56:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x0, 0x0(x25)		# 110010000000000000000
	addi	x16, x8, -5
	beqz	x7, .LBB4_67
.LBB4_57:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x9, 0x4c0(x27)		# 110110100110011000000
	addi	x17, x8, -1
	addi	x14, x8, -3
	lw	x22, %lo(height)(a3)
	addiw	x20, x22, -1
	bge	x12, x20, .LBB4_68
.LBB4_58:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x18, x8, 1
	addiw	x19, x22, -3
	bge	x12, x19, .LBB4_69
.LBB4_59:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x19, x8, 3
	addiw	x21, x22, -5
	bge	x12, x21, .LBB4_70
.LBB4_60:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x21, x8, 5
	addiw	x23, x22, -7
	bge	x12, x23, .LBB4_71
.LBB4_61:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x23, x8, 7
	addiw	x24, x22, -9
	bge	x12, x24, .LBB4_72
.LBB4_62:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x24, x8, 9
	addiw	x25, x22, -11
	bge	x12, x25, .LBB4_73
.LBB4_63:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	addi	x25, x8, 11
	addiw	x22, x22, -13
	bge	x12, x22, .LBB4_40
	j	.LBB4_74
.LBB4_64:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x16, 0x0(x25)		# 110011000000000000000
	addi	x13, x8, -9
	bgeu	x12, x5, .LBB4_55
.LBB4_65:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x16, 0x0(x17)		# 100011000000000000000
	li	x15, 1
	bgeu	x12, x6, .LBB4_56
.LBB4_66:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x0, 0x0(x17)		# 100010000000000000000
	li	x16, 1
	bnez	x7, .LBB4_57
.LBB4_67:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x12, 0x600(x18)		# 100100110011000000000
	li	x17, 1
	lw	x22, %lo(height)(a3)
	addiw	x20, x22, -1
	blt	x12, x20, .LBB4_58
.LBB4_68:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	mv	x18, x20
	addiw	x19, x22, -3
	blt	x12, x19, .LBB4_59
.LBB4_69:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	mv	x19, x20
	addiw	x21, x22, -5
	blt	x12, x21, .LBB4_60
.LBB4_70:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	mv	x21, x20
	addiw	x23, x22, -7
	blt	x12, x23, .LBB4_61
.LBB4_71:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	mv	x23, x20
	addiw	x24, x22, -9
	blt	x12, x24, .LBB4_62
.LBB4_72:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	mv	x24, x20
	addiw	x25, x22, -11
	blt	x12, x25, .LBB4_63
.LBB4_73:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x6, 0x0(x27)		# 110110011000000000000
	mv	x25, x20
	addiw	x22, x22, -13
	bge	x12, x22, .LBB4_40
.LBB4_74:                               #   in Loop: Header=BB4_41 Depth=2
	regsw_c	x0, 0x0(x24)		# 110000000000000000000
	addi	x20, x8, 13
	j	.LBB4_40
.LBB4_75:
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
