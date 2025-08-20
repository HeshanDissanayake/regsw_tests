	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"rdcolmap.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	read_color_map                  # -- Begin function read_color_map
	.p2align	2
	.type	read_color_map,@function
read_color_map:                         # @read_color_map
# %bb.0:
	addi	sp, sp, -176
	sd	ra, 168(sp)                     # 8-byte Folded Spill
	sd	s0, 160(sp)                     # 8-byte Folded Spill
	sd	s1, 152(sp)                     # 8-byte Folded Spill
	sd	s2, 144(sp)                     # 8-byte Folded Spill
	sd	s3, 136(sp)                     # 8-byte Folded Spill
	sd	s4, 128(sp)                     # 8-byte Folded Spill
	sd	s5, 120(sp)                     # 8-byte Folded Spill
	sd	s6, 112(sp)                     # 8-byte Folded Spill
	sd	s7, 104(sp)                     # 8-byte Folded Spill
	sd	s8, 96(sp)                      # 8-byte Folded Spill
	sd	s9, 88(sp)                      # 8-byte Folded Spill
	sd	s10, 80(sp)                     # 8-byte Folded Spill
	sd	s11, 72(sp)                     # 8-byte Folded Spill
	mv	s6, a0
	ld	a0, 8(a0)
	ld	a4, 16(a0)
	mv	s1, a1
	li	a1, 1
	li	a2, 256
	li	a3, 3
	mv	a0, s6
	jalr	a4
	sd	a0, 160(s6)
	sw	zero, 156(s6)
	mv	a0, s1
	call	getc
	li	a1, 80
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	beq	a0, a1, .LBB0_15
# %bb.1:
	li	a1, 71
	bne	a0, a1, .LBB0_40
# %bb.2:
	mv	a0, s1
	call	getc
	li	s0, -1
	mv	s2, a0
	beq	a0, s0, .LBB0_101
# %bb.3:
	mv	a0, s1
	call	getc
	mv	s3, a0
	beq	a0, s0, .LBB0_102
.LBB0_4:
	mv	a0, s1
	call	getc
	li	s0, -1
	beq	a0, s0, .LBB0_103
.LBB0_5:
	mv	a0, s1
	call	getc
	beq	a0, s0, .LBB0_104
.LBB0_6:
	mv	a0, s1
	call	getc
	li	s0, -1
	beq	a0, s0, .LBB0_105
.LBB0_7:
	mv	a0, s1
	call	getc
	beq	a0, s0, .LBB0_106
.LBB0_8:
	mv	a0, s1
	call	getc
	li	s0, -1
	beq	a0, s0, .LBB0_107
.LBB0_9:
	mv	a0, s1
	call	getc
	beq	a0, s0, .LBB0_108
.LBB0_10:
	mv	a0, s1
	call	getc
	li	s0, -1
	beq	a0, s0, .LBB0_109
.LBB0_11:
	mv	a0, s1
	call	getc
	mv	s4, a0
	beq	a0, s0, .LBB0_110
.LBB0_12:
	mv	a0, s1
	call	getc
	li	s0, -1
	beq	a0, s0, .LBB0_111
.LBB0_13:
	mv	a0, s1
	call	getc
	beq	a0, s0, .LBB0_112
.LBB0_14:
	li	a0, 73
	beq	s2, a0, .LBB0_113
	j	.LBB0_114
.LBB0_15:
	mv	a0, s1
	call	getc
	mv	s4, a0
	mv	a0, s6
	mv	a1, s1
	call	read_pbm_integer
	mv	s0, a0
	mv	a0, s6
	mv	a1, s1
	call	read_pbm_integer
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	mv	a0, s6
	mv	a1, s1
	call	read_pbm_integer
	mv	s5, a0
	sd	s0, 56(sp)                      # 8-byte Folded Spill
	beqz	s0, .LBB0_41
# %bb.16:
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB0_41
# %bb.17:
	beqz	s5, .LBB0_41
# %bb.18:
	li	a0, 255
	bne	s5, a0, .LBB0_42
.LBB0_19:
	li	a0, 51
	beq	s4, a0, .LBB0_43
.LBB0_20:
	li	a0, 54
	bne	s4, a0, .LBB0_40
# %bb.21:
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB0_132
# %bb.22:
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB0_132
# %bb.23:                               # %.preheader19
	li	a1, 0
	li	s7, -1
	li	a0, 1
	slli	a0, a0, 40
	addi	s10, a0, 57
	j	.LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_25 Depth=1
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	addiw	a1, a1, 1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	beq	a1, a0, .LBB0_132
.LBB0_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
                                        #       Child Loop BB0_35 Depth 3
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	li	s11, 0
	j	.LBB0_28
