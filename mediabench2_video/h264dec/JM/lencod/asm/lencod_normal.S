	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"lencod.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_stats                      # -- Begin function init_stats
	.p2align	2
	.type	init_stats,@function
init_stats:                             # @init_stats
# %bb.0:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 1244(a0)
	lui	a1, %hi(stats)
	ld	a1, %lo(stats)(a1)
	lui	a2, %hi(snr)
	ld	a3, %lo(snr)(a2)
	sw	a0, 688(a1)
	sd	zero, 712(a1)
	sw	zero, 720(a1)
	addi	a0, a3, 84
	sw	zero, 20(a3)
	sw	zero, 16(a3)
	sw	zero, 12(a3)
	sw	zero, 4(a3)
	sw	zero, 0(a3)
	li	a2, 40
	sw	zero, 8(a3)
	li	a1, 0
	tail	memset
.Lfunc_end0:
	.size	init_stats, .Lfunc_end0-init_stats
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI1_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI1_1:
	.quad	0x3fdffffbce4217d3              # double 0.49999900000000003
	.text
	.globl	main
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
	fsd	fs0, 16(sp)                     # 8-byte Folded Spill
	fsd	fs1, 8(sp)                      # 8-byte Folded Spill
	lui	a2, %hi(giRDOpt_B8OnlyFlag)
	sw	zero, %lo(giRDOpt_B8OnlyFlag)(a2)
	lui	a2, %hi(p_in)
	li	a3, -1
	sw	a3, %lo(p_in)(a2)
	lui	a2, %hi(p_dec)
	sw	a3, %lo(p_dec)(a2)
	lui	a2, %hi(p_trace)
	sd	zero, %lo(p_trace)(a2)
	lui	a2, %hi(p_log)
	sd	zero, %lo(p_log)(a2)
	lui	a2, %hi(p_stat)
	sd	zero, %lo(p_stat)(a2)
	lui	a2, %hi(frame_statistic_start)
	li	s0, 1
	sw	s0, %lo(frame_statistic_start)(a2)
	call	Configure
	call	Init_QMatrix
	call	Init_QOffsetMatrix
	call	AllocNalPayloadBuffer
	lui	a0, %hi(input)
	ld	a2, %lo(input)(a0)
	addi	a1, a2, 2047
	lw	a3, 1833(a1)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a4, 22
	addiw	a4, a4, 112
	lw	a5, 1940(a2)
	add	a0, a0, a4
	sw	a3, 0(a0)
	sw	zero, 4(a0)
	sw	s0, 16(a0)
	bne	a5, s0, .LBB1_3
# %bb.1:
	li	a3, 2
	sw	zero, 8(a0)
	sw	a3, 20(a0)
	lw	a2, 1505(a1)
	beqz	a2, .LBB1_4
.LBB1_2:
	li	a1, 1
	sw	a1, 12(a0)
	j	.LBB1_5
.LBB1_3:
	lw	a2, 1244(a2)
	slli	a3, a2, 1
	negw	a2, a3
	addi	a3, a3, 2
	sw	a2, 8(a0)
	sw	a3, 20(a0)
	lw	a2, 1505(a1)
	bnez	a2, .LBB1_2
.LBB1_4:
	lw	a2, 1509(a1)
	snez	a2, a2
	sw	a2, 12(a0)
	lw	a1, 1509(a1)
	beqz	a1, .LBB1_6
.LBB1_5:
	li	a1, 1
.LBB1_6:
	sw	a1, 88(a0)
	sw	a1, 28(a0)
	call	GenerateParameterSets
	call	SetLevelIndices
	call	init_img
	li	a0, 1
	li	a1, 824
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB1_8
# %bb.7:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
.LBB1_8:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 1916(a0)
	lui	a1, %hi(frame_pic_1)
	sd	s0, %lo(frame_pic_1)(a1)
	beqz	a0, .LBB1_14
# %bb.9:
	li	a0, 1
	li	a1, 824
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB1_11
# %bb.10:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
.LBB1_11:
	lui	a0, %hi(frame_pic_2)
	sd	s0, %lo(frame_pic_2)(a0)
	li	a0, 1
	li	a1, 824
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB1_13
# %bb.12:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
.LBB1_13:
	lui	a0, %hi(frame_pic_3)
	sd	s0, %lo(frame_pic_3)(a0)
.LBB1_14:
	lui	a0, %hi(si_frame_indicator)
	sw	zero, %lo(si_frame_indicator)(a0)
	li	a0, 1
	li	a1, 824
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB1_16
# %bb.15:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
.LBB1_16:
	lui	s1, %hi(img)
	ld	s2, %lo(img)(s1)
	lw	s4, 60(s2)
	lui	a0, %hi(frame_pic_2)
	sd	s0, %lo(frame_pic_2)(a0)
	slli	s0, s4, 3
	mv	a0, s0
	call	malloc
	lui	s3, %hi(lrec)
	sd	a0, %lo(lrec)(s3)
	blez	s4, .LBB1_20
# %bb.17:                               # %.preheader3
	li	s0, 0
	li	s5, 0
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 52(s2)
	slli	a0, a0, 2
	call	malloc
	ld	a1, %lo(lrec)(s3)
	add	a1, a1, s0
	sd	a0, 0(a1)
	ld	s2, %lo(img)(s1)
	lw	s4, 60(s2)
	addi	s5, s5, 1
	addi	s0, s0, 8
	blt	s5, s4, .LBB1_18
# %bb.19:
	slli	s0, s4, 3
.LBB1_20:
	li	a0, 16
	call	malloc
	mv	s1, a0
	lui	s3, %hi(lrec_uv)
	sd	a0, %lo(lrec_uv)(s3)
	mv	a0, s0
	call	malloc
	sd	a0, 0(s1)
	mv	a0, s0
	call	malloc
	sd	a0, 8(s1)
	blez	s4, .LBB1_23
# %bb.21:                               # %.preheader1
	li	s0, 0
	li	s1, 0
	lui	s4, %hi(img)
.LBB1_22:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 52(s2)
	slli	a0, a0, 2
	call	malloc
	ld	a1, %lo(lrec_uv)(s3)
	ld	a1, 0(a1)
	add	a1, a1, s0
	sd	a0, 0(a1)
	ld	a0, %lo(img)(s4)
	lw	a0, 52(a0)
	slli	a0, a0, 2
	call	malloc
	ld	a1, %lo(lrec_uv)(s3)
	ld	a1, 8(a1)
	add	a1, a1, s0
	sd	a0, 0(a1)
	ld	s2, %lo(img)(s4)
	lw	a0, 60(s2)
	addi	s1, s1, 1
	addi	s0, s0, 8
	blt	s1, a0, .LBB1_22
.LBB1_23:
	lui	s1, %hi(input)
	ld	a0, %lo(input)(s1)
	addi	a0, a0, 2047
	lw	a0, 1505(a0)
	lui	a1, %hi(number_sp2_frames)
	sw	zero, %lo(number_sp2_frames)(a1)
	beqz	a0, .LBB1_29
# %bb.24:
	li	a0, 1
	li	a1, 824
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB1_26
# %bb.25:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
.LBB1_26:
	lui	a0, %hi(top_pic)
	sd	s0, %lo(top_pic)(a0)
	li	a0, 1
	li	a1, 824
	call	calloc
	mv	s0, a0
	bnez	a0, .LBB1_28
# %bb.27:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	no_mem_exit
.LBB1_28:
	lui	a0, %hi(bottom_pic)
	sd	s0, %lo(bottom_pic)(a0)
.LBB1_29:
	call	init_rdopt
	ld	a0, %lo(input)(s1)
	lw	a0, 1944(a0)
	beqz	a0, .LBB1_33
# %bb.30:
	call	init_gop_structure
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 1944(a0)
	li	a1, 3
	bne	a0, a1, .LBB1_32
# %bb.31:
	call	interpret_gop_structure
	j	.LBB1_33
.LBB1_32:
	call	create_pyramid
.LBB1_33:
	lui	a0, %hi(dpb+48)
	sw	zero, %lo(dpb+48)(a0)
	call	init_dpb
	call	init_out_buffer
	lui	s0, %hi(input)
	ld	a0, %lo(input)(s0)
	lw	a0, 1244(a0)
	lui	a1, %hi(stats)
	ld	a1, %lo(stats)(a1)
	lui	a2, %hi(snr)
	ld	a2, %lo(snr)(a2)
	sw	a0, 688(a1)
	sd	zero, 712(a1)
	sw	zero, 720(a1)
	addi	a0, a2, 84
	sw	zero, 20(a2)
	sw	zero, 16(a2)
	sw	zero, 12(a2)
	sw	zero, 4(a2)
	sw	zero, 0(a2)
	sw	zero, 8(a2)
	li	a2, 40
	li	a1, 0
	call	memset
	lui	a0, %hi(enc_bottom_picture)
	sd	zero, %lo(enc_bottom_picture)(a0)
	lui	a0, %hi(enc_top_picture)
	sd	zero, %lo(enc_top_picture)(a0)
	lui	a0, %hi(enc_frame_picture)
	sd	zero, %lo(enc_frame_picture)(a0)
	lui	a0, %hi(enc_picture)
	sd	zero, %lo(enc_picture)(a0)
	call	init_global_buffers
	call	create_context_memory
	call	Init_Motion_Search_Module
	call	information_init
	ld	a0, %lo(input)(s0)
	addi	a1, a0, 2047
	lw	a1, 1861(a1)
	beqz	a1, .LBB1_35
# %bb.34:
	call	rc_init_seq
	ld	a0, %lo(input)(s0)
.LBB1_35:
	addi	a1, a0, 2047
	lw	a1, 1917(a1)
	li	a2, 1
	bne	a1, a2, .LBB1_37
# %bb.36:
	call	DefineThreshold
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB1_37:
	lui	a1, %hi(frame_ctr)
	sw	zero, %lo(frame_ctr)(a1)
	addi	a1, a1, %lo(frame_ctr)
	sw	zero, 16(a1)
	sw	zero, 12(a1)
	sw	zero, 8(a1)
	sw	zero, 4(a1)
	lui	s0, %hi(img)
	ld	a2, %lo(img)(s0)
	lui	a3, 22
	addi	a1, a0, 2047
	lw	a1, 1065(a1)
	add	a2, a2, a3
	sw	zero, 476(a2)
	lui	a2, %hi(tot_time)
	sw	zero, %lo(tot_time)(a2)
	blez	a1, .LBB1_39
# %bb.38:
	lw	a2, 20(a0)
	add	a1, a2, a1
	addi	a2, a2, 1
	divw	a1, a1, a2
	addi	a1, a1, 1
	sw	a1, 8(a0)
.LBB1_39:
	lw	a0, 1244(a0)
	lui	a1, %hi(initial_Bframes)
	sw	a0, %lo(initial_Bframes)(a1)
	call	PatchInputNoFrames
	lui	s1, %hi(stats)
	ld	a0, %lo(stats)(s1)
	sw	zero, 1496(a0)
	call	start_sequence
	ld	a2, %lo(stats)(s1)
	lw	a3, 1500(a2)
	lw	a4, 1496(a2)
	lui	s1, %hi(input)
	ld	a1, %lo(input)(s1)
	sw	a0, 24(a2)
	add	a3, a4, a3
	ld	a0, %lo(img)(s0)
	lw	a4, 8(a1)
	sw	a3, 1496(a2)
	lui	s2, %hi(start_frame_no_in_this_IGOP)
	sw	zero, %lo(start_frame_no_in_this_IGOP)(s2)
	sw	zero, 0(a0)
	blez	a4, .LBB1_105
# %bb.40:                               # %.preheader
	li	a2, 0
	li	t1, 0
	li	s6, 0
	addi	a3, a1, 8
	lui	s3, 22
	addiw	s4, s3, 144
	li	s5, 1
	li	s7, 2
	lui	s8, %hi(log2_max_frame_num_minus4)
	li	s9, -1
	lui	a4, %hi(.LCPI1_0)
	fld	fs0, %lo(.LCPI1_0)(a4)
	lui	a4, %hi(.LCPI1_1)
	fld	fs1, %lo(.LCPI1_1)(a4)
	lui	s10, %hi(img)
	lui	s11, %hi(In2ndIGOP)
	lui	s0, %hi(start_tr_in_this_IGOP)
	j	.LBB1_42
.LBB1_41:                               #   in Loop: Header=BB1_42 Depth=1
	addi	a3, a1, 8
	addiw	a2, a2, 1
	sw	a2, 0(a0)
	negw	t1, s6
	bge	a2, a4, .LBB1_105
.LBB1_42:                               # =>This Inner Loop Header: Depth=1
	lw	t3, 1228(a1)
	add	a6, a0, s4
	addi	a4, a1, 2047
	addi	a5, a4, 1065
	beqz	t3, .LBB1_48
# %bb.43:                               #   in Loop: Header=BB1_42 Depth=1
	lw	a4, %lo(start_frame_no_in_this_IGOP)(s2)
	subw	a7, a2, a4
	remw	t0, a7, t3
	li	t2, 1
	beqz	t0, .LBB1_46
# %bb.44:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t4, 1208(a5)
	beqz	t4, .LBB1_46
# %bb.45:                               #   in Loop: Header=BB1_42 Depth=1
	addi	t2, a2, 1
	srliw	t4, t2, 31
	add	t4, t2, t4
	andi	t4, t4, -2
	subw	t2, t2, t4
.LBB1_46:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t4, 1236(a1)
	sw	t2, 60(a6)
	beqz	t4, .LBB1_52
# %bb.47:                               #   in Loop: Header=BB1_42 Depth=1
	mv	a7, t0
	j	.LBB1_52
.LBB1_48:                               #   in Loop: Header=BB1_42 Depth=1
	li	a4, 1
	beqz	a2, .LBB1_51
# %bb.49:                               #   in Loop: Header=BB1_42 Depth=1
	lw	a7, 1208(a5)
	beqz	a7, .LBB1_51
# %bb.50:                               #   in Loop: Header=BB1_42 Depth=1
	addi	a4, a2, 1
	srliw	a7, a4, 31
	add	a7, a4, a7
	andi	a7, a7, -2
	subw	a4, a4, a7
.LBB1_51:                               #   in Loop: Header=BB1_42 Depth=1
	sw	a4, 60(a6)
	lw	a4, %lo(start_frame_no_in_this_IGOP)(s2)
	subw	a7, a2, a4
.LBB1_52:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t0, 20(a1)
	lw	t2, 440(a5)
	slli	t0, t0, 1
	addi	t0, t0, 2
	mul	a7, t0, a7
	sw	a7, 12(a6)
	bnez	t2, .LBB1_54
# %bb.53:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t2, 444(a5)
	mv	t0, a7
	beqz	t2, .LBB1_55
.LBB1_54:                               #   in Loop: Header=BB1_42 Depth=1
	ori	t0, a7, 1
.LBB1_55:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t4, 1940(a1)
	sw	t0, 16(a6)
	sw	a7, 20(a6)
	subw	t2, a2, a4
	beq	t4, s5, .LBB1_57
# %bb.56:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t4, 1944(a1)
	beqz	t4, .LBB1_64
.LBB1_57:                               #   in Loop: Header=BB1_42 Depth=1
	blt	a2, s7, .LBB1_64
# %bb.58:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t4, 1244(a1)
	beqz	t4, .LBB1_64
# %bb.59:                               #   in Loop: Header=BB1_42 Depth=1
	beqz	t3, .LBB1_63
# %bb.60:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t1, 1236(a1)
	beqz	t1, .LBB1_63
# %bb.61:                               #   in Loop: Header=BB1_42 Depth=1
	remw	t1, a2, t3
	bnez	t1, .LBB1_63
# %bb.62:                               #   in Loop: Header=BB1_42 Depth=1
	li	s6, 0
	sw	zero, 28(a6)
.LBB1_63:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t1, %lo(log2_max_frame_num_minus4)(s8)
	lwu	t3, 28(a6)
	addi	t1, t1, 4
	sllw	t1, s9, t1
	not	t1, t1
	and	t1, t3, t1
	j	.LBB1_68
.LBB1_64:                               #   in Loop: Header=BB1_42 Depth=1
	add	t1, a2, t1
	beqz	t3, .LBB1_67
# %bb.65:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t4, 1236(a1)
	beqz	t4, .LBB1_67
# %bb.66:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t4, %lo(log2_max_frame_num_minus4)(s8)
	subw	t1, t1, a4
	remw	t1, t1, t3
	addi	t4, t4, 4
	sllw	t4, s5, t4
	remw	t1, t1, t4
	remw	t3, t2, t3
	seqz	t3, t3
	addi	t3, t3, -1
	and	t1, t3, t1
	sw	t1, 28(a6)
	and	s6, t3, s6
	sw	zero, 0(a6)
	bnez	a2, .LBB1_69
	j	.LBB1_71
.LBB1_67:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t3, %lo(log2_max_frame_num_minus4)(s8)
	subw	t1, t1, a4
	addi	t3, t3, 4
	sllw	t3, s5, t3
	remw	t1, t1, t3
.LBB1_68:                               #   in Loop: Header=BB1_42 Depth=1
	sw	t1, 28(a6)
	sw	zero, 0(a6)
	beqz	a2, .LBB1_71
.LBB1_69:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t1, 1940(a1)
	bne	t1, s5, .LBB1_71
# %bb.70:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t1, 1244(a1)
	slli	t1, t1, 1
	sw	t1, 0(a6)
.LBB1_71:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t1, 1228(a1)
	beqz	t1, .LBB1_74
# %bb.72:                               #   in Loop: Header=BB1_42 Depth=1
	remw	t1, t2, t1
	bnez	t1, .LBB1_75
# %bb.73:                               #   in Loop: Header=BB1_42 Depth=1
	li	t1, 2
	lw	t4, 1244(a1)
	sw	t1, 24(a0)
	bnez	t4, .LBB1_79
	j	.LBB1_83
.LBB1_74:                               #   in Loop: Header=BB1_42 Depth=1
	li	t1, 2
	beq	a2, a4, .LBB1_78
.LBB1_75:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t1, 1280(a1)
	beqz	t1, .LBB1_77
# %bb.76:                               #   in Loop: Header=BB1_42 Depth=1
	remw	t1, t2, t1
	beqz	t1, .LBB1_82
.LBB1_77:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t1, 1940(a1)
	addi	t1, t1, -2
	seqz	t1, t1
.LBB1_78:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t4, 1244(a1)
	sw	t1, 24(a0)
	beqz	t4, .LBB1_83
.LBB1_79:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t3, 0(a5)
	beqz	t3, .LBB1_83
# %bb.80:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t5, 0(a3)
	addiw	t2, t2, 1
	bne	t2, t5, .LBB1_83
# %bb.81:                               #   in Loop: Header=BB1_42 Depth=1
	lw	t2, 20(a1)
	addi	t2, t2, 1
	fcvt.s.w	fa5, t2
	fcvt.d.s	fa5, fa5
	fcvt.d.w	fa4, t4
	fadd.d	fa4, fa4, fs0
	fdiv.d	fa5, fa5, fa4
	fadd.d	fa5, fa5, fs1
	fcvt.w.d	t4, fa5, rtz
	addi	t5, a2, -1
	mul	t2, t2, t5
	subw	t2, t3, t2
	lui	t3, %hi(initial_Bframes)
	lw	t3, %lo(initial_Bframes)(t3)
	divw	t2, t2, t4
	addi	t2, t2, -1
	sw	t2, 1244(a1)
	subw	t2, t2, t3
	slli	t2, t2, 1
	sw	t2, 0(a6)
	add	a7, a7, t2
	sw	a7, 12(a6)
	add	t0, t0, t2
	sw	t0, 16(a6)
	sw	a7, 20(a6)
	j	.LBB1_83
.LBB1_82:                               #   in Loop: Header=BB1_42 Depth=1
	li	t1, 3
	lw	t4, 1244(a1)
	sw	t1, 24(a0)
	bnez	t4, .LBB1_79
.LBB1_83:                               #   in Loop: Header=BB1_42 Depth=1
	bne	t1, s7, .LBB1_94
# %bb.84:                               #   in Loop: Header=BB1_42 Depth=1
	lw	a5, 796(a5)
	beqz	a5, .LBB1_94
# %bb.85:                               #   in Loop: Header=BB1_42 Depth=1
	lw	a4, 1228(a1)
	beqz	a4, .LBB1_88
# %bb.86:                               #   in Loop: Header=BB1_42 Depth=1
	lw	a3, 0(a3)
	lw	a0, 1244(a1)
	divw	a5, a2, a4
	divw	a6, a3, a4
	addi	a1, a0, 1
	bge	a5, a6, .LBB1_89
# %bb.87:                               #   in Loop: Header=BB1_42 Depth=1
	snez	a3, a2
	mul	a4, a1, a4
	addi	a3, a3, -1
	and	a3, a3, a0
	subw	a3, a4, a3
	j	.LBB1_92
.LBB1_88:                               #   in Loop: Header=BB1_42 Depth=1
	lw	a0, 0(a3)
	lw	a1, 1244(a1)
	addiw	a0, a0, -1
	mulw	a1, a0, a1
	j	.LBB1_93
.LBB1_89:                               #   in Loop: Header=BB1_42 Depth=1
	beqz	a2, .LBB1_91
# %bb.90:                               #   in Loop: Header=BB1_42 Depth=1
	subw	a3, a3, a2
	addi	a4, a3, -1
	mul	a4, a4, a0
	add	a3, a3, a0
	add	a3, a3, a4
	j	.LBB1_92
.LBB1_91:                               #   in Loop: Header=BB1_42 Depth=1
	addi	a4, a3, -1
	mul	a4, a4, a0
	add	a3, a4, a3
.LBB1_92:                               #   in Loop: Header=BB1_42 Depth=1
	seqz	a2, a2
	sllw	a0, a0, a2
	add	a0, a3, a0
	divw	a1, a0, a1
	addiw	a0, a1, -1
	subw	a1, a3, a1
.LBB1_93:                               #   in Loop: Header=BB1_42 Depth=1
	call	rc_init_GOP
	ld	a0, %lo(img)(s10)
	lw	a2, 0(a0)
	lw	a4, %lo(start_frame_no_in_this_IGOP)(s2)
	ld	a1, %lo(input)(s1)
.LBB1_94:                               #   in Loop: Header=BB1_42 Depth=1
	addi	a1, a1, 2047
	lw	a1, 1537(a1)
	subw	a2, a2, a4
	addi	a1, a1, 1
	remw	a1, a2, a1
	snez	a1, a1
	add	a0, a0, s3
	sw	a1, 88(a0)
	call	encode_one_frame
	ld	a0, %lo(img)(s10)
	lw	a2, 24(a0)
	ld	a1, %lo(input)(s1)
	bne	a2, s7, .LBB1_97
# %bb.95:                               #   in Loop: Header=BB1_42 Depth=1
	lw	a2, 1232(a1)
	beqz	a2, .LBB1_97
# %bb.96:                               #   in Loop: Header=BB1_42 Depth=1
	addiw	a2, s3, 168
	add	a2, a0, a2
	lw	a3, 0(a2)
	sw	a3, 308(a2)
.LBB1_97:                               #   in Loop: Header=BB1_42 Depth=1
	addi	a1, a1, 2047
	lw	a1, 1849(a1)
	beqz	a1, .LBB1_99
# %bb.98:                               #   in Loop: Header=BB1_42 Depth=1
	call	report_frame_statistic
	ld	a0, %lo(img)(s10)
.LBB1_99:                               #   in Loop: Header=BB1_42 Depth=1
	addiw	a1, s3, 172
	add	a0, a0, a1
	lw	a1, 32(a0)
	bnez	a1, .LBB1_101
# %bb.100:                              #   in Loop: Header=BB1_42 Depth=1
	lw	a1, 0(a0)
	lw	a2, %lo(log2_max_frame_num_minus4)(s8)
	addi	s6, s6, 1
	addi	a1, a1, -1
	addi	a2, a2, 4
	sllw	a2, s9, a2
	not	a2, a2
	and	a1, a1, a2
	sw	a1, 0(a0)
.LBB1_101:                              #   in Loop: Header=BB1_42 Depth=1
	call	encode_enhancement_layer
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(img)(s10)
	lw	a4, 8(a1)
	addi	a2, a1, 2047
	lw	a3, 1541(a2)
	lw	a2, 0(a0)
	beqz	a3, .LBB1_41
# %bb.102:                              #   in Loop: Header=BB1_42 Depth=1
	addiw	a5, a4, -1
	bne	a2, a5, .LBB1_41
# %bb.103:                              #   in Loop: Header=BB1_42 Depth=1
	lw	a6, %lo(In2ndIGOP)(s11)
	bnez	a6, .LBB1_41
# %bb.104:                              #   in Loop: Header=BB1_42 Depth=1
	lw	a2, 20(a1)
	sw	s5, %lo(In2ndIGOP)(s11)
	sw	a4, %lo(start_frame_no_in_this_IGOP)(s2)
	addi	a2, a2, 1
	mul	a2, a2, a5
	addi	a2, a2, 1
	sw	a2, %lo(start_tr_in_this_IGOP)(s0)
	lw	a2, 0(a0)
	addw	a4, a3, a4
	sw	a4, 8(a1)
	j	.LBB1_41
.LBB1_105:
	call	terminate_sequence
	call	flush_dpb
	lui	a0, %hi(p_in)
	lw	a0, %lo(p_in)(a0)
	call	close
	lui	a0, %hi(p_dec)
	lw	a0, %lo(p_dec)(a0)
	li	a1, -1
	beq	a0, a1, .LBB1_107
# %bb.106:
	call	close
.LBB1_107:
	lui	a0, %hi(p_trace)
	ld	a0, %lo(p_trace)(a0)
	beqz	a0, .LBB1_109
# %bb.108:
	call	fclose
.LBB1_109:
	call	Clear_Motion_Search_Module
	call	RandomIntraUninit
	call	FmoUninit
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 1944(a0)
	beqz	a0, .LBB1_111
# %bb.110:
	call	clear_gop_structure
.LBB1_111:
	call	clear_rdopt
	call	calc_buffer
	call	report
	lui	a0, %hi(frame_pic_1)
	ld	s0, %lo(frame_pic_1)(a0)
	beqz	s0, .LBB1_113
# %bb.112:
	mv	a0, s0
	call	free_slice_list
	mv	a0, s0
	call	free
.LBB1_113:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 1916(a0)
	beqz	a0, .LBB1_118
# %bb.114:
	lui	a0, %hi(frame_pic_2)
	ld	s0, %lo(frame_pic_2)(a0)
	beqz	s0, .LBB1_116
# %bb.115:
	mv	a0, s0
	call	free_slice_list
	mv	a0, s0
	call	free
.LBB1_116:
	lui	a0, %hi(frame_pic_3)
	ld	s0, %lo(frame_pic_3)(a0)
	beqz	s0, .LBB1_118
# %bb.117:
	mv	a0, s0
	call	free_slice_list
	mv	a0, s0
	call	free
.LBB1_118:
	lui	a0, %hi(top_pic)
	ld	s0, %lo(top_pic)(a0)
	beqz	s0, .LBB1_120
# %bb.119:
	mv	a0, s0
	call	free_slice_list
	mv	a0, s0
	call	free
.LBB1_120:
	lui	a0, %hi(bottom_pic)
	ld	s0, %lo(bottom_pic)(a0)
	beqz	s0, .LBB1_122
# %bb.121:
	mv	a0, s0
	call	free_slice_list
	mv	a0, s0
	call	free
