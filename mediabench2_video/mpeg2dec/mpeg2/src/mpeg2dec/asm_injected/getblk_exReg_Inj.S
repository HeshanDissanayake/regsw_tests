	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"getblk.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Decode_MPEG1_Intra_Block        # -- Begin function Decode_MPEG1_Intra_Block
	.p2align	2
	.type	Decode_MPEG1_Intra_Block,@function
Decode_MPEG1_Intra_Block:               # @Decode_MPEG1_Intra_Block
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
	lui	a2, %hi(ld)
	ld	a2, %lo(ld)(a2)
	mv	s0, a1
	mv	s1, a0
	slli	a0, a0, 7
	add	a0, a2, a0
	addi	a0, a0, 2047
	li	a1, 3
	addi	s2, a0, 1129
	blt	a1, s1, .LBB0_2
# %bb.1:
	call	Get_Luma_DC_dct_diff
	lw	a1, 0(s0)
	add	a0, a1, a0
	sw	a0, 0(s0)
	j	.LBB0_5
.LBB0_2:
	call	Get_Chroma_DC_dct_diff
	li	a1, 4
	bne	s1, a1, .LBB0_4
# %bb.3:
	lw	a1, 4(s0)
	add	a0, a1, a0
	sw	a0, 4(s0)
	j	.LBB0_5
.LBB0_4:
	lw	a1, 8(s0)
	add	a0, a1, a0
	sw	a0, 8(s0)
.LBB0_5:
	lui	a1, %hi(Fault_Flag)
	lw	a1, %lo(Fault_Flag)(a1)
	slli	a0, a0, 3
	sh	a0, 0(s2)
	bnez	a1, .LBB0_42
# %bb.6:
	lui	a0, %hi(picture_coding_type)
	lw	a0, %lo(picture_coding_type)(a0)
	li	a1, 4
	beq	a0, a1, .LBB0_42
# %bb.7:                                # %.preheader
	li	s9, 1
	lui	s3, %hi(DCTtabnext)
	addi	s3, s3, %lo(DCTtabnext)
	li	s4, 65
	li	s5, 128
	li	s6, 64
	lui	s7, %hi(scan)
	addi	s7, s7, %lo(scan)
	lui	s8, %hi(ld)
	slli	s1, s9, 11
	li	s10, 1024
	j	.LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_10 Depth=1
	li	a2, -2048
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	slli	a1, a1, 1
	add	a1, s2, a1
	sh	a2, 0(a1)
	addi	s9, s9, 1
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	li	a0, 16
	call	Show_Bits
	srliw	a1, a0, 14
	beqz	a1, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	srliw	a0, a0, 12
	addi	a0, a0, -4
	mv	a1, s3
	j	.LBB0_26
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	bltu	a0, s10, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	srliw	a0, a0, 8
	addi	a0, a0, -4
	lui	a1, %hi(DCTtab0)
	addi	a1, a1, %lo(DCTtab0)
	j	.LBB0_26
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=1
	li	a1, 512
	bltu	a0, a1, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_10 Depth=1
	srliw	a0, a0, 6
	addi	a0, a0, -8
	lui	a1, %hi(DCTtab1)
	addi	a1, a1, %lo(DCTtab1)
	j	.LBB0_26
.LBB0_16:                               #   in Loop: Header=BB0_10 Depth=1
	li	a1, 256
	bltu	a0, a1, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_10 Depth=1
	srliw	a0, a0, 4
	addi	a0, a0, -16
	lui	a1, %hi(DCTtab2)
	addi	a1, a1, %lo(DCTtab2)
	j	.LBB0_26
.LBB0_18:                               #   in Loop: Header=BB0_10 Depth=1
	bltu	a0, s5, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_10 Depth=1
	srliw	a0, a0, 3
	addi	a0, a0, -16
	lui	a1, %hi(DCTtab3)
	addi	a1, a1, %lo(DCTtab3)
	j	.LBB0_26
.LBB0_20:                               #   in Loop: Header=BB0_10 Depth=1
	bltu	a0, s6, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_10 Depth=1
	srliw	a0, a0, 2
	addi	a0, a0, -16
	lui	a1, %hi(DCTtab4)
	addi	a1, a1, %lo(DCTtab4)
	j	.LBB0_26
.LBB0_22:                               #   in Loop: Header=BB0_10 Depth=1
	li	a1, 32
	bltu	a0, a1, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_10 Depth=1
	srliw	a0, a0, 1
	addiw	a0, a0, -16
	lui	a1, %hi(DCTtab5)
	addi	a1, a1, %lo(DCTtab5)
	j	.LBB0_26
.LBB0_24:                               #   in Loop: Header=BB0_10 Depth=1
	li	a1, 16
	bltu	a0, a1, .LBB0_44
# %bb.25:                               #   in Loop: Header=BB0_10 Depth=1
	addiw	a0, a0, -16
	lui	a1, %hi(DCTtab6)
	addi	a1, a1, %lo(DCTtab6)
.LBB0_26:                               #   in Loop: Header=BB0_10 Depth=1
	slli	s11, a0, 1
	add	a0, a1, a0
	add	s11, a0, s11
	lbu	a0, 2(s11)
	call	Flush_Buffer
	lbu	s0, 0(s11)
	beq	s0, s4, .LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_10 Depth=1
	beq	s0, s6, .LBB0_42
