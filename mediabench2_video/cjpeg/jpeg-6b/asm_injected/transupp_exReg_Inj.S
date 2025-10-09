	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"transupp.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jtransform_request_workspace    # -- Begin function jtransform_request_workspace
	.p2align	2
	.type	jtransform_request_workspace,@function
jtransform_request_workspace:           # @jtransform_request_workspace
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
	mv	s0, a1
	lw	a1, 8(a1)
	mv	s1, a0
	beqz	a1, .LBB0_4
# %bb.1:
	lw	a1, 60(s1)
	li	a0, 3
	bne	a1, a0, .LBB0_4
# %bb.2:
	lw	a1, 56(s1)
	bne	a1, a0, .LBB0_4
# %bb.3:
	li	a0, 1
	sw	a0, 12(s0)
	li	a2, 8
	j	.LBB0_5
.LBB0_4:
	lw	a2, 56(s1)
	sw	a2, 12(s0)
	slli	a2, a2, 3
.LBB0_5:
	lw	a0, 0(s0)
	li	a1, 7
	li	s2, 0
	bltu	a1, a0, .LBB0_14
# %bb.6:
	li	a1, 184
	srl	a1, a1, a0
	andi	a1, a1, 1
	beqz	a1, .LBB0_10
# %bb.7:
	ld	a0, 8(s1)
	ld	a3, 0(a0)
	li	a1, 1
	mv	a0, s1
	jalr	a3
	lw	a1, 12(s0)
	mv	s2, a0
	blez	a1, .LBB0_14
# %bb.8:
	li	s4, 0
	li	s5, 0
	mv	s6, s2
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	ld	a0, 8(s1)
	ld	a1, 304(s1)
	ld	s7, 40(a0)
	add	s8, a1, s4
	lwu	a0, 32(s8)
	lw	a1, 12(s8)
	call	jround_up
	lwu	a2, 28(s8)
	lw	a1, 8(s8)
	mv	s3, a0
	mv	a0, a2
	call	jround_up
	lw	a5, 8(s8)
	sext.w	a3, s3
	sext.w	a4, a0
	li	a1, 1
	mv	a0, s1
	li	a2, 0
	jalr	s7
	lw	a1, 12(s0)
	sd	a0, 0(s6)
	addi	s5, s5, 1
	addi	s6, s6, 8
	addi	s4, s4, 96
	blt	s5, a1, .LBB0_9
	j	.LBB0_14
.LBB0_10:
	li	a1, 68
	srl	a0, a1, a0
	andi	a0, a0, 1
	beqz	a0, .LBB0_14
# %bb.11:
	ld	a0, 8(s1)
	ld	a3, 0(a0)
	li	a1, 1
	mv	a0, s1
	jalr	a3
	lw	a1, 12(s0)
	mv	s2, a0
	blez	a1, .LBB0_14
# %bb.12:
	li	s4, 0
	li	s5, 0
	mv	s6, s2
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	ld	a0, 8(s1)
	ld	a1, 304(s1)
	ld	s7, 40(a0)
	add	s8, a1, s4
	lwu	a0, 28(s8)
	lw	a1, 8(s8)
	call	jround_up
	lwu	a2, 32(s8)
	lw	a1, 12(s8)
	mv	s3, a0
	mv	a0, a2
	call	jround_up
	lw	a5, 12(s8)
	sext.w	a3, s3
	sext.w	a4, a0
	li	a1, 1
	mv	a0, s1
	li	a2, 0
	jalr	s7
	lw	a1, 12(s0)
	sd	a0, 0(s6)
	addi	s5, s5, 1
	addi	s6, s6, 8
	addi	s4, s4, 96
	blt	s5, a1, .LBB0_13
.LBB0_14:
	sd	s2, 16(s0)
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
	ret
.Lfunc_end0:
	.size	jtransform_request_workspace, .Lfunc_end0-jtransform_request_workspace
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jtransform_adjust_parameters    # -- Begin function jtransform_adjust_parameters
	.p2align	2
	.type	jtransform_adjust_parameters,@function
jtransform_adjust_parameters:           # @jtransform_adjust_parameters
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	mv	s1, a3
	lw	a0, 8(a3)
	mv	s0, a2
	mv	s2, a1
	beqz	a0, .LBB1_6
# %bb.1:
	lw	a0, 80(s2)
	li	a1, 1
	beq	a0, a1, .LBB1_3
# %bb.2:
	li	a1, 3
	bne	a0, a1, .LBB1_5
.LBB1_3:
	lw	a0, 76(s2)
	bne	a0, a1, .LBB1_5
# %bb.4:
	ld	a0, 88(s2)
	lw	s3, 16(a0)
	li	a1, 1
	mv	a0, s2
	call	jpeg_set_colorspace
	ld	a0, 88(s2)
	sw	s3, 16(a0)
	j	.LBB1_6
.LBB1_5:
	ld	a0, 0(s2)
	ld	a1, 0(a0)
	li	a2, 27
	sw	a2, 40(a0)
	mv	a0, s2
	jalr	a1
.LBB1_6:
	lw	a0, 0(s1)
	addi	a0, a0, -1
	li	a1, 6
	bltu	a1, a0, .LBB1_64
# %bb.7:
	slli	a0, a0, 2
	lui	a1, %hi(.LJTI1_0)
	addi	a1, a1, %lo(.LJTI1_0)
	add	a0, a0, a1
	lw	a0, 0(a0)
	jr	a0
.LBB1_8:
	lw	a0, 4(s1)
	beqz	a0, .LBB1_64
# %bb.9:
	lw	a1, 76(s2)
	blez	a1, .LBB1_46
# %bb.10:
	ld	a0, 88(s2)
	addi	a0, a0, 8
	li	a2, 96
	mul	a1, a1, a2
	add	a1, a0, a1
	li	a2, 1
	j	.LBB1_12
.LBB1_11:                               #   in Loop: Header=BB1_12 Depth=1
	addi	a0, a0, 96
	beq	a0, a1, .LBB1_45
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a0)
	blt	a3, a2, .LBB1_11
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=1
	mv	a2, a3
	j	.LBB1_11
.LBB1_14:
	mv	a0, s2
	call	transpose_critical_parameters
	lw	a0, 4(s1)
	beqz	a0, .LBB1_64
# %bb.15:
	lw	a1, 76(s2)
	blez	a1, .LBB1_46
# %bb.16:
	ld	a0, 88(s2)
	addi	a0, a0, 8
	li	a2, 96
	mul	a1, a1, a2
	add	a1, a0, a1
	li	a2, 1
	j	.LBB1_18
.LBB1_17:                               #   in Loop: Header=BB1_18 Depth=1
	addi	a0, a0, 96
	beq	a0, a1, .LBB1_45
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a0)
	blt	a3, a2, .LBB1_17
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=1
	mv	a2, a3
	j	.LBB1_17
.LBB1_20:
	mv	a0, s2
	call	transpose_critical_parameters
	j	.LBB1_64
.LBB1_21:
	mv	a0, s2
	call	transpose_critical_parameters
	lw	a0, 4(s1)
	beqz	a0, .LBB1_64
# %bb.22:
	lw	a0, 76(s2)
	blez	a0, .LBB1_68
# %bb.23:
	ld	a1, 88(s2)
	addi	a1, a1, 8
	li	a2, 96
	mul	a2, a0, a2
	add	a2, a1, a2
	li	a3, 1
	j	.LBB1_25
.LBB1_24:                               #   in Loop: Header=BB1_25 Depth=1
	addi	a1, a1, 96
	beq	a1, a2, .LBB1_48
.LBB1_25:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	blt	a4, a3, .LBB1_24
# %bb.26:                               #   in Loop: Header=BB1_25 Depth=1
	mv	a3, a4
	j	.LBB1_24
.LBB1_27:
	lw	a0, 4(s1)
	beqz	a0, .LBB1_64
# %bb.28:
	lw	a1, 76(s2)
	blez	a1, .LBB1_67
# %bb.29:
	ld	a0, 88(s2)
	addi	a0, a0, 12
	li	a2, 96
	mul	a1, a1, a2
	add	a1, a0, a1
	li	a2, 1
	j	.LBB1_31
.LBB1_30:                               #   in Loop: Header=BB1_31 Depth=1
	addi	a0, a0, 96
	beq	a0, a1, .LBB1_62
.LBB1_31:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a0)
	blt	a3, a2, .LBB1_30
# %bb.32:                               #   in Loop: Header=BB1_31 Depth=1
	mv	a2, a3
	j	.LBB1_30
.LBB1_33:
	lw	a0, 4(s1)
	beqz	a0, .LBB1_64
# %bb.34:
	lw	a0, 76(s2)
	blez	a0, .LBB1_69
# %bb.35:
	ld	a1, 88(s2)
	addi	a1, a1, 8
	li	a2, 96
	mul	a2, a0, a2
	add	a2, a1, a2
	li	a3, 1
	j	.LBB1_37
.LBB1_36:                               #   in Loop: Header=BB1_37 Depth=1
	addi	a1, a1, 96
	beq	a1, a2, .LBB1_55
.LBB1_37:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 0(a1)
	blt	a4, a3, .LBB1_36
# %bb.38:                               #   in Loop: Header=BB1_37 Depth=1
	mv	a3, a4
	j	.LBB1_36
.LBB1_39:
	mv	a0, s2
	call	transpose_critical_parameters
	lw	a0, 4(s1)
	beqz	a0, .LBB1_64
# %bb.40:
	lw	a1, 76(s2)
	blez	a1, .LBB1_67
# %bb.41:
	ld	a0, 88(s2)
	addi	a0, a0, 12
	li	a2, 96
	mul	a1, a1, a2
	add	a1, a0, a1
	li	a2, 1
	j	.LBB1_43
.LBB1_42:                               #   in Loop: Header=BB1_43 Depth=1
	addi	a0, a0, 96
	beq	a0, a1, .LBB1_62
.LBB1_43:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a0)
	blt	a3, a2, .LBB1_42
# %bb.44:                               #   in Loop: Header=BB1_43 Depth=1
	mv	a2, a3
	j	.LBB1_42
.LBB1_45:
	slliw	a0, a2, 3
	lw	a1, 48(s2)
	bltu	a1, a0, .LBB1_64
	j	.LBB1_47
.LBB1_46:
	li	a0, 8
	lw	a1, 48(s2)
	bltu	a1, a0, .LBB1_64
.LBB1_47:
	remuw	a0, a1, a0
	subw	a1, a1, a0
	sw	a1, 48(s2)
	j	.LBB1_64
.LBB1_48:
	slliw	a1, a3, 3
	lw	a2, 48(s2)
	bltu	a2, a1, .LBB1_50
.LBB1_49:
	remuw	a1, a2, a1
	subw	a2, a2, a1
	sw	a2, 48(s2)
.LBB1_50:
	blez	a0, .LBB1_67
# %bb.51:
	ld	a1, 88(s2)
	addi	a1, a1, 12
	li	a2, 96
	mul	a0, a0, a2
	add	a0, a1, a0
	li	a2, 1
	j	.LBB1_53
.LBB1_52:                               #   in Loop: Header=BB1_53 Depth=1
	addi	a1, a1, 96
	beq	a1, a0, .LBB1_62
.LBB1_53:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	blt	a3, a2, .LBB1_52
# %bb.54:                               #   in Loop: Header=BB1_53 Depth=1
	mv	a2, a3
	j	.LBB1_52
.LBB1_55:
	slliw	a1, a3, 3
	lw	a2, 48(s2)
	bltu	a2, a1, .LBB1_57
.LBB1_56:
	remuw	a1, a2, a1
	subw	a2, a2, a1
	sw	a2, 48(s2)
.LBB1_57:
	blez	a0, .LBB1_67
# %bb.58:
	ld	a1, 88(s2)
	addi	a1, a1, 12
	li	a2, 96
	mul	a0, a0, a2
	add	a0, a1, a0
	li	a2, 1
	j	.LBB1_60
.LBB1_59:                               #   in Loop: Header=BB1_60 Depth=1
	addi	a1, a1, 96
	beq	a1, a0, .LBB1_62
.LBB1_60:                               # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	blt	a3, a2, .LBB1_59
# %bb.61:                               #   in Loop: Header=BB1_60 Depth=1
	mv	a2, a3
	j	.LBB1_59
.LBB1_62:
	slliw	a0, a2, 3
	lw	a1, 52(s2)
	bltu	a1, a0, .LBB1_64
.LBB1_63:
	remuw	a0, a1, a0
	subw	a1, a1, a0
	sw	a1, 52(s2)
.LBB1_64:
	ld	a0, 16(s1)
	beqz	a0, .LBB1_66
# %bb.65:
	mv	s0, a0
.LBB1_66:
	mv	a0, s0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB1_67:
	li	a0, 8
	lw	a1, 52(s2)
	bltu	a1, a0, .LBB1_64
	j	.LBB1_63
.LBB1_68:
	li	a1, 8
	lw	a2, 48(s2)
	bgeu	a2, a1, .LBB1_49
	j	.LBB1_50
.LBB1_69:
	li	a1, 8
	lw	a2, 48(s2)
	bgeu	a2, a1, .LBB1_56
	j	.LBB1_57
.Lfunc_end1:
	.size	jtransform_adjust_parameters, .Lfunc_end1-jtransform_adjust_parameters
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_8
	.word	.LBB1_27
	.word	.LBB1_20
	.word	.LBB1_21
	.word	.LBB1_14
	.word	.LBB1_33
	.word	.LBB1_39
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.p2align	2                               # -- Begin function transpose_critical_parameters
	.type	transpose_critical_parameters,@function
transpose_critical_parameters:          # @transpose_critical_parameters
# %bb.0:
	lw	a1, 48(a0)
	lw	a3, 52(a0)
	lw	a2, 76(a0)
	sw	a3, 48(a0)
	sw	a1, 52(a0)
	blez	a2, .LBB2_3
# %bb.1:
	ld	a1, 88(a0)
	addi	a1, a1, 12
	li	a3, 96
	mul	a2, a2, a3
	add	a2, a1, a2
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	lw	a4, -4(a1)
	sw	a3, -4(a1)
	sw	a4, 0(a1)
	addi	a1, a1, 96
	bne	a1, a2, .LBB2_2
.LBB2_3:
	addi	a1, a0, 96
	addi	a0, a0, 128
	j	.LBB2_5
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	addi	a1, a1, 8
	beq	a1, a0, .LBB2_7
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	ld	a2, 0(a1)
	beqz	a2, .LBB2_4
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	lh	a3, 2(a2)
	lh	a4, 16(a2)
	lh	a5, 4(a2)
	lh	a6, 32(a2)
	sh	a3, 16(a2)
	sh	a4, 2(a2)
	sh	a5, 32(a2)
	sh	a6, 4(a2)
	lh	a3, 20(a2)
	lh	a4, 34(a2)
	lh	a5, 6(a2)
	lh	a6, 48(a2)
	sh	a3, 34(a2)
	sh	a4, 20(a2)
	sh	a5, 48(a2)
	sh	a6, 6(a2)
	lh	a3, 22(a2)
	lh	a4, 50(a2)
	lh	a5, 38(a2)
	lh	a6, 52(a2)
	sh	a3, 50(a2)
	sh	a4, 22(a2)
	sh	a5, 52(a2)
	sh	a6, 38(a2)
	lh	a3, 8(a2)
	lh	a4, 64(a2)
	lh	a5, 24(a2)
	lh	a6, 66(a2)
	sh	a3, 64(a2)
	sh	a4, 8(a2)
	sh	a5, 66(a2)
	sh	a6, 24(a2)
	lh	a3, 40(a2)
	lh	a4, 68(a2)
	lh	a5, 56(a2)
	lh	a6, 70(a2)
	sh	a3, 68(a2)
	sh	a4, 40(a2)
	sh	a5, 70(a2)
	sh	a6, 56(a2)
	lh	a3, 10(a2)
	lh	a4, 80(a2)
	lh	a5, 26(a2)
	lh	a6, 82(a2)
	sh	a3, 80(a2)
	sh	a4, 10(a2)
	sh	a5, 82(a2)
	sh	a6, 26(a2)
	lh	a3, 42(a2)
	lh	a4, 84(a2)
	lh	a5, 58(a2)
	lh	a6, 86(a2)
	sh	a3, 84(a2)
	sh	a4, 42(a2)
	sh	a5, 86(a2)
	sh	a6, 58(a2)
	lh	a3, 74(a2)
	lh	a4, 88(a2)
	lh	a5, 12(a2)
	lh	a6, 96(a2)
	sh	a3, 88(a2)
	sh	a4, 74(a2)
	sh	a5, 96(a2)
	sh	a6, 12(a2)
	lh	a3, 28(a2)
	lh	a4, 98(a2)
	lh	a5, 44(a2)
	lh	a6, 100(a2)
	sh	a3, 98(a2)
	sh	a4, 28(a2)
	sh	a5, 100(a2)
	sh	a6, 44(a2)
	lh	a3, 60(a2)
	lh	a4, 102(a2)
	lh	a5, 76(a2)
	lh	a6, 104(a2)
	sh	a3, 102(a2)
	sh	a4, 60(a2)
	sh	a5, 104(a2)
	sh	a6, 76(a2)
	lh	a3, 92(a2)
	lh	a4, 106(a2)
	lh	a5, 14(a2)
	lh	a6, 112(a2)
	sh	a3, 106(a2)
	sh	a4, 92(a2)
	sh	a5, 112(a2)
	sh	a6, 14(a2)
	lh	a3, 30(a2)
	lh	a4, 114(a2)
	lh	a5, 46(a2)
	lh	a6, 116(a2)
	sh	a3, 114(a2)
	sh	a4, 30(a2)
	sh	a5, 116(a2)
	sh	a6, 46(a2)
	lh	a3, 62(a2)
	lh	a4, 118(a2)
	lh	a5, 78(a2)
	lh	a6, 120(a2)
	sh	a3, 118(a2)
	sh	a4, 62(a2)
	sh	a5, 120(a2)
	sh	a6, 78(a2)
	lh	a3, 94(a2)
	lh	a4, 122(a2)
	lh	a5, 110(a2)
	lh	a6, 124(a2)
	sh	a3, 122(a2)
	sh	a4, 94(a2)
	sh	a5, 124(a2)
	sh	a6, 110(a2)
	j	.LBB2_4
