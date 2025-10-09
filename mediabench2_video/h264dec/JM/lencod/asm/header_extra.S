	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"header.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function SliceHeader
.LCPI0_0:
	.quad	0x3fe62e42fefa39ef              # double 0.69314718055994529
	.text
	.globl	SliceHeader
	.p2align	2
	.type	SliceHeader,@function
SliceHeader:                            # @SliceHeader
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
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 945(a0)
	slli	a0, a0, 3
	lui	s5, %hi(assignSE2partition)
	addi	s5, s5, %lo(assignSE2partition)
	lui	s0, %hi(img)
	ld	a1, %lo(img)(s0)
	add	a0, s5, a0
	ld	a0, 0(a0)
	lui	a2, 8
	add	a2, a1, a2
	ld	a3, -1200(a2)
	lw	a0, 0(a0)
	lui	a2, 22
	sd	a3, 0(sp)                       # 8-byte Folded Spill
	ld	a3, 24(a3)
	add	a2, a1, a2
	li	a4, 112
	mul	a0, a0, a4
	add	a0, a3, a0
	lw	a2, 108(a2)
	lw	a1, 12(a1)
	ld	s4, 0(a0)
	snez	a0, a2
	sraw	a1, a1, a0
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	mv	a2, s4
	call	ue_v
	ld	a1, %lo(img)(s0)
	lw	a1, 24(a1)
	li	a2, 4
	mv	s1, a0
	bgeu	a1, a2, .LBB0_2
# %bb.1:
	addiw	a1, a1, 5
	j	.LBB0_3
.LBB0_2:
	lui	a0, %hi(.L.str.27)
	addi	a0, a0, %lo(.L.str.27)
	li	a1, 1
	call	error
	li	a1, 0
.LBB0_3:
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	mv	a2, s4
	call	ue_v
	lui	a1, %hi(active_pps)
	ld	a1, %lo(active_pps)(a1)
	lw	a1, 4(a1)
	add	s11, a0, s1
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	mv	a2, s4
	call	ue_v
	lui	s2, %hi(img)
	ld	a1, %lo(img)(s2)
	lui	a2, %hi(log2_max_frame_num_minus4)
	lw	a3, %lo(log2_max_frame_num_minus4)(a2)
	lui	s0, 22
	add	a1, a1, s0
	lw	a2, 172(a1)
	mv	s1, a0
	addiw	a0, a3, 4
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	mv	a3, s4
	call	u_v
	lui	a1, %hi(active_sps)
	ld	a1, %lo(active_sps)(a1)
	lw	a1, 1148(a1)
	add	a0, s1, a0
	add	s11, s11, a0
	beqz	a1, .LBB0_5
# %bb.4:
	li	s0, 0
	li	s3, 1
	j	.LBB0_9
.LBB0_5:
	ld	a0, %lo(img)(s2)
	lw	a1, 28(a0)
	add	a0, a0, s0
	lw	a0, -904(a0)
	addiw	s0, a1, -1
	sltiu	a1, s0, 2
	beq	a0, a1, .LBB0_6
	j	.LBB0_127
.LBB0_6:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	mv	a2, s4
	call	u_1
	li	s3, 1
	add	s11, a0, s11
	bltu	s3, s0, .LBB0_8
# %bb.7:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 28(a0)
	addi	a0, a0, -2
	seqz	a1, a0
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	mv	a2, s4
	call	u_1
	li	s3, 0
	add	s11, a0, s11
	li	s0, 1
	j	.LBB0_9
.LBB0_8:
	li	s0, 0
.LBB0_9:
	ld	a1, %lo(img)(s2)
	lui	a0, 8
	add	a0, a1, a0
	ld	a0, -1208(a0)
	lw	a0, 4(a0)
	beqz	a0, .LBB0_11
# %bb.10:
	lw	a0, 0(a1)
	srliw	a1, a0, 31
	add	a1, a0, a1
	andi	a1, a1, -2
	subw	a1, a0, a1
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	mv	a2, s4
	call	ue_v
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	s11, a0, s11
.LBB0_11:
	lui	a0, 22
	addiw	s1, a0, 112
	add	a3, a1, s1
	lw	a0, 0(a3)
	bnez	a0, .LBB0_21
# %bb.12:
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 1148(a0)
	bnez	a0, .LBB0_17
# %bb.13:
	bnez	s3, .LBB0_17
# %bb.14:
	lw	a0, 28(a1)
	li	a1, 1
	beq	a0, a1, .LBB0_17
# %bb.15:
	li	a1, 2
	bne	a0, a1, .LBB0_126
# %bb.16:
	lui	a0, %hi(log2_max_pic_order_cnt_lsb_minus4)
	lw	a0, %lo(log2_max_pic_order_cnt_lsb_minus4)(a0)
	lw	a1, 48(a3)
	j	.LBB0_18
.LBB0_17:
	lui	a0, %hi(log2_max_pic_order_cnt_lsb_minus4)
	lw	a0, %lo(log2_max_pic_order_cnt_lsb_minus4)(a0)
	lw	a1, 44(a3)
.LBB0_18:
	addiw	a0, a0, 4
	li	a2, -1
	sllw	a2, a2, a0
	not	a2, a2
	and	a2, a1, a2
	sw	a2, 24(a3)
.LBB0_19:
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	mv	a3, s4
	call	u_v
	lui	s2, %hi(img)
	ld	a1, %lo(img)(s2)
	lui	a2, 22
	addiw	a2, a2, 140
	add	a2, a1, a2
	lw	a3, 60(a2)
	seqz	a3, a3
	or	a3, s0, a3
	add	s11, a0, s11
	bnez	a3, .LBB0_21
# %bb.20:
	lw	a1, 0(a2)
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	mv	a2, s4
	call	se_v
	ld	a1, %lo(img)(s2)
	add	s11, a0, s11
.LBB0_21:
	add	s1, a1, s1
	lw	a0, 0(s1)
	li	a2, 1
	bne	a0, a2, .LBB0_25
