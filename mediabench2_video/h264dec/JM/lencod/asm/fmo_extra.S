	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.file	"fmo.c"
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FmoInit                         # -- Begin function FmoInit
	.p2align	2
	.type	FmoInit,@function
FmoInit:                                # @FmoInit
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	sd	s1, 24(sp)                      # 8-byte Folded Spill
	sd	s2, 16(sp)                      # 8-byte Folded Spill
	sd	s3, 8(sp)                       # 8-byte Folded Spill
	sd	s4, 0(sp)                       # 8-byte Folded Spill
	lui	a3, 22
	addiw	s3, a3, 152
	add	s3, a0, s3
	lui	a0, %hi(FirstMBInSlice)
	li	a3, -1
	sw	a3, %lo(FirstMBInSlice)(a0)
	addi	a0, a0, %lo(FirstMBInSlice)
	sw	a3, 28(a0)
	sw	a3, 24(a0)
	sw	a3, 20(a0)
	sw	a3, 16(a0)
	sw	a3, 12(a0)
	sw	a3, 8(a0)
	sw	a3, 4(a0)
	lw	a0, 28(s3)
	lw	a3, 24(s3)
	mv	s0, a2
	mv	s1, a1
	lw	a1, 64(a1)
	mulw	a0, a3, a0
	lui	a2, %hi(PicSizeInMapUnits)
	li	a3, 6
	sw	a0, %lo(PicSizeInMapUnits)(a2)
	bne	a1, a3, .LBB0_3
# %bb.1:
	lw	a1, 172(s1)
	addiw	a1, a1, 1
	beq	a1, a0, .LBB0_3
# %bb.2:
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	li	a1, 500
	call	error
.LBB0_3:
	lui	s4, %hi(MapUnitToSliceGroupMap)
	ld	a0, %lo(MapUnitToSliceGroupMap)(s4)
	beqz	a0, .LBB0_5
# %bb.4:
	call	free
.LBB0_5:
	lui	a0, %hi(PicSizeInMapUnits)
	lwu	s2, %lo(PicSizeInMapUnits)(a0)
	mv	a0, s2
	call	malloc
	sd	a0, %lo(MapUnitToSliceGroupMap)(s4)
	beqz	a0, .LBB0_107
# %bb.6:
	lw	a2, 60(s1)
	beqz	a2, .LBB0_21
# %bb.7:
	lw	a1, 64(s1)
	li	a0, 6
	bltu	a0, a1, .LBB0_109
# %bb.8:
	slli	a1, a1, 2
	lui	a0, %hi(.LJTI0_0)
	addi	a0, a0, %lo(.LJTI0_0)
	add	a0, a1, a0
	lw	a0, 0(a0)
	jr	a0
.LBB0_9:
	li	a1, 0
	addi	a0, s1, 68
	lui	a2, %hi(MapUnitToSliceGroupMap)
	lui	a3, %hi(PicSizeInMapUnits)
	j	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	bgeu	a1, a5, .LBB0_22
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_15 Depth 3
	sext.w	a4, s2
	bgeu	a1, a4, .LBB0_22
# %bb.12:                               # %.preheader7
                                        #   in Loop: Header=BB0_11 Depth=1
	li	a4, 0
.LBB0_13:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
	slli	a5, a4, 32
	srli	a5, a5, 30
	sext.w	a6, s2
	add	a5, a0, a5
	bgeu	a1, a6, .LBB0_17
# %bb.14:                               # %.preheader5
                                        #   in Loop: Header=BB0_13 Depth=2
	li	a7, 0
	slli	a6, a1, 32
	srli	t0, a6, 32
.LBB0_15:                               #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a6, %lo(MapUnitToSliceGroupMap)(a2)
	add	t1, t0, a7
	add	a6, a6, t1
	sb	a4, 0(a6)
	lwu	a6, 0(a5)
	bgeu	a7, a6, .LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=3
	lwu	s2, %lo(PicSizeInMapUnits)(a3)
	addi	a7, a7, 1
	add	t1, t0, a7
	bltu	t1, s2, .LBB0_15
	j	.LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	lw	a6, 0(a5)
	j	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	lw	s2, %lo(PicSizeInMapUnits)(a3)
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=2
	lw	a7, 60(s1)
	addiw	a4, a4, 1
	add	a1, a1, a6
	addiw	a1, a1, 1
	sext.w	a5, s2
	bltu	a7, a4, .LBB0_10
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=2
	bltu	a1, a5, .LBB0_13
	j	.LBB0_10
.LBB0_21:
	li	a1, 0
	mv	a2, s2
	call	memset
.LBB0_22:
	lui	s2, %hi(MBAmap)
	ld	a0, %lo(MBAmap)(s2)
	beqz	a0, .LBB0_24
# %bb.23:
	call	free
.LBB0_24:
	lwu	s1, 40(s3)
	mv	a0, s1
	call	malloc
	sd	a0, %lo(MBAmap)(s2)
	beqz	a0, .LBB0_108
# %bb.25:
	lw	a0, 1148(s0)
	bnez	a0, .LBB0_27
# %bb.26:
	lw	a0, 0(s3)
	beqz	a0, .LBB0_31