.LBB2_7:
	ret
.Lfunc_end2:
	.size	transpose_critical_parameters, .Lfunc_end2-transpose_critical_parameters
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jtransform_execute_transformation # -- Begin function jtransform_execute_transformation
	.p2align	2
	.type	jtransform_execute_transformation,@function
jtransform_execute_transformation:      # @jtransform_execute_transformation
# %bb.0:
	addi	sp, sp, -160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
	lw	a4, 0(a3)
	addi	a4, a4, -1
	li	a5, 6
	sd	a2, 40(sp)                      # 8-byte Folded Spill
	bgeu	a5, a4, .LBB3_1
	j	.LBB3_156
.LBB3_1:
	mv	a6, a1
	mv	s2, a0
	slli	a4, a4, 2
	lui	a0, %hi(.LJTI3_0)
	addi	a0, a0, %lo(.LJTI3_0)
	add	a0, a4, a0
	lw	a0, 0(a0)
	ld	a1, 16(a3)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	sd	a6, 48(sp)                      # 8-byte Folded Spill
	jr	a0
.LBB3_2:
	lw	a0, 76(a6)
	bgtz	a0, .LBB3_3
	j	.LBB3_156
.LBB3_3:
	lw	a0, 312(a6)
	lw	a1, 48(a6)
	li	s0, 0
	slli	a0, a0, 3
	divuw	s1, a1, a0
	li	s4, 96
	j	.LBB3_5
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	lw	a0, 76(a6)
	addi	s0, s0, 1
	blt	s0, a0, .LBB3_5
	j	.LBB3_156
.LBB3_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
                                        #       Child Loop BB3_11 Depth 3
                                        #         Child Loop BB3_12 Depth 4
                                        #           Child Loop BB3_13 Depth 5
                                        #     Child Loop BB3_7 Depth 2
	ld	s5, 88(a6)
	mul	a0, s0, s4
	add	s5, s5, a0
	lw	a0, 32(s5)
	beqz	a0, .LBB3_4
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	lw	a0, 8(s5)
	lw	a3, 12(s5)
	mulw	s7, a0, s1
	slli	s6, s0, 3
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	add	s6, a0, s6
	li	s3, 0
	bnez	s7, .LBB3_9
.LBB3_7:                                #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s6)
	li	a4, 1
	mv	a0, s2
	mv	a2, s3
	jalr	a5
	lw	a3, 12(s5)
	lw	a0, 32(s5)
	addw	s3, a3, s3
	bltu	s3, a0, .LBB3_7
	j	.LBB3_4
.LBB3_8:                                #   in Loop: Header=BB3_9 Depth=2
	lw	a0, 32(s5)
	addw	s3, a3, s3
	bgeu	s3, a0, .LBB3_4
.LBB3_9:                                #   Parent Loop BB3_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_11 Depth 3
                                        #         Child Loop BB3_12 Depth 4
                                        #           Child Loop BB3_13 Depth 5
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s6)
	li	a4, 1
	mv	a0, s2
	mv	a2, s3
	jalr	a5
	lw	a3, 12(s5)
	blez	a3, .LBB3_8
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=2
	li	a1, 0
.LBB3_11:                               #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_12 Depth 4
                                        #           Child Loop BB3_13 Depth 5
	slli	a2, a1, 3
	add	a2, a0, a2
	ld	a2, 0(a2)
	li	a4, 0
	addi	a5, a2, 128
.LBB3_12:                               #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_13 Depth 5
	slli	a6, a4, 32
	srli	a7, a6, 25
	add	a6, a5, a7
	add	a7, a2, a7
	not	t0, a4
	add	t0, s7, t0
	slli	t0, t0, 32
	srli	t0, t0, 25
	add	t0, a2, t0
.LBB3_13:                               #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        #         Parent Loop BB3_12 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	lh	t1, 0(t0)
	lh	t2, 0(a7)
	sh	t1, 0(a7)
	lh	t1, 2(t0)
	sh	t2, 0(t0)
	lh	t2, 2(a7)
	negw	t1, t1
	sh	t1, 2(a7)
	negw	t1, t2
	sh	t1, 2(t0)
	addi	a7, a7, 4
	addi	t0, t0, 4
	bne	a7, a6, .LBB3_13
# %bb.14:                               #   in Loop: Header=BB3_12 Depth=4
	addi	a4, a4, 1
	slliw	a6, a4, 1
	bltu	a6, s7, .LBB3_12
# %bb.15:                               #   in Loop: Header=BB3_11 Depth=3
	addi	a1, a1, 1
	bne	a1, a3, .LBB3_11
	j	.LBB3_8
.LBB3_16:
	lw	a0, 76(a6)
	bgtz	a0, .LBB3_17
	j	.LBB3_156
.LBB3_17:
	lw	a1, 312(a6)
	lw	a2, 48(a6)
	li	s0, 0
	slli	a1, a1, 3
	divuw	a1, a2, a1
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	j	.LBB3_20
.LBB3_18:                               #   in Loop: Header=BB3_20 Depth=1
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	lw	a0, 76(a6)
.LBB3_19:                               #   in Loop: Header=BB3_20 Depth=1
	addi	s0, s0, 1
	blt	s0, a0, .LBB3_20
	j	.LBB3_156
.LBB3_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_23 Depth 2
                                        #       Child Loop BB3_28 Depth 3
                                        #         Child Loop BB3_31 Depth 4
                                        #           Child Loop BB3_36 Depth 5
                                        #           Child Loop BB3_34 Depth 5
	ld	s8, 88(a6)
	li	a1, 96
	mul	a1, s0, a1
	add	s8, s8, a1
	lw	a1, 32(s8)
	beqz	a1, .LBB3_19
# %bb.21:                               #   in Loop: Header=BB3_20 Depth=1
	lw	a0, 8(s8)
	li	s3, 0
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	mulw	s9, a0, a1
	lw	a3, 12(s8)
	slli	s11, s0, 3
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	add	s10, s10, s11
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	add	s11, a0, s11
	j	.LBB3_23
.LBB3_22:                               #   in Loop: Header=BB3_23 Depth=2
	lw	a0, 32(s8)
	addw	s3, a3, s3
	bgeu	s3, a0, .LBB3_18
.LBB3_23:                               #   Parent Loop BB3_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_28 Depth 3
                                        #         Child Loop BB3_31 Depth 4
                                        #           Child Loop BB3_36 Depth 5
                                        #           Child Loop BB3_34 Depth 5
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s10)
	li	a4, 1
	mv	a0, s2
	mv	a2, s3
	jalr	a5
	lw	a3, 12(s8)
	blez	a3, .LBB3_22
# %bb.24:                               #   in Loop: Header=BB3_23 Depth=2
	mv	s4, a0
	lw	a0, 28(s8)
	beqz	a0, .LBB3_22
# %bb.25:                               # %.preheader37
                                        #   in Loop: Header=BB3_23 Depth=2
	li	s7, 0
	li	a0, 1
	j	.LBB3_28
.LBB3_26:                               #   in Loop: Header=BB3_28 Depth=3
	lw	a3, 12(s8)
.LBB3_27:                               #   in Loop: Header=BB3_28 Depth=3
	addi	s7, s7, 1
	bge	s7, a3, .LBB3_22
.LBB3_28:                               #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_23 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_31 Depth 4
                                        #           Child Loop BB3_36 Depth 5
                                        #           Child Loop BB3_34 Depth 5
	beqz	a0, .LBB3_27
# %bb.29:                               #   in Loop: Header=BB3_28 Depth=3
	li	s5, 0
	add	a0, s3, s7
	slli	a0, a0, 32
	srli	a0, a0, 32
	slli	s1, s7, 3
	add	s1, s4, s1
	slli	s6, a0, 7
	j	.LBB3_31
.LBB3_30:                               #   in Loop: Header=BB3_31 Depth=4
	lw	a0, 28(s8)
	addw	s5, a1, s5
	bgeu	s5, a0, .LBB3_26
.LBB3_31:                               #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_23 Depth=2
                                        #       Parent Loop BB3_28 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_36 Depth 5
                                        #           Child Loop BB3_34 Depth 5
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s11)
	lw	a3, 8(s8)
	mv	a0, s2
	mv	a2, s5
	li	a4, 0
	jalr	a5
	lw	a1, 8(s8)
	blez	a1, .LBB3_30
# %bb.32:                               #   in Loop: Header=BB3_31 Depth=4
	ld	a2, 0(s1)
	bgeu	s5, s9, .LBB3_35
# %bb.33:                               # %.preheader33
                                        #   in Loop: Header=BB3_31 Depth=4
	li	a3, 0
.LBB3_34:                               #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_23 Depth=2
                                        #       Parent Loop BB3_28 Depth=3
                                        #         Parent Loop BB3_31 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a4, 0(a0)
	add	a4, a4, s6
	add	a5, s5, a3
	not	a5, a5
	add	a5, s9, a5
	lh	a6, 0(a4)
	slli	a5, a5, 32
	srli	a5, a5, 25
	add	a5, a2, a5
	sh	a6, 0(a5)
	lh	a6, 2(a4)
	sh	a6, 16(a5)
	lh	a6, 4(a4)
	sh	a6, 32(a5)
	lh	a6, 6(a4)
	sh	a6, 48(a5)
	lh	a6, 8(a4)
	sh	a6, 64(a5)
	lh	a6, 10(a4)
	sh	a6, 80(a5)
	lh	a6, 12(a4)
	sh	a6, 96(a5)
	lh	a6, 14(a4)
	sh	a6, 112(a5)
	lh	a6, 16(a4)
	negw	a6, a6
	sh	a6, 2(a5)
	lh	a6, 18(a4)
	negw	a6, a6
	sh	a6, 18(a5)
	lh	a6, 20(a4)
	negw	a6, a6
	sh	a6, 34(a5)
	lh	a6, 22(a4)
	negw	a6, a6
	sh	a6, 50(a5)
	lh	a6, 24(a4)
	negw	a6, a6
	sh	a6, 66(a5)
	lh	a6, 26(a4)
	negw	a6, a6
	sh	a6, 82(a5)
	lh	a6, 28(a4)
	negw	a6, a6
	sh	a6, 98(a5)
	lh	a6, 30(a4)
	negw	a6, a6
	sh	a6, 114(a5)
	lh	a6, 32(a4)
	sh	a6, 4(a5)
	lh	a6, 34(a4)
	sh	a6, 20(a5)
	lh	a6, 36(a4)
	sh	a6, 36(a5)
	lh	a6, 38(a4)
	sh	a6, 52(a5)
	lh	a6, 40(a4)
	sh	a6, 68(a5)
	lh	a6, 42(a4)
	sh	a6, 84(a5)
	lh	a6, 44(a4)
	sh	a6, 100(a5)
	lh	a6, 46(a4)
	sh	a6, 116(a5)
	lh	a6, 48(a4)
	negw	a6, a6
	sh	a6, 6(a5)
	lh	a6, 50(a4)
	negw	a6, a6
	sh	a6, 22(a5)
	lh	a6, 52(a4)
	negw	a6, a6
	sh	a6, 38(a5)
	lh	a6, 54(a4)
	negw	a6, a6
	sh	a6, 54(a5)
	lh	a6, 56(a4)
	negw	a6, a6
	sh	a6, 70(a5)
	lh	a6, 58(a4)
	negw	a6, a6
	sh	a6, 86(a5)
	lh	a6, 60(a4)
	negw	a6, a6
	sh	a6, 102(a5)
	lh	a6, 62(a4)
	negw	a6, a6
	sh	a6, 118(a5)
	lh	a6, 64(a4)
	sh	a6, 8(a5)
	lh	a6, 66(a4)
	sh	a6, 24(a5)
	lh	a6, 68(a4)
	sh	a6, 40(a5)
	lh	a6, 70(a4)
	sh	a6, 56(a5)
	lh	a6, 72(a4)
	sh	a6, 72(a5)
	lh	a6, 74(a4)
	sh	a6, 88(a5)
	lh	a6, 76(a4)
	sh	a6, 104(a5)
	lh	a6, 78(a4)
	sh	a6, 120(a5)
	lh	a6, 80(a4)
	negw	a6, a6
	sh	a6, 10(a5)
	lh	a6, 82(a4)
	negw	a6, a6
	sh	a6, 26(a5)
	lh	a6, 84(a4)
	negw	a6, a6
	sh	a6, 42(a5)
	lh	a6, 86(a4)
	negw	a6, a6
	sh	a6, 58(a5)
	lh	a6, 88(a4)
	negw	a6, a6
	sh	a6, 74(a5)
	lh	a6, 90(a4)
	negw	a6, a6
	sh	a6, 90(a5)
	lh	a6, 92(a4)
	negw	a6, a6
	sh	a6, 106(a5)
	lh	a6, 94(a4)
	negw	a6, a6
	sh	a6, 122(a5)
	lh	a6, 96(a4)
	sh	a6, 12(a5)
	lh	a6, 98(a4)
	sh	a6, 28(a5)
	lh	a6, 100(a4)
	sh	a6, 44(a5)
	lh	a6, 102(a4)
	sh	a6, 60(a5)
	lh	a6, 104(a4)
	sh	a6, 76(a5)
	lh	a6, 106(a4)
	sh	a6, 92(a5)
	lh	a6, 108(a4)
	sh	a6, 108(a5)
	lh	a6, 110(a4)
	sh	a6, 124(a5)
	lh	a6, 112(a4)
	negw	a6, a6
	sh	a6, 14(a5)
	lh	a6, 114(a4)
	negw	a6, a6
	sh	a6, 30(a5)
	lh	a6, 116(a4)
	negw	a6, a6
	sh	a6, 46(a5)
	lh	a6, 118(a4)
	negw	a6, a6
	sh	a6, 62(a5)
	lh	a6, 120(a4)
	negw	a6, a6
	sh	a6, 78(a5)
	lh	a6, 122(a4)
	negw	a6, a6
	sh	a6, 94(a5)
	lh	a6, 124(a4)
	negw	a6, a6
	sh	a6, 110(a5)
	lh	a4, 126(a4)
	negw	a4, a4
	sh	a4, 126(a5)
	addi	a3, a3, 1
	addi	a0, a0, 8
	bne	a3, a1, .LBB3_34
	j	.LBB3_30
.LBB3_35:                               # %.preheader35
                                        #   in Loop: Header=BB3_31 Depth=4
	slli	a3, a1, 3
	add	a3, a0, a3
	mv	a4, s5
