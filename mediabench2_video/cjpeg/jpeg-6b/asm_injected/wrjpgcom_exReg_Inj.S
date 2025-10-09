	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"wrjpgcom.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
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
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	ld	a1, 0(a1)
	mv	s4, a0
	lui	a0, %hi(progname)
	sd	a1, %lo(progname)(a0)
	beqz	a1, .LBB0_2
# %bb.1:
	lbu	a1, 0(a1)
	bnez	a1, .LBB0_3
.LBB0_2:
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	sd	a1, %lo(progname)(a0)
.LBB0_3:
	li	a0, 2
	blt	s4, a0, .LBB0_106
# %bb.4:
	sd	zero, 40(sp)                    # 8-byte Folded Spill
	sd	zero, 0(sp)                     # 8-byte Folded Spill
	li	s0, 0
	li	a0, -1
	srli	s11, a0, 32
	addiw	a0, s4, -1
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 8
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	li	s8, 34
	lui	a0, 16
	addiw	a0, a0, -536
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	li	s10, 32
	li	s9, 1
	li	a0, 1
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	j	.LBB0_8
.LBB0_5:                                #   in Loop: Header=BB0_8 Depth=1
	mv	s0, s2
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s0
	call	strlen
	sd	a0, 40(sp)                      # 8-byte Folded Spill
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addiw	s9, s9, 1
	bge	s9, s4, .LBB0_99
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_90 Depth 2
	slli	a0, s9, 3
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	add	a0, a1, a0
	ld	s5, 0(a0)
	lbu	s6, 0(s5)
	li	a0, 45
	bne	s6, a0, .LBB0_98
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	lbu	s1, 1(s5)
	beqz	s1, .LBB0_106
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_b_loc
	ld	s2, 0(a0)
	slli	a0, s1, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	s7, a0, 256
	mv	a0, s1
	beqz	s7, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	a1, s1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	li	a1, 114
	bne	a0, a1, .LBB0_38
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s3, 2(s5)
	beqz	s3, .LBB0_94
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s3, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s3, s3, 2
	add	a0, a0, s3
	lw	s3, 0(a0)
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 101
	bne	s3, a0, .LBB0_38
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s3, 3(s5)
	beqz	s3, .LBB0_94
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s3, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s3, s3, 2
	add	a0, a0, s3
	lw	s3, 0(a0)
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 112
	bne	s3, a0, .LBB0_38
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s3, 4(s5)
	beqz	s3, .LBB0_94
# %bb.22:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s3, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s3, s3, 2
	add	a0, a0, s3
	lw	s3, 0(a0)
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 108
	bne	s3, a0, .LBB0_38
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s3, 5(s5)
	beqz	s3, .LBB0_94
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s3, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s3, s3, 2
	add	a0, a0, s3
	lw	s3, 0(a0)
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 97
	bne	s3, a0, .LBB0_38
# %bb.29:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s3, 6(s5)
	beqz	s3, .LBB0_94
# %bb.30:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s3, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s3, s3, 2
	add	a0, a0, s3
	lw	s3, 0(a0)
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 99
	bne	s3, a0, .LBB0_38
# %bb.33:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s3, 7(s5)
	beqz	s3, .LBB0_94
# %bb.34:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s3, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s3, s3, 2
	add	a0, a0, s3
	lw	s3, 0(a0)
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 101
	bne	s3, a0, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	a0, 8(s5)
	beqz	a0, .LBB0_94
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	mv	a0, s1
	beqz	s7, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	a1, s1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
.LBB0_40:                               #   in Loop: Header=BB0_8 Depth=1
	li	a1, 99
	bne	a0, a1, .LBB0_58
# %bb.41:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s3, 2(s5)
	beqz	s3, .LBB0_58
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s3, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s3, s3, 2
	add	a0, a0, s3
	lw	s3, 0(a0)
.LBB0_44:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 102
	bne	s3, a0, .LBB0_58
# %bb.45:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s3, 3(s5)
	beqz	s3, .LBB0_95
# %bb.46:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s3, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s3, s3, 2
	add	a0, a0, s3
	lw	s3, 0(a0)
.LBB0_48:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 105
	bne	s3, a0, .LBB0_58
# %bb.49:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s3, 4(s5)
	beqz	s3, .LBB0_95
