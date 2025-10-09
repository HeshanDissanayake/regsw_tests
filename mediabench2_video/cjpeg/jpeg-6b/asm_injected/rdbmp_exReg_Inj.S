	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"rdbmp.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_read_bmp                  # -- Begin function jinit_read_bmp
	.p2align	2
	.type	jinit_read_bmp,@function
jinit_read_bmp:                         # @jinit_read_bmp
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	li	a1, 1
	li	a2, 88
	mv	a0, s0
	jalr	a3
	sd	s0, 48(a0)
	lui	a1, %hi(start_input_bmp)
	addi	a1, a1, %lo(start_input_bmp)
	sd	a1, 0(a0)
	lui	a1, %hi(finish_input_bmp)
	addi	a1, a1, %lo(finish_input_bmp)
	sd	a1, 16(a0)
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	jinit_read_bmp, .Lfunc_end0-jinit_read_bmp
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function start_input_bmp
	.type	start_input_bmp,@function
start_input_bmp:                        # @start_input_bmp
# %bb.0:
	addi	sp, sp, -256
	sd	ra, 248(sp)                     # 8-byte Folded Spill
	sd	s0, 240(sp)                     # 8-byte Folded Spill
	sd	s1, 232(sp)                     # 8-byte Folded Spill
	sd	s2, 224(sp)                     # 8-byte Folded Spill
	sd	s3, 216(sp)                     # 8-byte Folded Spill
	sd	s4, 208(sp)                     # 8-byte Folded Spill
	sd	s5, 200(sp)                     # 8-byte Folded Spill
	sd	s6, 192(sp)                     # 8-byte Folded Spill
	sd	s7, 184(sp)                     # 8-byte Folded Spill
	sd	s8, 176(sp)                     # 8-byte Folded Spill
	sd	s9, 168(sp)                     # 8-byte Folded Spill
	sd	s10, 160(sp)                    # 8-byte Folded Spill
	sd	s11, 152(sp)                    # 8-byte Folded Spill
	mv	s1, a1
	ld	a3, 24(a1)
	mv	s0, a0
	addi	a0, sp, 138
	li	a1, 1
	li	a2, 14
	li	s2, 14
	call	fread
	beq	a0, s2, .LBB1_2
# %bb.1:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 43
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_2:
	lbu	a0, 139(sp)
	lbu	a1, 138(sp)
	slli	a0, a0, 8
	or	a0, a0, a1
	lui	a1, 5
	addiw	a1, a1, -702
	beq	a0, a1, .LBB1_4
# %bb.3:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1007
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_4:
	lbu	a0, 148(sp)
	lbu	a1, 149(sp)
	lbu	s4, 150(sp)
	lbu	s2, 151(sp)
	ld	a3, 24(s1)
	slli	a1, a1, 8
	or	s3, a1, a0
	slli	s4, s4, 16
	addi	a0, sp, 74
	li	a1, 1
	li	a2, 4
	li	s5, 4
	call	fread
	beq	a0, s5, .LBB1_6
# %bb.5:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 43
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_6:
	or	s4, s3, s4
	lbu	a0, 75(sp)
	lbu	a1, 74(sp)
	lbu	a2, 76(sp)
	lbu	a3, 77(sp)
	slli	a0, a0, 8
	or	a0, a0, a1
	slli	a2, a2, 16
	slli	a3, a3, 24
	or	a2, a2, a3
	or	s3, a0, a2
	addi	a0, s3, -65
	li	a1, -54
	slli	s2, s2, 24
	bltu	a1, a0, .LBB1_8
# %bb.7:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1003
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_8:
	ld	a3, 24(s1)
	or	s4, s4, s2
	addi	a0, sp, 78
	addi	s2, s3, -4
	li	a1, 1
	mv	a2, s2
	call	fread
	beq	a0, s2, .LBB1_10
# %bb.9:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 43
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_10:
	sext.w	a0, s3
	li	a1, 64
	sub	s7, s4, s3
	beq	a0, a1, .LBB1_16
# %bb.11:
	li	a1, 40
	beq	a0, a1, .LBB1_16
# %bb.12:
	li	a1, 12
	bne	a0, a1, .LBB1_19