.LBB3_36:                               #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_23 Depth=2
                                        #       Parent Loop BB3_28 Depth=3
                                        #         Parent Loop BB3_31 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a5, 0(a0)
	add	a5, a5, s6
	lh	a7, 0(a5)
	slli	a6, a4, 32
	srli	a6, a6, 25
	add	a6, a2, a6
	sh	a7, 0(a6)
	lh	a7, 2(a5)
	sh	a7, 16(a6)
	lh	a7, 4(a5)
	sh	a7, 32(a6)
	lh	a7, 6(a5)
	sh	a7, 48(a6)
	lh	a7, 8(a5)
	sh	a7, 64(a6)
	lh	a7, 10(a5)
	sh	a7, 80(a6)
	lh	a7, 12(a5)
	sh	a7, 96(a6)
	lh	a7, 14(a5)
	sh	a7, 112(a6)
	lh	a7, 16(a5)
	sh	a7, 2(a6)
	lh	a7, 18(a5)
	sh	a7, 18(a6)
	lh	a7, 20(a5)
	sh	a7, 34(a6)
	lh	a7, 22(a5)
	sh	a7, 50(a6)
	lh	a7, 24(a5)
	sh	a7, 66(a6)
	lh	a7, 26(a5)
	sh	a7, 82(a6)
	lh	a7, 28(a5)
	sh	a7, 98(a6)
	lh	a7, 30(a5)
	sh	a7, 114(a6)
	lh	a7, 32(a5)
	sh	a7, 4(a6)
	lh	a7, 34(a5)
	sh	a7, 20(a6)
	lh	a7, 36(a5)
	sh	a7, 36(a6)
	lh	a7, 38(a5)
	sh	a7, 52(a6)
	lh	a7, 40(a5)
	sh	a7, 68(a6)
	lh	a7, 42(a5)
	sh	a7, 84(a6)
	lh	a7, 44(a5)
	sh	a7, 100(a6)
	lh	a7, 46(a5)
	sh	a7, 116(a6)
	lh	a7, 48(a5)
	sh	a7, 6(a6)
	lh	a7, 50(a5)
	sh	a7, 22(a6)
	lh	a7, 52(a5)
	sh	a7, 38(a6)
	lh	a7, 54(a5)
	sh	a7, 54(a6)
	lh	a7, 56(a5)
	sh	a7, 70(a6)
	lh	a7, 58(a5)
	sh	a7, 86(a6)
	lh	a7, 60(a5)
	sh	a7, 102(a6)
	lh	a7, 62(a5)
	sh	a7, 118(a6)
	lh	a7, 64(a5)
	sh	a7, 8(a6)
	lh	a7, 66(a5)
	sh	a7, 24(a6)
	lh	a7, 68(a5)
	sh	a7, 40(a6)
	lh	a7, 70(a5)
	sh	a7, 56(a6)
	lh	a7, 72(a5)
	sh	a7, 72(a6)
	lh	a7, 74(a5)
	sh	a7, 88(a6)
	lh	a7, 76(a5)
	sh	a7, 104(a6)
	lh	a7, 78(a5)
	sh	a7, 120(a6)
	lh	a7, 80(a5)
	sh	a7, 10(a6)
	lh	a7, 82(a5)
	sh	a7, 26(a6)
	lh	a7, 84(a5)
	sh	a7, 42(a6)
	lh	a7, 86(a5)
	sh	a7, 58(a6)
	lh	a7, 88(a5)
	sh	a7, 74(a6)
	lh	a7, 90(a5)
	sh	a7, 90(a6)
	lh	a7, 92(a5)
	sh	a7, 106(a6)
	lh	a7, 94(a5)
	sh	a7, 122(a6)
	lh	a7, 96(a5)
	sh	a7, 12(a6)
	lh	a7, 98(a5)
	sh	a7, 28(a6)
	lh	a7, 100(a5)
	sh	a7, 44(a6)
	lh	a7, 102(a5)
	sh	a7, 60(a6)
	lh	a7, 104(a5)
	sh	a7, 76(a6)
	lh	a7, 106(a5)
	sh	a7, 92(a6)
	lh	a7, 108(a5)
	sh	a7, 108(a6)
	lh	a7, 110(a5)
	sh	a7, 124(a6)
	lh	a7, 112(a5)
	sh	a7, 14(a6)
	lh	a7, 114(a5)
	sh	a7, 30(a6)
	lh	a7, 116(a5)
	sh	a7, 46(a6)
	lh	a7, 118(a5)
	sh	a7, 62(a6)
	lh	a7, 120(a5)
	sh	a7, 78(a6)
	lh	a7, 122(a5)
	sh	a7, 94(a6)
	lh	a7, 124(a5)
	sh	a7, 110(a6)
	lh	a5, 126(a5)
	sh	a5, 126(a6)
	addi	a0, a0, 8
	addi	a4, a4, 1
	bne	a0, a3, .LBB3_36
	j	.LBB3_30
.LBB3_37:
	lw	a0, 76(a6)
	bgtz	a0, .LBB3_38
	j	.LBB3_156
.LBB3_38:
	li	s0, 0
	li	s1, 96
	j	.LBB3_41
.LBB3_39:                               #   in Loop: Header=BB3_41 Depth=1
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	lw	a0, 76(a6)
.LBB3_40:                               #   in Loop: Header=BB3_41 Depth=1
	addi	s0, s0, 1
	blt	s0, a0, .LBB3_41
	j	.LBB3_156
.LBB3_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_44 Depth 2
                                        #       Child Loop BB3_49 Depth 3
                                        #         Child Loop BB3_52 Depth 4
                                        #           Child Loop BB3_54 Depth 5
	ld	s6, 88(a6)
	mul	a1, s0, s1
	add	s6, s6, a1
	lw	a1, 32(s6)
	beqz	a1, .LBB3_40
# %bb.42:                               #   in Loop: Header=BB3_41 Depth=1
	li	s3, 0
	lw	a3, 12(s6)
	slli	s8, s0, 3
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	add	s7, s7, s8
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	add	s8, a0, s8
	j	.LBB3_44
.LBB3_43:                               #   in Loop: Header=BB3_44 Depth=2
	lw	a0, 32(s6)
	addw	s3, a3, s3
	bgeu	s3, a0, .LBB3_39
.LBB3_44:                               #   Parent Loop BB3_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_49 Depth 3
                                        #         Child Loop BB3_52 Depth 4
                                        #           Child Loop BB3_54 Depth 5
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s7)
	li	a4, 1
	mv	a0, s2
	mv	a2, s3
	jalr	a5
	lw	a3, 12(s6)
	blez	a3, .LBB3_43
# %bb.45:                               #   in Loop: Header=BB3_44 Depth=2
	mv	s4, a0
	lw	a0, 28(s6)
	beqz	a0, .LBB3_43
# %bb.46:                               # %.preheader17
                                        #   in Loop: Header=BB3_44 Depth=2
	li	s9, 0
	li	a0, 1
	j	.LBB3_49
.LBB3_47:                               #   in Loop: Header=BB3_49 Depth=3
	lw	a3, 12(s6)
.LBB3_48:                               #   in Loop: Header=BB3_49 Depth=3
	addi	s9, s9, 1
	bge	s9, a3, .LBB3_43
.LBB3_49:                               #   Parent Loop BB3_41 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_52 Depth 4
                                        #           Child Loop BB3_54 Depth 5
	beqz	a0, .LBB3_48
# %bb.50:                               #   in Loop: Header=BB3_49 Depth=3
	li	s5, 0
	add	a0, s3, s9
	slli	a0, a0, 32
	srli	a0, a0, 32
	slli	s10, s9, 3
	add	s10, s4, s10
	slli	s11, a0, 7
	j	.LBB3_52
.LBB3_51:                               #   in Loop: Header=BB3_52 Depth=4
	lw	a0, 28(s6)
	addw	s5, a1, s5
	bgeu	s5, a0, .LBB3_47
.LBB3_52:                               #   Parent Loop BB3_41 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        #       Parent Loop BB3_49 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_54 Depth 5
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s8)
	lw	a3, 8(s6)
	mv	a0, s2
	mv	a2, s5
	li	a4, 0
	jalr	a5
	lw	a1, 8(s6)
	blez	a1, .LBB3_51
# %bb.53:                               #   in Loop: Header=BB3_52 Depth=4
	ld	a2, 0(s10)
	slli	a3, a1, 3
	add	a3, a0, a3
	mv	a4, s5
.LBB3_54:                               #   Parent Loop BB3_41 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        #       Parent Loop BB3_49 Depth=3
                                        #         Parent Loop BB3_52 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a5, 0(a0)
	add	a5, a5, s11
	lh	a7, 0(a5)
	slli	a6, a4, 32
	srli	a6, a6, 25
	add	a6, a2, a6
	sh	a7, 0(a6)
	lh	a7, 2(a5)
	sh	a7, 16(a6)
	lh	a7, 4(a5)
	sh	a7, 32(a6)
	lh	a7, 6(a5)
	sh	a7, 48(a6)
	lh	a7, 8(a5)
	sh	a7, 64(a6)
	lh	a7, 10(a5)
	sh	a7, 80(a6)
	lh	a7, 12(a5)
	sh	a7, 96(a6)
	lh	a7, 14(a5)
	sh	a7, 112(a6)
	lh	a7, 16(a5)
	sh	a7, 2(a6)
	lh	a7, 18(a5)
	sh	a7, 18(a6)
	lh	a7, 20(a5)
	sh	a7, 34(a6)
	lh	a7, 22(a5)
	sh	a7, 50(a6)
	lh	a7, 24(a5)
	sh	a7, 66(a6)
	lh	a7, 26(a5)
	sh	a7, 82(a6)
	lh	a7, 28(a5)
	sh	a7, 98(a6)
	lh	a7, 30(a5)
	sh	a7, 114(a6)
	lh	a7, 32(a5)
	sh	a7, 4(a6)
	lh	a7, 34(a5)
	sh	a7, 20(a6)
	lh	a7, 36(a5)
	sh	a7, 36(a6)
	lh	a7, 38(a5)
	sh	a7, 52(a6)
	lh	a7, 40(a5)
	sh	a7, 68(a6)
	lh	a7, 42(a5)
	sh	a7, 84(a6)
	lh	a7, 44(a5)
	sh	a7, 100(a6)
	lh	a7, 46(a5)
	sh	a7, 116(a6)
	lh	a7, 48(a5)
	sh	a7, 6(a6)
	lh	a7, 50(a5)
	sh	a7, 22(a6)
	lh	a7, 52(a5)
	sh	a7, 38(a6)
	lh	a7, 54(a5)
	sh	a7, 54(a6)
	lh	a7, 56(a5)
	sh	a7, 70(a6)
	lh	a7, 58(a5)
	sh	a7, 86(a6)
	lh	a7, 60(a5)
	sh	a7, 102(a6)
	lh	a7, 62(a5)
	sh	a7, 118(a6)
	lh	a7, 64(a5)
	sh	a7, 8(a6)
	lh	a7, 66(a5)
	sh	a7, 24(a6)
	lh	a7, 68(a5)
	sh	a7, 40(a6)
	lh	a7, 70(a5)
	sh	a7, 56(a6)
	lh	a7, 72(a5)
	sh	a7, 72(a6)
	lh	a7, 74(a5)
	sh	a7, 88(a6)
	lh	a7, 76(a5)
	sh	a7, 104(a6)
	lh	a7, 78(a5)
	sh	a7, 120(a6)
	lh	a7, 80(a5)
	sh	a7, 10(a6)
	lh	a7, 82(a5)
	sh	a7, 26(a6)
	lh	a7, 84(a5)
	sh	a7, 42(a6)
	lh	a7, 86(a5)
	sh	a7, 58(a6)
	lh	a7, 88(a5)
	sh	a7, 74(a6)
	lh	a7, 90(a5)
	sh	a7, 90(a6)
	lh	a7, 92(a5)
	sh	a7, 106(a6)
	lh	a7, 94(a5)
	sh	a7, 122(a6)
	lh	a7, 96(a5)
	sh	a7, 12(a6)
	lh	a7, 98(a5)
	sh	a7, 28(a6)
	lh	a7, 100(a5)
	sh	a7, 44(a6)
	lh	a7, 102(a5)
	sh	a7, 60(a6)
	lh	a7, 104(a5)
	sh	a7, 76(a6)
	lh	a7, 106(a5)
	sh	a7, 92(a6)
	lh	a7, 108(a5)
	sh	a7, 108(a6)
	lh	a7, 110(a5)
	sh	a7, 124(a6)
	lh	a7, 112(a5)
	sh	a7, 14(a6)
	lh	a7, 114(a5)
	sh	a7, 30(a6)
	lh	a7, 116(a5)
	sh	a7, 46(a6)
	lh	a7, 118(a5)
	sh	a7, 62(a6)
	lh	a7, 120(a5)
	sh	a7, 78(a6)
	lh	a7, 122(a5)
	sh	a7, 94(a6)
	lh	a7, 124(a5)
	sh	a7, 110(a6)
	lh	a5, 126(a5)
	sh	a5, 126(a6)
	addi	a0, a0, 8
	addi	a4, a4, 1
	bne	a0, a3, .LBB3_54
	j	.LBB3_51
.LBB3_55:
	lw	a0, 76(a6)
	bgtz	a0, .LBB3_56
	j	.LBB3_156
.LBB3_56:
	li	a5, 0
	lw	a1, 312(a6)
	lw	a2, 48(a6)
	lw	a3, 316(a6)
	lw	a4, 52(a6)
	slli	a1, a1, 3
	divuw	a1, a2, a1
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	slli	a3, a3, 3
	divuw	a1, a4, a3
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	j	.LBB3_59
.LBB3_57:                               #   in Loop: Header=BB3_59 Depth=1
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	lw	a0, 76(a6)
	ld	a5, 24(sp)                      # 8-byte Folded Reload
.LBB3_58:                               #   in Loop: Header=BB3_59 Depth=1
	addi	a5, a5, 1
	blt	a5, a0, .LBB3_59
	j	.LBB3_156
.LBB3_59:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_62 Depth 2
                                        #       Child Loop BB3_78 Depth 3
                                        #         Child Loop BB3_81 Depth 4
                                        #           Child Loop BB3_86 Depth 5
                                        #           Child Loop BB3_84 Depth 5
                                        #       Child Loop BB3_67 Depth 3
                                        #         Child Loop BB3_70 Depth 4
                                        #           Child Loop BB3_75 Depth 5
                                        #           Child Loop BB3_73 Depth 5
	ld	s11, 88(a6)
	li	a1, 96
	mul	a1, a5, a1
	add	s11, s11, a1
	lw	a1, 32(s11)
	beqz	a1, .LBB3_58
# %bb.60:                               #   in Loop: Header=BB3_59 Depth=1
	lw	a0, 8(s11)
	lw	a3, 12(s11)
	li	s3, 0
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	mulw	s10, a0, a1
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	mulw	s8, a3, a0
	sd	a5, 24(sp)                      # 8-byte Folded Spill
	slli	s0, a5, 3
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	add	s6, s6, s0
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	add	s0, a0, s0
	j	.LBB3_62
.LBB3_61:                               #   in Loop: Header=BB3_62 Depth=2
	lw	a0, 32(s11)
	addw	s3, a3, s3
	bgeu	s3, a0, .LBB3_57
.LBB3_62:                               #   Parent Loop BB3_59 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_78 Depth 3
                                        #         Child Loop BB3_81 Depth 4
                                        #           Child Loop BB3_86 Depth 5
                                        #           Child Loop BB3_84 Depth 5
                                        #       Child Loop BB3_67 Depth 3
                                        #         Child Loop BB3_70 Depth 4
                                        #           Child Loop BB3_75 Depth 5
                                        #           Child Loop BB3_73 Depth 5
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s6)
	li	a4, 1
	mv	a0, s2
	mv	a2, s3
	jalr	a5
	lw	a3, 12(s11)
	blez	a3, .LBB3_61
# %bb.63:                               #   in Loop: Header=BB3_62 Depth=2
	mv	s1, a0
	lw	a0, 28(s11)
	beqz	a0, .LBB3_61
# %bb.64:                               #   in Loop: Header=BB3_62 Depth=2
	li	s9, 0
	li	a0, 1
	bltu	s3, s8, .LBB3_67
	j	.LBB3_78
.LBB3_65:                               #   in Loop: Header=BB3_67 Depth=3
	lw	a3, 12(s11)
.LBB3_66:                               #   in Loop: Header=BB3_67 Depth=3
	addi	s9, s9, 1
	bge	s9, a3, .LBB3_61
.LBB3_67:                               #   Parent Loop BB3_59 Depth=1
                                        #     Parent Loop BB3_62 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_70 Depth 4
                                        #           Child Loop BB3_75 Depth 5
                                        #           Child Loop BB3_73 Depth 5
	beqz	a0, .LBB3_66
# %bb.68:                               #   in Loop: Header=BB3_67 Depth=3
	li	s5, 0
	add	a0, s3, s9
	slli	s4, s9, 3
	add	s4, s1, s4
	not	a0, a0
	add	a0, s8, a0
	slli	a0, a0, 32
	srli	a0, a0, 32
	slli	s7, a0, 7
	j	.LBB3_70
.LBB3_69:                               #   in Loop: Header=BB3_70 Depth=4
	lw	a0, 28(s11)
	addw	s5, a1, s5
	bgeu	s5, a0, .LBB3_65