# %bb.28:                               #   in Loop: Header=BB0_10 Depth=1
	lbu	s11, 1(s11)
	li	a0, 1
	call	Get_Bits
	addw	s9, s0, s9
	blt	s9, s6, .LBB0_35
	j	.LBB0_40
.LBB0_29:                               #   in Loop: Header=BB0_10 Depth=1
	li	a0, 6
	call	Get_Bits
	mv	s0, a0
	li	a0, 8
	call	Get_Bits
	beq	a0, s5, .LBB0_32
# %bb.30:                               #   in Loop: Header=BB0_10 Depth=1
	bnez	a0, .LBB0_33
# %bb.31:                               #   in Loop: Header=BB0_10 Depth=1
	li	a0, 8
	call	Get_Bits
	mv	a1, a0
	j	.LBB0_34
.LBB0_32:                               #   in Loop: Header=BB0_10 Depth=1
	li	a0, 8
	call	Get_Bits
	addi	a1, a0, -256
	j	.LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_10 Depth=1
	slti	a1, a0, 129
	addi	a1, a1, -1
	andi	a1, a1, -256
	add	a1, a0, a1
.LBB0_34:                               #   in Loop: Header=BB0_10 Depth=1
	srliw	a0, a1, 31
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	s11, a1, a2
	addw	s9, s0, s9
	bge	s9, s6, .LBB0_40
.LBB0_35:                               #   in Loop: Header=BB0_10 Depth=1
	ld	a2, %lo(ld)(s8)
	add	a1, s7, s9
	lbu	a1, 0(a1)
	addi	a3, a2, 2047
	lw	a3, 1121(a3)
	slli	a4, a1, 2
	add	a2, a2, a4
	addi	a2, a2, 2047
	lw	a2, 57(a2)
	mul	a3, a3, s11
	mulw	a2, a3, a2
	sltiu	a3, a2, 8
	srli	a2, a2, 3
	addiw	a2, a2, -1
	ori	a2, a2, 1
	addi	a3, a3, -1
	and	a2, a3, a2
	beqz	a0, .LBB0_38
# %bb.36:                               #   in Loop: Header=BB0_10 Depth=1
	blt	s1, a2, .LBB0_8
# %bb.37:                               #   in Loop: Header=BB0_10 Depth=1
	neg	a2, a2
	j	.LBB0_9
.LBB0_38:                               #   in Loop: Header=BB0_10 Depth=1
	li	a0, 2047
	blt	a2, a0, .LBB0_9
# %bb.39:                               #   in Loop: Header=BB0_10 Depth=1
	li	a2, 2047
	j	.LBB0_9
.LBB0_40:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	beqz	a0, .LBB0_43
.LBB0_41:
	lui	a0, %hi(Fault_Flag)
	li	a1, 1
	sw	a1, %lo(Fault_Flag)(a0)
.LBB0_42:
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
.LBB0_43:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	li	a1, 42
	li	a2, 1
	call	fwrite
	j	.LBB0_41
.LBB0_44:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB0_41
# %bb.45:
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	j	.LBB0_41
.Lfunc_end0:
	.size	Decode_MPEG1_Intra_Block, .Lfunc_end0-Decode_MPEG1_Intra_Block
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Decode_MPEG1_Non_Intra_Block    # -- Begin function Decode_MPEG1_Non_Intra_Block
	.p2align	2
	.type	Decode_MPEG1_Non_Intra_Block,@function
Decode_MPEG1_Non_Intra_Block:           # @Decode_MPEG1_Non_Intra_Block
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
	lui	s1, %hi(ld)
	ld	a1, %lo(ld)(s1)
	li	s3, 0
	slli	a0, a0, 7
	add	a0, a1, a0
	addi	a0, a0, 2047
	addi	s2, a0, 1129
	lui	s4, %hi(DCTtabnext)
	addi	s4, s4, %lo(DCTtabnext)
	li	s6, 65
	li	s7, 128
	li	s8, 64
	lui	s9, %hi(scan)
	addi	s9, s9, %lo(scan)
	li	s10, 1
	slli	s10, s10, 11
	li	s11, 1024
	j	.LBB1_3
.LBB1_1:                                #   in Loop: Header=BB1_3 Depth=1
	li	a2, -2048
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	slli	a1, a1, 1
	add	a1, s2, a1
	sh	a2, 0(a1)
	addiw	s3, s3, 1
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	li	a0, 16
	call	Show_Bits
	srliw	a1, a0, 14
	beqz	a1, .LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	srliw	a0, a0, 12
	addi	a0, a0, -4
	slli	a1, a0, 1
	add	a0, a1, a0
	beqz	s3, .LBB1_10
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	add	s5, s4, a0
	lbu	a0, 2(s5)
	call	Flush_Buffer
	lbu	s0, 0(s5)
	bne	s0, s6, .LBB1_28
	j	.LBB1_11
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	bltu	a0, s11, .LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	srliw	a0, a0, 8
	addi	a0, a0, -4
	slli	s5, a0, 1
	lui	a1, %hi(DCTtab0)
	addi	a1, a1, %lo(DCTtab0)
	j	.LBB1_27
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=1
	li	a1, 512
	bltu	a0, a1, .LBB1_17