# %bb.13:
	lbu	a0, 79(sp)
	lbu	a1, 78(sp)
	lbu	a2, 81(sp)
	slli	a0, a0, 8
	lbu	a3, 80(sp)
	or	s5, a0, a1
	slliw	a0, a2, 8
	lbu	a1, 83(sp)
	or	s3, a0, a3
	lbu	a0, 82(sp)
	lbu	a2, 85(sp)
	slli	a1, a1, 8
	lbu	a3, 84(sp)
	or	s2, a1, a0
	slli	a1, a2, 8
	ld	a0, 0(s0)
	or	a1, a1, a3
	li	a2, 24
	sw	a1, 80(s1)
	beq	a1, a2, .LBB1_32
# %bb.14:
	li	a2, 8
	bne	a1, a2, .LBB1_33
# %bb.15:
	sw	s5, 44(a0)
	ld	a1, 0(s0)
	li	a2, 1011
	sw	a2, 40(a0)
	sw	s3, 48(a1)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	li	s6, 3
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	li	a0, 1
	bne	s2, a0, .LBB1_35
	j	.LBB1_36
.LBB1_16:
	sd	s7, 48(sp)                      # 8-byte Folded Spill
	lbu	a0, 79(sp)
	lbu	a1, 78(sp)
	lbu	a2, 80(sp)
	lbu	a3, 81(sp)
	slli	a0, a0, 8
	or	a0, a0, a1
	slli	a2, a2, 16
	slli	a3, a3, 24
	or	a2, a2, a3
	or	a0, a0, a2
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	lbu	a0, 83(sp)
	lbu	a1, 82(sp)
	lbu	a2, 84(sp)
	lbu	a3, 85(sp)
	slliw	a0, a0, 8
	or	a0, a0, a1
	slliw	a1, a2, 16
	slliw	a2, a3, 24
	or	a1, a1, a2
	or	a0, a0, a1
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	lbu	a0, 87(sp)
	lbu	a1, 86(sp)
	lbu	a2, 89(sp)
	lbu	a3, 88(sp)
	slli	a0, a0, 8
	or	s11, a0, a1
	slli	a0, a2, 8
	or	a0, a0, a3
	lbu	a1, 91(sp)
	lbu	a2, 90(sp)
	lbu	a3, 92(sp)
	sw	a0, 80(s1)
	slli	a1, a1, 8
	or	a1, a1, a2
	slli	a3, a3, 16
	lbu	s3, 93(sp)
	lbu	a2, 99(sp)
	lbu	a4, 98(sp)
	or	a7, a1, a3
	slli	s7, s3, 24
	slli	a2, a2, 8
	or	s8, a2, a4
	lbu	s5, 100(sp)
	lbu	t0, 101(sp)
	lbu	a3, 102(sp)
	lbu	a6, 103(sp)
	lbu	a4, 104(sp)
	lbu	a5, 105(sp)
	lbu	s9, 106(sp)
	lbu	s4, 107(sp)
	lbu	s10, 108(sp)
	lbu	s2, 109(sp)
	ld	a1, 0(s0)
	slli	s3, s5, 16
	li	a2, 24
	slli	s4, s4, 8
	sd	a3, 32(sp)                      # 8-byte Folded Spill
	sd	a4, 24(sp)                      # 8-byte Folded Spill
	sd	a5, 16(sp)                      # 8-byte Folded Spill
	sd	a6, 8(sp)                       # 8-byte Folded Spill
	sd	a7, 40(sp)                      # 8-byte Folded Spill
	mv	s5, t0
	beq	a0, a2, .LBB1_21
# %bb.17:
	li	a2, 8
	bne	a0, a2, .LBB1_22
# %bb.18:
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	li	a2, 1009
	sw	a2, 40(a1)
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	sw	a1, 48(a0)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	li	s6, 4
	j	.LBB1_24
.LBB1_19:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1003
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	li	s5, 0
	li	s6, 0
	addi	s7, s7, -14
	bgez	s7, .LBB1_67
.LBB1_20:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1003
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB1_72
.LBB1_21:
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	li	a2, 1008
	sw	a2, 40(a1)
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	sw	a1, 48(a0)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	j	.LBB1_23
.LBB1_22:
	ld	a2, 0(a1)
	li	a0, 1002
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
.LBB1_23:
	li	s6, 0