.LBB3_70:                               #   Parent Loop BB3_59 Depth=1
                                        #     Parent Loop BB3_62 Depth=2
                                        #       Parent Loop BB3_67 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_75 Depth 5
                                        #           Child Loop BB3_73 Depth 5
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s0)
	lw	a3, 8(s11)
	mv	a0, s2
	mv	a2, s5
	li	a4, 0
	jalr	a5
	lw	a1, 8(s11)
	blez	a1, .LBB3_69
# %bb.71:                               #   in Loop: Header=BB3_70 Depth=4
	ld	a2, 0(s4)
	bgeu	s5, s10, .LBB3_74
# %bb.72:                               # %.preheader20
                                        #   in Loop: Header=BB3_70 Depth=4
	li	a3, 0
.LBB3_73:                               #   Parent Loop BB3_59 Depth=1
                                        #     Parent Loop BB3_62 Depth=2
                                        #       Parent Loop BB3_67 Depth=3
                                        #         Parent Loop BB3_70 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a4, 0(a0)
	add	a4, a4, s7
	add	a5, s5, a3
	not	a5, a5
	add	a5, s10, a5
	lh	a6, 0(a4)
	slli	a5, a5, 32
	srli	a5, a5, 25
	add	a5, a2, a5
	sh	a6, 0(a5)
	lh	a6, 2(a4)
	negw	a6, a6
	sh	a6, 16(a5)
	lh	a6, 4(a4)
	sh	a6, 32(a5)
	lh	a6, 6(a4)
	negw	a6, a6
	sh	a6, 48(a5)
	lh	a6, 8(a4)
	sh	a6, 64(a5)
	lh	a6, 10(a4)
	negw	a6, a6
	sh	a6, 80(a5)
	lh	a6, 12(a4)
	sh	a6, 96(a5)
	lh	a6, 14(a4)
	negw	a6, a6
	sh	a6, 112(a5)
	lh	a6, 16(a4)
	negw	a6, a6
	sh	a6, 2(a5)
	lh	a6, 18(a4)
	sh	a6, 18(a5)
	lh	a6, 20(a4)
	negw	a6, a6
	sh	a6, 34(a5)
	lh	a6, 22(a4)
	sh	a6, 50(a5)
	lh	a6, 24(a4)
	negw	a6, a6
	sh	a6, 66(a5)
	lh	a6, 26(a4)
	sh	a6, 82(a5)
	lh	a6, 28(a4)
	negw	a6, a6
	sh	a6, 98(a5)
	lh	a6, 30(a4)
	sh	a6, 114(a5)
	lh	a6, 32(a4)
	sh	a6, 4(a5)
	lh	a6, 34(a4)
	negw	a6, a6
	sh	a6, 20(a5)
	lh	a6, 36(a4)
	sh	a6, 36(a5)
	lh	a6, 38(a4)
	negw	a6, a6
	sh	a6, 52(a5)
	lh	a6, 40(a4)
	sh	a6, 68(a5)
	lh	a6, 42(a4)
	negw	a6, a6
	sh	a6, 84(a5)
	lh	a6, 44(a4)
	sh	a6, 100(a5)
	lh	a6, 46(a4)
	negw	a6, a6
	sh	a6, 116(a5)
	lh	a6, 48(a4)
	negw	a6, a6
	sh	a6, 6(a5)
	lh	a6, 50(a4)
	sh	a6, 22(a5)
	lh	a6, 52(a4)
	negw	a6, a6
	sh	a6, 38(a5)
	lh	a6, 54(a4)
	sh	a6, 54(a5)
	lh	a6, 56(a4)
	negw	a6, a6
	sh	a6, 70(a5)
	lh	a6, 58(a4)
	sh	a6, 86(a5)
	lh	a6, 60(a4)
	negw	a6, a6
	sh	a6, 102(a5)
	lh	a6, 62(a4)
	sh	a6, 118(a5)
	lh	a6, 64(a4)
	sh	a6, 8(a5)
	lh	a6, 66(a4)
	negw	a6, a6
	sh	a6, 24(a5)
	lh	a6, 68(a4)
	sh	a6, 40(a5)
	lh	a6, 70(a4)
	negw	a6, a6
	sh	a6, 56(a5)
	lh	a6, 72(a4)
	sh	a6, 72(a5)
	lh	a6, 74(a4)
	negw	a6, a6
	sh	a6, 88(a5)
	lh	a6, 76(a4)
	sh	a6, 104(a5)
	lh	a6, 78(a4)
	negw	a6, a6
	sh	a6, 120(a5)
	lh	a6, 80(a4)
	negw	a6, a6
	sh	a6, 10(a5)
	lh	a6, 82(a4)
	sh	a6, 26(a5)
	lh	a6, 84(a4)
	negw	a6, a6
	sh	a6, 42(a5)
	lh	a6, 86(a4)
	sh	a6, 58(a5)
	lh	a6, 88(a4)
	negw	a6, a6
	sh	a6, 74(a5)
	lh	a6, 90(a4)
	sh	a6, 90(a5)
	lh	a6, 92(a4)
	negw	a6, a6
	sh	a6, 106(a5)
	lh	a6, 94(a4)
	sh	a6, 122(a5)
	lh	a6, 96(a4)
	sh	a6, 12(a5)
	lh	a6, 98(a4)
	negw	a6, a6
	sh	a6, 28(a5)
	lh	a6, 100(a4)
	sh	a6, 44(a5)
	lh	a6, 102(a4)
	negw	a6, a6
	sh	a6, 60(a5)
	lh	a6, 104(a4)
	sh	a6, 76(a5)
	lh	a6, 106(a4)
	negw	a6, a6
	sh	a6, 92(a5)
	lh	a6, 108(a4)
	sh	a6, 108(a5)
	lh	a6, 110(a4)
	negw	a6, a6
	sh	a6, 124(a5)
	lh	a6, 112(a4)
	negw	a6, a6
	sh	a6, 14(a5)
	lh	a6, 114(a4)
	sh	a6, 30(a5)
	lh	a6, 116(a4)
	negw	a6, a6
	sh	a6, 46(a5)
	lh	a6, 118(a4)
	sh	a6, 62(a5)
	lh	a6, 120(a4)
	negw	a6, a6
	sh	a6, 78(a5)
	lh	a6, 122(a4)
	sh	a6, 94(a5)
	lh	a6, 124(a4)
	negw	a6, a6
	sh	a6, 110(a5)
	lh	a4, 126(a4)
	sh	a4, 126(a5)
	addi	a3, a3, 1
	addi	a0, a0, 8
	bne	a3, a1, .LBB3_73
	j	.LBB3_69
.LBB3_74:                               # %.preheader22
                                        #   in Loop: Header=BB3_70 Depth=4
	slli	a3, a1, 3
	add	a3, a0, a3
	mv	a4, s5
.LBB3_75:                               #   Parent Loop BB3_59 Depth=1
                                        #     Parent Loop BB3_62 Depth=2
                                        #       Parent Loop BB3_67 Depth=3
                                        #         Parent Loop BB3_70 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a5, 0(a0)
	add	a5, a5, s7
	lh	a7, 0(a5)
	slli	a6, a4, 32
	srli	a6, a6, 25
	add	a6, a2, a6
	sh	a7, 0(a6)
	lh	a7, 2(a5)
	negw	a7, a7
	sh	a7, 16(a6)
	lh	a7, 4(a5)
	sh	a7, 32(a6)
	lh	a7, 6(a5)
	negw	a7, a7
	sh	a7, 48(a6)
	lh	a7, 8(a5)
	sh	a7, 64(a6)
	lh	a7, 10(a5)
	negw	a7, a7
	sh	a7, 80(a6)
	lh	a7, 12(a5)
	sh	a7, 96(a6)
	lh	a7, 14(a5)
	negw	a7, a7
	sh	a7, 112(a6)
	lh	a7, 16(a5)
	sh	a7, 2(a6)
	lh	a7, 18(a5)
	negw	a7, a7
	sh	a7, 18(a6)
	lh	a7, 20(a5)
	sh	a7, 34(a6)
	lh	a7, 22(a5)
	negw	a7, a7
	sh	a7, 50(a6)
	lh	a7, 24(a5)
	sh	a7, 66(a6)
	lh	a7, 26(a5)
	negw	a7, a7
	sh	a7, 82(a6)
	lh	a7, 28(a5)
	sh	a7, 98(a6)
	lh	a7, 30(a5)
	negw	a7, a7
	sh	a7, 114(a6)
	lh	a7, 32(a5)
	sh	a7, 4(a6)
	lh	a7, 34(a5)
	negw	a7, a7
	sh	a7, 20(a6)
	lh	a7, 36(a5)
	sh	a7, 36(a6)
	lh	a7, 38(a5)
	negw	a7, a7
	sh	a7, 52(a6)
	lh	a7, 40(a5)
	sh	a7, 68(a6)
	lh	a7, 42(a5)
	negw	a7, a7
	sh	a7, 84(a6)
	lh	a7, 44(a5)
	sh	a7, 100(a6)
	lh	a7, 46(a5)
	negw	a7, a7
	sh	a7, 116(a6)
	lh	a7, 48(a5)
	sh	a7, 6(a6)
	lh	a7, 50(a5)
	negw	a7, a7
	sh	a7, 22(a6)
	lh	a7, 52(a5)
	sh	a7, 38(a6)
	lh	a7, 54(a5)
	negw	a7, a7
	sh	a7, 54(a6)
	lh	a7, 56(a5)
	sh	a7, 70(a6)
	lh	a7, 58(a5)
	negw	a7, a7
	sh	a7, 86(a6)
	lh	a7, 60(a5)
	sh	a7, 102(a6)
	lh	a7, 62(a5)
	negw	a7, a7
	sh	a7, 118(a6)
	lh	a7, 64(a5)
	sh	a7, 8(a6)
	lh	a7, 66(a5)
	negw	a7, a7
	sh	a7, 24(a6)
	lh	a7, 68(a5)
	sh	a7, 40(a6)
	lh	a7, 70(a5)
	negw	a7, a7
	sh	a7, 56(a6)
	lh	a7, 72(a5)
	sh	a7, 72(a6)
	lh	a7, 74(a5)
	negw	a7, a7
	sh	a7, 88(a6)
	lh	a7, 76(a5)
	sh	a7, 104(a6)
	lh	a7, 78(a5)
	negw	a7, a7
	sh	a7, 120(a6)
	lh	a7, 80(a5)
	sh	a7, 10(a6)
	lh	a7, 82(a5)
	negw	a7, a7
	sh	a7, 26(a6)
	lh	a7, 84(a5)
	sh	a7, 42(a6)
	lh	a7, 86(a5)
	negw	a7, a7
	sh	a7, 58(a6)
	lh	a7, 88(a5)
	sh	a7, 74(a6)
	lh	a7, 90(a5)
	negw	a7, a7
	sh	a7, 90(a6)
	lh	a7, 92(a5)
	sh	a7, 106(a6)
	lh	a7, 94(a5)
	negw	a7, a7
	sh	a7, 122(a6)
	lh	a7, 96(a5)
	sh	a7, 12(a6)
	lh	a7, 98(a5)
	negw	a7, a7
	sh	a7, 28(a6)
	lh	a7, 100(a5)
	sh	a7, 44(a6)
	lh	a7, 102(a5)
	negw	a7, a7
	sh	a7, 60(a6)
	lh	a7, 104(a5)
	sh	a7, 76(a6)
	lh	a7, 106(a5)
	negw	a7, a7
	sh	a7, 92(a6)
	lh	a7, 108(a5)
	sh	a7, 108(a6)
	lh	a7, 110(a5)
	negw	a7, a7
	sh	a7, 124(a6)
	lh	a7, 112(a5)
	sh	a7, 14(a6)
	lh	a7, 114(a5)
	negw	a7, a7
	sh	a7, 30(a6)
	lh	a7, 116(a5)
	sh	a7, 46(a6)
	lh	a7, 118(a5)
	negw	a7, a7
	sh	a7, 62(a6)
	lh	a7, 120(a5)
	sh	a7, 78(a6)
	lh	a7, 122(a5)
	negw	a7, a7
	sh	a7, 94(a6)
	lh	a7, 124(a5)
	sh	a7, 110(a6)
	lh	a5, 126(a5)
	negw	a5, a5
	sh	a5, 126(a6)
	addi	a0, a0, 8
	addi	a4, a4, 1
	bne	a0, a3, .LBB3_75
	j	.LBB3_69
.LBB3_76:                               #   in Loop: Header=BB3_78 Depth=3
	lw	a3, 12(s11)
.LBB3_77:                               #   in Loop: Header=BB3_78 Depth=3
	addi	s9, s9, 1
	bge	s9, a3, .LBB3_61
.LBB3_78:                               #   Parent Loop BB3_59 Depth=1
                                        #     Parent Loop BB3_62 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_81 Depth 4
                                        #           Child Loop BB3_86 Depth 5
                                        #           Child Loop BB3_84 Depth 5
	beqz	a0, .LBB3_77
# %bb.79:                               #   in Loop: Header=BB3_78 Depth=3
	li	s5, 0
	add	a0, s3, s9
	slli	a0, a0, 32
	srli	s4, a0, 32
	slli	s7, s9, 3
	add	s7, s1, s7
	j	.LBB3_81
.LBB3_80:                               #   in Loop: Header=BB3_81 Depth=4
	lw	a0, 28(s11)
	addw	s5, a1, s5
	bgeu	s5, a0, .LBB3_76
.LBB3_81:                               #   Parent Loop BB3_59 Depth=1
                                        #     Parent Loop BB3_62 Depth=2
                                        #       Parent Loop BB3_78 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_86 Depth 5
                                        #           Child Loop BB3_84 Depth 5
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s0)
	lw	a3, 8(s11)
	mv	a0, s2
	mv	a2, s5
	li	a4, 0
	jalr	a5
	lw	a1, 8(s11)
	blez	a1, .LBB3_80
# %bb.82:                               #   in Loop: Header=BB3_81 Depth=4
	ld	a2, 0(s7)
	slli	a3, s4, 7
	bgeu	s5, s10, .LBB3_85
# %bb.83:                               # %.preheader24
                                        #   in Loop: Header=BB3_81 Depth=4
	li	a4, 0