# %bb.50:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s3, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s3, s3, 2
	add	a0, a0, s3
	lw	s3, 0(a0)
.LBB0_52:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 108
	bne	s3, a0, .LBB0_58
# %bb.53:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s3, 5(s5)
	beqz	s3, .LBB0_95
# %bb.54:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s3, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s3, s3, 2
	add	a0, a0, s3
	lw	s3, 0(a0)
.LBB0_56:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 101
	bne	s3, a0, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	a0, 6(s5)
	beqz	a0, .LBB0_95
.LBB0_58:                               #   in Loop: Header=BB0_8 Depth=1
	beqz	s7, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s1, s1, 2
	add	a0, a0, s1
	lw	s1, 0(a0)
.LBB0_60:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 99
	bne	s1, a0, .LBB0_106
# %bb.61:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s0, 2(s5)
	beqz	s0, .LBB0_86
# %bb.62:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s0, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s0, s0, 2
	add	a0, a0, s0
	lw	s0, 0(a0)
.LBB0_64:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 111
	bne	s0, a0, .LBB0_106
# %bb.65:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s0, 3(s5)
	beqz	s0, .LBB0_86
# %bb.66:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s0, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s0, s0, 2
	add	a0, a0, s0
	lw	s0, 0(a0)
.LBB0_68:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 109
	bne	s0, a0, .LBB0_106
# %bb.69:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s0, 4(s5)
	beqz	s0, .LBB0_86
# %bb.70:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s0, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s0, s0, 2
	add	a0, a0, s0
	lw	s0, 0(a0)
.LBB0_72:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 109
	bne	s0, a0, .LBB0_106
# %bb.73:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s0, 5(s5)
	beqz	s0, .LBB0_86
# %bb.74:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s0, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s0, s0, 2
	add	a0, a0, s0
	lw	s0, 0(a0)
.LBB0_76:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 101
	bne	s0, a0, .LBB0_106
# %bb.77:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s0, 6(s5)
	beqz	s0, .LBB0_86
# %bb.78:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s0, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_80
# %bb.79:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s0, s0, 2
	add	a0, a0, s0
	lw	s0, 0(a0)
.LBB0_80:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 110
	bne	s0, a0, .LBB0_106
# %bb.81:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	s0, 7(s5)
	beqz	s0, .LBB0_86
# %bb.82:                               #   in Loop: Header=BB0_8 Depth=1
	slli	a0, s0, 1
	add	a0, s2, a0
	lhu	a0, 0(a0)
	andi	a0, a0, 256
	beqz	a0, .LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_8 Depth=1
	call	__ctype_tolower_loc
	ld	a0, 0(a0)
	slli	s0, s0, 2
	add	a0, a0, s0
	lw	s0, 0(a0)
.LBB0_84:                               #   in Loop: Header=BB0_8 Depth=1
	li	a0, 116
	bne	s0, a0, .LBB0_106
# %bb.85:                               #   in Loop: Header=BB0_8 Depth=1
	lbu	a0, 8(s5)
	bnez	a0, .LBB0_106
.LBB0_86:                               #   in Loop: Header=BB0_8 Depth=1
	addiw	s9, s9, 1
	bge	s9, s4, .LBB0_106
# %bb.87:                               #   in Loop: Header=BB0_8 Depth=1
	slli	s1, s9, 3
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	add	a0, a0, s1
	ld	s2, 0(a0)
	lbu	a0, 0(s2)
	bne	a0, s8, .LBB0_5
# %bb.88:                               #   in Loop: Header=BB0_8 Depth=1
	ld	a0, 24(sp)                      # 8-byte Folded Reload
	call	malloc
	beqz	a0, .LBB0_116
# %bb.89:                               #   in Loop: Header=BB0_8 Depth=1
	mv	s0, a0
	addi	a1, s2, 1
	call	strcpy
	ld	a0, 16(sp)                      # 8-byte Folded Reload
	add	s1, a0, s1
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	sub	s2, a0, s9
	mv	a0, s0
	call	strlen
	and	a1, a0, s11
	bnez	a1, .LBB0_92
.LBB0_90:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	s2, .LBB0_97
# %bb.91:                               #   in Loop: Header=BB0_90 Depth=2
	mv	a0, s0
	call	strlen
	ld	a1, 0(s1)
	add	a0, s0, a0
	sb	zero, 1(a0)
	sb	s10, 0(a0)
	mv	a0, s0
	call	strcat
	addi	s1, s1, 8
	addi	s2, s2, -1
	addi	s9, s9, 1
	mv	a0, s0
	call	strlen
	and	a1, a0, s11
	beqz	a1, .LBB0_90