# %bb.9:                                #   in Loop: Header=BB1_3 Depth=1
	srliw	a0, a0, 6
	addi	a0, a0, -8
	slli	s5, a0, 1
	lui	a1, %hi(DCTtab1)
	addi	a1, a1, %lo(DCTtab1)
	j	.LBB1_27
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=1
	lui	s5, %hi(DCTtabfirst)
	addi	s5, s5, %lo(DCTtabfirst)
	add	s5, s5, a0
	lbu	a0, 2(s5)
	call	Flush_Buffer
	lbu	s0, 0(s5)
	bne	s0, s6, .LBB1_28
.LBB1_11:                               #   in Loop: Header=BB1_3 Depth=1
	li	a0, 6
	call	Get_Bits
	mv	s0, a0
	li	a0, 8
	call	Get_Bits
	beq	a0, s7, .LBB1_14
# %bb.12:                               #   in Loop: Header=BB1_3 Depth=1
	bnez	a0, .LBB1_15
# %bb.13:                               #   in Loop: Header=BB1_3 Depth=1
	li	a0, 8
	call	Get_Bits
	mv	a1, a0
	j	.LBB1_16
.LBB1_14:                               #   in Loop: Header=BB1_3 Depth=1
	li	a0, 8
	call	Get_Bits
	addi	a1, a0, -256
	j	.LBB1_16
.LBB1_15:                               #   in Loop: Header=BB1_3 Depth=1
	slti	a1, a0, 129
	addi	a1, a1, -1
	andi	a1, a1, -256
	add	a1, a0, a1
.LBB1_16:                               #   in Loop: Header=BB1_3 Depth=1
	srliw	a0, a1, 31
	sraiw	a2, a1, 31
	xor	a1, a1, a2
	subw	s5, a1, a2
	addw	s3, s0, s3
	blt	s3, s8, .LBB1_30
	j	.LBB1_35
.LBB1_17:                               #   in Loop: Header=BB1_3 Depth=1
	li	a1, 256
	bltu	a0, a1, .LBB1_19
# %bb.18:                               #   in Loop: Header=BB1_3 Depth=1
	srliw	a0, a0, 4
	addi	a0, a0, -16
	slli	s5, a0, 1
	lui	a1, %hi(DCTtab2)
	addi	a1, a1, %lo(DCTtab2)
	j	.LBB1_27
.LBB1_19:                               #   in Loop: Header=BB1_3 Depth=1
	bltu	a0, s7, .LBB1_21
# %bb.20:                               #   in Loop: Header=BB1_3 Depth=1
	srliw	a0, a0, 3
	addi	a0, a0, -16
	slli	s5, a0, 1
	lui	a1, %hi(DCTtab3)
	addi	a1, a1, %lo(DCTtab3)
	j	.LBB1_27
.LBB1_21:                               #   in Loop: Header=BB1_3 Depth=1
	bltu	a0, s8, .LBB1_23
# %bb.22:                               #   in Loop: Header=BB1_3 Depth=1
	srliw	a0, a0, 2
	addi	a0, a0, -16
	slli	s5, a0, 1
	lui	a1, %hi(DCTtab4)
	addi	a1, a1, %lo(DCTtab4)
	j	.LBB1_27
.LBB1_23:                               #   in Loop: Header=BB1_3 Depth=1
	li	a1, 32
	bltu	a0, a1, .LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_3 Depth=1
	srliw	a0, a0, 1
	addiw	a0, a0, -16
	slli	s5, a0, 1
	lui	a1, %hi(DCTtab5)
	addi	a1, a1, %lo(DCTtab5)
	j	.LBB1_27
.LBB1_25:                               #   in Loop: Header=BB1_3 Depth=1
	li	a1, 16
	bltu	a0, a1, .LBB1_39
# %bb.26:                               #   in Loop: Header=BB1_3 Depth=1
	addiw	a0, a0, -16
	slli	s5, a0, 1
	lui	a1, %hi(DCTtab6)
	addi	a1, a1, %lo(DCTtab6)
.LBB1_27:                               #   in Loop: Header=BB1_3 Depth=1
	add	a0, a1, a0
	add	s5, a0, s5
	lbu	a0, 2(s5)
	call	Flush_Buffer
	lbu	s0, 0(s5)
	beq	s0, s6, .LBB1_11
.LBB1_28:                               #   in Loop: Header=BB1_3 Depth=1
	beq	s0, s8, .LBB1_37
# %bb.29:                               #   in Loop: Header=BB1_3 Depth=1
	lbu	s5, 1(s5)
	li	a0, 1
	call	Get_Bits
	addw	s3, s0, s3
	bge	s3, s8, .LBB1_35
.LBB1_30:                               #   in Loop: Header=BB1_3 Depth=1
	ld	a2, %lo(ld)(s1)
	add	a1, s9, s3
	lbu	a1, 0(a1)
	addi	a3, a2, 2047
	lw	a3, 1121(a3)
	slli	a4, a1, 2
	add	a2, a2, a4
	addi	a2, a2, 2047
	lw	a2, 313(a2)
	slli	s5, s5, 1
	addi	s5, s5, 1
	mul	a3, a3, s5
	mulw	a2, a3, a2
	sltiu	a3, a2, 16
	srli	a2, a2, 4
	addiw	a2, a2, -1
	ori	a2, a2, 1
	addi	a3, a3, -1
	and	a2, a3, a2
	beqz	a0, .LBB1_33