.LBB3_84:                               #   Parent Loop BB3_59 Depth=1
                                        #     Parent Loop BB3_62 Depth=2
                                        #       Parent Loop BB3_78 Depth=3
                                        #         Parent Loop BB3_81 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a5, 0(a0)
	add	a5, a5, a3
	add	a6, s5, a4
	not	a6, a6
	add	a6, s10, a6
	lh	a7, 0(a5)
	slli	a6, a6, 32
	srli	a6, a6, 25
	add	a6, a2, a6
	sh	a7, 0(a6)
	lh	a7, 2(a5)
	sh	a7, 16(a6)
	lh	a7, 4(a5)
	sh	a7, 32(a6)
	lh	a7, 6(a5)
	sh	a7, 48(a6)
	lh	a7, 8(a5)
	sh	a7, 64(a6)
	lh	a7, 10(a5)
	sh	a7, 80(a6)
	lh	a7, 12(a5)
	sh	a7, 96(a6)
	lh	a7, 14(a5)
	sh	a7, 112(a6)
	lh	a7, 16(a5)
	negw	a7, a7
	sh	a7, 2(a6)
	lh	a7, 18(a5)
	negw	a7, a7
	sh	a7, 18(a6)
	lh	a7, 20(a5)
	negw	a7, a7
	sh	a7, 34(a6)
	lh	a7, 22(a5)
	negw	a7, a7
	sh	a7, 50(a6)
	lh	a7, 24(a5)
	negw	a7, a7
	sh	a7, 66(a6)
	lh	a7, 26(a5)
	negw	a7, a7
	sh	a7, 82(a6)
	lh	a7, 28(a5)
	negw	a7, a7
	sh	a7, 98(a6)
	lh	a7, 30(a5)
	negw	a7, a7
	sh	a7, 114(a6)
	lh	a7, 32(a5)
	sh	a7, 4(a6)
	lh	a7, 34(a5)
	sh	a7, 20(a6)
	lh	a7, 36(a5)
	sh	a7, 36(a6)
	lh	a7, 38(a5)
	sh	a7, 52(a6)
	lh	a7, 40(a5)
	sh	a7, 68(a6)
	lh	a7, 42(a5)
	sh	a7, 84(a6)
	lh	a7, 44(a5)
	sh	a7, 100(a6)
	lh	a7, 46(a5)
	sh	a7, 116(a6)
	lh	a7, 48(a5)
	negw	a7, a7
	sh	a7, 6(a6)
	lh	a7, 50(a5)
	negw	a7, a7
	sh	a7, 22(a6)
	lh	a7, 52(a5)
	negw	a7, a7
	sh	a7, 38(a6)
	lh	a7, 54(a5)
	negw	a7, a7
	sh	a7, 54(a6)
	lh	a7, 56(a5)
	negw	a7, a7
	sh	a7, 70(a6)
	lh	a7, 58(a5)
	negw	a7, a7
	sh	a7, 86(a6)
	lh	a7, 60(a5)
	negw	a7, a7
	sh	a7, 102(a6)
	lh	a7, 62(a5)
	negw	a7, a7
	sh	a7, 118(a6)
	lh	a7, 64(a5)
	sh	a7, 8(a6)
	lh	a7, 66(a5)
	sh	a7, 24(a6)
	lh	a7, 68(a5)
	sh	a7, 40(a6)
	lh	a7, 70(a5)
	sh	a7, 56(a6)
	lh	a7, 72(a5)
	sh	a7, 72(a6)
	lh	a7, 74(a5)
	sh	a7, 88(a6)
	lh	a7, 76(a5)
	sh	a7, 104(a6)
	lh	a7, 78(a5)
	sh	a7, 120(a6)
	lh	a7, 80(a5)
	negw	a7, a7
	sh	a7, 10(a6)
	lh	a7, 82(a5)
	negw	a7, a7
	sh	a7, 26(a6)
	lh	a7, 84(a5)
	negw	a7, a7
	sh	a7, 42(a6)
	lh	a7, 86(a5)
	negw	a7, a7
	sh	a7, 58(a6)
	lh	a7, 88(a5)
	negw	a7, a7
	sh	a7, 74(a6)
	lh	a7, 90(a5)
	negw	a7, a7
	sh	a7, 90(a6)
	lh	a7, 92(a5)
	negw	a7, a7
	sh	a7, 106(a6)
	lh	a7, 94(a5)
	negw	a7, a7
	sh	a7, 122(a6)
	lh	a7, 96(a5)
	sh	a7, 12(a6)
	lh	a7, 98(a5)
	sh	a7, 28(a6)
	lh	a7, 100(a5)
	sh	a7, 44(a6)
	lh	a7, 102(a5)
	sh	a7, 60(a6)
	lh	a7, 104(a5)
	sh	a7, 76(a6)
	lh	a7, 106(a5)
	sh	a7, 92(a6)
	lh	a7, 108(a5)
	sh	a7, 108(a6)
	lh	a7, 110(a5)
	sh	a7, 124(a6)
	lh	a7, 112(a5)
	negw	a7, a7
	sh	a7, 14(a6)
	lh	a7, 114(a5)
	negw	a7, a7
	sh	a7, 30(a6)
	lh	a7, 116(a5)
	negw	a7, a7
	sh	a7, 46(a6)
	lh	a7, 118(a5)
	negw	a7, a7
	sh	a7, 62(a6)
	lh	a7, 120(a5)
	negw	a7, a7
	sh	a7, 78(a6)
	lh	a7, 122(a5)
	negw	a7, a7
	sh	a7, 94(a6)
	lh	a7, 124(a5)
	negw	a7, a7
	sh	a7, 110(a6)
	lh	a5, 126(a5)
	negw	a5, a5
	sh	a5, 126(a6)
	addi	a4, a4, 1
	addi	a0, a0, 8
	bne	a4, a1, .LBB3_84
	j	.LBB3_80
.LBB3_85:                               # %.preheader26
                                        #   in Loop: Header=BB3_81 Depth=4
	slli	a4, a1, 3
	add	a4, a0, a4
	mv	a5, s5
.LBB3_86:                               #   Parent Loop BB3_59 Depth=1
                                        #     Parent Loop BB3_62 Depth=2
                                        #       Parent Loop BB3_78 Depth=3
                                        #         Parent Loop BB3_81 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a6, 0(a0)
	add	a6, a6, a3
	lh	t0, 0(a6)
	slli	a7, a5, 32
	srli	a7, a7, 25
	add	a7, a2, a7
	sh	t0, 0(a7)
	lh	t0, 2(a6)
	sh	t0, 16(a7)
	lh	t0, 4(a6)
	sh	t0, 32(a7)
	lh	t0, 6(a6)
	sh	t0, 48(a7)
	lh	t0, 8(a6)
	sh	t0, 64(a7)
	lh	t0, 10(a6)
	sh	t0, 80(a7)
	lh	t0, 12(a6)
	sh	t0, 96(a7)
	lh	t0, 14(a6)
	sh	t0, 112(a7)
	lh	t0, 16(a6)
	sh	t0, 2(a7)
	lh	t0, 18(a6)
	sh	t0, 18(a7)
	lh	t0, 20(a6)
	sh	t0, 34(a7)
	lh	t0, 22(a6)
	sh	t0, 50(a7)
	lh	t0, 24(a6)
	sh	t0, 66(a7)
	lh	t0, 26(a6)
	sh	t0, 82(a7)
	lh	t0, 28(a6)
	sh	t0, 98(a7)
	lh	t0, 30(a6)
	sh	t0, 114(a7)
	lh	t0, 32(a6)
	sh	t0, 4(a7)
	lh	t0, 34(a6)
	sh	t0, 20(a7)
	lh	t0, 36(a6)
	sh	t0, 36(a7)
	lh	t0, 38(a6)
	sh	t0, 52(a7)
	lh	t0, 40(a6)
	sh	t0, 68(a7)
	lh	t0, 42(a6)
	sh	t0, 84(a7)
	lh	t0, 44(a6)
	sh	t0, 100(a7)
	lh	t0, 46(a6)
	sh	t0, 116(a7)
	lh	t0, 48(a6)
	sh	t0, 6(a7)
	lh	t0, 50(a6)
	sh	t0, 22(a7)
	lh	t0, 52(a6)
	sh	t0, 38(a7)
	lh	t0, 54(a6)
	sh	t0, 54(a7)
	lh	t0, 56(a6)
	sh	t0, 70(a7)
	lh	t0, 58(a6)
	sh	t0, 86(a7)
	lh	t0, 60(a6)
	sh	t0, 102(a7)
	lh	t0, 62(a6)
	sh	t0, 118(a7)
	lh	t0, 64(a6)
	sh	t0, 8(a7)
	lh	t0, 66(a6)
	sh	t0, 24(a7)
	lh	t0, 68(a6)
	sh	t0, 40(a7)
	lh	t0, 70(a6)
	sh	t0, 56(a7)
	lh	t0, 72(a6)
	sh	t0, 72(a7)
	lh	t0, 74(a6)
	sh	t0, 88(a7)
	lh	t0, 76(a6)
	sh	t0, 104(a7)
	lh	t0, 78(a6)
	sh	t0, 120(a7)
	lh	t0, 80(a6)
	sh	t0, 10(a7)
	lh	t0, 82(a6)
	sh	t0, 26(a7)
	lh	t0, 84(a6)
	sh	t0, 42(a7)
	lh	t0, 86(a6)
	sh	t0, 58(a7)
	lh	t0, 88(a6)
	sh	t0, 74(a7)
	lh	t0, 90(a6)
	sh	t0, 90(a7)
	lh	t0, 92(a6)
	sh	t0, 106(a7)
	lh	t0, 94(a6)
	sh	t0, 122(a7)
	lh	t0, 96(a6)
	sh	t0, 12(a7)
	lh	t0, 98(a6)
	sh	t0, 28(a7)
	lh	t0, 100(a6)
	sh	t0, 44(a7)
	lh	t0, 102(a6)
	sh	t0, 60(a7)
	lh	t0, 104(a6)
	sh	t0, 76(a7)
	lh	t0, 106(a6)
	sh	t0, 92(a7)
	lh	t0, 108(a6)
	sh	t0, 108(a7)
	lh	t0, 110(a6)
	sh	t0, 124(a7)
	lh	t0, 112(a6)
	sh	t0, 14(a7)
	lh	t0, 114(a6)
	sh	t0, 30(a7)
	lh	t0, 116(a6)
	sh	t0, 46(a7)
	lh	t0, 118(a6)
	sh	t0, 62(a7)
	lh	t0, 120(a6)
	sh	t0, 78(a7)
	lh	t0, 122(a6)
	sh	t0, 94(a7)
	lh	t0, 124(a6)
	sh	t0, 110(a7)
	lh	a6, 126(a6)
	sh	a6, 126(a7)
	addi	a0, a0, 8
	addi	a5, a5, 1
	bne	a0, a4, .LBB3_86
	j	.LBB3_80
.LBB3_87:
	lw	a0, 76(a6)
	bgtz	a0, .LBB3_88
	j	.LBB3_156
.LBB3_88:
	lw	a1, 316(a6)
	lw	a2, 52(a6)
	li	s0, 0
	slli	a1, a1, 3
	divuw	s1, a2, a1
	li	s6, 96
	j	.LBB3_91
.LBB3_89:                               #   in Loop: Header=BB3_91 Depth=1
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	lw	a0, 76(a6)
.LBB3_90:                               #   in Loop: Header=BB3_91 Depth=1
	addi	s0, s0, 1
	blt	s0, a0, .LBB3_91
	j	.LBB3_156
.LBB3_91:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_94 Depth 2
                                        #       Child Loop BB3_103 Depth 3
                                        #       Child Loop BB3_98 Depth 3
                                        #         Child Loop BB3_99 Depth 4
	ld	s7, 88(a6)
	mul	a1, s0, s6
	add	s7, s7, a1
	lw	a1, 32(s7)
	beqz	a1, .LBB3_90
# %bb.92:                               #   in Loop: Header=BB3_91 Depth=1
	lw	a0, 12(s7)
	li	s3, 0
	mulw	s8, a0, s1
	slli	s10, s0, 3
	ld	s9, 32(sp)                      # 8-byte Folded Reload
	add	s9, s9, s10
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	add	s10, a0, s10
	j	.LBB3_94
.LBB3_93:                               #   in Loop: Header=BB3_94 Depth=2
	lw	a0, 32(s7)
	addw	s3, a1, s3
	bgeu	s3, a0, .LBB3_89
.LBB3_94:                               #   Parent Loop BB3_91 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_103 Depth 3
                                        #       Child Loop BB3_98 Depth 3
                                        #         Child Loop BB3_99 Depth 4
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s9)
	lw	a3, 12(s7)
	li	a4, 1
	mv	a0, s2
	mv	a2, s3
	jalr	a5
	ld	a1, 8(s2)
	ld	a5, 64(a1)
	ld	a1, 0(s10)
	lw	a3, 12(s7)
	mv	s4, a0
	bgeu	s3, s8, .LBB3_101
# %bb.95:                               #   in Loop: Header=BB3_94 Depth=2
	add	a0, s3, a3
	subw	a2, s8, a0
	mv	a0, s2
	li	a4, 0
	jalr	a5
	lw	a1, 12(s7)
	blez	a1, .LBB3_93
# %bb.96:                               #   in Loop: Header=BB3_94 Depth=2
	lwu	a3, 28(s7)
	beqz	a3, .LBB3_93
# %bb.97:                               #   in Loop: Header=BB3_94 Depth=2
	li	a2, 0
	slli	a3, a3, 7
.LBB3_98:                               #   Parent Loop BB3_91 Depth=1
                                        #     Parent Loop BB3_94 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_99 Depth 4
	slli	a4, a2, 3
	add	a4, s4, a4
	ld	a4, 0(a4)
	not	a5, a2
	addw	a5, a1, a5
	slli	a5, a5, 3
	add	a5, a0, a5
	ld	a5, 0(a5)
	addi	a4, a4, 64
	addi	a5, a5, 64
	add	a6, a4, a3
.LBB3_99:                               #   Parent Loop BB3_91 Depth=1
                                        #     Parent Loop BB3_94 Depth=2
                                        #       Parent Loop BB3_98 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lh	a7, -64(a5)
	sh	a7, -64(a4)
	lh	a7, -62(a5)
	sh	a7, -62(a4)
	lh	a7, -60(a5)
	sh	a7, -60(a4)
	lh	a7, -58(a5)
	sh	a7, -58(a4)
	lh	a7, -56(a5)
	sh	a7, -56(a4)
	lh	a7, -54(a5)
	sh	a7, -54(a4)
	lh	a7, -52(a5)
	sh	a7, -52(a4)
	lh	a7, -50(a5)
	sh	a7, -50(a4)
	lh	a7, -48(a5)
	negw	a7, a7
	sh	a7, -48(a4)
	lh	a7, -46(a5)
	negw	a7, a7
	sh	a7, -46(a4)
	lh	a7, -44(a5)
	negw	a7, a7
	sh	a7, -44(a4)
	lh	a7, -42(a5)
	negw	a7, a7
	sh	a7, -42(a4)
	lh	a7, -40(a5)
	negw	a7, a7
	sh	a7, -40(a4)
	lh	a7, -38(a5)
	negw	a7, a7
	sh	a7, -38(a4)
	lh	a7, -36(a5)
	negw	a7, a7
	sh	a7, -36(a4)
	lh	a7, -34(a5)
	negw	a7, a7
	sh	a7, -34(a4)
	lh	a7, -32(a5)
	sh	a7, -32(a4)
	lh	a7, -30(a5)
	sh	a7, -30(a4)
	lh	a7, -28(a5)
	sh	a7, -28(a4)
	lh	a7, -26(a5)
	sh	a7, -26(a4)
	lh	a7, -24(a5)
	sh	a7, -24(a4)
	lh	a7, -22(a5)
	sh	a7, -22(a4)
	lh	a7, -20(a5)
	sh	a7, -20(a4)
	lh	a7, -18(a5)
	sh	a7, -18(a4)
	lh	a7, -16(a5)
	negw	a7, a7
	sh	a7, -16(a4)
	lh	a7, -14(a5)
	negw	a7, a7
	sh	a7, -14(a4)
	lh	a7, -12(a5)
	negw	a7, a7
	sh	a7, -12(a4)
	lh	a7, -10(a5)
	negw	a7, a7
	sh	a7, -10(a4)
	lh	a7, -8(a5)
	negw	a7, a7
	sh	a7, -8(a4)
	lh	a7, -6(a5)
	negw	a7, a7
	sh	a7, -6(a4)
	lh	a7, -4(a5)
	negw	a7, a7
	sh	a7, -4(a4)
	lh	a7, -2(a5)
	negw	a7, a7
	sh	a7, -2(a4)
	lh	a7, 0(a5)
	sh	a7, 0(a4)
	lh	a7, 2(a5)
	sh	a7, 2(a4)
	lh	a7, 4(a5)
	sh	a7, 4(a4)
	lh	a7, 6(a5)
	sh	a7, 6(a4)
	lh	a7, 8(a5)
	sh	a7, 8(a4)
	lh	a7, 10(a5)
	sh	a7, 10(a4)
	lh	a7, 12(a5)
	sh	a7, 12(a4)
	lh	a7, 14(a5)
	sh	a7, 14(a4)
	lh	a7, 16(a5)
	negw	a7, a7
	sh	a7, 16(a4)
	lh	a7, 18(a5)
	negw	a7, a7
	sh	a7, 18(a4)
	lh	a7, 20(a5)
	negw	a7, a7
	sh	a7, 20(a4)
	lh	a7, 22(a5)
	negw	a7, a7
	sh	a7, 22(a4)
	lh	a7, 24(a5)
	negw	a7, a7
	sh	a7, 24(a4)
	lh	a7, 26(a5)
	negw	a7, a7
	sh	a7, 26(a4)
	lh	a7, 28(a5)
	negw	a7, a7
	sh	a7, 28(a4)
	lh	a7, 30(a5)
	negw	a7, a7
	sh	a7, 30(a4)
	lh	a7, 32(a5)
	sh	a7, 32(a4)
	lh	a7, 34(a5)
	sh	a7, 34(a4)
	lh	a7, 36(a5)
	sh	a7, 36(a4)
	lh	a7, 38(a5)
	sh	a7, 38(a4)
	lh	a7, 40(a5)
	sh	a7, 40(a4)
	lh	a7, 42(a5)
	sh	a7, 42(a4)
	lh	a7, 44(a5)
	sh	a7, 44(a4)
	lh	a7, 46(a5)
	sh	a7, 46(a4)
	lh	a7, 48(a5)
	negw	a7, a7
	sh	a7, 48(a4)
	lh	a7, 50(a5)
	negw	a7, a7
	sh	a7, 50(a4)
	lh	a7, 52(a5)
	negw	a7, a7
	sh	a7, 52(a4)
	lh	a7, 54(a5)
	negw	a7, a7
	sh	a7, 54(a4)
	lh	a7, 56(a5)
	negw	a7, a7
	sh	a7, 56(a4)
	lh	a7, 58(a5)
	negw	a7, a7
	sh	a7, 58(a4)
	lh	a7, 60(a5)
	negw	a7, a7
	sh	a7, 60(a4)
	lh	a7, 62(a5)
	negw	a7, a7
	sh	a7, 62(a4)
	addi	a4, a4, 128
	addi	a5, a5, 128
	bne	a4, a6, .LBB3_99