.LBB0_92:                               #   in Loop: Header=BB0_8 Depth=1
	add	a0, a0, s11
	and	a0, a0, s11
	add	a0, s0, a0
	lbu	a1, 0(a0)
	bne	a1, s8, .LBB0_90
# %bb.93:                               #   in Loop: Header=BB0_8 Depth=1
	sb	zero, 0(a0)
	j	.LBB0_6
.LBB0_94:                               #   in Loop: Header=BB0_8 Depth=1
	sd	zero, 8(sp)                     # 8-byte Folded Spill
	j	.LBB0_7
.LBB0_95:                               #   in Loop: Header=BB0_8 Depth=1
	addiw	s9, s9, 1
	bge	s9, s4, .LBB0_106
# %bb.96:                               #   in Loop: Header=BB0_8 Depth=1
	slli	s1, s9, 3
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	add	s1, a0, s1
	ld	a0, 0(s1)
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	call	fopen
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	bnez	a0, .LBB0_7
	j	.LBB0_105
.LBB0_97:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	lui	a2, %hi(.L.str.8)
	addi	a2, a2, %lo(.L.str.8)
	call	fprintf
	li	a0, 1
	call	exit
.LBB0_98:
	li	a1, 1
	j	.LBB0_100
.LBB0_99:
	addi	a0, s6, -45
	snez	a1, a0
.LBB0_100:
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	beqz	s0, .LBB0_102
# %bb.101:
	bnez	s6, .LBB0_106
.LBB0_102:
	or	a0, s0, s6
	snez	a0, a0
	or	a0, a0, a1
	beqz	a0, .LBB0_106
# %bb.103:
	beqz	a1, .LBB0_107
# %bb.104:
	slli	s1, s9, 3
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	add	s1, a0, s1
	ld	a0, 0(s1)
	lui	a1, %hi(.L.str.10)
	addi	a1, a1, %lo(.L.str.10)
	call	fopen
	lui	a1, %hi(infile)
	sd	a0, %lo(infile)(a1)
	bnez	a0, .LBB0_108
.LBB0_105:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	ld	a3, 0(s1)
	lui	a1, %hi(.L.str.4)
	addi	a1, a1, %lo(.L.str.4)
	call	fprintf
	li	a0, 1
	call	exit
.LBB0_106:
	call	usage
.LBB0_107:
	lui	a0, %hi(stdin)
	ld	a0, %lo(stdin)(a0)
	lui	a1, %hi(infile)
	sd	a0, %lo(infile)(a1)
.LBB0_108:
	ld	a0, 32(sp)                      # 8-byte Folded Reload
	bge	s9, a0, .LBB0_110
# %bb.109:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(.L.str.11)
	addi	a1, a1, %lo(.L.str.11)
	call	fprintf
	call	usage
.LBB0_110:
	lui	a0, %hi(stdout)
	ld	a0, %lo(stdout)(a0)
	lui	a1, %hi(outfile)
	sd	a0, %lo(outfile)(a1)
	beqz	s0, .LBB0_115
.LBB0_111:
	lui	s1, %hi(infile)
	ld	a0, %lo(infile)(s1)
	call	getc
	ld	a1, %lo(infile)(s1)
	mv	s2, a0
	mv	a0, a1
	call	getc
	li	a1, 255
	bne	s2, a1, .LBB0_117
# %bb.112:
	li	a1, 216
	bne	a0, a1, .LBB0_117
# %bb.113:
	lui	s1, %hi(outfile)
	ld	a1, %lo(outfile)(s1)
	li	a0, 255
	call	putc
	ld	a1, %lo(outfile)(s1)
	li	a0, 216
	call	putc
	lui	a0, %hi(infile)
	ld	a0, %lo(infile)(a0)
	call	getc
	li	a1, -1
	bne	a0, a1, .LBB0_126
.LBB0_114:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	lui	a2, %hi(.L.str.32)
	addi	a2, a2, %lo(.L.str.32)
	call	fprintf
	li	a0, 1
	call	exit
