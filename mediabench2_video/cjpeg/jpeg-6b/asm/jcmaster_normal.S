	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"jcmaster.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	jinit_c_master_control          # -- Begin function jinit_c_master_control
	.p2align	2
	.type	jinit_c_master_control,@function
jinit_c_master_control:                 # @jinit_c_master_control
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
	addi	sp, sp, -768
	mv	s0, a0
	ld	a0, 8(a0)
	ld	a3, 0(a0)
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	li	a1, 1
	li	a2, 48
	mv	a0, s0
	jalr	a3
	mv	s1, a0
	sd	a0, 432(s0)
	lui	a0, %hi(prepare_for_pass)
	addi	a0, a0, %lo(prepare_for_pass)
	sd	a0, 0(s1)
	lui	a1, %hi(pass_startup)
	addi	a1, a1, %lo(pass_startup)
	lw	a0, 52(s0)
	sd	a1, 8(s1)
	lui	a1, %hi(finish_pass_master)
	addi	a1, a1, %lo(finish_pass_master)
	sd	a1, 16(s1)
	sw	zero, 28(s1)
	beqz	a0, .LBB0_5
# %bb.1:
	lw	a1, 48(s0)
	beqz	a1, .LBB0_5
# %bb.2:
	lw	a1, 76(s0)
	blez	a1, .LBB0_5
# %bb.3:
	lw	a1, 56(s0)
	blez	a1, .LBB0_5
# %bb.4:
	lui	a1, 16
	addiw	a2, a1, -36
	bgeu	a2, a0, .LBB0_6
	j	.LBB0_7
.LBB0_5:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 32
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 52(s0)
	lui	a1, 16
	addiw	a2, a1, -36
	bltu	a2, a0, .LBB0_7
.LBB0_6:
	lw	a0, 48(s0)
	addiw	a1, a1, -35
	bltu	a0, a1, .LBB0_8