.LBB1_122:
	call	free_dpb
	lui	a0, %hi(Co_located)
	ld	a0, %lo(Co_located)(a0)
	call	free_colocated
	call	uninit_out_buffer
	call	free_global_buffers
	call	free_img
	call	free_context_memory
	call	FreeNalPayloadBuffer
	call	FreeParameterSets
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
	fld	fs0, 16(sp)                     # 8-byte Folded Reload
	fld	fs1, 8(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_poc                        # -- Begin function init_poc
	.p2align	2
	.type	init_poc,@function
init_poc:                               # @init_poc
# %bb.0:
	lui	a0, %hi(input)
	ld	a2, %lo(input)(a0)
	addi	a1, a2, 2047
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a3, 1833(a1)
	lui	a4, 22
	addiw	a4, a4, 112
	add	a0, a0, a4
	lw	a4, 1940(a2)
	sw	a3, 0(a0)
	sw	zero, 4(a0)
	li	a3, 1
	sw	a3, 16(a0)
	bne	a4, a3, .LBB2_3
# %bb.1:
	li	a3, 2
	sw	zero, 8(a0)
	sw	a3, 20(a0)
	lw	a2, 1505(a1)
	beqz	a2, .LBB2_4
.LBB2_2:
	li	a1, 1
	sw	a1, 12(a0)
	j	.LBB2_5
.LBB2_3:
	lw	a2, 1244(a2)
	slli	a3, a2, 1
	negw	a2, a3
	addi	a3, a3, 2
	sw	a2, 8(a0)
	sw	a3, 20(a0)
	lw	a2, 1505(a1)
	bnez	a2, .LBB2_2
.LBB2_4:
	lw	a2, 1509(a1)
	snez	a2, a2
	sw	a2, 12(a0)
	lw	a1, 1509(a1)
	beqz	a1, .LBB2_6
.LBB2_5:
	li	a1, 1
.LBB2_6:
	sw	a1, 88(a0)
	sw	a1, 28(a0)
	ret
.Lfunc_end2:
	.size	init_poc, .Lfunc_end2-init_poc
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SetLevelIndices                 # -- Begin function SetLevelIndices
	.p2align	2
	.type	SetLevelIndices,@function
SetLevelIndices:                        # @SetLevelIndices
# %bb.0:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a1, 24(a0)
	addi	a1, a1, -10
	li	a2, 40
	bltu	a2, a1, .LBB3_18
# %bb.1:
	slli	a1, a1, 2
	lui	a2, %hi(.LJTI3_0)
	addi	a2, a2, %lo(.LJTI3_0)
	add	a1, a1, a2
	lw	a1, 0(a1)
	jr	a1
.LBB3_2:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	sw	zero, 8(a0)
	ret
.LBB3_3:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a1, 15
	sw	a1, 8(a0)
	ret
.LBB3_4:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a1, 11
	sw	a1, 8(a0)
	ret
.LBB3_5:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a1, 5
	sw	a1, 8(a0)
	ret
.LBB3_6:
	lw	a1, 4(a0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a2, 88
	bltu	a2, a1, .LBB3_19
# %bb.7:
	li	a1, 13
	sw	a1, 8(a0)
	ret
.LBB3_8:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a1, 6
	sw	a1, 8(a0)
	ret
.LBB3_9:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a1, 12
	sw	a1, 8(a0)
	ret
.LBB3_10:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a1, 4
	sw	a1, 8(a0)
	ret
.LBB3_11:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a1, 3
	sw	a1, 8(a0)
	ret
.LBB3_12:
	lw	a1, 20(a0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	beqz	a1, .LBB3_20
# %bb.13:
	li	a1, 1
	sw	a1, 8(a0)
	ret
.LBB3_14:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a1, 7
	sw	a1, 8(a0)
	ret
.LBB3_15:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a1, 8
	sw	a1, 8(a0)
	ret
.LBB3_16:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a1, 10
	sw	a1, 8(a0)
	ret
.LBB3_17:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a1, 9
	sw	a1, 8(a0)
	ret
.LBB3_18:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	li	a1, 16
	sw	a1, 8(a0)
	ret
.LBB3_19:
	li	a1, 14
	sw	a1, 8(a0)
	ret
.LBB3_20:
	li	a1, 2
	sw	a1, 8(a0)
	ret
.Lfunc_end3:
	.size	SetLevelIndices, .Lfunc_end3-SetLevelIndices
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_2
	.word	.LBB3_12
	.word	.LBB3_11
	.word	.LBB3_10
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_5
	.word	.LBB3_8
	.word	.LBB3_14
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_15
	.word	.LBB3_17
	.word	.LBB3_16
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_4
	.word	.LBB3_9
	.word	.LBB3_6
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_18
	.word	.LBB3_3
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	init_img                        # -- Begin function init_img
	.p2align	2
	.type	init_img,@function
init_img:                               # @init_img
# %bb.0:
	lui	a0, %hi(input)
	ld	a2, %lo(input)(a0)
	addi	a1, a2, 2047
	lw	a6, 76(a2)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a5, 22
	lw	a4, 1921(a1)
	addiw	a3, a5, 80
	add	a3, a0, a3
	sw	a6, 356(a3)
	sw	a4, 292(a3)
	li	a7, 6
	mul	a7, a4, a7
	addi	a7, a7, -48
	sw	a7, 300(a3)
	slli	a7, a4, 1
	addi	a7, a7, -16
	sw	a7, 308(a3)
	addi	t0, a4, -1
	li	a7, 1
	sllw	t0, a7, t0
	sw	t0, 336(a3)
	li	t0, -1
	sllw	t1, t0, a4
	not	t1, t1
	sw	t1, 340(a3)
	beqz	a6, .LBB4_24
# %bb.1:
	lw	a5, 1925(a1)
	sw	a5, 296(a3)
	sllw	t0, t0, a5
	not	t0, t0
	sw	t0, 344(a3)
	sllw	a7, a7, a6
	andi	a7, a7, -2
	sw	a7, 348(a3)
	slli	a7, a7, 1
	sw	a7, 352(a3)
	li	a7, 16
	li	t1, 3
	li	t0, 8
	bltu	a6, t1, .LBB4_3
# %bb.2:
	li	t0, 16
.LBB4_3:
	andi	a6, a6, -2
	li	t1, 2
	sw	t0, 364(a3)
	beq	a6, t1, .LBB4_5
# %bb.4:
	li	a7, 8
.LBB4_5:
	sw	a7, 368(a3)
	lw	a7, 380(a3)
	li	a6, 6
	mul	a6, a5, a6
	addi	t0, a6, -48
	sw	t0, 304(a3)
	beqz	a7, .LBB4_7
# %bb.6:
	addi	a6, a6, -42
	sw	a6, 304(a3)
.LBB4_7:
	lui	a6, %hi(active_pps)
	ld	a6, %lo(active_pps)(a6)
	lw	a7, 212(a6)
	sw	a7, 372(a3)
	lw	a6, 216(a6)
	sw	a6, 376(a3)
	blt	a5, a4, .LBB4_9
# %bb.8:
	mv	a4, a5
.LBB4_9:
	li	a6, 8
	li	a5, 16
	blt	a6, a4, .LBB4_11
.LBB4_10:
	li	a5, 8
.LBB4_11:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	sd	s6, 0(sp)                       # 8-byte Folded Spill
	lui	a4, %hi(active_sps)
	ld	a4, %lo(active_sps)(a4)
	lw	a6, 1132(a4)
	lw	a4, 1148(a4)
	sw	a5, 288(a3)
	sw	a6, 32(a0)
	seqz	a4, a4
	lw	a2, 36(a2)
	sllw	a4, a6, a4
	fld	fa5, 1009(a1)
	sw	a4, 36(a0)
	sw	a2, 0(a3)
	sw	zero, 268(a3)
	fcvt.s.d	fa5, fa5
	fsw	fa5, 48(a0)
	lui	s2, 22
	addiw	a1, s2, -784
	add	a0, a0, a1
	call	get_mem_mv
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	addiw	a1, s2, -776
	add	a0, a0, a1
	call	get_mem_mv
	lui	s1, %hi(input)
	ld	a0, %lo(input)(s1)
	lw	a0, 1264(a0)
	beqz	a0, .LBB4_13
# %bb.12:
	ld	a0, %lo(img)(s0)
	addiw	a1, s2, -768
	add	a0, a0, a1
	call	get_mem_mv
	ld	a0, %lo(img)(s0)
	addiw	a1, s2, -760
	add	a0, a0, a1
	call	get_mem_mv
.LBB4_13:
	ld	a0, %lo(img)(s0)
	lui	s2, 3
	addiw	a1, s2, 1848
	add	a0, a0, a1
	call	get_mem_ACcoeff
	ld	a0, %lo(img)(s0)
	addiw	a1, s2, 1856
	add	a0, a0, a1
	call	get_mem_DCcoeff
	ld	a0, %lo(input)(s1)
	addi	a0, a0, 2047
	lw	a0, 1509(a0)
	lui	s4, %hi(rddata_top_frame_mb)
	addi	s4, s4, %lo(rddata_top_frame_mb)
	lui	s3, %hi(rddata_bot_frame_mb)
	addi	s3, s3, %lo(rddata_bot_frame_mb)
	lui	s2, %hi(rddata_top_field_mb)
	addi	s2, s2, %lo(rddata_top_field_mb)
	lui	s1, %hi(rddata_bot_field_mb)
	addi	s1, s1, %lo(rddata_bot_field_mb)
	beqz	a0, .LBB4_15
# %bb.14:
	addi	a0, s4, 1648
	call	get_mem_mv
	addi	a0, s4, 1656
	call	get_mem_mv
	addi	a0, s3, 1648
	call	get_mem_mv
	addi	a0, s3, 1656
	call	get_mem_mv
	addi	a0, s2, 1648
	call	get_mem_mv
	addi	a0, s2, 1656
	call	get_mem_mv
	addi	a0, s1, 1648
	call	get_mem_mv
	addi	a0, s1, 1656
	call	get_mem_mv
	addi	a0, s4, 1544
	call	get_mem_ACcoeff
	addi	a0, s4, 1552
	call	get_mem_DCcoeff
	addi	a0, s3, 1544
	call	get_mem_ACcoeff
	addi	a0, s3, 1552
	call	get_mem_DCcoeff
	addi	a0, s2, 1544
	call	get_mem_ACcoeff
	addi	a0, s2, 1552
	call	get_mem_DCcoeff
	addi	a0, s1, 1544
	call	get_mem_ACcoeff
	addi	a0, s1, 1552
	call	get_mem_DCcoeff
.LBB4_15:
	lui	a0, %hi(img)
	ld	s5, %lo(img)(a0)
	lui	a0, 22
	addiw	s6, a0, -928
	add	s6, s5, s6
	lw	a0, 1348(s6)
	lw	a1, 1352(s6)
	blt	a1, a0, .LBB4_17
# %bb.16:
	mv	a0, a1
.LBB4_17:
	slli	a0, a0, 1
	addiw	s0, a0, 2
	li	a1, 4
	mv	a0, s0
	call	calloc
	sd	a0, 0(s6)
	bnez	a0, .LBB4_19
# %bb.18:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	s5, %lo(img)(a0)
	lui	a0, 22
	add	a0, s5, a0
	ld	a0, -928(a0)
.LBB4_19:
	lui	a1, 22
	addiw	a1, a1, -928
	add	a1, s5, a1
	lui	a2, 8
	addiw	s6, a2, -1192
	srai	s0, s0, 1
	slli	a2, s0, 2
	add	a0, a0, a2
	sd	a0, 0(a1)
	blez	s0, .LBB4_22
# %bb.20:
	li	a2, 0
	mv	a3, a0
.LBB4_21:                               # =>This Inner Loop Header: Depth=1
	mul	a4, a2, a2
	sw	a4, 0(a0)
	sw	a4, 0(a3)
	addi	a2, a2, 1
	addi	a3, a3, 4
	addi	a0, a0, -4
	bne	s0, a2, .LBB4_21
.LBB4_22:
	lui	a0, %hi(input)
	ld	s0, %lo(input)(a0)
	add	s6, s5, s6
	addi	a2, s0, 2047
	lw	a4, 68(s0)
	lw	a3, 1392(a1)
	lw	a5, 72(s0)
	lw	a0, 1396(a1)
	lw	a6, 1364(a1)
	addw	a3, a3, a4
	sw	a3, 52(s5)
	addw	a0, a0, a5
	sw	a0, 60(s5)
	beqz	a6, .LBB4_25
# %bb.23:
	slli	a6, a6, 2
	lui	a7, %hi(init_img.mb_width_cr)
	addi	a7, a7, %lo(init_img.mb_width_cr)
	add	a7, a7, a6
	lw	a7, 0(a7)
	lui	t0, %hi(init_img.mb_height_cr)
	addi	t0, t0, %lo(init_img.mb_height_cr)
	add	a6, t0, a6
	lw	t0, 0(a6)
	li	t1, 16
	divw	t2, t1, a7
	divw	a6, a3, t2
	divw	t0, t1, t0
	divw	a7, a0, t0
	divw	a4, a4, t2
	divw	a5, a5, t0
	j	.LBB4_26
.LBB4_24:
	sw	zero, 296(a3)
	sd	zero, 344(a3)
	sw	zero, 352(a3)
	addiw	a5, a5, 444
	add	a5, a0, a5
	sw	zero, 304(a3)
	sw	zero, 0(a5)
	sw	zero, 4(a5)
	sw	zero, 8(a5)
	sw	zero, 12(a5)
	li	a6, 8
	li	a5, 16
	bge	a6, a4, .LBB4_10
	j	.LBB4_11
.LBB4_25:
	li	a7, 0
	li	a4, 0
	li	a5, 0
.LBB4_26:
	sw	a6, 56(s5)
	sw	a7, 64(s5)
	sw	a4, 1933(a2)
	sw	a5, 1929(a2)
	lw	a2, 64(s5)
	sw	a2, 68(s5)
	slli	a2, a3, 1
	srli	a2, a2, 60
	add	a2, a3, a2
	sraiw	a2, a2, 4
	sw	a2, 1104(a1)
	slli	a3, a0, 1
	lui	a4, %hi(active_sps)
	ld	a4, %lo(active_sps)(a4)
	srli	a3, a3, 60
	add	a0, a0, a3
	sraiw	a0, a0, 4
	lw	a3, 1148(a4)
	sw	a0, 1112(a1)
	mul	a2, a0, a2
	sw	a2, 1124(a1)
	seqz	a3, a3
	srlw	a0, a0, a3
	sw	a0, 1108(a1)
	slli	a0, a2, 32
	srli	a0, a0, 32
	li	a1, 528
	call	calloc
	sd	a0, 0(s6)
	bnez	a0, .LBB4_28
# %bb.27:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	no_mem_exit
	lui	a0, %hi(input)
	ld	s0, %lo(input)(a0)
	lui	a0, %hi(img)
	ld	s5, %lo(img)(a0)
.LBB4_28:
	lw	a0, 220(s0)
	beqz	a0, .LBB4_31
# %bb.29:
	lui	a0, 22
	addiw	a0, a0, -920
	add	s0, s5, a0
	lwu	a0, 1116(s0)
	li	a1, 4
	call	calloc
	sd	a0, 0(s0)
	bnez	a0, .LBB4_31
# %bb.30:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	s5, %lo(img)(a0)
.LBB4_31:
	lw	a1, 60(s5)
	addi	a0, s5, 104
	slli	a2, a1, 1
	lw	a3, 52(s5)
	srli	a2, a2, 62
	add	a1, a1, a2
	sraiw	a1, a1, 2
	slli	a2, a3, 1
	srli	a2, a2, 62
	add	a2, a3, a2
	sraiw	a2, a2, 2
	call	get_mem2D
	lui	s0, %hi(img)
	ld	a1, %lo(img)(s0)
	lw	a2, 60(a1)
	addi	a0, a1, 112
	slli	a3, a2, 1
	lw	a4, 52(a1)
	srli	a3, a3, 62
	add	a2, a2, a3
	sraiw	a1, a2, 2
	slli	a2, a4, 1
	srli	a2, a2, 62
	add	a2, a4, a2
	sraiw	a2, a2, 2
	call	get_mem2D
	ld	a0, %lo(img)(s0)
	lw	a1, 60(a0)
	slli	a2, a1, 1
	lw	a0, 52(a0)
	srli	a2, a2, 62
	add	a1, a1, a2
	sraiw	a1, a1, 2
	slli	a2, a0, 1
	srli	a2, a2, 62
	add	a0, a0, a2
	sraiw	a2, a0, 2
	addi	a0, s4, 1600
	call	get_mem2D
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1509(a0)
	beqz	a0, .LBB4_33
# %bb.32:
	ld	a0, %lo(img)(s0)
	lw	a1, 60(a0)
	slli	a2, a1, 1
	lw	a0, 52(a0)
	srli	a2, a2, 62
	add	a1, a1, a2
	sraiw	a1, a1, 2
	slli	a2, a0, 1
	srli	a2, a2, 62
	add	a0, a0, a2
	sraiw	a2, a0, 2
	addi	a0, s3, 1600
	call	get_mem2D
	ld	a0, %lo(img)(s0)
	lw	a1, 60(a0)
	slli	a2, a1, 1
	lw	a0, 52(a0)
	srli	a2, a2, 62
	add	a1, a1, a2
	sraiw	a1, a1, 2
	slli	a2, a0, 1
	srli	a2, a2, 62
	add	a0, a0, a2
	sraiw	a2, a0, 2
	addi	a0, s2, 1600
	call	get_mem2D
	ld	a0, %lo(img)(s0)
	lw	a1, 60(a0)
	slli	a2, a1, 1
	lw	a0, 52(a0)
	srli	a2, a2, 62
	add	a1, a1, a2
	sraiw	a1, a1, 2
	slli	a2, a0, 1
	srli	a2, a2, 62
	add	a0, a0, a2
	sraiw	a2, a0, 2
	addi	a0, s1, 1600
	call	get_mem2D
.LBB4_33:
	ld	a0, %lo(img)(s0)
	lui	s2, 22
	addiw	a1, s2, 196
	add	a1, a0, a1
	lw	a3, 232(a1)
	lw	a1, 0(a1)
	addi	a0, a0, 128
	addiw	a3, a3, 4
	li	a2, 4
	li	s1, 4
	call	get_mem3Dint
	ld	a0, %lo(img)(s0)
	add	a1, a0, s2
	lw	a3, 380(a1)
	addiw	a1, s2, 392
	add	a0, a0, a1
	addiw	a2, a3, 52
	li	a1, 10
	call	get_mem2Ddb_offset
	ld	a0, %lo(img)(s0)
	add	a1, a0, s2
	lw	a3, 380(a1)
	addiw	a1, s2, 400
	add	a0, a0, a1
	addiw	a2, a3, 52
	li	a1, 10
	call	get_mem2Ddb_offset
	ld	a0, %lo(img)(s0)
	add	a1, a0, s2
	lw	a3, 380(a1)
	addiw	a1, s2, 408
	add	a0, a0, a1
	addiw	a2, a3, 52
	li	a1, 10
	call	get_mem2Dint_offset
	call	CAVLC_init
	ld	a0, %lo(img)(s0)
	lw	a4, 52(a0)
	blt	a4, s1, .LBB4_39
# %bb.34:                               # %.preheader1
	li	a1, 0
	li	a2, -1
	lui	a3, %hi(img)
	j	.LBB4_36
.LBB4_35:                               #   in Loop: Header=BB4_36 Depth=1
	lw	a4, 52(a0)
	addi	a1, a1, 1
	slli	a5, a4, 1
	srli	a5, a5, 62
	add	a5, a4, a5
	sraiw	a5, a5, 2
	bge	a1, a5, .LBB4_39
.LBB4_36:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_38 Depth 2
	lw	a4, 60(a0)
	blt	a4, s1, .LBB4_35
# %bb.37:                               # %.preheader
                                        #   in Loop: Header=BB4_36 Depth=1
	li	a4, 0
	li	a5, 0
.LBB4_38:                               #   Parent Loop BB4_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 104(a0)
	add	a0, a0, a4
	ld	a0, 0(a0)
	add	a0, a0, a1
	sb	a2, 0(a0)
	ld	a0, %lo(img)(a3)
	ld	a0, 112(a0)
	add	a0, a0, a4
	ld	a0, 0(a0)
	add	a0, a0, a1
	sb	a2, 0(a0)
	ld	a0, %lo(img)(a3)
	lw	a6, 60(a0)
	addi	a5, a5, 1
	slli	a7, a6, 1
	srli	a7, a7, 62
	add	a6, a6, a7
	sraiw	a6, a6, 2
	addi	a4, a4, 8
	blt	a5, a6, .LBB4_38
	j	.LBB4_35
.LBB4_39:
	sw	zero, 88(a0)
	slli	a1, a4, 1
	srli	a1, a1, 60
	lw	a3, 60(a0)
	lui	s0, %hi(input)
	ld	a2, %lo(input)(s0)
	add	a1, a4, a1
	sraiw	a0, a1, 4
	slli	a1, a3, 1
	addi	a2, a2, 2047
	lw	a2, 1545(a2)
	srli	a1, a1, 60
	add	a1, a3, a1
	sraiw	a1, a1, 4
	call	RandomIntraInit
	call	InitSEIMessages
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a1, 1549(a0)
	beqz	a1, .LBB4_41
# %bb.40:
	lw	a1, 1557(a0)
	lw	a2, 1561(a0)
	slli	a1, a1, 1
	sw	a1, 1557(a0)
	slli	a1, a2, 1
	j	.LBB4_42
.LBB4_41:
	sd	zero, 1553(a0)
.LBB4_42:
	sw	a1, 1561(a0)
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
.Lfunc_end4:
	.size	init_img, .Lfunc_end4-init_img
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	malloc_picture                  # -- Begin function malloc_picture
	.p2align	2
	.type	malloc_picture,@function
malloc_picture:                         # @malloc_picture
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	li	a0, 1
	li	a1, 824
	call	calloc
	beqz	a0, .LBB5_2
# %bb.1:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.LBB5_2:
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	mv	s0, a0
	mv	a0, a1
	call	no_mem_exit
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	malloc_picture, .Lfunc_end5-malloc_picture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_global_buffers             # -- Begin function init_global_buffers
	.p2align	2
	.type	init_global_buffers,@function
init_global_buffers:                    # @init_global_buffers
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 36(a0)
	slliw	a0, a0, 1
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(last_P_no_frm)
	sd	a0, %lo(last_P_no_frm)(a1)
	beqz	a0, .LBB6_2
# %bb.1:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	bnez	a0, .LBB6_5
	j	.LBB6_3
.LBB6_2:
	lui	a0, %hi(.L.str.215)
	addi	a0, a0, %lo(.L.str.215)
	call	no_mem_exit
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	bnez	a0, .LBB6_5
.LBB6_3:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 36(a0)
	slliw	a0, a0, 2
	slli	a0, a0, 2
	call	malloc
	lui	a1, %hi(last_P_no_fld)
	sd	a0, %lo(last_P_no_fld)(a1)
	bnez	a0, .LBB6_5
# %bb.4:
	lui	a0, %hi(.L.str.215)
	addi	a0, a0, %lo(.L.str.215)
	call	no_mem_exit
.LBB6_5:
	call	init_orig_buffers
	lui	s4, %hi(img)
	ld	s2, %lo(img)(s4)
	lui	s5, 22
	add	a1, s2, s5
	lwu	s3, 196(a1)
	mv	s0, a0
	slli	s1, s3, 2
	mv	a0, s1
	call	malloc
	lui	a1, %hi(yPicPos)
	sd	a0, %lo(yPicPos)(a1)
	bnez	a0, .LBB6_7
# %bb.6:
	lui	a0, %hi(.L.str.216)
	addi	a0, a0, %lo(.L.str.216)
	call	no_mem_exit
	ld	s2, %lo(img)(s4)
	add	s5, s2, s5
	lwu	s3, 196(s5)
	slli	s1, s3, 2
.LBB6_7:
	mv	a0, s1
	call	malloc
	lui	a1, %hi(xPicPos)
	sd	a0, %lo(xPicPos)(a1)
	bnez	a0, .LBB6_9
# %bb.8:
	lui	a0, %hi(.L.str.217)
	addi	a0, a0, %lo(.L.str.217)
	call	no_mem_exit
	lui	a0, %hi(img)
	ld	s2, %lo(img)(a0)
	lui	a0, 22
	add	a0, s2, a0
	lw	s3, 196(a0)
.LBB6_9:
	add	s0, s0, s1
	sext.w	a1, s3
	slli	a0, s3, 2
	blez	a1, .LBB6_12
# %bb.10:
	li	a1, 0
	li	a2, 0
	lui	a3, %hi(xPicPos)
	ld	a3, %lo(xPicPos)(a3)
	lui	a4, %hi(yPicPos)
	ld	a4, %lo(yPicPos)(a4)
	lui	a5, 22
	addiw	a5, a5, 176
	add	s2, s2, a5
.LBB6_11:                               # =>This Inner Loop Header: Depth=1
	lw	a5, 0(s2)
	remuw	a5, a1, a5
	sw	a5, 0(a3)
	lw	a5, 0(s2)
	divuw	a5, a1, a5
	sw	a5, 0(a4)
	lw	a5, 20(s2)
	addi	a2, a2, 1
	addi	a4, a4, 4
	addi	a3, a3, 4
	addi	a1, a1, 1
	blt	a2, a5, .LBB6_11
.LBB6_12:
	lui	s1, %hi(input)
	ld	a1, %lo(input)(s1)
	lw	a2, 1904(a1)
	add	s0, s0, a0
	bnez	a2, .LBB6_15
# %bb.13:
	lw	a0, 1908(a1)
	bnez	a0, .LBB6_15
# %bb.14:
	lw	a0, 64(a1)
	beqz	a0, .LBB6_16
.LBB6_15:
	lui	a0, %hi(wp_weight)
	addi	a0, a0, %lo(wp_weight)
	li	a1, 6
	li	a2, 32
	li	a3, 3
	call	get_mem3Dint
	add	s2, a0, s0
	lui	a0, %hi(wp_offset)
	addi	a0, a0, %lo(wp_offset)
	li	a1, 6
	li	a2, 32
	li	a3, 3
	call	get_mem3Dint
	mv	s0, a0
	lui	a0, %hi(wbp_weight)
	addi	a0, a0, %lo(wbp_weight)
	li	a1, 6
	li	a2, 32
	li	a3, 32
	li	a4, 3
	call	get_mem4Dint
	ld	a1, %lo(input)(s1)
	add	a0, s0, a0
	add	s0, s2, a0
.LBB6_16:
	lw	a0, 1244(a1)
	bnez	a0, .LBB6_18
# %bb.17:
	lw	a0, 1940(a1)
	blez	a0, .LBB6_19
.LBB6_18:
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lw	a2, 60(a0)
	lw	a3, 52(a0)
	srai	a2, a2, 2
	srai	a3, a3, 2
	lui	a0, %hi(direct_ref_idx)
	addi	a0, a0, %lo(direct_ref_idx)
	li	a1, 2
	call	get_mem3D
	ld	a1, %lo(img)(s1)
	lw	a2, 60(a1)
	lw	a3, 52(a1)
	add	s0, a0, s0
	srai	a1, a2, 2
	srai	a2, a3, 2
	lui	a0, %hi(direct_pdir)
	addi	a0, a0, %lo(direct_pdir)
	call	get_mem2Dshort
	add	s0, s0, a0
.LBB6_19:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 60(a0)
	lw	a0, 52(a0)
	addiw	a1, a1, 8
	slli	a0, a0, 2
	addiw	a2, a0, 32
	lui	a0, %hi(img4Y_tmp)
	addi	a0, a0, %lo(img4Y_tmp)
	call	get_mem2Dint
	lui	s1, %hi(input)
	ld	a1, %lo(input)(s1)
	addi	a2, a1, 2047
	lw	a2, 1089(a2)
	li	a3, 3
	addw	s0, a0, s0
	bne	a2, a3, .LBB6_26
# %bb.20:
	lui	s3, %hi(decs)
	ld	a0, %lo(decs)(s3)
	li	a1, 16
	li	a2, 16
	call	get_mem2Dint
	ld	a1, %lo(input)(s1)
	addi	a1, a1, 2047
	lw	s2, 1529(a1)
	mv	s1, a0
	li	a1, 8
	mv	a0, s2
	call	calloc
	ld	a1, %lo(decs)(s3)
	sd	a0, 16(a1)
	bnez	a0, .LBB6_22
# %bb.21:
	lui	a0, %hi(.L.str.218)
	addi	a0, a0, %lo(.L.str.218)
	call	no_mem_exit
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	s2, 1529(a0)
.LBB6_22:
	add	s0, s1, s0
	blez	s2, .LBB6_25
# %bb.23:                               # %.preheader
	li	s1, 0
	li	s2, 0
	lui	s3, %hi(decs)
	lui	s4, %hi(img)
	lui	s5, %hi(input)
.LBB6_24:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(decs)(s3)
	ld	a1, %lo(img)(s4)
	ld	a0, 16(a0)
	lw	a4, 36(a1)
	lw	a2, 60(a1)
	lw	a3, 52(a1)
	add	a0, a0, s1
	addiw	a1, a4, 1
	call	get_mem3Dpel
	ld	a1, %lo(input)(s5)
	addi	a1, a1, 2047
	lw	a1, 1529(a1)
	add	s0, a0, s0
	addi	s2, s2, 1
	addi	s1, s1, 8
	blt	s2, a1, .LBB6_24
.LBB6_25:
	lui	s2, %hi(decs)
	ld	a0, %lo(decs)(s2)
	addi	a0, a0, 32
	li	a1, 4
	li	a2, 4
	call	get_mem2Dpel
	lui	s1, %hi(input)
	ld	a1, %lo(input)(s1)
	lui	s3, %hi(img)
	ld	a3, %lo(img)(s3)
	ld	a4, %lo(decs)(s2)
	addi	a1, a1, 2047
	lw	a1, 1529(a1)
	lw	a2, 60(a3)
	lw	a3, 52(a3)
	add	s4, a0, s0
	addi	a0, a4, 8
	call	get_mem3Dpel
	ld	a1, %lo(input)(s1)
	ld	a3, %lo(img)(s3)
	ld	a4, %lo(decs)(s2)
	addi	a1, a1, 2047
	lw	a1, 1529(a1)
	lw	a2, 60(a3)
	lw	a3, 52(a3)
	mv	s0, a0
	addi	a0, a4, 24
	call	get_mem3Dpel
	ld	a1, %lo(img)(s3)
	ld	a2, %lo(decs)(s2)
	lw	a3, 60(a1)
	add	a0, s0, a0
	add	s4, s4, a0
	addi	a0, a2, 40
	slli	a2, a3, 1
	lw	a4, 52(a1)
	srli	a2, a2, 60
	add	a2, a3, a2
	sraiw	a1, a2, 4
	slli	a2, a4, 1
	srli	a2, a2, 60
	add	a2, a4, a2
	sraiw	a2, a2, 4
	call	get_mem2D
	ld	a1, %lo(img)(s3)
	ld	a2, %lo(decs)(s2)
	lw	a3, 52(a1)
	add	s0, s4, a0
	addi	a0, a2, 48
	slli	a2, a3, 1
	lw	a4, 60(a1)
	srli	a2, a2, 60
	add	a2, a3, a2
	sraiw	a1, a2, 4
	slli	a2, a4, 1
	srli	a2, a2, 60
	add	a2, a4, a2
	sraiw	a2, a2, 4
	call	get_mem2D
	ld	a1, %lo(input)(s1)
	addw	s0, s0, a0
.LBB6_26:
	addi	a0, a1, 2047
	lw	a0, 1533(a0)
	beqz	a0, .LBB6_28
# %bb.27:
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lw	a1, 60(a0)
	lw	a2, 52(a0)
	lui	a0, %hi(pixel_map)
	addi	a0, a0, %lo(pixel_map)
	call	get_mem2D
	ld	a1, %lo(img)(s1)
	lw	a2, 60(a1)
	mv	s1, a0
	slli	a0, a2, 1
	lw	a3, 52(a1)
	srli	a0, a0, 61
	add	a0, a2, a0
	sraiw	a1, a0, 3
	slli	a0, a3, 1
	srli	a0, a0, 61
	add	a0, a3, a0
	sraiw	a2, a0, 3
	lui	a0, %hi(refresh_map)
	addi	a0, a0, %lo(refresh_map)
	call	get_mem2D
	add	a0, s1, a0
	addw	s0, a0, s0
.LBB6_28:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	bnez	a0, .LBB6_31
# %bb.29:
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lw	a1, 60(a0)
	lw	a2, 52(a0)
	lui	a0, %hi(imgY_com)
	addi	a0, a0, %lo(imgY_com)
	call	get_mem2Dpel
	ld	a1, %lo(img)(s1)
	lui	a2, 22
	add	a2, a1, a2
	lw	a2, 436(a2)
	addw	s0, a0, s0
	beqz	a2, .LBB6_31
# %bb.30:
	lw	a2, 64(a1)
	lw	a3, 56(a1)
	lui	a0, %hi(imgUV_com)
	addi	a0, a0, %lo(imgUV_com)
	li	a1, 2
	call	get_mem3Dpel
	addw	s0, a0, s0
.LBB6_31:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1917(a0)
	li	a1, 3
	beq	a0, a1, .LBB6_36
# %bb.32:
	li	a1, 2
	beq	a0, a1, .LBB6_35
# %bb.33:
	li	a1, 1
	bne	a0, a1, .LBB6_38
# %bb.34:
	call	get_mem_FME
	j	.LBB6_37
.LBB6_35:
	call	simplified_init_FME
	call	simplified_get_mem_FME
	j	.LBB6_37
.LBB6_36:
	call	EPZSInit
.LBB6_37:
	addw	s0, a0, s0
.LBB6_38:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB6_40
# %bb.39:
	call	rc_alloc
.LBB6_40:
	mv	a0, s0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end6:
	.size	init_global_buffers, .Lfunc_end6-init_global_buffers
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function information_init
.LCPI7_0:
	.quad	14700694778159190               # 0x343a343a342056
.LCPI7_1:
	.quad	6149946981875857972             # 0x555900323a323a34
.LCPI7_2:
	.quad	2330143697954421298             # 0x2056555900303a32
.LCPI7_3:
	.quad	4194012708159946800             # 0x3a34205655590030
.LCPI7_4:
	.quad	4192915248637171033             # 0x3a303a3420565559
	.text
	.globl	information_init
	.p2align	2
	.type	information_init,@function
information_init:                       # @information_init
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(.LCPI7_0)
	ld	a0, %lo(.LCPI7_0)(a0)
	lui	a1, %hi(.LCPI7_1)
	ld	a1, %lo(.LCPI7_1)(a1)
	sd	a0, 32(sp)
	sd	a1, 24(sp)
	lui	a0, %hi(.LCPI7_2)
	ld	a0, %lo(.LCPI7_2)(a0)
	lui	a1, %hi(.LCPI7_3)
	lui	s0, %hi(input)
	ld	a2, %lo(input)(s0)
	ld	a1, %lo(.LCPI7_3)(a1)
	lui	a3, %hi(.LCPI7_4)
	ld	a3, %lo(.LCPI7_4)(a3)
	addi	a2, a2, 2047
	lw	a2, 1857(a2)
	sd	a0, 16(sp)
	sd	a1, 8(sp)
	li	a0, 2
	sd	a3, 0(sp)
	bltu	a2, a0, .LBB7_2
# %bb.1:
	lui	a0, %hi(.L.str.201)
	addi	a0, a0, %lo(.L.str.201)
	j	.LBB7_3
.LBB7_2:
	lui	a0, %hi(.L.str.200)
	addi	a0, a0, %lo(.L.str.200)
.LBB7_3:
	lui	a1, %hi(.L.str.13)
	addi	a1, a1, %lo(.L.str.13)
	lui	a2, %hi(.L.str.14)
	addi	a2, a2, %lo(.L.str.14)
	call	printf
	ld	a0, %lo(input)(s0)
	addi	a1, a0, 228
	lui	a0, %hi(.L.str.202)
	addi	a0, a0, %lo(.L.str.202)
	call	printf
	ld	a0, %lo(input)(s0)
	addi	a1, a0, 428
	lui	a0, %hi(.L.str.203)
	addi	a0, a0, %lo(.L.str.203)
	call	printf
	lui	a0, %hi(p_dec)
	lw	a0, %lo(p_dec)(a0)
	li	a1, -1
	beq	a0, a1, .LBB7_5
# %bb.4:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 628
	lui	a0, %hi(.L.str.204)
	addi	a0, a0, %lo(.L.str.204)
	call	printf
.LBB7_5:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 436(a0)
	li	a1, 10
	mul	a1, a0, a1
	mv	a0, sp
	add	a1, a0, a1
	lui	a0, %hi(.L.str.205)
	addi	a0, a0, %lo(.L.str.205)
	call	printf
	lui	s0, %hi(input)
	ld	a0, %lo(input)(s0)
	lw	a1, 8(a0)
	lw	a0, 1244(a0)
	addi	a2, a1, -1
	mulw	a2, a0, a2
	lui	a0, %hi(.L.str.206)
	addi	a0, a0, %lo(.L.str.206)
	call	printf
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a1, 1505(a0)
	lw	a2, 1509(a0)
	lui	a0, %hi(.L.str.207)
	addi	a0, a0, %lo(.L.str.207)
	call	printf
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a1, 1845(a0)
	lui	a0, %hi(.L.str.208)
	addi	a0, a0, %lo(.L.str.208)
	call	printf
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a1, 1857(a0)
	li	a2, 1
	lui	a0, %hi(.Lstr.227)
	addi	a0, a0, %lo(.Lstr.227)
	beq	a1, a2, .LBB7_8
# %bb.6:
	li	a2, 2
	bne	a1, a2, .LBB7_10
# %bb.7:
	lui	s1, %hi(.Lstr.222)
	addi	s1, s1, %lo(.Lstr.222)
	lui	a0, %hi(.Lstr.223)
	addi	a0, a0, %lo(.Lstr.223)
	j	.LBB7_9
.LBB7_8:
	lui	s1, %hi(.Lstr.225)
	addi	s1, s1, %lo(.Lstr.225)
.LBB7_9:
	mv	s0, a0
	call	puts
	mv	a0, s1
	j	.LBB7_11
.LBB7_10:
	lui	s0, %hi(.Lstr.228)
	addi	s0, s0, %lo(.Lstr.228)
.LBB7_11:
	call	puts
	mv	a0, s0
	call	puts
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end7:
	.size	information_init, .Lfunc_end7-information_init
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	SetImgType                      # -- Begin function SetImgType
	.p2align	2
	.type	SetImgType,@function
SetImgType:                             # @SetImgType
# %bb.0:
	lui	a0, %hi(input)
	ld	a1, %lo(input)(a0)
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a4, 1228(a1)
	lw	a2, 0(a0)
	lui	a3, %hi(start_frame_no_in_this_IGOP)
	lw	a3, %lo(start_frame_no_in_this_IGOP)(a3)
	beqz	a4, .LBB8_3
# %bb.1:
	subw	a5, a2, a3
	remw	a4, a5, a4
	bnez	a4, .LBB8_4
# %bb.2:
	li	a4, 2
	sw	a4, 24(a0)
	ret
.LBB8_3:
	li	a4, 2
	beq	a2, a3, .LBB8_7
.LBB8_4:
	lw	a4, 1280(a1)
	beqz	a4, .LBB8_6
# %bb.5:
	subw	a2, a2, a3
	remw	a2, a2, a4
	beqz	a2, .LBB8_8
.LBB8_6:
	lw	a1, 1940(a1)
	addi	a1, a1, -2
	seqz	a4, a1
.LBB8_7:
	sw	a4, 24(a0)
	ret
.LBB8_8:
	li	a4, 3
	sw	a4, 24(a0)
	ret
.Lfunc_end8:
	.size	SetImgType, .Lfunc_end8-SetImgType
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	report_frame_statistic          # -- Begin function report_frame_statistic
	.p2align	2
	.type	report_frame_statistic,@function
report_frame_statistic:                 # @report_frame_statistic
# %bb.0:
	addi	sp, sp, -1120
	sd	ra, 1112(sp)                    # 8-byte Folded Spill
	sd	s0, 1104(sp)                    # 8-byte Folded Spill
	sd	s1, 1096(sp)                    # 8-byte Folded Spill
	sd	s2, 1088(sp)                    # 8-byte Folded Spill
	sd	s3, 1080(sp)                    # 8-byte Folded Spill
	sd	s4, 1072(sp)                    # 8-byte Folded Spill
	sd	s5, 1064(sp)                    # 8-byte Folded Spill
	sd	s6, 1056(sp)                    # 8-byte Folded Spill
	sd	s7, 1048(sp)                    # 8-byte Folded Spill
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	call	fopen64
	beqz	a0, .LBB9_2
# %bb.1:
	call	fclose
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	call	fopen64
	mv	s0, a0
	bnez	a0, .LBB9_5
	j	.LBB9_4
.LBB9_2:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	call	fopen64
	beqz	a0, .LBB9_4
# %bb.3:
	mv	s0, a0
	lui	s1, %hi(.L.str.9)
	addi	s1, s1, %lo(.L.str.9)
	li	a1, 468
	li	a2, 1
	mv	a0, s1
	mv	a3, s0
	call	fwrite
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	li	a1, 468
	li	a2, 1
	mv	a3, s0
	call	fwrite
	li	a1, 468
	li	a2, 1
	mv	a0, s1
	mv	a3, s0
	call	fwrite
	j	.LBB9_5
.LBB9_4:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.7)
	addi	a2, a2, %lo(.L.str.7)
	lui	a3, %hi(.L.str.8)
	addi	a3, a3, %lo(.L.str.8)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	li	a1, 500
	mv	a0, s0
	call	error
	li	s0, 0
.LBB9_5:
	lui	a0, %hi(frame_statistic_start)
	lw	a0, %lo(frame_statistic_start)(a0)
	beqz	a0, .LBB9_7
# %bb.6:
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	li	a1, 468
	li	a2, 1
	mv	a3, s0
	call	fwrite
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	li	a1, 468
	li	a2, 1
	mv	a3, s0
	call	fwrite
.LBB9_7:
	lui	a1, %hi(.L.str.12)
	addi	a1, a1, %lo(.L.str.12)
	lui	a2, %hi(.L.str.13)
	addi	a2, a2, %lo(.L.str.13)
	lui	a3, %hi(.L.str.14)
	addi	a3, a3, %lo(.L.str.14)
	mv	a0, s0
	call	fprintf
	li	a0, 0
	call	time
	sd	a0, 1016(sp)
	addi	a0, sp, 1016
	call	time
	addi	a0, sp, 1016
	call	localtime
	mv	s1, a0
	lui	a2, %hi(.L.str.15)
	addi	a2, a2, %lo(.L.str.15)
	addi	a0, sp, 16
	li	a1, 1000
	mv	a3, s1
	call	strftime
	lui	a1, %hi(.L.str.16)
	addi	a1, a1, %lo(.L.str.16)
	addi	a2, sp, 16
	mv	a0, s0
	call	fprintf
	lui	a2, %hi(.L.str.17)
	addi	a2, a2, %lo(.L.str.17)
	addi	a0, sp, 16
	li	a1, 1000
	mv	a3, s1
	call	strftime
	lui	a1, %hi(.L.str.18)
	addi	a1, a1, %lo(.L.str.18)
	addi	a2, sp, 16
	mv	a0, s0
	call	fprintf
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	s1, a0, 228
	addi	s2, sp, 1028
	addi	s3, sp, 1048
	mv	s4, s1
.LBB9_8:                                # =>This Inner Loop Header: Depth=1
	mv	a0, s1
	call	strlen
	addiw	a0, a0, -20
	sgtz	a1, a0
	neg	a1, a1
	and	a0, a1, a0
	add	a0, s4, a0
	lbu	a0, 0(a0)
	sb	a0, 0(s2)
	addi	s2, s2, 1
	addi	s4, s4, 1
	bne	s2, s3, .LBB9_8
# %bb.9:
	lui	a1, %hi(.L.str.19)
	addi	a1, a1, %lo(.L.str.19)
	addi	a2, sp, 1028
	mv	a0, s0
	call	fprintf
	lui	a0, %hi(frame_no)
	lw	a2, %lo(frame_no)(a0)
	lui	s1, %hi(.L.str.20)
	addi	s1, s1, %lo(.L.str.20)
	mv	a0, s0
	mv	a1, s1
	call	fprintf
	lui	s2, %hi(img)
	ld	a0, %lo(img)(s2)
	lw	a2, 40(a0)
	mv	a0, s0
	mv	a1, s1
	call	fprintf
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a2, 1505(a0)
	lw	a3, 1509(a0)
	lui	a1, %hi(.L.str.21)
	addi	a1, a1, %lo(.L.str.21)
	mv	a0, s0
	call	fprintf
	ld	a0, %lo(img)(s2)
	lui	a1, 22
	add	a0, a0, a1
	lw	a1, 172(a0)
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
	beqz	a1, .LBB9_11
# %bb.10:
	lw	a0, 20(a0)
	lui	a1, %hi(report_frame_statistic.last_bit_ctr_n)
	lw	a2, %lo(report_frame_statistic.last_bit_ctr_n)(a1)
	subw	a2, a0, a2
	sw	a0, %lo(report_frame_statistic.last_bit_ctr_n)(a1)
	j	.LBB9_12
.LBB9_11:
	lw	a2, 712(a0)
.LBB9_12:
	lui	a1, %hi(.L.str.22)
	addi	a1, a1, %lo(.L.str.22)
	mv	a0, s0
	call	fprintf
	lui	a0, %hi(snr)
	ld	a0, %lo(snr)(a0)
	flw	fa5, 0(a0)
	flw	fa4, 4(a0)
	flw	fa3, 8(a0)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fcvt.d.s	fa3, fa3
	fmv.x.d	a2, fa5
	fmv.x.d	a3, fa4
	fmv.x.d	a4, fa3
	lui	a1, %hi(.L.str.23)
	addi	a1, a1, %lo(.L.str.23)
	mv	a0, s0
	call	fprintf
	lui	s6, %hi(stats)
	ld	a0, %lo(stats)(s6)
	lw	a0, 892(a0)
	lui	s3, %hi(report_frame_statistic.last_mode_use)
	addi	s1, s3, %lo(report_frame_statistic.last_mode_use)
	lw	a1, 156(s1)
	subw	a2, a0, a1
	lui	s2, %hi(.L.str.24)
	addi	s2, s2, %lo(.L.str.24)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 908(a0)
	lw	a1, 172(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 896(a0)
	lw	a1, 160(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 672(a0)
	lui	s4, %hi(report_frame_statistic.last_mode_chroma_use)
	lw	a1, %lo(report_frame_statistic.last_mode_chroma_use)(s4)
	addi	s5, s4, %lo(report_frame_statistic.last_mode_chroma_use)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 676(a0)
	lw	a1, 4(s5)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 680(a0)
	lw	a1, 8(s5)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 684(a0)
	lw	a1, 12(s5)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 772(a0)
	lw	a1, 36(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 788(a0)
	lw	a1, 52(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 776(a0)
	lw	a1, 40(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 736(a0)
	lw	a1, %lo(report_frame_statistic.last_mode_use)(s3)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 740(a0)
	lw	a1, 4(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 744(a0)
	lw	a1, 8(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 748(a0)
	lw	a1, 12(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 76(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 376(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 80(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 380(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 84(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 384(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 768(a0)
	lw	a1, 32(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 752(a0)
	lw	a1, 16(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 88(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 388(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 756(a0)
	lw	a1, 20(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 760(a0)
	lw	a1, 24(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 764(a0)
	lw	a1, 28(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 832(a0)
	lw	a1, 96(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 848(a0)
	lw	a1, 112(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 836(a0)
	lw	a1, 100(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 796(a0)
	lw	a1, 60(s1)
	addi	s3, s1, 60
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 800(a0)
	lw	a1, 64(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 804(a0)
	lw	a1, 68(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 808(a0)
	lw	a1, 72(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 132(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 432(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 136(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 436(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 140(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 440(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 144(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 444(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 828(a0)
	lw	a1, 92(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a1, 40(a0)
	lw	a0, 44(a0)
	lui	s7, %hi(report_frame_statistic.last_b8_mode_0)
	addi	s7, s7, %lo(report_frame_statistic.last_b8_mode_0)
	lw	a2, 8(s7)
	lw	a3, 12(s7)
	add	a0, a0, a1
	add	a2, a2, a3
	subw	a2, a0, a2
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 44(a0)
	lw	a1, 12(s7)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 40(a0)
	lw	a1, 8(s7)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 812(a0)
	lw	a1, 76(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 148(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a2, 448(a0)
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 816(a0)
	lw	a1, 80(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 820(a0)
	lw	a1, 84(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a0, 824(a0)
	lw	a1, 88(s1)
	subw	a2, a0, a1
	mv	a0, s0
	mv	a1, s2
	call	fprintf
	li	a0, 10
	mv	a1, s0
	call	fputc
	ld	s2, %lo(stats)(s6)
	addi	a1, s2, 856
	addi	a0, s1, 120
	li	a2, 60
	call	memcpy
	addi	a1, s2, 736
	li	a2, 60
	mv	a0, s1
	call	memcpy
	addi	a1, s2, 796
	li	a2, 60
	mv	a0, s3
	call	memcpy
	addi	a0, s2, 72
	li	a2, 120
	li	a1, 0
	call	memset
	addi	a0, s2, 372
	li	a2, 120
	li	a1, 0
	call	memset
	ld	a0, 40(s2)
	sw	a0, 8(s7)
	srli	a0, a0, 32
	sw	a0, 12(s7)
	lw	a0, 672(s2)
	lw	a1, 676(s2)
	lw	a2, 680(s2)
	lw	a3, 684(s2)
	sw	a0, %lo(report_frame_statistic.last_mode_chroma_use)(s4)
	sw	a1, 4(s5)
	sw	a2, 8(s5)
	sw	a3, 12(s5)
	lui	a0, %hi(frame_statistic_start)
	sw	zero, %lo(frame_statistic_start)(a0)
	mv	a0, s0
	call	fclose
	ld	ra, 1112(sp)                    # 8-byte Folded Reload
	ld	s0, 1104(sp)                    # 8-byte Folded Reload
	ld	s1, 1096(sp)                    # 8-byte Folded Reload
	ld	s2, 1088(sp)                    # 8-byte Folded Reload
	ld	s3, 1080(sp)                    # 8-byte Folded Reload
	ld	s4, 1072(sp)                    # 8-byte Folded Reload
	ld	s5, 1064(sp)                    # 8-byte Folded Reload
	ld	s6, 1056(sp)                    # 8-byte Folded Reload
	ld	s7, 1048(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 1120
	ret
.Lfunc_end9:
	.size	report_frame_statistic, .Lfunc_end9-report_frame_statistic
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	process_2nd_IGOP                # -- Begin function process_2nd_IGOP
	.p2align	2
	.type	process_2nd_IGOP,@function
process_2nd_IGOP:                       # @process_2nd_IGOP
# %bb.0:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a1, a0, 2047
	lw	a1, 1541(a1)
	beqz	a1, .LBB10_4
# %bb.1:
	lui	a2, %hi(img)
	ld	a3, %lo(img)(a2)
	lw	a2, 8(a0)
	lw	a4, 0(a3)
	addiw	a3, a2, -1
	bne	a4, a3, .LBB10_4
# %bb.2:
	lui	a4, %hi(In2ndIGOP)
	lw	a4, %lo(In2ndIGOP)(a4)
	bnez	a4, .LBB10_4
# %bb.3:
	lui	a4, %hi(In2ndIGOP)
	li	a5, 1
	lw	a6, 20(a0)
	sw	a5, %lo(In2ndIGOP)(a4)
	lui	a4, %hi(start_frame_no_in_this_IGOP)
	sw	a2, %lo(start_frame_no_in_this_IGOP)(a4)
	addi	a6, a6, 1
	mul	a3, a6, a3
	addi	a3, a3, 1
	lui	a4, %hi(start_tr_in_this_IGOP)
	sw	a3, %lo(start_tr_in_this_IGOP)(a4)
	add	a1, a1, a2
	sw	a1, 8(a0)
.LBB10_4:
	ret
.Lfunc_end10:
	.size	process_2nd_IGOP, .Lfunc_end10-process_2nd_IGOP
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function report
.LCPI11_0:
	.quad	0x3f50624dd2f1a9fc              # double 0.001
.LCPI11_1:
	.quad	0x408f400000000000              # double 1000
.LCPI11_2:
	.quad	0x3ff0000000000000              # double 1
.LCPI11_3:
	.quad	0x4024000000000000              # double 10
	.text
	.globl	report
	.p2align	2
	.type	report,@function
report:                                 # @report
# %bb.0:
	lui	a0, %hi(frame_ctr)
	addi	a1, a0, %lo(frame_ctr)
	lw	a0, %lo(frame_ctr)(a0)
	lw	a2, 12(a1)
	addw	a0, a2, a0
	bgtz	a0, .LBB11_2
# %bb.1:
	li	a0, 1
.LBB11_2:
	addi	sp, sp, -1840
	sd	ra, 1832(sp)                    # 8-byte Folded Spill
	sd	s0, 1824(sp)                    # 8-byte Folded Spill
	sd	s1, 1816(sp)                    # 8-byte Folded Spill
	sd	s2, 1808(sp)                    # 8-byte Folded Spill
	sd	s3, 1800(sp)                    # 8-byte Folded Spill
	sd	s4, 1792(sp)                    # 8-byte Folded Spill
	sd	s5, 1784(sp)                    # 8-byte Folded Spill
	sd	s6, 1776(sp)                    # 8-byte Folded Spill
	sd	s7, 1768(sp)                    # 8-byte Folded Spill
	sd	s8, 1760(sp)                    # 8-byte Folded Spill
	sd	s9, 1752(sp)                    # 8-byte Folded Spill
	sd	s10, 1744(sp)                   # 8-byte Folded Spill
	sd	s11, 1736(sp)                   # 8-byte Folded Spill
	fsd	fs0, 1728(sp)                   # 8-byte Folded Spill
	fsd	fs1, 1720(sp)                   # 8-byte Folded Spill
	fsd	fs2, 1712(sp)                   # 8-byte Folded Spill
	fsd	fs3, 1704(sp)                   # 8-byte Folded Spill
	fsd	fs4, 1696(sp)                   # 8-byte Folded Spill
	fsd	fs5, 1688(sp)                   # 8-byte Folded Spill
	sd	a0, 496(sp)                     # 8-byte Folded Spill
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
	lw	a2, 8(a1)
	sd	a2, 536(sp)                     # 8-byte Folded Spill
	lw	a4, 4(a1)
	lw	s6, 1036(a0)
	lw	s7, 1040(a0)
	lw	a1, 1044(a0)
	sd	a1, 312(sp)                     # 8-byte Folded Spill
	lw	a1, 1048(a0)
	sd	a1, 352(sp)                     # 8-byte Folded Spill
	lw	s4, 1052(a0)
	lw	a1, 1056(a0)
	sd	a1, 384(sp)                     # 8-byte Folded Spill
	lw	a1, 1060(a0)
	sd	a1, 400(sp)                     # 8-byte Folded Spill
	lw	a1, 1064(a0)
	sd	a1, 416(sp)                     # 8-byte Folded Spill
	lw	a1, 1068(a0)
	sd	a1, 432(sp)                     # 8-byte Folded Spill
	lw	a1, 1072(a0)
	sd	a1, 448(sp)                     # 8-byte Folded Spill
	lw	a1, 1076(a0)
	sd	a1, 456(sp)                     # 8-byte Folded Spill
	lw	a1, 1080(a0)
	sd	a1, 464(sp)                     # 8-byte Folded Spill
	lw	a1, 1084(a0)
	sd	a1, 472(sp)                     # 8-byte Folded Spill
	lw	a1, 1088(a0)
	sd	a1, 488(sp)                     # 8-byte Folded Spill
	lw	a1, 1092(a0)
	sd	a1, 520(sp)                     # 8-byte Folded Spill
	lw	a1, 1376(a0)
	sd	a1, 544(sp)                     # 8-byte Folded Spill
	lw	a1, 1356(a0)
	sd	a1, 560(sp)                     # 8-byte Folded Spill
	lw	a1, 1396(a0)
	sd	a1, 584(sp)                     # 8-byte Folded Spill
	lui	s5, %hi(img)
	ld	a1, %lo(img)(s5)
	lui	s0, %hi(input)
	ld	a2, %lo(input)(s0)
	lw	a3, 1416(a0)
	sd	a3, 592(sp)                     # 8-byte Folded Spill
	lw	a3, 688(a0)
	flw	fa5, 48(a1)
	lw	a1, 20(a2)
	lw	a5, 1436(a0)
	sd	a5, 608(sp)                     # 8-byte Folded Spill
	addi	a3, a3, 1
	fcvt.s.w	fa4, a3
	addi	a1, a1, 1
	fcvt.s.w	fa3, a1
	lw	a1, 712(a0)
	lw	a3, 1456(a0)
	sd	a3, 632(sp)                     # 8-byte Folded Spill
	fmul.s	fa5, fa5, fa4
	lw	a2, 8(a2)
	fcvt.s.w	fa2, a1
	lw	a1, 1336(a0)
	sd	a1, 640(sp)                     # 8-byte Folded Spill
	fdiv.s	fa5, fa5, fa3
	sd	a4, 624(sp)                     # 8-byte Folded Spill
	add	a2, a2, a4
	fcvt.s.w	fa4, a2
	lw	a1, 716(a0)
	fmul.s	fa3, fa5, fa2
	fdiv.s	fa3, fa3, fa4
	fsw	fa3, 724(a0)
	fcvt.s.w	fa3, a1
	lw	a1, 720(a0)
	fmul.s	fa3, fa5, fa3
	fdiv.s	fa3, fa3, fa4
	fsw	fa3, 728(a0)
	fcvt.s.w	fa3, a1
	lw	a1, 1096(a0)
	sd	a1, 304(sp)                     # 8-byte Folded Spill
	lw	a1, 1100(a0)
	sd	a1, 296(sp)                     # 8-byte Folded Spill
	lw	a1, 1104(a0)
	sd	a1, 288(sp)                     # 8-byte Folded Spill
	lw	a1, 1108(a0)
	sd	a1, 248(sp)                     # 8-byte Folded Spill
	lw	a1, 1112(a0)
	sd	a1, 280(sp)                     # 8-byte Folded Spill
	lw	a1, 1116(a0)
	sd	a1, 240(sp)                     # 8-byte Folded Spill
	lw	a1, 1120(a0)
	sd	a1, 232(sp)                     # 8-byte Folded Spill
	lw	a1, 1124(a0)
	sd	a1, 272(sp)                     # 8-byte Folded Spill
	lw	a1, 1128(a0)
	sd	a1, 224(sp)                     # 8-byte Folded Spill
	lw	a1, 1132(a0)
	sd	a1, 216(sp)                     # 8-byte Folded Spill
	lw	a1, 1136(a0)
	sd	a1, 208(sp)                     # 8-byte Folded Spill
	lw	a1, 1140(a0)
	sd	a1, 264(sp)                     # 8-byte Folded Spill
	lw	a1, 1144(a0)
	sd	a1, 200(sp)                     # 8-byte Folded Spill
	lw	a1, 1148(a0)
	sd	a1, 192(sp)                     # 8-byte Folded Spill
	lw	a1, 1152(a0)
	sd	a1, 184(sp)                     # 8-byte Folded Spill
	lw	a1, 1380(a0)
	sd	a1, 176(sp)                     # 8-byte Folded Spill
	lw	a1, 1360(a0)
	sd	a1, 256(sp)                     # 8-byte Folded Spill
	lw	a1, 1400(a0)
	sd	a1, 168(sp)                     # 8-byte Folded Spill
	lw	a1, 1420(a0)
	sd	a1, 160(sp)                     # 8-byte Folded Spill
	lw	a1, 1440(a0)
	sd	a1, 152(sp)                     # 8-byte Folded Spill
	lw	a1, 1460(a0)
	sd	a1, 144(sp)                     # 8-byte Folded Spill
	lw	a1, 1340(a0)
	sd	a1, 136(sp)                     # 8-byte Folded Spill
	lw	s9, 1156(a0)
	lw	s1, 1160(a0)
	lw	a1, 1164(a0)
	sd	a1, 320(sp)                     # 8-byte Folded Spill
	lw	a1, 1168(a0)
	sd	a1, 328(sp)                     # 8-byte Folded Spill
	lw	a1, 1172(a0)
	sd	a1, 336(sp)                     # 8-byte Folded Spill
	lw	a1, 1176(a0)
	sd	a1, 344(sp)                     # 8-byte Folded Spill
	lw	a1, 1180(a0)
	sd	a1, 360(sp)                     # 8-byte Folded Spill
	lw	a1, 1184(a0)
	sd	a1, 368(sp)                     # 8-byte Folded Spill
	lw	a1, 1188(a0)
	sd	a1, 376(sp)                     # 8-byte Folded Spill
	lw	a1, 1192(a0)
	sd	a1, 392(sp)                     # 8-byte Folded Spill
	lw	a1, 1196(a0)
	sd	a1, 408(sp)                     # 8-byte Folded Spill
	lw	a1, 1200(a0)
	sd	a1, 424(sp)                     # 8-byte Folded Spill
	lw	a1, 1204(a0)
	sd	a1, 440(sp)                     # 8-byte Folded Spill
	lw	a1, 1208(a0)
	sd	a1, 480(sp)                     # 8-byte Folded Spill
	lw	a1, 1212(a0)
	sd	a1, 504(sp)                     # 8-byte Folded Spill
	lw	a1, 1384(a0)
	sd	a1, 512(sp)                     # 8-byte Folded Spill
	lw	a1, 1364(a0)
	sd	a1, 528(sp)                     # 8-byte Folded Spill
	lw	a1, 1404(a0)
	sd	a1, 552(sp)                     # 8-byte Folded Spill
	lw	a1, 1424(a0)
	sd	a1, 568(sp)                     # 8-byte Folded Spill
	lw	a1, 1444(a0)
	sd	a1, 576(sp)                     # 8-byte Folded Spill
	lw	a1, 1464(a0)
	sd	a1, 600(sp)                     # 8-byte Folded Spill
	lw	a1, 1344(a0)
	sd	a1, 616(sp)                     # 8-byte Folded Spill
	lui	s10, %hi(stdout)
	ld	a3, %lo(stdout)(s10)
	fmul.s	fa5, fa5, fa3
	fdiv.s	fa5, fa5, fa4
	fsw	fa5, 732(a0)
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	li	a1, 80
	li	a2, 1
	call	fwrite
	ld	a0, %lo(input)(s0)
	addi	a1, a0, 2047
	lw	a1, 1857(a1)
	lui	s2, %hi(frame_ctr+4)
	beqz	a1, .LBB11_60
# %bb.3:
	ld	a1, %lo(img)(s5)
	lw	a2, 20(a0)
	flw	fa5, 48(a1)
	ld	a0, %lo(stdout)(s10)
	addi	a2, a2, 1
	fcvt.s.w	fa4, a2
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.27)
	addi	a1, a1, %lo(.L.str.27)
	call	fprintf
	ld	a0, %lo(input)(s0)
	lw	a0, 24(a0)
	ld	a3, %lo(stdout)(s10)
	mv	s8, s4
	mv	s4, s1
	li	a1, 1
	beq	a0, a1, .LBB11_6
# %bb.4:
	li	a1, 2
	bne	a0, a1, .LBB11_7
# %bb.5:
	lui	a0, %hi(.L.str.28)
	addi	a0, a0, %lo(.L.str.28)
	li	a1, 51
	j	.LBB11_8
.LBB11_6:
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	li	a1, 42
	j	.LBB11_8
.LBB11_7:
	lui	a0, %hi(.L.str.30)
	addi	a0, a0, %lo(.L.str.30)
	li	a1, 46
.LBB11_8:
	li	a2, 1
	call	fwrite
	lui	s1, %hi(input)
	ld	a1, %lo(input)(s1)
	lui	s3, %hi(stdout)
	ld	a0, %lo(stdout)(s3)
	lw	a2, 68(a1)
	lw	a3, 72(a1)
	lui	a1, %hi(.L.str.31)
	addi	a1, a1, %lo(.L.str.31)
	call	fprintf
	ld	a0, %lo(input)(s1)
	lw	a0, 80(a0)
	ld	a3, %lo(stdout)(s3)
	beqz	a0, .LBB11_10
# %bb.9:
	lui	a0, %hi(.L.str.32)
	addi	a0, a0, %lo(.L.str.32)
	li	a1, 40
	j	.LBB11_11
.LBB11_10:
	lui	a0, %hi(.L.str.33)
	addi	a0, a0, %lo(.L.str.33)
	li	a1, 41
.LBB11_11:
	li	a2, 1
	call	fwrite
	lui	s1, %hi(input)
	ld	a1, %lo(input)(s1)
	lui	s3, %hi(stdout)
	ld	a0, %lo(stdout)(s3)
	lw	a2, 32(a1)
	lui	a1, %hi(.L.str.34)
	addi	a1, a1, %lo(.L.str.34)
	call	fprintf
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(stdout)(s3)
	lw	a2, 36(a1)
	lui	a1, %hi(.L.str.35)
	addi	a1, a1, %lo(.L.str.35)
	call	fprintf
	ld	a1, %lo(input)(s1)
	lw	a2, 40(a1)
	ld	a0, %lo(stdout)(s3)
	bnez	a2, .LBB11_13
# %bb.12:
	lw	a2, 36(a1)
.LBB11_13:
	lui	a1, %hi(.L.str.36)
	addi	a1, a1, %lo(.L.str.36)
	call	fprintf
	lui	s5, %hi(stats)
	ld	a0, %lo(stats)(s5)
	lw	a0, 688(a0)
	beqz	a0, .LBB11_19
# %bb.14:
	lui	s3, %hi(input)
	ld	a1, %lo(input)(s3)
	lui	s1, %hi(stdout)
	lw	a2, 44(a1)
	ld	a0, %lo(stdout)(s1)
	bnez	a2, .LBB11_16
# %bb.15:
	lw	a2, 36(a1)
.LBB11_16:
	lui	a1, %hi(.L.str.37)
	addi	a1, a1, %lo(.L.str.37)
	call	fprintf
	ld	a1, %lo(input)(s3)
	lw	a2, 48(a1)
	ld	a0, %lo(stdout)(s1)
	bnez	a2, .LBB11_18
# %bb.17:
	lw	a2, 36(a1)
.LBB11_18:
	lui	a1, %hi(.L.str.38)
	addi	a1, a1, %lo(.L.str.38)
	call	fprintf
.LBB11_19:
	lui	a0, %hi(tot_time)
	lw	a0, %lo(tot_time)(a0)
	lui	s1, %hi(stdout)
	lui	s3, %hi(input)
	ld	a1, %lo(input)(s3)
	fcvt.d.w	fa5, a0
	lui	a0, %hi(.LCPI11_0)
	fld	fs0, %lo(.LCPI11_0)(a0)
	lw	a1, 8(a1)
	lw	a2, %lo(frame_ctr+4)(s2)
	lui	a0, %hi(.LCPI11_1)
	fld	fa4, %lo(.LCPI11_1)(a0)
	ld	a0, %lo(stdout)(s1)
	fmul.d	fa3, fa5, fs0
	add	a1, a2, a1
	fcvt.d.w	fa2, a1
	fmul.d	fa4, fa2, fa4
	fdiv.d	fa5, fa4, fa5
	fmv.x.d	a2, fa3
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.39)
	addi	a1, a1, %lo(.L.str.39)
	call	fprintf
	lui	a0, %hi(me_tot_time)
	lw	a1, %lo(me_tot_time)(a0)
	ld	a0, %lo(stdout)(s1)
	fcvt.d.w	fa5, a1
	fmul.d	fa5, fa5, fs0
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.40)
	addi	a1, a1, %lo(.L.str.40)
	call	fprintf
	ld	a3, %lo(stdout)(s1)
	lui	a0, %hi(.L.str.41)
	addi	a0, a0, %lo(.L.str.41)
	li	a1, 36
	li	a2, 1
	call	fwrite
	ld	s11, %lo(stats)(s5)
	lw	a0, 688(s11)
	blez	a0, .LBB11_22
# %bb.20:
	ld	s5, %lo(input)(s3)
	lw	a0, 1944(s5)
	mv	s1, s4
	bnez	a0, .LBB11_21
	j	.LBB11_170
.LBB11_21:
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	lw	a2, 12(s5)
	lw	a3, 16(s5)
	lw	a4, 1248(s5)
	lui	a1, %hi(.L.str.42)
	addi	a1, a1, %lo(.L.str.42)
	call	fprintf
	j	.LBB11_25
.LBB11_22:
	ld	a1, %lo(input)(s3)
	mv	s1, s4
	bnez	a0, .LBB11_24
# %bb.23:
	lw	a0, 1280(a1)
	bnez	a0, .LBB11_24
	j	.LBB11_184
.LBB11_24:
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	lw	a2, 12(a1)
	lw	a3, 16(a1)
	lw	a4, 1284(a1)
	lw	a5, 1288(a1)
	lui	a1, %hi(.L.str.50)
	addi	a1, a1, %lo(.L.str.50)
	call	fprintf
.LBB11_25:
	mv	s4, s8
.LBB11_26:
	lui	s3, %hi(input)
	ld	a0, %lo(input)(s3)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	lui	s5, %hi(stdout)
	ld	a3, %lo(stdout)(s5)
	beqz	a0, .LBB11_28
# %bb.27:
	lui	a0, %hi(.L.str.52)
	addi	a0, a0, %lo(.L.str.52)
	j	.LBB11_29
.LBB11_28:
	lui	a0, %hi(.L.str.51)
	addi	a0, a0, %lo(.L.str.51)
.LBB11_29:
	li	a1, 43
	li	a2, 1
	call	fwrite
	ld	a1, %lo(input)(s3)
	ld	a0, %lo(stdout)(s5)
	lw	a2, 0(a1)
	lw	a3, 4(a1)
	lui	a1, %hi(.L.str.53)
	addi	a1, a1, %lo(.L.str.53)
	call	fprintf
	ld	a0, %lo(input)(s3)
	addi	a0, a0, 2047
	lw	a0, 1917(a0)
	ld	a3, %lo(stdout)(s5)
	li	a1, 3
	beq	a0, a1, .LBB11_34
# %bb.30:
	li	a1, 2
	beq	a0, a1, .LBB11_33
# %bb.31:
	li	a1, 1
	bne	a0, a1, .LBB11_35
# %bb.32:
	lui	a0, %hi(.L.str.54)
	addi	a0, a0, %lo(.L.str.54)
	li	a1, 41
	j	.LBB11_36
.LBB11_33:
	lui	a0, %hi(.L.str.55)
	addi	a0, a0, %lo(.L.str.55)
	li	a1, 42
	j	.LBB11_36
.LBB11_34:
	lui	a0, %hi(.L.str.56)
	addi	a0, a0, %lo(.L.str.56)
	li	a1, 42
	li	a2, 1
	call	fwrite
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	li	a1, 0
	call	EPZSOutputStats
	j	.LBB11_37
.LBB11_35:
	lui	a0, %hi(.L.str.57)
	addi	a0, a0, %lo(.L.str.57)
	li	a1, 49
.LBB11_36:
	li	a2, 1
	call	fwrite
.LBB11_37:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1061(a0)
	lui	a1, %hi(stdout)
	ld	a3, %lo(stdout)(a1)
	li	a1, 1
	beq	a0, a1, .LBB11_40
# %bb.38:
	li	a1, 2
	bne	a0, a1, .LBB11_41
# %bb.39:
	lui	a0, %hi(.L.str.58)
	addi	a0, a0, %lo(.L.str.58)
	li	a1, 42
	j	.LBB11_42
.LBB11_40:
	lui	a0, %hi(.L.str.59)
	addi	a0, a0, %lo(.L.str.59)
	li	a1, 60
	j	.LBB11_42
.LBB11_41:
	lui	a0, %hi(.L.str.60)
	addi	a0, a0, %lo(.L.str.60)
	li	a1, 79
.LBB11_42:
	li	a2, 1
	call	fwrite
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	lui	a1, %hi(stdout)
	ld	a3, %lo(stdout)(a1)
	beqz	a0, .LBB11_44
# %bb.43:
	lui	a0, %hi(.L.str.61)
	addi	a0, a0, %lo(.L.str.61)
	li	a1, 42
	j	.LBB11_45
.LBB11_44:
	lui	a0, %hi(.L.str.62)
	addi	a0, a0, %lo(.L.str.62)
	li	a1, 46
.LBB11_45:
	li	a2, 1
	call	fwrite
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 945(a0)
	lui	a1, %hi(stdout)
	ld	a3, %lo(stdout)(a1)
	li	a1, 1
	beq	a0, a1, .LBB11_48
# %bb.46:
	bnez	a0, .LBB11_49
# %bb.47:
	lui	a0, %hi(.L.str.63)
	addi	a0, a0, %lo(.L.str.63)
	li	a1, 50
	j	.LBB11_51
.LBB11_48:
	lui	a0, %hi(.L.str.64)
	addi	a0, a0, %lo(.L.str.64)
	j	.LBB11_50
.LBB11_49:
	lui	a0, %hi(.L.str.65)
	addi	a0, a0, %lo(.L.str.65)
.LBB11_50:
	li	a1, 51
.LBB11_51:
	li	a2, 1
	call	fwrite
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 941(a0)
	lui	a1, %hi(stdout)
	ld	a3, %lo(stdout)(a1)
	li	a1, 1
	beq	a0, a1, .LBB11_54
# %bb.52:
	bnez	a0, .LBB11_55
# %bb.53:
	lui	a0, %hi(.L.str.66)
	addi	a0, a0, %lo(.L.str.66)
	li	a1, 67
	j	.LBB11_56
.LBB11_54:
	lui	a0, %hi(.L.str.67)
	addi	a0, a0, %lo(.L.str.67)
	li	a1, 61
	j	.LBB11_56
.LBB11_55:
	lui	a0, %hi(.L.str.68)
	addi	a0, a0, %lo(.L.str.68)
	li	a1, 51
.LBB11_56:
	li	a2, 1
	call	fwrite
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1953(a0)
	lui	a1, %hi(stdout)
	ld	a3, %lo(stdout)(a1)
	beqz	a0, .LBB11_58
# %bb.57:
	lui	a0, %hi(.L.str.69)
	addi	a0, a0, %lo(.L.str.69)
	li	a1, 42
	j	.LBB11_59
.LBB11_58:
	lui	a0, %hi(.L.str.70)
	addi	a0, a0, %lo(.L.str.70)
	li	a1, 46
.LBB11_59:
	li	a2, 1
	call	fwrite
.LBB11_60:
	ld	a3, %lo(stdout)(s10)
	lui	a0, %hi(.L.str.71)
	addi	a0, a0, %lo(.L.str.71)
	li	a1, 80
	li	a2, 1
	call	fwrite
	ld	a0, %lo(input)(s0)
	addi	a1, a0, 2047
	lw	a2, 1857(a1)
	beqz	a2, .LBB11_68
# %bb.61:
	lw	a2, 72(a0)
	lw	a0, 68(a0)
	mul	s5, a0, a2
	lw	a0, 1929(a1)
	lui	a2, %hi(img)
	ld	a2, %lo(img)(a2)
	lw	a1, 1933(a1)
	lui	a3, 22
	addiw	a3, a3, 420
	add	a2, a2, a3
	lw	a3, 0(a2)
	lw	a2, 4(a2)
	lui	s0, %hi(snr)
	ld	a4, %lo(snr)(s0)
	mul	s10, a1, a0
	mul	a0, a3, a3
	mul	s3, a2, a2
	flw	fa4, 108(a4)
	lui	a1, %hi(.LCPI11_2)
	fld	fs2, %lo(.LCPI11_2)(a1)
	fcvt.d.wu	fa5, a0
	fmv.w.x	fs0, zero
	feq.s	a0, fa4, fs0
	fcvt.d.w	fa3, s5
	fmv.d	fa2, fs2
	bnez	a0, .LBB11_63
# %bb.62:
	fcvt.d.s	fa2, fa4
.LBB11_63:
	fdiv.d	fa4, fa3, fa2
	fmul.d	fa0, fa4, fa5
	call	log10
	ld	a0, %lo(snr)(s0)
	lui	a1, %hi(.LCPI11_3)
	fld	fs3, %lo(.LCPI11_3)(a1)
	flw	fa4, 112(a0)
	fmul.d	fa5, fa0, fs3
	fcvt.d.wu	fs4, s3
	feq.s	a0, fa4, fs0
	fcvt.d.w	fs5, s10
	fmv.d	fa3, fs2
	bnez	a0, .LBB11_65
# %bb.64:
	fcvt.d.s	fa3, fa4
.LBB11_65:
	fcvt.s.d	fs1, fa5
	fdiv.d	fa5, fs5, fa3
	fmul.d	fa0, fa5, fs4
	call	log10
	ld	a0, %lo(snr)(s0)
	flw	fa5, 116(a0)
	fmul.d	fa4, fa0, fs3
	feq.s	a0, fa5, fs0
	fcvt.s.d	fs0, fa4
	bnez	a0, .LBB11_67
# %bb.66:
	fcvt.d.s	fs2, fa5
.LBB11_67:
	fdiv.d	fa5, fs5, fs2
	fmul.d	fa0, fa5, fs4
	call	log10
	ld	a0, %lo(snr)(s0)
	lui	s11, %hi(stdout)
	flw	fa5, 84(a0)
	ld	a0, %lo(stdout)(s11)
	fmul.d	fa4, fa0, fs3
	fcvt.s.d	fs2, fa4
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.72)
	addi	a1, a1, %lo(.L.str.72)
	call	fprintf
	ld	a0, %lo(snr)(s0)
	flw	fa5, 88(a0)
	ld	a0, %lo(stdout)(s11)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.73)
	addi	a1, a1, %lo(.L.str.73)
	call	fprintf
	ld	a0, %lo(snr)(s0)
	flw	fa5, 92(a0)
	ld	a0, %lo(stdout)(s11)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.74)
	addi	a1, a1, %lo(.L.str.74)
	call	fprintf
	ld	a0, %lo(snr)(s0)
	flw	fa5, 108(a0)
	ld	a0, %lo(stdout)(s11)
	fcvt.d.s	fa4, fs1
	fcvt.s.w	fa3, s5
	fdiv.s	fa5, fa5, fa3
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa4
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.75)
	addi	a1, a1, %lo(.L.str.75)
	call	fprintf
	ld	a0, %lo(snr)(s0)
	flw	fa5, 112(a0)
	ld	a0, %lo(stdout)(s11)
	fcvt.d.s	fa4, fs0
	fcvt.s.w	fs0, s10
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa4
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.76)
	addi	a1, a1, %lo(.L.str.76)
	call	fprintf
	ld	a0, %lo(snr)(s0)
	flw	fa5, 116(a0)
	ld	a0, %lo(stdout)(s11)
	fcvt.d.s	fa4, fs2
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa4
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.77)
	addi	a1, a1, %lo(.L.str.77)
	j	.LBB11_69
.LBB11_68:
	lui	a1, %hi(tot_time)
	lw	a1, %lo(tot_time)(a1)
	fcvt.d.w	fa5, a1
	lui	a1, %hi(.LCPI11_0)
	fld	fa4, %lo(.LCPI11_0)(a1)
	lw	a1, 8(a0)
	lw	a2, %lo(frame_ctr+4)(s2)
	lui	a0, %hi(.LCPI11_1)
	fld	fa3, %lo(.LCPI11_1)(a0)
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	fmul.d	fa4, fa5, fa4
	add	a1, a2, a1
	fcvt.d.w	fa2, a1
	fmul.d	fa3, fa2, fa3
	fdiv.d	fa5, fa3, fa5
	fmv.x.d	a2, fa4
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.39)
	addi	a1, a1, %lo(.L.str.39)
.LBB11_69:
	call	fprintf
	lui	s3, %hi(stats)
	ld	a1, %lo(stats)(s3)
	lw	a2, %lo(frame_ctr+4)(s2)
	lui	a0, %hi(stdout)
	lw	a4, 716(a1)
	lw	a3, 712(a1)
	ld	a0, %lo(stdout)(a0)
	add	s0, a3, a4
	beqz	a2, .LBB11_71
# %bb.70:
	lw	a5, 720(a1)
	lw	a6, 1496(a1)
	add	a1, a5, a6
	addw	s0, s0, a1
	lui	a1, %hi(.L.str.78)
	addi	a1, a1, %lo(.L.str.78)
	mv	a2, s0
	call	fprintf
	lui	a1, %hi(img)
	ld	a0, %lo(stats)(s3)
	ld	a1, %lo(img)(a1)
	lui	a2, %hi(input)
	ld	a2, %lo(input)(a2)
	lw	a3, 688(a0)
	flw	fa5, 48(a1)
	lw	a1, 20(a2)
	addi	a3, a3, 1
	fcvt.s.w	fa4, a3
	fmul.s	fa5, fa5, fa4
	addi	a1, a1, 1
	fcvt.s.w	fa4, a1
	fcvt.s.w	fa3, s0
	lui	a1, %hi(frame_ctr)
	addi	a2, a1, %lo(frame_ctr)
	lw	a3, 8(a2)
	lw	a1, %lo(frame_ctr)(a1)
	lw	a2, 4(a2)
	fdiv.s	fa5, fa5, fa4
	fmul.s	fa4, fa5, fa3
	add	a1, a1, a3
	add	a1, a1, a2
	j	.LBB11_72
.LBB11_71:
	lw	a5, 1496(a1)
	addw	s0, s0, a5
	lui	a1, %hi(.L.str.80)
	addi	a1, a1, %lo(.L.str.80)
	mv	a2, s0
	call	fprintf
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a2, 20(a0)
	flw	fa5, 48(a1)
	addi	a2, a2, 1
	fcvt.s.w	fa4, a2
	fdiv.s	fa5, fa5, fa4
	lw	a1, 8(a0)
	fcvt.s.w	fa4, s0
	ld	a0, %lo(stats)(s3)
	fmul.s	fa4, fa5, fa4
.LBB11_72:
	fcvt.s.w	fa3, a1
	fdiv.s	fa4, fa4, fa3
	add	s11, s6, s7
	add	s9, s9, s1
	fsw	fa4, 12(a0)
	lui	s1, %hi(stdout)
	ld	a0, %lo(stdout)(s1)
	fcvt.d.s	fa5, fa5
	lui	a1, 280480
	fmv.w.x	fs0, a1
	fdiv.s	fa4, fa4, fs0
	fcvt.d.s	fa4, fa4
	fmv.x.d	a3, fa4
	fmv.x.d	s0, fa5
	lui	a1, %hi(.L.str.79)
	addi	a1, a1, %lo(.L.str.79)
	mv	a2, s0
	call	fprintf
	lui	s6, %hi(stats)
	ld	a1, %lo(stats)(s6)
	ld	a0, %lo(stdout)(s1)
	lw	a2, 28(a1)
	lui	a1, %hi(.L.str.81)
	addi	a1, a1, %lo(.L.str.81)
	call	fprintf
	ld	a1, %lo(stats)(s6)
	ld	a0, %lo(stdout)(s1)
	lw	a2, 1496(a1)
	lui	a1, %hi(.L.str.82)
	addi	a1, a1, %lo(.L.str.82)
	call	fprintf
	ld	a3, %lo(stdout)(s1)
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	li	a1, 80
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stdout)(s1)
	lui	a1, %hi(.L.str.83)
	addi	a1, a1, %lo(.L.str.83)
	lui	a2, %hi(.L.str.84)
	addi	a2, a2, %lo(.L.str.84)
	lui	a3, %hi(.L.str.13)
	addi	a3, a3, %lo(.L.str.13)
	call	fprintf
	ld	a1, %lo(stdout)(s1)
	li	a0, 10
	call	fputc
	lui	a0, %hi(.L.str.85)
	addi	a0, a0, %lo(.L.str.85)
	lui	a1, %hi(.L.str.86)
	addi	a1, a1, %lo(.L.str.86)
	call	fopen64
	mv	a3, a0
	lui	s8, %hi(p_stat)
	sd	a0, %lo(p_stat)(s8)
	bnez	a0, .LBB11_74
# %bb.73:
	lui	s1, %hi(errortext)
	addi	s1, s1, %lo(errortext)
	lui	a2, %hi(.L.str.87)
	addi	a2, a2, %lo(.L.str.87)
	lui	a3, %hi(.L.str.85)
	addi	a3, a3, %lo(.L.str.85)
	li	a1, 300
	mv	a0, s1
	call	snprintf
	li	a1, 500
	mv	a0, s1
	call	error
	ld	a3, %lo(p_stat)(s8)
.LBB11_74:
	ld	a0, 312(sp)                     # 8-byte Folded Reload
	add	s11, s11, a0
	ld	s7, 320(sp)                     # 8-byte Folded Reload
	add	s7, s9, s7
	lui	s1, %hi(.L.str.88)
	addi	s1, s1, %lo(.L.str.88)
	li	a1, 65
	li	a2, 1
	li	s5, 1
	mv	a0, s1
	call	fwrite
	ld	a3, %lo(p_stat)(s8)
	lui	a0, %hi(.L.str.89)
	addi	a0, a0, %lo(.L.str.89)
	li	a1, 65
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s8)
	li	a1, 65
	li	a2, 1
	mv	a0, s1
	call	fwrite
	lui	s1, %hi(input)
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(p_stat)(s8)
	addi	a2, a1, 228
	lui	a1, %hi(.L.str.90)
	addi	a1, a1, %lo(.L.str.90)
	call	fprintf
	ld	a0, %lo(input)(s1)
	lw	a1, 8(a0)
	lw	a2, %lo(frame_ctr+4)(s2)
	ld	a0, %lo(p_stat)(s8)
	addw	a2, a2, a1
	lui	a1, %hi(.L.str.91)
	addi	a1, a1, %lo(.L.str.91)
	call	fprintf
	ld	a0, %lo(p_stat)(s8)
	lui	a1, %hi(.L.str.92)
	addi	a1, a1, %lo(.L.str.92)
	mv	a2, s0
	call	fprintf
	ld	a0, %lo(stats)(s6)
	flw	fa5, 724(a0)
	ld	a0, %lo(p_stat)(s8)
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.93)
	addi	a1, a1, %lo(.L.str.93)
	call	fprintf
	ld	a0, %lo(stats)(s6)
	flw	fa5, 728(a0)
	ld	a0, %lo(p_stat)(s8)
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.94)
	addi	a1, a1, %lo(.L.str.94)
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a1, 688(a0)
	beqz	a1, .LBB11_76
# %bb.75:
	lui	a1, %hi(p_stat)
	flw	fa5, 732(a0)
	ld	a0, %lo(p_stat)(a1)
	lui	a1, 280480
	fmv.w.x	fa4, a1
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.95)
	addi	a1, a1, %lo(.L.str.95)
	call	fprintf
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
.LBB11_76:
	ld	a1, 352(sp)                     # 8-byte Folded Reload
	add	s11, s11, a1
	ld	s3, 328(sp)                     # 8-byte Folded Reload
	add	s3, s7, s3
	lui	s0, %hi(p_stat)
	flw	fa5, 12(a0)
	ld	a0, %lo(p_stat)(s0)
	lui	a1, 280480
	fmv.w.x	fa4, a1
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.96)
	addi	a1, a1, %lo(.L.str.96)
	call	fprintf
	ld	a0, %lo(input)(s1)
	lw	a0, 24(a0)
	ld	a3, %lo(p_stat)(s0)
	beq	a0, s5, .LBB11_79
# %bb.77:
	li	a1, 2
	bne	a0, a1, .LBB11_80
# %bb.78:
	lui	a0, %hi(.L.str.97)
	addi	a0, a0, %lo(.L.str.97)
	li	a1, 46
	j	.LBB11_81
.LBB11_79:
	lui	a0, %hi(.L.str.98)
	addi	a0, a0, %lo(.L.str.98)
	li	a1, 37
	j	.LBB11_81
.LBB11_80:
	lui	a0, %hi(.L.str.99)
	addi	a0, a0, %lo(.L.str.99)
	li	a1, 41
.LBB11_81:
	li	a2, 1
	call	fwrite
	ld	a4, 336(sp)                     # 8-byte Folded Reload
	lui	s0, %hi(input)
	ld	a1, %lo(input)(s0)
	lui	s1, %hi(p_stat)
	ld	a0, %lo(p_stat)(s1)
	lw	a2, 68(a1)
	lw	a3, 72(a1)
	add	s11, s11, s4
	add	s3, s3, a4
	lui	a1, %hi(.L.str.100)
	addi	a1, a1, %lo(.L.str.100)
	call	fprintf
	ld	a0, %lo(input)(s0)
	lw	a0, 80(a0)
	ld	a3, %lo(p_stat)(s1)
	beqz	a0, .LBB11_83
# %bb.82:
	lui	a0, %hi(.L.str.101)
	addi	a0, a0, %lo(.L.str.101)
	li	a1, 35
	j	.LBB11_84
.LBB11_83:
	lui	a0, %hi(.L.str.102)
	addi	a0, a0, %lo(.L.str.102)
	li	a1, 36
.LBB11_84:
	li	a2, 1
	call	fwrite
	lui	s4, %hi(input)
	ld	a1, %lo(input)(s4)
	lui	s5, %hi(p_stat)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 32(a1)
	ld	s0, 384(sp)                     # 8-byte Folded Reload
	add	s0, s11, s0
	ld	s1, 344(sp)                     # 8-byte Folded Reload
	add	s1, s3, s1
	lui	a1, %hi(.L.str.103)
	addi	a1, a1, %lo(.L.str.103)
	call	fprintf
	ld	a1, %lo(input)(s4)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 36(a1)
	lui	a1, %hi(.L.str.104)
	addi	a1, a1, %lo(.L.str.104)
	call	fprintf
	ld	a1, %lo(input)(s4)
	lw	a2, 40(a1)
	ld	a0, %lo(p_stat)(s5)
	bnez	a2, .LBB11_86
# %bb.85:
	lw	a2, 36(a1)
.LBB11_86:
	ld	a1, 400(sp)                     # 8-byte Folded Reload
	add	s0, s0, a1
	ld	a1, 360(sp)                     # 8-byte Folded Reload
	add	s1, s1, a1
	lui	a1, %hi(.L.str.105)
	addi	a1, a1, %lo(.L.str.105)
	call	fprintf
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
	lw	a0, 688(a0)
	beqz	a0, .LBB11_92
# %bb.87:
	lui	s4, %hi(input)
	ld	a1, %lo(input)(s4)
	lui	s3, %hi(p_stat)
	lw	a2, 44(a1)
	ld	a0, %lo(p_stat)(s3)
	bnez	a2, .LBB11_89
# %bb.88:
	lw	a2, 36(a1)
.LBB11_89:
	lui	a1, %hi(.L.str.106)
	addi	a1, a1, %lo(.L.str.106)
	call	fprintf
	ld	a1, %lo(input)(s4)
	lw	a2, 48(a1)
	ld	a0, %lo(p_stat)(s3)
	bnez	a2, .LBB11_91
# %bb.90:
	lw	a2, 36(a1)
.LBB11_91:
	lui	a1, %hi(.L.str.107)
	addi	a1, a1, %lo(.L.str.107)
	call	fprintf
.LBB11_92:
	lui	s3, %hi(input)
	ld	a0, %lo(input)(s3)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	lui	s4, %hi(p_stat)
	ld	a3, %lo(p_stat)(s4)
	ld	a1, 416(sp)                     # 8-byte Folded Reload
	add	s0, s0, a1
	ld	a1, 368(sp)                     # 8-byte Folded Reload
	add	a1, s1, a1
	beqz	a0, .LBB11_94
# %bb.93:
	lui	a0, %hi(.L.str.109)
	addi	a0, a0, %lo(.L.str.109)
	j	.LBB11_95
.LBB11_94:
	lui	a0, %hi(.L.str.108)
	addi	a0, a0, %lo(.L.str.108)
.LBB11_95:
	ld	s1, 432(sp)                     # 8-byte Folded Reload
	add	s1, s0, s1
	ld	s0, 376(sp)                     # 8-byte Folded Reload
	add	s0, a1, s0
	li	a1, 38
	li	a2, 1
	call	fwrite
	ld	a1, %lo(input)(s3)
	ld	a0, %lo(p_stat)(s4)
	lw	a2, 0(a1)
	lw	a3, 4(a1)
	lui	a1, %hi(.L.str.110)
	addi	a1, a1, %lo(.L.str.110)
	call	fprintf
	ld	a0, %lo(input)(s3)
	addi	a1, a0, 2047
	lw	a1, 1509(a1)
	beqz	a1, .LBB11_97
# %bb.96:
	lui	a0, %hi(p_stat)
	ld	a3, %lo(p_stat)(a0)
	lui	a0, %hi(.L.str.111)
	addi	a0, a0, %lo(.L.str.111)
	li	a1, 23
	li	a2, 1
	call	fwrite
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB11_97:
	addi	a1, a0, 2047
	lw	a1, 1917(a1)
	ld	a2, 448(sp)                     # 8-byte Folded Reload
	add	s1, s1, a2
	li	a2, 3
	ld	s3, 392(sp)                     # 8-byte Folded Reload
	add	s3, s0, s3
	bne	a1, a2, .LBB11_99
# %bb.98:
	lui	a0, %hi(p_stat)
	ld	a0, %lo(p_stat)(a0)
	li	a1, 1
	call	EPZSOutputStats
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
.LBB11_99:
	addi	a0, a0, 2047
	lw	a0, 1061(a0)
	lui	a1, %hi(p_stat)
	ld	a3, %lo(p_stat)(a1)
	ld	s0, 456(sp)                     # 8-byte Folded Reload
	add	s0, s1, s0
	li	a1, 1
	ld	s1, 408(sp)                     # 8-byte Folded Reload
	add	s1, s3, s1
	beq	a0, a1, .LBB11_102
# %bb.100:
	li	a1, 2
	bne	a0, a1, .LBB11_103
# %bb.101:
	lui	a0, %hi(.L.str.112)
	addi	a0, a0, %lo(.L.str.112)
	li	a1, 37
	j	.LBB11_104
.LBB11_102:
	lui	a0, %hi(.L.str.113)
	addi	a0, a0, %lo(.L.str.113)
	li	a1, 55
	j	.LBB11_104
.LBB11_103:
	lui	a0, %hi(.L.str.114)
	addi	a0, a0, %lo(.L.str.114)
	li	a1, 74
.LBB11_104:
	li	a2, 1
	call	fwrite
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1089(a0)
	lui	a1, %hi(p_stat)
	ld	a3, %lo(p_stat)(a1)
	ld	a1, 464(sp)                     # 8-byte Folded Reload
	add	s0, s0, a1
	ld	s3, 424(sp)                     # 8-byte Folded Reload
	add	s3, s1, s3
	beqz	a0, .LBB11_106
# %bb.105:
	lui	a0, %hi(.L.str.115)
	addi	a0, a0, %lo(.L.str.115)
	li	a1, 37
	j	.LBB11_107
.LBB11_106:
	lui	a0, %hi(.L.str.116)
	addi	a0, a0, %lo(.L.str.116)
	li	a1, 41
.LBB11_107:
	li	a2, 1
	call	fwrite
	lui	s5, %hi(p_stat)
	ld	a3, %lo(p_stat)(s5)
	ld	s1, 472(sp)                     # 8-byte Folded Reload
	add	s1, s0, s1
	ld	a0, 440(sp)                     # 8-byte Folded Reload
	add	s3, s3, a0
	lui	s0, %hi(.L.str.117)
	addi	s0, s0, %lo(.L.str.117)
	li	a1, 57
	li	a2, 1
	mv	a0, s0
	call	fwrite
	ld	a3, %lo(p_stat)(s5)
	lui	a0, %hi(.L.str.118)
	addi	a0, a0, %lo(.L.str.118)
	li	a1, 57
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s5)
	li	a1, 57
	li	a2, 1
	mv	a0, s0
	call	fwrite
	ld	a3, %lo(p_stat)(s5)
	lui	a0, %hi(.L.str.119)
	addi	a0, a0, %lo(.L.str.119)
	li	a1, 23
	li	a2, 1
	call	fwrite
	lui	s7, %hi(snr)
	ld	a0, %lo(snr)(s7)
	flw	fa5, 12(a0)
	ld	a0, %lo(p_stat)(s5)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.120)
	addi	a1, a1, %lo(.L.str.120)
	call	fprintf
	ld	a0, %lo(snr)(s7)
	flw	fa5, 84(a0)
	ld	a0, %lo(p_stat)(s5)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	s0, %hi(.L.str.121)
	addi	s0, s0, %lo(.L.str.121)
	mv	a1, s0
	call	fprintf
	ld	a3, %lo(p_stat)(s5)
	lui	a0, %hi(.L.str.122)
	addi	a0, a0, %lo(.L.str.122)
	li	a1, 23
	li	a2, 1
	call	fwrite
	ld	a0, %lo(snr)(s7)
	flw	fa5, 16(a0)
	flw	fa4, 20(a0)
	ld	a0, %lo(p_stat)(s5)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fmv.x.d	a2, fa5
	fmv.x.d	a3, fa4
	lui	a1, %hi(.L.str.123)
	addi	a1, a1, %lo(.L.str.123)
	call	fprintf
	ld	a0, %lo(snr)(s7)
	flw	fa5, 88(a0)
	flw	fa4, 92(a0)
	ld	a0, %lo(p_stat)(s5)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fmv.x.d	a2, fa5
	fmv.x.d	a3, fa4
	lui	a1, %hi(.L.str.124)
	addi	a1, a1, %lo(.L.str.124)
	call	fprintf
	ld	a3, %lo(p_stat)(s5)
	lui	a0, %hi(.L.str.125)
	addi	a0, a0, %lo(.L.str.125)
	li	a1, 23
	li	a2, 1
	call	fwrite
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 12(a0)
	ld	a0, %lo(p_stat)(s5)
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	a2, a1, a2
	lui	a1, %hi(.L.str.126)
	addi	a1, a1, %lo(.L.str.126)
	call	fprintf
	lui	s6, %hi(stats)
	ld	a0, %lo(stats)(s6)
	lw	a2, 4(a0)
	lw	a1, 0(a0)
	ld	a0, %lo(p_stat)(s5)
	fcvt.s.w	fa5, a2
	fcvt.d.s	fa5, fa5
	blez	a1, .LBB11_109
# %bb.108:
	fcvt.s.w	fa4, a1
	fcvt.d.s	fa4, fa4
	j	.LBB11_110
.LBB11_109:
	lui	a1, %hi(.LCPI11_2)
	fld	fa4, %lo(.LCPI11_2)(a1)
.LBB11_110:
	ld	a1, 488(sp)                     # 8-byte Folded Reload
	add	s1, s1, a1
	ld	a1, 480(sp)                     # 8-byte Folded Reload
	add	s3, s3, a1
	fdiv.d	fa5, fa5, fa4
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a3, %lo(p_stat)(s5)
	lui	a0, %hi(.L.str.127)
	addi	a0, a0, %lo(.L.str.127)
	li	a1, 74
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s5)
	lui	a0, %hi(.L.str.128)
	addi	a0, a0, %lo(.L.str.128)
	li	a1, 73
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s5)
	lui	a0, %hi(.L.str.129)
	addi	a0, a0, %lo(.L.str.129)
	li	a1, 73
	li	a2, 1
	call	fwrite
	ld	a0, %lo(snr)(s7)
	flw	fa5, 32(a0)
	flw	fa4, 24(a0)
	flw	fa3, 28(a0)
	ld	a0, %lo(p_stat)(s5)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fcvt.d.s	fa3, fa3
	fmv.x.d	a2, fa5
	fmv.x.d	a3, fa4
	fmv.x.d	a4, fa3
	lui	a1, %hi(.L.str.130)
	addi	a1, a1, %lo(.L.str.130)
	call	fprintf
	ld	a0, %lo(snr)(s7)
	flw	fa5, 52(a0)
	flw	fa4, 44(a0)
	flw	fa3, 48(a0)
	ld	a0, %lo(p_stat)(s5)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fcvt.d.s	fa3, fa3
	fmv.x.d	a2, fa5
	fmv.x.d	a3, fa4
	fmv.x.d	a4, fa3
	lui	a1, %hi(.L.str.131)
	addi	a1, a1, %lo(.L.str.131)
	call	fprintf
	ld	a0, %lo(snr)(s7)
	flw	fa5, 72(a0)
	flw	fa4, 64(a0)
	flw	fa3, 68(a0)
	ld	a0, %lo(p_stat)(s5)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fcvt.d.s	fa3, fa3
	fmv.x.d	a2, fa5
	fmv.x.d	a3, fa4
	fmv.x.d	a4, fa3
	lui	a1, %hi(.L.str.132)
	addi	a1, a1, %lo(.L.str.132)
	call	fprintf
	ld	a3, %lo(p_stat)(s5)
	lui	a0, %hi(.L.str.133)
	addi	a0, a0, %lo(.L.str.133)
	li	a1, 42
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s5)
	lui	a0, %hi(.L.str.134)
	addi	a0, a0, %lo(.L.str.134)
	li	a1, 41
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s5)
	lui	a0, %hi(.L.str.135)
	addi	a0, a0, %lo(.L.str.135)
	li	a1, 41
	li	a2, 1
	call	fwrite
	ld	a1, %lo(stats)(s6)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 892(a1)
	lui	a1, %hi(.L.str.136)
	addi	a1, a1, %lo(.L.str.136)
	call	fprintf
	ld	a1, %lo(stats)(s6)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 908(a1)
	lui	a1, %hi(.L.str.137)
	addi	a1, a1, %lo(.L.str.137)
	call	fprintf
	ld	a1, %lo(stats)(s6)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 896(a1)
	lui	a1, %hi(.L.str.138)
	addi	a1, a1, %lo(.L.str.138)
	call	fprintf
	ld	a1, %lo(stats)(s6)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 912(a1)
	lui	a1, %hi(.L.str.139)
	addi	a1, a1, %lo(.L.str.139)
	call	fprintf
	ld	a3, %lo(p_stat)(s5)
	lui	a0, %hi(.L.str.140)
	addi	a0, a0, %lo(.L.str.140)
	li	a1, 60
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s5)
	lui	a0, %hi(.L.str.141)
	addi	a0, a0, %lo(.L.str.141)
	li	a1, 59
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s5)
	lui	a0, %hi(.L.str.142)
	addi	a0, a0, %lo(.L.str.142)
	li	a1, 58
	li	a2, 1
	call	fwrite
	ld	a1, %lo(stats)(s6)
	lw	a3, 1036(a1)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 736(a1)
	fcvt.s.w	fa5, a3
	ld	a1, 496(sp)                     # 8-byte Folded Reload
	fcvt.s.wu	fs0, a1
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.143)
	addi	a1, a1, %lo(.L.str.143)
	call	fprintf
	ld	a1, %lo(stats)(s6)
	lw	a3, 1040(a1)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 740(a1)
	fcvt.s.w	fa5, a3
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.144)
	addi	a1, a1, %lo(.L.str.144)
	call	fprintf
	ld	a1, %lo(stats)(s6)
	lw	a3, 1044(a1)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 744(a1)
	fcvt.s.w	fa5, a3
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.145)
	addi	a1, a1, %lo(.L.str.145)
	call	fprintf
	ld	a1, %lo(stats)(s6)
	lw	a3, 1048(a1)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 748(a1)
	fcvt.s.w	fa5, a3
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.146)
	addi	a1, a1, %lo(.L.str.146)
	call	fprintf
	ld	a1, %lo(stats)(s6)
	lw	a3, 1068(a1)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 768(a1)
	fcvt.s.w	fa5, a3
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.147)
	addi	a1, a1, %lo(.L.str.147)
	call	fprintf
	ld	a1, %lo(stats)(s6)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 772(a1)
	lui	a1, %hi(.L.str.148)
	addi	a1, a1, %lo(.L.str.148)
	call	fprintf
	ld	a1, %lo(stats)(s6)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 788(a1)
	lui	a1, %hi(.L.str.149)
	addi	a1, a1, %lo(.L.str.149)
	call	fprintf
	ld	a1, %lo(stats)(s6)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 776(a1)
	lui	a1, %hi(.L.str.150)
	addi	a1, a1, %lo(.L.str.150)
	call	fprintf
	ld	a1, %lo(stats)(s6)
	ld	a0, %lo(p_stat)(s5)
	lw	a2, 792(a1)
	lui	a1, %hi(.L.str.151)
	addi	a1, a1, %lo(.L.str.151)
	call	fprintf
	ld	a0, %lo(stats)(s6)
	lw	a1, 1036(a0)
	lw	a2, 1040(a0)
	lw	a3, 1044(a0)
	lw	a4, 1048(a0)
	add	a1, a2, a1
	lw	s0, 1068(a0)
	lw	a0, 688(a0)
	add	a3, a3, a4
	add	a1, a1, a3
	add	s0, a1, s0
	fmv.w.x	fs3, zero
	beqz	a0, .LBB11_113
# %bb.111:
	lw	a0, %lo(frame_ctr+4)(s2)
	beqz	a0, .LBB11_113
# %bb.112:
	lui	s4, %hi(p_stat)
	ld	a3, %lo(p_stat)(s4)
	lui	a0, %hi(.L.str.152)
	addi	a0, a0, %lo(.L.str.152)
	li	a1, 61
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s4)
	lui	a0, %hi(.L.str.153)
	addi	a0, a0, %lo(.L.str.153)
	li	a1, 59
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s4)
	lui	a0, %hi(.L.str.142)
	addi	a0, a0, %lo(.L.str.142)
	li	a1, 58
	li	a2, 1
	call	fwrite
	lui	s5, %hi(stats)
	ld	a1, %lo(stats)(s5)
	lw	a3, 1096(a1)
	lw	a4, %lo(frame_ctr+4)(s2)
	ld	a0, %lo(p_stat)(s4)
	lw	a2, 796(a1)
	fcvt.s.w	fa5, a3
	fcvt.s.w	fa4, a4
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa5, fa5
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.143)
	addi	a1, a1, %lo(.L.str.143)
	call	fprintf
	ld	a1, %lo(stats)(s5)
	lw	a3, 1100(a1)
	lw	a4, %lo(frame_ctr+4)(s2)
	ld	a0, %lo(p_stat)(s4)
	lw	a2, 800(a1)
	fcvt.s.w	fa5, a3
	fcvt.s.w	fa4, a4
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa5, fa5
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.144)
	addi	a1, a1, %lo(.L.str.144)
	call	fprintf
	ld	a1, %lo(stats)(s5)
	lw	a3, 1104(a1)
	lw	a4, %lo(frame_ctr+4)(s2)
	ld	a0, %lo(p_stat)(s4)
	lw	a2, 804(a1)
	fcvt.s.w	fa5, a3
	fcvt.s.w	fa4, a4
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa5, fa5
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.145)
	addi	a1, a1, %lo(.L.str.145)
	call	fprintf
	ld	a1, %lo(stats)(s5)
	lw	a3, 1108(a1)
	lw	a4, %lo(frame_ctr+4)(s2)
	ld	a0, %lo(p_stat)(s4)
	lw	a2, 808(a1)
	fcvt.s.w	fa5, a3
	fcvt.s.w	fa4, a4
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa5, fa5
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.146)
	addi	a1, a1, %lo(.L.str.146)
	call	fprintf
	ld	a1, %lo(stats)(s5)
	lw	a3, 1128(a1)
	lw	a4, %lo(frame_ctr+4)(s2)
	ld	a0, %lo(p_stat)(s4)
	lw	a2, 828(a1)
	fcvt.s.w	fa5, a3
	fcvt.s.w	fa4, a4
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa5, fa5
	fmv.x.d	a3, fa5
	lui	a1, %hi(.L.str.147)
	addi	a1, a1, %lo(.L.str.147)
	call	fprintf
	ld	a1, %lo(stats)(s5)
	ld	a0, %lo(p_stat)(s4)
	lw	a2, 832(a1)
	lui	a1, %hi(.L.str.148)
	addi	a1, a1, %lo(.L.str.148)
	call	fprintf
	ld	a1, %lo(stats)(s5)
	ld	a0, %lo(p_stat)(s4)
	lw	a2, 848(a1)
	lui	a1, %hi(.L.str.149)
	addi	a1, a1, %lo(.L.str.149)
	call	fprintf
	ld	a1, %lo(stats)(s5)
	ld	a0, %lo(p_stat)(s4)
	lw	a2, 836(a1)
	lui	a1, %hi(.L.str.150)
	addi	a1, a1, %lo(.L.str.150)
	call	fprintf
	ld	a1, %lo(stats)(s5)
	ld	a0, %lo(p_stat)(s4)
	lw	a2, 852(a1)
	lui	a1, %hi(.L.str.151)
	addi	a1, a1, %lo(.L.str.151)
	call	fprintf
	ld	a0, %lo(stats)(s5)
	lw	a1, 1096(a0)
	lw	a2, 1100(a0)
	lw	a3, 1104(a0)
	lw	a4, 1108(a0)
	add	a1, a2, a1
	lw	a0, 1128(a0)
	add	a3, a3, a4
	lw	a2, %lo(frame_ctr+4)(s2)
	add	a1, a1, a3
	add	a0, a1, a0
	fcvt.s.w	fa5, a0
	fcvt.s.w	fa4, a2
	fdiv.s	fs3, fa5, fa4
.LBB11_113:
	lui	s4, %hi(p_stat)
	ld	a3, %lo(p_stat)(s4)
	ld	s5, 520(sp)                     # 8-byte Folded Reload
	add	s5, s1, s5
	ld	a0, 504(sp)                     # 8-byte Folded Reload
	add	s3, s3, a0
	fcvt.s.w	fs4, s0
	lui	a0, %hi(.L.str.154)
	addi	a0, a0, %lo(.L.str.154)
	li	a1, 77
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s4)
	lui	a0, %hi(.L.str.155)
	addi	a0, a0, %lo(.L.str.155)
	li	a1, 75
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s4)
	lui	a0, %hi(.L.str.156)
	addi	a0, a0, %lo(.L.str.156)
	li	a1, 75
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s4)
	lui	a0, %hi(.L.str.157)
	addi	a0, a0, %lo(.L.str.157)
	li	a1, 23
	li	a2, 1
	call	fwrite
	lui	s1, %hi(stats)
	ld	a0, %lo(stats)(s1)
	lw	a1, 1384(a0)
	ld	a0, %lo(p_stat)(s4)
	fcvt.s.w	fa5, a1
	ld	a1, 536(sp)                     # 8-byte Folded Reload
	fcvt.s.w	fs2, a1
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	s0, %hi(.L.str.158)
	addi	s0, s0, %lo(.L.str.158)
	mv	a1, s0
	call	fprintf
	ld	a0, %lo(stats)(s1)
	lw	a1, 1376(a0)
	ld	a0, %lo(p_stat)(s4)
	fcvt.s.w	fa5, a1
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a1, %lo(stats)(s1)
	lw	a2, 688(a1)
	ld	a0, %lo(p_stat)(s4)
	fmv.d.x	fs1, zero
	fmv.d	fa5, fs1
	beqz	a2, .LBB11_116
# %bb.114:
	lw	a2, %lo(frame_ctr+4)(s2)
	fmv.d	fa5, fs1
	beqz	a2, .LBB11_116
# %bb.115:
	lw	a1, 1380(a1)
	fcvt.s.w	fa5, a1
	fcvt.s.w	fa4, a2
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa5, fa5
.LBB11_116:
	ld	a1, 544(sp)                     # 8-byte Folded Reload
	add	s5, s5, a1
	ld	a1, 512(sp)                     # 8-byte Folded Reload
	add	s3, s3, a1
	fdiv.s	fs4, fs4, fs0
	fmv.x.d	a2, fa5
	lui	s0, %hi(.L.str.158)
	addi	s0, s0, %lo(.L.str.158)
	mv	a1, s0
	call	fprintf
	ld	a1, %lo(p_stat)(s4)
	li	a0, 10
	call	fputc
	ld	a3, %lo(p_stat)(s4)
	lui	a0, %hi(.L.str.159)
	addi	a0, a0, %lo(.L.str.159)
	li	a1, 23
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stats)(s1)
	lw	a1, 1364(a0)
	ld	a0, %lo(p_stat)(s4)
	fcvt.s.w	fa5, a1
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a0, %lo(stats)(s1)
	lw	a1, 1356(a0)
	ld	a0, %lo(p_stat)(s4)
	fcvt.s.w	fa5, a1
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a1, %lo(stats)(s1)
	lw	a2, 688(a1)
	ld	a0, %lo(p_stat)(s4)
	fmv.d	fa5, fs1
	beqz	a2, .LBB11_119
# %bb.117:
	lw	a2, %lo(frame_ctr+4)(s2)
	fmv.d	fa5, fs1
	beqz	a2, .LBB11_119
# %bb.118:
	lw	a1, 1360(a1)
	fcvt.s.w	fa5, a1
	fcvt.s.w	fa4, a2
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa5, fa5
.LBB11_119:
	ld	s4, 560(sp)                     # 8-byte Folded Reload
	add	s4, s4, s5
	ld	s5, 528(sp)                     # 8-byte Folded Reload
	add	s5, s5, s3
	fmv.x.d	a2, fa5
	lui	s0, %hi(.L.str.158)
	addi	s0, s0, %lo(.L.str.158)
	mv	a1, s0
	call	fprintf
	lui	s1, %hi(p_stat)
	ld	a1, %lo(p_stat)(s1)
	li	a0, 10
	call	fputc
	ld	a3, %lo(p_stat)(s1)
	lui	a0, %hi(.L.str.160)
	addi	a0, a0, %lo(.L.str.160)
	li	a1, 23
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s1)
	lui	a0, %hi(.L.str.161)
	addi	a0, a0, %lo(.L.str.161)
	li	a1, 17
	li	a2, 1
	call	fwrite
	ld	a0, %lo(p_stat)(s1)
	fcvt.d.s	fa5, fs4
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	lui	s3, %hi(stats)
	ld	a0, %lo(stats)(s3)
	lw	a0, 688(a0)
	lw	a1, %lo(frame_ctr+4)(s2)
	snez	a2, a0
	ld	a0, %lo(p_stat)(s1)
	snez	a1, a1
	and	a1, a2, a1
	bnez	a1, .LBB11_121
# %bb.120:
	fmv.d	fa5, fs1
	j	.LBB11_122
.LBB11_121:
	fcvt.d.s	fa5, fs3
.LBB11_122:
	ld	a1, 584(sp)                     # 8-byte Folded Reload
	add	s4, a1, s4
	ld	a1, 552(sp)                     # 8-byte Folded Reload
	add	s5, a1, s5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a1, %lo(p_stat)(s1)
	li	a0, 10
	call	fputc
	ld	a3, %lo(p_stat)(s1)
	lui	a0, %hi(.L.str.162)
	addi	a0, a0, %lo(.L.str.162)
	li	a1, 23
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stats)(s3)
	lw	a1, 1404(a0)
	ld	a0, %lo(p_stat)(s1)
	fcvt.s.w	fa5, a1
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a0, %lo(stats)(s3)
	lw	a1, 1396(a0)
	ld	a0, %lo(p_stat)(s1)
	fcvt.s.w	fa5, a1
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a1, %lo(stats)(s3)
	lw	a2, 688(a1)
	ld	a0, %lo(p_stat)(s1)
	fmv.d	fa5, fs1
	ld	a3, 624(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB11_125
# %bb.123:
	fmv.d	fa5, fs1
	beqz	a3, .LBB11_125
# %bb.124:
	lw	a1, 1400(a1)
	fcvt.s.w	fa5, a1
	fcvt.s.w	fa4, a3
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa5, fa5
.LBB11_125:
	ld	a1, 592(sp)                     # 8-byte Folded Reload
	add	s4, a1, s4
	ld	a1, 568(sp)                     # 8-byte Folded Reload
	add	s5, a1, s5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.158)
	addi	a1, a1, %lo(.L.str.158)
	call	fprintf
	lui	s0, %hi(p_stat)
	ld	a1, %lo(p_stat)(s0)
	li	a0, 10
	call	fputc
	lui	s1, %hi(stats)
	ld	a1, %lo(stats)(s1)
	lw	a2, 1424(a1)
	lw	a3, 688(a1)
	ld	a0, %lo(p_stat)(s0)
	lw	a4, 1416(a1)
	fcvt.s.w	fa5, a2
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fcvt.s.w	fa4, a4
	fdiv.s	fa4, fa4, fs0
	fcvt.d.s	fa4, fa4
	fmv.d	fa3, fs1
	beqz	a3, .LBB11_128
# %bb.126:
	lw	a2, %lo(frame_ctr+4)(s2)
	fmv.d	fa3, fs1
	beqz	a2, .LBB11_128
# %bb.127:
	lw	a1, 1420(a1)
	fcvt.s.w	fa3, a1
	fcvt.s.w	fa2, a2
	fdiv.s	fa3, fa3, fa2
	fcvt.d.s	fa3, fa3
.LBB11_128:
	ld	s3, 608(sp)                     # 8-byte Folded Reload
	add	s3, s3, s4
	ld	a1, 576(sp)                     # 8-byte Folded Reload
	add	s5, a1, s5
	fmv.x.d	a2, fa5
	fmv.x.d	a3, fa4
	fmv.x.d	a4, fa3
	lui	a1, %hi(.L.str.163)
	addi	a1, a1, %lo(.L.str.163)
	call	fprintf
	ld	a1, %lo(stats)(s1)
	lw	a2, 1444(a1)
	lw	a3, 688(a1)
	ld	a0, %lo(p_stat)(s0)
	lw	a4, 1436(a1)
	fcvt.s.w	fa5, a2
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fcvt.s.w	fa4, a4
	fdiv.s	fa4, fa4, fs0
	fcvt.d.s	fa4, fa4
	fmv.d	fa3, fs1
	beqz	a3, .LBB11_131
# %bb.129:
	lw	a2, %lo(frame_ctr+4)(s2)
	fmv.d	fa3, fs1
	beqz	a2, .LBB11_131
# %bb.130:
	lw	a1, 1440(a1)
	fcvt.s.w	fa3, a1
	fcvt.s.w	fa2, a2
	fdiv.s	fa3, fa3, fa2
	fcvt.d.s	fa3, fa3
.LBB11_131:
	ld	a1, 632(sp)                     # 8-byte Folded Reload
	add	s3, a1, s3
	ld	s0, 600(sp)                     # 8-byte Folded Reload
	add	s0, s0, s5
	fmv.x.d	a2, fa5
	fmv.x.d	a3, fa4
	fmv.x.d	a4, fa3
	lui	a1, %hi(.L.str.164)
	addi	a1, a1, %lo(.L.str.164)
	call	fprintf
	lui	s1, %hi(stats)
	ld	a1, %lo(stats)(s1)
	lw	a2, 688(a1)
	lw	a3, 1464(a1)
	lui	s4, %hi(p_stat)
	ld	a0, %lo(p_stat)(s4)
	lw	a4, 1456(a1)
	fcvt.s.w	fa5, a3
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fcvt.s.w	fa4, a4
	fdiv.s	fa4, fa4, fs0
	fcvt.d.s	fa4, fa4
	fmv.d	fa3, fs1
	beqz	a2, .LBB11_134
# %bb.132:
	lw	a2, %lo(frame_ctr+4)(s2)
	fmv.d	fa3, fs1
	beqz	a2, .LBB11_134
# %bb.133:
	lw	a1, 1460(a1)
	fcvt.s.w	fa3, a1
	fcvt.s.w	fa2, a2
	fdiv.s	fa3, fa3, fa2
	fcvt.d.s	fa3, fa3
.LBB11_134:
	ld	a1, 640(sp)                     # 8-byte Folded Reload
	add	s3, a1, s3
	ld	a1, 616(sp)                     # 8-byte Folded Reload
	add	s0, a1, s0
	fmv.x.d	a2, fa5
	fmv.x.d	a3, fa4
	fmv.x.d	a4, fa3
	lui	a1, %hi(.L.str.165)
	addi	a1, a1, %lo(.L.str.165)
	call	fprintf
	ld	a1, %lo(stats)(s1)
	lw	a2, 1344(a1)
	lw	a3, 688(a1)
	ld	a0, %lo(p_stat)(s4)
	lw	a4, 1336(a1)
	fcvt.s.w	fa5, a2
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fcvt.s.w	fa4, a4
	fdiv.s	fa4, fa4, fs0
	fcvt.d.s	fa4, fa4
	fmv.d	fa3, fs1
	beqz	a3, .LBB11_137
# %bb.135:
	lw	a2, %lo(frame_ctr+4)(s2)
	fmv.d	fa3, fs1
	beqz	a2, .LBB11_137
# %bb.136:
	lw	a1, 1340(a1)
	fcvt.s.w	fa3, a1
	fcvt.s.w	fa2, a2
	fdiv.s	fa3, fa3, fa2
	fcvt.d.s	fa3, fa3
.LBB11_137:
	fmv.x.d	a2, fa5
	fmv.x.d	a3, fa4
	fmv.x.d	a4, fa3
	lui	a1, %hi(.L.str.166)
	addi	a1, a1, %lo(.L.str.166)
	call	fprintf
	lui	s1, %hi(p_stat)
	ld	a3, %lo(p_stat)(s1)
	lui	a0, %hi(.L.str.156)
	addi	a0, a0, %lo(.L.str.156)
	li	a1, 75
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_stat)(s1)
	lui	a0, %hi(.L.str.167)
	addi	a0, a0, %lo(.L.str.167)
	li	a1, 23
	li	a2, 1
	call	fwrite
	ld	a0, %lo(p_stat)(s1)
	fcvt.s.w	fa5, s0
	fdiv.s	fa5, fa5, fs2
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	s0, %hi(.L.str.158)
	addi	s0, s0, %lo(.L.str.158)
	mv	a1, s0
	call	fprintf
	ld	a0, %lo(p_stat)(s1)
	fcvt.s.w	fa5, s3
	fdiv.s	fa5, fa5, fs0
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
	lw	a1, 688(a0)
	ld	a0, %lo(p_stat)(s1)
	beqz	a1, .LBB11_140
# %bb.138:
	lw	a1, %lo(frame_ctr+4)(s2)
	beqz	a1, .LBB11_140
# %bb.139:
	ld	a2, 304(sp)                     # 8-byte Folded Reload
	ld	a3, 296(sp)                     # 8-byte Folded Reload
	add	a2, a2, a3
	ld	a3, 288(sp)                     # 8-byte Folded Reload
	ld	a4, 248(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	add	a2, a2, a3
	ld	a3, 280(sp)                     # 8-byte Folded Reload
	ld	a4, 240(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	ld	a4, 232(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	add	a2, a2, a3
	ld	a3, 272(sp)                     # 8-byte Folded Reload
	ld	a4, 224(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	ld	a4, 216(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	ld	a4, 208(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	add	a2, a2, a3
	ld	a3, 264(sp)                     # 8-byte Folded Reload
	ld	a4, 200(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	ld	a4, 192(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	ld	a4, 184(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	ld	a4, 176(sp)                     # 8-byte Folded Reload
	add	a3, a3, a4
	add	a2, a2, a3
	ld	a3, 256(sp)                     # 8-byte Folded Reload
	ld	a4, 168(sp)                     # 8-byte Folded Reload
	add	a3, a4, a3
	ld	a4, 160(sp)                     # 8-byte Folded Reload
	add	a3, a4, a3
	ld	a4, 152(sp)                     # 8-byte Folded Reload
	add	a3, a4, a3
	ld	a4, 144(sp)                     # 8-byte Folded Reload
	add	a3, a4, a3
	ld	a4, 136(sp)                     # 8-byte Folded Reload
	add	a3, a4, a3
	add	a2, a3, a2
	fcvt.s.w	fa5, a2
	fcvt.s.w	fa4, a1
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fs1, fa5
.LBB11_140:
	fmv.x.d	a2, fs1
	lui	a1, %hi(.L.str.158)
	addi	a1, a1, %lo(.L.str.158)
	call	fprintf
	ld	a1, %lo(p_stat)(s1)
	li	a0, 10
	call	fputc
	ld	a3, %lo(p_stat)(s1)
	lui	a0, %hi(.L.str.156)
	addi	a0, a0, %lo(.L.str.156)
	li	a1, 75
	li	a2, 1
	call	fwrite
	ld	a0, %lo(p_stat)(s1)
	call	fclose
	lui	a0, %hi(.L.str.168)
	addi	a0, a0, %lo(.L.str.168)
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	call	fopen64
	lui	s0, %hi(p_log)
	sd	a0, %lo(p_log)(s0)
	beqz	a0, .LBB11_142
# %bb.141:
	call	fclose
	lui	a0, %hi(.L.str.168)
	addi	a0, a0, %lo(.L.str.168)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	call	fopen64
	sd	a0, %lo(p_log)(s0)
	bnez	a0, .LBB11_145
	j	.LBB11_144
.LBB11_142:
	lui	a0, %hi(.L.str.168)
	addi	a0, a0, %lo(.L.str.168)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	call	fopen64
	sd	a0, %lo(p_log)(s0)
	beqz	a0, .LBB11_144
# %bb.143:
	mv	a3, a0
	lui	s0, %hi(.L.str.169)
	addi	s0, s0, %lo(.L.str.169)
	li	a1, 297
	li	a2, 1
	mv	a0, s0
	call	fwrite
	lui	s1, %hi(p_log)
	ld	a3, %lo(p_log)(s1)
	lui	a0, %hi(.L.str.170)
	addi	a0, a0, %lo(.L.str.170)
	li	a1, 297
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_log)(s1)
	li	a1, 297
	li	a2, 1
	mv	a0, s0
	call	fwrite
	ld	a3, %lo(p_log)(s1)
	lui	a0, %hi(.L.str.171)
	addi	a0, a0, %lo(.L.str.171)
	li	a1, 297
	li	a2, 1
	call	fwrite
	ld	a3, %lo(p_log)(s1)
	li	a1, 297
	li	a2, 1
	mv	a0, s0
	call	fwrite
	j	.LBB11_145
.LBB11_144:
	lui	s0, %hi(errortext)
	addi	s0, s0, %lo(errortext)
	lui	a2, %hi(.L.str.7)
	addi	a2, a2, %lo(.L.str.7)
	lui	a3, %hi(.L.str.168)
	addi	a3, a3, %lo(.L.str.168)
	li	a1, 300
	mv	a0, s0
	call	snprintf
	li	a1, 500
	mv	a0, s0
	call	error
.LBB11_145:
	lui	s1, %hi(p_log)
	ld	a0, %lo(p_log)(s1)
	lui	a1, %hi(.L.str.172)
	addi	a1, a1, %lo(.L.str.172)
	lui	a2, %hi(.L.str.13)
	addi	a2, a2, %lo(.L.str.13)
	lui	a3, %hi(.L.str.14)
	addi	a3, a3, %lo(.L.str.14)
	call	fprintf
	li	a0, 0
	call	time
	sd	a0, 1648(sp)
	addi	a0, sp, 1648
	call	time
	addi	a0, sp, 1648
	call	localtime
	mv	s0, a0
	lui	a2, %hi(.L.str.15)
	addi	a2, a2, %lo(.L.str.15)
	addi	a0, sp, 648
	li	a1, 1000
	mv	a3, s0
	call	strftime
	ld	a0, %lo(p_log)(s1)
	lui	a1, %hi(.L.str.16)
	addi	a1, a1, %lo(.L.str.16)
	addi	a2, sp, 648
	call	fprintf
	lui	a2, %hi(.L.str.17)
	addi	a2, a2, %lo(.L.str.17)
	addi	a0, sp, 648
	li	a1, 1000
	mv	a3, s0
	call	strftime
	ld	a0, %lo(p_log)(s1)
	lui	a1, %hi(.L.str.18)
	addi	a1, a1, %lo(.L.str.18)
	addi	a2, sp, 648
	call	fprintf
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	li	s1, 0
	addi	s0, a0, 228
	li	s3, -30
	addi	s4, sp, 1658
	li	s5, 30
.LBB11_146:                             # =>This Inner Loop Header: Depth=1
	mv	a0, s0
	call	strlen
	sext.w	a1, a0
	slti	a1, a1, 30
	add	a0, a0, s3
	addi	a1, a1, -1
	and	a0, a1, a0
	addw	a0, a0, s1
	add	a0, s0, a0
	lbu	a0, 0(a0)
	add	a1, s4, s1
	addi	s1, s1, 1
	sb	a0, 0(a1)
	bne	s1, s5, .LBB11_146
# %bb.147:
	lui	s3, %hi(p_log)
	ld	a0, %lo(p_log)(s3)
	lui	a1, %hi(.L.str.173)
	addi	a1, a1, %lo(.L.str.173)
	addi	a2, sp, 1658
	call	fprintf
	lui	s1, %hi(input)
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(p_log)(s3)
	lw	a2, 8(a1)
	lui	a1, %hi(.L.str.174)
	addi	a1, a1, %lo(.L.str.174)
	call	fprintf
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(p_log)(s3)
	addi	a1, a1, 2047
	lw	a2, 1505(a1)
	lw	a3, 1509(a1)
	lui	a1, %hi(.L.str.21)
	addi	a1, a1, %lo(.L.str.21)
	call	fprintf
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(p_log)(s3)
	lw	a2, 12(a1)
	lui	s0, %hi(.L.str.175)
	addi	s0, s0, %lo(.L.str.175)
	mv	a1, s0
	call	fprintf
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(p_log)(s3)
	lw	a2, 16(a1)
	mv	a1, s0
	call	fprintf
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(p_log)(s3)
	lw	a2, 1248(a1)
	mv	a1, s0
	call	fprintf
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(p_log)(s3)
	lw	a2, 68(a1)
	lw	a3, 72(a1)
	lui	a1, %hi(.L.str.176)
	addi	a1, a1, %lo(.L.str.176)
	call	fprintf
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(p_log)(s3)
	lw	a2, 1228(a1)
	lui	a1, %hi(.L.str.177)
	addi	a1, a1, %lo(.L.str.177)
	call	fprintf
	lui	a0, %hi(stats)
	ld	a1, %lo(stats)(a0)
	ld	a0, %lo(p_log)(s3)
	lw	a2, 688(a1)
	lui	a1, %hi(.L.str.20)
	addi	a1, a1, %lo(.L.str.20)
	call	fprintf
	ld	a0, %lo(input)(s1)
	addi	a0, a0, 2047
	lw	a1, 1917(a0)
	ld	a3, %lo(p_log)(s3)
	addiw	a1, a1, -1
	lui	s0, %hi(.L.str.181)
	addi	s0, s0, %lo(.L.str.181)
	li	a2, 2
	mv	a0, s0
	bltu	a2, a1, .LBB11_149
# %bb.148:
	slli	a1, a1, 3
	lui	a0, %hi(.Lswitch.table.report)
	addi	a0, a0, %lo(.Lswitch.table.report)
	add	a0, a0, a1
	ld	a0, 0(a0)
.LBB11_149:
	li	a1, 7
	li	a2, 1
	li	s5, 1
	call	fwrite
	ld	a0, %lo(input)(s1)
	lw	a0, 24(a0)
	bne	a0, s5, .LBB11_151
# %bb.150:
	lui	s0, %hi(.L.str.183)
	addi	s0, s0, %lo(.L.str.183)
.LBB11_151:
	li	a1, 2
	bne	a0, a1, .LBB11_153
# %bb.152:
	lui	s0, %hi(.L.str.182)
	addi	s0, s0, %lo(.L.str.182)
.LBB11_153:
	lui	s3, %hi(p_log)
	ld	a3, %lo(p_log)(s3)
	li	a1, 7
	li	a2, 1
	mv	a0, s0
	call	fwrite
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(p_log)(s3)
	lw	a2, 32(a1)
	lui	a1, %hi(.L.str.184)
	addi	a1, a1, %lo(.L.str.184)
	call	fprintf
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(p_log)(s3)
	lw	a2, 36(a1)
	lui	a1, %hi(.L.str.185)
	addi	a1, a1, %lo(.L.str.185)
	call	fprintf
	lui	s4, %hi(stats)
	ld	a0, %lo(stats)(s4)
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a0, 688(a0)
	ld	a2, %lo(input)(s1)
	flw	fa5, 48(a1)
	addi	a0, a0, 1
	lw	a1, 20(a2)
	fcvt.s.w	fa4, a0
	ld	a0, %lo(p_log)(s3)
	fmul.s	fa5, fa5, fa4
	addi	a1, a1, 1
	fcvt.s.w	fa4, a1
	fdiv.s	fa5, fa5, fa4
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.186)
	addi	a1, a1, %lo(.L.str.186)
	call	fprintf
	ld	a0, %lo(input)(s1)
	addi	a0, a0, 2047
	lw	a0, 937(a0)
	beqz	a0, .LBB11_155
# %bb.154:
	lui	a0, %hi(.L.str.188)
	addi	a0, a0, %lo(.L.str.188)
	j	.LBB11_156
.LBB11_155:
	lui	a0, %hi(.L.str.187)
	addi	a0, a0, %lo(.L.str.187)
.LBB11_156:
	ld	a3, %lo(p_log)(s3)
	li	a1, 7
	li	a2, 1
	call	fwrite
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(p_log)(s3)
	addi	a1, a1, 2047
	lw	a2, 1089(a1)
	lui	a1, %hi(.L.str.189)
	addi	a1, a1, %lo(.L.str.189)
	call	fprintf
	ld	a0, %lo(input)(s1)
	lw	a0, 80(a0)
	beq	a0, s5, .LBB11_158
# %bb.157:
	lui	a0, %hi(.L.str.191)
	addi	a0, a0, %lo(.L.str.191)
	j	.LBB11_159
.LBB11_158:
	lui	a0, %hi(.L.str.190)
	addi	a0, a0, %lo(.L.str.190)
.LBB11_159:
	ld	a3, %lo(p_log)(s3)
	li	a1, 10
	li	a2, 1
	call	fwrite
	ld	a1, %lo(input)(s1)
	ld	a0, %lo(p_log)(s3)
	addi	a1, a1, 2047
	lw	a2, 1845(a1)
	lui	a1, %hi(.L.str.192)
	addi	a1, a1, %lo(.L.str.192)
	call	fprintf
	lui	s5, %hi(snr)
	ld	a0, %lo(snr)(s5)
	flw	fa5, 12(a0)
	ld	a0, %lo(p_log)(s3)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	s0, %hi(.L.str.193)
	addi	s0, s0, %lo(.L.str.193)
	mv	a1, s0
	call	fprintf
	ld	a0, %lo(snr)(s5)
	flw	fa5, 16(a0)
	ld	a0, %lo(p_log)(s3)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a0, %lo(snr)(s5)
	flw	fa5, 20(a0)
	ld	a0, %lo(p_log)(s3)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a0, %lo(snr)(s5)
	flw	fa5, 84(a0)
	ld	a0, %lo(p_log)(s3)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a0, %lo(snr)(s5)
	flw	fa5, 88(a0)
	ld	a0, %lo(p_log)(s3)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a0, %lo(snr)(s5)
	flw	fa5, 92(a0)
	ld	a0, %lo(p_log)(s3)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a0, %lo(stats)(s4)
	flw	fa5, 724(a0)
	ld	a0, %lo(p_log)(s3)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	s0, %hi(.L.str.194)
	addi	s0, s0, %lo(.L.str.194)
	mv	a1, s0
	call	fprintf
	ld	a0, %lo(stats)(s4)
	flw	fa5, 728(a0)
	ld	a0, %lo(p_log)(s3)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a0, %lo(stats)(s4)
	flw	fa5, 732(a0)
	ld	a0, %lo(p_log)(s3)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	mv	a1, s0
	call	fprintf
	ld	a0, %lo(stats)(s4)
	flw	fa5, 12(a0)
	ld	a0, %lo(p_log)(s3)
	fcvt.d.s	fa5, fa5
	fmv.x.d	a2, fa5
	lui	a1, %hi(.L.str.195)
	addi	a1, a1, %lo(.L.str.195)
	call	fprintf
	ld	a0, %lo(p_log)(s3)
	lui	a1, %hi(tot_time)
	lw	a2, %lo(tot_time)(a1)
	lui	a1, %hi(.L.str.196)
	addi	a1, a1, %lo(.L.str.196)
	call	fprintf
	ld	a0, %lo(p_log)(s3)
	lui	a1, %hi(me_tot_time)
	lw	a2, %lo(me_tot_time)(a1)
	lui	a1, %hi(.L.str.197)
	addi	a1, a1, %lo(.L.str.197)
	call	fprintf
	ld	a0, %lo(p_log)(s3)
	call	fclose
	lui	a0, %hi(.L.str.198)
	addi	a0, a0, %lo(.L.str.198)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	call	fopen64
	ld	a1, %lo(stats)(s4)
	ld	a4, %lo(input)(s1)
	lw	a3, 688(a1)
	lw	a2, 8(a4)
	sd	a0, %lo(p_log)(s3)
	beqz	a3, .LBB11_162
# %bb.160:
	lw	a5, %lo(frame_ctr+4)(s2)
	beqz	a5, .LBB11_162
# %bb.161:
	lui	a3, %hi(snr)
	ld	a6, %lo(snr)(a3)
	lw	a3, 12(a4)
	flw	fa5, 12(a6)
	flw	fa4, 16(a6)
	flw	fa3, 20(a6)
	lw	a4, 16(a4)
	fcvt.d.s	fa5, fa5
	fcvt.d.s	fa4, fa4
	fcvt.d.s	fa3, fa3
	lw	a7, 712(a1)
	flw	fa2, 84(a6)
	flw	fa1, 88(a6)
	flw	fa0, 92(a6)
	lw	a6, 16(a1)
	fcvt.d.s	fa2, fa2
	fcvt.d.s	fa1, fa1
	fcvt.d.s	fa0, fa0
	add	a6, a6, a7
	lw	a1, 720(a1)
	lui	t0, %hi(.LCPI11_0)
	fld	ft0, %lo(.LCPI11_0)(t0)
	lui	t0, %hi(tot_time)
	lw	t0, %lo(tot_time)(t0)
	divw	a1, a1, a5
	add	a5, a2, a5
	divw	a6, a6, a5
	fcvt.d.w	ft1, t0
	fmul.d	ft0, ft1, ft0
	fcvt.d.w	ft1, a5
	fdiv.d	ft0, ft0, ft1
	fsd	ft0, 80(sp)
	sd	a1, 72(sp)
	sd	a6, 64(sp)
	fsd	fa0, 56(sp)
	fsd	fa1, 48(sp)
	fsd	fa2, 40(sp)
	sd	zero, 32(sp)
	sd	zero, 24(sp)
	sd	zero, 16(sp)
	sd	a7, 0(sp)
	j	.LBB11_164
.LBB11_162:
	beqz	a2, .LBB11_165
# %bb.163:
	lui	a3, %hi(snr)
	ld	a5, %lo(snr)(a3)
	flw	fa5, 12(a5)
	lw	a3, 12(a4)
	flw	fa4, 16(a5)
	lw	a4, 16(a4)
	fcvt.d.s	fa5, fa5
	flw	fa3, 20(a5)
	fcvt.d.s	fa4, fa4
	flw	fa2, 84(a5)
	flw	fa1, 88(a5)
	fcvt.d.s	fa3, fa3
	lw	a6, 712(a1)
	fcvt.d.s	fa2, fa2
	fcvt.d.s	fa1, fa1
	flw	fa0, 92(a5)
	lw	a1, 16(a1)
	lui	a5, %hi(.LCPI11_0)
	fld	ft0, %lo(.LCPI11_0)(a5)
	lui	a5, %hi(tot_time)
	lw	a5, %lo(tot_time)(a5)
	fcvt.d.s	fa0, fa0
	add	a1, a1, a6
	divw	a1, a1, a2
	fcvt.d.w	ft1, a5
	fmul.d	ft0, ft1, ft0
	fcvt.d.w	ft1, a2
	fdiv.d	ft0, ft0, ft1
	fsd	ft0, 80(sp)
	sd	zero, 72(sp)
	sd	a1, 64(sp)
	fsd	fa0, 56(sp)
	fsd	fa1, 48(sp)
	fsd	fa2, 40(sp)
	sd	zero, 32(sp)
	sd	zero, 24(sp)
	sd	zero, 16(sp)
	sd	a6, 0(sp)
.LBB11_164:
	fmv.x.d	a5, fa5
	fmv.x.d	a6, fa4
	fmv.x.d	a7, fa3
	lui	a1, %hi(.L.str.199)
	addi	a1, a1, %lo(.L.str.199)
	sd	zero, 8(sp)
	call	fprintf
.LBB11_165:
	lui	s0, %hi(p_log)
	ld	a0, %lo(p_log)(s0)
	call	fclose
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1849(a0)
	beqz	a0, .LBB11_169
# %bb.166:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	call	fopen64
	sd	a0, %lo(p_log)(s0)
	beqz	a0, .LBB11_168
# %bb.167:
	mv	a3, a0
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	li	a1, 468
	li	a2, 1
	call	fwrite
	lui	a0, %hi(p_log)
	ld	a0, %lo(p_log)(a0)
	call	fclose
	j	.LBB11_169
.LBB11_168:
	lui	a0, %hi(errortext)
	addi	a0, a0, %lo(errortext)
	lui	a2, %hi(.L.str.7)
	addi	a2, a2, %lo(.L.str.7)
	lui	a3, %hi(.L.str.8)
	addi	a3, a3, %lo(.L.str.8)
	li	a1, 300
	call	snprintf
.LBB11_169:
	ld	ra, 1832(sp)                    # 8-byte Folded Reload
	ld	s0, 1824(sp)                    # 8-byte Folded Reload
	ld	s1, 1816(sp)                    # 8-byte Folded Reload
	ld	s2, 1808(sp)                    # 8-byte Folded Reload
	ld	s3, 1800(sp)                    # 8-byte Folded Reload
	ld	s4, 1792(sp)                    # 8-byte Folded Reload
	ld	s5, 1784(sp)                    # 8-byte Folded Reload
	ld	s6, 1776(sp)                    # 8-byte Folded Reload
	ld	s7, 1768(sp)                    # 8-byte Folded Reload
	ld	s8, 1760(sp)                    # 8-byte Folded Reload
	ld	s9, 1752(sp)                    # 8-byte Folded Reload
	ld	s10, 1744(sp)                   # 8-byte Folded Reload
	ld	s11, 1736(sp)                   # 8-byte Folded Reload
	fld	fs0, 1728(sp)                   # 8-byte Folded Reload
	fld	fs1, 1720(sp)                   # 8-byte Folded Reload
	fld	fs2, 1712(sp)                   # 8-byte Folded Reload
	fld	fs3, 1704(sp)                   # 8-byte Folded Reload
	fld	fs4, 1696(sp)                   # 8-byte Folded Reload
	fld	fs5, 1688(sp)                   # 8-byte Folded Reload
	addi	sp, sp, 1840
	ret
.LBB11_170:
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s9, 112(sp)                     # 8-byte Folded Spill
	sd	s7, 120(sp)                     # 8-byte Folded Spill
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	li	s3, 0
	li	a0, 73
	sh	a0, 648(sp)
	li	s1, 79
	lui	s6, %hi(.L.str.44)
	addi	s6, s6, %lo(.L.str.44)
	lui	s4, %hi(.L.str.45)
	addi	s4, s4, %lo(.L.str.45)
	j	.LBB11_172
.LBB11_171:                             #   in Loop: Header=BB11_172 Depth=1
	subw	a0, s1, a0
	sgtz	a2, a0
	neg	a2, a2
	and	a2, a2, a0
	addi	a0, sp, 648
	call	strncat
	lw	a0, 688(s11)
	addiw	s3, s3, 1
	bge	s3, a0, .LBB11_174
.LBB11_172:                             # =>This Inner Loop Header: Depth=1
	lw	s7, 1940(s5)
	addi	a0, sp, 648
	call	strlen
	mv	a1, s4
	beqz	s7, .LBB11_171
# %bb.173:                              #   in Loop: Header=BB11_172 Depth=1
	mv	a1, s6
	j	.LBB11_171
.LBB11_174:
	addi	a0, sp, 648
	call	strlen
	li	s3, 79
	subw	a0, s3, a0
	sgtz	a1, a0
	neg	a2, a1
	and	a2, a2, a0
	lui	a1, %hi(.L.str.46)
	addi	a1, a1, %lo(.L.str.46)
	addi	a0, sp, 648
	call	strncat
	lw	a0, 688(s11)
	blez	a0, .LBB11_179
# %bb.175:                              # %.preheader
	li	s1, 0
	lui	s6, %hi(.L.str.44)
	addi	s6, s6, %lo(.L.str.44)
	lui	s4, %hi(.L.str.45)
	addi	s4, s4, %lo(.L.str.45)
	j	.LBB11_177
.LBB11_176:                             #   in Loop: Header=BB11_177 Depth=1
	subw	a0, s3, a0
	sgtz	a2, a0
	neg	a2, a2
	and	a2, a2, a0
	addi	a0, sp, 648
	call	strncat
	lw	a0, 688(s11)
	addiw	s1, s1, 1
	bge	s1, a0, .LBB11_179
.LBB11_177:                             # =>This Inner Loop Header: Depth=1
	lw	s7, 1940(s5)
	addi	a0, sp, 648
	call	strlen
	mv	a1, s4
	beqz	s7, .LBB11_176
# %bb.178:                              #   in Loop: Header=BB11_177 Depth=1
	mv	a1, s6
	j	.LBB11_176
.LBB11_179:
	addi	a0, sp, 648
	call	strlen
	subw	a0, s3, a0
	sgtz	a1, a0
	neg	a2, a1
	and	a2, a2, a0
	lui	a1, %hi(.L.str.46)
	addi	a1, a1, %lo(.L.str.46)
	addi	a0, sp, 648
	call	strncat
	lw	a1, 1940(s5)
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	lw	a3, 12(s5)
	lw	a4, 16(s5)
	lw	a5, 1248(s5)
	beqz	a1, .LBB11_183
# %bb.180:
	lw	a1, 1252(s5)
	addw	a1, a1, a5
	li	a2, 51
	mv	s4, s8
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	blt	a1, a2, .LBB11_182
# %bb.181:
	li	a1, 51
.LBB11_182:
	sgtz	a2, a1
	neg	a5, a2
	and	a5, a5, a1
	lui	a1, %hi(.L.str.47)
	addi	a1, a1, %lo(.L.str.47)
	addi	a2, sp, 648
	call	fprintf
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	ld	s9, 112(sp)                     # 8-byte Folded Reload
	j	.LBB11_26
.LBB11_183:
	lui	a1, %hi(.L.str.48)
	addi	a1, a1, %lo(.L.str.48)
	addi	a2, sp, 648
	call	fprintf
	mv	s4, s8
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	ld	s9, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	j	.LBB11_26
.LBB11_184:
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	lw	a2, 12(a1)
	lw	a3, 16(a1)
	lui	a1, %hi(.L.str.49)
	addi	a1, a1, %lo(.L.str.49)
	call	fprintf
	j	.LBB11_25
.Lfunc_end11:
	.size	report, .Lfunc_end11-report
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_picture                    # -- Begin function free_picture
	.p2align	2
	.type	free_picture,@function
free_picture:                           # @free_picture
# %bb.0:
	beqz	a0, .LBB12_2
# %bb.1:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	call	free_slice_list
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.LBB12_2:
	ret
.Lfunc_end12:
	.size	free_picture, .Lfunc_end12-free_picture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_global_buffers             # -- Begin function free_global_buffers
	.p2align	2
	.type	free_global_buffers,@function
free_global_buffers:                    # @free_global_buffers
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
	lui	a0, %hi(last_P_no_frm)
	ld	a0, %lo(last_P_no_frm)(a0)
	call	free
	lui	a0, %hi(last_P_no_fld)
	ld	a0, %lo(last_P_no_fld)(a0)
	call	free
	call	free_orig_planes
	lui	a0, %hi(yPicPos)
	ld	a0, %lo(yPicPos)(a0)
	call	free
	lui	a0, %hi(xPicPos)
	ld	a0, %lo(xPicPos)(a0)
	call	free
	call	free_QMatrix
	call	free_QOffsets
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a1, 1904(a0)
	bnez	a1, .LBB13_3
# %bb.1:
	lw	a1, 1908(a0)
	bnez	a1, .LBB13_3
# %bb.2:
	lw	a0, 64(a0)
	beqz	a0, .LBB13_4
.LBB13_3:
	lui	a0, %hi(wp_weight)
	ld	a0, %lo(wp_weight)(a0)
	li	a1, 6
	call	free_mem3Dint
	lui	a0, %hi(wp_offset)
	ld	a0, %lo(wp_offset)(a0)
	li	a1, 6
	call	free_mem3Dint
	lui	a0, %hi(wbp_weight)
	ld	a0, %lo(wbp_weight)(a0)
	li	a1, 6
	li	a2, 32
	call	free_mem4Dint
.LBB13_4:
	lui	a0, %hi(stats)
	ld	a0, %lo(stats)(a0)
	lw	a0, 688(a0)
	bnez	a0, .LBB13_6
# %bb.5:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	lw	a0, 1940(a0)
	blez	a0, .LBB13_7
.LBB13_6:
	lui	a0, %hi(direct_ref_idx)
	ld	a0, %lo(direct_ref_idx)(a0)
	li	a1, 2
	call	free_mem3D
	lui	a0, %hi(direct_pdir)
	ld	a0, %lo(direct_pdir)(a0)
	call	free_mem2Dshort
.LBB13_7:
	lui	a0, %hi(img4Y_tmp)
	ld	a0, %lo(img4Y_tmp)(a0)
	call	free_mem2Dint
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	ld	a0, 104(a0)
	call	free_mem2D
	ld	a0, %lo(img)(s0)
	ld	a0, 112(a0)
	call	free_mem2D
	ld	a0, %lo(img)(s0)
	lui	a1, 8
	add	a0, a0, a1
	ld	a0, -1192(a0)
	call	free
	lui	a0, %hi(rddata_top_frame_mb+1600)
	ld	a0, %lo(rddata_top_frame_mb+1600)(a0)
	call	free_mem2D
	lui	s1, %hi(input)
	ld	a0, %lo(input)(s1)
	lw	a1, 220(a0)
	beqz	a1, .LBB13_9
# %bb.8:
	ld	a0, %lo(img)(s0)
	lui	a1, 22
	add	a0, a0, a1
	ld	a0, -920(a0)
	call	free
	ld	a0, %lo(input)(s1)
.LBB13_9:
	addi	a1, a0, 2047
	lw	a1, 1089(a1)
	li	a2, 3
	bne	a1, a2, .LBB13_17
# %bb.10:
	lui	s0, %hi(decs)
	ld	a0, %lo(decs)(s0)
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(decs)(s0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(decs)(s0)
	ld	a0, 32(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(decs)(s0)
	ld	a0, 32(a0)
	call	free
	lui	s1, %hi(input)
	ld	a0, %lo(input)(s1)
	addi	a0, a0, 2047
	lw	a0, 1529(a0)
	blez	a0, .LBB13_16
# %bb.11:                               # %.preheader1
	li	s2, 0
	lui	s3, %hi(img)
	j	.LBB13_13
.LBB13_12:                              #   in Loop: Header=BB13_13 Depth=1
	ld	a0, %lo(decs)(s0)
	ld	a0, 16(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(input)(s1)
	addi	a0, a0, 2047
	lw	a0, 1529(a0)
	addi	s2, s2, 1
	bge	s2, a0, .LBB13_16
.LBB13_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_15 Depth 2
	ld	a0, %lo(decs)(s0)
	ld	a0, 8(a0)
	slli	s4, s2, 3
	add	a0, a0, s4
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(decs)(s0)
	ld	a0, 8(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(decs)(s0)
	ld	a0, 24(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(decs)(s0)
	ld	a0, 24(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(img)(s3)
	lw	a0, 36(a0)
	bltz	a0, .LBB13_12
# %bb.14:                               # %.preheader
                                        #   in Loop: Header=BB13_13 Depth=1
	li	s5, 0
	li	s6, -1
.LBB13_15:                              #   Parent Loop BB13_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(decs)(s0)
	ld	a0, 16(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	add	a0, a0, s5
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(decs)(s0)
	ld	a0, 16(a0)
	add	a0, a0, s4
	ld	a0, 0(a0)
	add	a0, a0, s5
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(img)(s3)
	lw	a0, 36(a0)
	addi	s6, s6, 1
	addi	s5, s5, 8
	blt	s6, a0, .LBB13_15
	j	.LBB13_12
.LBB13_16:
	ld	a0, %lo(decs)(s0)
	ld	a0, 8(a0)
	call	free
	ld	a0, %lo(decs)(s0)
	ld	a0, 24(a0)
	call	free
	ld	a0, %lo(decs)(s0)
	ld	a0, 16(a0)
	call	free
	ld	a0, %lo(decs)(s0)
	ld	a0, 40(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(decs)(s0)
	ld	a0, 40(a0)
	call	free
	ld	a0, %lo(decs)(s0)
	ld	a0, 48(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(decs)(s0)
	ld	a0, 48(a0)
	call	free
	ld	a0, %lo(input)(s1)
.LBB13_17:
	addi	a0, a0, 2047
	lw	a0, 1533(a0)
	beqz	a0, .LBB13_19
# %bb.18:
	lui	s0, %hi(pixel_map)
	ld	a0, %lo(pixel_map)(s0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(pixel_map)(s0)
	call	free
	lui	s0, %hi(refresh_map)
	ld	a0, %lo(refresh_map)(s0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(refresh_map)(s0)
	call	free
.LBB13_19:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	bnez	a0, .LBB13_22
# %bb.20:
	lui	a0, %hi(imgY_com)
	ld	a0, %lo(imgY_com)(a0)
	call	free_mem2Dpel
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 436(a0)
	beqz	a0, .LBB13_22
# %bb.21:
	lui	a0, %hi(imgUV_com)
	ld	a0, %lo(imgUV_com)(a0)
	li	a1, 2
	call	free_mem3Dpel
.LBB13_22:
	lui	s0, %hi(img)
	ld	a1, %lo(img)(s0)
	ld	a0, 128(a1)
	lui	s1, 22
	add	a1, a1, s1
	lw	a1, 196(a1)
	call	free_mem3Dint
	ld	a0, %lo(img)(s0)
	addiw	s1, s1, 380
	add	a1, a0, s1
	ld	a0, 12(a1)
	lw	a1, 0(a1)
	call	free_mem2Ddb_offset
	ld	a0, %lo(img)(s0)
	add	a1, a0, s1
	ld	a0, 20(a1)
	lw	a1, 0(a1)
	call	free_mem2Ddb_offset
	ld	a0, %lo(img)(s0)
	add	s1, a0, s1
	ld	a0, 28(s1)
	lw	a1, 0(s1)
	call	free_mem2Dint_offset
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1917(a0)
	li	a1, 3
	beq	a0, a1, .LBB13_27
# %bb.23:
	li	a1, 2
	beq	a0, a1, .LBB13_26
# %bb.24:
	li	a1, 1
	bne	a0, a1, .LBB13_28
# %bb.25:
	call	free_mem_FME
	j	.LBB13_28
.LBB13_26:
	call	simplified_free_mem_FME
	j	.LBB13_28
.LBB13_27:
	call	EPZSDelete
.LBB13_28:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1861(a0)
	beqz	a0, .LBB13_30
# %bb.29:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	tail	rc_free
.LBB13_30:
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
.Lfunc_end13:
	.size	free_global_buffers, .Lfunc_end13-free_global_buffers
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_img                        # -- Begin function free_img
	.p2align	2
	.type	free_img,@function
free_img:                               # @free_img
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	call	CloseSEIMessages
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lui	s2, 22
	add	a0, a0, s2
	ld	a0, -784(a0)
	call	free_mem_mv
	ld	a0, %lo(img)(s0)
	add	a0, a0, s2
	ld	a0, -776(a0)
	call	free_mem_mv
	lui	s1, %hi(input)
	ld	a0, %lo(input)(s1)
	lw	a0, 1264(a0)
	beqz	a0, .LBB14_2
# %bb.1:
	ld	a0, %lo(img)(s0)
	add	a0, a0, s2
	ld	a0, -768(a0)
	call	free_mem_mv
	ld	a0, %lo(img)(s0)
	add	a0, a0, s2
	ld	a0, -760(a0)
	call	free_mem_mv
.LBB14_2:
	ld	a0, %lo(img)(s0)
	lui	s2, 3
	add	a0, a0, s2
	ld	a0, 1848(a0)
	call	free_mem_ACcoeff
	ld	a0, %lo(img)(s0)
	add	a0, a0, s2
	ld	a0, 1856(a0)
	call	free_mem_DCcoeff
	ld	a0, %lo(input)(s1)
	addi	a0, a0, 2047
	lw	a0, 1509(a0)
	lui	s2, %hi(rddata_bot_frame_mb)
	addi	s2, s2, %lo(rddata_bot_frame_mb)
	lui	s1, %hi(rddata_top_field_mb)
	addi	s1, s1, %lo(rddata_top_field_mb)
	lui	s0, %hi(rddata_bot_field_mb)
	addi	s0, s0, %lo(rddata_bot_field_mb)
	beqz	a0, .LBB14_4
# %bb.3:
	lui	s3, %hi(rddata_top_frame_mb)
	addi	s3, s3, %lo(rddata_top_frame_mb)
	ld	a0, 1648(s3)
	call	free_mem_mv
	ld	a0, 1656(s3)
	call	free_mem_mv
	ld	a0, 1648(s2)
	call	free_mem_mv
	ld	a0, 1656(s2)
	call	free_mem_mv
	ld	a0, 1648(s1)
	call	free_mem_mv
	ld	a0, 1656(s1)
	call	free_mem_mv
	ld	a0, 1648(s0)
	call	free_mem_mv
	ld	a0, 1656(s0)
	call	free_mem_mv
	ld	a0, 1544(s3)
	call	free_mem_ACcoeff
	ld	a0, 1552(s3)
	call	free_mem_DCcoeff
	ld	a0, 1544(s2)
	call	free_mem_ACcoeff
	ld	a0, 1552(s2)
	call	free_mem_DCcoeff
	ld	a0, 1544(s1)
	call	free_mem_ACcoeff
	ld	a0, 1552(s1)
	call	free_mem_DCcoeff
	ld	a0, 1544(s0)
	call	free_mem_ACcoeff
	ld	a0, 1552(s0)
	call	free_mem_DCcoeff
.LBB14_4:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	addiw	a1, a1, -928
	add	a0, a0, a1
	lw	a1, 1348(a0)
	lw	a2, 1352(a0)
	ld	a0, 0(a0)
	blt	a2, a1, .LBB14_6
# %bb.5:
	mv	a1, a2
.LBB14_6:
	not	a1, a1
	slli	a1, a1, 2
	add	a0, a0, a1
	call	free
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1509(a0)
	beqz	a0, .LBB14_8
# %bb.7:
	ld	a0, 1600(s2)
	call	free_mem2D
	ld	a0, 1600(s1)
	call	free_mem2D
	ld	a0, 1600(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	free_mem2D
.LBB14_8:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end14:
	.size	free_img, .Lfunc_end14-free_img
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	report_stats_on_error           # -- Begin function report_stats_on_error
	.p2align	2
	.type	report_stats_on_error,@function
report_stats_on_error:                  # @report_stats_on_error
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 0(a0)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	sw	a0, 8(a1)
	call	terminate_sequence
	call	flush_dpb
	lui	a0, %hi(p_in)
	lw	a0, %lo(p_in)(a0)
	call	close
	lui	a0, %hi(p_dec)
	lw	a0, %lo(p_dec)(a0)
	li	a1, -1
	beq	a0, a1, .LBB15_2
# %bb.1:
	call	close
.LBB15_2:
	lui	a0, %hi(p_trace)
	ld	a0, %lo(p_trace)(a0)
	beqz	a0, .LBB15_4
# %bb.3:
	call	fclose
.LBB15_4:
	call	Clear_Motion_Search_Module
	call	RandomIntraUninit
	call	FmoUninit
	lui	s0, %hi(input)
	ld	a0, %lo(input)(s0)
	lw	a0, 1944(a0)
	beqz	a0, .LBB15_6
# %bb.5:
	call	clear_gop_structure
.LBB15_6:
	call	clear_rdopt
	call	calc_buffer
	ld	a0, %lo(input)(s0)
	addi	a0, a0, 2047
	lw	a0, 1849(a0)
	beqz	a0, .LBB15_8
# %bb.7:
	call	report_frame_statistic
.LBB15_8:
	call	report
	lui	a0, %hi(frame_pic_1)
	ld	s0, %lo(frame_pic_1)(a0)
	beqz	s0, .LBB15_10
# %bb.9:
	mv	a0, s0
	call	free_slice_list
	mv	a0, s0
	call	free
.LBB15_10:
	lui	a0, %hi(top_pic)
	ld	s0, %lo(top_pic)(a0)
	beqz	s0, .LBB15_12
# %bb.11:
	mv	a0, s0
	call	free_slice_list
	mv	a0, s0
	call	free
.LBB15_12:
	lui	a0, %hi(bottom_pic)
	ld	s0, %lo(bottom_pic)(a0)
	beqz	s0, .LBB15_14
# %bb.13:
	mv	a0, s0
	call	free_slice_list
	mv	a0, s0
	call	free
.LBB15_14:
	call	free_dpb
	lui	a0, %hi(Co_located)
	ld	a0, %lo(Co_located)(a0)
	call	free_colocated
	call	uninit_out_buffer
	call	free_global_buffers
	call	free_img
	call	free_context_memory
	call	FreeNalPayloadBuffer
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	FreeParameterSets
.Lfunc_end15:
	.size	report_stats_on_error, .Lfunc_end15-report_stats_on_error
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	CAVLC_init                      # -- Begin function CAVLC_init
	.p2align	2
	.type	CAVLC_init,@function
CAVLC_init:                             # @CAVLC_init
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	addiw	a1, a1, 192
	add	a1, a0, a1
	lw	a2, 0(a1)
	beqz	a2, .LBB16_15
# %bb.1:
	lw	a4, 236(a1)
	li	a2, 0
	j	.LBB16_3
.LBB16_2:                               #   in Loop: Header=BB16_3 Depth=1
	lwu	a3, 0(a1)
	addi	a2, a2, 1
	bgeu	a2, a3, .LBB16_15
.LBB16_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_5 Depth 2
                                        #     Child Loop BB16_8 Depth 2
                                        #     Child Loop BB16_11 Depth 2
                                        #     Child Loop BB16_14 Depth 2
	mv	a3, a4
	li	a4, -4
	beq	a3, a4, .LBB16_2
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=1
	ld	a4, 128(a0)
	slli	a3, a2, 3
	add	a4, a4, a3
	ld	a4, 0(a4)
	ld	a4, 0(a4)
	li	a5, 0
.LBB16_5:                               #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	zero, 0(a4)
	lw	a6, 236(a1)
	addi	a5, a5, 1
	addi	a7, a6, 4
	slli	a7, a7, 32
	srli	a7, a7, 32
	addi	a4, a4, 4
	bltu	a5, a7, .LBB16_5
# %bb.6:                                #   in Loop: Header=BB16_3 Depth=1
	li	a4, -4
	beq	a6, a4, .LBB16_2
# %bb.7:                                #   in Loop: Header=BB16_3 Depth=1
	ld	a4, 128(a0)
	add	a4, a4, a3
	ld	a4, 0(a4)
	ld	a4, 8(a4)
	li	a5, 0
.LBB16_8:                               #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	zero, 0(a4)
	lw	a6, 236(a1)
	addi	a5, a5, 1
	addi	a7, a6, 4
	slli	a7, a7, 32
	srli	a7, a7, 32
	addi	a4, a4, 4
	bltu	a5, a7, .LBB16_8
# %bb.9:                                #   in Loop: Header=BB16_3 Depth=1
	li	a4, -4
	beq	a6, a4, .LBB16_2
# %bb.10:                               #   in Loop: Header=BB16_3 Depth=1
	ld	a4, 128(a0)
	add	a4, a4, a3
	ld	a4, 0(a4)
	ld	a4, 16(a4)
	li	a5, 0
.LBB16_11:                              #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	zero, 0(a4)
	lw	a6, 236(a1)
	addi	a5, a5, 1
	addi	a7, a6, 4
	slli	a7, a7, 32
	srli	a7, a7, 32
	addi	a4, a4, 4
	bltu	a5, a7, .LBB16_11
# %bb.12:                               #   in Loop: Header=BB16_3 Depth=1
	li	a4, -4
	beq	a6, a4, .LBB16_2
# %bb.13:                               #   in Loop: Header=BB16_3 Depth=1
	ld	a4, 128(a0)
	add	a3, a4, a3
	ld	a3, 0(a3)
	ld	a3, 24(a3)
	li	a5, 0
.LBB16_14:                              #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sw	zero, 0(a3)
	lw	a4, 236(a1)
	addi	a5, a5, 1
	addi	a6, a4, 4
	slli	a6, a6, 32
	srli	a6, a6, 32
	addi	a3, a3, 4
	bltu	a5, a6, .LBB16_14
	j	.LBB16_2
.LBB16_15:
	ret
.Lfunc_end16:
	.size	CAVLC_init, .Lfunc_end16-CAVLC_init
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem_mv                      # -- Begin function get_mem_mv
	.p2align	2
	.type	get_mem_mv,@function
get_mem_mv:                             # @get_mem_mv
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
	li	a0, 4
	li	a1, 8
	li	s2, 4
	call	calloc
	sd	a0, 0(s0)
	bnez	a0, .LBB17_2
# %bb.1:
	lui	a0, %hi(.L.str.219)
	addi	a0, a0, %lo(.L.str.219)
	call	no_mem_exit
.LBB17_2:
	li	s3, 0
	lui	s1, %hi(.L.str.219)
	addi	s1, s1, %lo(.L.str.219)
	lui	s4, %hi(img)
	j	.LBB17_4
.LBB17_3:                               #   in Loop: Header=BB17_4 Depth=1
	addi	s3, s3, 1
	beq	s3, s2, .LBB17_21
.LBB17_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_8 Depth 2
                                        #       Child Loop BB17_12 Depth 3
                                        #         Child Loop BB17_17 Depth 4
	li	a0, 4
	li	a1, 8
	call	calloc
	ld	a1, 0(s0)
	slli	s5, s3, 3
	add	a1, a1, s5
	sd	a0, 0(a1)
	bnez	a0, .LBB17_6
# %bb.5:                                #   in Loop: Header=BB17_4 Depth=1
	mv	a0, s1
	call	no_mem_exit
.LBB17_6:                               #   in Loop: Header=BB17_4 Depth=1
	li	s6, 0
	j	.LBB17_8
.LBB17_7:                               #   in Loop: Header=BB17_8 Depth=2
	addi	s6, s6, 1
	beq	s6, s2, .LBB17_3
.LBB17_8:                               #   Parent Loop BB17_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_12 Depth 3
                                        #         Child Loop BB17_17 Depth 4
	li	a0, 2
	li	a1, 8
	call	calloc
	ld	a1, 0(s0)
	add	a1, a1, s5
	ld	a1, 0(a1)
	slli	s7, s6, 3
	add	a1, a1, s7
	sd	a0, 0(a1)
	bnez	a0, .LBB17_10
# %bb.9:                                #   in Loop: Header=BB17_8 Depth=2
	mv	a0, s1
	call	no_mem_exit
.LBB17_10:                              #   in Loop: Header=BB17_8 Depth=2
	ld	a0, %lo(img)(s4)
	li	s9, 0
	li	s8, 1
	j	.LBB17_12
.LBB17_11:                              #   in Loop: Header=BB17_12 Depth=3
	andi	a2, s8, 1
	li	s9, 1
	li	s8, 0
	beqz	a2, .LBB17_7
.LBB17_12:                              #   Parent Loop BB17_4 Depth=1
                                        #     Parent Loop BB17_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB17_17 Depth 4
	lw	a0, 36(a0)
	li	a1, 8
	call	calloc
	ld	a1, 0(s0)
	add	a1, a1, s5
	ld	a1, 0(a1)
	add	a1, a1, s7
	ld	a1, 0(a1)
	slli	s9, s9, 3
	add	a1, a1, s9
	sd	a0, 0(a1)
	beqz	a0, .LBB17_14
# %bb.13:                               #   in Loop: Header=BB17_12 Depth=3
	ld	a0, %lo(img)(s4)
	lw	a1, 36(a0)
	bgtz	a1, .LBB17_15
	j	.LBB17_11
.LBB17_14:                              #   in Loop: Header=BB17_12 Depth=3
	mv	a0, s1
	call	no_mem_exit
	ld	a0, %lo(img)(s4)
	lw	a1, 36(a0)
	blez	a1, .LBB17_11
.LBB17_15:                              # %.preheader
                                        #   in Loop: Header=BB17_12 Depth=3
	li	s10, 0
	li	s11, 0
	j	.LBB17_17
.LBB17_16:                              #   in Loop: Header=BB17_17 Depth=4
	ld	a0, 0(s0)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s9
	ld	a0, 0(a0)
	add	a0, a0, s10
	ld	a0, 0(a0)
	ld	a1, 0(a0)
	addi	a1, a1, 4
	sd	a1, 8(a0)
	ld	a0, 0(s0)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s9
	ld	a0, 0(a0)
	add	a0, a0, s10
	ld	a0, 0(a0)
	ld	a1, 8(a0)
	addi	a1, a1, 4
	sd	a1, 16(a0)
	ld	a0, 0(s0)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s9
	ld	a0, 0(a0)
	add	a0, a0, s10
	ld	a0, 0(a0)
	ld	a1, 16(a0)
	addi	a1, a1, 4
	sd	a1, 24(a0)
	ld	a0, 0(s0)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s9
	ld	a0, 0(a0)
	add	a0, a0, s10
	ld	a0, 0(a0)
	ld	a1, 24(a0)
	addi	a1, a1, 4
	sd	a1, 32(a0)
	ld	a0, 0(s0)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s9
	ld	a0, 0(a0)
	add	a0, a0, s10
	ld	a0, 0(a0)
	ld	a1, 32(a0)
	addi	a1, a1, 4
	sd	a1, 40(a0)
	ld	a0, 0(s0)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s9
	ld	a0, 0(a0)
	add	a0, a0, s10
	ld	a0, 0(a0)
	ld	a1, 40(a0)
	addi	a1, a1, 4
	sd	a1, 48(a0)
	ld	a0, 0(s0)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s9
	ld	a0, 0(a0)
	add	a0, a0, s10
	ld	a0, 0(a0)
	ld	a1, 48(a0)
	addi	a1, a1, 4
	sd	a1, 56(a0)
	ld	a0, 0(s0)
	add	a0, a0, s5
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	add	a0, a0, s9
	ld	a0, 0(a0)
	add	a0, a0, s10
	ld	a0, 0(a0)
	ld	a1, 56(a0)
	addi	a1, a1, 4
	sd	a1, 64(a0)
	ld	a0, %lo(img)(s4)
	lw	a1, 36(a0)
	addi	s11, s11, 1
	addi	s10, s10, 8
	bge	s11, a1, .LBB17_11
.LBB17_17:                              #   Parent Loop BB17_4 Depth=1
                                        #     Parent Loop BB17_8 Depth=2
                                        #       Parent Loop BB17_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	li	a0, 9
	li	a1, 8
	call	calloc
	ld	a1, 0(s0)
	add	a1, a1, s5
	ld	a1, 0(a1)
	add	a1, a1, s7
	ld	a1, 0(a1)
	add	a1, a1, s9
	ld	a1, 0(a1)
	add	a1, a1, s10
	sd	a0, 0(a1)
	bnez	a0, .LBB17_19
# %bb.18:                               #   in Loop: Header=BB17_17 Depth=4
	mv	a0, s1
	call	no_mem_exit
.LBB17_19:                              #   in Loop: Header=BB17_17 Depth=4
	li	a0, 18
	li	a1, 2
	call	calloc
	ld	a1, 0(s0)
	add	a1, a1, s5
	ld	a1, 0(a1)
	add	a1, a1, s7
	ld	a1, 0(a1)
	add	a1, a1, s9
	ld	a1, 0(a1)
	add	a1, a1, s10
	ld	a1, 0(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB17_16
# %bb.20:                               #   in Loop: Header=BB17_17 Depth=4
	mv	a0, s1
	call	no_mem_exit
	j	.LBB17_16
.LBB17_21:
	li	a0, 576
	mulw	a0, a1, a0
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
.Lfunc_end17:
	.size	get_mem_mv, .Lfunc_end17-get_mem_mv
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem_ACcoeff                 # -- Begin function get_mem_ACcoeff
	.p2align	2
	.type	get_mem_ACcoeff,@function
get_mem_ACcoeff:                        # @get_mem_ACcoeff
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
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	s2, 428(a1)
	mv	s1, a0
	addiw	s0, s2, 4
	li	a1, 8
	mv	a0, s0
	call	calloc
	sd	a0, 0(s1)
	beqz	a0, .LBB18_2
# %bb.1:
	li	a0, -3
	bge	s2, a0, .LBB18_3
	j	.LBB18_15
.LBB18_2:
	lui	a0, %hi(.L.str.220)
	addi	a0, a0, %lo(.L.str.220)
	call	no_mem_exit
	li	a0, -3
	blt	s2, a0, .LBB18_15
.LBB18_3:
	li	s3, 0
	lui	s2, %hi(.L.str.220)
	addi	s2, s2, %lo(.L.str.220)
	li	s4, 32
	j	.LBB18_5
.LBB18_4:                               #   in Loop: Header=BB18_5 Depth=1
	addi	s3, s3, 1
	beq	s3, s0, .LBB18_15
.LBB18_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_9 Depth 2
	li	a0, 4
	li	a1, 8
	call	calloc
	ld	a1, 0(s1)
	slli	s5, s3, 3
	add	a1, a1, s5
	sd	a0, 0(a1)
	bnez	a0, .LBB18_7
# %bb.6:                                #   in Loop: Header=BB18_5 Depth=1
	mv	a0, s2
	call	no_mem_exit
.LBB18_7:                               #   in Loop: Header=BB18_5 Depth=1
	li	s6, 0
	j	.LBB18_9
.LBB18_8:                               #   in Loop: Header=BB18_9 Depth=2
	addi	s6, s6, 8
	beq	s6, s4, .LBB18_4
.LBB18_9:                               #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a0, 2
	li	a1, 8
	call	calloc
	ld	a1, 0(s1)
	add	a1, a1, s5
	ld	a1, 0(a1)
	add	a1, a1, s6
	sd	a0, 0(a1)
	bnez	a0, .LBB18_11
# %bb.10:                               #   in Loop: Header=BB18_9 Depth=2
	mv	a0, s2
	call	no_mem_exit
.LBB18_11:                              #   in Loop: Header=BB18_9 Depth=2
	li	a0, 65
	li	a1, 4
	call	calloc
	ld	a1, 0(s1)
	add	a1, a1, s5
	ld	a1, 0(a1)
	add	a1, a1, s6
	ld	a1, 0(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB18_13
# %bb.12:                               #   in Loop: Header=BB18_9 Depth=2
	mv	a0, s2
	call	no_mem_exit
.LBB18_13:                              #   in Loop: Header=BB18_9 Depth=2
	li	a0, 65
	li	a1, 4
	call	calloc
	ld	a1, 0(s1)
	add	a1, a1, s5
	ld	a1, 0(a1)
	add	a1, a1, s6
	ld	a1, 0(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB18_8
# %bb.14:                               #   in Loop: Header=BB18_9 Depth=2
	mv	a0, s2
	call	no_mem_exit
	j	.LBB18_8
.LBB18_15:
	slli	a0, s0, 5
	slli	s0, s0, 11
	addw	a0, s0, a0
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
.Lfunc_end18:
	.size	get_mem_ACcoeff, .Lfunc_end18-get_mem_ACcoeff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_mem_DCcoeff                 # -- Begin function get_mem_DCcoeff
	.p2align	2
	.type	get_mem_DCcoeff,@function
get_mem_DCcoeff:                        # @get_mem_DCcoeff
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	li	a0, 3
	li	a1, 8
	call	calloc
	mv	s1, a0
	sd	a0, 0(s0)
	bnez	a0, .LBB19_2
# %bb.1:
	lui	a0, %hi(.L.str.221)
	addi	a0, a0, %lo(.L.str.221)
	call	no_mem_exit
	ld	s1, 0(s0)
.LBB19_2:
	li	a0, 2
	li	a1, 8
	call	calloc
	sd	a0, 0(s1)
	bnez	a0, .LBB19_4
# %bb.3:
	lui	a0, %hi(.L.str.221)
	addi	a0, a0, %lo(.L.str.221)
	call	no_mem_exit
.LBB19_4:
	li	a0, 65
	li	a1, 4
	call	calloc
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB19_6
# %bb.5:
	lui	a0, %hi(.L.str.221)
	addi	a0, a0, %lo(.L.str.221)
	call	no_mem_exit
.LBB19_6:
	li	a0, 65
	li	a1, 4
	call	calloc
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB19_8
# %bb.7:
	lui	a0, %hi(.L.str.221)
	addi	a0, a0, %lo(.L.str.221)
	call	no_mem_exit
.LBB19_8:
	li	a0, 2
	li	a1, 8
	call	calloc
	ld	a1, 0(s0)
	sd	a0, 8(a1)
	bnez	a0, .LBB19_10
# %bb.9:
	lui	a0, %hi(.L.str.221)
	addi	a0, a0, %lo(.L.str.221)
	call	no_mem_exit
.LBB19_10:
	li	a0, 65
	li	a1, 4
	call	calloc
	ld	a1, 0(s0)
	ld	a1, 8(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB19_12
# %bb.11:
	lui	a0, %hi(.L.str.221)
	addi	a0, a0, %lo(.L.str.221)
	call	no_mem_exit
.LBB19_12:
	li	a0, 65
	li	a1, 4
	call	calloc
	ld	a1, 0(s0)
	ld	a1, 8(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB19_14
# %bb.13:
	lui	a0, %hi(.L.str.221)
	addi	a0, a0, %lo(.L.str.221)
	call	no_mem_exit
.LBB19_14:
	li	a0, 2
	li	a1, 8
	call	calloc
	ld	a1, 0(s0)
	sd	a0, 16(a1)
	bnez	a0, .LBB19_16
# %bb.15:
	lui	a0, %hi(.L.str.221)
	addi	a0, a0, %lo(.L.str.221)
	call	no_mem_exit
.LBB19_16:
	li	a0, 65
	li	a1, 4
	call	calloc
	ld	a1, 0(s0)
	ld	a1, 16(a1)
	sd	a0, 0(a1)
	bnez	a0, .LBB19_18
# %bb.17:
	lui	a0, %hi(.L.str.221)
	addi	a0, a0, %lo(.L.str.221)
	call	no_mem_exit
.LBB19_18:
	li	a0, 65
	li	a1, 4
	call	calloc
	ld	a1, 0(s0)
	ld	a1, 16(a1)
	sd	a0, 8(a1)
	bnez	a0, .LBB19_20
# %bb.19:
	lui	a0, %hi(.L.str.221)
	addi	a0, a0, %lo(.L.str.221)
	call	no_mem_exit
.LBB19_20:
	li	a0, 1560
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end19:
	.size	get_mem_DCcoeff, .Lfunc_end19-get_mem_DCcoeff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem_mv                     # -- Begin function free_mem_mv
	.p2align	2
	.type	free_mem_mv,@function
free_mem_mv:                            # @free_mem_mv
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	sd	s8, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	li	s1, 0
	lui	s2, %hi(img)
	li	s3, 4
	j	.LBB20_2
.LBB20_1:                               #   in Loop: Header=BB20_2 Depth=1
	ld	a0, 0(s5)
	call	free
	addi	s1, s1, 1
	beq	s1, s3, .LBB20_10
.LBB20_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_4 Depth 2
                                        #       Child Loop BB20_6 Depth 3
                                        #       Child Loop BB20_9 Depth 3
	li	s4, 0
	slli	s5, s1, 3
	add	s5, s0, s5
	j	.LBB20_4
.LBB20_3:                               #   in Loop: Header=BB20_4 Depth=2
	ld	a0, 0(s5)
	add	a0, a0, s6
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, 0(s5)
	add	a0, a0, s6
	ld	a0, 0(a0)
	call	free
	addi	s4, s4, 1
	beq	s4, s3, .LBB20_1
.LBB20_4:                               #   Parent Loop BB20_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_6 Depth 3
                                        #       Child Loop BB20_9 Depth 3
	ld	a0, %lo(img)(s2)
	lw	a0, 36(a0)
	slli	s6, s4, 3
	blez	a0, .LBB20_7
# %bb.5:                                # %.preheader1
                                        #   in Loop: Header=BB20_4 Depth=2
	li	s7, 0
	li	s8, 0
.LBB20_6:                               #   Parent Loop BB20_2 Depth=1
                                        #     Parent Loop BB20_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s5)
	add	a0, a0, s6
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, 0(s5)
	add	a0, a0, s6
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(img)(s2)
	lw	a0, 36(a0)
	addi	s8, s8, 1
	addi	s7, s7, 8
	blt	s8, a0, .LBB20_6
.LBB20_7:                               #   in Loop: Header=BB20_4 Depth=2
	ld	a0, 0(s5)
	add	a0, a0, s6
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(img)(s2)
	lw	a0, 36(a0)
	blez	a0, .LBB20_3
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB20_4 Depth=2
	li	s7, 0
	li	s8, 0
.LBB20_9:                               #   Parent Loop BB20_2 Depth=1
                                        #     Parent Loop BB20_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s5)
	add	a0, a0, s6
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, 0(s5)
	add	a0, a0, s6
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	add	a0, a0, s7
	ld	a0, 0(a0)
	call	free
	ld	a0, %lo(img)(s2)
	lw	a0, 36(a0)
	addi	s8, s8, 1
	addi	s7, s7, 8
	blt	s8, a0, .LBB20_9
	j	.LBB20_3
.LBB20_10:
	mv	a0, s0
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	ld	s8, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	tail	free
.Lfunc_end20:
	.size	free_mem_mv, .Lfunc_end20-free_mem_mv
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem_ACcoeff                # -- Begin function free_mem_ACcoeff
	.p2align	2
	.type	free_mem_ACcoeff,@function
free_mem_ACcoeff:                       # @free_mem_ACcoeff
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(img)
	ld	a1, %lo(img)(s1)
	lui	s2, 22
	add	a1, a1, s2
	lw	a1, 428(a1)
	li	a2, -3
	mv	s0, a0
	blt	a1, a2, .LBB21_3
# %bb.1:                                # %.preheader
	li	s3, -1
	mv	s4, s0
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 0(s4)
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, 0(s4)
	ld	a0, 0(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, 0(s4)
	ld	a0, 0(a0)
	call	free
	ld	a0, 0(s4)
	ld	a0, 8(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, 0(s4)
	ld	a0, 8(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, 0(s4)
	ld	a0, 8(a0)
	call	free
	ld	a0, 0(s4)
	ld	a0, 16(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, 0(s4)
	ld	a0, 16(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, 0(s4)
	ld	a0, 16(a0)
	call	free
	ld	a0, 0(s4)
	ld	a0, 24(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, 0(s4)
	ld	a0, 24(a0)
	ld	a0, 8(a0)
	call	free
	ld	a0, 0(s4)
	ld	a0, 24(a0)
	call	free
	ld	a0, 0(s4)
	call	free
	ld	a0, %lo(img)(s1)
	add	a0, a0, s2
	lw	a0, 428(a0)
	addiw	a0, a0, 3
	addi	s3, s3, 1
	addi	s4, s4, 8
	blt	s3, a0, .LBB21_2
.LBB21_3:
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	tail	free
.Lfunc_end21:
	.size	free_mem_ACcoeff, .Lfunc_end21-free_mem_ACcoeff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_mem_DCcoeff                # -- Begin function free_mem_DCcoeff
	.p2align	2
	.type	free_mem_DCcoeff,@function
free_mem_DCcoeff:                       # @free_mem_DCcoeff
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 0(a0)
	ld	a0, 0(a0)
	call	free
	ld	a0, 0(s0)
	ld	a0, 8(a0)
	call	free
	ld	a0, 0(s0)
	call	free
	ld	a0, 8(s0)
	ld	a0, 0(a0)
	call	free
	ld	a0, 8(s0)
	ld	a0, 8(a0)
	call	free
	ld	a0, 8(s0)
	call	free
	ld	a0, 16(s0)
	ld	a0, 0(a0)
	call	free
	ld	a0, 16(s0)
	ld	a0, 8(a0)
	call	free
	ld	a0, 16(s0)
	call	free
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	free
.Lfunc_end22:
	.size	free_mem_DCcoeff, .Lfunc_end22-free_mem_DCcoeff
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	init_orig_buffers               # -- Begin function init_orig_buffers
	.p2align	2
	.type	init_orig_buffers,@function
init_orig_buffers:                      # @init_orig_buffers
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lw	a1, 60(a0)
	lw	a2, 52(a0)
	lui	a0, %hi(imgY_org_frm)
	addi	a0, a0, %lo(imgY_org_frm)
	call	get_mem2Dpel
	ld	a1, %lo(img)(s0)
	lui	a2, 22
	add	a2, a1, a2
	lw	a2, 436(a2)
	mv	s0, a0
	beqz	a2, .LBB23_2
# %bb.1:
	lw	a2, 64(a1)
	lw	a3, 56(a1)
	lui	a0, %hi(imgUV_org_frm)
	addi	a0, a0, %lo(imgUV_org_frm)
	li	a1, 2
	call	get_mem3Dpel
	addw	s0, a0, s0
.LBB23_2:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	bnez	a0, .LBB23_9
# %bb.3:
	lui	s1, %hi(img)
	ld	a2, %lo(img)(s1)
	lui	a0, %hi(imgY_org_frm)
	ld	a0, %lo(imgY_org_frm)(a0)
	lw	a1, 60(a2)
	lw	a2, 52(a2)
	lui	a3, %hi(imgY_org_top)
	addi	a3, a3, %lo(imgY_org_top)
	lui	a4, %hi(imgY_org_bot)
	addi	a4, a4, %lo(imgY_org_bot)
	call	init_top_bot_planes
	ld	a0, %lo(img)(s1)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 436(a0)
	beqz	a0, .LBB23_9
# %bb.4:
	li	a0, 2
	li	a1, 8
	call	calloc
	lui	a1, %hi(imgUV_org_top)
	sd	a0, %lo(imgUV_org_top)(a1)
	bnez	a0, .LBB23_6
# %bb.5:
	lui	a0, %hi(.L.str.213)
	addi	a0, a0, %lo(.L.str.213)
	call	no_mem_exit
.LBB23_6:
	li	a0, 2
	li	a1, 8
	call	calloc
	mv	a4, a0
	lui	s1, %hi(imgUV_org_bot)
	sd	a0, %lo(imgUV_org_bot)(s1)
	bnez	a0, .LBB23_8
# %bb.7:
	lui	a0, %hi(.L.str.214)
	addi	a0, a0, %lo(.L.str.214)
	call	no_mem_exit
	ld	a4, %lo(imgUV_org_bot)(s1)
.LBB23_8:
	lui	s2, %hi(imgUV_org_frm)
	ld	a0, %lo(imgUV_org_frm)(s2)
	lui	s3, %hi(img)
	ld	a2, %lo(img)(s3)
	ld	a0, 0(a0)
	lw	a1, 64(a2)
	lw	a2, 56(a2)
	lui	s4, %hi(imgUV_org_top)
	ld	a3, %lo(imgUV_org_top)(s4)
	call	init_top_bot_planes
	ld	a1, %lo(imgUV_org_frm)(s2)
	ld	a2, %lo(img)(s3)
	ld	a5, 8(a1)
	lw	a1, 64(a2)
	ld	a3, %lo(imgUV_org_top)(s4)
	ld	a4, %lo(imgUV_org_bot)(s1)
	lw	a2, 56(a2)
	mv	s1, a0
	addi	a3, a3, 8
	addi	a4, a4, 8
	mv	a0, a5
	call	init_top_bot_planes
	add	a0, s1, a0
	add	a0, s0, a0
	addiw	s0, a0, 32
.LBB23_9:
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end23:
	.size	init_orig_buffers, .Lfunc_end23-init_orig_buffers
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	free_orig_planes                # -- Begin function free_orig_planes
	.p2align	2
	.type	free_orig_planes,@function
free_orig_planes:                       # @free_orig_planes
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(imgY_org_frm)
	ld	a0, %lo(imgY_org_frm)(a0)
	call	free_mem2Dpel
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 436(a0)
	beqz	a0, .LBB24_2
# %bb.1:
	lui	a0, %hi(imgUV_org_frm)
	ld	a0, %lo(imgUV_org_frm)(a0)
	li	a1, 2
	call	free_mem3Dpel
.LBB24_2:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	beqz	a0, .LBB24_4
.LBB24_3:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB24_4:
	lui	a0, %hi(imgY_org_top)
	ld	a0, %lo(imgY_org_top)(a0)
	lui	a1, %hi(imgY_org_bot)
	ld	a1, %lo(imgY_org_bot)(a1)
	call	free_top_bot_planes
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a0, a0, a1
	lw	a0, 436(a0)
	beqz	a0, .LBB24_3
# %bb.5:
	lui	s0, %hi(imgUV_org_top)
	ld	a0, %lo(imgUV_org_top)(s0)
	lui	s1, %hi(imgUV_org_bot)
	ld	a1, %lo(imgUV_org_bot)(s1)
	ld	a0, 0(a0)
	ld	a1, 0(a1)
	call	free_top_bot_planes
	ld	a0, %lo(imgUV_org_top)(s0)
	ld	a1, %lo(imgUV_org_bot)(s1)
	ld	a0, 8(a0)
	ld	a1, 8(a1)
	call	free_top_bot_planes
	ld	a0, %lo(imgUV_org_top)(s0)
	call	free
	ld	a0, %lo(imgUV_org_bot)(s1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	free
.Lfunc_end24:
	.size	free_orig_planes, .Lfunc_end24-free_orig_planes
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	combine_field                   # -- Begin function combine_field
	.p2align	2
	.type	combine_field,@function
combine_field:                          # @combine_field
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	sd	s2, 48(sp)                      # 8-byte Folded Spill
	sd	s3, 40(sp)                      # 8-byte Folded Spill
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	sd	s5, 24(sp)                      # 8-byte Folded Spill
	sd	s6, 16(sp)                      # 8-byte Folded Spill
	sd	s7, 8(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(img)
	ld	a1, %lo(img)(s0)
	lw	a0, 60(a1)
	li	a2, 2
	blt	a0, a2, .LBB25_3
# %bb.1:                                # %.preheader1
	li	s1, 0
	li	s2, 0
	li	s3, 0
	lui	s4, %hi(imgY_com)
	lui	s5, %hi(enc_top_picture)
	lui	s6, 2
	lui	s7, %hi(enc_bottom_picture)
.LBB25_2:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(enc_top_picture)(s5)
	ld	a2, %lo(imgY_com)(s4)
	add	a0, a0, s6
	ld	a3, -1768(a0)
	add	a2, a2, s1
	ld	a0, 0(a2)
	add	a3, a3, s2
	lw	a2, 52(a1)
	ld	a1, 0(a3)
	slli	a2, a2, 1
	call	memcpy
	ld	a0, %lo(enc_bottom_picture)(s7)
	ld	a1, %lo(imgY_com)(s4)
	add	a0, a0, s6
	ld	a2, -1768(a0)
	ld	a3, %lo(img)(s0)
	add	a1, a1, s1
	ld	a0, 8(a1)
	add	a2, a2, s2
	lw	a3, 52(a3)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a1, %lo(img)(s0)
	lw	a0, 60(a1)
	addi	s3, s3, 1
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	s2, s2, 8
	addi	s1, s1, 16
	blt	s3, a0, .LBB25_2
.LBB25_3:
	lui	a0, 22
	add	a0, a1, a0
	lw	a0, 436(a0)
	beqz	a0, .LBB25_7
# %bb.4:
	lw	a0, 64(a1)
	li	a2, 2
	blt	a0, a2, .LBB25_7
# %bb.5:                                # %.preheader
	li	s0, 0
	li	s1, 0
	li	s2, 0
	lui	s3, %hi(imgUV_com)
	lui	s4, %hi(enc_top_picture)
	lui	s5, 2
	lui	s6, %hi(enc_bottom_picture)
	lui	s7, %hi(img)
.LBB25_6:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(enc_top_picture)(s4)
	ld	a2, %lo(imgUV_com)(s3)
	add	a0, a0, s5
	ld	a0, -1728(a0)
	ld	a2, 0(a2)
	ld	a3, 0(a0)
	add	a2, a2, s0
	ld	a0, 0(a2)
	add	a3, a3, s1
	lw	a2, 56(a1)
	ld	a1, 0(a3)
	slli	a2, a2, 1
	call	memcpy
	ld	a0, %lo(enc_bottom_picture)(s6)
	ld	a1, %lo(imgUV_com)(s3)
	add	a0, a0, s5
	ld	a0, -1728(a0)
	ld	a1, 0(a1)
	ld	a2, 0(a0)
	ld	a3, %lo(img)(s7)
	add	a1, a1, s0
	ld	a0, 8(a1)
	add	a2, a2, s1
	lw	a3, 56(a3)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a0, %lo(enc_top_picture)(s4)
	ld	a1, %lo(imgUV_com)(s3)
	add	a0, a0, s5
	ld	a0, -1728(a0)
	ld	a1, 8(a1)
	ld	a2, 8(a0)
	ld	a3, %lo(img)(s7)
	add	a1, a1, s0
	ld	a0, 0(a1)
	add	a2, a2, s1
	lw	a3, 56(a3)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a0, %lo(enc_bottom_picture)(s6)
	ld	a1, %lo(imgUV_com)(s3)
	add	a0, a0, s5
	ld	a0, -1728(a0)
	ld	a1, 8(a1)
	ld	a2, 8(a0)
	ld	a3, %lo(img)(s7)
	add	a1, a1, s0
	ld	a0, 8(a1)
	add	a2, a2, s1
	lw	a3, 56(a3)
	ld	a1, 0(a2)
	slli	a2, a3, 1
	call	memcpy
	ld	a1, %lo(img)(s7)
	lw	a0, 64(a1)
	addi	s2, s2, 1
	srliw	a2, a0, 31
	add	a0, a0, a2
	sraiw	a0, a0, 1
	addi	s1, s1, 8
	addi	s0, s0, 16
	blt	s2, a0, .LBB25_6
.LBB25_7:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end25:
	.size	combine_field, .Lfunc_end25-combine_field
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	decide_fld_frame                # -- Begin function decide_fld_frame
	.p2align	2
	.type	decide_fld_frame,@function
decide_fld_frame:                       # @decide_fld_frame
# %bb.0:
	fcvt.d.w	fa5, a1
	fcvt.d.s	fa4, fa0
	fmadd.d	fa5, fa5, fa2, fa4
	fcvt.d.w	fa4, a0
	fcvt.d.s	fa3, fa1
	fmadd.d	fa4, fa4, fa2, fa3
	flt.d	a0, fa5, fa4
	xori	a0, a0, 1
	ret
.Lfunc_end26:
	.size	decide_fld_frame, .Lfunc_end26-decide_fld_frame
                                        # -- End function
	.option	pop
	.type	inputs,@object                  # @inputs
	.bss
	.globl	inputs
	.p2align	3, 0x0
inputs:
	.zero	4328
	.size	inputs, 4328

	.type	input,@object                   # @input
	.section	.sdata,"aw",@progbits
	.globl	input
	.p2align	3, 0x0
input:
	.quad	inputs
	.size	input, 8

	.type	images,@object                  # @images
	.bss
	.globl	images
	.p2align	3, 0x0
images:
	.zero	90600
	.size	images, 90600

	.type	img,@object                     # @img
	.section	.sdata,"aw",@progbits
	.globl	img
	.p2align	3, 0x0
img:
	.quad	images
	.size	img, 8

	.type	statistics,@object              # @statistics
	.bss
	.globl	statistics
	.p2align	3, 0x0
statistics:
	.zero	1504
	.size	statistics, 1504

	.type	stats,@object                   # @stats
	.section	.sdata,"aw",@progbits
	.globl	stats
	.p2align	3, 0x0
stats:
	.quad	statistics
	.size	stats, 8

	.type	snrs,@object                    # @snrs
	.bss
	.globl	snrs
	.p2align	2, 0x0
snrs:
	.zero	124
	.size	snrs, 124

	.type	snr,@object                     # @snr
	.section	.sdata,"aw",@progbits
	.globl	snr
	.p2align	3, 0x0
snr:
	.quad	snrs
	.size	snr, 8

	.type	decoders,@object                # @decoders
	.bss
	.globl	decoders
	.p2align	3, 0x0
decoders:
	.zero	56
	.size	decoders, 56

	.type	decs,@object                    # @decs
	.section	.sdata,"aw",@progbits
	.globl	decs
	.p2align	3, 0x0
decs:
	.quad	decoders
	.size	decs, 8

	.type	initial_Bframes,@object         # @initial_Bframes
	.section	.sbss,"aw",@nobits
	.globl	initial_Bframes
	.p2align	2, 0x0
initial_Bframes:
	.word	0                               # 0x0
	.size	initial_Bframes, 4

	.type	In2ndIGOP,@object               # @In2ndIGOP
	.globl	In2ndIGOP
	.p2align	2, 0x0
In2ndIGOP:
	.word	0                               # 0x0
	.size	In2ndIGOP, 4

	.type	start_frame_no_in_this_IGOP,@object # @start_frame_no_in_this_IGOP
	.globl	start_frame_no_in_this_IGOP
	.p2align	2, 0x0
start_frame_no_in_this_IGOP:
	.word	0                               # 0x0
	.size	start_frame_no_in_this_IGOP, 4

	.type	start_tr_in_this_IGOP,@object   # @start_tr_in_this_IGOP
	.globl	start_tr_in_this_IGOP
	.p2align	2, 0x0
start_tr_in_this_IGOP:
	.word	0                               # 0x0
	.size	start_tr_in_this_IGOP, 4

	.type	FirstFrameIn2ndIGOP,@object     # @FirstFrameIn2ndIGOP
	.globl	FirstFrameIn2ndIGOP
	.p2align	2, 0x0
FirstFrameIn2ndIGOP:
	.word	0                               # 0x0
	.size	FirstFrameIn2ndIGOP, 4

	.type	cabac_encoding,@object          # @cabac_encoding
	.globl	cabac_encoding
	.p2align	2, 0x0
cabac_encoding:
	.word	0                               # 0x0
	.size	cabac_encoding, 4

	.type	frame_statistic_start,@object   # @frame_statistic_start
	.globl	frame_statistic_start
	.p2align	2, 0x0
frame_statistic_start:
	.word	0                               # 0x0
	.size	frame_statistic_start, 4

	.type	init_img.mb_width_cr,@object    # @init_img.mb_width_cr
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
init_img.mb_width_cr:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	16                              # 0x10
	.size	init_img.mb_width_cr, 16

	.type	init_img.mb_height_cr,@object   # @init_img.mb_height_cr
	.p2align	2, 0x0
init_img.mb_height_cr:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	16                              # 0x10
	.size	init_img.mb_height_cr, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"init_img: img->quad"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"init_img: img->mb_data"
	.size	.L.str.1, 23

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"init_img: img->intra_block"
	.size	.L.str.2, 27

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"malloc_picture: Picture structure"
	.size	.L.str.3, 34

	.type	report_frame_statistic.last_mode_use,@object # @report_frame_statistic.last_mode_use
	.local	report_frame_statistic.last_mode_use
	.comm	report_frame_statistic.last_mode_use,300,4
	.type	report_frame_statistic.last_b8_mode_0,@object # @report_frame_statistic.last_b8_mode_0
	.local	report_frame_statistic.last_b8_mode_0
	.comm	report_frame_statistic.last_b8_mode_0,40,4
	.type	report_frame_statistic.last_mode_chroma_use,@object # @report_frame_statistic.last_mode_chroma_use
	.local	report_frame_statistic.last_mode_chroma_use
	.comm	report_frame_statistic.last_mode_chroma_use,16,4
	.type	report_frame_statistic.last_bit_ctr_n,@object # @report_frame_statistic.last_bit_ctr_n
	.section	.sbss,"aw",@nobits
	.p2align	2, 0x0
report_frame_statistic.last_bit_ctr_n:
	.word	0                               # 0x0
	.size	report_frame_statistic.last_bit_ctr_n, 4

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"stat_frame.dat"
	.size	.L.str.4, 15

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"r"
	.size	.L.str.5, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"a"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Error open file %s  \n"
	.size	.L.str.7, 22

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"stat_frame.dat.dat"
	.size	.L.str.8, 19

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \n"
	.size	.L.str.9, 469

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"|            Encoder statistics. This file is generated during first encoding session, new sessions will be appended                                                                                                                                                                                                                                                                                                                                                              |\n"
	.size	.L.str.10, 469

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"|  ver   | Date  | Time  |    Sequence        |Frm | QP |P/MbInt|   Bits   |  SNRY  |  SNRU  |  SNRV  |  I4  |  I8  | I16  | IC0  | IC1  | IC2  | IC3  | PI4  | PI8  | PI16 |  P0  |  P1  |  P2  |  P3  | P1*8*| P1*4*| P2*8*| P2*4*| P3*8*| P3*4*|  P8  | P8:4 | P4*8*| P4*4*| P8:5 | P8:6 | P8:7 | BI4  | BI8  | BI16 |  B0  |  B1  |  B2  |  B3  | B0*8*| B0*4*| B1*8*| B1*4*| B2*8*| B2*4*| B3*8*| B3*4*|  B8  | B8:0 |B80*8*|B80*4*| B8:4 | B4*8*| B4*4*| B8:5 | B8:6 | B8:7 |\n"
	.size	.L.str.11, 469

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"|%4s/%s"
	.size	.L.str.12, 8

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"10.2"
	.size	.L.str.13, 5

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"(FRExt)"
	.size	.L.str.14, 8

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%d-%b-%Y"
	.size	.L.str.15, 9

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"| %1.5s |"
	.size	.L.str.16, 10

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%H:%M:%S"
	.size	.L.str.17, 9

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	" %1.5s |"
	.size	.L.str.18, 9

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%20.20s|"
	.size	.L.str.19, 9

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"%3d |"
	.size	.L.str.20, 6

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"  %d/%d  |"
	.size	.L.str.21, 11

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	" %9d|"
	.size	.L.str.22, 6

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	" %2.4f| %2.4f| %2.4f|"
	.size	.L.str.23, 22

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	" %5d|"
	.size	.L.str.24, 6

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"-------------------------------------------------------------------------------\n"
	.size	.L.str.26, 81

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	" Freq. for encoded bitstream       : %1.0f\n"
	.size	.L.str.27, 44

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	" Hadamard transform                : Used for QPel\n"
	.size	.L.str.28, 52

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	" Hadamard transform                : Used\n"
	.size	.L.str.29, 43

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	" Hadamard transform                : Not used\n"
	.size	.L.str.30, 47

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	" Image format                      : %dx%d\n"
	.size	.L.str.31, 44

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	" Error robustness                  : On\n"
	.size	.L.str.32, 41

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	" Error robustness                  : Off\n"
	.size	.L.str.33, 42

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	" Search range                      : %d\n"
	.size	.L.str.34, 41

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	" Total number of references        : %d\n"
	.size	.L.str.35, 41

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	" References for P slices           : %d\n"
	.size	.L.str.36, 41

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	" List0 references for B slices     : %d\n"
	.size	.L.str.37, 41

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	" List1 references for B slices     : %d\n"
	.size	.L.str.38, 41

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	" Total encoding time for the seq.  : %.3f sec (%.2f fps)\n"
	.size	.L.str.39, 58

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	" Total ME time for sequence        : %.3f sec \n"
	.size	.L.str.40, 48

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	" Sequence type                     :"
	.size	.L.str.41, 37

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	" Pyramid (QP: I %d, P %d, B %d) \n"
	.size	.L.str.42, 34

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"-RB"
	.size	.L.str.44, 4

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"-B"
	.size	.L.str.45, 3

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"-P"
	.size	.L.str.46, 3

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	" %s (QP: I %d, P %d, RB %d) \n"
	.size	.L.str.47, 30

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	" %s (QP: I %d, P %d, B %d) \n"
	.size	.L.str.48, 29

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	" IPPP (QP: I %d, P %d) \n"
	.size	.L.str.49, 25

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	" I-P-P-SP-P (QP: I %d, P %d, SP (%d, %d)) \n"
	.size	.L.str.50, 44

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	" Entropy coding method             : CAVLC\n"
	.size	.L.str.51, 44

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	" Entropy coding method             : CABAC\n"
	.size	.L.str.52, 44

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	" Profile/Level IDC                 : (%d,%d)\n"
	.size	.L.str.53, 46

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	" Motion Estimation Scheme          : HEX\n"
	.size	.L.str.54, 42

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	" Motion Estimation Scheme          : SHEX\n"
	.size	.L.str.55, 43

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	" Motion Estimation Scheme          : EPZS\n"
	.size	.L.str.56, 43

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	" Motion Estimation Scheme          : Full Search\n"
	.size	.L.str.57, 50

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	" Search range restrictions         : none\n"
	.size	.L.str.58, 43

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	" Search range restrictions         : older reference frames\n"
	.size	.L.str.59, 61

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	" Search range restrictions         : smaller blocks and older reference frames\n"
	.size	.L.str.60, 80

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	" RD-optimized mode decision        : used\n"
	.size	.L.str.61, 43

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	" RD-optimized mode decision        : not used\n"
	.size	.L.str.62, 47

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	" Data Partitioning Mode            : 1 partition \n"
	.size	.L.str.63, 51

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	" Data Partitioning Mode            : 3 partitions \n"
	.size	.L.str.64, 52

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	" Data Partitioning Mode            : not supported\n"
	.size	.L.str.65, 52

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	" Output File Format                : H.264 Bit Stream File Format \n"
	.size	.L.str.66, 68

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	" Output File Format                : RTP Packet File Format \n"
	.size	.L.str.67, 62

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	" Output File Format                : not supported\n"
	.size	.L.str.68, 52

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	" Residue Color Transform           : used\n"
	.size	.L.str.69, 43

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	" Residue Color Transform           : not used\n"
	.size	.L.str.70, 47

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"------------------ Average data all frames  -----------------------------------\n"
	.size	.L.str.71, 81

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	" SNR Y(dB)                         : %5.2f\n"
	.size	.L.str.72, 44

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	" SNR U(dB)                         : %5.2f\n"
	.size	.L.str.73, 44

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	" SNR V(dB)                         : %5.2f\n"
	.size	.L.str.74, 44

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	" cSNR Y(dB)                        : %5.2f (%5.2f)\n"
	.size	.L.str.75, 52

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	" cSNR U(dB)                        : %5.2f (%5.2f)\n"
	.size	.L.str.76, 52

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	" cSNR V(dB)                        : %5.2f (%5.2f)\n"
	.size	.L.str.77, 52

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	" Total bits                        : %d (I %5d, P %5d, B %d NVB %d) \n"
	.size	.L.str.78, 70

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	" Bit rate (kbit/s)  @ %2.2f Hz     : %5.2f\n"
	.size	.L.str.79, 44

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	" Total bits                        : %d (I %5d, P %5d, NVB %d) \n"
	.size	.L.str.80, 65

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	" Bits to avoid Startcode Emulation : %d \n"
	.size	.L.str.81, 42

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	" Bits for parameter sets           : %d \n"
	.size	.L.str.82, 42

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"Exit JM %s encoder ver %s "
	.size	.L.str.83, 27

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"10 (FRExt)"
	.size	.L.str.84, 11

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"stats.dat"
	.size	.L.str.85, 10

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"wt"
	.size	.L.str.86, 3

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"Error open file %s"
	.size	.L.str.87, 19

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	" -------------------------------------------------------------- \n"
	.size	.L.str.88, 66

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"  This file contains statistics for the last encoded sequence   \n"
	.size	.L.str.89, 66

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	" Sequence                     : %s\n"
	.size	.L.str.90, 36

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	" No.of coded pictures         : %4d\n"
	.size	.L.str.91, 37

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	" Freq. for encoded bitstream  : %4.0f\n"
	.size	.L.str.92, 39

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	" I Slice Bitrate(kb/s)        : %6.2f\n"
	.size	.L.str.93, 39

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	" P Slice Bitrate(kb/s)        : %6.2f\n"
	.size	.L.str.94, 39

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	" B Slice Bitrate(kb/s)        : %6.2f\n"
	.size	.L.str.95, 39

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	" Total Bitrate(kb/s)          : %6.2f\n"
	.size	.L.str.96, 39

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	" Hadamard transform           : Used for QPel\n"
	.size	.L.str.97, 47

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	" Hadamard transform           : Used\n"
	.size	.L.str.98, 38

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	" Hadamard transform           : Not used\n"
	.size	.L.str.99, 42

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	" Image format                 : %dx%d\n"
	.size	.L.str.100, 39

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	" Error robustness             : On\n"
	.size	.L.str.101, 36

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	" Error robustness             : Off\n"
	.size	.L.str.102, 37

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	" Search range                 : %d\n"
	.size	.L.str.103, 36

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	" Total number of references   : %d\n"
	.size	.L.str.104, 36

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	" References for P slices      : %d\n"
	.size	.L.str.105, 36

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	" List0 refs for B slices      : %d\n"
	.size	.L.str.106, 36

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	" List1 refs for B slices      : %d\n"
	.size	.L.str.107, 36

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	" Entropy coding method        : CAVLC\n"
	.size	.L.str.108, 39

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	" Entropy coding method        : CABAC\n"
	.size	.L.str.109, 39

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	" Profile/Level IDC            : (%d,%d)\n"
	.size	.L.str.110, 41

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	" MB Field Coding : On \n"
	.size	.L.str.111, 24

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	" Search range restrictions    : none\n"
	.size	.L.str.112, 38

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	" Search range restrictions    : older reference frames\n"
	.size	.L.str.113, 56

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	" Search range restrictions    : smaller blocks and older reference frames\n"
	.size	.L.str.114, 75

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	" RD-optimized mode decision   : used\n"
	.size	.L.str.115, 38

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	" RD-optimized mode decision   : not used\n"
	.size	.L.str.116, 42

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	" ---------------------|----------------|---------------|\n"
	.size	.L.str.117, 58

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"     Item             |     Intra      |   All frames  |\n"
	.size	.L.str.118, 58

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	" SNR Y(dB)            |"
	.size	.L.str.119, 24

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	" %5.2f          |"
	.size	.L.str.120, 18

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	" %5.2f         |\n"
	.size	.L.str.121, 18

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	" SNR U/V (dB)         |"
	.size	.L.str.122, 24

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	" %5.2f/%5.2f    |"
	.size	.L.str.123, 18

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	" %5.2f/%5.2f   |\n"
	.size	.L.str.124, 18

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	" Average quant        |"
	.size	.L.str.125, 24

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	" %5d          |"
	.size	.L.str.126, 16

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"\n ---------------------|----------------|---------------|---------------|\n"
	.size	.L.str.127, 75

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"     SNR              |        I       |       P       |       B       |\n"
	.size	.L.str.128, 74

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	" ---------------------|----------------|---------------|---------------|\n"
	.size	.L.str.129, 74

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	" SNR Y(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\n"
	.size	.L.str.130, 71

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	" SNR U(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\n"
	.size	.L.str.131, 71

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	" SNR V(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\n"
	.size	.L.str.132, 71

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"\n ---------------------|----------------|\n"
	.size	.L.str.133, 43

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"   Intra              |   Mode used    |\n"
	.size	.L.str.134, 42

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	" ---------------------|----------------|\n"
	.size	.L.str.135, 42

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	" Mode 0  intra 4x4    |  %5d         |\n"
	.size	.L.str.136, 40

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	" Mode 1  intra 8x8    |  %5d         |\n"
	.size	.L.str.137, 40

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	" Mode 2+ intra 16x16  |  %5d         |\n"
	.size	.L.str.138, 40

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	" Mode    intra IPCM   |  %5d         |\n"
	.size	.L.str.139, 40

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"\n ---------------------|----------------|-----------------|\n"
	.size	.L.str.140, 61

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"   Inter              |   Mode used    | MotionInfo bits |\n"
	.size	.L.str.141, 60

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	" ---------------------|----------------|-----------------|"
	.size	.L.str.142, 59

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"\n Mode  0  (copy)      |  %5d         |    %8.2f     |"
	.size	.L.str.143, 55

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"\n Mode  1  (16x16)     |  %5d         |    %8.2f     |"
	.size	.L.str.144, 55

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"\n Mode  2  (16x8)      |  %5d         |    %8.2f     |"
	.size	.L.str.145, 55

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"\n Mode  3  (8x16)      |  %5d         |    %8.2f     |"
	.size	.L.str.146, 55

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"\n Mode  4  (8x8)       |  %5d         |    %8.2f     |"
	.size	.L.str.147, 55

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"\n Mode  5  intra 4x4   |  %5d         |-----------------|"
	.size	.L.str.148, 58

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"\n Mode  6  intra 8x8   |  %5d         |"
	.size	.L.str.149, 40

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"\n Mode  7+ intra 16x16 |  %5d         |"
	.size	.L.str.150, 40

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"\n Mode     intra IPCM  |  %5d         |"
	.size	.L.str.151, 40

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"\n\n ---------------------|----------------|-----------------|\n"
	.size	.L.str.152, 62

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"   B frame            |   Mode used    | MotionInfo bits |\n"
	.size	.L.str.153, 60

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"\n\n ---------------------|----------------|----------------|----------------|\n"
	.size	.L.str.154, 78

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"  Bit usage:          |      Intra     |      Inter     |    B frame     |\n"
	.size	.L.str.155, 76

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	" ---------------------|----------------|----------------|----------------|\n"
	.size	.L.str.156, 76

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	" Header               |"
	.size	.L.str.157, 24

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	" %10.2f     |"
	.size	.L.str.158, 14

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	" Mode                 |"
	.size	.L.str.159, 24

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	" Motion Info          |"
	.size	.L.str.160, 24

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"        ./.     |"
	.size	.L.str.161, 18

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	" CBP Y/C              |"
	.size	.L.str.162, 24

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	" Coeffs. Y            | %10.2f     | %10.2f     | %10.2f     |\n"
	.size	.L.str.163, 64

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	" Coeffs. C            | %10.2f     | %10.2f     | %10.2f     |\n"
	.size	.L.str.164, 64

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	" Delta quant          | %10.2f     | %10.2f     | %10.2f     |\n"
	.size	.L.str.165, 64

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	" Stuffing Bits        | %10.2f     | %10.2f     | %10.2f     |\n"
	.size	.L.str.166, 64

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	" average bits/frame   |"
	.size	.L.str.167, 24

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"log.dat"
	.size	.L.str.168, 8

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	" ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ \n"
	.size	.L.str.169, 298

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"|                   Encoder statistics. This file is generated during first encoding session, new sessions will be appended                                                                                                                                                                            |\n"
	.size	.L.str.170, 298

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"|    ver    | Date  | Time  |         Sequence             | #Img |P/MbInt| QPI| QPP| QPB| Format  |Iperiod| #B | FMES | Hdmd | S.R |#Ref | Freq |Coding|RD-opt|Intra upd|8x8Tr| SNRY 1| SNRU 1| SNRV 1| SNRY N| SNRU N| SNRV N|#Bitr I|#Bitr P|#Bitr B|#Bitr IPB|     Total Time   |      Me Time     |\n"
	.size	.L.str.171, 298

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"|%s/%-4s"
	.size	.L.str.172, 9

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"%30.30s|"
	.size	.L.str.173, 9

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"%5d |"
	.size	.L.str.174, 6

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	" %-3d|"
	.size	.L.str.175, 7

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"%4dx%-4d|"
	.size	.L.str.176, 10

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"  %3d  |"
	.size	.L.str.177, 9

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"  HEX |"
	.size	.L.str.178, 8

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	" SHEX |"
	.size	.L.str.179, 8

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	" EPZS |"
	.size	.L.str.180, 8

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"  OFF |"
	.size	.L.str.181, 8

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"  QPL |"
	.size	.L.str.182, 8

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"  ON  |"
	.size	.L.str.183, 8

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	" %3d |"
	.size	.L.str.184, 7

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	" %2d  |"
	.size	.L.str.185, 8

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	" %5.2f|"
	.size	.L.str.186, 8

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	" CAVLC|"
	.size	.L.str.187, 8

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	" CABAC|"
	.size	.L.str.188, 8

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"   %d  |"
	.size	.L.str.189, 9

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"   ON    |"
	.size	.L.str.190, 11

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"   OFF   |"
	.size	.L.str.191, 11

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"  %d  |"
	.size	.L.str.192, 8

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"%7.3f|"
	.size	.L.str.193, 7

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"%7.0f|"
	.size	.L.str.194, 7

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"%9.0f|"
	.size	.L.str.195, 7

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"   %12d   |"
	.size	.L.str.196, 12

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"   %12d   |\n"
	.size	.L.str.197, 13

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"data.txt"
	.size	.L.str.198, 9

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"%3d %2d %2d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %5d %.3f\n"
	.size	.L.str.199, 88

	.type	.L__const.information_init.yuv_types,@object # @__const.information_init.yuv_types
	.section	.rodata,"a",@progbits
.L__const.information_init.yuv_types:
	.asciz	"YUV 4:0:0"
	.asciz	"YUV 4:2:0"
	.asciz	"YUV 4:2:2"
	.asciz	"YUV 4:4:4"
	.size	.L__const.information_init.yuv_types, 40

	.type	.L.str.200,@object              # @.str.200
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.200:
	.asciz	"------------------------------- JM %s %s --------------------------------\n"
	.size	.L.str.200, 75

	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	"------------------------------- JM %s %s ------------------------------------------\n"
	.size	.L.str.201, 85

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	" Input YUV file                    : %s \n"
	.size	.L.str.202, 42

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	" Output H.264 bitstream            : %s \n"
	.size	.L.str.203, 42

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	" Output YUV file                   : %s \n"
	.size	.L.str.204, 42

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	" YUV Format                        : %s \n"
	.size	.L.str.205, 42

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	" Frames to be encoded I-P/B        : %d/%d\n"
	.size	.L.str.206, 44

	.type	.L.str.207,@object              # @.str.207
.L.str.207:
	.asciz	" PicInterlace / MbInterlace        : %d/%d\n"
	.size	.L.str.207, 44

	.type	.L.str.208,@object              # @.str.208
.L.str.208:
	.asciz	" Transform8x8Mode                  : %d\n"
	.size	.L.str.208, 41

	.type	.L.str.213,@object              # @.str.213
.L.str.213:
	.asciz	"init_global_buffers: imgUV_org_top"
	.size	.L.str.213, 35

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"init_global_buffers: imgUV_org_bot"
	.size	.L.str.214, 35

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	"init_global_buffers: last_P_no"
	.size	.L.str.215, 31

	.type	.L.str.216,@object              # @.str.216
.L.str.216:
	.asciz	"init_global_buffers: yPicPos"
	.size	.L.str.216, 29

	.type	.L.str.217,@object              # @.str.217
.L.str.217:
	.asciz	"init_global_buffers: xPicPos"
	.size	.L.str.217, 29

	.type	.L.str.218,@object              # @.str.218
.L.str.218:
	.asciz	"init_global_buffers: decref"
	.size	.L.str.218, 28

	.type	.L.str.219,@object              # @.str.219
.L.str.219:
	.asciz	"get_mem_mv: mv"
	.size	.L.str.219, 15

	.type	.L.str.220,@object              # @.str.220
.L.str.220:
	.asciz	"get_mem_ACcoeff: cofAC"
	.size	.L.str.220, 23

	.type	.L.str.221,@object              # @.str.221
.L.str.221:
	.asciz	"get_mem_DCcoeff: cofDC"
	.size	.L.str.221, 23

	.type	.Lstr.222,@object               # @str.222
.Lstr.222:
	.asciz	"  Frame  Bit/pic WP QP   SnrY    SnrU    SnrV    Time(ms) MET(ms) Frm/Fld   I D L0 L1 RDP Ref"
	.size	.Lstr.222, 94

	.type	.Lstr.223,@object               # @str.223
.Lstr.223:
	.asciz	"---------------------------------------------------------------------------------------------"
	.size	.Lstr.223, 94

	.type	.Lstr.225,@object               # @str.225
.Lstr.225:
	.asciz	"  Frame  Bit/pic    QP   SnrY    SnrU    SnrV    Time(ms) MET(ms) Frm/Fld Ref  "
	.size	.Lstr.225, 80

	.type	.Lstr.227,@object               # @str.227
.Lstr.227:
	.asciz	"-------------------------------------------------------------------------------"
	.size	.Lstr.227, 80

	.type	.Lstr.228,@object               # @str.228
.Lstr.228:
	.asciz	"\nEncoding. Please Wait.\n"
	.size	.Lstr.228, 25

	.type	.Lswitch.table.report,@object   # @switch.table.report
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lswitch.table.report:
	.quad	.L.str.178
	.quad	.L.str.179
	.quad	.L.str.180
	.size	.Lswitch.table.report, 24

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
