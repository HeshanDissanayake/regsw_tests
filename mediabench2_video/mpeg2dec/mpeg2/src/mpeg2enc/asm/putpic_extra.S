	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"putpic.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	putpict                         # -- Begin function putpict
	.p2align	2
	.type	putpict,@function
putpict:                                # @putpict
# %bb.0:
	addi	sp, sp, -208
	sd	ra, 200(sp)                     # 8-byte Folded Spill
	sd	s0, 192(sp)                     # 8-byte Folded Spill
	sd	s1, 184(sp)                     # 8-byte Folded Spill
	sd	s2, 176(sp)                     # 8-byte Folded Spill
	sd	s3, 168(sp)                     # 8-byte Folded Spill
	sd	s4, 160(sp)                     # 8-byte Folded Spill
	sd	s5, 152(sp)                     # 8-byte Folded Spill
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	sd	s7, 136(sp)                     # 8-byte Folded Spill
	sd	s8, 128(sp)                     # 8-byte Folded Spill
	sd	s9, 120(sp)                     # 8-byte Folded Spill
	sd	s10, 112(sp)                    # 8-byte Folded Spill
	sd	s11, 104(sp)                    # 8-byte Folded Spill
	call	rc_init_pict
	call	putpicthdr
	lui	a0, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(a0)
	bnez	a0, .LBB0_2
# %bb.1:
	call	putpictcodext
.LBB0_2:
	call	rc_start_mb
	lui	a1, %hi(mb_height2)
	lw	a1, %lo(mb_height2)(a1)
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	blez	a1, .LBB0_110
# %bb.3:
	lui	a0, %hi(mb_width)
	lw	a0, %lo(mb_width)(a0)
	blez	a0, .LBB0_110
# %bb.4:                                # %.preheader3
	li	s10, 0
	li	a3, 0
	lui	a2, %hi(dc_dct_pred)
	addi	a2, a2, %lo(dc_dct_pred)
	sd	a2, 48(sp)                      # 8-byte Folded Spill
	lui	a2, 1
	addiw	a2, a2, -1296
	sd	a2, 32(sp)                      # 8-byte Folded Spill
	lui	s5, %hi(mbinfo)
	lui	s9, %hi(block_count)
	lui	s3, %hi(blocks)
	lui	s8, %hi(inter_q)
	addi	s8, s8, %lo(inter_q)
	lui	s6, %hi(dc_prec)
                                        # implicit-def: $x9
	j	.LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	lui	a1, %hi(mb_height2)
	lw	a1, %lo(mb_height2)(a1)
	mv	s10, s11
	ld	a3, 0(sp)                       # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	addiw	a3, a3, 1
	bge	a3, a1, .LBB0_110
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_94 Depth 3
	blez	a0, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	li	s0, 0
	andi	a0, a3, 127
	addi	a0, a0, 257
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	srliw	a0, a3, 7
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	sd	a3, 0(sp)                       # 8-byte Folded Spill
	addiw	a0, a3, 257
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	sext.w	s11, s10
	j	.LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_12 Depth=2
	sd	zero, 96(sp)
	sd	zero, 88(sp)
	sd	zero, 80(sp)
	sd	zero, 72(sp)
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, %lo(mbinfo)(s5)
	add	a0, a0, s4
	sw	s7, 0(a0)
	li	s1, 1
	lui	s8, %hi(inter_q)
	addi	s8, s8, %lo(inter_q)
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=2
	lui	s6, %hi(dc_prec)
	lui	a0, %hi(mb_width)
	lw	a0, %lo(mb_width)(a0)
	addi	s11, s11, 1
	addiw	s0, s0, 1
	addi	s10, s10, 1
	bge	s0, a0, .LBB0_5