# %bb.22:
	lw	a0, 4(s1)
	bnez	a0, .LBB0_25
# %bb.23:
	lw	a1, 32(s1)
	lui	a0, %hi(.L.str.11)
	addi	a0, a0, %lo(.L.str.11)
	mv	a2, s4
	call	se_v
	lui	s1, %hi(img)
	ld	a1, %lo(img)(s1)
	lui	a2, 22
	addiw	a2, a2, 148
	add	a2, a1, a2
	lw	a3, 52(a2)
	seqz	a3, a3
	or	a3, s0, a3
	add	s11, a0, s11
	bnez	a3, .LBB0_25
# %bb.24:
	lw	a1, 0(a2)
	lui	a0, %hi(.L.str.12)
	addi	a0, a0, %lo(.L.str.12)
	mv	a2, s4
	call	se_v
	ld	a1, %lo(img)(s1)
	add	s11, a0, s11
.LBB0_25:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 1829(a0)
	beqz	a0, .LBB0_27
# %bb.26:
	lui	a0, 22
	add	a0, a1, a0
	lw	a1, 104(a0)
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	mv	a2, s4
	call	ue_v
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	s11, a0, s11
.LBB0_27:
	lw	a2, 24(a1)
	li	a0, 1
	bne	a2, a0, .LBB0_29
# %bb.28:
	lui	a0, 22
	add	a0, a1, a0
	lw	a1, -708(a0)
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	mv	a2, s4
	call	u_1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lw	a2, 24(a1)
	add	s11, a0, s11
.LBB0_29:
	lui	a0, 22
	addiw	a0, a0, -704
	li	a3, 3
	add	a1, a1, a0
	beq	a2, a3, .LBB0_32
# %bb.30:
	li	a0, 1
	beq	a2, a0, .LBB0_34
# %bb.31:
	bnez	a2, .LBB0_39
.LBB0_32:
	lui	a0, %hi(active_pps)
	ld	a0, %lo(active_pps)(a0)
	lw	a0, 184(a0)
	lw	s0, 0(a1)
.LBB0_33:
	addiw	s1, a0, 1
	xor	a0, s0, s1
	snez	a1, a0
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	mv	a2, s4
	call	u_1
	add	s11, a0, s11
	bne	s0, s1, .LBB0_37
	j	.LBB0_39
.LBB0_34:
	lui	a0, %hi(active_pps)
	ld	a0, %lo(active_pps)(a0)
	lw	a2, 184(a0)
	lw	a3, 0(a1)
	addiw	a2, a2, 1
	bne	a3, a2, .LBB0_36
# %bb.35:
	lw	a0, 188(a0)
	lw	s0, 4(a1)
	j	.LBB0_33
.LBB0_36:
	lui	a0, %hi(.L.str.15)
	addi	a0, a0, %lo(.L.str.15)
	li	a1, 1
	mv	a2, s4
	call	u_1
	add	s11, a0, s11
.LBB0_37:
	lui	s1, %hi(img)
	ld	a0, %lo(img)(s1)
	lui	s0, 22
	add	a0, a0, s0
	lw	a1, -704(a0)
	addiw	a1, a1, -1
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	mv	a2, s4
	call	ue_v
	ld	a1, %lo(img)(s1)
	lw	a2, 24(a1)
	li	a3, 1
	add	s11, a0, s11
	bne	a2, a3, .LBB0_39
# %bb.38:
	add	a1, a1, s0
	lw	a1, -700(a1)
	addiw	a1, a1, -1
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	mv	a2, s4
	call	ue_v
	add	s11, a0, s11
.LBB0_39:
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 945(a0)
	slli	a0, a0, 3
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	add	a0, s5, a0
	ld	a0, 0(a0)
	lui	a2, 8
	add	a2, a1, a2
	ld	s4, -1200(a2)
	lw	a0, 0(a0)
	ld	a2, 24(s4)
	li	a3, 112
	mul	a0, a0, a3
	add	a0, a2, a0
	lw	a1, 24(a1)
	ld	s1, 0(a0)
	li	a0, 2
	bne	a1, a0, .LBB0_41
# %bb.40:
	li	s2, 0
	j	.LBB0_48
.LBB0_41:
	lw	a1, 56(s4)
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	mv	a2, s1
	call	u_1
	lw	a1, 56(s4)
	mv	s2, a0
	beqz	a1, .LBB0_48
# %bb.42:
	li	s5, 0
	addi	s6, s4, 80
	addi	s7, s4, 72
	ld	a1, 64(s4)
	lui	s3, %hi(.L.str.30)
	addi	s3, s3, %lo(.L.str.30)
	lui	s8, %hi(.L.str.31)
	addi	s8, s8, %lo(.L.str.31)
	li	s9, 2
	li	s10, 3
	lui	s0, %hi(.L.str.32)
	addi	s0, s0, %lo(.L.str.32)
	j	.LBB0_45
.LBB0_43:                               #   in Loop: Header=BB0_45 Depth=1
	ld	a1, 0(a3)
	add	a1, a1, s5
	lw	a1, 0(a1)
	mv	a2, s1
	call	ue_v
	ld	a1, 64(s4)
	add	a2, a1, s5
	lw	a2, 0(a2)
	add	s2, a0, s2
.LBB0_44:                               #   in Loop: Header=BB0_45 Depth=1
	addi	s5, s5, 4
	beq	a2, s10, .LBB0_48
.LBB0_45:                               # =>This Inner Loop Header: Depth=1
	add	a1, a1, s5
	lw	a1, 0(a1)
	mv	a0, s3
	mv	a2, s1
	call	ue_v
	ld	a1, 64(s4)
	add	a2, a1, s5
	lw	a2, 0(a2)
	add	s2, a0, s2
	mv	a3, s7
	mv	a0, s8
	bltu	a2, s9, .LBB0_43
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=1
	bne	a2, s9, .LBB0_44