# %bb.31:                               #   in Loop: Header=BB1_3 Depth=1
	blt	s10, a2, .LBB1_1
# %bb.32:                               #   in Loop: Header=BB1_3 Depth=1
	neg	a2, a2
	j	.LBB1_2
.LBB1_33:                               #   in Loop: Header=BB1_3 Depth=1
	li	a0, 2047
	blt	a2, a0, .LBB1_2
# %bb.34:                               #   in Loop: Header=BB1_3 Depth=1
	li	a2, 2047
	j	.LBB1_2
.LBB1_35:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	beqz	a0, .LBB1_38
.LBB1_36:
	lui	a0, %hi(Fault_Flag)
	li	a1, 1
	sw	a1, %lo(Fault_Flag)(a0)
.LBB1_37:
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
.LBB1_38:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	li	a1, 42
	li	a2, 1
	call	fwrite
	j	.LBB1_36
.LBB1_39:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB1_36
# %bb.40:
	lui	a0, %hi(.Lstr.9)
	addi	a0, a0, %lo(.Lstr.9)
	call	puts
	j	.LBB1_36
.Lfunc_end1:
	.size	Decode_MPEG1_Non_Intra_Block, .Lfunc_end1-Decode_MPEG1_Non_Intra_Block
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Decode_MPEG2_Intra_Block        # -- Begin function Decode_MPEG2_Intra_Block
	.p2align	2
	.type	Decode_MPEG2_Intra_Block,@function
Decode_MPEG2_Intra_Block:               # @Decode_MPEG2_Intra_Block
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
	lui	a2, %hi(ld)
	ld	a3, %lo(ld)(a2)
	addi	a2, a3, 2047
	lw	a5, 1101(a2)
	lui	a4, %hi(base)
	addi	a4, a4, %lo(base)
	li	a2, 1
	mv	s1, a1
	mv	s0, a0
	mv	s4, a4
	beq	a5, a2, .LBB2_2
# %bb.1:
	mv	s4, a3
.LBB2_2:
	addi	a0, a4, 2047
	lw	a0, 1101(a0)
	bne	a0, a2, .LBB2_6
# %bb.3:
	lui	a0, %hi(base)
	addi	a0, a0, %lo(base)
	addi	a1, a0, 2047
	lw	a1, 1117(a1)
	li	a2, 64
	bge	a1, a2, .LBB2_5
# %bb.4:
	lui	a0, %hi(enhan)
	addi	a0, a0, %lo(enhan)
.LBB2_5:
	lui	a1, %hi(ld)
	sd	a0, %lo(ld)(a1)
.LBB2_6:
	lui	a0, %hi(chroma_format)
	lw	a0, %lo(chroma_format)(a0)
	slti	a1, s0, 4
	addi	a0, a0, -1
	seqz	a0, a0
	or	a1, a1, a0
	lui	a0, 1
	bnez	a1, .LBB2_10
# %bb.7:
	addiw	s5, a0, -1480
	li	a0, 3
	bge	a0, s0, .LBB2_11
.LBB2_8:
	andi	s2, s0, 1
	call	Get_Chroma_DC_dct_diff
	bnez	s2, .LBB2_12
# %bb.9:
	lw	a1, 4(s1)
	add	a0, a1, a0
	sw	a0, 4(s1)
	lui	a1, %hi(Fault_Flag)
	lw	a1, %lo(Fault_Flag)(a1)
	bnez	a1, .LBB2_55
	j	.LBB2_13
.LBB2_10:
	addiw	s5, a0, -1992
	li	a0, 3
	blt	a0, s0, .LBB2_8
.LBB2_11:
	call	Get_Luma_DC_dct_diff
	lw	a1, 0(s1)
	add	a0, a1, a0
	sw	a0, 0(s1)
	lui	a1, %hi(Fault_Flag)
	lw	a1, %lo(Fault_Flag)(a1)
	bnez	a1, .LBB2_55
	j	.LBB2_13
.LBB2_12:
	lw	a1, 8(s1)
	add	a0, a1, a0
	sw	a0, 8(s1)
	lui	a1, %hi(Fault_Flag)
	lw	a1, %lo(Fault_Flag)(a1)
	bnez	a1, .LBB2_55
.LBB2_13:
	li	s1, 0
	slli	s0, s0, 7
	add	s0, s4, s0
	addi	a1, s0, 2047
	addi	s2, s4, 2047
	lui	a2, %hi(intra_dc_precision)
	lw	a2, %lo(intra_dc_precision)(a2)
	addi	s3, a1, 1129
	add	s4, s4, s5
	li	a1, 3
	subw	a1, a1, a2
	sllw	a0, a0, a1
	sh	a0, 0(s3)
	li	s10, 64
	li	s6, 65
	li	s9, 2047
	lui	s11, %hi(scan)
	addi	s11, s11, %lo(scan)
	lui	s8, %hi(base+2047)
	addi	s8, s8, %lo(base+2047)
	li	s5, 1
	j	.LBB2_15