.LBB0_115:
	lui	a0, 16
	addiw	a0, a0, -536
	call	malloc
	bnez	a0, .LBB0_118
.LBB0_116:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	lui	a2, %hi(.L.str.7)
	addi	a2, a2, %lo(.L.str.7)
	call	fprintf
	li	a0, 1
	call	exit
.LBB0_117:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	lui	a2, %hi(.L.str.30)
	addi	a2, a2, %lo(.L.str.30)
	call	fprintf
	li	a0, 1
	call	exit
.LBB0_118:
	mv	s0, a0
	mv	s3, s6
	bnez	s6, .LBB0_120
# %bb.119:
	lui	a0, %hi(stdin)
	ld	s3, %lo(stdin)(a0)
.LBB0_120:
	mv	a0, s3
	call	getc
	li	s5, 0
	li	s1, -1
	beq	a0, s1, .LBB0_124
# %bb.121:                              # %.preheader16
	lui	a1, 16
	addiw	s2, a1, -536
	mv	s4, s0
.LBB0_122:                              # =>This Inner Loop Header: Depth=1
	beqz	s2, .LBB0_155
# %bb.123:                              #   in Loop: Header=BB0_122 Depth=1
	sb	a0, 0(s4)
	mv	a0, s3
	call	getc
	addi	s4, s4, 1
	addi	s5, s5, 1
	addi	s2, s2, -1
	bne	a0, s1, .LBB0_122
.LBB0_124:
	sd	s5, 40(sp)                      # 8-byte Folded Spill
	beqz	s6, .LBB0_111
# %bb.125:
	mv	a0, s6
	call	fclose
	j	.LBB0_111
.LBB0_126:
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	bnez	a1, .LBB0_144
# %bb.127:                              # %.preheader4
	li	s3, 0
	li	s1, 255
	lui	s4, %hi(infile)
	li	s5, -1
	li	s6, 62
	lui	s7, %hi(outfile)
	li	s8, 2
	lui	a1, 8207
	addiw	s9, a1, -273
	li	s10, 26
	lui	s11, %hi(stderr)
	lui	s2, %hi(.L.str.31)
	addi	s2, s2, %lo(.L.str.31)
	j	.LBB0_129
.LBB0_128:                              #   in Loop: Header=BB0_129 Depth=1
	ld	a0, %lo(infile)(s4)
	addiw	s3, s3, 1
	call	getc
	beq	a0, s5, .LBB0_114
.LBB0_129:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_130 Depth 2
                                        #     Child Loop BB0_137 Depth 2
	bne	a0, s1, .LBB0_128
.LBB0_130:                              #   Parent Loop BB0_129 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(infile)(s4)
	call	getc
	beq	a0, s1, .LBB0_130
# %bb.131:                              #   in Loop: Header=BB0_129 Depth=1
	beq	a0, s5, .LBB0_114
# %bb.132:                              #   in Loop: Header=BB0_129 Depth=1
	bnez	s3, .LBB0_143
# %bb.133:                              #   in Loop: Header=BB0_129 Depth=1
	addi	a1, a0, -192
	bltu	s6, a1, .LBB0_142
.LBB0_134:                              #   in Loop: Header=BB0_129 Depth=1
	bne	a1, s6, .LBB0_140
# %bb.135:                              #   in Loop: Header=BB0_129 Depth=1
	call	read_2_bytes
	bltu	a0, s8, .LBB0_161
# %bb.136:                              #   in Loop: Header=BB0_129 Depth=1
	addiw	s3, a0, -2
	beqz	s3, .LBB0_139
.LBB0_137:                              #   Parent Loop BB0_129 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(infile)(s4)
	call	getc
	beq	a0, s5, .LBB0_114
# %bb.138:                              #   in Loop: Header=BB0_137 Depth=2
	addiw	s3, s3, -1
	bnez	s3, .LBB0_137
.LBB0_139:                              #   in Loop: Header=BB0_129 Depth=1
	ld	a0, %lo(infile)(s4)
	call	getc
	li	s3, 0
	bne	a0, s5, .LBB0_129
	j	.LBB0_114
.LBB0_140:                              #   in Loop: Header=BB0_129 Depth=1
	srl	a2, s9, a1
	andi	a2, a2, 1
	bnez	a2, .LBB0_156
# %bb.141:                              #   in Loop: Header=BB0_129 Depth=1
	beq	a1, s10, .LBB0_160