# %bb.47:                               #   in Loop: Header=BB0_45 Depth=1
	mv	a3, s6
	mv	a0, s0
	j	.LBB0_43
.LBB0_48:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 24(a0)
	li	a1, 1
	bne	a0, a1, .LBB0_56
# %bb.49:
	lw	a1, 88(s4)
	lui	a0, %hi(.L.str.33)
	addi	a0, a0, %lo(.L.str.33)
	mv	a2, s1
	call	u_1
	lw	a1, 88(s4)
	add	s2, a0, s2
	beqz	a1, .LBB0_56
# %bb.50:
	li	s0, 0
	addi	s5, s4, 112
	addi	s6, s4, 104
	ld	a1, 96(s4)
	lui	s3, %hi(.L.str.34)
	addi	s3, s3, %lo(.L.str.34)
	lui	s7, %hi(.L.str.35)
	addi	s7, s7, %lo(.L.str.35)
	li	s8, 2
	li	s9, 3
	lui	s10, %hi(.L.str.36)
	addi	s10, s10, %lo(.L.str.36)
	j	.LBB0_53
.LBB0_51:                               #   in Loop: Header=BB0_53 Depth=1
	ld	a1, 0(a3)
	add	a1, a1, s0
	lw	a1, 0(a1)
	mv	a2, s1
	call	ue_v
	ld	a1, 96(s4)
	add	a2, a1, s0
	lw	a2, 0(a2)
	add	s2, a0, s2
.LBB0_52:                               #   in Loop: Header=BB0_53 Depth=1
	addi	s0, s0, 4
	beq	a2, s9, .LBB0_56
.LBB0_53:                               # =>This Inner Loop Header: Depth=1
	add	a1, a1, s0
	lw	a1, 0(a1)
	mv	a0, s3
	mv	a2, s1
	call	ue_v
	ld	a1, 96(s4)
	add	a2, a1, s0
	lw	a2, 0(a2)
	add	s2, a0, s2
	mv	a3, s6
	mv	a0, s7
	bltu	a2, s8, .LBB0_51
# %bb.54:                               #   in Loop: Header=BB0_53 Depth=1
	bne	a2, s8, .LBB0_52
# %bb.55:                               #   in Loop: Header=BB0_53 Depth=1
	mv	a3, s5
	mv	a0, s10
	j	.LBB0_51
.LBB0_56:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	add	s1, s2, s11
	beqz	a1, .LBB0_60
# %bb.57:
	li	a2, 3
	beq	a1, a2, .LBB0_60
# %bb.58:
	li	a2, 1
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	lui	a4, %hi(assignSE2partition)
	addi	a4, a4, %lo(assignSE2partition)
	bne	a1, a2, .LBB0_93
# %bb.59:
	lui	a1, %hi(active_pps)
	ld	a2, %lo(active_pps)(a1)
	j	.LBB0_62
.LBB0_60:
	lui	a2, %hi(active_pps)
	ld	a2, %lo(active_pps)(a2)
	lw	a3, 192(a2)
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	lui	a4, %hi(assignSE2partition)
	addi	a4, a4, %lo(assignSE2partition)
	bnez	a3, .LBB0_63
# %bb.61:
	li	a3, 1
	bne	a1, a3, .LBB0_93
.LBB0_62:
	lw	a1, 196(a2)
	li	a2, 1
	bne	a1, a2, .LBB0_93
.LBB0_63:
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	addi	a1, a1, 2047
	lw	a1, 945(a1)
	slli	a1, a1, 3
	add	a1, a4, a1
	ld	a1, 0(a1)
	lui	a2, 8
	add	a0, a0, a2
	ld	a0, -1200(a0)
	lw	a1, 0(a1)
	ld	a0, 24(a0)
	li	a2, 112
	mul	a1, a1, a2
	add	a0, a0, a1
	ld	s1, 0(a0)
	lui	a0, %hi(luma_log_weight_denom)
	lw	a1, %lo(luma_log_weight_denom)(a0)
	lui	a0, %hi(.L.str.46)
	addi	a0, a0, %lo(.L.str.46)
	mv	a2, s1
	call	ue_v
	lui	a1, %hi(active_sps)
	ld	a1, %lo(active_sps)(a1)
	lw	a1, 32(a1)
	mv	s2, a0
	beqz	a1, .LBB0_65
# %bb.64:
	lui	a0, %hi(chroma_log_weight_denom)
	lw	a1, %lo(chroma_log_weight_denom)(a0)
	lui	a0, %hi(.L.str.47)
	addi	a0, a0, %lo(.L.str.47)
	mv	a2, s1
	call	ue_v
	add	s2, a0, s2
.LBB0_65:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, -704(a1)
	blez	a1, .LBB0_78
# %bb.66:                               # %.preheader2
	li	s0, 0
	li	s4, 0
	lui	s7, %hi(wp_weight)
	li	s10, 1
	lui	s11, %hi(wp_offset)
	lui	s3, %hi(.L.str.48)
	addi	s3, s3, %lo(.L.str.48)
	lui	s8, %hi(active_sps)
	lui	s5, %hi(.L.str.52)
	addi	s5, s5, %lo(.L.str.52)
	lui	s6, %hi(.L.str.53)
	addi	s6, s6, %lo(.L.str.53)
	j	.LBB0_69