.LBB0_27:
	beqz	s1, .LBB0_30
# %bb.28:                               # %.preheader3
	li	a0, 0
	lui	a1, %hi(MapUnitToSliceGroupMap)
	lui	a2, %hi(MBAmap)
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	ld	a3, %lo(MapUnitToSliceGroupMap)(a1)
	add	a3, a3, a0
	ld	a4, %lo(MBAmap)(a2)
	lbu	a3, 0(a3)
	add	a4, a4, a0
	sb	a3, 0(a4)
	lwu	a3, 40(s3)
	addi	a0, a0, 1
	bltu	a0, a3, .LBB0_29
.LBB0_30:
	li	a0, 0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	ld	s1, 24(sp)                      # 8-byte Folded Reload
	ld	s2, 16(sp)                      # 8-byte Folded Reload
	ld	s3, 8(sp)                       # 8-byte Folded Reload
	ld	s4, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.LBB0_31:
	lw	a0, 1152(s0)
	beqz	a0, .LBB0_93
# %bb.32:
	beqz	s1, .LBB0_30
# %bb.33:                               # %.preheader1
	li	a0, 0
	lui	a1, %hi(MapUnitToSliceGroupMap)
	lui	a2, %hi(MBAmap)
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	ld	a3, %lo(MapUnitToSliceGroupMap)(a1)
	srli	a4, a0, 1
	add	a3, a3, a4
	ld	a4, %lo(MBAmap)(a2)
	lbu	a3, 0(a3)
	add	a4, a4, a0
	sb	a3, 0(a4)
	lwu	a3, 40(s3)
	addi	a0, a0, 1
	bltu	a0, a3, .LBB0_34
	j	.LBB0_30
.LBB0_35:
	beqz	s2, .LBB0_22
# %bb.36:
	lw	a1, 168(s1)
	lw	a2, 212(s3)
	lw	a0, 164(s1)
	addi	a1, a1, 1
	mulw	a1, a1, a2
	sext.w	a2, s2
	bltu	a1, a2, .LBB0_38
# %bb.37:
	mv	a1, a2
.LBB0_38:
	beqz	a0, .LBB0_40
# %bb.39:
	sub	a1, s2, a1
.LBB0_40:
	li	a0, 0
	slli	a1, a1, 32
	srli	a1, a1, 32
	li	a2, 1
	lui	a3, %hi(MapUnitToSliceGroupMap)
	lui	a4, %hi(PicSizeInMapUnits)
	j	.LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_42 Depth=1
	ld	a6, %lo(MapUnitToSliceGroupMap)(a3)
	add	a6, a6, a0
	sb	a5, 0(a6)
	lwu	a5, %lo(PicSizeInMapUnits)(a4)
	addi	a0, a0, 1
	bgeu	a0, a5, .LBB0_22
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	lbu	a5, 164(s1)
	bltu	a0, a1, .LBB0_41
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=1
	sub	a5, a2, a5
	j	.LBB0_41
.LBB0_44:
	beqz	s2, .LBB0_48
# %bb.45:                               # %.preheader16
	li	a0, 0
	lui	a1, %hi(MapUnitToSliceGroupMap)
	lui	a2, %hi(PicSizeInMapUnits)
.LBB0_46:                               # =>This Inner Loop Header: Depth=1
	ld	a3, %lo(MapUnitToSliceGroupMap)(a1)
	lbu	a4, 60(s1)
	add	a3, a3, a0
	sb	a4, 0(a3)
	lwu	a3, %lo(PicSizeInMapUnits)(a2)
	addi	a0, a0, 1
	bltu	a0, a3, .LBB0_46
# %bb.47:
	lw	a2, 60(s1)
.LBB0_48:
	addiw	a4, a2, -1
	bltz	a4, .LBB0_22
# %bb.49:
	addi	a0, s1, 100
	addi	a1, s1, 132
	lui	a2, %hi(MapUnitToSliceGroupMap)
	j	.LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_51 Depth=1
	addi	a4, a3, -1
	blez	a3, .LBB0_22
.LBB0_51:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_54 Depth 2
                                        #       Child Loop BB0_55 Depth 3
                                        #     Child Loop BB0_53 Depth 2
	mv	a3, a4
	slli	a4, a4, 2
	add	a5, a0, a4
	lw	a6, 0(a5)
	lw	a7, 24(s3)
	add	a4, a1, a4
	lw	t0, 0(a4)
	divuw	a4, a6, a7
	divuw	a5, t0, a7
	bltu	a5, a4, .LBB0_50
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=1
	mul	t1, a4, a7
	subw	a6, a6, t1
	mul	a7, a5, a7
	subw	a7, t0, a7
	bgeu	a7, a6, .LBB0_54
.LBB0_53:                               #   Parent Loop BB0_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiw	a4, a4, 1
	bgeu	a5, a4, .LBB0_53
	j	.LBB0_50
.LBB0_54:                               #   Parent Loop BB0_51 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_55 Depth 3
	mv	t0, a6