.LBB2_14:                               #   in Loop: Header=BB2_15 Depth=1
	addi	s5, s5, 1
	addiw	s1, s1, 1
.LBB2_15:                               # =>This Inner Loop Header: Depth=1
	li	a0, 16
	call	Show_Bits
	lui	a1, %hi(intra_vlc_format)
	lw	a1, %lo(intra_vlc_format)(a1)
	srliw	a2, a0, 14
	beqz	a2, .LBB2_21
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=1
	bnez	a1, .LBB2_21
# %bb.17:                               #   in Loop: Header=BB2_15 Depth=1
	srliw	a0, a0, 12
	addi	a0, a0, -4
	slli	s7, a0, 1
	lui	a1, %hi(DCTtabnext)
	addi	a1, a1, %lo(DCTtabnext)
.LBB2_18:                               #   in Loop: Header=BB2_15 Depth=1
	add	a0, a1, a0
	add	s7, a0, s7
	lbu	a0, 2(s7)
	call	Flush_Buffer
	lbu	s0, 0(s7)
	beq	s0, s6, .LBB2_34
.LBB2_19:                               #   in Loop: Header=BB2_15 Depth=1
	beq	s0, s10, .LBB2_55
# %bb.20:                               #   in Loop: Header=BB2_15 Depth=1
	lbu	s7, 1(s7)
	li	a0, 1
	call	Get_Bits
	addw	s5, s0, s5
	blt	s5, s10, .LBB2_38
	j	.LBB2_49
.LBB2_21:                               #   in Loop: Header=BB2_15 Depth=1
	li	a2, 1024
	bltu	a0, a2, .LBB2_24
# %bb.22:                               #   in Loop: Header=BB2_15 Depth=1
	srliw	a0, a0, 8
	addi	a0, a0, -4
	slli	a2, a0, 1
	add	a0, a2, a0
	beqz	a1, .LBB2_29
# %bb.23:                               #   in Loop: Header=BB2_15 Depth=1
	lui	s7, %hi(DCTtab0a)
	addi	s7, s7, %lo(DCTtab0a)
	j	.LBB2_33
.LBB2_24:                               #   in Loop: Header=BB2_15 Depth=1
	li	a2, 512
	bltu	a0, a2, .LBB2_27
# %bb.25:                               #   in Loop: Header=BB2_15 Depth=1
	srliw	a0, a0, 6
	addi	a0, a0, -8
	slli	a2, a0, 1
	add	a0, a2, a0
	beqz	a1, .LBB2_32
# %bb.26:                               #   in Loop: Header=BB2_15 Depth=1
	lui	s7, %hi(DCTtab1a)
	addi	s7, s7, %lo(DCTtab1a)
	j	.LBB2_33
.LBB2_27:                               #   in Loop: Header=BB2_15 Depth=1
	li	a1, 256
	bltu	a0, a1, .LBB2_30
# %bb.28:                               #   in Loop: Header=BB2_15 Depth=1
	srliw	a0, a0, 4
	addi	a0, a0, -16
	slli	s7, a0, 1
	lui	a1, %hi(DCTtab2)
	addi	a1, a1, %lo(DCTtab2)
	j	.LBB2_18
.LBB2_29:                               #   in Loop: Header=BB2_15 Depth=1
	lui	s7, %hi(DCTtab0)
	addi	s7, s7, %lo(DCTtab0)
	j	.LBB2_33
.LBB2_30:                               #   in Loop: Header=BB2_15 Depth=1
	li	a1, 128
	bltu	a0, a1, .LBB2_43
# %bb.31:                               #   in Loop: Header=BB2_15 Depth=1
	srliw	a0, a0, 3
	addi	a0, a0, -16
	slli	s7, a0, 1
	lui	a1, %hi(DCTtab3)
	addi	a1, a1, %lo(DCTtab3)
	j	.LBB2_18
.LBB2_32:                               #   in Loop: Header=BB2_15 Depth=1
	lui	s7, %hi(DCTtab1)
	addi	s7, s7, %lo(DCTtab1)
.LBB2_33:                               #   in Loop: Header=BB2_15 Depth=1
	add	s7, s7, a0
	lbu	a0, 2(s7)
	call	Flush_Buffer
	lbu	s0, 0(s7)
	bne	s0, s6, .LBB2_19
.LBB2_34:                               #   in Loop: Header=BB2_15 Depth=1
	li	a0, 6
	call	Get_Bits
	mv	s0, a0
	li	a0, 12
	call	Get_Bits
	andi	a1, a0, 2047
	beqz	a1, .LBB2_51
# %bb.35:                               #   in Loop: Header=BB2_15 Depth=1
	blt	s9, a0, .LBB2_37
# %bb.36:                               #   in Loop: Header=BB2_15 Depth=1
	mv	s7, a0
	slt	a0, s9, a0
	addw	s5, s0, s5
	blt	s5, s10, .LBB2_38
	j	.LBB2_49
.LBB2_37:                               #   in Loop: Header=BB2_15 Depth=1
	lui	a1, 1
	subw	s7, a1, a0
	slt	a0, s9, a0
	addw	s5, s0, s5
	bge	s5, s10, .LBB2_49