.LBB0_26:                               #   in Loop: Header=BB0_28 Depth=2
	add	s3, s3, s2
	sb	s4, 0(s3)
	add	s0, s0, s2
	sb	s5, 0(s0)
	add	s2, s8, s2
	sb	s6, 0(s2)
	lw	a0, 156(s9)
	addi	a0, a0, 1
	sw	a0, 156(s9)
.LBB0_27:                               #   in Loop: Header=BB0_28 Depth=2
	addiw	s11, s11, 1
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	beq	s11, a0, .LBB0_24
.LBB0_28:                               #   Parent Loop BB0_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_35 Depth 3
	mv	a0, s1
	call	getc
	mv	s4, a0
	mv	a0, s1
	call	getc
	mv	s5, a0
	mv	a0, s1
	call	getc
	mv	s6, a0
	beq	s4, s7, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=2
	beq	s5, s7, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_28 Depth=2
	bne	s6, s7, .LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_28 Depth=2
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	ld	a2, 0(a0)
	ld	a1, 0(a2)
	li	a3, 1038
	sw	a3, 40(a2)
	jalr	a1
.LBB0_32:                               #   in Loop: Header=BB0_28 Depth=2
	ld	s9, 64(sp)                      # 8-byte Folded Reload
	ld	a0, 160(s9)
	ld	s3, 0(a0)
	ld	s0, 8(a0)
	lw	s2, 156(s9)
	ld	s8, 16(a0)
	blez	s2, .LBB0_26
# %bb.33:                               #   in Loop: Header=BB0_28 Depth=2
	mv	a0, s3
	mv	a1, s0
	mv	a2, s8
	mv	a3, s2
	j	.LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_35 Depth=3
	addi	a3, a3, -1
	addi	a2, a2, 1
	addi	a1, a1, 1
	addi	a0, a0, 1
	beqz	a3, .LBB0_38
.LBB0_35:                               #   Parent Loop BB0_25 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	a4, 0(a0)
	bne	s4, a4, .LBB0_34
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=3
	lbu	a4, 0(a1)
	bne	s5, a4, .LBB0_34
# %bb.37:                               #   in Loop: Header=BB0_35 Depth=3
	lbu	a4, 0(a2)
	bne	s6, a4, .LBB0_34
	j	.LBB0_27
.LBB0_38:                               #   in Loop: Header=BB0_28 Depth=2
	ld	s9, 64(sp)                      # 8-byte Folded Reload
	li	a0, 256
	blt	s2, a0, .LBB0_26
# %bb.39:                               #   in Loop: Header=BB0_28 Depth=2
	ld	a0, 0(s9)
	sd	s10, 40(a0)
	ld	a0, 0(s9)
	ld	a1, 0(a0)
	mv	a0, s9
	jalr	a1
	j	.LBB0_26