.LBB0_55:                               #   Parent Loop BB0_51 Depth=1
                                        #     Parent Loop BB0_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	t1, 24(s3)
	ld	t2, %lo(MapUnitToSliceGroupMap)(a2)
	mul	t1, t1, a4
	add	t1, t1, t0
	slli	t1, t1, 32
	srli	t1, t1, 32
	add	t1, t2, t1
	addiw	t0, t0, 1
	sb	a3, 0(t1)
	bgeu	a7, t0, .LBB0_55
# %bb.56:                               #   in Loop: Header=BB0_54 Depth=2
	addiw	a4, a4, 1
	bgeu	a5, a4, .LBB0_54
	j	.LBB0_50
.LBB0_57:
	lw	a0, 168(s1)
	lw	a1, 212(s3)
	addi	a0, a0, 1
	mulw	a0, a0, a1
	sext.w	a1, s2
	bltu	a0, a1, .LBB0_59
# %bb.58:
	mv	a0, a1
.LBB0_59:
	beqz	s2, .LBB0_22
# %bb.60:                               # %.preheader18
	li	a1, 0
	lui	a2, %hi(MapUnitToSliceGroupMap)
	li	a3, 2
	lui	a4, %hi(PicSizeInMapUnits)
.LBB0_61:                               # =>This Inner Loop Header: Depth=1
	ld	a5, %lo(MapUnitToSliceGroupMap)(a2)
	add	a5, a5, a1
	sb	a3, 0(a5)
	lwu	a5, %lo(PicSizeInMapUnits)(a4)
	addi	a1, a1, 1
	bltu	a1, a5, .LBB0_61
# %bb.62:
	beqz	a5, .LBB0_22
# %bb.63:
	lw	n1, 164(s1)
	lw	a2, 28(s3)
	li	a1, 0
	lw	a3, 24(s3)
	addiw	n2, n1, -1
	subw	a2, a2, n1
	srliw	t2, a2, 1
	subw	a2, a3, n1
	srliw	t3, a2, 1
	lui	a2, %hi(MapUnitToSliceGroupMap)
	ld	a7, %lo(MapUnitToSliceGroupMap)(a2)
	li	a3, 2
	li	a4, -1
	lui	a5, %hi(PicSizeInMapUnits)
	li	a6, 1
	mv	t0, t2
	mv	t1, t3
	mv	t4, t2
	mv	t5, t3
	j	.LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_66 Depth=1
	li	n2, 0
	addiw	t5, t3, -1
	lw	n1, 164(s1)
	slti	t3, t3, 2
	addiw	t3, t3, -1
	and	t5, t3, t5
	slli	n1, n1, 1
	addiw	n1, n1, -1
	mv	t3, t5
.LBB0_65:                               #   in Loop: Header=BB0_66 Depth=1
	lw	n3, %lo(PicSizeInMapUnits)(a5)
	addi	t6, t6, -2
	seqz	t6, t6
	addw	a1, a1, t6
	bgeu	a1, n3, .LBB0_22
.LBB0_66:                               # =>This Inner Loop Header: Depth=1
	lw	t6, 24(s3)
	mul	t6, t6, t2
	add	t6, t6, t3
	slli	t6, t6, 32
	srli	t6, t6, 32
	add	n3, a7, t6
	lbu	t6, 0(n3)
	bne	t6, a3, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=1
	sltu	a7, a1, a0
	xori	a7, a7, 1
	sb	a7, 0(n3)
	ld	a7, %lo(MapUnitToSliceGroupMap)(a2)
.LBB0_68:                               #   in Loop: Header=BB0_66 Depth=1
	bne	n2, a4, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_66 Depth=1
	beq	t3, t5, .LBB0_64
.LBB0_70:                               #   in Loop: Header=BB0_66 Depth=1
	bne	n2, a6, .LBB0_75
# %bb.71:                               #   in Loop: Header=BB0_66 Depth=1
	bne	t3, t1, .LBB0_75
# %bb.72:                               #   in Loop: Header=BB0_66 Depth=1
	lw	n1, 24(s3)
	addiw	t1, t3, 1
	addiw	t3, n1, -1
	blt	t1, t3, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_66 Depth=1
	mv	t1, t3
.LBB0_74:                               #   in Loop: Header=BB0_66 Depth=1
	lw	t3, 164(s1)
	li	n2, 0
	slli	t3, t3, 1
	subw	n1, a6, t3
	mv	t3, t1
	j	.LBB0_65
.LBB0_75:                               #   in Loop: Header=BB0_66 Depth=1
	bne	n1, a4, .LBB0_78
# %bb.76:                               #   in Loop: Header=BB0_66 Depth=1
	bne	t2, t4, .LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_66 Depth=1
	li	n1, 0
	addiw	t4, t2, -1
	lw	n2, 164(s1)
	slti	t2, t2, 2
	addiw	t2, t2, -1
	and	t4, t2, t4
	slli	n2, n2, 1
	subw	n2, a6, n2
	mv	t2, t4
	j	.LBB0_65
.LBB0_78:                               #   in Loop: Header=BB0_66 Depth=1
	bne	n1, a6, .LBB0_83
# %bb.79:                               #   in Loop: Header=BB0_66 Depth=1
	bne	t2, t0, .LBB0_83