.LBB0_142:                              #   in Loop: Header=BB0_129 Depth=1
	ld	a1, %lo(outfile)(s7)
	mv	s3, a0
	li	a0, 255
	call	putc
	ld	a1, %lo(outfile)(s7)
	mv	a0, s3
	call	putc
	call	copy_variable
	ld	a0, %lo(infile)(s4)
	call	getc
	li	s3, 0
	bne	a0, s5, .LBB0_129
	j	.LBB0_114
.LBB0_143:                              #   in Loop: Header=BB0_129 Depth=1
	ld	a3, %lo(stderr)(s11)
	li	a1, 41
	li	a2, 1
	mv	s3, a0
	mv	a0, s2
	call	fwrite
	mv	a0, s3
	addi	a1, s3, -192
	bgeu	s6, a1, .LBB0_134
	j	.LBB0_142
.LBB0_144:                              # %.preheader11
	li	s3, 0
	li	s1, 255
	lui	s4, %hi(infile)
	li	s5, -1
	li	s6, 26
	lui	s7, %hi(outfile)
	lui	a1, 8207
	addiw	s8, a1, -273
	lui	s9, %hi(stderr)
	lui	s2, %hi(.L.str.31)
	addi	s2, s2, %lo(.L.str.31)
	j	.LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_146 Depth=1
	ld	a0, %lo(infile)(s4)
	addiw	s3, s3, 1
	call	getc
	beq	a0, s5, .LBB0_114
.LBB0_146:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_147 Depth 2
	bne	a0, s1, .LBB0_145
.LBB0_147:                              #   Parent Loop BB0_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, %lo(infile)(s4)
	call	getc
	beq	a0, s1, .LBB0_147
# %bb.148:                              #   in Loop: Header=BB0_146 Depth=1
	beq	a0, s5, .LBB0_114
# %bb.149:                              #   in Loop: Header=BB0_146 Depth=1
	bnez	s3, .LBB0_154
# %bb.150:                              #   in Loop: Header=BB0_146 Depth=1
	addi	a1, a0, -192
	bltu	s6, a1, .LBB0_153
.LBB0_151:                              #   in Loop: Header=BB0_146 Depth=1
	srl	a2, s8, a1
	andi	a2, a2, 1
	bnez	a2, .LBB0_156
# %bb.152:                              #   in Loop: Header=BB0_146 Depth=1
	beq	a1, s6, .LBB0_160
.LBB0_153:                              #   in Loop: Header=BB0_146 Depth=1
	ld	a1, %lo(outfile)(s7)
	mv	s3, a0
	li	a0, 255
	call	putc
	ld	a1, %lo(outfile)(s7)
	mv	a0, s3
	call	putc
	call	copy_variable
	ld	a0, %lo(infile)(s4)
	call	getc
	li	s3, 0
	bne	a0, s5, .LBB0_146
	j	.LBB0_114
.LBB0_154:                              #   in Loop: Header=BB0_146 Depth=1
	ld	a3, %lo(stderr)(s9)
	li	a1, 41
	li	a2, 1
	mv	s3, a0
	mv	a0, s2
	call	fwrite
	mv	a0, s3
	addi	a1, s3, -192
	bgeu	s6, a1, .LBB0_151
	j	.LBB0_153
.LBB0_155:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.12)
	addi	a1, a1, %lo(.L.str.12)
	lui	a2, 16
	addiw	a2, a2, -536
	call	fprintf
	li	a0, 1
	call	exit
.LBB0_156:                              # %.loopexit13
	mv	s2, a0
	ld	s4, 40(sp)                      # 8-byte Folded Reload
	sext.w	a0, s4
	beqz	a0, .LBB0_159
# %bb.157:
	lui	s1, %hi(outfile)
	ld	a1, %lo(outfile)(s1)
	li	a0, 255
	call	putc
	ld	a1, %lo(outfile)(s1)
	li	a0, 254
	call	putc
	ld	a1, %lo(outfile)(s1)
	addi	s3, s4, 2
	slli	a0, s3, 48
	srli	a0, a0, 56
	call	putc
	ld	a1, %lo(outfile)(s1)
	andi	a0, s3, 255
	call	putc
	addi	a0, s4, -1
	slli	a0, a0, 32
	srli	a0, a0, 32
	add	a0, a0, s0
	addi	s3, a0, 1