.LBB2_38:                               #   in Loop: Header=BB2_15 Depth=1
	lw	a1, 1109(s2)
	slli	a1, a1, 6
	add	a1, s11, a1
	add	a1, a1, s5
	lbu	a1, 0(a1)
	lw	a2, 1121(s2)
	slli	a3, a1, 2
	add	a3, s4, a3
	lw	a3, 0(a3)
	mul	a2, a2, s7
	mul	a2, a2, a3
	sraiw	a2, a2, 4
	beqz	a0, .LBB2_40
# %bb.39:                               #   in Loop: Header=BB2_15 Depth=1
	neg	a2, a2
.LBB2_40:                               #   in Loop: Header=BB2_15 Depth=1
	lw	a0, 1101(s8)
	slli	a1, a1, 1
	add	a1, s3, a1
	sh	a2, 0(a1)
	li	a1, 1
	bne	a0, a1, .LBB2_14
# %bb.41:                               #   in Loop: Header=BB2_15 Depth=1
	lw	a0, 1117(s8)
	addiw	a0, a0, -64
	bne	s1, a0, .LBB2_14
# %bb.42:                               #   in Loop: Header=BB2_15 Depth=1
	lui	a0, %hi(ld)
	lui	a1, %hi(enhan)
	addi	a1, a1, %lo(enhan)
	sd	a1, %lo(ld)(a0)
	j	.LBB2_14
.LBB2_43:                               #   in Loop: Header=BB2_15 Depth=1
	bltu	a0, s10, .LBB2_45
# %bb.44:                               #   in Loop: Header=BB2_15 Depth=1
	srliw	a0, a0, 2
	addi	a0, a0, -16
	slli	s7, a0, 1
	lui	a1, %hi(DCTtab4)
	addi	a1, a1, %lo(DCTtab4)
	j	.LBB2_18
.LBB2_45:                               #   in Loop: Header=BB2_15 Depth=1
	li	a1, 32
	bltu	a0, a1, .LBB2_47
# %bb.46:                               #   in Loop: Header=BB2_15 Depth=1
	srliw	a0, a0, 1
	addiw	a0, a0, -16
	slli	s7, a0, 1
	lui	a1, %hi(DCTtab5)
	addi	a1, a1, %lo(DCTtab5)
	j	.LBB2_18
.LBB2_47:                               #   in Loop: Header=BB2_15 Depth=1
	li	a1, 16
	bltu	a0, a1, .LBB2_56
# %bb.48:                               #   in Loop: Header=BB2_15 Depth=1
	addiw	a0, a0, -16
	slli	s7, a0, 1
	lui	a1, %hi(DCTtab6)
	addi	a1, a1, %lo(DCTtab6)
	j	.LBB2_18
.LBB2_49:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB2_54
# %bb.50:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	li	a1, 43
	li	a2, 1
	call	fwrite
	j	.LBB2_54
.LBB2_51:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB2_54
# %bb.52:
	lui	a0, %hi(.Lstr.13)
	addi	a0, a0, %lo(.Lstr.13)
.LBB2_53:
	call	puts
.LBB2_54:
	lui	a0, %hi(Fault_Flag)
	li	a1, 1
	sw	a1, %lo(Fault_Flag)(a0)
.LBB2_55:
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
.LBB2_56:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB2_54
# %bb.57:
	lui	a0, %hi(.Lstr.10)
	addi	a0, a0, %lo(.Lstr.10)
	j	.LBB2_53
.Lfunc_end2:
	.size	Decode_MPEG2_Intra_Block, .Lfunc_end2-Decode_MPEG2_Intra_Block
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	Decode_MPEG2_Non_Intra_Block    # -- Begin function Decode_MPEG2_Non_Intra_Block
	.p2align	2
	.type	Decode_MPEG2_Non_Intra_Block,@function
Decode_MPEG2_Non_Intra_Block:           # @Decode_MPEG2_Non_Intra_Block
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
	lui	a1, %hi(ld)
	ld	a3, %lo(ld)(a1)
	addi	a1, a3, 2047
	lw	a4, 1101(a1)
	lui	a1, %hi(base)
	addi	a1, a1, %lo(base)
	li	a2, 1
	mv	s6, a1
	beq	a4, a2, .LBB3_2
# %bb.1:
	mv	s6, a3
.LBB3_2:
	addi	a1, a1, 2047
	lw	a3, 1101(a1)
	slli	a1, a0, 7
	add	a1, s6, a1
	bne	a3, a2, .LBB3_6
# %bb.3:
	lui	a2, %hi(base)
	addi	a2, a2, %lo(base)
	addi	a3, a2, 2047
	lw	a4, 1117(a3)
	li	a5, 64
	lui	a3, %hi(enhan)
	addi	a3, a3, %lo(enhan)
	blt	a4, a5, .LBB3_5
# %bb.4:
	mv	a3, a2
.LBB3_5:
	lui	a2, %hi(ld)
	sd	a3, %lo(ld)(a2)