# %bb.80:                               #   in Loop: Header=BB0_66 Depth=1
	lw	n1, 28(s3)
	addiw	t0, t2, 1
	addiw	t2, n1, -1
	blt	t0, t2, .LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_66 Depth=1
	mv	t0, t2
.LBB0_82:                               #   in Loop: Header=BB0_66 Depth=1
	lw	t2, 164(s1)
	li	n1, 0
	slli	t2, t2, 1
	addiw	n2, t2, -1
	mv	t2, t0
	j	.LBB0_65
.LBB0_83:                               #   in Loop: Header=BB0_66 Depth=1
	addw	t3, t3, n2
	addw	t2, t2, n1
	j	.LBB0_65
.LBB0_84:
	beqz	s2, .LBB0_22
# %bb.85:                               # %.preheader9
	li	a0, 0
	li	a1, 0
	lui	a2, %hi(MapUnitToSliceGroupMap)
	lui	a3, %hi(PicSizeInMapUnits)
.LBB0_86:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 24(s3)
	lw	a5, 60(s1)
	divuw	a6, a0, a4
	mul	a4, a6, a4
	subw	a4, a0, a4
	addi	a5, a5, 1
	mul	a6, a5, a6
	ld	a7, %lo(MapUnitToSliceGroupMap)(a2)
	srliw	a6, a6, 1
	add	a4, a6, a4
	remuw	a4, a4, a5
	add	a7, a7, a1
	sb	a4, 0(a7)
	lwu	a4, %lo(PicSizeInMapUnits)(a3)
	addi	a1, a1, 1
	addi	a0, a0, 1
	bltu	a1, a4, .LBB0_86
	j	.LBB0_22
.LBB0_87:
	lw	a0, 168(s1)
	lw	a1, 212(s3)
	addi	a0, a0, 1
	mulw	a0, a0, a1
	sext.w	a1, s2
	bgeu	a0, a1, .LBB0_96
# %bb.88:
	lw	a1, 164(s1)
	bnez	a1, .LBB0_97
.LBB0_89:
	lw	a5, 24(s3)
	bnez	a5, .LBB0_98
	j	.LBB0_22
.LBB0_90:
	beqz	s2, .LBB0_22
# %bb.91:
	li	a0, 0
	lui	a1, %hi(MapUnitToSliceGroupMap)
	lui	a2, %hi(PicSizeInMapUnits)
.LBB0_92:                               # =>This Inner Loop Header: Depth=1
	ld	a3, 176(s1)
	add	a3, a3, a0
	ld	a4, %lo(MapUnitToSliceGroupMap)(a1)
	lbu	a3, 0(a3)
	add	a4, a4, a0
	sb	a3, 0(a4)
	lwu	a3, %lo(PicSizeInMapUnits)(a2)
	addi	a0, a0, 1
	bltu	a0, a3, .LBB0_92
	j	.LBB0_22
.LBB0_93:
	beqz	s1, .LBB0_30
# %bb.94:                               # %.preheader
	li	a0, 0
	li	a1, 0
	lui	a2, %hi(MapUnitToSliceGroupMap)
	lui	a3, %hi(MBAmap)
.LBB0_95:                               # =>This Inner Loop Header: Depth=1
	lw	a4, 24(s3)
	ld	a5, %lo(MapUnitToSliceGroupMap)(a2)
	slli	a6, a4, 1
	divuw	a6, a0, a6
	mul	a6, a6, a4
	remuw	a4, a0, a4
	add	a4, a6, a4
	slli	a4, a4, 32
	srli	a4, a4, 32
	add	a4, a5, a4
	ld	a5, %lo(MBAmap)(a3)
	lbu	a4, 0(a4)
	add	a5, a5, a1
	sb	a4, 0(a5)
	lwu	a4, 40(s3)
	addi	a1, a1, 1
	addi	a0, a0, 1
	bltu	a1, a4, .LBB0_95
	j	.LBB0_30
.LBB0_96:
	mv	a0, a1
	lw	a1, 164(s1)
	beqz	a1, .LBB0_89
.LBB0_97:
	subw	a0, s2, a0
	lw	a5, 24(s3)
	beqz	a5, .LBB0_22
.LBB0_98:
	lw	a1, 28(s3)
	beqz	a1, .LBB0_22
# %bb.99:                               # %.preheader21
	li	a1, 0
	li	a2, 0
	li	a3, 1
	lui	a4, %hi(MapUnitToSliceGroupMap)
	li	a6, 1
	j	.LBB0_102
.LBB0_100:                              #   in Loop: Header=BB0_102 Depth=1
	lw	a5, 24(s3)
.LBB0_101:                              #   in Loop: Header=BB0_102 Depth=1
	addiw	a2, a2, 1
	bgeu	a2, a5, .LBB0_22
.LBB0_102:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_105 Depth 2
	beqz	a6, .LBB0_101
# %bb.103:                              # %.preheader20
                                        #   in Loop: Header=BB0_102 Depth=1
	li	a5, 0
	j	.LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_105 Depth=2
	lw	a7, 24(s3)
	ld	t0, %lo(MapUnitToSliceGroupMap)(a4)
	mul	a7, a7, a5
	add	a7, a7, a2
	slli	a7, a7, 32
	srli	a7, a7, 32
	add	a7, t0, a7
	sb	a6, 0(a7)
	lw	a6, 28(s3)
	addiw	a5, a5, 1
	addiw	a1, a1, 1
	bgeu	a5, a6, .LBB0_100