.LBB0_7:
	ld	a0, 0(s0)
	lui	a1, 16375
	slli	a1, a1, 22
	addi	a1, a1, 41
	sd	a1, 40(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 48(s0)
.LBB0_8:
	lw	a1, 56(s0)
	slli	a0, a0, 32
	srli	a0, a0, 32
	mul	a0, a1, a0
	srli	a0, a0, 32
	bnez	a0, .LBB0_29
# %bb.9:
	lw	a0, 72(s0)
	li	a1, 8
	bne	a0, a1, .LBB0_30
.LBB0_10:
	lw	a0, 76(s0)
	li	a1, 11
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	blt	a0, a1, .LBB0_12
.LBB0_11:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	li	a2, 26
	sw	a2, 40(a1)
	li	a1, 10
	sw	a1, 48(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 76(s0)
.LBB0_12:
	li	a1, 1
	slli	a2, a1, 32
	addi	a2, a2, 1
	sd	a2, 312(s0)
	blez	a0, .LBB0_26
# %bb.13:
	ld	s2, 88(s0)
	li	s1, 0
	addi	s2, s2, 12
	li	a1, 1
	li	s3, -4
	li	s4, 18
	li	s5, -5
	li	a2, 1
	j	.LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_15 Depth=1
	sw	a1, 316(s0)
	addiw	s1, s1, 1
	addi	s2, s2, 96
	bge	s1, a0, .LBB0_22
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	lw	a4, -4(s2)
	addiw	a3, a4, -5
	bltu	a3, s3, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	lw	a3, 0(s2)
	addiw	a5, a3, -5
	bgeu	s5, a5, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=1
	bge	a4, a2, .LBB0_20
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=1
	sw	a2, 312(s0)
	blt	a3, a1, .LBB0_14
	j	.LBB0_21
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s4, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a2, 312(s0)
	lw	a4, -4(s2)
	lw	a1, 316(s0)
	lw	a3, 0(s2)
	lw	a0, 76(s0)
	blt	a4, a2, .LBB0_18
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=1
	mv	a2, a4
	sw	a4, 312(s0)
	blt	a3, a1, .LBB0_14
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=1
	mv	a1, a3
	j	.LBB0_14
.LBB0_22:
	blez	a0, .LBB0_26
# %bb.23:
	ld	s2, 88(s0)
	li	s1, 0
	addi	s2, s2, 28
	li	s3, 8
	li	s4, 1
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	lwu	a0, 48(s0)
	lw	a1, -20(s2)
	lw	a2, 312(s0)
	sw	s1, -24(s2)
	sw	s3, 8(s2)
	mul	a0, a1, a0
	slliw	a1, a2, 3
	call	jdiv_round_up
	lwu	a1, 52(s0)
	lw	a2, -16(s2)
	lw	a3, 316(s0)
	sw	a0, 0(s2)
	mul	a0, a2, a1
	slliw	a1, a3, 3
	call	jdiv_round_up
	lwu	a2, 48(s0)
	lw	a3, -20(s2)
	lw	a1, 312(s0)
	sw	a0, 4(s2)
	mul	a0, a3, a2
	call	jdiv_round_up
	lwu	a2, 52(s0)
	lw	a3, -16(s2)
	lw	a1, 316(s0)
	sw	a0, 12(s2)
	mul	a0, a3, a2
	call	jdiv_round_up
	lw	a1, 76(s0)
	sw	a0, 16(s2)
	sw	s4, 20(s2)
	addiw	s1, s1, 1
	addi	s2, s2, 96
	blt	s1, a1, .LBB0_24
# %bb.25:
	lw	a1, 316(s0)
.LBB0_26:
	lwu	a0, 52(s0)
	slliw	a1, a1, 3
	call	jdiv_round_up
	ld	a1, 248(s0)
	sw	a0, 320(s0)
	addi	s3, s0, 240
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	beqz	a1, .LBB0_31
# %bb.27:
	lw	a0, 0(s3)
	blez	a0, .LBB0_32
# %bb.28:
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	lw	a0, 20(a0)
	bnez	a0, .LBB0_37
	j	.LBB0_33
.LBB0_29:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 70
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 72(s0)
	li	a1, 8
	beq	a0, a1, .LBB0_10
.LBB0_30:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	ld	a2, 0(a0)
	li	a0, 15
	sw	a0, 40(a1)
	mv	a0, s0
	jalr	a2
	lw	a0, 76(s0)
	li	a1, 11
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	bge	a0, a1, .LBB0_11
	j	.LBB0_12
.LBB0_31:
	sw	zero, 308(s0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	j	.LBB0_113
.LBB0_32:
	ld	a0, 0(s0)
	li	a1, 19
	sd	a1, 40(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 248(s0)
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	lw	a0, 20(a0)
	bnez	a0, .LBB0_37
.LBB0_33:
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	lw	a0, 24(a0)
	li	a1, 63
	bne	a0, a1, .LBB0_37
# %bb.34:
	lw	s1, 76(s0)
	sw	zero, 308(s0)
	blez	s1, .LBB0_36
# %bb.35:
	slli	a2, s1, 2
	addi	a0, sp, 2047
	addi	a0, a0, 609
	li	a1, 0
	call	memset
.LBB0_36:
	li	s2, 0
	j	.LBB0_39
.LBB0_37:
	lw	s1, 76(s0)
	li	s2, 1
	sw	s2, 308(s0)
	blez	s1, .LBB0_39
# %bb.38:
	slli	a2, s1, 8
	addi	a0, sp, 96
	li	a1, 255
	call	memset
.LBB0_39:
	lw	a0, 0(s3)
	blez	a0, .LBB0_100
# %bb.40:
	li	s5, 0
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	addi	s7, a0, 8
	addi	a1, a0, 4
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	li	s8, 19
	li	s2, 17
	mv	s9, a0
	li	a0, 1
	sd	s3, 32(sp)                      # 8-byte Folded Spill
	j	.LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_42 Depth=1
	ld	s9, 64(sp)                      # 8-byte Folded Reload
	addi	s9, s9, 36
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	lw	a1, 0(a0)
	addiw	a0, s1, 1
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	addi	s7, s7, 36
	ld	s5, 48(sp)                      # 8-byte Folded Reload
	addi	s5, s5, 1
	ld	a2, 56(sp)                      # 8-byte Folded Reload
	addi	a2, a2, 36
	sd	a2, 56(sp)                      # 8-byte Folded Spill
	li	s8, 19
	bge	s1, a1, .LBB0_99
.LBB0_42:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_78 Depth 2
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_95 Depth 3
                                        #       Child Loop BB0_91 Depth 3
                                        #     Child Loop BB0_66 Depth 2
	lwu	s4, 0(s9)
	mv	s1, a0
	addiw	a0, s4, -5
	sext.w	a1, s4
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	li	a1, -5
	sd	s5, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	bltu	a1, a0, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=1
	ld	a0, 0(s0)
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	sw	s3, 44(a0)
	ld	a1, 0(s0)
	li	a2, 26
	sw	a2, 40(a0)
	li	a0, 4
	sw	a0, 48(a1)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	blez	s3, .LBB0_98
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=1
	lw	a0, 4(s9)
	bltz	a0, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_42 Depth=1
	lw	a1, 76(s0)
	blt	a0, a1, .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_42 Depth=1
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s8, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_47:                               #   in Loop: Header=BB0_42 Depth=1
	li	s6, 1
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	bne	a0, s6, .LBB0_52
.LBB0_48:                               #   in Loop: Header=BB0_42 Depth=1
	li	s8, 19
.LBB0_49:                               #   in Loop: Header=BB0_42 Depth=1
	lw	s11, 20(s9)
	lw	s7, 24(s9)
	lw	s5, 28(s9)
	lw	a0, 308(s0)
	sd	s9, 64(sp)                      # 8-byte Folded Spill
	lw	s9, 32(s9)
	beqz	a0, .LBB0_59
# %bb.50:                               #   in Loop: Header=BB0_42 Depth=1
	li	a0, 63
	bgeu	a0, s11, .LBB0_68
.LBB0_51:                               #   in Loop: Header=BB0_42 Depth=1
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB0_72
.LBB0_52:                               # %.preheader11
                                        #   in Loop: Header=BB0_42 Depth=1
	li	a0, 36
	mul	a0, s5, a0
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	add	a0, a0, a1
	addi	a0, a0, 4
	slli	s3, s4, 2
	add	s3, a0, s3
	mv	s5, s7
	j	.LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_54 Depth=2
	addi	s5, s5, 4
	beq	s5, s3, .LBB0_48
.LBB0_54:                               #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	s7, 0(s5)
	bltz	s7, .LBB0_57
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=2
	lw	a0, 76(s0)
	bge	s7, a0, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_54 Depth=2
	lw	a0, -4(s5)
	blt	a0, s7, .LBB0_53
	j	.LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_54 Depth=2
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s8, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, -4(s5)
	blt	a0, s7, .LBB0_53
.LBB0_58:                               #   in Loop: Header=BB0_54 Depth=2
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s8, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB0_53
.LBB0_59:                               #   in Loop: Header=BB0_42 Depth=1
	or	a0, s5, s11
	bnez	a0, .LBB0_62
# %bb.60:                               #   in Loop: Header=BB0_42 Depth=1
	li	a0, 63
	bne	s7, a0, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_42 Depth=1
	beqz	s9, .LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_42 Depth=1
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_63:                               #   in Loop: Header=BB0_42 Depth=1
	beqz	s6, .LBB0_41
# %bb.64:                               #   in Loop: Header=BB0_42 Depth=1
	slli	s3, s4, 2
	ld	s4, 56(sp)                      # 8-byte Folded Reload
	add	s3, s4, s3
	j	.LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_66 Depth=2
	addi	s4, s4, 4
	li	a0, 1
	sw	a0, 0(s5)
	beq	s4, s3, .LBB0_41
.LBB0_66:                               #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 0(s4)
	slli	a0, a0, 2
	addi	s5, sp, 2047
	addi	s5, s5, 609
	add	s5, s5, a0
	lw	a0, 0(s5)
	beqz	a0, .LBB0_65
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=2
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s8, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB0_65
.LBB0_68:                               #   in Loop: Header=BB0_42 Depth=1
	blt	s7, s11, .LBB0_51
# %bb.69:                               #   in Loop: Header=BB0_42 Depth=1
	li	a0, 63
	blt	a0, s7, .LBB0_51
# %bb.70:                               #   in Loop: Header=BB0_42 Depth=1
	li	a0, 10
	bltu	a0, s5, .LBB0_51
# %bb.71:                               #   in Loop: Header=BB0_42 Depth=1
	li	a0, 11
	bgeu	s9, a0, .LBB0_51
.LBB0_72:                               #   in Loop: Header=BB0_42 Depth=1
	beqz	s11, .LBB0_97
# %bb.73:                               #   in Loop: Header=BB0_42 Depth=1
	li	a0, 1
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	beq	a1, a0, .LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_42 Depth=1
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_75:                               #   in Loop: Header=BB0_42 Depth=1
	beqz	s6, .LBB0_41
# %bb.76:                               #   in Loop: Header=BB0_42 Depth=1
	li	s8, 0
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	addi	s4, s4, 4
	addiw	a0, s5, -1
	xor	a0, s9, a0
	seqz	s10, a0
	slli	a0, s11, 2
	addi	a1, sp, 96
	add	a1, a1, a0
	sd	a1, 80(sp)                      # 8-byte Folded Spill
	subw	a1, s7, s11
	slli	a1, a1, 32
	srli	a1, a1, 30
	addi	a2, sp, 100
	add	a0, a2, a0
	add	a0, a0, a1
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	j	.LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_78 Depth=2
	addi	s8, s8, 1
	ld	a0, 88(sp)                      # 8-byte Folded Reload
	beq	s8, a0, .LBB0_41
.LBB0_78:                               #   Parent Loop BB0_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_95 Depth 3
                                        #       Child Loop BB0_91 Depth 3
	slli	a0, s8, 2
	add	a0, s4, a0
	lw	s3, 0(a0)
	slli	s3, s3, 8
	beqz	s11, .LBB0_80
# %bb.79:                               #   in Loop: Header=BB0_78 Depth=2
	addi	a0, sp, 96
	add	a0, a0, s3
	lw	a0, 0(a0)
	bltz	a0, .LBB0_87
.LBB0_80:                               #   in Loop: Header=BB0_78 Depth=2
	blt	s7, s11, .LBB0_77
.LBB0_81:                               #   in Loop: Header=BB0_78 Depth=2
	beqz	s5, .LBB0_88
# %bb.82:                               # %.preheader7
                                        #   in Loop: Header=BB0_78 Depth=2
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	add	s6, s6, s3
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	add	s3, a0, s3
	j	.LBB0_85
.LBB0_83:                               #   in Loop: Header=BB0_85 Depth=3
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s2, 40(a0)
	mv	a0, s0
	jalr	a1
.LBB0_84:                               #   in Loop: Header=BB0_85 Depth=3
	sw	s9, 0(s6)
	addi	s6, s6, 4
	beq	s6, s3, .LBB0_77
.LBB0_85:                               #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_78 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a0, 0(s6)
	bltz	a0, .LBB0_83
# %bb.86:                               #   in Loop: Header=BB0_85 Depth=3
	xor	a0, s5, a0
	seqz	a0, a0
	and	a0, s10, a0
	beqz	a0, .LBB0_83
	j	.LBB0_84
.LBB0_87:                               #   in Loop: Header=BB0_78 Depth=2
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s2, 40(a0)
	mv	a0, s0
	jalr	a1
	blt	s7, s11, .LBB0_77
	j	.LBB0_81
.LBB0_88:                               #   in Loop: Header=BB0_78 Depth=2
	beqz	s10, .LBB0_93
# %bb.89:                               # %.preheader3
                                        #   in Loop: Header=BB0_78 Depth=2
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	add	s6, s6, s3
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	add	s3, a0, s3
	j	.LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_91 Depth=3
	sw	s9, 0(s6)
	addi	s6, s6, 4
	beq	s6, s3, .LBB0_77
.LBB0_91:                               #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_78 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a0, 0(s6)
	blez	a0, .LBB0_90
# %bb.92:                               #   in Loop: Header=BB0_91 Depth=3
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB0_90
.LBB0_93:                               # %.preheader5
                                        #   in Loop: Header=BB0_78 Depth=2
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	add	s6, s6, s3
	ld	a0, 72(sp)                      # 8-byte Folded Reload
	add	s3, a0, s3
	j	.LBB0_95
.LBB0_94:                               #   in Loop: Header=BB0_95 Depth=3
	sw	s9, 0(s6)
	addi	s6, s6, 4
	beq	s6, s3, .LBB0_77
.LBB0_95:                               #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_78 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a0, 0(s6)
	bltz	a0, .LBB0_94
# %bb.96:                               #   in Loop: Header=BB0_95 Depth=3
	ld	a0, 0(s0)
	sw	s1, 44(a0)
	ld	a1, 0(s0)
	ld	a1, 0(a1)
	sw	s2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB0_94
.LBB0_97:                               #   in Loop: Header=BB0_42 Depth=1
	bnez	s7, .LBB0_74
	j	.LBB0_75
.LBB0_98:                               #   in Loop: Header=BB0_42 Depth=1
	li	s8, 19
	li	s6, 0
	j	.LBB0_49
.LBB0_99:
	lw	s2, 308(s0)
	lw	s1, 76(s0)
.LBB0_100:
	beqz	s2, .LBB0_106
# %bb.101:
	blez	s1, .LBB0_111
# %bb.102:                              # %.preheader1
	li	s2, 0
	addi	s3, sp, 96
	li	s4, 45
	j	.LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_104 Depth=1
	addi	s2, s2, 1
	addi	s3, s3, 256
	bge	s2, s1, .LBB0_111
.LBB0_104:                              # =>This Inner Loop Header: Depth=1
	lw	a0, 0(s3)
	bgez	a0, .LBB0_103
# %bb.105:                              #   in Loop: Header=BB0_104 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s4, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	s1, 76(s0)
	j	.LBB0_103
.LBB0_106:
	blez	s1, .LBB0_111
# %bb.107:                              # %.preheader
	li	s2, 0
	addi	s3, sp, 2047
	addi	s3, s3, 609
	li	s4, 45
	j	.LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_109 Depth=1
	addi	s2, s2, 1
	addi	s3, s3, 4
	bge	s2, s1, .LBB0_111
.LBB0_109:                              # =>This Inner Loop Header: Depth=1
	lw	a0, 0(s3)
	bnez	a0, .LBB0_108
# %bb.110:                              #   in Loop: Header=BB0_109 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s4, 40(a0)
	mv	a0, s0
	jalr	a1
	lw	s1, 76(s0)
	j	.LBB0_108
.LBB0_111:
	lw	a0, 308(s0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	ld	a2, 8(sp)                       # 8-byte Folded Reload
	beqz	a0, .LBB0_114
# %bb.112:
	addi	s3, s0, 264
.LBB0_113:
	li	a0, 1
	sw	a0, 0(s3)
.LBB0_114:
	beqz	a2, .LBB0_117
# %bb.115:
	lw	a0, 264(s0)
	beqz	a0, .LBB0_119
# %bb.116:
	li	a0, 1
	sd	a0, 32(a1)
	sw	zero, 44(a1)
	j	.LBB0_118
.LBB0_117:
	sd	zero, 32(a1)
	lw	a0, 264(s0)
	sw	zero, 44(a1)
	beqz	a0, .LBB0_120
.LBB0_118:
	lw	a0, 240(s0)
	slli	a0, a0, 1
	j	.LBB0_121
.LBB0_119:
	li	a0, 2
	sd	a0, 32(a1)
	sw	zero, 44(a1)
.LBB0_120:
	lw	a0, 240(s0)
.LBB0_121:
	sw	a0, 40(a1)
	addi	sp, sp, 768
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
.Lfunc_end0:
	.size	jinit_c_master_control, .Lfunc_end0-jinit_c_master_control
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function prepare_for_pass
	.type	prepare_for_pass,@function
prepare_for_pass:                       # @prepare_for_pass
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	s1, 432(a0)
	lw	a0, 32(s1)
	li	a1, 2
	beq	a0, a1, .LBB1_25
# %bb.1:
	li	a1, 1
	beq	a0, a1, .LBB1_8
# %bb.2:
	bnez	a0, .LBB1_13
# %bb.3:
	ld	a0, 248(s0)
	beqz	a0, .LBB1_31
# %bb.4:
	lw	a1, 44(s1)
	li	a2, 36
	mul	a1, a1, a2
	add	a0, a0, a1
	lw	a4, 0(a0)
	sw	a4, 324(s0)
	blez	a4, .LBB1_7
# %bb.5:
	ld	a1, 88(s0)
	addi	a2, a0, 4
	addi	a3, s0, 328
	slli	a4, a4, 3
	add	a4, a3, a4
	li	a5, 96
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a2)
	mul	a6, a6, a5
	add	a6, a1, a6
	sd	a6, 0(a3)
	addi	a3, a3, 8
	addi	a2, a2, 4
	bne	a3, a4, .LBB1_6
.LBB1_7:
	lw	a1, 20(a0)
	lw	a2, 24(a0)
	lw	a3, 28(a0)
	lw	a0, 32(a0)
	sw	a1, 412(s0)
	sw	a2, 416(s0)
	sw	a3, 420(s0)
	j	.LBB1_37
.LBB1_8:
	ld	a0, 248(s0)
	beqz	a0, .LBB1_14
# %bb.9:
	lw	a1, 44(s1)
	li	a2, 36
	mul	a1, a1, a2
	add	a0, a0, a1
	lw	a4, 0(a0)
	sw	a4, 324(s0)
	blez	a4, .LBB1_12
# %bb.10:
	ld	a1, 88(s0)
	addi	a2, a0, 4
	addi	a3, s0, 328
	slli	a4, a4, 3
	add	a4, a3, a4
	li	a5, 96
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a2)
	mul	a6, a6, a5
	add	a6, a1, a6
	sd	a6, 0(a3)
	addi	a3, a3, 8
	addi	a2, a2, 4
	bne	a3, a4, .LBB1_11
.LBB1_12:
	lw	a1, 20(a0)
	lw	a2, 24(a0)
	lw	a3, 28(a0)
	lw	a0, 32(a0)
	sw	a1, 412(s0)
	sw	a2, 416(s0)
	sw	a3, 420(s0)
	j	.LBB1_20
.LBB1_13:
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	li	a2, 48
	sw	a2, 40(a0)
	mv	a0, s0
	jalr	a1
	j	.LBB1_52
.LBB1_14:
	lw	a0, 76(s0)
	li	a1, 5
	blt	a0, a1, .LBB1_16
# %bb.15:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	li	a2, 26
	sw	a2, 40(a1)
	li	a1, 4
	sw	a1, 48(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 76(s0)
.LBB1_16:
	sw	a0, 324(s0)
	blez	a0, .LBB1_19
# %bb.17:
	ld	a1, 88(s0)
	addi	a2, s0, 328
	slli	a0, a0, 3
	add	a0, a2, a0
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	sd	a1, 0(a2)
	addi	a2, a2, 8
	addi	a1, a1, 96
	bne	a2, a0, .LBB1_18
.LBB1_19:
	li	a0, 0
	sw	zero, 412(s0)
	li	a1, 63
	sd	a1, 416(s0)
.LBB1_20:
	sw	a0, 424(s0)
	mv	a0, s0
	call	per_scan_setup
	lw	a0, 412(s0)
	beqz	a0, .LBB1_22
.LBB1_21:
	ld	a0, 496(s0)
	ld	a2, 0(a0)
	li	a1, 1
	mv	a0, s0
	jalr	a2
	ld	a0, 456(s0)
	ld	a2, 0(a0)
	li	a1, 2
	mv	a0, s0
	jalr	a2
	j	.LBB1_51
.LBB1_22:
	lw	a0, 420(s0)
	beqz	a0, .LBB1_21
# %bb.23:
	lw	a0, 260(s0)
	bnez	a0, .LBB1_21
# %bb.24:
	lw	a0, 36(s1)
	li	a1, 2
	sw	a1, 32(s1)
	addi	a0, a0, 1
	sw	a0, 36(s1)
.LBB1_25:
	lw	a0, 264(s0)
	bnez	a0, .LBB1_48
# %bb.26:
	ld	a0, 248(s0)
	beqz	a0, .LBB1_41
# %bb.27:
	ld	a1, 432(s0)
	lw	a1, 44(a1)
	li	a2, 36
	mul	a1, a1, a2
	add	a0, a0, a1
	lw	a4, 0(a0)
	sw	a4, 324(s0)
	blez	a4, .LBB1_30
# %bb.28:
	ld	a1, 88(s0)
	addi	a2, a0, 4
	addi	a3, s0, 328
	slli	a4, a4, 3
	add	a4, a3, a4
	li	a5, 96
.LBB1_29:                               # =>This Inner Loop Header: Depth=1
	lw	a6, 0(a2)
	mul	a6, a6, a5
	add	a6, a1, a6
	sd	a6, 0(a3)
	addi	a3, a3, 8
	addi	a2, a2, 4
	bne	a3, a4, .LBB1_29
.LBB1_30:
	lw	a1, 20(a0)
	lw	a2, 24(a0)
	lw	a3, 28(a0)
	lw	a0, 32(a0)
	sw	a1, 412(s0)
	sw	a2, 416(s0)
	sw	a3, 420(s0)
	j	.LBB1_47
.LBB1_31:
	lw	a0, 76(s0)
	li	a1, 5
	blt	a0, a1, .LBB1_33
# %bb.32:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	li	a2, 26
	sw	a2, 40(a1)
	li	a1, 4
	sw	a1, 48(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 76(s0)
.LBB1_33:
	sw	a0, 324(s0)
	blez	a0, .LBB1_36
# %bb.34:
	ld	a1, 88(s0)
	addi	a2, s0, 328
	slli	a0, a0, 3
	add	a0, a2, a0
.LBB1_35:                               # =>This Inner Loop Header: Depth=1
	sd	a1, 0(a2)
	addi	a2, a2, 8
	addi	a1, a1, 96
	bne	a2, a0, .LBB1_35
.LBB1_36:
	li	a0, 0
	sw	zero, 412(s0)
	li	a1, 63
	sd	a1, 416(s0)
.LBB1_37:
	sw	a0, 424(s0)
	mv	a0, s0
	call	per_scan_setup
	lw	a0, 256(s0)
	bnez	a0, .LBB1_39
# %bb.38:
	ld	a0, 472(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 480(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 448(s0)
	ld	a2, 0(a0)
	mv	a0, s0
	li	a1, 0
	jalr	a2
.LBB1_39:
	ld	a0, 488(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	ld	a0, 496(s0)
	ld	a2, 0(a0)
	lw	a1, 264(s0)
	mv	a0, s0
	jalr	a2
	ld	a0, 456(s0)
	lw	a1, 40(s1)
	ld	a2, 0(a0)
	slti	a0, a1, 2
	addi	a0, a0, -1
	andi	a1, a0, 3
	mv	a0, s0
	jalr	a2
	ld	a0, 440(s0)
	ld	a2, 0(a0)
	mv	a0, s0
	li	a1, 0
	jalr	a2
	lw	a0, 264(s0)
	bnez	a0, .LBB1_51
# %bb.40:
	li	a0, 1
	sw	a0, 24(s1)
	j	.LBB1_52
.LBB1_41:
	lw	a0, 76(s0)
	li	a1, 5
	blt	a0, a1, .LBB1_43
# %bb.42:
	ld	a1, 0(s0)
	sw	a0, 44(a1)
	ld	a0, 0(s0)
	li	a2, 26
	sw	a2, 40(a1)
	li	a1, 4
	sw	a1, 48(a0)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 76(s0)
.LBB1_43:
	sw	a0, 324(s0)
	blez	a0, .LBB1_46
# %bb.44:
	ld	a1, 88(s0)
	addi	a2, s0, 328
	slli	a0, a0, 3
	add	a0, a2, a0
.LBB1_45:                               # =>This Inner Loop Header: Depth=1
	sd	a1, 0(a2)
	addi	a2, a2, 8
	addi	a1, a1, 96
	bne	a2, a0, .LBB1_45
.LBB1_46:
	li	a0, 0
	sw	zero, 412(s0)
	li	a1, 63
	sd	a1, 416(s0)
.LBB1_47:
	sw	a0, 424(s0)
	mv	a0, s0
	call	per_scan_setup
.LBB1_48:
	ld	a0, 496(s0)
	ld	a2, 0(a0)
	mv	a0, s0
	li	a1, 0
	jalr	a2
	ld	a0, 456(s0)
	ld	a2, 0(a0)
	li	a1, 2
	mv	a0, s0
	jalr	a2
	lw	a0, 44(s1)
	bnez	a0, .LBB1_50
# %bb.49:
	ld	a0, 464(s0)
	ld	a1, 8(a0)
	mv	a0, s0
	jalr	a1
.LBB1_50:
	ld	a0, 464(s0)
	ld	a1, 16(a0)
	mv	a0, s0
	jalr	a1
.LBB1_51:
	sw	zero, 24(s1)
.LBB1_52:
	lw	a0, 40(s1)
	lw	a1, 36(s1)
	ld	a2, 16(s0)
	addiw	a3, a0, -1
	xor	a3, a1, a3
	seqz	a3, a3
	sw	a3, 28(s1)
	beqz	a2, .LBB1_54
# %bb.53:
	sw	a1, 24(a2)
	sw	a0, 28(a2)
.LBB1_54:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	prepare_for_pass, .Lfunc_end1-prepare_for_pass
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function pass_startup
	.type	pass_startup,@function
pass_startup:                           # @pass_startup
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 464(a0)
	ld	a1, 432(s0)
	ld	a2, 8(a0)
	sw	zero, 24(a1)
	mv	a0, s0
	jalr	a2
	ld	a0, 464(s0)
	ld	t1, 16(a0)
	mv	a0, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	jr	t1
.Lfunc_end2:
	.size	pass_startup, .Lfunc_end2-pass_startup
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function finish_pass_master
	.type	finish_pass_master,@function
finish_pass_master:                     # @finish_pass_master
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s0, a0
	ld	a0, 496(a0)
	ld	s1, 432(s0)
	ld	a1, 16(a0)
	mv	a0, s0
	jalr	a1
	lw	a0, 32(s1)
	li	a1, 2
	beq	a0, a1, .LBB3_5
# %bb.1:
	li	a1, 1
	beq	a0, a1, .LBB3_4
# %bb.2:
	bnez	a0, .LBB3_8
# %bb.3:
	lw	a0, 264(s0)
	li	a1, 2
	sw	a1, 32(s1)
	bnez	a0, .LBB3_8
	j	.LBB3_7
.LBB3_4:
	li	a0, 2
	sw	a0, 32(s1)
	j	.LBB3_8
.LBB3_5:
	lw	a0, 264(s0)
	beqz	a0, .LBB3_7
# %bb.6:
	li	a0, 1
	sw	a0, 32(s1)
.LBB3_7:
	lw	a0, 44(s1)
	addi	a0, a0, 1
	sw	a0, 44(s1)
.LBB3_8:
	lw	a0, 36(s1)
	addi	a0, a0, 1
	sw	a0, 36(s1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	finish_pass_master, .Lfunc_end3-finish_pass_master
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function per_scan_setup
	.type	per_scan_setup,@function
per_scan_setup:                         # @per_scan_setup
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
	mv	s0, a0
	lw	a1, 324(a0)
	li	a0, 1
	bne	a1, a0, .LBB4_4
# %bb.1:
	ld	a1, 328(s0)
	lw	a2, 28(a1)
	lw	a3, 32(a1)
	sw	a2, 360(s0)
	sw	a3, 364(s0)
	sw	a0, 52(a1)
	slli	a4, a0, 32
	lw	a2, 12(a1)
	addi	a5, a4, 1
	sd	a5, 56(a1)
	addi	a4, a4, 8
	remuw	a3, a3, a2
	sd	a4, 64(a1)
	beqz	a3, .LBB4_3
# %bb.2:
	mv	a2, a3
.LBB4_3:
	sw	a2, 72(a1)
	sw	a0, 368(s0)
	sw	zero, 372(s0)
	j	.LBB4_18
.LBB4_4:
	addiw	a0, a1, -5
	li	a2, -5
	bltu	a2, a0, .LBB4_6
# %bb.5:
	ld	a0, 0(s0)
	sw	a1, 44(a0)
	ld	a1, 0(s0)
	li	a2, 26
	sw	a2, 40(a0)
	li	a0, 4
	sw	a0, 48(a1)
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	mv	a0, s0
	jalr	a1
.LBB4_6:
	lw	a1, 312(s0)
	lwu	a0, 48(s0)
	slliw	a1, a1, 3
	call	jdiv_round_up
	lw	a1, 316(s0)
	lwu	a2, 52(s0)
	sw	a0, 360(s0)
	slliw	a1, a1, 3
	mv	a0, a2
	call	jdiv_round_up
	lw	a1, 324(s0)
	sw	a0, 364(s0)
	sw	zero, 368(s0)
	blez	a1, .LBB4_18
# %bb.7:
	li	s1, 0
	addi	s2, s0, 328
	addi	s3, s0, 372
	li	s4, 11
	li	s5, 13
	li	s6, 1
	j	.LBB4_9
.LBB4_8:                                #   in Loop: Header=BB4_9 Depth=1
	lw	a0, 324(s0)
	addi	s1, s1, 1
	bge	s1, a0, .LBB4_18
.LBB4_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_17 Depth 2
	slli	a0, s1, 3
	add	a0, s2, a0
	ld	a0, 0(a0)
	lw	a2, 8(a0)
	lw	a1, 12(a0)
	sw	a2, 52(a0)
	sw	a1, 56(a0)
	lw	a3, 28(a0)
	mulw	s7, a1, a2
	sw	s7, 60(a0)
	slli	a4, a2, 3
	remuw	a3, a3, a2
	sw	a4, 64(a0)
	bnez	a3, .LBB4_13
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=1
	lw	a3, 32(a0)
	remuw	a3, a3, a1
	sw	a2, 68(a0)
	bnez	a3, .LBB4_14
.LBB4_11:                               #   in Loop: Header=BB4_9 Depth=1
	lw	a2, 368(s0)
	addw	a2, a2, s7
	sw	a1, 72(a0)
	bge	a2, s4, .LBB4_15
.LBB4_12:                               #   in Loop: Header=BB4_9 Depth=1
	bgtz	s7, .LBB4_16
	j	.LBB4_8
.LBB4_13:                               #   in Loop: Header=BB4_9 Depth=1
	mv	a2, a3
	lw	a3, 32(a0)
	remuw	a3, a3, a1
	sw	a2, 68(a0)
	beqz	a3, .LBB4_11
.LBB4_14:                               #   in Loop: Header=BB4_9 Depth=1
	lw	a2, 368(s0)
	addw	a2, a2, s7
	sw	a3, 72(a0)
	blt	a2, s4, .LBB4_12
.LBB4_15:                               #   in Loop: Header=BB4_9 Depth=1
	ld	a0, 0(s0)
	ld	a1, 0(a0)
	sw	s5, 40(a0)
	mv	a0, s0
	jalr	a1
	blez	s7, .LBB4_8
.LBB4_16:                               #   in Loop: Header=BB4_9 Depth=1
	addi	s7, s7, 1
.LBB4_17:                               #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, 368(s0)
	addi	a1, a0, 1
	sw	a1, 368(s0)
	slli	a0, a0, 2
	add	a0, s3, a0
	addiw	s7, s7, -1
	sw	s1, 0(a0)
	bltu	s6, s7, .LBB4_17
	j	.LBB4_8
.LBB4_18:
	lw	a0, 284(s0)
	blez	a0, .LBB4_22
# %bb.19:
	lwu	a1, 360(s0)
	mul	a0, a1, a0
	lui	a1, 16
	addiw	a1, a1, -1
	bltu	a0, a1, .LBB4_21
# %bb.20:
	mv	a0, a1
.LBB4_21:
	sw	a0, 280(s0)
.LBB4_22:
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
.Lfunc_end4:
	.size	per_scan_setup, .Lfunc_end4-per_scan_setup
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
