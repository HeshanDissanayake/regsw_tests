	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"configfile.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	JMHelpExit                      # -- Begin function JMHelpExit
	.p2align	2
	.type	JMHelpExit,@function
JMHelpExit:                             # @JMHelpExit
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.185)
	addi	a0, a0, %lo(.L.str.185)
	li	a1, 955
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.Lfunc_end0:
	.size	JMHelpExit, .Lfunc_end0-JMHelpExit
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Configure
.LCPI1_0:
	.quad	72075203408037889               # 0x100100400400801
	.text
	.globl	Configure
	.p2align	2
	.type	Configure,@function
Configure:                              # @Configure
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
	fsd	fs0, 16(sp)                     # 8-byte Folded Spill
	mv	s0, a1
	mv	s1, a0
	lui	a0, %hi(configinput)
	addi	a0, a0, %lo(configinput)
	lui	a1, 1
	addiw	a2, a1, 232
	li	a1, 0
	call	memset
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	lui	a0, %hi(Map)
	ld	a0, %lo(Map)(a0)
	lui	s9, %hi(Map)
	addi	s9, s9, %lo(Map)
	beqz	a0, .LBB1_7
# %bb.1:                                # %.preheader15
	addi	a0, s9, 56
	li	a1, 2
	j	.LBB1_4
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	fld	fa5, -32(a0)
	ld	a2, -48(a0)
	fsd	fa5, 0(a2)
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	ld	a2, 0(a0)
	addi	a0, a0, 56
	beqz	a2, .LBB1_7
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	lw	a2, -40(a0)
	beq	a2, a1, .LBB1_2
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	bnez	a2, .LBB1_3
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	fld	fa5, -32(a0)
	ld	a2, -48(a0)
	fcvt.w.d	a3, fa5, rtz
	sw	a3, 0(a2)
	j	.LBB1_3
.LBB1_7:
	li	a0, 2
	bne	s1, a0, .LBB1_11
# %bb.8:
	ld	a1, 8(s0)
	lbu	a0, 0(a1)
	addi	a0, a0, -45
	bnez	a0, .LBB1_10
# %bb.9:
	lbu	a0, 1(a1)
	addi	a0, a0, -104
.LBB1_10:
	bnez	a0, .LBB1_18
	j	.LBB1_17
.LBB1_11:
	li	a0, 3
	blt	s1, a0, .LBB1_18
# %bb.12:
	ld	a1, 8(s0)
	lbu	a0, 0(a1)
	addi	a0, a0, -45
	mv	a2, a0
	beqz	a0, .LBB1_159
# %bb.13:
	beqz	a2, .LBB1_160
.LBB1_14:
	lui	s3, %hi(.L.str.186)
	addi	s3, s3, %lo(.L.str.186)
	li	s10, 1
	bnez	a0, .LBB1_16
.LBB1_15:
	lbu	a0, 1(a1)
	addi	a0, a0, -104
.LBB1_16:
	bnez	a0, .LBB1_19
.LBB1_17:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.185)
	addi	a0, a0, %lo(.L.str.185)
	li	a1, 955
	li	a2, 1
	call	fwrite
	li	a0, -1
	call	exit
.LBB1_18:
	lui	s3, %hi(.L.str.186)
	addi	s3, s3, %lo(.L.str.186)
	li	s10, 1
.LBB1_19:
	lui	a0, %hi(.L.str.190)
	addi	a0, a0, %lo(.L.str.190)
	mv	a1, s3
	call	printf
	mv	a0, s3
	call	GetConfigFileContent
	mv	s3, a0
	bnez	a0, .LBB1_21
# %bb.20:
	lui	a0, %hi(errortext)
	addi	a0, a0, %lo(errortext)
	li	a1, 300
	call	error
.LBB1_21:
	mv	a0, s3
	call	strlen
	sext.w	a1, a0
	mv	a0, s3
	call	ParseContent
	li	a0, 10
	call	putchar
	mv	a0, s3
	call	free
	bge	s10, s1, .LBB1_49
# %bb.22:                               # %.preheader13
	lui	s3, %hi(errortext)
	addi	s3, s3, %lo(errortext)
	li	s5, 45
	li	s4, 61
	li	s6, 32
	lui	s7, %hi(.L.str.196)
	addi	s7, s7, %lo(.L.str.196)
	j	.LBB1_26
.LBB1_23:                               #   in Loop: Header=BB1_26 Depth=1
	lbu	a0, 1(a4)
	addi	a0, a0, -112
	beqz	a0, .LBB1_28
.LBB1_24:                               #   in Loop: Header=BB1_26 Depth=1
	li	a1, 300
	mv	a0, s3
	mv	a2, s7
	mv	a3, s10
	call	snprintf
	li	a1, 300
	mv	a0, s3
	call	error
.LBB1_25:                               #   in Loop: Header=BB1_26 Depth=1
	bge	s10, s1, .LBB1_49
.LBB1_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
                                        #     Child Loop BB1_42 Depth 2
                                        #       Child Loop BB1_44 Depth 3
                                        #       Child Loop BB1_45 Depth 3
	slli	s2, s10, 3
	add	s2, s0, s2
	ld	a4, 0(s2)
	lbu	a0, 0(a4)
	addi	a0, a0, -45
	beqz	a0, .LBB1_35
# %bb.27:                               #   in Loop: Header=BB1_26 Depth=1
	bnez	a0, .LBB1_24
.LBB1_28:                               #   in Loop: Header=BB1_26 Depth=1
	li	s8, 0
	addiw	s10, s10, 1
	bge	s10, s1, .LBB1_40
# %bb.29:                               #   in Loop: Header=BB1_26 Depth=1
	slli	s11, s10, 3
	add	s11, s0, s11
	mv	s2, s10
.LBB1_30:                               #   Parent Loop BB1_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 0(s11)
	lbu	a1, 0(a0)
	beq	a1, s5, .LBB1_33
# %bb.31:                               #   in Loop: Header=BB1_30 Depth=2
	call	strlen
	add	s8, s8, a0
	addiw	s2, s2, 1
	addi	s11, s11, 8
	bne	s1, s2, .LBB1_30
# %bb.32:                               #   in Loop: Header=BB1_26 Depth=1
	mv	s2, s1
.LBB1_33:                               #   in Loop: Header=BB1_26 Depth=1
	addiw	a0, s8, 1000
	call	malloc
	mv	s8, a0
	beqz	a0, .LBB1_41
.LBB1_34:                               #   in Loop: Header=BB1_26 Depth=1
	sb	zero, 0(s8)
	blt	s10, s2, .LBB1_42
	j	.LBB1_48
.LBB1_35:                               #   in Loop: Header=BB1_26 Depth=1
	lbu	a0, 1(a4)
	li	a1, 104
	beq	a0, a1, .LBB1_17
# %bb.36:                               #   in Loop: Header=BB1_26 Depth=1
	lbu	a0, 1(a4)
	li	a1, 102
	bne	a0, a1, .LBB1_23
# %bb.37:                               #   in Loop: Header=BB1_26 Depth=1
	ld	a0, 8(s2)
	call	GetConfigFileContent
	mv	s8, a0
	bnez	a0, .LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_26 Depth=1
	li	a1, 300
	mv	a0, s3
	call	error
.LBB1_39:                               #   in Loop: Header=BB1_26 Depth=1
	ld	a1, 8(s2)
	lui	a0, %hi(.L.str.190)
	addi	a0, a0, %lo(.L.str.190)
	call	printf
	mv	a0, s8
	call	strlen
	sext.w	a1, a0
	mv	a0, s8
	call	ParseContent
	li	a0, 10
	call	putchar
	mv	a0, s8
	call	free
	addiw	s10, s10, 2
	j	.LBB1_25
.LBB1_40:                               #   in Loop: Header=BB1_26 Depth=1
	mv	s2, s10
	addiw	a0, s8, 1000
	call	malloc
	mv	s8, a0
	bnez	a0, .LBB1_34
.LBB1_41:                               #   in Loop: Header=BB1_26 Depth=1
	lui	a0, %hi(.L.str.194)
	addi	a0, a0, %lo(.L.str.194)
	call	no_mem_exit
	sb	zero, 0(s8)
	bge	s10, s2, .LBB1_48
.LBB1_42:                               #   Parent Loop BB1_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_44 Depth 3
                                        #       Child Loop BB1_45 Depth 3
	slli	a0, s10, 3
	add	a0, s0, a0
	ld	s11, 0(a0)
	mv	a0, s8
	call	strlen
	add	a0, s8, a0
	lbu	a1, 0(s11)
	bne	a1, s4, .LBB1_45
	j	.LBB1_44
.LBB1_43:                               #   in Loop: Header=BB1_45 Depth=3
	sb	a1, 0(a0)
	addi	a0, a0, 1
	addi	s11, s11, 1
	lbu	a1, 0(s11)
	bne	a1, s4, .LBB1_45
.LBB1_44:                               #   Parent Loop BB1_26 Depth=1
                                        #     Parent Loop BB1_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sb	s6, 0(a0)
	sb	s4, 1(a0)
	sb	s6, 2(a0)
	addi	a0, a0, 3
	addi	s11, s11, 1
	lbu	a1, 0(s11)
	beq	a1, s4, .LBB1_44
.LBB1_45:                               #   Parent Loop BB1_26 Depth=1
                                        #     Parent Loop BB1_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bnez	a1, .LBB1_43
# %bb.46:                               #   in Loop: Header=BB1_42 Depth=2
	addiw	a1, s10, 1
	addi	s10, s10, 1
	sb	zero, 0(a0)
	bne	s2, a1, .LBB1_42
# %bb.47:                               #   in Loop: Header=BB1_26 Depth=1
	mv	s10, s2
.LBB1_48:                               #   in Loop: Header=BB1_26 Depth=1
	lui	a0, %hi(.L.str.195)
	addi	a0, a0, %lo(.L.str.195)
	mv	a1, s8
	call	printf
	mv	a0, s8
	call	strlen
	sext.w	a1, a0
	mv	a0, s8
	call	ParseContent
	mv	a0, s8
	call	free
	li	a0, 10
	call	putchar
	j	.LBB1_25
.LBB1_49:
	li	a0, 10
	call	putchar
	lui	a0, %hi(Map)
	ld	a3, %lo(Map)(a0)
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	beqz	a3, .LBB1_74
# %bb.50:
	addi	a0, a0, 2047
	lw	a0, 1921(a0)
	li	a1, 6
	mul	a0, a0, a1
	addi	a0, a0, -48
	fcvt.d.w	fs0, a0
	addi	s5, s9, 32
	li	s6, 3
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	s1, %hi(.L.str.261)
	addi	s1, s1, %lo(.L.str.261)
	li	s7, 2
	lui	s2, %hi(.L.str.264)
	addi	s2, s2, %lo(.L.str.264)
	lui	s3, %hi(.L.str.263)
	addi	s3, s3, %lo(.L.str.263)
	li	s8, 1
	lui	s4, %hi(.L.str.262)
	addi	s4, s4, %lo(.L.str.262)
	j	.LBB1_55
.LBB1_51:                               #   in Loop: Header=BB1_55 Depth=1
	li	a1, 300
	mv	a0, s0
	mv	a2, s1
.LBB1_52:                               #   in Loop: Header=BB1_55 Depth=1
	call	snprintf
.LBB1_53:                               #   in Loop: Header=BB1_55 Depth=1
	li	a1, 400
	mv	a0, s0
	call	error
.LBB1_54:                               #   in Loop: Header=BB1_55 Depth=1
	ld	a3, 24(s5)
	addi	s5, s5, 56
	beqz	a3, .LBB1_73
.LBB1_55:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 0(s5)
	beq	a0, s6, .LBB1_65
# %bb.56:                               #   in Loop: Header=BB1_55 Depth=1
	beq	a0, s7, .LBB1_61
# %bb.57:                               #   in Loop: Header=BB1_55 Depth=1
	bne	a0, s8, .LBB1_54
# %bb.58:                               #   in Loop: Header=BB1_55 Depth=1
	lw	a0, -16(s5)
	beq	a0, s7, .LBB1_70
# %bb.59:                               #   in Loop: Header=BB1_55 Depth=1
	bnez	a0, .LBB1_54
# %bb.60:                               #   in Loop: Header=BB1_55 Depth=1
	ld	a0, -24(s5)
	lw	a0, 0(a0)
	fld	fa5, 8(s5)
	fld	fa4, 16(s5)
	fcvt.w.d	a4, fa5, rtz
	fcvt.w.d	a5, fa4, rtz
	bge	a0, a4, .LBB1_67
	j	.LBB1_51
.LBB1_61:                               #   in Loop: Header=BB1_55 Depth=1
	lw	a0, -16(s5)
	beq	a0, s7, .LBB1_68
# %bb.62:                               #   in Loop: Header=BB1_55 Depth=1
	bnez	a0, .LBB1_54
# %bb.63:                               #   in Loop: Header=BB1_55 Depth=1
	ld	a0, -24(s5)
	fld	fa5, 8(s5)
	lw	a0, 0(a0)
	fcvt.w.d	a4, fa5, rtz
	bge	a0, a4, .LBB1_54
# %bb.64:                               #   in Loop: Header=BB1_55 Depth=1
	li	a1, 300
	mv	a0, s0
	mv	a2, s3
	call	snprintf
	j	.LBB1_53
.LBB1_65:                               #   in Loop: Header=BB1_55 Depth=1
	lw	a0, -16(s5)
	bnez	a0, .LBB1_54
# %bb.66:                               #   in Loop: Header=BB1_55 Depth=1
	ld	a0, -24(s5)
	fld	fa5, 8(s5)
	lw	a0, 0(a0)
	fld	fa4, 16(s5)
	fsub.d	fa5, fa5, fs0
	fcvt.w.d	a4, fa5, rtz
	fcvt.w.d	a5, fa4, rtz
	blt	a0, a4, .LBB1_51