.LBB0_105:                              #   Parent Loop BB0_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lbu	a6, 164(s1)
	bltu	a1, a0, .LBB0_104
# %bb.106:                              #   in Loop: Header=BB0_105 Depth=2
	sub	a6, a3, a6
	j	.LBB0_104
.LBB0_107:
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	mv	a1, s2
	call	printf
	li	a0, -1
	call	exit
.LBB0_108:
	lui	a0, %hi(.L.str.7)
	addi	a0, a0, %lo(.L.str.7)
	mv	a1, s1
	call	printf
	li	a0, -1
	call	exit
.LBB0_109:
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	call	printf
	li	a0, -1
	call	exit
.Lfunc_end0:
	.size	FmoInit, .Lfunc_end0-FmoInit
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_9
	.word	.LBB0_84
	.word	.LBB0_44
	.word	.LBB0_57
	.word	.LBB0_35
	.word	.LBB0_87
	.word	.LBB0_90
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.text
	.globl	FmoUninit                       # -- Begin function FmoUninit
	.p2align	2
	.type	FmoUninit,@function
FmoUninit:                              # @FmoUninit
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	lui	s0, %hi(MBAmap)
	ld	a0, %lo(MBAmap)(s0)
	beqz	a0, .LBB1_2
# %bb.1:
	call	free
	sd	zero, %lo(MBAmap)(s0)
.LBB1_2:
	lui	s0, %hi(MapUnitToSliceGroupMap)
	ld	a0, %lo(MapUnitToSliceGroupMap)(s0)
	beqz	a0, .LBB1_4
# %bb.3:
	call	free
	sd	zero, %lo(MapUnitToSliceGroupMap)(s0)
.LBB1_4:
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	FmoUninit, .Lfunc_end1-FmoUninit
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FmoStartPicture                 # -- Begin function FmoStartPicture
	.p2align	2
	.type	FmoStartPicture,@function
FmoStartPicture:                        # @FmoStartPicture
# %bb.0:
	lui	a0, %hi(MBAmap)
	ld	a0, %lo(MBAmap)(a0)
	beqz	a0, .LBB2_36
# %bb.1:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 192(a1)
	blez	a1, .LBB2_35
# %bb.2:                                # %.preheader
	slli	a1, a1, 32
	srli	a1, a1, 32
	li	a2, 0
	mv	a3, a0
	mv	a4, a1
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	lbu	a5, 0(a3)
	beqz	a5, .LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	addi	a2, a2, 1
	addi	a4, a4, -1
	addi	a3, a3, 1
	bnez	a4, .LBB2_3
# %bb.5:
	li	a2, -1
.LBB2_6:
	li	a3, 0
	lui	a4, %hi(FirstMBInSlice)
	sw	a2, %lo(FirstMBInSlice)(a4)
	li	a2, 1
	mv	a4, a0
	mv	a5, a1
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	lbu	a6, 0(a4)
	beq	a6, a2, .LBB2_10
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	addi	a3, a3, 1
	addi	a5, a5, -1
	addi	a4, a4, 1
	bnez	a5, .LBB2_7
# %bb.9:
	li	a3, -1
.LBB2_10:
	li	a4, 0
	lui	a2, %hi(FirstMBInSlice)
	addi	a2, a2, %lo(FirstMBInSlice)
	sw	a3, 4(a2)
	li	a3, 2
	mv	a5, a0
	mv	a6, a1
.LBB2_11:                               # =>This Inner Loop Header: Depth=1
	lbu	a7, 0(a5)
	beq	a7, a3, .LBB2_14
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=1
	addi	a4, a4, 1
	addi	a6, a6, -1
	addi	a5, a5, 1
	bnez	a6, .LBB2_11
# %bb.13:
	li	a4, -1
.LBB2_14:
	li	a3, 0
	sw	a4, 8(a2)
	li	a4, 3
	mv	a5, a0
	mv	a6, a1
.LBB2_15:                               # =>This Inner Loop Header: Depth=1
	lbu	a7, 0(a5)
	beq	a7, a4, .LBB2_18
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=1
	addi	a3, a3, 1
	addi	a6, a6, -1
	addi	a5, a5, 1
	bnez	a6, .LBB2_15
# %bb.17:
	li	a3, -1
.LBB2_18:
	li	a4, 0
	sw	a3, 12(a2)
	li	a3, 4
	mv	a5, a0
	mv	a6, a1
.LBB2_19:                               # =>This Inner Loop Header: Depth=1
	lbu	a7, 0(a5)
	beq	a7, a3, .LBB2_22
# %bb.20:                               #   in Loop: Header=BB2_19 Depth=1
	addi	a4, a4, 1
	addi	a6, a6, -1
	addi	a5, a5, 1
	bnez	a6, .LBB2_19
# %bb.21:
	li	a4, -1
.LBB2_22:
	li	a3, 0
	sw	a4, 16(a2)
	li	a4, 5
	mv	a5, a0
	mv	a6, a1