.LBB1_24:
	or	s9, s4, s9
	slli	s10, s10, 16
	or	s4, s8, s3
	slli	s8, s5, 24
	li	a0, 1
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	or	s3, a1, s7
	beq	s11, a0, .LBB1_26
# %bb.25:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1004
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_26:
	or	s5, s9, s10
	slli	s11, s2, 24
	or	s2, s4, s8
	beqz	s3, .LBB1_28
# %bb.27:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1006
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_28:
	or	s4, s5, s11
	beqz	s2, .LBB1_31
# %bb.29:
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	slli	a0, a0, 8
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	or	a0, a0, a1
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 16
	ld	a2, 16(sp)                      # 8-byte Folded Reload
	slli	a2, a2, 24
	or	a1, a1, a2
	or	a0, a0, a1
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s7, 48(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB1_37
# %bb.30:
	lui	a1, 335544
	addiw	a1, a1, 1311
	mul	a2, s2, a1
	srli	a2, a2, 37
	sh	a2, 296(s0)
	mul	a0, a0, a1
	srli	a0, a0, 37
	sh	a0, 298(s0)
	li	a0, 2
	sb	a0, 294(s0)
	j	.LBB1_37
.LBB1_31:
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s7, 48(sp)                      # 8-byte Folded Reload
	j	.LBB1_37
.LBB1_32:
	sw	s5, 44(a0)
	ld	a1, 0(s0)
	li	a2, 1010
	sw	a2, 40(a0)
	sw	s3, 48(a1)
	ld	a0, 0(s0)
	ld	a2, 8(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	j	.LBB1_34
.LBB1_33:
	ld	a1, 0(a0)
	li	a2, 1002
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_34:
	li	s6, 0
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	li	a0, 1
	beq	s2, a0, .LBB1_36
.LBB1_35:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1004
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB1_36:
	li	s4, 0
.LBB1_37:
	addi	s7, s7, -14
	beqz	s6, .LBB1_66
# %bb.38:
	beqz	s4, .LBB1_41
# %bb.39:
	li	a0, 257
	bltu	s4, a0, .LBB1_42
# %bb.40:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1001
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB1_42
.LBB1_41:
	li	s4, 256
.LBB1_42:
	ld	a0, 8(s0)
	ld	a4, 16(a0)
	sext.w	s3, s4
	li	a1, 1
	li	a3, 3
	li	s2, 3
	mv	a0, s0
	mv	a2, s3
	jalr	a4
	sd	a0, 56(s1)
	beq	s6, s2, .LBB1_55
# %bb.43:
	li	a0, 4
	bne	s6, a0, .LBB1_64
# %bb.44:
	blez	s3, .LBB1_65
# %bb.45:
	li	s8, 0
	slli	a0, s4, 33
	srli	s9, a0, 33
	li	s10, -1
	li	s11, 43
	j	.LBB1_47
.LBB1_46:                               #   in Loop: Header=BB1_47 Depth=1
	addi	s8, s8, 1
	beq	s9, s8, .LBB1_65
.LBB1_47:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 24(s1)
	call	getc
	mv	s3, a0
	bne	a0, s10, .LBB1_49
# %bb.48:                               #   in Loop: Header=BB1_47 Depth=1
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s11, 40(a1)
	jalr	a2
.LBB1_49:                               #   in Loop: Header=BB1_47 Depth=1
	ld	a0, 56(s1)
	ld	a0, 16(a0)
	add	a0, a0, s8
	sb	s3, 0(a0)
	ld	a0, 24(s1)
	call	getc
	mv	s3, a0
	bne	a0, s10, .LBB1_51
# %bb.50:                               #   in Loop: Header=BB1_47 Depth=1
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s11, 40(a1)
	jalr	a2
.LBB1_51:                               #   in Loop: Header=BB1_47 Depth=1
	ld	a0, 56(s1)
	ld	a0, 8(a0)
	add	a0, a0, s8
	sb	s3, 0(a0)
	ld	a0, 24(s1)
	call	getc
	mv	s3, a0
	bne	a0, s10, .LBB1_53
# %bb.52:                               #   in Loop: Header=BB1_47 Depth=1
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s11, 40(a1)
	jalr	a2
.LBB1_53:                               #   in Loop: Header=BB1_47 Depth=1
	ld	a0, 56(s1)
	ld	a0, 0(a0)
	add	a0, a0, s8
	sb	s3, 0(a0)
	ld	a0, 24(s1)
	call	getc
	bne	a0, s10, .LBB1_46
# %bb.54:                               #   in Loop: Header=BB1_47 Depth=1
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s11, 40(a1)
	jalr	a2
	j	.LBB1_46
.LBB1_55:
	blez	s3, .LBB1_65
# %bb.56:
	li	s2, 0
	slli	a0, s4, 33
	srli	s8, a0, 33
	li	s9, -1
	li	s10, 43
	j	.LBB1_58
.LBB1_57:                               #   in Loop: Header=BB1_58 Depth=1
	ld	a0, 56(s1)
	ld	a0, 0(a0)
	add	a0, a0, s2
	addi	s2, s2, 1
	sb	s3, 0(a0)
	beq	s8, s2, .LBB1_65
.LBB1_58:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 24(s1)
	call	getc
	mv	s3, a0
	bne	a0, s9, .LBB1_60
# %bb.59:                               #   in Loop: Header=BB1_58 Depth=1
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
.LBB1_60:                               #   in Loop: Header=BB1_58 Depth=1
	ld	a0, 56(s1)
	ld	a0, 16(a0)
	add	a0, a0, s2
	sb	s3, 0(a0)
	ld	a0, 24(s1)
	call	getc
	mv	s3, a0
	bne	a0, s9, .LBB1_62
# %bb.61:                               #   in Loop: Header=BB1_58 Depth=1
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
.LBB1_62:                               #   in Loop: Header=BB1_58 Depth=1
	ld	a0, 56(s1)
	ld	a0, 8(a0)
	add	a0, a0, s2
	sb	s3, 0(a0)
	ld	a0, 24(s1)
	call	getc
	mv	s3, a0
	bne	a0, s9, .LBB1_57
# %bb.63:                               #   in Loop: Header=BB1_58 Depth=1
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s10, 40(a1)
	jalr	a2
	j	.LBB1_57
.LBB1_64:
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	li	a3, 1001
	sw	a3, 40(a1)
	jalr	a2
.LBB1_65:
	mul	a0, s4, s6
	sub	s7, s7, a0
.LBB1_66:
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	bltz	s7, .LBB1_20
.LBB1_67:
	beqz	s7, .LBB1_72
# %bb.68:
	addi	s7, s7, 1
	li	s2, -1
	li	s3, 43
	li	s4, 1
	j	.LBB1_70
.LBB1_69:                               #   in Loop: Header=BB1_70 Depth=1
	addi	s7, s7, -1
	bgeu	s4, s7, .LBB1_72
.LBB1_70:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 24(s1)
	call	getc
	bne	a0, s2, .LBB1_69
# %bb.71:                               #   in Loop: Header=BB1_70 Depth=1
	ld	a0, 48(s1)
	ld	a1, 0(a0)
	ld	a2, 0(a1)
	sw	s3, 40(a1)
	jalr	a2
	j	.LBB1_69
.LBB1_72:
	lw	a1, 80(s1)
	slli	a0, s5, 1
	addw	s3, a0, s5
	li	a2, 24
	mv	a0, s3
	beq	a1, a2, .LBB1_74
# %bb.73:
	mv	a0, s5
.LBB1_74:
	ld	a1, 8(s0)
	negw	a2, a0
	ld	a6, 32(a1)
	andi	a2, a2, 3
	addw	a3, a0, a2
	sw	a3, 76(s1)
	li	a1, 1
	li	a5, 1
	li	s2, 1
	mv	a0, s0
	li	a2, 0
	mv	a4, s6
	jalr	a6
	ld	a1, 16(s0)
	sd	a0, 64(s1)
	lui	a0, %hi(preload_image)
	addi	a0, a0, %lo(preload_image)
	sd	a0, 8(s1)
	beqz	a1, .LBB1_76
# %bb.75:
	lw	a0, 36(a1)
	addi	a0, a0, 1
	sw	a0, 36(a1)
.LBB1_76:
	ld	a0, 8(s0)
	ld	a4, 16(a0)
	li	a1, 1
	li	a3, 1
	mv	a0, s0
	mv	a2, s3
	jalr	a4
	sd	a0, 32(s1)
	sw	s2, 40(s1)
	slli	s2, s2, 33
	addi	s2, s2, 3
	sd	s2, 56(s0)
	li	a0, 8
	sw	a0, 72(s0)
	sw	s5, 48(s0)
	sw	s6, 52(s0)
	ld	ra, 248(sp)                     # 8-byte Folded Reload
	ld	s0, 240(sp)                     # 8-byte Folded Reload
	ld	s1, 232(sp)                     # 8-byte Folded Reload
	ld	s2, 224(sp)                     # 8-byte Folded Reload
	ld	s3, 216(sp)                     # 8-byte Folded Reload
	ld	s4, 208(sp)                     # 8-byte Folded Reload
	ld	s5, 200(sp)                     # 8-byte Folded Reload
	ld	s6, 192(sp)                     # 8-byte Folded Reload
	ld	s7, 184(sp)                     # 8-byte Folded Reload
	ld	s8, 176(sp)                     # 8-byte Folded Reload
	ld	s9, 168(sp)                     # 8-byte Folded Reload
	ld	s10, 160(sp)                    # 8-byte Folded Reload
	ld	s11, 152(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 256
	ret
.Lfunc_end1:
	.size	start_input_bmp, .Lfunc_end1-start_input_bmp
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_input_bmp
	.type	finish_input_bmp,@function
finish_input_bmp:                       # @finish_input_bmp
# %bb.0:
	ret
.Lfunc_end2:
	.size	finish_input_bmp, .Lfunc_end2-finish_input_bmp
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function preload_image
	.type	preload_image,@function
preload_image:                          # @preload_image
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
	mv	s0, a0
	lw	a0, 52(a0)
	ld	s5, 16(s0)
	mv	s1, a1
	beqz	a0, .LBB3_16
# %bb.1:
	ld	s2, 24(s1)
	beqz	s5, .LBB3_9
# %bb.2:                                # %.preheader3
	li	s4, 0
	li	s6, -1
	li	s7, 43
	j	.LBB3_4
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	lwu	a0, 52(s0)
	addi	s4, s4, 1
	bgeu	s4, a0, .LBB3_16
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	sd	s4, 8(s5)
	ld	a1, 0(s5)
	slli	a0, a0, 32
	srli	a0, a0, 32
	sd	a0, 16(s5)
	mv	a0, s0
	jalr	a1
	ld	a0, 8(s0)
	ld	a5, 56(a0)
	ld	a1, 64(s1)
	sext.w	a2, s4
	li	a3, 1
	li	a4, 1
	mv	a0, s0
	jalr	a5
	lw	a1, 76(s1)
	beqz	a1, .LBB3_3
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	ld	s8, 0(a0)
	addi	a1, a1, -1
	slli	a1, a1, 32
	srli	a1, a1, 32
	add	a1, s8, a1
	addi	s9, a1, 1
	j	.LBB3_7
.LBB3_6:                                #   in Loop: Header=BB3_7 Depth=2
	addi	a0, s8, 1
	sb	s3, 0(s8)
	mv	s8, a0
	beq	a0, s9, .LBB3_3
.LBB3_7:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s2
	call	getc
	mv	s3, a0
	bne	a0, s6, .LBB3_6
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=2
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s7, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB3_6
.LBB3_9:                                # %.preheader
	li	s3, 0
	li	s6, -1
	li	s7, 43
	j	.LBB3_11
.LBB3_10:                               #   in Loop: Header=BB3_11 Depth=1
	lw	a0, 52(s0)
	addiw	s3, s3, 1
	bgeu	s3, a0, .LBB3_16
.LBB3_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_14 Depth 2
	ld	a0, 8(s0)
	ld	a5, 56(a0)
	ld	a1, 64(s1)
	li	a3, 1
	li	a4, 1
	mv	a0, s0
	mv	a2, s3
	jalr	a5
	lw	a1, 76(s1)
	beqz	a1, .LBB3_10
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=1
	ld	s8, 0(a0)
	addi	a1, a1, -1
	slli	a1, a1, 32
	srli	a1, a1, 32
	add	a1, s8, a1
	addi	s9, a1, 1
	j	.LBB3_14
.LBB3_13:                               #   in Loop: Header=BB3_14 Depth=2
	addi	a0, s8, 1
	sb	s4, 0(s8)
	mv	s8, a0
	beq	a0, s9, .LBB3_10
.LBB3_14:                               #   Parent Loop BB3_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s2
	call	getc
	mv	s4, a0
	bne	a0, s6, .LBB3_13
# %bb.15:                               #   in Loop: Header=BB3_14 Depth=2
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s7, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB3_13
.LBB3_16:
	beqz	s5, .LBB3_18
# %bb.17:
	lw	a1, 32(s5)
	addi	a1, a1, 1
	sw	a1, 32(s5)
.LBB3_18:
	lw	a1, 80(s1)
	li	a2, 24
	beq	a1, a2, .LBB3_21
# %bb.19:
	li	a2, 8
	bne	a1, a2, .LBB3_22
# %bb.20:
	lui	t1, %hi(get_8bit_row)
	addi	t1, t1, %lo(get_8bit_row)
	sd	t1, 8(s1)
	j	.LBB3_23
.LBB3_21:
	lui	t1, %hi(get_24bit_row)
	addi	t1, t1, %lo(get_24bit_row)
	sd	t1, 8(s1)
	j	.LBB3_23
.LBB3_22:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 1002
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 52(s0)
	ld	t1, 8(s1)
.LBB3_23:
	sw	a0, 72(s1)
	mv	a0, s0
	mv	a1, s1
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
	jr	t1
.Lfunc_end3:
	.size	preload_image, .Lfunc_end3-preload_image
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_8bit_row
	.type	get_8bit_row,@function
get_8bit_row:                           # @get_8bit_row
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	ld	a0, 8(a0)
	mv	s0, a1
	ld	s2, 56(a1)
	lw	a2, 72(a1)
	ld	a5, 56(a0)
	ld	a1, 64(a1)
	addiw	a2, a2, -1
	sw	a2, 72(s0)
	li	a3, 1
	mv	a0, s1
	li	a4, 0
	jalr	a5
	lw	a2, 48(s1)
	beqz	a2, .LBB4_3
# %bb.1:
	ld	a1, 32(s0)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	addi	a2, a2, -1
	slli	a2, a2, 32
	srli	a2, a2, 32
	add	a2, a2, a0
	addi	a2, a2, 1
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a0)
	ld	a4, 0(s2)
	add	a4, a4, a3
	lbu	a4, 0(a4)
	sb	a4, 0(a1)
	ld	a4, 8(s2)
	add	a4, a4, a3
	lbu	a4, 0(a4)
	sb	a4, 1(a1)
	ld	a4, 16(s2)
	add	a3, a4, a3
	lbu	a3, 0(a3)
	addi	a4, a0, 1
	addi	a0, a1, 3
	sb	a3, 2(a1)
	mv	a1, a0
	mv	a0, a4
	bne	a4, a2, .LBB4_2
.LBB4_3:
	li	a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	get_8bit_row, .Lfunc_end4-get_8bit_row
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function get_24bit_row
	.type	get_24bit_row,@function
get_24bit_row:                          # @get_24bit_row
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a0
	ld	a0, 8(a0)
	mv	s0, a1
	lw	a2, 72(a1)
	ld	a5, 56(a0)
	ld	a1, 64(a1)
	addiw	a2, a2, -1
	sw	a2, 72(s0)
	li	a3, 1
	mv	a0, s1
	li	a4, 0
	jalr	a5
	lw	a2, 48(s1)
	beqz	a2, .LBB5_3
# %bb.1:
	ld	a1, 32(s0)
	ld	a1, 0(a1)
	ld	a0, 0(a0)
	addi	a1, a1, 2
	addi	a2, a2, -1
	slli	a2, a2, 32
	srli	a3, a2, 32
	srli	a2, a2, 31
	add	a2, a2, a3
	add	a2, a2, a0
	addi	a2, a2, 3
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	lbu	a3, 0(a0)
	sb	a3, 0(a1)
	lbu	a3, 1(a0)
	sb	a3, -1(a1)
	lbu	a3, 2(a0)
	sb	a3, -2(a1)
	addi	a0, a0, 3
	addi	a1, a1, 3
	bne	a0, a2, .LBB5_2
.LBB5_3:
	li	a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end5:
	.size	get_24bit_row, .Lfunc_end5-get_24bit_row
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