.LBB3_6:
	lui	a2, %hi(chroma_format)
	lw	a2, %lo(chroma_format)(a2)
	addi	a1, a1, 2047
	slti	a0, a0, 4
	addi	a2, a2, -1
	seqz	a2, a2
	or	a0, a0, a2
	lui	a2, 1
	bnez	a0, .LBB3_8
# %bb.7:
	addiw	a0, a2, -1224
	j	.LBB3_9
.LBB3_8:
	addiw	a0, a2, -1736
.LBB3_9:
	li	s3, 0
	li	s9, 0
	addi	s4, s6, 2047
	addi	s5, a1, 1129
	add	s6, s6, a0
	li	s10, 65
	li	s11, 2047
	li	s7, 64
	lui	s1, %hi(base+2047)
	addi	s1, s1, %lo(base+2047)
	li	s2, 1
	j	.LBB3_11
.LBB3_10:                               #   in Loop: Header=BB3_11 Depth=1
	addiw	s9, s9, 1
	addiw	s3, s3, 1
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	li	a0, 16
	call	Show_Bits
	srliw	a1, a0, 14
	beqz	a1, .LBB3_14
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=1
	srliw	a0, a0, 12
	addi	a0, a0, -4
	slli	a1, a0, 1
	add	a0, a1, a0
	beqz	s9, .LBB3_18
# %bb.13:                               #   in Loop: Header=BB3_11 Depth=1
	lui	s8, %hi(DCTtabnext)
	addi	s8, s8, %lo(DCTtabnext)
	j	.LBB3_19
.LBB3_14:                               #   in Loop: Header=BB3_11 Depth=1
	li	a1, 1024
	bltu	a0, a1, .LBB3_16
# %bb.15:                               #   in Loop: Header=BB3_11 Depth=1
	srliw	a0, a0, 8
	addi	a0, a0, -4
	slli	s8, a0, 1
	lui	a1, %hi(DCTtab0)
	addi	a1, a1, %lo(DCTtab0)
	j	.LBB3_32
.LBB3_16:                               #   in Loop: Header=BB3_11 Depth=1
	li	a1, 512
	bltu	a0, a1, .LBB3_22
# %bb.17:                               #   in Loop: Header=BB3_11 Depth=1
	srliw	a0, a0, 6
	addi	a0, a0, -8
	slli	s8, a0, 1
	lui	a1, %hi(DCTtab1)
	addi	a1, a1, %lo(DCTtab1)
	j	.LBB3_32
.LBB3_18:                               #   in Loop: Header=BB3_11 Depth=1
	lui	s8, %hi(DCTtabfirst)
	addi	s8, s8, %lo(DCTtabfirst)
.LBB3_19:                               #   in Loop: Header=BB3_11 Depth=1
	add	s8, s8, a0
	lbu	a0, 2(s8)
	call	Flush_Buffer
	lbu	s0, 0(s8)
	beq	s0, s10, .LBB3_33
.LBB3_20:                               #   in Loop: Header=BB3_11 Depth=1
	beq	s0, s7, .LBB3_48
# %bb.21:                               #   in Loop: Header=BB3_11 Depth=1
	lbu	s8, 1(s8)
	li	a0, 1
	call	Get_Bits
	addw	s9, s0, s9
	blt	s9, s7, .LBB3_37
	j	.LBB3_42
.LBB3_22:                               #   in Loop: Header=BB3_11 Depth=1
	li	a1, 256
	bltu	a0, a1, .LBB3_24
# %bb.23:                               #   in Loop: Header=BB3_11 Depth=1
	srliw	a0, a0, 4
	addi	a0, a0, -16
	slli	s8, a0, 1
	lui	a1, %hi(DCTtab2)
	addi	a1, a1, %lo(DCTtab2)
	j	.LBB3_32
.LBB3_24:                               #   in Loop: Header=BB3_11 Depth=1
	li	a1, 128
	bltu	a0, a1, .LBB3_26
# %bb.25:                               #   in Loop: Header=BB3_11 Depth=1
	srliw	a0, a0, 3
	addi	a0, a0, -16
	slli	s8, a0, 1
	lui	a1, %hi(DCTtab3)
	addi	a1, a1, %lo(DCTtab3)
	j	.LBB3_32
.LBB3_26:                               #   in Loop: Header=BB3_11 Depth=1
	bltu	a0, s7, .LBB3_28
# %bb.27:                               #   in Loop: Header=BB3_11 Depth=1
	srliw	a0, a0, 2
	addi	a0, a0, -16
	slli	s8, a0, 1
	lui	a1, %hi(DCTtab4)
	addi	a1, a1, %lo(DCTtab4)
	j	.LBB3_32
.LBB3_28:                               #   in Loop: Header=BB3_11 Depth=1
	li	a1, 32
	bltu	a0, a1, .LBB3_30
# %bb.29:                               #   in Loop: Header=BB3_11 Depth=1
	srliw	a0, a0, 1
	addiw	a0, a0, -16
	slli	s8, a0, 1
	lui	a1, %hi(DCTtab5)
	addi	a1, a1, %lo(DCTtab5)
	j	.LBB3_32
.LBB3_30:                               #   in Loop: Header=BB3_11 Depth=1
	li	a1, 16
	bltu	a0, a1, .LBB3_49