.LBB2_23:                               # =>This Inner Loop Header: Depth=1
	lbu	a7, 0(a5)
	beq	a7, a4, .LBB2_26
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=1
	addi	a3, a3, 1
	addi	a6, a6, -1
	addi	a5, a5, 1
	bnez	a6, .LBB2_23
# %bb.25:
	li	a3, -1
.LBB2_26:
	li	a4, 0
	sw	a3, 20(a2)
	li	a3, 6
	mv	a5, a0
	mv	a6, a1
.LBB2_27:                               # =>This Inner Loop Header: Depth=1
	lbu	a7, 0(a5)
	beq	a7, a3, .LBB2_30
# %bb.28:                               #   in Loop: Header=BB2_27 Depth=1
	addi	a4, a4, 1
	addi	a6, a6, -1
	addi	a5, a5, 1
	bnez	a6, .LBB2_27
# %bb.29:
	li	a4, -1
.LBB2_30:
	li	a3, 0
	sw	a4, 24(a2)
	li	a4, 7
.LBB2_31:                               # =>This Inner Loop Header: Depth=1
	lbu	a5, 0(a0)
	beq	a5, a4, .LBB2_34
# %bb.32:                               #   in Loop: Header=BB2_31 Depth=1
	addi	a3, a3, 1
	addi	a1, a1, -1
	addi	a0, a0, 1
	bnez	a1, .LBB2_31
# %bb.33:
	li	a3, -1
.LBB2_34:
	sw	a3, 28(a2)
	li	a0, 0
	ret
.LBB2_35:
	lui	a0, %hi(FirstMBInSlice)
	li	a1, -1
	sw	a1, %lo(FirstMBInSlice)(a0)
	addi	a0, a0, %lo(FirstMBInSlice)
	sw	a1, 28(a0)
	sw	a1, 24(a0)
	sw	a1, 20(a0)
	sw	a1, 16(a0)
	sw	a1, 12(a0)
	sw	a1, 8(a0)
	sw	a1, 4(a0)
	li	a0, 0
	ret
.LBB2_36:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FmoStartPicture)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FmoStartPicture)
	li	a2, 561
	call	__assert_fail
.Lfunc_end2:
	.size	FmoStartPicture, .Lfunc_end2-FmoStartPicture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FmoGetFirstMBOfSliceGroup       # -- Begin function FmoGetFirstMBOfSliceGroup
	.p2align	2
	.type	FmoGetFirstMBOfSliceGroup,@function
FmoGetFirstMBOfSliceGroup:              # @FmoGetFirstMBOfSliceGroup
# %bb.0:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a3, 192(a1)
	mv	a1, a0
	li	a0, -1
	blez	a3, .LBB3_5
# %bb.1:
	lui	a2, %hi(MBAmap)
	ld	a2, %lo(MBAmap)(a2)
	beqz	a2, .LBB3_7
# %bb.2:
	li	a4, 0
	slli	a3, a3, 32
	srli	a3, a3, 32
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	lbu	a5, 0(a2)
	beq	a5, a1, .LBB3_6
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	addiw	a4, a4, 1
	addi	a3, a3, -1
	addi	a2, a2, 1
	bnez	a3, .LBB3_3
.LBB3_5:
	ret
.LBB3_6:
	mv	a0, a4
	ret
.LBB3_7:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	li	a2, 599
	call	__assert_fail
.Lfunc_end3:
	.size	FmoGetFirstMBOfSliceGroup, .Lfunc_end3-FmoGetFirstMBOfSliceGroup
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FmoEndPicture                   # -- Begin function FmoEndPicture
	.p2align	2
	.type	FmoEndPicture,@function
FmoEndPicture:                          # @FmoEndPicture
# %bb.0:
	li	a0, 0
	ret
.Lfunc_end4:
	.size	FmoEndPicture, .Lfunc_end4-FmoEndPicture
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FmoMB2SliceGroup                # -- Begin function FmoMB2SliceGroup
	.p2align	2
	.type	FmoMB2SliceGroup,@function
FmoMB2SliceGroup:                       # @FmoMB2SliceGroup
# %bb.0:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 192(a1)
	bge	a0, a1, .LBB5_3
# %bb.1:
	lui	a1, %hi(MBAmap)
	ld	a1, %lo(MBAmap)(a1)
	beqz	a1, .LBB5_4
# %bb.2:
	add	a0, a1, a0
	lbu	a0, 0(a0)
	ret
.LBB5_3:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	li	a2, 598
	call	__assert_fail
.LBB5_4:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	li	a2, 599
	call	__assert_fail
.Lfunc_end5:
	.size	FmoMB2SliceGroup, .Lfunc_end5-FmoMB2SliceGroup
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FmoGetNextMBNr                  # -- Begin function FmoGetNextMBNr
	.p2align	2
	.type	FmoGetNextMBNr,@function
FmoGetNextMBNr:                         # @FmoGetNextMBNr
# %bb.0:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a2, 192(a1)
	bge	a0, a2, .LBB6_7
# %bb.1:
	lui	a1, %hi(MBAmap)
	ld	a1, %lo(MBAmap)(a1)
	beqz	a1, .LBB6_8