.LBB1_67:                               #   in Loop: Header=BB1_55 Depth=1
	bge	a5, a0, .LBB1_54
	j	.LBB1_51
.LBB1_68:                               #   in Loop: Header=BB1_55 Depth=1
	ld	a0, -24(s5)
	fld	fa4, 0(a0)
	fld	fa5, 8(s5)
	flt.d	a0, fa4, fa5
	beqz	a0, .LBB1_54
# %bb.69:                               #   in Loop: Header=BB1_55 Depth=1
	fmv.x.d	a4, fa5
	li	a1, 300
	mv	a0, s0
	mv	a2, s2
	call	snprintf
	j	.LBB1_53
.LBB1_70:                               #   in Loop: Header=BB1_55 Depth=1
	ld	a0, -24(s5)
	fld	fa3, 0(a0)
	fld	fa5, 8(s5)
	fld	fa4, 16(s5)
	flt.d	a0, fa3, fa5
	bnez	a0, .LBB1_72
# %bb.71:                               #   in Loop: Header=BB1_55 Depth=1
	flt.d	a0, fa4, fa3
	beqz	a0, .LBB1_54
.LBB1_72:                               #   in Loop: Header=BB1_55 Depth=1
	fmv.x.d	a4, fa5
	fmv.x.d	a5, fa4
	li	a1, 300
	mv	a0, s0
	mv	a2, s4
	j	.LBB1_52
.LBB1_73:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_74:
	addi	a1, a0, 2047
	fld	fa5, 1009(a1)
	fmv.d.x	fa4, zero
	feq.d	a2, fa5, fa4
	beqz	a2, .LBB1_76
# %bb.75:
	lui	a2, 8223
	slli	a2, a2, 37
	sd	a2, 1009(a1)
.LBB1_76:
	li	a2, 4
	sw	a2, 148(a0)
	sw	a2, 152(a0)
	sw	a2, 156(a0)
	sw	a2, 160(a0)
	sw	a2, 164(a0)
	li	a3, 2
	sw	a3, 168(a0)
	sw	a3, 172(a0)
	sw	a2, 176(a0)
	sw	a3, 180(a0)
	sw	a3, 184(a0)
	sw	a3, 188(a0)
	li	a1, 1
	sw	a1, 192(a0)
	sw	a1, 196(a0)
	sw	a3, 200(a0)
	sw	a1, 204(a0)
	sw	a1, 208(a0)
	li	a3, 16
	sw	a3, 84(a0)
	sw	a3, 88(a0)
	sw	a3, 92(a0)
	sw	a3, 96(a0)
	sw	a3, 100(a0)
	li	a4, 8
	sw	a4, 104(a0)
	sw	a4, 108(a0)
	sw	a3, 112(a0)
	sw	a4, 116(a0)
	sw	a4, 120(a0)
	sw	a4, 124(a0)
	sw	a2, 128(a0)
	lw	a3, 1940(a0)
	sw	a2, 132(a0)
	sw	a4, 136(a0)
	sw	a2, 140(a0)
	sw	a2, 144(a0)
	beqz	a3, .LBB1_78
# %bb.77:
	lw	a1, 1244(a0)
	addi	a1, a1, 1
.LBB1_78:
	lw	a4, 52(a0)
	li	a3, -1
	mv	a2, a4
	beq	a4, a3, .LBB1_87
.LBB1_79:
	lui	a1, %hi(log2_max_frame_num_minus4)
	sw	a2, %lo(log2_max_frame_num_minus4)(a1)
	bnez	a2, .LBB1_82
# %bb.80:
	lw	a1, 36(a0)
	li	a2, 16
	bne	a1, a2, .LBB1_82
.LBB1_81:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.217)
	addi	a2, a2, %lo(.L.str.217)
	li	a1, 300
	li	a3, 16
	mv	a0, s0
	call	snprintf
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_82:
	lw	a2, 56(a0)
	li	a3, -1
	beq	a2, a3, .LBB1_96
.LBB1_83:
	lui	a3, %hi(log2_max_pic_order_cnt_lsb_minus4)
	lw	a1, 20(a0)
	addi	a4, a2, 3
	li	a5, 1
	sllw	a4, a5, a4
	slliw	a5, a1, 2
	sw	a2, %lo(log2_max_pic_order_cnt_lsb_minus4)(a3)
	bge	a4, a5, .LBB1_85
# %bb.84:
	lui	a0, %hi(.L.str.218)
	addi	a0, a0, %lo(.L.str.218)
	li	a1, 400
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 20(a0)
	lw	a3, 1244(a0)
	bge	a1, a3, .LBB1_106
	j	.LBB1_86
.LBB1_85:
	lw	a3, 1244(a0)
	bge	a1, a3, .LBB1_106
.LBB1_86:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.219)
	addi	a2, a2, %lo(.L.str.219)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	li	a1, 400
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a3, 1244(a0)
	bnez	a3, .LBB1_107
	j	.LBB1_109
.LBB1_87:
	lw	a2, 8(a0)
	mul	a1, a2, a1
	addiw	a1, a1, -1
	beqz	a1, .LBB1_91
# %bb.88:                               # %.preheader10
	li	a2, -1
	mv	a3, a1
.LBB1_89:                               # =>This Inner Loop Header: Depth=1
	srliw	a3, a3, 1
	addiw	a2, a2, 1
	bnez	a3, .LBB1_89
# %bb.90:
	li	a3, 3
	bgeu	a2, a3, .LBB1_92
.LBB1_91:
	lui	a1, %hi(log2_max_frame_num_minus4)
	sw	zero, %lo(log2_max_frame_num_minus4)(a1)
	lw	a1, 36(a0)
	li	a2, 16
	bne	a1, a2, .LBB1_82
	j	.LBB1_81
.LBB1_92:                               # %.preheader9
	li	a2, -1
	mv	a3, a1
.LBB1_93:                               # =>This Inner Loop Header: Depth=1
	srliw	a3, a3, 1
	addiw	a2, a2, 1
	bnez	a3, .LBB1_93
# %bb.94:
	li	a3, 15
	bgeu	a3, a2, .LBB1_164
# %bb.95:
	lui	a1, %hi(log2_max_frame_num_minus4)
	li	a2, 12
	sw	a2, %lo(log2_max_frame_num_minus4)(a1)
	lw	a2, 56(a0)
	li	a3, -1
	bne	a2, a3, .LBB1_83
.LBB1_96:
	lw	a1, 20(a0)
	lw	a2, 8(a0)
	addi	a4, a1, 1
	mul	a2, a2, a4
	slli	a2, a2, 1
	addi	a2, a2, -1
	mv	a4, a2
.LBB1_97:                               # =>This Inner Loop Header: Depth=1
	srliw	a4, a4, 1
	addiw	a3, a3, 1
	bnez	a4, .LBB1_97
# %bb.98:
	li	a4, 3
	bgeu	a3, a4, .LBB1_100
# %bb.99:
	li	a3, 0
	j	.LBB1_105
.LBB1_100:                              # %.preheader7
	li	a4, -1
	mv	a3, a2
.LBB1_101:                              # =>This Inner Loop Header: Depth=1
	srliw	a3, a3, 1
	addiw	a4, a4, 1
	bnez	a3, .LBB1_101
# %bb.102:
	li	a5, 15
	li	a3, 12
	bltu	a5, a4, .LBB1_105
# %bb.103:                              # %.preheader6
	li	a3, -4
.LBB1_104:                              # =>This Inner Loop Header: Depth=1
	srliw	a2, a2, 1
	addi	a3, a3, 1
	bnez	a2, .LBB1_104
.LBB1_105:
	lui	a2, %hi(log2_max_pic_order_cnt_lsb_minus4)
	sw	a3, %lo(log2_max_pic_order_cnt_lsb_minus4)(a2)
	lw	a3, 1244(a0)
	blt	a1, a3, .LBB1_86
.LBB1_106:
	beqz	a3, .LBB1_109
.LBB1_107:
	lw	a3, 1256(a0)
	li	a1, 2
	bltu	a3, a1, .LBB1_109
# %bb.108:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.220)
	addi	a2, a2, %lo(.L.str.220)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	li	a1, 400
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_109:
	addi	a2, a0, 2047
	lw	a1, 1505(a2)
	bgtz	a1, .LBB1_111
# %bb.110:
	lw	a2, 1509(a2)
	blez	a2, .LBB1_116
.LBB1_111:
	lw	a2, 1260(a0)
	bnez	a2, .LBB1_113
# %bb.112:
	lui	a0, %hi(.L.str.221)
	addi	a0, a0, %lo(.L.str.221)
	call	printf
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a1, 1505(a1)
.LBB1_113:
	li	a2, 1
	sw	a2, 1260(a0)
	blez	a1, .LBB1_116
# %bb.114:
	addi	a1, a0, 2047
	lw	a3, 1513(a1)
	li	a1, 2
	bltu	a3, a1, .LBB1_116
# %bb.115:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.222)
	addi	a2, a2, %lo(.L.str.222)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	li	a1, 400
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_116:
	addi	a1, a0, 2047
	lw	a3, 937(a1)
	li	a1, 2
	bltu	a3, a1, .LBB1_118
# %bb.117:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.223)
	addi	a2, a2, %lo(.L.str.223)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	li	a1, 400
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_118:
	addi	a0, a0, 228
	li	a1, 0
	call	open
	lui	a1, %hi(p_in)
	li	a2, -1
	sw	a0, %lo(p_in)(a1)
	bne	a0, a2, .LBB1_120
# %bb.119:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a3, a0, 228
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.224)
	addi	a2, a2, %lo(.L.str.224)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	li	a1, 500
	mv	a0, s0
	call	error
.LBB1_120:
	lui	s0, %hi(input)
	ld	s3, %lo(input)(s0)
	lbu	a0, 628(s3)
	beqz	a0, .LBB1_123
# %bb.121:
	addi	a0, s3, 628
	li	a1, 577
	li	a2, 384
	call	open
	ld	s3, %lo(input)(s0)
	lui	a1, %hi(p_dec)
	li	a2, -1
	sw	a0, %lo(p_dec)(a1)
	bne	a0, a2, .LBB1_123
# %bb.122:
	addi	a3, s3, 628
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.225)
	addi	a2, a2, %lo(.L.str.225)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	s3, %lo(input)(a0)
.LBB1_123:
	lw	a0, 68(s3)
	addi	a1, s3, 2047
	slli	a2, a0, 1
	srli	a2, a2, 60
	add	a2, a0, a2
	srliw	a2, a2, 4
	slli	a2, a2, 4
	subw	a0, a0, a2
	seqz	a2, a0
	li	a3, 16
	subw	a3, a3, a0
	addiw	a2, a2, -1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a4, 1505(a1)
	and	a2, a2, a3
	lui	a3, 22
	add	a3, a0, a3
	sw	a2, 464(a3)
	bnez	a4, .LBB1_125
# %bb.124:
	lw	a1, 1509(a1)
	beqz	a1, .LBB1_156
.LBB1_125:
	lwu	a1, 72(s3)
	andi	a0, a1, 1
	beqz	a0, .LBB1_127
# %bb.126:
	lui	a0, %hi(.L.str.226)
	addi	a0, a0, %lo(.L.str.226)
	li	a1, 500
	call	error
	lui	a0, %hi(input)
	ld	s3, %lo(input)(a0)
	lw	a1, 72(s3)
.LBB1_127:
	sraiw	a0, a1, 31
	srliw	a0, a0, 27
	add	a0, a1, a0
	andi	a0, a0, -32
	subw	a3, a1, a0
	bnez	a3, .LBB1_167
# %bb.128:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a2, 22
	add	a2, a0, a2
	lw	a2, 464(a2)
.LBB1_129:
	lui	a3, 22
	add	a0, a0, a3
	sw	zero, 468(a0)
	bnez	a2, .LBB1_166
# %bb.130:
	lw	a0, 212(s3)
	li	a1, 1
	bne	a0, a1, .LBB1_133
.LBB1_131:
	addi	a0, s3, 2047
	lw	a0, 1509(a0)
	beqz	a0, .LBB1_133
# %bb.132:
	lbu	a0, 216(s3)
	andi	a0, a0, 1
	beqz	a0, .LBB1_133
	j	.LBB1_312
.LBB1_133:
	addi	a0, s3, 2047
	addi	a0, a0, 1577
	lw	a1, 200(a0)
	beqz	a1, .LBB1_175
# %bb.134:
	lw	a1, 204(a0)
	li	a2, 6
	bltu	a2, a1, .LBB1_175
# %bb.135:
	li	a2, 69
	srl	a2, a2, a1
	andi	a2, a2, 1
	beqz	a2, .LBB1_175
# %bb.136:
	lbu	a2, 0(a0)
	beqz	a2, .LBB1_146
# %bb.137:
	lui	a1, %hi(.L.str.197)
	addi	a1, a1, %lo(.L.str.197)
	call	fopen
	lui	a1, %hi(input)
	ld	s3, %lo(input)(a1)
	beqz	a0, .LBB1_158
# %bb.138:
	mv	s0, a0
	addi	a0, s3, 2047
	lw	a1, 1781(a0)
	li	a0, 6
	addi	s4, s3, 2047
	beq	a1, a0, .LBB1_147
.LBB1_139:
	li	a0, 2
	beq	a1, a0, .LBB1_161
# %bb.140:
	bnez	a1, .LBB1_174
# %bb.141:
	lw	s1, 1777(s4)
	slli	a0, s1, 2
	addi	a0, a0, 4
	call	malloc
	sd	a0, 1809(s4)
	bnez	a0, .LBB1_143
# %bb.142:
	lui	a0, %hi(.L.str.230)
	addi	a0, a0, %lo(.L.str.230)
	call	no_mem_exit
	lui	a0, %hi(input)
	ld	s3, %lo(input)(a0)
	addi	a0, s3, 2047
	lw	s1, 1777(a0)