.LBB0_67:                               #   in Loop: Header=BB0_69 Depth=1
	li	a1, 1
	lui	a0, %hi(.L.str.51)
	addi	a0, a0, %lo(.L.str.51)
	mv	a2, s1
	call	u_1
	ld	a1, %lo(wp_weight)(s7)
	ld	a1, 0(a1)
	add	a1, a1, s0
	ld	a1, 0(a1)
	lw	a1, 4(a1)
	mv	s9, a0
	mv	a0, s5
	mv	a2, s1
	call	se_v
	ld	a1, %lo(wp_offset)(s11)
	ld	a1, 0(a1)
	add	a1, a1, s0
	ld	a1, 0(a1)
	lw	a1, 4(a1)
	add	s9, s9, a0
	mv	a0, s6
	mv	a2, s1
	call	se_v
	ld	a1, %lo(wp_weight)(s7)
	ld	a1, 0(a1)
	add	a1, a1, s0
	ld	a1, 0(a1)
	lw	a1, 8(a1)
	add	a0, s9, a0
	add	s9, a0, s2
	mv	a0, s5
	mv	a2, s1
	call	se_v
	ld	a1, %lo(wp_offset)(s11)
	ld	a1, 0(a1)
	add	a1, a1, s0
	ld	a1, 0(a1)
	lw	a1, 8(a1)
	mv	s2, a0
	mv	a0, s6
	mv	a2, s1
	call	se_v
	add	a0, s2, a0
	add	s2, s9, a0
.LBB0_68:                               #   in Loop: Header=BB0_69 Depth=1
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, -704(a1)
	addi	s4, s4, 1
	addi	s0, s0, 8
	bge	s4, a1, .LBB0_78
.LBB0_69:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(wp_weight)(s7)
	ld	a0, 0(a0)
	add	a0, a0, s0
	ld	a0, 0(a0)
	lui	a1, %hi(luma_log_weight_denom)
	lwu	a1, %lo(luma_log_weight_denom)(a1)
	lw	a0, 0(a0)
	sllw	a1, s10, a1
	bne	a0, a1, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_69 Depth=1
	ld	a0, %lo(wp_offset)(s11)
	ld	a0, 0(a0)
	add	a0, a0, s0
	ld	a0, 0(a0)
	lw	a0, 0(a0)
	beqz	a0, .LBB0_77
.LBB0_71:                               #   in Loop: Header=BB0_69 Depth=1
	li	a1, 1
	mv	a0, s3
	mv	a2, s1
	call	u_1
	ld	a1, %lo(wp_weight)(s7)
	ld	a1, 0(a1)
	add	a1, a1, s0
	ld	a1, 0(a1)
	lw	a1, 0(a1)
	add	s2, a0, s2
	lui	a0, %hi(.L.str.49)
	addi	a0, a0, %lo(.L.str.49)
	mv	a2, s1
	call	se_v
	ld	a1, %lo(wp_offset)(s11)
	ld	a1, 0(a1)
	add	a1, a1, s0
	ld	a1, 0(a1)
	lw	a1, 0(a1)
	add	s2, s2, a0
	lui	a0, %hi(.L.str.50)
	addi	a0, a0, %lo(.L.str.50)
	mv	a2, s1
	call	se_v
	add	s2, s2, a0
	ld	a0, %lo(active_sps)(s8)
	lw	a0, 32(a0)
	beqz	a0, .LBB0_68
.LBB0_72:                               #   in Loop: Header=BB0_69 Depth=1
	ld	a0, %lo(wp_weight)(s7)
	ld	a0, 0(a0)
	add	a0, a0, s0
	ld	a0, 0(a0)
	lui	a1, %hi(chroma_log_weight_denom)
	lwu	a2, %lo(chroma_log_weight_denom)(a1)
	lw	a1, 4(a0)
	sllw	a2, s10, a2
	bne	a1, a2, .LBB0_67
# %bb.73:                               #   in Loop: Header=BB0_69 Depth=1
	ld	a2, %lo(wp_offset)(s11)
	ld	a2, 0(a2)
	add	a2, a2, s0
	ld	a2, 0(a2)
	lw	a3, 4(a2)
	bnez	a3, .LBB0_67
# %bb.74:                               #   in Loop: Header=BB0_69 Depth=1
	lw	a0, 8(a0)
	bne	a0, a1, .LBB0_67
# %bb.75:                               #   in Loop: Header=BB0_69 Depth=1
	lw	a0, 8(a2)
	bnez	a0, .LBB0_67
# %bb.76:                               #   in Loop: Header=BB0_69 Depth=1
	lui	a0, %hi(.L.str.51)
	addi	a0, a0, %lo(.L.str.51)
	li	a1, 0
	mv	a2, s1
	call	u_1
	add	s2, a0, s2
	j	.LBB0_68
.LBB0_77:                               #   in Loop: Header=BB0_69 Depth=1
	mv	a0, s3
	li	a1, 0
	mv	a2, s1
	call	u_1
	add	s2, a0, s2
	ld	a0, %lo(active_sps)(s8)
	lw	a0, 32(a0)
	bnez	a0, .LBB0_72
	j	.LBB0_68
.LBB0_78:
	lw	a1, 24(a0)
	li	a2, 1
	bne	a1, a2, .LBB0_92
# %bb.79:
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, -700(a1)
	blez	a1, .LBB0_92
# %bb.80:                               # %.preheader
	li	s11, 0
	li	s0, 0
	lui	s4, %hi(wp_weight)
	li	s8, 1
	lui	s10, %hi(wp_offset)
	lui	s3, %hi(.L.str.54)
	addi	s3, s3, %lo(.L.str.54)
	lui	s7, %hi(img)
	lui	s5, %hi(.L.str.58)
	addi	s5, s5, %lo(.L.str.58)
	lui	s6, %hi(.L.str.59)
	addi	s6, s6, %lo(.L.str.59)
	j	.LBB0_83