# %bb.2:
	add	a3, a1, a0
	lbu	a1, 0(a3)
	addiw	a4, a2, -1
	addi	a2, a3, 1
	sub	a3, a4, a0
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	beqz	a3, .LBB6_6
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	lbu	a4, 0(a2)
	addiw	a0, a0, 1
	addi	a2, a2, 1
	addi	a3, a3, -1
	bne	a1, a4, .LBB6_3
# %bb.5:
	ret
.LBB6_6:
	li	a0, -1
	ret
.LBB6_7:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	li	a2, 598
	call	__assert_fail
.LBB6_8:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	li	a2, 599
	call	__assert_fail
.Lfunc_end6:
	.size	FmoGetNextMBNr, .Lfunc_end6-FmoGetNextMBNr
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FmoGetPreviousMBNr              # -- Begin function FmoGetPreviousMBNr
	.p2align	2
	.type	FmoGetPreviousMBNr,@function
FmoGetPreviousMBNr:                     # @FmoGetPreviousMBNr
# %bb.0:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 192(a1)
	bge	a0, a1, .LBB7_7
# %bb.1:
	lui	a1, %hi(MBAmap)
	ld	a1, %lo(MBAmap)(a1)
	beqz	a1, .LBB7_8
# %bb.2:
	add	a2, a1, a0
	lbu	a2, 0(a2)
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	blez	a0, .LBB7_6
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	addiw	a0, a0, -1
	add	a3, a1, a0
	lbu	a3, 0(a3)
	bne	a2, a3, .LBB7_3
# %bb.5:
	ret
.LBB7_6:
	li	a0, -1
	ret
.LBB7_7:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	li	a2, 598
	call	__assert_fail
.LBB7_8:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	li	a2, 599
	call	__assert_fail
.Lfunc_end7:
	.size	FmoGetPreviousMBNr, .Lfunc_end7-FmoGetPreviousMBNr
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FmoGetLastCodedMBOfSliceGroup   # -- Begin function FmoGetLastCodedMBOfSliceGroup
	.p2align	2
	.type	FmoGetLastCodedMBOfSliceGroup,@function
FmoGetLastCodedMBOfSliceGroup:          # @FmoGetLastCodedMBOfSliceGroup
# %bb.0:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a1, 192(a1)
	blez	a1, .LBB8_7
# %bb.1:
	lui	a2, %hi(MBAmap)
	ld	a2, %lo(MBAmap)(a2)
	beqz	a2, .LBB8_8
# %bb.2:
	li	a3, 0
	slli	a1, a1, 32
	srli	a1, a1, 32
	add	a4, a2, a1
	li	a5, -1
	j	.LBB8_4
.LBB8_3:                                #   in Loop: Header=BB8_4 Depth=1
	addi	a2, a2, 1
	addiw	a3, a3, 1
	mv	a5, a1
	beq	a2, a4, .LBB8_6
.LBB8_4:                                # =>This Inner Loop Header: Depth=1
	lbu	a6, 0(a2)
	mv	a1, a3
	beq	a6, a0, .LBB8_3
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=1
	mv	a1, a5
	j	.LBB8_3
.LBB8_6:
	mv	a0, a1
	ret
.LBB8_7:
	li	a0, -1
	ret
.LBB8_8:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	li	a2, 599
	call	__assert_fail
.Lfunc_end8:
	.size	FmoGetLastCodedMBOfSliceGroup, .Lfunc_end8-FmoGetLastCodedMBOfSliceGroup
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FmoSetLastMacroblockInSlice     # -- Begin function FmoSetLastMacroblockInSlice
	.p2align	2
	.type	FmoSetLastMacroblockInSlice,@function
FmoSetLastMacroblockInSlice:            # @FmoSetLastMacroblockInSlice
# %bb.0:
	lui	a1, %hi(img)
	ld	a1, %lo(img)(a1)
	lui	a2, 22
	add	a1, a1, a2
	lw	a2, 192(a1)
	bge	a0, a2, .LBB9_8
# %bb.1:
	lui	a1, %hi(MBAmap)
	ld	a3, %lo(MBAmap)(a1)
	beqz	a3, .LBB9_9
# %bb.2:
	bltz	a0, .LBB9_10
# %bb.3:
	add	a1, a3, a0
	lbu	a1, 0(a1)
	addiw	a4, a2, -1
	add	a2, a0, a3
	addi	a2, a2, 1
	sub	a3, a4, a0
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	beqz	a3, .LBB9_6
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	lbu	a4, 0(a2)
	addi	a0, a0, 1
	addi	a2, a2, 1
	addi	a3, a3, -1
	bne	a1, a4, .LBB9_4
	j	.LBB9_7
.LBB9_6:
	li	a0, -1
.LBB9_7:
	slli	a1, a1, 2
	lui	a2, %hi(FirstMBInSlice)
	addi	a2, a2, %lo(FirstMBInSlice)
	add	a1, a2, a1
	sw	a0, 0(a1)
	ret
.LBB9_8:
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	li	a2, 598
	call	__assert_fail
.LBB9_9:
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FmoMB2SliceGroup)
	li	a2, 599
	call	__assert_fail