# %bb.31:                               #   in Loop: Header=BB3_11 Depth=1
	addiw	a0, a0, -16
	slli	s8, a0, 1
	lui	a1, %hi(DCTtab6)
	addi	a1, a1, %lo(DCTtab6)
.LBB3_32:                               #   in Loop: Header=BB3_11 Depth=1
	add	a0, a1, a0
	add	s8, a0, s8
	lbu	a0, 2(s8)
	call	Flush_Buffer
	lbu	s0, 0(s8)
	bne	s0, s10, .LBB3_20
.LBB3_33:                               #   in Loop: Header=BB3_11 Depth=1
	li	a0, 6
	call	Get_Bits
	mv	s0, a0
	li	a0, 12
	call	Get_Bits
	andi	a1, a0, 2047
	beqz	a1, .LBB3_44
# %bb.34:                               #   in Loop: Header=BB3_11 Depth=1
	blt	s11, a0, .LBB3_36
# %bb.35:                               #   in Loop: Header=BB3_11 Depth=1
	mv	s8, a0
	slt	a0, s11, a0
	addw	s9, s0, s9
	blt	s9, s7, .LBB3_37
	j	.LBB3_42
.LBB3_36:                               #   in Loop: Header=BB3_11 Depth=1
	lui	a1, 1
	subw	s8, a1, a0
	slt	a0, s11, a0
	addw	s9, s0, s9
	bge	s9, s7, .LBB3_42
.LBB3_37:                               #   in Loop: Header=BB3_11 Depth=1
	lw	a1, 1109(s4)
	slli	a1, a1, 6
	lui	a2, %hi(scan)
	addi	a2, a2, %lo(scan)
	add	a1, a2, a1
	add	a1, a1, s9
	lbu	a1, 0(a1)
	lw	a2, 1121(s4)
	slli	a3, a1, 2
	add	a3, s6, a3
	lw	a3, 0(a3)
	slli	s8, s8, 1
	addi	s8, s8, 1
	mul	a2, a2, s8
	mul	a2, a2, a3
	sraiw	a2, a2, 5
	beqz	a0, .LBB3_39
# %bb.38:                               #   in Loop: Header=BB3_11 Depth=1
	neg	a2, a2
.LBB3_39:                               #   in Loop: Header=BB3_11 Depth=1
	lw	a0, 1101(s1)
	slli	a1, a1, 1
	add	a1, s5, a1
	sh	a2, 0(a1)
	bne	a0, s2, .LBB3_10
# %bb.40:                               #   in Loop: Header=BB3_11 Depth=1
	lw	a0, 1117(s1)
	addiw	a0, a0, -64
	bne	s3, a0, .LBB3_10
# %bb.41:                               #   in Loop: Header=BB3_11 Depth=1
	lui	a0, %hi(enhan)
	addi	a0, a0, %lo(enhan)
	lui	a1, %hi(ld)
	sd	a0, %lo(ld)(a1)
	j	.LBB3_10
.LBB3_42:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB3_47
# %bb.43:
	lui	a0, %hi(stderr)
	ld	a3, %lo(stderr)(a0)
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	li	a1, 43
	li	a2, 1
	call	fwrite
	j	.LBB3_47
.LBB3_44:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB3_47
# %bb.45:
	lui	a0, %hi(.Lstr.13)
	addi	a0, a0, %lo(.Lstr.13)
.LBB3_46:
	call	puts
.LBB3_47:
	lui	a0, %hi(Fault_Flag)
	li	a1, 1
	sw	a1, %lo(Fault_Flag)(a0)
.LBB3_48:
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
.LBB3_49:
	lui	a0, %hi(Quiet_Flag)
	lw	a0, %lo(Quiet_Flag)(a0)
	bnez	a0, .LBB3_47
# %bb.50:
	lui	a0, %hi(.Lstr.12)
	addi	a0, a0, %lo(.Lstr.12)
	j	.LBB3_46
.Lfunc_end3:
	.size	Decode_MPEG2_Non_Intra_Block, .Lfunc_end3-Decode_MPEG2_Non_Intra_Block
                                        # -- End function
	.option	pop
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"DCT coeff index (i) out of bounds (intra)\n"
	.size	.L.str.1, 43

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"DCT coeff index (i) out of bounds (inter)\n"
	.size	.L.str.3, 43

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"DCT coeff index (i) out of bounds (intra2)\n"
	.size	.L.str.6, 44

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"DCT coeff index (i) out of bounds (inter2)\n"
	.size	.L.str.8, 44

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"invalid Huffman code in Decode_MPEG1_Intra_Block()"
	.size	.Lstr, 51

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"invalid Huffman code in Decode_MPEG1_Non_Intra_Block()"
	.size	.Lstr.9, 55

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"invalid Huffman code in Decode_MPEG2_Intra_Block()"
	.size	.Lstr.10, 51

	.type	.Lstr.12,@object                # @str.12
.Lstr.12:
	.asciz	"invalid Huffman code in Decode_MPEG2_Non_Intra_Block()"
	.size	.Lstr.12, 55

	.type	.Lstr.13,@object                # @str.13
.Lstr.13:
	.asciz	"invalid escape in Decode_MPEG2_Intra_Block()"
	.size	.Lstr.13, 45

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