# %bb.100:                              #   in Loop: Header=BB3_98 Depth=3
	addi	a2, a2, 1
	bne	a2, a1, .LBB3_98
	j	.LBB3_93
.LBB3_101:                              #   in Loop: Header=BB3_94 Depth=2
	mv	a0, s2
	mv	a2, s3
	li	a4, 0
	jalr	a5
	lw	a1, 12(s7)
	blez	a1, .LBB3_93
# %bb.102:                              # %.preheader13
                                        #   in Loop: Header=BB3_94 Depth=2
	mv	s5, a0
	li	s11, 0
.LBB3_103:                              #   Parent Loop BB3_91 Depth=1
                                        #     Parent Loop BB3_94 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a0, 0(s5)
	ld	a1, 0(s4)
	lw	a2, 28(s7)
	call	jcopy_block_row
	lw	a1, 12(s7)
	addi	s11, s11, 1
	addi	s4, s4, 8
	addi	s5, s5, 8
	blt	s11, a1, .LBB3_103
	j	.LBB3_93
.LBB3_104:
	lw	a0, 76(a6)
	bgtz	a0, .LBB3_105
	j	.LBB3_156
.LBB3_105:
	li	s0, 0
	lw	a1, 312(a6)
	lw	a2, 48(a6)
	lw	a3, 316(a6)
	lw	a4, 52(a6)
	slli	a1, a1, 3
	divuw	s1, a2, a1
	slli	a3, a3, 3
	divuw	s6, a4, a3
	j	.LBB3_108
.LBB3_106:                              #   in Loop: Header=BB3_108 Depth=1
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	lw	a0, 76(a6)
.LBB3_107:                              #   in Loop: Header=BB3_108 Depth=1
	addi	s0, s0, 1
	blt	s0, a0, .LBB3_108
	j	.LBB3_156
.LBB3_108:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_111 Depth 2
                                        #       Child Loop BB3_124 Depth 3
                                        #         Child Loop BB3_126 Depth 4
                                        #         Child Loop BB3_129 Depth 4
                                        #       Child Loop BB3_115 Depth 3
                                        #         Child Loop BB3_117 Depth 4
                                        #         Child Loop BB3_120 Depth 4
	ld	s8, 88(a6)
	li	a1, 96
	mul	a1, s0, a1
	add	s8, s8, a1
	lw	a1, 32(s8)
	beqz	a1, .LBB3_107
# %bb.109:                              #   in Loop: Header=BB3_108 Depth=1
	lw	a0, 8(s8)
	lw	a1, 12(s8)
	li	s3, 0
	mulw	s10, a0, s1
	mulw	s11, a1, s6
	slli	s9, s0, 3
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	add	s7, s7, s9
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	add	s9, a0, s9
	slli	a0, s10, 32
	srli	s5, a0, 32
	j	.LBB3_111
.LBB3_110:                              #   in Loop: Header=BB3_111 Depth=2
	lw	a0, 32(s8)
	addw	s3, a1, s3
	bgeu	s3, a0, .LBB3_106
.LBB3_111:                              #   Parent Loop BB3_108 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_124 Depth 3
                                        #         Child Loop BB3_126 Depth 4
                                        #         Child Loop BB3_129 Depth 4
                                        #       Child Loop BB3_115 Depth 3
                                        #         Child Loop BB3_117 Depth 4
                                        #         Child Loop BB3_120 Depth 4
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s7)
	lw	a3, 12(s8)
	li	a4, 1
	mv	a0, s2
	mv	a2, s3
	jalr	a5
	ld	a1, 8(s2)
	ld	a5, 64(a1)
	ld	a1, 0(s9)
	lw	a3, 12(s8)
	mv	s4, a0
	bgeu	s3, s11, .LBB3_121
# %bb.112:                              #   in Loop: Header=BB3_111 Depth=2
	add	a0, s3, a3
	subw	a2, s11, a0
	mv	a0, s2
	li	a4, 0
	jalr	a5
	lw	a1, 12(s8)
	blez	a1, .LBB3_110
# %bb.113:                              #   in Loop: Header=BB3_111 Depth=2
	lwu	a2, 28(s8)
	li	a3, 0
	slli	a4, a1, 3
	add	a0, a0, a4
	slli	a4, a2, 7
	j	.LBB3_115
.LBB3_114:                              #   in Loop: Header=BB3_115 Depth=3
	addi	a3, a3, 1
	beq	a3, a1, .LBB3_110
.LBB3_115:                              #   Parent Loop BB3_108 Depth=1
                                        #     Parent Loop BB3_111 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_117 Depth 4
                                        #         Child Loop BB3_120 Depth 4
	slli	a5, a3, 3
	add	a5, s4, a5
	ld	a5, 0(a5)
	not	a6, a3
	slli	a6, a6, 3
	add	a6, a0, a6
	ld	a6, 0(a6)
	li	a7, 0
	beqz	s10, .LBB3_118
# %bb.116:                              # %.preheader41
                                        #   in Loop: Header=BB3_115 Depth=3
	li	t0, 0
	addi	t1, a5, 64
.LBB3_117:                              #   Parent Loop BB3_108 Depth=1
                                        #     Parent Loop BB3_111 Depth=2
                                        #       Parent Loop BB3_115 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	not	t2, t0
	add	t2, s10, t2
	slli	t2, t2, 32
	srli	t2, t2, 25
	add	t2, a6, t2
	lh	t3, 0(t2)
	sh	t3, -64(t1)
	lh	t3, 2(t2)
	negw	t3, t3
	sh	t3, -62(t1)
	lh	t3, 4(t2)
	sh	t3, -60(t1)
	lh	t3, 6(t2)
	negw	t3, t3
	sh	t3, -58(t1)
	lh	t3, 8(t2)
	sh	t3, -56(t1)
	lh	t3, 10(t2)
	negw	t3, t3
	sh	t3, -54(t1)
	lh	t3, 12(t2)
	sh	t3, -52(t1)
	lh	t3, 14(t2)
	negw	t3, t3
	sh	t3, -50(t1)
	lh	t3, 16(t2)
	negw	t3, t3
	sh	t3, -48(t1)
	lh	t3, 18(t2)
	sh	t3, -46(t1)
	lh	t3, 20(t2)
	negw	t3, t3
	sh	t3, -44(t1)
	lh	t3, 22(t2)
	sh	t3, -42(t1)
	lh	t3, 24(t2)
	negw	t3, t3
	sh	t3, -40(t1)
	lh	t3, 26(t2)
	sh	t3, -38(t1)
	lh	t3, 28(t2)
	negw	t3, t3
	sh	t3, -36(t1)
	lh	t3, 30(t2)
	sh	t3, -34(t1)
	lh	t3, 32(t2)
	sh	t3, -32(t1)
	lh	t3, 34(t2)
	negw	t3, t3
	sh	t3, -30(t1)
	lh	t3, 36(t2)
	sh	t3, -28(t1)
	lh	t3, 38(t2)
	negw	t3, t3
	sh	t3, -26(t1)
	lh	t3, 40(t2)
	sh	t3, -24(t1)
	lh	t3, 42(t2)
	negw	t3, t3
	sh	t3, -22(t1)
	lh	t3, 44(t2)
	sh	t3, -20(t1)
	lh	t3, 46(t2)
	negw	t3, t3
	sh	t3, -18(t1)
	lh	t3, 48(t2)
	negw	t3, t3
	sh	t3, -16(t1)
	lh	t3, 50(t2)
	sh	t3, -14(t1)
	lh	t3, 52(t2)
	negw	t3, t3
	sh	t3, -12(t1)
	lh	t3, 54(t2)
	sh	t3, -10(t1)
	lh	t3, 56(t2)
	negw	t3, t3
	sh	t3, -8(t1)
	lh	t3, 58(t2)
	sh	t3, -6(t1)
	lh	t3, 60(t2)
	negw	t3, t3
	sh	t3, -4(t1)
	lh	t3, 62(t2)
	sh	t3, -2(t1)
	lh	t3, 64(t2)
	sh	t3, 0(t1)
	lh	t3, 66(t2)
	negw	t3, t3
	sh	t3, 2(t1)
	lh	t3, 68(t2)
	sh	t3, 4(t1)
	lh	t3, 70(t2)
	negw	t3, t3
	sh	t3, 6(t1)
	lh	t3, 72(t2)
	sh	t3, 8(t1)
	lh	t3, 74(t2)
	negw	t3, t3
	sh	t3, 10(t1)
	lh	t3, 76(t2)
	sh	t3, 12(t1)
	lh	t3, 78(t2)
	negw	t3, t3
	sh	t3, 14(t1)
	lh	t3, 80(t2)
	negw	t3, t3
	sh	t3, 16(t1)
	lh	t3, 82(t2)
	sh	t3, 18(t1)
	lh	t3, 84(t2)
	negw	t3, t3
	sh	t3, 20(t1)
	lh	t3, 86(t2)
	sh	t3, 22(t1)
	lh	t3, 88(t2)
	negw	t3, t3
	sh	t3, 24(t1)
	lh	t3, 90(t2)
	sh	t3, 26(t1)
	lh	t3, 92(t2)
	negw	t3, t3
	sh	t3, 28(t1)
	lh	t3, 94(t2)
	sh	t3, 30(t1)
	lh	t3, 96(t2)
	sh	t3, 32(t1)
	lh	t3, 98(t2)
	negw	t3, t3
	sh	t3, 34(t1)
	lh	t3, 100(t2)
	sh	t3, 36(t1)
	lh	t3, 102(t2)
	negw	t3, t3
	sh	t3, 38(t1)
	lh	t3, 104(t2)
	sh	t3, 40(t1)
	lh	t3, 106(t2)
	negw	t3, t3
	sh	t3, 42(t1)
	lh	t3, 108(t2)
	sh	t3, 44(t1)
	lh	t3, 110(t2)
	negw	t3, t3
	sh	t3, 46(t1)
	lh	t3, 112(t2)
	negw	t3, t3
	sh	t3, 48(t1)
	lh	t3, 114(t2)
	sh	t3, 50(t1)
	lh	t3, 116(t2)
	negw	t3, t3
	sh	t3, 52(t1)
	lh	t3, 118(t2)
	sh	t3, 54(t1)
	lh	t3, 120(t2)
	negw	t3, t3
	sh	t3, 56(t1)
	lh	t3, 122(t2)
	sh	t3, 58(t1)
	lh	t3, 124(t2)
	negw	t3, t3
	sh	t3, 60(t1)
	lh	t2, 126(t2)
	sh	t2, 62(t1)
	addi	t0, t0, 1
	addi	a7, a7, 1
	addi	t1, t1, 128
	bltu	t0, s5, .LBB3_117
.LBB3_118:                              #   in Loop: Header=BB3_115 Depth=3
	bgeu	a7, a2, .LBB3_114
# %bb.119:                              #   in Loop: Header=BB3_115 Depth=3
	addi	t0, a5, 64
	slli	a7, a7, 7
	add	a5, t0, a7
	add	a6, a6, a7
	addi	a6, a6, 64
	add	a7, t0, a4
.LBB3_120:                              #   Parent Loop BB3_108 Depth=1
                                        #     Parent Loop BB3_111 Depth=2
                                        #       Parent Loop BB3_115 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lh	t0, -64(a6)
	sh	t0, -64(a5)
	lh	t0, -62(a6)
	sh	t0, -62(a5)
	lh	t0, -60(a6)
	sh	t0, -60(a5)
	lh	t0, -58(a6)
	sh	t0, -58(a5)
	lh	t0, -56(a6)
	sh	t0, -56(a5)
	lh	t0, -54(a6)
	sh	t0, -54(a5)
	lh	t0, -52(a6)
	sh	t0, -52(a5)
	lh	t0, -50(a6)
	sh	t0, -50(a5)
	lh	t0, -48(a6)
	negw	t0, t0
	sh	t0, -48(a5)
	lh	t0, -46(a6)
	negw	t0, t0
	sh	t0, -46(a5)
	lh	t0, -44(a6)
	negw	t0, t0
	sh	t0, -44(a5)
	lh	t0, -42(a6)
	negw	t0, t0
	sh	t0, -42(a5)
	lh	t0, -40(a6)
	negw	t0, t0
	sh	t0, -40(a5)
	lh	t0, -38(a6)
	negw	t0, t0
	sh	t0, -38(a5)
	lh	t0, -36(a6)
	negw	t0, t0
	sh	t0, -36(a5)
	lh	t0, -34(a6)
	negw	t0, t0
	sh	t0, -34(a5)
	lh	t0, -32(a6)
	sh	t0, -32(a5)
	lh	t0, -30(a6)
	sh	t0, -30(a5)
	lh	t0, -28(a6)
	sh	t0, -28(a5)
	lh	t0, -26(a6)
	sh	t0, -26(a5)
	lh	t0, -24(a6)
	sh	t0, -24(a5)
	lh	t0, -22(a6)
	sh	t0, -22(a5)
	lh	t0, -20(a6)
	sh	t0, -20(a5)
	lh	t0, -18(a6)
	sh	t0, -18(a5)
	lh	t0, -16(a6)
	negw	t0, t0
	sh	t0, -16(a5)
	lh	t0, -14(a6)
	negw	t0, t0
	sh	t0, -14(a5)
	lh	t0, -12(a6)
	negw	t0, t0
	sh	t0, -12(a5)
	lh	t0, -10(a6)
	negw	t0, t0
	sh	t0, -10(a5)
	lh	t0, -8(a6)
	negw	t0, t0
	sh	t0, -8(a5)
	lh	t0, -6(a6)
	negw	t0, t0
	sh	t0, -6(a5)
	lh	t0, -4(a6)
	negw	t0, t0
	sh	t0, -4(a5)
	lh	t0, -2(a6)
	negw	t0, t0
	sh	t0, -2(a5)
	lh	t0, 0(a6)
	sh	t0, 0(a5)
	lh	t0, 2(a6)
	sh	t0, 2(a5)
	lh	t0, 4(a6)
	sh	t0, 4(a5)
	lh	t0, 6(a6)
	sh	t0, 6(a5)
	lh	t0, 8(a6)
	sh	t0, 8(a5)
	lh	t0, 10(a6)
	sh	t0, 10(a5)
	lh	t0, 12(a6)
	sh	t0, 12(a5)
	lh	t0, 14(a6)
	sh	t0, 14(a5)
	lh	t0, 16(a6)
	negw	t0, t0
	sh	t0, 16(a5)
	lh	t0, 18(a6)
	negw	t0, t0
	sh	t0, 18(a5)
	lh	t0, 20(a6)
	negw	t0, t0
	sh	t0, 20(a5)
	lh	t0, 22(a6)
	negw	t0, t0
	sh	t0, 22(a5)
	lh	t0, 24(a6)
	negw	t0, t0
	sh	t0, 24(a5)
	lh	t0, 26(a6)
	negw	t0, t0
	sh	t0, 26(a5)
	lh	t0, 28(a6)
	negw	t0, t0
	sh	t0, 28(a5)
	lh	t0, 30(a6)
	negw	t0, t0
	sh	t0, 30(a5)
	lh	t0, 32(a6)
	sh	t0, 32(a5)
	lh	t0, 34(a6)
	sh	t0, 34(a5)
	lh	t0, 36(a6)
	sh	t0, 36(a5)
	lh	t0, 38(a6)
	sh	t0, 38(a5)
	lh	t0, 40(a6)
	sh	t0, 40(a5)
	lh	t0, 42(a6)
	sh	t0, 42(a5)
	lh	t0, 44(a6)
	sh	t0, 44(a5)
	lh	t0, 46(a6)
	sh	t0, 46(a5)
	lh	t0, 48(a6)
	negw	t0, t0
	sh	t0, 48(a5)
	lh	t0, 50(a6)
	negw	t0, t0
	sh	t0, 50(a5)
	lh	t0, 52(a6)
	negw	t0, t0
	sh	t0, 52(a5)
	lh	t0, 54(a6)
	negw	t0, t0
	sh	t0, 54(a5)
	lh	t0, 56(a6)
	negw	t0, t0
	sh	t0, 56(a5)
	lh	t0, 58(a6)
	negw	t0, t0
	sh	t0, 58(a5)
	lh	t0, 60(a6)
	negw	t0, t0
	sh	t0, 60(a5)
	lh	t0, 62(a6)
	negw	t0, t0
	sh	t0, 62(a5)
	addi	a5, a5, 128
	addi	a6, a6, 128
	bne	a5, a7, .LBB3_120
	j	.LBB3_114