.LBB0_40:
	ld	a0, 0(s6)
	ld	t1, 0(a0)
	li	a1, 1038
	sw	a1, 40(a0)
	mv	a0, s6
	ld	ra, 168(sp)                     # 8-byte Folded Reload
	ld	s0, 160(sp)                     # 8-byte Folded Reload
	ld	s1, 152(sp)                     # 8-byte Folded Reload
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	ld	s4, 128(sp)                     # 8-byte Folded Reload
	ld	s5, 120(sp)                     # 8-byte Folded Reload
	ld	s6, 112(sp)                     # 8-byte Folded Reload
	ld	s7, 104(sp)                     # 8-byte Folded Reload
	ld	s8, 96(sp)                      # 8-byte Folded Reload
	ld	s9, 88(sp)                      # 8-byte Folded Reload
	ld	s10, 80(sp)                     # 8-byte Folded Reload
	ld	s11, 72(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 176
	jr	t1
.LBB0_41:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	li	a0, 255
	beq	s5, a0, .LBB0_19
.LBB0_42:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	li	a0, 51
	bne	s4, a0, .LBB0_20
.LBB0_43:
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB0_132
# %bb.44:
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	beqz	a0, .LBB0_132
# %bb.45:                               # %.preheader16
	li	a1, 0
	li	s5, 35
	li	s6, 10
	li	s7, -1
	li	s8, 33
	li	s2, 1038
	li	a0, 1
	slli	a0, a0, 40
	addi	a0, a0, 57
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	lui	a0, 2048
	addiw	a0, a0, 19
	slli	s4, a0, 10
	j	.LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_47 Depth=1
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	addiw	a1, a1, 1
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	beq	a1, a0, .LBB0_132
.LBB0_47:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_50 Depth 2
                                        #       Child Loop BB0_51 Depth 3
                                        #         Child Loop BB0_52 Depth 4
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_63 Depth 3
                                        #       Child Loop BB0_65 Depth 3
                                        #         Child Loop BB0_66 Depth 4
                                        #       Child Loop BB0_75 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #       Child Loop BB0_79 Depth 3
                                        #         Child Loop BB0_80 Depth 4
                                        #       Child Loop BB0_89 Depth 3
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_96 Depth 3
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	li	s0, 0
	j	.LBB0_50
.LBB0_48:                               #   in Loop: Header=BB0_50 Depth=2
	add	s11, s11, s0
	sb	s3, 0(s11)
	add	a0, a5, s0
	sb	s9, 0(a0)
	add	s0, a6, s0
	sb	s2, 0(s0)
	lw	a0, 156(s10)
	addi	a0, a0, 1
	sw	a0, 156(s10)
.LBB0_49:                               #   in Loop: Header=BB0_50 Depth=2
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addiw	s0, s0, 1
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	li	s2, 1038
	beq	s0, a0, .LBB0_46
.LBB0_50:                               #   Parent Loop BB0_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #         Child Loop BB0_52 Depth 4
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_63 Depth 3
                                        #       Child Loop BB0_65 Depth 3
                                        #         Child Loop BB0_66 Depth 4
                                        #       Child Loop BB0_75 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #       Child Loop BB0_79 Depth 3
                                        #         Child Loop BB0_80 Depth 4
                                        #       Child Loop BB0_89 Depth 3
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_96 Depth 3
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	sd	s0, 48(sp)                      # 8-byte Folded Spill
.LBB0_51:                               #   Parent Loop BB0_47 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_52 Depth 4
	mv	a0, s1
	call	getc
	bne	a0, s5, .LBB0_54
.LBB0_52:                               #   Parent Loop BB0_47 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        #       Parent Loop BB0_51 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mv	a0, s1
	call	getc
	beq	a0, s6, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_52 Depth=4
	bne	a0, s7, .LBB0_52
.LBB0_54:                               #   in Loop: Header=BB0_51 Depth=3
	addi	a1, a0, 1
	bltu	s8, a1, .LBB0_58
# %bb.55:                               #   in Loop: Header=BB0_51 Depth=3
	srl	a2, s4, a1
	andi	a2, a2, 1
	bnez	a2, .LBB0_51
# %bb.56:                               #   in Loop: Header=BB0_50 Depth=2
	bnez	a1, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_50 Depth=2
	mv	s0, a0
	ld	a0, 0(s10)
	ld	a1, 0(a0)
	sw	s2, 40(a0)
	mv	a0, s10
	jalr	a1
	j	.LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_50 Depth=2
	mv	s0, a0
	addiw	a0, a0, -58
	li	a1, -11
	bltu	a1, a0, .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_50 Depth=2
	ld	a0, 0(s10)
	ld	a1, 0(a0)
	sw	s2, 40(a0)
	mv	a0, s10
	jalr	a1
.LBB0_60:                               #   in Loop: Header=BB0_50 Depth=2
	addiw	s3, s0, -48
	mv	a0, s1
	call	getc
	bne	a0, s5, .LBB0_63
.LBB0_61:                               #   Parent Loop BB0_47 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a0, s1
	call	getc
	beq	a0, s6, .LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=3
	bne	a0, s7, .LBB0_61
.LBB0_63:                               #   Parent Loop BB0_47 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addiw	a0, a0, -48
	bgeu	a0, s6, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_63 Depth=3
	mul	a1, s3, s6
	addw	s3, a0, a1
	mv	a0, s1
	call	getc
	beq	a0, s5, .LBB0_61
	j	.LBB0_63
.LBB0_65:                               #   Parent Loop BB0_47 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_66 Depth 4
	mv	a0, s1
	call	getc
	bne	a0, s5, .LBB0_68
.LBB0_66:                               #   Parent Loop BB0_47 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        #       Parent Loop BB0_65 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mv	a0, s1
	call	getc
	beq	a0, s6, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=4
	bne	a0, s7, .LBB0_66
.LBB0_68:                               #   in Loop: Header=BB0_65 Depth=3
	addi	a1, a0, 1
	bltu	s8, a1, .LBB0_72
# %bb.69:                               #   in Loop: Header=BB0_65 Depth=3
	srl	a2, s4, a1
	andi	a2, a2, 1
	bnez	a2, .LBB0_65
# %bb.70:                               #   in Loop: Header=BB0_50 Depth=2
	bnez	a1, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_50 Depth=2
	mv	s0, a0
	ld	a0, 0(s10)
	ld	a1, 0(a0)
	sw	s2, 40(a0)
	mv	a0, s10
	jalr	a1
	j	.LBB0_73
.LBB0_72:                               #   in Loop: Header=BB0_50 Depth=2
	mv	s0, a0
	addiw	a0, a0, -58
	li	a1, -11
	bltu	a1, a0, .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_50 Depth=2
	ld	a0, 0(s10)
	ld	a1, 0(a0)
	sw	s2, 40(a0)
	mv	a0, s10
	jalr	a1
.LBB0_74:                               #   in Loop: Header=BB0_50 Depth=2
	addiw	s9, s0, -48
	mv	a0, s1
	call	getc
	bne	a0, s5, .LBB0_77
.LBB0_75:                               #   Parent Loop BB0_47 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a0, s1
	call	getc
	beq	a0, s6, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_75 Depth=3
	bne	a0, s7, .LBB0_75
.LBB0_77:                               #   Parent Loop BB0_47 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addiw	a0, a0, -48
	bgeu	a0, s6, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_77 Depth=3
	mul	a1, s9, s6
	addw	s9, a0, a1
	mv	a0, s1
	call	getc
	beq	a0, s5, .LBB0_75
	j	.LBB0_77
.LBB0_79:                               #   Parent Loop BB0_47 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_80 Depth 4
	mv	a0, s1
	call	getc
	bne	a0, s5, .LBB0_82
.LBB0_80:                               #   Parent Loop BB0_47 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mv	a0, s1
	call	getc
	beq	a0, s6, .LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_80 Depth=4
	bne	a0, s7, .LBB0_80
.LBB0_82:                               #   in Loop: Header=BB0_79 Depth=3
	addi	a1, a0, 1
	bltu	s8, a1, .LBB0_86
# %bb.83:                               #   in Loop: Header=BB0_79 Depth=3
	srl	a2, s4, a1
	andi	a2, a2, 1
	bnez	a2, .LBB0_79
# %bb.84:                               #   in Loop: Header=BB0_50 Depth=2
	bnez	a1, .LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_50 Depth=2
	mv	s0, a0
	ld	a0, 0(s10)
	ld	a1, 0(a0)
	sw	s2, 40(a0)
	mv	a0, s10
	jalr	a1
	j	.LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_50 Depth=2
	mv	s0, a0
	addiw	a0, a0, -58
	li	a1, -11
	bltu	a1, a0, .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_50 Depth=2
	ld	a0, 0(s10)
	ld	a1, 0(a0)
	sw	s2, 40(a0)
	mv	a0, s10
	jalr	a1
.LBB0_88:                               #   in Loop: Header=BB0_50 Depth=2
	addiw	s2, s0, -48
	mv	a0, s1
	call	getc
	bne	a0, s5, .LBB0_91
.LBB0_89:                               #   Parent Loop BB0_47 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mv	a0, s1
	call	getc
	beq	a0, s6, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_89 Depth=3
	bne	a0, s7, .LBB0_89
.LBB0_91:                               #   Parent Loop BB0_47 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addiw	a0, a0, -48
	bgeu	a0, s6, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_91 Depth=3
	mul	a1, s2, s6
	addw	s2, a0, a1
	mv	a0, s1
	call	getc
	beq	a0, s5, .LBB0_89
	j	.LBB0_91
.LBB0_93:                               #   in Loop: Header=BB0_50 Depth=2
	ld	a0, 160(s10)
	ld	s11, 0(a0)
	ld	a5, 8(a0)
	lw	s0, 156(s10)
	ld	a6, 16(a0)
	blez	s0, .LBB0_48
# %bb.94:                               #   in Loop: Header=BB0_50 Depth=2
	mv	a0, s11
	mv	a1, a5
	mv	a2, a6
	mv	a3, s0
	j	.LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_96 Depth=3
	addi	a3, a3, -1
	addi	a2, a2, 1
	addi	a1, a1, 1
	addi	a0, a0, 1
	beqz	a3, .LBB0_99
.LBB0_96:                               #   Parent Loop BB0_47 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lbu	a4, 0(a0)
	bne	s3, a4, .LBB0_95
# %bb.97:                               #   in Loop: Header=BB0_96 Depth=3
	lbu	a4, 0(a1)
	bne	s9, a4, .LBB0_95
# %bb.98:                               #   in Loop: Header=BB0_96 Depth=3
	lbu	a4, 0(a2)
	bne	s2, a4, .LBB0_95
	j	.LBB0_49
.LBB0_99:                               #   in Loop: Header=BB0_50 Depth=2
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	li	a0, 256
	blt	s0, a0, .LBB0_48
# %bb.100:                              #   in Loop: Header=BB0_50 Depth=2
	ld	a0, 0(s10)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a0, 0(s10)
	ld	a1, 0(a0)
	mv	a0, s10
	sd	a5, 40(sp)                      # 8-byte Folded Spill
	sd	a6, 32(sp)                      # 8-byte Folded Spill
	jalr	a1
	ld	a6, 32(sp)                      # 8-byte Folded Reload
	ld	a5, 40(sp)                      # 8-byte Folded Reload
	j	.LBB0_48
.LBB0_101:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	mv	a0, s1
	call	getc
	mv	s3, a0
	bne	a0, s0, .LBB0_4
.LBB0_102:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	mv	a0, s1
	call	getc
	li	s0, -1
	bne	a0, s0, .LBB0_5
.LBB0_103:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	mv	a0, s1
	call	getc
	bne	a0, s0, .LBB0_6
.LBB0_104:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	mv	a0, s1
	call	getc
	li	s0, -1
	bne	a0, s0, .LBB0_7
.LBB0_105:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	mv	a0, s1
	call	getc
	bne	a0, s0, .LBB0_8
.LBB0_106:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	mv	a0, s1
	call	getc
	li	s0, -1
	bne	a0, s0, .LBB0_9
.LBB0_107:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	mv	a0, s1
	call	getc
	bne	a0, s0, .LBB0_10
.LBB0_108:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	mv	a0, s1
	call	getc
	li	s0, -1
	bne	a0, s0, .LBB0_11
.LBB0_109:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	mv	a0, s1
	call	getc
	mv	s4, a0
	bne	a0, s0, .LBB0_12
.LBB0_110:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	mv	a0, s1
	call	getc
	li	s0, -1
	bne	a0, s0, .LBB0_13
.LBB0_111:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	mv	a0, s1
	call	getc
	bne	a0, s0, .LBB0_14
.LBB0_112:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
	li	a0, 73
	bne	s2, a0, .LBB0_114
.LBB0_113:
	li	a0, 70
	beq	s3, a0, .LBB0_115
.LBB0_114:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
.LBB0_115:
	andi	a0, s4, 128
	bnez	a0, .LBB0_117
# %bb.116:
	ld	a0, 0(s6)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s6
	jalr	a1
.LBB0_117:
	li	s5, 0
	andi	a0, s4, 7
	li	a1, 2
	sllw	s6, a1, a0
	li	s7, -1
	li	a0, 1
	slli	a0, a0, 40
	addi	a0, a0, 57
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	j	.LBB0_120
.LBB0_118:                              #   in Loop: Header=BB0_120 Depth=1
	add	s8, s8, s11
	sb	s2, 0(s8)
	add	s0, s0, s11
	sb	s3, 0(s0)
	add	s9, s9, s11
	sb	s4, 0(s9)
	lw	a0, 156(s10)
	addi	a0, a0, 1
	sw	a0, 156(s10)
.LBB0_119:                              #   in Loop: Header=BB0_120 Depth=1
	addiw	s5, s5, 1
	beq	s5, s6, .LBB0_132
.LBB0_120:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_127 Depth 2
	mv	a0, s1
	call	getc
	mv	s2, a0
	mv	a0, s1
	call	getc
	mv	s3, a0
	mv	a0, s1
	call	getc
	mv	s4, a0
	beq	s2, s7, .LBB0_123
# %bb.121:                              #   in Loop: Header=BB0_120 Depth=1
	beq	s3, s7, .LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_120 Depth=1
	bne	s4, s7, .LBB0_124
.LBB0_123:                              #   in Loop: Header=BB0_120 Depth=1
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	ld	a2, 0(a0)
	ld	a1, 0(a2)
	li	a3, 1038
	sw	a3, 40(a2)
	jalr	a1
.LBB0_124:                              #   in Loop: Header=BB0_120 Depth=1
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	a0, 160(s10)
	ld	s8, 0(a0)
	ld	s0, 8(a0)
	lw	s11, 156(s10)
	ld	s9, 16(a0)
	blez	s11, .LBB0_118
# %bb.125:                              #   in Loop: Header=BB0_120 Depth=1
	mv	a0, s8
	mv	a1, s0
	mv	a2, s9
	mv	a3, s11
	j	.LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_127 Depth=2
	addi	a3, a3, -1
	addi	a2, a2, 1
	addi	a1, a1, 1
	addi	a0, a0, 1
	beqz	a3, .LBB0_130
.LBB0_127:                              #   Parent Loop BB0_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a4, 0(a0)
	bne	s2, a4, .LBB0_126
# %bb.128:                              #   in Loop: Header=BB0_127 Depth=2
	lbu	a4, 0(a1)
	bne	s3, a4, .LBB0_126
# %bb.129:                              #   in Loop: Header=BB0_127 Depth=2
	lbu	a4, 0(a2)
	bne	s4, a4, .LBB0_126
	j	.LBB0_119
.LBB0_130:                              #   in Loop: Header=BB0_120 Depth=1
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	li	a0, 256
	blt	s11, a0, .LBB0_118
# %bb.131:                              #   in Loop: Header=BB0_120 Depth=1
	ld	a0, 0(s10)
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a0, 0(s10)
	ld	a1, 0(a0)
	mv	a0, s10
	jalr	a1
	j	.LBB0_118
.LBB0_132:
	ld	ra, 168(sp)                     # 8-byte Folded Reload
	ld	s0, 160(sp)                     # 8-byte Folded Reload
	ld	s1, 152(sp)                     # 8-byte Folded Reload
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	ld	s4, 128(sp)                     # 8-byte Folded Reload
	ld	s5, 120(sp)                     # 8-byte Folded Reload
	ld	s6, 112(sp)                     # 8-byte Folded Reload
	ld	s7, 104(sp)                     # 8-byte Folded Reload
	ld	s8, 96(sp)                      # 8-byte Folded Reload
	ld	s9, 88(sp)                      # 8-byte Folded Reload
	ld	s10, 80(sp)                     # 8-byte Folded Reload
	ld	s11, 72(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 176
	ret
.Lfunc_end0:
	.size	read_color_map, .Lfunc_end0-read_color_map
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function read_pbm_integer
	.type	read_pbm_integer,@function
read_pbm_integer:                       # @read_pbm_integer
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
	mv	s0, a1
	mv	s1, a0
	li	s2, 35
	li	s3, 10
	li	s4, -1
	li	s5, 33
	lui	a0, 2048
	addiw	a0, a0, 19
	slli	s6, a0, 10
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	mv	a0, s0
	call	getc
	bne	a0, s2, .LBB1_4
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mv	a0, s0
	call	getc
	beq	a0, s3, .LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=2
	bne	a0, s4, .LBB1_2
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	addi	a1, a0, 1
	bltu	s5, a1, .LBB1_8
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	srl	a2, s6, a1
	andi	a2, a2, 1
	bnez	a2, .LBB1_1
# %bb.6:
	bnez	a1, .LBB1_8
# %bb.7:
	mv	s2, a0
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
	j	.LBB1_9
.LBB1_8:
	mv	s2, a0
	addiw	a0, a0, -58
	li	a1, -11
	bltu	a1, a0, .LBB1_10
.LBB1_9:
	ld	a0, 0(s1)
	ld	a1, 0(a0)
	li	a2, 1038
	sw	a2, 40(a0)
	mv	a0, s1
	jalr	a1
.LBB1_10:
	addiw	s1, s2, -48
	li	s2, 35
	li	s3, 10
	li	s4, -1
	li	s5, 9
	mv	a0, s0
	call	getc
	bne	a0, s2, .LBB1_13
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	mv	a0, s0
	call	getc
	beq	a0, s3, .LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	bne	a0, s4, .LBB1_11
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	addiw	a0, a0, -48
	bltu	s5, a0, .LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	mul	s1, s1, s3
	addw	s1, a0, s1
	mv	a0, s0
	call	getc
	beq	a0, s2, .LBB1_11
	j	.LBB1_13
.LBB1_15:
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
.Lfunc_end1:
	.size	read_pbm_integer, .Lfunc_end1-read_pbm_integer
                                        # -- End function
	.option	pop
	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