.LBB0_12:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_94 Depth 3
	bnez	s0, .LBB0_20
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	call	alignbits
	lui	a0, %hi(mpeg1)
	lw	a0, %lo(mpeg1)(a0)
	bnez	a0, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(vertical_size)
	lw	a0, %lo(vertical_size)(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	bge	a1, a0, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=2
	li	a1, 32
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	call	putbits
	li	a1, 3
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	call	putbits
	lui	a0, %hi(q_scale_type)
	lw	a0, %lo(q_scale_type)(a0)
	bnez	a0, .LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	sraiw	a0, a0, 1
	j	.LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=2
	li	a1, 32
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	call	putbits
	lui	a0, %hi(q_scale_type)
	lw	a0, %lo(q_scale_type)(a0)
	beqz	a0, .LBB0_16
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	lui	a1, %hi(map_non_linear_mquant)
	addi	a1, a1, %lo(map_non_linear_mquant)
	add	a0, a1, a0
	lbu	a0, 0(a0)
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=2
	li	a1, 5
	call	putbits
	li	a1, 1
	li	s1, 1
	li	a0, 0
	call	putbits
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	sw	zero, 8(a0)
	sw	zero, 4(a0)
	lui	a0, %hi(dc_dct_pred)
	sw	zero, %lo(dc_dct_pred)(a0)
	sd	zero, 72(sp)
	sd	zero, 80(sp)
	sd	zero, 88(sp)
	sd	zero, 96(sp)
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=2
	sd	s1, 64(sp)                      # 8-byte Folded Spill
	ld	a0, %lo(mbinfo)(s5)
	li	a1, 96
	mul	s4, s11, a1
	add	a0, a0, s4
	lw	s7, 0(a0)
	sext.w	a0, s11
	call	rc_calc_mquant
	ld	a1, %lo(mbinfo)(s5)
	add	a3, a1, s4
	sw	a0, 12(a3)
	lw	a2, %lo(block_count)(s9)
	andi	a0, s7, 1
	bnez	a0, .LBB0_26
# %bb.21:                               #   in Loop: Header=BB0_12 Depth=2
	li	s1, 0
	li	s6, 0
	blez	a2, .LBB0_32
# %bb.22:                               # %.preheader1
                                        #   in Loop: Header=BB0_12 Depth=2
	li	s2, 0
.LBB0_23:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, %lo(mbinfo)(s5)
	slliw	s6, s6, 1
	ld	a1, %lo(blocks)(s3)
	mulw	a2, s10, a2
	add	a0, a0, s4
	lw	a3, 12(a0)
	add	a2, s1, a2
	slli	a0, a2, 7
	add	a0, a1, a0
	mv	a1, a0
	mv	a2, s8
	call	quant_non_intra
	lw	a2, %lo(block_count)(s9)
	or	s6, a0, s6
	addiw	s2, s2, 1
	addi	s1, s1, 1
	blt	s2, a2, .LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a1, %lo(mbinfo)(s5)
	add	a0, a1, s4
	sw	s6, 16(a0)
	snez	a0, s6
	slliw	a0, a0, 1
	or	s7, s7, a0
	bnez	s6, .LBB0_31
.LBB0_25:                               #   in Loop: Header=BB0_12 Depth=2
	li	s1, 0
	bnez	s0, .LBB0_33
	j	.LBB0_34
.LBB0_26:                               #   in Loop: Header=BB0_12 Depth=2
	blez	a2, .LBB0_30
# %bb.27:                               # %.preheader2
                                        #   in Loop: Header=BB0_12 Depth=2
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	li	s1, 0
	li	s2, 0
	lui	s11, %hi(intra_q)
	addi	s11, s11, %lo(intra_q)
.LBB0_28:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, %lo(mbinfo)(s5)
	ld	a1, %lo(blocks)(s3)
	mulw	a3, s10, a2
	lw	a2, %lo(dc_prec)(s6)
	add	a0, a0, s4
	lw	a4, 12(a0)
	add	a3, s1, a3
	slli	a0, a3, 7
	add	a0, a1, a0
	mv	a1, a0
	mv	a3, s11
	call	quant_intra
	lw	a2, %lo(block_count)(s9)
	addiw	s2, s2, 1
	addi	s1, s1, 1
	blt	s2, a2, .LBB0_28
# %bb.29:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a1, %lo(mbinfo)(s5)
	ld	s11, 40(sp)                     # 8-byte Folded Reload
.LBB0_30:                               #   in Loop: Header=BB0_12 Depth=2
	li	a0, -1
	sllw	a0, a0, a2
	not	s6, a0
	add	a0, a1, s4
	sw	s6, 16(a0)
	beqz	s6, .LBB0_25
.LBB0_31:                               #   in Loop: Header=BB0_12 Depth=2
	add	a0, a1, s4
	lw	a0, 12(a0)
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	xor	a0, a2, a0
	snez	a0, a0
	slliw	a0, a0, 4
	or	s7, s7, a0
	li	s1, 1
	bnez	s0, .LBB0_33
	j	.LBB0_34
.LBB0_32:                               #   in Loop: Header=BB0_12 Depth=2
	sw	zero, 16(a3)
	beqz	s0, .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(mb_width)
	lw	a0, %lo(mb_width)(a0)
	addiw	a0, a0, -1
	xor	a0, s0, a0
	seqz	a0, a0
	or	a0, s1, a0
	beqz	a0, .LBB0_46
.LBB0_34:                               #   in Loop: Header=BB0_12 Depth=2
	add	a1, a1, s4
	sw	zero, 20(a1)
	lui	s2, %hi(pict_type)
	lw	a0, %lo(pict_type)(s2)
	addi	a0, a0, -2
	snez	a0, a0
	or	a0, s1, a0
	slli	a1, s7, 60
	srli	a1, a1, 63
	or	a0, a0, a1
	addi	a0, a0, -1
	andi	a0, a0, 8
	or	s7, s7, a0
	lw	a0, 64(sp)                      # 8-byte Folded Reload
	call	putaddrinc
	lw	a0, %lo(pict_type)(s2)
	mv	a1, s7
	call	putmbtype
	lui	a0, %hi(frame_pred_dct)
	lw	a0, %lo(frame_pred_dct)(a0)
	andi	a1, s7, 12
	beqz	a1, .LBB0_37
# %bb.35:                               #   in Loop: Header=BB0_12 Depth=2
	bnez	a0, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, %lo(mbinfo)(s5)
	add	a0, a0, s4
	lw	a0, 4(a0)
	li	a1, 2
	call	putbits
	lui	a0, %hi(frame_pred_dct)
	lw	a0, %lo(frame_pred_dct)(a0)
.LBB0_37:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a1, %hi(pict_struct)
	lw	a1, %lo(pict_struct)(a1)
	addi	a1, a1, -3
	seqz	a1, a1
	and	a1, a1, s1
	beqz	a1, .LBB0_40
# %bb.38:                               #   in Loop: Header=BB0_12 Depth=2
	bnez	a0, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, %lo(mbinfo)(s5)
	add	a0, a0, s4
	lw	a0, 8(a0)
	li	a1, 1
	call	putbits
.LBB0_40:                               #   in Loop: Header=BB0_12 Depth=2
	andi	a0, s7, 16
	bnez	a0, .LBB0_44
# %bb.41:                               #   in Loop: Header=BB0_12 Depth=2
	andi	a0, s7, 8
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	bnez	a0, .LBB0_52
.LBB0_42:                               #   in Loop: Header=BB0_12 Depth=2
	andi	a0, s7, 4
	bnez	a0, .LBB0_53
.LBB0_43:                               #   in Loop: Header=BB0_12 Depth=2
	andi	a0, s7, 2
	bnez	a0, .LBB0_54
	j	.LBB0_56
.LBB0_44:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, %lo(mbinfo)(s5)
	lui	a1, %hi(q_scale_type)
	lw	a1, %lo(q_scale_type)(a1)
	add	a0, a0, s4
	lw	a0, 12(a0)
	beqz	a1, .LBB0_50
# %bb.45:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a1, %hi(map_non_linear_mquant)
	addi	a1, a1, %lo(map_non_linear_mquant)
	add	a0, a1, a0
	lbu	a0, 0(a0)
	j	.LBB0_51
.LBB0_46:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(pict_type)
	lw	a2, %lo(pict_type)(a0)
	andi	a3, s7, 8
	li	a0, 2
	bne	a2, a0, .LBB0_66
# %bb.47:                               #   in Loop: Header=BB0_12 Depth=2
	bnez	a3, .LBB0_66
# %bb.48:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(dc_dct_pred)
	sw	zero, %lo(dc_dct_pred)(a0)
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	sw	zero, 8(a0)
	sw	zero, 4(a0)
	add	a1, a1, s4
	sd	zero, 72(sp)
	sd	zero, 80(sp)
	sd	zero, 88(sp)
	sd	zero, 96(sp)
	sw	s7, 0(a1)
	li	a0, 1
	sw	a0, 20(a1)
.LBB0_49:                               #   in Loop: Header=BB0_12 Depth=2
	ld	s1, 64(sp)                      # 8-byte Folded Reload
	addi	s1, s1, 1
	j	.LBB0_11
.LBB0_50:                               #   in Loop: Header=BB0_12 Depth=2
	srai	a0, a0, 1
.LBB0_51:                               #   in Loop: Header=BB0_12 Depth=2
	li	a1, 5
	call	putbits
	ld	a0, %lo(mbinfo)(s5)
	add	a0, a0, s4
	lw	a0, 12(a0)
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	andi	a0, s7, 8
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	beqz	a0, .LBB0_42
.LBB0_52:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, %lo(mbinfo)(s5)
	add	a1, a0, s4
	lw	a5, 4(a1)
	lui	a0, %hi(forw_hor_f_code)
	lw	a6, %lo(forw_hor_f_code)(a0)
	lui	a0, %hi(forw_vert_f_code)
	lw	a7, %lo(forw_vert_f_code)(a0)
	addi	a0, a1, 24
	addi	a2, a1, 56
	addi	a3, a1, 72
	addi	a1, sp, 72
	li	a4, 0
	call	putmvs
	andi	a0, s7, 4
	beqz	a0, .LBB0_43
.LBB0_53:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a0, %lo(mbinfo)(s5)
	add	a1, a0, s4
	lw	a5, 4(a1)
	lui	a0, %hi(back_hor_f_code)
	lw	a6, %lo(back_hor_f_code)(a0)
	lui	a0, %hi(back_vert_f_code)
	lw	a7, %lo(back_vert_f_code)(a0)
	addi	a0, a1, 24
	addi	a2, a1, 56
	addi	a3, a1, 72
	addi	a1, sp, 72
	li	a4, 1
	call	putmvs
	andi	a0, s7, 2
	beqz	a0, .LBB0_56
.LBB0_54:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a0, %lo(block_count)(s9)
	addi	a0, a0, -6
	sraw	a0, s6, a0
	andi	a0, a0, 63
	call	putcbp
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	li	a1, 1
	beq	a0, a1, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a1, %lo(block_count)(s9)
	addiw	a1, a1, -6
	mv	a0, s6
	call	putbits
.LBB0_56:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a0, %lo(block_count)(s9)
	andi	s8, s7, 1
	blez	a0, .LBB0_97
# %bb.57:                               #   in Loop: Header=BB0_12 Depth=2
	addi	a1, a0, -1
	srlw	a1, s6, a1
	andi	a1, a1, 1
	beqz	a1, .LBB0_60
# %bb.58:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a1, %lo(blocks)(s3)
	mulw	a0, a0, s11
	slli	a0, a0, 7
	add	a0, a1, a0
	bnez	s8, .LBB0_61
# %bb.59:                               #   in Loop: Header=BB0_12 Depth=2
	call	putnonintrablk
.LBB0_60:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a0, %lo(block_count)(s9)
	li	a1, 2
	bge	a0, a1, .LBB0_62
	j	.LBB0_97
.LBB0_61:                               #   in Loop: Header=BB0_12 Depth=2
	li	a1, 0
	call	putintrablk
	lw	a0, %lo(block_count)(s9)
	li	a1, 2
	blt	a0, a1, .LBB0_97
.LBB0_62:                               #   in Loop: Header=BB0_12 Depth=2
	addi	a1, a0, -2
	srlw	a1, s6, a1
	andi	a1, a1, 1
	beqz	a1, .LBB0_65
# %bb.63:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a1, %lo(blocks)(s3)
	mulw	a0, a0, s11
	slli	a0, a0, 7
	add	a0, a1, a0
	addi	a0, a0, 128
	bnez	s8, .LBB0_73
# %bb.64:                               #   in Loop: Header=BB0_12 Depth=2
	call	putnonintrablk
.LBB0_65:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a0, %lo(block_count)(s9)
	li	a1, 3
	bge	a0, a1, .LBB0_74
	j	.LBB0_97
.LBB0_66:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(pict_struct)
	lw	a0, %lo(pict_struct)(a0)
	li	a4, 3
	bne	a2, a4, .LBB0_78
# %bb.67:                               #   in Loop: Header=BB0_12 Depth=2
	bne	a0, a4, .LBB0_78
# %bb.68:                               #   in Loop: Header=BB0_12 Depth=2
	add	a0, a1, s4
	lw	a2, 4(a0)
	li	a4, 2
	bne	a2, a4, .LBB0_34
# %bb.69:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a2, -96(a0)
	xor	a2, a2, s7
	andi	a2, a2, 12
	bnez	a2, .LBB0_34
# %bb.70:                               #   in Loop: Header=BB0_12 Depth=2
	bnez	a3, .LBB0_100
.LBB0_71:                               #   in Loop: Header=BB0_12 Depth=2
	andi	a2, s7, 4
	bnez	a2, .LBB0_102
.LBB0_72:                               #   in Loop: Header=BB0_12 Depth=2
	sw	s7, 0(a0)
	li	a1, 1
	sw	a1, 20(a0)
	j	.LBB0_49
.LBB0_73:                               #   in Loop: Header=BB0_12 Depth=2
	li	a1, 0
	call	putintrablk
	lw	a0, %lo(block_count)(s9)
	li	a1, 3
	blt	a0, a1, .LBB0_97
.LBB0_74:                               #   in Loop: Header=BB0_12 Depth=2
	addi	a1, a0, -3
	srlw	a1, s6, a1
	andi	a1, a1, 1
	beqz	a1, .LBB0_77
# %bb.75:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a1, %lo(blocks)(s3)
	mulw	a0, a0, s11
	slli	a0, a0, 7
	add	a0, a1, a0
	addi	a0, a0, 256
	bnez	s8, .LBB0_85
# %bb.76:                               #   in Loop: Header=BB0_12 Depth=2
	call	putnonintrablk
.LBB0_77:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a0, %lo(block_count)(s9)
	li	a1, 4
	bge	a0, a1, .LBB0_86
	j	.LBB0_97
.LBB0_78:                               #   in Loop: Header=BB0_12 Depth=2
	bne	a2, a4, .LBB0_34
# %bb.79:                               #   in Loop: Header=BB0_12 Depth=2
	li	a2, 3
	beq	a0, a2, .LBB0_34
# %bb.80:                               #   in Loop: Header=BB0_12 Depth=2
	add	a2, a1, s4
	lw	a4, 4(a2)
	li	a5, 1
	bne	a4, a5, .LBB0_34
# %bb.81:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a4, -96(a2)
	xor	a4, a4, s7
	andi	a4, a4, 12
	bnez	a4, .LBB0_34
# %bb.82:                               #   in Loop: Header=BB0_12 Depth=2
	bnez	a3, .LBB0_104
.LBB0_83:                               #   in Loop: Header=BB0_12 Depth=2
	andi	a3, s7, 4
	bnez	a3, .LBB0_107
.LBB0_84:                               #   in Loop: Header=BB0_12 Depth=2
	sw	s7, 0(a2)
	li	a0, 1
	sw	a0, 20(a2)
	j	.LBB0_49
.LBB0_85:                               #   in Loop: Header=BB0_12 Depth=2
	li	a1, 0
	call	putintrablk
	lw	a0, %lo(block_count)(s9)
	li	a1, 4
	blt	a0, a1, .LBB0_97
.LBB0_86:                               #   in Loop: Header=BB0_12 Depth=2
	addi	a1, a0, -4
	srlw	a1, s6, a1
	andi	a1, a1, 1
	beqz	a1, .LBB0_89
# %bb.87:                               #   in Loop: Header=BB0_12 Depth=2
	ld	a1, %lo(blocks)(s3)
	mulw	a0, a0, s11
	slli	a0, a0, 7
	add	a0, a1, a0
	addi	a0, a0, 384
	bnez	s8, .LBB0_90
# %bb.88:                               #   in Loop: Header=BB0_12 Depth=2
	call	putnonintrablk
.LBB0_89:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a0, %lo(block_count)(s9)
	li	a1, 5
	bge	a0, a1, .LBB0_91
	j	.LBB0_97
.LBB0_90:                               #   in Loop: Header=BB0_12 Depth=2
	li	a1, 0
	call	putintrablk
	lw	a0, %lo(block_count)(s9)
	li	a1, 5
	blt	a0, a1, .LBB0_97
.LBB0_91:                               # %.preheader
                                        #   in Loop: Header=BB0_12 Depth=2
	li	s2, 4
	li	s1, -5
	j	.LBB0_94
.LBB0_92:                               #   in Loop: Header=BB0_94 Depth=3
	ld	a1, %lo(blocks)(s3)
	addw	a0, s2, a0
	slli	a0, a0, 7
	add	a0, a1, a0
	call	putnonintrablk
.LBB0_93:                               #   in Loop: Header=BB0_94 Depth=3
	lw	a0, %lo(block_count)(s9)
	addiw	s2, s2, 1
	addi	s1, s1, -1
	bge	s2, a0, .LBB0_97
.LBB0_94:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add	a1, a0, s1
	srlw	a1, s6, a1
	andi	a1, a1, 1
	beqz	a1, .LBB0_93
# %bb.95:                               #   in Loop: Header=BB0_94 Depth=3
	mul	a0, s10, a0
	beqz	s8, .LBB0_92
# %bb.96:                               #   in Loop: Header=BB0_94 Depth=3
	andi	a1, s2, 1
	ld	a2, %lo(blocks)(s3)
	addi	a1, a1, 1
	addw	a0, s2, a0
	slli	a0, a0, 7
	add	a0, a2, a0
	call	putintrablk
	j	.LBB0_93
.LBB0_97:                               #   in Loop: Header=BB0_12 Depth=2
	bnez	s8, .LBB0_9
# %bb.98:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(dc_dct_pred)
	sw	zero, %lo(dc_dct_pred)(a0)
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	sw	zero, 8(a0)
	sw	zero, 4(a0)
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	bnez	a0, .LBB0_10
# %bb.99:                               #   in Loop: Header=BB0_12 Depth=2
	lui	a0, %hi(pict_type)
	lw	a0, %lo(pict_type)(a0)
	li	a1, 2
	beq	a0, a1, .LBB0_9
	j	.LBB0_10
.LBB0_100:                              #   in Loop: Header=BB0_12 Depth=2
	lw	a2, 72(sp)
	lw	a3, 24(a0)
	bne	a2, a3, .LBB0_34
# %bb.101:                              #   in Loop: Header=BB0_12 Depth=2
	lw	a2, 76(sp)
	lw	a3, 28(a0)
	bne	a2, a3, .LBB0_34
	j	.LBB0_71
.LBB0_102:                              #   in Loop: Header=BB0_12 Depth=2
	lw	a2, 80(sp)
	lw	a3, 32(a0)
	bne	a2, a3, .LBB0_34
# %bb.103:                              #   in Loop: Header=BB0_12 Depth=2
	lw	a2, 84(sp)
	lw	a3, 36(a0)
	bne	a2, a3, .LBB0_34
	j	.LBB0_72
.LBB0_104:                              #   in Loop: Header=BB0_12 Depth=2
	lw	a3, 72(sp)
	lw	a4, 24(a2)
	bne	a3, a4, .LBB0_34
# %bb.105:                              #   in Loop: Header=BB0_12 Depth=2
	lw	a3, 76(sp)
	lw	a4, 28(a2)
	bne	a3, a4, .LBB0_34
# %bb.106:                              #   in Loop: Header=BB0_12 Depth=2
	lw	a3, 56(a2)
	addi	a4, a0, -2
	seqz	a4, a4
	bne	a3, a4, .LBB0_34
	j	.LBB0_83
.LBB0_107:                              #   in Loop: Header=BB0_12 Depth=2
	lw	a3, 80(sp)
	lw	a4, 32(a2)
	bne	a3, a4, .LBB0_34
# %bb.108:                              #   in Loop: Header=BB0_12 Depth=2
	lw	a3, 84(sp)
	lw	a4, 36(a2)
	bne	a3, a4, .LBB0_34
# %bb.109:                              #   in Loop: Header=BB0_12 Depth=2
	lw	a3, 60(a2)
	addi	a0, a0, -2
	seqz	a0, a0
	bne	a3, a0, .LBB0_34
	j	.LBB0_84
.LBB0_110:
	call	rc_update_pict
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s6, 144(sp)                     # 8-byte Folded Reload
	ld	s7, 136(sp)                     # 8-byte Folded Reload
	ld	s8, 128(sp)                     # 8-byte Folded Reload
	ld	s9, 120(sp)                     # 8-byte Folded Reload
	ld	s10, 112(sp)                    # 8-byte Folded Reload
	ld	s11, 104(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 208
	tail	vbv_end_of_picture
.Lfunc_end0:
	.size	putpict, .Lfunc_end0-putpict
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function putmvs
	.type	putmvs,@function
putmvs:                                 # @putmvs
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	sd	s5, 8(sp)                       # 8-byte Folded Spill
	lui	t0, %hi(pict_struct)
	lw	t0, %lo(pict_struct)(t0)
	li	t1, 3
	mv	s0, a7
	mv	s1, a6
	mv	s2, a1
	mv	s3, a0
	bne	t0, t1, .LBB1_4
# %bb.1:
	li	a0, 1
	beq	a5, a0, .LBB1_8
# %bb.2:
	slli	a4, a4, 3
	add	s3, s3, a4
	li	a0, 2
	bne	a5, a0, .LBB1_11
# %bb.3:
	lw	a0, 0(s3)
	add	s2, s2, a4
	j	.LBB1_7
.LBB1_4:
	li	a0, 2
	beq	a5, a0, .LBB1_9
# %bb.5:
	li	a0, 1
	bne	a5, a0, .LBB1_12
# %bb.6:
	slli	a0, a4, 2
	add	a0, a2, a0
	lw	a0, 0(a0)
	li	a1, 1
	mv	s4, a4
	call	putbits
	slli	s4, s4, 3
	add	s3, s3, s4
	lw	a0, 0(s3)
	add	s2, s2, s4
.LBB1_7:
	lw	a1, 0(s2)
	subw	a0, a0, a1
	mv	a1, s1
	call	putmv
	lw	a0, 4(s3)
	lw	a1, 4(s2)
	subw	a0, a0, a1
	mv	a1, s0
	call	putmv
	j	.LBB1_14
.LBB1_8:
	slli	a0, a4, 2
	add	s4, a2, a0
	lw	a0, 0(s4)
	li	a1, 1
	mv	s5, a4
	call	putbits
	slli	s5, s5, 3
	add	s3, s3, s5
	lw	a0, 0(s3)
	add	s2, s2, s5
	lw	a1, 0(s2)
	subw	a0, a0, a1
	mv	a1, s1
	call	putmv
	lw	a0, 4(s3)
	lw	a1, 4(s2)
	srai	a0, a0, 1
	srai	a1, a1, 1
	sub	a0, a0, a1
	mv	a1, s0
	call	putmv
	lw	a0, 8(s4)
	li	a1, 1
	call	putbits
	lw	a0, 16(s3)
	lw	a1, 16(s2)
	subw	a0, a0, a1
	mv	a1, s1
	call	putmv
	lw	a0, 20(s3)
	lw	a1, 20(s2)
	srai	a0, a0, 1
	srai	a1, a1, 1
	sub	a0, a0, a1
	j	.LBB1_10
.LBB1_9:
	slli	a0, a4, 2
	add	s4, a2, a0
	lw	a0, 0(s4)
	li	a1, 1
	mv	s5, a4
	call	putbits
	slli	s5, s5, 3
	add	s3, s3, s5
	lw	a0, 0(s3)
	add	s2, s2, s5
	lw	a1, 0(s2)
	subw	a0, a0, a1
	mv	a1, s1
	call	putmv
	lw	a0, 4(s3)
	lw	a1, 4(s2)
	subw	a0, a0, a1
	mv	a1, s0
	call	putmv
	lw	a0, 8(s4)
	li	a1, 1
	call	putbits
	lw	a0, 16(s3)
	lw	a1, 16(s2)
	subw	a0, a0, a1
	mv	a1, s1
	call	putmv
	lw	a0, 20(s3)
	lw	a1, 20(s2)
	subw	a0, a0, a1
.LBB1_10:
	mv	a1, s0
	call	putmv
	lw	a0, 0(s3)
	sw	a0, 0(s2)
	lw	a0, 4(s3)
	sw	a0, 4(s2)
	lw	a0, 16(s3)
	sw	a0, 16(s2)
	lw	a0, 20(s3)
	sw	a0, 20(s2)
	j	.LBB1_15
.LBB1_11:
	lw	a0, 0(s3)
	add	s2, s2, a4
	lw	a1, 0(s2)
	subw	a0, a0, a1
	mv	a1, s1
	mv	s1, a3
	call	putmv
	lw	a0, 0(s1)
	call	putdmv
	lw	a0, 4(s3)
	lw	a1, 4(s2)
	srai	a0, a0, 1
	srai	a1, a1, 1
	sub	a0, a0, a1
	j	.LBB1_13
.LBB1_12:
	slli	a4, a4, 3
	add	s3, s3, a4
	lw	a0, 0(s3)
	add	s2, s2, a4
	lw	a1, 0(s2)
	subw	a0, a0, a1
	mv	a1, s1
	mv	s1, a3
	call	putmv
	lw	a0, 0(s1)
	call	putdmv
	lw	a0, 4(s3)
	lw	a1, 4(s2)
	subw	a0, a0, a1
.LBB1_13:
	mv	a1, s0
	call	putmv
	lw	a0, 4(s1)
	call	putdmv
.LBB1_14:
	lw	a0, 0(s3)
	sw	a0, 16(s2)
	sw	a0, 0(s2)
	lw	a0, 4(s3)
	sw	a0, 20(s2)
	sw	a0, 4(s2)
.LBB1_15:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	ld	s5, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end1:
	.size	putmvs, .Lfunc_end1-putmvs
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