.LBB9_10:
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	lui	a1, %hi(.L.str.1)
	addi	a1, a1, %lo(.L.str.1)
	lui	a3, %hi(.L__PRETTY_FUNCTION__.FmoSetLastMacroblockInSlice)
	addi	a3, a3, %lo(.L__PRETTY_FUNCTION__.FmoSetLastMacroblockInSlice)
	li	a2, 708
	call	__assert_fail
.Lfunc_end9:
	.size	FmoSetLastMacroblockInSlice, .Lfunc_end9-FmoSetLastMacroblockInSlice
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FmoGetFirstMacroblockInSlice    # -- Begin function FmoGetFirstMacroblockInSlice
	.p2align	2
	.type	FmoGetFirstMacroblockInSlice,@function
FmoGetFirstMacroblockInSlice:           # @FmoGetFirstMacroblockInSlice
# %bb.0:
	slli	a0, a0, 2
	lui	a1, %hi(FirstMBInSlice)
	addi	a1, a1, %lo(FirstMBInSlice)
	add	a0, a1, a0
	lw	a0, 0(a0)
	ret
.Lfunc_end10:
	.size	FmoGetFirstMacroblockInSlice, .Lfunc_end10-FmoGetFirstMacroblockInSlice
                                        # -- End function
	.option	pop
	.option	push
	.option	arch, +a, +m, +zifencei
	.globl	FmoSliceGroupCompletelyCoded    # -- Begin function FmoSliceGroupCompletelyCoded
	.p2align	2
	.type	FmoSliceGroupCompletelyCoded,@function
FmoSliceGroupCompletelyCoded:           # @FmoSliceGroupCompletelyCoded
# %bb.0:
	slli	a0, a0, 2
	lui	a1, %hi(FirstMBInSlice)
	addi	a1, a1, %lo(FirstMBInSlice)
	add	a0, a1, a0
	lwu	a0, 0(a0)
	srli	a0, a0, 31
	ret
.Lfunc_end11:
	.size	FmoSliceGroupCompletelyCoded, .Lfunc_end11-FmoSliceGroupCompletelyCoded
                                        # -- End function
	.option	pop
	.type	MBAmap,@object                  # @MBAmap
	.section	.sbss,"aw",@nobits
	.globl	MBAmap
	.p2align	3, 0x0
MBAmap:
	.quad	0
	.size	MBAmap, 8

	.type	MapUnitToSliceGroupMap,@object  # @MapUnitToSliceGroupMap
	.globl	MapUnitToSliceGroupMap
	.p2align	3, 0x0
MapUnitToSliceGroupMap:
	.quad	0
	.size	MapUnitToSliceGroupMap, 8

	.type	FirstMBInSlice,@object          # @FirstMBInSlice
	.local	FirstMBInSlice
	.comm	FirstMBInSlice,32,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MBAmap != NULL"
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/fmo.c"
	.size	.L.str.1, 10

	.type	.L__PRETTY_FUNCTION__.FmoStartPicture,@object # @__PRETTY_FUNCTION__.FmoStartPicture
.L__PRETTY_FUNCTION__.FmoStartPicture:
	.asciz	"int FmoStartPicture()"
	.size	.L__PRETTY_FUNCTION__.FmoStartPicture, 22

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"mb < (int)img->PicSizeInMbs"
	.size	.L.str.2, 28

	.type	.L__PRETTY_FUNCTION__.FmoMB2SliceGroup,@object # @__PRETTY_FUNCTION__.FmoMB2SliceGroup
.L__PRETTY_FUNCTION__.FmoMB2SliceGroup:
	.asciz	"int FmoMB2SliceGroup(int)"
	.size	.L__PRETTY_FUNCTION__.FmoMB2SliceGroup, 26

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"mb >= 0"
	.size	.L.str.3, 8

	.type	.L__PRETTY_FUNCTION__.FmoSetLastMacroblockInSlice,@object # @__PRETTY_FUNCTION__.FmoSetLastMacroblockInSlice
.L__PRETTY_FUNCTION__.FmoSetLastMacroblockInSlice:
	.asciz	"void FmoSetLastMacroblockInSlice(int)"
	.size	.L__PRETTY_FUNCTION__.FmoSetLastMacroblockInSlice, 38

	.type	PicSizeInMapUnits,@object       # @PicSizeInMapUnits
	.section	.sbss,"aw",@nobits
	.globl	PicSizeInMapUnits
	.p2align	2, 0x0
PicSizeInMapUnits:
	.word	0                               # 0x0
	.size	PicSizeInMapUnits, 4

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"wrong pps->pic_size_in_map_units_minus1 for used SPS and FMO type 6"
	.size	.L.str.4, 68

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"cannot allocated %d bytes for MapUnitToSliceGroupMap, exit\n"
	.size	.L.str.5, 60

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Illegal slice_group_map_type %d , exit \n"
	.size	.L.str.6, 41

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"cannot allocated %d bytes for MBAmap, exit\n"
	.size	.L.str.7, 44

	.ident	"clang version 19.0.0git (https://github.com/llvm/llvm-project.git 4b702946006cfa9be9ab646ce5fc5b25248edd81)"
	.section	".note.GNU-stack","",@progbits