.LBB3_121:                              #   in Loop: Header=BB3_111 Depth=2
	mv	a0, s2
	mv	a2, s3
	li	a4, 0
	jalr	a5
	lw	a1, 12(s8)
	blez	a1, .LBB3_110
# %bb.122:                              #   in Loop: Header=BB3_111 Depth=2
	lwu	a2, 28(s8)
	li	a3, 0
	slli	a4, a2, 7
	j	.LBB3_124
.LBB3_123:                              #   in Loop: Header=BB3_124 Depth=3
	addi	a3, a3, 1
	beq	a3, a1, .LBB3_110
.LBB3_124:                              #   Parent Loop BB3_108 Depth=1
                                        #     Parent Loop BB3_111 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_126 Depth 4
                                        #         Child Loop BB3_129 Depth 4
	slli	a5, a3, 3
	add	a6, s4, a5
	ld	a6, 0(a6)
	add	a5, a0, a5
	ld	a5, 0(a5)
	li	a7, 0
	beqz	s10, .LBB3_127
# %bb.125:                              # %.preheader43
                                        #   in Loop: Header=BB3_124 Depth=3
	li	t0, 0
	addi	t1, a6, 64
.LBB3_126:                              #   Parent Loop BB3_108 Depth=1
                                        #     Parent Loop BB3_111 Depth=2
                                        #       Parent Loop BB3_124 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	not	t2, t0
	add	t2, s10, t2
	slli	t2, t2, 32
	srli	t2, t2, 25
	add	t2, a5, t2
	lh	t3, 0(t2)
	sh	t3, -64(t1)
	lh	t3, 2(t2)
	negw	t3, t3
	sh	t3, -62(t1)
	lh	t3, 4(t2)
	sh	t3, -60(t1)
	lh	t3, 6(t2)
	negw	t3, t3
	sh	t3, -58(t1)
	lh	t3, 8(t2)
	sh	t3, -56(t1)
	lh	t3, 10(t2)
	negw	t3, t3
	sh	t3, -54(t1)
	lh	t3, 12(t2)
	sh	t3, -52(t1)
	lh	t3, 14(t2)
	negw	t3, t3
	sh	t3, -50(t1)
	lh	t3, 16(t2)
	sh	t3, -48(t1)
	lh	t3, 18(t2)
	negw	t3, t3
	sh	t3, -46(t1)
	lh	t3, 20(t2)
	sh	t3, -44(t1)
	lh	t3, 22(t2)
	negw	t3, t3
	sh	t3, -42(t1)
	lh	t3, 24(t2)
	sh	t3, -40(t1)
	lh	t3, 26(t2)
	negw	t3, t3
	sh	t3, -38(t1)
	lh	t3, 28(t2)
	sh	t3, -36(t1)
	lh	t3, 30(t2)
	negw	t3, t3
	sh	t3, -34(t1)
	lh	t3, 32(t2)
	sh	t3, -32(t1)
	lh	t3, 34(t2)
	negw	t3, t3
	sh	t3, -30(t1)
	lh	t3, 36(t2)
	sh	t3, -28(t1)
	lh	t3, 38(t2)
	negw	t3, t3
	sh	t3, -26(t1)
	lh	t3, 40(t2)
	sh	t3, -24(t1)
	lh	t3, 42(t2)
	negw	t3, t3
	sh	t3, -22(t1)
	lh	t3, 44(t2)
	sh	t3, -20(t1)
	lh	t3, 46(t2)
	negw	t3, t3
	sh	t3, -18(t1)
	lh	t3, 48(t2)
	sh	t3, -16(t1)
	lh	t3, 50(t2)
	negw	t3, t3
	sh	t3, -14(t1)
	lh	t3, 52(t2)
	sh	t3, -12(t1)
	lh	t3, 54(t2)
	negw	t3, t3
	sh	t3, -10(t1)
	lh	t3, 56(t2)
	sh	t3, -8(t1)
	lh	t3, 58(t2)
	negw	t3, t3
	sh	t3, -6(t1)
	lh	t3, 60(t2)
	sh	t3, -4(t1)
	lh	t3, 62(t2)
	negw	t3, t3
	sh	t3, -2(t1)
	lh	t3, 64(t2)
	sh	t3, 0(t1)
	lh	t3, 66(t2)
	negw	t3, t3
	sh	t3, 2(t1)
	lh	t3, 68(t2)
	sh	t3, 4(t1)
	lh	t3, 70(t2)
	negw	t3, t3
	sh	t3, 6(t1)
	lh	t3, 72(t2)
	sh	t3, 8(t1)
	lh	t3, 74(t2)
	negw	t3, t3
	sh	t3, 10(t1)
	lh	t3, 76(t2)
	sh	t3, 12(t1)
	lh	t3, 78(t2)
	negw	t3, t3
	sh	t3, 14(t1)
	lh	t3, 80(t2)
	sh	t3, 16(t1)
	lh	t3, 82(t2)
	negw	t3, t3
	sh	t3, 18(t1)
	lh	t3, 84(t2)
	sh	t3, 20(t1)
	lh	t3, 86(t2)
	negw	t3, t3
	sh	t3, 22(t1)
	lh	t3, 88(t2)
	sh	t3, 24(t1)
	lh	t3, 90(t2)
	negw	t3, t3
	sh	t3, 26(t1)
	lh	t3, 92(t2)
	sh	t3, 28(t1)
	lh	t3, 94(t2)
	negw	t3, t3
	sh	t3, 30(t1)
	lh	t3, 96(t2)
	sh	t3, 32(t1)
	lh	t3, 98(t2)
	negw	t3, t3
	sh	t3, 34(t1)
	lh	t3, 100(t2)
	sh	t3, 36(t1)
	lh	t3, 102(t2)
	negw	t3, t3
	sh	t3, 38(t1)
	lh	t3, 104(t2)
	sh	t3, 40(t1)
	lh	t3, 106(t2)
	negw	t3, t3
	sh	t3, 42(t1)
	lh	t3, 108(t2)
	sh	t3, 44(t1)
	lh	t3, 110(t2)
	negw	t3, t3
	sh	t3, 46(t1)
	lh	t3, 112(t2)
	sh	t3, 48(t1)
	lh	t3, 114(t2)
	negw	t3, t3
	sh	t3, 50(t1)
	lh	t3, 116(t2)
	sh	t3, 52(t1)
	lh	t3, 118(t2)
	negw	t3, t3
	sh	t3, 54(t1)
	lh	t3, 120(t2)
	sh	t3, 56(t1)
	lh	t3, 122(t2)
	negw	t3, t3
	sh	t3, 58(t1)
	lh	t3, 124(t2)
	sh	t3, 60(t1)
	lh	t2, 126(t2)
	negw	t2, t2
	sh	t2, 62(t1)
	addi	t0, t0, 1
	addi	a7, a7, 1
	addi	t1, t1, 128
	bltu	t0, s5, .LBB3_126
.LBB3_127:                              #   in Loop: Header=BB3_124 Depth=3
	bgeu	a7, a2, .LBB3_123
# %bb.128:                              #   in Loop: Header=BB3_124 Depth=3
	addi	t0, a6, 64
	slli	a7, a7, 7
	add	a6, t0, a7
	add	a5, a5, a7
	addi	a5, a5, 64
	add	a7, t0, a4
.LBB3_129:                              #   Parent Loop BB3_108 Depth=1
                                        #     Parent Loop BB3_111 Depth=2
                                        #       Parent Loop BB3_124 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lh	t0, -64(a5)
	sh	t0, -64(a6)
	lh	t0, -62(a5)
	sh	t0, -62(a6)
	lh	t0, -60(a5)
	sh	t0, -60(a6)
	lh	t0, -58(a5)
	sh	t0, -58(a6)
	lh	t0, -56(a5)
	sh	t0, -56(a6)
	lh	t0, -54(a5)
	sh	t0, -54(a6)
	lh	t0, -52(a5)
	sh	t0, -52(a6)
	lh	t0, -50(a5)
	sh	t0, -50(a6)
	lh	t0, -48(a5)
	sh	t0, -48(a6)
	lh	t0, -46(a5)
	sh	t0, -46(a6)
	lh	t0, -44(a5)
	sh	t0, -44(a6)
	lh	t0, -42(a5)
	sh	t0, -42(a6)
	lh	t0, -40(a5)
	sh	t0, -40(a6)
	lh	t0, -38(a5)
	sh	t0, -38(a6)
	lh	t0, -36(a5)
	sh	t0, -36(a6)
	lh	t0, -34(a5)
	sh	t0, -34(a6)
	lh	t0, -32(a5)
	sh	t0, -32(a6)
	lh	t0, -30(a5)
	sh	t0, -30(a6)
	lh	t0, -28(a5)
	sh	t0, -28(a6)
	lh	t0, -26(a5)
	sh	t0, -26(a6)
	lh	t0, -24(a5)
	sh	t0, -24(a6)
	lh	t0, -22(a5)
	sh	t0, -22(a6)
	lh	t0, -20(a5)
	sh	t0, -20(a6)
	lh	t0, -18(a5)
	sh	t0, -18(a6)
	lh	t0, -16(a5)
	sh	t0, -16(a6)
	lh	t0, -14(a5)
	sh	t0, -14(a6)
	lh	t0, -12(a5)
	sh	t0, -12(a6)
	lh	t0, -10(a5)
	sh	t0, -10(a6)
	lh	t0, -8(a5)
	sh	t0, -8(a6)
	lh	t0, -6(a5)
	sh	t0, -6(a6)
	lh	t0, -4(a5)
	sh	t0, -4(a6)
	lh	t0, -2(a5)
	sh	t0, -2(a6)
	lh	t0, 0(a5)
	sh	t0, 0(a6)
	lh	t0, 2(a5)
	sh	t0, 2(a6)
	lh	t0, 4(a5)
	sh	t0, 4(a6)
	lh	t0, 6(a5)
	sh	t0, 6(a6)
	lh	t0, 8(a5)
	sh	t0, 8(a6)
	lh	t0, 10(a5)
	sh	t0, 10(a6)
	lh	t0, 12(a5)
	sh	t0, 12(a6)
	lh	t0, 14(a5)
	sh	t0, 14(a6)
	lh	t0, 16(a5)
	sh	t0, 16(a6)
	lh	t0, 18(a5)
	sh	t0, 18(a6)
	lh	t0, 20(a5)
	sh	t0, 20(a6)
	lh	t0, 22(a5)
	sh	t0, 22(a6)
	lh	t0, 24(a5)
	sh	t0, 24(a6)
	lh	t0, 26(a5)
	sh	t0, 26(a6)
	lh	t0, 28(a5)
	sh	t0, 28(a6)
	lh	t0, 30(a5)
	sh	t0, 30(a6)
	lh	t0, 32(a5)
	sh	t0, 32(a6)
	lh	t0, 34(a5)
	sh	t0, 34(a6)
	lh	t0, 36(a5)
	sh	t0, 36(a6)
	lh	t0, 38(a5)
	sh	t0, 38(a6)
	lh	t0, 40(a5)
	sh	t0, 40(a6)
	lh	t0, 42(a5)
	sh	t0, 42(a6)
	lh	t0, 44(a5)
	sh	t0, 44(a6)
	lh	t0, 46(a5)
	sh	t0, 46(a6)
	lh	t0, 48(a5)
	sh	t0, 48(a6)
	lh	t0, 50(a5)
	sh	t0, 50(a6)
	lh	t0, 52(a5)
	sh	t0, 52(a6)
	lh	t0, 54(a5)
	sh	t0, 54(a6)
	lh	t0, 56(a5)
	sh	t0, 56(a6)
	lh	t0, 58(a5)
	sh	t0, 58(a6)
	lh	t0, 60(a5)
	sh	t0, 60(a6)
	lh	t0, 62(a5)
	sh	t0, 62(a6)
	addi	a6, a6, 128
	addi	a5, a5, 128
	bne	a6, a7, .LBB3_129
	j	.LBB3_123
.LBB3_130:
	lw	a0, 76(a6)
	blez	a0, .LBB3_156
# %bb.131:
	lw	a1, 316(a6)
	lw	a2, 52(a6)
	li	s0, 0
	slli	a1, a1, 3
	divuw	a1, a2, a1
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	j	.LBB3_134
.LBB3_132:                              #   in Loop: Header=BB3_134 Depth=1
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	lw	a0, 76(a6)
.LBB3_133:                              #   in Loop: Header=BB3_134 Depth=1
	addi	s0, s0, 1
	bge	s0, a0, .LBB3_156
.LBB3_134:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_137 Depth 2
                                        #       Child Loop BB3_150 Depth 3
                                        #         Child Loop BB3_153 Depth 4
                                        #           Child Loop BB3_155 Depth 5
                                        #       Child Loop BB3_142 Depth 3
                                        #         Child Loop BB3_145 Depth 4
                                        #           Child Loop BB3_147 Depth 5
	ld	s8, 88(a6)
	li	a1, 96
	mul	a1, s0, a1
	add	s8, s8, a1
	lw	a1, 32(s8)
	beqz	a1, .LBB3_133
# %bb.135:                              #   in Loop: Header=BB3_134 Depth=1
	lw	a3, 12(s8)
	li	s3, 0
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	mulw	s9, a3, a0
	slli	s11, s0, 3
	ld	s10, 32(sp)                     # 8-byte Folded Reload
	add	s10, s10, s11
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	add	s11, a0, s11
	j	.LBB3_137
.LBB3_136:                              #   in Loop: Header=BB3_137 Depth=2
	lw	a0, 32(s8)
	addw	s3, a3, s3
	bgeu	s3, a0, .LBB3_132
.LBB3_137:                              #   Parent Loop BB3_134 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_150 Depth 3
                                        #         Child Loop BB3_153 Depth 4
                                        #           Child Loop BB3_155 Depth 5
                                        #       Child Loop BB3_142 Depth 3
                                        #         Child Loop BB3_145 Depth 4
                                        #           Child Loop BB3_147 Depth 5
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s10)
	li	a4, 1
	mv	a0, s2
	mv	a2, s3
	jalr	a5
	lw	a3, 12(s8)
	blez	a3, .LBB3_136
# %bb.138:                              #   in Loop: Header=BB3_137 Depth=2
	mv	s7, a0
	lw	a0, 28(s8)
	beqz	a0, .LBB3_136
# %bb.139:                              #   in Loop: Header=BB3_137 Depth=2
	li	s1, 0
	li	a0, 1
	bltu	s3, s9, .LBB3_142
	j	.LBB3_150
.LBB3_140:                              #   in Loop: Header=BB3_142 Depth=3
	lw	a3, 12(s8)
.LBB3_141:                              #   in Loop: Header=BB3_142 Depth=3
	addi	s1, s1, 1
	bge	s1, a3, .LBB3_136
.LBB3_142:                              #   Parent Loop BB3_134 Depth=1
                                        #     Parent Loop BB3_137 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_145 Depth 4
                                        #           Child Loop BB3_147 Depth 5
	beqz	a0, .LBB3_141
# %bb.143:                              #   in Loop: Header=BB3_142 Depth=3
	li	s5, 0
	slli	s4, s1, 3
	add	s4, s7, s4
	add	a0, s3, s1
	not	a0, a0
	add	a0, s9, a0
	slli	a0, a0, 32
	srli	a0, a0, 32
	slli	s6, a0, 7
	j	.LBB3_145
.LBB3_144:                              #   in Loop: Header=BB3_145 Depth=4
	lw	a0, 28(s8)
	addw	s5, a1, s5
	bgeu	s5, a0, .LBB3_140
.LBB3_145:                              #   Parent Loop BB3_134 Depth=1
                                        #     Parent Loop BB3_137 Depth=2
                                        #       Parent Loop BB3_142 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_147 Depth 5
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s11)
	lw	a3, 8(s8)
	mv	a0, s2
	mv	a2, s5
	li	a4, 0
	jalr	a5
	lw	a1, 8(s8)
	blez	a1, .LBB3_144
# %bb.146:                              #   in Loop: Header=BB3_145 Depth=4
	ld	a2, 0(s4)
	slli	a3, a1, 3
	add	a3, a0, a3
	mv	a4, s5