.LBB0_158:                              # =>This Inner Loop Header: Depth=1
	lbu	a0, 0(s0)
	ld	a1, %lo(outfile)(s1)
	addi	s4, s0, 1
	call	putc
	mv	s0, s4
	bne	s4, s3, .LBB0_158
.LBB0_159:
	mv	a0, s2
	call	write_marker
	call	copy_rest_of_file
	li	a0, 0
	call	exit
.LBB0_160:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	lui	a2, %hi(.L.str.29)
	addi	a2, a2, %lo(.L.str.29)
	call	fprintf
	li	a0, 1
	call	exit
.LBB0_161:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	lui	a2, %hi(.L.str.33)
	addi	a2, a2, %lo(.L.str.33)
	call	fprintf
	li	a0, 1
	call	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function usage
	.type	usage,@function
usage:                                  # @usage
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(stderr)
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.13)
	addi	a0, a0, %lo(.L.str.13)
	li	a1, 51
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.14)
	addi	a0, a0, %lo(.L.str.14)
	li	a1, 51
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stderr)(s0)
	lui	a1, %hi(progname)
	ld	a2, %lo(progname)(a1)
	lui	a1, %hi(.L.str.15)
	addi	a1, a1, %lo(.L.str.15)
	call	fprintf
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.16)
	addi	a0, a0, %lo(.L.str.16)
	li	a1, 12
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.17)
	addi	a0, a0, %lo(.L.str.17)
	li	a1, 37
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.18)
	addi	a0, a0, %lo(.L.str.18)
	li	a1, 48
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.19)
	addi	a0, a0, %lo(.L.str.19)
	li	a1, 50
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.20)
	addi	a0, a0, %lo(.L.str.20)
	li	a1, 48
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.21)
	addi	a0, a0, %lo(.L.str.21)
	li	a1, 56
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.22)
	addi	a0, a0, %lo(.L.str.22)
	li	a1, 23
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.23)
	addi	a0, a0, %lo(.L.str.23)
	li	a1, 66
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.24)
	addi	a0, a0, %lo(.L.str.24)
	li	a1, 51
	li	a2, 1
	call	fwrite
	ld	a0, %lo(stderr)(s0)
	lui	a1, %hi(.L.str.25)
	addi	a1, a1, %lo(.L.str.25)
	lui	a2, 16
	addiw	a2, a2, -536
	call	fprintf
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	li	a1, 56
	li	a2, 1
	call	fwrite
	ld	a3, %lo(stderr)(s0)
	lui	a0, %hi(.L.str.27)
	addi	a0, a0, %lo(.L.str.27)
	li	a1, 34
	li	a2, 1
	call	fwrite
	li	a0, 1
	call	exit
.Lfunc_end1:
	.size	usage, .Lfunc_end1-usage
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function write_marker
	.type	write_marker,@function
write_marker:                           # @write_marker
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(outfile)
	ld	a1, %lo(outfile)(s1)
	mv	s0, a0
	li	a0, 255
	call	putc
	ld	a1, %lo(outfile)(s1)
	mv	a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	tail	putc
.Lfunc_end2:
	.size	write_marker, .Lfunc_end2-write_marker
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function copy_rest_of_file
	.type	copy_rest_of_file,@function
copy_rest_of_file:                      # @copy_rest_of_file
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(infile)
	ld	a0, %lo(infile)(s0)
	call	getc
	li	s1, -1
	beq	a0, s1, .LBB3_3
# %bb.1:                                # %.preheader
	lui	s2, %hi(outfile)
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	ld	a1, %lo(outfile)(s2)
	call	putc
	ld	a0, %lo(infile)(s0)
	call	getc
	bne	a0, s1, .LBB3_2
.LBB3_3:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	copy_rest_of_file, .Lfunc_end3-copy_rest_of_file
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function copy_variable
	.type	copy_variable,@function
copy_variable:                          # @copy_variable
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	call	read_2_bytes
	lui	s1, %hi(outfile)
	ld	a1, %lo(outfile)(s1)
	mv	s0, a0
	slli	a0, a0, 48
	srli	a0, a0, 56
	call	putc
	ld	a1, %lo(outfile)(s1)
	andi	a0, s0, 255
	call	putc
	li	a0, 1
	bgeu	a0, s0, .LBB4_7