.LBB0_81:                               #   in Loop: Header=BB0_83 Depth=1
	li	a1, 1
	lui	a0, %hi(.L.str.57)
	addi	a0, a0, %lo(.L.str.57)
	mv	a2, s1
	call	u_1
	ld	a1, %lo(wp_weight)(s4)
	ld	a1, 8(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	lw	a1, 4(a1)
	mv	s9, a0
	mv	a0, s5
	mv	a2, s1
	call	se_v
	ld	a1, %lo(wp_offset)(s10)
	ld	a1, 8(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	lw	a1, 4(a1)
	add	s9, s9, a0
	mv	a0, s6
	mv	a2, s1
	call	se_v
	ld	a1, %lo(wp_weight)(s4)
	ld	a1, 8(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	lw	a1, 8(a1)
	add	a0, s9, a0
	add	s9, a0, s2
	mv	a0, s5
	mv	a2, s1
	call	se_v
	ld	a1, %lo(wp_offset)(s10)
	ld	a1, 8(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	lw	a1, 8(a1)
	mv	s2, a0
	mv	a0, s6
	mv	a2, s1
	call	se_v
	add	a0, s2, a0
	add	s2, s9, a0
.LBB0_82:                               #   in Loop: Header=BB0_83 Depth=1
	ld	a0, %lo(img)(s7)
	lui	a1, 22
	add	a1, a0, a1
	lw	a1, -700(a1)
	addi	s0, s0, 1
	addi	s11, s11, 8
	bge	s0, a1, .LBB0_92
.LBB0_83:                               # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(wp_weight)(s4)
	ld	a0, 8(a0)
	add	a0, a0, s11
	ld	a0, 0(a0)
	lui	a1, %hi(luma_log_weight_denom)
	lwu	a1, %lo(luma_log_weight_denom)(a1)
	lw	a0, 0(a0)
	sllw	a1, s8, a1
	bne	a0, a1, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_83 Depth=1
	ld	a0, %lo(wp_offset)(s10)
	ld	a0, 8(a0)
	add	a0, a0, s11
	ld	a0, 0(a0)
	lw	a0, 0(a0)
	beqz	a0, .LBB0_91
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=1
	li	a1, 1
	mv	a0, s3
	mv	a2, s1
	call	u_1
	ld	a1, %lo(wp_weight)(s4)
	ld	a1, 8(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	lw	a1, 0(a1)
	add	s2, a0, s2
	lui	a0, %hi(.L.str.55)
	addi	a0, a0, %lo(.L.str.55)
	mv	a2, s1
	call	se_v
	ld	a1, %lo(wp_offset)(s10)
	ld	a1, 8(a1)
	add	a1, a1, s11
	ld	a1, 0(a1)
	lw	a1, 0(a1)
	add	s2, s2, a0
	lui	a0, %hi(.L.str.56)
	addi	a0, a0, %lo(.L.str.56)
	mv	a2, s1
	call	se_v
	add	s2, s2, a0
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 32(a0)
	beqz	a0, .LBB0_82
.LBB0_86:                               #   in Loop: Header=BB0_83 Depth=1
	ld	a0, %lo(wp_weight)(s4)
	ld	a0, 8(a0)
	add	a0, a0, s11
	ld	a0, 0(a0)
	lui	a1, %hi(chroma_log_weight_denom)
	lwu	a2, %lo(chroma_log_weight_denom)(a1)
	lw	a1, 4(a0)
	sllw	a2, s8, a2
	bne	a1, a2, .LBB0_81
# %bb.87:                               #   in Loop: Header=BB0_83 Depth=1
	ld	a2, %lo(wp_offset)(s10)
	ld	a2, 8(a2)
	add	a2, a2, s11
	ld	a2, 0(a2)
	lw	a3, 4(a2)
	bnez	a3, .LBB0_81
# %bb.88:                               #   in Loop: Header=BB0_83 Depth=1
	lw	a0, 8(a0)
	bne	a0, a1, .LBB0_81
# %bb.89:                               #   in Loop: Header=BB0_83 Depth=1
	lw	a0, 8(a2)
	bnez	a0, .LBB0_81
# %bb.90:                               #   in Loop: Header=BB0_83 Depth=1
	lui	a0, %hi(.L.str.57)
	addi	a0, a0, %lo(.L.str.57)
	li	a1, 0
	mv	a2, s1
	call	u_1
	add	s2, a0, s2
	j	.LBB0_82
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=1
	mv	a0, s3
	li	a1, 0
	mv	a2, s1
	call	u_1
	add	s2, a0, s2
	lui	a0, %hi(active_sps)
	ld	a0, %lo(active_sps)(a0)
	lw	a0, 32(a0)
	bnez	a0, .LBB0_86
	j	.LBB0_82
.LBB0_92:
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	add	s1, s2, s1
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	lui	a4, %hi(assignSE2partition)
	addi	a4, a4, %lo(assignSE2partition)
.LBB0_93:
	lui	a1, 22
	addiw	a2, a1, 204
	add	a2, a0, a2
	lw	a3, 0(a2)
	lui	a1, %hi(input)
	ld	a1, %lo(input)(a1)
	beqz	a3, .LBB0_97
# %bb.94:
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	addi	a1, a1, 2047
	lw	a1, 945(a1)
	lui	a3, 8
	addiw	a3, a3, -1208
	add	a0, a0, a3
	slli	a1, a1, 3
	add	a1, a4, a1
	ld	a1, 0(a1)
	ld	a3, 8(a0)
	lw	a1, 0(a1)
	ld	a3, 24(a3)
	ld	a0, 0(a0)
	li	a4, 112
	mul	a1, a1, a4
	add	a1, a3, a1
	lw	a0, 4(a0)
	ld	s1, 0(a1)
	beqz	a0, .LBB0_112
# %bb.95:
	lw	a1, 8(a2)
	lui	a0, %hi(.L.str.37)
	addi	a0, a0, %lo(.L.str.37)
	mv	a2, s1
	call	u_1
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 216(a1)
	mv	s2, a0
	lui	a0, %hi(.L.str.38)
	addi	a0, a0, %lo(.L.str.38)
	mv	a2, s1
	call	u_1
	add	s2, a0, s2
.LBB0_96:
	lui	a0, %hi(input)
	ld	a1, %lo(input)(a0)
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	add	s1, s2, s1
	ld	s3, 16(sp)                      # 8-byte Folded Reload
.LBB0_97:
	addi	a0, a1, 2047
	lw	a0, 937(a0)
	li	a1, 1
	bne	a0, a1, .LBB0_100
# %bb.98:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a1, 24(a0)
	li	a2, 2
	beq	a1, a2, .LBB0_100
# %bb.99:
	lui	a1, 22
	add	a0, a0, a1
	lw	a1, 232(a0)
	lui	a0, %hi(.L.str.18)
	addi	a0, a0, %lo(.L.str.18)
	mv	a2, s3
	call	ue_v
	add	s1, a0, s1
.LBB0_100:
	lui	s0, %hi(active_pps)
	ld	a0, %lo(active_pps)(s0)
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	lw	a1, 4(a1)
	lw	a0, 200(a0)
	subw	a1, a1, a0
	addiw	a1, a1, -26
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	mv	a2, s3
	call	se_v
	lui	s2, %hi(img)
	ld	a1, %lo(img)(s2)
	lw	a1, 24(a1)
	li	a2, 3
	addw	s1, a0, s1
	bne	a1, a2, .LBB0_102
# %bb.101:
	lui	a0, %hi(si_frame_indicator)
	lw	a0, %lo(si_frame_indicator)(a0)
	lui	a1, %hi(sp2_frame_indicator)
	lw	a1, %lo(sp2_frame_indicator)(a1)
	or	a0, a0, a1
	snez	a1, a0
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
	mv	a2, s3
	call	u_1
	ld	a1, %lo(img)(s2)
	lw	a1, 44(a1)
	mv	s2, a0
	addiw	a1, a1, -26
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	mv	a2, s3
	call	se_v
	add	a0, s2, a0
	addw	s1, a0, s1
.LBB0_102:
	ld	a0, %lo(active_pps)(s0)
	lw	a0, 220(a0)
	beqz	a0, .LBB0_105
# %bb.103:
	lui	s0, %hi(img)
	ld	a0, %lo(img)(s0)
	lui	s2, 22
	add	a0, a0, s2
	lw	a1, -720(a0)
	lui	a0, %hi(.L.str.22)
	addi	a0, a0, %lo(.L.str.22)
	mv	a2, s3
	call	ue_v
	ld	a1, %lo(img)(s0)
	addiw	a2, s2, -720
	add	a1, a1, a2
	lw	a2, 0(a1)
	li	a3, 1
	addw	s1, a0, s1
	beq	a2, a3, .LBB0_105
# %bb.104:
	lw	a0, 4(a1)
	srliw	a1, a0, 31
	add	a0, a0, a1
	sraiw	a1, a0, 1
	lui	a0, %hi(.L.str.23)
	addi	a0, a0, %lo(.L.str.23)
	mv	a2, s3
	call	se_v
	ld	a1, %lo(img)(s0)
	add	a1, a1, s2
	lw	a1, -712(a1)
	add	s1, a0, s1
	srliw	a0, a1, 31
	add	a0, a1, a0
	sraiw	a1, a0, 1
	lui	a0, %hi(.L.str.24)
	addi	a0, a0, %lo(.L.str.24)
	mv	a2, s3
	call	se_v
	addw	s1, s1, a0
.LBB0_105:
	lui	a0, %hi(active_pps)
	ld	a0, %lo(active_pps)(a0)
	lw	a1, 60(a0)
	beqz	a1, .LBB0_108
# %bb.106:
	lw	a1, 64(a0)
	addiw	a1, a1, -3
	li	a2, 2
	bltu	a2, a1, .LBB0_108
# %bb.107:
	lui	s0, %hi(img)
	ld	a1, %lo(img)(s0)
	lui	s2, 22
	addiw	a2, s2, 176
	add	a1, a1, a2
	lw	a2, 4(a1)
	lw	a1, 0(a1)
	lw	a0, 168(a0)
	mul	a1, a1, a2
	fcvt.s.wu	fa5, a1
	addi	a0, a0, 1
	fcvt.s.wu	fa4, a0
	fdiv.s	fa5, fa5, fa4
	lui	a0, 260096
	fmv.w.x	fa4, a0
	fadd.s	fa5, fa5, fa4
	fcvt.d.s	fa0, fa5
	call	log
	ld	a0, %lo(img)(s0)
	lui	a1, %hi(.LCPI0_0)
	fld	fa5, %lo(.LCPI0_0)(a1)
	add	a0, a0, s2
	lw	a2, 364(a0)
	fdiv.d	fa5, fa0, fa5
	fcvt.w.d	a0, fa5, rup
	lui	a1, %hi(.L.str.25)
	addi	a1, a1, %lo(.L.str.25)
	mv	a3, s3
	call	u_v
	addw	s1, a0, s1
.LBB0_108:
	lui	a0, %hi(input)
	ld	a0, %lo(input)(a0)
	addi	a0, a0, 2047
	lw	a0, 945(a0)
	beqz	a0, .LBB0_111
# %bb.109:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lui	a1, 8
	add	a1, a0, a1
	ld	a1, -1208(a1)
	lw	a1, 4(a1)
	bnez	a1, .LBB0_111
# %bb.110:
	lw	a1, 20(a0)
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	mv	a2, s3
	call	ue_v
	addw	s1, a0, s1
.LBB0_111:
	mv	a0, s1
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
.LBB0_112:
	ld	a0, 20(a2)
	snez	a1, a0
	sw	a1, 4(a2)
	lui	a0, %hi(.L.str.39)
	addi	a0, a0, %lo(.L.str.39)
	mv	a2, s1
	call	u_1
	lui	a1, %hi(img)
	ld	s3, %lo(img)(a1)
	lui	a1, 22
	addiw	a1, a1, 208
	add	s3, s3, a1
	lw	a1, 0(s3)
	mv	s2, a0
	beqz	a1, .LBB0_96
# %bb.113:
	addi	s3, s3, 16
	lui	s4, %hi(.L.str.41)
	addi	s4, s4, %lo(.L.str.41)
	li	s0, 3
	lui	s5, %hi(.L.str.42)
	addi	s5, s5, %lo(.L.str.42)
	li	s9, 2
	li	s10, 6
	lui	s6, %hi(.L.str.44)
	addi	s6, s6, %lo(.L.str.44)
	lui	s11, %hi(.L.str.45)
	addi	s11, s11, %lo(.L.str.45)
	li	s8, 4
	j	.LBB0_117
.LBB0_114:                              #   in Loop: Header=BB0_117 Depth=1
	li	a1, 8
	lui	a0, %hi(.L.str.43)
	addi	a0, a0, %lo(.L.str.43)
.LBB0_115:                              #   in Loop: Header=BB0_117 Depth=1
	add	a1, s3, a1
	lw	a1, 0(a1)
	mv	a2, s1
	call	ue_v
	add	s2, a0, s2
.LBB0_116:                              #   in Loop: Header=BB0_117 Depth=1
	addi	s3, s3, 24
	beqz	s7, .LBB0_96
.LBB0_117:                              # =>This Inner Loop Header: Depth=1
	ld	s3, 0(s3)
	bnez	s3, .LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_117 Depth=1
	li	a1, 500
	lui	a0, %hi(.L.str.40)
	addi	a0, a0, %lo(.L.str.40)
	call	error
.LBB0_119:                              #   in Loop: Header=BB0_117 Depth=1
	lw	s7, 0(s3)
	mv	a0, s4
	mv	a1, s7
	mv	a2, s1
	call	ue_v
	ori	a1, s7, 2
	add	s2, a0, s2
	bne	a1, s0, .LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_117 Depth=1
	lw	a1, 4(s3)
	mv	a0, s5
	mv	a2, s1
	call	ue_v
	add	a0, s2, a0
	addi	s2, a0, 1
.LBB0_121:                              #   in Loop: Header=BB0_117 Depth=1
	beq	s7, s9, .LBB0_114
# %bb.122:                              #   in Loop: Header=BB0_117 Depth=1
	beq	s7, s10, .LBB0_125
# %bb.123:                              #   in Loop: Header=BB0_117 Depth=1
	beq	s7, s0, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_117 Depth=1
	li	a1, 16
	mv	a0, s11
	beq	s7, s8, .LBB0_115
	j	.LBB0_116
.LBB0_125:                              #   in Loop: Header=BB0_117 Depth=1
	lw	a1, 12(s3)
	mv	a0, s6
	mv	a2, s1
	call	ue_v
	add	s2, a0, s2
	li	a1, 16
	mv	a0, s11
	beq	s7, s8, .LBB0_115
	j	.LBB0_116
.LBB0_126:
	lui	a0, %hi(log2_max_pic_order_cnt_lsb_minus4)
	lw	a0, %lo(log2_max_pic_order_cnt_lsb_minus4)(a0)
	lw	a2, 24(a3)
	addiw	a0, a0, 4
	j	.LBB0_19
.LBB0_127:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.SliceHeader)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.SliceHeader)
	li	a2, 83
	call	__assert_fail
.Lfunc_end0:
	.size	SliceHeader, .Lfunc_end0-SliceHeader
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	get_picture_type                # -- Begin function get_picture_type
	.p2align	2
	.type	get_picture_type,@function
get_picture_type:                       # @get_picture_type
# %bb.0:
	lui	a0, %hi(img)
	ld	a0, %lo(img)(a0)
	lw	a0, 24(a0)
	li	a1, 4
	bgeu	a0, a1, .LBB1_2
# %bb.1:
	addiw	a0, a0, 5
	ret
.LBB1_2:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	lui	a0, %hi(.L.str.27)
	addi	a0, a0, %lo(.L.str.27)
	li	a1, 1
	call	error
	li	a0, 0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	get_picture_type, .Lfunc_end1-get_picture_type
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Partition_BC_Header             # -- Begin function Partition_BC_Header
	.p2align	2
	.type	Partition_BC_Header,@function
Partition_BC_Header:                    # @Partition_BC_Header
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	sd	s1, 56(sp)                      # 8-byte Folded Spill
	blez	a0, .LBB2_5
# %bb.1:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	add	a2, a1, a2
	ld	a2, -1200(a2)
	lw	a3, 16(a2)
	bge	a0, a3, .LBB2_5
# %bb.2:
	ld	s0, 24(a2)
	li	a2, 112
	mul	a0, a0, a2
	add	s0, s0, a0
	sw	zero, 8(sp)
	lw	a0, 20(a1)
	lui	a1, %hi(ue_linfo)
	addi	a1, a1, %lo(ue_linfo)
	sd	a1, 40(sp)
	sw	zero, 16(sp)
	sw	a0, 12(sp)
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement_UVLC
	lui	a1, %hi(active_pps)
	ld	a1, %lo(active_pps)(a1)
	lw	a1, 228(a1)
	beqz	a1, .LBB2_4
# %bb.3:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 8
	add	a1, a1, a2
	ld	a1, -1200(a1)
	lw	a1, 0(a1)
	sw	a1, 12(sp)
	mv	s1, a0
	addi	a0, sp, 8
	mv	a1, s0
	call	writeSyntaxElement_UVLC
	addw	a0, a0, s1
.LBB2_4:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 56(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.LBB2_5:
	lui	a0, %hi(.L.str.28)
	addi	a0, a0, %lo(.L.str.28)
	lui	a1, %hi(.L.str.5)
	addi	a1, a1, %lo(.L.str.5)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.Partition_BC_Header)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.Partition_BC_Header)
	li	a2, 543
	call	__assert_fail
.Lfunc_end2:
	.size	Partition_BC_Header, .Lfunc_end2-Partition_BC_Header
                                        # -- End function
	.option	pop
	.type	assignSE2partition_NoDP,@object # @assignSE2partition_NoDP
	.bss
	.globl	assignSE2partition_NoDP
	.p2align	2, 0x0
assignSE2partition_NoDP:
	.zero	80
	.size	assignSE2partition_NoDP, 80

	.type	assignSE2partition_DP,@object   # @assignSE2partition_DP
	.data
	.globl	assignSE2partition_DP
	.p2align	2, 0x0
assignSE2partition_DP:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	assignSE2partition_DP, 80

	.type	assignSE2partition,@object      # @assignSE2partition
	.bss
	.globl	assignSE2partition
	.p2align	3, 0x0
assignSE2partition:
	.zero	16
	.size	assignSE2partition, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SH: first_mb_in_slice"
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SH: slice_type"
	.size	.L.str.1, 15

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SH: pic_parameter_set_id"
	.size	.L.str.2, 25

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"SH: frame_num"
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"field_pic_flag == img->fld_flag"
	.size	.L.str.4, 32

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"src/header.c"
	.size	.L.str.5, 13

	.type	.L__PRETTY_FUNCTION__.SliceHeader,@object # @__PRETTY_FUNCTION__.SliceHeader
.L__PRETTY_FUNCTION__.SliceHeader:
	.asciz	"int SliceHeader()"
	.size	.L__PRETTY_FUNCTION__.SliceHeader, 18

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"SH: field_pic_flag"
	.size	.L.str.6, 19

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"SH: bottom_field_flag"
	.size	.L.str.7, 22

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"SH: idr_pic_id"
	.size	.L.str.8, 15

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"SH: pic_order_cnt_lsb"
	.size	.L.str.9, 22

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"SH: delta_pic_order_cnt_bottom"
	.size	.L.str.10, 31

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"SH: delta_pic_order_cnt[0]"
	.size	.L.str.11, 27

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"SH: delta_pic_order_cnt[1]"
	.size	.L.str.12, 27

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"SH: redundant_pic_cnt"
	.size	.L.str.13, 22

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"SH: direct_spatial_mv_pred_flag"
	.size	.L.str.14, 32

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"SH: num_ref_idx_active_override_flag"
	.size	.L.str.15, 37

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"SH: num_ref_idx_l0_active_minus1"
	.size	.L.str.16, 33

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"SH: num_ref_idx_l1_active_minus1"
	.size	.L.str.17, 33

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"SH: cabac_init_idc"
	.size	.L.str.18, 19

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"SH: slice_qp_delta"
	.size	.L.str.19, 19

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"SH: sp_for_switch_flag"
	.size	.L.str.20, 23

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"SH: slice_qs_delta"
	.size	.L.str.21, 19

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"SH: disable_deblocking_filter_idc"
	.size	.L.str.22, 34

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"SH: slice_alpha_c0_offset_div2"
	.size	.L.str.23, 31

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"SH: slice_beta_offset_div2"
	.size	.L.str.24, 27

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"SH: slice_group_change_cycle"
	.size	.L.str.25, 29

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"DPA: slice_id"
	.size	.L.str.26, 14

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Picture Type not supported!"
	.size	.L.str.27, 28

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"PartNo > 0 && PartNo < img->currentSlice->max_part_nr"
	.size	.L.str.28, 54

	.type	.L__PRETTY_FUNCTION__.Partition_BC_Header,@object # @__PRETTY_FUNCTION__.Partition_BC_Header
.L__PRETTY_FUNCTION__.Partition_BC_Header:
	.asciz	"int Partition_BC_Header(int)"
	.size	.L__PRETTY_FUNCTION__.Partition_BC_Header, 29

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"SH: ref_pic_list_reordering_flag_l0"
	.size	.L.str.29, 36

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"SH: reordering_of_pic_num_idc"
	.size	.L.str.30, 30

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"SH: abs_diff_pic_num_minus1_l0"
	.size	.L.str.31, 31

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"SH: long_term_pic_idx_l0"
	.size	.L.str.32, 25

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"SH: ref_pic_list_reordering_flag_l1"
	.size	.L.str.33, 36

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"SH: remapping_of_pic_num_idc"
	.size	.L.str.34, 29

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"SH: abs_diff_pic_num_minus1_l1"
	.size	.L.str.35, 31

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"SH: long_term_pic_idx_l1"
	.size	.L.str.36, 25

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"SH: no_output_of_prior_pics_flag"
	.size	.L.str.37, 33

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"SH: long_term_reference_flag"
	.size	.L.str.38, 29

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"SH: adaptive_ref_pic_buffering_flag"
	.size	.L.str.39, 36

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Error encoding MMCO commands"
	.size	.L.str.40, 29

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"SH: memory_management_control_operation"
	.size	.L.str.41, 40

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"SH: difference_of_pic_nums_minus1"
	.size	.L.str.42, 34

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"SH: long_term_pic_num"
	.size	.L.str.43, 22

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"SH: long_term_frame_idx"
	.size	.L.str.44, 24

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"SH: max_long_term_pic_idx_plus1"
	.size	.L.str.45, 32

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"SH: luma_log_weight_denom"
	.size	.L.str.46, 26

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"SH: chroma_log_weight_denom"
	.size	.L.str.47, 28

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"SH: luma_weight_flag_l0"
	.size	.L.str.48, 24

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"SH: luma_weight_l0"
	.size	.L.str.49, 19

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"SH: luma_offset_l0"
	.size	.L.str.50, 19

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"chroma_weight_flag_l0"
	.size	.L.str.51, 22

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"chroma_weight_l0"
	.size	.L.str.52, 17

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"chroma_offset_l0"
	.size	.L.str.53, 17

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"SH: luma_weight_flag_l1"
	.size	.L.str.54, 24

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"SH: luma_weight_l1"
	.size	.L.str.55, 19

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"SH: luma_offset_l1"
	.size	.L.str.56, 19

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"chroma_weight_flag_l1"
	.size	.L.str.57, 22

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"chroma_weight_l1"
	.size	.L.str.58, 17

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"chroma_offset_l1"
	.size	.L.str.59, 17

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