.LBB1_143:
	bltz	s1, .LBB1_174
# %bb.144:                              # %.preheader1
	li	s4, 0
	li	s5, -1
	lui	s1, %hi(.L.str.205)
	addi	s1, s1, %lo(.L.str.205)
	lui	s2, %hi(.L.str.231)
	addi	s2, s2, %lo(.L.str.231)
	lui	s6, %hi(input)
.LBB1_145:                              # =>This Inner Loop Header: Depth=1
	addi	a0, s3, 2047
	ld	a2, 1809(a0)
	add	a2, a2, s4
	mv	a0, s0
	mv	a1, s1
	call	__isoc99_fscanf
	mv	a0, s0
	mv	a1, s2
	call	__isoc99_fscanf
	ld	s3, %lo(input)(s6)
	addi	a0, s3, 2047
	lw	a0, 1777(a0)
	addi	s5, s5, 1
	addi	s4, s4, 4
	blt	s5, a0, .LBB1_145
	j	.LBB1_174
.LBB1_146:
	li	s0, 0
	li	a0, 6
	addi	s4, s3, 2047
	bne	a1, a0, .LBB1_139
.LBB1_147:
	lw	a1, 1505(s4)
	li	a0, 1
	bnez	a1, .LBB1_149
# %bb.148:
	lw	a0, 1509(s4)
	snez	a0, a0
.LBB1_149:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a2, 68(s3)
	lui	a3, 22
	addiw	a3, a3, 464
	add	a1, a1, a3
	lw	a3, 0(a1)
	add	a2, a3, a2
	sraiw	a3, a2, 31
	lw	a4, 72(s3)
	lw	a1, 4(a1)
	srliw	a3, a3, 28
	add	a2, a2, a3
	sraiw	s1, a2, 4
	add	a1, a1, a4
	sraiw	a2, a1, 31
	srliw	a2, a2, 28
	add	a1, a1, a2
	sraiw	a1, a1, 4
	andi	a0, a0, 1
	addi	a0, a0, 1
	divw	s2, a1, a0
	mul	a0, s2, s1
	call	malloc
	sd	a0, 1801(s4)
	bnez	a0, .LBB1_151
# %bb.150:
	lui	a0, %hi(.L.str.234)
	addi	a0, a0, %lo(.L.str.234)
	call	no_mem_exit
.LBB1_151:
	mulw	s5, s2, s1
	blez	s5, .LBB1_174
# %bb.152:
	li	s6, 0
	lui	s1, %hi(.L.str.205)
	addi	s1, s1, %lo(.L.str.205)
	lui	s7, %hi(input)
	lui	s2, %hi(errortext)
	addi	s2, s2, %lo(errortext)
	lui	s3, %hi(.L.str.235)
	addi	s3, s3, %lo(.L.str.235)
	lui	s4, %hi(.L.str.231)
	addi	s4, s4, %lo(.L.str.231)
	j	.LBB1_154
.LBB1_153:                              #   in Loop: Header=BB1_154 Depth=1
	mv	a0, s0
	mv	a1, s4
	call	__isoc99_fscanf
	addi	s6, s6, 1
	beq	s5, s6, .LBB1_174
.LBB1_154:                              # =>This Inner Loop Header: Depth=1
	addi	a2, sp, 12
	mv	a0, s0
	mv	a1, s1
	call	__isoc99_fscanf
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	ld	a0, 1801(a0)
	lbu	a1, 12(sp)
	add	a0, a0, s6
	sb	a1, 0(a0)
	ld	a0, %lo(input)(s7)
	addi	a0, a0, 2047
	ld	a1, 1801(a0)
	add	a1, a1, s6
	lbu	a1, 0(a1)
	lw	a2, 1777(a0)
	bge	a2, a1, .LBB1_153
# %bb.155:                              #   in Loop: Header=BB1_154 Depth=1
	addi	a3, a0, 1577
	li	a1, 300
	mv	a0, s2
	mv	a2, s3
	call	snprintf
	li	a1, 500
	mv	a0, s2
	call	error
	j	.LBB1_153
.LBB1_156:
	lw	a1, 72(s3)
	slli	a3, a1, 1
	srli	a3, a3, 60
	add	a3, a1, a3
	andi	a3, a3, -16
	subw	a3, a1, a3
	beqz	a3, .LBB1_129
# %bb.157:
	li	a4, 16
	j	.LBB1_168
.LBB1_158:
	addi	a0, s3, 2047
	addi	a3, a0, 1577
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.225)
	addi	a2, a2, %lo(.L.str.225)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	li	a1, 500
	mv	a0, s0
	call	error
	j	.LBB1_175
.LBB1_159:
	lbu	a2, 1(a1)
	addi	a2, a2, -100
	bnez	a2, .LBB1_14
.LBB1_160:
	ld	s3, 16(s0)
	li	s10, 3
	bnez	a0, .LBB1_16
	j	.LBB1_15
.LBB1_161:
	lw	s1, 1777(s4)
	slli	s1, s1, 2
	mv	a0, s1
	call	malloc
	mv	s2, a0
	sd	a0, 1785(s4)
	mv	a0, s1
	call	malloc
	sd	a0, 1793(s4)
	beqz	s2, .LBB1_170
# %bb.162:
	beqz	a0, .LBB1_171
.LBB1_163:
	addi	a0, s3, 2047
	lw	a0, 1777(a0)
	bgtz	a0, .LBB1_172
	j	.LBB1_174
.LBB1_164:                              # %.preheader8
	li	a2, -4
.LBB1_165:                              # =>This Inner Loop Header: Depth=1
	srliw	a1, a1, 1
	addiw	a2, a2, 1
	bnez	a1, .LBB1_165
	j	.LBB1_79
.LBB1_166:
	li	a3, 0
	j	.LBB1_169
.LBB1_167:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a2, 22
	add	a2, a0, a2
	lw	a2, 464(a2)
	li	a4, 32
.LBB1_168:
	subw	a3, a4, a3
	lui	a4, 22
	add	a0, a0, a4
	sw	a3, 468(a0)
.LBB1_169:
	lw	a4, 68(s3)
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	addw	a2, a4, a2
	addw	a3, a1, a3
	lui	a1, %hi(.L.str.227)
	addi	a1, a1, %lo(.L.str.227)
	call	fprintf
	lui	a0, %hi(input)
	ld	s3, %lo(input)(a0)
	lw	a0, 212(s3)
	li	a1, 1
	beq	a0, a1, .LBB1_131
	j	.LBB1_133
.LBB1_170:
	lui	a0, %hi(.L.str.232)
	addi	a0, a0, %lo(.L.str.232)
	call	no_mem_exit
	lui	a0, %hi(input)
	ld	s3, %lo(input)(a0)
	addi	a0, s3, 2047
	ld	a0, 1793(a0)
	bnez	a0, .LBB1_163
.LBB1_171:
	lui	a0, %hi(.L.str.233)
	addi	a0, a0, %lo(.L.str.233)
	call	no_mem_exit
	lui	a0, %hi(input)
	ld	s3, %lo(input)(a0)
	addi	a0, s3, 2047
	lw	a0, 1777(a0)
	blez	a0, .LBB1_174
.LBB1_172:                              # %.preheader3
	li	s4, 0
	li	s5, 0
	lui	s1, %hi(.L.str.205)
	addi	s1, s1, %lo(.L.str.205)
	lui	s2, %hi(.L.str.231)
	addi	s2, s2, %lo(.L.str.231)
	lui	s6, %hi(input)
.LBB1_173:                              # =>This Inner Loop Header: Depth=1
	addi	a0, s3, 2047
	ld	a2, 1785(a0)
	add	a2, a2, s4
	mv	a0, s0
	mv	a1, s1
	call	__isoc99_fscanf
	mv	a0, s0
	mv	a1, s2
	call	__isoc99_fscanf
	ld	a0, %lo(input)(s6)
	addi	a0, a0, 2047
	ld	a2, 1793(a0)
	add	a2, a2, s4
	mv	a0, s0
	mv	a1, s1
	call	__isoc99_fscanf
	mv	a0, s0
	mv	a1, s2
	call	__isoc99_fscanf
	ld	s3, %lo(input)(s6)
	addi	a0, s3, 2047
	lw	a0, 1777(a0)
	addi	s5, s5, 1
	addi	s4, s4, 4
	blt	s5, a0, .LBB1_173
.LBB1_174:
	mv	a0, s0
	call	fclose
.LBB1_175:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a2, 929(a1)
	beqz	a2, .LBB1_180
# %bb.176:
	lw	a2, 1944(a0)
	beqz	a2, .LBB1_180
# %bb.177:
	lw	a2, 1505(a1)
	bnez	a2, .LBB1_179
# %bb.178:
	lw	a1, 1509(a1)
	beqz	a1, .LBB1_180
.LBB1_179:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.236)
	addi	a1, a1, %lo(.L.str.236)
	li	a2, 65
	mv	a0, s0
	call	memcpy
	li	a1, 400
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_180:
	addi	a1, a0, 2047
	lw	a2, 933(a1)
	beqz	a2, .LBB1_185
# %bb.181:
	lw	a2, 1944(a0)
	beqz	a2, .LBB1_185
# %bb.182:
	lw	a2, 1505(a1)
	bnez	a2, .LBB1_184
# %bb.183:
	lw	a1, 1509(a1)
	beqz	a1, .LBB1_185
.LBB1_184:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.237)
	addi	a1, a1, %lo(.L.str.237)
	li	a2, 67
	mv	a0, s0
	call	memcpy
	li	a1, 400
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_185:
	addi	a1, a0, 2047
	lw	a3, 1505(a1)
	li	s1, 3
	bgeu	a3, s1, .LBB1_193
# %bb.186:
	addi	a1, a0, 2047
	lw	a3, 1509(a1)
	bgeu	a3, s1, .LBB1_194
.LBB1_187:
	addi	a2, a0, 2047
	lw	a1, 1089(a2)
	beqz	a1, .LBB1_195
.LBB1_188:
	li	a2, 3
	blt	a1, a2, .LBB1_190
.LBB1_189:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.241)
	addi	a1, a1, %lo(.L.str.241)
	li	a2, 91
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a1, 1089(a1)
.LBB1_190:
	li	a2, 2
	bne	a1, a2, .LBB1_197
# %bb.191:
	lw	a1, 0(a0)
	li	a2, 100
	blt	a1, a2, .LBB1_197
# %bb.192:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.242)
	addi	a1, a1, %lo(.L.str.242)
	li	a2, 58
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	j	.LBB1_197
.LBB1_193:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.238)
	addi	a2, a2, %lo(.L.str.238)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	li	a1, 400
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a3, 1509(a1)
	bltu	a3, s1, .LBB1_187
.LBB1_194:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.239)
	addi	a2, a2, %lo(.L.str.239)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	li	a1, 400
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a2, a0, 2047
	lw	a1, 1089(a2)
	bnez	a1, .LBB1_188
.LBB1_195:
	lw	a1, 1509(a2)
	beqz	a1, .LBB1_197
# %bb.196:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.240)
	addi	a1, a1, %lo(.L.str.240)
	li	a2, 55
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a1, 1089(a1)
	li	a2, 3
	bge	a1, a2, .LBB1_189
	j	.LBB1_190
.LBB1_197:
	lw	a1, 24(a0)
	li	a2, 2
	bne	a1, a2, .LBB1_201
# %bb.198:
	addi	a1, a0, 2047
	lw	a1, 1917(a1)
	beqz	a1, .LBB1_201
# %bb.199:
	li	a2, 3
	beq	a1, a2, .LBB1_201
# %bb.200:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.243)
	addi	a1, a1, %lo(.L.str.243)
	li	a2, 59
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_201:
	addi	a1, a0, 2047
	lw	a3, 1537(a1)
	lw	a4, 36(a0)
	bltz	a3, .LBB1_204
# %bb.202:
	bge	a3, a4, .LBB1_204
# %bb.203:
	bgtz	a3, .LBB1_205
	j	.LBB1_206
.LBB1_204:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.244)
	addi	a2, a2, %lo(.L.str.244)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a3, 1537(a1)
	blez	a3, .LBB1_206
.LBB1_205:
	addi	a1, a0, 2047
	lw	a1, 941(a1)
	beqz	a1, .LBB1_208
.LBB1_206:
	addi	a1, a0, 2047
	lw	a2, 1505(a1)
	bnez	a2, .LBB1_209
.LBB1_207:
	lw	a2, 1509(a1)
	bnez	a2, .LBB1_209
	j	.LBB1_211
.LBB1_208:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.245)
	addi	a1, a1, %lo(.L.str.245)
	li	a2, 66
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a2, 1505(a1)
	beqz	a2, .LBB1_207
.LBB1_209:
	lw	a1, 1565(a1)
	li	a2, 1
	bne	a1, a2, .LBB1_211
# %bb.210:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.246)
	addi	a1, a1, %lo(.L.str.246)
	li	a2, 42
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_211:
	addi	a1, a0, 2047
	lw	a3, 941(a1)
	li	a2, 1
	beq	a3, a2, .LBB1_214
# %bb.212:
	lw	a1, 1565(a1)
	bne	a1, a2, .LBB1_214
# %bb.213:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.247)
	addi	a1, a1, %lo(.L.str.247)
	li	a2, 64
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_214:
	lw	a1, 1904(a0)
	bgtz	a1, .LBB1_216
# %bb.215:
	lw	a1, 1908(a0)
	blez	a1, .LBB1_218
.LBB1_216:
	addi	a1, a0, 2047
	lw	a1, 1509(a1)
	beqz	a1, .LBB1_218
# %bb.217:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.248)
	addi	a1, a1, %lo(.L.str.248)
	li	a2, 66
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_218:
	addi	a1, a0, 2047
	lw	a1, 1537(a1)
	blez	a1, .LBB1_221
# %bb.219:
	lw	a1, 1904(a0)
	blez	a1, .LBB1_221