# %bb.1:
	addiw	s0, s0, -2
	beqz	s0, .LBB4_5
# %bb.2:                                # %.preheader
	lui	s1, %hi(infile)
	li	s2, -1
	lui	s3, %hi(outfile)
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	ld	a0, %lo(infile)(s1)
	call	getc
	beq	a0, s2, .LBB4_6
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	ld	a1, %lo(outfile)(s3)
	call	putc
	addiw	s0, s0, -1
	bnez	s0, .LBB4_3
.LBB4_5:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB4_6:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	lui	a2, %hi(.L.str.32)
	addi	a2, a2, %lo(.L.str.32)
	call	fprintf
	li	a0, 1
	call	exit
.LBB4_7:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	lui	a2, %hi(.L.str.33)
	addi	a2, a2, %lo(.L.str.33)
	call	fprintf
	li	a0, 1
	call	exit
.Lfunc_end4:
	.size	copy_variable, .Lfunc_end4-copy_variable
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.p2align	2                               # -- Begin function read_2_bytes
	.type	read_2_bytes,@function
read_2_bytes:                           # @read_2_bytes
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	lui	s1, %hi(infile)
	ld	a0, %lo(infile)(s1)
	call	getc
	li	s2, -1
	beq	a0, s2, .LBB5_3
# %bb.1:
	mv	s0, a0
	ld	a0, %lo(infile)(s1)
	call	getc
	beq	a0, s2, .LBB5_3
# %bb.2:
	slli	s0, s0, 8
	addw	a0, a0, s0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB5_3:
	lui	a0, %hi(stderr)
	ld	a0, %lo(stderr)(a0)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	lui	a2, %hi(.L.str.32)
	addi	a2, a2, %lo(.L.str.32)
	call	fprintf
	li	a0, 1
	call	exit
.Lfunc_end5:
	.size	read_2_bytes, .Lfunc_end5-read_2_bytes
                                        # -- End function
	.option	pop
	.type	progname,@object                # @progname
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
progname:
	.quad	0
	.size	progname, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"wrjpgcom"
	.size	.L.str, 9

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"r"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s: can't open %s\n"
	.size	.L.str.4, 19

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s\n"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Insufficient memory"
	.size	.L.str.7, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Missing ending quote mark"
	.size	.L.str.8, 26

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"rb"
	.size	.L.str.10, 3

	.type	infile,@object                  # @infile
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
infile:
	.quad	0
	.size	infile, 8

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"%s: only one input file\n"
	.size	.L.str.11, 25

	.type	outfile,@object                 # @outfile
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
outfile:
	.quad	0
	.size	outfile, 8

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"Comment text may not exceed %u bytes\n"
	.size	.L.str.12, 38

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"wrjpgcom inserts a textual comment in a JPEG file.\n"
	.size	.L.str.13, 52

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"You can add to or replace any existing comment(s).\n"
	.size	.L.str.14, 52

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Usage: %s [switches] "
	.size	.L.str.15, 22

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"[inputfile]\n"
	.size	.L.str.16, 13

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Switches (names may be abbreviated):\n"
	.size	.L.str.17, 38

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"  -replace         Delete any existing comments\n"
	.size	.L.str.18, 49

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"  -comment \"text\"  Insert comment with given text\n"
	.size	.L.str.19, 51

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"  -cfile name      Read comment from named file\n"
	.size	.L.str.20, 49

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Notice that you must put quotes around the comment text\n"
	.size	.L.str.21, 57

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"when you use -comment.\n"
	.size	.L.str.22, 24

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"If you do not give either -comment or -cfile on the command line,\n"
	.size	.L.str.23, 67

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"then the comment text is read from standard input.\n"
	.size	.L.str.24, 52

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"It can be multiple lines, up to %u characters total.\n"
	.size	.L.str.25, 54

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"You must specify an input JPEG file name when supplying\n"
	.size	.L.str.26, 57

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"comment text from standard input.\n"
	.size	.L.str.27, 35

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"SOS without prior SOFn"
	.size	.L.str.29, 23

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Not a JPEG file"
	.size	.L.str.30, 16

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Warning: garbage data found in JPEG file\n"
	.size	.L.str.31, 42

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Premature EOF in JPEG file"
	.size	.L.str.32, 27

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Erroneous JPEG marker length"
	.size	.L.str.33, 29

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