.LBB3_147:                              #   Parent Loop BB3_134 Depth=1
                                        #     Parent Loop BB3_137 Depth=2
                                        #       Parent Loop BB3_142 Depth=3
                                        #         Parent Loop BB3_145 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a5, 0(a0)
	add	a5, a5, s6
	lh	a7, 0(a5)
	slli	a6, a4, 32
	srli	a6, a6, 25
	add	a6, a2, a6
	sh	a7, 0(a6)
	lh	a7, 2(a5)
	negw	a7, a7
	sh	a7, 16(a6)
	lh	a7, 4(a5)
	sh	a7, 32(a6)
	lh	a7, 6(a5)
	negw	a7, a7
	sh	a7, 48(a6)
	lh	a7, 8(a5)
	sh	a7, 64(a6)
	lh	a7, 10(a5)
	negw	a7, a7
	sh	a7, 80(a6)
	lh	a7, 12(a5)
	sh	a7, 96(a6)
	lh	a7, 14(a5)
	negw	a7, a7
	sh	a7, 112(a6)
	lh	a7, 16(a5)
	sh	a7, 2(a6)
	lh	a7, 18(a5)
	negw	a7, a7
	sh	a7, 18(a6)
	lh	a7, 20(a5)
	sh	a7, 34(a6)
	lh	a7, 22(a5)
	negw	a7, a7
	sh	a7, 50(a6)
	lh	a7, 24(a5)
	sh	a7, 66(a6)
	lh	a7, 26(a5)
	negw	a7, a7
	sh	a7, 82(a6)
	lh	a7, 28(a5)
	sh	a7, 98(a6)
	lh	a7, 30(a5)
	negw	a7, a7
	sh	a7, 114(a6)
	lh	a7, 32(a5)
	sh	a7, 4(a6)
	lh	a7, 34(a5)
	negw	a7, a7
	sh	a7, 20(a6)
	lh	a7, 36(a5)
	sh	a7, 36(a6)
	lh	a7, 38(a5)
	negw	a7, a7
	sh	a7, 52(a6)
	lh	a7, 40(a5)
	sh	a7, 68(a6)
	lh	a7, 42(a5)
	negw	a7, a7
	sh	a7, 84(a6)
	lh	a7, 44(a5)
	sh	a7, 100(a6)
	lh	a7, 46(a5)
	negw	a7, a7
	sh	a7, 116(a6)
	lh	a7, 48(a5)
	sh	a7, 6(a6)
	lh	a7, 50(a5)
	negw	a7, a7
	sh	a7, 22(a6)
	lh	a7, 52(a5)
	sh	a7, 38(a6)
	lh	a7, 54(a5)
	negw	a7, a7
	sh	a7, 54(a6)
	lh	a7, 56(a5)
	sh	a7, 70(a6)
	lh	a7, 58(a5)
	negw	a7, a7
	sh	a7, 86(a6)
	lh	a7, 60(a5)
	sh	a7, 102(a6)
	lh	a7, 62(a5)
	negw	a7, a7
	sh	a7, 118(a6)
	lh	a7, 64(a5)
	sh	a7, 8(a6)
	lh	a7, 66(a5)
	negw	a7, a7
	sh	a7, 24(a6)
	lh	a7, 68(a5)
	sh	a7, 40(a6)
	lh	a7, 70(a5)
	negw	a7, a7
	sh	a7, 56(a6)
	lh	a7, 72(a5)
	sh	a7, 72(a6)
	lh	a7, 74(a5)
	negw	a7, a7
	sh	a7, 88(a6)
	lh	a7, 76(a5)
	sh	a7, 104(a6)
	lh	a7, 78(a5)
	negw	a7, a7
	sh	a7, 120(a6)
	lh	a7, 80(a5)
	sh	a7, 10(a6)
	lh	a7, 82(a5)
	negw	a7, a7
	sh	a7, 26(a6)
	lh	a7, 84(a5)
	sh	a7, 42(a6)
	lh	a7, 86(a5)
	negw	a7, a7
	sh	a7, 58(a6)
	lh	a7, 88(a5)
	sh	a7, 74(a6)
	lh	a7, 90(a5)
	negw	a7, a7
	sh	a7, 90(a6)
	lh	a7, 92(a5)
	sh	a7, 106(a6)
	lh	a7, 94(a5)
	negw	a7, a7
	sh	a7, 122(a6)
	lh	a7, 96(a5)
	sh	a7, 12(a6)
	lh	a7, 98(a5)
	negw	a7, a7
	sh	a7, 28(a6)
	lh	a7, 100(a5)
	sh	a7, 44(a6)
	lh	a7, 102(a5)
	negw	a7, a7
	sh	a7, 60(a6)
	lh	a7, 104(a5)
	sh	a7, 76(a6)
	lh	a7, 106(a5)
	negw	a7, a7
	sh	a7, 92(a6)
	lh	a7, 108(a5)
	sh	a7, 108(a6)
	lh	a7, 110(a5)
	negw	a7, a7
	sh	a7, 124(a6)
	lh	a7, 112(a5)
	sh	a7, 14(a6)
	lh	a7, 114(a5)
	negw	a7, a7
	sh	a7, 30(a6)
	lh	a7, 116(a5)
	sh	a7, 46(a6)
	lh	a7, 118(a5)
	negw	a7, a7
	sh	a7, 62(a6)
	lh	a7, 120(a5)
	sh	a7, 78(a6)
	lh	a7, 122(a5)
	negw	a7, a7
	sh	a7, 94(a6)
	lh	a7, 124(a5)
	sh	a7, 110(a6)
	lh	a5, 126(a5)
	negw	a5, a5
	sh	a5, 126(a6)
	addi	a0, a0, 8
	addi	a4, a4, 1
	bne	a0, a3, .LBB3_147
	j	.LBB3_144
.LBB3_148:                              #   in Loop: Header=BB3_150 Depth=3
	lw	a3, 12(s8)
.LBB3_149:                              #   in Loop: Header=BB3_150 Depth=3
	addi	s1, s1, 1
	bge	s1, a3, .LBB3_136
.LBB3_150:                              #   Parent Loop BB3_134 Depth=1
                                        #     Parent Loop BB3_137 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_153 Depth 4
                                        #           Child Loop BB3_155 Depth 5
	beqz	a0, .LBB3_149
# %bb.151:                              #   in Loop: Header=BB3_150 Depth=3
	li	s5, 0
	slli	s4, s1, 3
	add	s4, s7, s4
	add	a0, s3, s1
	slli	a0, a0, 32
	srli	a0, a0, 32
	slli	s6, a0, 7
	j	.LBB3_153
.LBB3_152:                              #   in Loop: Header=BB3_153 Depth=4
	lw	a0, 28(s8)
	addw	s5, a1, s5
	bgeu	s5, a0, .LBB3_148
.LBB3_153:                              #   Parent Loop BB3_134 Depth=1
                                        #     Parent Loop BB3_137 Depth=2
                                        #       Parent Loop BB3_150 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_155 Depth 5
	ld	a0, 8(s2)
	ld	a5, 64(a0)
	ld	a1, 0(s11)
	lw	a3, 8(s8)
	mv	a0, s2
	mv	a2, s5
	li	a4, 0
	jalr	a5
	lw	a1, 8(s8)
	blez	a1, .LBB3_152
# %bb.154:                              #   in Loop: Header=BB3_153 Depth=4
	ld	a2, 0(s4)
	slli	a3, a1, 3
	add	a3, a0, a3
	mv	a4, s5
.LBB3_155:                              #   Parent Loop BB3_134 Depth=1
                                        #     Parent Loop BB3_137 Depth=2
                                        #       Parent Loop BB3_150 Depth=3
                                        #         Parent Loop BB3_153 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld	a5, 0(a0)
	add	a5, a5, s6
	lh	a7, 0(a5)
	slli	a6, a4, 32
	srli	a6, a6, 25
	add	a6, a2, a6
	sh	a7, 0(a6)
	lh	a7, 2(a5)
	sh	a7, 16(a6)
	lh	a7, 4(a5)
	sh	a7, 32(a6)
	lh	a7, 6(a5)
	sh	a7, 48(a6)
	lh	a7, 8(a5)
	sh	a7, 64(a6)
	lh	a7, 10(a5)
	sh	a7, 80(a6)
	lh	a7, 12(a5)
	sh	a7, 96(a6)
	lh	a7, 14(a5)
	sh	a7, 112(a6)
	lh	a7, 16(a5)
	sh	a7, 2(a6)
	lh	a7, 18(a5)
	sh	a7, 18(a6)
	lh	a7, 20(a5)
	sh	a7, 34(a6)
	lh	a7, 22(a5)
	sh	a7, 50(a6)
	lh	a7, 24(a5)
	sh	a7, 66(a6)
	lh	a7, 26(a5)
	sh	a7, 82(a6)
	lh	a7, 28(a5)
	sh	a7, 98(a6)
	lh	a7, 30(a5)
	sh	a7, 114(a6)
	lh	a7, 32(a5)
	sh	a7, 4(a6)
	lh	a7, 34(a5)
	sh	a7, 20(a6)
	lh	a7, 36(a5)
	sh	a7, 36(a6)
	lh	a7, 38(a5)
	sh	a7, 52(a6)
	lh	a7, 40(a5)
	sh	a7, 68(a6)
	lh	a7, 42(a5)
	sh	a7, 84(a6)
	lh	a7, 44(a5)
	sh	a7, 100(a6)
	lh	a7, 46(a5)
	sh	a7, 116(a6)
	lh	a7, 48(a5)
	sh	a7, 6(a6)
	lh	a7, 50(a5)
	sh	a7, 22(a6)
	lh	a7, 52(a5)
	sh	a7, 38(a6)
	lh	a7, 54(a5)
	sh	a7, 54(a6)
	lh	a7, 56(a5)
	sh	a7, 70(a6)
	lh	a7, 58(a5)
	sh	a7, 86(a6)
	lh	a7, 60(a5)
	sh	a7, 102(a6)
	lh	a7, 62(a5)
	sh	a7, 118(a6)
	lh	a7, 64(a5)
	sh	a7, 8(a6)
	lh	a7, 66(a5)
	sh	a7, 24(a6)
	lh	a7, 68(a5)
	sh	a7, 40(a6)
	lh	a7, 70(a5)
	sh	a7, 56(a6)
	lh	a7, 72(a5)
	sh	a7, 72(a6)
	lh	a7, 74(a5)
	sh	a7, 88(a6)
	lh	a7, 76(a5)
	sh	a7, 104(a6)
	lh	a7, 78(a5)
	sh	a7, 120(a6)
	lh	a7, 80(a5)
	sh	a7, 10(a6)
	lh	a7, 82(a5)
	sh	a7, 26(a6)
	lh	a7, 84(a5)
	sh	a7, 42(a6)
	lh	a7, 86(a5)
	sh	a7, 58(a6)
	lh	a7, 88(a5)
	sh	a7, 74(a6)
	lh	a7, 90(a5)
	sh	a7, 90(a6)
	lh	a7, 92(a5)
	sh	a7, 106(a6)
	lh	a7, 94(a5)
	sh	a7, 122(a6)
	lh	a7, 96(a5)
	sh	a7, 12(a6)
	lh	a7, 98(a5)
	sh	a7, 28(a6)
	lh	a7, 100(a5)
	sh	a7, 44(a6)
	lh	a7, 102(a5)
	sh	a7, 60(a6)
	lh	a7, 104(a5)
	sh	a7, 76(a6)
	lh	a7, 106(a5)
	sh	a7, 92(a6)
	lh	a7, 108(a5)
	sh	a7, 108(a6)
	lh	a7, 110(a5)
	sh	a7, 124(a6)
	lh	a7, 112(a5)
	sh	a7, 14(a6)
	lh	a7, 114(a5)
	sh	a7, 30(a6)
	lh	a7, 116(a5)
	sh	a7, 46(a6)
	lh	a7, 118(a5)
	sh	a7, 62(a6)
	lh	a7, 120(a5)
	sh	a7, 78(a6)
	lh	a7, 122(a5)
	sh	a7, 94(a6)
	lh	a7, 124(a5)
	sh	a7, 110(a6)
	lh	a5, 126(a5)
	sh	a5, 126(a6)
	addi	a0, a0, 8
	addi	a4, a4, 1
	bne	a0, a3, .LBB3_155
	j	.LBB3_152
.LBB3_156:
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 160
	ret
.Lfunc_end3:
	.size	jtransform_execute_transformation, .Lfunc_end3-jtransform_execute_transformation
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_2
	.word	.LBB3_87
	.word	.LBB3_37
	.word	.LBB3_55
	.word	.LBB3_16
	.word	.LBB3_104
	.word	.LBB3_130
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	jcopy_markers_setup             # -- Begin function jcopy_markers_setup
	.p2align	2
	.type	jcopy_markers_setup,@function
jcopy_markers_setup:                    # @jcopy_markers_setup
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	beqz	a1, .LBB4_3
# %bb.1:
	mv	s2, a1
	mv	s0, a0
	lui	s1, 16
	addiw	s1, s1, -1
	li	a1, 254
	mv	a2, s1
	call	jpeg_save_markers
	li	a0, 2
	bne	s2, a0, .LBB4_3
# %bb.2:
	li	a1, 224
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 225
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 226
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 227
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 228
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 229
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 230
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 231
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 232
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 233
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 234
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 235
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 236
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 237
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 238
	mv	a0, s0
	mv	a2, s1
	call	jpeg_save_markers
	li	a1, 239
	mv	a0, s0
	mv	a2, s1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	jpeg_save_markers
.LBB4_3:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	jcopy_markers_setup, .Lfunc_end4-jcopy_markers_setup
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jcopy_markers_execute           # -- Begin function jcopy_markers_execute
	.p2align	2
	.type	jcopy_markers_execute,@function
jcopy_markers_execute:                  # @jcopy_markers_execute
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
	ld	s1, 400(a0)
	beqz	s1, .LBB5_20
# %bb.1:
	mv	s0, a1
	li	s2, 238
	li	s3, 5
	li	s4, 65
	li	s5, 100
	li	s6, 111
	li	s7, 98
	li	s9, 224
	li	s10, 74
	li	s11, 70
	li	s8, 73
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	lw	a0, 288(s0)
	beqz	a0, .LBB5_10
# %bb.3:                                #   in Loop: Header=BB5_2 Depth=1
	lbu	a0, 8(s1)
	bne	a0, s9, .LBB5_10
# %bb.4:                                #   in Loop: Header=BB5_2 Depth=1
	lw	a0, 16(s1)
	bltu	a0, s3, .LBB5_10
# %bb.5:                                #   in Loop: Header=BB5_2 Depth=1
	ld	a0, 24(s1)
	lbu	a1, 0(a0)
	bne	a1, s10, .LBB5_10
# %bb.6:                                #   in Loop: Header=BB5_2 Depth=1
	lbu	a1, 1(a0)
	bne	a1, s11, .LBB5_10
# %bb.7:                                #   in Loop: Header=BB5_2 Depth=1
	lbu	a1, 2(a0)
	bne	a1, s8, .LBB5_10
# %bb.8:                                #   in Loop: Header=BB5_2 Depth=1
	lbu	a1, 3(a0)
	bne	a1, s11, .LBB5_10
# %bb.9:                                #   in Loop: Header=BB5_2 Depth=1
	lbu	a0, 4(a0)
	beqz	a0, .LBB5_19
.LBB5_10:                               #   in Loop: Header=BB5_2 Depth=1
	lw	a0, 300(s0)
	lbu	a1, 8(s1)
	beqz	a0, .LBB5_18
# %bb.11:                               #   in Loop: Header=BB5_2 Depth=1
	bne	a1, s2, .LBB5_18
# %bb.12:                               #   in Loop: Header=BB5_2 Depth=1
	lw	a0, 16(s1)
	li	a1, 238
	bltu	a0, s3, .LBB5_18
# %bb.13:                               #   in Loop: Header=BB5_2 Depth=1
	ld	a0, 24(s1)
	lbu	a2, 0(a0)
	bne	a2, s4, .LBB5_18
# %bb.14:                               #   in Loop: Header=BB5_2 Depth=1
	lbu	a2, 1(a0)
	bne	a2, s5, .LBB5_18
# %bb.15:                               #   in Loop: Header=BB5_2 Depth=1
	lbu	a2, 2(a0)
	bne	a2, s6, .LBB5_18
# %bb.16:                               #   in Loop: Header=BB5_2 Depth=1
	lbu	a2, 3(a0)
	bne	a2, s7, .LBB5_18
# %bb.17:                               #   in Loop: Header=BB5_2 Depth=1
	lbu	a0, 4(a0)
	li	a2, 101
	beq	a0, a2, .LBB5_19
.LBB5_18:                               #   in Loop: Header=BB5_2 Depth=1
	ld	a2, 24(s1)
	lw	a3, 16(s1)
	mv	a0, s0
	call	jpeg_write_marker
.LBB5_19:                               #   in Loop: Header=BB5_2 Depth=1
	ld	s1, 0(s1)
	bnez	s1, .LBB5_2
.LBB5_20:
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
.Lfunc_end5:
	.size	jcopy_markers_execute, .Lfunc_end5-jcopy_markers_execute
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