# %bb.220:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.249)
	addi	a1, a1, %lo(.L.str.249)
	li	a2, 70
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_221:
	addi	a1, a0, 2047
	lw	a2, 1777(a1)
	blez	a2, .LBB1_224
# %bb.222:
	lw	a2, 1781(a1)
	addiw	a2, a2, -3
	li	a3, 2
	bltu	a3, a2, .LBB1_224
# %bb.223:
	li	a2, 1
	sw	a2, 1777(a1)
.LBB1_224:
	lw	a2, 1861(a1)
	beqz	a2, .LBB1_227
# %bb.225:
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a3, 72(a0)
	lui	a4, 22
	addiw	a4, a4, 464
	add	a2, a2, a4
	lw	a4, 4(a2)
	lw	a5, 68(a0)
	lw	a2, 0(a2)
	add	a3, a4, a3
	add	a2, a2, a5
	mul	a2, a2, a3
	sraiw	a3, a2, 31
	lw	a1, 1873(a1)
	srliw	a3, a3, 24
	add	a2, a2, a3
	sraiw	a2, a2, 8
	remw	a1, a2, a1
	beqz	a1, .LBB1_227
# %bb.226:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.250)
	addi	a1, a1, %lo(.L.str.250)
	li	a2, 59
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_227:
	lw	a1, 1244(a0)
	beqz	a1, .LBB1_233
# %bb.228:
	lw	a1, 1940(a0)
	beqz	a1, .LBB1_233
# %bb.229:
	lw	a1, 1236(a0)
	beqz	a1, .LBB1_233
# %bb.230:
	lw	a1, 1228(a0)
	beqz	a1, .LBB1_233
# %bb.231:
	addi	a1, a0, 2047
	lw	a1, 1833(a1)
	beqz	a1, .LBB1_233
# %bb.232:
	lui	a0, %hi(.L.str.251)
	addi	a0, a0, %lo(.L.str.251)
	li	a1, -1000
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_233:
	lw	a1, 1256(a0)
	bnez	a1, .LBB1_237
# %bb.234:
	lw	a1, 36(a0)
	li	a2, 1
	blt	a2, a1, .LBB1_237
# %bb.235:
	lw	a1, 1244(a0)
	blez	a1, .LBB1_237
# %bb.236:
	lui	a0, %hi(.L.str.252)
	addi	a0, a0, %lo(.L.str.252)
	li	a1, -1000
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_237:
	addi	a1, a0, 2047
	lw	a1, 1845(a1)
	beqz	a1, .LBB1_242
# %bb.238:
	lw	a1, 1280(a0)
	beqz	a1, .LBB1_240
# %bb.239:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.253)
	addi	a1, a1, %lo(.L.str.253)
	li	a2, 52
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a1, 1845(a1)
	beqz	a1, .LBB1_242
.LBB1_240:
	lw	a1, 0(a0)
	addiw	a1, a1, -145
	li	a2, -46
	bltu	a2, a1, .LBB1_242
# %bb.241:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.254)
	addi	a2, a2, %lo(.L.str.254)
	li	a1, 300
	li	a3, 100
	li	a4, 144
	mv	a0, s0
	call	snprintf
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_242:
	addi	a1, a0, 2047
	lw	a1, 1881(a1)
	beqz	a1, .LBB1_245
# %bb.243:
	lw	a1, 0(a0)
	addiw	a1, a1, -145
	li	a2, -46
	bltu	a2, a1, .LBB1_245
# %bb.244:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.255)
	addi	a2, a2, %lo(.L.str.255)
	li	a1, 300
	li	a3, 100
	li	a4, 144
	mv	a0, s0
	call	snprintf
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_245:
	lw	a1, 76(a0)
	li	a2, 2
	bne	a1, a2, .LBB1_248
# %bb.246:
	lw	a1, 0(a0)
	li	a2, 121
	blt	a2, a1, .LBB1_251
# %bb.247:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.256)
	addi	a2, a2, %lo(.L.str.256)
	li	a1, 300
	li	a3, 122
	li	a4, 144
	mv	a0, s0
	call	snprintf
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 76(a0)
.LBB1_248:
	li	a2, 3
	bne	a1, a2, .LBB1_251
# %bb.249:
	lw	a1, 0(a0)
	li	a2, 143
	blt	a2, a1, .LBB1_253
# %bb.250:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.257)
	addi	a2, a2, %lo(.L.str.257)
	li	a1, 300
	li	a3, 144
	mv	a0, s0
	call	snprintf
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 76(a0)
	li	a2, 3
	beq	a1, a2, .LBB1_253
.LBB1_251:
	addi	a1, a0, 2047
	lw	a1, 1953(a1)
	beqz	a1, .LBB1_253
# %bb.252:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.258)
	addi	a1, a1, %lo(.L.str.258)
	li	a2, 54
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_253:
	lw	a1, 1264(a0)
	beqz	a1, .LBB1_256
# %bb.254:
	lw	a1, 32(a0)
	lw	a2, 1272(a0)
	bge	a1, a2, .LBB1_256
# %bb.255:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.259)
	addi	a1, a1, %lo(.L.str.259)
	li	a2, 59
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_256:
	lw	a1, 1232(a0)
	beqz	a1, .LBB1_259
# %bb.257:
	addi	a1, a0, 2047
	lw	a2, 1505(a1)
	li	a3, 1
	sw	a3, 929(a1)
	beqz	a2, .LBB1_259
# %bb.258:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.260)
	addi	a1, a1, %lo(.L.str.260)
	li	a2, 59
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_259:
	lw	a1, 0(a0)
	addi	a2, a1, -66
	li	a3, 56
	bltu	a3, a2, .LBB1_308
# %bb.260:
	lui	a3, %hi(.LCPI1_0)
	ld	a3, %lo(.LCPI1_0)(a3)
	srl	a2, a3, a2
	andi	a2, a2, 1
	beqz	a2, .LBB1_308
.LBB1_261:
	li	a2, 66
	bne	a1, a2, .LBB1_275
# %bb.262:
	lw	a1, 1244(a0)
	bnez	a1, .LBB1_264
# %bb.263:
	lw	a1, 1940(a0)
	li	a2, 2
	bne	a1, a2, .LBB1_265
.LBB1_264:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.266)
	addi	a1, a1, %lo(.L.str.266)
	li	a2, 40
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_265:
	lw	a1, 1280(a0)
	beqz	a1, .LBB1_267
# %bb.266:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.267)
	addi	a1, a1, %lo(.L.str.267)
	li	a2, 41
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_267:
	addi	a1, a0, 2047
	lw	a1, 945(a1)
	beqz	a1, .LBB1_269
# %bb.268:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.268)
	addi	a1, a1, %lo(.L.str.268)
	li	a2, 46
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_269:
	lw	a1, 1904(a0)
	beqz	a1, .LBB1_271
# %bb.270:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.269)
	addi	a1, a1, %lo(.L.str.269)
	li	a2, 48
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_271:
	lw	a1, 1908(a0)
	beqz	a1, .LBB1_273
# %bb.272:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.269)
	addi	a1, a1, %lo(.L.str.269)
	li	a2, 48
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_273:
	addi	a1, a0, 2047
	lw	a1, 937(a1)
	li	a2, 1
	bne	a1, a2, .LBB1_275
# %bb.274:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.270)
	addi	a1, a1, %lo(.L.str.270)
	li	a2, 34
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_275:
	lw	a1, 0(a0)
	li	a2, 77
	bne	a1, a2, .LBB1_285
# %bb.276:
	lw	a1, 1280(a0)
	beqz	a1, .LBB1_278
# %bb.277:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.271)
	addi	a1, a1, %lo(.L.str.271)
	li	a2, 37
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_278:
	addi	a1, a0, 2047
	lw	a1, 945(a1)
	beqz	a1, .LBB1_280
# %bb.279:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.272)
	addi	a1, a1, %lo(.L.str.272)
	li	a2, 42
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_280:
	addi	a1, a0, 2047
	lw	a1, 1777(a1)
	beqz	a1, .LBB1_282
# %bb.281:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.273)
	addi	a1, a1, %lo(.L.str.273)
	li	a2, 56
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_282:
	addi	a1, a0, 2047
	lw	a1, 1829(a1)
	beqz	a1, .LBB1_284
# %bb.283:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.274)
	addi	a1, a1, %lo(.L.str.274)
	li	a2, 44
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_284:
	lw	a1, 0(a0)
.LBB1_285:
	li	a2, 88
	bne	a1, a2, .LBB1_289
# %bb.286:
	lw	a1, 1260(a0)
	beqz	a1, .LBB1_310
# %bb.287:
	addi	a1, a0, 2047
	lw	a1, 937(a1)
	li	a2, 1
	bne	a1, a2, .LBB1_289
.LBB1_288:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.276)
	addi	a1, a1, %lo(.L.str.276)
	li	a2, 34
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_289:
	lw	a1, 4(a0)
	li	a2, 30
	blt	a1, a2, .LBB1_291
# %bb.290:
	lw	a2, 1260(a0)
	beqz	a2, .LBB1_311
.LBB1_291:
	addiw	a1, a1, -42
	li	a2, -22
	bltu	a2, a1, .LBB1_295
.LBB1_292:
	addi	a1, a0, 2047
	lw	a2, 1505(a1)
	bgtz	a2, .LBB1_294
# %bb.293:
	lw	a1, 1509(a1)
	blez	a1, .LBB1_295
.LBB1_294:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.278)
	addi	a1, a1, %lo(.L.str.278)
	li	a2, 103
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_295:
	addi	a0, a0, 2047
	lw	a0, 1853(a0)
	beqz	a0, .LBB1_307
# %bb.296:
	lui	s0, %hi(.Lstr.282)
	addi	s0, s0, %lo(.Lstr.282)
	mv	a0, s0
	call	puts
	lui	a0, %hi(.Lstr.280)
	addi	a0, a0, %lo(.Lstr.280)
	call	puts
	mv	a0, s0
	call	puts
	lui	a0, %hi(Map)
	ld	a1, %lo(Map)(a0)
	beqz	a1, .LBB1_306
# %bb.297:                              # %.preheader
	li	s3, 2
	lui	s0, %hi(.L.str.216)
	addi	s0, s0, %lo(.L.str.216)
	li	s4, 1
	lui	s1, %hi(.L.str.215)
	addi	s1, s1, %lo(.L.str.215)
	lui	s2, %hi(.L.str.214)
	addi	s2, s2, %lo(.L.str.214)
	j	.LBB1_301
.LBB1_298:                              #   in Loop: Header=BB1_301 Depth=1
	ld	a2, 8(s9)
	mv	a0, s1
.LBB1_299:                              #   in Loop: Header=BB1_301 Depth=1
	call	printf
.LBB1_300:                              #   in Loop: Header=BB1_301 Depth=1
	ld	a1, 56(s9)
	addi	s9, s9, 56
	beqz	a1, .LBB1_306
.LBB1_301:                              # =>This Inner Loop Header: Depth=1
	lw	a0, 16(s9)
	beq	a0, s3, .LBB1_305
# %bb.302:                              #   in Loop: Header=BB1_301 Depth=1
	beq	a0, s4, .LBB1_298
# %bb.303:                              #   in Loop: Header=BB1_301 Depth=1
	bnez	a0, .LBB1_300
# %bb.304:                              #   in Loop: Header=BB1_301 Depth=1
	ld	a0, 8(s9)
	lw	a2, 0(a0)
	mv	a0, s2
	j	.LBB1_299
.LBB1_305:                              #   in Loop: Header=BB1_301 Depth=1
	ld	a0, 8(s9)
	ld	a2, 0(a0)
	mv	a0, s0
	j	.LBB1_299
.LBB1_306:
	lui	a0, %hi(.Lstr.282)
	addi	a0, a0, %lo(.Lstr.282)
	call	puts
.LBB1_307:
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
	fld	fs0, 16(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.LBB1_308:
	li	a2, 144
	beq	a1, a2, .LBB1_261
# %bb.309:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.265)
	addi	a2, a2, %lo(.L.str.265)
	li	a1, 300
	li	a3, 100
	li	a4, 144
	mv	a0, s0
	call	snprintf
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 0(a0)
	j	.LBB1_261
.LBB1_310:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a1, %hi(.L.str.275)
	addi	a1, a1, %lo(.L.str.275)
	li	a2, 58
	mv	a0, s0
	call	memcpy
	li	a1, 500
	mv	a0, s0
	call	error
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a1, 937(a1)
	li	a2, 1
	beq	a1, a2, .LBB1_288
	j	.LBB1_289
.LBB1_311:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.277)
	addi	a0, a0, %lo(.L.str.277)
	li	a1, 106
	li	a2, 1
	li	s0, 1
	call	fwrite
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 4(a0)
	sw	s0, 1260(a0)
	addiw	a1, a1, -42
	li	a2, -22
	bgeu	a2, a1, .LBB1_292
	j	.LBB1_295
.LBB1_312:
	lui	s0, %hi(stderr)
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.228)
	addi	a0, a0, %lo(.L.str.228)
	li	a1, 46
	li	a2, 1
	call	fwrite
	lui	s1, %hi(input)
	ld	a1, %lo(input)(s1)
	lw	a2, 216(a1)
	slti	a0, a2, 2
	addi	a3, a0, -1
	ld	a0, %lo(stderr)(s0)
	ori	a3, a3, 1
	addw	a2, a3, a2
	sw	a2, 216(a1)
	lui	a1, %hi(.L.str.229)
	addi	a1, a1, %lo(.L.str.229)
	call	fprintf
	ld	s3, %lo(input)(s1)
	j	.LBB1_133
.Lfunc_end1:
	.size	Configure, .Lfunc_end1-Configure
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	GetConfigFileContent            # -- Begin function GetConfigFileContent
	.p2align	2
	.type	GetConfigFileContent,@function
GetConfigFileContent:                   # @GetConfigFileContent
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	lui	a1, %hi(.L.str.197)
	addi	a1, a1, %lo(.L.str.197)
	call	fopen
	beqz	a0, .LBB2_3
# %bb.1:
	mv	s1, a0
	li	a2, 2
	li	a1, 0
	call	fseek
	beqz	a0, .LBB2_7
.LBB2_2:
	lui	a0, %hi(errortext)
	addi	a0, a0, %lo(errortext)
	lui	a2, %hi(.L.str.199)
	addi	a2, a2, %lo(.L.str.199)
	j	.LBB2_4
.LBB2_3:
	lui	a0, %hi(errortext)
	addi	a0, a0, %lo(errortext)
	lui	a2, %hi(.L.str.198)
	addi	a2, a2, %lo(.L.str.198)
.LBB2_4:
	li	a1, 300
	mv	a3, s0
	call	snprintf
.LBB2_5:
	li	a0, 0
.LBB2_6:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB2_7:
	mv	a0, s1
	call	ftell
	lui	a1, 15
	addiw	a1, a1, -1439
	mv	s2, a0
	bltu	a0, a1, .LBB2_9
# %bb.8:
	lui	a0, %hi(errortext)
	addi	a0, a0, %lo(errortext)
	lui	a2, %hi(.L.str.200)
	addi	a2, a2, %lo(.L.str.200)
	li	a1, 300
	mv	a3, s2
	mv	a4, s0
	call	snprintf
	j	.LBB2_5
.LBB2_9:
	mv	a0, s1
	li	a1, 0
	li	a2, 0
	call	fseek
	bnez	a0, .LBB2_2
# %bb.10:
	addi	a0, s2, 1
	call	malloc
	mv	s0, a0
	bnez	a0, .LBB2_12
# %bb.11:
	lui	a0, %hi(.L.str.201)
	addi	a0, a0, %lo(.L.str.201)
	call	no_mem_exit
.LBB2_12:
	li	a1, 1
	mv	a0, s0
	mv	a2, s2
	mv	a3, s1
	call	fread
	add	a0, s0, a0
	sb	zero, 0(a0)
	mv	a0, s1
	call	fclose
	mv	a0, s0
	j	.LBB2_6
.Lfunc_end2:
	.size	GetConfigFileContent, .Lfunc_end2-GetConfigFileContent
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function ParseContent
	.type	ParseContent,@function
ParseContent:                           # @ParseContent
# %bb.0:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)                    # 8-byte Folded Spill
	sd	s0, 2016(sp)                    # 8-byte Folded Spill
	sd	s1, 2008(sp)                    # 8-byte Folded Spill
	sd	s2, 2000(sp)                    # 8-byte Folded Spill
	sd	s3, 1992(sp)                    # 8-byte Folded Spill
	sd	s4, 1984(sp)                    # 8-byte Folded Spill
	sd	s5, 1976(sp)                    # 8-byte Folded Spill
	sd	s6, 1968(sp)                    # 8-byte Folded Spill
	sd	s7, 1960(sp)                    # 8-byte Folded Spill
	sd	s8, 1952(sp)                    # 8-byte Folded Spill
	sd	s9, 1944(sp)                    # 8-byte Folded Spill
	sd	s10, 1936(sp)                   # 8-byte Folded Spill
	sd	s11, 1928(sp)                   # 8-byte Folded Spill
	lui	a2, 19
	addiw	a2, a2, 272
	sub	sp, sp, a2
	blez	a1, .LBB3_43
# %bb.1:                                # %.preheader5
	li	s10, 0
	li	a7, 0
	li	a6, 0
	add	a1, a0, a1
	li	a2, 26
	addi	a3, sp, 24
	lui	a4, %hi(.LJTI3_0)
	addi	a4, a4, %lo(.LJTI3_0)
	li	a5, 10
	j	.LBB3_4
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	addi	t0, a0, 1
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	mv	a0, t0
	bgeu	t0, a1, .LBB3_22
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	lbu	t0, 0(a0)
	addi	t0, t0, -9
	bltu	a2, t0, .LBB3_13
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	slli	t0, t0, 2
	add	t0, t0, a4
	lw	t1, 0(t0)
	jr	t1
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	addi	t0, a0, 1
	beqz	a6, .LBB3_18
# %bb.7:                                #   in Loop: Header=BB3_4 Depth=1
	li	a6, -1
	j	.LBB3_3
.LBB3_8:                                #   in Loop: Header=BB3_4 Depth=1
	li	a6, 0
	li	a7, 0
	addi	t0, a0, 1
	j	.LBB3_19
.LBB3_9:                                #   in Loop: Header=BB3_4 Depth=1
	sb	zero, 0(a0)
.LBB3_10:                               #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi	t0, a0, 1
	bgeu	a0, a1, .LBB3_12
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=2
	lbu	a6, 0(a0)
	mv	a0, t0
	bne	a6, a5, .LBB3_10
.LBB3_12:                               # %.loopexit4
                                        #   in Loop: Header=BB3_4 Depth=1
	li	a6, 0
	li	a7, 0
	addi	t0, t0, -1
	j	.LBB3_3
.LBB3_13:                               #   in Loop: Header=BB3_4 Depth=1
	bnez	a7, .LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_4 Depth=1
	slli	a7, s10, 3
	addiw	s10, s10, 1
	add	a7, a3, a7
	sd	a0, 0(a7)
.LBB3_15:                               #   in Loop: Header=BB3_4 Depth=1
	addi	t0, a0, 1
	li	a7, -1
	j	.LBB3_3
.LBB3_16:                               #   in Loop: Header=BB3_4 Depth=1
	addi	t0, a0, 1
	sb	zero, 0(a0)
	beqz	a6, .LBB3_20
# %bb.17:                               #   in Loop: Header=BB3_4 Depth=1
	li	t1, 0
	j	.LBB3_21
.LBB3_18:                               #   in Loop: Header=BB3_4 Depth=1
	li	a7, 0
.LBB3_19:                               #   in Loop: Header=BB3_4 Depth=1
	sb	zero, 0(a0)
	j	.LBB3_3
.LBB3_20:                               #   in Loop: Header=BB3_4 Depth=1
	slli	a0, s10, 3
	addiw	s10, s10, 1
	add	a0, a3, a0
	sd	t0, 0(a0)
	not	t1, a7
.LBB3_21:                               #   in Loop: Header=BB3_4 Depth=1
	not	a6, a6
	mv	a7, t1
	j	.LBB3_3
.LBB3_22:
	li	a0, 2
	blt	s10, a0, .LBB3_43
# %bb.23:                               # %.preheader2
	li	s11, 0
	addiw	s10, s10, -1
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	s2, %hi(.L.str.203)
	addi	s2, s2, %lo(.L.str.203)
	li	s5, 56
	lui	s3, %hi(Map)
	addi	s3, s3, %lo(Map)
	li	s1, 1
	addi	s4, s3, 56
	j	.LBB3_27
.LBB3_24:                               #   in Loop: Header=BB3_27 Depth=1
	ld	a0, 8(s6)
	ld	a1, 16(s8)
	li	a2, 200
	call	strncpy
.LBB3_25:                               #   in Loop: Header=BB3_27 Depth=1
	li	a0, 46
	call	putchar
.LBB3_26:                               #   in Loop: Header=BB3_27 Depth=1
	addiw	a0, s11, 3
	addi	s11, s11, 3
	bge	a0, s10, .LBB3_43
.LBB3_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_29 Depth 2
	slli	s8, s11, 3
	addi	a0, sp, 24
	add	s8, a0, s8
	lui	a0, %hi(Map)
	ld	a0, %lo(Map)(a0)
	ld	s7, 0(s8)
	beqz	a0, .LBB3_31
# %bb.28:                               # %.preheader
                                        #   in Loop: Header=BB3_27 Depth=1
	li	s6, 0
	mv	s9, s4
.LBB3_29:                               #   Parent Loop BB3_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a1, s7
	call	strcasecmp
	beqz	a0, .LBB3_32
# %bb.30:                               #   in Loop: Header=BB3_29 Depth=2
	ld	a0, 0(s9)
	addiw	s6, s6, 1
	addi	s9, s9, 56
	bnez	a0, .LBB3_29
.LBB3_31:                               #   in Loop: Header=BB3_27 Depth=1
	li	a1, 300
	mv	a0, s0
	lui	a2, %hi(.L.str.202)
	addi	a2, a2, %lo(.L.str.202)
	mv	a3, s7
	call	snprintf
	li	a1, 300
	mv	a0, s0
	call	error
	li	s6, -1
.LBB3_32:                               #   in Loop: Header=BB3_27 Depth=1
	ld	a1, 8(s8)
	mv	a0, s2
	call	strcasecmp
	beqz	a0, .LBB3_34
# %bb.33:                               #   in Loop: Header=BB3_27 Depth=1
	li	a2, 78
	mv	a0, s0
	lui	a1, %hi(.L.str.204)
	addi	a1, a1, %lo(.L.str.204)
	call	memcpy
	li	a1, 300
	mv	a0, s0
	call	error
.LBB3_34:                               #   in Loop: Header=BB3_27 Depth=1
	mul	s6, s6, s5
	add	s6, s3, s6
	lw	a0, 16(s6)
	li	a1, 2
	beq	a0, a1, .LBB3_40
# %bb.35:                               #   in Loop: Header=BB3_27 Depth=1
	beq	a0, s1, .LBB3_24
# %bb.36:                               #   in Loop: Header=BB3_27 Depth=1
	bnez	a0, .LBB3_26
# %bb.37:                               #   in Loop: Header=BB3_27 Depth=1
	ld	s8, 16(s8)
	addi	a2, sp, 20
	mv	a0, s8
	lui	a1, %hi(.L.str.205)
	addi	a1, a1, %lo(.L.str.205)
	call	__isoc99_sscanf
	beq	a0, s1, .LBB3_39
# %bb.38:                               #   in Loop: Header=BB3_27 Depth=1
	li	a1, 300
	mv	a0, s0
	lui	a2, %hi(.L.str.206)
	addi	a2, a2, %lo(.L.str.206)
	mv	a3, s7
	mv	a4, s8
	call	snprintf
	li	a1, 300
	mv	a0, s0
	call	error
.LBB3_39:                               #   in Loop: Header=BB3_27 Depth=1
	lw	a0, 20(sp)
	ld	a1, 8(s6)
	sw	a0, 0(a1)
	j	.LBB3_25
.LBB3_40:                               #   in Loop: Header=BB3_27 Depth=1
	ld	s8, 16(s8)
	addi	a2, sp, 8
	mv	a0, s8
	lui	a1, %hi(.L.str.208)
	addi	a1, a1, %lo(.L.str.208)
	call	__isoc99_sscanf
	beq	a0, s1, .LBB3_42
# %bb.41:                               #   in Loop: Header=BB3_27 Depth=1
	li	a1, 300
	mv	a0, s0
	lui	a2, %hi(.L.str.206)
	addi	a2, a2, %lo(.L.str.206)
	mv	a3, s7
	mv	a4, s8
	call	snprintf
	li	a1, 300
	mv	a0, s0
	call	error
.LBB3_42:                               #   in Loop: Header=BB3_27 Depth=1
	fld	fa5, 8(sp)
	ld	a0, 8(s6)
	fsd	fa5, 0(a0)
	j	.LBB3_25
.LBB3_43:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lui	a1, %hi(configinput)
	addi	a1, a1, %lo(configinput)
	lui	a2, 1
	addiw	a2, a2, 232
	call	memcpy
	lui	a0, 19
	addiw	a0, a0, 272
	add	sp, sp, a0
	ld	ra, 2024(sp)                    # 8-byte Folded Reload
	ld	s0, 2016(sp)                    # 8-byte Folded Reload
	ld	s1, 2008(sp)                    # 8-byte Folded Reload
	ld	s2, 2000(sp)                    # 8-byte Folded Reload
	ld	s3, 1992(sp)                    # 8-byte Folded Reload
	ld	s4, 1984(sp)                    # 8-byte Folded Reload
	ld	s5, 1976(sp)                    # 8-byte Folded Reload
	ld	s6, 1968(sp)                    # 8-byte Folded Reload
	ld	s7, 1960(sp)                    # 8-byte Folded Reload
	ld	s8, 1952(sp)                    # 8-byte Folded Reload
	ld	s9, 1944(sp)                    # 8-byte Folded Reload
	ld	s10, 1936(sp)                   # 8-byte Folded Reload
	ld	s11, 1928(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 2032
	ret
.Lfunc_end3:
	.size	ParseContent, .Lfunc_end3-ParseContent
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_6
	.word	.LBB3_8
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_2
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_13
	.word	.LBB3_6
	.word	.LBB3_13
	.word	.LBB3_16
	.word	.LBB3_9
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	CeilLog2                        # -- Begin function CeilLog2
	.p2align	2
	.type	CeilLog2,@function
CeilLog2:                               # @CeilLog2
# %bb.0:
	addiw	a1, a0, -1
	beqz	a1, .LBB4_4
# %bb.1:                                # %.preheader
	li	a0, 0
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	srliw	a1, a1, 1
	addiw	a0, a0, 1
	bnez	a1, .LBB4_2
# %bb.3:
	ret
.LBB4_4:
	li	a0, 0
	ret
.Lfunc_end4:
	.size	CeilLog2, .Lfunc_end4-CeilLog2
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	PatchInputNoFrames              # -- Begin function PatchInputNoFrames
	.p2align	2
	.type	PatchInputNoFrames,@function
PatchInputNoFrames:                     # @PatchInputNoFrames
# %bb.0:
	lui	a0, %hi(input)
	ld	a4, %lo(input)(a0)
	lw	a1, 8(a4)
	addi	a0, a4, 2047
	lw	a2, 1537(a0)
	addi	a1, a1, -1
	lw	a3, 1541(a0)
	addi	a2, a2, 1
	mul	a1, a2, a1
	addi	a1, a1, 1
	sw	a1, 8(a4)
	beqz	a3, .LBB5_2
# %bb.1:
	addi	a3, a3, -1
	mul	a2, a3, a2
	addi	a2, a2, 1
	sw	a2, 1541(a0)
.LBB5_2:
	lui	a0, %hi(FirstFrameIn2ndIGOP)
	sw	a1, %lo(FirstFrameIn2ndIGOP)(a0)
	ret
.Lfunc_end5:
	.size	PatchInputNoFrames, .Lfunc_end5-PatchInputNoFrames
                                        # -- End function
	.option	pop
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ProfileIDC"
	.size	.L.str, 11

	.type	configinput,@object             # @configinput
	.bss
	.globl	configinput
	.p2align	3, 0x0
configinput:
	.zero	4328
	.size	configinput, 4328

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"LevelIDC"
	.size	.L.str.1, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"FrameRate"
	.size	.L.str.2, 10

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"IDRIntraEnable"
	.size	.L.str.3, 15

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"StartFrame"
	.size	.L.str.4, 11

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"IntraPeriod"
	.size	.L.str.5, 12

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"EnableOpenGOP"
	.size	.L.str.6, 14

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"FramesToBeEncoded"
	.size	.L.str.7, 18

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"QPISlice"
	.size	.L.str.8, 9

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"QPPSlice"
	.size	.L.str.9, 9

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"QPBSlice"
	.size	.L.str.10, 9

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"FrameSkip"
	.size	.L.str.11, 10

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"UseHadamard"
	.size	.L.str.12, 12

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"DisableSubpelME"
	.size	.L.str.13, 16

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"SearchRange"
	.size	.L.str.14, 12

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"NumberReferenceFrames"
	.size	.L.str.15, 22

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"PList0References"
	.size	.L.str.16, 17

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"BList0References"
	.size	.L.str.17, 17

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"BList1References"
	.size	.L.str.18, 17

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Log2MaxFNumMinus4"
	.size	.L.str.19, 18

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Log2MaxPOCLsbMinus4"
	.size	.L.str.20, 20

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"GenerateMultiplePPS"
	.size	.L.str.21, 20

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"ResendPPS"
	.size	.L.str.22, 10

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"SourceWidth"
	.size	.L.str.23, 12

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"SourceHeight"
	.size	.L.str.24, 13

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"MbLineIntraUpdate"
	.size	.L.str.25, 18

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"SliceMode"
	.size	.L.str.26, 10

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"SliceArgument"
	.size	.L.str.27, 14

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"UseConstrainedIntraPred"
	.size	.L.str.28, 24

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"InputFile"
	.size	.L.str.29, 10

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"InputHeaderLength"
	.size	.L.str.30, 18

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"OutputFile"
	.size	.L.str.31, 11

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"ReconFile"
	.size	.L.str.32, 10

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"TraceFile"
	.size	.L.str.33, 10

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"DisposableP"
	.size	.L.str.34, 12

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"DispPQPOffset"
	.size	.L.str.35, 14

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"NumberBFrames"
	.size	.L.str.36, 14

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"BRefPicQPOffset"
	.size	.L.str.37, 16

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"DirectModeType"
	.size	.L.str.38, 15

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"DirectInferenceFlag"
	.size	.L.str.39, 20

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"SPPicturePeriodicity"
	.size	.L.str.40, 21

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"QPSPSlice"
	.size	.L.str.41, 10

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"QPSP2Slice"
	.size	.L.str.42, 11

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"SI_FRAMES"
	.size	.L.str.43, 10

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"SP_output"
	.size	.L.str.44, 10

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"SP_output_name"
	.size	.L.str.45, 15

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"SP2_FRAMES"
	.size	.L.str.46, 11

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"SP2_input_name1"
	.size	.L.str.47, 16

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"SP2_input_name2"
	.size	.L.str.48, 16

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"SymbolMode"
	.size	.L.str.49, 11

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"OutFileMode"
	.size	.L.str.50, 12

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"PartitionMode"
	.size	.L.str.51, 14

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"InterSearch16x16"
	.size	.L.str.52, 17

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"InterSearch16x8"
	.size	.L.str.53, 16

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"InterSearch8x16"
	.size	.L.str.54, 16

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"InterSearch8x8"
	.size	.L.str.55, 15

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"InterSearch8x4"
	.size	.L.str.56, 15

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"InterSearch4x8"
	.size	.L.str.57, 15

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"InterSearch4x4"
	.size	.L.str.58, 15

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"IntraDisableInterOnly"
	.size	.L.str.59, 22

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"Intra4x4ParDisable"
	.size	.L.str.60, 19

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"Intra4x4DiagDisable"
	.size	.L.str.61, 20

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"Intra4x4DirDisable"
	.size	.L.str.62, 19

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"Intra16x16ParDisable"
	.size	.L.str.63, 21

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"Intra16x16PlaneDisable"
	.size	.L.str.64, 23

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"EnableIPCM"
	.size	.L.str.65, 11

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"ChromaIntraDisable"
	.size	.L.str.66, 19

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"RestrictSearchRange"
	.size	.L.str.67, 20

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"LastFrameNumber"
	.size	.L.str.68, 16

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"ChangeQPI"
	.size	.L.str.69, 10

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"ChangeQPP"
	.size	.L.str.70, 10

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"ChangeQPB"
	.size	.L.str.71, 10

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"ChangeQPBSRefOffset"
	.size	.L.str.72, 20

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"ChangeQPStart"
	.size	.L.str.73, 14

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"RDOptimization"
	.size	.L.str.74, 15

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"DisableThresholding"
	.size	.L.str.75, 20

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"DisableBSkipRDO"
	.size	.L.str.76, 16

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"LossRateA"
	.size	.L.str.77, 10

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"LossRateB"
	.size	.L.str.78, 10

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"LossRateC"
	.size	.L.str.79, 10

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"NumberOfDecoders"
	.size	.L.str.80, 17

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"RestrictRefFrames"
	.size	.L.str.81, 18

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"NumberofLeakyBuckets"
	.size	.L.str.82, 21

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"LeakyBucketRateFile"
	.size	.L.str.83, 20

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"LeakyBucketParamFile"
	.size	.L.str.84, 21

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"PicInterlace"
	.size	.L.str.85, 13

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"MbInterlace"
	.size	.L.str.86, 12

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"IntraBottom"
	.size	.L.str.87, 12

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"NumberFramesInEnhancementLayerSubSequence"
	.size	.L.str.88, 42

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"NumberOfFrameInSecondIGOP"
	.size	.L.str.89, 26

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"RandomIntraMBRefresh"
	.size	.L.str.90, 21

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"WeightedPrediction"
	.size	.L.str.91, 19

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"WeightedBiprediction"
	.size	.L.str.92, 21

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"UseWeightedReferenceME"
	.size	.L.str.93, 23

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"RDPictureDecision"
	.size	.L.str.94, 18

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"RDPictureIntra"
	.size	.L.str.95, 15

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"RDPSliceWeightOnly"
	.size	.L.str.96, 19

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"RDPSliceBTest"
	.size	.L.str.97, 14

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"RDBSliceWeightOnly"
	.size	.L.str.98, 19

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"SkipIntraInInterSlices"
	.size	.L.str.99, 23

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"BReferencePictures"
	.size	.L.str.100, 19

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"PyramidCoding"
	.size	.L.str.101, 14

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"PyramidLevelQPEnable"
	.size	.L.str.102, 21

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"ExplicitPyramidFormat"
	.size	.L.str.103, 22

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"PyramidRefReorder"
	.size	.L.str.104, 18

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"PocMemoryManagement"
	.size	.L.str.105, 20

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"BiPredMotionEstimation"
	.size	.L.str.106, 23

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"BiPredMERefinements"
	.size	.L.str.107, 20

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"BiPredMESearchRange"
	.size	.L.str.108, 20

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"BiPredMESubPel"
	.size	.L.str.109, 15

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"LoopFilterParametersFlag"
	.size	.L.str.110, 25

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"LoopFilterDisable"
	.size	.L.str.111, 18

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"LoopFilterAlphaC0Offset"
	.size	.L.str.112, 24

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"LoopFilterBetaOffset"
	.size	.L.str.113, 21

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"SparePictureOption"
	.size	.L.str.114, 19

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"SparePictureDetectionThr"
	.size	.L.str.115, 25

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"SparePicturePercentageThr"
	.size	.L.str.116, 26

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"num_slice_groups_minus1"
	.size	.L.str.117, 24

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"slice_group_map_type"
	.size	.L.str.118, 21

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"slice_group_change_direction_flag"
	.size	.L.str.119, 34

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"slice_group_change_rate_minus1"
	.size	.L.str.120, 31

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"SliceGroupConfigFileName"
	.size	.L.str.121, 25

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"UseRedundantSlice"
	.size	.L.str.122, 18

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"PicOrderCntType"
	.size	.L.str.123, 16

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"ContextInitMethod"
	.size	.L.str.124, 18

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"FixedModelNumber"
	.size	.L.str.125, 17

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"Transform8x8Mode"
	.size	.L.str.126, 17

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"ReportFrameStats"
	.size	.L.str.127, 17

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"DisplayEncParams"
	.size	.L.str.128, 17

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"Verbose"
	.size	.L.str.129, 8

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"RateControlEnable"
	.size	.L.str.130, 18

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"Bitrate"
	.size	.L.str.131, 8

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"InitialQP"
	.size	.L.str.132, 10

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"BasicUnit"
	.size	.L.str.133, 10

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"ChannelType"
	.size	.L.str.134, 12

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"QmatrixFile"
	.size	.L.str.135, 12

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"ScalingMatrixPresentFlag"
	.size	.L.str.136, 25

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"ScalingListPresentFlag0"
	.size	.L.str.137, 24

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"ScalingListPresentFlag1"
	.size	.L.str.138, 24

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"ScalingListPresentFlag2"
	.size	.L.str.139, 24

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"ScalingListPresentFlag3"
	.size	.L.str.140, 24

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"ScalingListPresentFlag4"
	.size	.L.str.141, 24

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"ScalingListPresentFlag5"
	.size	.L.str.142, 24

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"ScalingListPresentFlag6"
	.size	.L.str.143, 24

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"ScalingListPresentFlag7"
	.size	.L.str.144, 24

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"UseFME"
	.size	.L.str.145, 7

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"EPZSPattern"
	.size	.L.str.146, 12

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"EPZSDualRefinement"
	.size	.L.str.147, 19

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"EPZSFixedPredictors"
	.size	.L.str.148, 20

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"EPZSTemporal"
	.size	.L.str.149, 13

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"EPZSSpatialMem"
	.size	.L.str.150, 15

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"EPZSMinThresScale"
	.size	.L.str.151, 18

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"EPZSMaxThresScale"
	.size	.L.str.152, 18

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"EPZSMedThresScale"
	.size	.L.str.153, 18

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"EPZSSubPelME"
	.size	.L.str.154, 13

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"EPZSSubPelThresScale"
	.size	.L.str.155, 21

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"ChromaQPOffset"
	.size	.L.str.156, 15

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"BitDepthLuma"
	.size	.L.str.157, 13

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"BitDepthChroma"
	.size	.L.str.158, 15

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"YUVFormat"
	.size	.L.str.159, 10

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"RGBInput"
	.size	.L.str.160, 9

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"CbQPOffset"
	.size	.L.str.161, 11

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"CrQPOffset"
	.size	.L.str.162, 11

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"QPPrimeYZeroTransformBypassFlag"
	.size	.L.str.163, 32

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"ResidueTransformFlag"
	.size	.L.str.164, 21

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"UseExplicitLambdaParams"
	.size	.L.str.165, 24

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"LambdaWeightPslice"
	.size	.L.str.166, 19

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"LambdaWeightBslice"
	.size	.L.str.167, 19

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"LambdaWeightIslice"
	.size	.L.str.168, 19

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"LambdaWeightSPslice"
	.size	.L.str.169, 20

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"LambdaWeightSIslice"
	.size	.L.str.170, 20

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"LambdaWeightRefBslice"
	.size	.L.str.171, 22

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"QOffsetMatrixFile"
	.size	.L.str.172, 18

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"OffsetMatrixPresentFlag"
	.size	.L.str.173, 24

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"EarlySkipEnable"
	.size	.L.str.174, 16

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"SelectiveIntraEnable"
	.size	.L.str.175, 21

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"AdaptiveRounding"
	.size	.L.str.176, 17

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"AdaptRndPeriod"
	.size	.L.str.177, 15

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"AdaptRndChroma"
	.size	.L.str.178, 15

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"AdaptRndWFactorIRef"
	.size	.L.str.179, 20

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"AdaptRndWFactorPRef"
	.size	.L.str.180, 20

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"AdaptRndWFactorBRef"
	.size	.L.str.181, 20

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"AdaptRndWFactorINRef"
	.size	.L.str.182, 21

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"AdaptRndWFactorPNRef"
	.size	.L.str.183, 21

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"AdaptRndWFactorBNRef"
	.size	.L.str.184, 21

	.type	Map,@object                     # @Map
	.data
	.globl	Map
	.p2align	3, 0x0
Map:
	.quad	.L.str
	.quad	configinput
	.word	0                               # 0x0
	.zero	4
	.quad	0x4056000000000000              # double 88
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.1
	.quad	configinput+4
	.word	0                               # 0x0
	.zero	4
	.quad	0x4035000000000000              # double 21
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.2
	.quad	configinput+3056
	.word	2                               # 0x2
	.zero	4
	.quad	0x403e000000000000              # double 30
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4059000000000000              # double 100
	.quad	.L.str.3
	.quad	configinput+1236
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.4
	.quad	configinput+1240
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.5
	.quad	configinput+1228
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.6
	.quad	configinput+1232
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.7
	.quad	configinput+8
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	2                               # 0x2
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.8
	.quad	configinput+12
	.word	0                               # 0x0
	.zero	4
	.quad	0x4038000000000000              # double 24
	.word	3                               # 0x3
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.9
	.quad	configinput+16
	.word	0                               # 0x0
	.zero	4
	.quad	0x4038000000000000              # double 24
	.word	3                               # 0x3
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.10
	.quad	configinput+1248
	.word	0                               # 0x0
	.zero	4
	.quad	0x4038000000000000              # double 24
	.word	3                               # 0x3
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.11
	.quad	configinput+20
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.12
	.quad	configinput+24
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.13
	.quad	configinput+28
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.14
	.quad	configinput+32
	.word	0                               # 0x0
	.zero	4
	.quad	0x4030000000000000              # double 16
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.15
	.quad	configinput+36
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.quad	0x4030000000000000              # double 16
	.quad	.L.str.16
	.quad	configinput+40
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4030000000000000              # double 16
	.quad	.L.str.17
	.quad	configinput+44
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4030000000000000              # double 16
	.quad	.L.str.18
	.quad	configinput+48
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4030000000000000              # double 16
	.quad	.L.str.19
	.quad	configinput+52
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0xbff0000000000000              # double -1
	.quad	0x4028000000000000              # double 12
	.quad	.L.str.20
	.quad	configinput+56
	.word	0                               # 0x0
	.zero	4
	.quad	0x4000000000000000              # double 2
	.word	1                               # 0x1
	.zero	4
	.quad	0xbff0000000000000              # double -1
	.quad	0x4028000000000000              # double 12
	.quad	.L.str.21
	.quad	configinput+64
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.22
	.quad	configinput+60
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.23
	.quad	configinput+68
	.word	0                               # 0x0
	.zero	4
	.quad	0x4066000000000000              # double 176
	.word	2                               # 0x2
	.zero	4
	.quad	0x4030000000000000              # double 16
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.24
	.quad	configinput+72
	.word	0                               # 0x0
	.zero	4
	.quad	0x4062000000000000              # double 144
	.word	2                               # 0x2
	.zero	4
	.quad	0x4030000000000000              # double 16
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.25
	.quad	configinput+80
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.26
	.quad	configinput+212
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.27
	.quad	configinput+216
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.28
	.quad	configinput+220
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.29
	.quad	configinput+228
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.30
	.quad	configinput+224
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.31
	.quad	configinput+428
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.32
	.quad	configinput+628
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.33
	.quad	configinput+828
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.34
	.quad	configinput+4320
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.35
	.quad	configinput+4324
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0xc049800000000000              # double -51
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.36
	.quad	configinput+1244
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.37
	.quad	configinput+1252
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0xc049800000000000              # double -51
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.38
	.quad	configinput+1256
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.39
	.quad	configinput+1260
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.40
	.quad	configinput+1280
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.41
	.quad	configinput+1284
	.word	0                               # 0x0
	.zero	4
	.quad	0x4038000000000000              # double 24
	.word	3                               # 0x3
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.42
	.quad	configinput+1288
	.word	0                               # 0x0
	.zero	4
	.quad	0x4038000000000000              # double 24
	.word	3                               # 0x3
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.43
	.quad	configinput+1292
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.44
	.quad	configinput+1300
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.45
	.quad	configinput+1304
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.46
	.quad	configinput+1296
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.47
	.quad	configinput+1504
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.48
	.quad	configinput+1704
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.49
	.quad	configinput+2984
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.50
	.quad	configinput+2988
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.51
	.quad	configinput+2992
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.52
	.quad	configinput+2996
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.53
	.quad	configinput+3000
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.54
	.quad	configinput+3004
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.55
	.quad	configinput+3008
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.56
	.quad	configinput+3012
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.57
	.quad	configinput+3016
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.58
	.quad	configinput+3020
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.59
	.quad	configinput+3024
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.60
	.quad	configinput+3028
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.61
	.quad	configinput+3032
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.62
	.quad	configinput+3036
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.63
	.quad	configinput+3040
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.64
	.quad	configinput+3044
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.65
	.quad	configinput+3052
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.66
	.quad	configinput+3048
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.67
	.quad	configinput+3108
	.word	0                               # 0x0
	.zero	4
	.quad	0x4000000000000000              # double 2
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.68
	.quad	configinput+3112
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.69
	.quad	configinput+3128
	.word	0                               # 0x0
	.zero	4
	.quad	0x4038000000000000              # double 24
	.word	3                               # 0x3
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.70
	.quad	configinput+3116
	.word	0                               # 0x0
	.zero	4
	.quad	0x4038000000000000              # double 24
	.word	3                               # 0x3
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.71
	.quad	configinput+3120
	.word	0                               # 0x0
	.zero	4
	.quad	0x4038000000000000              # double 24
	.word	3                               # 0x3
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.72
	.quad	configinput+3132
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0xc049800000000000              # double -51
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.73
	.quad	configinput+3124
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.74
	.quad	configinput+3136
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.75
	.quad	configinput+3140
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.76
	.quad	configinput+3144
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.77
	.quad	configinput+3564
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.78
	.quad	configinput+3568
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.79
	.quad	configinput+3572
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.80
	.quad	configinput+3576
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.81
	.quad	configinput+3580
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.82
	.quad	configinput+3148
	.word	0                               # 0x0
	.zero	4
	.quad	0x4000000000000000              # double 2
	.word	1                               # 0x1
	.zero	4
	.quad	0x4000000000000000              # double 2
	.quad	0x406fe00000000000              # double 255
	.quad	.L.str.83
	.quad	configinput+3152
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.84
	.quad	configinput+3352
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.85
	.quad	configinput+3552
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.86
	.quad	configinput+3556
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.87
	.quad	configinput+3560
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.88
	.quad	configinput+3584
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.89
	.quad	configinput+3588
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.90
	.quad	configinput+3592
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.91
	.quad	configinput+1904
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.92
	.quad	configinput+1908
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.93
	.quad	configinput+1912
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.94
	.quad	configinput+1916
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.95
	.quad	configinput+1920
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.96
	.quad	configinput+1924
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.97
	.quad	configinput+1928
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.98
	.quad	configinput+1932
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.99
	.quad	configinput+1936
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.100
	.quad	configinput+1940
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.101
	.quad	configinput+1944
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.102
	.quad	configinput+1948
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.103
	.quad	configinput+1952
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.104
	.quad	configinput+2976
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.105
	.quad	configinput+2980
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.106
	.quad	configinput+1264
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.107
	.quad	configinput+1268
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4014000000000000              # double 5
	.quad	.L.str.108
	.quad	configinput+1272
	.word	0                               # 0x0
	.zero	4
	.quad	0x4020000000000000              # double 8
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.109
	.quad	configinput+1276
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.110
	.quad	configinput+3596
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.111
	.quad	configinput+3600
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.112
	.quad	configinput+3604
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0xc018000000000000              # double -6
	.quad	0x4018000000000000              # double 6
	.quad	.L.str.113
	.quad	configinput+3608
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0xc018000000000000              # double -6
	.quad	0x4018000000000000              # double 6
	.quad	.L.str.114
	.quad	configinput+3612
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.115
	.quad	configinput+3616
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.116
	.quad	configinput+3620
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4059000000000000              # double 100
	.quad	.L.str.117
	.quad	configinput+3824
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x401c000000000000              # double 7
	.quad	.L.str.118
	.quad	configinput+3828
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4018000000000000              # double 6
	.quad	.L.str.119
	.quad	configinput+3864
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.120
	.quad	configinput+3868
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.121
	.quad	configinput+3624
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.122
	.quad	configinput+3876
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.123
	.quad	configinput+3880
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.124
	.quad	configinput+3884
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.125
	.quad	configinput+3888
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.126
	.quad	configinput+3892
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.127
	.quad	configinput+3896
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.128
	.quad	configinput+3900
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.129
	.quad	configinput+3904
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.130
	.quad	configinput+3908
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.131
	.quad	configinput+3912
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.132
	.quad	configinput+3916
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	3                               # 0x3
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.133
	.quad	configinput+3920
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.134
	.quad	configinput+3924
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.135
	.quad	configinput+1028
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.136
	.quad	configinput+3928
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.137
	.quad	configinput+3932
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.138
	.quad	configinput+3936
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.139
	.quad	configinput+3940
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.140
	.quad	configinput+3944
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.141
	.quad	configinput+3948
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.142
	.quad	configinput+3952
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.143
	.quad	configinput+3956
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.144
	.quad	configinput+3960
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.145
	.quad	configinput+3964
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.146
	.quad	configinput+3064
	.word	0                               # 0x0
	.zero	4
	.quad	0x4000000000000000              # double 2
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.147
	.quad	configinput+3068
	.word	0                               # 0x0
	.zero	4
	.quad	0x4008000000000000              # double 3
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4010000000000000              # double 4
	.quad	.L.str.148
	.quad	configinput+3072
	.word	0                               # 0x0
	.zero	4
	.quad	0x4000000000000000              # double 2
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	.L.str.149
	.quad	configinput+3076
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.150
	.quad	configinput+3080
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.151
	.quad	configinput+3084
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.152
	.quad	configinput+3088
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.153
	.quad	configinput+3092
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.154
	.quad	configinput+3096
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.155
	.quad	configinput+3100
	.word	0                               # 0x0
	.zero	4
	.quad	0x4000000000000000              # double 2
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.156
	.quad	configinput+3104
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0xc049800000000000              # double -51
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.157
	.quad	configinput+3968
	.word	0                               # 0x0
	.zero	4
	.quad	0x4020000000000000              # double 8
	.word	1                               # 0x1
	.zero	4
	.quad	0x4020000000000000              # double 8
	.quad	0x4028000000000000              # double 12
	.quad	.L.str.158
	.quad	configinput+3972
	.word	0                               # 0x0
	.zero	4
	.quad	0x4020000000000000              # double 8
	.word	1                               # 0x1
	.zero	4
	.quad	0x4020000000000000              # double 8
	.quad	0x4028000000000000              # double 12
	.quad	.L.str.159
	.quad	configinput+76
	.word	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.160
	.quad	configinput+3984
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.161
	.quad	configinput+3988
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0xc049800000000000              # double -51
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.162
	.quad	configinput+3992
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0xc049800000000000              # double -51
	.quad	0x4049800000000000              # double 51
	.quad	.L.str.163
	.quad	configinput+3996
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.164
	.quad	configinput+4000
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.165
	.quad	configinput+4004
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	.L.str.166
	.quad	configinput+4008
	.word	2                               # 0x2
	.zero	4
	.quad	0x3fe5c28f5c28f5c3              # double 0.68000000000000005
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.167
	.quad	configinput+4016
	.word	2                               # 0x2
	.zero	4
	.quad	0x4000000000000000              # double 2
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.168
	.quad	configinput+4024
	.word	2                               # 0x2
	.zero	4
	.quad	0x3fe4cccccccccccd              # double 0.65000000000000002
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.169
	.quad	configinput+4032
	.word	2                               # 0x2
	.zero	4
	.quad	0x3ff8000000000000              # double 1.5
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.170
	.quad	configinput+4040
	.word	2                               # 0x2
	.zero	4
	.quad	0x3fe4cccccccccccd              # double 0.65000000000000002
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.171
	.quad	configinput+4048
	.word	2                               # 0x2
	.zero	4
	.quad	0x3ff8000000000000              # double 1.5
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.172
	.quad	configinput+4056
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.173
	.quad	configinput+4256
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.174
	.quad	configinput+4312
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.175
	.quad	configinput+4316
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.176
	.quad	configinput+4260
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.177
	.quad	configinput+4264
	.word	0                               # 0x0
	.zero	4
	.quad	0x4030000000000000              # double 16
	.word	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	.L.str.178
	.quad	configinput+4268
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.quad	.L.str.179
	.quad	configinput+4300
	.word	0                               # 0x0
	.zero	4
	.quad	0x4010000000000000              # double 4
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4090000000000000              # double 1024
	.quad	.L.str.180
	.quad	configinput+4292
	.word	0                               # 0x0
	.zero	4
	.quad	0x4010000000000000              # double 4
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4090000000000000              # double 1024
	.quad	.L.str.181
	.quad	configinput+4296
	.word	0                               # 0x0
	.zero	4
	.quad	0x4010000000000000              # double 4
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4090000000000000              # double 1024
	.quad	.L.str.182
	.quad	configinput+4280
	.word	0                               # 0x0
	.zero	4
	.quad	0x4010000000000000              # double 4
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4090000000000000              # double 1024
	.quad	.L.str.183
	.quad	configinput+4272
	.word	0                               # 0x0
	.zero	4
	.quad	0x4010000000000000              # double 4
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4090000000000000              # double 1024
	.quad	.L.str.184
	.quad	configinput+4276
	.word	0                               # 0x0
	.zero	4
	.quad	0x4010000000000000              # double 4
	.word	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4090000000000000              # double 1024
	.quad	0
	.quad	0
	.word	4294967295                      # 0xffffffff
	.zero	4
	.quad	0x0000000000000000              # double 0
	.word	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.size	Map, 10416

	.type	.L.str.185,@object              # @.str.185
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.185:
	.asciz	"\n   lencod [-h] [-d defenc.cfg] {[-f curenc1.cfg]...[-f curencN.cfg]} {[-p EncParam1=EncValue1]..[-p EncParamM=EncValueM]}\n\n## Parameters\n\n## Options\n   -h :  prints function usage\n   -d :  use <defenc.cfg> as default file for parameter initializations.\n         If not used then file defaults to encoder.cfg in local directory.\n   -f :  read <curencM.cfg> for reseting selected encoder parameters.\n         Multiple files could be used that set different parameters\n   -p :  Set parameter <EncParamM> to <EncValueM>.\n         See default encoder.cfg file for description of all parameters.\n\n## Supported video file formats\n   RAW:  .yuv -> YUV 4:2:0\n\n## Examples of usage:\n   lencod\n   lencod  -h\n   lencod  -d default.cfg\n   lencod  -f curenc1.cfg\n   lencod  -f curenc1.cfg -p InputFile=\"e:\\data\\container_qcif_30.yuv\" -p SourceWidth=176 -p SourceHeight=144\n   lencod  -f curenc1.cfg -p FramesToBeEncoded=30 -p QPISlice=28 -p QPPSlice=28 -p QPBSlice=30\n"
	.size	.L.str.185, 956

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"encoder.cfg"
	.size	.L.str.186, 12

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"Parsing Configfile %s"
	.size	.L.str.190, 22

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"Configure: content"
	.size	.L.str.194, 19

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"Parsing command line string '%s'"
	.size	.L.str.195, 33

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"Error in command line, ac %d, around string '%s', missing -f or -p parameters?"
	.size	.L.str.196, 79

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"r"
	.size	.L.str.197, 2

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"Cannot open configuration file %s."
	.size	.L.str.198, 35

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"Cannot fseek in configuration file %s."
	.size	.L.str.199, 39

	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"Unreasonable Filesize %ld reported by ftell for configuration file %s."
	.size	.L.str.200, 71

	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	"GetConfigFileContent: buf"
	.size	.L.str.201, 26

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	" Parsing error in config file: Parameter Name '%s' not recognized."
	.size	.L.str.202, 67

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	"="
	.size	.L.str.203, 2

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	" Parsing error in config file: '=' expected as the second token in each line."
	.size	.L.str.204, 78

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	"%d"
	.size	.L.str.205, 3

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	" Parsing error: Expected numerical value for Parameter of %s, found '%s'."
	.size	.L.str.206, 74

	.type	.L.str.208,@object              # @.str.208
.L.str.208:
	.asciz	"%lf"
	.size	.L.str.208, 4

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"Parameter %s = %d\n"
	.size	.L.str.214, 19

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	"Parameter %s = %s\n"
	.size	.L.str.215, 19

	.type	.L.str.216,@object              # @.str.216
.L.str.216:
	.asciz	"Parameter %s = %.2f\n"
	.size	.L.str.216, 21

	.type	.L.str.217,@object              # @.str.217
.L.str.217:
	.asciz	" NumberReferenceFrames=%d and Log2MaxFNumMinus4=%d may lead to an invalid value of frame_num."
	.size	.L.str.217, 94

	.type	.L.str.218,@object              # @.str.218
.L.str.218:
	.asciz	"log2_max_pic_order_cnt_lsb_minus4 might not be sufficient for encoding. Increase value."
	.size	.L.str.218, 88

	.type	.L.str.219,@object              # @.str.219
.L.str.219:
	.asciz	"Number of B-frames %d can not exceed the number of frames skipped"
	.size	.L.str.219, 66

	.type	.L.str.220,@object              # @.str.220
.L.str.220:
	.asciz	"Unsupported direct mode=%d, use TEMPORAL=0 or SPATIAL=1"
	.size	.L.str.220, 56

	.type	.L.str.221,@object              # @.str.221
.L.str.221:
	.asciz	"\nDirectInferenceFlag set to 1 due to interlace coding."
	.size	.L.str.221, 55

	.type	.L.str.222,@object              # @.str.222
.L.str.222:
	.asciz	"Incorrect value %d for IntraBottom. Use 0 (disable) or 1 (enable)."
	.size	.L.str.222, 67

	.type	.L.str.223,@object              # @.str.223
.L.str.223:
	.asciz	"Unsupported symbol mode=%d, use UVLC=0 or CABAC=1"
	.size	.L.str.223, 50

	.type	.L.str.224,@object              # @.str.224
.L.str.224:
	.asciz	"Input file %s does not exist"
	.size	.L.str.224, 29

	.type	.L.str.225,@object              # @.str.225
.L.str.225:
	.asciz	"Error open file %s"
	.size	.L.str.225, 19

	.type	.L.str.226,@object              # @.str.226
.L.str.226:
	.asciz	"even number of lines required for interlaced coding"
	.size	.L.str.226, 52

	.type	.L.str.227,@object              # @.str.227
.L.str.227:
	.asciz	"Warning: Automatic cropping activated: Coded frame Size: %dx%d\n"
	.size	.L.str.227, 64

	.type	.L.str.228,@object              # @.str.228
.L.str.228:
	.asciz	"Warning: slice border within macroblock pair. "
	.size	.L.str.228, 47

	.type	.L.str.229,@object              # @.str.229
.L.str.229:
	.asciz	"Using %d MBs per slice.\n"
	.size	.L.str.229, 25

	.type	.L.str.230,@object              # @.str.230
.L.str.230:
	.asciz	"PatchInp: input->run_length_minus1"
	.size	.L.str.230, 35

	.type	.L.str.231,@object              # @.str.231
.L.str.231:
	.asciz	"%*[^\n]"
	.size	.L.str.231, 7

	.type	.L.str.232,@object              # @.str.232
.L.str.232:
	.asciz	"PatchInp: input->top_left"
	.size	.L.str.232, 26

	.type	.L.str.233,@object              # @.str.233
.L.str.233:
	.asciz	"PatchInp: input->bottom_right"
	.size	.L.str.233, 30

	.type	.L.str.234,@object              # @.str.234
.L.str.234:
	.asciz	"PatchInp: input->slice_group_id"
	.size	.L.str.234, 32

	.type	.L.str.235,@object              # @.str.235
.L.str.235:
	.asciz	"Error read slice group information from file %s"
	.size	.L.str.235, 48

	.type	.L.str.236,@object              # @.str.236
.L.str.236:
	.asciz	"PyramidRefReorder Not supported with Interlace encoding methods\n"
	.size	.L.str.236, 65

	.type	.L.str.237,@object              # @.str.237
.L.str.237:
	.asciz	"PocMemoryManagement not supported with Interlace encoding methods\n"
	.size	.L.str.237, 67

	.type	.L.str.238,@object              # @.str.238
.L.str.238:
	.asciz	"Unsupported PicInterlace=%d, use frame based coding=0 or field based coding=1 or adaptive=2"
	.size	.L.str.238, 92

	.type	.L.str.239,@object              # @.str.239
.L.str.239:
	.asciz	"Unsupported MbInterlace=%d, use frame based coding=0 or field based coding=1 or adaptive=2"
	.size	.L.str.239, 91

	.type	.L.str.240,@object              # @.str.240
.L.str.240:
	.asciz	"MB AFF is not compatible with non-rd-optimized coding."
	.size	.L.str.240, 55

	.type	.L.str.241,@object              # @.str.241
.L.str.241:
	.asciz	"RDOptimization=3 mode has been deactivated do to diverging of real and simulated decoders."
	.size	.L.str.241, 91

	.type	.L.str.242,@object              # @.str.242
.L.str.242:
	.asciz	"Fast Mode Decision methods does not support FREX Profiles"
	.size	.L.str.242, 58

	.type	.L.str.243,@object              # @.str.243
.L.str.243:
	.asciz	"UseHadamard=2 is not allowed when UseFME is set to 1 or 2."
	.size	.L.str.243, 59

	.type	.L.str.244,@object              # @.str.244
.L.str.244:
	.asciz	"NumFramesInELSubSeq (%d) is out of range [0,%d)."
	.size	.L.str.244, 49

	.type	.L.str.245,@object              # @.str.245
.L.str.245:
	.asciz	"Enhanced GOP is not supported in bitstream mode and RTP mode yet."
	.size	.L.str.245, 66

	.type	.L.str.246,@object              # @.str.246
.L.str.246:
	.asciz	"AFF is not compatible with spare picture."
	.size	.L.str.246, 42

	.type	.L.str.247,@object              # @.str.247
.L.str.247:
	.asciz	"Only RTP output mode is compatible with spare picture features."
	.size	.L.str.247, 64

	.type	.L.str.248,@object              # @.str.248
.L.str.248:
	.asciz	"Weighted prediction coding is not supported for MB AFF currently."
	.size	.L.str.248, 66

	.type	.L.str.249,@object              # @.str.249
.L.str.249:
	.asciz	"Enhanced GOP is not supported in weighted prediction coding mode yet."
	.size	.L.str.249, 70

	.type	.L.str.250,@object              # @.str.250
.L.str.250:
	.asciz	"Frame size in macroblocks must be a multiple of BasicUnit."
	.size	.L.str.250, 59

	.type	.L.str.251,@object              # @.str.251
.L.str.251:
	.asciz	"Stored B pictures combined with IDR pictures only supported in Picture Order Count type 0\n"
	.size	.L.str.251, 91

	.type	.L.str.252,@object              # @.str.252
.L.str.252:
	.asciz	"temporal direct needs at least 2 ref frames\n"
	.size	.L.str.252, 45

	.type	.L.str.253,@object              # @.str.253
.L.str.253:
	.asciz	"\nThe new 8x8 mode is not implemented for sp-frames."
	.size	.L.str.253, 52

	.type	.L.str.254,@object              # @.str.254
.L.str.254:
	.asciz	"\nTransform8x8Mode may be used only with ProfileIDC %d to %d."
	.size	.L.str.254, 61

	.type	.L.str.255,@object              # @.str.255
.L.str.255:
	.asciz	"\nScalingMatrixPresentFlag may be used only with ProfileIDC %d to %d."
	.size	.L.str.255, 69

	.type	.L.str.256,@object              # @.str.256
.L.str.256:
	.asciz	"\nFRExt Profile(YUV Format) Error!\nYUV422 can be used only with ProfileIDC %d or %d\n"
	.size	.L.str.256, 84

	.type	.L.str.257,@object              # @.str.257
.L.str.257:
	.asciz	"\nFRExt Profile(YUV Format) Error!\nYUV444 can be used only with ProfileIDC %d.\n"
	.size	.L.str.257, 79

	.type	.L.str.258,@object              # @.str.258
.L.str.258:
	.asciz	"\nResidue color transform is supported only in YUV444."
	.size	.L.str.258, 54

	.type	.L.str.259,@object              # @.str.259
.L.str.259:
	.asciz	"\nBiPredMESearchRange must be smaller or equal SearchRange."
	.size	.L.str.259, 59

	.type	.L.str.260,@object              # @.str.260
.L.str.260:
	.asciz	"Open Gop currently not supported for Field coded pictures."
	.size	.L.str.260, 59

	.type	.L.str.261,@object              # @.str.261
.L.str.261:
	.asciz	"Error in input parameter %s. Check configuration file. Value should be in [%d, %d] range."
	.size	.L.str.261, 90

	.type	.L.str.262,@object              # @.str.262
.L.str.262:
	.asciz	"Error in input parameter %s. Check configuration file. Value should be in [%.2f, %.2f] range."
	.size	.L.str.262, 94

	.type	.L.str.263,@object              # @.str.263
.L.str.263:
	.asciz	"Error in input parameter %s. Check configuration file. Value should not be smaller than %d."
	.size	.L.str.263, 92

	.type	.L.str.264,@object              # @.str.264
.L.str.264:
	.asciz	"Error in input parameter %s. Check configuration file. Value should not be smaller than %2.f."
	.size	.L.str.264, 94

	.type	.L.str.265,@object              # @.str.265
.L.str.265:
	.asciz	"Profile must be baseline(66)/main(77)/extended(88) or FRExt (%d to %d)."
	.size	.L.str.265, 72

	.type	.L.str.266,@object              # @.str.266
.L.str.266:
	.asciz	"B pictures are not allowed in baseline."
	.size	.L.str.266, 40

	.type	.L.str.267,@object              # @.str.267
.L.str.267:
	.asciz	"SP pictures are not allowed in baseline."
	.size	.L.str.267, 41

	.type	.L.str.268,@object              # @.str.268
.L.str.268:
	.asciz	"Data partitioning is not allowed in baseline."
	.size	.L.str.268, 46

	.type	.L.str.269,@object              # @.str.269
.L.str.269:
	.asciz	"Weighted prediction is not allowed in baseline."
	.size	.L.str.269, 48

	.type	.L.str.270,@object              # @.str.270
.L.str.270:
	.asciz	"CABAC is not allowed in baseline."
	.size	.L.str.270, 34

	.type	.L.str.271,@object              # @.str.271
.L.str.271:
	.asciz	"SP pictures are not allowed in main."
	.size	.L.str.271, 37

	.type	.L.str.272,@object              # @.str.272
.L.str.272:
	.asciz	"Data partitioning is not allowed in main."
	.size	.L.str.272, 42

	.type	.L.str.273,@object              # @.str.273
.L.str.273:
	.asciz	"num_slice_groups_minus1>0 (FMO) is not allowed in main."
	.size	.L.str.273, 56

	.type	.L.str.274,@object              # @.str.274
.L.str.274:
	.asciz	"Redundant pictures are not allowed in main."
	.size	.L.str.274, 44

	.type	.L.str.275,@object              # @.str.275
.L.str.275:
	.asciz	"direct_8x8_inference flag must be equal to 1 in extended."
	.size	.L.str.275, 58

	.type	.L.str.276,@object              # @.str.276
.L.str.276:
	.asciz	"CABAC is not allowed in extended."
	.size	.L.str.276, 34

	.type	.L.str.277,@object              # @.str.277
.L.str.277:
	.asciz	"\nWarning: LevelIDC 3.0 and above require direct_8x8_inference to be set to 1. Please check your settings.\n"
	.size	.L.str.277, 107

	.type	.L.str.278,@object              # @.str.278
.L.str.278:
	.asciz	"\nInterlace modes only supported for LevelIDC in the range of 2.1 and 4.1. Please check your settings.\n"
	.size	.L.str.278, 103

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Setting Default Parameters..."
	.size	.Lstr, 30

	.type	.Lstr.280,@object               # @str.280
.Lstr.280:
	.asciz	"*               Encoder Parameters                   *"
	.size	.Lstr.280, 55

	.type	.Lstr.282,@object               # @str.282
.Lstr.282:
	.asciz	"******************************************************"
	.size	.Lstr.282, 55

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
